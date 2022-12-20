#		Tabela
#			Alinhamento	Dimensão	Offset
# char a1[14]		     1		   14		  0 		  
# int i 		     4		    4		 14->16
# char a2[17]		     1             17            20
# double g		     8              8            37->40
# struct xyz		     8             48
#########################################################################
# char a1[10] 		     1		   10		  0
# double g		     8              8            10->16
# int a2[2]                  4              8            24
# char v                     1              1            32
# float k                    4              4            33->36
# struct uvw		     8             40
	.data
	.align	3
xyz:	.asciiz	"Str_1"
	.space	8
	.word	2021
	.asciiz	"Str_2"
	.space	11
	.double	2.718281828459045
	.align 	3
uvw:	.asciiz	"St1"
	.space	6
	.double	3.141592653589
	.word	291,756
	.ascii	"X"
	.float	1.983	
	.text
	.globl	main
	
f1:	la	$t0,xyz
	l.d	$f0,40($t0)
	jr	$ra
	
f2:	la	$t0,uvw
	l.s	$f2,36($t0)
	cvt.d.s	$f2,$f2
	
	lw	$t1,28($t0)
	
	move	$a0,$t1
	li	$v0,1
	syscall
	
	mtc1	$t1,$f4
	cvt.d.w	$f4,$f4
	
	l.d	$f6,16($t0)
		
	mul.d	$f6,$f6,$f4
	div.d	$f6,$f6,$f2
	cvt.s.d	$f0,$f6
	jr	$ra
	
main:	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	
	jal	f1
	mov.d	$f12,$f0
	li	$v0,3
	syscall
	
	jal	f2
	mov.s	$f22,$f0
	
	li	$a0,'\n'
	li	$v0,11
	syscall
	
	mov.s	$f12,$f0
	li	$v0,2
	syscall
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	li	$v0,0
	jr	$ra
	