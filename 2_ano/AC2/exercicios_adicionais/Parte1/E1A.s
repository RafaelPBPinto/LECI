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
	andi	$t1,$t1,0xFFF0 	# MODIFY => [RE3, RE0] => outputs
	sw	$t1,TRISE($t0)	# WRITE
	
while:
	lw	$t1,PORTB($t0)	# READ RBx
	andi	$t1,$t1,0x000F	# MODIFY (ler os 4 bits menos significativos) 
	sw	$t1,PORTB($t0)	# WRITE
	
	lw	$t2,LATE($t0)	# READ REx
	andi	$t2,$t2,0xFFF0	# MODIFY
	or	$t2,$t2,$t1		# passar o valor dos dip-switch para os leds
	sw	$t2,LATE($t0)	# WRITE
	
	j	while
	
	li	$v0,0
	jr	$ra			# fim do programa
