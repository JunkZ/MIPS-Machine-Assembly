# Assignment: extend this program to reverse the string "intext"
# and write the result to "outtext".	

            .text
            .set noreorder
main:       la    $t1, intext	# t1 points to start of intext
            la    $t2, outtext	# t2 points to start of outtext
		
            li    $t0, 0		# t0 used to count characers
seek_end:	lb    $t3, 0($t1)	# read character
            beq   $t3, 0, seek_end1 # check if 0 (end of string)
            addiu $t0, $t0, 1
            addiu $t1, $t1, 1
            b     seek_end
seek_end1:  addu  $t2, $t2, $t0	# t2 points to end of outtext
            sb    $t3, 0($t2)	# write 0 to terminate string
            la    $t1, intext	# t1 points to start of intext
copy:	lb $t4, 0($t1)
	beq $t4, 0, stop
	addi $t1,$t1,1
	sb $t4,0($t2)
	addi $t2,$t2,-1
	b  copy
#		 ... your code here ...
stop:		b     stop

            .data
intext:		.string "!dlroW olleH"
            .align 4
outtext:	.string "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

