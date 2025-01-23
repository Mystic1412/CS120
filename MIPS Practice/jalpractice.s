.data
message: .asciiz "Hello from message 1!\n"
message2: .asciiz "Hello from subroutine!"
.text

main:
li $v0, 4
la $a0, message
syscall

jal Subroutine #jump to Subroutine and save return address

li $v0, 10 #exit program
syscall

Subroutine:
li $v0, 4
la $a0, message2
syscall

jr $ra # return to the caller