# Mapa de registos
# p: $t0
# *p: $t1
	.data
	.eqv	SIZE,20
	.eqv	print_string,4
	.eqv	read_string,8
str:	.space	21				# static char str[SIZE+1];
str1:	.asciiz	"Introduza uma string: "
	.text
	.globl	main
	
main:	la	$a0,str1
	li	$v0,print_string
	syscall				# print_string("Introduza uma string: ");
	
	la	$a0,str
	li	$a1,SIZE
	li	$v0,read_string		# read_string(str, SIZE);
	syscall
	
	la	$t0,str			# p = str
while:	lb	$t1,0($t0)		# 
	beq	$t1,'\0',endw		# while (*p != '\0')
	
if:	blt	$t1,'a',endif		#
	bgt	$t1,'z',endif		# if(*p >= 'a' && *p <= 'z')
	sub	$t1,$t1,0x20		# *p = *p – ('a' - 'A');
	
endif:
	sb	$t1,0($t0)
	addi	$t0,$t0,1		# p++
	j	while

endw:	la	$a0,str
	li	$v0,print_string
	syscall				# print_string(str);
	
	jr	$ra			# fim do programa
		
