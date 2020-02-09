# First section:  user data,
# each process has its own "private" area.

        .data        
glob1:  .byte   'A'
        .space  999
glob2:  .byte   '0'
        .space  999
glob3:  .byte   'a'
        .space  999

# Second section: user code.
#
# The first instructions initializes IO and Timer.
# The last instruction in main are only used for start
# up, they initialize the first process.

        .text
        .set noreorder
main:
        li   	 $t0, 0xFFFF0010   	# address to Timer registers:
                                	# +0: Timer control register
                                	# +4: Timer count register
                                	# +8: Timer compare register

        li   	 $t1, 0
        sw   	 $t1, 4($t0)      	# reset counter register

        li   	 $t1, 63          	# count from 0 to 63
        sw   	 $t1, 8($t0)      	# compare register := 63

        li   	 $t1, 0b101001    	# "101001": compare interrupt enable,
                               		#           compare reset enable,
                                	#           timer start
        sw   	 $t1, 0($t0)      	# control register := "101001"

        li   	 $t0, 0xFFFF0000  	# address to I/O registers:
                               		# +0: Input control register
 
        li   	 $t1, 0b10        	# "10": interrupt enable
        sw   	 $t1, 0($t0)      	# control register := "10"

        li   	 $t0, 0x0C03      	# enable HW Interrupt 1 (input): bit 11
                               		# enable HW Interrupt 0 (timer): bit 10
                               		# set user mode:     bit 1
                               		# enable interrupts: bit 0

        mtc0  	$t0, $12         	# CP0 status := 0x0C03

        la    	$gp, glob1       	# dirty setup for process 1

proc1:  # ++++++++++ first process +++++++++

        # Description: proc1 reads the byte stored at 0($gp),
        # prints it, increments to the next character,
        # saving that back into 0($gp).  After printing 'Z',
        # this process should then start over again with 'A', in
        # an endless loop.  The symbol "glob1" may not be used.

	lb 	$a0, 0($gp) 		#load character and set to a0 as an argument for kernel
loop:	li 	$v0, 0x102 		#Set kernel service value for output
	SYSCALL 			#Call Kernel to do output
	addiu 	$a0, $a0, 1 		#Count to next char
	li	$t6, 91			#Init branch condition if char variable is 91 aka 'Z' has been written
	beq 	$a0, $t6, done 		#End loop if branch condition above is true
	nop
	j 	loop	 		#else keep looping
	nop
done:
	li 	$a0, 65 		#Reset counter to A
        j 	proc1
        nop


proc2: # ++++++++++ second process +++++++++

        # Description: almost identical to the code of proc1 above,
        # only 2-3 lines should differ.  Prints '0' through '9' in
        # an endless loop. The symbol "glob2" may not be used.

	lb 	$a0, 0($gp) 		#load character and set to a0 as an argument for kernel
loop2:	li 	$v0, 0x102 		#Set kernel service value for output
	SYSCALL 			#Call Kernel to do output
	addiu 	$a0, $a0, 1 		#Count to next char
	li 	$t6,58			#Init branch condition if char variable is 58 aka '9' has been written
	nop
	beq 	$a0, $t6, done2 	#End loop if branch condition above is true
	j 	loop2	 		#else keep looping
	nop
done2:
	li 	$a0, 48 		#Reset counter to 0
        j proc2
        nop


proc3:  # +++++++++ third process ++++++++++

        # Description: almost identical to the code of proc1 above,
        # only 2-3 lines should differ.  Prints 'a' through 'z' in
        # an endless loop. The symbol "glob3" may not be used.

	lb	 $a0, 0($gp) 		#load character and set to a0 as an argument for kernel
loop3:	li 	$v0, 0x102 		#Set kernel service value for output
	SYSCALL 			#Call Kernel to do output
	addiu 	$a0, $a0, 1 		#Count to next char
	li	$t6,123			#Init branch condition if char variable is 123 aka 'z' has been written
	beq	$a0, $t6, done3 	#End loop if branch condition above is true
	nop
	j 	loop3	 		#else keep looping
	nop
done3:
	li 	$a0, 97 		#Reset counter to a
        j 	proc3
        nop

# Third section: data structures for the kernel:
# Process Control Block (PCB) consists of three words:
# pcb: .word  (next Program Counter for this process)
#      .word  (contents of $gp for this process)
#      .word  (contents of $sp for this process)
# All other context is saved on the process' own stack
# during exception handling and SYSCALL.

        .section .kdata
curpcb: .word  pcb1
pcb1:   .word  0, 0, 0
pcb2:   .word  proc2, glob2, 0x7fffbf94
pcb3:   .word  proc3, glob3, 0x7fff7f94

# Fourth section: kernel code.

        .section .ktext , "xa"
        .set noreorder

kernel_loop:

	#Cause conditions..

	mfc0	$t3, $13		#Load Cause reg
	li 	$t4, 0xFFFF0000		#Init address
	sll	$t5, $t3, 16		#T5 = Cause[32:15]
	srl	$t5, $t5, 21		#T5 = Cause[15:10] for source of interuppt
	sll	$t6, $t5, 5		#T6 = [15:15]
	srl	$t6, $t6, 10		#T6 = [10:10] = 1 if timer interrupt
	sll	$t3, $t3, 26		#Cause[32:5]
	srl	$t3, $t3, 28		#Cause[5:2] for the exception code
	bne	$t3, 8, NotSys		#If not a SYSCALL goto check for external interrupt
	nop
	beq	$v0, 0x102, continue	#If value indicating output is correct; continue	
	nop
	rfe				#else go back to user
continue:
	mfc0	$k1, $14		#Load EPC address which will where we return after kernel
	sb	$a0, 8($t4)		#Writing the character we sent through to kernel via a0
	addiu	$k1, $k1, 4		#Return address +4, to count into next PC instruction
	jr	$k1			#Jump back to next PC instruction after SYSCALL
	rfe				#Return control to user
	nop
NotSys:
	bne	$t3, 0, kernel_end	#If its not external exception either we end
	nop				#But if it is...
	bne	$t6, 1, kernel_end	#..if its not a timer; end...
	nop				#...else its a timer and continue.

	li      $k0, 0xFFFF0000		#Following is clear timer from lab2...
	lb      $k1, 4($k0)		
	li      $k0, 0xFFFF0010
	li      $k1, 0b101001
	sw      $k1, 0($k0)		#.... done

	#..updating PCB..

	la	$k1, curpcb		#load the current pcb address
	lw	$k0, 0($k1)		#load pcb content (pointer)
	mfc0	$k1, $14		#load EPC
	sw	$gp, 4($k0)		#store gp during mfc0 pipe
	sw 	$k1, 0($k0)		#store epc
	

	#..storing to stack of the process..

	addiu	$sp, $sp, -108		#space for 27 variables (ra,fp,sx,tx,ax,v,at*4=108)
	sw	$sp, 8($k0)		#store sp into pcb too

	sw 	$ra, 0($sp)		#store all regs
	sw 	$fp, 4($sp)
	sw 	$s0, 8($sp)
	sw 	$s1, 12($sp)
	sw 	$s2, 16($sp)
	sw 	$s3, 20($sp)
	sw 	$s4, 24($sp)
	sw 	$s5, 28($sp)
	sw 	$s6, 32($sp)
	sw 	$s7, 36($sp)
	sw 	$t0, 40($sp)
	sw 	$t1, 44($sp)
	sw 	$t2, 48($sp)
	sw 	$t3, 52($sp)
	sw 	$t4, 56($sp)
	sw 	$t5, 60($sp)
	sw 	$t6, 64($sp)
	sw 	$t7, 68($sp)
	sw 	$t8, 72($sp)
	sw 	$t9, 76($sp)
	sw 	$a0, 80($sp)
	sw 	$a1, 84($sp)
	sw 	$a2, 88($sp)
	sw 	$a3, 92($sp)
	sw 	$v0, 96($sp)	
	sw 	$v1, 100($sp)
	.set noat
	sw 	$at, 104($sp)
	.set at

	#..updating curpcb, changing process..

	la 	$k1, pcb3		#load pcb3 as condition for reset
	bne	$k0, $k1,nextpcb	#if not pcb3 jump over reset
	nop
	la 	$k0, pcb1		#reset by setting first process
	j load				#now that we reset skip the next pcb below
	nop
nextpcb:
	addiu 	$k0, $k0,12		#next pcb
load:
	la	$k1, curpcb		#load the current pcb address
	sw 	$k0, 0($k1)		#store new pcb we got above

	#..loading back stack...

	lw 	$k1, 0($k0)		#load epc
	lw 	$gp, 4($k0)		#load gp
	lw 	$sp, 8($k0) 		#loaded sp -108
	lw 	$ra, 0($sp)		#load all variables
	lw 	$fp, 4($sp)
	lw 	$s0, 8($sp)
	lw 	$s1, 12($sp)
	lw 	$s2, 16($sp)
	lw 	$s3, 20($sp)
	lw 	$s4, 24($sp)
	lw 	$s5, 28($sp)
	lw 	$s6, 32($sp)
	lw 	$s7, 36($sp)
	lw 	$t0, 40($sp)
	lw 	$t1, 44($sp)
	lw 	$t2, 48($sp)
	lw 	$t3, 52($sp)
	lw 	$t4, 56($sp)
	lw 	$t5, 60($sp)
	lw	$t6, 64($sp)
	lw 	$t7, 68($sp)
	lw 	$t8, 72($sp)
	lw 	$t9, 76($sp)
	lw 	$a0, 80($sp)
	lw 	$a1, 84($sp)
	lw 	$a2, 88($sp)
	lw 	$a3, 92($sp)
	lw 	$v0, 96($sp)	
	lw 	$v1, 100($sp)
	.set noat
	lw 	$at, 104($sp)
	.set at

	#..done going to new process and giving user control.

	j	$k1		#end, go back to user process
	rfe			#during pipe

kernel_end:
        b kernel_end
        nop
