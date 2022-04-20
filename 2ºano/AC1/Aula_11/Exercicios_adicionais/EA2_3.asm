# Alinhamento	Dimensão	Offset
# 1		14		0
# 4		4		16
# 1		17		20
# 8		8		40
# 8		48
#-------------------------------------
# Alinhamento	Dimensão	Offset
# 1		10		0
# 8		8		16
# 4		8		24
# 1		1		32
# 4		4		36
# 8		40
	.data
	.align	3
s1:	
a1:	.asciiz	"Str_1"
	.space	8
i:	.word	2021
a2:	.asciiz	"Str_2"
	.space	11
g:	.double 2.718281828459045
	.space	5
	.align	3
s2:	
a1_2:	.asciiz	"St1"
	.space	10
g_2:	.double	3.141592653589
a2_2:	.word	291
	.word	756
v:	.byte	'X'
k:	.float	1.983
	.space	9
	.eqv	off_a1f1,0
	.eqv	off_if1,16
	.eqv	off_a2f1,20
	.eqv	off_gf1,40
	.eqv	off_a1f2,0
	.eqv	off_gf2,16
	.eqv	off_a2f2,24
	.eqv	off_v,32
	.eqv	off_k,36
	.text
	.globl	f1,f2
	
f1:	la	$t0,s1
	
	l.d	$f0,off_gf1($t0)	# return s1.g;
	jr	$ra			# fim da sub-rotina

f2:	la	$t0,s2
	
	l.d	$f2,off_gf2($t0)	# s2.g
	lw	$t1,off_a2f2($t0)
	mtc1	$t1,$f4
	cvt.d.w	$f4,$f4			# s2.a2[1]
	l.s	$f6,off_k($t0)
	cvt.d.s	$f6,$f6			# k
	
	mul.d	$f0,$f2,$f4		#
	div.d	$f0,$f0,$f6		# return (s2.g * s2.a2[1] / k);
	jr	$ra			# fim da sub-rotina
	
