#include <detpic32.h>

void configUart2(unsigned int baud, char parity, unsigned int stopbits){
    if(baud <= 600 || baud > 115200){
        U2BRG = ((PBCLK + 8 * baud) / (16 * baud)) - 1;
    }else{
        U2BRG = 10;
    }

    if(parity == 'E' || parity == 'e'){
        U2MODEbits.PDSEL1 = 0;
        U2MODEbits.PDSEL0 = 1;
    }else if(parity == 'O' || parity == 'o'){
        U2MODEbits.PDSEL1 = 1;
        U2MODEbits.PDSEL0 = 0;
    }else{
        U2MODEbits.PDSEL1 = 0;
        U2MODEbits.PDSEL0 = 0;
    }

    if(stopbits == 2){
        U2MODEbits.STSEL = 1;
    }else{
        U2MODEbits.STSEL = 0;
    }

    U2STAbits.URXEN = 1;    
    U2STAbits.UTXEN = 1;    
    U2MODEbits.ON= 1;    
}

void putc(char byte){
    while(U2STAbits.UTXBF ==1);
    U2TXREG = U2TXREG | byte;
}

int main(void){
    configUart2(600, 'E', 2);
    while(1){
        putc('+');
    }
    return 0;
}
