.data
prompt: .asciiz "The result is: "

.text
.globl main

main:
    # Save the return address and any registers that need to be preserved
    addi $sp, $sp, -8        # Allocate space for 2 words on the stack (for $ra and $s0)
    sw $ra, 4($sp)            # Save the return address to the stack
    sw $s0, 0($sp)            # Save $s0 to the stack

    # Set up the arguments for multiply (a = 5, b = 3)
    li $a0, 5                 # First argument (a)
    li $a1, 3                 # Second argument (b)
    
    # Call the multiply function
    jal multiply              # Jump and link to multiply function

    # Restore the saved registers after the function call
    lw $ra, 4($sp)            # Restore the return address from the stack
    lw $s0, 0($sp)            # Restore $s0 from the stack
    addi $sp, $sp, 8          # Deallocate the space on the stack

    # Print the result (stored in $v0)
    li $v0, 4                 # Print string syscall
    la $a0, prompt
    syscall

    li $v0, 1                 # Print integer syscall
    move $a0, $v0             # Move the result to $a0 for printing
    syscall

    # Exit the program
    li $v0, 10                # Exit syscall
    syscall

# multiply function calculates a * b
multiply:
    mul $v0, $a0, $a1         # $v0 = a * b (store the result in $v0)
    jr $ra                    # Return to the caller
