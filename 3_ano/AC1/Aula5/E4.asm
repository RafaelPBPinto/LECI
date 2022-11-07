# Mapa de registos
# ...
# houve_troca: 	$t4
# p:		$t5
# pUltimo:	$t6
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
	la	$t5,lista
	li	$t6,SIZE
	subu	$t6,$t6,1
	sll	$t6,$t6,2
	addu	$t6,$t5,$t6	# pUltimo = lista + (SIZE - 1);
	
do:	li	$t4,FALSE	# houveTroca = FALSE;
	la	$t5,lista

for3:	bge	$t5,$t6,endf3	# for (p = lista; p < pUltimo; p++)
	lw	$t0,0($t5)
	lw	$t1,4($t5)
	
if:	ble	$t0,$t1,endif	# if (*p > *(p+1))
	sw	$t0,4($t5)	# *p = *(p+1);
	sw	$t1,0($t5)	# *(p+1) = aux;
	li	$t4,TRUE
	
endif:	addi	$t5,$t5,4	# p++
	j	for3
	
endf3:	bne	$t4,TRUE,enddo
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