# Mapa de registos
# p - $t0
# pultim0 - $t1
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
	
main:	la	$t0,array		# p=array
	
	li	$t2,SIZE		#
	sll	$t2,$t2,2		# SIZE*4
	add	$t1,$t2,$t0		# pultimo = array + SIZE
	
for:	bge	$t0,$t1,endf		# for(; p < pultimo; p++)

	lw	$a0,0($t0)		#
	li	$v0,print_string	#
	syscall				# print_string(*p);
	
	li	$a0,'\n'		#
	li	$v0,print_char		#
	syscall				# print_char('\n');
	
	addi	$t0,$t0,4		# p++
	j	for			#
	
endf:	jr	$ra			# fim do programa
	
		