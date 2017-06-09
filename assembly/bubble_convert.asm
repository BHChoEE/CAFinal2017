0x00                nop
0x01    main:       li $t0, 500                     # len = 500
0x02                li $t3, 1                       # i = 1
0x03    i_loop:     beq $t3, $t0, i_loop_end        # i < n
0x04                li $t4, 0                       # j = 0
0x05    j_loop:     sub $t5, $t0, $t3               # t5 = n - i
0x06                beq $t4, $t5, j_loop_end        # j < n - i
0x07                addi $s0, $t4, 1                # s0 = j + 1
0x08                sll $s0, $s0, 2                 # s0 = 4 * (j + 1)
0x09                addi $s1, $s0, 4                # s1 = 4 * (j + 2)
0x0A                sub $s2, $sp, $s0            
0x0B                sub $s3, $sp, $s1
0x0C                lw  $a0, 0($s2)                 # a0 = A[j]
0X0D                lw  $a1, 0($s3)                 # a1 = A[j-1]
0X0E                bgt $a0, $a1, swap              # if A[j-1] < A[j] swap
0X0F
0X10    swapped:    addi $t4, $t4, 1                # j++
0X11                j j_loop
0x12    j_loop_end: addi $t3, $t3, 1                # i++
0x13                j i_loop
0x14    i_loop_end: li $t1 0                        # count = 0
0x15                j end
0x16    swap:       sw $a0, 0($s3)                  
0x17                sw $a1, 0($s2)
0x18                j swapped
0x19    end:        nop                             # eof
