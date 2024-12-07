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

li $v0, 10
syscall