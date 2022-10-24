	.data
str1:	.asciiz	"Introduza dois numeros: "
str2:	.asciiz	"Resultado: "
	.eqv	print_string,4
	.eqv	read_int,5
	.eqv	print_int10,1
	.text
	.globl	main
	
main:	li	$t0,0			#res=0
	li	$t1,0			#i=0
	
	la	$a0,str1
	li	$v0,print_string
	syscall				# print_string("Introduza dois numeros: ");
	
	li	$v0,read_int
	syscall				
	andi	$t2,$v0,0x0F		# mdor = read_int() & 0x0F;
	
	li	$v0,read_int
	syscall
	andi	$t3,$v0,0x0F		# mdo = read_int() & 0x0F;
	
while:	beqz	$t2,endw		#
	bge	$t1,4,endw		# while( (mdor != 0) && (i++ < 4) )
	addi	$t1,$t1,1		#i++
	
if:	andi	$t4,$t2,0x00000001	
	beqz	$t4,endif
	
	add	$t0,$t0,$t3		# res = res + mdo;
	
endif:	sll	$t3,$t3,1		# mdo = mdo << 1;
	srl	$t2,$t2,1		# mdor = mdor >> 1;
	j	while
	
endw:	la	$a0,str2
	li	$v0,print_string
	syscall				# print_string("Resultado: ");
	
	move	$a0,$t0
	li	$v0,print_int10
	syscall				# print_int10(res);
	jr	$ra
