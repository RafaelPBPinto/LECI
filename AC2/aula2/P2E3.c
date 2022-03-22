int main(void){
	int cnt1 = 0;
	int cnt5 = 0;
	int cnt10 = 0;
	
	int v1 = 20000000;
	int v5 = 4000000;
	int v10 = 2000000;
	
	while(1){
		resetCoreTimer();
		k = inkey();
		if( k == 'a' ){
			v1 = v1/2;
			v5 = v5/2;
			v10 = v10/2;
		}else if( k == 'n' ){
			v1 = 20000000;
			v5 = 4000000;
			v10 = 2000000;
		}
		
		while(readCoreTimer() < v1)
		printInt(cnt1++, 10 | 5 << 16);
		
		putChar(' ');
		
		while(readCoreTimer() < v5)
		printInt(cnt5++, 10 | 5 << 16);
		
		putChar(' ');
				
		while(readCoreTimer() < v10)
		printInt(cnt10++, 10 | 5 << 16);
		
		putChar('\r');
		
		k = ' ';					
	}
	return 0;
}
