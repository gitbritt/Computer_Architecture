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
	
	#Find the exponents
		andi $t4 $t0 0x7F800000
		srl  $t4 $t4 23
		addi $t4 $t4 -127
		andi $t5 $t1 0x7F800000
		move $t9 $t5 
		srl  $t5 $t5 23
		addi $t5 $t5 -127
		
		#Determin which is the smallest exponent
			Smallest_exp:
			andi $t6 $t0 0x7fffffff
			andi $t7 $t1 0x7fffffff
			bgt $t6 $t7 other_small 
				move $t6 $t4 #Smaller 
				move $t7 $t5 #Bigger
				move $s3 $t2 #smaller mantissa number passed from arg
				andi $s3 $s3 0x007fffff
				move $s4 $t3 #Bigger Mantissa passed int
				andi $s4 $s4 0x007fffff
			j small_output
			other_small:
			move $t6 $t5 #Smaller
			move $t7 $t4 #Bigger
			move $s3 $t3 #smaller mantissa number passed from arg
			andi $s3 $s3 0x007fffff
			move $s4 $t2 #Bigger mantissa passed in
			andi $s4 $s4 0x007fffff
			j small_output
			small_output:
			addi $s4 $s4 0x00800000
			addi $s3 $s3 0x00800000
			#j done_temp
			#Smallest Exponent has been found between the two
			#Move the exponent of the smallest so it matches the exp of the largest
			move $s5 $zero
			exp_not_equal: 
			beq $t6 $t7 exp_equal
				addi $t6 $t6 1
				srl $s3 $s3 1 #Shifts smaller Mantassa to the right
			j exp_not_equal 	
			exp_equal:
			#Get the sign of the two inputs
			srl $t0 $t0 31
			srl $t1 $t1 31
		#Normalize
			
			add $s6 $s4 $s3
			
			#Makes is so it can accept a negative value
			#j done_temp
			normalizing:blt $s6 0x01000000 normalized
				addi $s5 $s5 1
				srl $s6 $s6 1
				j normalizing
			normalized:
			
			add $s5 $s5 $t6
			andi $s6 $s6 0x007FFFFF
			#j done_temp
		#Determin if it's-/+

			#j done_temp
		#Concate binary
			addi $s5 $s5 0x0000007F
			sll $s5 $s5 23
			add $t9 $s6 $s5
			add $t9 $t9 $t8
			#j done_temp
	#Zero case only	
	bne $t1 0 first_num_not_zero
		add $t9 $zero $t9
	first_num_not_zero:
	
	bne $t0 0 second_num_not_zero
		add $t9 $zero $t9
	second_num_not_zero:
	
	
	sw $t9 -12($s0)
	done_temp:
	move $v0 $s6
jr $ra
