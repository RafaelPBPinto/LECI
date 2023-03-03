# Mapa de registos
# rv: $t0
# n: $t1
# sum: $t3
# nit: $t4
# pt: $t5
  .data
  .eqv  print_int10,1
  .eqv  print_string,4
  .eqv  read_int,5
str:
  .asciiz "Media invalida!\n"
  .align 2
list:
  .space 32  # static int list[SIZE]
  .text
  .globl  main
  
main:
  li $t3,0  # sum=0
  li $t4,0  # nit=0
  
  la $t5,list  # pt = list
   
   addi $t6,$t5,32
for1:
  bge $t5,$t6,endf1
  
  li $v0,read_int
  syscall
  sw $v0,0($t5)
  
  addiu $t5,$t5,4
  j for1

endf1:
  li $t1,0
  la $t5,list
for2:
  bge $t1,8,endf2
  
if1:
  sll $t6,$t1,2
  add $t6,$t5,$t6
  lw $t7,0($t6)
  blt $t7,0,endif1
  
  add $t3,$t3,$t7
  addi $t4,$t4,1

endif1:
  addi $t1,$t1,1
   j for2
  
endf2:
if2:
  ble $t4,0,else
 
  div $a0,$t3,$t4
  li $v0,print_int10
  syscall
  li $t0,0
  j end

else:
  la $a0,str
  li $v0,print_string
  syscall
  li $t0,-1
 
end:

 move $v0,$t0
 jr $ra
  
  