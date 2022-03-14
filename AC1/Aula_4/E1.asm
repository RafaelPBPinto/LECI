# Mapa de registos
# i - $t0 
# num - $t1
# str -	$t2
# str+1 - $t3
# str[i] - $t4
	.data
	.eqv	SIZE,20
	.eqv	print_int10,1
	.eqv	read_string,8		# $a0=buf, $a1 = length
str:	.space	20
	.text
	.globl	main

main:	li	$t1,0			# num=0
	
	la	$a0,str			# $a0=buf
	li	$a1,SIZE		# $a1=SIZE
	li	$v0,read_string		#
	syscall				# read_string(str, SIZE)
	move	$t2,$a0			# $t2=str
	
while:	la	$t4,str			#
	addu	$t3,$t2,$t0		#
	lb	$t4,0($t3)		#
	beq	$t4,'\0',endw		# while( str[i] != '\0' )
	
if:	blt	$t4,'0',endif		# if( (str[i] >= '0')
	bgt	$t4,'9',endif		#  && (str[i] <= '9') )
	
	addi	$t1,$t1,1		# num++
	
endif:	addi	$t0,$t0,1		# str[i]++
	j	while			#
	
endw:	move	$a0,$t1			#
	li	$v0,print_int10		#
	syscall				# print_int10(num);
	
	jr	$ra			# fim dom programa
	
	
