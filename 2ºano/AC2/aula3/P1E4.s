	.data
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
	
main:	lui	$t0,SFR_BASE_HI
	lw	$t1,TRISB($t0)		# READ
	ori	$t1,$t1,0x000F		# MODIFY 0000 0000 0000 1111 => RB0 / RB3
	sw	$t1,TRISB($t0)		# WRITE
	
	lw	$t1,TRISE($t0)		# READ
	andi	$t1,$t1,0xFFF0		# MODIFY 1111 1111 1111 0000 => RE0 / RE3
	sw	$t1,TRISE($t0)		# WRITE
	
while:	lw	$t1,PORTB($t0)		# READ
	andi	$t1,$t1,0x000F		#
	xori	$t1,$t1,0x0009		# MODIFY (1001)
	sw	$t1,PORTB($t0)		# WRITE
	
	lw	$t2,LATE($t0)		# READ
	andi	$t2,$t2,0xFFF0		#
	or	$t2,$t2,$t1		# MODIFY RE0 = RB0\, RE1 = RB1, RE2 = RB2 e RE3 = RB3\
	sw	$t2,LATE($t0)		# WRITE
	
	j	while
	
	li	$v0,0
	jr	$ra
