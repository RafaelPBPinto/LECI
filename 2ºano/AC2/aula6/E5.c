#include <detpic32.h>

int main(void){
	int amplitude;
	// Configuração das entradas analógicas //
	TRISBbits.TRISB4 = 1;		// RB4 digital output disconnected
	AD1PCFGbits.PCFG4 = 0;		// RB4 configured as a analog input (AN4)
	
	// Seleção do canal de entrada //
	AD1CHSbits.CH0SA = 4;		// Selects AN4 as input for the A/D converter
	
	// Outras configurações //
	AD1CON1bits.SSRC = 7;		// Conversion trigger selection bits: in this
						//  mode an internak counter ends sampling and 
						//  starts conversion
	AD1CON1bits.CLRASAM = 1;	// Stop conversions when the 1st A/D converter
						//  interrupt is generated. At the same time,
						//  hardware clears the ASAM bit
						
	// Configuração do número de conversões consecutivas do mesmo canal //
	AD1CON3bits.SAMC = 16;		// Sample time is 16 TAD (TAD = 100 ns)
	AD1CON2bits.SMPI = 4 - 1;	// Interrupt is generated after 4 samples
	
	AD1CON1bits.ON = 1;		// Enable A/D converter
	
	while(1){
		int media = 0;
		AD1CON1bits.ASAM = 1;	// Start conversion
		while( IFS1bits.AD1IF == 0 );	// Wait while conversion not done
		putChar('\n');
		int *p = (int *) (&ADC1BUF0);
		for(; p <= (int *)(&ADC1BUF3); p+=4 ){
			printInt( *p, 10 | 4 << 16);
			putChar(' ');
			media += *p;
		}
		putChar('\n');
		printStr("Media: ");
		media = media / 4;
		printInt( media, 10 | 4 << 16);  
		putChar('\n');
		printStr("Amplitude da tensao: ");
		amplitude = (media * 33 + 511) / 1023;
		printInt( amplitude, 10 | 4 << 16);
		IFS1bits.AD1IF = 0;	// Reset AD1IF (LATD11=0)
	}
	
	return 0;
}

