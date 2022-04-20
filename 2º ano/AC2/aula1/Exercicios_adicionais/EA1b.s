# Mapa de registos
# state - $s0
# cnt - $s1
# c - $s2
	.data
	.equ	UP,1
	.equ	DOWN,0
	.equ	STOP,2
	.equ	RESET,3
	.equ	inkey,1
	.equ	putChar,3
	.equ	printInt,6
	.text
	.globl	main
	
main:	addi	$sp,$sp,-16
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	
	li	$s0,0		#  int state = 0; 
	li	$s1,0		#  int cnt = 0; 
	
do:	li	$a0,'\r'	# do{
	li	$v0,putChar	#  putChar('\r'); // Carriage return character
	syscall
	
	li	$a1,0x0003000A		
	move	$a0,$s1	
	li	$v0,printInt	# printInt( cnt, 10 | 3 << 16 ); // 0x0003000A: decimal w/ 3 digits 	
	syscall
	
	li	$a0,'\t'	
	li	$v0,putChar
	syscall		#  putChar('\t'); // Tab character 
	
	li	$a1,0x00080002
	move	$a0,$s1
	li	$v0,printInt	#  printInt( cnt, 2 | 8 << 16 ); // 0x00080002: binary w/ 8 bits
	syscall
	
	li	$a0,5
	jal	wait		#   wait(5); // wait 0.5s 
	
	li	$v0,inkey	
	syscall
	move	$s2,$v0	#  c = inkey(); 
	
if1:	bne	$s2,'+',if2	#  if( c == '+' )
	li	$s0,UP		#   state = UP; 
	
if2:	bne	$s2,'-',if3	#  if( c == '-' ) 
	li	$s0,DOWN	#  state = DOWN;

if3:	bne	$s2,'s',if4	#  if( c == 's' )
	li	$s0,STOP	#   state = STOP
	
if4:	bne	$s2,'r',if5	#  if( c == 'r' )
	li	$s0,RESET	#   state = STOP  

if5:	bne	$s0,UP,else1	#  if( state == UP ) 
	addi	$s1,$s1,1
	andi	$s1,$s1,0xFF	#  cnt = (cnt + 1) & 0xFF; // Up counter MOD 256
	j	enddo
	
else1:	bne	$s0,DOWN,else2	#  else if( state == DOWN )	
	addi	$s1,$s1,-1
	andi	$s1,$s1,0xFF	#  cnt = (cnt - 1) & 0xFF; // Down counter MOD 256 
	j	enddo
	
else2:	bne	$s0,STOP,else3	#  else if( state == STOP )
	j	enddo		#  *stop*
	
else3:	li	$s1,0		# count=0 (RESET)
	j	enddo		#
	
enddo:	beq	$s2,'q',end	#  } while( c != 'q' ); 
	j	do
	
end:	li	$v0,0		# return 0;
	lw	$s2,12($sp)
	lw	$s1,8($sp)
	lw	$s0,4($sp)
	lw	$ra,0($sp)
	addiu	$sp,$sp,16
	jr	$ra		# fim do programa
	
wait:	li	$t0,515000
	mul	$t0,$t0,$a0
	li	$t1,0		# i=0
	
wait_for:
	bge	$t1,$t0,wait_endf #  for(i=0; i < 515000 * ts; i++); // wait approximately ts/10 seconds 
	addi	$t1,$t1,1
	j	wait_for
	
wait_endf:
	jr	$ra		# fim da sub-rotina
