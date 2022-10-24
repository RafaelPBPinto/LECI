# Mapa de registos
# soma: 	$t0
# i: 		$t1
# arr: 		$t2
# arr+i:	$t3
# arr[i]:	$t4
# aux:		$t5
	.data
	.eqv	SIZE,16
array:	.word	7692, 23, 5, 234
	.eqv	print_int10,1
	.text
	.globl	main
	
main:	li	$t0,0		# soma = 0;
	li	$t1,0		# i = 0;
	
while:	bge	$t1,SIZE,endw	# while(i < SIZE)
 
	la	$t2,array	# $t2 = array
	sll	$t5,$t1,2	# aux = i*4	
	add	$t3,$t2,$t5	# $t3 = arr+i
	lw	$t4,0($t3)	# $t4 = arr[i]

	add	$t0,$t0,$t4	# soma = soma + arr[i]
	addi	$t1,$t1,1	# i++	
	j	while
	
endw:	move	$a0,$t0
	li	$v0,print_int10
	syscall			# print_int10(soma);
	jr	$ra