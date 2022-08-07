#include "kexceptions.h"


/**
 * This table holds the programmable interrupt vectors.
 * It is not used by the Interrupt Controller until the 
 * function kinit_exception_table is executed.
 */
void *vector_table[TOTAL_VECTORS] __attribute__ ((aligned (256)));


/**
 * This function sets the VTOR (vector table offset register) to point to the
 * kernel-modifiable interrupt vector table and initializes the vector table.
 */
void kinit_exception_table(void)
{
    int32 i;
    void **VTORPtr;

    for(i = 0; i < TOTAL_VECTORS; i++)
    {
        //set vector table to contain pointer to trap, or with 1 to indicate thumb instruction
        vector_table[i] = ((void *)  (((uint32) default_trap_ISR) | 0x0001));
    }

    //address of VTOR defined by armv7-m spec
    VTORPtr = (void **) 0xE000ED08;
    //VTOR should point to vector table
    *VTORPtr = vector_table;
    //return
    return;
}



/**
 * This function can be used as a default ISR 
 * 
 * 
 */
void default_trap_ISR(void)
{
    while(1);
}