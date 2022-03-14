# Mapa de registos
# str - $t0
# str+i - $t1
# str[i] - $t2
# soma - $t3
# i - $t4
	.data
	.eqv	SIZE,16
	.eqv	print_int10,1
array:	.word	7692, 23, 5, 234
	.text
	.globl	main
	
main:	li	$t4,0			# i=0
	li	$t3,0			# soma = 0
	la	$t0,array		# $t0 = array
	
	
while:	bgeu	$t4,SIZE,endw		# while ( i < SIZE )
	addu	$t1,$t0,$t4		# $t1 = str+i
	lw	$t2,0($t1)		# $t2 = str[i]
	
	add	$t3,$t3,$t2		# soma = soma + (*p)
	addiu	$t4,$t4,4		# i++
	j	while			#
	
endw:	move	$a0,$t3			#
	li	$v0,print_int10		#
	syscall				# print_int10(soma)
	
	jr	$ra			# fim do programa