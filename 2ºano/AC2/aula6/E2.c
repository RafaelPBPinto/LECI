#include <detpic32.h>

// TEMPO DE ATIVAÇÃO = aproximadamente 3,5 * 10^-6 s 
int main(void){
	volatile int aux;
	// Configuração das entradas analógicas //
	TRISBbits.TRISB4 = 1;		// RD11 digital output disconnected
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
	AD1CON2bits.SMPI = 1 - 1;	// Interrupt is generated after 1 samples
	
	AD1CON1bits.ON = 1;		// Enable A/D converter
	TRISDbits.TRISD11 = 0;	// RD11 => output
	while(1){
		LATDbits.LATD11 = 1;	// Set LATD11
		
		AD1CON1bits.ASAM = 1;	// Start conversion
		while( IFS1bits.AD1IF == 0 );	// Wait while conversion not done
		
		LATDbits.LATD11 = 0;	// Reset LATD11
		aux = ADC1BUF0;
		IFS1bits.AD1IF = 0;	// Reset AD1IF (LATD11=0)
	}
	return 0;
}

