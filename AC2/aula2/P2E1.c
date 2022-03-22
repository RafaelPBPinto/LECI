int main(void){
	int cnt1 = 0;
	int cnt5 = 0;
	int cnt10 = 0;
	
	while(1){
		resetCoreTimer();
		while(readCoreTimer() < 20000000)
		printInt(cnt1++, 10 | 5 << 16);
		
		putChar(' ');
		
		while(readCoreTimer() < 4000000)
		printInt(cnt5++, 10 | 5 << 16);
		
		putChar(' ');
				
		while(readCoreTimer() < 2000000)
		printInt(cnt10++, 10 | 5 << 16);
		
		putChar('\r');					
	}
	return 0;
}
