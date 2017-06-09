nop
addi $t0 $0 0x1f4                     
addi $t3 $0 0x01                       
beq $t3 $t0 0x14       
addi $t4 $0 0x00                       
sub $t5 $t0 $t3
beq $t4 $t5 0x12        
addi $s0 $t4 0x01               
sll $s0 $s0 0x02                
addi $s1 $s0 0x04         
sub $s2 $sp $s0           
sub $s3 $sp $s0
lw  $a0 0x00($s2)                 
lw  $a1 0x00($s3)               
slt $t6 $a1 $a0
bne $t0 $zero 0x16            
addi $t4 $t4 0x01              
j 0x05
addi $t3 $t3 0x01             
j 0x03
addi $t1 $zero 0x00                    
j 0x19
sw $a0 0x00($s3)                  
sw $a1 0x00($s2)
j 0x10
nop                          
