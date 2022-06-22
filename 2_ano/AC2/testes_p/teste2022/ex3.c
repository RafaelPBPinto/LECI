#include <detpic32.h>

volatile int counter = 15;

void putc(char byte){
    while(U2STAbits.UTXBF == 1);
    U2TXREG = byte;
}

void putstr(char *str){
    while(*str != '\0'){
        putc(*str);
        str++;
    }
}

void _int_(32) isr_uart2(){
    if(IFS1bits.U2RXIF == 1){
        while(U2STAbits.URXDA == 0);
        char input = U2RXREG;
        if(input == 'U'){
            if(counter == 15){
                counter = 0;
            }else{
                counter++;
            }
            LATE = (LATE & 0xFFE1) | (counter << 1); 
        }
        if(input == 'R'){
            counter = 0;
            LATE = (LATE & 0xFFE1) | (counter << 1);
            putstr("RESET\n");
        }
    }
    IFS1bits.U2RXIF = 0;
}

int main(void){
    U2MODEbits.BRGH = 0;
    U2BRG = 130;
    U2MODEbits.PDSEL = 2;
    U2MODEbits.STSEL = 1;
    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;
    U2MODEbits.ON = 1;

    U2STAbits.URXISEL = 0;
    IPC8bits.U2IP = 2;
    IEC1bits.U2RXIE = 1;
    IFS1bits.U2RXIF = 0;

    TRISE = TRISE & 0xFFE1;
    LATE = (LATE & 0xFFE1) | (counter << 1);
    EnableInterrupts();
    while(1);
    return 0;
}
