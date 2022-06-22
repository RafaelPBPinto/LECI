#include <detpic32.h>

typedef struct{
    char mem[100];
    int nchar;
    int posrd;
} t_buf;

volatile t_buf txbuf;

void putstrInt(char *s){
    while (txbuf.nchar > 0);
    while(s[txbuf.nchar] != '\0'){
        txbuf.mem[txbuf.nchar] = s[txbuf.nchar];
        txbuf.nchar++;
    }
    txbuf.posrd = 0;
    IEC1bits.U2TXIE = 1;
}

void _int_(32) isr_uart2(void){
    if(IFS1bits.U2TXIF == 1){
        if(txbuf.nchar > 0){
            U2TXREG = U2TXREG | txbuf.mem[txbuf.posrd];
            txbuf.nchar--;
            txbuf.posrd++;
        }else{
            IEC1bits.U2TXIE = 0;
        }
        IFS1bits.U2TXIF = 0;
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
    IEC1bits.U2RXIE = 0;
    IEC1bits.U2TXIE = 0;
    IPC8bits.U2IP = 2;
    IFS1bits.U2RXIF = 0;
    U2STAbits.UTXISEL = 10;  
    U2STAbits.URXISEL = 00;              
    IEC1bits.U2EIE = 1;

    EnableInterrupts();
    txbuf.nchar = 0;
    while(1){
        putstrInt("Test string which can be as long as you like as long as it is no longer than 100 characters\n");
    }
    return 0;
}
