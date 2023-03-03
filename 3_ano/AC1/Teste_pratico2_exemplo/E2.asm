# Mapa de registos
# f1: $s0
# k: $s1
# av: $s2
# i:$s3
# res: $t0
  .data
  .eqv SIZE,15
  .eqv print_int10,1
  .eqv print_string,4
str:
  .asciiz "Invalid argc"
  .text
  .globl func2
  
func2:
  addiu $sp,$sp,-20
  sw $ra,0($sp)
  sw $s0,4($sp)
  sw $s1,8($sp)
  sw $s2,12($sp)
  sw $s3,20($sp)
  
  move $s0,$a0
  move $s1,$a1
  move $s2,$a2
  
if:
  blt $s1,2,else
  bgt $s1,SIZE,else
  li $s3,2

do:
  addu $t1,$s2,$s3
  lb $a0,0($t1)
  jal toi
  
  sll $t1,$s3,2
  addu $t1,$t1,$s0
  sw  $v0,0($t1)
  
  addi $s3,$s3,1

while:
  bge $s3,$s1,enddo
  j do

enddo:
  move $a0,$s0
  move $a1,$s1
  jal avz
  move $t0,$v0
  
  move $a0,$t0
  li $v0,print_int10
  syscall
  j end

else:
  la $a0,str
  li $v0,print_string
  syscall
  
end:
  move $v0,$t0
  
  lw $s3,16($sp)
  lw $s2,12($sp)
  lw $s1,8($sp)
  lw $s0,4($sp)
  lw $ra,0($sp)
  addiu $sp,$sp,20
  jr $ra
  