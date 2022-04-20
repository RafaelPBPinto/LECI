	.data
	.equ	resetCoreTimer,12
	.equ	readCoreTimer,11
	.equ	getChar,2
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
	
main:	
	addiu	$sp,$sp,-16
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	
	
	lui	$s0,SFR_BASE_HI
	
	lw	$s1,TRISE($s0)	# READ
	andi	$s1,$s1,0xFFF0	# MODIFY [RE3, RE0] => outputs
	sw	$s1,TRISE($s0)	# WRITE
	
while:
	lw	$s1,LATE($s0)
	andi	$s1,$s1,0xFFF0	
	ori	$s1,$s1,0x0000
	sw	$s1,LATE($s0)
	
	li	$v0,getChar
	syscall
		
if1:	bne	$v0,0x30,if2		# if(getChar == 0)
	lw	$s1,LATE($s0)
	andi	$s1,$s1,0xFFF0
	ori	$s1,$s1,0x0001		# acender apenas o LED ligado ao porto RE0
	sw	$s1,LATE($s0)
	li	$a0,200
	jal	delay
	j	while
	
if2:	bne	$v0,0x31,if3		# if(getChar == 1)
	lw	$s1,LATE($s0)
	ori	$s1,$s1,0x0002		# acender apenas o LED ligado ao porto RE1
	sw	$s1,LATE($s0)
	li	$a0,200
	jal	delay
	j	while
	
if3:	bne	$v0,0x32,if4		# if(getChar == 2)
	lw	$s1,LATE($s0)
	andi	$s1,$s1,0xFFF0
	ori	$s1,$s1,0x0004		# acender apenas o LED ligado ao porto RE2
	sw	$s1,LATE($s0)
	li	$a0,200
	jal	delay
	j	while
	
if4:	bne	$v0,0x33,if5		# if(getChar == 3)
	lw	$s1,LATE($s0)
	andi	$s1,$s1,0xFFF0
	ori	$s1,$s1,0x0008		# acender apenas o LED ligado ao porto RE3
	sw	$s1,LATE($s0)
	li	$a0,200
	jal	delay
	j	while
	
if5:	bne	$v0,0,else
	j	while
	
else:	lw	$s1,LATE($s0)		# else
	andi	$s1,$s1,0xFFF0
	ori	$s1,$s1,0x000F		# acende todos os leds
	sw	$s1,LATE($s0)
	
	li	$a0,1000			# durante 1s
	jal	delay				# delay(1000)

	j	while
	
	li	$v0,0
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	lw	$s2,12($sp)
	addiu	$sp,$sp,16
	jr	$ra				# fim do programa
	
	
delay:
	li	$v0,resetCoreTimer	#  resetCoreTimer(); 
	syscall
	
while1:	
	li	$v0,readCoreTimer
	syscall
	li	$t0,20000
	mul	$t0,$t0,$a0
	bge	$v0,$t0,endw		#  while(readCoreTimer() < K * ms); 
	j	while1	
	
endw:	jr	$ra			# fim da sub-rotina
