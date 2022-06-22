#include <detpic32.h>

void setPWM(unsigned int dutyCycle){ 
  if(dutyCycle>100 || dutyCycle<0) return;
    OC3RS = (int)(19999 * (float)dutyCycle / 100);
    OC5RS = (int)(19999 * (float)(100-dutyCycle) / 100);
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

    TRISCbits.TRISC14 = 0;
    //EnableInterrupts();
    while(1){
        LATCbits.LATC14 = PORTDbits.RD2;
        if(IFS1bits.AD1IF == 1)
        {
            setPWM((ADC1BUF0*100)/1023);
            IFS1bits.AD1IF = 0;
        }

        if(readCoreTimer() >= 20000 * 100)
        {
            resetCoreTimer();
            AD1CON1bits.ASAM = 1;
        }
    }
    return 0;
}
