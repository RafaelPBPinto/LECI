#include <detpic32.h>

volatile int flag = 1;
volatile int min = 0;
volatile int sec = 0;

unsigned char toBCD(unsigned char value){
    return ((value/10) << 4) + (value%10);
}

void displays(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    static char flagd = 0;

    char digit_low = value & 0x0F;
    char digit_high = value >> 4;

    if(flagd == 0){
        LATD = (LATD & 0xFF9F) | 0x0020;
        LATB = (LATB & 0x80FF) | ((int)display7Scodes[digit_low] << 8);
    }else{
        LATD = (LATD & 0xFF9F) | 0x0040;
        LATB = (LATB & 0x80FF) | ((int)display7Scodes[digit_high] << 8);

    }
    flagd = !flagd;
}

void _int_(4) isr_t1(){
    if(flag % 2 != 0){
        if(sec == 59){
            sec = 0;
            if(min == 255){
                min = 0;
            }else{
                min++;
            }
        }else{
            sec++;
        }
    }
    flag++;
    IFS0bits.T1IF = 0;
}

void _int_(8) isr_t2(){
    displays(toBCD(sec));
    LATE = (LATE & 0xFF00) | min;
    IFS0bits.T2IF = 0;
}

int main(void){
    T1CONbits.TCKPS = 3;
    PR1 = 39062;
    TMR1 = 0;
    T1CONbits.TON = 1;

    IPC1bits.T1IP = 2;
    IEC0bits.T1IE = 1;
    IFS0bits.T1IF = 0;
    
    T2CONbits.TCKPS = 2;
    PR2 = 49999;
    TMR2 = 0;
    T2CONbits.TON = 1;

    IPC2bits.T2IP = 2;
    IEC0bits.T2IE = 1;
    IFS0bits.T2IF = 0;

    TRISD = TRISD & 0xFF9F;
    TRISB = TRISB & 0x80FF;
    TRISE = TRISE & 0xFF00;
    
    EnableInterrupts();
    while(1);
    return 0;
}
