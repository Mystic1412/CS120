.data
x: .word 12, 25, 7, 3, 18, 60, 0
prompt: .asciiz "Count is "
.text

main:
la $s0, x
li $s1, 0 #sum
li $t0, 10
li $t1, 50

while:
lw $s2, 0($s0)
beq $s2, $0, done

ble $s2, $t0, skip
bge $s2, $t1, skip
addi $s1, $s1, 1 #s1 = $s1 + 1

skip:
addi $s0, $s0, 4
j while

done:
li $v0, 4
la $a0, prompt
syscall

li $v0, 1
move $a0, $s1
syscall

li $v0, 10
syscall