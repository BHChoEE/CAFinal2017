0x00                nop
0x01                addi    $t0 $zero 500           # t0 = n
0x02 input:         addi    $t1 $zero 0             # count = 0
0x03                beq     $t1 $t0 input_end
0x04                sub     $sp $sp 4
0x05                addi    $t1 $t1 1
0x06                j       input
0x07 input_end:     addi    $s5 $sp 0               # s5 = A[n-1]
0x08                sll     $t2 $t0 2
0x09                add     $sp $sp $t2             # reset pointer
0x0A                addi    $s6 $sp 0               # s6 = reset 
0x0B                addi    $sp $s5 0
0x0C                j       start
0x0D sort:          addi    $s0 $a0 0               # i = left
0x0E                addi    $s1 $a1 0               # j = right
0x0F                add     $t4 $a0 $a1
0x10                srl     $t4 $t4 1
0x11                addi    $t4 $t4 1
0x12                sll     $t4 $t4 2
0x13                sub     $s4 $s6 $t4
0x14                lw      $s3 0($s4)              # access s3 = pivot
0x15 while:         slt     $s7 $s1 $s0             # bgt $s0 $s1 while_end
0x16                bne     $s0 $zero while_end
0x17    i_whlie:    addi    $t4 $s0 1
0x18                sll     $t4 $t4 2
0x19                sub     $s4 $s6 $t4             # access A[i]
0x1A                lw      $t5 0($s4)              # t5 = A[i]
0x1B                slt     $s7 $t5 $s3
0x1C                beq     $s0 $zero j_while
0x1D                addi    $s0 $s0 1               # i++
0x1E                j       i_while
0x1F    j_while:    addi    $t4 $s1 1
0x20                sll     $t4 $t4 2
0x21                sub     $s4 $s6 $t4             # access A[j]
0x22                lw      $t5 0($s4)              # t5 = A[j]
0x23                slt     $s7 $s3 $t5
0x24                beq     $s7 $zero j_while_end
0x25                sub     $s1 $s1 1               # j--
0x26                j       j_while
0x27    j_while_end:slt     $s7 $s1 $s0
0x28                bne     $s7 $zero if_false
0x29                addi    $t4 $s0 1
0x2A                sll     $t4 $t4 2
0x2B                sub     $t4 $s6 $t4             # access A[i] at 0($t4)
0x2C                lw      $t5 0($t4)              # t5 = A[i]
0x2D                addi    $t6 $s1 1
0x2E                sll     $t6 $t6 2
0x2F                sub     $t6 $s6 $t6             # access A[j] at 0($t6)
0x30                lw      $t7 0($t6)              # t7 = A[j]
0x31                sw      $t5 0($t6)
0x32                sw      $t7 0($t4)
0x33                addi    $s0 $s0 1               # i++
0x34                sub     $s1 $s1 1               # j--
0x35    if_false:   j       while
0x36 while_end:     slt     $s7 $a0 $s1
0x37                beq     $s7 $zero if_j_false
0x38                sub     $sp $sp 12
0x39                sw      $ra 8($sp)
0x3A                sw      $a0 4($sp)
0x3B                sw      $a1 0($sp)
0x3C                addi    $a0 $a0 0
0x3D                addi    $a1 $s1 1
0x3E                jal     sort
0x3F                lw      $ra 8($sp)
0x40                lw      $a0 4($sp)
0x41                lw      $a1 0($sp)
0x42                addi    $sp $sp 12
0x43 if_j_false:    slt     $s7 $s0 $a1
0x44                beq     $s7 $zero if_i_false
0x45                sub     $sp $sp 12
0x46                sw      $ra 8($sp)
0x47                sw      $a0 4($sp)
0x48                sw      $a1 0($sp)
0x49                addi    $a1 $a1 0
0x4A                addi    $a0 $s0 0
0x4B                jal     sort
0x4C                lw      $ra 8($sp)
0x4D                lw      $a0 4($sp)
0x4E                lw      $a1 0($sp)
0x4F                add     $sp $sp 12 
0x50 if_i_false:    jr      $ra
0x51 start:         li      $a0 0                           #left = 0
0x52                sub     $a1 $t0,    1                   #right = n - 1
0x53                sub     $sp $sp,    12                  #move up 3 blocks
0x54                sw      $ra 8($sp)
0x55                sw      $a0 4($sp)
0x56                sw      $a1 0($sp)
0x57                jal     sort
0x58                lw      $ra 8($sp)
0x59                lw      $a0 4($sp)
0x5A                lw      $a1 0($sp)
0x5B                add     $sp $sp 12
0x5C sort_end       nop