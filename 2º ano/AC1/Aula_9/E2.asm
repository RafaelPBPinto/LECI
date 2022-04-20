# Mapa de registos
# ft - $f2 
# double => apenas indices pares da FPU
	.data
	.eqv	print_double,3
	.eqv	read_double,7
	.eqv	print_string,4
str1:	.asciiz	"Fahrenheit: "
str2:	.asciiz	"Celsius: "
a:	.double	5.0
b:	.double	9.0
c:	.double	32.0
	.text
	.globl	main
	
f2c:	mov.d	$f2,$f12		#
	
	l.d	$f4,a			# $f4 = 5.0
	l.d	$f6,b			# $f6 = 9.0
	l.d	$f10,c			# $f10 = 32.0
	
	div.d	$f4,$f4,$f6		# 5,0/9.0
	sub.d	$f10,$f2,$f10		# ft - 32.0
	
	mul.d	$f0,$f4,$f10		# return (5.0 / 9.0 * (ft – 32.0));
	jr	$ra			# fim da sub-rotina
	
main:	addiu	$sp,$sp,-4		#
	sw	$ra,0($sp)		# 

	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_string(str1)
	
	li	$v0,read_double		#
	syscall				#
	mov.d	$f12,$f0		# read_double()
	jal	f2c			# f2c(read_double())
	mov.d	$f2,$f0
	
	la	$a0,str2		#
	li	$v0,print_string	#
	syscall				# print_string(str2)
	
	mov.d	$f12,$f2		#
	li	$v0,print_double	#
	syscall				# print_double()
	
	lw	$ra,0($sp)		#
	addiu	$sp,$sp,4		#
	jr	$ra			# fim do programa