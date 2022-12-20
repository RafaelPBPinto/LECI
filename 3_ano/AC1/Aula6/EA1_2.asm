	.data
	.eqv	print_string,4
	.eqv	print_int10,1
	.eqv	print_char,11
str1:	.asciiz	"Nr. de parametros: "
str2:	.asciiz	"\nP"
str3:	.asciiz	": "
str4: 	.asciiz	"\nNr. de caracteres por argumento: "
str5:	.asciiz "\nNr. de letras maiusculas e minusculas por argumento: "
str6:	.asciiz "\nString com maior nr. de caracteres: "
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
for1:	bge	$t0,$t1,endf1	# for(i=0; i < argc; i++)
	
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
	j	for1
		
endf1:	li	$t0,0		# i=0
	
	la	$a0,str4
	li	$v0,print_string
	syscall			# print_string();
	
	li	$s2,0
for2: 	bge	$t0,$t1,endf2	# for(i=0; i < argc; i++)
	
	li	$t4,0		# count=0
	li	$s0,0
while1:	sll	$t3,$t0,2	# i*4
	add	$t3,$t3,$t2
	lw	$t5,0($t3)	# argv[i]
	
	add	$t6,$s0,$t5
	lb	$t7,0($t6)	# argv[i][j]
	beq	$t7,'\0',endw1	# while(argv[i][j] != '\0')
	addi	$t4,$t4,1
	addi	$s0,$s0,1
	j	while1

endw1:	la	$a0,str2
	li	$v0,print_string
	syscall			# print_string("\nP");
	
	move	$a0,$t0
	li	$v0,print_int10
	syscall			# print_int(i);
	
	la	$a0,str3
	li	$v0,print_string
	syscall			# print_string(": ");
	
	move	$a0,$t4
	li	$v0,print_int10
	syscall
	
if1:	bge	$s2,$t4,else
	move	$s2,$s4
	lw	$s3,0($t3)
	
else:	addi	$t0,$t0,1
	j	for2

endf2:	li	$t0,0		# i=0

	la	$a0,str5
	li	$v0,print_string
	syscall			# print_string();
	
for3: 	bge	$t0,$t1,endf3	# for(i=0; i < argc; i++)
	
	li	$t4,0		
	li	$s0,0		# countM=0
	li	$s1,0		# countm
while2:	sll	$t3,$t0,2	# i*4
	add	$t3,$t3,$t2
	lw	$t5,0($t3)	# argv[i]
	
	add	$t6,$t4,$t5
	lb	$t7,0($t6)	# argv[i][j]
	beq	$t7,'\0',endw2	# while(argv[i][j] != '\0')
		
if2:	blt	$t7,0x41,else2
	bgt	$t7,0x5a,else2
	addi	$s0,$s0,1
	j	endif2
	
else2:	blt	$t7,0x61,endif2
	bgt	$t1,0x7a,endif2
	addi	$s1,$s1,1
	
endif2:	addi	$t4,$t4,1
	j	while2

endw2:	la	$a0,str2
	li	$v0,print_string
	syscall			# print_string("\nP");
	
	li	$a0,'M'
	li	$v0,print_char
	syscall
	
	move	$a0,$t0
	li	$v0,print_int10
	syscall			# print_int(i);
	
	la	$a0,str3
	li	$v0,print_string
	syscall			# print_string(": ");
	
	move	$a0,$s0
	li	$v0,print_int10
	syscall
	
	la	$a0,str2
	li	$v0,print_string
	syscall			# print_string("\nP");
	
	li	$a0,'m'
	li	$v0,print_char
	syscall
	
	move	$a0,$t0
	li	$v0,print_int10
	syscall			# print_int(i);
	
	la	$a0,str3
	li	$v0,print_string
	syscall			# print_string(": ");
	
	move	$a0,$s1
	li	$v0,print_int10
	syscall
	addi	$t0,$t0,1
	j	for3

endf3:	la	$a0,str6
	li	$v0,print_string
	syscall
	
	move	$a0,$s3
	li	$v0,print_string
	syscall
	
	jr	$ra