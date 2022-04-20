#include <detpic32.h>

int main(void){
    TRISB = TRISB & 0x80FF; //[RB8,RB14] => outputs
    TRISD = TRISD & 0xFF9F; // RD5 e RD6 => outputs 1111 1111 1001 1111
    while(1){
        LATD = (LATD & 0xFF9F) | 0x0020; // RD5=1 e RD6=0
        char k = getChar();
        if(k == 'a' || k == 'A'){
            LATBbits.LATB8 = 1;
            LATBbits.LATB14 = 0;
        }else if(k == 'g' || k == 'G'){
            LATBbits.LATB14 = 1;
            LATBbits.LATB8 = 0;
        } 
    }
    return 0;
}
