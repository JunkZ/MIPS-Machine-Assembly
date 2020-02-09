# ----------------------------------------------------------
#  Group 55's "underlag" for Lab 1
#  Pseudo-instructions may be used for Lab 1.
# ----------------------------------------------------------
 
 
 
# Group 55's Codeword Generator Subroutine (pseudocode)
#  (remember:  "seed" is a global variable, UNSIGNED INTEGER;
#              you may implement local variables in registers or on the stack;
#              result returned in v0; preserve all except t regs)
#
# FUNCTION codgen(): UNSIGNED INTEGER;
#  LOCAL SIGNED INTEGER   n;
#  LOCAL UNSIGNED INTEGER x, y;
#  BEGIN
#    n := [right-justify the five bits "seed"<24:20>, and zero-extend];
#   WHILE (n >= 0) LOOP
#    x := [rotate "seed" left by 17 bits];
#    y := [divide "seed" (unsigned !) by the constant 2];
#    seed := x + y;  [ignore overflow condition]
#    n  :=  n - 1;
#   ENDLOOP;
#   RETURN( seed XOR 0x66aea94d );
#  END;
# 
# hint:  if "seed" is initialized to 0x6e81bc02,
#        the first five calls will generate these values:
#        0xe7b60851, 0x46a4a50f, 0x4e27ef78, 0x8c392d24, 0x97b53708, ...
# your code is to be written farther down (see comment below).
 
 
# Group 55's Recursive Decoding Subroutine (pseudocode)
#  (for "decode", all four local variables must be implemented ON THE
#              STACK, and NOT in registers; implement the code literally,.
#              no optimizations.  We're trying to teach you something.
#   remember:  result returned in v0; preserve all except t regs)
#
# FUNCTION decode( wordarr, bytearr ): UNSIGNED INTEGER;
#    (wordarr, bytearr passed by reference)
#  LOCAL UNSIGNED INTEGER m, r, x, y;
#  BEGIN
#    x := ONE'S-COMPLEMENT of codgen();
#    IF ([contents of word at "wordarr"] = 0) THEN  
#      [byte pointed to by "bytearr"] := 0;
#      r := x;
#    ELSE
#      y := decode( wordarr+, bytearr+ );  # "k+" means "successor in k"
#      m := ( x - y ) - [contents of word at "wordarr"];
#      [byte pointed to by "bytearr"] := [the eight bits at "m"<18:11>];
#      r := TWO'S-COMPLEMENT OF codgen();
#      r := x + y + m + r + 5;
#    ENDIF;
#    RETURN( r );
#  END;
 
 
# ----------------------------------------------------------
# The following are the ONLY lines that may appear in the
# ".data" section of the code.  You may add NO other lines.
# NO additional global variables.
# ----------------------------------------------------------
 
 
	.data
plain:	.space	78		# room for 78 characters
 
	.align 4
seed:	.word    0		# 32-bit UNSIGNED INTEGER.
 
abc:	.word	0x0e78c180	# string "abc", encoded
	.word	0xf0526f62
	.word	0x801961e1
	.word	    0
coded:	.word	0x4fa4c1a8	# the real encoded data
	.word	0x2fd13f3f
	.word	0x0a72e87f
	.word	0x5a794000
	.word	0xaf9ef62d
	.word	0x607c8c4c
	.word	0xb3a623d8
	.word	0x0c4d27b9
	.word	0xa42bfc7d
	.word	0xb9278f45
	.word	0xde945a58
	.word	0xe6d14e20
	.word	0x405659ac
	.word	0x9c149ec4
	.word	0x5640c877
	.word	0x19f6299b
	.word	0xb3f9e2af
	.word	0x24d1ad27
	.word	0xac9f8eb2
	.word	0x11e81fb0
	.word	0x29009597
	.word	0x270526d9
	.word	0x06430115
	.word	0x2dbf732d
	.word	0xc577a205
	.word	0xa5e57078
	.word	0x35b54bd2
	.word	0xe9f49fc6
	.word	0x5cce7d3f
	.word	0xfb64bbb3
	.word	0x056d7659
	.word	0x0826ce33
	.word	0x34602f8e
	.word	0xc944f521
	.word	0x0766c3fa
	.word	0xb5274462
	.word	0x9a5a28f9
	.word	0x285bd203
	.word	0x412530c4
	.word	0x7c123bca
	.word	0xf55f159d
	.word	0x58f1e1c3
	.word	0x73075881
	.word	0x4d740c9a
	.word	0x22277046
	.word	0x1666ebe9
	.word	0xb582b5e8
	.word	0xe4b38740
	.word	0x294b44a5
	.word	0x33d28c6f
	.word	0x5c56ace5
	.word	0x544dbb4b
	.word	0xd8cb0219
	.word	0xaa67e087
	.word	0xd7ac3fb0
	.word	0xe2c864ab
	.word	0xf31fc83b
	.word	0xf315b25d
	.word	0xacf203dd
	.word	0x49506efd
	.word	0xabb08094
	.word	0xfd3e6021
	.word	0x277d2fc1
	.word	0x89e44930
	.word	0x3fd14dd0
	.word	0x4a689da6
	.word	0x13f29094
	.word	0xd048bb2f
	.word	0x9deb8062
	.word	0xcfd07c62
	.word	0xda33410c
	.word	0x7e725321
	.word	0x59deda87
	.word	0xa68373ea
	.word	0xe9ff9feb
	.word	0xd8900d5f
	.word	0x97a79b36
	.word	    0
 
 
# ----------------------------------------------------------
# The following is the main program.  You may not change this.
# You may only add your subroutines AFTER the "infinite end loop" instruction here.
# You MUST have two subroutines named "codgen" and "decode".
# BOTH must adhere to our calling conventions; 
# both MUST preserve all registers except v-regs and t-regs;
# we are going to TEST for this when we run your code.
# ----------------------------------------------------------
 
 
	.text
	.set noreorder
main:	li	$s0, 0x4403ec7f	# initialize "seed"
	la	$s1, seed	# initialize "seed"
	sw	$s0, 0($s1)
	la	$a0, coded	# address of start of coded words
	la	$a1, plain	# address of start of decoded bytes
	bal	   decode	# outer call to recursive "decode"
	nop
end:
	b       end             # infinite loop; plaintext now in "plain".
	nop
# ----------------------------------------------------------
#	CYCLES PIPELINED VS NON-PIPED
# ----------------------------------------------------------
# Cycles when not piped (lab1b) = 25333
# Cycles when piped (lab2 this file) = 28122
#FORMULA : SPEED-UP = 4 * (25333/28354) = ~3.603
#The only NOPs (unless I missed one) should be the required ones on 
#branch. Since I moved around instructions to prevent every hazard 
#with load and R-type. So except for the startup/ending waste I think the main reason for not an exactly 4 speed up
#is the nops adding cycles after the branches, which I could probably improve.
# ----------------------------------------------------------
#	WITH INTERRUPTS
# ----------------------------------------------------------
# Cycles with timed interrupts = 28437
# Cycles with timed interrupts and while typing into input = 28801
# The extra cycles should be because of the timed interrupt part will run again when it detects an input
# ----------------------------------------------------------
# Group 55's assembly code for Function CodGen :
# ----------------------------------------------------------


  #    +-------------------+
  #    | old frame pointer |  0($fp) <= $fp/$sp points here
  #    +-------------------+
  #    |  return addr      |  4($fp)
  #  --+-------------------+--
  #    |                   |
  #    |  caller's stack   |
  #    |                   |

codgen: addiu $sp, $sp, -4 	#increase stack
	sw $31, 0($sp) 		# push return address into the new space
	addiu $sp, $sp, -4 	#increase stack
	sw $fp, 0($sp) 		# push old fp to point into the new space
	lw $t0, 0($s1)  	#get value of seed
	move $fp, $sp 		# establish new fp
	sll $t1, $t0, 7 	#<32,24>
	srl $t1, $t1, 27 	#<5,0>, n = seed 24:20

loop:
	sll $t7, $t0, 0x11 	#ROL part 1
	srl $t3, $t0, 1 	#y gets seed shifted once to divide by 2
	srl $t2, $t0, 0xf 	#ROL part 2
	addiu $t1, $t1, -1 #	n = n - 1
	or $t2,$t2,$t7 		#ROL part 3

	addu $t0, $t2, $t3 	#seed = x + y
	sw $t0, 0($s1) 		#update seed

	bgez $t1, loop
	nop
done:
	lw $fp, 0($sp) 		#load old fp
	addiu $sp, $sp, 4 	#next in stack
	lw $31, 0($sp) 		#load return address
	addiu $sp, $sp, 4 	#next in stack
	lui $t7,0x66ae
	ori $t7,$t7,0xa94d
	xor $v0, $t0, $t7  	#set return seed XOR 0x66aea94d
	jr $31 			#Jump back to origin address in register to continue the activation

# ----------------------------------------------------------
# Group 55's assembly code for Function DeCode :
# ----------------------------------------------------------

	
   #    +------------------------+
   #    |          y ($t3)       | -24($fp) <= $sp points here
   #    +------------------------+
   #    |          x ($t2)       | -20($fp)
   #    +------------------------+
   #    |          r ($t1)       | -16($fp) 
   #    +------------------------+
   #    |          m ($t0)       | -12($fp)
   #    +------------------------+
   #    |      bytearr ($a1)     | -8($fp)
   #    +------------------------+
   #    |      wordarr ($a0)     | -4($fp)
   #    +------------------------+
   #    |    old frame pointer   |  0($fp) <= $fp points here
   #    +------------------------+
   #    |     our return addr    |  4($fp)
   #    +------------------------+
   #    |                        |
   #    |     caller's stack     |
   #    |________________________|

decode: addiu $sp, $sp, -4 	#increase stack
	sw $31, 0($sp) 		# push return address into the new space
	addiu $sp, $sp, -4 	#increase stack
	sw $fp, 0($sp) 		# push old fp to point into the new space
	move $fp, $sp 		# establish new fp
	bal codgen 		# get return value from codegen for x
	addiu $sp, $sp, -24 	#space for 6 rows of variables
	nor $t2, $v0, $zero 	# x gets inverted codegen value for ones complement
	sw $a0, -4($fp) 	#save wordarr to stack
	sw $t2, -20($fp) 	# save x to stack
    	sw $a1, -8($fp) 	#save bytearr to stack
if:
	lw $t4, 0($a0) 		#load word at wordarray
	sb $zero, 0($a1) 	#byte pointed to by bytearr := 0 also saves a NOP
	bne $t4, $zero, else #	branch to else if word arr does not equal 0
	sw $t2,-16($fp) 	# r:= x
	b endif 		#done
	nop
else:
	addiu $a0, $a0, 4 	#wordarr+
	bal decode 		#recursive decode(wordarr+,bytearr+)
	addiu $a1, $a1, 1 	#bytearr+
	lw $t2, -20($fp)	#load x
	lw $t4, -4($fp) 	#load word arr address
	move $t3, $v0 		#y = return of decode
	subu $t0, $t2, $t3 	# m = x - y
	lw $t5, 0($t4) 		#load content at wordarray
	sw $t3, -24($fp) 	#store y on stack
	subu $t0, $t0, $t5 	# m = m - content at wordarray
	sw $t0, -12($fp) 	# store m on stack
	sll $t0, $t0, 13 	# shift to <32:18>
	lw $t6, -8($fp) 	# load bytearr address
	srl $t0, $t0, 24 	# get <8:0>, "m"<18,11>
	

	bal codgen 		# get return from codegen
	sb $t0, 0($t6) 		# store m<18:11> to what bytearr points at
	nor $t1, $v0, $zero 	# r gets twos complement by inverting...
	addiu $t1, $t1, 1 	# ...and adding +1
	lw $t2, -20($fp) 	#load x
	lw $t3, -24($fp) 	#load y
	lw $t0, -12($fp) 	#load m (before "m"<18:11>)
	addu $t1, $t1, $t2 	# r = r + x
	addu $t1, $t1, $t3 	# r = r + y
	addu $t1, $t1, $t0 	# r = r + m
	addiu $t1, $t1, 5 	# r = r + 5
	sw $t1, -16($fp) 	#store r to stack

endif:
	lw $t1, -16($fp) #get r
	move $sp, $fp #sp points to old start so we can execute upwards in stack
	lw $fp, 0($sp) #load old fp
	move $v0, $t1 #return r
	addiu $sp, $sp, 4 #next in stack
	lw $31, 0($sp) #load return address
	addiu $sp, $sp, 4 #next in stack
	jr $31 #Jump back to origin address in register to continue the activation
# end of file.

