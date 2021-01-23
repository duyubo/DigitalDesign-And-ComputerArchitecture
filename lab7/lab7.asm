#
# Calculate sum from A to B.
#
# Authors: 
#	X Y, Z Q 
#
#

.text
main:
	#
	# Your code goes here...
	#the instructions I can ues: ADD, SUB, SLT, XOR, AND, OR, NOR, J, ADDI and BEQ
	# result saved in $t2
	addi $t1,$t2,13
	addi $t3,$t2,27
cal:	
	add $t2,$t1,$t2
	beq $t1,$t3,end
	add $t1,$t1,1
	j cal
	
	# Put your sum S into register $t2
end:	
	j	end	# Infinite loop at the end of the program. 
