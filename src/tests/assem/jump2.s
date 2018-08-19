addi $a0, $0, 1
j $s0, next
next:
j $s0, skip1
add $a0, $a0, $a0
skip1:
j $s0, skip2
add $a0, $a0, $a0
add $a0, $a0, $a0
skip2:
j $s0, skip3
loop:
add $a0, $a0, $a0
add $a0, $a0, $a0
add $a0, $a0, $a0
skip3:
j $s0, loop