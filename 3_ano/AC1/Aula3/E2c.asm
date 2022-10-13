	.data
str1:	.asciiz	"Introduza um numero: "
str2:	.asciiz	"\nO valor em binário e´: "
	.eqv	print_string,4
	.eqv	read_int,5
	.eqv	print_char,11
	.text
	.globl	main
	
main:	la	$a0,str1
	li	$v0,print_string
	syscall				# print_string("Introduza um numero: ");
	
	li	$v0,read_int
	syscall
	move	$t1,$v0			# value = read_int();
	
	la	$a0,str2
	li	$v0,print_string
	syscall				# print_string("\nO valor em binário e': ");
	
	li	$t2,0			# i=0
	
for:	bge	$t2,32,endf		# for(i=0; i < 32; i++)

if1:	rem	$t4,$t2,4		
	bnez	$t4,endif1		# if((i % 4) == 0) // resto da divisão inteira
	li	$a0,' '
	li	$v0,print_char
	syscall				# print_char(' ');
	
endif1:	srl	$t3,$t1,31		# bit = value >> 31
	
	addi	$a0,$t3,0x30
	li	$v0,print_char
	syscall				# print_char(0x30 + bit);
	
	sll	$t1,$t1,1		# value = value << 1;
	
	addi	$t2,$t2,1		# i++
	j	for

endf:	jr	$ra			# fim do programa