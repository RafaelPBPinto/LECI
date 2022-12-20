# Mapa de registos
# p: $t1
# pultimo: $t2
# *p: $t3
	.data
	.eqv	SIZE,3
	.eqv	print_string,4
	.eqv	print_char,11
str1:	.asciiz	"Array"
str2:	.asciiz	"de"
str3:	.asciiz	"ponteiros"
	.align	2
array:	.word	str1, str2, str3
	.text
	.globl	main
	
main:	la	$t1,array	#static char *array[SIZE]={"Array", "de", "ponteiros"};
	
	li	$t0,SIZE
	sll	$t0,$t0,2	# SIZE*4
	add	$t2,$t1,$t0	# pultimo = array + SIZE;
	
for:	bge	$t1,$t2,endf	# for(; p < pultimo; p++)
	
	lw	$a0,0($t1)
	li	$v0,print_string
	syscall			# print_string(*p);
	
	li	$a0,'\n'
	li	$v0,print_char
	syscall			# print_char('\n');
	
	addiu	$t1,$t1,4	# p++
	j	for
	
endf:	jr	$ra		# fim do programa
