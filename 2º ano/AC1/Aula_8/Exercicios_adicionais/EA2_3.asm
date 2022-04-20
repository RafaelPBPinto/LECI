# Mapa de registos
# dst - $s0
# src - $s1
# pos - $s2
# len-dst - $s3
# len-src - $s4
# *p - $s5
# i - $t0
	.data
	.eqv	print_string,4
	.eqv	read_string,8
	.eqv	read_int,5
str1:	.space	101
str2:	.space	51
fra1:	.asciiz	"Enter a string: "
fra2:	.asciiz	"Enter a string to insert: "
fra3:	.asciiz "Enter the position: "
fra4:	.asciiz	"Original string: "
fra5:	.asciiz	"\nModified string: "
space:	.asciiz "\n"
	.text
	.globl	main

insert:	addiu	$sp,$sp,-28
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	sw	$s3,16($sp)
	sw	$s4,20($sp)
	sw	$s5,24($sp)
	
	move	$s0,$a0
	move	$s1,$a1
	move	$s2,$a2

	move	$s5,$a0			# char *p = dst;
	
	move	$a0,$s0			#
	jal	strlen			#
	move	$s3,$v0			# len_dst = strlen(dst);
	
	move	$a0,$s1			#
	jal	strlen			#
	move	$s4,$v0			# len_src = strlen(src);
	
insert_if:
	bgt	$s2,$s3,insert_endf2	#
	move	$t0,$s3
insert_for1:
	blt	$t0,$s2,insert_endf1	# for(i = len_dst; i >= pos; i--)
	add	$t1,$s0,$t0		# dst[i]
	lb	$t1,0($t1)
	add	$t2,$t0,$s0
	add	$t2,$t2,$s4		# dst[i + len_src]
	sb	$t1,0($t2)		# dst[i + len_src] = dst[i] 
	
	addiu	$t0,$t0,-1		# i--
	j	insert_for1		#
	
insert_endf1:
	li	$t0,0			# i=0
	
insert_for2:
	bge	$t0,$s4,insert_endf2	# for(i = 0; i < len_src; i++)
	add	$t1,$t0,$s1		# src[i]
	lb	$t1,0($t1)		#
	add	$t2,$s2,$t0		# 
	add	$t2,$t2,$s0		# dst[i+pos]
	sb	$t1,0($t2)		# dst[i + pos] = src[i];
	
	addi	$t0,$t0,1		#i++
	j	insert_for2		#
	
insert_endf2:
	move	$v0,$s5			# return p
	
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	lw	$s2,12($sp)
	lw	$s3,16($sp)
	lw	$s4,20($sp)
	lw	$s5,24($sp)
	addiu	$sp,$sp,28
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
	
main:	addiu	$sp,$sp,-16
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	
	la	$s0,str1		# $s0 = str1
	la	$s1,str2		# $s1 = str2
					# $s2 = insert_pos
	la	$a0,fra1		#
	li	$v0,print_string	#
	syscall				# print_string("Enter a string: ");
	
	move	$a0,$s0			#
	li	$a1,50			#
	li	$v0,read_string		#
	syscall				# read_string(str1, 50);
	
	la	$a0,fra2		#
	li	$v0,print_string	#
	syscall				# print_string("Enter a string to insert: ");
	
	move	$a0,$s1			#
	li	$a1,50			#
	li	$v0,read_string		#
	syscall				# read_string(str2, 50);
	
	la	$a0,fra3		#
	li	$v0,print_string	#
	syscall				# print_string("Enter the position: ");
	
	li	$v0,read_int		#
	syscall				#
	move	$s2,$v0			# insert_pos = read_int();
	
	la	$a0,fra4		#
	li	$v0,print_string	#
	syscall				# print_string("Original string: ");
	
	move	$a0,$s0			#
	li	$v0,print_string	#
	syscall				# print_string(str1);
	
	move	$a0,$s0			#
	move	$a1,$s1			#
	move	$a2,$s2			#
	jal	insert			# insert(str1, str2, insert_pos);
	
	la	$a0,fra5		#
	li	$v0,print_string	#
	syscall				# print_string("\nModified string: ");
	
	move	$a0,$s0			#
	li	$v0,print_string	# 
	syscall				# print_string(str1);
	
	la	$a0,space		#
	li	$v0,print_string	#
	syscall				# print_string("\n");
	
	li	$v0,0			# return 0
	
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	lw	$s2,12($sp)
	addiu	$sp,$sp,16
	jr	$ra			# fim do programa