# Mapa de registos
# i: $t0
# v: $t1
# &(val[0]): $t2
       .data
       .eqv  SIZE,8
       .eqv  print_string,4
       .eqv  print_int10,1
       .eqv  print_char,11
str1:  .asciiz  "Result is: "
       .align  2
val:   .word  8, 4, 15, -1987, 327, -9, 27, 16
       .text
       .globl  main
       
main:
  li  $t0,0  # i=0
  la  $t2,val  # &(val[0]) = $t2
  
do1:
  sll $t3,$t0,2
  addu  $t4,$t3,$t2
  lw  $t1,0($t4)  # v = val[i]
  
  li  $t5,SIZE
  sll  $t5,$t5,2
  div  $t5,$t5,2
  addu  $t5,$t3,$t5
  addu  $t5,$t5,$t2
  lw  $t6,0($t5)
  sw  $t6,0($t4) # val[i] = val[i+SIZE/2]
  sw  $t1,0($t5) # val[i+SIZE/2] = v
  
  addi $t0,$t0,1  # ++i
while1:
  bge  $t0,4,enddo1 # while ...
  j  do1

enddo1:
  la  $a0,str1
  li  $v0,print_string
  syscall
  li  $t0,0
  
do2:
  sll  $t3,$t0,2
  addu  $t3,$t3,$t2
  lw  $a0,0($t3)
  li  $v0,print_int10
  syscall
  addi $t0,$t0,1
  
  li  $a0,','
  li  $v0,print_char
  syscall
  
while2:
  bge  $t0,SIZE,enddo2
  j  do2
  
enddo2:
  jr  $ra
  
  
  
