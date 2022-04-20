#include <detpic32.h>
#define K (PBCLK / 1000) 

void delay(unsigned int ms){
    resetCoreTimer();
    while (readCoreTimer() < K * ms);
}

int main(void){
	TRISEbits.TRISE0 = 0;
	TRISEbits.TRISE1 = 0;
	TRISEbits.TRISE2 = 0;
	TRISEbits.TRISE3 = 0;	// outputs => [RE3, RE0]
	
	while(1){
		// Estado Inicial //
		LATEbits.LATE0 = 0;
		LATEbits.LATE1 = 0;
		LATEbits.LATE2 = 0;	
		LATEbits.LATE3 = 0;
		char k = getChar();
		// Outros Estados //
		if(k == 0x30){
			LATEbits.LATE0 = 1;
			LATEbits.LATE1 = 0;
			LATEbits.LATE2 = 0;	
			LATEbits.LATE3 = 0;
			delay(200);
		}else if(k == 0x31){
			LATEbits.LATE0 = 0;
			LATEbits.LATE1 = 1;
			LATEbits.LATE2 = 0;	
			LATEbits.LATE3 = 0;
			delay(200);
		}else if(k == 0x32){
			LATEbits.LATE0 = 0;
			LATEbits.LATE1 = 0;
			LATEbits.LATE2 = 1;	
			LATEbits.LATE3 = 0;
			delay(200);
		}else if(k == 0x33){
			LATEbits.LATE0 = 0;
			LATEbits.LATE1 = 0;
			LATEbits.LATE2 = 0;	
			LATEbits.LATE3 = 1;
			delay(200);
		}else{
			LATEbits.LATE0 = 1;
			LATEbits.LATE1 = 1;
			LATEbits.LATE2 = 1;	
			LATEbits.LATE3 = 1;
			delay(1000);
		}			
	}
	return 0;
}

