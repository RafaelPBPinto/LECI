	.data
	.eqv	print_int10,1
str:	.asciiz "101101"
	.text
	.globl	main
# Mapa de registos
# res: 	$v0
# s:	$a0
# *s: 	$t0
# digit:$t1
# Sub-rotina terminal: não devem ser usados registos $sx
atoi:	li	$v0,0	# res = 0

while:	lb	$t0,0($a0)
	blt	$t0,'0',endw
	bgt	$t0,'9',endw	# while( (*s >= '0') && (*s <= '9') )
	
	sub	$t1,$t0,'0'	# digit = *s++ - '0';
	addi	$a0,$a0,1	
	
	mul	$v0,$v0,2
	add	$v0,$v0,$t1	# res = 2 * res + digit;
	
	j	while
	
endw:	jr	$ra		# return res

main:	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	
	la	$a0,str
	jal	atoi
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	
	move	$a0,$v0
	li	$v0,print_int10
	syscall
	
	li	$v0,0
	jr	$ra
	