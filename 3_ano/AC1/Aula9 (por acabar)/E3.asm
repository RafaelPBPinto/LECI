	.data
	.eqv	SIZE,10
	.eqv	print_double,3
	.eqv	read_int,5
	.align	3
a:	.space	80
	.text
	.globl	main
	
average:
	move	$t1,$a1
	mtc1	$0,$f0
	cvt.d.w	$f0,$f0
avg_for:
	ble	$t1,0,avg_endf
	
	sub	$t0,$t1,1
	sll	$t0,$t0,3
	addu	$t0,$a0,$t0

	l.d	$f2,0($t0)
	add.d	$f0,$f0,$f2
	sub	$t1,$t1,1
	j	avg_for

avg_endf:
	mtc1.d	$a1,$f4
	cvt.d.w	$f4,$f4
	div.d	$f0,$f0,$f4
	jr	$ra
	
main:	la	$a0,a
	li	$t0,0	
	
for:	bge	$t0,SIZE,endf
	
	li	$v0,read_int
	syscall
	mtc1.d	$v0,$f0
	cvt.d.w	$f0,$f0
	
	sll	$t1,$t0,3
	addu	$t2,$a0,$t1
	s.d	$f0,0($t2)
	
	addi	$t0,$t0,1
	j	for
	
endf:	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	la	$a0,a
	li	$a1,SIZE
	jal	average
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	
	mov.d	$f12,$f0
	li	$v0,print_double
	syscall
	
	li	$v0,0
	jr	$ra	
	