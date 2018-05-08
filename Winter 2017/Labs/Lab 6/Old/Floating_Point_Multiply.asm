#Dillon Britt
#Lab 6 part 2
.data
message: .asciiz "\n1st number and second number : "
message2:.asciiz "\nSecond number : "
message_output: .asciiz "\nOutput : "

.text
main:
	addi $sp $sp -16
	swc1  $f0 -4($sp)
	swc1 $f1 -8($sp)
	swc1 $f2 -12($sp)
	
	li $v0, 4
	la $a0, message
	syscall
	#Enter in number 1 and 2
	li $v0, 6
	syscall
	mfc1 $v0 $f0
	mov.s $f1 $f0 
	#Enter in number 2
	li $v0, 6
	syscall
	mfc1 $v0 $f1
	
	#Arguments
	swc1 $f0 -4($s0)
	swc1 $f1 -8($s1)
	lw $a0 -4($s0)
	lw $a1 -8($s1)
	
	jal multiply 
	lw $a0 -4($s0)
	lw $a1 -8($s1)
	#Zero case only	
	
	lwc1 $f2 -12($s2)
	mov.s $f12 $f2
	li $v0 2
	syscall
	j main
	li $v0, 10
	syscall
#--------------------------------#

multiply:
	#Find the mantissa
	move $t0 $a0
	move $t1 $a1
	#abs $t2 $t0
	#abs $t3 $t1
	andi $t2, $t0, 0x007FFFFF
	addi $t2, $t2, 0x00800000
	andi $t3, $t1, 0x007FFFFF
	addi $t3, $t3, 0x00800000
	mult $t3 $t2 
	mfhi $t4
	andi $t4 $t4 0x00003fff
	sll $t4 $t4 9
	
	#Find the exponents
	andi $t5 $t0 0x7F800000
	srl $t5 $t5 23
	addi $t5 $t5 -127
	andi $t6 $t1 0x7F800000
	srl $t6 $t6 23
	addi $t6 $t6 -127
	andi $s3 $t2 0x00400000
	andi $s4 $t3 0x00400000
	
	beq $s2 $s3 done
		addi $t6 $t6 1
		srl $t4 $t4 1
	done:
	add $t7 $t6 $t5
	addi $t7 $t7 127
	
	sll $t7 $t7 23
	#Determin if it's-/+
	addi $t8 $zero 0x00000000
	bgt $t0 0 cont_1
		addiu $t8 $t8 0x80000000
		j cont_1
	cont_1:
	
	bgt $t1 0 cont_2
		addiu $t8 $t8 0x80000000
		j cont_2
	cont_2:
	
	#Concate binary
	add $t9 $t7 $t4
	add $t9 $t9 $t8
	
	
	#Zero case only	
	bne $t1 0 first_num_not_zero
		addi $t9 $zero 0
	first_num_not_zero:
	
	bne $t0 0 second_num_not_zero
		addi $t9 $zero 0
	second_num_not_zero:
	
	
	sw $t9 -12($s0)
jr $ra
