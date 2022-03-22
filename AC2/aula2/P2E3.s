	.data
	.equ READ_CORE_TIMER,11
 	.equ RESET_CORE_TIMER,12
 	.equ PUT_CHAR,3
 	.equ PRINT_INT,6
 	.equ INKEY,1
 	.text
 	.globl main
 	
 main:	li	$t0,0			# int cnt1 = 0;
 	li	$t1,0			# int cnt5 = 0;
 	li	$t2,0			# int cnt10 = 0;
 	
 	li	$t3,20000000		# int v1 = 20000000;
 	li	$t4,4000000		# int v5 = 4000000;
 	li	$t5,2000000		# int v10 = 2000000;
 	
 while1:				# while(1)
 	li	$v0,RESET_CORE_TIMER 
 	syscall			# resetCoreTimer();
 	
 	li	$v0,INKEY		
 	syscall			# k = inkey();
 	move	$t6,$v0
 			
 if1:	bne	$t6,'a',if2		# if( k == 'a' ){
 	div	$t3,$t3,2		# v1 = v1/2;
 	div	$t4,$t4,2		# v5 = v5/2;
 	div	$t5,$t5,2		# v10 = v10/2;
 
 if2:	bne	$t6,'n',continue	# else if( k == 'n' )
 	li	$t3,20000000		# v1 = 20000000;
 	li	$t4,4000000		# v5 = 4000000;
 	li	$t5,2000000		# v10 = 2000000;
 	
 continue:
 while2:
 	li	$v0,READ_CORE_TIMER
 	syscall
 	bge	$v0,$t3,endw2		# while(readCoreTimer() < 10000)
 	li	$a1,0x0005000A
 	move	$a0,$t0		
 	li	$v0,PRINT_INT		
 	syscall			# printInt(cnt1++, 10 | 5 << 16);
 	addi	$t0,$t0,1
 	j	while2
 	
 endw2: 
 	li	$a0,' '
 	li	$v0,PUT_CHAR
 	syscall			# putChar(' ');
 	
 while3:
 	li	$v0,READ_CORE_TIMER
 	syscall
 	bge	$v0,$t4,endw3		# while(readCoreTimer() < 40000)
 	li	$a1,0x0005000A
 	move	$a0,$t1		
 	li	$v0,PRINT_INT		
 	syscall			# printInt(cnt5++, 10 | 5 << 16);
 	addi	$t1,$t1,1
 	j	while3
 	
 endw3: 
 	li	$a0,' '
 	li	$v0,PUT_CHAR
 	syscall			# putChar(' ');
 
 while4:
 	li	$v0,READ_CORE_TIMER
 	syscall
 	bge	$v0,$t5,endw2		# while(readCoreTimer() < 50000)
 	li	$a1,0x0005000A
 	move	$a0,$t2		
 	li	$v0,PRINT_INT		
 	syscall			# printInt(cnt10++, 10 | 5 << 16);
 	j	while4
 	
 endw4: 
 	li	$a0,'\r'
 	li	$v0,PUT_CHAR
 	syscall			# putChar('\r')
 	
 	li	$t6,' '		# k = ' ';
 	j	while1
 	
 	li	$v0,0			# return 0;
 	jr	$ra			# fim do programa;
