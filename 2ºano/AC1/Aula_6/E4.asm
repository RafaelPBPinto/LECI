# Mapa de registos
# i - $t0
# argc - $t1
# argv - $t2
	.data
	.eqv	print_string,4
	.eqv	print_int,1
str0:	.asciiz	"Nr. de parametros: "
str1:	.asciiz	"\nP"
str2:	.asciiz	": "
	.text
	.globl	main
	
main:	li	$t0,0			# i=0
	move	$t1,$a0			# $t1 = argc
	
	la	$a0,str0		#
	li	$v0,print_string	#
	syscall				# print_string("Nr. de parametros: ");
	
	move	$a0,$t1			#
	li	$v0,print_int		#
	syscall				# print_int10(argc);
	
for:	bge	$t0,$t1,endf		# for(i=0; i < argc; i++)
	
	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_string("\nP");
	
	move	$a0,$t0			#
	li	$v0,print_int		# print_int(i);
	syscall				# 
	
	la	$a0,str2		#
	li	$v0,print_string	#
	syscall				# print_string(": ");
	
	lw	$a0,0($a1)		# 
	li	$v0,print_string	#
	syscall				# print_string(argv[i]);
	
	addi	$a1,$a1,4		#
	addi	$t0,$t0,1		# i++
	j	for
	
endf:	jr	$ra			# fim do programa
	
	
	