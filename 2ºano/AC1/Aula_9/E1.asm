# Mapa de registos
# val - $t0($f2)
# res - $f1
	.data
	.eqv	read_int,5
	.eqv	print_float,2
C:	.float	2.59375
zero:	.float	0.0
	.text
	.globl	main
	
main:	l.s	$f3,C			# $f3 = 2.59375
	l.s	$f4,zero		# $f4 = 0.0

do:	li	$v0,read_int		# do{
	syscall				#
	move	$t0,$v0			# val = read_int();
	
	mtc1	$t0,$f2			#
	cvt.s.w	$f2,$f2			# (float)val
	mul.s	$f1,$f2,$f3		# res = (float)val * 2.59375;
	
	mov.s	$f12,$f1		#
	li	$v0,print_float		#
	syscall				# print_float( res );
	
	c.eq.s	$f1,$f4			# 
	bc1t	enddo			# } while(res != 0.0);
	j	main			#
	
enddo:	li	$v0,0			# return 0
	jr	$ra			# fim do programa
	
	