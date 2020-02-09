# lab 3 "interrupt handler".

	.section .ktext , "xa"
	.set noreorder
	
	# Read byte from I/O interrupt
    # This clears the interrupt
	li      $k0, 0xFFFF0000		
	lb      $k1, 4($k0)		

	# Clear Timer Interrupt
	li      $k0, 0xFFFF0010
	li      $k1, 0b101001
	sw      $k1, 0($k0)

	mfc0	$k1, $14
	nop
	jr      $k1
	rfe
