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
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-32
.LCFI0:
	sw	$31,28($sp)
.LCFI1:
	sw	$fp,24($sp)
.LCFI2:
	move	$fp,$sp
.LCFI3:
	.loc 1 30 0
	li	$2,1141047296			# 0x44030000
	ori	$2,$2,0xec7f
	sw	$2,16($fp)
	.loc 1 31 0
	lui	$2,%hi(coded)
	addiu	$4,$2,%lo(coded)
	lui	$2,%hi(plain)
	addiu	$5,$2,%lo(plain)
	addiu	$6,$fp,16
	jal	decode
	nop

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
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-8
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-24
.LCFI4:
	sw	$fp,16($sp)
.LCFI5:
	move	$fp,$sp
.LCFI6:
	sw	$4,24($fp)
	.loc 1 38 0
	lw	$2,24($fp)
	nop
	lw	$2,0($2)
	nop
	sra	$2,$2,20
	andi	$2,$2,0x1f
	sw	$2,8($fp)
.L5:
	.loc 1 42 0
	lw	$2,8($fp)
	nop
	bltz	$2,.L6
	nop

	.loc 1 43 0
	lw	$2,24($fp)
	nop
	lw	$2,0($2)
	nop
	sll	$3,$2,17
	srl	$2,$2,15
	or	$2,$3,$2
	sw	$2,0($fp)
	.loc 1 46 0
	lw	$2,24($fp)
	nop
	lw	$2,0($2)
	nop
	srl	$2,$2,1
	sw	$2,4($fp)
	.loc 1 47 0
	lw	$4,24($fp)
	lw	$3,0($fp)
	lw	$2,4($fp)
	nop
	addu	$2,$3,$2
	sw	$2,0($4)
	.loc 1 48 0
	lw	$2,8($fp)
	nop
	addiu	$2,$2,-1
	sw	$2,8($fp)
	b	.L5
	nop

.L6:
	.loc 1 50 0
	lw	$2,24($fp)
	nop
	lw	$3,0($2)
	li	$2,1722679296			# 0x66ae0000
	ori	$2,$2,0xa94d
	xor	$2,$3,$2
	.loc 1 51 0
	move	$sp,$fp
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

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
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-48
.LCFI7:
	sw	$31,44($sp)
.LCFI8:
	sw	$fp,40($sp)
.LCFI9:
	move	$fp,$sp
.LCFI10:
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	.loc 1 56 0
	lw	$4,56($fp)
	jal	codgen
	nop

	nor	$2,$0,$2
	sw	$2,24($fp)
	.loc 1 57 0
	lw	$2,48($fp)
	nop
	lw	$2,0($2)
	nop
	bne	$2,$0,.L8
	nop

	.loc 1 58 0
	lw	$2,52($fp)
	nop
	sb	$0,0($2)
	.loc 1 59 0
	lw	$2,24($fp)
	nop
	sw	$2,20($fp)
	b	.L9
	nop

.L8:
	.loc 1 62 0
	lw	$2,48($fp)
	nop
	addiu	$3,$2,4
	lw	$2,52($fp)
	nop
	addiu	$2,$2,1
	move	$4,$3
	move	$5,$2
	lw	$6,56($fp)
	jal	decode
	nop

	sw	$2,28($fp)
	.loc 1 64 0
	lw	$3,24($fp)
	lw	$2,28($fp)
	nop
	subu	$3,$3,$2
	lw	$2,48($fp)
	nop
	lw	$2,0($2)
	nop
	subu	$2,$3,$2
	sw	$2,16($fp)
	.loc 1 65 0
	lw	$2,16($fp)
	nop
	sll	$2,$2,13
	sw	$2,32($fp)
	.loc 1 66 0
	lw	$3,52($fp)
	lw	$2,32($fp)
	nop
	srl	$2,$2,24
	sb	$2,0($3)
	.loc 1 67 0
	lw	$4,56($fp)
	jal	codgen
	nop

	nor	$2,$0,$2
	addiu	$2,$2,1
	sw	$2,20($fp)
	.loc 1 68 0
	lw	$3,24($fp)
	lw	$2,28($fp)
	nop
	addu	$3,$3,$2
	lw	$2,16($fp)
	nop
	addu	$3,$3,$2
	lw	$2,20($fp)
	nop
	addu	$2,$3,$2
	addiu	$2,$2,5
	sw	$2,20($fp)
.L9:
	.loc 1 70 0
	lw	$2,20($fp)
	.loc 1 71 0
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

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
	.4byte	.LCFI2-.LCFI0
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -2
	.byte	0x11
	.uleb128 0x1f
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI4-.LFB1
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -2
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI7-.LFB2
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI9-.LCFI7
	.byte	0x11
	.uleb128 0x1e
	.sleb128 -2
	.byte	0x11
	.uleb128 0x1f
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE4:
	.text
.Letext0:
	.section	.debug_info
	.4byte	0x21e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.Ldebug_line0
	.ascii	"GNU C 3.4.4 mipssde-6.06.01-20070420\000"
	.byte	0x1
	.ascii	"lab4.c\000"
	.ascii	"/home/d0013e/labs/lab4\000"
	.uleb128 0x2
	.4byte	0x92
	.byte	0x1
	.ascii	"main\000"
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.4byte	0x92
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x1
	.byte	0x6e
	.uleb128 0x3
	.ascii	"seed\000"
	.byte	0x1
	.byte	0x1e
	.4byte	0x92
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x4
	.byte	0x1
	.ascii	"decode\000"
	.byte	0x1
	.byte	0x1f
	.4byte	0x92
	.byte	0x1
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.4byte	0xea
	.byte	0x1
	.ascii	"codgen\000"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x92
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0x1
	.byte	0x6e
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x1
	.byte	0x23
	.4byte	0xea
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x3
	.ascii	"x\000"
	.byte	0x1
	.byte	0x24
	.4byte	0xf0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.ascii	"y\000"
	.byte	0x1
	.byte	0x24
	.4byte	0xf0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.ascii	"n\000"
	.byte	0x1
	.byte	0x25
	.4byte	0x92
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x92
	.uleb128 0x6
	.ascii	"unsigned int\000"
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.4byte	0x194
	.byte	0x1
	.ascii	"decode\000"
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.4byte	0x92
	.4byte	.LFB2
	.4byte	.LFE2
	.byte	0x1
	.byte	0x6e
	.uleb128 0x9
	.ascii	"wordarr\000"
	.byte	0x1
	.byte	0x34
	.4byte	0xea
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x9
	.ascii	"bytearr\000"
	.byte	0x1
	.byte	0x35
	.4byte	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x1
	.byte	0x35
	.4byte	0xea
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x3
	.ascii	"m\000"
	.byte	0x1
	.byte	0x36
	.4byte	0xf0
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3
	.ascii	"r\000"
	.byte	0x1
	.byte	0x36
	.4byte	0xf0
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x3
	.ascii	"x\000"
	.byte	0x1
	.byte	0x37
	.4byte	0xf0
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x3
	.ascii	"y\000"
	.byte	0x1
	.byte	0x37
	.4byte	0xf0
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x3
	.ascii	"mshifted\000"
	.byte	0x1
	.byte	0x37
	.4byte	0xf0
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0x0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x19a
	.uleb128 0x6
	.ascii	"char\000"
	.byte	0x1
	.byte	0x8
	.uleb128 0xa
	.4byte	0x1b2
	.4byte	0x19a
	.uleb128 0xb
	.4byte	0x1b2
	.byte	0x83
	.byte	0x0
	.uleb128 0x6
	.ascii	"long unsigned int\000"
	.byte	0x4
	.byte	0x7
	.uleb128 0xc
	.ascii	"plain\000"
	.byte	0x1
	.byte	0x12
	.4byte	0x1a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	plain
	.uleb128 0xa
	.4byte	0x1eb
	.4byte	0x92
	.uleb128 0xb
	.4byte	0x1b2
	.byte	0x3
	.byte	0x0
	.uleb128 0xc
	.ascii	"abc\000"
	.byte	0x1
	.byte	0x13
	.4byte	0x1db
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	abc
	.uleb128 0xa
	.4byte	0x20d
	.4byte	0x92
	.uleb128 0xb
	.4byte	0x1b2
	.byte	0x4d
	.byte	0x0
	.uleb128 0xc
	.ascii	"coded\000"
	.byte	0x1
	.byte	0x14
	.4byte	0x1fd
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
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x5
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.4byte	0x222
	.4byte	0x54
	.ascii	"main\000"
	.4byte	0x99
	.ascii	"codgen\000"
	.4byte	0x100
	.ascii	"decode\000"
	.4byte	0x1c7
	.ascii	"plain\000"
	.4byte	0x1eb
	.ascii	"abc\000"
	.4byte	0x20d
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
	.section	.debug_str,"",@progbits
.LASF0:
	.ascii	"seed_addr\000"
	.ident	"GCC: (GNU) 3.4.4 mipssde-6.06.01-20070420"
