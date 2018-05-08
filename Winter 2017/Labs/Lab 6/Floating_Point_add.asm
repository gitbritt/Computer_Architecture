#Dillon Britt
#Lab 6 part 2
.data
message: .asciiz "\n1st number : "
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
	#Check to see if just zero input
	addu $t0 $a0 $a1
	
	
	beq $t0 0 both_zero
	jal addition 
	
	lw $a0 -4($s0)
	lw $a1 -8($s1)
	
	li $v0 4
	la $a0 message_output
	syscall
	
	lwc1 $f2 -12($s2)
	j not_zero
	both_zero:
	andi $t0 $t0 0
	l.s $f2 -4($t0)
	not_zero:
	mov.s $f12 $f2
	li $v0 2
	syscall
	
	j main
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
			bne $t0 $t1 not_same_sign
			same_sign:
			add $s6 $s4 $s3
			j normalize
			
			not_same_sign:
			sub  $s6 $s4 $s3
			beq $s6 0 $t1_sign
			#Normalize
			normalize:
			move $s7 $s6
			
			normalizing_negative:bgt $s7 0x00800000 normalizing_positive
				sll $s7 $s7 1
				addi $s5 $s5 1
				j normalizing_negative
			normalizing_positive:blt $s6 0x01000000 continue_normalizing
				addi $s5 $s5 1
				srl $s6 $s6 1
				j normalizing_positive
			continue_normalizing:
			move $t8 $s5
			beq $t0 $t1 exp_add
			exp_addup:
			beq $t0 0 exp_next
				move $s6 $s7
				sub $s5 $t7 $t8
				j exp_no_sub
			exp_next:
			beq $t1 0 exp_add
				move $s6 $s7
				sub $s5 $t7 $t8
				j exp_no_sub
			exp_add:
				add $s5 $t8 $t7
			exp_no_sub:
			
			bne $s6 0x01000000 fix_numbers
				addi $s5 $s5 1
			fix_numbers:
			
			addi $s5 $s5 127
			sll $s5 $s5 23
			andi $s7 $s7 0x007FFFFF
			andi $s6 $s6 0x007FFFFF
			andi $t8 $t8 0
			#Determin if it's-/+ output
				bne  $t0 1 $t0_sign 
				bne $s4 $t2 $t0_sign
				bne  $t7 $t4 $t0_sign 
				andi $t8 $t8 0
				addi $t8 $t8 0x80000000	
				$t0_sign:
				bne $t1 1 $t1_sign
				bne $s4 $t3 $t1_sign
				bne  $t7 $t5 $t1_sign 
				andi $t8 $t8 0
				addi $t8 $t8 0x80000000
				$t1_sign:
				#If the same values are being passed in, but different signs, output is zero alwayse, ex : -7 + 7 = 0
				beq $t0 $t1 sign_check_for_abs
				bne $t3 $t2 sign_check_for_abs
				bne $t5 $t4 sign_check_for_abs
				andi $t8 $t8 0
				andi $s6 $s6 0
				andi $s5 $s5 0
				sign_check_for_abs:
			#Concate binary
			add $t9 $s6 $s5
			add $t9 $t9 $t8
			
			
	sw $t9 -12($s0)
	done_temp:
	move $v0 $s6
jr $ra
