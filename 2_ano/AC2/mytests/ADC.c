#include <detpic32.h>

volatile int voltage = 0;

unsigned char toBCD(unsigned char value){
    return ((value/10) << 4) + (value%10);
}

void displays(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    static char flag = 0;

    unsigned char digit_low = value & 0x0F;
    unsigned char digit_high = value >> 4;

    if(flag == 0){
        LATD = (LATD & 0xFF9F) | 0x0020;
        LATB = (LATB & 0x80FF) | ((int)display7Scodes[digit_low] << 8); 
    }else{
        LATD = (LATD & 0xFF9F) | 0x0040;
        LATB = (LATB & 0x80FF) | ((int)display7Scodes[digit_high] << 8); 

    }
    flag = !flag;
}

int convert(int x){
    //65-15=50 50/33=1.52
    int temp = (x * 33 + 511) / 1024;
    temp = temp * 1.52;
    return temp + 15;
}

void _int_(8) isr_t2(){
    displays(toBCD(voltage));
    IFS0bits.T2IF = 0;
}

int main(void){
    TRISBbits.TRISB4 = 1;
    AD1PCFGbits.PCFG4= 0;
    AD1CON1bits.SSRC = 7;
    AD1CON1bits.CLRASAM = 1;
    AD1CON3bits.SAMC = 16;
    AD1CON2bits.SMPI = 2-1;
    AD1CHSbits.CH0SA = 4;
    AD1CON1bits.ON = 1;

    T2CONbits.TCKPS = 2; //1:4
    PR2 = 41666;
    TMR2 = 0;
    T2CONbits.TON = 1;

    IPC2bits.T2IP = 2;
    IEC0bits.T2IE = 1;
    IFS0bits.T2IF = 0;

    TRISB = TRISB & 0x80FF;
    TRISD = TRISD & 0xFF9F;
    EnableInterrupts();
    while(1){
        resetCoreTimer();
        while(readCoreTimer() < PBCLK / 10);
        AD1CON1bits.ASAM = 1;
        while(IFS1bits.AD1IF == 0);
        int media = 0;   
        int *p = (int *)(&ADC1BUF0);
        for(;p <= (int *)(&ADC1BUF1); p+=4){
            media += convert(*p);
        }
        voltage = media/2;
        IFS1bits.AD1IF = 0;
    }
    return 0;
}
