# Mapa de registos
# p:		$t0
# *p:		$t1
# lista+SIZE:	$t2
	.data
	.eqv	SIZE,10
	.eqv	print_string,4
	.eqv	print_int10,1
str:	.asciiz "\nConteudo do array:\n"
ponto:	.asciiz "; "
	.align	2
lista:	.word	8, -4, 3, 5, 124, -15, 87, 9, 27, 15
	.text
	.globl	main
	
main:	la	$a0,str
	li	$v0,print_string
	syscall				# print_string("\nConteudo do array:\n");
	
	la	$t0,lista		# p = lista
	li	$t2,SIZE	
	sll	$t2,$t2,2		# SIZE*4
	add	$t2,$t0,$t2		# lista + SIZE
	
for:	bge	$t0,$t2,endf		# for(p = lista; p < lista + SIZE; p++)
	
	lw	$t1,0($t0)		
	move	$a0,$t1
	li	$v0,print_int10
	syscall				# print_int10( *p );
	
	la	$a0,ponto
	li	$v0,print_string
	syscall				# print_string("; ");
	
	addi	$t0,$t0,4		# p++
	j	for

endf:	jr	$ra			# fim do programa