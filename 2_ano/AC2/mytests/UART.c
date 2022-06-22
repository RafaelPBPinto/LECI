#include <detpic32.h>

void putc(char c){
    while(U2STAbits.UTXBF == 1);
    U2TXREG = c;
}

void putstr(char *str){
    while(*str != '\0'){
        putc(*str);
        str++;
    }
}

void _int_(32) isr_uart2(){
    if(IFS1bits.U2RXIF == 1){
        while(U2STAbits.URXDA  == 0);
        char input = U2RXREG;
        if(input == 'o'){
            putstr("ola");
        }
        if(input == 'p'){
            putc(5 + '0');
        }
    }
    IFS1bits.U2RXIF = 0;
}

int main(void){
    U2MODEbits.BRGH = 0;
    U2BRG = 10;
    U2MODEbits.PDSEL = 0;
    U2MODEbits.STSEL = 0;
    U2STAbits.URXEN = 1;
    U2STAbits.UTXEN = 1;        
    U2MODEbits.ON = 1;

    U2STAbits.URXISEL = 0;
    IFS1bits.U2RXIF = 0;
    IEC1bits.U2RXIE = 1;
    IPC8bits.U2IP = 2;

    EnableInterrupts();
    while(1);
    return 0;
}
