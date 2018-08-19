add $4, $0, $0
addi $1, $1, 10
loop: slt $2, $4, $1 
beq $2, $0, end 
lui 0x34 
ori $2, $2, 0x38 
addi $6, $6, 2
sll $3, $4, $6
add $2, $2, $3 
sh $0, 0($2) 
addi $4, $4, 1 
beq $0, $0, loop 
end:
	add $0, $0, $s0