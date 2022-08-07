    .syntax unified
    .arch armv7e-m	
    
    
    
    .text
	.thumb
	.thumb_func
	.align 1
	.globl kdisable_interrupts
	.type kdisable_interrupts, %function
    /**
    This function takes no parameters. 
    It sets the PRIMASK control register,
    disabling all interrupts with configurable priority */
kdisable_interrupts:
    //read primask
    MRS R0, PRIMASK
    //set bit 0
    ORR R0, R0, #0x00000001
    //write back to primask
    MSR PRIMASK, R0
    //return from function
    MOV PC, LR



    .text
	.thumb
	.thumb_func
	.align 1
	.globl kenable_interrupts
	.type kenable_interrupts, %function
    /**
    This function takes not parameter and returns nothing
    it write 0 to the primask register, enabling interrupts with a priority <= basepri
    to preempt current execution */
kenable_interrupts:
    //read primask
    MRS R0, PRIMASK
    //clear bit 0
    AND R0, R0, #0x00000000
    //write back to primask
    MSR PRIMASK, R0
    //return
    MOV PC, LR




    .text
	.thumb
	.thumb_func
	.align 1
	.globl kget_base_priority
	.type kget_base_priority, %function
    /**
    This function returns the value of the base
    priority register.
    A value of 0 indicates the register has not effect at the moment
    A nonzero value it the priority required to preempt current execution, if 
    lower than the current priority. */
kget_base_priority:
    //read basepri (R0 holds return argument)
    MRS R0, BASEPRI
    //return
    MOV PC, LR



    .text
	.thumb
	.thumb_func
	.align 1
	.globl kset_base_priority
	.type kset_base_priority, %function
    /**
    This function sets the value of BASEPRI.
    The value of basepri mush be less than the current
    executing priority level
    
    A value of 0 means this register has no effect */
kset_base_priority:
    // set BASEPRI
    MSR BASEPRI, R0
    //return 
    MOV PC, LR



    .text
	.thumb
	.thumb_func
	.align 1
	.globl kget_fault_mask
	.type kget_fault_mask, %function
    /**
    This function gets the value of faultmask */
kget_fault_mask:
    //get value in faultmask
    MRS R0, FAULTMASK
    // return
    MOV PC, LR



    .text
	.thumb
	.thumb_func
	.align 1
	.globl kset_fault_mask
	.type kset_fault_mask, %function
    /**
    This function sets the faultmask and raises the executing priority to -1*/
kset_fault_mask:
    //load value of 1 into register
    MOV R0, #0x00000001
    // set faultmask to 1
    MSR FAULTMASK, R0
    //return
    MOV PC, LR




    .text
	.thumb
	.thumb_func
	.align 1
	.globl kclear_fault_mask
	.type kclear_fault_mask, %function
    /**
    This function clears the faultmask and lowers the executing priority to its former value*/
kclear_fault_mask:
    //load value of 1 into register
    MOV R0, #0x00000000
    // set faultmask to 0
    MSR FAULTMASK, R0
    //return
    MOV PC, LR



