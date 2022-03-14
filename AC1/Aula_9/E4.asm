# Mapa de registos
# max - $f2
# u - $t0
# p - $a0
# *p - $f4
	.data
	.eqv	SIZE,10
	.eqv	read_double,7
	.eqv	print_double,3
	.eqv	print_char,11
zero:	.double	0.0
a:	.space	80			# double => SIZE*8
	.text
	.globl	main
	
max:	sll	$a1,$a1,3		# n*8
	add	$t0,$a0,$a1		# *u = p+n
	sub	$t0,$t0,1		# *u = p+n-1
	
	l.d	$f2,0($a0)		# max = *p++;
	addi	$a0,$a0,8		# *p++
	
max_for:
	bgt	$a0,$t0,max_endf	# for(; p <= u; p++)
	l.d	$f4,0($a0)		#
max_if:	c.le.d	$f4,$f2
	bc1t 	max_endif		# if(*p > max)
	
	mov.d	$f2,$f4			# max = *p
	
max_endif:
	addi	$a0,$a0,8		# p++
	j	max_for			#
	
max_endf:
	mov.d	$f0,$f2			# return max;
	jr	$ra			# fim da sub-rotina
	
average:
	move	$t1,$a1			#
	move	$t0,$t1			# int i = n
	
	l.d	$f4,zero		# sum = 0.0
	
average_for:
	blt	$t0,0,average_endf	# for(; i > 0; i--)
	sll	$t2,$t0,3		# i*8
	add	$t3,$t2,$a0		# 
	
	l.d	$f2,0($t3)		# array[i-1]
	add.d	$f4,$f4,$f2		# sum += array[i-1];
	
	addiu	$t0,$t0,-1		# i--
	j	average_for		#
	
average_endf:
	mtc1	$t1,$f10		#
	cvt.d.w	$f10,$f10		#
	
	div.d	$f0,$f4,$f10		# return sum / (double)n;
	jr	$ra			# fim da sub-rotina
	
main:	addiu	$sp,$sp,-8		#
	sw	$ra,0($sp)		#
	sw	$s0,4($sp)		#

	la	$s0,a			#
	li	$t0,0			# i=0
	
for:	bge	$t0,SIZE,endf		# for(i = 0; i < SIZE; i++)
	sll	$t1,$t0,3		# i*8
	add	$t2,$s0,$t1		#
	
	li	$v0,read_double		#
	syscall				#
	s.d	$f0,0($t2)		# a[i] = (double)read_int();
	
	addi	$t0,$t0,1		# i++
	j	for			#
	
endf:	la	$a0,a			#
	li	$a1,SIZE		#
	jal	average			# average(a, SIZE)
	
	mov.d	$f12,$f0		#
	li	$v0,print_double	#
	syscall				# print_double( average(a, SIZE) );
	
	li	$a0,'\n'		#
	li	$v0,print_char		#
	syscall				#

	la	$a0,a			#
	li	$a1,SIZE		#
	jal	max			# max(a, SIZE)
	
	mov.d	$f12,$f0		#
	li	$v0,print_double	#
	syscall				# print_double( max(a, SIZE))
	
	li	$v0,0			# return 0
	lw	$s0,4($sp)		#
	lw	$ra,0($sp)		#
	addiu	$sp,$sp,8		#
	jr	$ra			# fim do programa