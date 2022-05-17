# Mapa de registos
# $t0 - value
# $t1 - bit
# $t2 - i
	.data
	.eqv	print_string,4
	.eqv	read_int,5
	.eqv	print_char,11
str0:	.asciiz	"Introduza um numero: "
str1:	.asciiz	"\nO valor em binário e': "
	.text
	.globl	main

main:	la	$a0,str0		#
	li	$v0,print_string	#
	syscall				# print_string("Introduza um numero: ");
	
	li	$v0,read_int		#
	syscall				#
	move	$t0,$v0			# value = read_int();
	
	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_string("\nO valor em binário e': ");
	
	li	$t2,0			# i = 0
	
for:	bge	$t2,32,endf		# for(i=0; i < 32; i++)

if:	rem	$t3,$t2,4		#
	bnez	$t3,else		# if((i % 4) == 0) // resto da divisão inteira
	li	$a0,' '			#
	li	$v0,print_char		#
	syscall				# print_char(' ');
	
else:	srl	$t1,$t0,31		# bit = value >> 31;

	addi	$t1,$t1,0x30		# 0x30 + bit
	move	$a0,$t1			#
	li	$v0,print_char		#
	syscall				# print_char(0x30 + bit)
	
	sll	$t0,$t0,1		# value = value << 1;
	addi	$t2,$t2,1		# i++
	j	for			#
	
endf:	jr	$ra			# fim do programa
