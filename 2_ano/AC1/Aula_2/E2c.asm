	.data
	.text
	.globl	main
main:	li	$t0,5		# $t0 = bin
	
	srl	$t1,$t0,1	# (bin >> 1)
	xor	$t1,$t0,$t1	# gray = bin ^ (bin >> 1);
	jr	$ra