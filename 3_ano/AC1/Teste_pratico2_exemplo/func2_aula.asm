# i:  $s3
# res: $

func2:

  addiu  $sp,$sp,-20
  sw
  sw
  sw
  sw
  sw
  move  $s0,$a0
  move  $s1,$a1
  move  $s2,$a2
  
if:
  li  $s3,2

do:
  sll  $t1,$s3,2
  addu  $t1,$s2,$t1
  lw  $a0,0($t1)
  jal  toi
  sll  $t1,$s3,3
  addu  $t1,$s0,$t1
  sw  $v0,0($t1)
  addi  $s3,$s3,1
  blt  $s3,$s1,do
  
enddo:
  move  $a0,$s0
  move  $a1,$s1
  jal  avz
  move  $t0,$v0
  
  move  $a0,$t0
  li  $v0,1
  syscall
  j  endif

else:
  la  $a0,str
  li  $v0,4
  syscall
  
endif:
  move $v0,$t0
  
  lw
  lw
  lw
  lw
  lw
  addiu $sp,$sp,20
