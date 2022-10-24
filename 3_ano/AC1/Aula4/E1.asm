# Mapa de registos
# num: 		$t0
# i: 		$t1
# str: 		$t2
# str+i:	$t3
# str[i]:	$t4
	.data
	.eqv	SIZE,20
	.eqv	read_string,8	# $a0 = buf, $a1 = length
	.eqv	print_int10,1
str:	.space	21		# espaço reservado para alojar a string (na memória externa)
	.text
	.globl	main
	
main:	la	$a0,str		# $a0=&str[0] endereço inicial do array
	li	$a1,SIZE	# 
	li	$v0,read_string
	syscall			# read_string(str, SIZE);
	
	li	$t0,0		# num = 0;
	li	$t1,0		# i = 0;
	
	## ACEDER A POSIÇÂO DO ARRAY pelo i##
while:	la	$t2,str		# $t2 = str ou &str[0]
	addu	$t3,$t2,$t1	# $t3 = str+i ou &str[i]
	lb	$t4,0($t3)	# $t4 = str[i]
	###############################
	beq	$t4,'\0',endw	# while( str[i] != '\0' )

if:	blt	$t4,'0',endif	# if( (str[i] >= '0') &&
	bgt	$t4,'9',endif	# 		(str[i] <= '9') )
	addi	$t0,$t0,1	# num++;
	
endif:	addi	$t1,$t1,1	# i++;
	j	while

endw:	move	$a0,$t0	
	li	$v0,print_int10
	syscall			# print_int10(num);
	
	jr	$ra
