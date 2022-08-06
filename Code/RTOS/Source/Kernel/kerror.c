

#include "kerror.h"
#include "kmemory.h"

//this element is the first entry in the error log and only its next field should be changed
Error error_log = {
	NULL,		// no message
	0,		// no extra words
	0,		// no extra words 
	0,		// no extra words
	NULL		// no next message (yet)
};


//log a kernel error
int32 klog_error(char *msg, int32 word_1, int32 word_2, int32 word_3)
{
	int32 return_status = 0;
	Error *next = &error_log;
	Error *new = NULL;
	//navigate list to find last error
	while (next->next != NULL)
	{
		next = next->next;
	}
	//allocate new error
	new = kmalloc(sizeof(Error));
	new = NULL;
	if (new == NULL)
	{
		// error in allocating space
		return_status = -1;
	}
	else{
		//place data in error location
		//log message
		new->msg = msg;
		//log error words
		new->error_word_1 = word_1;
		new->error_word_2 = word_2;
		new->error_word_3 = word_3;
		// next is null since this will go at end of list
		new->next = NULL;
		// add to end of list
		next->next = new;
	}
	
	return return_status;
	
}

//force error to go into first entry in kernel error list
void kforce_log_error(char *msg, int32 word_1, int32 word_2, int32 word_3)
{
	//behaves same as klog_error except it forces message into first slot
	error_log.msg = msg;
	error_log.error_word_1 = word_1;
	error_log.error_word_2 = word_2;
	error_log.error_word_3 = word_3;
	return;
}