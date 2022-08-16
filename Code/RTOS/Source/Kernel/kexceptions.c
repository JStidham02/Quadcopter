#include "kexceptions.h"


typedef enum SystemHandlerPriorityReg{
    SHPR1 = 0,
    SHPR2 = 1,
    SHPR3 = 2
} SystemHandlerPriorityReg;



/**
 * This table holds the programmable interrupt vectors.
 * It is not used by the Interrupt Controller until the 
 * function kinit_exception_table is executed. Table must be aligned on 32-word boundary
 */
void *vector_table[TOTAL_VECTORS] __attribute__ ((aligned (128)));


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
 * Given a ExceptionNumberType enumeration of the interrupt, this function
 * sets the interrupt enable bit for the requested interrupt
 */
void kunmask_interrupt(ExceptionNumberType exception_num)
{
    uint32 interrupt_number;
    uint32 interrupt_en_reg;
    uint32 *interrupt_enable_reg;
    uint32 interrupt_en_bit;

    if (exception_num > 15)
    {
        interrupt_number = exception_num - 16;
        //compute offset to register
        interrupt_en_reg = ((uint32) interrupt_number)/32;
        //compute bit for interrupt enable
        interrupt_en_bit = ((uint32) interrupt_number) - 32*interrupt_en_reg;
        interrupt_en_bit = 0x00000001 << interrupt_en_bit;
        //pointer to enable register
        interrupt_enable_reg = (void *) (0xE000E100 + 4*interrupt_en_reg);
        //enable interrupt
        *interrupt_enable_reg |= interrupt_en_bit;
    }
    /* Doesn't do anything to enable/disable system exceptions because they are not masked */
    return;
}


/**
 * Given a ExceptionNumberType enumeration of the interrupt, this function
 * sets the interrupt disable bit for the requested interrupt, does not apply
 * to system exception
 */
void kmask_interrupt(ExceptionNumberType exception_num)
{
    uint32 interrupt_number;
    uint32 interrupt_en_reg;
    uint32 *interrupt_disable_reg;
    uint32 interrupt_en_bit;

    if (exception_num > 15)
    {
        interrupt_number = exception_num - 16;
        //compute offset to register
        interrupt_en_reg = ((uint32) interrupt_number)/32;
        //compute bit for interrupt enable
        interrupt_en_bit = ((uint32) interrupt_number) - 32*interrupt_en_reg;
        interrupt_en_bit = 0x00000001 << interrupt_en_bit;
        //pointer to enable register
        interrupt_disable_reg = (void *) (0xE000E180 + 4*interrupt_en_reg);
        //disable interrupt
        *interrupt_disable_reg |= interrupt_en_bit;
    }

    return;
}



/**
 * This function should be called at the end of every exception handler to ensure that the interrupt correctly
 * restores the context. Failure to do so could result in a corrupted stack
 */
void kreturn_from_exception(void);


/**
 * This function registers an exception handler into the vector table, sets the priority, and unmasks it.
 * 
 * This function should not be called until kinit_interrupts has been called
 */
void kregister_exception_handler(ExceptionNumberType handler_number, void *handler, uint8 priority)
{

    //place in table
    vector_table[(uint32) handler_number] = handler;
    //set priority
    kset_exception_priority(handler_number, priority);
    //unmask
    kunmask_interrupt(handler_number);

    return;
}


/**
 * This function sets the priority of the requested interrupt
 * 
 * If the interrupt is a system exception then it is set in the 
 * System Handler Priority registers, otherwise is is set in the NVIC registers
 * 
 */
void kset_exception_priority(ExceptionNumberType exception_num, uint32 priority)
{
    uint32 exception_reg_select;
    uint32 exception_reg_section;
    uint32 ormask;
    uint32 andmask;
    volatile uint32 *shpr_reg;
    //system exception
    exception_reg_select = exception_num/4;
    exception_reg_section = exception_num - 4*exception_reg_select;
    ormask = priority<<(exception_reg_section*8);
    andmask = ((uint32) 7)<<(exception_reg_section*8);
    if (exception_num < 16)
    {
        if (exception_num > 3 && exception_num < 16 && priority < 8)
        {
            //choose which register and section to set priority in
            switch (exception_reg_select)
            {
                case 0:
                    //undefined
                    break;
                case 1:
                    //use SHPR1
                    shpr_reg = (uint32 *) 0xE000ED18;
                    //clear bits with andmask
                    *shpr_reg &= ~andmask;
                    //set with ormask
                    *shpr_reg |= ormask;
                    break;
                case 2:
                    //use SHPR2
                    shpr_reg = (uint32 *) 0xE000ED1C;
                    //clear bits with andmask
                    *shpr_reg &= ~andmask;
                    //set bits with ormask
                    *shpr_reg |= ormask;
                    break;
                case 3:
                    //use SHPR3
                    shpr_reg = (uint32 *) 0xE000ED20;
                    //clear bits with andmask
                    *shpr_reg &= ~andmask;
                    //set bits with ormask
                    *shpr_reg |= ormask;
                    break;
                default:
                    //undefined
                    break;
            }
        }
    }
    else
    {
        void *pri_base = (void *) 0xE000E400;
        uint32 *pri_reg;
        pri_reg = pri_base + (4*exception_reg_select);
        *pri_reg &= ~andmask;
        *pri_reg |= ormask;
    }
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