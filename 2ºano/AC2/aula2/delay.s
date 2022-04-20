# 20M/1000 = 20000 
# K = 20000 => 1 ms
	.data
	.equ	resetCoreTimer,12
	.equ	readCoreTimer,11
	.text
	.globl	delay
	
delay:	li	$v0,resetCoreTimer	#  resetCoreTimer(); 
	syscall
	
while:	li	$v0,readCoreTimer
	syscall
	li	$t0,20000
	mul	$t0,$t0,$a0
	bge	$v0,$t0,endw		#  while(readCoreTimer() < K * ms); 
	j	while	
	
endw:	jr	$ra			# fim da sub-rotina
