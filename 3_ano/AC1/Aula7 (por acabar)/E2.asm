	.data
	.eqv	print_string,4
str:	.asciiz "ITED - orievA ed edadisrevinU"
	.text
	.globl	main
	
# Sub-rotina
# str:	$a0
# p1: $s0
# p2: $s1	
strrev:	addiu	$sp,$sp,-16
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	
	move	$s0,$a0		#  char *p1 = str; 
	move	$s1,$a0		#  char *p2 = str;
	move	$s2,$a0 	#  registo "callee-saved" 
	
while1:	lb	$t0,0($s1)
	beq	$t0,'\0',endw1	#  while(*p2 != '\0') 
	addiu	$s1,$s1,1	# 	p2++
	j	while1

endw1:	sub	$s1,$s1,1	# p2--

while2:	bge	$s0,$s1,endw2 	#  while( p1 < p2 )

	move	$a0,$s0
	move	$a1,$s1 
	jal	exchange	#  exchange(p1, p2); 
	
	addiu	$s0,$s0,1	#  p1++; 
	subu	$s1,$s1,1	#  p2--;
	j	while2

endw2:	move	$v0,$s2		# return str
	
	lw	$s2,12($sp)
	lw	$s1,8($sp)
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,16
	jr	$ra		# fim da sub-rotina
	
# Sub-rotina terminal
# aux: $t0
# c1: $a0
# c2: $a1

exchange:
	lb 	$t0,0($a0)	#  char aux = *c1; 
	lb	$t1,0($a1)
	
	sb	$t1,0($a0)	#  *c1 = *c2; 
	sb	$t0,0($a1)	#  *c2 = aux; 
	
	jr	$ra		# fim da sub-rotina
	
# Main

main:	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	
	la	$a0,str
	jal	strrev		# print_string(strrev(str))
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	
	move	$a0,$v0
	li	$v0,print_string 
	syscall			#  print_string( strrev(str) ); 
	
	li	$v0,0		# return 0
	jr	$ra		# fim do programa
