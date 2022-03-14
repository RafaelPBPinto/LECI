	.data
	.equ	getChar,2 	# bloqueante
	.equ	putChar,3
	.text
	.globl	main
	
main:	li	$v0,getChar	# do{ 
	syscall			#
	move	$a0,$v0		# c = getChar();
	li	$v0,putChar	#
	syscall			# putChar(c)
	
	li	$t0,'\n'	
	beq	$a0,$t0,end	# while( c != '\n' );
	j	main		#
	
end:	li	$v0,0		# return 0;
	jr	$ra		# fim do programa

# getChar() => vai buscar o carater e guarda mas não impreme 
# putChar() => imprime carater no ecrã