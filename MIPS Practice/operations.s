.data
newline: .asciiz "\n"

.text

main:
li $a1, 45 #$a1 = 45
li $a2, 55 #$a2 = 55

add $a0, $a1, $a2 #$a0 = $a1 $a2
li $v0, 1
syscall

li $v0, 4
la $a0, newline
syscall

#loading the numbers in the $t addresses
li $t0, 18 
li $t1, 27
li $t2, -11

#18+27+(-11)
add $t3, $t0, $t1
add $a0, $t3, $t2

#printing out
li$v0, 1
syscall


li $v0, 4
la $a0, newline
syscall
li $v0, 4
la $a0, newline
syscall

li $s0, 10
li $s1, 0x10
li $s2, 0xabcd0123

add $t1, $s0, $s1
add $s3, $t1, $s2

li $t0, 0x10010010
sw $s3, 0($t0)


li $v0, 10
syscall