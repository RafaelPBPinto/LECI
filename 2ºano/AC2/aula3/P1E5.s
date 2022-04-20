# a) 2 Hz	
	.data
	.equ	resetCoreTimer,12
	.equ	readCoreTimer,11
	.equ	SFR_BASE_HI,0xBF88	# 16 bits mais significativos da SFR area
	.equ	TRISE,0x6100		# endereço TRISE
	.equ	PORTE,0x6110		# endereço PORTE
	.equ	LATE,0x6120		# endereço LATE
	.equ	TRISB,0x6040		# endereço TRISB
	.equ	PORTB,0x6050		# endereço PORTB
	.equ	LATB,0x6060		# endereço LATB
	.equ	TRISD,0x60C0		# endereço TRISD
	.equ	PORTD,0x60D0		# endereço PORTD
	.equ	LATD,0x60E0		# endereço LATD
	.text
	.globl	main
	
main:	li	$t0,0x0000		# v=0
	
	lui	$t1,SFR_BASE_HI
	lw	$t2,TRISE($t1)		# READ
	andi	$t2,$t2,0xFFFE		# MODIFY RE0 => saida
	sw	$t2,TRISE($t1)		# WRITE
	
while:	lw	$t2,LATE($t1)		# READ
	andi	$t2,$t2,0xFFFE	
	or	$t2,$t2,$t0		# MODIFY
	sw	$t2,LATE($t1)		# WRITE
	
	li	$a0,500		
	jal	delay			# delay(500)
	
	xori	$t0,$t0,0x0001		# v^=1
	j	while
	
	li	$v0,0
	jr	$ra
	

delay:	li	$v0,resetCoreTimer	#  resetCoreTimer(); 
	syscall
	
while1:	
	li	$v0,readCoreTimer
	syscall
	li	$t6,20000
	mul	$t6,$t6,$a0
	bge	$v0,$t6,endw		#  while(readCoreTimer() < K * ms); 
	j	while1	
	
endw:	jr	$ra			# fim da sub-rotina
	
