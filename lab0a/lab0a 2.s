		.text           # .text segment (code)
		.set noreorder	# necessary to avoid code optimization

		# replace ... with your own code to make it work

		# try single step, re-load, free-run, etc. to be sure how they work
		# for each instruction you run,	trace the paths from program
		# counter all the way to wb-reg / wb-data

		# Assigment 1:
		# assume we use $t0 for our varible "res"
		# compute res = 1 + 2 + 3

#		li		$t0, 1		# constant 1
#		addiu		..., ..., 2	# + 2
#		addiu		..., ..., ...	# + 3


break1:		nop				# put 1st breakpoint here
	
		# Assigment 2:
		# assume we use $t1 for our varible "tmp"
		# code the following
		# tmp = res + 1
		# res = tmp - 2 (should compute to 5)

#		addiu ..., ..., 1		# "tmp = res + 1
#		...   ..., ..., ...		# "res = tmp - 2
			
break2:		nop				# put 2nd breakpoint here
	
		# Assigment 3:	
		# assume we would like to store "res" onto the heap (data) 
		# memory; "res" is 32 bit (word), hence "res_heap" should be 
		# the same size
#		... $a0, res_heap
#		... $t0, 0(...)
	
break3:		nop				# put 3rd breakpoint here	

		# trace the paths from program counter all the way to data 
		# memory update, be sure to understand calculation of memory 
		# address (base+offset)

		# Assigment 4:	
		# compute "res = bytearr_heap[0]+bytearr_heap[1]+
		# bytearr_heap[2]+bytearr_heap[3]
		# using static base address + offsets
#		... $a1, bytearr_heap
#		... $t0,0 		# initialize accumulator for result	
#		... $t2, ...(...)
#		... $t0, $t0, $t2
#		... $t2, ...(...)
#		... ..., ..., ....
#		... $t2, ...(...)
#		... ..., ..., ....
	
break4:		nop		# put 4th breakpoint here			

		# Assigment 5:	
		# compute "res = bytearr_heap[0]+bytearr_heap[1]+
		# bytearr_heap[2]+bytearr_heap[3]
		# using 0 offset and increasing base address
#		... $a1, bytearr_heap
#		... $t0,0	
#		... $t2, 0(...)
#		... $t0, $t0, $t2
#		... $a1, ..., ....
		
#		... $t2, 0(...)
#		... $t0, $t0, $t2
#		... $a1, ..., ....
		
#		... $t2, 0(...)
#		... $t0, $t0, $t2
#		... $a1, ..., ....
		
#		... $t2, 0(...)
#		... $t0, $t0, $t2
		
break5:		nop

		# Assigment 6:	
		# compute "res = bytearr_heap[0]+bytearr_heap[1]+
		# bytearr_heap[2]+bytearr_heap[3]"
		# using a loop, use $t3 as a loop condition
		#		$t3 = 4
		# loop1:	...
		#		decrease $t3
		#		if ($t3 <> 0) goto loop1  
#		... $a1, bytearr_heap
#		... $t0, 0
#		... $t3, 4
#loop1:		... $t2, 0(...)
#		... $t0, $t0, $t2
#		... $a1, $a1, ...
#		... $t3, $t3, ...
#		... $t3, loop1
		
break6:		nop				
		
		# Assigment 7:
		# use "bitmasking" to extract each byte from the word stored in
		# word_heap and compute the sum of the 4 bytes and store this in
		# res

#		... $a1, word_heap
#		... $t2, 0($a1)
#		li $t0, 0
#		li $t3, 4
#loop2:	... $t1, $t2, 0xff	# 0x000000FF
#		... $t0, $t0, $t1
#		... $t2, $t2, 8		# >> 8 bits 
		
#		... $t3, $t3, ...
#		... $t3, loop2
		
break7:		nop				

stop:		b stop
		
                .data   # .data segment
res_heap:       .word 0x00000000
bytearr_heap:	.byte 0
                .byte 1
                .byte 2
                .byte 3
word_heap:      .word 0x00010203

