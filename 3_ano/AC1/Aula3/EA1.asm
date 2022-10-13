	.data
str1:	.asciiz	"Introduza um numero: "
str2:	.asciiz	"\nValor em código Gray: "
str3:	.asciiz	"\nValor em binário: "
	.eqv	print_string,4
	.eqv	read_int,5
	.eqv	print_int16,34
	.text
	.globl	main
	
main:	la	$a0,str1
	li	$v0,print_string
	syscall				# print_string("Introduza um numero: ");
	
	li	$v0,read_int
	syscall
	move	$t0,$v0			# gray = read_int();
	
	srl	$t1,$t0,1		# mask = gray >> 1;
	move	$t2,$t0			# bin = gray;
	
while:	beqz	$t1,endw		# while(mask != 0)
	
	xor	$t2,$t2,$t1		# bin = bin ^ mask;
	srl	$t1,$t1,1		# mask = mask >> 1;
	j	while

endw:	la	$a0,str2
	li	$v0,print_string
	syscall				# print_string("\nValor em código Gray: ");
	
	move	$a0,$t0
	li	$v0,print_int16
	syscall				# print_int16(gray);
	
	la	$a0,str3
	li	$v0,print_string
	syscall				# print_string("\nValor em binario: ");
	
	move	$a0,$t2		
	li	$v0,print_int16
	syscall				# print_int16(bin);
	jr	$ra			# fim do programa