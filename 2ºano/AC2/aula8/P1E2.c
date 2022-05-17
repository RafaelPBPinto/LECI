#include <detpic32.h>

int main(void){
	T3CONbits.TCKPS = 7;	// 1:256 prescaler
	PR3 = 39061;			// Fout = 20MHZ / (256 * (39061 + 1)) = 2 Hz
	TMR3 = 0;
	T3CONbits.TON = 1;
	IPC3bits.T3IP = 2;
	IEC0bits.T3IE = 1;
	IFS0bits.T3IF = 0;
	EnableInterrupts();
	while(1);
	return 0; 
}

void _int_(12) isr_T3(void){
	putChar('.');
	IFS0bits.T3IF = 0;
}

