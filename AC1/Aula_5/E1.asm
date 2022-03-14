# Mapa de registos
# i - $t0
# lista - $t1
# lista+i - $t2
	.data
	.eqv	SIZE,5
	.eqv	read_int,5
	.eqv	print_string,4
	.align	2
lista:	.space	20
str:	.asciiz	"\nIntroduza um numero: "
	.text
	.globl	main
	
main:	li	$t0,0			# i=0
	
for:	bge	$t0,SIZE,endf		# for(i=0; i < SIZE; i++)

	la	$a0,str			#
	li	$v0,print_string	# 
	syscall				# print_string("\nIntroduza um numero: ");
	
	li	$v0,read_int		#
	syscall				#
	la	$t1,lista		# $t1 = lista
	sll	$t3,$t0,2		# i*4 (int)
	add	$t2,$t1,$t3		# $t2 = lista+i
	sw	$v0,0($t2)		# lista[i] = read_int()
	
	addi	$t0,$t0,1		# i++
	j	for			#
	
endf:	jr	$ra			# fim do programa
	
	
	
	