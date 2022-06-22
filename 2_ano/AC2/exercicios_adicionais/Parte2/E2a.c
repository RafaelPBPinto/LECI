#include <detpic32.h>

volatile int counter = 1;

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

void _int_(4) isr_T1(void){
    if(counter == 99){
        counter = 0;
    }else{
        counter++;
    }
    IFS0bits.T1IF = 0;
}

void _int_(8) isr_T2(void){
    send2displays(toBcd(counter));
    printInt( counter, 16 | 2 << 16 );
    putChar('\r');
    IFS0bits.T2IF = 0;
}

int main(void){
    //Config T1//
    T1CONbits.TCKPS = 2; // 1:64 prescaler
    PR1 = 31249;        // 20MHz÷(64×(31249+1))=10Hz
    TMR1 = 0;
    T1CONbits.TON = 1;
    //Config Interrupts T1//
    IPC1bits.T1IP = 2;
    IEC0bits.T1IE = 1;
    IFS0bits.T1IF = 0;
    //Config T2//
    T3CONbits.TCKPS = 3; // 1:8 prescaler
    PR2 = 49999; //20MHz÷(8×(49999+1))=50Hz
    TMR2 = 0;
    T2CONbits.TON = 1;
    //Config Interrupts T2//
    IPC2bits.T2IP = 2;
    IEC0bits.T2IE = 1;
    IFS0bits.T2IF = 0;
    //Config displays//
    TRISD = TRISD & 0xFF9F;
    TRISB = TRISB & 0x80FF;
    
    EnableInterrupts();
    while(1);
    return 0;
}
