.data
	prompt1: .asciiz "Enter number to count down from: "
	answer: .asciiz "\nCount down commence! \n"
	
.text
	Looping_exe:
	li $v0,4
	la $a0, prompt1
	syscall
	
	li $v0,5
	syscall
	la $a1, ($v0)
	
	bne $a1,0, Looping_exe
	
	 li $v0, 10
	 syscall