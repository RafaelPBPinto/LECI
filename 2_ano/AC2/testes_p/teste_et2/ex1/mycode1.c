#include <detpic32.h>

int main(void){
    T2CONbits.TCKPS = 1;
    PR2 = 35713;
    TMR2 = 0;
    T2CONbits.TON = 1;

    OC2CONbits.OCM = 6;
    OC2CONbits.OCTSEL = 0;
    OC2RS = 8929;
    OC2CONbits.ON = 1;

    TRISB = TRISB | 0x0009;
    //led para testar sem osciloscopio//
    TRISCbits.TRISC14 = 0;
    while(1){
        LATCbits.LATC14 = PORTDbits.RD1;
        resetCoreTimer();
        // ciclos = (20*10^6*250)/(1*10^6)
        while(readCoreTimer() < 5000);

        if(PORTBbits.RB3 == 0 && PORTBbits.RB0 == 1){
            OC2RS = (35714*25)/100;
        }else if(PORTBbits.RB3 == 1 && PORTBbits.RB0 == 0){
            OC2RS = (35714*70)/100;
        }
    }
    return 0;
}
