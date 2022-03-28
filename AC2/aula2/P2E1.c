int main(void){
	int cnt1 = 0;
	int cnt5 = 0;
	int cnt10 = 0;
	int delaytime = 100;		// 100*20000 = 10Hz	
	while(1){
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
	return 0;
}

void delay(unsigned int ms){
	resetCoreTimer();
 	while(readCoreTimer() < 20000 * ms); 
}
