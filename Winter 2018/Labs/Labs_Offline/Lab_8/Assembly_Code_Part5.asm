#Adding stuff
addi $t0 $zero 5	#Ouptput = 5
addi $t1 $zero 5	#Ouptput = 5
addu $t2 $t0 $t1	#Output = 10
addiu $t3 $t2 5		#Output = 15



#AND stuff
and $t1 $t0 $t1		#Output = 5
andi $t2 $t1 15		#Output = 5
#Subtraction
sub $t6 $t0 $t1
subu $t6 $t0 10

#Branch stuff
beq1:beq $t2 10 beq1_done	#if t2 = 0, jump to done
	j beq2
beq1_done:
add $t0 $zero $0	#Line used for branch buffer
add $t0 $zero $0	#Line used for branch buffer
beq2:beq $t2 5 beq2_done
	j beq_both_done
beq2_done:
add $t0 $zero $0	#Line used for branch buffer
add $t0 $zero $0	#Line used for branch buffer
beq_both_done:



bne1:beq $t2 10 bne1_done	#if t2 = 0, jump to done
	j bne2
bne1_done:
add $t0 $zero $0	#Line used for branch buffer
add $t0 $zero $0	#Line used for branch buffer
bne2:beq $t2 5 bne2_done 
	j bne_both_done
bne2_done:
add $t0 $zero $0	#Line used for branch buffer
add $t0 $zero $0	#Line used for branch buffer
bne_both_done:

#Set less/greater than
slt $t4 $t0 $t3
slt $t4 $t3 $t0
slti $t4 $t3 100
slti $t4 $t3 3
sgt $t5 $t0 $t3
sgt $t5 $t3 $t0 

#jump and link stuff
jal function

sll $t6 $t0 1
sllv $t6 $t0 $t6
srl $t6 $t0 1
srlv $t6 $t0 $t6

#store and load word
sw $t6 -100
lw $t6 -100

#OR stuff
or $t6 $t0 $t1
ori $t6 $t6 15
lui $t0 10

li $v0 10
syscall

function:
jr $ra

