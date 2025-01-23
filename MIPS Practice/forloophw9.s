.data
arr: .word 10, 2, 31, 44, 0, 9
prompt: .asciiz "Result = "
.text

main:
la $s0, arr
li $s1, 0 #sum
li $t0, 0 #counter
li $t1, 6 # condition 
li $t2, 30 #for the if statemnet


for:
lw $t3, 0($s0) #get the element in the array
bge $t0, 6, done

ble $t3, $t2, skip # if arr[i] !> 30 then it doesn't add
add $s1, $s1, $t3

skip:
addi $t0, $t0, 1
addi $s0, $s0, 4
j for

done:
li $v0, 4
la $a0, prompt
syscall

#prints the number
li $v0, 1
move $a0, $s1
syscall

#exits the statement
li $v0, 10
syscall