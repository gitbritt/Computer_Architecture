.text
.globl main

main:   



li $v0,31
la $a0,beep
lw $a0 0($a0)
addi $t2,$a0,12
la $a1,duration
lw $a1, 0($a1)

move $t2,$a0
move $t3,$a1

syscall


.data

beep: .byte 72
duration: .byte 100
volume: .byte 127