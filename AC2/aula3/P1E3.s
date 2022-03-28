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
	lw	$t1,TRISE($t0)		# READ endereço 0xBF886100
	andi	$t1,$t1,0xFFFE		# MODIFY (bit0=0) RE0 => saida
	sw	$t1,TRISE($t0)		# WRITE 
		
	lw	$t1,TRISD($t0)		# READ endereço 0xBF8860C0
	ori	$t1,$t1,0x0100		# MODIFY
	sw	$t1,TRISD($t0)		# WRITE
	
while:	lw	$t1,PORTD($t0)		# READ
	andi	$t1,$t1,0x0100		# MODIFY
	srl	$t1,$t1,8		# bit8 >> bit0 
	sw	$t1,PORTD($t0)		# WRITE
	
	lw	$t2,LATE($t0)		# READ endereço 0xBF886120
	andi	$t2,$t2,0xFFFE		# salvaguardar bits mais significativos
	or	$t2,$t2,$t1		# MODIFY (escrita do ultimo bit d0 PORTB no LATE)
	sw	$t2,LATE($t0)		# WRITE	
	j	while
	
	li	$v0,0
	jr	$ra
