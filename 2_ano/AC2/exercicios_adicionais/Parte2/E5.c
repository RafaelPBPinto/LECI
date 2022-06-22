#include <detpic32.h>

void putc(char byte)
{
    while(U2STAbits.UTXBF == 1);
    U2TXREG = byte;

}

void sendStr(char* str)
{
    while(*str != '\0')
    {
        putc(*str);
        str++;
    }
}

void _int_(4) isr_t1()
{

    sendStr("RB30=");

    putc(PORTBbits.RB3 + '0');
    putc(PORTBbits.RB2 + '0');
    putc(PORTBbits.RB1 + '0');
    putc(PORTBbits.RB0 + '0');

    putc('\n');

    IFS0bits.T1IF = 0;
}

int main(void){
    T1CONbits.TCKPS = 3; //256
    PR1 = 39061;
    TMR1 = 0;
    T1CONbits.ON = 1;

    IPC1bits.T1IP = 2;
    IEC0bits.T1IE = 1;
    IFS0bits.T1IF = 0;

    //UART CONFIGURATION
    U2BRG = 1041;
    U2MODEbits.BRGH = 0; //divide by 16
    U2MODEbits.PDSEL = 0; // 8 bits - no parity
    U2MODEbits.STSEL = 0; //1 stop bit

    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 0;

    U2MODEbits.ON = 1;

	TRISB = TRISB | 0x000F;
    EnableInterrupts();
    while(1);
    return 0;
}
