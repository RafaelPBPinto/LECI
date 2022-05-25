#include <detpic32.h>

int main(void){
	//Config T1//
	T1CONbits.TCKPS = 2;	// 1:64 prescaler
	PR1 = 62499;			// Fout = 20MHZ / (64 * (62499 + 1)) = 5 Hz
	TMR1 = 0;
	T1CONbits.TON = 1;
	IPC1bits.T1IP = 2;
	IEC0bits.T1IE = 1;
	
	//Config T3//
	T3CONbits.TCKPS = 4;	// 1:16 prescaler
	PR3 = 49999;			// Fout = 20MHZ / (16* (49999 + 1)) = 25 Hz
	TMR3 = 0;
	T3CONbits.TON = 1;
	IPC3bits.T3IP = 2;
	IEC0bits.T3IE = 1;
	
	IFS0bits.T1IF = 0;
	IFS0bits.T3IF = 0;
	EnableInterrupts();
	TRISE = TRISE & 0xFFF5;	// RE3 e RE1 => outputs
	LATE = LATE & 0xFFF5;	// por RE3 e RE1 a 0;
	while(1);
	return 0; 
}

void _int_(4) isr_T1(void){
	LATEbits.LATE1 = !PORTEbits.RE1; //toggle
	IFS0bits.T1IF = 0;
}

void _int_(12) isr_T3(void){
	LATEbits.LATE3 = !PORTEbits.RE3; //toggle
	IFS0bits.T3IF = 0;
}
