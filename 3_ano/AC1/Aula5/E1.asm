# Mapa de registos:
# i:		$t0
# lista: 	$t1
# lista+1:	$t2
	.data
	.eqv	SIZE,5		# array de inteiros: SIZE * 4
	.align	2
lista:	.space	20		# static int lista[SIZE];
str:	.asciiz	"\nIntroduza um numero: "
	.eqv	print_string,4
	.eqv	read_int,5
	.text
	.globl 	main
	
main:	la	$t1,lista	# static int lista[SIZE];
	li	$t0,0		# i=0
	
for:	bge	$t0,SIZE,endf	# for(i=0; i < SIZE; i++)
	
	la	$a0,str		# static char str[]="\nIntroduza um numero: ";
	li	$v0,print_string
	syscall			# print_string(str);
	
	sll	$t2,$t0,2	# i*4
	addu	$t2,$t2,$t1
	li	$v0,read_int
	syscall
	sw	$v0,0($t2)	# lista[i] = read_int();
	
	addi	$t0,$t0,1	# i++
	j	for
	
endf:	jr	$ra		# fim do programa
