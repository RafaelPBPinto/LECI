	.data
	.eqv	SIZE,20
	.eqv	print_string,4
	.eqv	read_string,8
str:	.space	21
str1:	.asciiz	"Introduza uma string: "
	.text
	.globl	main
	
main:	li	$a0,str1
	li	$v0,print_string
	syscall