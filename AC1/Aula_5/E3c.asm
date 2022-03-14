# Mapa de registos
# p - $t0
# lista+SIZE - $t1
# houve_troca - $t2
# i - $t0
# lista - $t3
# lista[i] - $t4
# lista[i+1] - $t5
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
	bgeu	$t0,$t1,read_endf	# for(p=lista; p < lista+SIZE; p++)
	
	la	$a0,str0		#
	li	$v0,print_string	#
	syscall				# print_string(str0)
	
	li	$v0,read_int		#
	syscall				#
	sw	$v0,0($t0)		# p = read_int()
	
	addiu	$t0,$t0,4		# p++;
	j	read_for		#
	
read_endf:
	la	$t3,lista		#
	
do:	li	$t2,FALSE		# houveTroca = FALSE
	li	$t0,0			# i=0
	li	$t6,SIZE		#
	subu	$t6,$t6,1		# SIZE-1
	
for:	bgeu	$t0,$t6,endf		# for (i=0; i < SIZE-1; i++)
	sll	$t7,$t0,2		# i*4
	addu	$t7,$t7,$t3		#
	lw	$t4,0($t7)		# lista[i]
	lw	$t5,4($t7)		# lista[i+1]
	
if:	bleu	$t4,$t5,endif		# if (lista[i] > lista[i+1])
	
					#aux = lista[i];
	sw	$t4,4($t7)		#lista[i] = lista[i+1];
	sw	$t5,0($t7)		#lista[i+1] = aux;
	
	li	$t2,TRUE		# houveTroca = TRUE;
	
endif:	addi	$t0,$t0,1		# i++
	j	for			#
	
endf:	bne	$t2,TRUE,print		#
	j	do			#

print:	li	$t0,0			# i=0
	
	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_string(str1)
	
print_for:
	bgeu	$t0,SIZE,print_endf	# for(i=0;i<SIZE;i++)
	sll	$t7,$t0,2		#
	addu	$t7,$t7,$t3		#
	
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