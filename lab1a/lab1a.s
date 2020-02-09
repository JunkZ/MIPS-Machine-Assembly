# Assignment: extend this program to reverse the string "intext"
# and write the result to "outtext".	

            .text
            .set noreorder
main:       
	la    $t1, intext	# t1 points to start of intext
	la    $t2, outtext	# t2 points to start of outtext
		
	li    $t0, 0		# t0 used to count characers
	bal seek_end
stop:	b     stop
seek_end:	
	lb    $t3, 0($t1)	# read character
	eq   $t3, 0, seek_end1	# check if 0 (end of string)
	addiu $t0, $t0, 1
	addiu $t1, $t1, 1
	b     seek_end

seek_end1:  addu  $t2, $t2, $t0	# t2 points to end of outtext
            sb    $t3, 0($t2)	# write 0 to terminate string
            la    $t1, intext	# t1 points to start of intext
	    addiu $t2, $t2, -1
newvars:addu $a0, $a0, $t1 	#Set our intext variable parameter as intext from above
	addu $a1, $a1, $t2 	#same for outtext
	addu $a2, $a2, $t0 	#same for count chars
	addi $a2, $a2, 1 	#turns out end string started in 1 "x" before desired string so we need to start counter from 1, not 0
	#Above needs to be seperate from rec calls or we get stuck forever
copy:	addiu $sp, $sp, -4 	#increase stack
	sw $31, 0($sp) 		# push return address into the new space
	addiu $sp, $sp, -4 	#increase stack
	sw $fp, 0($sp) 		# push old fp to point into the new space
	move $fp, $sp 		# establish new fp
	addiu $sp, $sp, -12 	#three rows of 4bit for space for the 3 vars needed	
save:
	sw $a0, -4($fp) 	#Save new intext to count down for each call into the stack
	sw $a1, -8($fp) 	#Same but for outtext
	sw $a2, -12($fp) 	#Need to save characters counted each call for the branch condition
  #    +-------------------+
  #    |charcount var a2   | -12($fp) <= $sp points here
  #    +-------------------+
  #    |outext var a1	   | -8($fp)
  #    +-------------------+
  #    |intext var a0	   | -4($fp)
  #    +-------------------+
  #    | old frame pointer |  0($fp) <= $fp points here
  #    +-------------------+
  #    |   return addr     |  4($fp)
  #  --+-------------------+--
  #    |                   |
  #    |  caller's stack   |
  #    |                   |

if:	bne $a2, $zero, else 	#only compare a2 to 0 now, when not zero continue
then:	b done 			#done time to go back up in stack
else:	#Below is like previous lab but this time every activation will give its own character
	lw $t1, -8($fp) 	#load outtext offset -8 from fp check diagram
	lw $t2, -4($fp) 	#load intext
	lb $t3, 0($t2) 		#load the letter
	sb $t3, 0($t1) 		#store the letter
	addiu $a0, $a0, 1 	#count up var intext for following activations
	addiu $a1, $a1, -1 	#count down outtext next bit
	addiu $a2, $a2, -1 	#countdown chars for condition
	bal copy 		#Branch and link address $31 to return afterwards to the origin.
done:	move $sp, $fp 		#sp points to old start so we can execute upwards in stack
	lw $fp, 0($sp) 		#load old fp
	addiu $sp, $sp, 4 	#next in stack
	lw $31, 0($sp) 		#load return address
	addiu $sp, $sp, 4 	#next in stack
	jr $31 			#Jump back to origin address in register to continue the activation


            .data
intext:		.string "!dlroW olleH"
            .align 4
outtext:	.string "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

