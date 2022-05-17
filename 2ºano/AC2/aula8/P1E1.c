#include <detpic32.h>

int main(void){
	T3CONbits.TCKPS = 7;	// 1:256 prescaler
	PR3 = 39061;			// Fout = 20MHZ / (256 * (39061 + 1)) = 2 Hz
	TMR3 = 0;
	T3CONbits.TON = 1;
	
	while(1){
		while( IFS0bits.T3IF == 0 );
		IFS0bits.T3IF = 0;
		putChar('.');
	}
	return 0; 
}

