#include <detpic32.h>

int main(void){
    TRISB = TRISB & 0x80FF; //[RB8,RB14] => outputs
    TRISD = TRISD & 0xFF9F; // RD5 e RD6 => outputs 1111 1111 1001 1111
    while(1){
        LATD = (LATD & 0xFF9F) | 0x0040; // RD5=0 e RD6=1
        LATB = LATB | 0x7F00; // todos os segmentos ligados
    }
    return 0;
}