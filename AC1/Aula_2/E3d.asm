	.data
	.eqv	print_int10,1	
	.eqv	print_string,4
	.eqv	read_int,5
str1:	.asciiz	"Introduza 2 numeros: "
str2:	.asciiz "A soma dos dois numeros e': "
	.text
	.globl	main
	
main:	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_string(str1)
	
	li	$v0,read_int		#
	syscall				#
	move	$t0,$v0			# $t0 = a = read_int()
	li	$v0,read_int		#
	syscall				#
	move	$t1,$v0			# $t1 = b = read_int()
	
	la	$a0,str2		#
	li	$v0,print_string	#
	syscall				# print_string(str2)
	
	add	$a0,$t0,$t1		# a + b
	li	$v0,print_int10		#
	syscall				# print_int10(a + b)
	
	jr	$ra			# fim do programa