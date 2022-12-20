#		Tabela
#			Alinhamento	Dimensão	Offset
# int id_number		     4		   4		  0
# char first_name[18]	     1		  18		  4
# char las_name[15]	     1            15             22
# float grade		     4             4             37 -> 40
# struct student	     4            44
	.data
	.eqv	print_intu10,36
	.eqv	print_float,2
	.eqv	print_string,4
	.eqv	print_char,11
	.align	2	
student:
	# id_number
	.word	72343
	# first_name
	.asciiz	"Napoleao"
	.space	9
	# last_name
	.asciiz	"Bonaparte"
	.space	5	# só se alinha no fim se necessário pois word, double, float alinham sozinhos
	# grade
	.float	5.1
	
str1:	.asciiz	"\nN. Mec: "
str2:	.asciiz	"\nNome: "
str3:	.asciiz	"\nNota: "
	.text
	.globl	main
	
main:	la	$t0,student
	
	la	$a0,str1
	li	$v0,print_string
	syscall
	
	lw	$a0,0($t0)
	li	$v0,print_intu10
	syscall
	
	la	$a0,str2
	li	$v0,print_string
	syscall
	
	addiu	$a0,$t0,22
	li	$v0,print_string
	syscall
	
	li	$a0,','
	li	$v0,print_char
	syscall
	
	addiu	$a0,$t0,4
	li	$v0,print_string
	syscall
	
	la	$a0,str3
	li	$v0,print_string
	syscall
	
	l.s	$f12,40($t0)
	li	$v0,print_float
	syscall
	
	li	$v0,0
	jr	$ra	
	
