		.text           # .text segment (code)
		.set noreorder	# necessary to avoid code optimization

		# replace ... with your own code to make it work

		# try single step, re-load, free-run, etc. to be sure how they work
		# for each instruction you run,	trace the paths from program
		# counter all the way to wb-reg / wb-data

		# Assigment 1:
		# assume we use $t0 for our varible "res"
		# compute res = 1 + 2 + 3

		li		$t0, 1		# constant 1
		addi		$t0, $t0, 2	# + 2 !EDITED!
		addi		$t0, $t0, 3	# + 3 !EDITED!


break1:		nop				# put 1st breakpoint here
	
		# Assigment 2:
		# assume we use $t1 for our varible "tmp"
		# code the following
		# tmp = res + 1
		# res = tmp - 2 (should compute to 5)

		addi $t1, $t0, 1		# "tmp = res + 1 !EDITED!
		subu   $t0, $t1, 2		# "res = tmp - 2 !EDITED!
			
break2:		nop				# put 2nd breakpoint here
	
		# Assigment 3:	
		# assume we would like to store "res" onto the heap (data) 
		# memory; "res" is 32 bit (word), hence "res_heap" should be 
		# the same size
		lw $a0, res_heap
		sw $t0, 0($a0)
	
break3:		nop				# put 3rd breakpoint here	

		# trace the paths from program counter all the way to data 
		# memory update, be sure to understand calculation of memory 
		# address (base+offset)

		# Assigment 4:	
		# compute "res = bytearr_heap[0]+bytearr_heap[1]+
		# bytearr_heap[2]+bytearr_heap[3]
		# using static base address + offsets
		la $a1, bytearr_heap
		li $t0,0 		# initialize accumulator for result, "set" maybe li?	
		lb $t2, 0($a1)
		add $t0, $t0, $t2
		lb $t2, 1($a1)
		add $t0, $t0, $t2
		lb $t2, 2($a1)
		add $t0, $t0, $t2 #needs another row
		lb $t2, 3($a1)
		add $t0, $t0, $t2
break4:		nop		# put 4th breakpoint here			

		# Assigment 5:	
		# compute "res = bytearr_heap[0]+bytearr_heap[1]+
		# bytearr_heap[2]+bytearr_heap[3]
		# using 0 offset and increasing base address
		la $a1, bytearr_heap
		li $t0,0	
		lb $t2, 0($a1)
		add $t0, $t0, $t2
		addi $a1, $a1, 1
		
		lb $t2, 0($a1)
		add $t0, $t0, $t2
		addi $a1, $a1, 1
		
		lb $t2, 0($a1)
		add $t0, $t0, $t2
		addi $a1, $a1, 1
		
		lb $t2, 0($a1)
		add $t0, $t0, $t2
		
break5:		nop

		# Assigment 6:	
		# compute "res = bytearr_heap[0]+bytearr_heap[1]+
		# bytearr_heap[2]+bytearr_heap[3]"
		# using a loop, use $t3 as a loop condition
		#		$t3 = 4
		# loop1:	...
		#		decrease $t3
		#		if ($t3 <> 0) goto loop1  
		la $a1, bytearr_heap
		li $t0, 0
		li $t3, 4
loop1:		lb $t2, 0($a1)
		add $t0, $t0, $t2
		addi $a1, $a1, 1
		addi $t3, $t3, -1 #subi does not work addi -1 instead?
		bgtz $t3, loop1 #some type of branch but not equal since only compares to t3, equal or less then 0? or no its supposted to break to loop to continue so its the opposite
		
break6:		nop				
		
		# Assigment 7:
		# use "bitmasking" to extract each byte from the word stored in
		# word_heap and compute the sum of the 4 bytes and store this in
		# res

		la $a1, word_heap
		lw $t2, 0($a1)
		li $t0, 0
		li $t3, 4
loop2:	and $t1, $t2, 0xff	# 0x000000FF = B 11111111 so must be and compare not or (or would just result in 11111111)
		add $t0, $t0, $t1
		SRL $t2, $t2, 8		# >> 8 bits 
		
		addi $t3, $t3, -1
		bgtz $t3, loop2
		
break7:		nop				

stop:		b stop
		
                .data   # .data segment
res_heap:       .word 0x00000000
bytearr_heap:	.byte 0
                .byte 1
                .byte 2
                .byte 3
word_heap:      .word 0x00010203

