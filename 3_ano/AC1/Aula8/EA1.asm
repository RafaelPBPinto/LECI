	.data
	.eqv	print_int10,1
	.text
	.globl	main
	
# Mapa de registos
# sub-rotina terminal:
# dividendo:	$a0
# divisor:	$a1
# i:		$t0
# bit:		$t1
# resto:	$t2
# quociente:	$t3

div_sr:	sll	$a1,$a1,16	# divisor = divisor << 16;
	andi	$a0,$a0,0xFFFF 
	sll	$a0,$a0,1	# dividendo = (dividendo & 0xFFFF) << 1;
	
	li	$t0,0
for:	bgeu	$t0,16,endf	# for(i=0; i < 16; i++)
	li	$t1,0		# bit=0
	
if:	bltu	$a0,$a1,endif	# if(dividendo >= divisor)
	subu	$a0,$a0,$a1	# dividendo = dividendo - divisor;
	li	$t1,1		# bit=1

endif:	sll	$a0,$a0,1
	or	$a0,$a0,$t1	# dividendo = (dividendo << 1) | bit;
	
	addi	$t0,$t0,1	# i++
	j	for

endf:	srl	$t2,$a0,1	
	andi	$t2,$t2,0xFFFF0000	# resto = (dividendo >> 1) & 0xFFFF0000;
	
	andi	$t3,$a0,0xFFFF		# quociente = dividendo & 0xFFFF;
	
	or	$v0,$t2,$t3	# return (resto | quociente);
	jr	$ra

main:	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	
	li	$a0,0x9523
	li	$a1,0x9999
	jal	div_sr
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	
	move	$a0,$v0
	li	$v0,print_int10
	syscall
	
	jr	$ra