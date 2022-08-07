
/*
 * This file defines the interface to use the kernel error log
 * 
 * 
 */
#include "ktypes.h"

#ifndef __ERROR_LOG
#define __ERROR_LOG


/**
 * This struture is an entry in the kernel error log
 * The error log is a singly linked list of errors
 * 
 * The first error should have no message
 * 
 * The kernel function or driver that adds an entry to the error log is 
 * responsible for defining the meaning of each field
 * 
 * 
 * 
 */
typedef struct kernel_error{
	char *msg;
	int32 error_word_1;
	int32 error_word_2;
	int32 error_word_3;
	struct kernel_error *next;
} Error;


/**
 * This function is used to log an error in the kernel's error log
 * 
 * The calling function is responsible for determing the meaning of each field
 * 
 * Errors cannot be rescinded so the log should only be used for unrecoverable kernel errors
 * 
 * error requiring a system reset should not rely on the error log as it 
 * cannot be relied on to as a persistant field
 * 
 */
int32 klog_error(char *msg, int32 word_1, int32 word_2, int32 word_3);


/**
 * This function forces the error logger to place an error message in the first message
 * block. This should only be used in the case that the heap failed to initialize or klog_error fails.
 */
void kforce_log_error(char *msg, int32 word_1, int32 word_2, int32 word_3);


#endif