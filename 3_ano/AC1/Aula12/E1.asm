#		Align	Size	Offset
# id_number	  4	  4	  0
# first_name	  1  	 18	  4
# last_name	  1	 15      22
# grade		  4	  4	 37->40
# student         4      44
	.data
	.eqv	MAX_STUDENTS,4
	.eqv	print_string,4
	.eqv	read_string,8
	.eqv	read_int,5
	.eqv	print_float,2
	.eqv	read_float,6
	.eqv	print_intu10,36
student:
	.space	44
	.align	2
media:	.space	4
max_grade:
	.float	-20.0
sum:	.float	0.0
st_array:
	.space	176
str:	.asciiz	"\nMedia: "
str1:	.asciiz	"N. Mec: "
str2:	.asciiz	"Primeiro Nome: "
str3:	.asciiz	"Ultimo Nome: "
str4:	.asciiz	"Nota: "
	.text
	.globl	main

main:	addiu	$sp,$sp,-4
	lw	$ra,0($sp)
	
	la	$a0,st_array
	li	$a1,MAX_STUDENTS
	jal	read_data
	
	la	$a0,st_array
	li	$a1,MAX_STUDENTS
	la	$a2,media
	jal	max
	move	$t7,$v0
	
	la	$a0,str
	li	$v0,print_string
	syscall
	
	la	$t0,media
	l.s	$f12,0($t0)
	li	$v0,print_float
	syscall
	
	move	$a0,$t7
	jal	print_student
	
	li	$v0,0
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr	$ra

read_data:
	move	$t1,$a0
	move	$t2,$a1
	li	$t0,0
rd_for:	bge	$t0,$t2,rd_endf
	
	la	$a0,str1
	li	$v0,print_string
	syscall
	
	li	$v0,read_int
	syscall
	sw	$v0,0($t1)
	
	la	$a0,str2
	li	$v0,print_string
	syscall
	
	addiu	$a0,$t1,4
	li	$a1,17
	li	$v0,read_string
	syscall
	
	la	$a0,str3
	li	$v0,print_string
	syscall
	
	addiu	$a0,$t1,22
	li	$a1,14
	li	$v0,read_string
	syscall
	
	la	$a0,str4
	li	$v0,print_string
	syscall
	
	li	$v0,read_float
	syscall
	s.s	$f0,40($t1)
	
	addiu	$t0,$t0,1
	addiu	$t1,$t1,44
	j	rd_for

rd_endf:
	jr	$ra
	
print_student:
	move	$t0,$a0
	
	lw	$a0,0($t0)
	li	$v0,print_intu10
	syscall
	
	addiu	$a0,$t0,4
	li	$v0,print_string
	syscall
	
	addiu	$a0,$t0,22
	li	$v0,print_string
	syscall
	
	l.s	$f12,40($t0)
	li	$v0,print_float
	syscall
	
	jr	$ra

max:	l.s	$f2,max_grade
	l.s	$f4,sum
	
	addu	$t0,$a0,$a1
max_for:
	bge	$a0,$t0,max_endf
	
	l.s	$f6,40($a0)
	add.s	$f4,$f4,$f6
	
max_if:	c.le.s	$f6,$f2
	bc1f	max_endif
	mov.s	$f2,$f6
	move	$v0,$a0

max_endif:
	addiu	$a0,$a0,44
	j	max_for

max_endf:
	mtc1	$a1,$f8
	cvt.s.w	$f8,$f8
	div.s	$f12,$f4,$f8
	s.s	$f12,0($a2)
	
	jr	$ra

	
	