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
	li	$t3,0			# flag=0

do:	srl	$t4,$t1,31		# do{
					# bit = value >> 31;

if1:	beq	$t3,1,then	
	beqz	$t4,endif1		# if(flag == 1 || bit != 0)
	
then:	li	$t3,1			# flag = 1;
	
if2:	rem	$t5,$t2,4
	bnez	$t5,endif2		# if((i % 4) == 0)
	
	li	$a0,' '
	li	$v0,print_char
	syscall				# print_char(' ');
	
endif2:
	addi	$a0,$t4,0x30
	li	$v0,print_char
	syscall				# print_char(0x30 + bit);
	
endif1:	sll	$t1,$t1,1		# value = value << 1;
	addi	$t2,$t2,1		# i++
	
while:	bge	$t2,32,enddo		# }while(i < 32)
	j	do

enddo:	jr	$ra