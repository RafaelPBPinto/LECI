# Alinhamento	Dimensão	Offset
# 4		4		0
# 1		18		4
# 1		15		22
# 4		4		40
# 4		44
# --------------------------------------
# Mapa de registos
# pmax - $s0
	.data
	.eqv	MAX_STUDENTS,4
	.eqv	print_string,4
	.eqv	print_float,2
	.eqv	read_string,8
	.eqv	read_int,5
	.eqv	read_float,6
	.eqv	print_intu10,36
	.eqv	print_char,11
max_grade:	
	.float	-20.0
zero:	.float	0.0
str1:	.asciiz "\nMedia: "
str2:	.asciiz	"N. Mec: "
str3:	.asciiz	"Primeiro Nome: "
str4:	.asciiz	"Ultimo Nome: "
str5:	.asciiz	"Nota: "
	.align	2
st_array:				# static student st_array[MAX_STUDENTS];
	.space	176			# 4*44
	.align	2
media:	.space	4			# static float media
pmax:	.space	44			# student *pmax;
	.eqv	off_id,0
	.eqv	off_fn,4
	.eqv	off_ln,22
	.eqv	off_gr,40
	.text
	.globl	main
	
main:	addiu	$sp,$sp,-8		#
	sw	$ra,0($sp)		#
	sw	$s0,4($sp)		#
	
	la	$a0,st_array		#
	li	$a1,MAX_STUDENTS	#
	jal	read_data		# read_data( st_array, MAX_STUDENTS );
	
	la	$a0,st_array		#
	li	$a1,MAX_STUDENTS	#
	la	$a2,media		# 
	jal	max			# max( st_array, MAX_STUDENTS, &media );
	move	$s0,$v0			# pmax = max( st_array, MAX_STUDENTS, &media );
	
	la	$a0,str1		#
	li	$v0,print_string	#
	syscall				# print_string("\nMedia: ");
	
	li	$v0,print_float		#
	syscall				# print_float( media );
	
	li	$a0,'\n'		#
	li	$v0,print_char		#
	syscall				# print_char('\n')
	
	move	$a0,$s0			#
	jal	print_student		# print_student( pmax );
	
	lw	$s0,4($sp)		#
	lw	$ra,0($sp)		#
	addiu	$sp,$sp,8		#
	jr	$ra			# fim do programa
	
read_data:
	li	$t0,0			# i=0
	move	$t1,$a0			# $t1 = st
	move	$t2,$a1			# $t2 = ns
	
read_data_for:
	bge	$t0,$t2,read_data_endf	# for(i=0; i < ns; i++)
	mul	$t3,$t0,44		# i*44
	addu	$t3,$t1,$t3		# st[i]	
	
	la	$a0,str2		#
	li	$v0,print_string	#
	syscall				# print_string("N. Mec: ");
	li	$v0,read_int		#
	syscall				#
	sw	$v0,off_id($t3)		# st[i].id_number = read_int();
	
	la	$a0,str3		#
	li	$v0,print_string	#
	syscall				# print_string("Primeiro Nome: ");
	addiu	$a0,$t3,off_fn		#
	li	$a1,17			#
	li	$v0,read_string		#
	syscall				# read_string(st[i].first_name, 17);
	
	la	$a0,str4		#
	li	$v0,print_string	#
	syscall				# print_string("Ultimo Nome: ");
	addiu	$a0,$t3,off_ln		#
	li	$a1,14			#
	li	$v0,read_string		#
	syscall				# read_string(st[i].last_name, 14);
	
	la	$a0,str5		#
	li	$v0,print_string	#
	syscall				# print_string("Nota: ");
	li	$v0,read_float		#
	syscall				#
	s.s	$f0,off_gr($t3)		# st[i].grade = read_float();
	
	addi	$t0,$t0,1		# i++
	j	read_data_for		#

read_data_endf:
	jr	$ra			# fim da sub-rotina
	
max:	l.s	$f2,max_grade		# $f2 = float max_grade = -20.0;
	l.s	$f4,zero		# $f4 = sum = 0.0
	
	mtc1	$a2,$f12		#
	cvt.s.w	$f12,$f12		# $f12 = media
	
	move	$t0,$a0			# $t0 = p = st
	move	$t2,$a1
	mul	$t2,$t2,44		#
	add	$t1,$a0,$t2		# $t1 = st + ns
	
max_for:	
	bge	$t0,$t1,max_endf	# for(p = st; p < (st + ns); p++)
	
	l.s	$f6,off_gr($t0)		# $f6 = p->grade
	add.s	$f4,$f4,$f6		# sum += p->grade;
	
max_if:	c.lt.s	$f6,$f2			#
	bc1t	max_endif		# if(p->grade > max_grade)
	
	l.s	$f2,off_gr($t0)		# max_grade = p->grade;
	move	$v0,$t0			# pmax = p;
	
max_endif:
	addi	$t0,$t0,44		# p++
	j	max_for			#
	
max_endf:
	mtc1	$a1,$f8			# (float)ns
	cvt.s.w	$f8,$f8			#
	div.s	$f12,$f4,$f8		# *media = sum / (float)ns;
	
					# return pmax; ($v0)
	jr	$ra			# fim da sub-rotina
	
print_student:
	move	$t0,$a0			# $t0 = student *p
	
	lw	$a0,off_id($t0)		#
	li	$v0,print_intu10	#
	syscall				# print_intu10(p->id_number);
	
	li	$a0,'\n'		#
	li	$v0,print_char		#
	syscall				# print_char('\n')
	
	addiu	$a0,$t0,off_fn		#
	li	$v0,print_string	#
	syscall				# print_string(p->first_name);
	
	li	$a0,'\n'		#
	li	$v0,print_char		#
	syscall				# print_char('\n')
	
	addiu	$a0,$t0,off_ln		#
	li	$v0,print_string	#
	syscall				# print_string(p->last_name);
	
	li	$a0,'\n'		#
	li	$v0,print_char		#
	syscall				# print_char('\n')
	
	l.s	$f12,off_gr($t0)	#
	li	$v0,print_float		#
	syscall				# print_float(p->grade);

	jr	$ra			# fim da sub-rotina
