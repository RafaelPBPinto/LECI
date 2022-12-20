# Mapa de registos
# n_even: $t0
# n_odd: $t1
# p1: $t2
# p2: $t3
    .data
    .eqv  N,35
    .eqv  read_int,5
    .eqv  print_int10,1
a:  .space  140
bl:  .space  140
    .text
    .globl  main
    
main:
  li  $t0,0  # int n_even = 0
  li  $t1,0  # int n_odd = 0
  
  la  $t2,a  # p1 =a
  li  $t4,N
  sll  $t4,$t4,2
  addu  $t4,$t4,$t2 # (a+N)
  
for1:
  bge  $t2,$t4,endf1
  li  $v0,read_int
  syscall
  sw  $v0,0($t2)
  addi  $t2,$t2,4
  j  for1
  
endf1:
  la  $t2,a
  la  $t3,bl
  
for2:
  bge  $t2,$t4,endf2
if:
  lw  $t5,0($t2)
  rem  $t6,$t5,2
  beqz  $t6,else
  sw  $t5,0($t3)
  addi  $t3,$t3,4
  addi  $t1,$t1,1
  j  endif
else:
  addi  $t0,$t0,1
endif:
  addi  $t2,$t2,4
  j  for2
  
endf2:
  la  $t3,bl
  li  $t4,N
  sll  $t4,$t4,2
  addu  $t4,$t4,$t3 # (b+N)
for3:
  bge  $t3,$t4,endf3
  lw  $a0,0($t3)
  li  $v0,print_int10
  syscall
  addi  $t3,$t3,4
  j  for3

endf3:
  jr  $ra