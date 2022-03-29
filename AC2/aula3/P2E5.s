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
	
main:	addiu 	$sp,$sp,-24
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	sw	$s3,16($sp)
	sw	$s4,20($sp)
		
	lui	$s0,SFR_BASE_HI	# 
	lw	$s1,TRISE($s0)		# READ
	andi	$s1,$s1,0xFFF0		# MODIFY RE0 RE1 RE2 RE3 => saidas
	sw	$s1,TRISE($s0)		# WRITE
	
	lw	$s1,TRISB($s0)		# READ
	ori	$s1,$s1,0x000F		# MODIFY RB0 RB1 RB2 RB3 => entradas
	sw	$s1,TRISB($s0)		# WRITE
	
	li	$s2,0			# count = 0;
while:	lw	$s3,LATE($s0)		# READ		
	andi	$s3,$s3,0xFFF0		# 
	andi	$s2,$s2,0x000F		#
	or	$s3,$s3,$s2		# escrever valor em RB
	sw	$s3,LATE($s0)		# write
	
	andi	$s4,$s2,0x0008		# isola bit mais significativo
	srl	$s4,$s4,3		# passa para bit menos significativo
	xori	$s4,$s4,0x0001		# negar bit
	sll	$s2,$s2,1		#
	or	$s2,$s2,$s4		#
		
	li	$a0,666
	jal	delay			# delay(666) => 1.5Hz
	j	while
	
	li	$v0,0
	lw	$s4,20($sp)
	lw	$s3,16($sp)
	lw	$s2,12($sp)
	lw	$s1,8($sp)
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,24	
	jr	$ra
	
delay:	li	$v0,resetCoreTimer	#  resetCoreTimer(); 
	syscall
	
while1:	
	li	$v0,readCoreTimer
	syscall
	li	$t0,20000
	mul	$t0,$t0,$a0
	bge	$v0,$t0,endw		#  while(readCoreTimer() < K * ms); 
	j	while1	
	
endw:	jr	$ra			# fim da sub-rotina
