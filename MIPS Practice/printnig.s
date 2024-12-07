.data
x: .asciiz "Hello"
.text

main:
la $a0, x
li $v0, 4
syscall