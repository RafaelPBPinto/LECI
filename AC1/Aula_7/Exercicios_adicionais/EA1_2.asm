# Mapa de registos
# i - $t0
# array[i] - $t2
# array[i+1] - $t1
#-----------------
# i -$s0
# array_size - $s1
# insert_value - $s2
# insert_pos - $s3
# array - $s4
# array[i] - $s5
# os $sx devem ser usados quando a função chama subrotinas.
# E os $tx quando a função é terminal
# Isto porque os $sx devem ser preservados, logo consegues garantir que não vão ser alterados.
	.data
	.eqv	print_string,4
	.eqv	print_int10,1
	.eqv	read_int,5
coma:	.asciiz ", "
str0:	.asciiz	"Size of array : "
str1:	.asciiz	"array["
str2:	.asciiz "] = "
str3:	.asciiz	"Enter the value to be inserted: "
str4:	.asciiz	"Enter the position: "
str5:	.asciiz "\nOriginal array: "
str6:	.asciiz "\nModified array: "
	.align	2
array:	.space	50
	.text
	.globl	main
	
insert:
insert_if:			
	ble	$a2,$a3,insert_else	# if(pos > size)
	li	$v0,1			# return 1
	jr	$ra			# fim da sub-rotina
	
insert_else:				# else
	move	$t0,$a3
	sub	$t0,$t0,1		# i = size-1
insert_for:
	blt	$t0,$a2,insert_endf	# for(i = size-1; i >= pos; i--)
	
	sll	$t1,$t0,2		# i*4
	add	$t1,$t1,$a0		# array[i]
	lw	$t2,0($t1)		#
	sw	$t2,4($t1)		# array[i+1] = array[i];
	
	sub	$t0,$t0,1		# i--
	j	insert_for		#
	
insert_endf:
	sll	$t1,$a2,2		# pos*4
	add	$t1,$t1,$a0		# array[pos]
	sw	$a1,0($t1)		# array[pos] = value;
	
	li	$v0,0			# return 0;
	jr	$ra			# fim da sub-rotina
	
print_array:
	addiu	$sp,$sp,-8
	sw	$s0,0($sp)
	sw	$s1,4($sp)
	
	move	$s1,$a0			# *a
	
	sll	$s0,$a1,2		# n*4
	add	$s0,$s0,$a0		# *p = a + n
	
print_array_for:
	bge	$s1,$s0,print_array_endf # for(; a < p; a++)
	
	lw	$a0,0($s1)		#
	li	$v0,print_int10		#
	syscall				# print_int10( *a );
	
	la	$a0,coma		#
	li	$v0,print_string	#
	syscall				# print_string(", ")
	
	addi	$s1,$s1,4		# a++
	j	print_array_for		#
	
print_array_endf:
	lw	$s0,0($sp)
	lw	$s1,4($sp)
	addiu	$sp,$sp,8
	jr	$ra			# fim da sub-rotina
	
main:	addiu	$sp,$sp,-28
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	sw	$s3,16($sp)
	sw	$s4,20($sp)
	sw	$s5,24($sp)
		
	la	$a0,str0		# 
	li	$v0,print_string	#
	syscall				# print_string("Size of array : ");
	
	li	$v0,read_int		#
	syscall				#
	move	$s1,$v0			# array_size = read_int();
	
	li	$s0,0			# i=0
for:	bge	$s0,$s1,endf		# for(i=0; i < array_size; i++)

	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_string("array[");
	
	move	$a0,$s0			#
	li	$v0,print_int10		#
	syscall				# print_int10(i);
	
	la	$a0,str2		#
	li	$v0,print_string	#
	syscall				# print_string("] = ");
	
	li	$v0,read_int		#
	syscall				#
	la	$s2,array		#
	sll	$s5,$s0,2		# i*4
	add	$s2,$s2,$s5		# array[i]
	sw	$v0,0($s2)		# array[i] = read_int();
	
	addi	$s0,$s0,1		# i++
	j	for			#
	
endf:	la	$a0,str3		#
	li	$v0,print_string	#
	syscall				# print_string("Enter the value to be inserted: ");
	
	li	$v0,read_int		#
	syscall				#
	move	$s3,$v0			# insert_value = read_int();
	
	la	$a0,str4		#
	li	$v0,print_string	#
	syscall				# print_string("Enter the position: ");
	
	li	$v0,read_int		#
	syscall				#
	move	$s4,$v0			# insert_pos = read_int();
	
	la	$a0,str5		#
	li	$v0,print_string	#
	syscall				# print_string("\nOriginal array: ");
	
	la	$a0,array		#
	move	$a1,$s1			#
	jal	print_array		# print_array(array, array_size);
	
	la	$a0,array			#
	move	$a1,$s3			#
	move	$a2,$s4			#
	move	$a3,$s1			#
	jal	insert			# insert(array, insert_value, insert_pos, array_size);
	
	la	$a0,str6		#
	li	$v0,print_string	#
	syscall				# print_string("\nModified array: ");
	
	addi	$a1,$a1,1		#
	la	$a0,array		#
	move	$a1,$s1			#
	jal	print_array		# print_array(array, array_size + 1);
	
	li	$v0,0			# return 0
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	lw	$s2,12($sp)
	lw	$s3,16($sp)
	lw	$s4,20($sp)
	lw	$s5,24($sp)
	addiu	$sp,$sp,18		
	jr	$ra			# fim do programa
	
	
