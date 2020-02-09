	.section .mdebug.abi32
	.previous
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.globl	coded
	.section	.data,"aw",@progbits
	.align	2
	.type	coded, @object
	.size	coded, 312
coded:
	.word	1336197544
	.word	802242367
	.word	175302783
	.word	1517895680
	.word	-1348536787
	.word	1618775116
	.word	-1280957480
	.word	206383033
	.word	-1540621187
	.word	-1188589755
	.word	-560702888
	.word	-422490592
	.word	1079400876
	.word	-1676370236
	.word	1447086199
	.word	435562907
	.word	-1275469137
	.word	617721127
	.word	-1398829390
	.word	300425136
	.word	687904151
	.word	654649049
	.word	105054485
	.word	767521581
	.word	-982015483
	.word	-1511690120
	.word	901073874
	.word	-369844282
	.word	1557036351
	.word	-77284429
	.word	91059801
	.word	136760883
	.word	878718862
	.word	-918227679
	.word	124175354
	.word	-1255717790
	.word	-1705367303
	.word	677106179
	.word	1092956356
	.word	2081569738
	.word	-178317923
	.word	1492246979
	.word	1929861249
	.word	1299451034
	.word	573009990
	.word	375843817
	.word	-1249724952
	.word	-457996480
	.word	692798629
	.word	869436527
	.word	1549184229
	.word	1414380363
	.word	-657784295
	.word	-1436032889
	.word	-676577360
	.word	-490183509
	.word	-216020933
	.word	-216681891
	.word	-1393425443
	.word	1230008061
	.word	-1414496108
	.word	-46243807
	.word	662515649
	.word	-1981527760
	.word	1070681552
	.word	1248370086
	.word	334663828
	.word	-800539857
	.word	-1645510558
	.word	-808420254
	.word	-634175220
	.word	2121421601
	.word	1507777159
	.word	-1501334550
	.word	-369123349
	.word	-661648033
	.word	-1750623434
	.word	0
	.globl	abc
	.data
	.align	2
	.type	abc, @object
	.size	abc, 16
abc:
	.word	242794880
	.word	-263032990
	.word	-2145820191
	.word	0
	.section	.text.codgen,"ax",@progbits
	.align	2
	.globl	codgen
.LFB1:
	.file 1 "lab4.c"
	.loc 1 35 0
	.set	nomips16
	.ent	codgen
codgen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	.loc 1 35 0
	move	$6,$4
	.loc 1 38 0
	lw	$4,0($4)
	nop
	sra	$2,$4,20
	andi	$5,$2,0x1f
	.loc 1 48 0
	bltz	$5,.L6
	nop

.L4:
	.loc 1 43 0
	sll	$8,$4,17
	srl	$3,$4,15
	or	$7,$8,$3
	.loc 1 46 0
	srl	$4,$4,1
	.loc 1 48 0
	addiu	$5,$5,-1
	.loc 1 47 0
	.loc 1 48 0
	bgez	$5,.L4
	addu	$4,$7,$4

	sw	$4,0($6)
.L6:
	.loc 1 50 0
	li	$6,1722679296			# 0x66ae0000
	ori	$5,$6,0xa94d
	.loc 1 51 0
	j	$31
	xor	$2,$4,$5

	.set	macro
	.set	reorder
	.end	codgen
.LFE1:
	.size	codgen, .-codgen
	.section	.text.decode,"ax",@progbits
	.align	2
	.globl	decode
.LFB2:
	.loc 1 53 0
	.set	nomips16
	.ent	decode
decode:
	.frame	$sp,40,$31		# vars= 0, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
.LCFI0:
	sw	$19,28($sp)
.LCFI1:
	sw	$18,24($sp)
.LCFI2:
	sw	$16,16($sp)
.LCFI3:
	sw	$31,32($sp)
.LCFI4:
	sw	$17,20($sp)
.LCFI5:
.LBB2:
.LBB3:
	.loc 1 38 0
	lw	$3,0($6)
.LBE3:
.LBE2:
	.loc 1 53 0
	move	$16,$6
.LBB4:
.LBB5:
	.loc 1 38 0
	sra	$2,$3,20
	andi	$6,$2,0x1f
.LBE5:
.LBE4:
	.loc 1 53 0
	move	$18,$4
.LBB6:
.LBB7:
	.loc 1 48 0
	bltz	$6,.L27
	move	$19,$5

	move	$4,$3
.L14:
	.loc 1 43 0
	sll	$7,$4,17
	srl	$3,$4,15
	or	$5,$7,$3
	.loc 1 46 0
	srl	$4,$4,1
	.loc 1 47 0
	addu	$4,$5,$4
	.loc 1 48 0
	addiu	$6,$6,-1
	.loc 1 47 0
	.loc 1 48 0
	bgez	$6,.L14
	sw	$4,0($16)

	.loc 1 49 0
	li	$10,1722679296			# 0x66ae0000
.L32:
	ori	$9,$10,0xa94d
.LBE7:
.LBE6:
	.loc 1 57 0
	lw	$6,0($18)
.LBB8:
.LBB9:
	.loc 1 49 0
	xor	$8,$4,$9
.LBE9:
.LBE8:
	.loc 1 35 0
	.loc 1 57 0
	bne	$6,$0,.L16
	nor	$17,$0,$8

	.loc 1 59 0
	move	$2,$17
	.loc 1 58 0
	sb	$0,0($19)
	.loc 1 71 0
	lw	$31,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,40

.L16:
	.loc 1 62 0
	addiu	$4,$18,4
	addiu	$5,$19,1
	jal	decode
	move	$6,$16

	.loc 1 64 0
	lw	$13,0($18)
	subu	$14,$17,$2
	subu	$6,$14,$13
	.loc 1 66 0
	srl	$12,$6,11
	sb	$12,0($19)
.LBB10:
.LBB11:
	.loc 1 38 0
	lw	$4,0($16)
	nop
	sra	$11,$4,20
	andi	$5,$11,0x1f
	.loc 1 62 0
	.loc 1 48 0
	bltz	$5,.L26
	move	$7,$2

.L21:
	.loc 1 43 0
	sll	$19,$4,17
	srl	$24,$4,15
	or	$18,$19,$24
	.loc 1 46 0
	srl	$15,$4,1
	.loc 1 48 0
	addiu	$5,$5,-1
	.loc 1 47 0
	.loc 1 48 0
	bgez	$5,.L21
	addu	$4,$18,$15

	sw	$4,0($16)
.L26:
	.loc 1 49 0
	li	$5,1722679296			# 0x66ae0000
.LBE11:
.LBE10:
	.loc 1 68 0
	addu	$31,$17,$7
.LBB12:
.LBB13:
	.loc 1 49 0
	ori	$2,$5,0xa94d
.LBE13:
.LBE12:
	.loc 1 68 0
	addu	$17,$31,$6
.LBB14:
.LBB15:
	.loc 1 49 0
	xor	$25,$4,$2
.LBE15:
.LBE14:
	.loc 1 68 0
	subu	$16,$17,$25
	addiu	$2,$16,5
	.loc 1 71 0
	lw	$31,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,40

.L27:
	lw	$4,0($16)
	.loc 1 49 0
	b	.L32
	li	$10,1722679296			# 0x66ae0000

	.set	macro
	.set	reorder
	.end	decode
.LFE2:
	.size	decode, .-decode
	.section	.text.main,"ax",@progbits
	.align	2
	.globl	main
.LFB0:
	.loc 1 29 0
	.set	nomips16
	.ent	main
main:
	.frame	$sp,48,$31		# vars= 8, regs= 5/0, args= 16, gp= 0
	.mask	0x800f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	.loc 1 30 0
	li	$11,1141047296			# 0x44030000
	.loc 1 29 0
	addiu	$sp,$sp,-48
.LCFI6:
	ori	$10,$11,0xec7f
.LBB16:
.LBB17:
.LBB18:
.LBB19:
	.loc 1 43 0
	li	$9,-654442496			# 0xffffffffd8fe0000
.LBE19:
.LBE18:
.LBE17:
.LBE16:
	.loc 1 29 0
	sw	$19,36($sp)
.LCFI7:
	sw	$18,32($sp)
.LCFI8:
	sw	$17,28($sp)
.LCFI9:
	sw	$16,24($sp)
.LCFI10:
.LBB20:
.LBB21:
.LBB22:
.LBB23:
	.loc 1 49 0
	li	$5,1722679296			# 0x66ae0000
.LBE23:
.LBE22:
.LBE21:
	.loc 1 53 0
	lui	$16,%hi(coded)
.LBE20:
	.loc 1 29 0
	sw	$31,40($sp)
.LCFI11:
.LBB24:
.LBB25:
.LBB26:
.LBB27:
	.loc 1 46 0
	srl	$7,$10,1
	.loc 1 43 0
	ori	$8,$9,0x8807
	.loc 1 47 0
	addu	$6,$8,$7
	.loc 1 49 0
	ori	$3,$5,0xa94d
.LBE27:
.LBE26:
	.loc 1 57 0
	lw	$4,%lo(coded)($16)
.LBB28:
.LBB29:
	.loc 1 49 0
	xor	$2,$6,$3
.LBE29:
.LBE28:
.LBE25:
	.loc 1 53 0
	lui	$17,%hi(plain)
.LBB30:
	.loc 1 35 0
	nor	$19,$0,$2
	sw	$6,16($sp)
.LBE30:
	.loc 1 53 0
	addiu	$2,$16,%lo(coded)
	addiu	$5,$17,%lo(plain)
.LBB31:
	.loc 1 57 0
	bne	$4,$0,.L38
	addiu	$18,$sp,16

	.loc 1 58 0
	sb	$0,%lo(plain)($17)
.L45:
	b	.L45
	nop

.L38:
	.loc 1 62 0
	addiu	$5,$5,1
	move	$6,$18
	jal	decode
	addiu	$4,$2,4

.LBB32:
.LBB33:
	.loc 1 38 0
	lw	$6,16($sp)
.LBE33:
.LBE32:
	.loc 1 64 0
	lw	$24,%lo(coded)($16)
	subu	$15,$19,$2
	subu	$14,$15,$24
.LBB34:
.LBB35:
	.loc 1 38 0
	sra	$13,$6,20
.LBE35:
.LBE34:
	.loc 1 66 0
	srl	$12,$14,11
.LBB36:
.LBB37:
	.loc 1 38 0
	andi	$5,$13,0x1f
	.loc 1 66 0
	.loc 1 48 0
	bltz	$5,.L50
	sb	$12,%lo(plain)($17)

.L42:
	.loc 1 43 0
	sll	$19,$6,17
	srl	$25,$6,15
	or	$17,$19,$25
	.loc 1 46 0
	srl	$16,$6,1
	.loc 1 48 0
	addiu	$5,$5,-1
	.loc 1 47 0
	.loc 1 48 0
	bgez	$5,.L42
	addu	$6,$17,$16

	sw	$6,0($18)
.L50:
	b	.L45
	nop

.LBE37:
.LBE36:
.LBE31:
.LBE24:
	.set	macro
	.set	reorder
	.end	main
.LFE0:
	.size	main, .-main
	.globl	plain
	.section	.data
	.align	2
	.type	plain, @object
	.size	plain, 132
plain:
	.space	132
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 4
	.byte	0x1f
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0x0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI5-.LCFI0
	.byte	0x11
	.uleb128 0x11
	.sleb128 -5
	.byte	0x11
	.uleb128 0x1f
	.sleb128 -2
	.byte	0x11
	.uleb128 0x10
	.sleb128 -6
	.byte	0x11
	.uleb128 0x12
	.sleb128 -4
	.byte	0x11
	.uleb128 0x13
	.sleb128 -3
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI6-.LFB0
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI10-.LCFI6
	.byte	0x11
	.uleb128 0x10
	.sleb128 -6
	.byte	0x11
	.uleb128 0x11
	.sleb128 -5
	.byte	0x11
	.uleb128 0x12
	.sleb128 -4
	.byte	0x11
	.uleb128 0x13
	.sleb128 -3
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0x11
	.uleb128 0x1f
	.sleb128 -2
	.align	2
.LEFDE4:
	.text
.Letext0:
	.section	.debug_info
	.4byte	0x345
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	0x0
	.4byte	.LASF13
	.byte	0x1
	.4byte	.LASF14
	.4byte	.LASF15
	.uleb128 0x2
	.4byte	0x5a
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x5a
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x1
	.byte	0x23
	.4byte	0x61
	.uleb128 0x4
	.ascii	"x\000"
	.byte	0x1
	.byte	0x24
	.4byte	0x67
	.uleb128 0x4
	.ascii	"y\000"
	.byte	0x1
	.byte	0x24
	.4byte	0x67
	.uleb128 0x4
	.ascii	"n\000"
	.byte	0x1
	.byte	0x25
	.4byte	0x5a
	.byte	0x0
	.uleb128 0x5
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5a
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x7
	.uleb128 0x8
	.4byte	0x9e
	.4byte	0x21
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x6d
	.uleb128 0x9
	.4byte	0x33
	.byte	0x1
	.byte	0x56
	.uleb128 0xa
	.4byte	0x3e
	.byte	0x1
	.byte	0x52
	.uleb128 0xa
	.4byte	0x47
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.4byte	0x50
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.uleb128 0x2
	.4byte	0x135
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	0x5a
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x1
	.byte	0x34
	.4byte	0x61
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x1
	.byte	0x35
	.4byte	0x135
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x1
	.byte	0x35
	.4byte	0x61
	.uleb128 0x4
	.ascii	"m\000"
	.byte	0x1
	.byte	0x36
	.4byte	0x67
	.uleb128 0x4
	.ascii	"r\000"
	.byte	0x1
	.byte	0x36
	.4byte	0x67
	.uleb128 0x4
	.ascii	"x\000"
	.byte	0x1
	.byte	0x37
	.4byte	0x67
	.uleb128 0x4
	.ascii	"y\000"
	.byte	0x1
	.byte	0x37
	.4byte	0x67
	.uleb128 0xb
	.4byte	.LASF6
	.byte	0x1
	.byte	0x37
	.4byte	0x67
	.uleb128 0xc
	.4byte	0x11c
	.uleb128 0xd
	.4byte	0x81
	.uleb128 0xe
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0x47
	.uleb128 0xf
	.4byte	0x50
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0xd
	.4byte	0x81
	.uleb128 0xe
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0x47
	.uleb128 0xf
	.4byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13b
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x1
	.byte	0x8
	.uleb128 0x8
	.4byte	0x1ea
	.4byte	0x9e
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6d
	.uleb128 0x9
	.4byte	0xb0
	.byte	0x1
	.byte	0x62
	.uleb128 0x9
	.4byte	0xbb
	.byte	0x1
	.byte	0x63
	.uleb128 0x9
	.4byte	0xc6
	.byte	0x1
	.byte	0x60
	.uleb128 0xa
	.4byte	0xd1
	.byte	0x1
	.byte	0x56
	.uleb128 0xf
	.4byte	0xda
	.uleb128 0xa
	.4byte	0xe3
	.byte	0x1
	.byte	0x61
	.uleb128 0xa
	.4byte	0xec
	.byte	0x1
	.byte	0x57
	.uleb128 0xf
	.4byte	0xf5
	.uleb128 0x10
	.4byte	0x1bb
	.4byte	0x21
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0xd
	.4byte	0x81
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0xa
	.4byte	0x3e
	.byte	0x1
	.byte	0x52
	.uleb128 0xa
	.4byte	0x47
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.4byte	0x50
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.4byte	0x21
	.4byte	.LBB10
	.4byte	.LBE10
	.uleb128 0xd
	.4byte	0x81
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0xa
	.4byte	0x3e
	.byte	0x1
	.byte	0x52
	.uleb128 0xa
	.4byte	0x47
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.4byte	0x50
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.4byte	0x2cd
	.byte	0x1
	.4byte	.LASF8
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	0x5a
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x6d
	.uleb128 0x14
	.4byte	.LASF9
	.byte	0x1
	.byte	0x1e
	.4byte	0x5a
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x15
	.4byte	0x22c
	.4byte	0x2cd
	.uleb128 0x16
	.4byte	0x61
	.uleb128 0x16
	.4byte	0x135
	.uleb128 0x16
	.4byte	0x61
	.byte	0x0
	.uleb128 0x10
	.4byte	0x29e
	.4byte	0x9e
	.4byte	.LBB16
	.4byte	.LBE16
	.uleb128 0x9
	.4byte	0x155
	.byte	0x1
	.byte	0x52
	.uleb128 0x9
	.4byte	0x15c
	.byte	0x1
	.byte	0x55
	.uleb128 0x9
	.4byte	0x163
	.byte	0x1
	.byte	0x62
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0xa
	.4byte	0xd1
	.byte	0x1
	.byte	0x52
	.uleb128 0xf
	.4byte	0xda
	.uleb128 0xa
	.4byte	0xe3
	.byte	0x1
	.byte	0x63
	.uleb128 0xf
	.4byte	0xec
	.uleb128 0xf
	.4byte	0xf5
	.uleb128 0x12
	.4byte	0x21
	.4byte	.LBB18
	.4byte	.LBE18
	.uleb128 0xd
	.4byte	0x81
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0x78
	.uleb128 0xf
	.4byte	0x3e
	.uleb128 0xf
	.4byte	0x47
	.uleb128 0xf
	.4byte	0x50
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.4byte	0x21
	.4byte	.LBB32
	.4byte	.LBE32
	.uleb128 0xd
	.4byte	0x81
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0xa0
	.uleb128 0xa
	.4byte	0x3e
	.byte	0x1
	.byte	0x52
	.uleb128 0xa
	.4byte	0x47
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.4byte	0x50
	.byte	0x1
	.byte	0x55
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	0x5a
	.byte	0x1
	.uleb128 0x18
	.4byte	0x2eb
	.4byte	0x13b
	.uleb128 0x19
	.4byte	0x2eb
	.byte	0x83
	.byte	0x0
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.uleb128 0x1a
	.4byte	.LASF11
	.byte	0x1
	.byte	0x12
	.4byte	0x2db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	plain
	.uleb128 0x18
	.4byte	0x314
	.4byte	0x5a
	.uleb128 0x19
	.4byte	0x2eb
	.byte	0x3
	.byte	0x0
	.uleb128 0x1b
	.ascii	"abc\000"
	.byte	0x1
	.byte	0x13
	.4byte	0x304
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	abc
	.uleb128 0x18
	.4byte	0x336
	.4byte	0x5a
	.uleb128 0x19
	.4byte	0x2eb
	.byte	0x4d
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF12
	.byte	0x1
	.byte	0x14
	.4byte	0x326
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	coded
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x49
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x349
	.4byte	0x6e
	.ascii	"codgen\000"
	.4byte	0x142
	.ascii	"decode\000"
	.4byte	0x1ea
	.ascii	"main\000"
	.4byte	0x2f2
	.ascii	"plain\000"
	.4byte	0x314
	.ascii	"abc\000"
	.4byte	0x336
	.ascii	"coded\000"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF0:
	.ascii	"unsigned int\000"
.LASF13:
	.ascii	"GNU C 3.4.4 mipssde-6.06.01-20070420\000"
.LASF3:
	.ascii	"seed_addr\000"
.LASF6:
	.ascii	"mshifted\000"
.LASF7:
	.ascii	"char\000"
.LASF4:
	.ascii	"wordarr\000"
.LASF1:
	.ascii	"codgen\000"
.LASF11:
	.ascii	"plain\000"
.LASF9:
	.ascii	"seed\000"
.LASF14:
	.ascii	"lab4.c\000"
.LASF2:
	.ascii	"decode\000"
.LASF8:
	.ascii	"main\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF15:
	.ascii	"/home/d0013e/labs/lab4\000"
.LASF5:
	.ascii	"bytearr\000"
.LASF12:
	.ascii	"coded\000"
	.ident	"GCC: (GNU) 3.4.4 mipssde-6.06.01-20070420"
