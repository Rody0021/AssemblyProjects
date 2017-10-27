.text
	li $v0, 1
	li $t0, 0
	la $a0,($t0)
	syscall
	
	li $v0, 1
	li $t1, 1
	la $a0,($t1)
	syscall
	
	

	li $v0, 1
	addu $t0, $a0, $v1
	la $a0,($t0)
	syscall
	
	li $v0, 1
	addu $t1, $t0, $a0
	la $a0,($t1)
	syscall
	
	li $v0, 1
	addu $t2,$t1, $t0 
	la $a0,($t2)
	syscall
	
	li $v0, 1
	addu $t3,$t2, $t1 
	la $a0,($t3)
	syscall
	
	li $v0, 1
	addu $t4,$t3, $t2 
	la $a0,($t4)
	
	syscall
	
	li $v0, 1
	addu $t5,$t4, $t3 
	la $a0,($t5)
	syscall
	
	li $v0, 1
	addu $t6,$t5, $t4
	la $a0,($t6)
	syscall
	
	li $v0, 1
	addu $t7,$t6, $t5 
	la $a0,($t7)
	syscall
	

	
	
