	.data
	.eqv	read_double,7
	.eqv	print_double,3
	.eqv	print_string,4
cinco:	.double	5.0
nove:	.double	9.0
trinta2:.double	32.0
f:	.asciiz	"Fahrenheit: "
c:	.asciiz	"Celsius: "
	.text
	.globl	main
	
f2c:	l.d	$f2,cinco
	l.d	$f4,nove
	l.d	$f6,trinta2
	
	div.d	$f2,$f2,$f4
	sub.d	$f0,$f12,$f6
	mul.d	$f0,$f2,$f0
	
	jr	$ra

main:	la	$a0,f
	li	$v0,print_string
	syscall
	
	li	$v0,read_double
	syscall
	mov.d	$f12,$f0
	
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	jal	f2c
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	
	la	$a0,c
	li	$v0,print_string
	syscall
	
	mov.d	$f12,$f0
	li	$v0,print_double
	syscall
	
	li	$v0,0
	jr	$ra