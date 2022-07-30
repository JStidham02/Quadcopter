

#ifndef __STARTUP_CONFIG
#define __STARTUP_CONFIG

//start of non-volatile memory controller registers
#define NVMC_START 0x4001E000
//offset to ICACHECNF Cache configuration register
#define ICACHECNF_OFFSET 0x540
// Cache Enable bit
#define CACHEEN 0x1
// Cache profile enable bit
#define CACHEPROFEN 0x100
//start address of clock registers
#define CLOCK_START 0x40000000
//offset to TASKS_HFCLKSTART
#define HFCLKSTART_OFFSET 0x0
//offset to EVENTS_HFCLKSTARTED
#define EVENTS_HFCLKSTARTED_OFFSET 0x100
// offset of HFCLKSTAT register
#define HFCLKSTAT_OFFSET 0x40C
//HFCLKSTART trigger bit
#define TRIGGER 0x1
//EVENTS_HFCLKSTARTED generated bit
#define GENERATED 0x1
//bit mask for STATE for HFCLKSTAT
#define STATE 0x10000
// bit mask for SRC of HFCLKSTAT
#define SRC 0x1














void SystemInit(void);

void SystemInitTrap(void);

#endif