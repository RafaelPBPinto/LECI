	.data
	.text
	.globl	main
main:	ori	$v0,$0,5	
	syscall
	or	$t0,$0,$v0	# read_int() =>	$t0 = $v0
	
	ori	$t2,$0,8	# $t2 = 8
	add	$t1,$t0,$t0	# $t1 = 2x
	sub	$t1,$t1,$t2	# $t1 = 2x-8
	
	or	$a0,$0,$t1	# $a0 = $t1
	ori	$v0,$0,1
	syscall			# print_int10()
	
	ori	$a0,$0,'\n'	# print de nova linha
	ori	$v0,$0,11	# print_char()
	syscall
	
	or	$a0,$0,$t1	# $a0 = $t1
	ori	$v0,$0,34
	syscall			# print_int16()
	
	ori	$a0,$0,'\n'	# print de nova linha
	ori	$v0,$0,11	# print_char()
	syscall
	or	$a0,$0,$t1	# $a0 = $t1
	ori	$v0,$0,36
	syscall			# print_intu10()	
	jr	$ra		# fim do programa