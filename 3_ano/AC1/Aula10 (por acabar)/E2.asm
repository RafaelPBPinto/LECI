	.data
one:	.double	1.0
zero:	.double	0.0
half:	.double	0.5
str1:	.asciiz "x: "
str2:	.asciiz	"sqrt(x): "
	.eqv	print_string,4
	.eqv	read_double,7
	.eqv	print_double,3
	.text
	.globl	main

sqrt:	la	$t0,one
	l.d	$f2,0($t0)	# xn = 1.0
	la	$t0,zero
	l.d	$f4,0($t0)
	la	$t0,half
	l.d	$f10,0($t0)
	
	li	$t0,0		# i = 0
sqrt_if:
	c.le.d	$f12,$f4
	bc1t	sqrt_else	#  if(val > 0.0) 
	
sqrt_do:
	mov.d	$f6,$f2
	
	div.d	$f8,$f12,$f2
	add.d	$f2,$f2,$f8
	mul.d	$f2,$f2,$f10	#  xn = 0.5 * (xn + val/xn); 
	
	c.eq.d	$f6,$f2
	bc1f	sqrt_then	# while((aux != xn) && 
	j	sqrt_end
sqrt_then:
	addi	$t0,$t0,1
	ble	$t0,25,sqrt_do	#  (++i < 25)); 
	j	sqrt_end	

sqrt_else:
	mov.d	$f2,$f12 	 # xn = 0.0; 
	
sqrt_end:
	mov.d	$f0,$f2
	jr	$ra
	
main:	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	
	la	$a0,str1
	li	$v0,print_string
	syscall
	
	li	$v0,read_double
	syscall
	mov.d	$f12,$f0
	
	jal	sqrt
	
	la	$a0,str2
	li	$v0,print_string
	syscall
	
	mov.d	$f12,$f0
	li	$v0,print_double
	syscall
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr	$ra