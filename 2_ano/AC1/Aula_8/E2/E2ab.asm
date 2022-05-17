# Mapa de registos
# n - $s0($a0)
# b - $s1($a1)
# s - $s2($a2)
# p - $s3
# digit - $t0
# -----------
# str - $s0
# val - $s1
	.data
	.eqv	MAX_STR_SIZE,33
str:	.space	33
	.eqv	print_string,4
	.eqv	read_int,5
	.text
	.globl	main
	
itoa:	addiu	$sp,$sp,-20		#
	sw	$ra,0($sp)		#
	sw	$s0,4($sp)		#
	sw	$s1,8($sp)		#
	sw	$s2,12($sp)		#
	sw	$s3,16($sp)		#
	move	$s0,$a0			#
	move	$s1,$a1			#
	move	$s2,$a2			#
	move	$s3,$a2			# char *p = s;
	
itoa_do:
	rem	$t0,$s0,$s1		# digit = n % b;
	div	$s0,$s0,$s1		# n = n / b;
	
	move	$a0,$t0			#
	jal	toascii			# toascii( digit )e
	sb	$v0,0($s3)		# *p++ = toascii( digit );
	
	addi	$s3,$s3,1		# p++
	blez	$s0,itoa_enddo		# } while( n > 0 );
	j	itoa_do			#
	
itoa_enddo:
	li	$t1,'\0'		#
	sb	$0,0($s3)		#
	move	$a0,$s2			#
	jal	strrev			# strrev( s );
	move	$v0,$s2			# return s;
	lw	$ra,0($sp)		#
	lw	$s0,4($sp)		#
	lw	$s1,8($sp)		#
	lw	$s2,12($sp)		#
	lw	$s3,16($sp)		#
	addiu	$sp,$sp,20		#
	jr	$ra			# fim da sub-rotina
	
toascii:
	addi	$a0,$a0,'0'		# v += '0';
toascii_if:
	ble	$a0,'9',toascii_endif	# if( v > '9' )
	addi	$a0,$a0,7		# v += 7; // 'A' - '9' - 1
	
toascii_endif:
	move	$v0,$a0			# return v
	jr	$ra			# fim da sub-rotina
	
main:	addiu	$sp,$sp,-12		#
	sw	$ra,0($sp)		#
	sw	$s0,4($sp)		#
	sw	$s1,8($sp)		#
	la	$s0,str
	
do:	li	$v0,read_int		#
	syscall				#
	move	$s1,$v0			# $v0 = val = read_int()
	
	move	$a0,$s1			#
	li	$a1,2			#
	move	$a2,$s0			#
	jal	itoa			# itoa(val, 2, str)
	move	$a0,$v0			#
	li	$v0,print_string	# 
	syscall				# print_string( itoa(val, 2, str) );
	
	move	$a0,$s1			#
	li	$a1,8			#
	move	$a2,$s0			#
	jal	itoa			# itoa(val, 8, str)
	move	$a0,$v0			#
	li	$v0,print_string	# 
	syscall				# print_string( itoa(val, 8, str) );
	
	move	$a0,$s1			#
	li	$a1,16			#
	move	$a2,$s0			#
	jal	itoa			# itoa(val, 16, str)
	move	$a0,$v0			#
	li	$v0,print_string	# 
	syscall				# print_string( itoa(val, 16, str) );
	
	li	$a0,'\n'		#
	li	$v0,11			# print_char('\n')
	syscall
	
	move	$a0,$s1			#
	li	$a1,2			#
	jal	print_int_ac1		#
	
	move	$a0,$s1			#
	li	$a1,8			#
	jal	print_int_ac1		#
	
	move	$a0,$s1			#
	li	$a1,16			#
	jal	print_int_ac1		#
	
	beqz	$s1,enddo		# } while(val != 0);
	
enddo:	li	$v0,0			# return 0
	lw	$ra,0($sp)		#
	lw	$s0,4($sp)		#
	lw	$s1,8($sp)		#
	addiu	$sp,$sp,12		#
	jr	$ra			# fim do programa
	
	
	 
	
	
