#include <detpic32.h>

volatile unsigned int flag = 0;

void setPWM(unsigned int dutyCycle){ 
    flag = dutyCycle;
  if(dutyCycle>100 || dutyCycle<0) return;
    OC3RS = (int)(19999 * (float)dutyCycle / 100);
    OC5RS = (int)(19999 * (float)(100-dutyCycle) / 100);
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

void _int_(8) isr_T2(void){
    IFS0bits.T2IF = 0;
}

void _int_(20) isr_T5(void){
    if(flag == 100){
        send2displays(00);
        LATCbits.LATC14 = 1;
    }else{
        send2displays(toBcd(flag));
        LATCbits.LATC14 = 0;
    }
    IFS0bits.T5IF = 0;

}

void _int_(27) isr_ADC1(void){
    setPWM((ADC1BUF0*100)/1023);
    IFS1bits.AD1IF = 0;
}

int main(void){
    TRISBbits.TRISB4 = 1;      // RB4 digital output disconnected 
    AD1PCFGbits.PCFG4 = 0;     // RB4 configured as analog input (AN4)
    AD1CON1bits.SSRC = 7;      // Conversion trigger selection bits: in this 
                               //  mode an internal counter ends sampling and 
                               //  starts conversion 

    AD1CON1bits.CLRASAM = 1;   // Stop conversions when the 1st A/D converter 
                               //  interrupt is generated. At the same time, 
                               //  hardware clears the ASAM bit

    AD1CON3bits.SAMC = 16;    // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 0;     

    AD1CHSbits.CH0SA = 4;      // replace x(4) by the desired input  
                               //  analog channel (0 to 15)

    AD1CON1bits.ON = 1;        // Enable A/D converter 
                               //  This must the last command of the A/D 
                               //  configuration sequence

    IFS1bits.AD1IF = 0;
    IPC6bits.AD1IP = 2;
    IEC1bits.AD1IE = 1;
    

    // Config Timers//
    T2CONbits.TCKPS = 0;
    PR2 = 19999;
    TMR2 = 0;
    T2CONbits.ON = 1;

    OC3CONbits.OCM = 6;  // PWM mode on OCx; fault pin disabled 
    OC3CONbits.OCTSEL = 0;// Use timer T2 as the time base for PWM generation 
    OC3CONbits.ON = 1; // Enable OC13 module 

    OC5CONbits.OCM = 6;
    OC5CONbits.OCTSEL = 0;
    OC5RS = 0;
    OC5CONbits.ON = 1;

    T5CONbits.TCKPS = 2;
    PR5 = 49999;
    TMR5 = 0;
    T5CONbits.ON = 1;

    IPC2bits.T2IP = 2;
    IEC0bits.T2IE = 1;
    IFS0bits.T2IF = 0;

    IPC5bits.T5IP = 2;
    IEC0bits.T5IE = 1;
    IFS0bits.T5IF = 0;

     //Config displays//
    TRISD = TRISD & 0xFF9F;
    TRISB = TRISB & 0x80FF;

    TRISCbits.TRISC14 = 0;
    EnableInterrupts();
    while(1){
        if(readCoreTimer() >= 20000 * 100)
        {
            resetCoreTimer();
            AD1CON1bits.ASAM = 1;
        }
    }
    return 0;
}
