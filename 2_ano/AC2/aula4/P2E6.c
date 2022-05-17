#include <detpic32.h>

int main(void){
    unsigned char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    TRISB = (TRISB & 0x80F0) | 0x000F; //[RB8,RB14] => outputs; [RB3,RB0} => inputs
    TRISD = TRISD & 0xFF9F; // RD5 e RD6 => outputs 
    LATD = (LATD & 0xFF9F) | 0x0020; // RD5=1 e RD6=0 Select display low
    while(1){
        unsigned int k = PORTB & 0x000F;
        LATB = (LATB & 0x80FF) | ((int)display7Scodes[k] << 8);
    }
    return 0;
}
