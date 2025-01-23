.data
arr: .word 1, 2, 3, 4, 5
arr_size: .word 5 # Size of the array
prompt: .asciiz "Reversed Array: "
.text

main:
la $a0, arr
la $a1, arr_size

#save registers that will be used in the subroutine
addi $sp, $sp, -8 #Allocate space for 2 words
sw $ra, 4($sp)
sw $s0, 0($sp)

jal reverseArray

#restore registers
lw $ra, 4($sp)
lw $s0, 0($sp)
addi $sp, $sp, 8

# Print the reversed array (you can loop through and print the elements)
li $v0, 4                      # Print string syscall
la $a0, prompt
syscall

li $t0, 0 # Initialize arry index
print_loop:
lw 4a0, arr($t0)
li $v0, 1
syscall
addi $t0, $t0, 4
lw $t1, arr_size
blt $t0, $t1, print_loop

# Exit the program
li $v0, 10
syscall

reverseArray:
    # Initialize pointers: start at the first element and the last element
    la $s0, arr                    # Load address of the first element into $s0 (start pointer)
    lw $t0, arr_size               # Load array size into $t0
    sub $t0, $t0, 1                # Subtract 1 to get the last index
    sll $t0, $t0, 2                # Convert to byte offset (index * 4)
    add $s1, $s0, $t0              # Load address of the last element into $s1 (end pointer)

reverse_loop:
    # Check if start pointer is greater than or equal to end pointer
    bge $s0, $s1, reverse_end

    # Swap the values at $s0 and $s1
    lw $t2, 0($s0)                 # Load value at start pointer into $t2
    lw $t3, 0($s1)                 # Load value at end pointer into $t3
    sw $t3, 0($s0)                 # Store value at end pointer into start pointer
    sw $t2, 0($s1)                 # Store value at start pointer into end pointer

    # Move the pointers
    addi $s0, $s0, 4               # Increment start pointer
    addi $s1, $s1, -4              # Decrement end pointer

    j reverse_loop                 # Repeat the loop

reverse_end:
    jr $ra                         # Return from the subroutine
