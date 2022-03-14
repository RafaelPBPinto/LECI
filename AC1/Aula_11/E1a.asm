# Mapa de registos
# stg - $t0
	.data
	.eqv	print_string,4
	.eqv	print_intu10,36
	.eqv	print_char,11
	.eqv	print_float,2
str1:	.asciiz "\nN. Mec: "
str2:	.asciiz	"\nNome: "
str3:	.asciiz	"\nNota: "
	.align	2
stg:
id_number:
	.word	72343
first_name:
	.asciiz	"Napoleao"		# Napoleao\0
	.space	9			# 8+1+9=18 
last_name:
	.asciiz	"Bonaparte"		# Bonaparte\0
	.space	5			# 9+1+5=15
grade:	.float	5.1
	.space	3
	.eqv	off_id,0
	.eqv	off_fn,4
	.eqv	off_ln,22
	.eqv	off_gr,40
	.text
	.globl	main
	
main:	la	$t0,stg			#

	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_string("\nN. Mec: ");
	lw	$a0,off_id($t0)		#
	li	$v0,print_intu10	#
	syscall				# print_intu10(stg.id_number);
	
	la	$a0,str2		#
	li	$v0,print_string	#
	syscall				# print_string("\nNome: ");
	addiu	$a0,$t0,off_ln		#
	li	$v0,print_string	#
	syscall				# print_string(stg.last_name);
	li	$a0,','			#
	li	$v0,print_char		#
	syscall				# print_char(',');
	addiu	$a0,$t0,off_fn		#
	li	$v0,print_string	#
	syscall				# print_string(stg.first_name);
	
	la	$a0,str3		#
	li	$v0,print_string	#
	syscall				# print_string("\nNota: ");
	l.s	$f12,off_gr($t0)	#
	li	$v0,print_float		#
	syscall				# print_float(stg.grade);
	
	li	$v0,0			# return 0;
	jr	$ra			# fim do programa	
	
	
	
	
