#include <detpic32.h>

volatile int voltage = 0;

unsigned char toBCD(unsigned char value){
    return ((value /10) << 4) + (value % 10);
}

void displays(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    static char flag = 0;

    if(flag == 0){
        LATD = (LATD & 0xFF9F) | 0x0020;
        LATB = (LATB & 0x80FF) | ((int)display7Scodes[value & 0x0F] << 8);
    }else{
        LATD = (LATD & 0xFF9F) | 0x0040;
        LATB = (LATB & 0x80FF) | ((int)display7Scodes[value >> 4] << 8);
    }
    flag = !flag;
}

int voltageConversion(int voltage){
    int temp = ((voltage * 33 + 511)/1024);
    // 65 - 20 = 45;  45/33 = 1.36
    temp = 1.36*temp + 0.5;
    return temp + 20;
}

void _int_(8) isr_T2(void){
    displays(toBCD(voltage));
    IFS0bits.T2IF = 0;
}

int main(void){
    // Config displays
    TRISD = TRISD & 0xFF9F;
    TRISB = TRISB & 0x80FF;
    // Config ADC
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4 = 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 2-1;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;
    // Timer2//
    T2CONbits.TCKPS = 2;
    PR2 = 41666;
    TMR2 = 0;
    T2CONbits.TON = 1;

    //Interrupts
    IPC2bits.T2IP = 2;
    IEC0bits.T2IE = 1;
    IFS0bits.T2IF = 0;
    
    EnableInterrupts();
    while(1){
        resetCoreTimer();
        while(readCoreTimer() < 20000 * 100);
        AD1CON1bits.ASAM = 1;
        while(IFS1bits.AD1IF == 0);
        int media = 0;
        int *p = (int *)(&ADC1BUF0);
        for(; p <= (int *)(&ADC1BUF1); p+=4){
            media += voltageConversion(*p);
        }
        voltage =  media/2;
        IFS1bits.AD1IF = 0;
    }
    return 0;
}
