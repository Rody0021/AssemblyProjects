.data
	prompt1: .asciiz "Enter number to count down from: "
	answer: .asciiz "\nCount down commence! \n"

.text
	li $v0, 4
	la $a0, prompt1
	syscall
	
	li $v0, 5
	syscall
	la $t1, ($v0)
	
	li $v0, 4
	la $a0, answer
	syscall
		
	loop:	
	
	li $v0, 1
	la $a0, ($t1)
	syscall
	
	addu $t1, $t1, -1
	bgtz $t1, loop
	
	li $v0, 10
	syscall
