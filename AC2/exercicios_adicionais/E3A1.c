#include <detpic32.h>

int main(void){
	TRISBbits.TRISB0 = 1;
	TRISBbits.TRISB1 = 1;
	TRISBbits.TRISB2 = 1;
	TRISBbits.TRISB3 = 1;	//inputs [RB3, RB0]
	
	TRISEbits.TRISE0 = 0;
	TRISEbits.TRISE1 = 0;
	TRISEbits.TRISE2 = 0;
	TRISEbits.TRISE3 = 0;
	TRISEbits.TRISE4 = 0;
	TRISEbits.TRISE5 = 0;
	TRISEbits.TRISE6 = 0;
	TRISEbits.TRISE7 = 0;	//outputs [RE7, RE0]
	
	while(1){
		LATEbits.LATE7 = PORTBbits.RB0;
		LATEbits.LATE6 = PORTBbits.RB1;
		LATEbits.LATE5 = PORTBbits.RB2;
		LATEbits.LATE4 = PORTBbits.RB3;	// ordem inversa
		
		LATEbits.LATE0 = !PORTBbits.RB0;
		LATEbits.LATE1 = !PORTBbits.RB1;
		LATEbits.LATE2 = !PORTBbits.RB2;
		LATEbits.LATE3 = !PORTBbits.RB3;	// complemento para 1
	}
	return 0;
}

