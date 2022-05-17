#include <detpic32.h>

int main(void){
	//Config LED//
	TRISEbits.TRISE0 = 0;
	//Config T2//
	T2CONbits.TCKPS = 7;	// 1:256 prescaler
	PR2 = 39061;			// Fout = 20MHZ / (256 * (39061 + 1)) = 2 Hz
	TMR2 = 0;
	T2CONbits.TON = 1;
	IPC2bits.T2IP = 2;
	IEC0bits.T2IE = 1;
	
	INTCONbits.INT1EP = 0;
	IFS0bits.INT1IF = 0;
	IFS0bits.T2IF = 0;	
	EnableInterrupts();
	while(1);
	return 0;
}

volatile int flag = 0;

void _int_(8) isr_T2(void){
	if(flag == 5){		// 0.5s * 6 ciclos = 3s
		LATEbits.LATE0 = 0;
		IFS0bits.INT1IF = 0;
		flag = 0;
	}else{
		LATEbits.LATE0 = 1;
		flag++;
	}
	IFS0bits.T2IF = 0;
}

void _int_(7) isr_INT1(void){
	IFS0bits.T2IF = 1;
}

