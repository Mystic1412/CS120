.data
x: .asciiz "Hello\n"
.text

main:
li $v0, 4 #set syscall code for print string
la $a0, x #load address of the string
syscall


li $v0, 11 #code for printing character
la $a0, 78
syscall

li $v0, 1 #code for printing integer
la $a0, 3905
syscall

li $v0, 10 #exits the code
syscall