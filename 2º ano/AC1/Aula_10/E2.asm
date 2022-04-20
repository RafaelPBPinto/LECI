# Mapa de registos
# val - $f12
# aux - $f2
# xn - $f4
# zero - $f6
# half - $f8
# i - $t0
	.data
	.eqv	print_string,4
	.eqv	read_double,7
	.eqv	print_double,3
one:	.double	1.0
zero:	.double 0.0
half:	.double 0.5
str1:	.asciiz	"x: "
str2:	.asciiz	"raiz: "
	.text
	.globl	main
	
sqrt:	l.d	$f4,one			# xn = 1.0
	l.d	$f6,zero		# $f6 = 0.0
	l.d	$f8,half		# $f8 = 0.5
	
	li	$t0,0			# i = 0
	
sqrt_if:	
	c.le.d	$f12,$f6		#
	bc1t	sqrt_else		# if(val > 0.0)
	
sqrt_do:				# do {
	mov.d	$f2,$f4			# aux = xn;
	
	div.d	$f10,$f12,$f4		#
	add.d	$f10,$f4,$f10		#
	mul.d	$f4,$f8,$f10		# xn = 0.5 * (xn + val/xn);
	
	c.eq.d	$f2,$f4			#
	bc1t	sqrt_enddo		# while((aux != xn) &&
	addi	$t0,$t0,1		# ++i
	bge	$t0,25,sqrt_enddo	# (++i < 25))
	j	sqrt_do			#
	
sqrt_enddo:
	mov.d	$f0,$f4			#
	jr	$ra			# fim da sub-rotina
	
sqrt_else:
	mov.d	$f4,$f6			# xn = 0.0;
	
	mov.d	$f0,$f4			# return xn;
	jr	$ra			# fim da sub-rotina	
	
main:	addiu	$sp,$sp,-4		#
	sw	$ra,0($sp)		#
	
	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				#
	
	li	$v0,read_double		#
	syscall				#
	mov.d	$f12,$f0		#
	jal	sqrt			#
	
	la	$a0,str2		#
	li	$v0,print_string	#
	syscall				#
	
	mov.d	$f12,$f0		#
	li	$v0,print_double	#
	syscall				#
	
	lw	$ra,0($sp)		#
	addiu	$sp,$sp,4		#
	jr	$ra			# fim do programa
