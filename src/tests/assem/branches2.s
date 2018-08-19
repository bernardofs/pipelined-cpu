    addi $s2,$s2,0
    addi $v0,$v0,10

loop:
    beq $sp,$v0,exit
    addi $sp,$sp,1
    addi $s2,$s1, 3
	ori $s0, $s2, 31
	or $s0, $s0, $s2 # bitwise OR
    and $s1, $s0, $s2 # bitwise AND
	andi $s2, $s1, 63
	sll $s0, $s2, $v0 # logical shift left
	srl $s0, $s0, $v0 
    j $0,	loop  

exit:

	addi $s1,$s1,55
	sll $s0,$sp,$s1
	ori $s0,$sp,55