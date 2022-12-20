# O argumento da função é passado em $a0
# O resultado é devolvido em $v0
# Sub-rotina terminal: não devem ser usados registos $sx
	.data
	.eqv	print_int10,1
str:	.asciiz	"Arquitetura de Computadores I"
	.text
	.globl main
	
# Sub-rotina terminal
# s: $a0
# len: $v0
strlen:	li	$v0,0		# int len=0
while:	lb	$t0,0($a0)	
	addiu	$a0,$a0,1
	beq	$t0,'\0',endw	#  while(*s++ != '\0') 
	addi	$v0,$v0,1	# len++
	j	while
	
endw:				# return len
	jr	$ra		# fim da sub-rotina
	

main:	addiu	$sp,$sp,-4	
	sw	$ra,0($sp)
	
	la	$a0,str
	jal	strlen		# strlen(str)
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	
	move	$a0,$v0
	li	$v0,print_int10
	syscall			# print_int10(strlen(str)); 
	
	li	$v0,0		# return 0
	jr	$ra		# fim do programa
	