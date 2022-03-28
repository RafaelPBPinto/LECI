	.data
	.equ READ_CORE_TIMER,11
 	.equ RESET_CORE_TIMER,12
 	.equ PUT_CHAR,3
 	.equ PRINT_INT,6
 	.text
 	.globl main
 	
main:	addiu	$sp,$sp,-20			# 100 * 20000 => 10 Hz
 	sw	$ra,0($sp)			# cnt10Hz % 10 = 0 => 1 Hz
 	sw	$s0,4($sp)			# cnt10Hz % 2  = 0 => 5 Hz
 	sw	$s1,8($sp)
 	sw	$s2,12($sp)
 	sw	$s3,16($sp)
 	
 	li	$s0,0				# int cont1 = 0;
 	li	$s1,0				# int cont5 = 0;
 	li	$s2,0				# int cont10 = 0;
 	li	$s3,100			# int delaytime = 100;
 	
loop:						# while(1)
	li	$a0,'\r'
	li	$v0,PUT_CHAR
	syscall
	
if1:	rem	$t0,$s3,10			
	bnez	$t0,if2			# if(cnt10 % 10 == 0)
	addi	$s0,$s0,1			# cnt1++;

if2:	rem	$t0,$s3,2			
	bnez	$t0,continue			# if(cnt5 % 10 == 0)
	addi	$s1,$s1,1			# cnt5++
	
continue:
	addi	$s2,$s2,1			# cnt10++
	
	li	$a0,' '		
	li	$v0,PUT_CHAR
	syscall				# putChar(' ');
	
	move	$a0,$s2
	li	$a1,0x0005000a
	li	$v0,PRINT_INT
	syscall				# printInt(cnt10, ...)
	
	li	$a0,' '
	li	$v0,PUT_CHAR
	syscall				# printChar(' ')
	
	move	$a0,$s1
	li	$a1,0x0005000a
	li	$v0,PRINT_INT
	syscall				# printInt(cnt5, ...)
	
	li	$a0,' '
	li	$v0,PUT_CHAR
	syscall				# putChar(' ')
	
	move	$a0,$s0
	li	$a1,0x0005000a
	li	$v0,PRINT_INT
	syscall				# printInt(cnt1, ...)
	
	li	$a0,$s3
	jal	delay				# delay(delaytime)
	
	j	loop
	
	li	$v0,0				# return 0;
	lw	$s3,16($sp)
	lw	$s2,12($sp)
	lw	$s1,8($sp)
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,20
	jr	$ra				# fim do programa
			
delay:	li	$v0,RESET_CORE_TIMER		#  resetCoreTimer(); 
	syscall
	
while:	li	$v0,READ_CORE_TIMER
	syscall
	li	$t0,20000
	mul	$t0,$t0,$a0
	bge	$v0,$t0,endw			#  while(readCoreTimer() < K * ms); 
	j	while	
	
endw:	jr	$ra				# fim da sub-rotina
