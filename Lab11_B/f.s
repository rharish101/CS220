main: li $v0, 5
      syscall
      addi $sp, $sp, -4
      add $a0, $v0, $0
      addi $a0, $a0, -1
      addi $s7, $s7, 1
      sw $ra, 4($sp)
        add $s7, $0, $0
      addi $s4, $0, 0
      jal readArr
      li $v0, 10
      syscall
readArr:  bgt $s4,$a0,exit
          addi $s4, $s4, 1
          xor $s7, $s7, 1
          li $v0, 6
          syscall
          # $f0 has the read float value
          beq $s7, $0, addit
          bne $s7, $0, subit
         
          j readArr


exit:  sub.s $f12, $f7, $f6
        li $v0, 2
      syscall
      jr $ra

addit:
    add.s $f6, $f6, $f0
    j readArr

subit:
    sub.s $f0, $f4, $f0
    add.s $f6, $f6, $f0
    j readArr