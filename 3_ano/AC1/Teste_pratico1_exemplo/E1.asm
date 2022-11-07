# Mapa de registos
# val: $t1
# n: $t0
# min: $t2
# max: $t3
       .data
       .eqv  min,0x7FFFFFFF
       .eqv  max,0x80000000
       .eqv  print_string,4
       .eqv  read_int,5
       .eqv  print_int10,1
       .eqv  print_char,11
str1:  .asciiz "Digite ate 20 inteiros (zero para terminar):"
str2:  .asciiz "Máximo/mínimo são: "
       .text
       .globl main
       
main:
  li  $t0,0  # n=0
  li  $t2,min  # min = 0x7FFFFFFF
  li  $t3,max  # max = 0x80000000
  
  la  $a0,str1
  li  $v0,print_string
  syscall               # print_string(str1)
  
do:
  li  $v0,read_int
  syscall
  move  $t1,$v0  # val = read_int()
  
if1:
  beqz  $t1,endif  # if (val != 0)
  
if2:
  ble  $t1,$t3,if3 # if(val > max)
  move $t3,$t1     # max = val
  
if3:
  bge  $t1,$t2,endif # if(val < min)
  move $t2,$t1       # min = val
  
endif:
  addi $t0,$t0,1  # n++
while:
  bge  $t0,20,enddo # while((n < 20) &&
  beqz $t1,enddo    #   (val != 0))
  j    do
  
enddo:
  la  $a0,str2
  li  $v0,print_string
  syscall          # print_string(str2)
  
  move  $a0,$t3
  li    $v0,print_int10
  syscall         # print_int10(max)
  
  li  $a0,':'
  li  $v0,print_char
  syscall  # print_char(':')
  
  move  $a0,$t2
  li    $v0,print_int10
  syscall # print_int10(min)
  
  jr  $ra  # fim do programa