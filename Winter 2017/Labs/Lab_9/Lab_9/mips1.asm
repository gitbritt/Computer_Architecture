
lui $t0 0x8000
lw $t1 0($t0)
lw $t1 1($t0)
sw $t1 2($t0)
sw $t1 3($t0)
li $v0 10
syscall
