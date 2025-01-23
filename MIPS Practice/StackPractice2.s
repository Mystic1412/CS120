.data
arr: .word 3, 5, 7, 2, 8
arr_size: .word 5
.text

main:
addi $sp, $sp, -8
sw $ra, 4($sp)
sw $s0, 0($sp)

li $v0, 0 #sum =0
la $t0, arr #load address of array into $t0
lw $t1, arr_size #load the size of the arry into $t1

jal addition

lw $ra 4($sp)
lw $s0 0($sp)
addi $sp, $sp, 8

li $v0, 1
move $a0, $v0
syscall

li $v0, 10
syscall

addition:
li $t2, 0

loop:
beq $t2, $t1, done
lw $t3, 0($t0)
add $v0, $v0, $t3
addi $t0, $t0, 4
addi $t2, $t2, 1
j loop

done:
jr $ra