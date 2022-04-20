	.data
	.equ resetCoreTimer,12
	.equ readCoreTimer,11
	.text
	.globl timeDone
	
timeDone:
	li	$t0,0		# retValue = 0;
	
timeDone_if1:
	ble	$a1,0,timeDone_else	#  if (reset > 0) 
	li	$v0,resetCoreTimer
	syscall			#  resetCoreTimer();
	j	timeDone_end
		
timeDone_else:				# else
	li	$v0,readCoreTimer	
	syscall
	move	$t1,$v0		#  curCount = readCoreTimer();
	
timeDone_if2:
	mul	$t2,$a0,2000000	
	ble	$t1,$t2,timeDone_end	#  if (curCount > (K * ms))
	div	$t0,$t1,2000000	#  retValue = curCount / K; 
	
timeDone_end:
	li	$v0,$t0		#  return retValue; 
	jr	$ra			# fim da sub-rotina
	 
