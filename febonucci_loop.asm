.text
	li $v0, 1
	li $t0, 0
	la $a0,($t0)
	syscall
	
	li $v0, 1
	li $t1, 1
	la $a0,($t1)
	syscall
	
	
	
	Loop:
	li $v0, 1
	addu $t0, $t0, $t1
	la $a0,($t0)
	syscall
	
	li $v0, 1
	addu $t1, $t0, $t1
	la $a0,($t1)
	syscall
	
	bne $t1, 55, Loop
	