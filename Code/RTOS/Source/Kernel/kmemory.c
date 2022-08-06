

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
 * This function returns a word-aligned pointerto a location in memory of at least size bytes
 *  
 */
void *kmalloc(uint32 size){
	//use first fit
	//navigate free list until a large enough block is found (size required rounded up to multiple of 4 (data size mut be 8 or greater), plus 8)
	//if no list is found, return NULL
	//else, place memory at block and return pointer to block

	//requires a place function

	return NULL;
}


void kfree(void *block){
	//mark block as free
	//coalesce
	//add to new 

	//requires a coalesce function

	return;
}



/**
 * This function verifies the heap. It returns 
 * 0 on success
 * -1 on failure
 * if behavior = return_status or reset_heap
 * 
 * if behavior = reset_machine then the machine is reset 
 * 
 */
int32 kverify_heap(FailBehavior behavior){

	/**
	 * checks that all free blocks in the free list are marked as free, and 
	 * that navigating in block order results in ending at the end block before reaching the end of the heap
	 * 
	 */


	return 0;
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
	int32 size_of_block;
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



