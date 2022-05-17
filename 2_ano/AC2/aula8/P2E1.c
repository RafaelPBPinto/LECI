#include <detpic32.h>
#define K (PBCLK/1000)

void delay(unsigned int ms){
	resetCoreTimer();
	while( readCoreTimer() < K * ms);
}

int main(void){
	TRISEbits.TRISE0 = 0;
	IFS0bits.INT1IF = 0;
	while(1){
		while( IFS0bits.INT1IF == 0 );
		LATEbits.LATE0 = 1;
		delay(3000);
		LATEbits.LATE0 = 0;
		IFS0bits.INT1IF = 0;
	}
	return 0;
}

