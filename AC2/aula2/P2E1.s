	.data
	.equ READ_CORE_TIMER,11
 	.equ RESET_CORE_TIMER,12
 	.equ PUT_CHAR,3
 	.equ PRINT_INT,6
 	.text
 	.globl main
 	
 main:	li	$t0,0		# cnt1 = 0
 	li	$t1,0		# cnt5 = 0
 	li	$t2,0		# cnt10 = 0
 	
 while1:				# while(1)
 	li	$v0,RESET_CORE_TIMER 
 	syscall			# resetCoreTimer();
 	
 while2:
 	li	$v0,READ_CORE_TIMER
 	syscall
 	bge	$v0,20000000,endw2	# while(readCoreTimer() < 20000000)
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
 	bge	$v0,4000000,endw3	# while(readCoreTimer() < 4000000)
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
 	bge	$v0,2000000,endw2	# while(readCoreTimer() < 2000000)
 	li	$a1,0x0005000A
 	move	$a0,$t2		
 	li	$v0,PRINT_INT		
 	syscall			# printInt(cnt10++, 10 | 5 << 16);
 	j	while4
 	
 endw4: 
 	li	$a0,'\r'
 	li	$v0,PUT_CHAR
 	syscall			# putChar(
 	
 	j	while1
 	
 	li	$v0,0			# return 0;
 	jr	$ra			# fim do programa;
 	
 	
