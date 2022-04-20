# Mapa de registos
# $t0 - soma
# $t1 - value
# $t2 - i
	.data
	.eqv	print_string,4
	.eqv	read_int,5
	.eqv	print_int10,1
str1:	.asciiz	"Introduza um numero: "
str2:	.asciiz "Valor ignorado\n"
str3:	.asciiz	"A soma dos positivos e': "
	.text
	.globl	main
	
main:	li	$t2,0			# i=0
	li	$t0,0			# soma=0
	
for:	bge	$t2,5,endf		# for(i=0, soma=0; i < 5; i++)
	
	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_string("Introduza um numero: ");
	
	li	$v0,read_int		#
	syscall				#
	move	$t1,$v0			# value = read_int();
	
if:	blez	$t1,else		# if(value > 0)
	add	$t0,$t0,$t1		#  soma = soma + value;
	
	addi	$t2,$t2,1		# i++
	j	for			#

else:	la	$a0,str2		# else
	li	$v0,print_string	#
	syscall				#  print_string("Valor ignorado\n");
	addi	$t2,$t2,1		# i++
	j	for			#
	
endf:	la	$a0,str3		#
	li	$v0,print_string	#
	syscall				# print_string("A soma dos positivos e': ");
	
	move	$a0,$t0			#
	li	$v0,print_int10		#
	syscall				# print_int10(soma);
	
	jr	$ra			# fim do programa