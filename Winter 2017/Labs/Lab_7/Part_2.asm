start: addi $t0, $zero, 10
add $t1, $zero, $zero
loop:beq $t0, $zero, exit
	addi $t0, $t0, -1
	j loop
exit: j start
