nop
li $8 500                     
li $11 1                       
beq $11 $8 0x13       
li $12 0                       
sub $13 0, $11
$12 $13 0x11        
addi $16 $12 1               
sll $16 $16 2                
addi $17 $16 4         
sub $18 $29 $16           
sub $19 $29 $17
lw  $4 0($18)                 
lw  $5 0($19)               
bgt $5 $4 0x15            
addi $12 $12 1              
j 0x05
addi $11 $11 1             
j 0x03
li $9 0                    
j 0x18
sw $4 0($19)                  
sw $5 0($18)
j 0x0F
nop                          
