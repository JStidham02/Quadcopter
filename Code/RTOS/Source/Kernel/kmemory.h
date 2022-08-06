/**
 * This file defines the functions needed to initialize the heap
 * the heap is managed such that each block returned has
 * 
 */

#include "ktypes.h"

#ifndef __KMEMORY
#define __KMEMORY

/**
 * This function initializes the heap suce that it is ready for use by the kmalloc function
 */
int kinit_heap(void);

/**
 * This function allows dynamic memory allocation for the kernel to use
 */
void *kmalloc(uint32 size);

/**
 * 
 */
void kfree(void *block);








#endif