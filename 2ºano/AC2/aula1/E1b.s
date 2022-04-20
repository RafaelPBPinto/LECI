	.data
	.equ	inkey,1   	# não bloqueante
	.equ	putChar,3
	.text
	.globl	main
	
main:	li	$v0,inkey	# do{
	syscall			# c = inkey();
	move	$t0,$v0
	
if:	beqz	$t0,else	# if(c!=0)
	move	$a0,$t0		#
	li	$v0,putChar	#
	syscall			# putChar(c);
	j	enddo		#
			
else:	li	$a0,'.'		#
	li	$v0,putChar	#
	syscall			# putChar('.');
	
enddo:	beq	$t0,'\n',end	#
	j	main		#

end:	li	$v0,0		# return 0;
	jr	$ra		# fim do programa
	