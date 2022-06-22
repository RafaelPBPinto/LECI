#include <detpic32.h>

void putc(char byte){
    while(U2STAbits.UTXBF ==1);
    U2TXREG = U2TXREG | byte;
}

void _int_(32) isr_uart2(void){
    if(IFS1bits.U2RXIF == 1){
        char c = U2RXREG;
        if(c == 'T')
            LATCbits.LATC14 = 1;
        if(c == 't')
            LATCbits.LATC14 = 0;
        IFS1bits.U2RXIF = 0;
    }
}

int main(void){
    U2BRG = 10;
    U2MODEbits.BRGH = 0;    // High Baud Rate Enable bit (fator 16)
    U2MODEbits.STSEL = 0;   // Stop bits (1 stop bit)
    U2MODEbits.PDSEL1 = 0;
    U2MODEbits.PDSEL0 = 0;  // parity
    U2STAbits.URXEN = 1;    // Enable the receiver
    U2STAbits.UTXEN = 1;    //Enable the trasmitter
    U2MODEbits.ON= 1;    // Enable UART2

    //UART2 Interrupts//
    IEC1bits.U2RXIE = 1;
    IEC1bits.U2TXIE = 0;
    IPC8bits.U2IP = 2;
    IFS1bits.U2RXIF = 0;
    U2STAbits.UTXISEL = 00;
    U2STAbits.URXISEL = 00;        
    IEC1bits.U2EIE = 1;

    TRISCbits.TRISC14 = 0;
    EnableInterrupts();
    while(1);
    return 0;
}
