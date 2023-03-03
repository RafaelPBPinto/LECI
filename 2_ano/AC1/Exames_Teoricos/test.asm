.data
a: .word 0x30313200, 0x33343536, 0x37380039
.align 2
b: .asciiz "aa"
.text
.globl main

main:	li	$t5,-7
		li	$t6,2
		
		div	$t5,$t6
		mfhi $t0
		mflo $t1
		
		jr	$ra
