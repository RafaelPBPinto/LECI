# Mapa de registos
# stg - $t0
	.data
	.eqv	print_string,4
	.eqv	print_intu10,36
	.eqv	print_char,11
	.eqv	print_float,2
	.eqv	read_int,5
	.eqv	read_string,8
	.eqv	read_float,6
data:	.asciiz	"Dados: "
gr:	.asciiz "Nota: "
fn:	.asciiz	"Primeiro Nome: "
ln:	.asciiz	"Ultimo Nome: "
print:	.asciiz	"\nPrint: "
str1:	.asciiz "\nN. Mec: "
str2:	.asciiz	"\nNome: "
str3:	.asciiz	"\nNota: "
	.align	2
stg:	.space	44
	.eqv	off_id,0
	.eqv	off_fn,4
	.eqv	off_ln,22
	.eqv	off_gr,40
	.text
	.globl	main
	
main:	la	$t0,stg

	# Código de Leitura

	la	$a0,data		#
	li	$v0,print_string	#
	syscall				# print_str("Data:");
	
	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_str("N. Mec: ");
	
	li	$v0,read_int		#
	syscall				#
	sw	$v0,off_id($t0)		# stg.id_number = read_int();
	
	la	$a0,fn			#
	li	$v0,print_string	#
	syscall				# print_string("Primeiro Nome: ");
	
	addiu	$a0,$t0,off_fn		#
	li	$a1,17			#
	li	$v0,read_string		#
	syscall				# read_string(stg.first_name, 17);
	
	la	$a0,ln			#
	li	$v0,print_string	#
	syscall				# print_string(ln)
	
	addiu	$a0,$t0,off_ln		#
	li	$a1,14			#
	li	$v0,read_string		#
	syscall				# read_string(stg.last_name,14)
	
	la	$a0,gr			#
	li	$v0,print_string	#
	syscall				# print_string("Nota: ")
	
	li	$v0,read_float		#
	syscall				#
	s.s	$f0,off_gr($t0)		# stg.grade = read_float()
	
	# Código de impressão
	
	la	$a0,print		#
	li	$v0,print_string	#
	syscall				#
	
	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_string("\nN. Mec: ");
	lw	$a0,off_id($t0)		#
	li	$v0,print_intu10	#
	syscall				# print_intu10(stg.id_number);
	
	la	$a0,str2		#
	li	$v0,print_string	#
	syscall				# print_string("\nNome: ");
	addiu	$a0,$t0,off_ln		#
	li	$v0,print_string	#
	syscall				# print_string(stg.last_name);
	li	$a0,','			#
	li	$v0,print_char		#
	syscall				# print_char(',');
	addiu	$a0,$t0,off_fn		#
	li	$v0,print_string	#
	syscall				# print_string(stg.first_name);
	
	la	$a0,str3		#
	li	$v0,print_string	#
	syscall				# print_string("\nNota: ");
	l.s	$f12,off_gr($t0)	#
	li	$v0,print_float		#
	syscall				# print_float(stg.grade);
	
	li	$v0,0			# return 0;
	jr	$ra			# fim do programa
	
	
	
	
	
