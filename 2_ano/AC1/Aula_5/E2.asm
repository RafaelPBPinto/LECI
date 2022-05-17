# Mapa de registos
# p - $t0
# *p - $t1
# lista + SIZE - $t2
	.data
	.eqv	SIZE,10
	.eqv	print_int10,1
	.eqv	print_string,4
str0:	.asciiz	"\nConteudo do array:\n"
str1:	.asciiz "; "
lista:	.word	8, -4, 3, 5, 124, -15, 87, 9, 27, 15
	.text
	.globl	main
	
main:	la	$t0,lista		# p = lista

	la	$a0,str0		#
	li	$v0,print_string	#
	syscall				# print_string("\nConteudo do array:\n");

	li	$t3,SIZE		# $t2 = SIZE
	sll	$t3,$t3,2		# SIZE*4
	addu	$t2,$t0,$t3		# $t2 = lista+SIZE
	
for:	bge	$t0,$t2,endf		# for(p = lista; p < lista + SIZE; p++)
	
	lw	$t1,0($t0)		# $t1 = *p
	move	$a0,$t1			#
	li	$v0,print_int10		#
	syscall				# print_int10(*p)
	
	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_string("; ")
	
	addi	$t0,$t0,4		# p++
	j	for			#
	
endf:	jr	$ra			# fim do programa