# Mapa de registos
# i - $t0
# dst -$t1 ($a0)
# src - $t2 ($a1)
# str1 - $t3
# str2 - $t4
# len - $t5
# exit_value - $t6
	.data
	.eqv	STR_MAX_SIZE,30
	.eqv	print_string,4
	.eqv	print_int10,1
	.eqv	print_char,11
str1:	.asciiz "I serodatupmoC ed arutetiuqrA"
str2:	.space	31
err:	.asciiz	"String too long: "
	.text
	.globl	main
	
strcpy:	move	$t1,$a0			# dst
	move	$t2,$a1			# src
	li	$t0,0			# i=0
	
strcpy_do:
	add	$t1,$t0,$a0		# dst[i]
	add	$t2,$t0,$a1		# src[i]
	
	lb	$t3,0($t2)		# 
	sb	$t3,0($t1)		# dst[i] = src[i]
	
	beq	$t3,'\0',strcpy_enddo	# while(src[i++] != '\0')
	addi	$t0,$t0,1		# i++
	j	strcpy_do		#

strcpy_enddo:
	move	$v0,$a0			# return dst
	jr	$ra			# fim da sub-rotina		
		
strlen:	li	$t1,0			# len=0

strlen_while:	
	lb	$t0,0($a0)		# 
	addiu	$a0,$a0,1		# *s++
	beq	$t0,'\0',strlen_endw	# while(*s++ != '\0')
	
	addi	$t1,$t1,1		# len++
	j	strlen_while		#
	
strlen_endw:
	move	$v0,$t1			#
	jr	$ra			# fim da sub-rotina
	
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

	
main:	la	$t3,str1
	la	$t4,str2
	
	
if:	move	$a0,$t3				#
	addiu	$sp,$sp,-4			#
	sw	$ra,0($sp)			#
	jal	strlen				# strlen(str1)
	move	$t5,$v0				# strlen(str1)
	
	bgt	$t5,STR_MAX_SIZE,else		# if(strlen(str1) <= STR_MAX_SIZE) {
	
	move	$a0,$t4				#
	move	$a1,$t3				#
	jal	strcpy				# strcpy(str2, str1);
	move	$t4,$v0				# strcpy(str2, str1);
	
	move	$a0,$t4				#
	li	$v0,print_string		#
	syscall					# print_string(str2);
	
	li	$a0,'\n'			#
	li	$v0,print_char			#
	syscall					# print_string("\n");
	
	move	$a0,$t4				#
	jal	strrev				#
	move	$a0,$v0				#
	li	$v0,print_string		#
	syscall					# print_string(strrev(str2));
	
	li	$t6,0				# exit_value = 0;
	j	end				#
	
else:	la	$a0,err				# else {
	li	$v0,print_string		#
	syscall					# print_string("String too long: ");
	
	move	$a0,$t5				#
	li	$v0,print_int10 		#
	syscall					# print_int10(strlen(str1));
	
	li	$t6,-1				# exit_value = -1;
	
end:	move	$v0,$t6				#
	lw	$ra,0($sp)			#
	addiu	$sp,$sp,4			#
	jr	$ra				# fim do programa
	
