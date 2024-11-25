.data
arr: 
    .byte 'E'
    .byte 'L'
    .byte 'V'
    .byte 'I'
    .byte 'S'
  
newline:
    .asciiz "\n"
.text

main:
    la $s0, arr      
    li $t0, 0        

loop:
    beq $t0, 5, done 
    lb $a0, 0($s0)   
    jal replace      
    sb $v0, 0($s0)   

    addi $s0, $s0, 1 
    addi $t0, $t0, 1 
    j loop           

done:
    la $a0, newline  
    li $v0, 4        
    syscall

    li $v0, 10       
    syscall

replace:
    li $t2, 'G'      
    li $t3, 'M'      

    ble $a0, $t2, lower 
    bge $a0, $t3, lower 
    j print_char        

lower:
    addi $a0, $a0, 32 

print_char:
    move $v0, $a0     
    li $v0, 11        
    syscall
    jr $ra            
