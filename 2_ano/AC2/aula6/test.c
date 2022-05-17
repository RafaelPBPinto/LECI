#include <detpic32.h>
#define K (PBCLK / 1000) 

void delay(unsigned int ms){
    resetCoreTimer();
    while (readCoreTimer() < K * ms);
}

unsigned char toBcd(unsigned char value){
	return ((value / 10) << 4) + (value % 10);
}

void send2displays(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    static char displayFlag = 0;    // static variable: doesn't loose its
                                    // value between calls to function
    int digit_low = value & 0x0F;  
    int digit_high = value >> 4; 
    if(displayFlag == 0){ 
    	LATD = (LATD & 0xFF9F) | 0x0020;    // select display low
    	LATB = (LATB & 0x80FF) | ((int)display7Scodes[digit_low] << 8); // // send digit_low to display
    }else{  
		LATD = (LATD & 0xFF9F) | 0x0040; // select display high 
		LATB = (LATB & 0x80FF) | ((int)display7Scodes[digit_high] << 8); // // send digit_high to display
    }
	displayFlag = !displayFlag;
}

int main(void){
	int media = 0;
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
	
	TRISB = TRISB & 0x80FF;	// configure RB8-RB14 as outputsS
    TRISD = TRISD & 0xFF9F; // configure RD5-RD6 as outputs
    
    int i = 0;
	AD1CON1bits.ASAM = 1;	// Start conversion
	while( IFS1bits.AD1IF == 0 );	// Wait while conversion not done
	int *p = (int *) (&ADC1BUF0);
	for(; p <= (int *)(&ADC1BUF3); p+=4 ){
		media += *p;
	}
	media = media/4;
	amplitude = (media * 33 + 511) / 1023;
	
	do{
    		send2displays(toBcd(amplitude));
    		delay(10);	// 100 Hz
    }while(++i < 20);
	IFS1bits.AD1IF = 0;	// Reset AD1IF (LATD11=0)
	
    return 0;
}

