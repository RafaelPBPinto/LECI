#include <detpic32.h>

volatile int flag = 0;

void _int_(8) isr_T2(void){
	flag++;
	if(flag == 6){		// 0.5s * 6 ciclos = 3s
		LATEbits.LATE0 = 0;
	}
	IFS0bits.T2IF = 0;
}

void _int_(7) isr_INT1(void){
	T2CONbits.TON = 1;	//Enable timer
	IFS0bits.INT1IF = 0;
	LATEbits.LATE0 = 1;
	flag = 0;
}

int main(void){
	//Config LED//
	TRISEbits.TRISE0 = 0;
	LATEbits.LATE0 = 0;
	//Config Pulse//
	IPC1bits.INT1IP = 2;
	INTCONbits.INT1EP = 0;
	IEC0bits.INT1IE = 1;
	//Config T2//
	T2CONbits.TCKPS = 7;	// 1:256 prescaler
	PR2 = 39061;			// Fout = 20MHZ / (256 * (39061 + 1)) = 2 Hz
	TMR2 = 0;
	IPC2bits.T2IP = 2;
	IEC0bits.T2IE = 1;
	
	IFS0bits.INT1IF = 0;
	IFS0bits.T2IF = 0;	
	EnableInterrupts();
	while(1);
	return 0;
}
