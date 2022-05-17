# Mapa de registos
# i - $t0
# j - $t1
# array[i][j] - $t3
	.data
	.eqv	SIZE,3
	.eqv	print_string,4
	.eqv	print_int10,1
	.eqv	print_char,11
array:	.word	str1, str2, str3
str1:	.asciiz	"Array"
str2:	.asciiz	"de"
str3:	.asciiz	"ponteiros"
frase:	.asciiz "\nString #"
ponto:	.asciiz	": "
	.text
	.globl	main
	
main:	li	$t0,0			# i=0

for:	bge	$t0,SIZE,endf		# for(i=0; i < SIZE; i++)
	
	la	$a0,frase		#
	li	$v0,print_string	#
	syscall				# print_string( "\nString #" );
	
	move	$a0,$t0			#
	li	$v0,print_int10		#
	syscall				# print_int10( i );
	
	la	$a0,ponto		#
	li	$v0,print_string	#
	syscall				# print_string( ": " );
	
	li	$t1,0			# j = 0;
	
while:	la	$t3,array		#
	sll	$t2,$t0,2		#
	addu	$t3,$t3,$t2		# $t3 = &array[i]
	lw	$t3,0($t3)		#
	addu	$t3,$t3,$t1		# $t3 = &arry[i][j]
	lb	$t3,0($t3)		#
	beq	$t3,'\0',endw		# while(array[i][j] != '\0')
	
	move	$a0,$t3			#
	li	$v0,print_char		#
	syscall				# print_char(array[i][j]);
	
	li	$a0,'-'			#
	li	$v0,print_char		#
	syscall				#
	
	addi	$t1,$t1,1		# j++
	j	while			#
	
endw:	addi	$t0,$t0,1		# i++
	j	for			#
	
endf:	jr	$ra			# fim do programa
	
