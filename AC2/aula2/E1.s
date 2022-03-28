# a) 20M => 1 Hz então 200000 => 0,01 s => 100 Hz
	.data
	.equ READ_CORE_TIMER,11
 	.equ RESET_CORE_TIMER,12
 	.equ PUT_CHAR,3
 	.equ PRINT_INT,6
 	.text
 	.globl main
 	
main:	addiu	$sp,$sp,-8
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	
	la	$a0,100
	jal	delay		# delay de 10 segundos
		
	li	$s0,0		# counter = $t0 = 0
	
while1:	
	li	$v0,RESET_CORE_TIMER	# while(1){
	syscall			# resetCoreTimer();
	
while2:	
	li	$v0,READ_CORE_TIMER
	syscall			
	bge	$v0,200000,continue	#  while(readCoreTimer() < 200000); 100 Hz
					#                          2000000 => 10 Hz
					#			    4000000 =>  5 Hz
					#                          20000000 =>  1 Hz
	li	$a1,0x0004000A
	move	$a0,$s0
	li	$v0,PRINT_INT		
	syscall			#	
	addi	$s0,$s0,1		#  printInt(counter++, 10 | 4 << 16);
	j	while2

continue:
	li	$a0,'\r'
	li	$v0,PUT_CHAR
	syscall			#  putChar('\r'); // cursor regressa ao inicio da linha
	j	while1
	
	li	$v0,0			# return 0;
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,8		
	jr	$ra			# fim do programa
		
delay:	li	$v0,RESET_CORE_TIMER	#  resetCoreTimer(); 
	syscall
	
while:	li	$v0,READ_CORE_TIMER
	syscall
	li	$t0,20000
	mul	$t0,$t0,$a0
	bge	$v0,$t0,endw		#  while(readCoreTimer() < K * ms); 
	j	while	
	
endw:	jr	$ra			# fim da sub-rotina
