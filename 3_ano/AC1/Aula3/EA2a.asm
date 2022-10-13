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
	
while:	bnez	$t2,endw		#
	bge	$t1,4,endw		# while( (mdor != 0) && (i++ < 4) )
	addi	$t1,$t1,1		#i++
	
if:	andi	$t4,$t2,0x00000001	
	beqz	$t4,endif
	
endif: