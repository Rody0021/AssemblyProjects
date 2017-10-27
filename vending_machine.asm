.data 
	outofstock: .asciiz "\nOut of Stock :("
	number: .asciiz "Choose the Number of Sodas Availible:\n"
	sodasleft: .asciiz "\nNumber of Sodas Left:\n"
	choose: .asciiz "\nERROR!!!!!!!!!\nA Negative Number Isn't Possible... Try Again!\n\n"
	return: .asciiz "\n"
	Order: .asciiz "\nHow many do you want\n "
	
.text
	
	li $v0, 4
	la $a0, number
	syscall
	
	li $v0, 5 
	syscall
	la $t1, ($v0)
	
	start:
	loop:
	li $v0,4
	la $a0, Order
	syscall
	
	li $v0,5
	syscall
	la $t2, ($v0)
	
	bgt $t2, $t1, loop
	
	
	li $v0,4
	la $a0, sodasleft
	syscall
	
	li $v0,1
	sub, $t1,$t1,$t2
	la $a0 ($t1)
	syscall
	
	bgtz,$t1, start
	
	li $v0, 10
	syscall
	
	
	
