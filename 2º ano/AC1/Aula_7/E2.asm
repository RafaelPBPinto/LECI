# Mapa de registos
# str - $s0 ($a0)
# p1 - $s1 (registo callee-saved)
# p2 - $s2 (registo callee-saved)
	.data
	.eqv	print_string,4
str:	.asciiz	"ITED - orievA ed edadisrevinU"
	.text
	.globl	main
	
strrev:	addiu	$sp,$sp,-16			# resrva espaço na stack
	sw	$ra,0($sp)			# guarda endereço de retorno
	sw	$s0,4($sp)			# guarda os valores dos registos
	sw	$s1,8($sp)			#
	sw	$s2,12($sp)			#
	
	move	$s0,$a0				# registo "callee-saved"
	move	$s1,$a0				# p1 = str
	move	$s2,$a0				# p2 = str
	
strrev_while1:	
	lb	$t2,0($s2)			#
	beq	$t2,'\0',strrev_endw1		# while(*p2 != '\0')
	addi	$s2,$s2,1			# p2++;
	j	strrev_while1			#
	
strrev_endw1:
	addiu	$s2,$s2,-1			# p2--;
	
strrev_while2:
	bge	$s1,$s2,strrev_endw2		# while( p1 < p2 )
	
	move	$a0,$s1
	move	$a1,$s2
	jal	exchange			# exchange(p1, p2);
	 			
	addiu	$s1,$s1,1			# p1++;
	addiu	$s2,$s2,-1			# p2--
	j	strrev_while2
	
strrev_endw2:
	move	$v0,$s0				#
	
	lw	$ra,0($sp)			# repõe endereço de retorno
	lw	$s0,4($sp)			#
	lw	$s1,8($sp)			#
	lw	$s2,12($sp)			#
	addiu	$sp,$sp,16			# liberta espaço da stack
	jr	$ra				# fim da sub-rotina
	
exchange:	
	lb	$t1,0($a0)			#
	lb	$t2,0($a1)			# char aux = *c1
	sb	$t1,0($a1)			# *c1 = *c2;
	sb	$t2,0($a0)			# *c2 = aux;
	
	jr	$ra				# fim da sub-rotina

	
main:	la	$a0,str				#
	addiu	$sp,$sp,-4			#
	sw	$ra,0($sp)			#
	jal	strrev				# strrev(str)
	lw	$ra,0($sp)			#
	addiu	$sp,$sp,4			#
	
	move	$a0,$v0				#
	li	$v0,print_string		# print_string( strrev(str) );
	syscall					# 
	
	jr	$ra				# fim do programa
	
	
	
