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
	
	andi	$t1,$t0,0x80000000	# bit = value & 0x80000000; // isola bit 31

if:	beqz	$t1,else		# if(bit != 0)
	
	li	$a0,'1'			#
	li	$v0,print_char		#
	syscall				# print_char('1');
	
	sll	$t0,$t0,1		# value = value << 1;
	addi	$t2,$t2,1		# i++
	j	for			#

else:	li	$a0,'0'			#
	li	$v0,print_char		#
	syscall				# print_char('0');
	
	sll	$t0,$t0,1		# value = value << 1;
	addi	$t2,$t2,1		# i++
	j	for			#
	
endf:	jr	$ra			# fim do programa

