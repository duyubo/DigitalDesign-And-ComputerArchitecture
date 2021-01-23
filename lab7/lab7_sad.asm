#
# Sum of Absolute Differences Algorithm
#
# Authors: 
#	X Y, Z Q 
#
#

.text


main:


# Initializing data in memory... 
# Store in $s0 the address of the first element in memory
	# lui sets the upper 16 bits of thte specified register
	# ori the lower ones
	# (to be precise, lui also sets the lower 16 bits to 0, ori ORs it with the given immediate)
	     lui	$s0, 0x0000 # Address of first element in the vector
	     ori	$s0, 0x0000
	     addi	$t0, $0, 5	# left_image[0]	
	     sw		$t0, 0($s0)
	     addi	$t0, $0, 16	# left_image[1]		
	     sw		$t0, 4($s0)
	     addi	$t0, $0, 7	# left_image[2]		
	     sw		$t0, 8($s0)
	     addi	$t0, $0, 1	# left_image[3]		
	     sw		$t0, 12($s0)
	     addi	$t0, $0, 1	# left_image[4]		
	     sw		$t0, 16($s0)
	     addi	$t0, $0, 13	# left_image[5]		
	     sw		$t0, 20($s0)
	     addi	$t0, $0, 2	# left_image[6]		
	     sw		$t0, 24($s0)
	     addi	$t0, $0, 8	# left_image[7]		
	     sw		$t0, 28($s0)
	     addi	$t0, $0, 10	# left_image[8]		
	     sw		$t0, 32($s0)
	     
	     addi	$t0, $0, 4	# right_image[1]		
	     sw		$t0, 36($s0)
	     addi	$t0, $0, 15	# right_image[2]		
	     sw		$t0, 40($s0)
	     addi	$t0, $0, 8	# right_image[3]		
	     sw		$t0, 44($s0)
	     addi	$t0, $0, 0	# right_image[4]		
	     sw		$t0, 48($s0)
	     addi	$t0, $0, 2	# right_image[5]		
	     sw		$t0, 52($s0)
	     addi	$t0, $0, 12	# right_image[6]		
	     sw		$t0, 56($s0)
	     addi	$t0, $0, 3	# right_image[7]		
	     sw		$t0, 60($s0)
	     addi	$t0, $0, 7	# right_image[8]		
	     sw		$t0, 64($s0)
	     addi	$t0, $0, 11	# right_image[9]		
	     sw		$t0, 68($s0)
	     
	     
	# TODO4: Loop over the elements of left_image and right_image
	
	addi $s1, $0, 0 # $s1 = i = 0
	addi $s2, $0, 9	# $s2 = image_size = 9
	addi $s3, $s1, 0 # init address of image 1
	mul $s4, $s2, 4 # init address of image 2
	addi $s5, $0, 18 
	mul $s5, $s5, 4 # sad_array address
	
loop:
	# Check if we have traverse all the elements 
	# of the loop. If so, jump to end_loop:
	beq $s1, $s2, end_loop
	# ....
	
	# Load left_image{i} and put the value in the corresponding register
	# before doing the function call
	# ....
	lw $a0, ($s3)
	# Load right_image{i} and put the value in the corresponding register
	# ....
	lw $a1, ($s4)
	
	# Call abs_diff
	jal  abs_diff
	# ....
	
	#Store the returned value in sad_array[i]
	# ....
	sw $v0, ($s5)
	
	# Increment variable i and repeat loop:
	addi $s1, $s1, 1
	addi $s3, $s3, 4
	addi $s4, $s4, 4
	addi $s5, $s5, 4
	# ...
	j loop
	
end_loop:

	#TODO5: Call recursive_sum and store the result in $t2
	#Calculate the base address of sad_array (first argument
	#of the function call)and store in the corresponding register   
	addi $a0, $0, 18 
	mul $a0, $a0, 4 # sad_array address
	# ...
	
	# Prepare the second argument of the function call: the size of the array
	addi $a1, $0, 9 #the size of the array
	#..... 
	
	# Call to funtion
	jal recursive_sum
	# ....
	  
	
	#Store the returned value in $t2
	addi $t2, $v0, 0 
	# .....
	

end:	
	j	end	# Infinite loop at the end of the program. 




# TODO2: Implement the abs_diff routine here, or use the one provided
abs_diff:
	addi $sp, $sp, -4 # make space on stack to store one register
	sw $t6, 0($sp) # save $t6 on stack
	
	sub $t6, $a0, $a1 # t6 = a0 - a1
	bge $a0, $a1, getresult
	sub $t6, $a1, $a0 # t6 = a1 - a0
getresult:
	addi $v0, $t6, 0 # put result in v0
		
	lw $t6, 0($sp) # restore $t6 from stack
	addi $sp, $sp, 4 # deallocate stack space
	jr $ra

# TODO3: Implement the recursive_sum routine here, or use the one provided
recursive_sum:
	
	addi $sp, $sp, -8 # make room on stack
	sw $a1, 4($sp) # store a1
	sw $ra, 0($sp) # store ra
	bne $a1, 0, else
	addi $v0, $0, 0 #v0 = 0
	#addi $sp, $sp, 8
	jr $ra
else:	
	addi $a1, $a1, -1 # a1 = a1 - 1
	jal recursive_sum # recursive call
 	lw $ra, 0($sp) # restore $ra
 	lw $a1, 4($sp) # restore $a1
 	addi $sp, $sp, 8 # restore $sp
 	
 	mul $t7, $a1, 4
 	add $t7, $t7, $a0 # get array[a1]
 	lw  $t7, ($t7) # t7 = get array[a1]
 	add $v0, $v0, $t7  # get sum of array[a1]
	jr $ra
