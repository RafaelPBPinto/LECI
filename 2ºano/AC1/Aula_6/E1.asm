# Mapa de registos
# i - $t0
# array - $t1
	.data
	.eqv	print_string,4
	.eqv	print_char,11
	.eqv	SIZE,3
array:	.word	str1, str2, str3
str1:	.asciiz	"Array"
str2:	.asciiz	"de"
str3:	.asciiz	"ponteiros"
	.text
	.globl 	main

main:	li	$t0,0			# i=0
	la	$t1,array	
		
for:	bge	$t0,SIZE,endf		# for(i=0; i < SIZE; i++)
	
	lw	$a0,0($t1)		#
	li	$v0,print_string	#
	syscall				# print_string(array[i]);
	
	li	$a0,'\n'		#
	li	$v0,print_char		#
	syscall				# print_char('\n');
	
	addi	$t1,$t1,4		# array++
	addi	$t0,$t0,1		# i++
	j	for			#
	
endf:	jr	$ra			# fim do programa

