.data
	.eqv 	SIZE,10
	.eqv	read_int,5
	.eqv 	print_string,4
	.eqv	print_int10,1
str1:	.asciiz	"Introduza um numero: "
str2:	.asciiz	"Array inicial: "
str3:	.asciiz "Array ordenado: "
str4:	.asciiz	"; "
	.align	2
lista:	.space	40
	.text
	.globl	main
	
main:	la	$t0,lista
	li	$t1,SIZE
	#subu	$t1,$t1,1
	sll	$t1,$t1,2
	addu	$t1,$t0,$t1
	
for1:	bge	$t0,$t1,endf1
	
	la	$a0,str1
	li	$v0,print_string
	syscall
	
	li	$v0,read_int
	syscall
	sw	$v0,0($t0)
	
	addi	$t0,$t0,4
	j	for1

endf1:	la	$a0,str2
	li	$v0,print_string
	syscall
	la	$t0,lista
	
for2:	bge	$t0,$t1,endf2
	
	lw	$a0,0($t0)
	li	$v0,print_int10
	syscall
	
	la	$a0,str4
	li	$v0,print_string
	syscall
	
	addi	$t0,$t0,4
	j	for2

endf2:	li	$t2,0	# i=0
for3:	la	$t3,lista	# p = lista


endf3:	la	$t0,lista
	
	la	$a0,str3
	li	$v0,print_string
	syscall 
	
for5:	bge	$t0,$t1,endf5
	
	lw	$a0,0($t0)
	li	$v0,print_int10
	syscall
	
	la	$a0,str4
	li	$v0,print_string
	syscall
	
	addi	$t0,$t0,4
	j	for5
	
endf5:	jr	$ra