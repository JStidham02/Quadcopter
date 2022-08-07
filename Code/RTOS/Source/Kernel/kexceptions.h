#include "kerror.h"
#include "ktypes.h"

#ifndef __INTERRUPTS
#define __INTERRUPTS


typedef enum HandlerType{
	TOS = 0,
	Reset = 1,
	NMI = 2,
	HardFault = 3,
	MemoryManagement = 4,
	BusFault = 5,
	UsageFault = 6,
	Resv1 = 7,
	Resv2 = 8,
	Resv3 = 9,
	Resv4 = 10,
	SVC = 11,
	Debug = 12,
	Resv5 = 13,
	PendSV = 14,
	Systick = 15,
	PowerClock = 16,
	Radio = 17,
	UART0 = 18,
	SPI_TWI0 = 19,
	SPI_TWI1 = 20,
	NFCT = 21,
	GPIO = 22,
	SAAD = 23,
	TIMER0 = 24,
	TIMER1 = 25,
	TIMER2 = 26,
	RTC0 = 27,
	TEMP = 28,
	RNG = 29,
	ECB = 30,
	CCM = 31,
	WDT = 32,
	RTC1 = 33,
	QDEC = 34,
	COMP = 35,
	SWI0 = 36,
	SWI1 = 37,
	SWI2 = 38,
	SWI3 = 39,
	SWI4 = 40,
	SWI5 = 41,
	TIMER3 = 42,
	TIMER4 = 43,
	PWM0 = 44,
	PDM = 45,
	Resv6 = 46,
	Resv7 = 47,
	MWU = 48,
	PWM1 = 49,
	PWM2 = 50,
	SPI2 = 51,
	RTC2 = 52,
	I2S = 53,
	FPU = 54,
	USB = 55,
	UART1 = 56,
	QSPI = 57,
	CRYPTO = 58,
	Resv8 = 59,
	Resv9 = 60,
	PWM3 = 61,
	Resv10 = 62,
	SPIM3 = 63,
	TOTAL_VECTORS = 64
} HandlerType;






/**
 * This function sets the VTOR (vector table offset register) to point to the
 * kernel-modifiable interrupt vector table and initializes the table to indicate that 
 * the ISRs are thumb code
 */
void kinit_exception_table(void);


/**
 * This function disables all maskable interrupts by setting the primask register
 * 
 * implemented in ASM
 */
extern void kmask_exceptions(void);


/**
 * this function enables interrupts by clearing the primask register
 * 
 * Note: all interrupts may still be masked after calling this function. It only 
 * enables the preemption of unmasked interrupts
 * 
 * implemented in ASM
 */
extern void kunmask_exceptions(void);

/**
 * This function returns the value of the BASEPRI CSR, which holds the priority required for exception preemption
 * a value of 0 disables the effect of this register
 * 
 * implemented in ASM
 */
extern uint32 kget_base_priority(void);

/**
 * This function sets the BASEPRI register.
 * 
 * implemented in ASM
 */
extern void kset_base_priority(uint32 priority);

/**
 * This function gets the value of th faultmask register
 * 
 * it returns 1 when the register is set and 0 when it is not set
 */
extern uint32 kget_fault_mask(void);


/**
 * This function sets the fault mask register which sets the executing 
 * priotity to -1, equivalent to hard_fault
 */
extern void kset_fault_mask(void);

/**
 * This function sets the fault mask register which sets the executing 
 * priotity to -1, equivalent to hard_fault
 */
extern void kclear_fault_mask(void);



/**
 * Given a HandlerType enumeration of the interrupt, this function
 * sets the interrupt enable bit for the requested interrupt
 */
void kenable_interrupt(HandlerType exception_num);

/**
 * Given a HandlerType enumeration of the interrupt, this function
 * sets the interrupt enable bit for the requested interrupt
 * in the NVIC. Does not apply to system exceptions 
 */
void kenable_interrupt(HandlerType exception_num);


/**
 * This function should be called at the end of every exception handler to ensure that the interrupt correctly
 * restores the context. Failure to do so could result in a corrupted stack
 */
void kreturn_from_exception(void);


/**
 * This function registers an exception handler into the vector table.
 * 
 * This function should not be called until kinit_interrupts has been called
 */
void kregister_exception_handler(HandlerType handler_number, void *handler, int32 priority);


/**
 * This function sets the priority of the requested interrupt
 * 
 * If the interrupt is a system exception then it is set in the 
 * System Handler Priority registers, otherwise is is set in the NVIC registers
 * 
 */
void kset_exception_priority(HandlerType int_num);


/**
 * This function can be used as a default ISR 
 */
void default_trap_ISR(void);










#endif