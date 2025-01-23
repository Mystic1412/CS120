.data

.text

main:
li $a0, 7
li $t0, 1
li $t1, 0 #sum

jal calculateSum

li $v0, 1
move $a0, $t1
syscall

li $v0, 10
syscall

calculateSum:
add $t1, $t1, $t0
addi $t0, $t0, 1
bgt $t0, $a0, end

j calculateSum

end:
jr $ra