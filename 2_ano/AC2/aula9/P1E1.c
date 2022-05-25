#include <detpic32.h>

volatile int voltage = 0;

unsigned char toBcd(unsigned char value){
	return ((value / 10) << 4) + (value % 10);
}

void send2displays(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    static char displayFlag = 0;    // static variable: doesn't loose its
                                    // value between calls to function
    int digit_low = value & 0x0F;  
    int digit_high = value >> 4; int media = 0;
    if(displayFlag == 0){ 
    	LATD = (LATD & 0xFF9F) | 0x0020;    // select display low
    	LATB = (LATB & 0x80FF) | ((int)display7Scodes[digit_low] << 8); // // send digit_low to display
    }else{  
		LATD = (LATD & 0xFF9F) | 0x0040; // select display high 
		LATB = (LATB & 0x80FF) | ((int)display7Scodes[digit_high] << 8); // // send digit_high to display
    }
	displayFlag = !displayFlag;
}

void configureAll(void){
    //Config T1//
    T1CONbits.TCKPS = 2;	// 1:64 prescaler
	PR1 = 62499;			// Fout = 20MHZ / (64 * (62499 + 1)) = 5 Hz (200 ms)
	TMR1 = 0;
	IPC1bits.T1IP = 2;
	IEC0bits.T1IE = 1;
    T1CONbits.TON = 1;	//Enable timer
    IFS0bits.T1IF = 0;
    //Config T3//
	T3CONbits.TCKPS = 2;	// 1:4 prescaler
	PR3 = 49999;			// Fout = 20MHZ / (4* (49999 + 1)) = 100 Hz (10ms)
	TMR3 = 0;
	IPC3bits.T3IP = 2;
	IEC0bits.T3IE = 1;
    T3CONbits.TON = 1;	//Enable timer
    IFS0bits.T3IF = 0;
    //Config display//
    TRISB = TRISB & 0x80FF;	// configure RB8-RB14 as outputsS
    TRISD = TRISD & 0xFF9F; // configure RD5-RD6 as outputs
    //Config ADC//
    TRISBbits.TRISB4 = 1;		
	AD1PCFGbits.PCFG4 = 0;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;		
	AD1CON2bits.SMPI = 8 - 1;
    AD1CON1bits.ON = 1;
    //Interrupts ADC config//
    IPC6bits.AD1IP = 2;
    IEC1bits.AD1IE = 1;
    IFS1bits.AD1IF = 0;
}

void _int_(4) isr_T1(void){
    AD1CON1bits.ASAM = 1;	// Start conversion
    IFS0bits.T1IF = 0;
}

void _int_(12) isr_T3(void){
    send2displays(voltage);
    IFS0bits.T3IF = 0;
}

void _int_(27) isr_adc(void){
    int media = 0;
    int *p = (int *) (&ADC1BUF0);
    for(; p <= (int *)(&ADC1BUF7); p+=4 ){  // 8 samples
        media += *p;
    }
    media = media/8;
    voltage = toBcd((media * 33 + 511) / 1023);
    IFS1bits.AD1IF = 0;	 
}

int main(void){
    configureAll();
	EnableInterrupts();
    while(1);
    return 0;
}
