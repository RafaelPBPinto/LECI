# Mapa de registos
# x - $f1
# y - #t1
# result - $f2
	.data
	.eqv	read_float,6
	.eqv	read_int,5
	.eqv	print_float,2
	.eqv	print_string,4
one:	.float 1.0
str1:	.asciiz "x = "
str2:	.asciiz	"y = "
str3:	.asciiz "x^y = "
	.text
	.globl	main
	
xtoy:	li	$t0,0			# i=0
	l.s	$f2,one			# result = 1.0
	mov.s	$f1,$f12		# $f1=x
	move	$t1,$a1			# $t1=y
	abs	$t1,$t1			# abs(y)
	
xtoy_for:
	bge	$t0,$t1,xtoy_endf	# for(i=0, result=1.0; i < abs(y); i++)
	
xtoy_if:
	blez	$t1,xtoy_else		# if(y > 0)
	mul.s	$f2,$f2,$f1		# result *= x;
	addi	$t0,$t0,1		# i++
	j	xtoy_for
	
xtoy_else:				# else
	div.s	$f2,$f2,$f1		# result /= x;
	addi	$t0,$t0,1		# i++
	j	xtoy_for		#
	
xtoy_endf:
	mov.s	$f0,$f2			# return result;
	jr	$ra			# fim da sub-rotina
	
main:	addiu	$sp,$sp,-4		#
	sw	$ra,0($sp)		#
	
	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				#
	
	li	$v0,read_float		#
	syscall				#

	la	$a0,str2		#
	li	$v0,print_string	#
	syscall				#
	
	li	$v0,read_int		#
	syscall				#
	
	mov.s	$f12,$f0		#
	move	$a1,$v0			#
	jal	xtoy			#
	
	la	$a0,str3		#
	li	$v0,print_string	#
	syscall				#
	
	mov.s	$f12,$f0		#
	li	$v0,print_float		#
	syscall				#
	
	lw	$ra,0($sp)		#
	addiu	$sp,$sp,4		#
	jr	$ra			# fim do programa
	