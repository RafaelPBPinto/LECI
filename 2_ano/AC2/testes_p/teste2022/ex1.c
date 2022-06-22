#include <detpic32.h>

int main(void){
    T2CONbits.TCKPS = 2; // 1:4
    PR2 = 33333;
    TMR2 = 0;
    T2CONbits.TON = 1;

    OC2CONbits.OCM = 6;
    OC2CONbits.OCTSEL = 0;
    OC2RS = 8334;
    OC2CONbits.ON = 1;

    TRISBbits.TRISB3 = 1;
    TRISBbits.TRISB0 = 1; 

    //led para testar sem osciloscopio//
    TRISCbits.TRISC14 = 0;
    while(1){
        LATCbits.LATC14 = PORTDbits.RD1;
        resetCoreTimer();
        while(readCoreTimer() < 5000); // 20000*0,250ms
        if(PORTBbits.RB3 == 1 && PORTBbits.RB0 == 0){
            OC2RS = (33334 * 70) / 100;
        }else if(PORTBbits.RB3 == 0 && PORTBbits.RB0 == 1){
            OC2RS = (33334 * 25) / 100;
        }
    }
    return 0;
}
