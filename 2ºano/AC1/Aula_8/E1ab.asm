# Mapa de registos
# *s - $t0
# digit - $t1
# res - $v0
# s - $a0
	.data
	.eqv	print_int10,1
str:	.asciiz	"2020 e 2024 sao anos bissextos"
	.text
	.globl	main
	
atoi:	li	$v0,0			# res = 0
	
atoi_while:
	lb	$t0,0($a0)		# *s
	blt	$t0,'0',atoi_endw	# while( (*s >= '0') &&
	bgt	$t0,'9',atoi_endw	#	(*s <= '9') )
	
	sub	$t1,$t0,'0'		# digit = *s++ - '0';
	addiu	$a0,$a0,1		# s++
	
	mul	$v0,$v0,10		# 10*res
	add	$v0,$v0,$t1		# res = 10 * res + digit;
	
	j	atoi_while		#
	
atoi_endw:				# return res
	jr	$ra			# fim da sub-rotina
	
main:	addiu	$sp,$sp,-4		#
	sw	$ra,0($sp)		#
	
	la	$a0,str			#
	jal	atoi			# atoi(str)
	
	move	$a0,$v0			#
	li	$v0,print_int10		#
	syscall				# print_int10( atoi(str) );

	li	$v0,0			# return 0
	lw	$ra,0($sp)		#
	addiu	$sp,$sp,4		#	
	jr	$ra			# fim do programa
	