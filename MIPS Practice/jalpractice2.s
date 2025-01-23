.data
prompt: .asciiz "Factorial of 5 is "
.text

main:
li $a0, 5
li $t0, 1 # total

jal factorial

li $v0, 4
la $a0, prompt
syscall

li $v0, 1
move $a0, $t0
syscall

#ends the program
li $v0, 10
syscall

factorial:
mult $t0, $a0 #multiply total ($t0) by current value of n ($a0)
mflo $t0 # move teh result from $lo to $t0

sub $a0, $a0, 1
beq $a0,$0, end
j factorial

end:
jr $ra