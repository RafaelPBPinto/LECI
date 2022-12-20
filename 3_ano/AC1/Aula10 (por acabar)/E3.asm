	.data
zero:	.float	0.0
	.align 	3
one:	.double	1.0
half:	.double	0.5
array:	.double	2.5 3.1 2.7 3.6 4.0
	.eqv	print_double,3
	.text
	.globl	main
	
main:	addiu	$sp,$sp,4
	sw	$ra,0($sp)
	
	la	$a0,array
	li	$a1,5
	jal	var
	
	mov.d	$f12,$f0
	li	$v0,print_double
	syscall
	
	lw	$ra,0($sp)
	jr	$ra
	
# intermedia
# array: $a0 -> $s0 (ponteiro para array de double)
# nval:	$a1 -> $s1
# i:	$s2
# media:$f20
# soma:	$f22
var:	addiu	$sp,$sp,-24
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	s.s	$f20,16($sp)
	s.s	$f22,20($sp)
	
	move	$s0,$a0
	move	$s1,$a1
	
	jal	average
	cvt.s.d	$f20,$f0	# media = (float)average(array, nval); 
	
	li	$s2,0		# i = 0
	la	$t0,zero
	l.s	$f22,0($t0)	# soma = 0.0
var_for:
	ble	$s2,$s1,var_end	#  for(i=0, soma=0.0; i < nval; i++) 	
	
	sll	$t0,$s2,3
	addu	$t0,$s0,$t0
	l.d	$f12,0($t0)
	cvt.s.d	$f12,$f12	# (float)array[i]
	
	sub.s	$f12,$f12,$f20
	li	$a0,2
	jal	xtoy 
	add.s	$f22,$f22,$f0	#  soma += xtoy((float)array[i] - media, 2); 
	
	addi	$s2,$s2,1	# i++
	j	var_for
var_end:
	cvt.d.s $f22,$f22
	mtc1.d	$s1,$f0
	cvt.d.w	$f0,$f0	
	div.d	$f0,$f22,$f0
	
	l.s	$f22,20($sp)
	l.s	$f20,16($sp)
	lw	$s2,12($sp)
	lw	$s1,8($sp)
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,24
	jr	$ra		#  return (double)soma / (double)nval; 
	
stdev:
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	
	jal	var
	mov.d	$f12,$f0
	jal	sqrt
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr	$ra
	
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
