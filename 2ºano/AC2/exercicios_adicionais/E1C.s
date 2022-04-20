	.data
	.equ	resetCoreTimer,12
	.equ	readCoreTimer,11
	.equ	SFR_BASE_HI,0xBF88	# 16 bits mais significativos da SFR area
	.equ	TRISE,0x6100		# endereço TRISE
	.equ	PORTE,0x6110		# endereço PORTE
	.equ	LATE,0x6120			# endereço LATE
	.equ	TRISB,0x6040		# endereço TRISB
	.equ	PORTB,0x6050		# endereço PORTB
	.equ	LATB,0x6060			# endereço LATB
	.equ	TRISD,0x60C0		# endereço TRISD
	.equ	PORTD,0x60D0		# endereço PORTD
	.equ	LATD,0x60E0			# endereço LATD
	.text
	.globl	main
	
main:	lui	$t0,SFR_BASE_HI	#
	
	lw	$t1,TRISB($t0)	# READ
	ori	$t1,$t1,0x000F	# MODIFY => [RB3, RB0] => inputs
	sw	$t1,TRISB($t0)	# WRITE
	
	lw	$t1,TRISE($t0)	# READ
	andi	$t1,$t1,0xFF00 	# MODIFY => [RE7, RE0] => outputs
	sw	$t1,TRISE($t0)	# WRITE
	
while:
	lw	$t1,PORTB($t0)	# READ RBx
	andi	$t1,$t1,0x000F
	andi	$t2,$t1,0x0001	# MODIFY
	sll	$t2,$t2,3
	andi	$t3,$t1,0x0002
	sll	$t3,$t3,1
	andi	$t4,$t1,0x0004
	srl	$t4,$t4,1
	andi	$t5,$t1,0x0008
	srl	$t5,$t5,3
	xori	$t1,$t1,0x000F	# complemento para 1
	sw	$t1,PORTB($t0)	# WRITE
	
	lw	$t6,LATE($t0)	# READ REx
	andi	$t6,$t6,0xFF00	# MODIFY
	or	$t6,$t6,$t2
	or	$t6,$t6,$t3
	or	$t6,$t6,$t4
	or	$t6,$t6,$t5		# passar o valor dos dip-switch para os leds
	sll	$t6,$t6,4		# passa para os 4 bits mais significaticos
	or	$t6,$t6,$t1		# passa para os 4 bits menos significativos o complemento para 1 das entradas 
	sw	$t6,LATE($t0)	# WRITE
	
	j	while
	
	li	$v0,0
	jr	$ra			# fim do programa
