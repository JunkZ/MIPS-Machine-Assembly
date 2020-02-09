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
	.section	.text.main,"ax",@progbits
	.align	2
	.globl	main
.LFB0:
	.file 1 "lab4.c"
	.loc 1 29 0
	.set	nomips16
	.ent	main
main:
	.frame	$sp,32,$31		# vars= 8, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-32
.LCFI0:
	sw	$31,24($sp)
.LCFI1:
	.loc 1 30 0
	li	$2,1141047296			# 0x44030000
	ori	$2,$2,0xec7f
	sw	$2,16($sp)
	.loc 1 31 0
	lui	$4,%hi(coded)
	addiu	$4,$4,%lo(coded)
	lui	$5,%hi(plain)
	addiu	$5,$5,%lo(plain)
	jal	decode
	addiu	$6,$sp,16

.L2:
	.loc 1 32 0
	b	.L2
	nop

	.set	macro
	.set	reorder
	.end	main
.LFE0:
	.size	main, .-main
	.section	.text.codgen,"ax",@progbits
	.align	2
	.globl	codgen
.LFB1:
	.loc 1 35 0
	.set	nomips16
	.ent	codgen
codgen:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	.loc 1 38 0
	lw	$2,0($4)
	nop
	sra	$6,$2,20
	andi	$6,$6,0x1f
	.loc 1 48 0
	bltz	$6,.L9
	move	$5,$2

.L7:
	.loc 1 43 0
	sll	$2,$5,17
	srl	$3,$5,15
	or	$2,$2,$3
	.loc 1 46 0
	srl	$3,$5,1
	.loc 1 48 0
	addiu	$6,$6,-1
	.loc 1 47 0
	.loc 1 48 0
	bgez	$6,.L7
	addu	$5,$2,$3

	sw	$5,0($4)
.L9:
	.loc 1 50 0
	lw	$3,0($4)
	li	$2,1722679296			# 0x66ae0000
	ori	$2,$2,0xa94d
	.loc 1 51 0
	j	$31
	xor	$2,$3,$2

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
	.frame	$sp,48,$31		# vars= 0, regs= 7/0, args= 16, gp= 0
	.mask	0x803f0000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-48
.LCFI2:
	sw	$31,40($sp)
.LCFI3:
	sw	$21,36($sp)
.LCFI4:
	sw	$20,32($sp)
.LCFI5:
	sw	$19,28($sp)
.LCFI6:
	sw	$18,24($sp)
.LCFI7:
	sw	$17,20($sp)
.LCFI8:
	sw	$16,16($sp)
.LCFI9:
	move	$19,$4
	move	$21,$5
	move	$20,$6
	.loc 1 56 0
	jal	codgen
	move	$4,$6

	nor	$18,$0,$2
	.loc 1 57 0
	lw	$2,0($19)
	nop
	bne	$2,$0,.L12
	move	$2,$18

	.loc 1 58 0
	.loc 1 59 0
	b	.L13
	sb	$0,0($21)

.L12:
	.loc 1 62 0
	addiu	$4,$19,4
	addiu	$5,$21,1
	jal	decode
	move	$6,$20

	move	$16,$2
	.loc 1 64 0
	subu	$17,$18,$2
	lw	$2,0($19)
	nop
	subu	$17,$17,$2
	.loc 1 66 0
	srl	$2,$17,11
	sb	$2,0($21)
	.loc 1 67 0
	jal	codgen
	move	$4,$20

	.loc 1 68 0
	addu	$16,$18,$16
	addu	$16,$16,$17
	subu	$2,$16,$2
	addiu	$2,$2,5
.L13:
	.loc 1 71 0
	lw	$31,40($sp)
	lw	$21,36($sp)
	lw	$20,32($sp)
	lw	$19,28($sp)
	lw	$18,24($sp)
	lw	$17,20($sp)
	lw	$16,16($sp)
	j	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	decode
.LFE2:
	.size	decode, .-decode
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x11
	.uleb128 0x1f
	.sleb128 -2
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI2-.LFB2
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI9-.LCFI2
	.byte	0x11
	.uleb128 0x10
	.sleb128 -8
	.byte	0x11
	.uleb128 0x11
	.sleb128 -7
	.byte	0x11
	.uleb128 0x12
	.sleb128 -6
	.byte	0x11
	.uleb128 0x13
	.sleb128 -5
	.byte	0x11
	.uleb128 0x14
	.sleb128 -4
	.byte	0x11
	.uleb128 0x15
	.sleb128 -3
	.byte	0x11
	.uleb128 0x1f
	.sleb128 -2
	.align	2
.LEFDE4:
	.text
.Letext0:
	.section	.debug_info
	.4byte	0x1a5
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.4byte	.LASF13
	.byte	0x1
	.4byte	.LASF14
	.4byte	.LASF15
	.uleb128 0x2
	.4byte	0x56
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x6d
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x1
	.byte	0x1e
	.4byte	0x56
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x4
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x1f
	.4byte	0x56
	.byte	0x1
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	0xa7
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x6d
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x1
	.byte	0x23
	.4byte	0xa7
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.ascii	"x\000"
	.byte	0x1
	.byte	0x24
	.4byte	0xad
	.byte	0x1
	.byte	0x52
	.uleb128 0x8
	.ascii	"y\000"
	.byte	0x1
	.byte	0x24
	.4byte	0xad
	.byte	0x1
	.byte	0x53
	.uleb128 0x8
	.ascii	"n\000"
	.byte	0x1
	.byte	0x25
	.4byte	0x56
	.byte	0x1
	.byte	0x56
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x56
	.uleb128 0xa
	.4byte	.LASF3
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	0x12e
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	0x56
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6d
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x1
	.byte	0x34
	.4byte	0xa7
	.byte	0x1
	.byte	0x63
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x1
	.byte	0x35
	.4byte	0x12e
	.byte	0x1
	.byte	0x65
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x1
	.byte	0x35
	.4byte	0xa7
	.byte	0x1
	.byte	0x64
	.uleb128 0x8
	.ascii	"m\000"
	.byte	0x1
	.byte	0x36
	.4byte	0xad
	.byte	0x1
	.byte	0x61
	.uleb128 0x8
	.ascii	"r\000"
	.byte	0x1
	.byte	0x36
	.4byte	0xad
	.byte	0x1
	.byte	0x52
	.uleb128 0x8
	.ascii	"x\000"
	.byte	0x1
	.byte	0x37
	.4byte	0xad
	.byte	0x1
	.byte	0x62
	.uleb128 0x8
	.ascii	"y\000"
	.byte	0x1
	.byte	0x37
	.4byte	0xad
	.byte	0x1
	.byte	0x60
	.uleb128 0xb
	.4byte	.LASF8
	.byte	0x1
	.byte	0x37
	.4byte	0xad
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x134
	.uleb128 0xa
	.4byte	.LASF9
	.byte	0x1
	.byte	0x8
	.uleb128 0xc
	.4byte	0x14b
	.4byte	0x134
	.uleb128 0xd
	.4byte	0x14b
	.byte	0x83
	.byte	0x0
	.uleb128 0xa
	.4byte	.LASF10
	.byte	0x4
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF11
	.byte	0x1
	.byte	0x12
	.4byte	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	plain
	.uleb128 0xc
	.4byte	0x174
	.4byte	0x56
	.uleb128 0xd
	.4byte	0x14b
	.byte	0x3
	.byte	0x0
	.uleb128 0xf
	.ascii	"abc\000"
	.byte	0x1
	.byte	0x13
	.4byte	0x164
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	abc
	.uleb128 0xc
	.4byte	0x196
	.4byte	0x56
	.uleb128 0xd
	.4byte	0x14b
	.byte	0x4d
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF12
	.byte	0x1
	.byte	0x14
	.4byte	0x186
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.4byte	0x1a9
	.4byte	0x1d
	.ascii	"main\000"
	.4byte	0x5d
	.ascii	"codgen\000"
	.4byte	0xb4
	.ascii	"decode\000"
	.4byte	0x152
	.ascii	"plain\000"
	.4byte	0x174
	.ascii	"abc\000"
	.4byte	0x196
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.ascii	"unsigned int\000"
.LASF13:
	.ascii	"GNU C 3.4.4 mipssde-6.06.01-20070420\000"
.LASF5:
	.ascii	"seed_addr\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF9:
	.ascii	"char\000"
.LASF1:
	.ascii	"codgen\000"
.LASF11:
	.ascii	"plain\000"
.LASF2:
	.ascii	"seed\000"
.LASF14:
	.ascii	"lab4.c\000"
.LASF4:
	.ascii	"decode\000"
.LASF0:
	.ascii	"main\000"
.LASF6:
	.ascii	"wordarr\000"
.LASF15:
	.ascii	"/home/d0013e/labs/lab4\000"
.LASF7:
	.ascii	"bytearr\000"
.LASF8:
	.ascii	"mshifted\000"
.LASF12:
	.ascii	"coded\000"
	.ident	"GCC: (GNU) 3.4.4 mipssde-6.06.01-20070420"
