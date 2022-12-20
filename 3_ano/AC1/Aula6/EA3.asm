# Mapa de registos:
# p: $t0
# pultimo: $t1
# p*: $t2
	.data
	.eqv	SIZE,3 
	.eqv	print_string,4
	.eqv	print_char,11
	.eqv	print_int10,1
str1:	.asciiz	"Array"
str2:	.asciiz	"de"
str3:	.asciiz	"ponteiros"
str4:	.asciiz	"\nString #"
str5:	.asciiz	": "
	.align	2
array:	.word	str1, str2, str3
	.text
	.globl	main
	
main:	la	$t0,array

	li	$t3,SIZE
	sll	$t3,$t3,2
	addi	$t1,$t3,$t0
	
for:	bge	$t0,$t1,endf
	
	la	$a0,str4
	li	$v0,print_string
	syscall
	
	move	