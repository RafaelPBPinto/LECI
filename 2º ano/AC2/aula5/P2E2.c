#include <detpic32.h>
#define K (PBCLK / 1000) 

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

int main(void){
	TRISE = TRISE & 0xFF00;	// 8 LEDS port E
	TRISB = (TRISB & 0x80FE) | 0x0001;	// configure RB8-RB14 as outputs & RB0 => input
    TRISD = TRISD & 0xFF9F; // configure RD5-RD6 as outputs
    int counter = 0;
    while(1){
    	int i = 0;
    	LATE = (LATE & 0xFF00) | toBcd(counter);
    	do{
    		send2displays(toBcd(counter));
    		delay(10);	// 100 Hz
    	}while(++i < 20);
		if(PORTBbits.RB0 = 1){
			if(counter < 59){
				counter++;
			}else{
				counter = 0;
			}
		}else{
			if(counter > 0){
				counter--;
			}else{
				counter = 59;
			}
		} 
    }
    return 0;
}

