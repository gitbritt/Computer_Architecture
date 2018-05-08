sound:
addi $a0 $a0 100
addi $a1 $a1 1000
addi $a2 $a2 34	
addi $a3 $a3 127

addi $t0 $0 0
loop:beq $t0 3 done
	addi $t0 $t0 1
	j loop
done:
li $v0 31
syscall