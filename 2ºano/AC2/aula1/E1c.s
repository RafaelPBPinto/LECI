	.data
	.equ	printStr,8
	.equ	readInt10,5
	.equ	printInt10,7
	.equ	printInt,6
str1:	.asciiz	"\nIntroduza um inteiro (sinal e módulo): "
str2:	.asciiz	"\nValor em base 10 (signed): "
str3:	.asciiz	"\nValor em base 2: "
str4:	.asciiz	"\nValor em base 16: "
str5:	.asciiz	"\nValor em base 10 (unsigned): "
str6:	.asciiz	"\nValor em base 10 (unsigned), formatado: "
	.text
	.globl	main

main:	la	$a0,str1
	li	$v0,printStr
	syscall			#  printStr("\nIntroduza um inteiro (sinal e módulo): ");
	
	li	$v0,readInt10	
	syscall			
	move	$t0,$v0		#  value = readInt10(); 
	
	la	$a0,str2	
	li	$v0,printStr	
	syscall			#  printStr("\nValor em base 10 (signed): ");
	
	move	$a0,$t0		
	li	$v0,printInt10	
	syscall			#  printInt10(value); 
	
	la	$a0,str3	
	li	$v0,printStr	
	syscall			#  printStr("\nValor em base 2: "); 
	
	move	$a0,$t0	
	li	$a1,2		
	li	$v0,printInt	
	syscall			#  printInt(value, 2);
	
	la	$a0,str4
	li	$v0,printStr	
	syscall			#  printStr("\nValor em base 16: "); 
	
	move	$a0,$t0		
	li	$a1,16
	li	$v0,printInt	
	syscall 		#  printInt(value, 16); 
	
	la	$a0,str5	
	li	$v0,printStr	
	syscall			#  printStr("\nValor em base 10 (unsigned): ");
	
	move	$a0,$t0
	li	$a1,10
	li	$v0,printInt
	syscall			#   printInt(value, 10);
	
	la	$a0,str6	
	li	$v0,printStr	
	syscall			#   printStr("\nValor em base 10 (unsigned), formatado: "); 
	
	li	$t2,10
	ori	$t1,$t2,5
	sll	$t1,$t1,16
	move	$a0,$t0
	move	$a1,$t1
	li	$v0,printInt
	syscall			#  printInt(value, 10 | 5 << 16); 
	
	j	main
	
	li	$v0,0
	jr	$ra
	
