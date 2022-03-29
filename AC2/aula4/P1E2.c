#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while (readCoreTimer() < 20000 * ms);
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
