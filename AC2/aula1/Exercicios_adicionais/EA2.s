	.data
	.equ	SIZE,20
	.equ	printStr,8
	.equ	readStr,9
	.equ	printInt,6
	.equ	printInt10,7
str1:	.space	21
str2:	.space	21
str3:	.space	41
stra:	.asciiz "Introduza 2 strings: "
strb:	.asciiz "Resultados:\n" 
	.text
	.globl	main
	
main:	addiu	$sp,$sp,-4
	sw	$ra,0($sp)

	move	$a0,stra	#  printStr("Introduza 2 strings: "); 
	li	$v0,printStr	#
	syscall		#
	
	la	$a0,str1	#
	li	$a1,SIZE	#
	li	$v0,readStr	#  readStr( str1, SIZE ); 
	syscall	
	
	la	$a0,str2	#
	li	$a1,SIZE	#
	li	$v0,readStr	#
	syscall		#  readStr( str2, SIZE ); 
	
	la	$a0,strb	#
	li	$v0,printStr	#
	syscall		#  printStr("Resultados:\n"); 
	
	la	$a0,str1	
	jal	strlen		# strlen(str1)
	move	$a0,$v0	#
	li	$a1,10		# 
	li	$v0,printInt	#  printInt( strlen(str1), 10 );
	syscall
	
	la	$a0,str2	#	
	jal	strlen		# strlen(str2)
	move	$a0,$v0	#
	li	$a1,10		#
	li	$v0,printInt	# printInt( strlen(str2), 10 );
	syscall
	
	la	$a0,str3
	la	$a1,str1	
	jal	strcpy		#   strcpy(str3, str1);
	
	la	$a0,str3	
	la	$a1,str2
	jal	strcat		#  strcat(str3, str2)
	move	$a0,$v0	
	li	$v0,printStr	#  printStr( strcat(str3, str2) ); 
	syscall	
	
	la	$a0,str1	#
	la	$a1,str2	#
	jal	strcmp		#  strcmp(str1, str2)
	move	$a0,$v0	#
	li	$v0,printInt10	# 
	syscall		#   printInt10( strcmp(str1, str2) ); 
	
	li	$v0,0		# return 0
	jr	$ra		# fim do programa
	
strlen: li	$t0,0		# len=0
strlen_for:	
	beq	$a0,0,endstrlen #  for( len = 0; *str != '\0'; len++, str++ );
	addi	$t0,$t0,1	# len++
	addi	$a0,$a0,1	# str++
	j	strlen_for
	
endstrlen:
	move	$v0,$t0	# return len
	jr	$ra		# fim da sub-rotina	
	
strcpy: move	$t0,$a0	#  char *p = dst;

strcpy_for:
	move	$a0,$a1	
	beq	$a0,0,endstrcpy #  for( ; ( *dst = *src ) != '\0'; dst++, src++ ); 
	addi	$a0,$a0,1
	addi	$a1,$a1,1
	j	strcpy_for
	
endstrcpy:
	move	$v0,$t0	# return p
	jr	$ra		# fim da sub-rotina
	
strcat: move	$t0,$a0	#  char *p = dst;

strcat_for: 
	beq	$a0,0,endstrcat #  for( ; *dst != '\0'; dst++ );
	jal	strcpy		#  strcpy( dst, src ); 
	addi	$a0,$a0,1	
	j	strcat_for	

endstrcat:
	move	$v0,$t0	# return p
	jr	$ra		# fim da sub-rotina
	
strcmp:
	bne	$a0,$a1,endstrcmp 
	beq	$a0,0,endstrcmp	#  for( ; (*str1 == *str2) && (*str1 != '\0'); str1++, str2++ ); 
	addi	$a0,$a0,1
	addi	$a1,$a1,1
	
