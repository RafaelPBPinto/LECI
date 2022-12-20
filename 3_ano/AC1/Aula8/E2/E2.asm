	.data
	.eqv	MAX_STR_SIZE, 33
	.eqv	print_string,4
str:	.space 	33
buf:	.space	33
	.eqv	read_int,5
	.text
	.globl	main
	
toascii:
	addi	$a0,$a0,'0'	# v += '0';
toascii_if:
	ble	$a0,'9',toascii_end	# if( v > '9' )
	addi	$a0,$a0,7		# 	v += 7; // 'A' - '9' - 1
	
toascii_end:
	move	$v0,$a0		# return v
	jr	$ra
	
# Mapa de registos
# n:	$a0 -> $s0
# b:	$a1 -> $s1
# s:	$a2 -> $s2
# p:	$s3
# digit:$t0
# Sub-rotina intermédia

itoa:	move	$s0,$a0
	move	$s1,$a1
	move	$s2,$a2
	move	$s3,$s2		# char *p = s;
	
do:	rem	$t0,$s0,$s1	# digit = n % b;
	div	$s0,$s0,$s1	# n = n / b;
	
	addiu	$sp,$sp,-20
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	sw	$s3,16($sp)
	
	move	$a0,$t0
	jal	toascii		# toascii( digit )
	
	lw	$s3,16($sp)
	lw	$s2,12($sp)
	lw	$s1,8($sp)
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,20
	
	sb	$v0,0($s3)
	addiu	$s3,$s3,1	# *p++ = toascii( digit );
	
while:	ble	$s0,0,endw	# } while( n > 0 );
	j	do

endw:	li	$t1,'\0'
	sb	$t1,0($s3)
	
	addiu	$sp,$sp,-20
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	sw	$s3,16($sp)
	
	move	$a0,$s2
	jal	strrev		# strrev( s )
	
	lw	$s3,16($sp)
	lw	$s2,12($sp)
	lw	$s1,8($sp)
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,20
	
	move	$v0,$s2		# return s
	jr	$ra		# fim da sub-rotina

print_int_ac1:
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	
	la	$a2,buf
	jal	itoa		# itoa(val, base, buf)

	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	
	move	$a0,$v0
	li	$v0,print_string	# print_string( itoa(val, 2, str) );
	syscall
	
	jr	$ra
	
# Mapa de registos
# str: $s0
# val: $s1
# O main é, neste caso, uma sub-rotina intermédia	
main:	la	$s0,str
main_do:
	li	$v0,read_int
	syscall
	move	$s1,$v0		# val = read_int();
	
	addiu	$sp,$sp,-12
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	
	move	$a0,$s1
	li	$a1,2
	move	$a2,$s0
	jal	itoa		# itoa(val, 2, str)
	
	lw	$s1,8($sp)
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,12
	
	move	$a0,$v0
	li	$v0,print_string	# print_string( itoa(val, 2, str) );
	syscall
	
	addiu	$sp,$sp,-12
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	
	move	$a0,$s1
	li	$a1,8
	move	$a2,$s0
	jal	itoa		# itoa(val, 8, str)
	
	lw	$s1,8($sp)
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,12
	
	move	$a0,$v0
	li	$v0,print_string	# print_string( itoa(val, 8, str) );
	syscall
	
	addiu	$sp,$sp,-12
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	
	move	$a0,$s1
	li	$a1,16
	move	$a2,$s0
	jal	itoa		# itoa(val, 16, str)
	
	lw	$s1,8($sp)
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,12
	
	move	$a0,$v0
	li	$v0,print_string	# print_string( itoa(val, 16, str) );
	syscall
	
	addiu	$sp,$sp,-12
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	
	move	$a0,$s1
	li	$a1,16
	jal	print_int_ac1		# print_int_ac1(val, 16)
	
	lw	$s1,8($sp)
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,12
	
main_while:	
	beqz	$s1,main_end	# } while(val != 0);
	j	main_do
	
main_end:
	li	$v0,0	# return 0
	jr	$ra	# fim do programa
	
