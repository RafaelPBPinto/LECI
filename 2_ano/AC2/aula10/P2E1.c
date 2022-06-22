#include <detpic32.h>

void delay(unsigned int ms){
    resetCoreTimer();
    while(readCoreTimer() < 20000 * ms);
}

void putc(char byte){
    while(U2STAbits.UTXBF ==1);
    U2TXREG = U2TXREG | byte;
}

void putc1(char byte){
    while(U2STAbits.UTXBF ==1);
    U2RXREG = U2RXREG | byte;
}

char getc(void){
    while(U2STAbits.URXDA == 0);
    return U2RXREG;
}

void putstr(char *str){
    int i = 0;
    do{
        putc(str[i]);
        i++;
        delay(1000);
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
    while(1){
        putc1(0x5A);
        delay(10);
    }
    return 0;
}
