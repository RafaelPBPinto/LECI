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
	
	li	$s2,1			# count = 1;
while:	lw	$s3,LATE($s0)		# READ
	andi	$s3,$s3,0xFFF0		# MODIFY
	andi	$s2,$s2,0x000F		# evita que o contador ultrupasse 4 bits
	or	$s3,$s3,$s2		#
	sw	$s3,LATE($s0)		# WRITE
	
	lw	$s3,PORTB($s0)		# READ
	andi	$s3,$s3,0x0002		# isola bit3
	srl	$s4,$s3,1		# MODIFY (bit1=>bit0)
	sw	$s3,PORTB($s0)		# WRITE
	
if:	beqz	$s4,else		# if(RB1 != 0)
	sll	$s2,$s2,1		# count << 1
if3:	ble	$s2,0x0008,continue	# if(count == 8)
	li	$s2,1			# count == 1
	j 	continue
	
else:	srl	$s2,$s2,1		# count >> 1
if2:	bne	$s2,0,continue		# if(count == 0)
	li	$s2,0x0008		# count = 8

continue:	
	li	$a0,333
	jal	delay			# delay(333) => 3Hz
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
