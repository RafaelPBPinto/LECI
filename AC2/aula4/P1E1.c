#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while (readCoreTimer() < 20000 * ms);
}

int main(void){
    TRISCbits.TRISC14 = 0;   // RC14 => output
    while (1)
    {
        delay(1000);    // 1Hz
        LATCbits.LATC14 = !LATCbits.LATC14;
    }
    return 0;
}
