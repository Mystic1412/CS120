.data
x: .word 3, 37, 2, 7, 41, 0
Text: .asciiz "Largest is "
.text

main:
la $s0, x #load address
li $t0, 0 #sum
li $t1, 5
li $t2, 40

while:
lw $t3, 0($s0) # load the current arry element
beq $t3, $0, done

ble $t3, $t1, skip #*s0 <= 5 skips to the next array
bge $t3, $t2, skip #*s0 >= 40 skips to the next array

add $t0, $t0, $t3 #sum = sum +*s0

skip:
add $s0, $s0, 4 #move to the next element
j while #jump back to the loop

done:
li $v0, 4
la $a0, Text
syscall

li $v0, 1
move $a0, $t0 #move the sum into $a0 for printing
syscall

li $v0, 10
syscall