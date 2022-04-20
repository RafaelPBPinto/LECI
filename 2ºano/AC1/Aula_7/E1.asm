# Mapa de registos
# *s - $t0 ($a0)
# len - $t1
	.data
	.eqv	print_int10,1
str:	.asciiz	"Arquitetura de Computadores I"
	.text
	.globl	main
	
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
	
main:	la	$a0,str			#

	addi	$sp,$sp,-4		#
	sw	$ra,0($sp)		#
	jal	strlen			#
	lw	$ra,0($sp)		#
	addi	$sp,$sp,4		# strlen(str)
	
	move	$a0,$v0			#
	li	$v0,print_int10		#
	syscall				#  print_int10(strlen(str));
	
	jr	$ra			# fim do programa
	
