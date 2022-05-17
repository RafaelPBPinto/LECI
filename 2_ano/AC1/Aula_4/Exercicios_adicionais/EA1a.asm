# EXERCICIO ERRADO

# Mapa de registos
# p - $t0
# *p - $t1
# str - $t2
	.data
	.eqv	SIZE,20
	.eqv	print_string,4
	.eqv	read_string,8
str:	.space	20
frase:	.asciiz	"Introduza uma string: "
	.text
	.globl	main
	
main:	la	$a0,frase		#
	li	$v0,print_string	#
	syscall				# print_string("Introduza uma string: ")	
	
	la	$t0,str			# p = str
	move	$a0,$t0			#
	li	$a1,SIZE		#
	li	$v0,read_string		#
	syscall				# read_string(str, SIZE)
		
while:	lb	$t1,0($t0)		# *p = &str
	beq	$t1,'\0',endw		# while (*p != '\0')
	
	sub	$t1,$t1,'a'		#
	addi	$t1,$t1,'A'		# *p = *p – 'a' + 'A'; // 'a'=0x61, 'A'=0x41, 'a'-'A'=0x20
	
	addi	$t0,$t0,1		# p++
	j	while			#
	
endw:
	move	$a0,$t1			#
	li	$v0,print_string	#
	syscall				# print_string(str)
	jr	$ra			# fim do programa
	