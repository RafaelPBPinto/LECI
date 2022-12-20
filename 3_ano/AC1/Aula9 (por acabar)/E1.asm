	.data
	.eqv	print_float,2
	.eqv	read_int,5
float:	.float	2.59375
zero:	.float	0.0
	.text
	.globl	main
	
main:	li	$v0,read_int
	syscall
	mtc1	$v0,$f1
	cvt.s.w	$f1,$f1
#	l.s	$f2,float
	la	$t1,float
	l.s	$f2,0($t1)
	mul.s	$f1,$f1,$f2
	
	mov.s	$f12,$f1
	li	$v0,print_float
	syscall
	
	l.s	$f3,zero
	c.eq.s	$f1,$f3
	bc1t	end
	j	main
	
end:	li	$v0,0
	jr	$ra