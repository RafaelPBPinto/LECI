# Mapa de registos
# p:		$t0
# lista+SIZE:	$t1
###################
# lista[i]:	$t0
# lista[i+1]:	$t1
# aux:		$t2
# houve_troca: 	$t4
# i:		$t5
# lista:	$t6
# lista + i:	$t7
###################
# i: 		$t0
# lista:	$t1
# lista[i]:	$t2
	.data
	.eqv	SIZE,10
	.eqv	TRUE,1
	.eqv	FALSE,0
	.eqv	print_string,4
	.eqv	read_int,5
	.eqv	print_int10,1
str0:	.asciiz	"\nIntroduza um numero: "
str1:	.asciiz	"\nArray inicial: "
str2:	.asciiz	"\nArray ordenado: "
ponto:	.asciiz	"; "
	.align	2
lista:	.space	40
	.text
	.globl	main
	
main:	la	$t0,lista
	li	$t1,SIZE
	sll	$t1,$t1,2
	addu	$t1,$t0,$t1
	
for1:	bge	$t0,$t1,endf1

	la	$a0,str0
	li	$v0,print_string
	syscall
	
	li	$v0,read_int
	syscall
	sw	$v0,0($t0)
	
	addi	$t0,$t0,4
	j	for1
	
endf1:	
	li	$t0,0
	la	$t1,lista
	
	la	$a0,str1
	li	$v0,print_string
	syscall
for2:	bge	$t0,SIZE,endf2
	
	sll	$t2,$t0,2
	addu	$t2,$t2,$t1
	lw	$a0,0($t2)
	li	$v0,print_int10
	syscall
	
	la	$a0,ponto
	li	$v0,print_string
	syscall
	
	addi	$t0,$t0,1
	j	for2
endf2:
do:	li	$t4,FALSE		# houveTroca = FALSE;
	li	$t5,0			# i=0
	
for3:	bge	$t5,9,endf3		# for (i=0; i < SIZE-1; i++)

	la	$t6,lista
	sll	$t7,$t5,2
	addu	$t7,$t7,$t6		# lista + i
	
	lw	$t0,0($t7)		# lista[i]
	lw	$t1,4($t7)		# lista[i+1]
	
if:	ble	$t0,$t1,endif		# if (lista[i] > lista[i+1])
	move	$t2,$t0			# aux = lista[i];
	sw	$t1,0($t7)		# lista[i] = lista[i+1];
	sw	$t2,4($t7)		# lista[i+1] = aux;
	li	$t4,TRUE		# houveTroca = TRUE;
	
endif:	addi	$t5,$t5,1		# i++
	j	for3			
	
endf3:
while:	bne	$t4,TRUE,enddo		# while (houveTroca==TRUE);
	j	do

enddo:
	li	$t0,0
	la	$t1,lista
	
	la	$a0,str2
	li	$v0,print_string
	syscall		
	
for4:	bge	$t0,SIZE,endf4
	
	sll	$t2,$t0,2
	addu	$t2,$t2,$t1
	lw	$a0,0($t2)
	li	$v0,print_int10
	syscall
	
	la	$a0,ponto
	li	$v0,print_string
	syscall
	
	addi	$t0,$t0,1
	j	for4
	
endf4:	jr	$ra			# fim do programa	
