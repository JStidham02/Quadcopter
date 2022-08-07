// This is the starting point for the kernel initialization after bss initialized and FPU enabled

#include "kerror.h"
#include "kmemory.h"
#include "kexceptions.h"

void _start(void){
	int32 return_status;

	return_status = kinit_heap();
	if(return_status != 0){
		kforce_log_error("kinit_heap", return_status, 0, 0);
	}

	kset_base_priority(0);
	kunmask_exceptions();

	kinit_exception_table();






	
	while(1);
}