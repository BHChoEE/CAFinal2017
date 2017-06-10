nop
addi    $t0 $zero 0x1f4
addi    $t1 $zero 0x00
beq     $t1 $t0 0x07
addi     $sp $sp 0xfffc
addi    $t1 $t1 0x01
j       0x02
addi    $s5 $sp 0x00
sll     $t2 $t0 0x02
add     $sp $sp $t2 
addi    $s6 $sp 0x00
addi    $sp $s5 0x00
j       0x51
addi    $s0 $a0 0x00
addi    $s1 $a1 0x00
add     $t4 $a0 $a1
srl     $t4 $t4 0x01
addi    $t4 $t4 0x01
sll     $t4 $t4 0x02
sub     $s4 $s6 $t4
lw      $s3 0x00($s4)
slt     $s7 $s1 $s0
bne     $s0 $zero 0x36
addi    $t4 $s0 0x01
sll     $t4 $t4 0x02
sub     $s4 $s6 $t4
lw      $t5 0x00($s4)
slt     $s7 $t5 $s3
beq     $s0 $zero 0x1F
addi    $s0 $s0 0x01
j       0x17
addi    $t4 $s1 0x01
sll     $t4 $t4 0x02
sub     $s4 $s6 $t4
lw      $t5 0($s4)
slt     $s7 $s3 $t5
beq     $s7 $zero 0x27
addi    $s1 $s1 0xffff
j       0x1f
slt     $s7 $s1 $s0
bne     $s7 $zero 0x35
addi    $t4 $s0 0x01
sll     $t4 $t4 0x02
sub     $t4 $s6 $t4
lw      $t5 0x00($t4)
addi    $t6 $s1 0x01
sll     $t6 $t6 0x02
sub     $t6 $s6 $t6
lw      $t7 0x00($t6)
sw      $t5 0x00($t6)
sw      $t7 0x00($t4)
addi    $s0 $s0 0x01 
addi     $s1 $s1 0xffff
j       0x15
slt     $s7 $a0 $s1
beq     $s7 $zero 0x43
addi     $sp $sp 0xfff4
sw      $ra 0x08($sp)
sw      $a0 0x04($sp)
sw      $a1 0x00($sp)
addi    $a0 $a0 0x00
addi    $a1 $s1 0x01
jal     0x0D
lw      $ra 0x08($sp)
lw      $a0 0x04($sp)
lw      $a1 0x00($sp)
addi    $sp $sp 0x0C
slt     $s7 $s0 $a1
beq     $s7 $zero 0x50
addi    $sp $sp 0xfff4
sw      $ra 0x08($sp)
sw      $a0 0x04($sp)
sw      $a1 0x00($sp)
addi    $a1 $a1 0x00
addi    $a0 $s0 0x00
jal     0x0D
lw      $ra 0x08($sp)
lw      $a0 0x04($sp)
lw      $a1 0x00($sp)
addi    $sp $sp 0x0C 
jr      $ra
addi    $a0 $zero 0x00    
addi    $a1 $t0 0xffff    
addi    $sp $sp 0xfff4
sw      $ra 0x08($sp)
sw      $a0 0x04($sp)
sw      $a1 0x00($sp)
jal     0x0D
lw      $ra 0x08($sp)
lw      $a0 0x04($sp)
lw      $a1 0x00($sp)
addi    $sp $sp 0x0c
nop