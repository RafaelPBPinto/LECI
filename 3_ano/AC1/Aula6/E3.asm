# Mapa de registos
# i:	$t0
# j:	$t1
# array[i][j]:	$t2
	.data
	.eqv	SIZE,3
	.eqv	print_int10,1
	.eqv	print_string,4
	.eqv	print_char,11
str1:	.asciiz	"Array"
str2:	.asciiz	"de"
str3:	.asciiz	"ponteiros"
str4:	.asciiz	"\nString #"
str5:	.asciiz	": "
	.align	2
array:	.word	str1, str2, str3
	.text
	.globl	main
	
main:	la	$t2,array	# static char *array[SIZE]={"Array", "de", "ponteiros"};	
	li	$t0,0	# i=0
	
for:	bge	$t0,SIZE,endf	# for(i=0; i < SIZE; i++)

	la	$a0,str4
	li	$v0,print_string
	syscall			# print_string( "\nString #" );
	
	move	$a0,$t0
	li	$v0,print_int10
	syscall			# print_int10( i );
	
	la	$a0,str5
	li	$v0,print_string
	syscall			# print_string( ": " );
	
	li	$t1,0		# j=0

while:	sll	$t3,$t0,2
	add	$t3,$t3,$t2
	lw	$t4,0($t3)	# array[i]
	
	add	$t5,$t1,$t4
	lb	$t6,0($t5)	# array[i][j]
	
	beq	$t6,'\0',endw	# while(array[i][j] != '\0')
	
	move	$a0,$t6
	li	$v0,print_char
	syscall			# print_char(array[i][j]);
	
	li	$a0,'-'
	li	$v0,print_char
	syscall			# print_char('-');
	
	addi	$t1,$t1,1	# j++
	j	while

endw:	addi	$t0,$t0,1	# i++
	j	for

endf:	jr	$ra	# fim do programa
