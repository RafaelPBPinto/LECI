#include <detpic32.h>

void setPWM(unsigned int dutyCycle){
    if(dutyCycle >= 0 && dutyCycle <= 100){
        OC1RS = (33334*dutyCycle)/100;
    }
}

int main(void){
    T2CONbits.TCKPS = 2;
    PR2 = 33333;
    TMR2 = 0;
    T2CONbits.TON = 1;

    OC1CONbits.OCM = 6;
    OC1CONbits.OCTSEL = 0;
    OC1RS = 8334;
    OC1CONbits.ON = 1;

    TRISBbits.TRISB3 = 1;
    TRISBbits.TRISB0 = 1; 
    TRISCbits.TRISC14 = 0;
    while(1){
        LATCbits.LATC14 = PORTDbits.RD0; 
        resetCoreTimer();
        while(readCoreTimer() < 5000); // 20000 * 0,250
        if(PORTBbits.RB3 == 0 && PORTBbits.RB0 == 1){
            setPWM(25);
        }
        if(PORTBbits.RB3 == 1 && PORTBbits.RB0 == 0){
            setPWM(70);
        }
    }
    return 0;
}
