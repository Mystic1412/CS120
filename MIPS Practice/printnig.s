.data
x: .asciiz "Hello"
.text

main:
la $a0, x
li $v0, 11
syscall