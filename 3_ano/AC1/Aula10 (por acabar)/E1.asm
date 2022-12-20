	.data
one:	.float	1.0
strx:	.asciiz	"X: "
stry:	.asciiz	"Y: "
strxy:	.asciiz	"X^Y: "
	.eqv	print_string,4
	.eqv	read_float,6
	.eqv	read_int,5
	.eqv	print_float,2
	.text
	.globl	main
	
xtoy:	addiu	$sp,$sp,-12
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	s.s	$f20,8($sp)
	
	mov.s	$f20,$f12
	move	$s0,$a0
	
	jal	absolute	# abs(y)
	move	$t1,$v0

	li	$t0,0	# i = 0
	la	$t2,one
	l.s	$f0,0($t2)	# result = 1.0
xtoy_for:
	bge	$t0,$t1,xtoy_end	#  for(i=0, result=1.0; i < abs(y); i++)
xtoy_if:
	blez	$s0,xtoy_else	# if(y>0)
	mul.s	$f0,$f0,$f20	# result *= x
	addi	$t0,$t0,1
	j	xtoy_for
xtoy_else:
	div.s	$f0,$f0,$f20	# result /= x
	addi	$t0,$t0,1
	j	xtoy_for
xtoy_end:
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	l.s	$f20,8($sp)
	addiu	$sp,$sp,12
				# return result
	jr	$ra

absolute:
	bgez	$a0,abs_end	# if(val < 0)
	sub	$a0,$0,$a0	# val = -val
abs_end:
	move	$v0,$a0
	jr	$ra

main:	la	$a0,strx
	li	$v0,print_string
	syscall
	
	li	$v0,read_float
	syscall
	mov.s	$f12,$f0
	
	la	$a0,stry
	li	$v0,print_string
	syscall
	
	li	$v0,read_int
	syscall
	move	$a0,$v0
	
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	jal	xtoy
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	
	la	$a0,strxy
	li	$v0,print_string
	syscall
	
	mov.s	$f12,$f0
	li	$v0,print_float
	syscall
	
	jr	$ra