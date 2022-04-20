#include <detpic32.h>
#define K (PBCLK / 1000) 

void delay(unsigned int ms){
    resetCoreTimer();
    while (readCoreTimer() < K * ms);
}

int main(void){
    TRISE = TRISE & 0xFFF0; // RE[0,3] => outputs 
    int count = 0;
    while(1){
        delay(250); // 4Hz
        LATE = (LATE & 0xFFF0) | count;
        count++;
    }
    return 0;
}
