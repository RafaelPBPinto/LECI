#include <detpic32.h>
#define K (PBCLK / 1000)
volatile unsigned char voltage = 0; 

void delay(unsigned int ms){
    resetCoreTimer();
    while (readCoreTimer() < K * ms);
}

unsigned char toBcd(unsigned char value){
	return ((value / 10) << 4) + (value % 10);
}

void send2displays(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    static char displayFlag = 0;    // static variable: doesn't loose its
                                    // value between calls to function
    int digit_low = value & 0x0F;  
    int digit_high = value >> 4; 
    if(displayFlag == 0){ 
    	LATD = (LATD & 0xFF9F) | 0x0020;    // select display low
    	LATB = (LATB & 0x80FF) | ((int)display7Scodes[digit_low] << 8); // // send digit_low to display
    }else{  
		LATD = (LATD & 0xFF9F) | 0x0040; // select display high 
		LATB = (LATB & 0x80FF) | ((int)display7Scodes[digit_high] << 8); // // send digit_high to display
    }
	displayFlag = !displayFlag;
}

// Interrupt Handler
void _int_(27) isr_adc(void)  	// Replace VECTOR by the A/D vector
								// number - see "PIC32 family data
								// sheet" (pages 74-76)
{	
	// Calculate buffer average (8 samples)
	int media = 0;
	int *p = (int *) (&ADC1BUF0);
	for(; p <= (int *)(&ADC1BUF7); p+=4 ){
		media += *p;
	}
	media = media/8;
	// Calculate voltage amplitude
	voltage = toBcd((media * 33 + 511) / 1023);
	IFS1bits.AD1IF = 0;			// Reset AD1IF flag
}

int main(void){
	unsigned int cnt = 0;
	// Configure all (digital I/O, analog input, A/D module)
	TRISBbits.TRISB4 = 1;
	AD1PCFGbits.PCFG4 = 0;
	AD1CHSbits.CH0SA = 4;
	AD1CON1bits.SSRC = 7;
	AD1CON1bits.CLRASAM = 1;
	AD1CON3bits.SAMC = 16;		
	AD1CON2bits.SMPI = 8 - 1;	
	AD1CON1bits.ON = 1;		
	
	// Configure interrupt system
	IPC6bits.AD1IP = 2;	// configure priority of A/D interrupts
	IFS1bits.AD1IF = 0; 	// clear A/D interrupt flag
	IEC1bits.AD1IE = 1; // enable A/D interrupts
	EnableInterrupts();	
	
	TRISB = TRISB & 0x80FF;	// configure RB8-RB14 as outputsS
    TRISD = TRISD & 0xFF9F; // configure RD5-RD6 as outputs
	while(1){
		if(cnt == 0)	// 0, 200 ms, 400 ms, ... (5 samples/second)
		{
			// Start A/D conversion
			AD1CON1bits.ASAM = 1;
		}
		// Send "voltage" value to displays
		send2displays(voltage);
		cnt = (cnt + 1) % 20; // 200 / 10 = 20 => 5 Hz
		delay(10);	// wait 10 ms
	}
	return 0;
}

