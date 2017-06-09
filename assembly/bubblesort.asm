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
        sll     $t2,    $t0,    2                   #t2 = 4*t0
        add     $sp,    $sp,    $t2                 #reset pointer
        li      $t3,    1                           #i (t3) = 1
i_loop:
        beq     $t3,    $t0,    i_loop_end          # i < n
        li      $t4,    0                           # j (t4) = 0

j_loop:
        sub     $t5,    $t0,    $t3                 #t5 = n - i
        beq     $t4,    $t5,    j_loop_end          # j < n-i
        addi    $s0,    $t4,    1                   #s0 = j + 1
        sll     $s0,    $s0,    2                   #s0 = 4 * (j + 1)
        addi    $s1,    $s0,    4                   #s1 = 4 * (j + 2)
        sub     $s2,    $sp,    $s0                 #s2 = sp - 4 * (j + 1)
        sub     $s3,    $sp,    $s1                 #s3 = sp - 4 * (j + 2)
        lw      $a0,    0($s2)                      #store s2 into a0
        lw      $a1,    0($s3)                      #store s3 into a1
        bgt     $a0,    $a1,    swap                #if(A[j-1] < A[j]) then swap()

swapped:
        addi    $t4,    $t4,    1                   # j++
        j       j_loop

j_loop_end:
        addi    $t3,    $t3,    1                   # i++
        j       i_loop 

i_loop_end:
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

swap:
        sw      $a0,    0($s3)                      #store a0 into s3
        sw      $a1,    0($s2)                      #store a1 into s2
        j       swapped
