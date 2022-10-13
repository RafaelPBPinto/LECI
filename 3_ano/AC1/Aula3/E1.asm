	.data
str1:	.asciiz	"Introduza um numero: "
str2:	.asciiz	"Valor ignorado\n"
str3:	.asciiz "A soma dos positivos e´:"
	.eqv	print_string,4
	.eqv	read_int,5
	.eqv	print_int10,1
	.text
	.globl	main
	
main:	li	$t0,0		# i=0
	li	$t1,0		# soma=0

for:	bge	$t0,5,endf 	# for(i=0, soma=0; i < 5; i++)
	
	la	$a0,str1
	li	$v0,print_string
	syscall			# print_string("Introduza um numero: ");
	
	li	$v0,read_int
	syscall
	move	$t2,$v0		# value = read_int();
	
if:	ble	$t2,0,else	# if(value > 0)
	add	$t1,$t1,$t2 	# soma = soma + value;
	j	endif

else:				# else
	la	$a0,str2
	li	$v0,print_string
	syscall			# print_string("Valor ignorado\n");
	
endif:	addi	$t0,$t0,1	# i++
	j	for

endf:	la	$a0,str3
	li	$v0,print_string
	syscall			# print_string("A soma dos positivos e': ");
	
	move	$a0,$t1
	li	$v0,print_int10
	syscall			# print_int10(soma);
	jr	$ra		# fim do programa