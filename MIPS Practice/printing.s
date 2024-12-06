.data
x: .asciiz "Hello"
.text

main:
li $v0, 4 #set syscall code for print string
la $a0, x #load address of the string
syscall

li $v0, 10 #exits the code
syscall