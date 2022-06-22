#include <detpic32.h>

void putc(char c){
    while(U2STAbits.UTXBF == 1);
    U2TXREG = c; 
}

void putstr(char *s){
    while(*s != '\0'){
        putc(*s);
        s++;
    }
}

void _int_(32) isr_uart2(){
    if (IFS1bits.U2RXIF == 1){
        while(U2STAbits.URXDA == 0);
        if(U2RXREG == 'P'){
            putstr("DipSwitch=");
            putc(PORTBbits.RB3 + '0');
            putc(PORTBbits.RB2 + '0');
            putc(PORTBbits.RB1 + '0');
            putc(PORTBbits.RB0 + '0');
            putc('\n');
        }else if(U2RXREG == 'T'){
            LATEbits.LATE4 = !PORTEbits.RE4;
        }
    }
    IFS1bits.U2RXIF = 0;  
}

int main(void){
    // UART
    U2MODEbits.BRGH = 0;    
    U2BRG = 130;        // 9600 bps
    U2MODEbits.PDSEL = 2; // 8 bits - odd
    U2MODEbits.STSEL = 1; // 2 stop bit
    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;
    U2MODEbits.ON = 1;

    //Interrupts
    U2STAbits.UTXISEL = 1;
    U2STAbits.URXISEL = 0;

    IEC1bits.U2RXIE = 1;
    IPC8bits.U2IP = 2;
    IFS1bits.U2RXIF = 0;

    //LED e dipswitch
    TRISB = TRISB | 0x000F;
    TRISEbits.TRISE4 = 0;
    LATEbits.LATE4 = 1;

    EnableInterrupts();
    while(1);
    return 0;
}
