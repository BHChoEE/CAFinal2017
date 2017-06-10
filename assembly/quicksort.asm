#data segment
.data
print1:     .asciiz     "Input the length of Array: "
print2:     .asciiz     "Input the number of each element one by one: \n"
print3:     .asciiz     "The Sorted Array is: "
print4:     .asciiz     " "
print5:     .asciiz     "\n"

.text
.globl main

main:                                               #print on console and get the number
        li      $v0,    4                           #print first string on console
        la      $a0,    print1
        syscall
        li      $v0,    5                           #get the length from console
        syscall
        move    $t0,    $v0                         #let t0 = n
        li      $v0,    4                           #print second string on console
        la      $a0,    print2
        syscall
        li      $t1,    0                           #count = 0

input:
        beq     $t1,    $t0,    input_end           #input until count = n
        li      $v0,    5                           #get int from console
        syscall
        sub     $sp,    $sp,    4                   #point to next block
        sw      $v0,    0($sp)                      #store the int in stack
        addi    $t1,    $t1,    1                   #count += 1
        j       input

input_end:
        move    $s5,    $sp                         #s5 is at A[n-1]
        sll     $t2,    $t0,    2                   #t2 = 4*t0
        add     $sp,    $sp,    $t2                 #reset pointer
        move    $s6,    $sp                         #s6 = reset pointer
        move    $sp,    $s5
        j       start
#TODO:implement quicksort here

sort:
        move    $s0,    $a0                         #i = left
        move    $s1,    $a1                         #j = right
        add     $t4,    $a0,    $a1
        srl     $t4,    $t4,    1
        add     $t4,    $t4,    1
        sll     $t4,    $t4,    2
        sub     $s4,    $s6,    $t4
        lw      $s3,    0($s4)                      #access s3 = pivot
#        li      $v0,    1
#        move    $a0,    $s3
#        syscall
while:
        bgt     $s0,    $s1,    while_end

        i_while:
        addi    $t4,    $s0,    1
        sll     $t4,    $t4,    2
        sub     $s4,    $s6,    $t4                 #access A[i]
        lw      $t5,    0($s4)                      #t5 = A[i]
#li      $v0,1
#       move    $a0,$t5
#       syscall
        bge     $t5,    $s3,    j_while
        addi    $s0,    $s0,    1                   #i++
        j       i_while

        j_while:
        addi    $t4,    $s1,    1
        sll     $t4,    $t4,    2
        sub     $s4,    $s6,    $t4                 #access A[j]
        lw      $t5,    0($s4)                      #t5=A[j]
#li  $v0,1
#       move    $a0,$t5
#       syscall
        ble     $t5,    $s3,    j_while_end         
        sub     $s1,    $s1,    1                   #j--
        j       j_while

        j_while_end:
        bgt     $s0,    $s1,    if_false
        addi    $t4,    $s0,    1
        sll     $t4,    $t4,    2
        sub     $t4,    $s6,    $t4                 #access A[i] at 0($t4)
        lw      $t5,    0($t4)                      #t5 = A[i]
        addi    $t6,    $s1,    1
        sll     $t6,    $t6,    2
        sub     $t6,    $s6,    $t6                 #access A[i] at 0($t6)
        lw      $t7,    0($t6)                      #t7 = A[j]
        sw      $t5,    0($t6)
        sw      $t7,    0($t4)
#        li      $v0,    1
#        lw      $a0,    0($t4)
#        syscall
        addi    $s0,    $s0,    1                   #i++
        sub     $s1,    $s1,    1                   #j--
        if_false:
        j       while

while_end:
        bge     $a0,    $s1,    if_j_false
        sub     $sp,    $sp,    12
        sw      $ra,    8($sp)
        sw      $a0,    4($sp)
        sw      $a1,    0($sp)
        move    $a0,    $a0
        move    $a1,    $s1
        jal     sort
        lw      $ra,    8($sp)
        lw      $a0,    4($sp)
        lw      $a1,    0($sp)
        add     $sp,    $sp,    12

if_j_false:
        bge     $s0,    $a1,    if_i_false
        sub     $sp,    $sp,    12
        sw      $ra,    8($sp)
        sw      $a0,    4($sp)
        sw      $a1,    0($sp)
        move    $a1,    $a1
        move    $a0,    $s0
        jal     sort
        lw      $ra,    8($sp)
        lw      $a0,    4($sp)
        lw      $a1,    0($sp)
        add     $sp,    $sp,    12

if_i_false:
        jr      $ra
   
start:
        li      $a0,    0                           #left = 0
        sub     $a1,    $t0,    1                   #right = n - 1
        sub     $sp,    $sp,    12                  #move up 3 blocks
        sw      $ra,    8($sp)
        sw      $a0,    4($sp)
        sw      $a1,    0($sp)
        jal     sort
        lw      $ra,    8($sp)
        lw      $a0,    4($sp)
        lw      $a1,    0($sp)
        add     $sp,    $sp,    12

sort_end:
        move    $sp,    $s6
        li      $t1,    0                           #count = 0
        li      $v0,    4                           #print string on console
        la      $a0,    print3
        syscall

output:
        beq     $t1,    $t0,    output_end          #output until count = n
        addi    $s0,    $t1,    1                   #s0 = count + 1
        sll     $s0,    $s0,    2                   #s0 = 4 * (count + 1) aka (count + 1) block
        sub     $s0,    $sp,    $s0                 #s0 = sp - (count + 1 )block
        li      $v0,    1                           #print int
        lw      $a0,    0($s0)                      #load word from s0 to a0
        syscall
        li      $v0,    4                           #print string on console
        la      $a0,    print4
        syscall
        addi    $t1,    $t1,    1                   #count += 1
        j       output

output_end:
        li      $v0,    4                           #print string on console
        la      $a0,    print5
        syscall
        li      $v0,    10                          #end of program
        syscall 
        
