#include <detpic32.h>

void setPWM(unsigned int dutyCycle){
    if(dutyCycle >= 0 && dutyCycle <= 100){
        //OC1RS = ((49999 +1)*dutyCycle)/100;
        OC1RS = (dutyCycle / 2 * 1000)
    }
}

int main(void){
    //Config OC1//
    T3CONbits.TCKPS = 2;
    PR3 = 49999;
    TMR3 = 0;
    T3CONbits.TON = 1;
    OC1CONbits.OCM = 6;
    OC1CONbits.OCTSEL = 1;
    setPWM(25);
    OC1CONbits.ON = 1;
    
    while(1);
    return 0;
}
