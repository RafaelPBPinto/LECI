	.data
	.text
	.globl	main
main:	ori	$t0,$0,0xffffffff
	ori	$t1,$0,0x0F1E	
	ori	$t2,$0,0x0614
	ori	$t3,$0,0xE543
	xor	$t4,$t1,$t0		# $t4 = not $t1
	xor	$t5,$t2,$t0		# $t5 = not $t2
	xor	$t6,$t3,$t0		# $t6 = not $t3
	jr	$ra			# fim do programa