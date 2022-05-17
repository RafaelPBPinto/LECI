int main(void){
	int cnt1 = 0;
	int cnt5 = 0;
	int cnt10 = 0;
	int delaytime = 100;		// 100*20000 = 10Hz
	int run = 1;	
	while(1){
		char k = inkey();
		if(k == 's')
			run = 0;
		if(k == 'r')
			run = 1;
		if(k == 'a')
			delaytime = 50;
		if(k == 'n')
			delaytime = 100;
			
		if(run == 1){
			if(cnt10 % 10 == 0)
				cnt1++;
			if(cnt10 % 2 == 0)
				cnt5++;
			cnt10++;
		
			putChar(' ');
			printInt(cnt10, 10 | 5 << 16);
			putChar(' ');
			printInt(cnt5, 10 | 5 << 16);
			putChar(' ');
			printInt(cnt1, 10 | 5 << 16);
			delay(delaytime);
		}					
	}
	return 0;
}

void delay(unsigned int ms){
	resetCoreTimer();
 	while(readCoreTimer() < 20000 * ms); 
}
