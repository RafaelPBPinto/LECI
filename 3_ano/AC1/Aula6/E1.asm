# Mapa de registos
# i: $t0
# array: $t1
	.data
	.eqv	SIZE,3
	.eqv	print_string,4
	.eqv	print_char,11
str1:	.asciiz	"Array"
str2:	.asciiz	"de"
str3:	.asciiz	"ponteiros"
	.align	2
array:	.word	str1,str2,str3
	.text
	.globl	main
	
main:	la	$t1,array	# static char *array[SIZE]={"Array", "de", "ponteiros"};
	li	$t0,0		# i=0
	
for:	bge	$t0,SIZE,endf	# for(i=0; i < SIZE; i++)
	
	sll	$t2,$t0,2	# i*4
	add	$t2,$t2,$t1	# array+i
	lw	$a0,0($t2)	# array[i]
	li	$v0,print_string
	syscall			# print_string(array[i]);
	
	li	$a0,'\n'
	li	$v0,print_char
	syscall			# print_char('\n');
	
	addi	$t0,$t0,1	# i++
	j	for
	
endf:	jr	$ra		# fim do programa

		