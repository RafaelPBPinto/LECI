	.data
				# nada a colocar aqui, de momento
	.text
	.globl	main
main:	ori	$t0,$0,3	# $t0 = x (substituir val_x pelo
				# valor de x pretendido)
	ori	$t2,$0,8	# $t2 = 8
	add	$t1,$t0,$t0	# $t1 = $t0 + $t0 = x + x = 2 * x
	sub	$t1,$t1,$t2	# $t1 = $t1 - $t2 = y = 2 * x - 8
				#  ($t1 tem o valor calculado de y)
	or	$a0,$0,$t1	# $a0 = y
	ori	$v0,$0,1	#
	syscall			# chamada ao syscall "print_int10()"
				#
	jr	$ra		# fim do programa