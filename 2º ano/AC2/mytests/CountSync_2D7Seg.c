#include <detpic32.h>
#define K (PBCLK / 1000) 

void delay(unsigned int ms){
    resetCoreTimer();
    while (readCoreTimer() < K * ms);
}

void delay7seg(unsigned int ms, char codes[], int countLO, int countHI){
    resetCoreTimer();
    while (readCoreTimer() < K * ms){
        int controlD5 = PORTDbits.RD5;
        int controlD6 = PORTDbits.RD6;
        if(controlD5 == 1 && controlD6 == 0){
            LATB = (LATB & 0x80FF) | ((int)codes[countLO] << 8);
            //delay(1);
            LATDbits.LATD5 = !LATDbits.LATD5;
            LATDbits.LATD6 = !LATDbits.LATD6;
            LATB = (LATB & 0x80FF) | ((int)codes[countHI] << 8);
        }else{
            LATB = (LATB & 0x80FF) | ((int)codes[countHI] << 8);
            //delay(1);
            LATDbits.LATD5 = !LATDbits.LATD5;
            LATDbits.LATD6 = !LATDbits.LATD6;
            LATB = (LATB & 0x80FF) | ((int)codes[countLO] << 8);
        }
    }
}

int main(void){
    unsigned char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};
    TRISB = TRISB & 0x80FF; // [RB8,RB14] => outputs => 7 segmentos
    TRISD = TRISD & 0xFF9F; // [RD5,RD6] => outputs => seletor de display
    LATDbits.LATD5 = 1;
    LATDbits.LATD6 = 0;
    unsigned int countHI = 0;
    unsigned int countLO = 0;
    /*int controlD5;
    int controlD6;*/

    // Contador de 0 a 99 Síncrono//

    /*  Controls:
        r => reset
    */

    while(1){
        /*controlD5 = PORTDbits.RD5;
        controlD6 = PORTDbits.RD6;*/
        /*if(controlD5 == 1 && controlD6 == 0){
            LATB = (LATB & 0x80FF) | ((int)display7Scodes[countLO] << 8);
            delay(1);
            LATDbits.LATD5 = !LATDbits.LATD5;
            LATDbits.LATD6 = !LATDbits.LATD6;
            LATB = (LATB & 0x80FF) | ((int)display7Scodes[countHI] << 8);
        }else{
            LATB = (LATB & 0x80FF) | ((int)display7Scodes[countHI] << 8);
            delay(1);
            LATDbits.LATD5 = !LATDbits.LATD5;
            LATDbits.LATD6 = !LATDbits.LATD6;
            LATB = (LATB & 0x80FF) | ((int)display7Scodes[countLO] << 8);
        }*/
        char k = inkey();
        if(k == 'r'){
            countHI = 0;
            countLO = 0;
        }else{
            if(countHI == 9 && countLO == 9){
                countLO = 0;
                countHI = 0;
            }else if(countLO == 9){
                countLO = 0;
                countHI++;
            }else{
                countLO++;
            }
        }
        delay7seg(1000, display7Scodes, countLO, countHI);
    }
    return 0;
}
