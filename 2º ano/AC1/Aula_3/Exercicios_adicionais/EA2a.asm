# Mapa de registos
# i - $t0
# mdor - $t1
# mdo - $t2
# res - $t3
	.data
	.eqv	print_int10,1
	.eqv	read_int,5
	.eqv	print_string,4
str0:	.asciiz	"Introduza dois numeros: "
str1:	.asciiz	"Resultado: "
	.text
	.globl	main
	
main:	li	$t3,0			# res=0
	li	$t0,0			# i=0
	
	la	$a0,str0		#
	li	$v0,print_string	#
	syscall				# print_string("Introduza dois numeros: ");
	
	li	$v0,read_int		#
	syscall				#
	move	$t1,$v0			# mdor = read_int()
	andi	$t1,$t1,0x0F		# mdor = read_int() & 0x0F;
	
	li	$v0,read_int		#
	syscall				#
	move	$t2,$v0			# mdo = read_int()
	andi	$t2,$t2,0x0F		# mdo = read_int() & 0x0F;
	
while:	beqz	$t1,endw		# while( (mdor != 0)
	bge	$t0,4,endw		#  && (i++ < 4) )
	
if:	andi	$t4,$t1,0x00000001	# (mdor & 0x00000001)
	beqz	$t4,endif		# if( (mdor & 0x00000001) != 0 )
	
	add	$t3,$t3,$t2		# res = res + mdo;
	
endif:	sll	$t2,$t2,1		# mdo = mdo << 1;
	srl	$t1,$t1,1		# mdor = mdor >> 1;
	
	addi	$t0,$t0,1		# i++
	j	while			#
	
endw:	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_string("Resultado: ");
	
	move	$a0,$t3			#
	li	$v0,print_int10		#
	syscall				# print_int10(res);
	
	jr	$ra			# fim do programa
	
	
