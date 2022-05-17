#include <detpic32.h>

// Interrupt Handler
void _int_(27) isr_adc(void)  	// Replace VECTOR by the A/D vector
								// number - see "PIC32 family data
								// sheet" (pages 74-76)
{
	volatile int adc_value;
	// Reset RD11
	LATDbits.LATD11 = 0;
	// Read ADC1BUF0 value to "adc_value"
	adc_value = ADC1BUF0;	
	// Start A/D conversion
	AD1CON1bits.ASAM = 1;
	IFS1bits.AD1IF = 0;			// Reset AD1IF flag
	// Set RD11
	LATDbits.LATD11 = 1;
}

int main(void){
	// Configure all (digital I/O, analog input, A/D module)
	TRISBbits.TRISB4 = 1;
	AD1PCFGbits.PCFG4 = 0;
	AD1CHSbits.CH0SA = 4;
	AD1CON1bits.SSRC = 7;
	AD1CON1bits.CLRASAM = 1;
	AD1CON3bits.SAMC = 16;		
	AD1CON2bits.SMPI = 1 - 1;	
	AD1CON1bits.ON = 1;		
	
	// Configure interrupt system
	IPC6bits.AD1IP = 2;	// configure priority of A/D interrupts
	IFS1bits.AD1IF = 0; 	// clear A/D interrupt flag
	IEC1bits.AD1IE = 1; // enable A/D interrupts
	EnableInterrupts();	
	
	TRISDbits.TRISD11 = 0;	// RD11 => output
	// Start A/D conversion
	AD1CON1bits.ASAM = 1;
	while(1){
		LATDbits.LATD11 = 0;	// Reset RD11
	}	// all activity is done by the ISR
	return 0;
}

