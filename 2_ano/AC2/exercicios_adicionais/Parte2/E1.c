#include <detpic32.h>
#define K PBCLK/1000

volatile char send = 0;
volatile char flag = 0;

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer() < K * ms);
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
    if(flag == 0){
        LATD = LATD & 0xFF9F;
    }else{
        send2displays(send);
    }
    IFS0bits.T2IF = 0;
}

int main(void){
    //Config T2//
    T2CONbits.TCKPS =  2; // PBCLK / ((65535+1)*100) = 3 => 1:4 prescaler;
    PR2 = 49999; // Fout = 20MHz / (4*(49999+1)) = 100 Hz
    TMR2 = 0;
    T2CONbits.TON = 1;
    //Interrupts T2 config//
    IPC2bits.T2IP = 2;
    IEC0bits.T2IE = 1;
    IFS0bits.T2IF = 0;

    //Config displays as outputs//
    TRISD = TRISD & 0xFF9F;
    TRISB = TRISB & 0x80FF;

    //Config LEDs as outputs//
    TRISE = TRISE & 0xFFF0;

    LATE = LATE & 0xFFF0;
    LATD = LATD & 0xFF9F;
    EnableInterrupts();
    while(1){
        char c = inkey();
        if(c == 0){
            continue;
        }else if(c == '0'){
            LATE = (LATE & 0xFFF0) | 0x0001;
            send = 0;
            flag = 1;
        }else if(c == '1'){
            LATE = (LATE & 0xFFF0) | 0x0002;
            send = 1;
            flag = 1;
        }else if(c == '2'){
            LATE = (LATE & 0xFFF0) | 0x0004;
            send = 2;
            flag = 1;
        }else if(c == '3'){
            LATE = (LATE & 0xFFF0) | 0x0008;
            send = 3;
            flag = 1;
        }else{
            LATE = (LATE & 0xFFF0) | 0x000F;
            send = 0xFF;
            flag = 1;
            delay(1000);   
            LATE = LATE & 0xFFF0;
            flag = 0;
        }
    }
    return 0;
}
