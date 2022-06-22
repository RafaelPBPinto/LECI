#include <detpic32.h>

void putc(char byte){
    while(U2STAbits.UTXBF ==1);
    U2TXREG = U2TXREG | byte;
}

void putstr(char *str){
    int i = 0;
    do{
        putc(str[i]);
        i++;
    } while (str[i] != '\0');
    
}

int main(void){
    // Config UART2
    U2BRG = 10;
    U2MODEbits.BRGH = 0;    // High Baud Rate Enable bit (fator 16)
    U2MODEbits.STSEL = 0;   // Stop bits (1 stop bit)
    U2MODEbits.PDSEL1 = 0;
    U2MODEbits.PDSEL0 = 0;  // parity
    U2STAbits.URXEN = 1;    // Enable the receiver
    U2STAbits.UTXEN = 1;    //Enable the trasmitter
    U2MODEbits.ON= 1;    // Enable UART2

    TRISDbits.TRISD11 = 0; // output
    while(1){
        while(U2STAbits.TRMT == 0);
        LATDbits.LATD11 = 1;
        putstr("123456789AB");
        LATDbits.LATD11 = 0;
    }
    return 0;
}