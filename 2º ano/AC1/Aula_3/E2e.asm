# Mapa de registos
# $t0 - value
# $t1 - bit
# $t2 - i
# $t3 - calc rem
# $t4 - flag
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
	li	$t4,0			# flag = 0
	
do:	srl	$t1,$t0,31		# bit = value >> 31;
	
if1:	bne	$t4,1,flag		# if(flag == 1 || bit != 0)
	beq	$t4,1,else2		#
flag:	bne	$t1,1,else1		# 
	addi	$t4,$t4,1		# flag = 1;
		
if2:	rem	$t3,$t2,4		# i%4
	bnez	$t3,else2		# if((i % 4) == 0) // resto da divisão inteira
	li	$a0,' '			#
	li	$v0,print_char		#
	syscall				# print_char(' ');
	
else2:	addi	$t1,$t1,0x30		# 0x30 + bit
	move	$a0,$t1			#
	li	$v0,print_char		#
	syscall				# print_char(0x30 + bit)
			
else1:	sll	$t0,$t0,1		# value = value << 1;
	addi	$t2,$t2,1		# i++
	bge	$t2,32,enddo		# while(i<32)
	j	do			#
	
enddo:	jr	$ra			# fim do programa