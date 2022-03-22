# 2 * 10^7 => 1 segundo
# 2 * 10^5 => 0,1 ms 
# K = 2 * 10^6 => 1 ms
	.data
	.equ	resetCoreTimer,12
	.equ	readCoreTimer,11
	.text
	.globl	delay
	
delay:	li	$v0,resetCoreTimer	#  resetCoreTimer(); 
	syscall
	
while:	li	$v0,readCoreTimer
	syscall
	li	$t0,2000000
	mul	$t0,$t0,$a0
	bge	$v0,$t0,endw		#  while(readCoreTimer() < K * ms); 
	j	while	
	
endw:	jr	$ra			# fim da sub-rotina
