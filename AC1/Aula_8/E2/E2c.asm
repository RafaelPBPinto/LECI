	.data
	.eqv	print_string,4
	.eqv	read_int,5
	.eqv	MAX_STR_SIZE,33
str:	.space	33
	.text
	.globl	print_int_ac1
	
print_int_ac1:
	addiu	$sp,$sp,-8
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	la	$s0,str		# static char buf[33];
	
	move	$a2,$s0		#
	jal	itoa		#
	move	$a0,$v0		#
	li	$v0,print_string#
	syscall			# print_string( itoa(val, base, buf) );
	
	lw	$ra,0($sp)	#
	lw	$s0,4($sp)	#
	addiu	$sp,$sp,8	#
	jr	$ra		# fim da sub-rotina
	
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