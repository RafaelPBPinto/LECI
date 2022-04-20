# Mapa de registos
# i - $t0
# houveTroca - $t1
# aux - $t2
# nval - $t3
	.data
	.eqv	TRUE,1
	.eqv	FALSE,0
	.eqv	SIZE,10
	.eqv	read_double,7
	.eqv	print_double,3
	.eqv	print_string,4
array:	.space	80
str0:	.asciiz	"Original array: "
str1:	.asciiz	"\nModified array: "
str2:	.asciiz "\nmedian: "
coma:	.asciiz ", "
	.text
	.globl	main
	
median:	move	$t3,$a1			# nval
	addiu	$t6,$t3,-1		# nval-1
	
median_do:				# do
	li	$t1,FALSE		# houveTroca = FALSE;
	li	$t0,0			# i=0
	
median_for:
	bge	$t0,$t6,median_endf	# for( i = 0; i < nval-1; i++ )
	sll	$t4,$t0,3		# i*8
	add	$t4,$t4,$a0		#
	l.d	$f2,0($t4)		# array[i]
	l.d	$f4,8($t4)		# array[i+1]
	
median_if:
	c.lt.d	$f2,$f4			#
	bc1t	median_endif		# if( array[i] > array[i+1] )
					# aux = array[i]
	s.d	$f4,0($t4)		# array[i] = array[i+1];
	s.d	$f2,8($t4)		# array[i+1] = aux;
	
	li	$t1,TRUE		# houveTroca = TRUE;

median_endif:
	addi	$t0,$t0,1		# i++
	j	median_for		#
	
median_endf:
	bne	$t1,TRUE,median_enddo	# } while( houveTroca == TRUE );
	j	median_do		#
	 
median_enddo:	
	sll	$t3,$t3,3		#
	div	$t3,$t3,2		# nval/2
	add	$t5,$a0,$t3		# 
	l.d	$f0,0($t5)		# return arrat[array / 2]
	jr	$ra			# fim da sub-rotina
	
main:	addiu	$sp,$sp,-8		#
	sw	$ra,0($sp)		#
	sw	$s0,4($sp)		#
	
	li	$t0,0			# 
	la	$s0,array		# 
	
for:	bge	$t0,SIZE,endf		# 
	sll	$t1,$t0,3		#
	add	$t2,$t1,$s0		#
	
	li	$v0,read_double		#
	syscall				#
	s.d	$f0,0($t2)		#
	
	addi	$t0,$t0,1		#
	j	for			#
	
endf:	li	$t0,0			#

	la	$a0,str0		#
	li	$v0,print_string	#
	syscall				#	
	
print1:	bge	$t0,SIZE,endprint1	#
	sll	$t1,$t0,3		#
	add	$t2,$t1,$s0		#
	
	l.d	$f12,0($t2)		#
	li	$v0,print_double	#
	syscall				#
	
	la	$a0,coma		#
	li	$v0,print_string	#
	syscall				#
	
	addi	$t0,$t0,1		#
	j	print1			#
	
endprint1:
	la	$a0,array		#
	li	$a1,SIZE		#
	jal	median			#
	
	la	$a0,str2		#
	li	$v0,print_string	#
	syscall				#
	
	mov.d	$f12,$f0		#
	li	$v0,print_double	#
	syscall				#
	
	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				#
	
	li	$t0,0			#		
	
print2:	bge	$t0,SIZE,endprint2	#
	sll	$t1,$t0,3		#
	add	$t2,$t1,$s0		#
	
	l.d	$f12,0($t2)		#
	li	$v0,print_double	#
	syscall				#
	
	la	$a0,coma		#
	li	$v0,print_string	#
	syscall				#
	
	addi	$t0,$t0,1		#
	j	print2			#
	
endprint2:
	lw	$s0,4($sp)		#
	lw	$ra,0($sp)		#
	addiu	$sp,$sp,8		#
	jr	$ra			# fim do programa
	
	
