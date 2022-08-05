

	.text
	.thumb
	.thumb_func
	.align 1
	.globl SystemInit
	.type SystemInit, %function
SystemInit:
	//enable FPU
	MRS R0, CONTROL
	MOV R1, #0b100
	ORR R0, R0, R1
	MSR CONTROL, R0
	//return
	MOV PC, LR 
	
