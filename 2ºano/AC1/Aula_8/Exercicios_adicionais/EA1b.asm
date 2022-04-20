# EXC errado

# Mapa de registos
# i - $t0
# dividendo - $t1
# divisor - $t2
# bit - $t3
# quociente - $t4
# resto - $t5
	.data
	.eqv	read_int,5
	.eqv	print_int10,1
	.eqv	print_string,4
str:	.asciiz	"Introduza dois numeros: "
str1:	.asciiz	"divisao: "
	.text
	.globl	main
	
intdiv:	move	$t1,$a0			#
	move	$t2,$a1			#
	
	sll	$t1,$t1,16		# divisor = divisor << 16;
	
	andi	$t2,$t2,0xFFFF		#
	sll	$t2,$t2,1		# dividendo = (dividendo & 0xFFFF) << 1;
	
	li	$t0,0			# i=0
	
intdiv_for:
	bge	$t0,16,intdiv_endf	# for(i=0; i < 16; i++)
	
	li	$t3,0			# bit=0
	
intdiv_if:
	blt	$t1,$t2,intdiv_endif	# if(dividendo >= divisor)
	
	sub	$t1,$t1,$t2		# dividendo = dividendo - divisor;
	li	$t3,1			# bit=1
	
intdiv_endif:
	sll	$t1,$t1,1		#
	or	$t1,$t1,$t3		# dividendo = (dividendo << 1) | bit;
	
	addi	$t0,$t0,1		# i++
	j	intdiv_for		#
	
intdiv_endf:
	srl	$t5,$t1,1		#
	andi	$t5,$t5,0xFFFF0000	# resto = (dividendo >> 1) & 0xFFFF0000;
	
	andi	$t4,$t4,0xFFFF0000	# quociente = dividendo & 0xFFFF;
	
	or	$t6,$t5,$t4		# resto | quociente
	move	$v0,$t6			# return (resto|quociente)
	
	jr	$ra			# fim da sub-rotina
	
main:	addiu	$sp,$sp,-16		#
	sw	$ra,0($sp)		#
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	
	la	$a0,str			#
	li	$v0,print_string	#
	syscall				#
	
	li	$v0,read_int		#
	syscall				#
	move	$s0,$v0			#
	
	li	$v0,read_int		#
	syscall				#
	move	$s1,$v0			#
	
	move	$a0,$s0			#
	move	$a1,$s1			#
	jal	intdiv			#
	move	$s2,$v0			#
	
	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				#
	
	move	$a0,$s2			#
	li	$v0,print_int10		#
	syscall				#
	
	lw	$s2,12($sp)
	lw	$s1,8($sp)
	lw	$s0,4($sp)
	lw	$ra,0($sp)		#
	addiu	$sp,$sp,16		#
	jr	$ra			# fim do programa