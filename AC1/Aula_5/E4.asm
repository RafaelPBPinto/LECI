# Mapa de registos
# p - $t0
# lista+SIZE - $t1
# houve_troca - $t4
# p - $t5
# *p - $t2
# *p+1 - $t3
# pUltimo - $t6
	.data
	.eqv	print_string,4
	.eqv	read_int,5
	.eqv	print_int10,1
	.eqv	SIZE,10
	.eqv	TRUE,1
	.eqv	FALSE,0
str0:	.asciiz	"Introduza um numero: "
str1:	.asciiz	"\nLista ordenada: "
str2:	.asciiz	"; "
	.align	2
lista:	.space	40
	.text
	.globl	main
	
main:	la	$t0,lista		# p = lista
	
	li	$t7,SIZE		#
	sll	$t7,$t7,2		# SIZE*4
	addu	$t1,$t0,$t7		# lista+SIZE
	
read_for:
	bge	$t0,$t1,read_endf	# for(p=lista; p < lista+SIZE; p++)
	
	la	$a0,str0		#
	li	$v0,print_string	#
	syscall				# print_string(str0)
	
	li	$v0,read_int		#
	syscall				#
	sw	$v0,0($t0)		# p = read_int()
	
	addi	$t0,$t0,4		# p++;
	j	read_for		#
	
read_endf:
	la	$t5,lista		# $t5 = &lista[0]
	li	$t6,SIZE		#
	subu	$t6,$t6,1		# SIZE - 1
	sll	$t6,$t6,2		# (SIZE - 1) * 4
	addu	$t6,$t5,$t6		# pUltimo = lista + (SIZE - 1);
	
do:	li	$t4,FALSE		# houveTroca = FALSE
	la	$t5,lista		#
	
for:	bge	$t5,$t6,endf		# for (p = lista; p < pUltimo; p++)
	lw	$t2,0($t5)		# *p
	lw	$t3,4($t5)		# *p+1
		
if:	ble	$t2,$t3,endif		# if (*p > *(p+1))
					#aux = *p;
	sw 	$t2,4($t5)		#*p = *(p+1);
	sw	$t3,0($t5)		#*(p+1) = aux;
	
	li	$t4,TRUE		# houveTroca = TRUE;
	
endif:	addi	$t5,$t5,4		# p++
	j	for			#
	
endf:	bne	$t4,TRUE,print		#
	j	do			#

print:	li	$t0,0			# i=0
	la	$t3,lista		#
	
	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_string(str1)
	
print_for:
	bge	$t0,SIZE,print_endf	# for(i=0;i<SIZE;i++)
	sll	$t7,$t0,2		#
	add	$t7,$t7,$t3		#
	
	lw	$a0,0($t7)		#
	li	$v0,print_int10		#
	syscall				# print_int10(lista[i])
	
	la	$a0,str2		#
	li	$v0,print_string	#
	syscall				# print_string(str3)
	
	addi	$t0,$t0,1		# i++
	j	print_for		#
	
print_endf:
	jr	$ra			# fim do programa