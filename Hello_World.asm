.data
 	hello: .asciiz "HELLO WORLD"
 	
 .text
   	
   	li $v0, 4 #ask to read in
   	la $a0, hello # a0= "Hello World"
   	syscall
   	
   	li $v0, 10 #end program
   	syscall
   	 