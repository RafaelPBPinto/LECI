	.data
	.eqv	print_double,3
	.eqv	print_char,11
	.text
	.globl	main
	
main:	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	
	jal	f1
	mov.d	$f12,$f0
	li	$v0,print_double
	syscall
	
	li	$a0,'\n'
	li	$v0,print_char
	syscall		
	
	jal	f2
	mov.d	$f12,$f0
	li	$v0,print_double
	syscall			
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr	$ra