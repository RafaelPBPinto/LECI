# Mapa de registos
# i -$s2
# array - $s0
# nval - $s1
# media - $f1
# soma - $ f2
	.data
	.eqv	SIZE,5
	.eqv	print_string,4
	.eqv	print_double,3
zero:	.double	0.0
onef:	.float	1.0
one:	.double 1.0
half:	.double 0.5
array:	.double	1.0 2.5 3.0 7.9 6.4
str:	.asciiz	"Array: "
coma:	.asciiz	", "
varp:	.asciiz	"\nvar: "
stdevp:	.asciiz	"\nstedv: "
	.text
	.globl	main
	
var:	addiu	$sp,$sp,-12		#
	sw	$ra,0($sp)		#
	sw	$s0,4($sp)		#
	sw	$s1,8($sp)		#
	sw	$s2,12($sp)		#
	
	move	$s0,$a0			# $t1 = array
	move	$s1,$a1			# $t2 = nval
	
	move	$a0,$s0			#
	move	$a1,$s1			#
	jal	average			# average(array, nval);
	cvt.s.d	$f1,$f0			# media = (float)average(array, nval);
	
	l.d	$f2,zero		# soma = 0.0
	li	$s2,0			# i=0
	
var_for:
	bge	$s2,$s1,var_endf	# for(i=0, soma=0.0; i < nval; i++)
	sll	$t1,$t0,3		#
	add	$t1,$t1,$s0		#
	l.d	$f4,0($t1)		# array[i]
	cvt.d.s	$f4,$f4			# (float)array[i]
	sub.s	$f4,$f4,$f1		# (float)array[i] - media
	
	mov.d	$f12,$f4		#
	li	$a1,2			#
	jal	xtoy			#
	cvt.d.s	$f6,$f0			#
	add.d	$f2,$f2,$f6		# soma += xtoy((float)array[i] - media, 2);
	
	addiu	$s2,$s2,1		# i++
	j	var_for			#
	
var_endf:
	mtc1	$s1,$f9
	cvt.d.w	$f8,$f9			#
	div.d	$f0,$f2,$f8		#  return (double)soma / nval;
	
	lw	$s1,8($sp)		#
	lw	$s0,4($sp)		#
	lw	$ra,0($sp)		#
	addiu	$sp,$sp,12		#
	jr	$ra			# fim da sub-rotina
	
stdev:	addiu	$sp,$sp,-4		#
	sw	$ra,0($sp)		#
	
	jal	var			#
	mov.d	$f12,$f0		#
	jal	sqrt			# return sqrt( var(array, nval) );
	
	lw	$ra,0($sp)		#
	addiu	$sp,$sp,4		#
	jr	$ra			# fim da sub-rotina
				
xtoy:	li	$t0,0			# i=0
	l.s	$f2,onef			# result = 1.0
	mov.s	$f1,$f12		# $f1=x
	move	$t1,$a1			# $t1=y
	abs	$t1,$t1			# abs(y)
	
xtoy_for:
	bge	$t0,$t1,xtoy_endf	# for(i=0, result=1.0; i < abs(y); i++)
	
xtoy_if:
	blez	$t1,xtoy_else		# if(y > 0)
	mul.s	$f2,$f2,$f1		# result *= x;
	addi	$t0,$t0,1		# i++
	j	xtoy_for
	
xtoy_else:				# else
	div.s	$f2,$f2,$f1		# result /= x;
	addi	$t0,$t0,1		# i++
	j	xtoy_for		#
	
xtoy_endf:
	mov.s	$f0,$f2			# return result;
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
	
sqrt:	l.d	$f4,one			# xn = 1.0
	l.d	$f6,zero		# $f6 = 0.0
	l.d	$f8,half		# $f8 = 0.5
	
	li	$t0,0			# i = 0
	
sqrt_if:	
	c.le.d	$f12,$f6		#
	bc1t	sqrt_else		# if(val > 0.0)
	
sqrt_do:				# do {
	mov.d	$f2,$f4			# aux = xn;
	
	div.d	$f10,$f12,$f4		#
	add.d	$f10,$f4,$f10		#
	mul.d	$f4,$f8,$f10		# xn = 0.5 * (xn + val/xn);
	
	c.eq.d	$f2,$f4			#
	bc1t	sqrt_enddo		# while((aux != xn) &&
	addi	$t0,$t0,1		# ++i
	bge	$t0,25,sqrt_enddo	# (++i < 25))
	j	sqrt_do			#
	
sqrt_enddo:
	mov.d	$f0,$f4			#
	jr	$ra			# fim da sub-rotina
	
sqrt_else:
	mov.d	$f4,$f6			# xn = 0.0;
	
	mov.d	$f0,$f4			# return xn;
	jr	$ra			# fim da sub-rotina
	
main:	addiu	$sp,$sp,-4		#
	sw	$ra,0($sp)		#
	
	la	$a0,str			#
	li	$v0,print_string	#
	syscall				#
	
	li	$t0,0			#
	la	$t1,array		#
print:	bge	$t0,SIZE,end_print	#
	
	l.d	$f12,0($t1)		#
	li	$v0,print_double	#
	syscall				#
	
	la	$a0,coma		#
	li	$v0,print_string	#
	syscall				#
	
	addi	$t1,$t1,8		#
	addi	$t0,$t0,1		#
	j	print			#
	
end_print:
	
	la	$a0,varp		#
	li	$v0,print_string	#
	syscall				#
	
	la	$a0,array		#
	li	$a1,SIZE		#
	jal	var			#
	mov.d	$f12,$f0		#
	li	$v0,print_double	#
	syscall				#
	
	la	$a0,stdevp		#
	li	$v0,print_string	#
	syscall				#
	
	la	$a0,array		#
	li	$a1,SIZE		#
	jal	stdev			#
	mov.d	$f12,$f0		#
	li	$v0,print_double	#
	syscall				#
	
	lw	$ra,0($sp)		#
	addiu	$sp,$sp,4		#
	jr	$ra			# fim do programa
	
