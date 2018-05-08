#Dillon Britt
#Lab 6 part 2
.data
message: .asciiz "\n1st number and second number : "
message2:.asciiz "\nSecond number : "
message_output: .asciiz "\nOutput : "

.text
main:
	addi $sp $sp -16
	swc1  $f0 4($sp)
	swc1 $f1 8($sp)
	swc1 $f2 12($sp)
	
	li $v0, 4
	la $a0, message
	syscall
	#Enter in number 1 and 2
	li $v0, 6
	syscall
	mfc1 $v0 $f0
	mov.s $f1 $f0 
	#Enter in number 2
	li $v0, 4
	la $a0, message2
	syscall	
	li $v0, 6
	syscall
	mfc1 $v0 $f1
	
	#Arguments
	swc1 $f0 -4($s0)
	swc1 $f1 -8($s1)
	lw $a0 -4($s0)
	lw $a1 -8($s1)
	
	jal addition 
	lw $a0 -4($s0)
	lw $a1 -8($s1)
	#Zero case only	
	
	lwc1 $f2 -12($s2)
	mov.s $f12 $f2
	li $v0 2
	syscall
	#j main
	li $v0, 10
	syscall
#--------------------------------#

addition:
	
	#Find the mantissa
	move $t0 $a0
	move $t1 $a1
	andi $t2, $t0, 0x007FFFFF
	addi $t2, $t2, 0x00800000
	andi $t3, $t1, 0x007FFFFF
	addi $t3, $t3, 0x00800000
	sll $t2 $t2 8
	sll $t3 $t3 8
	#j done_temp
	
	#Find the exponents
		andi $t4 $t0 0x7F800000
		srl  $t4 $t4 23
		addi $t4 $t4 -127
		andi $t5 $t1 0x7F800000
		srl  $t5 $t5 23
		addi $t5 $t5 -127
		#Determin which is the smallest exponent
			Smallest_exp:
			bgt $t4 $t5 other_small 
				move $t6 $t4 #Smaller 
				move $t7 $t5 #Bigger
			j small_output
			other_small:
			move $t6 $t5 #Smaller
			move $t7 $t4 #Bigger
			j small_output
			small_output:
		#Smallest Exponent has been found between the two
		#Move the exponent of the smallest so it matches the exp of the largest
			
			exp_not_equal: 
			#beq $t6 $t7 exp_equal 
			#	addi $t8 $t8 1
			#	sll $t6 $t6 1
			#j exp_not_equal 
			
			exp_equal:
			
		j done_temp
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

		
	done_temp:
	#Zero case only	
	bne $t1 0 first_num_not_zero
		addi $t9 $zero 0
	first_num_not_zero:
	
	bne $t0 0 second_num_not_zero
		addi $t9 $zero 0
	second_num_not_zero:
	
	
	sw $t9 -12($s0)
jr $ra
