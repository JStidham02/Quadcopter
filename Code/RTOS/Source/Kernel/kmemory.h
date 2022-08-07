/**
 * This file defines the functions needed to initialize the heap
 * the heap is managed such that each block returned has
 * 
 */

#include "ktypes.h"

#ifndef __KMEMORY
#define __KMEMORY

/**
 * base of the heap, defined by the linker script
 */
extern void *__HeapBase;

/**
 * Limit of the heap, defined by the linker script
 */
extern void *__HeapLimit;




/**
 * This function initializes the heap suce that it is ready for use by the kmalloc function
 * returns -1 on failure (including heap already initialized) and 0 on success
 */
int32 kinit_heap(void);

/**
 * This function allows dynamic memory allocation for the kernel to use
 * 
 * Size indicates the size (in bytes) of the block requested
 * 
 * A return value of NULL indicates that the allocation failed
 * 
 * The returned block will be 4-byte aligned, as required by the Armv7-M architecture
 */
void *kmalloc(uint32 size);

/**
 * This function frees a block of memory
 * allocated by the kmalloc function.
 * 
 * The memory freed should have previously been allocated by kmalloc
 * and should not have been previously freed after allocation
 */
void kfree(void *block);


/**
 * This function verifies the heap. It returns 
 * 0 on success
 * -1 on failure
 * checks that all free blocks in the free list are marked as free, and 
 * that navigating in block order results in ending at the end block before reaching the end of the heap
 */
int32 kverify_heap(void);







#endif