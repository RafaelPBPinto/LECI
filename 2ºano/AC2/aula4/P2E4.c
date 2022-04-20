#include <detpic32.h>
#define K (PBCLK / 1000) 

void delay(unsigned int ms){
    resetCoreTimer();
    while (readCoreTimer() < K * ms);
}

int main(void){
    unsigned char segment;
    TRISB = TRISB & 0x80FF; //[RB8,RB14] => outputs
    TRISD = TRISD & 0xFF9F; // RD5 e RD6 => outputs 
    LATD = (LATD & 0xFF9F) | 0x0020; // RD5=1 e RD6=0
    int i;
    while(1){
        segment = 1;
        for(i=0; i < 7; i++){
            LATB = (LATB & 0x80FF) | (segment << 8); // send "segment" value to display
            delay(10); //100Hz
            segment = segment << 1;
        }
        delay(10); // 100HZ
        LATD = LATD ^ 0x0060; // toggle display selection
    }
    return 0;
}
