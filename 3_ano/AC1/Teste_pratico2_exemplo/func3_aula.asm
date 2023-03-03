  .data
k1:  .float  -1.0
k2:  .float  1.0
  .text
  .globl  func3
  
# a: $a0
# t:  $f12
# n:  $a1
# oldg: $f0
# g:  $f2
# s:  $f4
# k:  $t0

func3:
  la  $t1,k1
  l.s  $f0,0($t1)  # oldg = -1.0
  la  $t1,k2  # g = 1.0
  l.s  $f2,0($t1)
  sub.s  $f4,$f4,$f4  # s = 0.0
  li  $t0,0  # k=0
  
for:  bge  $t0,$a1,endf  # while(k<n) {
while:
  sub.s  $f6,$f2,$f0  # while((g-oldg)>t) {
  c.le.s  $f6,$f12
  bc1t  endw
  mov.s  $f0,$f2  # oldg=g
  sll  $t1,$t0,2
  addu  $t1,$a0,$t1  # $t1=&a[k]
  l.s  $f6,0($t1)  #$f6=a[k]
  add.s  $f2,$f2,$f6
  div.s  $f2,$f2,$f12  # g = (g+a[k]) / t
  j  while #}
endw:
  add.s  $f4,$f4,$f2  # s+=g
  # voltar a calcular o a[k] pois o do while pode nunca acontecer e assim a[k] não exisitir
  sll  $t1,$t0,2
  addu  $t1,$a0,$t1
  s.s  $f2,0($t1)  # a[k] = g
  
  addi  $t0,$t0,1  #k++
  j  for  #}
endf:
  mtc1  $a1,$f0
  cvt.s.w  $f0,$f0  # $f0=(float)n
  div.s  $f0,$f4,$f0  # return s/(float)n
  jr  $ra
  
