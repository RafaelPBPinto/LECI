# Mapa de registos
# p - $t1
# *p - $t2
# src - $t3
	.data
	.eqv	print_string,4
	.eqv	print_char,11
str1:	.asciiz	"Arquitetura de "
str2:	.space	50
str3:	.asciiz "Computadores I"
	.text
	.globl	main
	
strcat:	move	$t1,$a0			# dst
	move	$t3,$a1			# src
	
strcat_while:
	lb	$t2,0($t1)		#
	beq	$t2,'\0',strcat_endw	# while(*p != '\0')
	addi	$t1,$t1,1		# p++
	j	strcat_while
	
strcat_endw:
	addiu	$sp,$sp,-8		#
	sw	$ra,0($sp)		#
	sw	$a0,4($sp)		#
	move	$a0,$t1			#
	move	$a1,$t3			#
	jal	strcpy			# strcpy(p, src);
	
	lw	$v0,4($sp)		# return dst
	lw	$ra,0($sp)		#
	addiu	$sp,$sp,8		#
	jr	$ra			# fim da sub-rotina
	
strcpy:	li	$t0,0			# i=0
	move	$t1,$a0			# $t1 = *p
	move	$t2,$a1			# $t2 = src
	
strcpy_do:
	lb	$t3,0($t2)		# *src
	sb	$t3,0($t1)		# *p = *src
	addi	$t1,$t1,1		# *p++
	beq	$t3,'\0',strcpy_enddo	# } while(*src++ != '\0');
	addi	$t2,$t2,1		# src++
	j	strcpy_do
	
strcpy_enddo:
	move	$v0,$a0			# return p
	jr	$ra			# fim da sub-rotina
	
main:	la	$t0,str1
	la	$t1,str2		
	
	move	$a0,$t1			#
	move	$a1,$t0			#
	addiu	$sp,$sp,-4		#
	sw	$ra,0($sp)		#
	jal	strcpy			#
	move	$t1,$v0			# strcpy(str2, str1);
	
	la	$a0,str2		# 
	li	$v0,print_string	#
	syscall				# print_string(str2);
	
	li	$a0,'\n'		#
	li	$v0,print_char		#
	syscall				# print_string("\n");
	
	move	$a0,$t1			#
	la	$a1,str3		#
	jal	strcat			# strcat(str2, "Computadores I")
	move	$a0,$v0			#
	li	$v0,print_string	#
	syscall				# print_string( strcat(str2, "Computadores I") );
	
	lw	$ra,0($sp)		#
	addiu	$sp,$sp,4		#
	jr	$ra			# fim do programa
	
	
	