	.data
	.text
	.globl	strcpy, strrev
	
strcpy:	li	$t0,0	#i=0
do_strcpy:
	addu	$t1,$a0,$t0	#dst[i]
	addu	$t2,$a1,$t0	#src[i]
	lb	$t3,0($t2)
	
	sb	$t3,0,($t1)	#  dst[i] = src[i]; 
	
while_strcpy:	
	beq	$t3,'\0',end_strcpy	#  } while(src[i++] != '\0'); 
	addi	$t0,$t0,1
	j	do_strcpy
	
end_strcpy:
	jr	$ra			# fim da sub-rotina

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
	
while1_strrev:	
	lb	$t0,0($s1)
	beq	$t0,'\0',endw1_strrev	#  while(*p2 != '\0') 
	addiu	$s1,$s1,1	# 	p2++
	j	while1_strrev

endw1_strrev:	
sub	$s1,$s1,1	# p2--

while2_strrev:	
	bge	$s0,$s1,endw2_strrev 	#  while( p1 < p2 )

	move	$a0,$s0
	move	$a1,$s1 
	jal	exchange	#  exchange(p1, p2); 
	
	addiu	$s0,$s0,1	#  p1++; 
	subu	$s1,$s1,1	#  p2--;
	j	while2_strrev

endw2_strrev:	
	move	$v0,$s2		# return str
	
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