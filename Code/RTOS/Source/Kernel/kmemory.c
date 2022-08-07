

#include "kmemory.h"

/**
 * boolean to track whether the heap has been initialized
 */
static volatile bool heap_initialized = FALSE;

/**
 * a pointer to the start of the heap
 */
static void *heap_start = NULL;

/**
 * a pointer to the highest address in the heap
 */
static void *heap_limit = NULL;

/**
 * boolean to indicate whether a heap failure has been detected
 */
static volatile bool heap_failure_detected = FALSE;

/**
 * This variable points to the first block, which should not be allocated
 */
static void *first_block = NULL;

/**
 * This struct defines an entry in the free list with next and prev pointing to
 * the block pointer of the next or previous blocks
 * 
 */
typedef struct FreeEntry{
	struct FreeEntry *next;
	struct FreeEntry *prev;
} FreeEntry;


static int32 kmemplace(FreeEntry *block, uint32 req_size);

static void kcoalesce(FreeEntry *block);



/**
 * A block of memory in the heap has the following structure:
 * 	header 	(4 bytes, has size and allocated bit (alloc !=0 means allocated))
 * 	data   	(at least 4 bytes, must be a multiple of 4 bytes)
 * 	footer 	(4 bytes, has size and allocated bit  (alloc != 0 means allocated))
 * 
 * This allocator uses a single free list with the most recently freed memory at the begining
 * of the list with a first-fit placement.
 * 
 * The first block is listed as allocated because it permenantly contains a pointer to the 
 * first free block in its data section.
 * 
 * The free list is a doubly linked list with the data ordered by ascending address
 */


/**
 * This macro, given the block pointer (pointer to the data)
 * returns a pointer to the block header
 */
#define GetHeader(bp)		(void *) (((void *) bp) - 0x04)

/**
 * This macro returns the size of a block, give a pointer to the header/footer
 */
#define GetSize(hp)			(uint32) (*((uint32 *) hp) & ~0x03)

/**
 *  This macro returns a pointer to the footer of a block given the block pointer
 */
#define GetFooter(bp)		(void *) (GetHeader(bp) + GetSize(bp) - 0x04)

/**
 * This macro sets the size of a block given a pointer to the header/footer
 * 
 * This function clears the alloc bit, size should be 4-byte aligned
 */
#define SetSize(hp, size)	(*((uint32 *) hp) = (size & ~0x03))

/**
 * This macro, given the header pointer or footer pointer, sets
 * the allocated bit of the header/footer
 */
#define SetAlloc(hp)		(*((uint32 *) hp) |= 0x01)

/**
 * This macro clears the allocated bit of a block header/footer
 * given a pointer to the block header/footer
 */
#define ClearAlloc(hp)		(*((uint32 *) hp) &= ~0x01)

/**
 * This macro gets the allocation status of a block given a header or footer pointer
 */
#define GetAlloc(hp)		(*((uint32 *) hp) & 0x01)

/**
 * This macro returns a pointer to the next block given a pointer to the 
 * current block
 */
#define GetNextBlock(bp)	(GetFooter(bp) + 0x08)	

/**
 * This macro returns the block pointer to the previous block
 */
#define GetPrevFooter(bp)	(((void *) bp) - 0x08)

/**
 * This function returns the previous block pointer
 * 
 */
#define GetPrevBlock(bp)	(((void *) bp) - (GetSize(GetPrevFooter(bp))))


/**
 * This function initializes the heap, it returns 1 on success and 0 on failure
 */
int32 kinit_heap(void){
	int32 return_value = 0;
	int32 free_block_size;
	void *free_block;
	void *final_block;
	uint32 heap_size;
	FreeEntry *entry;
	if (heap_initialized == FALSE){
		// get start of heap and heap size
		heap_start = __HeapBase;
		heap_limit = __HeapLimit;
		heap_size = heap_limit - heap_start;
		//init first block
		first_block = heap_start + 4;
		// first block has size 12 (header + footer + 4 bytes for start of free list)
		SetSize(GetHeader(first_block), 16); 
		SetAlloc(GetHeader(first_block));
		SetSize(GetFooter(first_block), 16);
		SetAlloc(GetFooter(first_block)); 
		//init free block
		free_block_size = heap_size - 16 - 24;
		free_block_size &= ~0x03;
		free_block = GetNextBlock(first_block);
		SetSize(GetHeader(free_block), free_block_size);
		SetSize(GetFooter(free_block), free_block_size);
		//init final block
		final_block = GetNextBlock(free_block);
		SetSize(GetHeader(final_block), 0);
		SetAlloc(GetHeader(final_block));
		//init free list
		//first entry is first block, its prev is NULL
		entry = (FreeEntry *) first_block;
		entry->next = (FreeEntry *) free_block;
		entry->prev = (FreeEntry *) NULL;	
		//free block is next entry, prev is the first block, next is the final block
		entry = (FreeEntry *) free_block;
		entry->next = (FreeEntry *) final_block;
		entry->prev = (FreeEntry *) first_block;
		//final block is the last entry, free block is prev, next is NULL
		entry = (FreeEntry *) final_block;
		entry->next = (FreeEntry *) NULL;
		entry->prev = (FreeEntry *) free_block;
		//return indicating success
		heap_failure_detected = FALSE;
		heap_initialized = TRUE;
	}
	else{
		return_value = -1;
	}
	
	return return_value;
}



/**
 * This function returns a word-aligned pointer to a location in memory of at least size bytes
 *  
 *  It uses a first fit method iterating through the free list, and splits a free block to allocate when the remainder is 
 * greater than 24 bytes
 */
void *kmalloc(uint32 size){
	FreeEntry *list;
	FreeEntry *found;
	uint32 req_size;
	uint32 mod_four;
	//compute required size
	mod_four = size & 0x03;
	if (mod_four == 0)
	{
		//minimum size of block
		req_size = size;
		req_size += 8;
	}
	else
	{
		//minimum size of block
		req_size = size + 4 - mod_four;
		req_size += 8;
	}
	list = (FreeEntry *) first_block;
	found = NULL;
	//search for large enough free block
	while ( (GetSize(GetHeader(list->next))) != 0 &&  (found == NULL))
	{
		if (GetSize(GetHeader(list->next)) >= req_size)
		{
			found = list->next;
		}
		else
		{
			list = list->next;
		}

	}
	if (found != NULL)
	{
		//remove block from free list and maybe split, return NULL if this fails
		if (kmemplace(found, req_size) != 0)
		{
			found = NULL;
		}
	}

	return (void *) found;
}


/**
 * this function marks a block as free and adds it to the free list
 * 
 * Is used by the kernel to free memory
 */
void kfree(void *block){
	FreeEntry *entry;
	entry = (FreeEntry *) block;
	//verify block not already marked as free
	if (GetAlloc(GetHeader(entry)) != 0)
	{
		//coalesce, mark as free, and add to free list
		kcoalesce(entry);
	}

	return;
}



/**
 * This function verifies the heap. It returns 
 * 0 on success
 * -1 on failure
 * checks that all free blocks in the free list are marked as free, and 
 * that navigating in block order results in ending at the end block before reaching the end of the heap
 */
int32 kverify_heap(void){
	int32 return_status;
	FreeEntry *temp;

	return_status = 0;
	/**

	 */
	temp = ((FreeEntry *) first_block)->next;
	
	while(GetSize(GetHeader(temp)) != 0)
	{
		//if block in free list marked as allocated
		if(GetAlloc(GetHeader(temp)) != 0)
		{
			return_status = -1;
			break;
		}
		//else if block outside of heap limit
		else if (((uint32) temp) > ((uint32) heap_limit))
		{
			return_status = -1;
			break;
		}
		temp = temp->next;
	}

	temp = (FreeEntry *) first_block;
	while(GetSize(GetHeader(temp)) != 0)
	{
		//if block outside of heap limit
		if (((uint32) temp) > ((uint32) heap_limit))
		{
			return_status = -1;
			break;
		}
		temp = GetNextBlock(temp);
	}

	return return_status;
}


/**
 * This function allocates a block of memory of
 * at least size req_size in memory. it returns 0 on success and
 * 1 on failure. The parameter block it the block at which the 
 * memory should be place.
 * 
 * Block should point to a block in the free list
 * 
 * req_size should be the required size of the BLOCK. It must 
 * be at least 16 and should be a multiple of 4
 * 
 */
static int32 kmemplace(FreeEntry *block, uint32 req_size){
	int32 return_status;
	uint32 size_of_block;
	void *header;
	void *footer;
	void *new_block;
	FreeEntry *prevPtr;
	FreeEntry *nextPtr;
	//default return status is success
	return_status = 0;
	//pointer to header of block
	header = GetHeader(block);
	footer = GetFooter(block);
	size_of_block = GetSize(header);
	//check allocation status and size
	if (size_of_block >= req_size && !GetAlloc(header))
	{
		//remove from list
		prevPtr = block->prev;
		nextPtr = block->next;
		prevPtr->next = nextPtr;
		nextPtr->prev = prevPtr;
		//decide whether to split
		if ((size_of_block - req_size) >= 24)
		{
			//mark old block as allocated
			SetSize(header, req_size);
			footer = GetFooter(block);
			SetSize(footer, req_size);
			SetAlloc(header);
			SetAlloc(footer);
			//create new block
			//compute size of new block
			size_of_block = size_of_block - req_size;
			new_block = GetNextBlock(block);
			header = GetHeader(new_block);
			footer = GetFooter(new_block);
			//set size also marks the block as free
			SetSize(header, size_of_block);
			SetSize(footer, size_of_block);
			//add new block to free list
			prevPtr->next = new_block;
			nextPtr->prev = new_block;
			((FreeEntry *) new_block)->next = nextPtr;
			((FreeEntry *) new_block)->prev = prevPtr;
		}
		else
		{
			//mark allocated
			SetAlloc(header);
			SetAlloc(footer);
		}
	}
	else
	{
		return_status = -1;
	}
	//otherwise return error
	return return_status;

}



static void kcoalesce(FreeEntry *block)
{
	FreeEntry *prevEntry;
	FreeEntry *nextEntry;
	FreeEntry *start;
	FreeEntry *temp;
	uint32 size_of_entry;
	
	size_of_entry = GetSize(GetHeader(block));
	ClearAlloc(GetHeader(block));
	ClearAlloc(GetFooter(block));
	start = block;
	prevEntry = NULL;
	nextEntry = NULL;
	if ((GetAlloc(GetPrevFooter(block))) == 0)
	{
		temp = GetPrevBlock(block);
		start = temp;
		//increase size of entry
		size_of_entry += GetSize(GetHeader(temp));
		//set next and prev entries
		prevEntry = temp->prev;
		nextEntry = temp->next;
		// remove from list
		prevEntry->next = nextEntry;
		nextEntry->prev = prevEntry;

	}
	if ((GetAlloc(GetHeader(GetNextBlock(block)))) == 0)
	{
		temp = GetNextBlock(block);
		//increase size of entry
		size_of_entry += GetSize(GetHeader(temp));
		//set nextEntry
		nextEntry = temp->next;
		if (prevEntry == NULL)
		{
			prevEntry = temp->prev;
		}
		//remove from list
		nextEntry->prev = prevEntry;
		prevEntry->next = nextEntry;
	}
	if (prevEntry == NULL)
	{
		//navigate list for correct spot
		temp = (FreeEntry *) first_block;
		while(temp->next != NULL)
		{
			if ((((uint32) temp) < ((uint32) block)) && (((uint32) block) < ((uint32) temp->next)))
			{
				prevEntry = temp;
				nextEntry = temp->next;
				prevEntry->next = block;
				nextEntry->prev = block;
				block->prev = prevEntry;
				block->next = nextEntry;
				break;
			}
			else
			{
				temp = temp->next;
			}

		}
	}
	else
	{
		//must set new block size and add to list
		SetSize(GetHeader(start), size_of_entry);
		SetSize(GetFooter(start), size_of_entry);
		nextEntry->prev = start;
		prevEntry->next = start;
		start->next = nextEntry;
		start->prev = prevEntry;
	}
	//create new block pointer 
	//fill block header and footer with correct size
	//add new block to free list




}