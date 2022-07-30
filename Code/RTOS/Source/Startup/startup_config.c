
#include "startup_config.h"
#include <stdint.h>

void SystemInit(void){
	// pointer to cache config register
	volatile uint32_t *ICACHECNF = (volatile uint32_t *) (NVMC_START + ICACHECNF_OFFSET);
	// pointer to clock start register
	volatile uint32_t *TASKS_HFCLKSTART = (volatile uint32_t *) (CLOCK_START + HFCLKSTART_OFFSET);
	// pointer to register indicating clocks started
	volatile uint32_t *EVENTS_HFCLKSTARTED = (volatile uint32_t *) (CLOCK_START + EVENTS_HFCLKSTARTED);
	// pointer to regiter with HFCLK Status info
	volatile uint32_t *HFCLKSTAT = (volatile uint32_t *) (CLOCK_START + HFCLKSTAT_OFFSET);
	
	//enable cache
	*ICACHECNF |= CACHEEN;
	//disable cache profiling
	*ICACHECNF &= ~CACHEPROFEN;
	
	
	//start using external oscillator
	*TASKS_HFCLKSTART |= TRIGGER;
	
	//wait for oscillator to be enabled
	while((*EVENTS_HFCLKSTARTED & GENERATED) == 0x0){
		// do nothing
	}
	
	//verify that clock using Xtal oscillator and hfclk is running
	if(!((*HFCLKSTAT & SRC) && (*HFCLKSTAT & STATE))){
		SystemInitTrap();
	}
	else{
		// do nothing
	}
	
	
	
	
	return;
}


/**
 * This function acts a trap should the SystemInit function encounter and detect and error
 * 
 * 
 */
void SystemInitTrap(void){
	uint32_t true_val = 0x1;
	
	while(true_val){
		true_val = 0x1;
	}
}