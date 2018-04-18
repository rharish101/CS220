# Recursive binary search starts
func:   sub $t0, $a0, $a3   #(end - start)
        slti $t0, $t0, 1    #(end - start) < 1 ?
        beq $t0, $0, bin_s
        addi $t0, $0, 4
        mult $t0, $a3
        mflo $t0
        add $t0, $t0, $a1
        lw $t1, 0($t0)
        add $t4, $0, $a3
        beq $t1, $a2, true   #k == arr[start] ?
        li $v0, -1   #return false
        jr $ra
true:   sub $t4, $t5, $t4
        add $v0, $0, $t4   #return true
        jr $ra
bin_s:  addi $t0, $0, 2
        add $t1, $a0, $a3
        div $t1, $t0
        mflo $t0    #t0 contains mid
        addi $t1, $0, 4
        mult $t1, $t0
        mflo $t1
        add $t1, $t1, $a1
        lw $t1 0($t1)
        add $t4, $0, $t0
        beq $t1, $a2, true   #k == arr[mid] ?
        slt $t2, $t1, $a2    #arr[mid] < k ?
        beq $t2, $0, more
        addi $t0, $t0, -1
        add $a0, $0, $t0
recur:  addi $sp, $sp, -4
        sw $ra, 0($sp)
        jal func
        lw $t0, 0($sp)
        add $ra, $0, $t0
        addi $sp, $sp, 4
        jr $ra
more:   addi $t0, $t0, 1
        add $a3, $0, $t0
        j recur

# Main function starts
main:   li $v0, 5   #read n
        syscall
        add $a0, $0, $v0    #end == n
        add $t0, $0, $0
read:   beq $t0, $a0, k_int #read array
        li $v0, 5
        syscall
        addi $sp, $sp, -4
        sw $v0, 0($sp)
        addi $t0, $t0, 1
        j read
k_int:  li $v0, 5 #read k
        syscall
        addi $a0, $a0, -1   #end == n-1
        add $t5, $0, $a0    #(n-1) in $t5
        add $a1, $0, $sp    #end of array
        add $a2, $0, $v0    #k
        add $a3, $0, $0     #start == 0
        addi $sp, $sp, -4
        sw $ra, 0($sp)
        jal func
        lw $ra, 0($sp)
        addi $sp, $sp, 4
        addi $t0, $0, -1
        beq $v0, $t0, nf
        add $t1, $0, $v0
        la $a0, str1
        li $v0, 4   #print string
        syscall
        add $a0, $0, $t1
        li $v0, 1   #print ans
        syscall
exit:   jr $ra
nf:     la $a0, str2
        li $v0, 4   #print string
        syscall
        j exit

.data
    str1:   .asciiz "Found element at index "
    str2:   .asciiz "Element was not found"
