

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
	if (heap_initialized == FALSE){
		// get start of heap and heap size
		heap_start = __HeapBase;
		heap_limit = __HeapLimit;
		heap_size = heap_limit - heap_start;
		//init first block
		first_block = heap_start + 4;
		// first block has size 12 (header + footer + 4 bytes for start of free list)
		SetSize(GetHeader(first_block), 12); 
		SetAlloc(GetHeader(first_block));
		SetSize(GetFooter(first_block), 12);
		SetAlloc(GetFooter(first_block)); 
		//init free block
		free_block_size = heap_size - 12 - 8;
		free_block_size &= ~0x03;
		free_block = GetNextBlock(first_block);
		SetSize(GetHeader(free_block), free_block_size);
		SetSize(GetFooter(free_block), free_block_size);
		//init final block
		final_block = GetNextBlock(free_block);
		SetSize(GetHeader(final_block), 0);
		SetAlloc(GetHeader(final_block));
		//init free list
		*((void **) (first_block)) = free_block;
		*((void **) (free_block)) = NULL;
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
	
	return NULL;
}


void kfree(void *block){

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



	return 0;
}