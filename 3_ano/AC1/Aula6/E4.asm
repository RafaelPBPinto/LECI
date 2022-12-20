# Mapa de registos:
# argc:	$t1 ($a0) 
# argv: $t2 ($a1)
# i:	$t0
	.data
	.eqv	print_string,4
	.eqv	print_int10,1
str1:	.asciiz	"Nr. de parametros: "
str2:	.asciiz	"\nP"
str3:	.asciiz	": "
	.text
	.globl	main
	
main:	move	$t1,$a0		# argc
	move	$t2,$a1		# argv
	
	la	$a0,str1
	li	$v0,print_string
	syscall			# print_string("Nr. de parametros: ");
	
	move	$a0,$t1
	li	$v0,print_int10
	syscall			# print_int10(argc);
	
	li	$t0,0		# i=0
for:	bge	$t0,$t1,endf	# for(i=0; i < argc; i++)
	
	la	$a0,str2
	li	$v0,print_string
	syscall			# print_string("\nP");
	
	move	$a0,$t0
	li	$v0,print_int10
	syscall			# print_int(i);
	
	la	$a0,str3
	li	$v0,print_string
	syscall			# print_string(": ");
	
	sll	$t3,$t0,2	# i*4
	add	$t3,$t3,$t2
	lw	$a0,0($t3)	# argv[i]
	li	$v0,print_string
	syscall			# print_string(argv[i]);
	
	addi	$t0,$t0,1	# i++
	j	for
		
endf:	li	$v0,0		# return 0
	jr	$ra		# fim do programa
	