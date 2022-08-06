// This is the starting point for the kernel initialization after bss initialized and FPU enabled

#include "kerror.h"
#include "kmemory.h"

void _start(void){
	
	if(kinit_heap() != 0){
		klog_error("test", 0, 0, 0);
	}
	
	
	while(1);
}