
build_sf32lb52-nano_a128r16_hcpu\main.elf:     file format elf32-littlearm


Disassembly of section .retm_data:

20002c00 <HAL_MspInit>:
20002c00:	f001 bbfc 	b.w	200043fc <BSP_IO_Init>

20002c04 <HAL_PMU_ConfigPeriLdo>:
20002c04:	b538      	push	{r3, r4, r5, lr}
20002c06:	b160      	cbz	r0, 20002c22 <HAL_PMU_ConfigPeriLdo+0x1e>
20002c08:	4c11      	ldr	r4, [pc, #68]	@ (20002c50 <HAL_PMU_ConfigPeriLdo+0x4c>)
20002c0a:	6863      	ldr	r3, [r4, #4]
20002c0c:	b2db      	uxtb	r3, r3
20002c0e:	2b07      	cmp	r3, #7
20002c10:	d01a      	beq.n	20002c48 <HAL_PMU_ConfigPeriLdo+0x44>
20002c12:	6863      	ldr	r3, [r4, #4]
20002c14:	b2db      	uxtb	r3, r3
20002c16:	2b0f      	cmp	r3, #15
20002c18:	d016      	beq.n	20002c48 <HAL_PMU_ConfigPeriLdo+0x44>
20002c1a:	2808      	cmp	r0, #8
20002c1c:	d001      	beq.n	20002c22 <HAL_PMU_ConfigPeriLdo+0x1e>
20002c1e:	2810      	cmp	r0, #16
20002c20:	d114      	bne.n	20002c4c <HAL_PMU_ConfigPeriLdo+0x48>
20002c22:	2900      	cmp	r1, #0
20002c24:	f04f 0421 	mov.w	r4, #33	@ 0x21
20002c28:	bf0c      	ite	eq
20002c2a:	2120      	moveq	r1, #32
20002c2c:	2101      	movne	r1, #1
20002c2e:	4d09      	ldr	r5, [pc, #36]	@ (20002c54 <HAL_PMU_ConfigPeriLdo+0x50>)
20002c30:	4084      	lsls	r4, r0
20002c32:	6deb      	ldr	r3, [r5, #92]	@ 0x5c
20002c34:	4081      	lsls	r1, r0
20002c36:	ea23 0304 	bic.w	r3, r3, r4
20002c3a:	430b      	orrs	r3, r1
20002c3c:	65eb      	str	r3, [r5, #92]	@ 0x5c
20002c3e:	b11a      	cbz	r2, 20002c48 <HAL_PMU_ConfigPeriLdo+0x44>
20002c40:	f241 3088 	movw	r0, #5000	@ 0x1388
20002c44:	f001 ff82 	bl	20004b4c <HAL_Delay_us>
20002c48:	2000      	movs	r0, #0
20002c4a:	bd38      	pop	{r3, r4, r5, pc}
20002c4c:	2001      	movs	r0, #1
20002c4e:	e7fc      	b.n	20002c4a <HAL_PMU_ConfigPeriLdo+0x46>
20002c50:	5000b000 	.word	0x5000b000
20002c54:	500ca000 	.word	0x500ca000

20002c58 <HAL_PMU_GetHpsysVoutRef>:
20002c58:	4b04      	ldr	r3, [pc, #16]	@ (20002c6c <HAL_PMU_GetHpsysVoutRef+0x14>)
20002c5a:	781a      	ldrb	r2, [r3, #0]
20002c5c:	b122      	cbz	r2, 20002c68 <HAL_PMU_GetHpsysVoutRef+0x10>
20002c5e:	b118      	cbz	r0, 20002c68 <HAL_PMU_GetHpsysVoutRef+0x10>
20002c60:	78db      	ldrb	r3, [r3, #3]
20002c62:	7003      	strb	r3, [r0, #0]
20002c64:	2000      	movs	r0, #0
20002c66:	4770      	bx	lr
20002c68:	2001      	movs	r0, #1
20002c6a:	4770      	bx	lr
20002c6c:	20005971 	.word	0x20005971

20002c70 <HAL_PMU_GetHpsysVoutRef2>:
20002c70:	4b04      	ldr	r3, [pc, #16]	@ (20002c84 <HAL_PMU_GetHpsysVoutRef2+0x14>)
20002c72:	781a      	ldrb	r2, [r3, #0]
20002c74:	b122      	cbz	r2, 20002c80 <HAL_PMU_GetHpsysVoutRef2+0x10>
20002c76:	b118      	cbz	r0, 20002c80 <HAL_PMU_GetHpsysVoutRef2+0x10>
20002c78:	7b5b      	ldrb	r3, [r3, #13]
20002c7a:	7003      	strb	r3, [r0, #0]
20002c7c:	2000      	movs	r0, #0
20002c7e:	4770      	bx	lr
20002c80:	2001      	movs	r0, #1
20002c82:	4770      	bx	lr
20002c84:	20005971 	.word	0x20005971

20002c88 <HAL_QSPI_Init>:
20002c88:	b510      	push	{r4, lr}
20002c8a:	b1e0      	cbz	r0, 20002cc6 <HAL_QSPI_Init+0x3e>
20002c8c:	b1d9      	cbz	r1, 20002cc6 <HAL_QSPI_Init+0x3e>
20002c8e:	2300      	movs	r3, #0
20002c90:	2201      	movs	r2, #1
20002c92:	6043      	str	r3, [r0, #4]
20002c94:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
20002c98:	680c      	ldr	r4, [r1, #0]
20002c9a:	6004      	str	r4, [r0, #0]
20002c9c:	684a      	ldr	r2, [r1, #4]
20002c9e:	f880 2020 	strb.w	r2, [r0, #32]
20002ca2:	688a      	ldr	r2, [r1, #8]
20002ca4:	6102      	str	r2, [r0, #16]
20002ca6:	68ca      	ldr	r2, [r1, #12]
20002ca8:	0512      	lsls	r2, r2, #20
20002caa:	6142      	str	r2, [r0, #20]
20002cac:	22ff      	movs	r2, #255	@ 0xff
20002cae:	f8c4 2084 	str.w	r2, [r4, #132]	@ 0x84
20002cb2:	f04f 2450 	mov.w	r4, #1342197760	@ 0x50005000
20002cb6:	6801      	ldr	r1, [r0, #0]
20002cb8:	678c      	str	r4, [r1, #120]	@ 0x78
20002cba:	6801      	ldr	r1, [r0, #0]
20002cbc:	620a      	str	r2, [r1, #32]
20002cbe:	6801      	ldr	r1, [r0, #0]
20002cc0:	4618      	mov	r0, r3
20002cc2:	644a      	str	r2, [r1, #68]	@ 0x44
20002cc4:	bd10      	pop	{r4, pc}
20002cc6:	2001      	movs	r0, #1
20002cc8:	e7fc      	b.n	20002cc4 <HAL_QSPI_Init+0x3c>

20002cca <HAL_FLASH_SET_AHB_RCMD>:
20002cca:	b138      	cbz	r0, 20002cdc <HAL_FLASH_SET_AHB_RCMD+0x12>
20002ccc:	6802      	ldr	r2, [r0, #0]
20002cce:	2000      	movs	r0, #0
20002cd0:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20002cd2:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
20002cd6:	4319      	orrs	r1, r3
20002cd8:	6411      	str	r1, [r2, #64]	@ 0x40
20002cda:	4770      	bx	lr
20002cdc:	2001      	movs	r0, #1
20002cde:	4770      	bx	lr

20002ce0 <HAL_FLASH_CFG_AHB_RCMD>:
20002ce0:	b570      	push	{r4, r5, r6, lr}
20002ce2:	b1c8      	cbz	r0, 20002d18 <HAL_FLASH_CFG_AHB_RCMD+0x38>
20002ce4:	6805      	ldr	r5, [r0, #0]
20002ce6:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20002cea:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20002cee:	6cac      	ldr	r4, [r5, #72]	@ 0x48
20002cf0:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20002cf4:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20002cf8:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20002cfc:	f36f 0414 	bfc	r4, #0, #21
20002d00:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20002d04:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20002d08:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20002d0c:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20002d10:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20002d14:	4321      	orrs	r1, r4
20002d16:	64a9      	str	r1, [r5, #72]	@ 0x48
20002d18:	bd70      	pop	{r4, r5, r6, pc}

20002d1a <HAL_FLASH_SET_AHB_WCMD>:
20002d1a:	b140      	cbz	r0, 20002d2e <HAL_FLASH_SET_AHB_WCMD+0x14>
20002d1c:	6802      	ldr	r2, [r0, #0]
20002d1e:	2000      	movs	r0, #0
20002d20:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20002d22:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20002d26:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
20002d2a:	6411      	str	r1, [r2, #64]	@ 0x40
20002d2c:	4770      	bx	lr
20002d2e:	2001      	movs	r0, #1
20002d30:	4770      	bx	lr

20002d32 <HAL_FLASH_CFG_AHB_WCMD>:
20002d32:	b570      	push	{r4, r5, r6, lr}
20002d34:	b1c8      	cbz	r0, 20002d6a <HAL_FLASH_CFG_AHB_WCMD+0x38>
20002d36:	6805      	ldr	r5, [r0, #0]
20002d38:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20002d3c:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20002d40:	6d2c      	ldr	r4, [r5, #80]	@ 0x50
20002d42:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20002d46:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20002d4a:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20002d4e:	f36f 0414 	bfc	r4, #0, #21
20002d52:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20002d56:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20002d5a:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20002d5e:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20002d62:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20002d66:	4321      	orrs	r1, r4
20002d68:	6529      	str	r1, [r5, #80]	@ 0x50
20002d6a:	bd70      	pop	{r4, r5, r6, pc}

20002d6c <HAL_FLASH_WRITE_WORD>:
20002d6c:	b118      	cbz	r0, 20002d76 <HAL_FLASH_WRITE_WORD+0xa>
20002d6e:	6803      	ldr	r3, [r0, #0]
20002d70:	2000      	movs	r0, #0
20002d72:	6059      	str	r1, [r3, #4]
20002d74:	4770      	bx	lr
20002d76:	2001      	movs	r0, #1
20002d78:	4770      	bx	lr

20002d7a <HAL_FLASH_WRITE_DLEN>:
20002d7a:	b130      	cbz	r0, 20002d8a <HAL_FLASH_WRITE_DLEN+0x10>
20002d7c:	6803      	ldr	r3, [r0, #0]
20002d7e:	3901      	subs	r1, #1
20002d80:	f3c1 0113 	ubfx	r1, r1, #0, #20
20002d84:	2000      	movs	r0, #0
20002d86:	6259      	str	r1, [r3, #36]	@ 0x24
20002d88:	4770      	bx	lr
20002d8a:	2001      	movs	r0, #1
20002d8c:	4770      	bx	lr

20002d8e <HAL_FLASH_WRITE_ABYTE>:
20002d8e:	b108      	cbz	r0, 20002d94 <HAL_FLASH_WRITE_ABYTE+0x6>
20002d90:	6803      	ldr	r3, [r0, #0]
20002d92:	6219      	str	r1, [r3, #32]
20002d94:	4770      	bx	lr

20002d96 <HAL_FLASH_IS_CMD_DONE>:
20002d96:	b118      	cbz	r0, 20002da0 <HAL_FLASH_IS_CMD_DONE+0xa>
20002d98:	6803      	ldr	r3, [r0, #0]
20002d9a:	6918      	ldr	r0, [r3, #16]
20002d9c:	f000 0001 	and.w	r0, r0, #1
20002da0:	4770      	bx	lr

20002da2 <HAL_FLASH_CLR_CMD_DONE>:
20002da2:	b120      	cbz	r0, 20002dae <HAL_FLASH_CLR_CMD_DONE+0xc>
20002da4:	6802      	ldr	r2, [r0, #0]
20002da6:	6953      	ldr	r3, [r2, #20]
20002da8:	f043 0301 	orr.w	r3, r3, #1
20002dac:	6153      	str	r3, [r2, #20]
20002dae:	4770      	bx	lr

20002db0 <HAL_FLASH_SET_CMD>:
20002db0:	b538      	push	{r3, r4, r5, lr}
20002db2:	460d      	mov	r5, r1
20002db4:	4604      	mov	r4, r0
20002db6:	b1a8      	cbz	r0, 20002de4 <HAL_FLASH_SET_CMD+0x34>
20002db8:	6803      	ldr	r3, [r0, #0]
20002dba:	61da      	str	r2, [r3, #28]
20002dbc:	6ac3      	ldr	r3, [r0, #44]	@ 0x2c
20002dbe:	b10b      	cbz	r3, 20002dc4 <HAL_FLASH_SET_CMD+0x14>
20002dc0:	2001      	movs	r0, #1
20002dc2:	4798      	blx	r3
20002dc4:	6823      	ldr	r3, [r4, #0]
20002dc6:	619d      	str	r5, [r3, #24]
20002dc8:	4620      	mov	r0, r4
20002dca:	f7ff ffe4 	bl	20002d96 <HAL_FLASH_IS_CMD_DONE>
20002dce:	2800      	cmp	r0, #0
20002dd0:	d0fa      	beq.n	20002dc8 <HAL_FLASH_SET_CMD+0x18>
20002dd2:	4620      	mov	r0, r4
20002dd4:	f7ff ffe5 	bl	20002da2 <HAL_FLASH_CLR_CMD_DONE>
20002dd8:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20002dda:	b10b      	cbz	r3, 20002de0 <HAL_FLASH_SET_CMD+0x30>
20002ddc:	2000      	movs	r0, #0
20002dde:	4798      	blx	r3
20002de0:	2000      	movs	r0, #0
20002de2:	bd38      	pop	{r3, r4, r5, pc}
20002de4:	2001      	movs	r0, #1
20002de6:	e7fc      	b.n	20002de2 <HAL_FLASH_SET_CMD+0x32>

20002de8 <HAL_FLASH_SET_CLK_rom>:
20002de8:	b108      	cbz	r0, 20002dee <HAL_FLASH_SET_CLK_rom+0x6>
20002dea:	6803      	ldr	r3, [r0, #0]
20002dec:	60d9      	str	r1, [r3, #12]
20002dee:	4770      	bx	lr

20002df0 <HAL_FLASH_GET_DIV>:
20002df0:	b110      	cbz	r0, 20002df8 <HAL_FLASH_GET_DIV+0x8>
20002df2:	6803      	ldr	r3, [r0, #0]
20002df4:	68d8      	ldr	r0, [r3, #12]
20002df6:	b2c0      	uxtb	r0, r0
20002df8:	4770      	bx	lr

20002dfa <HAL_FLASH_MANUAL_CMD>:
20002dfa:	b570      	push	{r4, r5, r6, lr}
20002dfc:	b1e8      	cbz	r0, 20002e3a <HAL_FLASH_MANUAL_CMD+0x40>
20002dfe:	6805      	ldr	r5, [r0, #0]
20002e00:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20002e04:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20002e08:	6aac      	ldr	r4, [r5, #40]	@ 0x28
20002e0a:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20002e0e:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20002e12:	f36f 0415 	bfc	r4, #0, #22
20002e16:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20002e1a:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20002e1e:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20002e22:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20002e26:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20002e2a:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20002e2e:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20002e32:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20002e36:	4321      	orrs	r1, r4
20002e38:	62a9      	str	r1, [r5, #40]	@ 0x28
20002e3a:	bd70      	pop	{r4, r5, r6, pc}

20002e3c <HAL_FLASH_ENABLE_QSPI>:
20002e3c:	b150      	cbz	r0, 20002e54 <HAL_FLASH_ENABLE_QSPI+0x18>
20002e3e:	6803      	ldr	r3, [r0, #0]
20002e40:	681a      	ldr	r2, [r3, #0]
20002e42:	b121      	cbz	r1, 20002e4e <HAL_FLASH_ENABLE_QSPI+0x12>
20002e44:	f042 0201 	orr.w	r2, r2, #1
20002e48:	2000      	movs	r0, #0
20002e4a:	601a      	str	r2, [r3, #0]
20002e4c:	4770      	bx	lr
20002e4e:	f022 0201 	bic.w	r2, r2, #1
20002e52:	e7f9      	b.n	20002e48 <HAL_FLASH_ENABLE_QSPI+0xc>
20002e54:	2001      	movs	r0, #1
20002e56:	4770      	bx	lr

20002e58 <HAL_FLASH_ENABLE_OPI>:
20002e58:	b150      	cbz	r0, 20002e70 <HAL_FLASH_ENABLE_OPI+0x18>
20002e5a:	6803      	ldr	r3, [r0, #0]
20002e5c:	681a      	ldr	r2, [r3, #0]
20002e5e:	b121      	cbz	r1, 20002e6a <HAL_FLASH_ENABLE_OPI+0x12>
20002e60:	f442 1200 	orr.w	r2, r2, #2097152	@ 0x200000
20002e64:	2000      	movs	r0, #0
20002e66:	601a      	str	r2, [r3, #0]
20002e68:	4770      	bx	lr
20002e6a:	f422 1200 	bic.w	r2, r2, #2097152	@ 0x200000
20002e6e:	e7f9      	b.n	20002e64 <HAL_FLASH_ENABLE_OPI+0xc>
20002e70:	2001      	movs	r0, #1
20002e72:	4770      	bx	lr

20002e74 <HAL_FLASH_ENABLE_HYPER>:
20002e74:	b150      	cbz	r0, 20002e8c <HAL_FLASH_ENABLE_HYPER+0x18>
20002e76:	6803      	ldr	r3, [r0, #0]
20002e78:	689a      	ldr	r2, [r3, #8]
20002e7a:	b121      	cbz	r1, 20002e86 <HAL_FLASH_ENABLE_HYPER+0x12>
20002e7c:	f042 0210 	orr.w	r2, r2, #16
20002e80:	2000      	movs	r0, #0
20002e82:	609a      	str	r2, [r3, #8]
20002e84:	4770      	bx	lr
20002e86:	f022 0210 	bic.w	r2, r2, #16
20002e8a:	e7f9      	b.n	20002e80 <HAL_FLASH_ENABLE_HYPER+0xc>
20002e8c:	2001      	movs	r0, #1
20002e8e:	4770      	bx	lr

20002e90 <HAL_FLASH_SET_CS_TIME>:
20002e90:	b530      	push	{r4, r5, lr}
20002e92:	b180      	cbz	r0, 20002eb6 <HAL_FLASH_SET_CS_TIME+0x26>
20002e94:	6805      	ldr	r5, [r0, #0]
20002e96:	f8bd 000c 	ldrh.w	r0, [sp, #12]
20002e9a:	68ac      	ldr	r4, [r5, #8]
20002e9c:	0680      	lsls	r0, r0, #26
20002e9e:	ea40 5383 	orr.w	r3, r0, r3, lsl #22
20002ea2:	2000      	movs	r0, #0
20002ea4:	ea43 4181 	orr.w	r1, r3, r1, lsl #18
20002ea8:	f36f 149e 	bfc	r4, #6, #25
20002eac:	ea41 1282 	orr.w	r2, r1, r2, lsl #6
20002eb0:	4322      	orrs	r2, r4
20002eb2:	60aa      	str	r2, [r5, #8]
20002eb4:	bd30      	pop	{r4, r5, pc}
20002eb6:	2001      	movs	r0, #1
20002eb8:	e7fc      	b.n	20002eb4 <HAL_FLASH_SET_CS_TIME+0x24>

20002eba <HAL_FLASH_SET_ROW_BOUNDARY>:
20002eba:	b130      	cbz	r0, 20002eca <HAL_FLASH_SET_ROW_BOUNDARY+0x10>
20002ebc:	6802      	ldr	r2, [r0, #0]
20002ebe:	2000      	movs	r0, #0
20002ec0:	6893      	ldr	r3, [r2, #8]
20002ec2:	f361 0302 	bfi	r3, r1, #0, #3
20002ec6:	6093      	str	r3, [r2, #8]
20002ec8:	4770      	bx	lr
20002eca:	2001      	movs	r0, #1
20002ecc:	4770      	bx	lr

20002ece <HAL_FLASH_SET_LEGACY>:
20002ece:	b150      	cbz	r0, 20002ee6 <HAL_FLASH_SET_LEGACY+0x18>
20002ed0:	6803      	ldr	r3, [r0, #0]
20002ed2:	689a      	ldr	r2, [r3, #8]
20002ed4:	b121      	cbz	r1, 20002ee0 <HAL_FLASH_SET_LEGACY+0x12>
20002ed6:	f042 0220 	orr.w	r2, r2, #32
20002eda:	2000      	movs	r0, #0
20002edc:	609a      	str	r2, [r3, #8]
20002ede:	4770      	bx	lr
20002ee0:	f022 0220 	bic.w	r2, r2, #32
20002ee4:	e7f9      	b.n	20002eda <HAL_FLASH_SET_LEGACY+0xc>
20002ee6:	2001      	movs	r0, #1
20002ee8:	4770      	bx	lr

20002eea <HAL_FLASH_SET_X16_MODE>:
20002eea:	b150      	cbz	r0, 20002f02 <HAL_FLASH_SET_X16_MODE+0x18>
20002eec:	6803      	ldr	r3, [r0, #0]
20002eee:	681a      	ldr	r2, [r3, #0]
20002ef0:	b121      	cbz	r1, 20002efc <HAL_FLASH_SET_X16_MODE+0x12>
20002ef2:	f442 0200 	orr.w	r2, r2, #8388608	@ 0x800000
20002ef6:	2000      	movs	r0, #0
20002ef8:	601a      	str	r2, [r3, #0]
20002efa:	4770      	bx	lr
20002efc:	f422 0200 	bic.w	r2, r2, #8388608	@ 0x800000
20002f00:	e7f9      	b.n	20002ef6 <HAL_FLASH_SET_X16_MODE+0xc>
20002f02:	2001      	movs	r0, #1
20002f04:	4770      	bx	lr

20002f06 <HAL_MPI_EN_FIXLAT>:
20002f06:	b150      	cbz	r0, 20002f1e <HAL_MPI_EN_FIXLAT+0x18>
20002f08:	6803      	ldr	r3, [r0, #0]
20002f0a:	689a      	ldr	r2, [r3, #8]
20002f0c:	b121      	cbz	r1, 20002f18 <HAL_MPI_EN_FIXLAT+0x12>
20002f0e:	f042 4200 	orr.w	r2, r2, #2147483648	@ 0x80000000
20002f12:	2000      	movs	r0, #0
20002f14:	609a      	str	r2, [r3, #8]
20002f16:	4770      	bx	lr
20002f18:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20002f1c:	e7f9      	b.n	20002f12 <HAL_MPI_EN_FIXLAT+0xc>
20002f1e:	2001      	movs	r0, #1
20002f20:	4770      	bx	lr

20002f22 <HAL_MPI_ENABLE_DQS>:
20002f22:	b150      	cbz	r0, 20002f3a <HAL_MPI_ENABLE_DQS+0x18>
20002f24:	6803      	ldr	r3, [r0, #0]
20002f26:	689a      	ldr	r2, [r3, #8]
20002f28:	b121      	cbz	r1, 20002f34 <HAL_MPI_ENABLE_DQS+0x12>
20002f2a:	f042 0208 	orr.w	r2, r2, #8
20002f2e:	2000      	movs	r0, #0
20002f30:	609a      	str	r2, [r3, #8]
20002f32:	4770      	bx	lr
20002f34:	f022 0208 	bic.w	r2, r2, #8
20002f38:	e7f9      	b.n	20002f2e <HAL_MPI_ENABLE_DQS+0xc>
20002f3a:	2001      	movs	r0, #1
20002f3c:	4770      	bx	lr

20002f3e <HAL_MPI_SET_DQS_DELAY>:
20002f3e:	b140      	cbz	r0, 20002f52 <HAL_MPI_SET_DQS_DELAY+0x14>
20002f40:	6802      	ldr	r2, [r0, #0]
20002f42:	2000      	movs	r0, #0
20002f44:	6d93      	ldr	r3, [r2, #88]	@ 0x58
20002f46:	f423 037f 	bic.w	r3, r3, #16711680	@ 0xff0000
20002f4a:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
20002f4e:	6591      	str	r1, [r2, #88]	@ 0x58
20002f50:	4770      	bx	lr
20002f52:	2001      	movs	r0, #1
20002f54:	4770      	bx	lr

20002f56 <HAL_MPI_SET_SCK>:
20002f56:	b160      	cbz	r0, 20002f72 <HAL_MPI_SET_SCK+0x1c>
20002f58:	6800      	ldr	r0, [r0, #0]
20002f5a:	0652      	lsls	r2, r2, #25
20002f5c:	6d83      	ldr	r3, [r0, #88]	@ 0x58
20002f5e:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
20002f62:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
20002f66:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20002f6a:	4319      	orrs	r1, r3
20002f6c:	6581      	str	r1, [r0, #88]	@ 0x58
20002f6e:	2000      	movs	r0, #0
20002f70:	4770      	bx	lr
20002f72:	2001      	movs	r0, #1
20002f74:	4770      	bx	lr

20002f76 <HAL_MPI_MODIFY_RCMD_DELAY>:
20002f76:	b130      	cbz	r0, 20002f86 <HAL_MPI_MODIFY_RCMD_DELAY+0x10>
20002f78:	6802      	ldr	r2, [r0, #0]
20002f7a:	6c93      	ldr	r3, [r2, #72]	@ 0x48
20002f7c:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20002f80:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20002f84:	6491      	str	r1, [r2, #72]	@ 0x48
20002f86:	4770      	bx	lr

20002f88 <HAL_MPI_MODIFY_WCMD_DELAY>:
20002f88:	b130      	cbz	r0, 20002f98 <HAL_MPI_MODIFY_WCMD_DELAY+0x10>
20002f8a:	6802      	ldr	r2, [r0, #0]
20002f8c:	6d13      	ldr	r3, [r2, #80]	@ 0x50
20002f8e:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20002f92:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20002f96:	6511      	str	r1, [r2, #80]	@ 0x50
20002f98:	4770      	bx	lr

20002f9a <HAL_FLASH_SET_WDT>:
20002f9a:	b148      	cbz	r0, 20002fb0 <HAL_FLASH_SET_WDT+0x16>
20002f9c:	6803      	ldr	r3, [r0, #0]
20002f9e:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20002fa2:	b109      	cbz	r1, 20002fa8 <HAL_FLASH_SET_WDT+0xe>
20002fa4:	f441 3180 	orr.w	r1, r1, #65536	@ 0x10000
20002fa8:	2000      	movs	r0, #0
20002faa:	f8c3 1088 	str.w	r1, [r3, #136]	@ 0x88
20002fae:	4770      	bx	lr
20002fb0:	2001      	movs	r0, #1
20002fb2:	4770      	bx	lr

20002fb4 <HAL_QSPI_SET_CLK_INV>:
20002fb4:	b160      	cbz	r0, 20002fd0 <HAL_QSPI_SET_CLK_INV+0x1c>
20002fb6:	6800      	ldr	r0, [r0, #0]
20002fb8:	b150      	cbz	r0, 20002fd0 <HAL_QSPI_SET_CLK_INV+0x1c>
20002fba:	6d83      	ldr	r3, [r0, #88]	@ 0x58
20002fbc:	0609      	lsls	r1, r1, #24
20002fbe:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
20002fc2:	f001 7180 	and.w	r1, r1, #16777216	@ 0x1000000
20002fc6:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
20002fca:	4311      	orrs	r1, r2
20002fcc:	4319      	orrs	r1, r3
20002fce:	6581      	str	r1, [r0, #88]	@ 0x58
20002fd0:	4770      	bx	lr
	...

20002fd4 <HAL_QSPI_GET_SRC_CLK>:
20002fd4:	b508      	push	{r3, lr}
20002fd6:	b1e8      	cbz	r0, 20003014 <HAL_QSPI_GET_SRC_CLK+0x40>
20002fd8:	6803      	ldr	r3, [r0, #0]
20002fda:	4a0f      	ldr	r2, [pc, #60]	@ (20003018 <HAL_QSPI_GET_SRC_CLK+0x44>)
20002fdc:	4293      	cmp	r3, r2
20002fde:	d00c      	beq.n	20002ffa <HAL_QSPI_GET_SRC_CLK+0x26>
20002fe0:	f502 5280 	add.w	r2, r2, #4096	@ 0x1000
20002fe4:	4293      	cmp	r3, r2
20002fe6:	d115      	bne.n	20003014 <HAL_QSPI_GET_SRC_CLK+0x40>
20002fe8:	2006      	movs	r0, #6
20002fea:	f000 fdbb 	bl	20003b64 <HAL_RCC_HCPU_GetClockSrc>
20002fee:	2802      	cmp	r0, #2
20002ff0:	d105      	bne.n	20002ffe <HAL_QSPI_GET_SRC_CLK+0x2a>
20002ff2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20002ff6:	f000 bdea 	b.w	20003bce <HAL_RCC_HCPU_GetDLL2Freq>
20002ffa:	2004      	movs	r0, #4
20002ffc:	e7f5      	b.n	20002fea <HAL_QSPI_GET_SRC_CLK+0x16>
20002ffe:	2803      	cmp	r0, #3
20003000:	d103      	bne.n	2000300a <HAL_QSPI_GET_SRC_CLK+0x36>
20003002:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20003006:	f000 bde5 	b.w	20003bd4 <HAL_RCC_HCPU_GetDLL3Freq>
2000300a:	2001      	movs	r0, #1
2000300c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20003010:	f000 be44 	b.w	20003c9c <HAL_RCC_GetSysCLKFreq>
20003014:	2000      	movs	r0, #0
20003016:	bd08      	pop	{r3, pc}
20003018:	50041000 	.word	0x50041000

2000301c <HAL_QSPI_GET_CLK>:
2000301c:	b538      	push	{r3, r4, r5, lr}
2000301e:	4605      	mov	r5, r0
20003020:	b908      	cbnz	r0, 20003026 <HAL_QSPI_GET_CLK+0xa>
20003022:	2000      	movs	r0, #0
20003024:	bd38      	pop	{r3, r4, r5, pc}
20003026:	f7ff fee3 	bl	20002df0 <HAL_FLASH_GET_DIV>
2000302a:	4604      	mov	r4, r0
2000302c:	2800      	cmp	r0, #0
2000302e:	d0f8      	beq.n	20003022 <HAL_QSPI_GET_CLK+0x6>
20003030:	4628      	mov	r0, r5
20003032:	f7ff ffcf 	bl	20002fd4 <HAL_QSPI_GET_SRC_CLK>
20003036:	fbb0 f0f4 	udiv	r0, r0, r4
2000303a:	e7f3      	b.n	20003024 <HAL_QSPI_GET_CLK+0x8>

2000303c <HAL_Delay_us_psram>:
2000303c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
2000303e:	9001      	str	r0, [sp, #4]
20003040:	9b01      	ldr	r3, [sp, #4]
20003042:	4c11      	ldr	r4, [pc, #68]	@ (20003088 <HAL_Delay_us_psram+0x4c>)
20003044:	b10b      	cbz	r3, 2000304a <HAL_Delay_us_psram+0xe>
20003046:	6820      	ldr	r0, [r4, #0]
20003048:	b940      	cbnz	r0, 2000305c <HAL_Delay_us_psram+0x20>
2000304a:	2000      	movs	r0, #0
2000304c:	f000 fe36 	bl	20003cbc <HAL_RCC_GetHCLKFreq>
20003050:	4b0e      	ldr	r3, [pc, #56]	@ (2000308c <HAL_Delay_us_psram+0x50>)
20003052:	fbb0 f0f3 	udiv	r0, r0, r3
20003056:	9b01      	ldr	r3, [sp, #4]
20003058:	6020      	str	r0, [r4, #0]
2000305a:	b19b      	cbz	r3, 20003084 <HAL_Delay_us_psram+0x48>
2000305c:	2830      	cmp	r0, #48	@ 0x30
2000305e:	bf82      	ittt	hi
20003060:	9b01      	ldrhi	r3, [sp, #4]
20003062:	f103 33ff 	addhi.w	r3, r3, #4294967295
20003066:	9301      	strhi	r3, [sp, #4]
20003068:	9b01      	ldr	r3, [sp, #4]
2000306a:	b15b      	cbz	r3, 20003084 <HAL_Delay_us_psram+0x48>
2000306c:	2205      	movs	r2, #5
2000306e:	9b01      	ldr	r3, [sp, #4]
20003070:	3b01      	subs	r3, #1
20003072:	4343      	muls	r3, r0
20003074:	fbb3 f3f2 	udiv	r3, r3, r2
20003078:	9303      	str	r3, [sp, #12]
2000307a:	9b03      	ldr	r3, [sp, #12]
2000307c:	1e5a      	subs	r2, r3, #1
2000307e:	9203      	str	r2, [sp, #12]
20003080:	2b00      	cmp	r3, #0
20003082:	d1fa      	bne.n	2000307a <HAL_Delay_us_psram+0x3e>
20003084:	b004      	add	sp, #16
20003086:	bd10      	pop	{r4, pc}
20003088:	20005a5c 	.word	0x20005a5c
2000308c:	000f4240 	.word	0x000f4240

20003090 <HAL_MPI_OPSRAM_CAL_DELAY>:
20003090:	b570      	push	{r4, r5, r6, lr}
20003092:	460e      	mov	r6, r1
20003094:	4615      	mov	r5, r2
20003096:	4604      	mov	r4, r0
20003098:	b358      	cbz	r0, 200030f2 <HAL_MPI_OPSRAM_CAL_DELAY+0x62>
2000309a:	2202      	movs	r2, #2
2000309c:	6803      	ldr	r3, [r0, #0]
2000309e:	60da      	str	r2, [r3, #12]
200030a0:	6802      	ldr	r2, [r0, #0]
200030a2:	6d93      	ldr	r3, [r2, #88]	@ 0x58
200030a4:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
200030a8:	6593      	str	r3, [r2, #88]	@ 0x58
200030aa:	6802      	ldr	r2, [r0, #0]
200030ac:	2000      	movs	r0, #0
200030ae:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
200030b2:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
200030b6:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
200030ba:	f7ff ffbf 	bl	2000303c <HAL_Delay_us_psram>
200030be:	2014      	movs	r0, #20
200030c0:	f7ff ffbc 	bl	2000303c <HAL_Delay_us_psram>
200030c4:	6820      	ldr	r0, [r4, #0]
200030c6:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
200030ca:	05db      	lsls	r3, r3, #23
200030cc:	d5fb      	bpl.n	200030c6 <HAL_MPI_OPSRAM_CAL_DELAY+0x36>
200030ce:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
200030d2:	f8d0 2094 	ldr.w	r2, [r0, #148]	@ 0x94
200030d6:	b2db      	uxtb	r3, r3
200030d8:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
200030dc:	f8c0 2094 	str.w	r2, [r0, #148]	@ 0x94
200030e0:	1e5a      	subs	r2, r3, #1
200030e2:	7032      	strb	r2, [r6, #0]
200030e4:	2201      	movs	r2, #1
200030e6:	2000      	movs	r0, #0
200030e8:	3b04      	subs	r3, #4
200030ea:	702b      	strb	r3, [r5, #0]
200030ec:	6823      	ldr	r3, [r4, #0]
200030ee:	60da      	str	r2, [r3, #12]
200030f0:	bd70      	pop	{r4, r5, r6, pc}
200030f2:	2001      	movs	r0, #1
200030f4:	e7fc      	b.n	200030f0 <HAL_MPI_OPSRAM_CAL_DELAY+0x60>
	...

200030f8 <HAL_SPI_PSRAM_Init>:
200030f8:	b537      	push	{r0, r1, r2, r4, r5, lr}
200030fa:	4614      	mov	r4, r2
200030fc:	4605      	mov	r5, r0
200030fe:	2800      	cmp	r0, #0
20003100:	d043      	beq.n	2000318a <HAL_SPI_PSRAM_Init+0x92>
20003102:	2900      	cmp	r1, #0
20003104:	d041      	beq.n	2000318a <HAL_SPI_PSRAM_Init+0x92>
20003106:	f7ff fdbf 	bl	20002c88 <HAL_QSPI_Init>
2000310a:	4628      	mov	r0, r5
2000310c:	b2e1      	uxtb	r1, r4
2000310e:	f7ff fe6b 	bl	20002de8 <HAL_FLASH_SET_CLK_rom>
20003112:	4628      	mov	r0, r5
20003114:	f7ff ff82 	bl	2000301c <HAL_QSPI_GET_CLK>
20003118:	4b1d      	ldr	r3, [pc, #116]	@ (20003190 <HAL_SPI_PSRAM_Init+0x98>)
2000311a:	4298      	cmp	r0, r3
2000311c:	d930      	bls.n	20003180 <HAL_SPI_PSRAM_Init+0x88>
2000311e:	4b1d      	ldr	r3, [pc, #116]	@ (20003194 <HAL_SPI_PSRAM_Init+0x9c>)
20003120:	4298      	cmp	r0, r3
20003122:	d92f      	bls.n	20003184 <HAL_SPI_PSRAM_Init+0x8c>
20003124:	4b1c      	ldr	r3, [pc, #112]	@ (20003198 <HAL_SPI_PSRAM_Init+0xa0>)
20003126:	4298      	cmp	r0, r3
20003128:	d922      	bls.n	20003170 <HAL_SPI_PSRAM_Init+0x78>
2000312a:	f240 34b6 	movw	r4, #950	@ 0x3b6
2000312e:	f240 4374 	movw	r3, #1140	@ 0x474
20003132:	4a1a      	ldr	r2, [pc, #104]	@ (2000319c <HAL_SPI_PSRAM_Init+0xa4>)
20003134:	4290      	cmp	r0, r2
20003136:	bf88      	it	hi
20003138:	461c      	movhi	r4, r3
2000313a:	2200      	movs	r2, #0
2000313c:	2101      	movs	r1, #1
2000313e:	4628      	mov	r0, r5
20003140:	f7ff ff38 	bl	20002fb4 <HAL_QSPI_SET_CLK_INV>
20003144:	2100      	movs	r1, #0
20003146:	4622      	mov	r2, r4
20003148:	2302      	movs	r3, #2
2000314a:	4628      	mov	r0, r5
2000314c:	9100      	str	r1, [sp, #0]
2000314e:	f7ff fe9f 	bl	20002e90 <HAL_FLASH_SET_CS_TIME>
20003152:	4604      	mov	r4, r0
20003154:	b948      	cbnz	r0, 2000316a <HAL_SPI_PSRAM_Init+0x72>
20003156:	2106      	movs	r1, #6
20003158:	4628      	mov	r0, r5
2000315a:	f7ff feae 	bl	20002eba <HAL_FLASH_SET_ROW_BOUNDARY>
2000315e:	4604      	mov	r4, r0
20003160:	b918      	cbnz	r0, 2000316a <HAL_SPI_PSRAM_Init+0x72>
20003162:	2101      	movs	r1, #1
20003164:	4628      	mov	r0, r5
20003166:	f7ff fe69 	bl	20002e3c <HAL_FLASH_ENABLE_QSPI>
2000316a:	4620      	mov	r0, r4
2000316c:	b003      	add	sp, #12
2000316e:	bd30      	pop	{r4, r5, pc}
20003170:	4b0b      	ldr	r3, [pc, #44]	@ (200031a0 <HAL_SPI_PSRAM_Init+0xa8>)
20003172:	f44f 743e 	mov.w	r4, #760	@ 0x2f8
20003176:	4298      	cmp	r0, r3
20003178:	d8df      	bhi.n	2000313a <HAL_SPI_PSRAM_Init+0x42>
2000317a:	2200      	movs	r2, #0
2000317c:	4611      	mov	r1, r2
2000317e:	e7de      	b.n	2000313e <HAL_SPI_PSRAM_Init+0x46>
20003180:	24b4      	movs	r4, #180	@ 0xb4
20003182:	e7fa      	b.n	2000317a <HAL_SPI_PSRAM_Init+0x82>
20003184:	f44f 74be 	mov.w	r4, #380	@ 0x17c
20003188:	e7f7      	b.n	2000317a <HAL_SPI_PSRAM_Init+0x82>
2000318a:	2401      	movs	r4, #1
2000318c:	e7ed      	b.n	2000316a <HAL_SPI_PSRAM_Init+0x72>
2000318e:	bf00      	nop
20003190:	016e3600 	.word	0x016e3600
20003194:	02dc6c00 	.word	0x02dc6c00
20003198:	05b8d800 	.word	0x05b8d800
2000319c:	07270e00 	.word	0x07270e00
200031a0:	03938700 	.word	0x03938700

200031a4 <HAL_MPI_MR_WRITE>:
200031a4:	b5f0      	push	{r4, r5, r6, r7, lr}
200031a6:	460e      	mov	r6, r1
200031a8:	4617      	mov	r7, r2
200031aa:	4605      	mov	r5, r0
200031ac:	b087      	sub	sp, #28
200031ae:	b1d8      	cbz	r0, 200031e8 <HAL_MPI_MR_WRITE+0x44>
200031b0:	2207      	movs	r2, #7
200031b2:	2400      	movs	r4, #0
200031b4:	2303      	movs	r3, #3
200031b6:	e9cd 2203 	strd	r2, r2, [sp, #12]
200031ba:	2101      	movs	r1, #1
200031bc:	e9cd 4301 	strd	r4, r3, [sp, #4]
200031c0:	9400      	str	r4, [sp, #0]
200031c2:	4623      	mov	r3, r4
200031c4:	f7ff fe19 	bl	20002dfa <HAL_FLASH_MANUAL_CMD>
200031c8:	2102      	movs	r1, #2
200031ca:	4628      	mov	r0, r5
200031cc:	f7ff fdd5 	bl	20002d7a <HAL_FLASH_WRITE_DLEN>
200031d0:	4639      	mov	r1, r7
200031d2:	4628      	mov	r0, r5
200031d4:	f7ff fdca 	bl	20002d6c <HAL_FLASH_WRITE_WORD>
200031d8:	4632      	mov	r2, r6
200031da:	21c0      	movs	r1, #192	@ 0xc0
200031dc:	4628      	mov	r0, r5
200031de:	f7ff fde7 	bl	20002db0 <HAL_FLASH_SET_CMD>
200031e2:	4620      	mov	r0, r4
200031e4:	b007      	add	sp, #28
200031e6:	bdf0      	pop	{r4, r5, r6, r7, pc}
200031e8:	2001      	movs	r0, #1
200031ea:	e7fb      	b.n	200031e4 <HAL_MPI_MR_WRITE+0x40>

200031ec <HAL_MPI_SET_FIXLAT>:
200031ec:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
200031f0:	460c      	mov	r4, r1
200031f2:	4616      	mov	r6, r2
200031f4:	461f      	mov	r7, r3
200031f6:	4605      	mov	r5, r0
200031f8:	2800      	cmp	r0, #0
200031fa:	d040      	beq.n	2000327e <HAL_MPI_SET_FIXLAT+0x92>
200031fc:	466b      	mov	r3, sp
200031fe:	4a21      	ldr	r2, [pc, #132]	@ (20003284 <HAL_MPI_SET_FIXLAT+0x98>)
20003200:	6810      	ldr	r0, [r2, #0]
20003202:	6851      	ldr	r1, [r2, #4]
20003204:	c303      	stmia	r3!, {r0, r1}
20003206:	6890      	ldr	r0, [r2, #8]
20003208:	68d1      	ldr	r1, [r2, #12]
2000320a:	c303      	stmia	r3!, {r0, r1}
2000320c:	4628      	mov	r0, r5
2000320e:	b2e1      	uxtb	r1, r4
20003210:	f7ff fe79 	bl	20002f06 <HAL_MPI_EN_FIXLAT>
20003214:	f107 0310 	add.w	r3, r7, #16
20003218:	446b      	add	r3, sp
2000321a:	f813 8c08 	ldrb.w	r8, [r3, #-8]
2000321e:	ea4f 1848 	mov.w	r8, r8, lsl #5
20003222:	fa5f f888 	uxtb.w	r8, r8
20003226:	b30c      	cbz	r4, 2000326c <HAL_MPI_SET_FIXLAT+0x80>
20003228:	ab04      	add	r3, sp, #16
2000322a:	eb03 0356 	add.w	r3, r3, r6, lsr #1
2000322e:	f813 4c10 	ldrb.w	r4, [r3, #-16]
20003232:	00a4      	lsls	r4, r4, #2
20003234:	f044 0421 	orr.w	r4, r4, #33	@ 0x21
20003238:	b264      	sxtb	r4, r4
2000323a:	f004 02fd 	and.w	r2, r4, #253	@ 0xfd
2000323e:	2100      	movs	r1, #0
20003240:	4628      	mov	r0, r5
20003242:	f7ff ffaf 	bl	200031a4 <HAL_MPI_MR_WRITE>
20003246:	1e71      	subs	r1, r6, #1
20003248:	4628      	mov	r0, r5
2000324a:	b249      	sxtb	r1, r1
2000324c:	f7ff fe93 	bl	20002f76 <HAL_MPI_MODIFY_RCMD_DELAY>
20003250:	4642      	mov	r2, r8
20003252:	2104      	movs	r1, #4
20003254:	4628      	mov	r0, r5
20003256:	f7ff ffa5 	bl	200031a4 <HAL_MPI_MR_WRITE>
2000325a:	1e79      	subs	r1, r7, #1
2000325c:	4628      	mov	r0, r5
2000325e:	b249      	sxtb	r1, r1
20003260:	f7ff fe92 	bl	20002f88 <HAL_MPI_MODIFY_WCMD_DELAY>
20003264:	2000      	movs	r0, #0
20003266:	b004      	add	sp, #16
20003268:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
2000326c:	f106 0310 	add.w	r3, r6, #16
20003270:	446b      	add	r3, sp
20003272:	f813 4c10 	ldrb.w	r4, [r3, #-16]
20003276:	00a4      	lsls	r4, r4, #2
20003278:	f044 0401 	orr.w	r4, r4, #1
2000327c:	e7dc      	b.n	20003238 <HAL_MPI_SET_FIXLAT+0x4c>
2000327e:	2001      	movs	r0, #1
20003280:	e7f1      	b.n	20003266 <HAL_MPI_SET_FIXLAT+0x7a>
20003282:	bf00      	nop
20003284:	20003874 	.word	0x20003874

20003288 <HAL_LEGACY_MR_WRITE>:
20003288:	b5f0      	push	{r4, r5, r6, r7, lr}
2000328a:	460e      	mov	r6, r1
2000328c:	4617      	mov	r7, r2
2000328e:	4605      	mov	r5, r0
20003290:	b087      	sub	sp, #28
20003292:	b1d8      	cbz	r0, 200032cc <HAL_LEGACY_MR_WRITE+0x44>
20003294:	2207      	movs	r2, #7
20003296:	2400      	movs	r4, #0
20003298:	2302      	movs	r3, #2
2000329a:	e9cd 2203 	strd	r2, r2, [sp, #12]
2000329e:	2101      	movs	r1, #1
200032a0:	e9cd 4301 	strd	r4, r3, [sp, #4]
200032a4:	9400      	str	r4, [sp, #0]
200032a6:	4623      	mov	r3, r4
200032a8:	f7ff fda7 	bl	20002dfa <HAL_FLASH_MANUAL_CMD>
200032ac:	2104      	movs	r1, #4
200032ae:	4628      	mov	r0, r5
200032b0:	f7ff fd63 	bl	20002d7a <HAL_FLASH_WRITE_DLEN>
200032b4:	4639      	mov	r1, r7
200032b6:	4628      	mov	r0, r5
200032b8:	f7ff fd58 	bl	20002d6c <HAL_FLASH_WRITE_WORD>
200032bc:	4632      	mov	r2, r6
200032be:	21c0      	movs	r1, #192	@ 0xc0
200032c0:	4628      	mov	r0, r5
200032c2:	f7ff fd75 	bl	20002db0 <HAL_FLASH_SET_CMD>
200032c6:	4620      	mov	r0, r4
200032c8:	b007      	add	sp, #28
200032ca:	bdf0      	pop	{r4, r5, r6, r7, pc}
200032cc:	2001      	movs	r0, #1
200032ce:	e7fb      	b.n	200032c8 <HAL_LEGACY_MR_WRITE+0x40>

200032d0 <HAL_LEGACY_CFG_READ>:
200032d0:	b530      	push	{r4, r5, lr}
200032d2:	4605      	mov	r5, r0
200032d4:	b085      	sub	sp, #20
200032d6:	b1a0      	cbz	r0, 20003302 <HAL_LEGACY_CFG_READ+0x32>
200032d8:	2400      	movs	r4, #0
200032da:	2107      	movs	r1, #7
200032dc:	2302      	movs	r3, #2
200032de:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
200032e2:	e9cd 1102 	strd	r1, r1, [sp, #8]
200032e6:	0052      	lsls	r2, r2, #1
200032e8:	e9cd 4300 	strd	r4, r3, [sp]
200032ec:	b252      	sxtb	r2, r2
200032ee:	4623      	mov	r3, r4
200032f0:	f7ff fcf6 	bl	20002ce0 <HAL_FLASH_CFG_AHB_RCMD>
200032f4:	4621      	mov	r1, r4
200032f6:	4628      	mov	r0, r5
200032f8:	f7ff fce7 	bl	20002cca <HAL_FLASH_SET_AHB_RCMD>
200032fc:	4620      	mov	r0, r4
200032fe:	b005      	add	sp, #20
20003300:	bd30      	pop	{r4, r5, pc}
20003302:	2001      	movs	r0, #1
20003304:	e7fb      	b.n	200032fe <HAL_LEGACY_CFG_READ+0x2e>

20003306 <HAL_LEGACY_CFG_WRITE>:
20003306:	b530      	push	{r4, r5, lr}
20003308:	4605      	mov	r5, r0
2000330a:	b085      	sub	sp, #20
2000330c:	b190      	cbz	r0, 20003334 <HAL_LEGACY_CFG_WRITE+0x2e>
2000330e:	2107      	movs	r1, #7
20003310:	2400      	movs	r4, #0
20003312:	2302      	movs	r3, #2
20003314:	e9cd 1102 	strd	r1, r1, [sp, #8]
20003318:	e9cd 4300 	strd	r4, r3, [sp]
2000331c:	4623      	mov	r3, r4
2000331e:	f990 2026 	ldrsb.w	r2, [r0, #38]	@ 0x26
20003322:	f7ff fd06 	bl	20002d32 <HAL_FLASH_CFG_AHB_WCMD>
20003326:	2180      	movs	r1, #128	@ 0x80
20003328:	4628      	mov	r0, r5
2000332a:	f7ff fcf6 	bl	20002d1a <HAL_FLASH_SET_AHB_WCMD>
2000332e:	4620      	mov	r0, r4
20003330:	b005      	add	sp, #20
20003332:	bd30      	pop	{r4, r5, pc}
20003334:	2001      	movs	r0, #1
20003336:	e7fb      	b.n	20003330 <HAL_LEGACY_CFG_WRITE+0x2a>

20003338 <HAL_PSRAM_RESET>:
20003338:	b5f0      	push	{r4, r5, r6, r7, lr}
2000333a:	4604      	mov	r4, r0
2000333c:	b087      	sub	sp, #28
2000333e:	2800      	cmp	r0, #0
20003340:	d03b      	beq.n	200033ba <HAL_PSRAM_RESET+0x82>
20003342:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
20003346:	2b05      	cmp	r3, #5
20003348:	d034      	beq.n	200033b4 <HAL_PSRAM_RESET+0x7c>
2000334a:	3b03      	subs	r3, #3
2000334c:	2b01      	cmp	r3, #1
2000334e:	d82e      	bhi.n	200033ae <HAL_PSRAM_RESET+0x76>
20003350:	2601      	movs	r6, #1
20003352:	2703      	movs	r7, #3
20003354:	2300      	movs	r3, #0
20003356:	2507      	movs	r5, #7
20003358:	b276      	sxtb	r6, r6
2000335a:	b27f      	sxtb	r7, r7
2000335c:	461a      	mov	r2, r3
2000335e:	2101      	movs	r1, #1
20003360:	4620      	mov	r0, r4
20003362:	e9cd 5503 	strd	r5, r5, [sp, #12]
20003366:	e9cd 5701 	strd	r5, r7, [sp, #4]
2000336a:	9600      	str	r6, [sp, #0]
2000336c:	f7ff fd45 	bl	20002dfa <HAL_FLASH_MANUAL_CMD>
20003370:	2200      	movs	r2, #0
20003372:	21ff      	movs	r1, #255	@ 0xff
20003374:	4620      	mov	r0, r4
20003376:	f7ff fd1b 	bl	20002db0 <HAL_FLASH_SET_CMD>
2000337a:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
2000337e:	2b05      	cmp	r3, #5
20003380:	d10f      	bne.n	200033a2 <HAL_PSRAM_RESET+0x6a>
20003382:	2300      	movs	r3, #0
20003384:	2101      	movs	r1, #1
20003386:	461a      	mov	r2, r3
20003388:	4620      	mov	r0, r4
2000338a:	e9cd 5503 	strd	r5, r5, [sp, #12]
2000338e:	e9cd 5701 	strd	r5, r7, [sp, #4]
20003392:	9600      	str	r6, [sp, #0]
20003394:	f7ff fd31 	bl	20002dfa <HAL_FLASH_MANUAL_CMD>
20003398:	2200      	movs	r2, #0
2000339a:	21ff      	movs	r1, #255	@ 0xff
2000339c:	4620      	mov	r0, r4
2000339e:	f7ff fd07 	bl	20002db0 <HAL_FLASH_SET_CMD>
200033a2:	2000      	movs	r0, #0
200033a4:	f001 fbd2 	bl	20004b4c <HAL_Delay_us>
200033a8:	2003      	movs	r0, #3
200033aa:	f001 fbcf 	bl	20004b4c <HAL_Delay_us>
200033ae:	2000      	movs	r0, #0
200033b0:	b007      	add	sp, #28
200033b2:	bdf0      	pop	{r4, r5, r6, r7, pc}
200033b4:	2603      	movs	r6, #3
200033b6:	2702      	movs	r7, #2
200033b8:	e7cc      	b.n	20003354 <HAL_PSRAM_RESET+0x1c>
200033ba:	2001      	movs	r0, #1
200033bc:	e7f8      	b.n	200033b0 <HAL_PSRAM_RESET+0x78>
	...

200033c0 <HAL_OPI_PSRAM_Init>:
200033c0:	b530      	push	{r4, r5, lr}
200033c2:	4604      	mov	r4, r0
200033c4:	b085      	sub	sp, #20
200033c6:	2800      	cmp	r0, #0
200033c8:	d06c      	beq.n	200034a4 <HAL_OPI_PSRAM_Init+0xe4>
200033ca:	2900      	cmp	r1, #0
200033cc:	d06a      	beq.n	200034a4 <HAL_OPI_PSRAM_Init+0xe4>
200033ce:	f7ff fc5b 	bl	20002c88 <HAL_QSPI_Init>
200033d2:	6823      	ldr	r3, [r4, #0]
200033d4:	f10d 020e 	add.w	r2, sp, #14
200033d8:	f10d 010f 	add.w	r1, sp, #15
200033dc:	4620      	mov	r0, r4
200033de:	681d      	ldr	r5, [r3, #0]
200033e0:	f7ff fe56 	bl	20003090 <HAL_MPI_OPSRAM_CAL_DELAY>
200033e4:	2101      	movs	r1, #1
200033e6:	4620      	mov	r0, r4
200033e8:	f7ff fcfe 	bl	20002de8 <HAL_FLASH_SET_CLK_rom>
200033ec:	4620      	mov	r0, r4
200033ee:	f7ff fe15 	bl	2000301c <HAL_QSPI_GET_CLK>
200033f2:	4b2d      	ldr	r3, [pc, #180]	@ (200034a8 <HAL_OPI_PSRAM_Init+0xe8>)
200033f4:	f005 0501 	and.w	r5, r5, #1
200033f8:	4298      	cmp	r0, r3
200033fa:	d93e      	bls.n	2000347a <HAL_OPI_PSRAM_Init+0xba>
200033fc:	f103 6337 	add.w	r3, r3, #191889408	@ 0xb700000
20003400:	f503 33d8 	add.w	r3, r3, #110592	@ 0x1b000
20003404:	4298      	cmp	r0, r3
20003406:	d93d      	bls.n	20003484 <HAL_OPI_PSRAM_Init+0xc4>
20003408:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
2000340c:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
20003410:	4298      	cmp	r0, r3
20003412:	d93d      	bls.n	20003490 <HAL_OPI_PSRAM_Init+0xd0>
20003414:	2107      	movs	r1, #7
20003416:	2014      	movs	r0, #20
20003418:	2308      	movs	r3, #8
2000341a:	f240 5232 	movw	r2, #1330	@ 0x532
2000341e:	f884 1025 	strb.w	r1, [r4, #37]	@ 0x25
20003422:	f884 1026 	strb.w	r1, [r4, #38]	@ 0x26
20003426:	2106      	movs	r1, #6
20003428:	9000      	str	r0, [sp, #0]
2000342a:	4620      	mov	r0, r4
2000342c:	f7ff fd30 	bl	20002e90 <HAL_FLASH_SET_CS_TIME>
20003430:	2107      	movs	r1, #7
20003432:	4620      	mov	r0, r4
20003434:	f7ff fd41 	bl	20002eba <HAL_FLASH_SET_ROW_BOUNDARY>
20003438:	2101      	movs	r1, #1
2000343a:	4620      	mov	r0, r4
2000343c:	f7ff fd71 	bl	20002f22 <HAL_MPI_ENABLE_DQS>
20003440:	f89d 100e 	ldrb.w	r1, [sp, #14]
20003444:	4620      	mov	r0, r4
20003446:	f7ff fd7a 	bl	20002f3e <HAL_MPI_SET_DQS_DELAY>
2000344a:	2200      	movs	r2, #0
2000344c:	f89d 100f 	ldrb.w	r1, [sp, #15]
20003450:	4620      	mov	r0, r4
20003452:	f7ff fd80 	bl	20002f56 <HAL_MPI_SET_SCK>
20003456:	2101      	movs	r1, #1
20003458:	4620      	mov	r0, r4
2000345a:	f7ff fcef 	bl	20002e3c <HAL_FLASH_ENABLE_QSPI>
2000345e:	2101      	movs	r1, #1
20003460:	4620      	mov	r0, r4
20003462:	f7ff fcf9 	bl	20002e58 <HAL_FLASH_ENABLE_OPI>
20003466:	b92d      	cbnz	r5, 20003474 <HAL_OPI_PSRAM_Init+0xb4>
20003468:	4b10      	ldr	r3, [pc, #64]	@ (200034ac <HAL_OPI_PSRAM_Init+0xec>)
2000346a:	681b      	ldr	r3, [r3, #0]
2000346c:	f003 0303 	and.w	r3, r3, #3
20003470:	2b03      	cmp	r3, #3
20003472:	d113      	bne.n	2000349c <HAL_OPI_PSRAM_Init+0xdc>
20003474:	2000      	movs	r0, #0
20003476:	b005      	add	sp, #20
20003478:	bd30      	pop	{r4, r5, pc}
2000347a:	2103      	movs	r1, #3
2000347c:	2300      	movs	r3, #0
2000347e:	4608      	mov	r0, r1
20003480:	22b4      	movs	r2, #180	@ 0xb4
20003482:	e7cc      	b.n	2000341e <HAL_OPI_PSRAM_Init+0x5e>
20003484:	2105      	movs	r1, #5
20003486:	200e      	movs	r0, #14
20003488:	2303      	movs	r3, #3
2000348a:	f240 32b6 	movw	r2, #950	@ 0x3b6
2000348e:	e7c6      	b.n	2000341e <HAL_OPI_PSRAM_Init+0x5e>
20003490:	2106      	movs	r1, #6
20003492:	2011      	movs	r0, #17
20003494:	2305      	movs	r3, #5
20003496:	f240 4274 	movw	r2, #1140	@ 0x474
2000349a:	e7c0      	b.n	2000341e <HAL_OPI_PSRAM_Init+0x5e>
2000349c:	4620      	mov	r0, r4
2000349e:	f7ff ff4b 	bl	20003338 <HAL_PSRAM_RESET>
200034a2:	e7e7      	b.n	20003474 <HAL_OPI_PSRAM_Init+0xb4>
200034a4:	2001      	movs	r0, #1
200034a6:	e7e6      	b.n	20003476 <HAL_OPI_PSRAM_Init+0xb6>
200034a8:	02dc6c01 	.word	0x02dc6c01
200034ac:	500c0000 	.word	0x500c0000

200034b0 <HAL_LEGACY_PSRAM_Init>:
200034b0:	b5f0      	push	{r4, r5, r6, r7, lr}
200034b2:	4604      	mov	r4, r0
200034b4:	b085      	sub	sp, #20
200034b6:	2800      	cmp	r0, #0
200034b8:	f000 8091 	beq.w	200035de <HAL_LEGACY_PSRAM_Init+0x12e>
200034bc:	2900      	cmp	r1, #0
200034be:	f000 808e 	beq.w	200035de <HAL_LEGACY_PSRAM_Init+0x12e>
200034c2:	f7ff fbe1 	bl	20002c88 <HAL_QSPI_Init>
200034c6:	6823      	ldr	r3, [r4, #0]
200034c8:	f10d 020e 	add.w	r2, sp, #14
200034cc:	f10d 010f 	add.w	r1, sp, #15
200034d0:	4620      	mov	r0, r4
200034d2:	681e      	ldr	r6, [r3, #0]
200034d4:	f7ff fddc 	bl	20003090 <HAL_MPI_OPSRAM_CAL_DELAY>
200034d8:	2101      	movs	r1, #1
200034da:	4620      	mov	r0, r4
200034dc:	f7ff fc84 	bl	20002de8 <HAL_FLASH_SET_CLK_rom>
200034e0:	4620      	mov	r0, r4
200034e2:	f7ff fd9b 	bl	2000301c <HAL_QSPI_GET_CLK>
200034e6:	4b3f      	ldr	r3, [pc, #252]	@ (200035e4 <HAL_LEGACY_PSRAM_Init+0x134>)
200034e8:	4605      	mov	r5, r0
200034ea:	4298      	cmp	r0, r3
200034ec:	4f3e      	ldr	r7, [pc, #248]	@ (200035e8 <HAL_LEGACY_PSRAM_Init+0x138>)
200034ee:	f006 0601 	and.w	r6, r6, #1
200034f2:	d957      	bls.n	200035a4 <HAL_LEGACY_PSRAM_Init+0xf4>
200034f4:	42b8      	cmp	r0, r7
200034f6:	d959      	bls.n	200035ac <HAL_LEGACY_PSRAM_Init+0xfc>
200034f8:	4b3c      	ldr	r3, [pc, #240]	@ (200035ec <HAL_LEGACY_PSRAM_Init+0x13c>)
200034fa:	4298      	cmp	r0, r3
200034fc:	d95b      	bls.n	200035b6 <HAL_LEGACY_PSRAM_Init+0x106>
200034fe:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
20003502:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
20003506:	4298      	cmp	r0, r3
20003508:	d85a      	bhi.n	200035c0 <HAL_LEGACY_PSRAM_Init+0x110>
2000350a:	2114      	movs	r1, #20
2000350c:	2308      	movs	r3, #8
2000350e:	f240 5232 	movw	r2, #1330	@ 0x532
20003512:	9100      	str	r1, [sp, #0]
20003514:	4620      	mov	r0, r4
20003516:	2106      	movs	r1, #6
20003518:	f7ff fcba 	bl	20002e90 <HAL_FLASH_SET_CS_TIME>
2000351c:	2107      	movs	r1, #7
2000351e:	4620      	mov	r0, r4
20003520:	f7ff fccb 	bl	20002eba <HAL_FLASH_SET_ROW_BOUNDARY>
20003524:	2101      	movs	r1, #1
20003526:	4620      	mov	r0, r4
20003528:	f7ff fcfb 	bl	20002f22 <HAL_MPI_ENABLE_DQS>
2000352c:	f89d 100e 	ldrb.w	r1, [sp, #14]
20003530:	4620      	mov	r0, r4
20003532:	f7ff fd04 	bl	20002f3e <HAL_MPI_SET_DQS_DELAY>
20003536:	2200      	movs	r2, #0
20003538:	f89d 100f 	ldrb.w	r1, [sp, #15]
2000353c:	4620      	mov	r0, r4
2000353e:	f7ff fd0a 	bl	20002f56 <HAL_MPI_SET_SCK>
20003542:	2101      	movs	r1, #1
20003544:	4620      	mov	r0, r4
20003546:	f7ff fcc2 	bl	20002ece <HAL_FLASH_SET_LEGACY>
2000354a:	2101      	movs	r1, #1
2000354c:	4620      	mov	r0, r4
2000354e:	f7ff fc75 	bl	20002e3c <HAL_FLASH_ENABLE_QSPI>
20003552:	2101      	movs	r1, #1
20003554:	4620      	mov	r0, r4
20003556:	f7ff fc7f 	bl	20002e58 <HAL_FLASH_ENABLE_OPI>
2000355a:	b92e      	cbnz	r6, 20003568 <HAL_LEGACY_PSRAM_Init+0xb8>
2000355c:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
20003560:	b913      	cbnz	r3, 20003568 <HAL_LEGACY_PSRAM_Init+0xb8>
20003562:	4620      	mov	r0, r4
20003564:	f7ff fee8 	bl	20003338 <HAL_PSRAM_RESET>
20003568:	42bd      	cmp	r5, r7
2000356a:	d92e      	bls.n	200035ca <HAL_LEGACY_PSRAM_Init+0x11a>
2000356c:	4b1f      	ldr	r3, [pc, #124]	@ (200035ec <HAL_LEGACY_PSRAM_Init+0x13c>)
2000356e:	429d      	cmp	r5, r3
20003570:	d930      	bls.n	200035d4 <HAL_LEGACY_PSRAM_Init+0x124>
20003572:	2206      	movs	r2, #6
20003574:	2302      	movs	r3, #2
20003576:	2588      	movs	r5, #136	@ 0x88
20003578:	263b      	movs	r6, #59	@ 0x3b
2000357a:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
2000357e:	2101      	movs	r1, #1
20003580:	f884 2025 	strb.w	r2, [r4, #37]	@ 0x25
20003584:	4620      	mov	r0, r4
20003586:	f7ff fcbe 	bl	20002f06 <HAL_MPI_EN_FIXLAT>
2000358a:	4632      	mov	r2, r6
2000358c:	2100      	movs	r1, #0
2000358e:	4620      	mov	r0, r4
20003590:	f7ff fe7a 	bl	20003288 <HAL_LEGACY_MR_WRITE>
20003594:	462a      	mov	r2, r5
20003596:	2104      	movs	r1, #4
20003598:	4620      	mov	r0, r4
2000359a:	f7ff fe75 	bl	20003288 <HAL_LEGACY_MR_WRITE>
2000359e:	2000      	movs	r0, #0
200035a0:	b005      	add	sp, #20
200035a2:	bdf0      	pop	{r4, r5, r6, r7, pc}
200035a4:	2103      	movs	r1, #3
200035a6:	2300      	movs	r3, #0
200035a8:	22b4      	movs	r2, #180	@ 0xb4
200035aa:	e7b2      	b.n	20003512 <HAL_LEGACY_PSRAM_Init+0x62>
200035ac:	210e      	movs	r1, #14
200035ae:	2303      	movs	r3, #3
200035b0:	f240 32b6 	movw	r2, #950	@ 0x3b6
200035b4:	e7ad      	b.n	20003512 <HAL_LEGACY_PSRAM_Init+0x62>
200035b6:	2111      	movs	r1, #17
200035b8:	2305      	movs	r3, #5
200035ba:	f240 4274 	movw	r2, #1140	@ 0x474
200035be:	e7a8      	b.n	20003512 <HAL_LEGACY_PSRAM_Init+0x62>
200035c0:	2117      	movs	r1, #23
200035c2:	2309      	movs	r3, #9
200035c4:	f44f 62be 	mov.w	r2, #1520	@ 0x5f0
200035c8:	e7a3      	b.n	20003512 <HAL_LEGACY_PSRAM_Init+0x62>
200035ca:	2204      	movs	r2, #4
200035cc:	2300      	movs	r3, #0
200035ce:	2508      	movs	r5, #8
200035d0:	2633      	movs	r6, #51	@ 0x33
200035d2:	e7d2      	b.n	2000357a <HAL_LEGACY_PSRAM_Init+0xca>
200035d4:	2205      	movs	r2, #5
200035d6:	2300      	movs	r3, #0
200035d8:	2508      	movs	r5, #8
200035da:	2637      	movs	r6, #55	@ 0x37
200035dc:	e7cd      	b.n	2000357a <HAL_LEGACY_PSRAM_Init+0xca>
200035de:	2001      	movs	r0, #1
200035e0:	e7de      	b.n	200035a0 <HAL_LEGACY_PSRAM_Init+0xf0>
200035e2:	bf00      	nop
200035e4:	02dc6c01 	.word	0x02dc6c01
200035e8:	0e4e1c01 	.word	0x0e4e1c01
200035ec:	112a8801 	.word	0x112a8801

200035f0 <HAL_HYPER_PSRAM_WriteCR>:
200035f0:	b570      	push	{r4, r5, r6, lr}
200035f2:	460e      	mov	r6, r1
200035f4:	4615      	mov	r5, r2
200035f6:	4604      	mov	r4, r0
200035f8:	b086      	sub	sp, #24
200035fa:	b1f8      	cbz	r0, 2000363c <HAL_HYPER_PSRAM_WriteCR+0x4c>
200035fc:	2207      	movs	r2, #7
200035fe:	2303      	movs	r3, #3
20003600:	e9cd 2301 	strd	r2, r3, [sp, #4]
20003604:	2300      	movs	r3, #0
20003606:	e9cd 2203 	strd	r2, r2, [sp, #12]
2000360a:	9300      	str	r3, [sp, #0]
2000360c:	2101      	movs	r1, #1
2000360e:	f7ff fbf4 	bl	20002dfa <HAL_FLASH_MANUAL_CMD>
20003612:	4631      	mov	r1, r6
20003614:	4620      	mov	r0, r4
20003616:	f7ff fbba 	bl	20002d8e <HAL_FLASH_WRITE_ABYTE>
2000361a:	2102      	movs	r1, #2
2000361c:	4620      	mov	r0, r4
2000361e:	f7ff fbac 	bl	20002d7a <HAL_FLASH_WRITE_DLEN>
20003622:	4629      	mov	r1, r5
20003624:	4620      	mov	r0, r4
20003626:	f7ff fba1 	bl	20002d6c <HAL_FLASH_WRITE_WORD>
2000362a:	f44f 3280 	mov.w	r2, #65536	@ 0x10000
2000362e:	2160      	movs	r1, #96	@ 0x60
20003630:	4620      	mov	r0, r4
20003632:	b006      	add	sp, #24
20003634:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
20003638:	f7ff bbba 	b.w	20002db0 <HAL_FLASH_SET_CMD>
2000363c:	b006      	add	sp, #24
2000363e:	bd70      	pop	{r4, r5, r6, pc}

20003640 <HAL_HYPER_PSRAM_Init>:
20003640:	b538      	push	{r3, r4, r5, lr}
20003642:	4604      	mov	r4, r0
20003644:	2201      	movs	r2, #1
20003646:	f7ff febb 	bl	200033c0 <HAL_OPI_PSRAM_Init>
2000364a:	4620      	mov	r0, r4
2000364c:	f7ff fce6 	bl	2000301c <HAL_QSPI_GET_CLK>
20003650:	4b15      	ldr	r3, [pc, #84]	@ (200036a8 <HAL_HYPER_PSRAM_Init+0x68>)
20003652:	4298      	cmp	r0, r3
20003654:	d91f      	bls.n	20003696 <HAL_HYPER_PSRAM_Init+0x56>
20003656:	4b15      	ldr	r3, [pc, #84]	@ (200036ac <HAL_HYPER_PSRAM_Init+0x6c>)
20003658:	4298      	cmp	r0, r3
2000365a:	d91f      	bls.n	2000369c <HAL_HYPER_PSRAM_Init+0x5c>
2000365c:	f103 73f4 	add.w	r3, r3, #31981568	@ 0x1e80000
20003660:	f503 4390 	add.w	r3, r3, #18432	@ 0x4800
20003664:	4298      	cmp	r0, r3
20003666:	d91c      	bls.n	200036a2 <HAL_HYPER_PSRAM_Init+0x62>
20003668:	f242 758f 	movw	r5, #10127	@ 0x278f
2000366c:	f241 738f 	movw	r3, #6031	@ 0x178f
20003670:	4a0f      	ldr	r2, [pc, #60]	@ (200036b0 <HAL_HYPER_PSRAM_Init+0x70>)
20003672:	4290      	cmp	r0, r2
20003674:	bf98      	it	ls
20003676:	461d      	movls	r5, r3
20003678:	2101      	movs	r1, #1
2000367a:	4620      	mov	r0, r4
2000367c:	f7ff fbfa 	bl	20002e74 <HAL_FLASH_ENABLE_HYPER>
20003680:	462a      	mov	r2, r5
20003682:	4620      	mov	r0, r4
20003684:	2100      	movs	r1, #0
20003686:	f7ff ffb3 	bl	200035f0 <HAL_HYPER_PSRAM_WriteCR>
2000368a:	2101      	movs	r1, #1
2000368c:	4620      	mov	r0, r4
2000368e:	f7ff fc3a 	bl	20002f06 <HAL_MPI_EN_FIXLAT>
20003692:	2000      	movs	r0, #0
20003694:	bd38      	pop	{r3, r4, r5, pc}
20003696:	f24e 758f 	movw	r5, #59279	@ 0xe78f
2000369a:	e7ed      	b.n	20003678 <HAL_HYPER_PSRAM_Init+0x38>
2000369c:	f24f 758f 	movw	r5, #63375	@ 0xf78f
200036a0:	e7ea      	b.n	20003678 <HAL_HYPER_PSRAM_Init+0x38>
200036a2:	f240 758f 	movw	r5, #1935	@ 0x78f
200036a6:	e7e7      	b.n	20003678 <HAL_HYPER_PSRAM_Init+0x38>
200036a8:	0a21fe81 	.word	0x0a21fe81
200036ac:	0c65d401 	.word	0x0c65d401
200036b0:	112a8801 	.word	0x112a8801

200036b4 <HAL_HYPER_CFG_READ>:
200036b4:	b51f      	push	{r0, r1, r2, r3, r4, lr}
200036b6:	b160      	cbz	r0, 200036d2 <HAL_HYPER_CFG_READ+0x1e>
200036b8:	2107      	movs	r1, #7
200036ba:	2303      	movs	r3, #3
200036bc:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
200036c0:	e9cd 1300 	strd	r1, r3, [sp]
200036c4:	3a01      	subs	r2, #1
200036c6:	2300      	movs	r3, #0
200036c8:	e9cd 1102 	strd	r1, r1, [sp, #8]
200036cc:	b252      	sxtb	r2, r2
200036ce:	f7ff fb07 	bl	20002ce0 <HAL_FLASH_CFG_AHB_RCMD>
200036d2:	b005      	add	sp, #20
200036d4:	f85d fb04 	ldr.w	pc, [sp], #4

200036d8 <HAL_HYPER_CFG_WRITE>:
200036d8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
200036da:	b160      	cbz	r0, 200036f6 <HAL_HYPER_CFG_WRITE+0x1e>
200036dc:	2107      	movs	r1, #7
200036de:	2303      	movs	r3, #3
200036e0:	f890 2026 	ldrb.w	r2, [r0, #38]	@ 0x26
200036e4:	e9cd 1300 	strd	r1, r3, [sp]
200036e8:	3a01      	subs	r2, #1
200036ea:	2300      	movs	r3, #0
200036ec:	e9cd 1102 	strd	r1, r1, [sp, #8]
200036f0:	b252      	sxtb	r2, r2
200036f2:	f7ff fb1e 	bl	20002d32 <HAL_FLASH_CFG_AHB_WCMD>
200036f6:	b005      	add	sp, #20
200036f8:	f85d fb04 	ldr.w	pc, [sp], #4

200036fc <HAL_MPI_PSRAM_Init>:
200036fc:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
20003700:	690b      	ldr	r3, [r1, #16]
20003702:	4604      	mov	r4, r0
20003704:	f880 3023 	strb.w	r3, [r0, #35]	@ 0x23
20003708:	690b      	ldr	r3, [r1, #16]
2000370a:	3b03      	subs	r3, #3
2000370c:	2b03      	cmp	r3, #3
2000370e:	f200 8085 	bhi.w	2000381c <HAL_MPI_PSRAM_Init+0x120>
20003712:	e8df f003 	tbb	[pc, r3]
20003716:	6302      	.short	0x6302
20003718:	7958      	.short	0x7958
2000371a:	4620      	mov	r0, r4
2000371c:	f7ff fe50 	bl	200033c0 <HAL_OPI_PSRAM_Init>
20003720:	2203      	movs	r2, #3
20003722:	4606      	mov	r6, r0
20003724:	2108      	movs	r1, #8
20003726:	4620      	mov	r0, r4
20003728:	f7ff fd3c 	bl	200031a4 <HAL_MPI_MR_WRITE>
2000372c:	4620      	mov	r0, r4
2000372e:	f7ff fc75 	bl	2000301c <HAL_QSPI_GET_CLK>
20003732:	4b4d      	ldr	r3, [pc, #308]	@ (20003868 <HAL_MPI_PSRAM_Init+0x16c>)
20003734:	4298      	cmp	r0, r3
20003736:	d95f      	bls.n	200037f8 <HAL_MPI_PSRAM_Init+0xfc>
20003738:	f103 63a4 	add.w	r3, r3, #85983232	@ 0x5200000
2000373c:	f503 4383 	add.w	r3, r3, #16768	@ 0x4180
20003740:	4298      	cmp	r0, r3
20003742:	d95b      	bls.n	200037fc <HAL_MPI_PSRAM_Init+0x100>
20003744:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
20003748:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
2000374c:	4298      	cmp	r0, r3
2000374e:	d957      	bls.n	20003800 <HAL_MPI_PSRAM_Init+0x104>
20003750:	4b46      	ldr	r3, [pc, #280]	@ (2000386c <HAL_MPI_PSRAM_Init+0x170>)
20003752:	4298      	cmp	r0, r3
20003754:	d956      	bls.n	20003804 <HAL_MPI_PSRAM_Init+0x108>
20003756:	4b46      	ldr	r3, [pc, #280]	@ (20003870 <HAL_MPI_PSRAM_Init+0x174>)
20003758:	4298      	cmp	r0, r3
2000375a:	bf94      	ite	ls
2000375c:	2507      	movls	r5, #7
2000375e:	2500      	movhi	r5, #0
20003760:	f04f 0800 	mov.w	r8, #0
20003764:	2707      	movs	r7, #7
20003766:	f04f 0a03 	mov.w	sl, #3
2000376a:	ea4f 0945 	mov.w	r9, r5, lsl #1
2000376e:	4643      	mov	r3, r8
20003770:	f109 32ff 	add.w	r2, r9, #4294967295
20003774:	4639      	mov	r1, r7
20003776:	4620      	mov	r0, r4
20003778:	e9cd 7702 	strd	r7, r7, [sp, #8]
2000377c:	e9cd 8a00 	strd	r8, sl, [sp]
20003780:	f7ff faae 	bl	20002ce0 <HAL_FLASH_CFG_AHB_RCMD>
20003784:	4641      	mov	r1, r8
20003786:	4620      	mov	r0, r4
20003788:	f7ff fa9f 	bl	20002cca <HAL_FLASH_SET_AHB_RCMD>
2000378c:	4643      	mov	r3, r8
2000378e:	1e6a      	subs	r2, r5, #1
20003790:	4639      	mov	r1, r7
20003792:	4620      	mov	r0, r4
20003794:	e9cd 7702 	strd	r7, r7, [sp, #8]
20003798:	e9cd 8a00 	strd	r8, sl, [sp]
2000379c:	f7ff fac9 	bl	20002d32 <HAL_FLASH_CFG_AHB_WCMD>
200037a0:	2180      	movs	r1, #128	@ 0x80
200037a2:	4620      	mov	r0, r4
200037a4:	f7ff fab9 	bl	20002d1a <HAL_FLASH_SET_AHB_WCMD>
200037a8:	462b      	mov	r3, r5
200037aa:	464a      	mov	r2, r9
200037ac:	2101      	movs	r1, #1
200037ae:	4620      	mov	r0, r4
200037b0:	f7ff fd1c 	bl	200031ec <HAL_MPI_SET_FIXLAT>
200037b4:	f64f 71ff 	movw	r1, #65535	@ 0xffff
200037b8:	4620      	mov	r0, r4
200037ba:	f7ff fbee 	bl	20002f9a <HAL_FLASH_SET_WDT>
200037be:	4630      	mov	r0, r6
200037c0:	b004      	add	sp, #16
200037c2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
200037c6:	4620      	mov	r0, r4
200037c8:	f7ff fe72 	bl	200034b0 <HAL_LEGACY_PSRAM_Init>
200037cc:	4620      	mov	r0, r4
200037ce:	f7ff fd7f 	bl	200032d0 <HAL_LEGACY_CFG_READ>
200037d2:	4620      	mov	r0, r4
200037d4:	f7ff fd97 	bl	20003306 <HAL_LEGACY_CFG_WRITE>
200037d8:	2600      	movs	r6, #0
200037da:	e7eb      	b.n	200037b4 <HAL_MPI_PSRAM_Init+0xb8>
200037dc:	4620      	mov	r0, r4
200037de:	f7ff fdef 	bl	200033c0 <HAL_OPI_PSRAM_Init>
200037e2:	2243      	movs	r2, #67	@ 0x43
200037e4:	4606      	mov	r6, r0
200037e6:	2108      	movs	r1, #8
200037e8:	4620      	mov	r0, r4
200037ea:	f7ff fcdb 	bl	200031a4 <HAL_MPI_MR_WRITE>
200037ee:	2101      	movs	r1, #1
200037f0:	4620      	mov	r0, r4
200037f2:	f7ff fb7a 	bl	20002eea <HAL_FLASH_SET_X16_MODE>
200037f6:	e799      	b.n	2000372c <HAL_MPI_PSRAM_Init+0x30>
200037f8:	2503      	movs	r5, #3
200037fa:	e7b1      	b.n	20003760 <HAL_MPI_PSRAM_Init+0x64>
200037fc:	2504      	movs	r5, #4
200037fe:	e7af      	b.n	20003760 <HAL_MPI_PSRAM_Init+0x64>
20003800:	2505      	movs	r5, #5
20003802:	e7ad      	b.n	20003760 <HAL_MPI_PSRAM_Init+0x64>
20003804:	2506      	movs	r5, #6
20003806:	e7ab      	b.n	20003760 <HAL_MPI_PSRAM_Init+0x64>
20003808:	4620      	mov	r0, r4
2000380a:	f7ff ff19 	bl	20003640 <HAL_HYPER_PSRAM_Init>
2000380e:	4620      	mov	r0, r4
20003810:	f7ff ff50 	bl	200036b4 <HAL_HYPER_CFG_READ>
20003814:	4620      	mov	r0, r4
20003816:	f7ff ff5f 	bl	200036d8 <HAL_HYPER_CFG_WRITE>
2000381a:	e7dd      	b.n	200037d8 <HAL_MPI_PSRAM_Init+0xdc>
2000381c:	2600      	movs	r6, #0
2000381e:	2503      	movs	r5, #3
20003820:	f04f 0801 	mov.w	r8, #1
20003824:	2702      	movs	r7, #2
20003826:	4620      	mov	r0, r4
20003828:	f7ff fc66 	bl	200030f8 <HAL_SPI_PSRAM_Init>
2000382c:	4633      	mov	r3, r6
2000382e:	2206      	movs	r2, #6
20003830:	4629      	mov	r1, r5
20003832:	4620      	mov	r0, r4
20003834:	e9cd 6700 	strd	r6, r7, [sp]
20003838:	e9cd 5802 	strd	r5, r8, [sp, #8]
2000383c:	f7ff fa50 	bl	20002ce0 <HAL_FLASH_CFG_AHB_RCMD>
20003840:	21eb      	movs	r1, #235	@ 0xeb
20003842:	4620      	mov	r0, r4
20003844:	f7ff fa41 	bl	20002cca <HAL_FLASH_SET_AHB_RCMD>
20003848:	4633      	mov	r3, r6
2000384a:	4632      	mov	r2, r6
2000384c:	4629      	mov	r1, r5
2000384e:	4620      	mov	r0, r4
20003850:	e9cd 6700 	strd	r6, r7, [sp]
20003854:	e9cd 5802 	strd	r5, r8, [sp, #8]
20003858:	f7ff fa6b 	bl	20002d32 <HAL_FLASH_CFG_AHB_WCMD>
2000385c:	2138      	movs	r1, #56	@ 0x38
2000385e:	4620      	mov	r0, r4
20003860:	f7ff fa5b 	bl	20002d1a <HAL_FLASH_SET_AHB_WCMD>
20003864:	4606      	mov	r6, r0
20003866:	e7a5      	b.n	200037b4 <HAL_MPI_PSRAM_Init+0xb8>
20003868:	07de2901 	.word	0x07de2901
2000386c:	13c9eb01 	.word	0x13c9eb01
20003870:	17d78401 	.word	0x17d78401
20003874:	00000000 	.word	0x00000000
20003878:	04030201 	.word	0x04030201
2000387c:	00000000 	.word	0x00000000
20003880:	01060204 	.word	0x01060204

20003884 <flash_memset>:
20003884:	4603      	mov	r3, r0
20003886:	4402      	add	r2, r0
20003888:	4293      	cmp	r3, r2
2000388a:	d100      	bne.n	2000388e <flash_memset+0xa>
2000388c:	4770      	bx	lr
2000388e:	f803 1b01 	strb.w	r1, [r3], #1
20003892:	e7f9      	b.n	20003888 <flash_memset+0x4>

20003894 <bsp_psramc_init>:
20003894:	b510      	push	{r4, lr}
20003896:	b086      	sub	sp, #24
20003898:	f000 fd06 	bl	200042a8 <BSP_GetFlash1DIV>
2000389c:	2230      	movs	r2, #48	@ 0x30
2000389e:	2100      	movs	r1, #0
200038a0:	4604      	mov	r4, r0
200038a2:	4817      	ldr	r0, [pc, #92]	@ (20003900 <bsp_psramc_init+0x6c>)
200038a4:	f7ff ffee 	bl	20003884 <flash_memset>
200038a8:	2214      	movs	r2, #20
200038aa:	a801      	add	r0, sp, #4
200038ac:	f7ff ffea 	bl	20003884 <flash_memset>
200038b0:	4b14      	ldr	r3, [pc, #80]	@ (20003904 <bsp_psramc_init+0x70>)
200038b2:	9301      	str	r3, [sp, #4]
200038b4:	f5a3 3358 	sub.w	r3, r3, #221184	@ 0x36000
200038b8:	685b      	ldr	r3, [r3, #4]
200038ba:	f3c3 2302 	ubfx	r3, r3, #8, #3
200038be:	3b02      	subs	r3, #2
200038c0:	2b04      	cmp	r3, #4
200038c2:	d81a      	bhi.n	200038fa <bsp_psramc_init+0x66>
200038c4:	4a10      	ldr	r2, [pc, #64]	@ (20003908 <bsp_psramc_init+0x74>)
200038c6:	5cd3      	ldrb	r3, [r2, r3]
200038c8:	428b      	cmp	r3, r1
200038ca:	bf08      	it	eq
200038cc:	2306      	moveq	r3, #6
200038ce:	2210      	movs	r2, #16
200038d0:	9305      	str	r3, [sp, #20]
200038d2:	f04f 5380 	mov.w	r3, #268435456	@ 0x10000000
200038d6:	e9cd 3203 	strd	r3, r2, [sp, #12]
200038da:	f000 fce3 	bl	200042a4 <SystemPowerOnModeGet>
200038de:	4603      	mov	r3, r0
200038e0:	1e59      	subs	r1, r3, #1
200038e2:	424b      	negs	r3, r1
200038e4:	4806      	ldr	r0, [pc, #24]	@ (20003900 <bsp_psramc_init+0x6c>)
200038e6:	414b      	adcs	r3, r1
200038e8:	4622      	mov	r2, r4
200038ea:	a901      	add	r1, sp, #4
200038ec:	f880 3027 	strb.w	r3, [r0, #39]	@ 0x27
200038f0:	f7ff ff04 	bl	200036fc <HAL_MPI_PSRAM_Init>
200038f4:	2000      	movs	r0, #0
200038f6:	b006      	add	sp, #24
200038f8:	bd10      	pop	{r4, pc}
200038fa:	2306      	movs	r3, #6
200038fc:	e7e7      	b.n	200038ce <bsp_psramc_init+0x3a>
200038fe:	bf00      	nop
20003900:	20005a0c 	.word	0x20005a0c
20003904:	50041000 	.word	0x50041000
20003908:	2000390c 	.word	0x2000390c

2000390c <CSWTCH.31>:
2000390c:	02050303                                 ......

20003912 <RCC_GetModuleMask>:
20003912:	4603      	mov	r3, r0
20003914:	b510      	push	{r4, lr}
20003916:	4610      	mov	r0, r2
20003918:	2a00      	cmp	r2, #0
2000391a:	d046      	beq.n	200039aa <RCC_GetModuleMask+0x98>
2000391c:	2900      	cmp	r1, #0
2000391e:	f000 80f2 	beq.w	20003b06 <RCC_GetModuleMask+0x1f4>
20003922:	2b61      	cmp	r3, #97	@ 0x61
20003924:	d832      	bhi.n	2000398c <RCC_GetModuleMask+0x7a>
20003926:	e8df f003 	tbb	[pc, r3]
2000392a:	d43a      	.short	0xd43a
2000392c:	41d1b531 	.word	0x41d1b531
20003930:	a54431ce 	.word	0xa54431ce
20003934:	4731c5c8 	.word	0x4731c5c8
20003938:	314d4a31 	.word	0x314d4a31
2000393c:	54313150 	.word	0x54313150
20003940:	605c58c1 	.word	0x605c58c1
20003944:	316c6864 	.word	0x316c6864
20003948:	74703131 	.word	0x74703131
2000394c:	7c78b9bd 	.word	0x7c78b9bd
20003950:	31803131 	.word	0x31803131
20003954:	88318431 	.word	0x88318431
20003958:	31ad9f8c 	.word	0x31ad9f8c
2000395c:	31313131 	.word	0x31313131
20003960:	94e79031 	.word	0x94e79031
20003964:	319996e3 	.word	0x319996e3
20003968:	319b3131 	.word	0x319b3131
2000396c:	3131319d 	.word	0x3131319d
20003970:	313131a1 	.word	0x313131a1
20003974:	31313131 	.word	0x31313131
20003978:	31aba7a7 	.word	0x31aba7a7
2000397c:	af313131 	.word	0xaf313131
20003980:	cbb33131 	.word	0xcbb33131
20003984:	32dfdbd7 	.word	0x32dfdbd7
20003988:	a7ebb731 	.word	0xa7ebb731
2000398c:	e7fe      	b.n	2000398c <RCC_GetModuleMask+0x7a>
2000398e:	2401      	movs	r4, #1
20003990:	f44f 1300 	mov.w	r3, #2097152	@ 0x200000
20003994:	600c      	str	r4, [r1, #0]
20003996:	6003      	str	r3, [r0, #0]
20003998:	f04f 4080 	mov.w	r0, #1073741824	@ 0x40000000
2000399c:	e005      	b.n	200039aa <RCC_GetModuleMask+0x98>
2000399e:	2300      	movs	r3, #0
200039a0:	2401      	movs	r4, #1
200039a2:	600b      	str	r3, [r1, #0]
200039a4:	6004      	str	r4, [r0, #0]
200039a6:	f04f 40a0 	mov.w	r0, #1342177280	@ 0x50000000
200039aa:	bd10      	pop	{r4, pc}
200039ac:	2300      	movs	r3, #0
200039ae:	2404      	movs	r4, #4
200039b0:	e7f7      	b.n	200039a2 <RCC_GetModuleMask+0x90>
200039b2:	2300      	movs	r3, #0
200039b4:	2410      	movs	r4, #16
200039b6:	e7f4      	b.n	200039a2 <RCC_GetModuleMask+0x90>
200039b8:	2300      	movs	r3, #0
200039ba:	2420      	movs	r4, #32
200039bc:	e7f1      	b.n	200039a2 <RCC_GetModuleMask+0x90>
200039be:	2300      	movs	r3, #0
200039c0:	2440      	movs	r4, #64	@ 0x40
200039c2:	e7ee      	b.n	200039a2 <RCC_GetModuleMask+0x90>
200039c4:	2300      	movs	r3, #0
200039c6:	2480      	movs	r4, #128	@ 0x80
200039c8:	e7eb      	b.n	200039a2 <RCC_GetModuleMask+0x90>
200039ca:	2300      	movs	r3, #0
200039cc:	f44f 7480 	mov.w	r4, #256	@ 0x100
200039d0:	e7e7      	b.n	200039a2 <RCC_GetModuleMask+0x90>
200039d2:	2300      	movs	r3, #0
200039d4:	f44f 6480 	mov.w	r4, #1024	@ 0x400
200039d8:	e7e3      	b.n	200039a2 <RCC_GetModuleMask+0x90>
200039da:	2300      	movs	r3, #0
200039dc:	f44f 6400 	mov.w	r4, #2048	@ 0x800
200039e0:	e7df      	b.n	200039a2 <RCC_GetModuleMask+0x90>
200039e2:	2300      	movs	r3, #0
200039e4:	f44f 5480 	mov.w	r4, #4096	@ 0x1000
200039e8:	e7db      	b.n	200039a2 <RCC_GetModuleMask+0x90>
200039ea:	2300      	movs	r3, #0
200039ec:	f44f 5400 	mov.w	r4, #8192	@ 0x2000
200039f0:	e7d7      	b.n	200039a2 <RCC_GetModuleMask+0x90>
200039f2:	2300      	movs	r3, #0
200039f4:	f44f 4480 	mov.w	r4, #16384	@ 0x4000
200039f8:	e7d3      	b.n	200039a2 <RCC_GetModuleMask+0x90>
200039fa:	2300      	movs	r3, #0
200039fc:	f44f 4400 	mov.w	r4, #32768	@ 0x8000
20003a00:	e7cf      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a02:	2300      	movs	r3, #0
20003a04:	f44f 3480 	mov.w	r4, #65536	@ 0x10000
20003a08:	e7cb      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a0a:	2300      	movs	r3, #0
20003a0c:	f44f 3400 	mov.w	r4, #131072	@ 0x20000
20003a10:	e7c7      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a12:	2300      	movs	r3, #0
20003a14:	f44f 2480 	mov.w	r4, #262144	@ 0x40000
20003a18:	e7c3      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a1a:	2300      	movs	r3, #0
20003a1c:	f44f 1480 	mov.w	r4, #1048576	@ 0x100000
20003a20:	e7bf      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a22:	2300      	movs	r3, #0
20003a24:	f44f 1400 	mov.w	r4, #2097152	@ 0x200000
20003a28:	e7bb      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a2a:	2300      	movs	r3, #0
20003a2c:	f44f 0480 	mov.w	r4, #4194304	@ 0x400000
20003a30:	e7b7      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a32:	2300      	movs	r3, #0
20003a34:	f04f 7400 	mov.w	r4, #33554432	@ 0x2000000
20003a38:	e7b3      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a3a:	2300      	movs	r3, #0
20003a3c:	f04f 6400 	mov.w	r4, #134217728	@ 0x8000000
20003a40:	e7af      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a42:	2300      	movs	r3, #0
20003a44:	f04f 5480 	mov.w	r4, #268435456	@ 0x10000000
20003a48:	e7ab      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a4a:	2300      	movs	r3, #0
20003a4c:	f04f 4400 	mov.w	r4, #2147483648	@ 0x80000000
20003a50:	e7a7      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a52:	2301      	movs	r3, #1
20003a54:	e7a4      	b.n	200039a0 <RCC_GetModuleMask+0x8e>
20003a56:	2301      	movs	r3, #1
20003a58:	2402      	movs	r4, #2
20003a5a:	e7a2      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a5c:	2301      	movs	r3, #1
20003a5e:	e7a6      	b.n	200039ae <RCC_GetModuleMask+0x9c>
20003a60:	2301      	movs	r3, #1
20003a62:	e7a7      	b.n	200039b4 <RCC_GetModuleMask+0xa2>
20003a64:	2301      	movs	r3, #1
20003a66:	e7ab      	b.n	200039c0 <RCC_GetModuleMask+0xae>
20003a68:	2301      	movs	r3, #1
20003a6a:	e7af      	b.n	200039cc <RCC_GetModuleMask+0xba>
20003a6c:	2301      	movs	r3, #1
20003a6e:	f44f 7400 	mov.w	r4, #512	@ 0x200
20003a72:	e796      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a74:	2301      	movs	r3, #1
20003a76:	e7b5      	b.n	200039e4 <RCC_GetModuleMask+0xd2>
20003a78:	2301      	movs	r3, #1
20003a7a:	f44f 2400 	mov.w	r4, #524288	@ 0x80000
20003a7e:	e790      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a80:	2301      	movs	r3, #1
20003a82:	e7cb      	b.n	20003a1c <RCC_GetModuleMask+0x10a>
20003a84:	2301      	movs	r3, #1
20003a86:	e7d5      	b.n	20003a34 <RCC_GetModuleMask+0x122>
20003a88:	2301      	movs	r3, #1
20003a8a:	f44f 0400 	mov.w	r4, #8388608	@ 0x800000
20003a8e:	e788      	b.n	200039a2 <RCC_GetModuleMask+0x90>
20003a90:	2301      	movs	r3, #1
20003a92:	e7cb      	b.n	20003a2c <RCC_GetModuleMask+0x11a>
20003a94:	2300      	movs	r3, #0
20003a96:	e7df      	b.n	20003a58 <RCC_GetModuleMask+0x146>
20003a98:	2300      	movs	r3, #0
20003a9a:	e7f6      	b.n	20003a8a <RCC_GetModuleMask+0x178>
20003a9c:	2400      	movs	r4, #0
20003a9e:	f44f 6380 	mov.w	r3, #1024	@ 0x400
20003aa2:	e777      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003aa4:	2400      	movs	r4, #0
20003aa6:	f44f 7300 	mov.w	r3, #512	@ 0x200
20003aaa:	e773      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003aac:	2400      	movs	r4, #0
20003aae:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
20003ab2:	e76f      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003ab4:	2400      	movs	r4, #0
20003ab6:	2340      	movs	r3, #64	@ 0x40
20003ab8:	e76c      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003aba:	2400      	movs	r4, #0
20003abc:	2320      	movs	r3, #32
20003abe:	e769      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003ac0:	2400      	movs	r4, #0
20003ac2:	2310      	movs	r3, #16
20003ac4:	e766      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003ac6:	2400      	movs	r4, #0
20003ac8:	2308      	movs	r3, #8
20003aca:	e763      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003acc:	2400      	movs	r4, #0
20003ace:	2304      	movs	r3, #4
20003ad0:	e760      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003ad2:	2400      	movs	r4, #0
20003ad4:	2302      	movs	r3, #2
20003ad6:	e75d      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003ad8:	2400      	movs	r4, #0
20003ada:	f44f 1380 	mov.w	r3, #1048576	@ 0x100000
20003ade:	e759      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003ae0:	2400      	movs	r4, #0
20003ae2:	f44f 2300 	mov.w	r3, #524288	@ 0x80000
20003ae6:	e755      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003ae8:	2400      	movs	r4, #0
20003aea:	f44f 2380 	mov.w	r3, #262144	@ 0x40000
20003aee:	e751      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003af0:	2400      	movs	r4, #0
20003af2:	f44f 3380 	mov.w	r3, #65536	@ 0x10000
20003af6:	e74d      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003af8:	2400      	movs	r4, #0
20003afa:	f44f 7380 	mov.w	r3, #256	@ 0x100
20003afe:	e749      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003b00:	2400      	movs	r4, #0
20003b02:	2380      	movs	r3, #128	@ 0x80
20003b04:	e746      	b.n	20003994 <RCC_GetModuleMask+0x82>
20003b06:	4608      	mov	r0, r1
20003b08:	e74f      	b.n	200039aa <RCC_GetModuleMask+0x98>
	...

20003b0c <HAL_RCC_HCPU_ConfigSxModeVolt>:
20003b0c:	b507      	push	{r0, r1, r2, lr}
20003b0e:	4a13      	ldr	r2, [pc, #76]	@ (20003b5c <HAL_RCC_HCPU_ConfigSxModeVolt+0x50>)
20003b10:	4913      	ldr	r1, [pc, #76]	@ (20003b60 <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20003b12:	eb02 02c0 	add.w	r2, r2, r0, lsl #3
20003b16:	f8d1 309c 	ldr.w	r3, [r1, #156]	@ 0x9c
20003b1a:	7892      	ldrb	r2, [r2, #2]
20003b1c:	2802      	cmp	r0, #2
20003b1e:	f362 0303 	bfi	r3, r2, #0, #4
20003b22:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
20003b26:	f10d 0007 	add.w	r0, sp, #7
20003b2a:	d111      	bne.n	20003b50 <HAL_RCC_HCPU_ConfigSxModeVolt+0x44>
20003b2c:	f7ff f894 	bl	20002c58 <HAL_PMU_GetHpsysVoutRef>
20003b30:	b110      	cbz	r0, 20003b38 <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20003b32:	230b      	movs	r3, #11
20003b34:	f88d 3007 	strb.w	r3, [sp, #7]
20003b38:	4a09      	ldr	r2, [pc, #36]	@ (20003b60 <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20003b3a:	f89d 1007 	ldrb.w	r1, [sp, #7]
20003b3e:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20003b42:	f361 0303 	bfi	r3, r1, #0, #4
20003b46:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20003b4a:	b003      	add	sp, #12
20003b4c:	f85d fb04 	ldr.w	pc, [sp], #4
20003b50:	f7ff f88e 	bl	20002c70 <HAL_PMU_GetHpsysVoutRef2>
20003b54:	2800      	cmp	r0, #0
20003b56:	d0ef      	beq.n	20003b38 <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20003b58:	230d      	movs	r3, #13
20003b5a:	e7eb      	b.n	20003b34 <HAL_RCC_HCPU_ConfigSxModeVolt+0x28>
20003b5c:	20004284 	.word	0x20004284
20003b60:	500ca000 	.word	0x500ca000

20003b64 <HAL_RCC_HCPU_GetClockSrc>:
20003b64:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20003b68:	280d      	cmp	r0, #13
20003b6a:	6a1a      	ldr	r2, [r3, #32]
20003b6c:	d80d      	bhi.n	20003b8a <HAL_RCC_HCPU_GetClockSrc+0x26>
20003b6e:	f642 73f1 	movw	r3, #12273	@ 0x2ff1
20003b72:	40c3      	lsrs	r3, r0
20003b74:	f013 0f01 	tst.w	r3, #1
20003b78:	bf0c      	ite	eq
20003b7a:	2301      	moveq	r3, #1
20003b7c:	2303      	movne	r3, #3
20003b7e:	4083      	lsls	r3, r0
20003b80:	4013      	ands	r3, r2
20003b82:	fa23 f000 	lsr.w	r0, r3, r0
20003b86:	b2c0      	uxtb	r0, r0
20003b88:	4770      	bx	lr
20003b8a:	2301      	movs	r3, #1
20003b8c:	e7f7      	b.n	20003b7e <HAL_RCC_HCPU_GetClockSrc+0x1a>
	...

20003b90 <HAL_RCC_HCPU_GetDLLFreq>:
20003b90:	2801      	cmp	r0, #1
20003b92:	d003      	beq.n	20003b9c <HAL_RCC_HCPU_GetDLLFreq+0xc>
20003b94:	2802      	cmp	r0, #2
20003b96:	d00e      	beq.n	20003bb6 <HAL_RCC_HCPU_GetDLLFreq+0x26>
20003b98:	2000      	movs	r0, #0
20003b9a:	4770      	bx	lr
20003b9c:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20003ba0:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
20003ba2:	b163      	cbz	r3, 20003bbe <HAL_RCC_HCPU_GetDLLFreq+0x2e>
20003ba4:	f013 0001 	ands.w	r0, r3, #1
20003ba8:	d00a      	beq.n	20003bc0 <HAL_RCC_HCPU_GetDLLFreq+0x30>
20003baa:	4806      	ldr	r0, [pc, #24]	@ (20003bc4 <HAL_RCC_HCPU_GetDLLFreq+0x34>)
20003bac:	f3c3 0383 	ubfx	r3, r3, #2, #4
20003bb0:	fb03 0000 	mla	r0, r3, r0, r0
20003bb4:	4770      	bx	lr
20003bb6:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20003bba:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
20003bbc:	e7f1      	b.n	20003ba2 <HAL_RCC_HCPU_GetDLLFreq+0x12>
20003bbe:	4618      	mov	r0, r3
20003bc0:	4770      	bx	lr
20003bc2:	bf00      	nop
20003bc4:	016e3600 	.word	0x016e3600

20003bc8 <HAL_RCC_HCPU_GetDLL1Freq>:
20003bc8:	2001      	movs	r0, #1
20003bca:	f7ff bfe1 	b.w	20003b90 <HAL_RCC_HCPU_GetDLLFreq>

20003bce <HAL_RCC_HCPU_GetDLL2Freq>:
20003bce:	2002      	movs	r0, #2
20003bd0:	f7ff bfde 	b.w	20003b90 <HAL_RCC_HCPU_GetDLLFreq>

20003bd4 <HAL_RCC_HCPU_GetDLL3Freq>:
20003bd4:	2000      	movs	r0, #0
20003bd6:	4770      	bx	lr

20003bd8 <HAL_RCC_HCPU_EnableDLL>:
20003bd8:	4b23      	ldr	r3, [pc, #140]	@ (20003c68 <HAL_RCC_HCPU_EnableDLL+0x90>)
20003bda:	f1a1 71b7 	sub.w	r1, r1, #23986176	@ 0x16e0000
20003bde:	f5a1 5158 	sub.w	r1, r1, #13824	@ 0x3600
20003be2:	4299      	cmp	r1, r3
20003be4:	b510      	push	{r4, lr}
20003be6:	d83c      	bhi.n	20003c62 <HAL_RCC_HCPU_EnableDLL+0x8a>
20003be8:	2801      	cmp	r0, #1
20003bea:	d002      	beq.n	20003bf2 <HAL_RCC_HCPU_EnableDLL+0x1a>
20003bec:	2802      	cmp	r0, #2
20003bee:	d036      	beq.n	20003c5e <HAL_RCC_HCPU_EnableDLL+0x86>
20003bf0:	e7fe      	b.n	20003bf0 <HAL_RCC_HCPU_EnableDLL+0x18>
20003bf2:	4c1e      	ldr	r4, [pc, #120]	@ (20003c6c <HAL_RCC_HCPU_EnableDLL+0x94>)
20003bf4:	4b1e      	ldr	r3, [pc, #120]	@ (20003c70 <HAL_RCC_HCPU_EnableDLL+0x98>)
20003bf6:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20003bfa:	0790      	lsls	r0, r2, #30
20003bfc:	bf58      	it	pl
20003bfe:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20003c02:	f04f 0000 	mov.w	r0, #0
20003c06:	bf5c      	itt	pl
20003c08:	f042 0202 	orrpl.w	r2, r2, #2
20003c0c:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20003c10:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20003c14:	07d2      	lsls	r2, r2, #31
20003c16:	bf5e      	ittt	pl
20003c18:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20003c1c:	f042 0201 	orrpl.w	r2, r2, #1
20003c20:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20003c24:	4a13      	ldr	r2, [pc, #76]	@ (20003c74 <HAL_RCC_HCPU_EnableDLL+0x9c>)
20003c26:	6823      	ldr	r3, [r4, #0]
20003c28:	fbb1 f1f2 	udiv	r1, r1, r2
20003c2c:	f023 0301 	bic.w	r3, r3, #1
20003c30:	6023      	str	r3, [r4, #0]
20003c32:	6823      	ldr	r3, [r4, #0]
20003c34:	f423 5300 	bic.w	r3, r3, #8192	@ 0x2000
20003c38:	f023 033c 	bic.w	r3, r3, #60	@ 0x3c
20003c3c:	ea43 0381 	orr.w	r3, r3, r1, lsl #2
20003c40:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
20003c44:	f043 0301 	orr.w	r3, r3, #1
20003c48:	6023      	str	r3, [r4, #0]
20003c4a:	f000 ff7f 	bl	20004b4c <HAL_Delay_us>
20003c4e:	200a      	movs	r0, #10
20003c50:	f000 ff7c 	bl	20004b4c <HAL_Delay_us>
20003c54:	6823      	ldr	r3, [r4, #0]
20003c56:	2b00      	cmp	r3, #0
20003c58:	dafc      	bge.n	20003c54 <HAL_RCC_HCPU_EnableDLL+0x7c>
20003c5a:	2000      	movs	r0, #0
20003c5c:	bd10      	pop	{r4, pc}
20003c5e:	4c06      	ldr	r4, [pc, #24]	@ (20003c78 <HAL_RCC_HCPU_EnableDLL+0xa0>)
20003c60:	e7c8      	b.n	20003bf4 <HAL_RCC_HCPU_EnableDLL+0x1c>
20003c62:	2001      	movs	r0, #1
20003c64:	e7fa      	b.n	20003c5c <HAL_RCC_HCPU_EnableDLL+0x84>
20003c66:	bf00      	nop
20003c68:	15752a00 	.word	0x15752a00
20003c6c:	5000002c 	.word	0x5000002c
20003c70:	5000b000 	.word	0x5000b000
20003c74:	016e3600 	.word	0x016e3600
20003c78:	50000030 	.word	0x50000030

20003c7c <HAL_RCC_HCPU_EnableDLL1>:
20003c7c:	4601      	mov	r1, r0
20003c7e:	2001      	movs	r0, #1
20003c80:	f7ff bfaa 	b.w	20003bd8 <HAL_RCC_HCPU_EnableDLL>

20003c84 <HAL_RCC_HCPU_EnableDLL2>:
20003c84:	4601      	mov	r1, r0
20003c86:	2002      	movs	r0, #2
20003c88:	f7ff bfa6 	b.w	20003bd8 <HAL_RCC_HCPU_EnableDLL>

20003c8c <HAL_RCC_HCPU_DisableDLL1>:
20003c8c:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20003c90:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
20003c92:	2000      	movs	r0, #0
20003c94:	f023 0301 	bic.w	r3, r3, #1
20003c98:	62d3      	str	r3, [r2, #44]	@ 0x2c
20003c9a:	4770      	bx	lr

20003c9c <HAL_RCC_GetSysCLKFreq>:
20003c9c:	2801      	cmp	r0, #1
20003c9e:	d108      	bne.n	20003cb2 <HAL_RCC_GetSysCLKFreq+0x16>
20003ca0:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20003ca4:	6a1b      	ldr	r3, [r3, #32]
20003ca6:	f003 0303 	and.w	r3, r3, #3
20003caa:	2b03      	cmp	r3, #3
20003cac:	d101      	bne.n	20003cb2 <HAL_RCC_GetSysCLKFreq+0x16>
20003cae:	f7ff bf8b 	b.w	20003bc8 <HAL_RCC_HCPU_GetDLL1Freq>
20003cb2:	4801      	ldr	r0, [pc, #4]	@ (20003cb8 <HAL_RCC_GetSysCLKFreq+0x1c>)
20003cb4:	4770      	bx	lr
20003cb6:	bf00      	nop
20003cb8:	02dc6c00 	.word	0x02dc6c00

20003cbc <HAL_RCC_GetHCLKFreq>:
20003cbc:	1e02      	subs	r2, r0, #0
20003cbe:	bf08      	it	eq
20003cc0:	2201      	moveq	r2, #1
20003cc2:	b508      	push	{r3, lr}
20003cc4:	4610      	mov	r0, r2
20003cc6:	f7ff ffe9 	bl	20003c9c <HAL_RCC_GetSysCLKFreq>
20003cca:	2a01      	cmp	r2, #1
20003ccc:	d002      	beq.n	20003cd4 <HAL_RCC_GetHCLKFreq+0x18>
20003cce:	2a02      	cmp	r2, #2
20003cd0:	d00a      	beq.n	20003ce8 <HAL_RCC_GetHCLKFreq+0x2c>
20003cd2:	e7fe      	b.n	20003cd2 <HAL_RCC_GetHCLKFreq+0x16>
20003cd4:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20003cd8:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
20003cda:	b2db      	uxtb	r3, r3
20003cdc:	2b01      	cmp	r3, #1
20003cde:	bfb8      	it	lt
20003ce0:	2301      	movlt	r3, #1
20003ce2:	fbb0 f0f3 	udiv	r0, r0, r3
20003ce6:	bd08      	pop	{r3, pc}
20003ce8:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
20003cec:	695b      	ldr	r3, [r3, #20]
20003cee:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
20003cf2:	e7f3      	b.n	20003cdc <HAL_RCC_GetHCLKFreq+0x20>

20003cf4 <HAL_RCC_HCPU_ClockSelect>:
20003cf4:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20003cf8:	b510      	push	{r4, lr}
20003cfa:	280d      	cmp	r0, #13
20003cfc:	6a1b      	ldr	r3, [r3, #32]
20003cfe:	d818      	bhi.n	20003d32 <HAL_RCC_HCPU_ClockSelect+0x3e>
20003d00:	f642 72f1 	movw	r2, #12273	@ 0x2ff1
20003d04:	40c2      	lsrs	r2, r0
20003d06:	f012 0f01 	tst.w	r2, #1
20003d0a:	bf0c      	ite	eq
20003d0c:	2201      	moveq	r2, #1
20003d0e:	2203      	movne	r2, #3
20003d10:	fa02 f400 	lsl.w	r4, r2, r0
20003d14:	4011      	ands	r1, r2
20003d16:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20003d1a:	ea23 0304 	bic.w	r3, r3, r4
20003d1e:	4081      	lsls	r1, r0
20003d20:	430b      	orrs	r3, r1
20003d22:	6213      	str	r3, [r2, #32]
20003d24:	b920      	cbnz	r0, 20003d30 <HAL_RCC_HCPU_ClockSelect+0x3c>
20003d26:	2001      	movs	r0, #1
20003d28:	f7ff ffc8 	bl	20003cbc <HAL_RCC_GetHCLKFreq>
20003d2c:	4b02      	ldr	r3, [pc, #8]	@ (20003d38 <HAL_RCC_HCPU_ClockSelect+0x44>)
20003d2e:	6018      	str	r0, [r3, #0]
20003d30:	bd10      	pop	{r4, pc}
20003d32:	2201      	movs	r2, #1
20003d34:	e7ec      	b.n	20003d10 <HAL_RCC_HCPU_ClockSelect+0x1c>
20003d36:	bf00      	nop
20003d38:	20005984 	.word	0x20005984

20003d3c <HAL_RCC_HCPU_SetDiv>:
20003d3c:	2800      	cmp	r0, #0
20003d3e:	bfd8      	it	le
20003d40:	2000      	movle	r0, #0
20003d42:	b508      	push	{r3, lr}
20003d44:	bfcc      	ite	gt
20003d46:	23ff      	movgt	r3, #255	@ 0xff
20003d48:	4603      	movle	r3, r0
20003d4a:	2900      	cmp	r1, #0
20003d4c:	db12      	blt.n	20003d74 <HAL_RCC_HCPU_SetDiv+0x38>
20003d4e:	2a00      	cmp	r2, #0
20003d50:	f443 63e0 	orr.w	r3, r3, #1792	@ 0x700
20003d54:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
20003d58:	da0e      	bge.n	20003d78 <HAL_RCC_HCPU_SetDiv+0x3c>
20003d5a:	f04f 41a0 	mov.w	r1, #1342177280	@ 0x50000000
20003d5e:	6a4a      	ldr	r2, [r1, #36]	@ 0x24
20003d60:	ea22 0303 	bic.w	r3, r2, r3
20003d64:	4303      	orrs	r3, r0
20003d66:	624b      	str	r3, [r1, #36]	@ 0x24
20003d68:	2001      	movs	r0, #1
20003d6a:	f7ff ffa7 	bl	20003cbc <HAL_RCC_GetHCLKFreq>
20003d6e:	4b07      	ldr	r3, [pc, #28]	@ (20003d8c <HAL_RCC_HCPU_SetDiv+0x50>)
20003d70:	6018      	str	r0, [r3, #0]
20003d72:	bd08      	pop	{r3, pc}
20003d74:	2a00      	cmp	r2, #0
20003d76:	db04      	blt.n	20003d82 <HAL_RCC_HCPU_SetDiv+0x46>
20003d78:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20003d7c:	ea40 3002 	orr.w	r0, r0, r2, lsl #12
20003d80:	e7eb      	b.n	20003d5a <HAL_RCC_HCPU_SetDiv+0x1e>
20003d82:	2b00      	cmp	r3, #0
20003d84:	d0f0      	beq.n	20003d68 <HAL_RCC_HCPU_SetDiv+0x2c>
20003d86:	23ff      	movs	r3, #255	@ 0xff
20003d88:	e7e7      	b.n	20003d5a <HAL_RCC_HCPU_SetDiv+0x1e>
20003d8a:	bf00      	nop
20003d8c:	20005984 	.word	0x20005984

20003d90 <HAL_RCC_HCPU_SwitchDvfsD2S>:
20003d90:	b570      	push	{r4, r5, r6, lr}
20003d92:	460c      	mov	r4, r1
20003d94:	4d19      	ldr	r5, [pc, #100]	@ (20003dfc <HAL_RCC_HCPU_SwitchDvfsD2S+0x6c>)
20003d96:	4606      	mov	r6, r0
20003d98:	f7ff feb8 	bl	20003b0c <HAL_RCC_HCPU_ConfigSxModeVolt>
20003d9c:	692b      	ldr	r3, [r5, #16]
20003d9e:	20fa      	movs	r0, #250	@ 0xfa
20003da0:	f023 0304 	bic.w	r3, r3, #4
20003da4:	612b      	str	r3, [r5, #16]
20003da6:	f000 fed1 	bl	20004b4c <HAL_Delay_us>
20003daa:	2c30      	cmp	r4, #48	@ 0x30
20003dac:	d80d      	bhi.n	20003dca <HAL_RCC_HCPU_SwitchDvfsD2S+0x3a>
20003dae:	2100      	movs	r1, #0
20003db0:	4608      	mov	r0, r1
20003db2:	f7ff ff9f 	bl	20003cf4 <HAL_RCC_HCPU_ClockSelect>
20003db6:	2030      	movs	r0, #48	@ 0x30
20003db8:	2204      	movs	r2, #4
20003dba:	2100      	movs	r1, #0
20003dbc:	fbb0 f0f4 	udiv	r0, r0, r4
20003dc0:	f7ff ffbc 	bl	20003d3c <HAL_RCC_HCPU_SetDiv>
20003dc4:	2400      	movs	r4, #0
20003dc6:	4620      	mov	r0, r4
20003dc8:	bd70      	pop	{r4, r5, r6, pc}
20003dca:	f000 fe53 	bl	20004a74 <HAL_HPAON_EnableXT48>
20003dce:	480c      	ldr	r0, [pc, #48]	@ (20003e00 <HAL_RCC_HCPU_SwitchDvfsD2S+0x70>)
20003dd0:	eb00 00c6 	add.w	r0, r0, r6, lsl #3
20003dd4:	6843      	ldr	r3, [r0, #4]
20003dd6:	480b      	ldr	r0, [pc, #44]	@ (20003e04 <HAL_RCC_HCPU_SwitchDvfsD2S+0x74>)
20003dd8:	61eb      	str	r3, [r5, #28]
20003dda:	4360      	muls	r0, r4
20003ddc:	f7ff ff4e 	bl	20003c7c <HAL_RCC_HCPU_EnableDLL1>
20003de0:	4604      	mov	r4, r0
20003de2:	2800      	cmp	r0, #0
20003de4:	d1ef      	bne.n	20003dc6 <HAL_RCC_HCPU_SwitchDvfsD2S+0x36>
20003de6:	2101      	movs	r1, #1
20003de8:	2206      	movs	r2, #6
20003dea:	4608      	mov	r0, r1
20003dec:	f7ff ffa6 	bl	20003d3c <HAL_RCC_HCPU_SetDiv>
20003df0:	2103      	movs	r1, #3
20003df2:	4620      	mov	r0, r4
20003df4:	f7ff ff7e 	bl	20003cf4 <HAL_RCC_HCPU_ClockSelect>
20003df8:	e7e4      	b.n	20003dc4 <HAL_RCC_HCPU_SwitchDvfsD2S+0x34>
20003dfa:	bf00      	nop
20003dfc:	5000b000 	.word	0x5000b000
20003e00:	20004284 	.word	0x20004284
20003e04:	000f4240 	.word	0x000f4240

20003e08 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>:
20003e08:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
20003e0c:	4c1d      	ldr	r4, [pc, #116]	@ (20003e84 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x7c>)
20003e0e:	4f1e      	ldr	r7, [pc, #120]	@ (20003e88 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x80>)
20003e10:	eb04 02c0 	add.w	r2, r4, r0, lsl #3
20003e14:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
20003e16:	7892      	ldrb	r2, [r2, #2]
20003e18:	4605      	mov	r5, r0
20003e1a:	f362 5317 	bfi	r3, r2, #20, #4
20003e1e:	ea4f 08c0 	mov.w	r8, r0, lsl #3
20003e22:	633b      	str	r3, [r7, #48]	@ 0x30
20003e24:	f10d 0007 	add.w	r0, sp, #7
20003e28:	460e      	mov	r6, r1
20003e2a:	f7fe ff15 	bl	20002c58 <HAL_PMU_GetHpsysVoutRef>
20003e2e:	b110      	cbz	r0, 20003e36 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x2e>
20003e30:	230b      	movs	r3, #11
20003e32:	f88d 3007 	strb.w	r3, [sp, #7]
20003e36:	f89d 1007 	ldrb.w	r1, [sp, #7]
20003e3a:	f914 2035 	ldrsb.w	r2, [r4, r5, lsl #3]
20003e3e:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
20003e40:	440a      	add	r2, r1
20003e42:	2100      	movs	r1, #0
20003e44:	f362 0385 	bfi	r3, r2, #2, #4
20003e48:	4608      	mov	r0, r1
20003e4a:	64fb      	str	r3, [r7, #76]	@ 0x4c
20003e4c:	f7ff ff52 	bl	20003cf4 <HAL_RCC_HCPU_ClockSelect>
20003e50:	2e30      	cmp	r6, #48	@ 0x30
20003e52:	d900      	bls.n	20003e56 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4e>
20003e54:	e7fe      	b.n	20003e54 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4c>
20003e56:	2030      	movs	r0, #48	@ 0x30
20003e58:	2204      	movs	r2, #4
20003e5a:	2100      	movs	r1, #0
20003e5c:	fbb0 f0f6 	udiv	r0, r0, r6
20003e60:	f7ff ff6c 	bl	20003d3c <HAL_RCC_HCPU_SetDiv>
20003e64:	f7ff ff12 	bl	20003c8c <HAL_RCC_HCPU_DisableDLL1>
20003e68:	f000 fe10 	bl	20004a8c <HAL_HPAON_DisableXT48>
20003e6c:	4444      	add	r4, r8
20003e6e:	4b07      	ldr	r3, [pc, #28]	@ (20003e8c <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x84>)
20003e70:	6862      	ldr	r2, [r4, #4]
20003e72:	61da      	str	r2, [r3, #28]
20003e74:	691a      	ldr	r2, [r3, #16]
20003e76:	f042 0204 	orr.w	r2, r2, #4
20003e7a:	611a      	str	r2, [r3, #16]
20003e7c:	b002      	add	sp, #8
20003e7e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20003e82:	bf00      	nop
20003e84:	20004284 	.word	0x20004284
20003e88:	500ca000 	.word	0x500ca000
20003e8c:	5000b000 	.word	0x5000b000

20003e90 <HAL_RCC_HCPU_ConfigDvfs>:
20003e90:	b570      	push	{r4, r5, r6, lr}
20003e92:	4e31      	ldr	r6, [pc, #196]	@ (20003f58 <HAL_RCC_HCPU_ConfigDvfs+0xc8>)
20003e94:	4605      	mov	r5, r0
20003e96:	7833      	ldrb	r3, [r6, #0]
20003e98:	460c      	mov	r4, r1
20003e9a:	2b01      	cmp	r3, #1
20003e9c:	d943      	bls.n	20003f26 <HAL_RCC_HCPU_ConfigDvfs+0x96>
20003e9e:	3b02      	subs	r3, #2
20003ea0:	2b01      	cmp	r3, #1
20003ea2:	d902      	bls.n	20003eaa <HAL_RCC_HCPU_ConfigDvfs+0x1a>
20003ea4:	2501      	movs	r5, #1
20003ea6:	4628      	mov	r0, r5
20003ea8:	bd70      	pop	{r4, r5, r6, pc}
20003eaa:	4b2c      	ldr	r3, [pc, #176]	@ (20003f5c <HAL_RCC_HCPU_ConfigDvfs+0xcc>)
20003eac:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
20003eb0:	f7ff fe8d 	bl	20003bce <HAL_RCC_HCPU_GetDLL2Freq>
20003eb4:	4290      	cmp	r0, r2
20003eb6:	d8f5      	bhi.n	20003ea4 <HAL_RCC_HCPU_ConfigDvfs+0x14>
20003eb8:	2901      	cmp	r1, #1
20003eba:	d805      	bhi.n	20003ec8 <HAL_RCC_HCPU_ConfigDvfs+0x38>
20003ebc:	4629      	mov	r1, r5
20003ebe:	4620      	mov	r0, r4
20003ec0:	f7ff ffa2 	bl	20003e08 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>
20003ec4:	2500      	movs	r5, #0
20003ec6:	e035      	b.n	20003f34 <HAL_RCC_HCPU_ConfigDvfs+0xa4>
20003ec8:	2100      	movs	r1, #0
20003eca:	4608      	mov	r0, r1
20003ecc:	f7ff ff12 	bl	20003cf4 <HAL_RCC_HCPU_ClockSelect>
20003ed0:	4620      	mov	r0, r4
20003ed2:	f7ff fe1b 	bl	20003b0c <HAL_RCC_HCPU_ConfigSxModeVolt>
20003ed6:	20fa      	movs	r0, #250	@ 0xfa
20003ed8:	f000 fe38 	bl	20004b4c <HAL_Delay_us>
20003edc:	f7ff fed6 	bl	20003c8c <HAL_RCC_HCPU_DisableDLL1>
20003ee0:	2d30      	cmp	r5, #48	@ 0x30
20003ee2:	d80d      	bhi.n	20003f00 <HAL_RCC_HCPU_ConfigDvfs+0x70>
20003ee4:	f000 fdd2 	bl	20004a8c <HAL_HPAON_DisableXT48>
20003ee8:	2100      	movs	r1, #0
20003eea:	4608      	mov	r0, r1
20003eec:	f7ff ff02 	bl	20003cf4 <HAL_RCC_HCPU_ClockSelect>
20003ef0:	2204      	movs	r2, #4
20003ef2:	2100      	movs	r1, #0
20003ef4:	2030      	movs	r0, #48	@ 0x30
20003ef6:	fbb0 f0f5 	udiv	r0, r0, r5
20003efa:	f7ff ff1f 	bl	20003d3c <HAL_RCC_HCPU_SetDiv>
20003efe:	e7e1      	b.n	20003ec4 <HAL_RCC_HCPU_ConfigDvfs+0x34>
20003f00:	f000 fdb8 	bl	20004a74 <HAL_HPAON_EnableXT48>
20003f04:	4816      	ldr	r0, [pc, #88]	@ (20003f60 <HAL_RCC_HCPU_ConfigDvfs+0xd0>)
20003f06:	4368      	muls	r0, r5
20003f08:	f7ff feb8 	bl	20003c7c <HAL_RCC_HCPU_EnableDLL1>
20003f0c:	4605      	mov	r5, r0
20003f0e:	2800      	cmp	r0, #0
20003f10:	d1c8      	bne.n	20003ea4 <HAL_RCC_HCPU_ConfigDvfs+0x14>
20003f12:	2101      	movs	r1, #1
20003f14:	2206      	movs	r2, #6
20003f16:	4608      	mov	r0, r1
20003f18:	f7ff ff10 	bl	20003d3c <HAL_RCC_HCPU_SetDiv>
20003f1c:	2103      	movs	r1, #3
20003f1e:	4628      	mov	r0, r5
20003f20:	f7ff fee8 	bl	20003cf4 <HAL_RCC_HCPU_ClockSelect>
20003f24:	e7ce      	b.n	20003ec4 <HAL_RCC_HCPU_ConfigDvfs+0x34>
20003f26:	2901      	cmp	r1, #1
20003f28:	d909      	bls.n	20003f3e <HAL_RCC_HCPU_ConfigDvfs+0xae>
20003f2a:	4601      	mov	r1, r0
20003f2c:	4620      	mov	r0, r4
20003f2e:	f7ff ff2f 	bl	20003d90 <HAL_RCC_HCPU_SwitchDvfsD2S>
20003f32:	4605      	mov	r5, r0
20003f34:	2000      	movs	r0, #0
20003f36:	7034      	strb	r4, [r6, #0]
20003f38:	f000 fe08 	bl	20004b4c <HAL_Delay_us>
20003f3c:	e7b3      	b.n	20003ea6 <HAL_RCC_HCPU_ConfigDvfs+0x16>
20003f3e:	428b      	cmp	r3, r1
20003f40:	d103      	bne.n	20003f4a <HAL_RCC_HCPU_ConfigDvfs+0xba>
20003f42:	f04f 32ff 	mov.w	r2, #4294967295
20003f46:	4611      	mov	r1, r2
20003f48:	e7d4      	b.n	20003ef4 <HAL_RCC_HCPU_ConfigDvfs+0x64>
20003f4a:	2190      	movs	r1, #144	@ 0x90
20003f4c:	2002      	movs	r0, #2
20003f4e:	f7ff ff1f 	bl	20003d90 <HAL_RCC_HCPU_SwitchDvfsD2S>
20003f52:	2800      	cmp	r0, #0
20003f54:	d1a6      	bne.n	20003ea4 <HAL_RCC_HCPU_ConfigDvfs+0x14>
20003f56:	e7b1      	b.n	20003ebc <HAL_RCC_HCPU_ConfigDvfs+0x2c>
20003f58:	20005988 	.word	0x20005988
20003f5c:	20004274 	.word	0x20004274
20003f60:	000f4240 	.word	0x000f4240

20003f64 <HAL_RCC_LCPU_SetDiv>:
20003f64:	2800      	cmp	r0, #0
20003f66:	b508      	push	{r3, lr}
20003f68:	dd11      	ble.n	20003f8e <HAL_RCC_LCPU_SetDiv+0x2a>
20003f6a:	2900      	cmp	r1, #0
20003f6c:	db26      	blt.n	20003fbc <HAL_RCC_LCPU_SetDiv+0x58>
20003f6e:	2801      	cmp	r0, #1
20003f70:	d100      	bne.n	20003f74 <HAL_RCC_LCPU_SetDiv+0x10>
20003f72:	b139      	cbz	r1, 20003f84 <HAL_RCC_LCPU_SetDiv+0x20>
20003f74:	233f      	movs	r3, #63	@ 0x3f
20003f76:	f443 63e0 	orr.w	r3, r3, #1792	@ 0x700
20003f7a:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
20003f7e:	2a00      	cmp	r2, #0
20003f80:	da0b      	bge.n	20003f9a <HAL_RCC_LCPU_SetDiv+0x36>
20003f82:	e00e      	b.n	20003fa2 <HAL_RCC_LCPU_SetDiv+0x3e>
20003f84:	4601      	mov	r1, r0
20003f86:	e7f5      	b.n	20003f74 <HAL_RCC_LCPU_SetDiv+0x10>
20003f88:	2000      	movs	r0, #0
20003f8a:	4603      	mov	r3, r0
20003f8c:	e7f3      	b.n	20003f76 <HAL_RCC_LCPU_SetDiv+0x12>
20003f8e:	2900      	cmp	r1, #0
20003f90:	dafa      	bge.n	20003f88 <HAL_RCC_LCPU_SetDiv+0x24>
20003f92:	2a00      	cmp	r2, #0
20003f94:	db0c      	blt.n	20003fb0 <HAL_RCC_LCPU_SetDiv+0x4c>
20003f96:	2000      	movs	r0, #0
20003f98:	4603      	mov	r3, r0
20003f9a:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20003f9e:	ea40 3002 	orr.w	r0, r0, r2, lsl #12
20003fa2:	f04f 4180 	mov.w	r1, #1073741824	@ 0x40000000
20003fa6:	694a      	ldr	r2, [r1, #20]
20003fa8:	ea22 0303 	bic.w	r3, r2, r3
20003fac:	4303      	orrs	r3, r0
20003fae:	614b      	str	r3, [r1, #20]
20003fb0:	2002      	movs	r0, #2
20003fb2:	f7ff fe83 	bl	20003cbc <HAL_RCC_GetHCLKFreq>
20003fb6:	4b02      	ldr	r3, [pc, #8]	@ (20003fc0 <HAL_RCC_LCPU_SetDiv+0x5c>)
20003fb8:	6018      	str	r0, [r3, #0]
20003fba:	bd08      	pop	{r3, pc}
20003fbc:	233f      	movs	r3, #63	@ 0x3f
20003fbe:	e7de      	b.n	20003f7e <HAL_RCC_LCPU_SetDiv+0x1a>
20003fc0:	20005984 	.word	0x20005984

20003fc4 <HAL_RCC_GetPCLKFreq>:
20003fc4:	b510      	push	{r4, lr}
20003fc6:	1e04      	subs	r4, r0, #0
20003fc8:	bf08      	it	eq
20003fca:	2401      	moveq	r4, #1
20003fcc:	4620      	mov	r0, r4
20003fce:	f7ff fe75 	bl	20003cbc <HAL_RCC_GetHCLKFreq>
20003fd2:	2c01      	cmp	r4, #1
20003fd4:	d002      	beq.n	20003fdc <HAL_RCC_GetPCLKFreq+0x18>
20003fd6:	2c02      	cmp	r4, #2
20003fd8:	d008      	beq.n	20003fec <HAL_RCC_GetPCLKFreq+0x28>
20003fda:	e7fe      	b.n	20003fda <HAL_RCC_GetPCLKFreq+0x16>
20003fdc:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20003fe0:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
20003fe2:	b139      	cbz	r1, 20003ff4 <HAL_RCC_GetPCLKFreq+0x30>
20003fe4:	f3c3 2302 	ubfx	r3, r3, #8, #3
20003fe8:	40d8      	lsrs	r0, r3
20003fea:	bd10      	pop	{r4, pc}
20003fec:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
20003ff0:	695b      	ldr	r3, [r3, #20]
20003ff2:	e7f6      	b.n	20003fe2 <HAL_RCC_GetPCLKFreq+0x1e>
20003ff4:	f3c3 3302 	ubfx	r3, r3, #12, #3
20003ff8:	e7f6      	b.n	20003fe8 <HAL_RCC_GetPCLKFreq+0x24>
	...

20003ffc <HAL_RCC_Reset_and_Halt_LCPU>:
20003ffc:	4a13      	ldr	r2, [pc, #76]	@ (2000404c <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
20003ffe:	6813      	ldr	r3, [r2, #0]
20004000:	0759      	lsls	r1, r3, #29
20004002:	d421      	bmi.n	20004048 <HAL_RCC_Reset_and_Halt_LCPU+0x4c>
20004004:	6811      	ldr	r1, [r2, #0]
20004006:	2800      	cmp	r0, #0
20004008:	bf0c      	ite	eq
2000400a:	2301      	moveq	r3, #1
2000400c:	f04f 33ff 	movne.w	r3, #4294967295
20004010:	f041 0104 	orr.w	r1, r1, #4
20004014:	6011      	str	r1, [r2, #0]
20004016:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
2000401a:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
2000401e:	6013      	str	r3, [r2, #0]
20004020:	6811      	ldr	r1, [r2, #0]
20004022:	2900      	cmp	r1, #0
20004024:	d0fc      	beq.n	20004020 <HAL_RCC_Reset_and_Halt_LCPU+0x24>
20004026:	4a09      	ldr	r2, [pc, #36]	@ (2000404c <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
20004028:	6c11      	ldr	r1, [r2, #64]	@ 0x40
2000402a:	06c8      	lsls	r0, r1, #27
2000402c:	d506      	bpl.n	2000403c <HAL_RCC_Reset_and_Halt_LCPU+0x40>
2000402e:	6c11      	ldr	r1, [r2, #64]	@ 0x40
20004030:	f041 0102 	orr.w	r1, r1, #2
20004034:	6411      	str	r1, [r2, #64]	@ 0x40
20004036:	6c11      	ldr	r1, [r2, #64]	@ 0x40
20004038:	06c9      	lsls	r1, r1, #27
2000403a:	d4fc      	bmi.n	20004036 <HAL_RCC_Reset_and_Halt_LCPU+0x3a>
2000403c:	f04f 4180 	mov.w	r1, #1073741824	@ 0x40000000
20004040:	680a      	ldr	r2, [r1, #0]
20004042:	ea22 0303 	bic.w	r3, r2, r3
20004046:	600b      	str	r3, [r1, #0]
20004048:	4770      	bx	lr
2000404a:	bf00      	nop
2000404c:	40040000 	.word	0x40040000

20004050 <HAL_RCC_EnableModule>:
20004050:	b507      	push	{r0, r1, r2, lr}
20004052:	466a      	mov	r2, sp
20004054:	a901      	add	r1, sp, #4
20004056:	f7ff fc5c 	bl	20003912 <RCC_GetModuleMask>
2000405a:	f1b0 4fa0 	cmp.w	r0, #1342177280	@ 0x50000000
2000405e:	d104      	bne.n	2000406a <HAL_RCC_EnableModule+0x1a>
20004060:	9b01      	ldr	r3, [sp, #4]
20004062:	b153      	cbz	r3, 2000407a <HAL_RCC_EnableModule+0x2a>
20004064:	2b01      	cmp	r3, #1
20004066:	d017      	beq.n	20004098 <HAL_RCC_EnableModule+0x48>
20004068:	e7fe      	b.n	20004068 <HAL_RCC_EnableModule+0x18>
2000406a:	f1b0 4f80 	cmp.w	r0, #1073741824	@ 0x40000000
2000406e:	d1fb      	bne.n	20004068 <HAL_RCC_EnableModule+0x18>
20004070:	9b01      	ldr	r3, [sp, #4]
20004072:	2b00      	cmp	r3, #0
20004074:	d1f8      	bne.n	20004068 <HAL_RCC_EnableModule+0x18>
20004076:	4b09      	ldr	r3, [pc, #36]	@ (2000409c <HAL_RCC_EnableModule+0x4c>)
20004078:	e000      	b.n	2000407c <HAL_RCC_EnableModule+0x2c>
2000407a:	4b09      	ldr	r3, [pc, #36]	@ (200040a0 <HAL_RCC_EnableModule+0x50>)
2000407c:	f3ef 8110 	mrs	r1, PRIMASK
20004080:	2201      	movs	r2, #1
20004082:	f382 8810 	msr	PRIMASK, r2
20004086:	681a      	ldr	r2, [r3, #0]
20004088:	9800      	ldr	r0, [sp, #0]
2000408a:	4302      	orrs	r2, r0
2000408c:	601a      	str	r2, [r3, #0]
2000408e:	f381 8810 	msr	PRIMASK, r1
20004092:	b003      	add	sp, #12
20004094:	f85d fb04 	ldr.w	pc, [sp], #4
20004098:	4b02      	ldr	r3, [pc, #8]	@ (200040a4 <HAL_RCC_EnableModule+0x54>)
2000409a:	e7ef      	b.n	2000407c <HAL_RCC_EnableModule+0x2c>
2000409c:	40000004 	.word	0x40000004
200040a0:	50000008 	.word	0x50000008
200040a4:	5000000c 	.word	0x5000000c

200040a8 <HAL_RCC_DisableModule>:
200040a8:	b507      	push	{r0, r1, r2, lr}
200040aa:	466a      	mov	r2, sp
200040ac:	a901      	add	r1, sp, #4
200040ae:	f7ff fc30 	bl	20003912 <RCC_GetModuleMask>
200040b2:	f1b0 4fa0 	cmp.w	r0, #1342177280	@ 0x50000000
200040b6:	d104      	bne.n	200040c2 <HAL_RCC_DisableModule+0x1a>
200040b8:	9b01      	ldr	r3, [sp, #4]
200040ba:	b153      	cbz	r3, 200040d2 <HAL_RCC_DisableModule+0x2a>
200040bc:	2b01      	cmp	r3, #1
200040be:	d018      	beq.n	200040f2 <HAL_RCC_DisableModule+0x4a>
200040c0:	e7fe      	b.n	200040c0 <HAL_RCC_DisableModule+0x18>
200040c2:	f1b0 4f80 	cmp.w	r0, #1073741824	@ 0x40000000
200040c6:	d1fb      	bne.n	200040c0 <HAL_RCC_DisableModule+0x18>
200040c8:	9b01      	ldr	r3, [sp, #4]
200040ca:	2b00      	cmp	r3, #0
200040cc:	d1f8      	bne.n	200040c0 <HAL_RCC_DisableModule+0x18>
200040ce:	4b0a      	ldr	r3, [pc, #40]	@ (200040f8 <HAL_RCC_DisableModule+0x50>)
200040d0:	e000      	b.n	200040d4 <HAL_RCC_DisableModule+0x2c>
200040d2:	4b0a      	ldr	r3, [pc, #40]	@ (200040fc <HAL_RCC_DisableModule+0x54>)
200040d4:	f3ef 8110 	mrs	r1, PRIMASK
200040d8:	2201      	movs	r2, #1
200040da:	f382 8810 	msr	PRIMASK, r2
200040de:	681a      	ldr	r2, [r3, #0]
200040e0:	9800      	ldr	r0, [sp, #0]
200040e2:	ea22 0200 	bic.w	r2, r2, r0
200040e6:	601a      	str	r2, [r3, #0]
200040e8:	f381 8810 	msr	PRIMASK, r1
200040ec:	b003      	add	sp, #12
200040ee:	f85d fb04 	ldr.w	pc, [sp], #4
200040f2:	4b03      	ldr	r3, [pc, #12]	@ (20004100 <HAL_RCC_DisableModule+0x58>)
200040f4:	e7ee      	b.n	200040d4 <HAL_RCC_DisableModule+0x2c>
200040f6:	bf00      	nop
200040f8:	40000004 	.word	0x40000004
200040fc:	50000008 	.word	0x50000008
20004100:	5000000c 	.word	0x5000000c

20004104 <HAL_RCC_CalibrateRC48>:
20004104:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20004108:	4b2a      	ldr	r3, [pc, #168]	@ (200041b4 <HAL_RCC_CalibrateRC48+0xb0>)
2000410a:	691b      	ldr	r3, [r3, #16]
2000410c:	2b00      	cmp	r3, #0
2000410e:	da4e      	bge.n	200041ae <HAL_RCC_CalibrateRC48+0xaa>
20004110:	f04f 45a0 	mov.w	r5, #1342177280	@ 0x50000000
20004114:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
20004116:	f04f 090b 	mov.w	r9, #11
2000411a:	f36f 030f 	bfc	r3, #0, #16
2000411e:	ea6f 3393 	mvn.w	r3, r3, lsr #14
20004122:	ea6f 3383 	mvn.w	r3, r3, lsl #14
20004126:	f44f 7400 	mov.w	r4, #512	@ 0x200
2000412a:	f44f 7880 	mov.w	r8, #256	@ 0x100
2000412e:	4e22      	ldr	r6, [pc, #136]	@ (200041b8 <HAL_RCC_CalibrateRC48+0xb4>)
20004130:	636b      	str	r3, [r5, #52]	@ 0x34
20004132:	6f73      	ldr	r3, [r6, #116]	@ 0x74
20004134:	4f21      	ldr	r7, [pc, #132]	@ (200041bc <HAL_RCC_CalibrateRC48+0xb8>)
20004136:	f443 03c0 	orr.w	r3, r3, #6291456	@ 0x600000
2000413a:	6773      	str	r3, [r6, #116]	@ 0x74
2000413c:	6f73      	ldr	r3, [r6, #116]	@ 0x74
2000413e:	f043 6340 	orr.w	r3, r3, #201326592	@ 0xc000000
20004142:	6773      	str	r3, [r6, #116]	@ 0x74
20004144:	f647 73e0 	movw	r3, #32736	@ 0x7fe0
20004148:	6f72      	ldr	r2, [r6, #116]	@ 0x74
2000414a:	ea03 1344 	and.w	r3, r3, r4, lsl #5
2000414e:	403a      	ands	r2, r7
20004150:	4313      	orrs	r3, r2
20004152:	6773      	str	r3, [r6, #116]	@ 0x74
20004154:	2003      	movs	r0, #3
20004156:	f000 fcf9 	bl	20004b4c <HAL_Delay_us>
2000415a:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
2000415c:	f043 4380 	orr.w	r3, r3, #1073741824	@ 0x40000000
20004160:	636b      	str	r3, [r5, #52]	@ 0x34
20004162:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
20004164:	2b00      	cmp	r3, #0
20004166:	dafc      	bge.n	20004162 <HAL_RCC_CalibrateRC48+0x5e>
20004168:	6ba9      	ldr	r1, [r5, #56]	@ 0x38
2000416a:	6baa      	ldr	r2, [r5, #56]	@ 0x38
2000416c:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
2000416e:	b290      	uxth	r0, r2
20004170:	f023 4380 	bic.w	r3, r3, #1073741824	@ 0x40000000
20004174:	ebb0 4f11 	cmp.w	r0, r1, lsr #16
20004178:	636b      	str	r3, [r5, #52]	@ 0x34
2000417a:	ea4f 4311 	mov.w	r3, r1, lsr #16
2000417e:	bf35      	itete	cc
20004180:	1a1b      	subcc	r3, r3, r0
20004182:	1ac0      	subcs	r0, r0, r3
20004184:	4444      	addcc	r4, r8
20004186:	eba4 0408 	subcs.w	r4, r4, r8
2000418a:	bf35      	itete	cc
2000418c:	b298      	uxthcc	r0, r3
2000418e:	b280      	uxthcs	r0, r0
20004190:	b2a4      	uxthcc	r4, r4
20004192:	b2a4      	uxthcs	r4, r4
20004194:	283f      	cmp	r0, #63	@ 0x3f
20004196:	d904      	bls.n	200041a2 <HAL_RCC_CalibrateRC48+0x9e>
20004198:	f1b9 0901 	subs.w	r9, r9, #1
2000419c:	ea4f 0858 	mov.w	r8, r8, lsr #1
200041a0:	d1d0      	bne.n	20004144 <HAL_RCC_CalibrateRC48+0x40>
200041a2:	28a0      	cmp	r0, #160	@ 0xa0
200041a4:	bf94      	ite	ls
200041a6:	2000      	movls	r0, #0
200041a8:	2001      	movhi	r0, #1
200041aa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
200041ae:	2001      	movs	r0, #1
200041b0:	e7fb      	b.n	200041aa <HAL_RCC_CalibrateRC48+0xa6>
200041b2:	bf00      	nop
200041b4:	500c0000 	.word	0x500c0000
200041b8:	500ca000 	.word	0x500ca000
200041bc:	ffff801f 	.word	0xffff801f

200041c0 <HAL_RCC_MspInit>:
200041c0:	4770      	bx	lr

200041c2 <HAL_RCC_HCPU_SetDeepWFIDiv>:
200041c2:	2800      	cmp	r0, #0
200041c4:	bfd6      	itet	le
200041c6:	2000      	movle	r0, #0
200041c8:	23ff      	movgt	r3, #255	@ 0xff
200041ca:	4603      	movle	r3, r0
200041cc:	2900      	cmp	r1, #0
200041ce:	db10      	blt.n	200041f2 <HAL_RCC_HCPU_SetDeepWFIDiv+0x30>
200041d0:	0209      	lsls	r1, r1, #8
200041d2:	f401 61e0 	and.w	r1, r1, #1792	@ 0x700
200041d6:	2a00      	cmp	r2, #0
200041d8:	f443 63e0 	orr.w	r3, r3, #1792	@ 0x700
200041dc:	ea40 0001 	orr.w	r0, r0, r1
200041e0:	da09      	bge.n	200041f6 <HAL_RCC_HCPU_SetDeepWFIDiv+0x34>
200041e2:	f04f 41a0 	mov.w	r1, #1342177280	@ 0x50000000
200041e6:	6c4a      	ldr	r2, [r1, #68]	@ 0x44
200041e8:	ea22 0303 	bic.w	r3, r2, r3
200041ec:	4303      	orrs	r3, r0
200041ee:	644b      	str	r3, [r1, #68]	@ 0x44
200041f0:	4770      	bx	lr
200041f2:	2a00      	cmp	r2, #0
200041f4:	db06      	blt.n	20004204 <HAL_RCC_HCPU_SetDeepWFIDiv+0x42>
200041f6:	0312      	lsls	r2, r2, #12
200041f8:	f402 42e0 	and.w	r2, r2, #28672	@ 0x7000
200041fc:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20004200:	4310      	orrs	r0, r2
20004202:	e7ee      	b.n	200041e2 <HAL_RCC_HCPU_SetDeepWFIDiv+0x20>
20004204:	2b00      	cmp	r3, #0
20004206:	d0f3      	beq.n	200041f0 <HAL_RCC_HCPU_SetDeepWFIDiv+0x2e>
20004208:	23ff      	movs	r3, #255	@ 0xff
2000420a:	e7ea      	b.n	200041e2 <HAL_RCC_HCPU_SetDeepWFIDiv+0x20>

2000420c <HAL_RCC_HCPU_DeepWFIClockSelect>:
2000420c:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20004210:	6c5a      	ldr	r2, [r3, #68]	@ 0x44
20004212:	f422 2280 	bic.w	r2, r2, #262144	@ 0x40000
20004216:	645a      	str	r2, [r3, #68]	@ 0x44
20004218:	6c5a      	ldr	r2, [r3, #68]	@ 0x44
2000421a:	f361 4211 	bfi	r2, r1, #16, #2
2000421e:	645a      	str	r2, [r3, #68]	@ 0x44
20004220:	4770      	bx	lr

20004222 <HAL_RCC_Init>:
20004222:	b508      	push	{r3, lr}
20004224:	200f      	movs	r0, #15
20004226:	f7ff ff3f 	bl	200040a8 <HAL_RCC_DisableModule>
2000422a:	200d      	movs	r0, #13
2000422c:	f7ff ff3c 	bl	200040a8 <HAL_RCC_DisableModule>
20004230:	2100      	movs	r1, #0
20004232:	2001      	movs	r0, #1
20004234:	f7ff ffea 	bl	2000420c <HAL_RCC_HCPU_DeepWFIClockSelect>
20004238:	460a      	mov	r2, r1
2000423a:	200c      	movs	r0, #12
2000423c:	f7ff ffc1 	bl	200041c2 <HAL_RCC_HCPU_SetDeepWFIDiv>
20004240:	2100      	movs	r1, #0
20004242:	200c      	movs	r0, #12
20004244:	f7ff fd56 	bl	20003cf4 <HAL_RCC_HCPU_ClockSelect>
20004248:	f7ff ffba 	bl	200041c0 <HAL_RCC_MspInit>
2000424c:	bd08      	pop	{r3, pc}

2000424e <HAL_RCC_HCPU_ConfigHCLK>:
2000424e:	28f0      	cmp	r0, #240	@ 0xf0
20004250:	d80d      	bhi.n	2000426e <HAL_RCC_HCPU_ConfigHCLK+0x20>
20004252:	2890      	cmp	r0, #144	@ 0x90
20004254:	d807      	bhi.n	20004266 <HAL_RCC_HCPU_ConfigHCLK+0x18>
20004256:	2830      	cmp	r0, #48	@ 0x30
20004258:	d807      	bhi.n	2000426a <HAL_RCC_HCPU_ConfigHCLK+0x1c>
2000425a:	2818      	cmp	r0, #24
2000425c:	bf94      	ite	ls
2000425e:	2100      	movls	r1, #0
20004260:	2101      	movhi	r1, #1
20004262:	f7ff be15 	b.w	20003e90 <HAL_RCC_HCPU_ConfigDvfs>
20004266:	2103      	movs	r1, #3
20004268:	e7fb      	b.n	20004262 <HAL_RCC_HCPU_ConfigHCLK+0x14>
2000426a:	2102      	movs	r1, #2
2000426c:	e7f9      	b.n	20004262 <HAL_RCC_HCPU_ConfigHCLK+0x14>
2000426e:	2001      	movs	r0, #1
20004270:	4770      	bx	lr
	...

20004274 <hpsys_dll2_limit>:
	...
2000427c:	8800 112a 8800 112a                         ..*...*.

20004284 <hpsys_dvfs_config>:
20004284:	06fb 0009 0330 0010 08fd 000a 0331 0011     ....0.......1...
20004294:	0b00 000d 0213 0013 0d02 000f 0213 0013     ................

200042a4 <SystemPowerOnModeGet>:
200042a4:	2000      	movs	r0, #0
200042a6:	4770      	bx	lr

200042a8 <BSP_GetFlash1DIV>:
200042a8:	4b01      	ldr	r3, [pc, #4]	@ (200042b0 <BSP_GetFlash1DIV+0x8>)
200042aa:	8818      	ldrh	r0, [r3, #0]
200042ac:	4770      	bx	lr
200042ae:	bf00      	nop
200042b0:	20005982 	.word	0x20005982

200042b4 <HAL_PreInit>:
200042b4:	b538      	push	{r3, r4, r5, lr}
200042b6:	2000      	movs	r0, #0
200042b8:	f7ff fc54 	bl	20003b64 <HAL_RCC_HCPU_GetClockSrc>
200042bc:	4604      	mov	r4, r0
200042be:	b928      	cbnz	r0, 200042cc <HAL_PreInit+0x18>
200042c0:	f000 fbd8 	bl	20004a74 <HAL_HPAON_EnableXT48>
200042c4:	2101      	movs	r1, #1
200042c6:	4620      	mov	r0, r4
200042c8:	f7ff fd14 	bl	20003cf4 <HAL_RCC_HCPU_ClockSelect>
200042cc:	2101      	movs	r1, #1
200042ce:	200c      	movs	r0, #12
200042d0:	f7ff fd10 	bl	20003cf4 <HAL_RCC_HCPU_ClockSelect>
200042d4:	f7ff ffe6 	bl	200042a4 <SystemPowerOnModeGet>
200042d8:	2801      	cmp	r0, #1
200042da:	d05b      	beq.n	20004394 <HAL_PreInit+0xe0>
200042dc:	2002      	movs	r0, #2
200042de:	f000 fb9f 	bl	20004a20 <HAL_HPAON_WakeCore>
200042e2:	2001      	movs	r0, #1
200042e4:	f7ff fe8a 	bl	20003ffc <HAL_RCC_Reset_and_Halt_LCPU>
200042e8:	f001 fb0e 	bl	20005908 <__BSP_System_Config_veneer>
200042ec:	f000 fbe4 	bl	20004ab8 <HAL_HPAON_StartGTimer>
200042f0:	2001      	movs	r0, #1
200042f2:	f001 fb25 	bl	20005940 <__HAL_PMU_EnableRC32K_veneer>
200042f6:	2002      	movs	r0, #2
200042f8:	f001 fb2a 	bl	20005950 <__HAL_PMU_LpCLockSelect_veneer>
200042fc:	4b36      	ldr	r3, [pc, #216]	@ (200043d8 <HAL_PreInit+0x124>)
200042fe:	4a37      	ldr	r2, [pc, #220]	@ (200043dc <HAL_PreInit+0x128>)
20004300:	2001      	movs	r0, #1
20004302:	f8c3 2090 	str.w	r2, [r3, #144]	@ 0x90
20004306:	f001 faf3 	bl	200058f0 <__HAL_PMU_EnableDLL_veneer>
2000430a:	f001 fb1d 	bl	20005948 <__HAL_PMU_EnableXTAL32_veneer>
2000430e:	f001 fb0b 	bl	20005928 <__HAL_PMU_LXTReady_veneer>
20004312:	b100      	cbz	r0, 20004316 <HAL_PreInit+0x62>
20004314:	e7fe      	b.n	20004314 <HAL_PreInit+0x60>
20004316:	4c32      	ldr	r4, [pc, #200]	@ (200043e0 <HAL_PreInit+0x12c>)
20004318:	4832      	ldr	r0, [pc, #200]	@ (200043e4 <HAL_PreInit+0x130>)
2000431a:	68a3      	ldr	r3, [r4, #8]
2000431c:	f043 0301 	orr.w	r3, r3, #1
20004320:	60a3      	str	r3, [r4, #8]
20004322:	f001 fafd 	bl	20005920 <__HAL_PMU_SetWdt_veneer>
20004326:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
2000432a:	6913      	ldr	r3, [r2, #16]
2000432c:	f043 0310 	orr.w	r3, r3, #16
20004330:	6113      	str	r3, [r2, #16]
20004332:	f3ef 8110 	mrs	r1, PRIMASK
20004336:	2301      	movs	r3, #1
20004338:	f383 8810 	msr	PRIMASK, r3
2000433c:	4a2a      	ldr	r2, [pc, #168]	@ (200043e8 <HAL_PreInit+0x134>)
2000433e:	7813      	ldrb	r3, [r2, #0]
20004340:	b903      	cbnz	r3, 20004344 <HAL_PreInit+0x90>
20004342:	e7fe      	b.n	20004342 <HAL_PreInit+0x8e>
20004344:	3b01      	subs	r3, #1
20004346:	b2db      	uxtb	r3, r3
20004348:	7013      	strb	r3, [r2, #0]
2000434a:	b923      	cbnz	r3, 20004356 <HAL_PreInit+0xa2>
2000434c:	4a27      	ldr	r2, [pc, #156]	@ (200043ec <HAL_PreInit+0x138>)
2000434e:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
20004350:	f023 0301 	bic.w	r3, r3, #1
20004354:	62d3      	str	r3, [r2, #44]	@ 0x2c
20004356:	f381 8810 	msr	PRIMASK, r1
2000435a:	68a4      	ldr	r4, [r4, #8]
2000435c:	f014 0401 	ands.w	r4, r4, #1
20004360:	d118      	bne.n	20004394 <HAL_PreInit+0xe0>
20004362:	f001 fae9 	bl	20005938 <__HAL_PMU_RC10Kconfig_veneer>
20004366:	2264      	movs	r2, #100	@ 0x64
20004368:	4621      	mov	r1, r4
2000436a:	20c8      	movs	r0, #200	@ 0xc8
2000436c:	f001 fad4 	bl	20005918 <__HAL_RC_CAL_update_reference_cycle_on_48M_ex_veneer>
20004370:	f001 faf6 	bl	20005960 <__HAL_RC_CAL_get_reference_cycle_on_48M_veneer>
20004374:	f44f 5216 	mov.w	r2, #9600	@ 0x2580
20004378:	fbb0 f0f2 	udiv	r0, r0, r2
2000437c:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20004380:	fbb2 f2f0 	udiv	r2, r2, r0
20004384:	4914      	ldr	r1, [pc, #80]	@ (200043d8 <HAL_PreInit+0x124>)
20004386:	3201      	adds	r2, #1
20004388:	6f0b      	ldr	r3, [r1, #112]	@ 0x70
2000438a:	f423 737c 	bic.w	r3, r3, #1008	@ 0x3f0
2000438e:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
20004392:	670b      	str	r3, [r1, #112]	@ 0x70
20004394:	2402      	movs	r4, #2
20004396:	2504      	movs	r5, #4
20004398:	20f0      	movs	r0, #240	@ 0xf0
2000439a:	f7ff ff58 	bl	2000424e <HAL_RCC_HCPU_ConfigHCLK>
2000439e:	4814      	ldr	r0, [pc, #80]	@ (200043f0 <HAL_PreInit+0x13c>)
200043a0:	f7ff fc70 	bl	20003c84 <HAL_RCC_HCPU_EnableDLL2>
200043a4:	2000      	movs	r0, #0
200043a6:	f000 fbd1 	bl	20004b4c <HAL_Delay_us>
200043aa:	4b12      	ldr	r3, [pc, #72]	@ (200043f4 <HAL_PreInit+0x140>)
200043ac:	801c      	strh	r4, [r3, #0]
200043ae:	4b12      	ldr	r3, [pc, #72]	@ (200043f8 <HAL_PreInit+0x144>)
200043b0:	801d      	strh	r5, [r3, #0]
200043b2:	f7fe fc25 	bl	20002c00 <HAL_MspInit>
200043b6:	4621      	mov	r1, r4
200043b8:	4628      	mov	r0, r5
200043ba:	f7ff fc9b 	bl	20003cf4 <HAL_RCC_HCPU_ClockSelect>
200043be:	2201      	movs	r2, #1
200043c0:	2000      	movs	r0, #0
200043c2:	4611      	mov	r1, r2
200043c4:	f7fe fc1e 	bl	20002c04 <HAL_PMU_ConfigPeriLdo>
200043c8:	f7ff fa64 	bl	20003894 <bsp_psramc_init>
200043cc:	4621      	mov	r1, r4
200043ce:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
200043d2:	2006      	movs	r0, #6
200043d4:	f7ff bc8e 	b.w	20003cf4 <HAL_RCC_HCPU_ClockSelect>
200043d8:	500ca000 	.word	0x500ca000
200043dc:	0004e200 	.word	0x0004e200
200043e0:	500cb000 	.word	0x500cb000
200043e4:	4000b000 	.word	0x4000b000
200043e8:	20005970 	.word	0x20005970
200043ec:	500c0000 	.word	0x500c0000
200043f0:	112a8800 	.word	0x112a8800
200043f4:	20005982 	.word	0x20005982
200043f8:	20005980 	.word	0x20005980

200043fc <BSP_IO_Init>:
200043fc:	b508      	push	{r3, lr}
200043fe:	f000 f8cd 	bl	2000459c <BSP_PIN_Init>
20004402:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20004406:	2001      	movs	r0, #1
20004408:	f000 ba29 	b.w	2000485e <BSP_Power_Up>

2000440c <board_pinmux_psram_func1_2_4>:
2000440c:	b510      	push	{r4, lr}
2000440e:	2301      	movs	r3, #1
20004410:	4604      	mov	r4, r0
20004412:	2210      	movs	r2, #16
20004414:	2109      	movs	r1, #9
20004416:	2002      	movs	r0, #2
20004418:	f000 fce6 	bl	20004de8 <HAL_PIN_Set>
2000441c:	2301      	movs	r3, #1
2000441e:	2210      	movs	r2, #16
20004420:	210a      	movs	r1, #10
20004422:	2003      	movs	r0, #3
20004424:	f000 fce0 	bl	20004de8 <HAL_PIN_Set>
20004428:	2301      	movs	r3, #1
2000442a:	2210      	movs	r2, #16
2000442c:	210b      	movs	r1, #11
2000442e:	2004      	movs	r0, #4
20004430:	f000 fcda 	bl	20004de8 <HAL_PIN_Set>
20004434:	2301      	movs	r3, #1
20004436:	2210      	movs	r2, #16
20004438:	210c      	movs	r1, #12
2000443a:	2005      	movs	r0, #5
2000443c:	f000 fcd4 	bl	20004de8 <HAL_PIN_Set>
20004440:	2301      	movs	r3, #1
20004442:	2210      	movs	r2, #16
20004444:	210d      	movs	r1, #13
20004446:	2009      	movs	r0, #9
20004448:	f000 fcce 	bl	20004de8 <HAL_PIN_Set>
2000444c:	2301      	movs	r3, #1
2000444e:	2210      	movs	r2, #16
20004450:	210e      	movs	r1, #14
20004452:	200a      	movs	r0, #10
20004454:	f000 fcc8 	bl	20004de8 <HAL_PIN_Set>
20004458:	2301      	movs	r3, #1
2000445a:	2210      	movs	r2, #16
2000445c:	210f      	movs	r1, #15
2000445e:	200b      	movs	r0, #11
20004460:	f000 fcc2 	bl	20004de8 <HAL_PIN_Set>
20004464:	2210      	movs	r2, #16
20004466:	2301      	movs	r3, #1
20004468:	4611      	mov	r1, r2
2000446a:	200c      	movs	r0, #12
2000446c:	f000 fcbc 	bl	20004de8 <HAL_PIN_Set>
20004470:	2301      	movs	r3, #1
20004472:	2200      	movs	r2, #0
20004474:	4619      	mov	r1, r3
20004476:	2008      	movs	r0, #8
20004478:	f000 fcb6 	bl	20004de8 <HAL_PIN_Set>
2000447c:	2301      	movs	r3, #1
2000447e:	2200      	movs	r2, #0
20004480:	2103      	movs	r1, #3
20004482:	2006      	movs	r0, #6
20004484:	f000 fcb0 	bl	20004de8 <HAL_PIN_Set>
20004488:	2c02      	cmp	r4, #2
2000448a:	f04f 0301 	mov.w	r3, #1
2000448e:	d010      	beq.n	200044b2 <board_pinmux_psram_func1_2_4+0xa6>
20004490:	2c04      	cmp	r4, #4
20004492:	d021      	beq.n	200044d8 <board_pinmux_psram_func1_2_4+0xcc>
20004494:	2210      	movs	r2, #16
20004496:	2106      	movs	r1, #6
20004498:	200d      	movs	r0, #13
2000449a:	f000 fca5 	bl	20004de8 <HAL_PIN_Set>
2000449e:	2101      	movs	r1, #1
200044a0:	4608      	mov	r0, r1
200044a2:	f000 fde5 	bl	20005070 <HAL_PIN_Set_Analog>
200044a6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200044aa:	2101      	movs	r1, #1
200044ac:	2007      	movs	r0, #7
200044ae:	f000 bddf 	b.w	20005070 <HAL_PIN_Set_Analog>
200044b2:	2210      	movs	r2, #16
200044b4:	2104      	movs	r1, #4
200044b6:	4618      	mov	r0, r3
200044b8:	f000 fc96 	bl	20004de8 <HAL_PIN_Set>
200044bc:	2301      	movs	r3, #1
200044be:	2210      	movs	r2, #16
200044c0:	2105      	movs	r1, #5
200044c2:	200d      	movs	r0, #13
200044c4:	f000 fc90 	bl	20004de8 <HAL_PIN_Set>
200044c8:	4621      	mov	r1, r4
200044ca:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200044ce:	2301      	movs	r3, #1
200044d0:	2200      	movs	r2, #0
200044d2:	2007      	movs	r0, #7
200044d4:	f000 bc88 	b.w	20004de8 <HAL_PIN_Set>
200044d8:	2200      	movs	r2, #0
200044da:	e7dc      	b.n	20004496 <board_pinmux_psram_func1_2_4+0x8a>

200044dc <BSP_PIN_Touch>:
200044dc:	b510      	push	{r4, lr}
200044de:	2301      	movs	r3, #1
200044e0:	2200      	movs	r2, #0
200044e2:	215b      	movs	r1, #91	@ 0x5b
200044e4:	2017      	movs	r0, #23
200044e6:	f000 fc7f 	bl	20004de8 <HAL_PIN_Set>
200044ea:	2301      	movs	r3, #1
200044ec:	2200      	movs	r2, #0
200044ee:	215c      	movs	r1, #92	@ 0x5c
200044f0:	2018      	movs	r0, #24
200044f2:	f000 fc79 	bl	20004de8 <HAL_PIN_Set>
200044f6:	2301      	movs	r3, #1
200044f8:	2230      	movs	r2, #48	@ 0x30
200044fa:	f44f 719c 	mov.w	r1, #312	@ 0x138
200044fe:	2022      	movs	r0, #34	@ 0x22
20004500:	f000 fc72 	bl	20004de8 <HAL_PIN_Set>
20004504:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20004508:	2301      	movs	r3, #1
2000450a:	2230      	movs	r2, #48	@ 0x30
2000450c:	f240 1139 	movw	r1, #313	@ 0x139
20004510:	2019      	movs	r0, #25
20004512:	f000 bc69 	b.w	20004de8 <HAL_PIN_Set>

20004516 <BSP_PIN_LCD>:
20004516:	b508      	push	{r3, lr}
20004518:	2200      	movs	r2, #0
2000451a:	2301      	movs	r3, #1
2000451c:	2152      	movs	r1, #82	@ 0x52
2000451e:	200e      	movs	r0, #14
20004520:	f000 fc62 	bl	20004de8 <HAL_PIN_Set>
20004524:	2301      	movs	r3, #1
20004526:	2200      	movs	r2, #0
20004528:	2153      	movs	r1, #83	@ 0x53
2000452a:	200f      	movs	r0, #15
2000452c:	f000 fc5c 	bl	20004de8 <HAL_PIN_Set>
20004530:	2301      	movs	r3, #1
20004532:	2200      	movs	r2, #0
20004534:	f240 1155 	movw	r1, #341	@ 0x155
20004538:	2010      	movs	r0, #16
2000453a:	f000 fc55 	bl	20004de8 <HAL_PIN_Set>
2000453e:	2301      	movs	r3, #1
20004540:	2200      	movs	r2, #0
20004542:	f44f 71a7 	mov.w	r1, #334	@ 0x14e
20004546:	2011      	movs	r0, #17
20004548:	f000 fc4e 	bl	20004de8 <HAL_PIN_Set>
2000454c:	2301      	movs	r3, #1
2000454e:	2200      	movs	r2, #0
20004550:	f240 114f 	movw	r1, #335	@ 0x14f
20004554:	2012      	movs	r0, #18
20004556:	f000 fc47 	bl	20004de8 <HAL_PIN_Set>
2000455a:	2301      	movs	r3, #1
2000455c:	2200      	movs	r2, #0
2000455e:	f44f 71a8 	mov.w	r1, #336	@ 0x150
20004562:	2013      	movs	r0, #19
20004564:	f000 fc40 	bl	20004de8 <HAL_PIN_Set>
20004568:	2301      	movs	r3, #1
2000456a:	2200      	movs	r2, #0
2000456c:	f240 1151 	movw	r1, #337	@ 0x151
20004570:	2014      	movs	r0, #20
20004572:	f000 fc39 	bl	20004de8 <HAL_PIN_Set>
20004576:	2301      	movs	r3, #1
20004578:	2200      	movs	r2, #0
2000457a:	f44f 71a9 	mov.w	r1, #338	@ 0x152
2000457e:	2015      	movs	r0, #21
20004580:	f000 fc32 	bl	20004de8 <HAL_PIN_Set>
20004584:	2301      	movs	r3, #1
20004586:	2200      	movs	r2, #0
20004588:	f240 1153 	movw	r1, #339	@ 0x153
2000458c:	2016      	movs	r0, #22
2000458e:	f000 fc2b 	bl	20004de8 <HAL_PIN_Set>
20004592:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20004596:	f7ff bfa1 	b.w	200044dc <BSP_PIN_Touch>
	...

2000459c <BSP_PIN_Init>:
2000459c:	b510      	push	{r4, lr}
2000459e:	4b9e      	ldr	r3, [pc, #632]	@ (20004818 <BSP_PIN_Init+0x27c>)
200045a0:	685b      	ldr	r3, [r3, #4]
200045a2:	f413 6fe0 	tst.w	r3, #1792	@ 0x700
200045a6:	f3c3 2402 	ubfx	r4, r3, #8, #3
200045aa:	d122      	bne.n	200045f2 <BSP_PIN_Init+0x56>
200045ac:	2301      	movs	r3, #1
200045ae:	4622      	mov	r2, r4
200045b0:	2103      	movs	r1, #3
200045b2:	2002      	movs	r0, #2
200045b4:	f000 fc18 	bl	20004de8 <HAL_PIN_Set>
200045b8:	2301      	movs	r3, #1
200045ba:	4622      	mov	r2, r4
200045bc:	4619      	mov	r1, r3
200045be:	200a      	movs	r0, #10
200045c0:	f000 fc12 	bl	20004de8 <HAL_PIN_Set>
200045c4:	2301      	movs	r3, #1
200045c6:	2210      	movs	r2, #16
200045c8:	2109      	movs	r1, #9
200045ca:	2008      	movs	r0, #8
200045cc:	f000 fc0c 	bl	20004de8 <HAL_PIN_Set>
200045d0:	2301      	movs	r3, #1
200045d2:	2210      	movs	r2, #16
200045d4:	210a      	movs	r1, #10
200045d6:	2003      	movs	r0, #3
200045d8:	f000 fc06 	bl	20004de8 <HAL_PIN_Set>
200045dc:	2301      	movs	r3, #1
200045de:	4622      	mov	r2, r4
200045e0:	210c      	movs	r1, #12
200045e2:	200b      	movs	r0, #11
200045e4:	f000 fc00 	bl	20004de8 <HAL_PIN_Set>
200045e8:	f7ff fe5c 	bl	200042a4 <SystemPowerOnModeGet>
200045ec:	2801      	cmp	r0, #1
200045ee:	d142      	bne.n	20004676 <BSP_PIN_Init+0xda>
200045f0:	e7fe      	b.n	200045f0 <BSP_PIN_Init+0x54>
200045f2:	2c01      	cmp	r4, #1
200045f4:	d175      	bne.n	200046e2 <BSP_PIN_Init+0x146>
200045f6:	4623      	mov	r3, r4
200045f8:	2200      	movs	r2, #0
200045fa:	2103      	movs	r1, #3
200045fc:	2005      	movs	r0, #5
200045fe:	f000 fbf3 	bl	20004de8 <HAL_PIN_Set>
20004602:	4623      	mov	r3, r4
20004604:	2200      	movs	r2, #0
20004606:	4621      	mov	r1, r4
20004608:	200a      	movs	r0, #10
2000460a:	f000 fbed 	bl	20004de8 <HAL_PIN_Set>
2000460e:	4623      	mov	r3, r4
20004610:	2210      	movs	r2, #16
20004612:	2109      	movs	r1, #9
20004614:	200c      	movs	r0, #12
20004616:	f000 fbe7 	bl	20004de8 <HAL_PIN_Set>
2000461a:	4623      	mov	r3, r4
2000461c:	2210      	movs	r2, #16
2000461e:	210a      	movs	r1, #10
20004620:	2003      	movs	r0, #3
20004622:	f000 fbe1 	bl	20004de8 <HAL_PIN_Set>
20004626:	4623      	mov	r3, r4
20004628:	2230      	movs	r2, #48	@ 0x30
2000462a:	210b      	movs	r1, #11
2000462c:	4620      	mov	r0, r4
2000462e:	f000 fbdb 	bl	20004de8 <HAL_PIN_Set>
20004632:	4623      	mov	r3, r4
20004634:	2230      	movs	r2, #48	@ 0x30
20004636:	210c      	movs	r1, #12
20004638:	2009      	movs	r0, #9
2000463a:	f000 fbd5 	bl	20004de8 <HAL_PIN_Set>
2000463e:	4621      	mov	r1, r4
20004640:	2002      	movs	r0, #2
20004642:	f000 fd15 	bl	20005070 <HAL_PIN_Set_Analog>
20004646:	4621      	mov	r1, r4
20004648:	2004      	movs	r0, #4
2000464a:	f000 fd11 	bl	20005070 <HAL_PIN_Set_Analog>
2000464e:	4621      	mov	r1, r4
20004650:	2006      	movs	r0, #6
20004652:	f000 fd0d 	bl	20005070 <HAL_PIN_Set_Analog>
20004656:	4621      	mov	r1, r4
20004658:	2007      	movs	r0, #7
2000465a:	f000 fd09 	bl	20005070 <HAL_PIN_Set_Analog>
2000465e:	4621      	mov	r1, r4
20004660:	2008      	movs	r0, #8
20004662:	f000 fd05 	bl	20005070 <HAL_PIN_Set_Analog>
20004666:	4621      	mov	r1, r4
20004668:	200b      	movs	r0, #11
2000466a:	f000 fd01 	bl	20005070 <HAL_PIN_Set_Analog>
2000466e:	2101      	movs	r1, #1
20004670:	200d      	movs	r0, #13
20004672:	f000 fcfd 	bl	20005070 <HAL_PIN_Set_Analog>
20004676:	2301      	movs	r3, #1
20004678:	2200      	movs	r2, #0
2000467a:	2119      	movs	r1, #25
2000467c:	201e      	movs	r0, #30
2000467e:	f000 fbb3 	bl	20004de8 <HAL_PIN_Set>
20004682:	2301      	movs	r3, #1
20004684:	2200      	movs	r2, #0
20004686:	211b      	movs	r1, #27
20004688:	201a      	movs	r0, #26
2000468a:	f000 fbad 	bl	20004de8 <HAL_PIN_Set>
2000468e:	2301      	movs	r3, #1
20004690:	2210      	movs	r2, #16
20004692:	2121      	movs	r1, #33	@ 0x21
20004694:	201d      	movs	r0, #29
20004696:	f000 fba7 	bl	20004de8 <HAL_PIN_Set>
2000469a:	2301      	movs	r3, #1
2000469c:	2210      	movs	r2, #16
2000469e:	2122      	movs	r1, #34	@ 0x22
200046a0:	201b      	movs	r0, #27
200046a2:	f000 fba1 	bl	20004de8 <HAL_PIN_Set>
200046a6:	2301      	movs	r3, #1
200046a8:	2230      	movs	r2, #48	@ 0x30
200046aa:	2123      	movs	r1, #35	@ 0x23
200046ac:	201c      	movs	r0, #28
200046ae:	f000 fb9b 	bl	20004de8 <HAL_PIN_Set>
200046b2:	2301      	movs	r3, #1
200046b4:	2230      	movs	r2, #48	@ 0x30
200046b6:	2124      	movs	r1, #36	@ 0x24
200046b8:	201f      	movs	r0, #31
200046ba:	f000 fb95 	bl	20004de8 <HAL_PIN_Set>
200046be:	2301      	movs	r3, #1
200046c0:	2230      	movs	r2, #48	@ 0x30
200046c2:	f240 1121 	movw	r1, #289	@ 0x121
200046c6:	2021      	movs	r0, #33	@ 0x21
200046c8:	f000 fb8e 	bl	20004de8 <HAL_PIN_Set>
200046cc:	2301      	movs	r3, #1
200046ce:	2230      	movs	r2, #48	@ 0x30
200046d0:	f44f 7190 	mov.w	r1, #288	@ 0x120
200046d4:	2020      	movs	r0, #32
200046d6:	f000 fb87 	bl	20004de8 <HAL_PIN_Set>
200046da:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200046de:	f7ff bf1a 	b.w	20004516 <BSP_PIN_LCD>
200046e2:	3c02      	subs	r4, #2
200046e4:	2c04      	cmp	r4, #4
200046e6:	f200 808d 	bhi.w	20004804 <BSP_PIN_Init+0x268>
200046ea:	e8df f004 	tbb	[pc, r4]
200046ee:	4446      	.short	0x4446
200046f0:	033e      	.short	0x033e
200046f2:	42          	.byte	0x42
200046f3:	00          	.byte	0x00
200046f4:	2301      	movs	r3, #1
200046f6:	2200      	movs	r2, #0
200046f8:	4619      	mov	r1, r3
200046fa:	200a      	movs	r0, #10
200046fc:	f000 fb74 	bl	20004de8 <HAL_PIN_Set>
20004700:	2301      	movs	r3, #1
20004702:	2200      	movs	r2, #0
20004704:	2103      	movs	r1, #3
20004706:	2009      	movs	r0, #9
20004708:	f000 fb6e 	bl	20004de8 <HAL_PIN_Set>
2000470c:	2301      	movs	r3, #1
2000470e:	2210      	movs	r2, #16
20004710:	2109      	movs	r1, #9
20004712:	2006      	movs	r0, #6
20004714:	f000 fb68 	bl	20004de8 <HAL_PIN_Set>
20004718:	2301      	movs	r3, #1
2000471a:	2210      	movs	r2, #16
2000471c:	210a      	movs	r1, #10
2000471e:	2008      	movs	r0, #8
20004720:	f000 fb62 	bl	20004de8 <HAL_PIN_Set>
20004724:	2301      	movs	r3, #1
20004726:	2230      	movs	r2, #48	@ 0x30
20004728:	210b      	movs	r1, #11
2000472a:	2007      	movs	r0, #7
2000472c:	f000 fb5c 	bl	20004de8 <HAL_PIN_Set>
20004730:	2301      	movs	r3, #1
20004732:	2230      	movs	r2, #48	@ 0x30
20004734:	210c      	movs	r1, #12
20004736:	200b      	movs	r0, #11
20004738:	f000 fb56 	bl	20004de8 <HAL_PIN_Set>
2000473c:	2101      	movs	r1, #1
2000473e:	4608      	mov	r0, r1
20004740:	f000 fc96 	bl	20005070 <HAL_PIN_Set_Analog>
20004744:	2101      	movs	r1, #1
20004746:	2002      	movs	r0, #2
20004748:	f000 fc92 	bl	20005070 <HAL_PIN_Set_Analog>
2000474c:	2101      	movs	r1, #1
2000474e:	2003      	movs	r0, #3
20004750:	f000 fc8e 	bl	20005070 <HAL_PIN_Set_Analog>
20004754:	2101      	movs	r1, #1
20004756:	2004      	movs	r0, #4
20004758:	f000 fc8a 	bl	20005070 <HAL_PIN_Set_Analog>
2000475c:	2101      	movs	r1, #1
2000475e:	2005      	movs	r0, #5
20004760:	f000 fc86 	bl	20005070 <HAL_PIN_Set_Analog>
20004764:	2101      	movs	r1, #1
20004766:	200c      	movs	r0, #12
20004768:	e77f      	b.n	2000466a <BSP_PIN_Init+0xce>
2000476a:	2002      	movs	r0, #2
2000476c:	f7ff fe4e 	bl	2000440c <board_pinmux_psram_func1_2_4>
20004770:	e781      	b.n	20004676 <BSP_PIN_Init+0xda>
20004772:	2004      	movs	r0, #4
20004774:	e7fa      	b.n	2000476c <BSP_PIN_Init+0x1d0>
20004776:	2001      	movs	r0, #1
20004778:	e7f8      	b.n	2000476c <BSP_PIN_Init+0x1d0>
2000477a:	2301      	movs	r3, #1
2000477c:	2210      	movs	r2, #16
2000477e:	2109      	movs	r1, #9
20004780:	2002      	movs	r0, #2
20004782:	f000 fb31 	bl	20004de8 <HAL_PIN_Set>
20004786:	2301      	movs	r3, #1
20004788:	2210      	movs	r2, #16
2000478a:	210a      	movs	r1, #10
2000478c:	2003      	movs	r0, #3
2000478e:	f000 fb2b 	bl	20004de8 <HAL_PIN_Set>
20004792:	2301      	movs	r3, #1
20004794:	2210      	movs	r2, #16
20004796:	210b      	movs	r1, #11
20004798:	2004      	movs	r0, #4
2000479a:	f000 fb25 	bl	20004de8 <HAL_PIN_Set>
2000479e:	2301      	movs	r3, #1
200047a0:	2210      	movs	r2, #16
200047a2:	210c      	movs	r1, #12
200047a4:	2005      	movs	r0, #5
200047a6:	f000 fb1f 	bl	20004de8 <HAL_PIN_Set>
200047aa:	2301      	movs	r3, #1
200047ac:	2210      	movs	r2, #16
200047ae:	210d      	movs	r1, #13
200047b0:	2006      	movs	r0, #6
200047b2:	f000 fb19 	bl	20004de8 <HAL_PIN_Set>
200047b6:	2301      	movs	r3, #1
200047b8:	2210      	movs	r2, #16
200047ba:	210e      	movs	r1, #14
200047bc:	2007      	movs	r0, #7
200047be:	f000 fb13 	bl	20004de8 <HAL_PIN_Set>
200047c2:	2301      	movs	r3, #1
200047c4:	2210      	movs	r2, #16
200047c6:	210f      	movs	r1, #15
200047c8:	2008      	movs	r0, #8
200047ca:	f000 fb0d 	bl	20004de8 <HAL_PIN_Set>
200047ce:	2210      	movs	r2, #16
200047d0:	2301      	movs	r3, #1
200047d2:	4611      	mov	r1, r2
200047d4:	2009      	movs	r0, #9
200047d6:	f000 fb07 	bl	20004de8 <HAL_PIN_Set>
200047da:	2301      	movs	r3, #1
200047dc:	2210      	movs	r2, #16
200047de:	2106      	movs	r1, #6
200047e0:	200a      	movs	r0, #10
200047e2:	f000 fb01 	bl	20004de8 <HAL_PIN_Set>
200047e6:	2301      	movs	r3, #1
200047e8:	2200      	movs	r2, #0
200047ea:	4619      	mov	r1, r3
200047ec:	200b      	movs	r0, #11
200047ee:	f000 fafb 	bl	20004de8 <HAL_PIN_Set>
200047f2:	2103      	movs	r1, #3
200047f4:	2301      	movs	r3, #1
200047f6:	2200      	movs	r2, #0
200047f8:	200c      	movs	r0, #12
200047fa:	f000 faf5 	bl	20004de8 <HAL_PIN_Set>
200047fe:	2101      	movs	r1, #1
20004800:	4608      	mov	r0, r1
20004802:	e732      	b.n	2000466a <BSP_PIN_Init+0xce>
20004804:	2400      	movs	r4, #0
20004806:	3401      	adds	r4, #1
20004808:	2101      	movs	r1, #1
2000480a:	4620      	mov	r0, r4
2000480c:	f000 fc30 	bl	20005070 <HAL_PIN_Set_Analog>
20004810:	2c0d      	cmp	r4, #13
20004812:	d1f8      	bne.n	20004806 <BSP_PIN_Init+0x26a>
20004814:	e72f      	b.n	20004676 <BSP_PIN_Init+0xda>
20004816:	bf00      	nop
20004818:	5000b000 	.word	0x5000b000

2000481c <BSP_GPIO_Set>:
2000481c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
2000481e:	4b0b      	ldr	r3, [pc, #44]	@ (2000484c <BSP_GPIO_Set+0x30>)
20004820:	4c0b      	ldr	r4, [pc, #44]	@ (20004850 <BSP_GPIO_Set+0x34>)
20004822:	4605      	mov	r5, r0
20004824:	2a00      	cmp	r2, #0
20004826:	bf18      	it	ne
20004828:	461c      	movne	r4, r3
2000482a:	2301      	movs	r3, #1
2000482c:	460e      	mov	r6, r1
2000482e:	e9cd 0301 	strd	r0, r3, [sp, #4]
20004832:	2300      	movs	r3, #0
20004834:	4620      	mov	r0, r4
20004836:	a901      	add	r1, sp, #4
20004838:	9303      	str	r3, [sp, #12]
2000483a:	f000 f827 	bl	2000488c <HAL_GPIO_Init>
2000483e:	4620      	mov	r0, r4
20004840:	b2f2      	uxtb	r2, r6
20004842:	b2a9      	uxth	r1, r5
20004844:	f000 f8ba 	bl	200049bc <HAL_GPIO_WritePin>
20004848:	b004      	add	sp, #16
2000484a:	bd70      	pop	{r4, r5, r6, pc}
2000484c:	500a0000 	.word	0x500a0000
20004850:	40080000 	.word	0x40080000

20004854 <BSP_PowerUpCustom>:
20004854:	2201      	movs	r2, #1
20004856:	200b      	movs	r0, #11
20004858:	4611      	mov	r1, r2
2000485a:	f7ff bfdf 	b.w	2000481c <BSP_GPIO_Set>

2000485e <BSP_Power_Up>:
2000485e:	b508      	push	{r3, lr}
20004860:	f7ff fff8 	bl	20004854 <BSP_PowerUpCustom>
20004864:	bd08      	pop	{r3, pc}
	...

20004868 <GPIO_GetInstance>:
20004868:	4b07      	ldr	r3, [pc, #28]	@ (20004888 <GPIO_GetInstance+0x20>)
2000486a:	4298      	cmp	r0, r3
2000486c:	bf14      	ite	ne
2000486e:	2340      	movne	r3, #64	@ 0x40
20004870:	2360      	moveq	r3, #96	@ 0x60
20004872:	428b      	cmp	r3, r1
20004874:	d800      	bhi.n	20004878 <GPIO_GetInstance+0x10>
20004876:	e7fe      	b.n	20004876 <GPIO_GetInstance+0xe>
20004878:	f001 031f 	and.w	r3, r1, #31
2000487c:	0949      	lsrs	r1, r1, #5
2000487e:	8013      	strh	r3, [r2, #0]
20004880:	eb00 10c1 	add.w	r0, r0, r1, lsl #7
20004884:	4770      	bx	lr
20004886:	bf00      	nop
20004888:	500a0000 	.word	0x500a0000

2000488c <HAL_GPIO_Init>:
2000488c:	b573      	push	{r0, r1, r4, r5, r6, lr}
2000488e:	460d      	mov	r5, r1
20004890:	4606      	mov	r6, r0
20004892:	b900      	cbnz	r0, 20004896 <HAL_GPIO_Init+0xa>
20004894:	e7fe      	b.n	20004894 <HAL_GPIO_Init+0x8>
20004896:	684c      	ldr	r4, [r1, #4]
20004898:	2c01      	cmp	r4, #1
2000489a:	d911      	bls.n	200048c0 <HAL_GPIO_Init+0x34>
2000489c:	2c11      	cmp	r4, #17
2000489e:	d00f      	beq.n	200048c0 <HAL_GPIO_Init+0x34>
200048a0:	4b40      	ldr	r3, [pc, #256]	@ (200049a4 <HAL_GPIO_Init+0x118>)
200048a2:	f424 1200 	bic.w	r2, r4, #2097152	@ 0x200000
200048a6:	429a      	cmp	r2, r3
200048a8:	d00a      	beq.n	200048c0 <HAL_GPIO_Init+0x34>
200048aa:	f503 1380 	add.w	r3, r3, #1048576	@ 0x100000
200048ae:	429c      	cmp	r4, r3
200048b0:	d006      	beq.n	200048c0 <HAL_GPIO_Init+0x34>
200048b2:	f424 1280 	bic.w	r2, r4, #1048576	@ 0x100000
200048b6:	f503 1300 	add.w	r3, r3, #2097152	@ 0x200000
200048ba:	429a      	cmp	r2, r3
200048bc:	d000      	beq.n	200048c0 <HAL_GPIO_Init+0x34>
200048be:	e7fe      	b.n	200048be <HAL_GPIO_Init+0x32>
200048c0:	68ab      	ldr	r3, [r5, #8]
200048c2:	2b02      	cmp	r3, #2
200048c4:	d900      	bls.n	200048c8 <HAL_GPIO_Init+0x3c>
200048c6:	e7fe      	b.n	200048c6 <HAL_GPIO_Init+0x3a>
200048c8:	4630      	mov	r0, r6
200048ca:	8829      	ldrh	r1, [r5, #0]
200048cc:	f10d 0206 	add.w	r2, sp, #6
200048d0:	f7ff ffca 	bl	20004868 <GPIO_GetInstance>
200048d4:	4603      	mov	r3, r0
200048d6:	b188      	cbz	r0, 200048fc <HAL_GPIO_Init+0x70>
200048d8:	2201      	movs	r2, #1
200048da:	f8bd 0006 	ldrh.w	r0, [sp, #6]
200048de:	2c01      	cmp	r4, #1
200048e0:	fa02 f200 	lsl.w	r2, r2, r0
200048e4:	d10c      	bne.n	20004900 <HAL_GPIO_Init+0x74>
200048e6:	6a59      	ldr	r1, [r3, #36]	@ 0x24
200048e8:	4311      	orrs	r1, r2
200048ea:	6259      	str	r1, [r3, #36]	@ 0x24
200048ec:	6d99      	ldr	r1, [r3, #88]	@ 0x58
200048ee:	4311      	orrs	r1, r2
200048f0:	6599      	str	r1, [r3, #88]	@ 0x58
200048f2:	64da      	str	r2, [r3, #76]	@ 0x4c
200048f4:	65da      	str	r2, [r3, #92]	@ 0x5c
200048f6:	63da      	str	r2, [r3, #60]	@ 0x3c
200048f8:	649a      	str	r2, [r3, #72]	@ 0x48
200048fa:	615a      	str	r2, [r3, #20]
200048fc:	b002      	add	sp, #8
200048fe:	bd70      	pop	{r4, r5, r6, pc}
20004900:	2c11      	cmp	r4, #17
20004902:	d10c      	bne.n	2000491e <HAL_GPIO_Init+0x92>
20004904:	6a59      	ldr	r1, [r3, #36]	@ 0x24
20004906:	4311      	orrs	r1, r2
20004908:	6259      	str	r1, [r3, #36]	@ 0x24
2000490a:	6d99      	ldr	r1, [r3, #88]	@ 0x58
2000490c:	4311      	orrs	r1, r2
2000490e:	6599      	str	r1, [r3, #88]	@ 0x58
20004910:	64da      	str	r2, [r3, #76]	@ 0x4c
20004912:	65da      	str	r2, [r3, #92]	@ 0x5c
20004914:	60da      	str	r2, [r3, #12]
20004916:	631a      	str	r2, [r3, #48]	@ 0x30
20004918:	639a      	str	r2, [r3, #56]	@ 0x38
2000491a:	645a      	str	r2, [r3, #68]	@ 0x44
2000491c:	e7ee      	b.n	200048fc <HAL_GPIO_Init+0x70>
2000491e:	b95c      	cbnz	r4, 20004938 <HAL_GPIO_Init+0xac>
20004920:	6a59      	ldr	r1, [r3, #36]	@ 0x24
20004922:	4311      	orrs	r1, r2
20004924:	6259      	str	r1, [r3, #36]	@ 0x24
20004926:	6d99      	ldr	r1, [r3, #88]	@ 0x58
20004928:	4311      	orrs	r1, r2
2000492a:	6599      	str	r1, [r3, #88]	@ 0x58
2000492c:	64da      	str	r2, [r3, #76]	@ 0x4c
2000492e:	65da      	str	r2, [r3, #92]	@ 0x5c
20004930:	63da      	str	r2, [r3, #60]	@ 0x3c
20004932:	649a      	str	r2, [r3, #72]	@ 0x48
20004934:	619a      	str	r2, [r3, #24]
20004936:	e7e1      	b.n	200048fc <HAL_GPIO_Init+0x70>
20004938:	619a      	str	r2, [r3, #24]
2000493a:	6869      	ldr	r1, [r5, #4]
2000493c:	4c19      	ldr	r4, [pc, #100]	@ (200049a4 <HAL_GPIO_Init+0x118>)
2000493e:	42a1      	cmp	r1, r4
20004940:	d111      	bne.n	20004966 <HAL_GPIO_Init+0xda>
20004942:	6ad9      	ldr	r1, [r3, #44]	@ 0x2c
20004944:	4311      	orrs	r1, r2
20004946:	62d9      	str	r1, [r3, #44]	@ 0x2c
20004948:	639a      	str	r2, [r3, #56]	@ 0x38
2000494a:	649a      	str	r2, [r3, #72]	@ 0x48
2000494c:	2201      	movs	r2, #1
2000494e:	4916      	ldr	r1, [pc, #88]	@ (200049a8 <HAL_GPIO_Init+0x11c>)
20004950:	4082      	lsls	r2, r0
20004952:	428e      	cmp	r6, r1
20004954:	bf0b      	itete	eq
20004956:	6a19      	ldreq	r1, [r3, #32]
20004958:	6d59      	ldrne	r1, [r3, #84]	@ 0x54
2000495a:	430a      	orreq	r2, r1
2000495c:	430a      	orrne	r2, r1
2000495e:	bf0c      	ite	eq
20004960:	621a      	streq	r2, [r3, #32]
20004962:	655a      	strne	r2, [r3, #84]	@ 0x54
20004964:	e7ca      	b.n	200048fc <HAL_GPIO_Init+0x70>
20004966:	4c11      	ldr	r4, [pc, #68]	@ (200049ac <HAL_GPIO_Init+0x120>)
20004968:	42a1      	cmp	r1, r4
2000496a:	d104      	bne.n	20004976 <HAL_GPIO_Init+0xea>
2000496c:	6ad9      	ldr	r1, [r3, #44]	@ 0x2c
2000496e:	4311      	orrs	r1, r2
20004970:	62d9      	str	r1, [r3, #44]	@ 0x2c
20004972:	63da      	str	r2, [r3, #60]	@ 0x3c
20004974:	e006      	b.n	20004984 <HAL_GPIO_Init+0xf8>
20004976:	4c0e      	ldr	r4, [pc, #56]	@ (200049b0 <HAL_GPIO_Init+0x124>)
20004978:	42a1      	cmp	r1, r4
2000497a:	d105      	bne.n	20004988 <HAL_GPIO_Init+0xfc>
2000497c:	6ad9      	ldr	r1, [r3, #44]	@ 0x2c
2000497e:	4311      	orrs	r1, r2
20004980:	62d9      	str	r1, [r3, #44]	@ 0x2c
20004982:	639a      	str	r2, [r3, #56]	@ 0x38
20004984:	645a      	str	r2, [r3, #68]	@ 0x44
20004986:	e7e1      	b.n	2000494c <HAL_GPIO_Init+0xc0>
20004988:	4c0a      	ldr	r4, [pc, #40]	@ (200049b4 <HAL_GPIO_Init+0x128>)
2000498a:	42a1      	cmp	r1, r4
2000498c:	d103      	bne.n	20004996 <HAL_GPIO_Init+0x10a>
2000498e:	6b19      	ldr	r1, [r3, #48]	@ 0x30
20004990:	4311      	orrs	r1, r2
20004992:	6319      	str	r1, [r3, #48]	@ 0x30
20004994:	e7d8      	b.n	20004948 <HAL_GPIO_Init+0xbc>
20004996:	4c08      	ldr	r4, [pc, #32]	@ (200049b8 <HAL_GPIO_Init+0x12c>)
20004998:	42a1      	cmp	r1, r4
2000499a:	d1d7      	bne.n	2000494c <HAL_GPIO_Init+0xc0>
2000499c:	6b19      	ldr	r1, [r3, #48]	@ 0x30
2000499e:	4311      	orrs	r1, r2
200049a0:	6319      	str	r1, [r3, #48]	@ 0x30
200049a2:	e7e6      	b.n	20004972 <HAL_GPIO_Init+0xe6>
200049a4:	10110000 	.word	0x10110000
200049a8:	500a0000 	.word	0x500a0000
200049ac:	10210000 	.word	0x10210000
200049b0:	10310000 	.word	0x10310000
200049b4:	10410000 	.word	0x10410000
200049b8:	10510000 	.word	0x10510000

200049bc <HAL_GPIO_WritePin>:
200049bc:	b537      	push	{r0, r1, r2, r4, r5, lr}
200049be:	4614      	mov	r4, r2
200049c0:	b900      	cbnz	r0, 200049c4 <HAL_GPIO_WritePin+0x8>
200049c2:	e7fe      	b.n	200049c2 <HAL_GPIO_WritePin+0x6>
200049c4:	2a01      	cmp	r2, #1
200049c6:	d900      	bls.n	200049ca <HAL_GPIO_WritePin+0xe>
200049c8:	e7fe      	b.n	200049c8 <HAL_GPIO_WritePin+0xc>
200049ca:	f10d 0206 	add.w	r2, sp, #6
200049ce:	f7ff ff4b 	bl	20004868 <GPIO_GetInstance>
200049d2:	b1d0      	cbz	r0, 20004a0a <HAL_GPIO_WritePin+0x4e>
200049d4:	2301      	movs	r3, #1
200049d6:	f8bd 1006 	ldrh.w	r1, [sp, #6]
200049da:	6842      	ldr	r2, [r0, #4]
200049dc:	408b      	lsls	r3, r1
200049de:	40ca      	lsrs	r2, r1
200049e0:	07d5      	lsls	r5, r2, #31
200049e2:	d418      	bmi.n	20004a16 <HAL_GPIO_WritePin+0x5a>
200049e4:	6a82      	ldr	r2, [r0, #40]	@ 0x28
200049e6:	40ca      	lsrs	r2, r1
200049e8:	07d2      	lsls	r2, r2, #31
200049ea:	d414      	bmi.n	20004a16 <HAL_GPIO_WritePin+0x5a>
200049ec:	6b41      	ldr	r1, [r0, #52]	@ 0x34
200049ee:	ea01 0203 	and.w	r2, r1, r3
200049f2:	ea33 0101 	bics.w	r1, r3, r1
200049f6:	d10e      	bne.n	20004a16 <HAL_GPIO_WritePin+0x5a>
200049f8:	6c05      	ldr	r5, [r0, #64]	@ 0x40
200049fa:	ea05 0102 	and.w	r1, r5, r2
200049fe:	43aa      	bics	r2, r5
20004a00:	d109      	bne.n	20004a16 <HAL_GPIO_WritePin+0x5a>
20004a02:	b924      	cbnz	r4, 20004a0e <HAL_GPIO_WritePin+0x52>
20004a04:	6943      	ldr	r3, [r0, #20]
20004a06:	430b      	orrs	r3, r1
20004a08:	6143      	str	r3, [r0, #20]
20004a0a:	b003      	add	sp, #12
20004a0c:	bd30      	pop	{r4, r5, pc}
20004a0e:	6983      	ldr	r3, [r0, #24]
20004a10:	430b      	orrs	r3, r1
20004a12:	6183      	str	r3, [r0, #24]
20004a14:	e7f9      	b.n	20004a0a <HAL_GPIO_WritePin+0x4e>
20004a16:	b10c      	cbz	r4, 20004a1c <HAL_GPIO_WritePin+0x60>
20004a18:	6083      	str	r3, [r0, #8]
20004a1a:	e7f6      	b.n	20004a0a <HAL_GPIO_WritePin+0x4e>
20004a1c:	60c3      	str	r3, [r0, #12]
20004a1e:	e7f4      	b.n	20004a0a <HAL_GPIO_WritePin+0x4e>

20004a20 <HAL_HPAON_WakeCore>:
20004a20:	2802      	cmp	r0, #2
20004a22:	b510      	push	{r4, lr}
20004a24:	d120      	bne.n	20004a68 <HAL_HPAON_WakeCore+0x48>
20004a26:	4c11      	ldr	r4, [pc, #68]	@ (20004a6c <HAL_HPAON_WakeCore+0x4c>)
20004a28:	20e6      	movs	r0, #230	@ 0xe6
20004a2a:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20004a2c:	f043 0301 	orr.w	r3, r3, #1
20004a30:	62e3      	str	r3, [r4, #44]	@ 0x2c
20004a32:	f000 f88b 	bl	20004b4c <HAL_Delay_us>
20004a36:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20004a38:	069a      	lsls	r2, r3, #26
20004a3a:	d5fc      	bpl.n	20004a36 <HAL_HPAON_WakeCore+0x16>
20004a3c:	201e      	movs	r0, #30
20004a3e:	f000 f885 	bl	20004b4c <HAL_Delay_us>
20004a42:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20004a44:	069b      	lsls	r3, r3, #26
20004a46:	d5fc      	bpl.n	20004a42 <HAL_HPAON_WakeCore+0x22>
20004a48:	f3ef 8110 	mrs	r1, PRIMASK
20004a4c:	2301      	movs	r3, #1
20004a4e:	f383 8810 	msr	PRIMASK, r3
20004a52:	4a07      	ldr	r2, [pc, #28]	@ (20004a70 <HAL_HPAON_WakeCore+0x50>)
20004a54:	7813      	ldrb	r3, [r2, #0]
20004a56:	2b13      	cmp	r3, #19
20004a58:	d900      	bls.n	20004a5c <HAL_HPAON_WakeCore+0x3c>
20004a5a:	e7fe      	b.n	20004a5a <HAL_HPAON_WakeCore+0x3a>
20004a5c:	3301      	adds	r3, #1
20004a5e:	7013      	strb	r3, [r2, #0]
20004a60:	f381 8810 	msr	PRIMASK, r1
20004a64:	2000      	movs	r0, #0
20004a66:	bd10      	pop	{r4, pc}
20004a68:	2001      	movs	r0, #1
20004a6a:	e7fc      	b.n	20004a66 <HAL_HPAON_WakeCore+0x46>
20004a6c:	500c0000 	.word	0x500c0000
20004a70:	20005970 	.word	0x20005970

20004a74 <HAL_HPAON_EnableXT48>:
20004a74:	4b04      	ldr	r3, [pc, #16]	@ (20004a88 <HAL_HPAON_EnableXT48+0x14>)
20004a76:	691a      	ldr	r2, [r3, #16]
20004a78:	f042 0202 	orr.w	r2, r2, #2
20004a7c:	611a      	str	r2, [r3, #16]
20004a7e:	691a      	ldr	r2, [r3, #16]
20004a80:	2a00      	cmp	r2, #0
20004a82:	dafc      	bge.n	20004a7e <HAL_HPAON_EnableXT48+0xa>
20004a84:	4770      	bx	lr
20004a86:	bf00      	nop
20004a88:	500c0000 	.word	0x500c0000

20004a8c <HAL_HPAON_DisableXT48>:
20004a8c:	4a02      	ldr	r2, [pc, #8]	@ (20004a98 <HAL_HPAON_DisableXT48+0xc>)
20004a8e:	6913      	ldr	r3, [r2, #16]
20004a90:	f023 0302 	bic.w	r3, r3, #2
20004a94:	6113      	str	r3, [r2, #16]
20004a96:	4770      	bx	lr
20004a98:	500c0000 	.word	0x500c0000

20004a9c <HAL_GTIMER_Check>:
20004a9c:	4b05      	ldr	r3, [pc, #20]	@ (20004ab4 <HAL_GTIMER_Check+0x18>)
20004a9e:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
20004aa0:	4283      	cmp	r3, r0
20004aa2:	bf38      	it	cc
20004aa4:	f103 33ff 	addcc.w	r3, r3, #4294967295
20004aa8:	1a18      	subs	r0, r3, r0
20004aaa:	4288      	cmp	r0, r1
20004aac:	bf2c      	ite	cs
20004aae:	2003      	movcs	r0, #3
20004ab0:	2000      	movcc	r0, #0
20004ab2:	4770      	bx	lr
20004ab4:	500c0000 	.word	0x500c0000

20004ab8 <HAL_HPAON_StartGTimer>:
20004ab8:	4b09      	ldr	r3, [pc, #36]	@ (20004ae0 <HAL_HPAON_StartGTimer+0x28>)
20004aba:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
20004abc:	0692      	lsls	r2, r2, #26
20004abe:	d50c      	bpl.n	20004ada <HAL_HPAON_StartGTimer+0x22>
20004ac0:	4908      	ldr	r1, [pc, #32]	@ (20004ae4 <HAL_HPAON_StartGTimer+0x2c>)
20004ac2:	2000      	movs	r0, #0
20004ac4:	684a      	ldr	r2, [r1, #4]
20004ac6:	f042 4200 	orr.w	r2, r2, #2147483648	@ 0x80000000
20004aca:	604a      	str	r2, [r1, #4]
20004acc:	685a      	ldr	r2, [r3, #4]
20004ace:	f042 4200 	orr.w	r2, r2, #2147483648	@ 0x80000000
20004ad2:	605a      	str	r2, [r3, #4]
20004ad4:	2201      	movs	r2, #1
20004ad6:	635a      	str	r2, [r3, #52]	@ 0x34
20004ad8:	4770      	bx	lr
20004ada:	2001      	movs	r0, #1
20004adc:	4770      	bx	lr
20004ade:	bf00      	nop
20004ae0:	500c0000 	.word	0x500c0000
20004ae4:	40040000 	.word	0x40040000

20004ae8 <HAL_Init>:
20004ae8:	b510      	push	{r4, lr}
20004aea:	f7ff fbe3 	bl	200042b4 <HAL_PreInit>
20004aee:	f7ff fbd9 	bl	200042a4 <SystemPowerOnModeGet>
20004af2:	2801      	cmp	r0, #1
20004af4:	d003      	beq.n	20004afe <HAL_Init+0x16>
20004af6:	f7ff fb05 	bl	20004104 <HAL_RCC_CalibrateRC48>
20004afa:	b100      	cbz	r0, 20004afe <HAL_Init+0x16>
20004afc:	e7fe      	b.n	20004afc <HAL_Init+0x14>
20004afe:	f000 ff17 	bl	20005930 <__HAL_PostMspInit_veneer>
20004b02:	f7ff fb8e 	bl	20004222 <HAL_RCC_Init>
20004b06:	f7ff fbcd 	bl	200042a4 <SystemPowerOnModeGet>
20004b0a:	2801      	cmp	r0, #1
20004b0c:	d001      	beq.n	20004b12 <HAL_Init+0x2a>
20004b0e:	f000 feff 	bl	20005910 <__HAL_PMU_Init_veneer>
20004b12:	f7ff fbc7 	bl	200042a4 <SystemPowerOnModeGet>
20004b16:	3801      	subs	r0, #1
20004b18:	bf18      	it	ne
20004b1a:	2001      	movne	r0, #1
20004b1c:	f000 ff1c 	bl	20005958 <__HAL_ADC_HwInit_veneer>
20004b20:	2003      	movs	r0, #3
20004b22:	f000 feed 	bl	20005900 <__HAL_NVIC_SetPriorityGrouping_veneer>
20004b26:	2000      	movs	r0, #0
20004b28:	f000 fee6 	bl	200058f8 <__HAL_InitTick_veneer>
20004b2c:	4604      	mov	r4, r0
20004b2e:	b940      	cbnz	r0, 20004b42 <HAL_Init+0x5a>
20004b30:	4a05      	ldr	r2, [pc, #20]	@ (20004b48 <HAL_Init+0x60>)
20004b32:	68d3      	ldr	r3, [r2, #12]
20004b34:	f023 0301 	bic.w	r3, r3, #1
20004b38:	60d3      	str	r3, [r2, #12]
20004b3a:	f000 ff15 	bl	20005968 <__HAL_EFUSE_Init_veneer>
20004b3e:	4620      	mov	r0, r4
20004b40:	bd10      	pop	{r4, pc}
20004b42:	2401      	movs	r4, #1
20004b44:	e7fb      	b.n	20004b3e <HAL_Init+0x56>
20004b46:	bf00      	nop
20004b48:	5000b000 	.word	0x5000b000

20004b4c <HAL_Delay_us>:
20004b4c:	4603      	mov	r3, r0
20004b4e:	b570      	push	{r4, r5, r6, lr}
20004b50:	b1b8      	cbz	r0, 20004b82 <HAL_Delay_us+0x36>
20004b52:	f242 7510 	movw	r5, #10000	@ 0x2710
20004b56:	f04f 26e0 	mov.w	r6, #3758153728	@ 0xe000e000
20004b5a:	42ab      	cmp	r3, r5
20004b5c:	bf84      	itt	hi
20004b5e:	f5a3 541c 	subhi.w	r4, r3, #9984	@ 0x2700
20004b62:	f242 7310 	movwhi	r3, #10000	@ 0x2710
20004b66:	6932      	ldr	r2, [r6, #16]
20004b68:	bf98      	it	ls
20004b6a:	2400      	movls	r4, #0
20004b6c:	4618      	mov	r0, r3
20004b6e:	bf88      	it	hi
20004b70:	3c10      	subhi	r4, #16
20004b72:	07d3      	lsls	r3, r2, #31
20004b74:	d408      	bmi.n	20004b88 <HAL_Delay_us+0x3c>
20004b76:	f000 f80b 	bl	20004b90 <HAL_Delay_us_>
20004b7a:	4623      	mov	r3, r4
20004b7c:	2c00      	cmp	r4, #0
20004b7e:	d1ec      	bne.n	20004b5a <HAL_Delay_us+0xe>
20004b80:	e001      	b.n	20004b86 <HAL_Delay_us+0x3a>
20004b82:	f000 f805 	bl	20004b90 <HAL_Delay_us_>
20004b86:	bd70      	pop	{r4, r5, r6, pc}
20004b88:	f000 f842 	bl	20004c10 <HAL_Delay_us2_>
20004b8c:	e7f5      	b.n	20004b7a <HAL_Delay_us+0x2e>
	...

20004b90 <HAL_Delay_us_>:
20004b90:	b513      	push	{r0, r1, r4, lr}
20004b92:	9001      	str	r0, [sp, #4]
20004b94:	9b01      	ldr	r3, [sp, #4]
20004b96:	4c1a      	ldr	r4, [pc, #104]	@ (20004c00 <HAL_Delay_us_+0x70>)
20004b98:	b133      	cbz	r3, 20004ba8 <HAL_Delay_us_+0x18>
20004b9a:	6823      	ldr	r3, [r4, #0]
20004b9c:	b123      	cbz	r3, 20004ba8 <HAL_Delay_us_+0x18>
20004b9e:	9b01      	ldr	r3, [sp, #4]
20004ba0:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20004ba4:	d90c      	bls.n	20004bc0 <HAL_Delay_us_+0x30>
20004ba6:	e7fe      	b.n	20004ba6 <HAL_Delay_us_+0x16>
20004ba8:	2000      	movs	r0, #0
20004baa:	f7ff f887 	bl	20003cbc <HAL_RCC_GetHCLKFreq>
20004bae:	4b15      	ldr	r3, [pc, #84]	@ (20004c04 <HAL_Delay_us_+0x74>)
20004bb0:	fbb0 f0f3 	udiv	r0, r0, r3
20004bb4:	9b01      	ldr	r3, [sp, #4]
20004bb6:	6020      	str	r0, [r4, #0]
20004bb8:	2b00      	cmp	r3, #0
20004bba:	d1f0      	bne.n	20004b9e <HAL_Delay_us_+0xe>
20004bbc:	b002      	add	sp, #8
20004bbe:	bd10      	pop	{r4, pc}
20004bc0:	9b01      	ldr	r3, [sp, #4]
20004bc2:	2b00      	cmp	r3, #0
20004bc4:	d0fa      	beq.n	20004bbc <HAL_Delay_us_+0x2c>
20004bc6:	4a10      	ldr	r2, [pc, #64]	@ (20004c08 <HAL_Delay_us_+0x78>)
20004bc8:	6813      	ldr	r3, [r2, #0]
20004bca:	f013 0301 	ands.w	r3, r3, #1
20004bce:	d10d      	bne.n	20004bec <HAL_Delay_us_+0x5c>
20004bd0:	480e      	ldr	r0, [pc, #56]	@ (20004c0c <HAL_Delay_us_+0x7c>)
20004bd2:	f8d0 10fc 	ldr.w	r1, [r0, #252]	@ 0xfc
20004bd6:	f041 7180 	orr.w	r1, r1, #16777216	@ 0x1000000
20004bda:	f8c0 10fc 	str.w	r1, [r0, #252]	@ 0xfc
20004bde:	6053      	str	r3, [r2, #4]
20004be0:	6813      	ldr	r3, [r2, #0]
20004be2:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
20004be6:	f043 0301 	orr.w	r3, r3, #1
20004bea:	6013      	str	r3, [r2, #0]
20004bec:	9b01      	ldr	r3, [sp, #4]
20004bee:	6822      	ldr	r2, [r4, #0]
20004bf0:	4905      	ldr	r1, [pc, #20]	@ (20004c08 <HAL_Delay_us_+0x78>)
20004bf2:	4353      	muls	r3, r2
20004bf4:	6848      	ldr	r0, [r1, #4]
20004bf6:	684a      	ldr	r2, [r1, #4]
20004bf8:	1a12      	subs	r2, r2, r0
20004bfa:	429a      	cmp	r2, r3
20004bfc:	d3fb      	bcc.n	20004bf6 <HAL_Delay_us_+0x66>
20004bfe:	e7dd      	b.n	20004bbc <HAL_Delay_us_+0x2c>
20004c00:	20005a3c 	.word	0x20005a3c
20004c04:	000f4240 	.word	0x000f4240
20004c08:	e0001000 	.word	0xe0001000
20004c0c:	e000ed00 	.word	0xe000ed00

20004c10 <HAL_Delay_us2_>:
20004c10:	b537      	push	{r0, r1, r2, r4, r5, lr}
20004c12:	9001      	str	r0, [sp, #4]
20004c14:	f04f 20e0 	mov.w	r0, #3758153728	@ 0xe000e000
20004c18:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20004c1c:	6944      	ldr	r4, [r0, #20]
20004c1e:	9b01      	ldr	r3, [sp, #4]
20004c20:	4363      	muls	r3, r4
20004c22:	fbb3 f3f2 	udiv	r3, r3, r2
20004c26:	9301      	str	r3, [sp, #4]
20004c28:	2300      	movs	r3, #0
20004c2a:	6981      	ldr	r1, [r0, #24]
20004c2c:	6982      	ldr	r2, [r0, #24]
20004c2e:	428a      	cmp	r2, r1
20004c30:	d0fc      	beq.n	20004c2c <HAL_Delay_us2_+0x1c>
20004c32:	bf25      	ittet	cs
20004c34:	1aa5      	subcs	r5, r4, r2
20004c36:	195b      	addcs	r3, r3, r5
20004c38:	185b      	addcc	r3, r3, r1
20004c3a:	185b      	addcs	r3, r3, r1
20004c3c:	9901      	ldr	r1, [sp, #4]
20004c3e:	bf38      	it	cc
20004c40:	1a9b      	subcc	r3, r3, r2
20004c42:	4299      	cmp	r1, r3
20004c44:	d801      	bhi.n	20004c4a <HAL_Delay_us2_+0x3a>
20004c46:	b003      	add	sp, #12
20004c48:	bd30      	pop	{r4, r5, pc}
20004c4a:	4611      	mov	r1, r2
20004c4c:	e7ee      	b.n	20004c2c <HAL_Delay_us2_+0x1c>

20004c4e <HAL_Delay>:
20004c4e:	b507      	push	{r0, r1, r2, lr}
20004c50:	9001      	str	r0, [sp, #4]
20004c52:	9b01      	ldr	r3, [sp, #4]
20004c54:	b913      	cbnz	r3, 20004c5c <HAL_Delay+0xe>
20004c56:	b003      	add	sp, #12
20004c58:	f85d fb04 	ldr.w	pc, [sp], #4
20004c5c:	f44f 707a 	mov.w	r0, #1000	@ 0x3e8
20004c60:	f7ff ff74 	bl	20004b4c <HAL_Delay_us>
20004c64:	9b01      	ldr	r3, [sp, #4]
20004c66:	3b01      	subs	r3, #1
20004c68:	9301      	str	r3, [sp, #4]
20004c6a:	e7f2      	b.n	20004c52 <HAL_Delay+0x4>

20004c6c <HAL_PIN_SetUartFunc.part.0>:
20004c6c:	108b      	asrs	r3, r1, #2
20004c6e:	f1a3 0248 	sub.w	r2, r3, #72	@ 0x48
20004c72:	b5f0      	push	{r4, r5, r6, r7, lr}
20004c74:	b2d6      	uxtb	r6, r2
20004c76:	2e04      	cmp	r6, #4
20004c78:	d849      	bhi.n	20004d0e <HAL_PIN_SetUartFunc.part.0+0xa2>
20004c7a:	2e02      	cmp	r6, #2
20004c7c:	d810      	bhi.n	20004ca0 <HAL_PIN_SetUartFunc.part.0+0x34>
20004c7e:	4d25      	ldr	r5, [pc, #148]	@ (20004d14 <HAL_PIN_SetUartFunc.part.0+0xa8>)
20004c80:	240e      	movs	r4, #14
20004c82:	eb05 0582 	add.w	r5, r5, r2, lsl #2
20004c86:	f240 22b2 	movw	r2, #690	@ 0x2b2
20004c8a:	eba1 0386 	sub.w	r3, r1, r6, lsl #2
20004c8e:	b29b      	uxth	r3, r3
20004c90:	f5a3 7390 	sub.w	r3, r3, #288	@ 0x120
20004c94:	2b03      	cmp	r3, #3
20004c96:	d83a      	bhi.n	20004d0e <HAL_PIN_SetUartFunc.part.0+0xa2>
20004c98:	e8df f003 	tbb	[pc, r3]
20004c9c:	20271a09 	.word	0x20271a09
20004ca0:	4d1d      	ldr	r5, [pc, #116]	@ (20004d18 <HAL_PIN_SetUartFunc.part.0+0xac>)
20004ca2:	009b      	lsls	r3, r3, #2
20004ca4:	243d      	movs	r4, #61	@ 0x3d
20004ca6:	f240 3221 	movw	r2, #801	@ 0x321
20004caa:	441d      	add	r5, r3
20004cac:	e7ed      	b.n	20004c8a <HAL_PIN_SetUartFunc.part.0+0x1e>
20004cae:	2c0e      	cmp	r4, #14
20004cb0:	f04f 0608 	mov.w	r6, #8
20004cb4:	d120      	bne.n	20004cf8 <HAL_PIN_SetUartFunc.part.0+0x8c>
20004cb6:	f44f 517c 	mov.w	r1, #16128	@ 0x3f00
20004cba:	682f      	ldr	r7, [r5, #0]
20004cbc:	1b03      	subs	r3, r0, r4
20004cbe:	40b3      	lsls	r3, r6
20004cc0:	407b      	eors	r3, r7
20004cc2:	400b      	ands	r3, r1
20004cc4:	4410      	add	r0, r2
20004cc6:	407b      	eors	r3, r7
20004cc8:	1b00      	subs	r0, r0, r4
20004cca:	602b      	str	r3, [r5, #0]
20004ccc:	b280      	uxth	r0, r0
20004cce:	bdf0      	pop	{r4, r5, r6, r7, pc}
20004cd0:	2c0e      	cmp	r4, #14
20004cd2:	f04f 0600 	mov.w	r6, #0
20004cd6:	d112      	bne.n	20004cfe <HAL_PIN_SetUartFunc.part.0+0x92>
20004cd8:	213f      	movs	r1, #63	@ 0x3f
20004cda:	e7ee      	b.n	20004cba <HAL_PIN_SetUartFunc.part.0+0x4e>
20004cdc:	2c0e      	cmp	r4, #14
20004cde:	f04f 0610 	mov.w	r6, #16
20004ce2:	d10e      	bne.n	20004d02 <HAL_PIN_SetUartFunc.part.0+0x96>
20004ce4:	f44f 117c 	mov.w	r1, #4128768	@ 0x3f0000
20004ce8:	e7e7      	b.n	20004cba <HAL_PIN_SetUartFunc.part.0+0x4e>
20004cea:	2c0e      	cmp	r4, #14
20004cec:	f04f 0618 	mov.w	r6, #24
20004cf0:	d10a      	bne.n	20004d08 <HAL_PIN_SetUartFunc.part.0+0x9c>
20004cf2:	f04f 517c 	mov.w	r1, #1056964608	@ 0x3f000000
20004cf6:	e7e0      	b.n	20004cba <HAL_PIN_SetUartFunc.part.0+0x4e>
20004cf8:	f44f 61e0 	mov.w	r1, #1792	@ 0x700
20004cfc:	e7dd      	b.n	20004cba <HAL_PIN_SetUartFunc.part.0+0x4e>
20004cfe:	2107      	movs	r1, #7
20004d00:	e7db      	b.n	20004cba <HAL_PIN_SetUartFunc.part.0+0x4e>
20004d02:	f44f 21e0 	mov.w	r1, #458752	@ 0x70000
20004d06:	e7d8      	b.n	20004cba <HAL_PIN_SetUartFunc.part.0+0x4e>
20004d08:	f04f 61e0 	mov.w	r1, #117440512	@ 0x7000000
20004d0c:	e7d5      	b.n	20004cba <HAL_PIN_SetUartFunc.part.0+0x4e>
20004d0e:	2000      	movs	r0, #0
20004d10:	e7dd      	b.n	20004cce <HAL_PIN_SetUartFunc.part.0+0x62>
20004d12:	bf00      	nop
20004d14:	5000b058 	.word	0x5000b058
20004d18:	4000ef0c 	.word	0x4000ef0c

20004d1c <HAL_PIN_SetAonPE>:
20004d1c:	2a00      	cmp	r2, #0
20004d1e:	d031      	beq.n	20004d84 <HAL_PIN_SetAonPE+0x68>
20004d20:	282f      	cmp	r0, #47	@ 0x2f
20004d22:	dd16      	ble.n	20004d52 <HAL_PIN_SetAonPE+0x36>
20004d24:	283a      	cmp	r0, #58	@ 0x3a
20004d26:	dc2d      	bgt.n	20004d84 <HAL_PIN_SetAonPE+0x68>
20004d28:	2301      	movs	r3, #1
20004d2a:	4a17      	ldr	r2, [pc, #92]	@ (20004d88 <HAL_PIN_SetAonPE+0x6c>)
20004d2c:	382a      	subs	r0, #42	@ 0x2a
20004d2e:	4083      	lsls	r3, r0
20004d30:	6f10      	ldr	r0, [r2, #112]	@ 0x70
20004d32:	f011 0f20 	tst.w	r1, #32
20004d36:	bf14      	ite	ne
20004d38:	4318      	orrne	r0, r3
20004d3a:	4398      	biceq	r0, r3
20004d3c:	6710      	str	r0, [r2, #112]	@ 0x70
20004d3e:	4a12      	ldr	r2, [pc, #72]	@ (20004d88 <HAL_PIN_SetAonPE+0x6c>)
20004d40:	f011 0f10 	tst.w	r1, #16
20004d44:	6ed1      	ldr	r1, [r2, #108]	@ 0x6c
20004d46:	bf14      	ite	ne
20004d48:	430b      	orrne	r3, r1
20004d4a:	ea21 0303 	biceq.w	r3, r1, r3
20004d4e:	66d3      	str	r3, [r2, #108]	@ 0x6c
20004d50:	4770      	bx	lr
20004d52:	3826      	subs	r0, #38	@ 0x26
20004d54:	2803      	cmp	r0, #3
20004d56:	d815      	bhi.n	20004d84 <HAL_PIN_SetAonPE+0x68>
20004d58:	4b0c      	ldr	r3, [pc, #48]	@ (20004d8c <HAL_PIN_SetAonPE+0x70>)
20004d5a:	f011 0f20 	tst.w	r1, #32
20004d5e:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20004d62:	bf14      	ite	ne
20004d64:	f042 0210 	orrne.w	r2, r2, #16
20004d68:	f022 0210 	biceq.w	r2, r2, #16
20004d6c:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20004d70:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20004d74:	06c9      	lsls	r1, r1, #27
20004d76:	bf4c      	ite	mi
20004d78:	f042 0208 	orrmi.w	r2, r2, #8
20004d7c:	f022 0208 	bicpl.w	r2, r2, #8
20004d80:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20004d84:	4770      	bx	lr
20004d86:	bf00      	nop
20004d88:	500cb000 	.word	0x500cb000
20004d8c:	500cb05c 	.word	0x500cb05c

20004d90 <HAL_PIN_Get_Base>:
20004d90:	b138      	cbz	r0, 20004da2 <HAL_PIN_Get_Base+0x12>
20004d92:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20004d96:	6893      	ldr	r3, [r2, #8]
20004d98:	4806      	ldr	r0, [pc, #24]	@ (20004db4 <HAL_PIN_Get_Base+0x24>)
20004d9a:	f043 0304 	orr.w	r3, r3, #4
20004d9e:	6093      	str	r3, [r2, #8]
20004da0:	4770      	bx	lr
20004da2:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
20004da6:	6853      	ldr	r3, [r2, #4]
20004da8:	4803      	ldr	r0, [pc, #12]	@ (20004db8 <HAL_PIN_Get_Base+0x28>)
20004daa:	f043 0308 	orr.w	r3, r3, #8
20004dae:	6053      	str	r3, [r2, #4]
20004db0:	4770      	bx	lr
20004db2:	bf00      	nop
20004db4:	50003000 	.word	0x50003000
20004db8:	40003000 	.word	0x40003000

20004dbc <HAL_PIN_Func2Idx>:
20004dbc:	283b      	cmp	r0, #59	@ 0x3b
20004dbe:	bfc8      	it	gt
20004dc0:	383c      	subgt	r0, #60	@ 0x3c
20004dc2:	0143      	lsls	r3, r0, #5
20004dc4:	b152      	cbz	r2, 20004ddc <HAL_PIN_Func2Idx+0x20>
20004dc6:	4a06      	ldr	r2, [pc, #24]	@ (20004de0 <HAL_PIN_Func2Idx+0x24>)
20004dc8:	2000      	movs	r0, #0
20004dca:	4413      	add	r3, r2
20004dcc:	f833 2010 	ldrh.w	r2, [r3, r0, lsl #1]
20004dd0:	428a      	cmp	r2, r1
20004dd2:	d002      	beq.n	20004dda <HAL_PIN_Func2Idx+0x1e>
20004dd4:	3001      	adds	r0, #1
20004dd6:	2810      	cmp	r0, #16
20004dd8:	d1f8      	bne.n	20004dcc <HAL_PIN_Func2Idx+0x10>
20004dda:	4770      	bx	lr
20004ddc:	4a01      	ldr	r2, [pc, #4]	@ (20004de4 <HAL_PIN_Func2Idx+0x28>)
20004dde:	e7f3      	b.n	20004dc8 <HAL_PIN_Func2Idx+0xc>
20004de0:	2000517c 	.word	0x2000517c
20004de4:	200050dc 	.word	0x200050dc

20004de8 <HAL_PIN_Set>:
20004de8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20004dec:	4615      	mov	r5, r2
20004dee:	4604      	mov	r4, r0
20004df0:	b918      	cbnz	r0, 20004dfa <HAL_PIN_Set+0x12>
20004df2:	f04f 30ff 	mov.w	r0, #4294967295
20004df6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20004dfa:	283a      	cmp	r0, #58	@ 0x3a
20004dfc:	bfcd      	iteet	gt
20004dfe:	2700      	movgt	r7, #0
20004e00:	2701      	movle	r7, #1
20004e02:	4606      	movle	r6, r0
20004e04:	f1a0 063c 	subgt.w	r6, r0, #60	@ 0x3c
20004e08:	4638      	mov	r0, r7
20004e0a:	f7ff ffc1 	bl	20004d90 <HAL_PIN_Get_Base>
20004e0e:	4680      	mov	r8, r0
20004e10:	2f00      	cmp	r7, #0
20004e12:	f000 80fe 	beq.w	20005012 <HAL_PIN_Set+0x22a>
20004e16:	f5a1 7390 	sub.w	r3, r1, #288	@ 0x120
20004e1a:	b29b      	uxth	r3, r3
20004e1c:	2b0b      	cmp	r3, #11
20004e1e:	d82e      	bhi.n	20004e7e <HAL_PIN_Set+0x96>
20004e20:	4620      	mov	r0, r4
20004e22:	f7ff ff23 	bl	20004c6c <HAL_PIN_SetUartFunc.part.0>
20004e26:	4601      	mov	r1, r0
20004e28:	463a      	mov	r2, r7
20004e2a:	4620      	mov	r0, r4
20004e2c:	f7ff ffc6 	bl	20004dbc <HAL_PIN_Func2Idx>
20004e30:	280f      	cmp	r0, #15
20004e32:	4681      	mov	r9, r0
20004e34:	dcdd      	bgt.n	20004df2 <HAL_PIN_Set+0xa>
20004e36:	463a      	mov	r2, r7
20004e38:	4629      	mov	r1, r5
20004e3a:	4620      	mov	r0, r4
20004e3c:	f7ff ff6e 	bl	20004d1c <HAL_PIN_SetAonPE>
20004e40:	2f00      	cmp	r7, #0
20004e42:	f040 80ef 	bne.w	20005024 <HAL_PIN_Set+0x23c>
20004e46:	2c40      	cmp	r4, #64	@ 0x40
20004e48:	f340 80ec 	ble.w	20005024 <HAL_PIN_Set+0x23c>
20004e4c:	4a7f      	ldr	r2, [pc, #508]	@ (2000504c <HAL_PIN_Set+0x264>)
20004e4e:	06e8      	lsls	r0, r5, #27
20004e50:	f852 3024 	ldr.w	r3, [r2, r4, lsl #2]
20004e54:	ea4f 3909 	mov.w	r9, r9, lsl #12
20004e58:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20004e5c:	f023 0318 	bic.w	r3, r3, #24
20004e60:	bf48      	it	mi
20004e62:	f043 0308 	orrmi.w	r3, r3, #8
20004e66:	06a9      	lsls	r1, r5, #26
20004e68:	bf48      	it	mi
20004e6a:	f043 0310 	orrmi.w	r3, r3, #16
20004e6e:	f409 49e0 	and.w	r9, r9, #28672	@ 0x7000
20004e72:	ea49 0303 	orr.w	r3, r9, r3
20004e76:	f842 3024 	str.w	r3, [r2, r4, lsl #2]
20004e7a:	2000      	movs	r0, #0
20004e7c:	e7bb      	b.n	20004df6 <HAL_PIN_Set+0xe>
20004e7e:	f5a1 739c 	sub.w	r3, r1, #312	@ 0x138
20004e82:	b29b      	uxth	r3, r3
20004e84:	2b07      	cmp	r3, #7
20004e86:	d826      	bhi.n	20004ed6 <HAL_PIN_Set+0xee>
20004e88:	104a      	asrs	r2, r1, #1
20004e8a:	3a9c      	subs	r2, #156	@ 0x9c
20004e8c:	eba1 0142 	sub.w	r1, r1, r2, lsl #1
20004e90:	b289      	uxth	r1, r1
20004e92:	f5b1 7f9c 	cmp.w	r1, #312	@ 0x138
20004e96:	d019      	beq.n	20004ecc <HAL_PIN_Set+0xe4>
20004e98:	f240 1339 	movw	r3, #313	@ 0x139
20004e9c:	4299      	cmp	r1, r3
20004e9e:	f040 80bf 	bne.w	20005020 <HAL_PIN_Set+0x238>
20004ea2:	f04f 0e08 	mov.w	lr, #8
20004ea6:	f44f 5c7c 	mov.w	ip, #16128	@ 0x3f00
20004eaa:	4969      	ldr	r1, [pc, #420]	@ (20005050 <HAL_PIN_Set+0x268>)
20004eac:	f1a4 030e 	sub.w	r3, r4, #14
20004eb0:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20004eb4:	fa03 f30e 	lsl.w	r3, r3, lr
20004eb8:	4043      	eors	r3, r0
20004eba:	ea03 030c 	and.w	r3, r3, ip
20004ebe:	4043      	eors	r3, r0
20004ec0:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20004ec4:	f504 7129 	add.w	r1, r4, #676	@ 0x2a4
20004ec8:	b289      	uxth	r1, r1
20004eca:	e7ad      	b.n	20004e28 <HAL_PIN_Set+0x40>
20004ecc:	f04f 0e00 	mov.w	lr, #0
20004ed0:	f04f 0c3f 	mov.w	ip, #63	@ 0x3f
20004ed4:	e7e9      	b.n	20004eaa <HAL_PIN_Set+0xc2>
20004ed6:	f5a1 73ec 	sub.w	r3, r1, #472	@ 0x1d8
20004eda:	b29a      	uxth	r2, r3
20004edc:	2a09      	cmp	r2, #9
20004ede:	d836      	bhi.n	20004f4e <HAL_PIN_Set+0x166>
20004ee0:	2205      	movs	r2, #5
20004ee2:	fbb3 f3f2 	udiv	r3, r3, r2
20004ee6:	ebc3 3283 	rsb	r2, r3, r3, lsl #14
20004eea:	ebc3 0282 	rsb	r2, r3, r2, lsl #2
20004eee:	440a      	add	r2, r1
20004ef0:	b292      	uxth	r2, r2
20004ef2:	f5a2 71ec 	sub.w	r1, r2, #472	@ 0x1d8
20004ef6:	b288      	uxth	r0, r1
20004ef8:	2803      	cmp	r0, #3
20004efa:	d814      	bhi.n	20004f26 <HAL_PIN_Set+0x13e>
20004efc:	f04f 0e3f 	mov.w	lr, #63	@ 0x3f
20004f00:	4854      	ldr	r0, [pc, #336]	@ (20005054 <HAL_PIN_Set+0x26c>)
20004f02:	00c9      	lsls	r1, r1, #3
20004f04:	f850 c023 	ldr.w	ip, [r0, r3, lsl #2]
20004f08:	f1a4 020e 	sub.w	r2, r4, #14
20004f0c:	408a      	lsls	r2, r1
20004f0e:	ea82 020c 	eor.w	r2, r2, ip
20004f12:	fa0e f101 	lsl.w	r1, lr, r1
20004f16:	400a      	ands	r2, r1
20004f18:	ea82 020c 	eor.w	r2, r2, ip
20004f1c:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
20004f20:	f204 2155 	addw	r1, r4, #597	@ 0x255
20004f24:	e7d0      	b.n	20004ec8 <HAL_PIN_Set+0xe0>
20004f26:	f5b2 7fee 	cmp.w	r2, #476	@ 0x1dc
20004f2a:	d179      	bne.n	20005020 <HAL_PIN_Set+0x238>
20004f2c:	213f      	movs	r1, #63	@ 0x3f
20004f2e:	484a      	ldr	r0, [pc, #296]	@ (20005058 <HAL_PIN_Set+0x270>)
20004f30:	00da      	lsls	r2, r3, #3
20004f32:	f8d0 c06c 	ldr.w	ip, [r0, #108]	@ 0x6c
20004f36:	f1a4 030e 	sub.w	r3, r4, #14
20004f3a:	4093      	lsls	r3, r2
20004f3c:	ea83 030c 	eor.w	r3, r3, ip
20004f40:	fa01 f202 	lsl.w	r2, r1, r2
20004f44:	4013      	ands	r3, r2
20004f46:	ea83 030c 	eor.w	r3, r3, ip
20004f4a:	66c3      	str	r3, [r0, #108]	@ 0x6c
20004f4c:	e7e8      	b.n	20004f20 <HAL_PIN_Set+0x138>
20004f4e:	f46f 7901 	mvn.w	r9, #516	@ 0x204
20004f52:	eb01 0209 	add.w	r2, r1, r9
20004f56:	b293      	uxth	r3, r2
20004f58:	2b05      	cmp	r3, #5
20004f5a:	d827      	bhi.n	20004fac <HAL_PIN_Set+0x1c4>
20004f5c:	2303      	movs	r3, #3
20004f5e:	fbb2 f2f3 	udiv	r2, r2, r3
20004f62:	f46f 7e01 	mvn.w	lr, #516	@ 0x204
20004f66:	ebc2 3382 	rsb	r3, r2, r2, lsl #14
20004f6a:	eb02 0383 	add.w	r3, r2, r3, lsl #2
20004f6e:	440b      	add	r3, r1
20004f70:	b29b      	uxth	r3, r3
20004f72:	eb03 0c0e 	add.w	ip, r3, lr
20004f76:	fa1f fc8c 	uxth.w	ip, ip
20004f7a:	f1bc 0f02 	cmp.w	ip, #2
20004f7e:	d84f      	bhi.n	20005020 <HAL_PIN_Set+0x238>
20004f80:	00db      	lsls	r3, r3, #3
20004f82:	f5a3 5381 	sub.w	r3, r3, #4128	@ 0x1020
20004f86:	4935      	ldr	r1, [pc, #212]	@ (2000505c <HAL_PIN_Set+0x274>)
20004f88:	f1a4 0e0e 	sub.w	lr, r4, #14
20004f8c:	3b08      	subs	r3, #8
20004f8e:	fa0e f303 	lsl.w	r3, lr, r3
20004f92:	f8df e0d8 	ldr.w	lr, [pc, #216]	@ 2000506c <HAL_PIN_Set+0x284>
20004f96:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20004f9a:	f85e c02c 	ldr.w	ip, [lr, ip, lsl #2]
20004f9e:	4043      	eors	r3, r0
20004fa0:	ea03 030c 	and.w	r3, r3, ip
20004fa4:	4043      	eors	r3, r0
20004fa6:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20004faa:	e7b9      	b.n	20004f20 <HAL_PIN_Set+0x138>
20004fac:	f46f 7cf8 	mvn.w	ip, #496	@ 0x1f0
20004fb0:	eb01 030c 	add.w	r3, r1, ip
20004fb4:	b29a      	uxth	r2, r3
20004fb6:	2a09      	cmp	r2, #9
20004fb8:	f63f af36 	bhi.w	20004e28 <HAL_PIN_Set+0x40>
20004fbc:	f5b1 7ffc 	cmp.w	r1, #504	@ 0x1f8
20004fc0:	d216      	bcs.n	20004ff0 <HAL_PIN_Set+0x208>
20004fc2:	0859      	lsrs	r1, r3, #1
20004fc4:	f013 0f01 	tst.w	r3, #1
20004fc8:	4b25      	ldr	r3, [pc, #148]	@ (20005060 <HAL_PIN_Set+0x278>)
20004fca:	f04f 003f 	mov.w	r0, #63	@ 0x3f
20004fce:	4a25      	ldr	r2, [pc, #148]	@ (20005064 <HAL_PIN_Set+0x27c>)
20004fd0:	bf18      	it	ne
20004fd2:	461a      	movne	r2, r3
20004fd4:	00c9      	lsls	r1, r1, #3
20004fd6:	4088      	lsls	r0, r1
20004fd8:	f8d2 c000 	ldr.w	ip, [r2]
20004fdc:	f1a4 030e 	sub.w	r3, r4, #14
20004fe0:	408b      	lsls	r3, r1
20004fe2:	ea83 030c 	eor.w	r3, r3, ip
20004fe6:	4003      	ands	r3, r0
20004fe8:	ea83 030c 	eor.w	r3, r3, ip
20004fec:	6013      	str	r3, [r2, #0]
20004fee:	e797      	b.n	20004f20 <HAL_PIN_Set+0x138>
20004ff0:	d007      	beq.n	20005002 <HAL_PIN_Set+0x21a>
20004ff2:	f240 13f9 	movw	r3, #505	@ 0x1f9
20004ff6:	4299      	cmp	r1, r3
20004ff8:	d107      	bne.n	2000500a <HAL_PIN_Set+0x222>
20004ffa:	2100      	movs	r1, #0
20004ffc:	203f      	movs	r0, #63	@ 0x3f
20004ffe:	4a1a      	ldr	r2, [pc, #104]	@ (20005068 <HAL_PIN_Set+0x280>)
20005000:	e7ea      	b.n	20004fd8 <HAL_PIN_Set+0x1f0>
20005002:	2110      	movs	r1, #16
20005004:	f44f 107c 	mov.w	r0, #4128768	@ 0x3f0000
20005008:	e7f9      	b.n	20004ffe <HAL_PIN_Set+0x216>
2000500a:	2108      	movs	r1, #8
2000500c:	f44f 507c 	mov.w	r0, #16128	@ 0x3f00
20005010:	e7f5      	b.n	20004ffe <HAL_PIN_Set+0x216>
20005012:	f5a1 7396 	sub.w	r3, r1, #300	@ 0x12c
20005016:	b29b      	uxth	r3, r3
20005018:	2b07      	cmp	r3, #7
2000501a:	f63f af05 	bhi.w	20004e28 <HAL_PIN_Set+0x40>
2000501e:	e6ff      	b.n	20004e20 <HAL_PIN_Set+0x38>
20005020:	2100      	movs	r1, #0
20005022:	e701      	b.n	20004e28 <HAL_PIN_Set+0x40>
20005024:	f106 4680 	add.w	r6, r6, #1073741824	@ 0x40000000
20005028:	3e01      	subs	r6, #1
2000502a:	f858 3026 	ldr.w	r3, [r8, r6, lsl #2]
2000502e:	f005 0530 	and.w	r5, r5, #48	@ 0x30
20005032:	f009 090f 	and.w	r9, r9, #15
20005036:	ea45 0509 	orr.w	r5, r5, r9
2000503a:	f023 033f 	bic.w	r3, r3, #63	@ 0x3f
2000503e:	431d      	orrs	r5, r3
20005040:	f045 0540 	orr.w	r5, r5, #64	@ 0x40
20005044:	f848 5026 	str.w	r5, [r8, r6, lsl #2]
20005048:	e717      	b.n	20004e7a <HAL_PIN_Set+0x92>
2000504a:	bf00      	nop
2000504c:	500caf58 	.word	0x500caf58
20005050:	5000b048 	.word	0x5000b048
20005054:	5000b064 	.word	0x5000b064
20005058:	5000b000 	.word	0x5000b000
2000505c:	5000b070 	.word	0x5000b070
20005060:	5000b07c 	.word	0x5000b07c
20005064:	5000b078 	.word	0x5000b078
20005068:	5000b080 	.word	0x5000b080
2000506c:	200050d0 	.word	0x200050d0

20005070 <HAL_PIN_Set_Analog>:
20005070:	283a      	cmp	r0, #58	@ 0x3a
20005072:	b538      	push	{r3, r4, r5, lr}
20005074:	4604      	mov	r4, r0
20005076:	dd25      	ble.n	200050c4 <HAL_PIN_Set_Analog+0x54>
20005078:	2840      	cmp	r0, #64	@ 0x40
2000507a:	dc16      	bgt.n	200050aa <HAL_PIN_Set_Analog+0x3a>
2000507c:	2500      	movs	r5, #0
2000507e:	f1a0 013c 	sub.w	r1, r0, #60	@ 0x3c
20005082:	4628      	mov	r0, r5
20005084:	f7ff fe84 	bl	20004d90 <HAL_PIN_Get_Base>
20005088:	f101 4380 	add.w	r3, r1, #1073741824	@ 0x40000000
2000508c:	3b01      	subs	r3, #1
2000508e:	f850 1023 	ldr.w	r1, [r0, r3, lsl #2]
20005092:	462a      	mov	r2, r5
20005094:	f021 015f 	bic.w	r1, r1, #95	@ 0x5f
20005098:	f041 010f 	orr.w	r1, r1, #15
2000509c:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
200050a0:	2100      	movs	r1, #0
200050a2:	4620      	mov	r0, r4
200050a4:	f7ff fe3a 	bl	20004d1c <HAL_PIN_SetAonPE>
200050a8:	e00a      	b.n	200050c0 <HAL_PIN_Set_Analog+0x50>
200050aa:	4a08      	ldr	r2, [pc, #32]	@ (200050cc <HAL_PIN_Set_Analog+0x5c>)
200050ac:	f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
200050b0:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
200050b4:	f023 030e 	bic.w	r3, r3, #14
200050b8:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
200050bc:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
200050c0:	2000      	movs	r0, #0
200050c2:	bd38      	pop	{r3, r4, r5, pc}
200050c4:	4601      	mov	r1, r0
200050c6:	2501      	movs	r5, #1
200050c8:	e7db      	b.n	20005082 <HAL_PIN_Set_Analog+0x12>
200050ca:	bf00      	nop
200050cc:	500caf58 	.word	0x500caf58

200050d0 <CSWTCH.47>:
200050d0:	0000003f 00003f00 003f0000              ?....?....?.

200050dc <pin_pad_func_lcpu>:
	...
200050fc:	032100b2 00000301 00000000 024b023b     ..!.........;.K.
2000510c:	00000237 00000000 00000000 00000000     7...............
2000511c:	032200b3 00000302 00000000 024b023c     ..".........<.K.
2000512c:	00000238 00000000 00000000 00000000     8...............
2000513c:	032300b4 00000303 00000000 024b023d     ..#.........=.K.
2000514c:	0000023a 00000000 00000000 00000000     :...............
2000515c:	032400b5 00000304 00000000 024b023e     ..$.........>.K.
2000516c:	00000239 00000000 00000000 00000000     9...............

2000517c <pin_pad_func_hcpu>:
	...
2000519c:	000400f2 00000000 000b0000 00000000     ................
	...
200051bc:	000900f3 00000000 00030000 00000000     ................
	...
200051dc:	000a00f4 00000000 000a0000 00000000     ................
	...
200051fc:	000b00f5 00000000 000b0000 00000000     ................
	...
2000521c:	000c00f6 00000000 00030000 00000000     ................
	...
2000523c:	000300f7 000d0000 00000009 00000000     ................
	...
2000525c:	000200f8 000e0000 0000000b 00000000     ................
	...
2000527c:	000100f9 000f0000 0009000a 00000000     ................
	...
2000529c:	000d00fa 00100000 000c0003 00000000     ................
	...
200052bc:	000e00fb 00060000 00010001 00000000     ................
	...
200052dc:	000f00fc 00010000 000c000c 00000000     ................
	...
200052fc:	001000fd 00030000 00090000 00000000     ................
	...
2000531c:	000500fe 00000006 00000000 00000000     ................
	...
2000533c:	01540052 00000000 026302b2 016a0000     R.T.......c...j.
	...
2000535c:	00000053 00000000 026402b3 00000000     S.........d.....
	...
2000537c:	01550054 01c60000 026502b4 016b019a     T.U.......e...k.
2000538c:	023b0000 02270000 00000000 00000000     ..;...'.........
2000539c:	014e0055 01c80000 026602b5 015f0199     U.N.......f..._.
200053ac:	023c0000 02280000 00000000 00000000     ..<...(.........
200053bc:	014f0056 01c70000 026702b6 015e0197     V.O.......g...^.
200053cc:	023d0000 02290000 00000000 00000000     ..=...).........
200053dc:	01500057 01c40000 026802b7 01680195     W.P.......h...h.
200053ec:	023e0000 022a0000 00000000 00000000     ..>...*.........
200053fc:	01510058 01c50000 026902b8 01690194     X.Q.......i...i.
2000540c:	023f0000 022b0000 00000000 00000000     ..?...+.........
2000541c:	01520059 01d40000 026a02b9 01600192     Y.R.......j...`.
2000542c:	02400000 022c0000 00000000 00000000     ..@...,.........
2000543c:	0153005a 01d50000 026b02ba 01610191     Z.S.......k...a.
2000544c:	02410000 0000023a 00000000 00000000     ..A.:...........
2000545c:	0000005b 00000000 026c02bb 00000000     [.........l.....
2000546c:	02420000 00000239 00000000 00000000     ..B.9...........
2000547c:	0000005c 00000000 026d02bc 00000000     \.........m.....
	...
2000549c:	0000005d 00000000 026e02bd 00000000     ].........n.....
200054ac:	01d30000 02210237 00000000 00000000     ....7.!.........
200054bc:	001b005e 000001b7 026f02be 00000000     ^.........o.....
200054cc:	00000000 02220238 00000000 00000000     ....8.".........
200054dc:	0022005f 000001b8 027002bf 00000000     _.".......p.....
200054ec:	00000000 02230000 00000000 00000000     ......#.........
200054fc:	00230060 000001b2 027102c0 00000000     `.#.......q.....
2000550c:	00000000 02240000 00000000 00000000     ......$.........
2000551c:	00210061 000001b4 027202c1 00000000     a.!.......r.....
2000552c:	00000000 02250000 00000000 00000000     ......%.........
2000553c:	00190062 000001b5 027302c2 00000000     b.........s.....
2000554c:	00000000 02260000 00000000 00000000     ......&.........
2000555c:	00240063 000001b6 027402c3 00000000     c.$.......t.....
	...
2000557c:	00000064 0000021a 027502c4 00000000     d.........u.....
	...
2000559c:	00000065 00000219 027602c5 00000000     e.........v.....
	...
200055bc:	00000066 00000000 027702c6 00000000     f.........w.....
200055cc:	024b0000 00000000 00000000 00000000     ..K.............
200055dc:	00000067 00000000 027802c7 00000000     g.........x.....
	...
200055fc:	00000068 01d40000 027902c8 00000000     h.........y.....
	...
2000561c:	00000069 01d50000 027a02c9 00000000     i.........z.....
	...
2000563c:	0000006a 01c60149 027b02ca 00000000     j...I.....{.....
	...
2000565c:	0000006b 01c80148 027c02cb 00000000     k...H.....|.....
	...
2000567c:	0000006c 00000000 027d02cc 00000000     l.........}.....
	...
2000569c:	0000006d 00000000 027e02cd 00000000     m.........~.....
	...
200056bc:	0000006e 01c70146 027f02ce 00000000     n...F...........
	...
200056dc:	0000006f 01c40147 028002cf 00000000     o...G...........
	...
200056fc:	00000070 01c50000 028102d0 00000000     p...............
	...
2000571c:	00000071 00000000 028202d1 00000000     q...............
2000572c:	02430000 00000000 00000000 00000000     ..C.............
2000573c:	00000072 00000000 028302d2 00000000     r...............
	...
2000575c:	00000073 00000000 028402d3 00000000     s...............
	...
2000577c:	00000074 00000000 028502d4 00000000     t...............
	...
2000579c:	00000075 00000000 028602d5 00000000     u...............
	...
200057bc:	00000076 00000000 028702d6 00000000     v...............
	...
200057dc:	00000077 0000014d 028802d7 01620000     w...M.........b.
200057ec:	02440000 00000000 00000000 00000000     ..D.............
200057fc:	00000078 0000014c 028902d8 00000000     x...L...........
	...
2000581c:	00000079 0000014a 028a02d9 01630190     y...J.........c.
2000582c:	02450000 022f0000 00000000 00000000     ..E.../.........
2000583c:	0000007a 0000014b 028b02da 0164018f     z...K.........d.
2000584c:	02460000 02300000 00000000 00000000     ..F...0.........
2000585c:	0000007b 00000000 028c02db 01650193     {.............e.
2000586c:	02470000 02310000 00000000 00000000     ..G...1.........
2000587c:	0000007c 00000000 028d02dc 01660196     |.............f.
2000588c:	02480000 02320000 00000000 00000000     ..H...2.........
2000589c:	0000007d 00000000 028e02dd 01670198     }.............g.
200058ac:	02490000 02330000 00000000 00000000     ..I...3.........
200058bc:	0000007e 00000000 028f02de 00000000     ~...............
200058cc:	024a0000 02340000 00000000 00000000     ..J...4.........

200058dc <memset>:
200058dc:	4402      	add	r2, r0
200058de:	4603      	mov	r3, r0
200058e0:	4293      	cmp	r3, r2
200058e2:	d100      	bne.n	200058e6 <memset+0xa>
200058e4:	4770      	bx	lr
200058e6:	f803 1b01 	strb.w	r1, [r3], #1
200058ea:	e7f9      	b.n	200058e0 <memset+0x4>
200058ec:	0000      	movs	r0, r0
	...

200058f0 <__HAL_PMU_EnableDLL_veneer>:
200058f0:	f85f f000 	ldr.w	pc, [pc]	@ 200058f4 <__HAL_PMU_EnableDLL_veneer+0x4>
200058f4:	10003d19 	.word	0x10003d19

200058f8 <__HAL_InitTick_veneer>:
200058f8:	f85f f000 	ldr.w	pc, [pc]	@ 200058fc <__HAL_InitTick_veneer+0x4>
200058fc:	10003401 	.word	0x10003401

20005900 <__HAL_NVIC_SetPriorityGrouping_veneer>:
20005900:	f85f f000 	ldr.w	pc, [pc]	@ 20005904 <__HAL_NVIC_SetPriorityGrouping_veneer+0x4>
20005904:	1000347d 	.word	0x1000347d

20005908 <__BSP_System_Config_veneer>:
20005908:	f85f f000 	ldr.w	pc, [pc]	@ 2000590c <__BSP_System_Config_veneer+0x4>
2000590c:	10004341 	.word	0x10004341

20005910 <__HAL_PMU_Init_veneer>:
20005910:	f85f f000 	ldr.w	pc, [pc]	@ 20005914 <__HAL_PMU_Init_veneer+0x4>
20005914:	10003e1d 	.word	0x10003e1d

20005918 <__HAL_RC_CAL_update_reference_cycle_on_48M_ex_veneer>:
20005918:	f85f f000 	ldr.w	pc, [pc]	@ 2000591c <__HAL_RC_CAL_update_reference_cycle_on_48M_ex_veneer+0x4>
2000591c:	10003905 	.word	0x10003905

20005920 <__HAL_PMU_SetWdt_veneer>:
20005920:	f85f f000 	ldr.w	pc, [pc]	@ 20005924 <__HAL_PMU_SetWdt_veneer+0x4>
20005924:	10003ded 	.word	0x10003ded

20005928 <__HAL_PMU_LXTReady_veneer>:
20005928:	f85f f000 	ldr.w	pc, [pc]	@ 2000592c <__HAL_PMU_LXTReady_veneer+0x4>
2000592c:	10003d35 	.word	0x10003d35

20005930 <__HAL_PostMspInit_veneer>:
20005930:	f85f f000 	ldr.w	pc, [pc]	@ 20005934 <__HAL_PostMspInit_veneer+0x4>
20005934:	100033fd 	.word	0x100033fd

20005938 <__HAL_PMU_RC10Kconfig_veneer>:
20005938:	f85f f000 	ldr.w	pc, [pc]	@ 2000593c <__HAL_PMU_RC10Kconfig_veneer+0x4>
2000593c:	10003cc5 	.word	0x10003cc5

20005940 <__HAL_PMU_EnableRC32K_veneer>:
20005940:	f85f f000 	ldr.w	pc, [pc]	@ 20005944 <__HAL_PMU_EnableRC32K_veneer+0x4>
20005944:	10003d69 	.word	0x10003d69

20005948 <__HAL_PMU_EnableXTAL32_veneer>:
20005948:	f85f f000 	ldr.w	pc, [pc]	@ 2000594c <__HAL_PMU_EnableXTAL32_veneer+0x4>
2000594c:	10003ce5 	.word	0x10003ce5

20005950 <__HAL_PMU_LpCLockSelect_veneer>:
20005950:	f85f f000 	ldr.w	pc, [pc]	@ 20005954 <__HAL_PMU_LpCLockSelect_veneer+0x4>
20005954:	10003dbd 	.word	0x10003dbd

20005958 <__HAL_ADC_HwInit_veneer>:
20005958:	f85f f000 	ldr.w	pc, [pc]	@ 2000595c <__HAL_ADC_HwInit_veneer+0x4>
2000595c:	1000346d 	.word	0x1000346d

20005960 <__HAL_RC_CAL_get_reference_cycle_on_48M_veneer>:
20005960:	f85f f000 	ldr.w	pc, [pc]	@ 20005964 <__HAL_RC_CAL_get_reference_cycle_on_48M_veneer+0x4>
20005964:	100038f5 	.word	0x100038f5

20005968 <__HAL_EFUSE_Init_veneer>:
20005968:	f85f f000 	ldr.w	pc, [pc]	@ 2000596c <__HAL_EFUSE_Init_veneer+0x4>
2000596c:	10003539 	.word	0x10003539

Disassembly of section .text:

10002f78 <deregister_tm_clones>:
10002f78:	4803      	ldr	r0, [pc, #12]	@ (10002f88 <deregister_tm_clones+0x10>)
10002f7a:	4b04      	ldr	r3, [pc, #16]	@ (10002f8c <deregister_tm_clones+0x14>)
10002f7c:	4283      	cmp	r3, r0
10002f7e:	d002      	beq.n	10002f86 <deregister_tm_clones+0xe>
10002f80:	4b03      	ldr	r3, [pc, #12]	@ (10002f90 <deregister_tm_clones+0x18>)
10002f82:	b103      	cbz	r3, 10002f86 <deregister_tm_clones+0xe>
10002f84:	4718      	bx	r3
10002f86:	4770      	bx	lr
10002f88:	200059f0 	.word	0x200059f0
10002f8c:	200059f0 	.word	0x200059f0
10002f90:	00000000 	.word	0x00000000

10002f94 <register_tm_clones>:
10002f94:	4b06      	ldr	r3, [pc, #24]	@ (10002fb0 <register_tm_clones+0x1c>)
10002f96:	4907      	ldr	r1, [pc, #28]	@ (10002fb4 <register_tm_clones+0x20>)
10002f98:	1ac9      	subs	r1, r1, r3
10002f9a:	1089      	asrs	r1, r1, #2
10002f9c:	bf48      	it	mi
10002f9e:	3101      	addmi	r1, #1
10002fa0:	1049      	asrs	r1, r1, #1
10002fa2:	d003      	beq.n	10002fac <register_tm_clones+0x18>
10002fa4:	4b04      	ldr	r3, [pc, #16]	@ (10002fb8 <register_tm_clones+0x24>)
10002fa6:	b10b      	cbz	r3, 10002fac <register_tm_clones+0x18>
10002fa8:	4801      	ldr	r0, [pc, #4]	@ (10002fb0 <register_tm_clones+0x1c>)
10002faa:	4718      	bx	r3
10002fac:	4770      	bx	lr
10002fae:	bf00      	nop
10002fb0:	200059f0 	.word	0x200059f0
10002fb4:	200059f0 	.word	0x200059f0
10002fb8:	00000000 	.word	0x00000000

10002fbc <__do_global_dtors_aux>:
10002fbc:	b510      	push	{r4, lr}
10002fbe:	4c06      	ldr	r4, [pc, #24]	@ (10002fd8 <__do_global_dtors_aux+0x1c>)
10002fc0:	7823      	ldrb	r3, [r4, #0]
10002fc2:	b943      	cbnz	r3, 10002fd6 <__do_global_dtors_aux+0x1a>
10002fc4:	f7ff ffd8 	bl	10002f78 <deregister_tm_clones>
10002fc8:	4b04      	ldr	r3, [pc, #16]	@ (10002fdc <__do_global_dtors_aux+0x20>)
10002fca:	b113      	cbz	r3, 10002fd2 <__do_global_dtors_aux+0x16>
10002fcc:	4804      	ldr	r0, [pc, #16]	@ (10002fe0 <__do_global_dtors_aux+0x24>)
10002fce:	f3af 8000 	nop.w
10002fd2:	2301      	movs	r3, #1
10002fd4:	7023      	strb	r3, [r4, #0]
10002fd6:	bd10      	pop	{r4, pc}
10002fd8:	200059f0 	.word	0x200059f0
10002fdc:	00000000 	.word	0x00000000
10002fe0:	10005bb0 	.word	0x10005bb0

10002fe4 <frame_dummy>:
10002fe4:	b508      	push	{r3, lr}
10002fe6:	4b05      	ldr	r3, [pc, #20]	@ (10002ffc <frame_dummy+0x18>)
10002fe8:	b11b      	cbz	r3, 10002ff2 <frame_dummy+0xe>
10002fea:	4905      	ldr	r1, [pc, #20]	@ (10003000 <frame_dummy+0x1c>)
10002fec:	4805      	ldr	r0, [pc, #20]	@ (10003004 <frame_dummy+0x20>)
10002fee:	f3af 8000 	nop.w
10002ff2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
10002ff6:	f7ff bfcd 	b.w	10002f94 <register_tm_clones>
10002ffa:	bf00      	nop
10002ffc:	00000000 	.word	0x00000000
10003000:	200059f4 	.word	0x200059f4
10003004:	10005bb0 	.word	0x10005bb0

10003008 <boot_images>:
10003008:	4770      	bx	lr

1000300a <hw_preinit0>:
1000300a:	4770      	bx	lr

1000300c <mpu_config>:
1000300c:	2300      	movs	r3, #0
1000300e:	496c      	ldr	r1, [pc, #432]	@ (100031c0 <mpu_config+0x1b4>)
10003010:	b570      	push	{r4, r5, r6, lr}
10003012:	f8c1 3084 	str.w	r3, [r1, #132]	@ 0x84
10003016:	f3bf 8f4f 	dsb	sy
1000301a:	f643 74e0 	movw	r4, #16352	@ 0x3fe0
1000301e:	f8d1 3080 	ldr.w	r3, [r1, #128]	@ 0x80
10003022:	f3c3 00c9 	ubfx	r0, r3, #3, #10
10003026:	f3c3 334e 	ubfx	r3, r3, #13, #15
1000302a:	015b      	lsls	r3, r3, #5
1000302c:	4602      	mov	r2, r0
1000302e:	ea03 0604 	and.w	r6, r3, r4
10003032:	ea46 7582 	orr.w	r5, r6, r2, lsl #30
10003036:	3a01      	subs	r2, #1
10003038:	f8c1 5260 	str.w	r5, [r1, #608]	@ 0x260
1000303c:	d2f9      	bcs.n	10003032 <mpu_config+0x26>
1000303e:	3b20      	subs	r3, #32
10003040:	f113 0f20 	cmn.w	r3, #32
10003044:	d1f2      	bne.n	1000302c <mpu_config+0x20>
10003046:	f3bf 8f4f 	dsb	sy
1000304a:	f3bf 8f6f 	isb	sy
1000304e:	f3bf 8f4f 	dsb	sy
10003052:	f3bf 8f6f 	isb	sy
10003056:	2200      	movs	r2, #0
10003058:	f8c1 2250 	str.w	r2, [r1, #592]	@ 0x250
1000305c:	f3bf 8f4f 	dsb	sy
10003060:	f3bf 8f6f 	isb	sy
10003064:	f3bf 8f5f 	dmb	sy
10003068:	6a4b      	ldr	r3, [r1, #36]	@ 0x24
1000306a:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
1000306e:	624b      	str	r3, [r1, #36]	@ 0x24
10003070:	f8d1 3094 	ldr.w	r3, [r1, #148]	@ 0x94
10003074:	f023 0301 	bic.w	r3, r3, #1
10003078:	f8c1 3094 	str.w	r3, [r1, #148]	@ 0x94
1000307c:	f3bf 8f4f 	dsb	sy
10003080:	f3bf 8f6f 	isb	sy
10003084:	4611      	mov	r1, r2
10003086:	4610      	mov	r0, r2
10003088:	4b4d      	ldr	r3, [pc, #308]	@ (100031c0 <mpu_config+0x1b4>)
1000308a:	f8c3 2098 	str.w	r2, [r3, #152]	@ 0x98
1000308e:	3201      	adds	r2, #1
10003090:	2a0c      	cmp	r2, #12
10003092:	f8c3 00a0 	str.w	r0, [r3, #160]	@ 0xa0
10003096:	d1f8      	bne.n	1000308a <mpu_config+0x7e>
10003098:	f8d3 20c0 	ldr.w	r2, [r3, #192]	@ 0xc0
1000309c:	4849      	ldr	r0, [pc, #292]	@ (100031c4 <mpu_config+0x1b8>)
1000309e:	f022 02ff 	bic.w	r2, r2, #255	@ 0xff
100030a2:	f042 0222 	orr.w	r2, r2, #34	@ 0x22
100030a6:	f8c3 20c0 	str.w	r2, [r3, #192]	@ 0xc0
100030aa:	f8d3 20c0 	ldr.w	r2, [r3, #192]	@ 0xc0
100030ae:	f422 427f 	bic.w	r2, r2, #65280	@ 0xff00
100030b2:	f442 4288 	orr.w	r2, r2, #17408	@ 0x4400
100030b6:	f8c3 20c0 	str.w	r2, [r3, #192]	@ 0xc0
100030ba:	f8d3 20c0 	ldr.w	r2, [r3, #192]	@ 0xc0
100030be:	f422 027f 	bic.w	r2, r2, #16711680	@ 0xff0000
100030c2:	f8c3 20c0 	str.w	r2, [r3, #192]	@ 0xc0
100030c6:	f8d3 20c0 	ldr.w	r2, [r3, #192]	@ 0xc0
100030ca:	f022 427f 	bic.w	r2, r2, #4278190080	@ 0xff000000
100030ce:	f042 42ee 	orr.w	r2, r2, #1996488704	@ 0x77000000
100030d2:	f8c3 20c0 	str.w	r2, [r3, #192]	@ 0xc0
100030d6:	f8d3 20c4 	ldr.w	r2, [r3, #196]	@ 0xc4
100030da:	f022 02ff 	bic.w	r2, r2, #255	@ 0xff
100030de:	f042 0233 	orr.w	r2, r2, #51	@ 0x33
100030e2:	f8c3 20c4 	str.w	r2, [r3, #196]	@ 0xc4
100030e6:	f8c3 1098 	str.w	r1, [r3, #152]	@ 0x98
100030ea:	f64f 72e1 	movw	r2, #65505	@ 0xffe1
100030ee:	2107      	movs	r1, #7
100030f0:	f8c3 109c 	str.w	r1, [r3, #156]	@ 0x9c
100030f4:	f8c3 20a0 	str.w	r2, [r3, #160]	@ 0xa0
100030f8:	2201      	movs	r2, #1
100030fa:	f8c3 2098 	str.w	r2, [r3, #152]	@ 0x98
100030fe:	f102 1201 	add.w	r2, r2, #65537	@ 0x10001
10003102:	f8c3 209c 	str.w	r2, [r3, #156]	@ 0x9c
10003106:	4a30      	ldr	r2, [pc, #192]	@ (100031c8 <mpu_config+0x1bc>)
10003108:	f8c3 20a0 	str.w	r2, [r3, #160]	@ 0xa0
1000310c:	2202      	movs	r2, #2
1000310e:	f8c3 2098 	str.w	r2, [r3, #152]	@ 0x98
10003112:	4a2e      	ldr	r2, [pc, #184]	@ (100031cc <mpu_config+0x1c0>)
10003114:	f8c3 209c 	str.w	r2, [r3, #156]	@ 0x9c
10003118:	4a2d      	ldr	r2, [pc, #180]	@ (100031d0 <mpu_config+0x1c4>)
1000311a:	f8c3 20a0 	str.w	r2, [r3, #160]	@ 0xa0
1000311e:	2203      	movs	r2, #3
10003120:	f8c3 2098 	str.w	r2, [r3, #152]	@ 0x98
10003124:	f8c3 009c 	str.w	r0, [r3, #156]	@ 0x9c
10003128:	482a      	ldr	r0, [pc, #168]	@ (100031d4 <mpu_config+0x1c8>)
1000312a:	f8c3 00a0 	str.w	r0, [r3, #160]	@ 0xa0
1000312e:	2004      	movs	r0, #4
10003130:	f8c3 0098 	str.w	r0, [r3, #152]	@ 0x98
10003134:	4828      	ldr	r0, [pc, #160]	@ (100031d8 <mpu_config+0x1cc>)
10003136:	f8c3 009c 	str.w	r0, [r3, #156]	@ 0x9c
1000313a:	4828      	ldr	r0, [pc, #160]	@ (100031dc <mpu_config+0x1d0>)
1000313c:	f8c3 00a0 	str.w	r0, [r3, #160]	@ 0xa0
10003140:	2005      	movs	r0, #5
10003142:	f8c3 0098 	str.w	r0, [r3, #152]	@ 0x98
10003146:	4826      	ldr	r0, [pc, #152]	@ (100031e0 <mpu_config+0x1d4>)
10003148:	f8c3 009c 	str.w	r0, [r3, #156]	@ 0x9c
1000314c:	4825      	ldr	r0, [pc, #148]	@ (100031e4 <mpu_config+0x1d8>)
1000314e:	f8c3 00a0 	str.w	r0, [r3, #160]	@ 0xa0
10003152:	2006      	movs	r0, #6
10003154:	f8c3 0098 	str.w	r0, [r3, #152]	@ 0x98
10003158:	4823      	ldr	r0, [pc, #140]	@ (100031e8 <mpu_config+0x1dc>)
1000315a:	f8c3 009c 	str.w	r0, [r3, #156]	@ 0x9c
1000315e:	4823      	ldr	r0, [pc, #140]	@ (100031ec <mpu_config+0x1e0>)
10003160:	f8c3 00a0 	str.w	r0, [r3, #160]	@ 0xa0
10003164:	f8c3 1098 	str.w	r1, [r3, #152]	@ 0x98
10003168:	4921      	ldr	r1, [pc, #132]	@ (100031f0 <mpu_config+0x1e4>)
1000316a:	f8c3 109c 	str.w	r1, [r3, #156]	@ 0x9c
1000316e:	f501 2143 	add.w	r1, r1, #798720	@ 0xc3000
10003172:	f601 71e1 	addw	r1, r1, #4065	@ 0xfe1
10003176:	f8c3 10a0 	str.w	r1, [r3, #160]	@ 0xa0
1000317a:	2108      	movs	r1, #8
1000317c:	f8c3 1098 	str.w	r1, [r3, #152]	@ 0x98
10003180:	491c      	ldr	r1, [pc, #112]	@ (100031f4 <mpu_config+0x1e8>)
10003182:	f8c3 109c 	str.w	r1, [r3, #156]	@ 0x9c
10003186:	f501 217f 	add.w	r1, r1, #1044480	@ 0xff000
1000318a:	f601 71df 	addw	r1, r1, #4063	@ 0xfdf
1000318e:	f8c3 10a0 	str.w	r1, [r3, #160]	@ 0xa0
10003192:	2109      	movs	r1, #9
10003194:	f8c3 1098 	str.w	r1, [r3, #152]	@ 0x98
10003198:	4917      	ldr	r1, [pc, #92]	@ (100031f8 <mpu_config+0x1ec>)
1000319a:	f8c3 109c 	str.w	r1, [r3, #156]	@ 0x9c
1000319e:	4917      	ldr	r1, [pc, #92]	@ (100031fc <mpu_config+0x1f0>)
100031a0:	f8c3 10a0 	str.w	r1, [r3, #160]	@ 0xa0
100031a4:	f3bf 8f5f 	dmb	sy
100031a8:	f8c3 2094 	str.w	r2, [r3, #148]	@ 0x94
100031ac:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
100031ae:	f442 3280 	orr.w	r2, r2, #65536	@ 0x10000
100031b2:	625a      	str	r2, [r3, #36]	@ 0x24
100031b4:	f3bf 8f4f 	dsb	sy
100031b8:	f3bf 8f6f 	isb	sy
100031bc:	bd70      	pop	{r4, r5, r6, pc}
100031be:	bf00      	nop
100031c0:	e000ed00 	.word	0xe000ed00
100031c4:	20000002 	.word	0x20000002
100031c8:	0002ffe3 	.word	0x0002ffe3
100031cc:	10000006 	.word	0x10000006
100031d0:	1fffffe1 	.word	0x1fffffe1
100031d4:	2027ffe3 	.word	0x2027ffe3
100031d8:	40000003 	.word	0x40000003
100031dc:	5fffffe5 	.word	0x5fffffe5
100031e0:	60000002 	.word	0x60000002
100031e4:	61ffffe9 	.word	0x61ffffe9
100031e8:	203fc002 	.word	0x203fc002
100031ec:	204fffe3 	.word	0x204fffe3
100031f0:	20bfc002 	.word	0x20bfc002
100031f4:	20800002 	.word	0x20800002
100031f8:	62000006 	.word	0x62000006
100031fc:	6fffffe3 	.word	0x6fffffe3

10003200 <cache_enable>:
10003200:	b570      	push	{r4, r5, r6, lr}
10003202:	4b20      	ldr	r3, [pc, #128]	@ (10003284 <cache_enable+0x84>)
10003204:	695a      	ldr	r2, [r3, #20]
10003206:	f412 3200 	ands.w	r2, r2, #131072	@ 0x20000
1000320a:	d111      	bne.n	10003230 <cache_enable+0x30>
1000320c:	f3bf 8f4f 	dsb	sy
10003210:	f3bf 8f6f 	isb	sy
10003214:	f8c3 2250 	str.w	r2, [r3, #592]	@ 0x250
10003218:	f3bf 8f4f 	dsb	sy
1000321c:	f3bf 8f6f 	isb	sy
10003220:	695a      	ldr	r2, [r3, #20]
10003222:	f442 3200 	orr.w	r2, r2, #131072	@ 0x20000
10003226:	615a      	str	r2, [r3, #20]
10003228:	f3bf 8f4f 	dsb	sy
1000322c:	f3bf 8f6f 	isb	sy
10003230:	4a14      	ldr	r2, [pc, #80]	@ (10003284 <cache_enable+0x84>)
10003232:	6953      	ldr	r3, [r2, #20]
10003234:	f413 3380 	ands.w	r3, r3, #65536	@ 0x10000
10003238:	d123      	bne.n	10003282 <cache_enable+0x82>
1000323a:	f8c2 3084 	str.w	r3, [r2, #132]	@ 0x84
1000323e:	f3bf 8f4f 	dsb	sy
10003242:	f643 74e0 	movw	r4, #16352	@ 0x3fe0
10003246:	f8d2 3080 	ldr.w	r3, [r2, #128]	@ 0x80
1000324a:	f3c3 00c9 	ubfx	r0, r3, #3, #10
1000324e:	f3c3 334e 	ubfx	r3, r3, #13, #15
10003252:	015b      	lsls	r3, r3, #5
10003254:	4601      	mov	r1, r0
10003256:	ea03 0604 	and.w	r6, r3, r4
1000325a:	ea46 7581 	orr.w	r5, r6, r1, lsl #30
1000325e:	3901      	subs	r1, #1
10003260:	f8c2 5260 	str.w	r5, [r2, #608]	@ 0x260
10003264:	d2f9      	bcs.n	1000325a <cache_enable+0x5a>
10003266:	3b20      	subs	r3, #32
10003268:	f113 0f20 	cmn.w	r3, #32
1000326c:	d1f2      	bne.n	10003254 <cache_enable+0x54>
1000326e:	f3bf 8f4f 	dsb	sy
10003272:	6953      	ldr	r3, [r2, #20]
10003274:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
10003278:	6153      	str	r3, [r2, #20]
1000327a:	f3bf 8f4f 	dsb	sy
1000327e:	f3bf 8f6f 	isb	sy
10003282:	bd70      	pop	{r4, r5, r6, pc}
10003284:	e000ed00 	.word	0xe000ed00

10003288 <SystemPowerOnModeInit>:
10003288:	4770      	bx	lr
	...

1000328c <SystemInit>:
1000328c:	b508      	push	{r3, lr}
1000328e:	4a10      	ldr	r2, [pc, #64]	@ (100032d0 <SystemInit+0x44>)
10003290:	4b10      	ldr	r3, [pc, #64]	@ (100032d4 <SystemInit+0x48>)
10003292:	609a      	str	r2, [r3, #8]
10003294:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
10003298:	f042 023f 	orr.w	r2, r2, #63	@ 0x3f
1000329c:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
100032a0:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
100032a4:	f442 0270 	orr.w	r2, r2, #15728640	@ 0xf00000
100032a8:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
100032ac:	f7ff fead 	bl	1000300a <hw_preinit0>
100032b0:	f7ff feac 	bl	1000300c <mpu_config>
100032b4:	4b08      	ldr	r3, [pc, #32]	@ (100032d8 <SystemInit+0x4c>)
100032b6:	681b      	ldr	r3, [r3, #0]
100032b8:	07db      	lsls	r3, r3, #31
100032ba:	d401      	bmi.n	100032c0 <SystemInit+0x34>
100032bc:	f7ff fea4 	bl	10003008 <boot_images>
100032c0:	f7ff ff9e 	bl	10003200 <cache_enable>
100032c4:	f7ff ffe0 	bl	10003288 <SystemPowerOnModeInit>
100032c8:	4b04      	ldr	r3, [pc, #16]	@ (100032dc <SystemInit+0x50>)
100032ca:	4a05      	ldr	r2, [pc, #20]	@ (100032e0 <SystemInit+0x54>)
100032cc:	601a      	str	r2, [r3, #0]
100032ce:	bd08      	pop	{r3, pc}
100032d0:	10000000 	.word	0x10000000
100032d4:	e000ed00 	.word	0xe000ed00
100032d8:	5000b000 	.word	0x5000b000
100032dc:	20005984 	.word	0x20005984
100032e0:	017d7840 	.word	0x017d7840

100032e4 <lcpu_config_find_array>:
100032e4:	b530      	push	{r4, r5, lr}
100032e6:	4602      	mov	r2, r0
100032e8:	2400      	movs	r4, #0
100032ea:	4b10      	ldr	r3, [pc, #64]	@ (1000332c <lcpu_config_find_array+0x48>)
100032ec:	781d      	ldrb	r5, [r3, #0]
100032ee:	4618      	mov	r0, r3
100032f0:	4295      	cmp	r5, r2
100032f2:	d102      	bne.n	100032fa <lcpu_config_find_array+0x16>
100032f4:	889d      	ldrh	r5, [r3, #4]
100032f6:	428d      	cmp	r5, r1
100032f8:	d017      	beq.n	1000332a <lcpu_config_find_array+0x46>
100032fa:	3401      	adds	r4, #1
100032fc:	2c09      	cmp	r4, #9
100032fe:	f103 0306 	add.w	r3, r3, #6
10003302:	d1f3      	bne.n	100032ec <lcpu_config_find_array+0x8>
10003304:	4b0a      	ldr	r3, [pc, #40]	@ (10003330 <lcpu_config_find_array+0x4c>)
10003306:	685b      	ldr	r3, [r3, #4]
10003308:	b2db      	uxtb	r3, r3
1000330a:	2b06      	cmp	r3, #6
1000330c:	d90c      	bls.n	10003328 <lcpu_config_find_array+0x44>
1000330e:	2406      	movs	r4, #6
10003310:	4b08      	ldr	r3, [pc, #32]	@ (10003334 <lcpu_config_find_array+0x50>)
10003312:	781d      	ldrb	r5, [r3, #0]
10003314:	4618      	mov	r0, r3
10003316:	4295      	cmp	r5, r2
10003318:	d102      	bne.n	10003320 <lcpu_config_find_array+0x3c>
1000331a:	889d      	ldrh	r5, [r3, #4]
1000331c:	428d      	cmp	r5, r1
1000331e:	d004      	beq.n	1000332a <lcpu_config_find_array+0x46>
10003320:	3c01      	subs	r4, #1
10003322:	f103 0306 	add.w	r3, r3, #6
10003326:	d1f4      	bne.n	10003312 <lcpu_config_find_array+0x2e>
10003328:	2000      	movs	r0, #0
1000332a:	bd30      	pop	{r4, r5, pc}
1000332c:	100059d8 	.word	0x100059d8
10003330:	5000b000 	.word	0x5000b000
10003334:	100059b4 	.word	0x100059b4

10003338 <LCPU_CONFIG_set>:
10003338:	b538      	push	{r3, r4, r5, lr}
1000333a:	4604      	mov	r4, r0
1000333c:	4608      	mov	r0, r1
1000333e:	4619      	mov	r1, r3
10003340:	4615      	mov	r5, r2
10003342:	f7ff ffcf 	bl	100032e4 <lcpu_config_find_array>
10003346:	b138      	cbz	r0, 10003358 <LCPU_CONFIG_set+0x20>
10003348:	8843      	ldrh	r3, [r0, #2]
1000334a:	8882      	ldrh	r2, [r0, #4]
1000334c:	4629      	mov	r1, r5
1000334e:	18e0      	adds	r0, r4, r3
10003350:	f001 fe97 	bl	10005082 <memcpy>
10003354:	2000      	movs	r0, #0
10003356:	bd38      	pop	{r3, r4, r5, pc}
10003358:	2001      	movs	r0, #1
1000335a:	e7fc      	b.n	10003356 <LCPU_CONFIG_set+0x1e>

1000335c <LCPU_CONFIG_get>:
1000335c:	b538      	push	{r3, r4, r5, lr}
1000335e:	4605      	mov	r5, r0
10003360:	4608      	mov	r0, r1
10003362:	8819      	ldrh	r1, [r3, #0]
10003364:	4614      	mov	r4, r2
10003366:	f7ff ffbd 	bl	100032e4 <lcpu_config_find_array>
1000336a:	b138      	cbz	r0, 1000337c <LCPU_CONFIG_get+0x20>
1000336c:	8841      	ldrh	r1, [r0, #2]
1000336e:	8882      	ldrh	r2, [r0, #4]
10003370:	4429      	add	r1, r5
10003372:	4620      	mov	r0, r4
10003374:	f001 fe85 	bl	10005082 <memcpy>
10003378:	2000      	movs	r0, #0
1000337a:	bd38      	pop	{r3, r4, r5, pc}
1000337c:	2001      	movs	r0, #1
1000337e:	e7fc      	b.n	1000337a <LCPU_CONFIG_get+0x1e>

10003380 <LCPU_CONFIG_get_total_size>:
10003380:	4b03      	ldr	r3, [pc, #12]	@ (10003390 <LCPU_CONFIG_get_total_size+0x10>)
10003382:	685b      	ldr	r3, [r3, #4]
10003384:	b2db      	uxtb	r3, r3
10003386:	2b06      	cmp	r3, #6
10003388:	bf8c      	ite	hi
1000338a:	20cc      	movhi	r0, #204	@ 0xcc
1000338c:	2040      	movls	r0, #64	@ 0x40
1000338e:	4770      	bx	lr
10003390:	5000b000 	.word	0x5000b000

10003394 <Reset_Handler>:
10003394:	f8df d048 	ldr.w	sp, [pc, #72]	@ 100033e0 <AES_IRQHandler+0x2>
10003398:	4812      	ldr	r0, [pc, #72]	@ (100033e4 <AES_IRQHandler+0x6>)
1000339a:	f380 880a 	msr	MSPLIM, r0
1000339e:	f7ff ff75 	bl	1000328c <SystemInit>
100033a2:	4c11      	ldr	r4, [pc, #68]	@ (100033e8 <AES_IRQHandler+0xa>)
100033a4:	4d11      	ldr	r5, [pc, #68]	@ (100033ec <AES_IRQHandler+0xe>)
100033a6:	42ac      	cmp	r4, r5
100033a8:	da09      	bge.n	100033be <Reset_Handler+0x2a>
100033aa:	6821      	ldr	r1, [r4, #0]
100033ac:	6862      	ldr	r2, [r4, #4]
100033ae:	68a3      	ldr	r3, [r4, #8]
100033b0:	3b04      	subs	r3, #4
100033b2:	bfa2      	ittt	ge
100033b4:	58c8      	ldrge	r0, [r1, r3]
100033b6:	50d0      	strge	r0, [r2, r3]
100033b8:	e7fa      	bge.n	100033b0 <Reset_Handler+0x1c>
100033ba:	340c      	adds	r4, #12
100033bc:	e7f3      	b.n	100033a6 <Reset_Handler+0x12>
100033be:	4b0c      	ldr	r3, [pc, #48]	@ (100033f0 <AES_IRQHandler+0x12>)
100033c0:	4c0c      	ldr	r4, [pc, #48]	@ (100033f4 <AES_IRQHandler+0x16>)
100033c2:	42a3      	cmp	r3, r4
100033c4:	da08      	bge.n	100033d8 <Reset_Handler+0x44>
100033c6:	6819      	ldr	r1, [r3, #0]
100033c8:	685a      	ldr	r2, [r3, #4]
100033ca:	2000      	movs	r0, #0
100033cc:	3a04      	subs	r2, #4
100033ce:	bfa4      	itt	ge
100033d0:	5088      	strge	r0, [r1, r2]
100033d2:	e7fb      	bge.n	100033cc <Reset_Handler+0x38>
100033d4:	3308      	adds	r3, #8
100033d6:	e7f4      	b.n	100033c2 <Reset_Handler+0x2e>
100033d8:	f001 f952 	bl	10004680 <entry>

100033dc <HardFault_Handler>:
100033dc:	e7fe      	b.n	100033dc <HardFault_Handler>

100033de <AES_IRQHandler>:
100033de:	e7fe      	b.n	100033de <AES_IRQHandler>
100033e0:	20002000 	.word	0x20002000
100033e4:	20000000 	.word	0x20000000
100033e8:	10005bc4 	.word	0x10005bc4
100033ec:	10005be8 	.word	0x10005be8
100033f0:	10005be8 	.word	0x10005be8
100033f4:	10005bf8 	.word	0x10005bf8

100033f8 <__aeabi_unwind_cpp_pr0>:
100033f8:	2000      	movs	r0, #0
100033fa:	4770      	bx	lr

100033fc <HAL_PostMspInit>:
100033fc:	4770      	bx	lr
	...

10003400 <HAL_InitTick>:
10003400:	b538      	push	{r3, r4, r5, lr}
10003402:	4b0a      	ldr	r3, [pc, #40]	@ (1000342c <HAL_InitTick+0x2c>)
10003404:	4605      	mov	r5, r0
10003406:	6818      	ldr	r0, [r3, #0]
10003408:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
1000340c:	fbb0 f0f3 	udiv	r0, r0, r3
10003410:	f000 f87e 	bl	10003510 <HAL_SYSTICK_Config>
10003414:	4604      	mov	r4, r0
10003416:	b938      	cbnz	r0, 10003428 <HAL_InitTick+0x28>
10003418:	4602      	mov	r2, r0
1000341a:	4629      	mov	r1, r5
1000341c:	f04f 30ff 	mov.w	r0, #4294967295
10003420:	f000 f840 	bl	100034a4 <HAL_NVIC_SetPriority>
10003424:	4620      	mov	r0, r4
10003426:	bd38      	pop	{r3, r4, r5, pc}
10003428:	2001      	movs	r0, #1
1000342a:	e7fc      	b.n	10003426 <HAL_InitTick+0x26>
1000342c:	20005984 	.word	0x20005984

10003430 <HAL_IncTick>:
10003430:	4a02      	ldr	r2, [pc, #8]	@ (1000343c <HAL_IncTick+0xc>)
10003432:	6813      	ldr	r3, [r2, #0]
10003434:	3301      	adds	r3, #1
10003436:	6013      	str	r3, [r2, #0]
10003438:	4770      	bx	lr
1000343a:	bf00      	nop
1000343c:	20005a40 	.word	0x20005a40

10003440 <HAL_GetTick>:
10003440:	4b01      	ldr	r3, [pc, #4]	@ (10003448 <HAL_GetTick+0x8>)
10003442:	6818      	ldr	r0, [r3, #0]
10003444:	4770      	bx	lr
10003446:	bf00      	nop
10003448:	20005a40 	.word	0x20005a40

1000344c <WDT_IRQHandler>:
1000344c:	4770      	bx	lr

1000344e <DBG_Trigger_IRQHandler>:
1000344e:	4770      	bx	lr

10003450 <NMI_Handler>:
10003450:	b508      	push	{r3, lr}
10003452:	4b05      	ldr	r3, [pc, #20]	@ (10003468 <NMI_Handler+0x18>)
10003454:	6a1b      	ldr	r3, [r3, #32]
10003456:	005b      	lsls	r3, r3, #1
10003458:	d502      	bpl.n	10003460 <NMI_Handler+0x10>
1000345a:	f7ff fff8 	bl	1000344e <DBG_Trigger_IRQHandler>
1000345e:	bd08      	pop	{r3, pc}
10003460:	f7ff fff4 	bl	1000344c <WDT_IRQHandler>
10003464:	e7fb      	b.n	1000345e <NMI_Handler+0xe>
10003466:	bf00      	nop
10003468:	5000b000 	.word	0x5000b000

1000346c <HAL_ADC_HwInit>:
1000346c:	4b02      	ldr	r3, [pc, #8]	@ (10003478 <HAL_ADC_HwInit+0xc>)
1000346e:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
10003470:	f422 7200 	bic.w	r2, r2, #512	@ 0x200
10003474:	639a      	str	r2, [r3, #56]	@ 0x38
10003476:	4770      	bx	lr
10003478:	50087000 	.word	0x50087000

1000347c <HAL_NVIC_SetPriorityGrouping>:
1000347c:	1ec3      	subs	r3, r0, #3
1000347e:	2b04      	cmp	r3, #4
10003480:	d900      	bls.n	10003484 <HAL_NVIC_SetPriorityGrouping+0x8>
10003482:	e7fe      	b.n	10003482 <HAL_NVIC_SetPriorityGrouping+0x6>
10003484:	4a06      	ldr	r2, [pc, #24]	@ (100034a0 <HAL_NVIC_SetPriorityGrouping+0x24>)
10003486:	68d3      	ldr	r3, [r2, #12]
10003488:	f423 63e0 	bic.w	r3, r3, #1792	@ 0x700
1000348c:	041b      	lsls	r3, r3, #16
1000348e:	0c1b      	lsrs	r3, r3, #16
10003490:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
10003494:	f040 60bf 	orr.w	r0, r0, #100139008	@ 0x5f80000
10003498:	f440 3000 	orr.w	r0, r0, #131072	@ 0x20000
1000349c:	60d0      	str	r0, [r2, #12]
1000349e:	4770      	bx	lr
100034a0:	e000ed00 	.word	0xe000ed00

100034a4 <HAL_NVIC_SetPriority>:
100034a4:	2a0f      	cmp	r2, #15
100034a6:	b530      	push	{r4, r5, lr}
100034a8:	d900      	bls.n	100034ac <HAL_NVIC_SetPriority+0x8>
100034aa:	e7fe      	b.n	100034aa <HAL_NVIC_SetPriority+0x6>
100034ac:	290f      	cmp	r1, #15
100034ae:	d900      	bls.n	100034b2 <HAL_NVIC_SetPriority+0xe>
100034b0:	e7fe      	b.n	100034b0 <HAL_NVIC_SetPriority+0xc>
100034b2:	4b15      	ldr	r3, [pc, #84]	@ (10003508 <HAL_NVIC_SetPriority+0x64>)
100034b4:	68dc      	ldr	r4, [r3, #12]
100034b6:	f3c4 2402 	ubfx	r4, r4, #8, #3
100034ba:	f1c4 0307 	rsb	r3, r4, #7
100034be:	1ce5      	adds	r5, r4, #3
100034c0:	2b03      	cmp	r3, #3
100034c2:	bf28      	it	cs
100034c4:	2303      	movcs	r3, #3
100034c6:	2d06      	cmp	r5, #6
100034c8:	f04f 35ff 	mov.w	r5, #4294967295
100034cc:	bf94      	ite	ls
100034ce:	2400      	movls	r4, #0
100034d0:	3c04      	subhi	r4, #4
100034d2:	fa05 f303 	lsl.w	r3, r5, r3
100034d6:	ea21 0303 	bic.w	r3, r1, r3
100034da:	40a5      	lsls	r5, r4
100034dc:	ea22 0205 	bic.w	r2, r2, r5
100034e0:	40a3      	lsls	r3, r4
100034e2:	2800      	cmp	r0, #0
100034e4:	ea43 0302 	orr.w	r3, r3, r2
100034e8:	bfac      	ite	ge
100034ea:	f100 4060 	addge.w	r0, r0, #3758096384	@ 0xe0000000
100034ee:	4a07      	ldrlt	r2, [pc, #28]	@ (1000350c <HAL_NVIC_SetPriority+0x68>)
100034f0:	ea4f 1343 	mov.w	r3, r3, lsl #5
100034f4:	b2db      	uxtb	r3, r3
100034f6:	bfab      	itete	ge
100034f8:	f500 4061 	addge.w	r0, r0, #57600	@ 0xe100
100034fc:	f000 000f 	andlt.w	r0, r0, #15
10003500:	f880 3300 	strbge.w	r3, [r0, #768]	@ 0x300
10003504:	5413      	strblt	r3, [r2, r0]
10003506:	bd30      	pop	{r4, r5, pc}
10003508:	e000ed00 	.word	0xe000ed00
1000350c:	e000ed14 	.word	0xe000ed14

10003510 <HAL_SYSTICK_Config>:
10003510:	3801      	subs	r0, #1
10003512:	f1b0 7f80 	cmp.w	r0, #16777216	@ 0x1000000
10003516:	d20b      	bcs.n	10003530 <HAL_SYSTICK_Config+0x20>
10003518:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
1000351c:	21e0      	movs	r1, #224	@ 0xe0
1000351e:	4a05      	ldr	r2, [pc, #20]	@ (10003534 <HAL_SYSTICK_Config+0x24>)
10003520:	6158      	str	r0, [r3, #20]
10003522:	f882 1023 	strb.w	r1, [r2, #35]	@ 0x23
10003526:	2000      	movs	r0, #0
10003528:	2207      	movs	r2, #7
1000352a:	6198      	str	r0, [r3, #24]
1000352c:	611a      	str	r2, [r3, #16]
1000352e:	4770      	bx	lr
10003530:	2001      	movs	r0, #1
10003532:	4770      	bx	lr
10003534:	e000ed00 	.word	0xe000ed00

10003538 <HAL_EFUSE_Init>:
10003538:	2101      	movs	r1, #1
1000353a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1000353c:	4608      	mov	r0, r1
1000353e:	f002 fb33 	bl	10005ba8 <__HAL_RCC_GetPCLKFreq_veneer>
10003542:	4b25      	ldr	r3, [pc, #148]	@ (100035d8 <HAL_EFUSE_Init+0xa0>)
10003544:	4604      	mov	r4, r0
10003546:	4298      	cmp	r0, r3
10003548:	d840      	bhi.n	100035cc <HAL_EFUSE_Init+0x94>
1000354a:	a321      	add	r3, pc, #132	@ (adr r3, 100035d0 <HAL_EFUSE_Init+0x98>)
1000354c:	e9d3 2300 	ldrd	r2, r3, [r3]
10003550:	2014      	movs	r0, #20
10003552:	fba4 0100 	umull	r0, r1, r4, r0
10003556:	f001 f8c3 	bl	100046e0 <__aeabi_uldivmod>
1000355a:	250a      	movs	r5, #10
1000355c:	2100      	movs	r1, #0
1000355e:	1c46      	adds	r6, r0, #1
10003560:	481e      	ldr	r0, [pc, #120]	@ (100035dc <HAL_EFUSE_Init+0xa4>)
10003562:	2300      	movs	r3, #0
10003564:	fbe4 0105 	umlal	r0, r1, r4, r5
10003568:	4a1d      	ldr	r2, [pc, #116]	@ (100035e0 <HAL_EFUSE_Init+0xa8>)
1000356a:	f001 f8b9 	bl	100046e0 <__aeabi_uldivmod>
1000356e:	4607      	mov	r7, r0
10003570:	4605      	mov	r5, r0
10003572:	481c      	ldr	r0, [pc, #112]	@ (100035e4 <HAL_EFUSE_Init+0xac>)
10003574:	2300      	movs	r3, #0
10003576:	4622      	mov	r2, r4
10003578:	fba7 0100 	umull	r0, r1, r7, r0
1000357c:	f001 f8b0 	bl	100046e0 <__aeabi_uldivmod>
10003580:	f642 23f8 	movw	r3, #11000	@ 0x2af8
10003584:	4298      	cmp	r0, r3
10003586:	ea4f 16c6 	mov.w	r6, r6, lsl #7
1000358a:	d919      	bls.n	100035c0 <HAL_EFUSE_Init+0x88>
1000358c:	1e7d      	subs	r5, r7, #1
1000358e:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
10003592:	a30f      	add	r3, pc, #60	@ (adr r3, 100035d0 <HAL_EFUSE_Init+0x98>)
10003594:	e9d3 2300 	ldrd	r2, r3, [r3]
10003598:	fba4 0100 	umull	r0, r1, r4, r0
1000359c:	f001 f8a0 	bl	100046e0 <__aeabi_uldivmod>
100035a0:	02ad      	lsls	r5, r5, #10
100035a2:	f025 457f 	bic.w	r5, r5, #4278190080	@ 0xff000000
100035a6:	f425 0560 	bic.w	r5, r5, #14680064	@ 0xe00000
100035aa:	3001      	adds	r0, #1
100035ac:	f425 757f 	bic.w	r5, r5, #1020	@ 0x3fc
100035b0:	4b0d      	ldr	r3, [pc, #52]	@ (100035e8 <HAL_EFUSE_Init+0xb0>)
100035b2:	4330      	orrs	r0, r6
100035b4:	f025 0503 	bic.w	r5, r5, #3
100035b8:	4328      	orrs	r0, r5
100035ba:	6058      	str	r0, [r3, #4]
100035bc:	2000      	movs	r0, #0
100035be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100035c0:	f242 3327 	movw	r3, #8999	@ 0x2327
100035c4:	4298      	cmp	r0, r3
100035c6:	bf98      	it	ls
100035c8:	1c7d      	addls	r5, r7, #1
100035ca:	e7e0      	b.n	1000358e <HAL_EFUSE_Init+0x56>
100035cc:	2001      	movs	r0, #1
100035ce:	e7f6      	b.n	100035be <HAL_EFUSE_Init+0x86>
100035d0:	3b9aca00 	.word	0x3b9aca00
100035d4:	00000000 	.word	0x00000000
100035d8:	07270e00 	.word	0x07270e00
100035dc:	0007a120 	.word	0x0007a120
100035e0:	000f4240 	.word	0x000f4240
100035e4:	3b9aca00 	.word	0x3b9aca00
100035e8:	5000c000 	.word	0x5000c000

100035ec <HAL_EFUSE_Read>:
100035ec:	2a20      	cmp	r2, #32
100035ee:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
100035f2:	4606      	mov	r6, r0
100035f4:	460c      	mov	r4, r1
100035f6:	4615      	mov	r5, r2
100035f8:	dc30      	bgt.n	1000365c <HAL_EFUSE_Read+0x70>
100035fa:	f3c0 08c4 	ubfx	r8, r0, #3, #5
100035fe:	eb08 0302 	add.w	r3, r8, r2
10003602:	2b20      	cmp	r3, #32
10003604:	dc2a      	bgt.n	1000365c <HAL_EFUSE_Read+0x70>
10003606:	0797      	lsls	r7, r2, #30
10003608:	d128      	bne.n	1000365c <HAL_EFUSE_Read+0x70>
1000360a:	f010 091f 	ands.w	r9, r0, #31
1000360e:	d125      	bne.n	1000365c <HAL_EFUSE_Read+0x70>
10003610:	4a25      	ldr	r2, [pc, #148]	@ (100036a8 <HAL_EFUSE_Read+0xbc>)
10003612:	2014      	movs	r0, #20
10003614:	f8d2 7094 	ldr.w	r7, [r2, #148]	@ 0x94
10003618:	0a36      	lsrs	r6, r6, #8
1000361a:	1cfb      	adds	r3, r7, #3
1000361c:	2b0e      	cmp	r3, #14
1000361e:	bf38      	it	cc
10003620:	230e      	movcc	r3, #14
10003622:	2b0f      	cmp	r3, #15
10003624:	bf28      	it	cs
10003626:	230f      	movcs	r3, #15
10003628:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
1000362c:	f002 fa98 	bl	10005b60 <__HAL_Delay_us_veneer>
10003630:	4a1e      	ldr	r2, [pc, #120]	@ (100036ac <HAL_EFUSE_Read+0xc0>)
10003632:	00b3      	lsls	r3, r6, #2
10003634:	6013      	str	r3, [r2, #0]
10003636:	6813      	ldr	r3, [r2, #0]
10003638:	491d      	ldr	r1, [pc, #116]	@ (100036b0 <HAL_EFUSE_Read+0xc4>)
1000363a:	f043 0301 	orr.w	r3, r3, #1
1000363e:	6013      	str	r3, [r2, #0]
10003640:	464b      	mov	r3, r9
10003642:	4369      	muls	r1, r5
10003644:	6890      	ldr	r0, [r2, #8]
10003646:	07c0      	lsls	r0, r0, #31
10003648:	d50c      	bpl.n	10003664 <HAL_EFUSE_Read+0x78>
1000364a:	6890      	ldr	r0, [r2, #8]
1000364c:	428b      	cmp	r3, r1
1000364e:	f040 0001 	orr.w	r0, r0, #1
10003652:	6090      	str	r0, [r2, #8]
10003654:	d30a      	bcc.n	1000366c <HAL_EFUSE_Read+0x80>
10003656:	4b14      	ldr	r3, [pc, #80]	@ (100036a8 <HAL_EFUSE_Read+0xbc>)
10003658:	f8c3 7094 	str.w	r7, [r3, #148]	@ 0x94
1000365c:	2500      	movs	r5, #0
1000365e:	4628      	mov	r0, r5
10003660:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
10003664:	428b      	cmp	r3, r1
10003666:	d2f0      	bcs.n	1000364a <HAL_EFUSE_Read+0x5e>
10003668:	3301      	adds	r3, #1
1000366a:	e7eb      	b.n	10003644 <HAL_EFUSE_Read+0x58>
1000366c:	4a11      	ldr	r2, [pc, #68]	@ (100036b4 <HAL_EFUSE_Read+0xc8>)
1000366e:	f008 001c 	and.w	r0, r8, #28
10003672:	eb00 1046 	add.w	r0, r0, r6, lsl #5
10003676:	f025 0103 	bic.w	r1, r5, #3
1000367a:	4402      	add	r2, r0
1000367c:	4421      	add	r1, r4
1000367e:	428c      	cmp	r4, r1
10003680:	d103      	bne.n	1000368a <HAL_EFUSE_Read+0x9e>
10003682:	4b09      	ldr	r3, [pc, #36]	@ (100036a8 <HAL_EFUSE_Read+0xbc>)
10003684:	f8c3 7094 	str.w	r7, [r3, #148]	@ 0x94
10003688:	e7e9      	b.n	1000365e <HAL_EFUSE_Read+0x72>
1000368a:	f852 3b04 	ldr.w	r3, [r2], #4
1000368e:	3404      	adds	r4, #4
10003690:	0a18      	lsrs	r0, r3, #8
10003692:	f804 3c04 	strb.w	r3, [r4, #-4]
10003696:	f804 0c03 	strb.w	r0, [r4, #-3]
1000369a:	0c18      	lsrs	r0, r3, #16
1000369c:	0e1b      	lsrs	r3, r3, #24
1000369e:	f804 0c02 	strb.w	r0, [r4, #-2]
100036a2:	f804 3c01 	strb.w	r3, [r4, #-1]
100036a6:	e7ea      	b.n	1000367e <HAL_EFUSE_Read+0x92>
100036a8:	500ca000 	.word	0x500ca000
100036ac:	5000c000 	.word	0x5000c000
100036b0:	0005dc00 	.word	0x0005dc00
100036b4:	5000c030 	.word	0x5000c030

100036b8 <HAL_DBG_printf>:
100036b8:	b40f      	push	{r0, r1, r2, r3}
100036ba:	b004      	add	sp, #16
100036bc:	4770      	bx	lr
	...

100036c0 <HAL_Set_backup>:
100036c0:	4b01      	ldr	r3, [pc, #4]	@ (100036c8 <HAL_Set_backup+0x8>)
100036c2:	f843 1020 	str.w	r1, [r3, r0, lsl #2]
100036c6:	4770      	bx	lr
100036c8:	500cb030 	.word	0x500cb030

100036cc <HAL_Get_backup>:
100036cc:	4b01      	ldr	r3, [pc, #4]	@ (100036d4 <HAL_Get_backup+0x8>)
100036ce:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
100036d2:	4770      	bx	lr
100036d4:	500cb030 	.word	0x500cb030

100036d8 <HAL_LCPU_CONIFG_init.part.0>:
100036d8:	b510      	push	{r4, lr}
100036da:	4b0a      	ldr	r3, [pc, #40]	@ (10003704 <HAL_LCPU_CONIFG_init.part.0+0x2c>)
100036dc:	490a      	ldr	r1, [pc, #40]	@ (10003708 <HAL_LCPU_CONIFG_init.part.0+0x30>)
100036de:	685a      	ldr	r2, [r3, #4]
100036e0:	4b0a      	ldr	r3, [pc, #40]	@ (1000370c <HAL_LCPU_CONIFG_init.part.0+0x34>)
100036e2:	b2d2      	uxtb	r2, r2
100036e4:	2a06      	cmp	r2, #6
100036e6:	bf88      	it	hi
100036e8:	460b      	movhi	r3, r1
100036ea:	4c09      	ldr	r4, [pc, #36]	@ (10003710 <HAL_LCPU_CONIFG_init.part.0+0x38>)
100036ec:	6023      	str	r3, [r4, #0]
100036ee:	f7ff fe47 	bl	10003380 <LCPU_CONFIG_get_total_size>
100036f2:	6823      	ldr	r3, [r4, #0]
100036f4:	4602      	mov	r2, r0
100036f6:	2100      	movs	r1, #0
100036f8:	4618      	mov	r0, r3
100036fa:	f002 fa4d 	bl	10005b98 <__memset_veneer>
100036fe:	4a05      	ldr	r2, [pc, #20]	@ (10003714 <HAL_LCPU_CONIFG_init.part.0+0x3c>)
10003700:	6002      	str	r2, [r0, #0]
10003702:	bd10      	pop	{r4, pc}
10003704:	5000b000 	.word	0x5000b000
10003708:	20402a00 	.word	0x20402a00
1000370c:	2040fdc0 	.word	0x2040fdc0
10003710:	20005a44 	.word	0x20005a44
10003714:	45457878 	.word	0x45457878

10003718 <HAL_LCPU_CONFIG_set_core>:
10003718:	b508      	push	{r3, lr}
1000371a:	4613      	mov	r3, r2
1000371c:	460a      	mov	r2, r1
1000371e:	4601      	mov	r1, r0
10003720:	4803      	ldr	r0, [pc, #12]	@ (10003730 <HAL_LCPU_CONFIG_set_core+0x18>)
10003722:	6800      	ldr	r0, [r0, #0]
10003724:	f7ff fe08 	bl	10003338 <LCPU_CONFIG_set>
10003728:	3800      	subs	r0, #0
1000372a:	bf18      	it	ne
1000372c:	2001      	movne	r0, #1
1000372e:	bd08      	pop	{r3, pc}
10003730:	20005a44 	.word	0x20005a44

10003734 <HAL_LCPU_CONFIG_get_core>:
10003734:	b508      	push	{r3, lr}
10003736:	4613      	mov	r3, r2
10003738:	460a      	mov	r2, r1
1000373a:	4601      	mov	r1, r0
1000373c:	4803      	ldr	r0, [pc, #12]	@ (1000374c <HAL_LCPU_CONFIG_get_core+0x18>)
1000373e:	6800      	ldr	r0, [r0, #0]
10003740:	f7ff fe0c 	bl	1000335c <LCPU_CONFIG_get>
10003744:	3800      	subs	r0, #0
10003746:	bf18      	it	ne
10003748:	2001      	movne	r0, #1
1000374a:	bd08      	pop	{r3, pc}
1000374c:	20005a44 	.word	0x20005a44

10003750 <HAL_LCPU_CONFIG_set>:
10003750:	b570      	push	{r4, r5, r6, lr}
10003752:	4604      	mov	r4, r0
10003754:	4616      	mov	r6, r2
10003756:	460d      	mov	r5, r1
10003758:	b319      	cbz	r1, 100037a2 <HAL_LCPU_CONFIG_set+0x52>
1000375a:	28fd      	cmp	r0, #253	@ 0xfd
1000375c:	d821      	bhi.n	100037a2 <HAL_LCPU_CONFIG_set+0x52>
1000375e:	2002      	movs	r0, #2
10003760:	f002 fa16 	bl	10005b90 <__HAL_HPAON_WakeCore_veneer>
10003764:	4b10      	ldr	r3, [pc, #64]	@ (100037a8 <HAL_LCPU_CONFIG_set+0x58>)
10003766:	681b      	ldr	r3, [r3, #0]
10003768:	b90b      	cbnz	r3, 1000376e <HAL_LCPU_CONFIG_set+0x1e>
1000376a:	f7ff ffb5 	bl	100036d8 <HAL_LCPU_CONIFG_init.part.0>
1000376e:	4632      	mov	r2, r6
10003770:	4629      	mov	r1, r5
10003772:	4620      	mov	r0, r4
10003774:	f7ff ffd0 	bl	10003718 <HAL_LCPU_CONFIG_set_core>
10003778:	f3ef 8110 	mrs	r1, PRIMASK
1000377c:	2301      	movs	r3, #1
1000377e:	f383 8810 	msr	PRIMASK, r3
10003782:	4a0a      	ldr	r2, [pc, #40]	@ (100037ac <HAL_LCPU_CONFIG_set+0x5c>)
10003784:	7813      	ldrb	r3, [r2, #0]
10003786:	b903      	cbnz	r3, 1000378a <HAL_LCPU_CONFIG_set+0x3a>
10003788:	e7fe      	b.n	10003788 <HAL_LCPU_CONFIG_set+0x38>
1000378a:	3b01      	subs	r3, #1
1000378c:	b2db      	uxtb	r3, r3
1000378e:	7013      	strb	r3, [r2, #0]
10003790:	b923      	cbnz	r3, 1000379c <HAL_LCPU_CONFIG_set+0x4c>
10003792:	4a07      	ldr	r2, [pc, #28]	@ (100037b0 <HAL_LCPU_CONFIG_set+0x60>)
10003794:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
10003796:	f023 0301 	bic.w	r3, r3, #1
1000379a:	62d3      	str	r3, [r2, #44]	@ 0x2c
1000379c:	f381 8810 	msr	PRIMASK, r1
100037a0:	bd70      	pop	{r4, r5, r6, pc}
100037a2:	2001      	movs	r0, #1
100037a4:	e7fc      	b.n	100037a0 <HAL_LCPU_CONFIG_set+0x50>
100037a6:	bf00      	nop
100037a8:	20005a44 	.word	0x20005a44
100037ac:	20005970 	.word	0x20005970
100037b0:	500c0000 	.word	0x500c0000

100037b4 <HAL_LCPU_CONFIG_get>:
100037b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100037b6:	4605      	mov	r5, r0
100037b8:	4617      	mov	r7, r2
100037ba:	460e      	mov	r6, r1
100037bc:	b319      	cbz	r1, 10003806 <HAL_LCPU_CONFIG_get+0x52>
100037be:	b312      	cbz	r2, 10003806 <HAL_LCPU_CONFIG_get+0x52>
100037c0:	28fd      	cmp	r0, #253	@ 0xfd
100037c2:	d820      	bhi.n	10003806 <HAL_LCPU_CONFIG_get+0x52>
100037c4:	4c1d      	ldr	r4, [pc, #116]	@ (1000383c <HAL_LCPU_CONFIG_get+0x88>)
100037c6:	2002      	movs	r0, #2
100037c8:	f002 f9e2 	bl	10005b90 <__HAL_HPAON_WakeCore_veneer>
100037cc:	6823      	ldr	r3, [r4, #0]
100037ce:	b90b      	cbnz	r3, 100037d4 <HAL_LCPU_CONFIG_get+0x20>
100037d0:	f7ff ff82 	bl	100036d8 <HAL_LCPU_CONIFG_init.part.0>
100037d4:	6823      	ldr	r3, [r4, #0]
100037d6:	4c1a      	ldr	r4, [pc, #104]	@ (10003840 <HAL_LCPU_CONFIG_get+0x8c>)
100037d8:	681a      	ldr	r2, [r3, #0]
100037da:	4b1a      	ldr	r3, [pc, #104]	@ (10003844 <HAL_LCPU_CONFIG_get+0x90>)
100037dc:	429a      	cmp	r2, r3
100037de:	d014      	beq.n	1000380a <HAL_LCPU_CONFIG_get+0x56>
100037e0:	f3ef 8110 	mrs	r1, PRIMASK
100037e4:	2301      	movs	r3, #1
100037e6:	f383 8810 	msr	PRIMASK, r3
100037ea:	7823      	ldrb	r3, [r4, #0]
100037ec:	b903      	cbnz	r3, 100037f0 <HAL_LCPU_CONFIG_get+0x3c>
100037ee:	e7fe      	b.n	100037ee <HAL_LCPU_CONFIG_get+0x3a>
100037f0:	3b01      	subs	r3, #1
100037f2:	b2db      	uxtb	r3, r3
100037f4:	7023      	strb	r3, [r4, #0]
100037f6:	b923      	cbnz	r3, 10003802 <HAL_LCPU_CONFIG_get+0x4e>
100037f8:	4a13      	ldr	r2, [pc, #76]	@ (10003848 <HAL_LCPU_CONFIG_get+0x94>)
100037fa:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
100037fc:	f023 0301 	bic.w	r3, r3, #1
10003800:	62d3      	str	r3, [r2, #44]	@ 0x2c
10003802:	f381 8810 	msr	PRIMASK, r1
10003806:	2001      	movs	r0, #1
10003808:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1000380a:	463a      	mov	r2, r7
1000380c:	4631      	mov	r1, r6
1000380e:	4628      	mov	r0, r5
10003810:	f7ff ff90 	bl	10003734 <HAL_LCPU_CONFIG_get_core>
10003814:	f3ef 8110 	mrs	r1, PRIMASK
10003818:	2301      	movs	r3, #1
1000381a:	f383 8810 	msr	PRIMASK, r3
1000381e:	7823      	ldrb	r3, [r4, #0]
10003820:	b903      	cbnz	r3, 10003824 <HAL_LCPU_CONFIG_get+0x70>
10003822:	e7fe      	b.n	10003822 <HAL_LCPU_CONFIG_get+0x6e>
10003824:	3b01      	subs	r3, #1
10003826:	b2db      	uxtb	r3, r3
10003828:	7023      	strb	r3, [r4, #0]
1000382a:	b923      	cbnz	r3, 10003836 <HAL_LCPU_CONFIG_get+0x82>
1000382c:	4a06      	ldr	r2, [pc, #24]	@ (10003848 <HAL_LCPU_CONFIG_get+0x94>)
1000382e:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
10003830:	f023 0301 	bic.w	r3, r3, #1
10003834:	62d3      	str	r3, [r2, #44]	@ 0x2c
10003836:	f381 8810 	msr	PRIMASK, r1
1000383a:	e7e5      	b.n	10003808 <HAL_LCPU_CONFIG_get+0x54>
1000383c:	20005a44 	.word	0x20005a44
10003840:	20005970 	.word	0x20005970
10003844:	45457878 	.word	0x45457878
10003848:	500c0000 	.word	0x500c0000

1000384c <HAL_RC_locked>:
1000384c:	b507      	push	{r0, r1, r2, lr}
1000384e:	2002      	movs	r0, #2
10003850:	f002 f99e 	bl	10005b90 <__HAL_HPAON_WakeCore_veneer>
10003854:	2100      	movs	r1, #0
10003856:	2002      	movs	r0, #2
10003858:	f000 f9f8 	bl	10003c4c <HAL_MAILBOX_GetMutex>
1000385c:	2100      	movs	r1, #0
1000385e:	9001      	str	r0, [sp, #4]
10003860:	a801      	add	r0, sp, #4
10003862:	f000 fa09 	bl	10003c78 <HAL_MAILBOX_Lock>
10003866:	f3ef 8110 	mrs	r1, PRIMASK
1000386a:	2301      	movs	r3, #1
1000386c:	f383 8810 	msr	PRIMASK, r3
10003870:	4a0a      	ldr	r2, [pc, #40]	@ (1000389c <HAL_RC_locked+0x50>)
10003872:	7813      	ldrb	r3, [r2, #0]
10003874:	b903      	cbnz	r3, 10003878 <HAL_RC_locked+0x2c>
10003876:	e7fe      	b.n	10003876 <HAL_RC_locked+0x2a>
10003878:	3b01      	subs	r3, #1
1000387a:	b2db      	uxtb	r3, r3
1000387c:	7013      	strb	r3, [r2, #0]
1000387e:	b923      	cbnz	r3, 1000388a <HAL_RC_locked+0x3e>
10003880:	4a07      	ldr	r2, [pc, #28]	@ (100038a0 <HAL_RC_locked+0x54>)
10003882:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
10003884:	f023 0301 	bic.w	r3, r3, #1
10003888:	62d3      	str	r3, [r2, #44]	@ 0x2c
1000388a:	f381 8810 	msr	PRIMASK, r1
1000388e:	3800      	subs	r0, #0
10003890:	bf18      	it	ne
10003892:	2001      	movne	r0, #1
10003894:	4240      	negs	r0, r0
10003896:	b003      	add	sp, #12
10003898:	f85d fb04 	ldr.w	pc, [sp], #4
1000389c:	20005970 	.word	0x20005970
100038a0:	500c0000 	.word	0x500c0000

100038a4 <HAL_RC_unlocked>:
100038a4:	b507      	push	{r0, r1, r2, lr}
100038a6:	2002      	movs	r0, #2
100038a8:	f002 f972 	bl	10005b90 <__HAL_HPAON_WakeCore_veneer>
100038ac:	2100      	movs	r1, #0
100038ae:	2002      	movs	r0, #2
100038b0:	f000 f9cc 	bl	10003c4c <HAL_MAILBOX_GetMutex>
100038b4:	2100      	movs	r1, #0
100038b6:	9001      	str	r0, [sp, #4]
100038b8:	a801      	add	r0, sp, #4
100038ba:	f000 f9f2 	bl	10003ca2 <HAL_MAILBOX_UnLock>
100038be:	f3ef 8110 	mrs	r1, PRIMASK
100038c2:	2301      	movs	r3, #1
100038c4:	f383 8810 	msr	PRIMASK, r3
100038c8:	4a08      	ldr	r2, [pc, #32]	@ (100038ec <HAL_RC_unlocked+0x48>)
100038ca:	7813      	ldrb	r3, [r2, #0]
100038cc:	b903      	cbnz	r3, 100038d0 <HAL_RC_unlocked+0x2c>
100038ce:	e7fe      	b.n	100038ce <HAL_RC_unlocked+0x2a>
100038d0:	3b01      	subs	r3, #1
100038d2:	b2db      	uxtb	r3, r3
100038d4:	7013      	strb	r3, [r2, #0]
100038d6:	b923      	cbnz	r3, 100038e2 <HAL_RC_unlocked+0x3e>
100038d8:	4a05      	ldr	r2, [pc, #20]	@ (100038f0 <HAL_RC_unlocked+0x4c>)
100038da:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
100038dc:	f023 0301 	bic.w	r3, r3, #1
100038e0:	62d3      	str	r3, [r2, #44]	@ 0x2c
100038e2:	f381 8810 	msr	PRIMASK, r1
100038e6:	b003      	add	sp, #12
100038e8:	f85d fb04 	ldr.w	pc, [sp], #4
100038ec:	20005970 	.word	0x20005970
100038f0:	500c0000 	.word	0x500c0000

100038f4 <HAL_RC_CAL_get_reference_cycle_on_48M>:
100038f4:	2003      	movs	r0, #3
100038f6:	f7ff bee9 	b.w	100036cc <HAL_Get_backup>

100038fa <HAL_RC_CAL_update_ave_cycle>:
100038fa:	4601      	mov	r1, r0
100038fc:	2004      	movs	r0, #4
100038fe:	f7ff bedf 	b.w	100036c0 <HAL_Set_backup>
	...

10003904 <HAL_RC_CAL_update_reference_cycle_on_48M_ex>:
10003904:	2300      	movs	r3, #0
10003906:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
1000390a:	b089      	sub	sp, #36	@ 0x24
1000390c:	9306      	str	r3, [sp, #24]
1000390e:	4bbe      	ldr	r3, [pc, #760]	@ (10003c08 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x304>)
10003910:	9202      	str	r2, [sp, #8]
10003912:	689e      	ldr	r6, [r3, #8]
10003914:	460d      	mov	r5, r1
10003916:	f016 0601 	ands.w	r6, r6, #1
1000391a:	f040 816f 	bne.w	10003bfc <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x2f8>
1000391e:	f7ff ff95 	bl	1000384c <HAL_RC_locked>
10003922:	2800      	cmp	r0, #0
10003924:	f040 816d 	bne.w	10003c02 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x2fe>
10003928:	2002      	movs	r0, #2
1000392a:	f002 f931 	bl	10005b90 <__HAL_HPAON_WakeCore_veneer>
1000392e:	f3ef 8010 	mrs	r0, PRIMASK
10003932:	2101      	movs	r1, #1
10003934:	f381 8810 	msr	PRIMASK, r1
10003938:	4bb4      	ldr	r3, [pc, #720]	@ (10003c0c <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x308>)
1000393a:	691a      	ldr	r2, [r3, #16]
1000393c:	f042 0202 	orr.w	r2, r2, #2
10003940:	611a      	str	r2, [r3, #16]
10003942:	4ab3      	ldr	r2, [pc, #716]	@ (10003c10 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x30c>)
10003944:	7011      	strb	r1, [r2, #0]
10003946:	f380 8810 	msr	PRIMASK, r0
1000394a:	691a      	ldr	r2, [r3, #16]
1000394c:	2a00      	cmp	r2, #0
1000394e:	dafc      	bge.n	1000394a <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x46>
10003950:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
10003954:	6913      	ldr	r3, [r2, #16]
10003956:	f023 0303 	bic.w	r3, r3, #3
1000395a:	f043 0301 	orr.w	r3, r3, #1
1000395e:	6113      	str	r3, [r2, #16]
10003960:	f8d2 a014 	ldr.w	sl, [r2, #20]
10003964:	f3ca 3b02 	ubfx	fp, sl, #12, #3
10003968:	f1bb 0f07 	cmp.w	fp, #7
1000396c:	d005      	beq.n	1000397a <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x76>
1000396e:	f04f 31ff 	mov.w	r1, #4294967295
10003972:	2207      	movs	r2, #7
10003974:	4608      	mov	r0, r1
10003976:	f002 f8eb 	bl	10005b50 <__HAL_RCC_LCPU_SetDiv_veneer>
1000397a:	2200      	movs	r2, #0
1000397c:	4691      	mov	r9, r2
1000397e:	4fa5      	ldr	r7, [pc, #660]	@ (10003c14 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x310>)
10003980:	9203      	str	r2, [sp, #12]
10003982:	f8d7 1114 	ldr.w	r1, [r7, #276]	@ 0x114
10003986:	2001      	movs	r0, #1
10003988:	f36f 41dc 	bfc	r1, #19, #10
1000398c:	f441 2100 	orr.w	r1, r1, #524288	@ 0x80000
10003990:	f8c7 1114 	str.w	r1, [r7, #276]	@ 0x114
10003994:	f8d7 1114 	ldr.w	r1, [r7, #276]	@ 0x114
10003998:	f041 5100 	orr.w	r1, r1, #536870912	@ 0x20000000
1000399c:	f8c7 1114 	str.w	r1, [r7, #276]	@ 0x114
100039a0:	f8d7 1114 	ldr.w	r1, [r7, #276]	@ 0x114
100039a4:	f421 3180 	bic.w	r1, r1, #65536	@ 0x10000
100039a8:	f8c7 1114 	str.w	r1, [r7, #276]	@ 0x114
100039ac:	f8d7 1114 	ldr.w	r1, [r7, #276]	@ 0x114
100039b0:	f8c7 1114 	str.w	r1, [r7, #276]	@ 0x114
100039b4:	f8d7 1114 	ldr.w	r1, [r7, #276]	@ 0x114
100039b8:	f36f 010f 	bfc	r1, #0, #16
100039bc:	f8c7 1114 	str.w	r1, [r7, #276]	@ 0x114
100039c0:	f8d7 1114 	ldr.w	r1, [r7, #276]	@ 0x114
100039c4:	f041 01c8 	orr.w	r1, r1, #200	@ 0xc8
100039c8:	f8c7 1114 	str.w	r1, [r7, #276]	@ 0x114
100039cc:	f8d7 1114 	ldr.w	r1, [r7, #276]	@ 0x114
100039d0:	f441 3100 	orr.w	r1, r1, #131072	@ 0x20000
100039d4:	f8c7 1114 	str.w	r1, [r7, #276]	@ 0x114
100039d8:	f002 f8e2 	bl	10005ba0 <__HAL_Delay_veneer>
100039dc:	9a03      	ldr	r2, [sp, #12]
100039de:	f8d7 1118 	ldr.w	r1, [r7, #280]	@ 0x118
100039e2:	2900      	cmp	r1, #0
100039e4:	dafb      	bge.n	100039de <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0xda>
100039e6:	f8df 8258 	ldr.w	r8, [pc, #600]	@ 10003c40 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x33c>
100039ea:	f8d7 4118 	ldr.w	r4, [r7, #280]	@ 0x118
100039ee:	f8d8 1000 	ldr.w	r1, [r8]
100039f2:	f024 4400 	bic.w	r4, r4, #2147483648	@ 0x80000000
100039f6:	b181      	cbz	r1, 10003a1a <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x116>
100039f8:	2004      	movs	r0, #4
100039fa:	f7ff fe67 	bl	100036cc <HAL_Get_backup>
100039fe:	f241 3187 	movw	r1, #4999	@ 0x1387
10003a02:	42a0      	cmp	r0, r4
10003a04:	bf34      	ite	cc
10003a06:	1a22      	subcc	r2, r4, r0
10003a08:	1b02      	subcs	r2, r0, r4
10003a0a:	428a      	cmp	r2, r1
10003a0c:	9006      	str	r0, [sp, #24]
10003a0e:	d904      	bls.n	10003a1a <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x116>
10003a10:	f109 0901 	add.w	r9, r9, #1
10003a14:	f1b9 0f0a 	cmp.w	r9, #10
10003a18:	d1b2      	bne.n	10003980 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x7c>
10003a1a:	2300      	movs	r3, #0
10003a1c:	4621      	mov	r1, r4
10003a1e:	487e      	ldr	r0, [pc, #504]	@ (10003c18 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x314>)
10003a20:	f7ff fe4a 	bl	100036b8 <HAL_DBG_printf>
10003a24:	f1b9 0f0a 	cmp.w	r9, #10
10003a28:	d126      	bne.n	10003a78 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x174>
10003a2a:	4a7c      	ldr	r2, [pc, #496]	@ (10003c1c <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x318>)
10003a2c:	7813      	ldrb	r3, [r2, #0]
10003a2e:	3301      	adds	r3, #1
10003a30:	b2db      	uxtb	r3, r3
10003a32:	2b04      	cmp	r3, #4
10003a34:	7013      	strb	r3, [r2, #0]
10003a36:	d01b      	beq.n	10003a70 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x16c>
10003a38:	2300      	movs	r3, #0
10003a3a:	f1bb 0f07 	cmp.w	fp, #7
10003a3e:	d008      	beq.n	10003a52 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x14e>
10003a40:	465a      	mov	r2, fp
10003a42:	f3ca 2102 	ubfx	r1, sl, #8, #3
10003a46:	f00a 003f 	and.w	r0, sl, #63	@ 0x3f
10003a4a:	9303      	str	r3, [sp, #12]
10003a4c:	f002 f880 	bl	10005b50 <__HAL_RCC_LCPU_SetDiv_veneer>
10003a50:	9b03      	ldr	r3, [sp, #12]
10003a52:	f04f 0900 	mov.w	r9, #0
10003a56:	4a6e      	ldr	r2, [pc, #440]	@ (10003c10 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x30c>)
10003a58:	4f71      	ldr	r7, [pc, #452]	@ (10003c20 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x31c>)
10003a5a:	f882 9000 	strb.w	r9, [r2]
10003a5e:	2201      	movs	r2, #1
10003a60:	bb13      	cbnz	r3, 10003aa8 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x1a4>
10003a62:	f3ef 8110 	mrs	r1, PRIMASK
10003a66:	f382 8810 	msr	PRIMASK, r2
10003a6a:	783b      	ldrb	r3, [r7, #0]
10003a6c:	b953      	cbnz	r3, 10003a84 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x180>
10003a6e:	e7fe      	b.n	10003a6e <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x16a>
10003a70:	2300      	movs	r3, #0
10003a72:	f8c8 3000 	str.w	r3, [r8]
10003a76:	e7df      	b.n	10003a38 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x134>
10003a78:	4621      	mov	r1, r4
10003a7a:	2003      	movs	r0, #3
10003a7c:	f7ff fe20 	bl	100036c0 <HAL_Set_backup>
10003a80:	2301      	movs	r3, #1
10003a82:	e7da      	b.n	10003a3a <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x136>
10003a84:	3b01      	subs	r3, #1
10003a86:	b2db      	uxtb	r3, r3
10003a88:	703b      	strb	r3, [r7, #0]
10003a8a:	b923      	cbnz	r3, 10003a96 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x192>
10003a8c:	4a65      	ldr	r2, [pc, #404]	@ (10003c24 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x320>)
10003a8e:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
10003a90:	f023 0301 	bic.w	r3, r3, #1
10003a94:	62d3      	str	r3, [r2, #44]	@ 0x2c
10003a96:	f381 8810 	msr	PRIMASK, r1
10003a9a:	f7ff ff03 	bl	100038a4 <HAL_RC_unlocked>
10003a9e:	f06f 0001 	mvn.w	r0, #1
10003aa2:	b009      	add	sp, #36	@ 0x24
10003aa4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10003aa8:	23c8      	movs	r3, #200	@ 0xc8
10003aaa:	9200      	str	r2, [sp, #0]
10003aac:	4619      	mov	r1, r3
10003aae:	22fa      	movs	r2, #250	@ 0xfa
10003ab0:	485d      	ldr	r0, [pc, #372]	@ (10003c28 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x324>)
10003ab2:	f7ff fe01 	bl	100036b8 <HAL_DBG_printf>
10003ab6:	b115      	cbz	r5, 10003abe <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x1ba>
10003ab8:	2502      	movs	r5, #2
10003aba:	f8c8 9000 	str.w	r9, [r8]
10003abe:	f8d8 1000 	ldr.w	r1, [r8]
10003ac2:	9b02      	ldr	r3, [sp, #8]
10003ac4:	f8df a17c 	ldr.w	sl, [pc, #380]	@ 10003c44 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x340>
10003ac8:	4299      	cmp	r1, r3
10003aca:	bf3c      	itt	cc
10003acc:	3101      	addcc	r1, #1
10003ace:	f8c8 1000 	strcc.w	r1, [r8]
10003ad2:	2901      	cmp	r1, #1
10003ad4:	f8da 3000 	ldr.w	r3, [sl]
10003ad8:	f8df 916c 	ldr.w	r9, [pc, #364]	@ 10003c48 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x344>
10003adc:	d97d      	bls.n	10003bda <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x2d6>
10003ade:	2902      	cmp	r1, #2
10003ae0:	f8d9 2000 	ldr.w	r2, [r9]
10003ae4:	d156      	bne.n	10003b94 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x290>
10003ae6:	2601      	movs	r6, #1
10003ae8:	3201      	adds	r2, #1
10003aea:	4422      	add	r2, r4
10003aec:	0852      	lsrs	r2, r2, #1
10003aee:	f04f 0b00 	mov.w	fp, #0
10003af2:	f8c9 2000 	str.w	r2, [r9]
10003af6:	4621      	mov	r1, r4
10003af8:	484c      	ldr	r0, [pc, #304]	@ (10003c2c <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x328>)
10003afa:	e9cd 6b00 	strd	r6, fp, [sp]
10003afe:	f7ff fddb 	bl	100036b8 <HAL_DBG_printf>
10003b02:	f8d9 0000 	ldr.w	r0, [r9]
10003b06:	f8ca 4000 	str.w	r4, [sl]
10003b0a:	9006      	str	r0, [sp, #24]
10003b0c:	f7ff fef5 	bl	100038fa <HAL_RC_CAL_update_ave_cycle>
10003b10:	ed99 7a00 	vldr	s14, [r9]
10003b14:	eddf 6a46 	vldr	s13, [pc, #280]	@ 10003c30 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x32c>
10003b18:	eeb8 7a47 	vcvt.f32.u32	s14, s14
10003b1c:	eec6 7a87 	vdiv.f32	s15, s13, s14
10003b20:	ed9f 7a44 	vldr	s14, [pc, #272]	@ 10003c34 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x330>
10003b24:	2301      	movs	r3, #1
10003b26:	ee67 7a87 	vmul.f32	s15, s15, s14
10003b2a:	2007      	movs	r0, #7
10003b2c:	f10d 0216 	add.w	r2, sp, #22
10003b30:	f10d 0115 	add.w	r1, sp, #21
10003b34:	f8ad 3016 	strh.w	r3, [sp, #22]
10003b38:	edcd 7a07 	vstr	s15, [sp, #28]
10003b3c:	f88d b015 	strb.w	fp, [sp, #21]
10003b40:	f7ff fe38 	bl	100037b4 <HAL_LCPU_CONFIG_get>
10003b44:	f89d 3015 	ldrb.w	r3, [sp, #21]
10003b48:	b93b      	cbnz	r3, 10003b5a <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x256>
10003b4a:	483b      	ldr	r0, [pc, #236]	@ (10003c38 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x334>)
10003b4c:	f7ff fdb4 	bl	100036b8 <HAL_DBG_printf>
10003b50:	2204      	movs	r2, #4
10003b52:	2002      	movs	r0, #2
10003b54:	a906      	add	r1, sp, #24
10003b56:	f7ff fdfb 	bl	10003750 <HAL_LCPU_CONFIG_set>
10003b5a:	a907      	add	r1, sp, #28
10003b5c:	2204      	movs	r2, #4
10003b5e:	2001      	movs	r0, #1
10003b60:	f7ff fdf6 	bl	10003750 <HAL_LCPU_CONFIG_set>
10003b64:	2003      	movs	r0, #3
10003b66:	f7ff fdb1 	bl	100036cc <HAL_Get_backup>
10003b6a:	4604      	mov	r4, r0
10003b6c:	2004      	movs	r0, #4
10003b6e:	f7ff fdad 	bl	100036cc <HAL_Get_backup>
10003b72:	2300      	movs	r3, #0
10003b74:	9300      	str	r3, [sp, #0]
10003b76:	4602      	mov	r2, r0
10003b78:	4621      	mov	r1, r4
10003b7a:	f8d8 3000 	ldr.w	r3, [r8]
10003b7e:	482f      	ldr	r0, [pc, #188]	@ (10003c3c <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x338>)
10003b80:	f7ff fd9a 	bl	100036b8 <HAL_DBG_printf>
10003b84:	f3ef 8110 	mrs	r1, PRIMASK
10003b88:	2301      	movs	r3, #1
10003b8a:	f383 8810 	msr	PRIMASK, r3
10003b8e:	783b      	ldrb	r3, [r7, #0]
10003b90:	bb2b      	cbnz	r3, 10003bde <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x2da>
10003b92:	e7fe      	b.n	10003b92 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x28e>
10003b94:	42a2      	cmp	r2, r4
10003b96:	d210      	bcs.n	10003bba <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x2b6>
10003b98:	1aa1      	subs	r1, r4, r2
10003b9a:	29fa      	cmp	r1, #250	@ 0xfa
10003b9c:	d916      	bls.n	10003bcc <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x2c8>
10003b9e:	4293      	cmp	r3, r2
10003ba0:	d914      	bls.n	10003bcc <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x2c8>
10003ba2:	1a99      	subs	r1, r3, r2
10003ba4:	29fa      	cmp	r1, #250	@ 0xfa
10003ba6:	d911      	bls.n	10003bcc <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x2c8>
10003ba8:	210d      	movs	r1, #13
10003baa:	eb02 0242 	add.w	r2, r2, r2, lsl #1
10003bae:	3208      	adds	r2, #8
10003bb0:	fb01 2204 	mla	r2, r1, r4, r2
10003bb4:	2603      	movs	r6, #3
10003bb6:	0912      	lsrs	r2, r2, #4
10003bb8:	e799      	b.n	10003aee <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x1ea>
10003bba:	d907      	bls.n	10003bcc <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x2c8>
10003bbc:	1b11      	subs	r1, r2, r4
10003bbe:	29c8      	cmp	r1, #200	@ 0xc8
10003bc0:	d904      	bls.n	10003bcc <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x2c8>
10003bc2:	4293      	cmp	r3, r2
10003bc4:	d202      	bcs.n	10003bcc <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x2c8>
10003bc6:	1ad1      	subs	r1, r2, r3
10003bc8:	29c8      	cmp	r1, #200	@ 0xc8
10003bca:	e7ec      	b.n	10003ba6 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x2a2>
10003bcc:	ebc2 02c2 	rsb	r2, r2, r2, lsl #3
10003bd0:	3204      	adds	r2, #4
10003bd2:	4422      	add	r2, r4
10003bd4:	2602      	movs	r6, #2
10003bd6:	08d2      	lsrs	r2, r2, #3
10003bd8:	e789      	b.n	10003aee <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x1ea>
10003bda:	4622      	mov	r2, r4
10003bdc:	e787      	b.n	10003aee <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x1ea>
10003bde:	3b01      	subs	r3, #1
10003be0:	b2db      	uxtb	r3, r3
10003be2:	703b      	strb	r3, [r7, #0]
10003be4:	b923      	cbnz	r3, 10003bf0 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x2ec>
10003be6:	4a0f      	ldr	r2, [pc, #60]	@ (10003c24 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x320>)
10003be8:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
10003bea:	f023 0301 	bic.w	r3, r3, #1
10003bee:	62d3      	str	r3, [r2, #44]	@ 0x2c
10003bf0:	f381 8810 	msr	PRIMASK, r1
10003bf4:	f7ff fe56 	bl	100038a4 <HAL_RC_unlocked>
10003bf8:	4628      	mov	r0, r5
10003bfa:	e752      	b.n	10003aa2 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x19e>
10003bfc:	f04f 30ff 	mov.w	r0, #4294967295
10003c00:	e74f      	b.n	10003aa2 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x19e>
10003c02:	f06f 0002 	mvn.w	r0, #2
10003c06:	e74c      	b.n	10003aa2 <HAL_RC_CAL_update_reference_cycle_on_48M_ex+0x19e>
10003c08:	500cb000 	.word	0x500cb000
10003c0c:	40040000 	.word	0x40040000
10003c10:	20005a58 	.word	0x20005a58
10003c14:	40090000 	.word	0x40090000
10003c18:	10005a0e 	.word	0x10005a0e
10003c1c:	20005a50 	.word	0x20005a50
10003c20:	20005970 	.word	0x20005970
10003c24:	500c0000 	.word	0x500c0000
10003c28:	10005a30 	.word	0x10005a30
10003c2c:	10005a59 	.word	0x10005a59
10003c30:	4c371b00 	.word	0x4c371b00
10003c34:	43480000 	.word	0x43480000
10003c38:	10005a9d 	.word	0x10005a9d
10003c3c:	10005aa5 	.word	0x10005aa5
10003c40:	20005a54 	.word	0x20005a54
10003c44:	20005a48 	.word	0x20005a48
10003c48:	20005a4c 	.word	0x20005a4c

10003c4c <HAL_MAILBOX_GetMutex>:
10003c4c:	2801      	cmp	r0, #1
10003c4e:	d10b      	bne.n	10003c68 <HAL_MAILBOX_GetMutex+0x1c>
10003c50:	2903      	cmp	r1, #3
10003c52:	d80b      	bhi.n	10003c6c <HAL_MAILBOX_GetMutex+0x20>
10003c54:	4806      	ldr	r0, [pc, #24]	@ (10003c70 <HAL_MAILBOX_GetMutex+0x24>)
10003c56:	e003      	b.n	10003c60 <HAL_MAILBOX_GetMutex+0x14>
10003c58:	2802      	cmp	r0, #2
10003c5a:	d000      	beq.n	10003c5e <HAL_MAILBOX_GetMutex+0x12>
10003c5c:	e7fe      	b.n	10003c5c <HAL_MAILBOX_GetMutex+0x10>
10003c5e:	4805      	ldr	r0, [pc, #20]	@ (10003c74 <HAL_MAILBOX_GetMutex+0x28>)
10003c60:	2318      	movs	r3, #24
10003c62:	fb03 0001 	mla	r0, r3, r1, r0
10003c66:	4770      	bx	lr
10003c68:	2901      	cmp	r1, #1
10003c6a:	d9f5      	bls.n	10003c58 <HAL_MAILBOX_GetMutex+0xc>
10003c6c:	2000      	movs	r0, #0
10003c6e:	4770      	bx	lr
10003c70:	50082000 	.word	0x50082000
10003c74:	40002000 	.word	0x40002000

10003c78 <HAL_MAILBOX_Lock>:
10003c78:	b118      	cbz	r0, 10003c82 <HAL_MAILBOX_Lock+0xa>
10003c7a:	6801      	ldr	r1, [r0, #0]
10003c7c:	b949      	cbnz	r1, 10003c92 <HAL_MAILBOX_Lock+0x1a>
10003c7e:	2004      	movs	r0, #4
10003c80:	4770      	bx	lr
10003c82:	2903      	cmp	r1, #3
10003c84:	d8fb      	bhi.n	10003c7e <HAL_MAILBOX_Lock+0x6>
10003c86:	2318      	movs	r3, #24
10003c88:	4359      	muls	r1, r3
10003c8a:	f101 41a0 	add.w	r1, r1, #1342177280	@ 0x50000000
10003c8e:	f501 2102 	add.w	r1, r1, #532480	@ 0x82000
10003c92:	6948      	ldr	r0, [r1, #20]
10003c94:	2800      	cmp	r0, #0
10003c96:	db02      	blt.n	10003c9e <HAL_MAILBOX_Lock+0x26>
10003c98:	f000 000f 	and.w	r0, r0, #15
10003c9c:	4770      	bx	lr
10003c9e:	2000      	movs	r0, #0
10003ca0:	4770      	bx	lr

10003ca2 <HAL_MAILBOX_UnLock>:
10003ca2:	b110      	cbz	r0, 10003caa <HAL_MAILBOX_UnLock+0x8>
10003ca4:	6801      	ldr	r1, [r0, #0]
10003ca6:	b941      	cbnz	r1, 10003cba <HAL_MAILBOX_UnLock+0x18>
10003ca8:	4770      	bx	lr
10003caa:	2903      	cmp	r1, #3
10003cac:	d809      	bhi.n	10003cc2 <HAL_MAILBOX_UnLock+0x20>
10003cae:	2318      	movs	r3, #24
10003cb0:	4359      	muls	r1, r3
10003cb2:	f101 41a0 	add.w	r1, r1, #1342177280	@ 0x50000000
10003cb6:	f501 2102 	add.w	r1, r1, #532480	@ 0x82000
10003cba:	694b      	ldr	r3, [r1, #20]
10003cbc:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
10003cc0:	614b      	str	r3, [r1, #20]
10003cc2:	4770      	bx	lr

10003cc4 <HAL_PMU_RC10Kconfig>:
10003cc4:	b508      	push	{r3, lr}
10003cc6:	4a06      	ldr	r2, [pc, #24]	@ (10003ce0 <HAL_PMU_RC10Kconfig+0x1c>)
10003cc8:	2001      	movs	r0, #1
10003cca:	6993      	ldr	r3, [r2, #24]
10003ccc:	f423 73e7 	bic.w	r3, r3, #462	@ 0x1ce
10003cd0:	f443 73a7 	orr.w	r3, r3, #334	@ 0x14e
10003cd4:	6193      	str	r3, [r2, #24]
10003cd6:	f001 ff63 	bl	10005ba0 <__HAL_Delay_veneer>
10003cda:	2000      	movs	r0, #0
10003cdc:	bd08      	pop	{r3, pc}
10003cde:	bf00      	nop
10003ce0:	500ca000 	.word	0x500ca000

10003ce4 <HAL_PMU_EnableXTAL32>:
10003ce4:	2008      	movs	r0, #8
10003ce6:	4a0a      	ldr	r2, [pc, #40]	@ (10003d10 <HAL_PMU_EnableXTAL32+0x2c>)
10003ce8:	6a13      	ldr	r3, [r2, #32]
10003cea:	6a11      	ldr	r1, [r2, #32]
10003cec:	f423 4380 	bic.w	r3, r3, #16384	@ 0x4000
10003cf0:	f021 0103 	bic.w	r1, r1, #3
10003cf4:	6211      	str	r1, [r2, #32]
10003cf6:	f023 033c 	bic.w	r3, r3, #60	@ 0x3c
10003cfa:	4906      	ldr	r1, [pc, #24]	@ (10003d14 <HAL_PMU_EnableXTAL32+0x30>)
10003cfc:	f043 03cb 	orr.w	r3, r3, #203	@ 0xcb
10003d00:	f8c1 008c 	str.w	r0, [r1, #140]	@ 0x8c
10003d04:	f8c1 0090 	str.w	r0, [r1, #144]	@ 0x90
10003d08:	2000      	movs	r0, #0
10003d0a:	6213      	str	r3, [r2, #32]
10003d0c:	4770      	bx	lr
10003d0e:	bf00      	nop
10003d10:	500ca000 	.word	0x500ca000
10003d14:	50003000 	.word	0x50003000

10003d18 <HAL_PMU_EnableDLL>:
10003d18:	4b05      	ldr	r3, [pc, #20]	@ (10003d30 <HAL_PMU_EnableDLL+0x18>)
10003d1a:	6e9a      	ldr	r2, [r3, #104]	@ 0x68
10003d1c:	b120      	cbz	r0, 10003d28 <HAL_PMU_EnableDLL+0x10>
10003d1e:	f042 0220 	orr.w	r2, r2, #32
10003d22:	2000      	movs	r0, #0
10003d24:	669a      	str	r2, [r3, #104]	@ 0x68
10003d26:	4770      	bx	lr
10003d28:	f022 0220 	bic.w	r2, r2, #32
10003d2c:	e7f9      	b.n	10003d22 <HAL_PMU_EnableDLL+0xa>
10003d2e:	bf00      	nop
10003d30:	500ca000 	.word	0x500ca000

10003d34 <HAL_PMU_LXTReady>:
10003d34:	b538      	push	{r3, r4, r5, lr}
10003d36:	4c0b      	ldr	r4, [pc, #44]	@ (10003d64 <HAL_PMU_LXTReady+0x30>)
10003d38:	2000      	movs	r0, #0
10003d3a:	6a23      	ldr	r3, [r4, #32]
10003d3c:	2b00      	cmp	r3, #0
10003d3e:	db0f      	blt.n	10003d60 <HAL_PMU_LXTReady+0x2c>
10003d40:	f001 ff12 	bl	10005b68 <__HAL_Delay_us__veneer>
10003d44:	f44f 757a 	mov.w	r5, #1000	@ 0x3e8
10003d48:	6a23      	ldr	r3, [r4, #32]
10003d4a:	2b00      	cmp	r3, #0
10003d4c:	db05      	blt.n	10003d5a <HAL_PMU_LXTReady+0x26>
10003d4e:	f44f 707a 	mov.w	r0, #1000	@ 0x3e8
10003d52:	f001 ff09 	bl	10005b68 <__HAL_Delay_us__veneer>
10003d56:	3d01      	subs	r5, #1
10003d58:	d1f6      	bne.n	10003d48 <HAL_PMU_LXTReady+0x14>
10003d5a:	6a20      	ldr	r0, [r4, #32]
10003d5c:	43c0      	mvns	r0, r0
10003d5e:	0fc0      	lsrs	r0, r0, #31
10003d60:	bd38      	pop	{r3, r4, r5, pc}
10003d62:	bf00      	nop
10003d64:	500ca000 	.word	0x500ca000

10003d68 <HAL_PMU_EnableRC32K>:
10003d68:	4b05      	ldr	r3, [pc, #20]	@ (10003d80 <HAL_PMU_EnableRC32K+0x18>)
10003d6a:	69da      	ldr	r2, [r3, #28]
10003d6c:	b120      	cbz	r0, 10003d78 <HAL_PMU_EnableRC32K+0x10>
10003d6e:	f042 0201 	orr.w	r2, r2, #1
10003d72:	2000      	movs	r0, #0
10003d74:	61da      	str	r2, [r3, #28]
10003d76:	4770      	bx	lr
10003d78:	f022 0201 	bic.w	r2, r2, #1
10003d7c:	e7f9      	b.n	10003d72 <HAL_PMU_EnableRC32K+0xa>
10003d7e:	bf00      	nop
10003d80:	500ca000 	.word	0x500ca000

10003d84 <HAL_PMU_RC32KReady>:
10003d84:	b538      	push	{r3, r4, r5, lr}
10003d86:	4c0b      	ldr	r4, [pc, #44]	@ (10003db4 <HAL_PMU_RC32KReady+0x30>)
10003d88:	69e3      	ldr	r3, [r4, #28]
10003d8a:	2b00      	cmp	r3, #0
10003d8c:	db0f      	blt.n	10003dae <HAL_PMU_RC32KReady+0x2a>
10003d8e:	4b0a      	ldr	r3, [pc, #40]	@ (10003db8 <HAL_PMU_RC32KReady+0x34>)
10003d90:	6b5d      	ldr	r5, [r3, #52]	@ 0x34
10003d92:	69e3      	ldr	r3, [r4, #28]
10003d94:	2b00      	cmp	r3, #0
10003d96:	db06      	blt.n	10003da6 <HAL_PMU_RC32KReady+0x22>
10003d98:	f242 7110 	movw	r1, #10000	@ 0x2710
10003d9c:	4628      	mov	r0, r5
10003d9e:	f001 fef3 	bl	10005b88 <__HAL_GTIMER_Check_veneer>
10003da2:	2800      	cmp	r0, #0
10003da4:	d0f5      	beq.n	10003d92 <HAL_PMU_RC32KReady+0xe>
10003da6:	69e0      	ldr	r0, [r4, #28]
10003da8:	43c0      	mvns	r0, r0
10003daa:	0fc0      	lsrs	r0, r0, #31
10003dac:	bd38      	pop	{r3, r4, r5, pc}
10003dae:	2000      	movs	r0, #0
10003db0:	e7fc      	b.n	10003dac <HAL_PMU_RC32KReady+0x28>
10003db2:	bf00      	nop
10003db4:	500ca000 	.word	0x500ca000
10003db8:	500c0000 	.word	0x500c0000

10003dbc <HAL_PMU_LpCLockSelect>:
10003dbc:	b508      	push	{r3, lr}
10003dbe:	b930      	cbnz	r0, 10003dce <HAL_PMU_LpCLockSelect+0x12>
10003dc0:	4a09      	ldr	r2, [pc, #36]	@ (10003de8 <HAL_PMU_LpCLockSelect+0x2c>)
10003dc2:	6813      	ldr	r3, [r2, #0]
10003dc4:	f023 0301 	bic.w	r3, r3, #1
10003dc8:	6013      	str	r3, [r2, #0]
10003dca:	2000      	movs	r0, #0
10003dcc:	bd08      	pop	{r3, pc}
10003dce:	2802      	cmp	r0, #2
10003dd0:	d104      	bne.n	10003ddc <HAL_PMU_LpCLockSelect+0x20>
10003dd2:	f7ff ffd7 	bl	10003d84 <HAL_PMU_RC32KReady>
10003dd6:	2801      	cmp	r0, #1
10003dd8:	d100      	bne.n	10003ddc <HAL_PMU_LpCLockSelect+0x20>
10003dda:	e7fe      	b.n	10003dda <HAL_PMU_LpCLockSelect+0x1e>
10003ddc:	4a02      	ldr	r2, [pc, #8]	@ (10003de8 <HAL_PMU_LpCLockSelect+0x2c>)
10003dde:	6813      	ldr	r3, [r2, #0]
10003de0:	f043 0301 	orr.w	r3, r3, #1
10003de4:	e7f0      	b.n	10003dc8 <HAL_PMU_LpCLockSelect+0xc>
10003de6:	bf00      	nop
10003de8:	500ca000 	.word	0x500ca000

10003dec <HAL_PMU_SetWdt>:
10003dec:	4b08      	ldr	r3, [pc, #32]	@ (10003e10 <HAL_PMU_SetWdt+0x24>)
10003dee:	4298      	cmp	r0, r3
10003df0:	d105      	bne.n	10003dfe <HAL_PMU_SetWdt+0x12>
10003df2:	4a08      	ldr	r2, [pc, #32]	@ (10003e14 <HAL_PMU_SetWdt+0x28>)
10003df4:	6853      	ldr	r3, [r2, #4]
10003df6:	f043 0302 	orr.w	r3, r3, #2
10003dfa:	6053      	str	r3, [r2, #4]
10003dfc:	4770      	bx	lr
10003dfe:	4b06      	ldr	r3, [pc, #24]	@ (10003e18 <HAL_PMU_SetWdt+0x2c>)
10003e00:	4298      	cmp	r0, r3
10003e02:	d1fb      	bne.n	10003dfc <HAL_PMU_SetWdt+0x10>
10003e04:	4a03      	ldr	r2, [pc, #12]	@ (10003e14 <HAL_PMU_SetWdt+0x28>)
10003e06:	6853      	ldr	r3, [r2, #4]
10003e08:	f043 0304 	orr.w	r3, r3, #4
10003e0c:	e7f5      	b.n	10003dfa <HAL_PMU_SetWdt+0xe>
10003e0e:	bf00      	nop
10003e10:	50094000 	.word	0x50094000
10003e14:	500ca000 	.word	0x500ca000
10003e18:	4000b000 	.word	0x4000b000

10003e1c <HAL_PMU_Init>:
10003e1c:	4b21      	ldr	r3, [pc, #132]	@ (10003ea4 <HAL_PMU_Init+0x88>)
10003e1e:	695a      	ldr	r2, [r3, #20]
10003e20:	f022 023c 	bic.w	r2, r2, #60	@ 0x3c
10003e24:	f042 0204 	orr.w	r2, r2, #4
10003e28:	615a      	str	r2, [r3, #20]
10003e2a:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
10003e2c:	f042 020f 	orr.w	r2, r2, #15
10003e30:	631a      	str	r2, [r3, #48]	@ 0x30
10003e32:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
10003e34:	f36f 120f 	bfc	r2, #4, #12
10003e38:	f442 42ee 	orr.w	r2, r2, #30464	@ 0x7700
10003e3c:	f042 0270 	orr.w	r2, r2, #112	@ 0x70
10003e40:	631a      	str	r2, [r3, #48]	@ 0x30
10003e42:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
10003e44:	f022 6270 	bic.w	r2, r2, #251658240	@ 0xf000000
10003e48:	f042 62c0 	orr.w	r2, r2, #100663296	@ 0x6000000
10003e4c:	631a      	str	r2, [r3, #48]	@ 0x30
10003e4e:	6a9a      	ldr	r2, [r3, #40]	@ 0x28
10003e50:	f022 027f 	bic.w	r2, r2, #127	@ 0x7f
10003e54:	f042 0206 	orr.w	r2, r2, #6
10003e58:	629a      	str	r2, [r3, #40]	@ 0x28
10003e5a:	685a      	ldr	r2, [r3, #4]
10003e5c:	f042 0280 	orr.w	r2, r2, #128	@ 0x80
10003e60:	605a      	str	r2, [r3, #4]
10003e62:	6cda      	ldr	r2, [r3, #76]	@ 0x4c
10003e64:	f422 427c 	bic.w	r2, r2, #64512	@ 0xfc00
10003e68:	f442 6280 	orr.w	r2, r2, #1024	@ 0x400
10003e6c:	64da      	str	r2, [r3, #76]	@ 0x4c
10003e6e:	6d1a      	ldr	r2, [r3, #80]	@ 0x50
10003e70:	f422 427c 	bic.w	r2, r2, #64512	@ 0xfc00
10003e74:	f442 6280 	orr.w	r2, r2, #1024	@ 0x400
10003e78:	651a      	str	r2, [r3, #80]	@ 0x50
10003e7a:	6d5a      	ldr	r2, [r3, #84]	@ 0x54
10003e7c:	f022 0270 	bic.w	r2, r2, #112	@ 0x70
10003e80:	f042 0230 	orr.w	r2, r2, #48	@ 0x30
10003e84:	655a      	str	r2, [r3, #84]	@ 0x54
10003e86:	6d9a      	ldr	r2, [r3, #88]	@ 0x58
10003e88:	f022 0270 	bic.w	r2, r2, #112	@ 0x70
10003e8c:	f042 0230 	orr.w	r2, r2, #48	@ 0x30
10003e90:	659a      	str	r2, [r3, #88]	@ 0x58
10003e92:	6f1a      	ldr	r2, [r3, #112]	@ 0x70
10003e94:	f442 727c 	orr.w	r2, r2, #1008	@ 0x3f0
10003e98:	671a      	str	r2, [r3, #112]	@ 0x70
10003e9a:	f04f 1201 	mov.w	r2, #65537	@ 0x10001
10003e9e:	f8c3 208c 	str.w	r2, [r3, #140]	@ 0x8c
10003ea2:	4770      	bx	lr
10003ea4:	500ca000 	.word	0x500ca000

10003ea8 <HAL_PMU_LoadCalData>:
10003ea8:	b538      	push	{r3, r4, r5, lr}
10003eaa:	4c30      	ldr	r4, [pc, #192]	@ (10003f6c <HAL_PMU_LoadCalData+0xc4>)
10003eac:	220e      	movs	r2, #14
10003eae:	4621      	mov	r1, r4
10003eb0:	2006      	movs	r0, #6
10003eb2:	f000 fa67 	bl	10004384 <BSP_CONFIG_get>
10003eb6:	2800      	cmp	r0, #0
10003eb8:	dd53      	ble.n	10003f62 <HAL_PMU_LoadCalData+0xba>
10003eba:	2301      	movs	r3, #1
10003ebc:	4a2c      	ldr	r2, [pc, #176]	@ (10003f70 <HAL_PMU_LoadCalData+0xc8>)
10003ebe:	f804 3c01 	strb.w	r3, [r4, #-1]
10003ec2:	7820      	ldrb	r0, [r4, #0]
10003ec4:	7863      	ldrb	r3, [r4, #1]
10003ec6:	6ad5      	ldr	r5, [r2, #44]	@ 0x2c
10003ec8:	079b      	lsls	r3, r3, #30
10003eca:	0640      	lsls	r0, r0, #25
10003ecc:	f000 6060 	and.w	r0, r0, #234881024	@ 0xe000000
10003ed0:	f003 4380 	and.w	r3, r3, #1073741824	@ 0x40000000
10003ed4:	4303      	orrs	r3, r0
10003ed6:	f025 409c 	bic.w	r0, r5, #1308622848	@ 0x4e000000
10003eda:	4303      	orrs	r3, r0
10003edc:	62d3      	str	r3, [r2, #44]	@ 0x2c
10003ede:	f8d2 3098 	ldr.w	r3, [r2, #152]	@ 0x98
10003ee2:	78e0      	ldrb	r0, [r4, #3]
10003ee4:	4d23      	ldr	r5, [pc, #140]	@ (10003f74 <HAL_PMU_LoadCalData+0xcc>)
10003ee6:	f360 0303 	bfi	r3, r0, #0, #4
10003eea:	f8c2 3098 	str.w	r3, [r2, #152]	@ 0x98
10003eee:	6953      	ldr	r3, [r2, #20]
10003ef0:	7920      	ldrb	r0, [r4, #4]
10003ef2:	1e61      	subs	r1, r4, #1
10003ef4:	f360 238d 	bfi	r3, r0, #10, #4
10003ef8:	6153      	str	r3, [r2, #20]
10003efa:	686b      	ldr	r3, [r5, #4]
10003efc:	7960      	ldrb	r0, [r4, #5]
10003efe:	b2db      	uxtb	r3, r3
10003f00:	0040      	lsls	r0, r0, #1
10003f02:	2b07      	cmp	r3, #7
10003f04:	f000 001e 	and.w	r0, r0, #30
10003f08:	d02c      	beq.n	10003f64 <HAL_PMU_LoadCalData+0xbc>
10003f0a:	686b      	ldr	r3, [r5, #4]
10003f0c:	b2db      	uxtb	r3, r3
10003f0e:	2b0f      	cmp	r3, #15
10003f10:	d028      	beq.n	10003f64 <HAL_PMU_LoadCalData+0xbc>
10003f12:	79cb      	ldrb	r3, [r1, #7]
10003f14:	6dd4      	ldr	r4, [r2, #92]	@ 0x5c
10003f16:	025b      	lsls	r3, r3, #9
10003f18:	f403 53f0 	and.w	r3, r3, #7680	@ 0x1e00
10003f1c:	4303      	orrs	r3, r0
10003f1e:	f024 101e 	bic.w	r0, r4, #1966110	@ 0x1e001e
10003f22:	f420 50f0 	bic.w	r0, r0, #7680	@ 0x1e00
10003f26:	4303      	orrs	r3, r0
10003f28:	7a08      	ldrb	r0, [r1, #8]
10003f2a:	0440      	lsls	r0, r0, #17
10003f2c:	f400 10f0 	and.w	r0, r0, #1966080	@ 0x1e0000
10003f30:	4303      	orrs	r3, r0
10003f32:	65d3      	str	r3, [r2, #92]	@ 0x5c
10003f34:	4a0f      	ldr	r2, [pc, #60]	@ (10003f74 <HAL_PMU_LoadCalData+0xcc>)
10003f36:	6853      	ldr	r3, [r2, #4]
10003f38:	b2db      	uxtb	r3, r3
10003f3a:	2b07      	cmp	r3, #7
10003f3c:	d011      	beq.n	10003f62 <HAL_PMU_LoadCalData+0xba>
10003f3e:	6853      	ldr	r3, [r2, #4]
10003f40:	b2db      	uxtb	r3, r3
10003f42:	2b0f      	cmp	r3, #15
10003f44:	d00d      	beq.n	10003f62 <HAL_PMU_LoadCalData+0xba>
10003f46:	480a      	ldr	r0, [pc, #40]	@ (10003f70 <HAL_PMU_LoadCalData+0xc8>)
10003f48:	7a4b      	ldrb	r3, [r1, #9]
10003f4a:	6a42      	ldr	r2, [r0, #36]	@ 0x24
10003f4c:	f003 0307 	and.w	r3, r3, #7
10003f50:	f022 0227 	bic.w	r2, r2, #39	@ 0x27
10003f54:	4313      	orrs	r3, r2
10003f56:	7a8a      	ldrb	r2, [r1, #10]
10003f58:	0152      	lsls	r2, r2, #5
10003f5a:	f002 0220 	and.w	r2, r2, #32
10003f5e:	4313      	orrs	r3, r2
10003f60:	6243      	str	r3, [r0, #36]	@ 0x24
10003f62:	bd38      	pop	{r3, r4, r5, pc}
10003f64:	6dd3      	ldr	r3, [r2, #92]	@ 0x5c
10003f66:	f023 031e 	bic.w	r3, r3, #30
10003f6a:	e7e1      	b.n	10003f30 <HAL_PMU_LoadCalData+0x88>
10003f6c:	20005972 	.word	0x20005972
10003f70:	500ca000 	.word	0x500ca000
10003f74:	5000b000 	.word	0x5000b000

10003f78 <HAL_UART_MspInit>:
10003f78:	4770      	bx	lr
	...

10003f7c <UART_SetConfig>:
10003f7c:	b5f0      	push	{r4, r5, r6, r7, lr}
10003f7e:	4a27      	ldr	r2, [pc, #156]	@ (1000401c <UART_SetConfig+0xa0>)
10003f80:	6841      	ldr	r1, [r0, #4]
10003f82:	4603      	mov	r3, r0
10003f84:	4291      	cmp	r1, r2
10003f86:	d900      	bls.n	10003f8a <UART_SetConfig+0xe>
10003f88:	e7fe      	b.n	10003f88 <UART_SetConfig+0xc>
10003f8a:	6882      	ldr	r2, [r0, #8]
10003f8c:	f032 51c0 	bics.w	r1, r2, #402653184	@ 0x18000000
10003f90:	d000      	beq.n	10003f94 <UART_SetConfig+0x18>
10003f92:	e7fe      	b.n	10003f92 <UART_SetConfig+0x16>
10003f94:	68c1      	ldr	r1, [r0, #12]
10003f96:	f431 5140 	bics.w	r1, r1, #12288	@ 0x3000
10003f9a:	d000      	beq.n	10003f9e <UART_SetConfig+0x22>
10003f9c:	e7fe      	b.n	10003f9c <UART_SetConfig+0x20>
10003f9e:	6a01      	ldr	r1, [r0, #32]
10003fa0:	f431 6100 	bics.w	r1, r1, #2048	@ 0x800
10003fa4:	d000      	beq.n	10003fa8 <UART_SetConfig+0x2c>
10003fa6:	e7fe      	b.n	10003fa6 <UART_SetConfig+0x2a>
10003fa8:	6905      	ldr	r5, [r0, #16]
10003faa:	f435 6180 	bics.w	r1, r5, #1024	@ 0x400
10003fae:	d003      	beq.n	10003fb8 <UART_SetConfig+0x3c>
10003fb0:	f5b5 6fc0 	cmp.w	r5, #1536	@ 0x600
10003fb4:	d000      	beq.n	10003fb8 <UART_SetConfig+0x3c>
10003fb6:	e7fe      	b.n	10003fb6 <UART_SetConfig+0x3a>
10003fb8:	695c      	ldr	r4, [r3, #20]
10003fba:	f034 010c 	bics.w	r1, r4, #12
10003fbe:	d100      	bne.n	10003fc2 <UART_SetConfig+0x46>
10003fc0:	b904      	cbnz	r4, 10003fc4 <UART_SetConfig+0x48>
10003fc2:	e7fe      	b.n	10003fc2 <UART_SetConfig+0x46>
10003fc4:	6999      	ldr	r1, [r3, #24]
10003fc6:	f431 7140 	bics.w	r1, r1, #768	@ 0x300
10003fca:	d000      	beq.n	10003fce <UART_SetConfig+0x52>
10003fcc:	e7fe      	b.n	10003fcc <UART_SetConfig+0x50>
10003fce:	69d9      	ldr	r1, [r3, #28]
10003fd0:	f431 4080 	bics.w	r0, r1, #16384	@ 0x4000
10003fd4:	d000      	beq.n	10003fd8 <UART_SetConfig+0x5c>
10003fd6:	e7fe      	b.n	10003fd6 <UART_SetConfig+0x5a>
10003fd8:	681e      	ldr	r6, [r3, #0]
10003fda:	432a      	orrs	r2, r5
10003fdc:	4322      	orrs	r2, r4
10003fde:	6837      	ldr	r7, [r6, #0]
10003fe0:	430a      	orrs	r2, r1
10003fe2:	490f      	ldr	r1, [pc, #60]	@ (10004020 <UART_SetConfig+0xa4>)
10003fe4:	4039      	ands	r1, r7
10003fe6:	430a      	orrs	r2, r1
10003fe8:	6032      	str	r2, [r6, #0]
10003fea:	6819      	ldr	r1, [r3, #0]
10003fec:	68dc      	ldr	r4, [r3, #12]
10003fee:	684a      	ldr	r2, [r1, #4]
10003ff0:	f422 5240 	bic.w	r2, r2, #12288	@ 0x3000
10003ff4:	4322      	orrs	r2, r4
10003ff6:	604a      	str	r2, [r1, #4]
10003ff8:	681c      	ldr	r4, [r3, #0]
10003ffa:	699a      	ldr	r2, [r3, #24]
10003ffc:	68a1      	ldr	r1, [r4, #8]
10003ffe:	6a1d      	ldr	r5, [r3, #32]
10004000:	f421 6130 	bic.w	r1, r1, #2816	@ 0xb00
10004004:	432a      	orrs	r2, r5
10004006:	430a      	orrs	r2, r1
10004008:	60a2      	str	r2, [r4, #8]
1000400a:	6819      	ldr	r1, [r3, #0]
1000400c:	6aca      	ldr	r2, [r1, #44]	@ 0x2c
1000400e:	f022 02f0 	bic.w	r2, r2, #240	@ 0xf0
10004012:	62ca      	str	r2, [r1, #44]	@ 0x2c
10004014:	e9c3 0018 	strd	r0, r0, [r3, #96]	@ 0x60
10004018:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000401a:	bf00      	nop
1000401c:	00989680 	.word	0x00989680
10004020:	e7ffb9f3 	.word	0xe7ffb9f3

10004024 <UART_AdvFeatureConfig>:
10004024:	6a43      	ldr	r3, [r0, #36]	@ 0x24
10004026:	2bff      	cmp	r3, #255	@ 0xff
10004028:	d900      	bls.n	1000402c <UART_AdvFeatureConfig+0x8>
1000402a:	e7fe      	b.n	1000402a <UART_AdvFeatureConfig+0x6>
1000402c:	07da      	lsls	r2, r3, #31
1000402e:	d50a      	bpl.n	10004046 <UART_AdvFeatureConfig+0x22>
10004030:	6a81      	ldr	r1, [r0, #40]	@ 0x28
10004032:	f431 3300 	bics.w	r3, r1, #131072	@ 0x20000
10004036:	d000      	beq.n	1000403a <UART_AdvFeatureConfig+0x16>
10004038:	e7fe      	b.n	10004038 <UART_AdvFeatureConfig+0x14>
1000403a:	6802      	ldr	r2, [r0, #0]
1000403c:	6853      	ldr	r3, [r2, #4]
1000403e:	f423 3300 	bic.w	r3, r3, #131072	@ 0x20000
10004042:	430b      	orrs	r3, r1
10004044:	6053      	str	r3, [r2, #4]
10004046:	6a43      	ldr	r3, [r0, #36]	@ 0x24
10004048:	079b      	lsls	r3, r3, #30
1000404a:	d50a      	bpl.n	10004062 <UART_AdvFeatureConfig+0x3e>
1000404c:	6ac1      	ldr	r1, [r0, #44]	@ 0x2c
1000404e:	f431 3380 	bics.w	r3, r1, #65536	@ 0x10000
10004052:	d000      	beq.n	10004056 <UART_AdvFeatureConfig+0x32>
10004054:	e7fe      	b.n	10004054 <UART_AdvFeatureConfig+0x30>
10004056:	6802      	ldr	r2, [r0, #0]
10004058:	6853      	ldr	r3, [r2, #4]
1000405a:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
1000405e:	430b      	orrs	r3, r1
10004060:	6053      	str	r3, [r2, #4]
10004062:	6a43      	ldr	r3, [r0, #36]	@ 0x24
10004064:	0759      	lsls	r1, r3, #29
10004066:	d50a      	bpl.n	1000407e <UART_AdvFeatureConfig+0x5a>
10004068:	6b01      	ldr	r1, [r0, #48]	@ 0x30
1000406a:	f431 2380 	bics.w	r3, r1, #262144	@ 0x40000
1000406e:	d000      	beq.n	10004072 <UART_AdvFeatureConfig+0x4e>
10004070:	e7fe      	b.n	10004070 <UART_AdvFeatureConfig+0x4c>
10004072:	6802      	ldr	r2, [r0, #0]
10004074:	6853      	ldr	r3, [r2, #4]
10004076:	f423 2380 	bic.w	r3, r3, #262144	@ 0x40000
1000407a:	430b      	orrs	r3, r1
1000407c:	6053      	str	r3, [r2, #4]
1000407e:	6a43      	ldr	r3, [r0, #36]	@ 0x24
10004080:	071a      	lsls	r2, r3, #28
10004082:	d50a      	bpl.n	1000409a <UART_AdvFeatureConfig+0x76>
10004084:	6b41      	ldr	r1, [r0, #52]	@ 0x34
10004086:	f431 4300 	bics.w	r3, r1, #32768	@ 0x8000
1000408a:	d000      	beq.n	1000408e <UART_AdvFeatureConfig+0x6a>
1000408c:	e7fe      	b.n	1000408c <UART_AdvFeatureConfig+0x68>
1000408e:	6802      	ldr	r2, [r0, #0]
10004090:	6853      	ldr	r3, [r2, #4]
10004092:	f423 4300 	bic.w	r3, r3, #32768	@ 0x8000
10004096:	430b      	orrs	r3, r1
10004098:	6053      	str	r3, [r2, #4]
1000409a:	6a43      	ldr	r3, [r0, #36]	@ 0x24
1000409c:	06db      	lsls	r3, r3, #27
1000409e:	d50a      	bpl.n	100040b6 <UART_AdvFeatureConfig+0x92>
100040a0:	6b81      	ldr	r1, [r0, #56]	@ 0x38
100040a2:	f431 5380 	bics.w	r3, r1, #4096	@ 0x1000
100040a6:	d000      	beq.n	100040aa <UART_AdvFeatureConfig+0x86>
100040a8:	e7fe      	b.n	100040a8 <UART_AdvFeatureConfig+0x84>
100040aa:	6802      	ldr	r2, [r0, #0]
100040ac:	6893      	ldr	r3, [r2, #8]
100040ae:	f423 5380 	bic.w	r3, r3, #4096	@ 0x1000
100040b2:	430b      	orrs	r3, r1
100040b4:	6093      	str	r3, [r2, #8]
100040b6:	6a43      	ldr	r3, [r0, #36]	@ 0x24
100040b8:	0699      	lsls	r1, r3, #26
100040ba:	d50a      	bpl.n	100040d2 <UART_AdvFeatureConfig+0xae>
100040bc:	6bc1      	ldr	r1, [r0, #60]	@ 0x3c
100040be:	f431 5300 	bics.w	r3, r1, #8192	@ 0x2000
100040c2:	d000      	beq.n	100040c6 <UART_AdvFeatureConfig+0xa2>
100040c4:	e7fe      	b.n	100040c4 <UART_AdvFeatureConfig+0xa0>
100040c6:	6802      	ldr	r2, [r0, #0]
100040c8:	6893      	ldr	r3, [r2, #8]
100040ca:	f423 5300 	bic.w	r3, r3, #8192	@ 0x2000
100040ce:	430b      	orrs	r3, r1
100040d0:	6093      	str	r3, [r2, #8]
100040d2:	6a43      	ldr	r3, [r0, #36]	@ 0x24
100040d4:	065a      	lsls	r2, r3, #25
100040d6:	d515      	bpl.n	10004104 <UART_AdvFeatureConfig+0xe0>
100040d8:	6c01      	ldr	r1, [r0, #64]	@ 0x40
100040da:	f431 1380 	bics.w	r3, r1, #1048576	@ 0x100000
100040de:	d000      	beq.n	100040e2 <UART_AdvFeatureConfig+0xbe>
100040e0:	e7fe      	b.n	100040e0 <UART_AdvFeatureConfig+0xbc>
100040e2:	6802      	ldr	r2, [r0, #0]
100040e4:	6853      	ldr	r3, [r2, #4]
100040e6:	f423 1380 	bic.w	r3, r3, #1048576	@ 0x100000
100040ea:	430b      	orrs	r3, r1
100040ec:	6053      	str	r3, [r2, #4]
100040ee:	6c03      	ldr	r3, [r0, #64]	@ 0x40
100040f0:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
100040f4:	d106      	bne.n	10004104 <UART_AdvFeatureConfig+0xe0>
100040f6:	6802      	ldr	r2, [r0, #0]
100040f8:	6c41      	ldr	r1, [r0, #68]	@ 0x44
100040fa:	6853      	ldr	r3, [r2, #4]
100040fc:	f423 03c0 	bic.w	r3, r3, #6291456	@ 0x600000
10004100:	430b      	orrs	r3, r1
10004102:	6053      	str	r3, [r2, #4]
10004104:	6a43      	ldr	r3, [r0, #36]	@ 0x24
10004106:	061b      	lsls	r3, r3, #24
10004108:	d50a      	bpl.n	10004120 <UART_AdvFeatureConfig+0xfc>
1000410a:	6c81      	ldr	r1, [r0, #72]	@ 0x48
1000410c:	f431 2300 	bics.w	r3, r1, #524288	@ 0x80000
10004110:	d000      	beq.n	10004114 <UART_AdvFeatureConfig+0xf0>
10004112:	e7fe      	b.n	10004112 <UART_AdvFeatureConfig+0xee>
10004114:	6802      	ldr	r2, [r0, #0]
10004116:	6853      	ldr	r3, [r2, #4]
10004118:	f423 2300 	bic.w	r3, r3, #524288	@ 0x80000
1000411c:	430b      	orrs	r3, r1
1000411e:	6053      	str	r3, [r2, #4]
10004120:	4770      	bx	lr
	...

10004124 <HAL_UART_Init>:
10004124:	b510      	push	{r4, lr}
10004126:	4604      	mov	r4, r0
10004128:	2800      	cmp	r0, #0
1000412a:	d070      	beq.n	1000420e <HAL_UART_Init+0xea>
1000412c:	6802      	ldr	r2, [r0, #0]
1000412e:	4b39      	ldr	r3, [pc, #228]	@ (10004214 <HAL_UART_Init+0xf0>)
10004130:	429a      	cmp	r2, r3
10004132:	d102      	bne.n	1000413a <HAL_UART_Init+0x16>
10004134:	2008      	movs	r0, #8
10004136:	f001 fd23 	bl	10005b80 <__HAL_RCC_EnableModule_veneer>
1000413a:	6822      	ldr	r2, [r4, #0]
1000413c:	4b36      	ldr	r3, [pc, #216]	@ (10004218 <HAL_UART_Init+0xf4>)
1000413e:	429a      	cmp	r2, r3
10004140:	d102      	bne.n	10004148 <HAL_UART_Init+0x24>
10004142:	2009      	movs	r0, #9
10004144:	f001 fd1c 	bl	10005b80 <__HAL_RCC_EnableModule_veneer>
10004148:	6822      	ldr	r2, [r4, #0]
1000414a:	4b34      	ldr	r3, [pc, #208]	@ (1000421c <HAL_UART_Init+0xf8>)
1000414c:	429a      	cmp	r2, r3
1000414e:	d102      	bne.n	10004156 <HAL_UART_Init+0x32>
10004150:	200a      	movs	r0, #10
10004152:	f001 fd15 	bl	10005b80 <__HAL_RCC_EnableModule_veneer>
10004156:	6822      	ldr	r2, [r4, #0]
10004158:	4b31      	ldr	r3, [pc, #196]	@ (10004220 <HAL_UART_Init+0xfc>)
1000415a:	429a      	cmp	r2, r3
1000415c:	d102      	bne.n	10004164 <HAL_UART_Init+0x40>
1000415e:	200b      	movs	r0, #11
10004160:	f001 fd0e 	bl	10005b80 <__HAL_RCC_EnableModule_veneer>
10004164:	f894 3071 	ldrb.w	r3, [r4, #113]	@ 0x71
10004168:	f003 02ff 	and.w	r2, r3, #255	@ 0xff
1000416c:	b923      	cbnz	r3, 10004178 <HAL_UART_Init+0x54>
1000416e:	4620      	mov	r0, r4
10004170:	f884 2070 	strb.w	r2, [r4, #112]	@ 0x70
10004174:	f7ff ff00 	bl	10003f78 <HAL_UART_MspInit>
10004178:	2324      	movs	r3, #36	@ 0x24
1000417a:	6822      	ldr	r2, [r4, #0]
1000417c:	f884 3071 	strb.w	r3, [r4, #113]	@ 0x71
10004180:	6813      	ldr	r3, [r2, #0]
10004182:	4620      	mov	r0, r4
10004184:	f023 0301 	bic.w	r3, r3, #1
10004188:	6013      	str	r3, [r2, #0]
1000418a:	f7ff fef7 	bl	10003f7c <UART_SetConfig>
1000418e:	6a63      	ldr	r3, [r4, #36]	@ 0x24
10004190:	b113      	cbz	r3, 10004198 <HAL_UART_Init+0x74>
10004192:	4620      	mov	r0, r4
10004194:	f7ff ff46 	bl	10004024 <UART_AdvFeatureConfig>
10004198:	6822      	ldr	r2, [r4, #0]
1000419a:	6853      	ldr	r3, [r2, #4]
1000419c:	f423 4390 	bic.w	r3, r3, #18432	@ 0x4800
100041a0:	6053      	str	r3, [r2, #4]
100041a2:	6822      	ldr	r2, [r4, #0]
100041a4:	6893      	ldr	r3, [r2, #8]
100041a6:	f023 032a 	bic.w	r3, r3, #42	@ 0x2a
100041aa:	6093      	str	r3, [r2, #8]
100041ac:	6822      	ldr	r2, [r4, #0]
100041ae:	6813      	ldr	r3, [r2, #0]
100041b0:	f043 0301 	orr.w	r3, r3, #1
100041b4:	6013      	str	r3, [r2, #0]
100041b6:	6861      	ldr	r1, [r4, #4]
100041b8:	4b1a      	ldr	r3, [pc, #104]	@ (10004224 <HAL_UART_Init+0x100>)
100041ba:	6822      	ldr	r2, [r4, #0]
100041bc:	fbb3 f3f1 	udiv	r3, r3, r1
100041c0:	2b0f      	cmp	r3, #15
100041c2:	d819      	bhi.n	100041f8 <HAL_UART_Init+0xd4>
100041c4:	4b18      	ldr	r3, [pc, #96]	@ (10004228 <HAL_UART_Init+0x104>)
100041c6:	fbb3 f3f1 	udiv	r3, r3, r1
100041ca:	6811      	ldr	r1, [r2, #0]
100041cc:	f441 4180 	orr.w	r1, r1, #16384	@ 0x4000
100041d0:	6011      	str	r1, [r2, #0]
100041d2:	6821      	ldr	r1, [r4, #0]
100041d4:	6aca      	ldr	r2, [r1, #44]	@ 0x2c
100041d6:	f022 020f 	bic.w	r2, r2, #15
100041da:	f042 0202 	orr.w	r2, r2, #2
100041de:	62ca      	str	r2, [r1, #44]	@ 0x2c
100041e0:	6822      	ldr	r2, [r4, #0]
100041e2:	2000      	movs	r0, #0
100041e4:	60d3      	str	r3, [r2, #12]
100041e6:	2320      	movs	r3, #32
100041e8:	6760      	str	r0, [r4, #116]	@ 0x74
100041ea:	f884 0070 	strb.w	r0, [r4, #112]	@ 0x70
100041ee:	f884 3071 	strb.w	r3, [r4, #113]	@ 0x71
100041f2:	f884 3072 	strb.w	r3, [r4, #114]	@ 0x72
100041f6:	bd10      	pop	{r4, pc}
100041f8:	6811      	ldr	r1, [r2, #0]
100041fa:	f421 4180 	bic.w	r1, r1, #16384	@ 0x4000
100041fe:	6011      	str	r1, [r2, #0]
10004200:	6821      	ldr	r1, [r4, #0]
10004202:	6aca      	ldr	r2, [r1, #44]	@ 0x2c
10004204:	f022 020f 	bic.w	r2, r2, #15
10004208:	f042 0206 	orr.w	r2, r2, #6
1000420c:	e7e7      	b.n	100041de <HAL_UART_Init+0xba>
1000420e:	2001      	movs	r0, #1
10004210:	e7f1      	b.n	100041f6 <HAL_UART_Init+0xd2>
10004212:	bf00      	nop
10004214:	50085000 	.word	0x50085000
10004218:	50086000 	.word	0x50086000
1000421c:	40005000 	.word	0x40005000
10004220:	40006000 	.word	0x40006000
10004224:	02dc6c00 	.word	0x02dc6c00
10004228:	05b8d800 	.word	0x05b8d800

1000422c <UART_WaitOnFlagUntilTimeout>:
1000422c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
10004230:	4604      	mov	r4, r0
10004232:	460e      	mov	r6, r1
10004234:	4615      	mov	r5, r2
10004236:	461f      	mov	r7, r3
10004238:	f8dd 8018 	ldr.w	r8, [sp, #24]
1000423c:	6822      	ldr	r2, [r4, #0]
1000423e:	69d3      	ldr	r3, [r2, #28]
10004240:	ea36 0303 	bics.w	r3, r6, r3
10004244:	bf0c      	ite	eq
10004246:	2301      	moveq	r3, #1
10004248:	2300      	movne	r3, #0
1000424a:	42ab      	cmp	r3, r5
1000424c:	d001      	beq.n	10004252 <UART_WaitOnFlagUntilTimeout+0x26>
1000424e:	2000      	movs	r0, #0
10004250:	e018      	b.n	10004284 <UART_WaitOnFlagUntilTimeout+0x58>
10004252:	f1b8 3fff 	cmp.w	r8, #4294967295
10004256:	d0f2      	beq.n	1000423e <UART_WaitOnFlagUntilTimeout+0x12>
10004258:	f1b8 0f00 	cmp.w	r8, #0
1000425c:	d114      	bne.n	10004288 <UART_WaitOnFlagUntilTimeout+0x5c>
1000425e:	6822      	ldr	r2, [r4, #0]
10004260:	2003      	movs	r0, #3
10004262:	6813      	ldr	r3, [r2, #0]
10004264:	f423 73d0 	bic.w	r3, r3, #416	@ 0x1a0
10004268:	6013      	str	r3, [r2, #0]
1000426a:	6822      	ldr	r2, [r4, #0]
1000426c:	6893      	ldr	r3, [r2, #8]
1000426e:	f023 0301 	bic.w	r3, r3, #1
10004272:	6093      	str	r3, [r2, #8]
10004274:	2320      	movs	r3, #32
10004276:	f884 3071 	strb.w	r3, [r4, #113]	@ 0x71
1000427a:	f884 3072 	strb.w	r3, [r4, #114]	@ 0x72
1000427e:	2300      	movs	r3, #0
10004280:	f884 3070 	strb.w	r3, [r4, #112]	@ 0x70
10004284:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
10004288:	f7ff f8da 	bl	10003440 <HAL_GetTick>
1000428c:	1bc0      	subs	r0, r0, r7
1000428e:	4540      	cmp	r0, r8
10004290:	d9d4      	bls.n	1000423c <UART_WaitOnFlagUntilTimeout+0x10>
10004292:	e7e4      	b.n	1000425e <UART_WaitOnFlagUntilTimeout+0x32>

10004294 <HAL_UART_Transmit>:
10004294:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
10004298:	461f      	mov	r7, r3
1000429a:	f890 3071 	ldrb.w	r3, [r0, #113]	@ 0x71
1000429e:	4604      	mov	r4, r0
100042a0:	2b20      	cmp	r3, #32
100042a2:	460d      	mov	r5, r1
100042a4:	4616      	mov	r6, r2
100042a6:	d149      	bne.n	1000433c <HAL_UART_Transmit+0xa8>
100042a8:	2900      	cmp	r1, #0
100042aa:	d045      	beq.n	10004338 <HAL_UART_Transmit+0xa4>
100042ac:	2a00      	cmp	r2, #0
100042ae:	d043      	beq.n	10004338 <HAL_UART_Transmit+0xa4>
100042b0:	f890 3070 	ldrb.w	r3, [r0, #112]	@ 0x70
100042b4:	2b01      	cmp	r3, #1
100042b6:	d041      	beq.n	1000433c <HAL_UART_Transmit+0xa8>
100042b8:	2301      	movs	r3, #1
100042ba:	f880 3070 	strb.w	r3, [r0, #112]	@ 0x70
100042be:	2300      	movs	r3, #0
100042c0:	6743      	str	r3, [r0, #116]	@ 0x74
100042c2:	2321      	movs	r3, #33	@ 0x21
100042c4:	f880 3071 	strb.w	r3, [r0, #113]	@ 0x71
100042c8:	f7ff f8ba 	bl	10003440 <HAL_GetTick>
100042cc:	4680      	mov	r8, r0
100042ce:	f8a4 6050 	strh.w	r6, [r4, #80]	@ 0x50
100042d2:	f8a4 6052 	strh.w	r6, [r4, #82]	@ 0x52
100042d6:	f8b4 2052 	ldrh.w	r2, [r4, #82]	@ 0x52
100042da:	4643      	mov	r3, r8
100042dc:	b292      	uxth	r2, r2
100042de:	9700      	str	r7, [sp, #0]
100042e0:	b952      	cbnz	r2, 100042f8 <HAL_UART_Transmit+0x64>
100042e2:	2140      	movs	r1, #64	@ 0x40
100042e4:	4620      	mov	r0, r4
100042e6:	f7ff ffa1 	bl	1000422c <UART_WaitOnFlagUntilTimeout>
100042ea:	b958      	cbnz	r0, 10004304 <HAL_UART_Transmit+0x70>
100042ec:	2320      	movs	r3, #32
100042ee:	f884 0070 	strb.w	r0, [r4, #112]	@ 0x70
100042f2:	f884 3071 	strb.w	r3, [r4, #113]	@ 0x71
100042f6:	e006      	b.n	10004306 <HAL_UART_Transmit+0x72>
100042f8:	2200      	movs	r2, #0
100042fa:	2180      	movs	r1, #128	@ 0x80
100042fc:	4620      	mov	r0, r4
100042fe:	f7ff ff95 	bl	1000422c <UART_WaitOnFlagUntilTimeout>
10004302:	b118      	cbz	r0, 1000430c <HAL_UART_Transmit+0x78>
10004304:	2003      	movs	r0, #3
10004306:	b002      	add	sp, #8
10004308:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
1000430c:	68a3      	ldr	r3, [r4, #8]
1000430e:	6822      	ldr	r2, [r4, #0]
10004310:	f1b3 5fc0 	cmp.w	r3, #402653184	@ 0x18000000
10004314:	d10d      	bne.n	10004332 <HAL_UART_Transmit+0x9e>
10004316:	6923      	ldr	r3, [r4, #16]
10004318:	b95b      	cbnz	r3, 10004332 <HAL_UART_Transmit+0x9e>
1000431a:	f835 3b02 	ldrh.w	r3, [r5], #2
1000431e:	f3c3 0308 	ubfx	r3, r3, #0, #9
10004322:	6293      	str	r3, [r2, #40]	@ 0x28
10004324:	f8b4 2052 	ldrh.w	r2, [r4, #82]	@ 0x52
10004328:	3a01      	subs	r2, #1
1000432a:	b292      	uxth	r2, r2
1000432c:	f8a4 2052 	strh.w	r2, [r4, #82]	@ 0x52
10004330:	e7d1      	b.n	100042d6 <HAL_UART_Transmit+0x42>
10004332:	f815 3b01 	ldrb.w	r3, [r5], #1
10004336:	e7f4      	b.n	10004322 <HAL_UART_Transmit+0x8e>
10004338:	2001      	movs	r0, #1
1000433a:	e7e4      	b.n	10004306 <HAL_UART_Transmit+0x72>
1000433c:	2002      	movs	r0, #2
1000433e:	e7e2      	b.n	10004306 <HAL_UART_Transmit+0x72>

10004340 <BSP_System_Config>:
10004340:	b510      	push	{r4, lr}
10004342:	f7ff f8f9 	bl	10003538 <HAL_EFUSE_Init>
10004346:	4604      	mov	r4, r0
10004348:	b9a8      	cbnz	r0, 10004376 <BSP_System_Config+0x36>
1000434a:	f001 fc09 	bl	10005b60 <__HAL_Delay_us_veneer>
1000434e:	200a      	movs	r0, #10
10004350:	f001 fc06 	bl	10005b60 <__HAL_Delay_us_veneer>
10004354:	2220      	movs	r2, #32
10004356:	4621      	mov	r1, r4
10004358:	4809      	ldr	r0, [pc, #36]	@ (10004380 <BSP_System_Config+0x40>)
1000435a:	f001 fc1d 	bl	10005b98 <__memset_veneer>
1000435e:	2220      	movs	r2, #32
10004360:	f44f 7080 	mov.w	r0, #256	@ 0x100
10004364:	4906      	ldr	r1, [pc, #24]	@ (10004380 <BSP_System_Config+0x40>)
10004366:	f7ff f941 	bl	100035ec <HAL_EFUSE_Read>
1000436a:	2820      	cmp	r0, #32
1000436c:	d105      	bne.n	1000437a <BSP_System_Config+0x3a>
1000436e:	f7ff fd9b 	bl	10003ea8 <HAL_PMU_LoadCalData>
10004372:	4620      	mov	r0, r4
10004374:	bd10      	pop	{r4, pc}
10004376:	2001      	movs	r0, #1
10004378:	e7fc      	b.n	10004374 <BSP_System_Config+0x34>
1000437a:	2002      	movs	r0, #2
1000437c:	e7fa      	b.n	10004374 <BSP_System_Config+0x34>
1000437e:	bf00      	nop
10004380:	20005a60 	.word	0x20005a60

10004384 <BSP_CONFIG_get>:
10004384:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
10004388:	4604      	mov	r4, r0
1000438a:	4610      	mov	r0, r2
1000438c:	4a91      	ldr	r2, [pc, #580]	@ (100045d4 <BSP_CONFIG_get+0x250>)
1000438e:	6856      	ldr	r6, [r2, #4]
10004390:	b911      	cbnz	r1, 10004398 <BSP_CONFIG_get+0x14>
10004392:	2000      	movs	r0, #0
10004394:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
10004398:	2800      	cmp	r0, #0
1000439a:	ddfa      	ble.n	10004392 <BSP_CONFIG_get+0xe>
1000439c:	4b8e      	ldr	r3, [pc, #568]	@ (100045d8 <BSP_CONFIG_get+0x254>)
1000439e:	781d      	ldrb	r5, [r3, #0]
100043a0:	2d00      	cmp	r5, #0
100043a2:	d0f6      	beq.n	10004392 <BSP_CONFIG_get+0xe>
100043a4:	2c04      	cmp	r4, #4
100043a6:	d179      	bne.n	1000449c <BSP_CONFIG_get+0x118>
100043a8:	280d      	cmp	r0, #13
100043aa:	ddf2      	ble.n	10004392 <BSP_CONFIG_get+0xe>
100043ac:	6854      	ldr	r4, [r2, #4]
100043ae:	f893 c004 	ldrb.w	ip, [r3, #4]
100043b2:	b2e4      	uxtb	r4, r4
100043b4:	2c07      	cmp	r4, #7
100043b6:	4c87      	ldr	r4, [pc, #540]	@ (100045d4 <BSP_CONFIG_get+0x250>)
100043b8:	bf18      	it	ne
100043ba:	6852      	ldrne	r2, [r2, #4]
100043bc:	6862      	ldr	r2, [r4, #4]
100043be:	f8df 8214 	ldr.w	r8, [pc, #532]	@ 100045d4 <BSP_CONFIG_get+0x250>
100043c2:	b2d2      	uxtb	r2, r2
100043c4:	2a07      	cmp	r2, #7
100043c6:	bf18      	it	ne
100043c8:	6862      	ldrne	r2, [r4, #4]
100043ca:	795a      	ldrb	r2, [r3, #5]
100043cc:	0212      	lsls	r2, r2, #8
100043ce:	f402 6270 	and.w	r2, r2, #3840	@ 0xf00
100043d2:	ea4c 0c02 	orr.w	ip, ip, r2
100043d6:	f8a1 c000 	strh.w	ip, [r1]
100043da:	799d      	ldrb	r5, [r3, #6]
100043dc:	795a      	ldrb	r2, [r3, #5]
100043de:	012d      	lsls	r5, r5, #4
100043e0:	f005 0510 	and.w	r5, r5, #16
100043e4:	ea45 1512 	orr.w	r5, r5, r2, lsr #4
100043e8:	808d      	strh	r5, [r1, #4]
100043ea:	79df      	ldrb	r7, [r3, #7]
100043ec:	799a      	ldrb	r2, [r3, #6]
100043ee:	01ff      	lsls	r7, r7, #7
100043f0:	f407 6778 	and.w	r7, r7, #3968	@ 0xf80
100043f4:	ea47 0752 	orr.w	r7, r7, r2, lsr #1
100043f8:	804f      	strh	r7, [r1, #2]
100043fa:	7a1c      	ldrb	r4, [r3, #8]
100043fc:	79da      	ldrb	r2, [r3, #7]
100043fe:	00e4      	lsls	r4, r4, #3
10004400:	f004 0418 	and.w	r4, r4, #24
10004404:	ea44 1452 	orr.w	r4, r4, r2, lsr #5
10004408:	80cc      	strh	r4, [r1, #6]
1000440a:	7a5a      	ldrb	r2, [r3, #9]
1000440c:	7a1e      	ldrb	r6, [r3, #8]
1000440e:	0192      	lsls	r2, r2, #6
10004410:	f402 627c 	and.w	r2, r2, #4032	@ 0xfc0
10004414:	ea42 0296 	orr.w	r2, r2, r6, lsr #2
10004418:	810a      	strh	r2, [r1, #8]
1000441a:	7a9e      	ldrb	r6, [r3, #10]
1000441c:	f893 e009 	ldrb.w	lr, [r3, #9]
10004420:	00b6      	lsls	r6, r6, #2
10004422:	f006 063c 	and.w	r6, r6, #60	@ 0x3c
10004426:	ea46 169e 	orr.w	r6, r6, lr, lsr #6
1000442a:	eb05 0585 	add.w	r5, r5, r5, lsl #2
1000442e:	eb04 0484 	add.w	r4, r4, r4, lsl #2
10004432:	eb06 0686 	add.w	r6, r6, r6, lsl #2
10004436:	eb05 0585 	add.w	r5, r5, r5, lsl #2
1000443a:	eb04 0484 	add.w	r4, r4, r4, lsl #2
1000443e:	eb06 0686 	add.w	r6, r6, r6, lsl #2
10004442:	00ad      	lsls	r5, r5, #2
10004444:	00a4      	lsls	r4, r4, #2
10004446:	00b6      	lsls	r6, r6, #2
10004448:	808d      	strh	r5, [r1, #4]
1000444a:	80cc      	strh	r4, [r1, #6]
1000444c:	814e      	strh	r6, [r1, #10]
1000444e:	f8d8 e004 	ldr.w	lr, [r8, #4]
10004452:	fa5f fe8e 	uxtb.w	lr, lr
10004456:	f1be 0f07 	cmp.w	lr, #7
1000445a:	d006      	beq.n	1000446a <BSP_CONFIG_get+0xe6>
1000445c:	f8d8 e004 	ldr.w	lr, [r8, #4]
10004460:	fa5f fe8e 	uxtb.w	lr, lr
10004464:	f1be 0f0f 	cmp.w	lr, #15
10004468:	d108      	bne.n	1000447c <BSP_CONFIG_get+0xf8>
1000446a:	f893 e011 	ldrb.w	lr, [r3, #17]
1000446e:	f3ce 0ec0 	ubfx	lr, lr, #3, #1
10004472:	f881 e00c 	strb.w	lr, [r1, #12]
10004476:	7c5b      	ldrb	r3, [r3, #17]
10004478:	091b      	lsrs	r3, r3, #4
1000447a:	734b      	strb	r3, [r1, #13]
1000447c:	f1bc 0f00 	cmp.w	ip, #0
10004480:	d087      	beq.n	10004392 <BSP_CONFIG_get+0xe>
10004482:	2d00      	cmp	r5, #0
10004484:	d085      	beq.n	10004392 <BSP_CONFIG_get+0xe>
10004486:	2f00      	cmp	r7, #0
10004488:	d083      	beq.n	10004392 <BSP_CONFIG_get+0xe>
1000448a:	2c00      	cmp	r4, #0
1000448c:	d081      	beq.n	10004392 <BSP_CONFIG_get+0xe>
1000448e:	2a00      	cmp	r2, #0
10004490:	f43f af7f 	beq.w	10004392 <BSP_CONFIG_get+0xe>
10004494:	2e00      	cmp	r6, #0
10004496:	f43f af7c 	beq.w	10004392 <BSP_CONFIG_get+0xe>
1000449a:	e77b      	b.n	10004394 <BSP_CONFIG_get+0x10>
1000449c:	2c06      	cmp	r4, #6
1000449e:	d179      	bne.n	10004594 <BSP_CONFIG_get+0x210>
100044a0:	280d      	cmp	r0, #13
100044a2:	f77f af76 	ble.w	10004392 <BSP_CONFIG_get+0xe>
100044a6:	6854      	ldr	r4, [r2, #4]
100044a8:	b2e4      	uxtb	r4, r4
100044aa:	2c07      	cmp	r4, #7
100044ac:	4c49      	ldr	r4, [pc, #292]	@ (100045d4 <BSP_CONFIG_get+0x250>)
100044ae:	bf18      	it	ne
100044b0:	6852      	ldrne	r2, [r2, #4]
100044b2:	6862      	ldr	r2, [r4, #4]
100044b4:	b2d2      	uxtb	r2, r2
100044b6:	2a07      	cmp	r2, #7
100044b8:	d003      	beq.n	100044c2 <BSP_CONFIG_get+0x13e>
100044ba:	6862      	ldr	r2, [r4, #4]
100044bc:	b2d2      	uxtb	r2, r2
100044be:	2a0f      	cmp	r2, #15
100044c0:	d103      	bne.n	100044ca <BSP_CONFIG_get+0x146>
100044c2:	f3c6 2207 	ubfx	r2, r6, #8, #8
100044c6:	2a04      	cmp	r2, #4
100044c8:	d01c      	beq.n	10004504 <BSP_CONFIG_get+0x180>
100044ca:	4c42      	ldr	r4, [pc, #264]	@ (100045d4 <BSP_CONFIG_get+0x250>)
100044cc:	6862      	ldr	r2, [r4, #4]
100044ce:	b2d2      	uxtb	r2, r2
100044d0:	2a07      	cmp	r2, #7
100044d2:	d000      	beq.n	100044d6 <BSP_CONFIG_get+0x152>
100044d4:	6862      	ldr	r2, [r4, #4]
100044d6:	f005 0507 	and.w	r5, r5, #7
100044da:	700d      	strb	r5, [r1, #0]
100044dc:	781a      	ldrb	r2, [r3, #0]
100044de:	f3c2 04c0 	ubfx	r4, r2, #3, #1
100044e2:	704c      	strb	r4, [r1, #1]
100044e4:	785c      	ldrb	r4, [r3, #1]
100044e6:	0912      	lsrs	r2, r2, #4
100044e8:	f004 050f 	and.w	r5, r4, #15
100044ec:	0924      	lsrs	r4, r4, #4
100044ee:	708a      	strb	r2, [r1, #2]
100044f0:	70cd      	strb	r5, [r1, #3]
100044f2:	710c      	strb	r4, [r1, #4]
100044f4:	7b5c      	ldrb	r4, [r3, #13]
100044f6:	0924      	lsrs	r4, r4, #4
100044f8:	730c      	strb	r4, [r1, #12]
100044fa:	7b9c      	ldrb	r4, [r3, #14]
100044fc:	f004 040f 	and.w	r4, r4, #15
10004500:	734c      	strb	r4, [r1, #13]
10004502:	e015      	b.n	10004530 <BSP_CONFIG_get+0x1ac>
10004504:	7d1a      	ldrb	r2, [r3, #20]
10004506:	f002 0207 	and.w	r2, r2, #7
1000450a:	700a      	strb	r2, [r1, #0]
1000450c:	7d1a      	ldrb	r2, [r3, #20]
1000450e:	f3c2 02c0 	ubfx	r2, r2, #3, #1
10004512:	704a      	strb	r2, [r1, #1]
10004514:	7d1a      	ldrb	r2, [r3, #20]
10004516:	0912      	lsrs	r2, r2, #4
10004518:	708a      	strb	r2, [r1, #2]
1000451a:	7d5c      	ldrb	r4, [r3, #21]
1000451c:	f004 040f 	and.w	r4, r4, #15
10004520:	70cc      	strb	r4, [r1, #3]
10004522:	7d5c      	ldrb	r4, [r3, #21]
10004524:	0924      	lsrs	r4, r4, #4
10004526:	710c      	strb	r4, [r1, #4]
10004528:	7f1c      	ldrb	r4, [r3, #28]
1000452a:	f3c4 04c3 	ubfx	r4, r4, #3, #4
1000452e:	730c      	strb	r4, [r1, #12]
10004530:	4d28      	ldr	r5, [pc, #160]	@ (100045d4 <BSP_CONFIG_get+0x250>)
10004532:	686c      	ldr	r4, [r5, #4]
10004534:	b2e4      	uxtb	r4, r4
10004536:	2c07      	cmp	r4, #7
10004538:	d00f      	beq.n	1000455a <BSP_CONFIG_get+0x1d6>
1000453a:	686c      	ldr	r4, [r5, #4]
1000453c:	b2e4      	uxtb	r4, r4
1000453e:	2c0f      	cmp	r4, #15
10004540:	d00b      	beq.n	1000455a <BSP_CONFIG_get+0x1d6>
10004542:	789c      	ldrb	r4, [r3, #2]
10004544:	0924      	lsrs	r4, r4, #4
10004546:	718c      	strb	r4, [r1, #6]
10004548:	78dc      	ldrb	r4, [r3, #3]
1000454a:	f004 050f 	and.w	r5, r4, #15
1000454e:	71cd      	strb	r5, [r1, #7]
10004550:	f3c4 1502 	ubfx	r5, r4, #4, #3
10004554:	09e4      	lsrs	r4, r4, #7
10004556:	720d      	strb	r5, [r1, #8]
10004558:	724c      	strb	r4, [r1, #9]
1000455a:	4c1e      	ldr	r4, [pc, #120]	@ (100045d4 <BSP_CONFIG_get+0x250>)
1000455c:	6865      	ldr	r5, [r4, #4]
1000455e:	b2ed      	uxtb	r5, r5
10004560:	2d07      	cmp	r5, #7
10004562:	d003      	beq.n	1000456c <BSP_CONFIG_get+0x1e8>
10004564:	6865      	ldr	r5, [r4, #4]
10004566:	b2ed      	uxtb	r5, r5
10004568:	2d0f      	cmp	r5, #15
1000456a:	d107      	bne.n	1000457c <BSP_CONFIG_get+0x1f8>
1000456c:	6865      	ldr	r5, [r4, #4]
1000456e:	b2ed      	uxtb	r5, r5
10004570:	2d07      	cmp	r5, #7
10004572:	d003      	beq.n	1000457c <BSP_CONFIG_get+0x1f8>
10004574:	6864      	ldr	r4, [r4, #4]
10004576:	b2e4      	uxtb	r4, r4
10004578:	2c0f      	cmp	r4, #15
1000457a:	d103      	bne.n	10004584 <BSP_CONFIG_get+0x200>
1000457c:	789b      	ldrb	r3, [r3, #2]
1000457e:	f003 030f 	and.w	r3, r3, #15
10004582:	714b      	strb	r3, [r1, #5]
10004584:	2a00      	cmp	r2, #0
10004586:	f43f af04 	beq.w	10004392 <BSP_CONFIG_get+0xe>
1000458a:	7b0b      	ldrb	r3, [r1, #12]
1000458c:	2b00      	cmp	r3, #0
1000458e:	f43f af00 	beq.w	10004392 <BSP_CONFIG_get+0xe>
10004592:	e6ff      	b.n	10004394 <BSP_CONFIG_get+0x10>
10004594:	2c15      	cmp	r4, #21
10004596:	f47f aefc 	bne.w	10004392 <BSP_CONFIG_get+0xe>
1000459a:	2807      	cmp	r0, #7
1000459c:	f77f aef9 	ble.w	10004392 <BSP_CONFIG_get+0xe>
100045a0:	7a9a      	ldrb	r2, [r3, #10]
100045a2:	0912      	lsrs	r2, r2, #4
100045a4:	700a      	strb	r2, [r1, #0]
100045a6:	7ada      	ldrb	r2, [r3, #11]
100045a8:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
100045ac:	704a      	strb	r2, [r1, #1]
100045ae:	7b1a      	ldrb	r2, [r3, #12]
100045b0:	7adc      	ldrb	r4, [r3, #11]
100045b2:	0092      	lsls	r2, r2, #2
100045b4:	f002 021c 	and.w	r2, r2, #28
100045b8:	ea42 1294 	orr.w	r2, r2, r4, lsr #6
100045bc:	708a      	strb	r2, [r1, #2]
100045be:	7b1a      	ldrb	r2, [r3, #12]
100045c0:	08d2      	lsrs	r2, r2, #3
100045c2:	70ca      	strb	r2, [r1, #3]
100045c4:	7bda      	ldrb	r2, [r3, #15]
100045c6:	7b9b      	ldrb	r3, [r3, #14]
100045c8:	091b      	lsrs	r3, r3, #4
100045ca:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
100045ce:	710b      	strb	r3, [r1, #4]
100045d0:	e6e0      	b.n	10004394 <BSP_CONFIG_get+0x10>
100045d2:	bf00      	nop
100045d4:	5000b000 	.word	0x5000b000
100045d8:	20005a60 	.word	0x20005a60

100045dc <SysTick_Handler>:
100045dc:	f7fe bf28 	b.w	10003430 <HAL_IncTick>

100045e0 <gpio_pin_set>:
100045e0:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
100045e2:	4604      	mov	r4, r0
100045e4:	2301      	movs	r3, #1
100045e6:	2860      	cmp	r0, #96	@ 0x60
100045e8:	bfc8      	it	gt
100045ea:	f1a0 0460 	subgt.w	r4, r0, #96	@ 0x60
100045ee:	460e      	mov	r6, r1
100045f0:	e9cd 4301 	strd	r4, r3, [sp, #4]
100045f4:	f04f 0300 	mov.w	r3, #0
100045f8:	bfcc      	ite	gt
100045fa:	4d07      	ldrgt	r5, [pc, #28]	@ (10004618 <gpio_pin_set+0x38>)
100045fc:	4d07      	ldrle	r5, [pc, #28]	@ (1000461c <gpio_pin_set+0x3c>)
100045fe:	a901      	add	r1, sp, #4
10004600:	4628      	mov	r0, r5
10004602:	9303      	str	r3, [sp, #12]
10004604:	f001 fab4 	bl	10005b70 <__HAL_GPIO_Init_veneer>
10004608:	4628      	mov	r0, r5
1000460a:	b2f2      	uxtb	r2, r6
1000460c:	b2a1      	uxth	r1, r4
1000460e:	f001 faa3 	bl	10005b58 <__HAL_GPIO_WritePin_veneer>
10004612:	b004      	add	sp, #16
10004614:	bd70      	pop	{r4, r5, r6, pc}
10004616:	bf00      	nop
10004618:	40080000 	.word	0x40080000
1000461c:	500a0000 	.word	0x500a0000

10004620 <_write>:
10004620:	2802      	cmp	r0, #2
10004622:	b510      	push	{r4, lr}
10004624:	4614      	mov	r4, r2
10004626:	dc07      	bgt.n	10004638 <_write+0x18>
10004628:	f64f 73ff 	movw	r3, #65535	@ 0xffff
1000462c:	4804      	ldr	r0, [pc, #16]	@ (10004640 <_write+0x20>)
1000462e:	b292      	uxth	r2, r2
10004630:	f7ff fe30 	bl	10004294 <HAL_UART_Transmit>
10004634:	4620      	mov	r0, r4
10004636:	bd10      	pop	{r4, pc}
10004638:	f04f 34ff 	mov.w	r4, #4294967295
1000463c:	e7fa      	b.n	10004634 <_write+0x14>
1000463e:	bf00      	nop
10004640:	20005a80 	.word	0x20005a80

10004644 <uart_init>:
10004644:	b508      	push	{r3, lr}
10004646:	f001 fa97 	bl	10005b78 <__HAL_Init_veneer>
1000464a:	490a      	ldr	r1, [pc, #40]	@ (10004674 <uart_init+0x30>)
1000464c:	4b0a      	ldr	r3, [pc, #40]	@ (10004678 <uart_init+0x34>)
1000464e:	4a0b      	ldr	r2, [pc, #44]	@ (1000467c <uart_init+0x38>)
10004650:	600b      	str	r3, [r1, #0]
10004652:	f04f 5380 	mov.w	r3, #268435456	@ 0x10000000
10004656:	e9c1 2301 	strd	r2, r3, [r1, #4]
1000465a:	2300      	movs	r3, #0
1000465c:	220c      	movs	r2, #12
1000465e:	4608      	mov	r0, r1
10004660:	e9c1 3303 	strd	r3, r3, [r1, #12]
10004664:	618b      	str	r3, [r1, #24]
10004666:	614a      	str	r2, [r1, #20]
10004668:	61cb      	str	r3, [r1, #28]
1000466a:	f7ff fd5b 	bl	10004124 <HAL_UART_Init>
1000466e:	b100      	cbz	r0, 10004672 <uart_init+0x2e>
10004670:	e7fe      	b.n	10004670 <uart_init+0x2c>
10004672:	bd08      	pop	{r3, pc}
10004674:	20005a80 	.word	0x20005a80
10004678:	50084000 	.word	0x50084000
1000467c:	000f4240 	.word	0x000f4240

10004680 <entry>:
10004680:	b538      	push	{r3, r4, r5, lr}
10004682:	f7ff ffdf 	bl	10004644 <uart_init>
10004686:	4812      	ldr	r0, [pc, #72]	@ (100046d0 <entry+0x50>)
10004688:	f000 fbc4 	bl	10004e14 <puts>
1000468c:	2100      	movs	r1, #0
1000468e:	201f      	movs	r0, #31
10004690:	f7ff ffa6 	bl	100045e0 <gpio_pin_set>
10004694:	2100      	movs	r1, #0
10004696:	2020      	movs	r0, #32
10004698:	f7ff ffa2 	bl	100045e0 <gpio_pin_set>
1000469c:	490d      	ldr	r1, [pc, #52]	@ (100046d4 <entry+0x54>)
1000469e:	2400      	movs	r4, #0
100046a0:	460d      	mov	r5, r1
100046a2:	f084 0401 	eor.w	r4, r4, #1
100046a6:	480c      	ldr	r0, [pc, #48]	@ (100046d8 <entry+0x58>)
100046a8:	f000 fb4c 	bl	10004d44 <iprintf>
100046ac:	4621      	mov	r1, r4
100046ae:	201f      	movs	r0, #31
100046b0:	f7ff ff96 	bl	100045e0 <gpio_pin_set>
100046b4:	4621      	mov	r1, r4
100046b6:	2020      	movs	r0, #32
100046b8:	f7ff ff92 	bl	100045e0 <gpio_pin_set>
100046bc:	f44f 707a 	mov.w	r0, #1000	@ 0x3e8
100046c0:	f001 fa6e 	bl	10005ba0 <__HAL_Delay_veneer>
100046c4:	4905      	ldr	r1, [pc, #20]	@ (100046dc <entry+0x5c>)
100046c6:	2c00      	cmp	r4, #0
100046c8:	bf08      	it	eq
100046ca:	4629      	moveq	r1, r5
100046cc:	e7e9      	b.n	100046a2 <entry+0x22>
100046ce:	bf00      	nop
100046d0:	10005ad4 	.word	0x10005ad4
100046d4:	10005ad0 	.word	0x10005ad0
100046d8:	10005ae9 	.word	0x10005ae9
100046dc:	10005acd 	.word	0x10005acd

100046e0 <__aeabi_uldivmod>:
100046e0:	b953      	cbnz	r3, 100046f8 <__aeabi_uldivmod+0x18>
100046e2:	b94a      	cbnz	r2, 100046f8 <__aeabi_uldivmod+0x18>
100046e4:	2900      	cmp	r1, #0
100046e6:	bf08      	it	eq
100046e8:	2800      	cmpeq	r0, #0
100046ea:	bf1c      	itt	ne
100046ec:	f04f 31ff 	movne.w	r1, #4294967295
100046f0:	f04f 30ff 	movne.w	r0, #4294967295
100046f4:	f000 b9b2 	b.w	10004a5c <__aeabi_idiv0>
100046f8:	f1ad 0c08 	sub.w	ip, sp, #8
100046fc:	e96d ce04 	strd	ip, lr, [sp, #-16]!
10004700:	f000 f806 	bl	10004710 <__udivmoddi4>
10004704:	f8dd e004 	ldr.w	lr, [sp, #4]
10004708:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
1000470c:	b004      	add	sp, #16
1000470e:	4770      	bx	lr

10004710 <__udivmoddi4>:
10004710:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
10004714:	468c      	mov	ip, r1
10004716:	9e09      	ldr	r6, [sp, #36]	@ 0x24
10004718:	4604      	mov	r4, r0
1000471a:	460f      	mov	r7, r1
1000471c:	2b00      	cmp	r3, #0
1000471e:	d148      	bne.n	100047b2 <__udivmoddi4+0xa2>
10004720:	428a      	cmp	r2, r1
10004722:	4615      	mov	r5, r2
10004724:	d95e      	bls.n	100047e4 <__udivmoddi4+0xd4>
10004726:	fab2 f382 	clz	r3, r2
1000472a:	b13b      	cbz	r3, 1000473c <__udivmoddi4+0x2c>
1000472c:	f1c3 0220 	rsb	r2, r3, #32
10004730:	409f      	lsls	r7, r3
10004732:	409d      	lsls	r5, r3
10004734:	409c      	lsls	r4, r3
10004736:	fa20 f202 	lsr.w	r2, r0, r2
1000473a:	4317      	orrs	r7, r2
1000473c:	ea4f 4e15 	mov.w	lr, r5, lsr #16
10004740:	fa1f fc85 	uxth.w	ip, r5
10004744:	0c22      	lsrs	r2, r4, #16
10004746:	fbb7 f1fe 	udiv	r1, r7, lr
1000474a:	fb0e 7711 	mls	r7, lr, r1, r7
1000474e:	fb01 f00c 	mul.w	r0, r1, ip
10004752:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
10004756:	4290      	cmp	r0, r2
10004758:	d907      	bls.n	1000476a <__udivmoddi4+0x5a>
1000475a:	18aa      	adds	r2, r5, r2
1000475c:	f101 37ff 	add.w	r7, r1, #4294967295
10004760:	d202      	bcs.n	10004768 <__udivmoddi4+0x58>
10004762:	4290      	cmp	r0, r2
10004764:	f200 8158 	bhi.w	10004a18 <__udivmoddi4+0x308>
10004768:	4639      	mov	r1, r7
1000476a:	1a12      	subs	r2, r2, r0
1000476c:	b2a4      	uxth	r4, r4
1000476e:	fbb2 f0fe 	udiv	r0, r2, lr
10004772:	fb0e 2210 	mls	r2, lr, r0, r2
10004776:	fb00 fc0c 	mul.w	ip, r0, ip
1000477a:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
1000477e:	45a4      	cmp	ip, r4
10004780:	d90b      	bls.n	1000479a <__udivmoddi4+0x8a>
10004782:	192c      	adds	r4, r5, r4
10004784:	f100 32ff 	add.w	r2, r0, #4294967295
10004788:	bf2c      	ite	cs
1000478a:	2701      	movcs	r7, #1
1000478c:	2700      	movcc	r7, #0
1000478e:	45a4      	cmp	ip, r4
10004790:	d902      	bls.n	10004798 <__udivmoddi4+0x88>
10004792:	2f00      	cmp	r7, #0
10004794:	f000 8143 	beq.w	10004a1e <__udivmoddi4+0x30e>
10004798:	4610      	mov	r0, r2
1000479a:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
1000479e:	eba4 040c 	sub.w	r4, r4, ip
100047a2:	2100      	movs	r1, #0
100047a4:	b11e      	cbz	r6, 100047ae <__udivmoddi4+0x9e>
100047a6:	40dc      	lsrs	r4, r3
100047a8:	2300      	movs	r3, #0
100047aa:	e9c6 4300 	strd	r4, r3, [r6]
100047ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
100047b2:	428b      	cmp	r3, r1
100047b4:	d906      	bls.n	100047c4 <__udivmoddi4+0xb4>
100047b6:	b10e      	cbz	r6, 100047bc <__udivmoddi4+0xac>
100047b8:	e9c6 0100 	strd	r0, r1, [r6]
100047bc:	2100      	movs	r1, #0
100047be:	4608      	mov	r0, r1
100047c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
100047c4:	fab3 f183 	clz	r1, r3
100047c8:	2900      	cmp	r1, #0
100047ca:	d151      	bne.n	10004870 <__udivmoddi4+0x160>
100047cc:	4563      	cmp	r3, ip
100047ce:	f0c0 8116 	bcc.w	100049fe <__udivmoddi4+0x2ee>
100047d2:	4282      	cmp	r2, r0
100047d4:	f240 8113 	bls.w	100049fe <__udivmoddi4+0x2ee>
100047d8:	4608      	mov	r0, r1
100047da:	2e00      	cmp	r6, #0
100047dc:	d0e7      	beq.n	100047ae <__udivmoddi4+0x9e>
100047de:	e9c6 4700 	strd	r4, r7, [r6]
100047e2:	e7e4      	b.n	100047ae <__udivmoddi4+0x9e>
100047e4:	2a00      	cmp	r2, #0
100047e6:	f000 80af 	beq.w	10004948 <__udivmoddi4+0x238>
100047ea:	fab2 f382 	clz	r3, r2
100047ee:	2b00      	cmp	r3, #0
100047f0:	f040 80c2 	bne.w	10004978 <__udivmoddi4+0x268>
100047f4:	1a8a      	subs	r2, r1, r2
100047f6:	ea4f 4e15 	mov.w	lr, r5, lsr #16
100047fa:	b2af      	uxth	r7, r5
100047fc:	2101      	movs	r1, #1
100047fe:	0c20      	lsrs	r0, r4, #16
10004800:	fbb2 fcfe 	udiv	ip, r2, lr
10004804:	fb0e 221c 	mls	r2, lr, ip, r2
10004808:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
1000480c:	fb07 f00c 	mul.w	r0, r7, ip
10004810:	4290      	cmp	r0, r2
10004812:	d90e      	bls.n	10004832 <__udivmoddi4+0x122>
10004814:	18aa      	adds	r2, r5, r2
10004816:	f10c 38ff 	add.w	r8, ip, #4294967295
1000481a:	bf2c      	ite	cs
1000481c:	f04f 0901 	movcs.w	r9, #1
10004820:	f04f 0900 	movcc.w	r9, #0
10004824:	4290      	cmp	r0, r2
10004826:	d903      	bls.n	10004830 <__udivmoddi4+0x120>
10004828:	f1b9 0f00 	cmp.w	r9, #0
1000482c:	f000 80f0 	beq.w	10004a10 <__udivmoddi4+0x300>
10004830:	46c4      	mov	ip, r8
10004832:	1a12      	subs	r2, r2, r0
10004834:	b2a4      	uxth	r4, r4
10004836:	fbb2 f0fe 	udiv	r0, r2, lr
1000483a:	fb0e 2210 	mls	r2, lr, r0, r2
1000483e:	fb00 f707 	mul.w	r7, r0, r7
10004842:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
10004846:	42a7      	cmp	r7, r4
10004848:	d90e      	bls.n	10004868 <__udivmoddi4+0x158>
1000484a:	192c      	adds	r4, r5, r4
1000484c:	f100 32ff 	add.w	r2, r0, #4294967295
10004850:	bf2c      	ite	cs
10004852:	f04f 0e01 	movcs.w	lr, #1
10004856:	f04f 0e00 	movcc.w	lr, #0
1000485a:	42a7      	cmp	r7, r4
1000485c:	d903      	bls.n	10004866 <__udivmoddi4+0x156>
1000485e:	f1be 0f00 	cmp.w	lr, #0
10004862:	f000 80d2 	beq.w	10004a0a <__udivmoddi4+0x2fa>
10004866:	4610      	mov	r0, r2
10004868:	1be4      	subs	r4, r4, r7
1000486a:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
1000486e:	e799      	b.n	100047a4 <__udivmoddi4+0x94>
10004870:	f1c1 0520 	rsb	r5, r1, #32
10004874:	408b      	lsls	r3, r1
10004876:	fa0c f401 	lsl.w	r4, ip, r1
1000487a:	fa00 f901 	lsl.w	r9, r0, r1
1000487e:	fa22 f705 	lsr.w	r7, r2, r5
10004882:	fa2c fc05 	lsr.w	ip, ip, r5
10004886:	408a      	lsls	r2, r1
10004888:	431f      	orrs	r7, r3
1000488a:	fa20 f305 	lsr.w	r3, r0, r5
1000488e:	0c38      	lsrs	r0, r7, #16
10004890:	4323      	orrs	r3, r4
10004892:	fa1f fe87 	uxth.w	lr, r7
10004896:	0c1c      	lsrs	r4, r3, #16
10004898:	fbbc f8f0 	udiv	r8, ip, r0
1000489c:	fb00 cc18 	mls	ip, r0, r8, ip
100048a0:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
100048a4:	fb08 fc0e 	mul.w	ip, r8, lr
100048a8:	45a4      	cmp	ip, r4
100048aa:	d90e      	bls.n	100048ca <__udivmoddi4+0x1ba>
100048ac:	193c      	adds	r4, r7, r4
100048ae:	f108 3aff 	add.w	sl, r8, #4294967295
100048b2:	bf2c      	ite	cs
100048b4:	f04f 0b01 	movcs.w	fp, #1
100048b8:	f04f 0b00 	movcc.w	fp, #0
100048bc:	45a4      	cmp	ip, r4
100048be:	d903      	bls.n	100048c8 <__udivmoddi4+0x1b8>
100048c0:	f1bb 0f00 	cmp.w	fp, #0
100048c4:	f000 80b8 	beq.w	10004a38 <__udivmoddi4+0x328>
100048c8:	46d0      	mov	r8, sl
100048ca:	eba4 040c 	sub.w	r4, r4, ip
100048ce:	fa1f fc83 	uxth.w	ip, r3
100048d2:	fbb4 f3f0 	udiv	r3, r4, r0
100048d6:	fb00 4413 	mls	r4, r0, r3, r4
100048da:	fb03 fe0e 	mul.w	lr, r3, lr
100048de:	ea4c 4404 	orr.w	r4, ip, r4, lsl #16
100048e2:	45a6      	cmp	lr, r4
100048e4:	d90e      	bls.n	10004904 <__udivmoddi4+0x1f4>
100048e6:	193c      	adds	r4, r7, r4
100048e8:	f103 30ff 	add.w	r0, r3, #4294967295
100048ec:	bf2c      	ite	cs
100048ee:	f04f 0c01 	movcs.w	ip, #1
100048f2:	f04f 0c00 	movcc.w	ip, #0
100048f6:	45a6      	cmp	lr, r4
100048f8:	d903      	bls.n	10004902 <__udivmoddi4+0x1f2>
100048fa:	f1bc 0f00 	cmp.w	ip, #0
100048fe:	f000 809f 	beq.w	10004a40 <__udivmoddi4+0x330>
10004902:	4603      	mov	r3, r0
10004904:	ea43 4008 	orr.w	r0, r3, r8, lsl #16
10004908:	eba4 040e 	sub.w	r4, r4, lr
1000490c:	fba0 ec02 	umull	lr, ip, r0, r2
10004910:	4564      	cmp	r4, ip
10004912:	4673      	mov	r3, lr
10004914:	46e0      	mov	r8, ip
10004916:	d302      	bcc.n	1000491e <__udivmoddi4+0x20e>
10004918:	d107      	bne.n	1000492a <__udivmoddi4+0x21a>
1000491a:	45f1      	cmp	r9, lr
1000491c:	d205      	bcs.n	1000492a <__udivmoddi4+0x21a>
1000491e:	ebbe 0302 	subs.w	r3, lr, r2
10004922:	eb6c 0c07 	sbc.w	ip, ip, r7
10004926:	3801      	subs	r0, #1
10004928:	46e0      	mov	r8, ip
1000492a:	b15e      	cbz	r6, 10004944 <__udivmoddi4+0x234>
1000492c:	ebb9 0203 	subs.w	r2, r9, r3
10004930:	eb64 0408 	sbc.w	r4, r4, r8
10004934:	fa04 f505 	lsl.w	r5, r4, r5
10004938:	fa22 f301 	lsr.w	r3, r2, r1
1000493c:	40cc      	lsrs	r4, r1
1000493e:	431d      	orrs	r5, r3
10004940:	e9c6 5400 	strd	r5, r4, [r6]
10004944:	2100      	movs	r1, #0
10004946:	e732      	b.n	100047ae <__udivmoddi4+0x9e>
10004948:	0842      	lsrs	r2, r0, #1
1000494a:	462f      	mov	r7, r5
1000494c:	084b      	lsrs	r3, r1, #1
1000494e:	46ac      	mov	ip, r5
10004950:	ea42 72c1 	orr.w	r2, r2, r1, lsl #31
10004954:	46ae      	mov	lr, r5
10004956:	07c4      	lsls	r4, r0, #31
10004958:	0c11      	lsrs	r1, r2, #16
1000495a:	b292      	uxth	r2, r2
1000495c:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
10004960:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
10004964:	fbb1 f1f5 	udiv	r1, r1, r5
10004968:	fbb3 f0f5 	udiv	r0, r3, r5
1000496c:	231f      	movs	r3, #31
1000496e:	eba2 020c 	sub.w	r2, r2, ip
10004972:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
10004976:	e742      	b.n	100047fe <__udivmoddi4+0xee>
10004978:	409d      	lsls	r5, r3
1000497a:	f1c3 0220 	rsb	r2, r3, #32
1000497e:	4099      	lsls	r1, r3
10004980:	409c      	lsls	r4, r3
10004982:	fa2c fc02 	lsr.w	ip, ip, r2
10004986:	ea4f 4e15 	mov.w	lr, r5, lsr #16
1000498a:	fa20 f202 	lsr.w	r2, r0, r2
1000498e:	b2af      	uxth	r7, r5
10004990:	fbbc f8fe 	udiv	r8, ip, lr
10004994:	430a      	orrs	r2, r1
10004996:	fb0e cc18 	mls	ip, lr, r8, ip
1000499a:	0c11      	lsrs	r1, r2, #16
1000499c:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
100049a0:	fb08 fc07 	mul.w	ip, r8, r7
100049a4:	458c      	cmp	ip, r1
100049a6:	d950      	bls.n	10004a4a <__udivmoddi4+0x33a>
100049a8:	1869      	adds	r1, r5, r1
100049aa:	f108 30ff 	add.w	r0, r8, #4294967295
100049ae:	bf2c      	ite	cs
100049b0:	f04f 0901 	movcs.w	r9, #1
100049b4:	f04f 0900 	movcc.w	r9, #0
100049b8:	458c      	cmp	ip, r1
100049ba:	d902      	bls.n	100049c2 <__udivmoddi4+0x2b2>
100049bc:	f1b9 0f00 	cmp.w	r9, #0
100049c0:	d030      	beq.n	10004a24 <__udivmoddi4+0x314>
100049c2:	eba1 010c 	sub.w	r1, r1, ip
100049c6:	fbb1 f8fe 	udiv	r8, r1, lr
100049ca:	fb08 fc07 	mul.w	ip, r8, r7
100049ce:	fb0e 1118 	mls	r1, lr, r8, r1
100049d2:	b292      	uxth	r2, r2
100049d4:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
100049d8:	4562      	cmp	r2, ip
100049da:	d234      	bcs.n	10004a46 <__udivmoddi4+0x336>
100049dc:	18aa      	adds	r2, r5, r2
100049de:	f108 31ff 	add.w	r1, r8, #4294967295
100049e2:	bf2c      	ite	cs
100049e4:	f04f 0901 	movcs.w	r9, #1
100049e8:	f04f 0900 	movcc.w	r9, #0
100049ec:	4562      	cmp	r2, ip
100049ee:	d2be      	bcs.n	1000496e <__udivmoddi4+0x25e>
100049f0:	f1b9 0f00 	cmp.w	r9, #0
100049f4:	d1bb      	bne.n	1000496e <__udivmoddi4+0x25e>
100049f6:	f1a8 0102 	sub.w	r1, r8, #2
100049fa:	442a      	add	r2, r5
100049fc:	e7b7      	b.n	1000496e <__udivmoddi4+0x25e>
100049fe:	1a84      	subs	r4, r0, r2
10004a00:	eb6c 0203 	sbc.w	r2, ip, r3
10004a04:	2001      	movs	r0, #1
10004a06:	4617      	mov	r7, r2
10004a08:	e6e7      	b.n	100047da <__udivmoddi4+0xca>
10004a0a:	442c      	add	r4, r5
10004a0c:	3802      	subs	r0, #2
10004a0e:	e72b      	b.n	10004868 <__udivmoddi4+0x158>
10004a10:	f1ac 0c02 	sub.w	ip, ip, #2
10004a14:	442a      	add	r2, r5
10004a16:	e70c      	b.n	10004832 <__udivmoddi4+0x122>
10004a18:	3902      	subs	r1, #2
10004a1a:	442a      	add	r2, r5
10004a1c:	e6a5      	b.n	1000476a <__udivmoddi4+0x5a>
10004a1e:	442c      	add	r4, r5
10004a20:	3802      	subs	r0, #2
10004a22:	e6ba      	b.n	1000479a <__udivmoddi4+0x8a>
10004a24:	eba5 0c0c 	sub.w	ip, r5, ip
10004a28:	f1a8 0002 	sub.w	r0, r8, #2
10004a2c:	4461      	add	r1, ip
10004a2e:	fbb1 f8fe 	udiv	r8, r1, lr
10004a32:	fb08 fc07 	mul.w	ip, r8, r7
10004a36:	e7ca      	b.n	100049ce <__udivmoddi4+0x2be>
10004a38:	f1a8 0802 	sub.w	r8, r8, #2
10004a3c:	443c      	add	r4, r7
10004a3e:	e744      	b.n	100048ca <__udivmoddi4+0x1ba>
10004a40:	3b02      	subs	r3, #2
10004a42:	443c      	add	r4, r7
10004a44:	e75e      	b.n	10004904 <__udivmoddi4+0x1f4>
10004a46:	4641      	mov	r1, r8
10004a48:	e791      	b.n	1000496e <__udivmoddi4+0x25e>
10004a4a:	eba1 010c 	sub.w	r1, r1, ip
10004a4e:	4640      	mov	r0, r8
10004a50:	fbb1 f8fe 	udiv	r8, r1, lr
10004a54:	fb08 fc07 	mul.w	ip, r8, r7
10004a58:	e7b9      	b.n	100049ce <__udivmoddi4+0x2be>
10004a5a:	bf00      	nop

10004a5c <__aeabi_idiv0>:
10004a5c:	4770      	bx	lr
10004a5e:	bf00      	nop

10004a60 <sbrk_aligned>:
10004a60:	b570      	push	{r4, r5, r6, lr}
10004a62:	4e0f      	ldr	r6, [pc, #60]	@ (10004aa0 <sbrk_aligned+0x40>)
10004a64:	460c      	mov	r4, r1
10004a66:	4605      	mov	r5, r0
10004a68:	6831      	ldr	r1, [r6, #0]
10004a6a:	b911      	cbnz	r1, 10004a72 <sbrk_aligned+0x12>
10004a6c:	f000 fae4 	bl	10005038 <_sbrk_r>
10004a70:	6030      	str	r0, [r6, #0]
10004a72:	4621      	mov	r1, r4
10004a74:	4628      	mov	r0, r5
10004a76:	f000 fadf 	bl	10005038 <_sbrk_r>
10004a7a:	1c43      	adds	r3, r0, #1
10004a7c:	d103      	bne.n	10004a86 <sbrk_aligned+0x26>
10004a7e:	f04f 34ff 	mov.w	r4, #4294967295
10004a82:	4620      	mov	r0, r4
10004a84:	bd70      	pop	{r4, r5, r6, pc}
10004a86:	1cc4      	adds	r4, r0, #3
10004a88:	f024 0403 	bic.w	r4, r4, #3
10004a8c:	42a0      	cmp	r0, r4
10004a8e:	d0f8      	beq.n	10004a82 <sbrk_aligned+0x22>
10004a90:	1a21      	subs	r1, r4, r0
10004a92:	4628      	mov	r0, r5
10004a94:	f000 fad0 	bl	10005038 <_sbrk_r>
10004a98:	3001      	adds	r0, #1
10004a9a:	d1f2      	bne.n	10004a82 <sbrk_aligned+0x22>
10004a9c:	e7ef      	b.n	10004a7e <sbrk_aligned+0x1e>
10004a9e:	bf00      	nop
10004aa0:	20005af8 	.word	0x20005af8

10004aa4 <_malloc_r>:
10004aa4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
10004aa8:	1ccd      	adds	r5, r1, #3
10004aaa:	4606      	mov	r6, r0
10004aac:	f025 0503 	bic.w	r5, r5, #3
10004ab0:	3508      	adds	r5, #8
10004ab2:	2d0c      	cmp	r5, #12
10004ab4:	bf38      	it	cc
10004ab6:	250c      	movcc	r5, #12
10004ab8:	2d00      	cmp	r5, #0
10004aba:	db01      	blt.n	10004ac0 <_malloc_r+0x1c>
10004abc:	42a9      	cmp	r1, r5
10004abe:	d904      	bls.n	10004aca <_malloc_r+0x26>
10004ac0:	230c      	movs	r3, #12
10004ac2:	6033      	str	r3, [r6, #0]
10004ac4:	2000      	movs	r0, #0
10004ac6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
10004aca:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ 10004ba0 <_malloc_r+0xfc>
10004ace:	f000 f869 	bl	10004ba4 <__malloc_lock>
10004ad2:	f8d8 3000 	ldr.w	r3, [r8]
10004ad6:	461c      	mov	r4, r3
10004ad8:	bb44      	cbnz	r4, 10004b2c <_malloc_r+0x88>
10004ada:	4629      	mov	r1, r5
10004adc:	4630      	mov	r0, r6
10004ade:	f7ff ffbf 	bl	10004a60 <sbrk_aligned>
10004ae2:	1c43      	adds	r3, r0, #1
10004ae4:	4604      	mov	r4, r0
10004ae6:	d158      	bne.n	10004b9a <_malloc_r+0xf6>
10004ae8:	f8d8 4000 	ldr.w	r4, [r8]
10004aec:	4627      	mov	r7, r4
10004aee:	2f00      	cmp	r7, #0
10004af0:	d143      	bne.n	10004b7a <_malloc_r+0xd6>
10004af2:	2c00      	cmp	r4, #0
10004af4:	d04b      	beq.n	10004b8e <_malloc_r+0xea>
10004af6:	6823      	ldr	r3, [r4, #0]
10004af8:	4639      	mov	r1, r7
10004afa:	4630      	mov	r0, r6
10004afc:	eb04 0903 	add.w	r9, r4, r3
10004b00:	f000 fa9a 	bl	10005038 <_sbrk_r>
10004b04:	4581      	cmp	r9, r0
10004b06:	d142      	bne.n	10004b8e <_malloc_r+0xea>
10004b08:	6821      	ldr	r1, [r4, #0]
10004b0a:	4630      	mov	r0, r6
10004b0c:	1a6d      	subs	r5, r5, r1
10004b0e:	4629      	mov	r1, r5
10004b10:	f7ff ffa6 	bl	10004a60 <sbrk_aligned>
10004b14:	3001      	adds	r0, #1
10004b16:	d03a      	beq.n	10004b8e <_malloc_r+0xea>
10004b18:	6823      	ldr	r3, [r4, #0]
10004b1a:	442b      	add	r3, r5
10004b1c:	6023      	str	r3, [r4, #0]
10004b1e:	f8d8 3000 	ldr.w	r3, [r8]
10004b22:	685a      	ldr	r2, [r3, #4]
10004b24:	bb62      	cbnz	r2, 10004b80 <_malloc_r+0xdc>
10004b26:	f8c8 7000 	str.w	r7, [r8]
10004b2a:	e00f      	b.n	10004b4c <_malloc_r+0xa8>
10004b2c:	6822      	ldr	r2, [r4, #0]
10004b2e:	1b52      	subs	r2, r2, r5
10004b30:	d420      	bmi.n	10004b74 <_malloc_r+0xd0>
10004b32:	2a0b      	cmp	r2, #11
10004b34:	d917      	bls.n	10004b66 <_malloc_r+0xc2>
10004b36:	1961      	adds	r1, r4, r5
10004b38:	42a3      	cmp	r3, r4
10004b3a:	6025      	str	r5, [r4, #0]
10004b3c:	bf18      	it	ne
10004b3e:	6059      	strne	r1, [r3, #4]
10004b40:	6863      	ldr	r3, [r4, #4]
10004b42:	bf08      	it	eq
10004b44:	f8c8 1000 	streq.w	r1, [r8]
10004b48:	5162      	str	r2, [r4, r5]
10004b4a:	604b      	str	r3, [r1, #4]
10004b4c:	4630      	mov	r0, r6
10004b4e:	f000 f82f 	bl	10004bb0 <__malloc_unlock>
10004b52:	f104 000b 	add.w	r0, r4, #11
10004b56:	1d23      	adds	r3, r4, #4
10004b58:	f020 0007 	bic.w	r0, r0, #7
10004b5c:	1ac2      	subs	r2, r0, r3
10004b5e:	bf1c      	itt	ne
10004b60:	1a1b      	subne	r3, r3, r0
10004b62:	50a3      	strne	r3, [r4, r2]
10004b64:	e7af      	b.n	10004ac6 <_malloc_r+0x22>
10004b66:	6862      	ldr	r2, [r4, #4]
10004b68:	42a3      	cmp	r3, r4
10004b6a:	bf0c      	ite	eq
10004b6c:	f8c8 2000 	streq.w	r2, [r8]
10004b70:	605a      	strne	r2, [r3, #4]
10004b72:	e7eb      	b.n	10004b4c <_malloc_r+0xa8>
10004b74:	4623      	mov	r3, r4
10004b76:	6864      	ldr	r4, [r4, #4]
10004b78:	e7ae      	b.n	10004ad8 <_malloc_r+0x34>
10004b7a:	463c      	mov	r4, r7
10004b7c:	687f      	ldr	r7, [r7, #4]
10004b7e:	e7b6      	b.n	10004aee <_malloc_r+0x4a>
10004b80:	461a      	mov	r2, r3
10004b82:	685b      	ldr	r3, [r3, #4]
10004b84:	42a3      	cmp	r3, r4
10004b86:	d1fb      	bne.n	10004b80 <_malloc_r+0xdc>
10004b88:	2300      	movs	r3, #0
10004b8a:	6053      	str	r3, [r2, #4]
10004b8c:	e7de      	b.n	10004b4c <_malloc_r+0xa8>
10004b8e:	230c      	movs	r3, #12
10004b90:	4630      	mov	r0, r6
10004b92:	6033      	str	r3, [r6, #0]
10004b94:	f000 f80c 	bl	10004bb0 <__malloc_unlock>
10004b98:	e794      	b.n	10004ac4 <_malloc_r+0x20>
10004b9a:	6005      	str	r5, [r0, #0]
10004b9c:	e7d6      	b.n	10004b4c <_malloc_r+0xa8>
10004b9e:	bf00      	nop
10004ba0:	20005afc 	.word	0x20005afc

10004ba4 <__malloc_lock>:
10004ba4:	4801      	ldr	r0, [pc, #4]	@ (10004bac <__malloc_lock+0x8>)
10004ba6:	f000 ba6a 	b.w	1000507e <__retarget_lock_acquire_recursive>
10004baa:	bf00      	nop
10004bac:	20005c40 	.word	0x20005c40

10004bb0 <__malloc_unlock>:
10004bb0:	4801      	ldr	r0, [pc, #4]	@ (10004bb8 <__malloc_unlock+0x8>)
10004bb2:	f000 ba65 	b.w	10005080 <__retarget_lock_release_recursive>
10004bb6:	bf00      	nop
10004bb8:	20005c40 	.word	0x20005c40

10004bbc <std>:
10004bbc:	2300      	movs	r3, #0
10004bbe:	b510      	push	{r4, lr}
10004bc0:	4604      	mov	r4, r0
10004bc2:	6083      	str	r3, [r0, #8]
10004bc4:	8181      	strh	r1, [r0, #12]
10004bc6:	4619      	mov	r1, r3
10004bc8:	6643      	str	r3, [r0, #100]	@ 0x64
10004bca:	81c2      	strh	r2, [r0, #14]
10004bcc:	2208      	movs	r2, #8
10004bce:	6183      	str	r3, [r0, #24]
10004bd0:	e9c0 3300 	strd	r3, r3, [r0]
10004bd4:	e9c0 3304 	strd	r3, r3, [r0, #16]
10004bd8:	305c      	adds	r0, #92	@ 0x5c
10004bda:	f000 ffdd 	bl	10005b98 <__memset_veneer>
10004bde:	4b0d      	ldr	r3, [pc, #52]	@ (10004c14 <std+0x58>)
10004be0:	6224      	str	r4, [r4, #32]
10004be2:	6263      	str	r3, [r4, #36]	@ 0x24
10004be4:	4b0c      	ldr	r3, [pc, #48]	@ (10004c18 <std+0x5c>)
10004be6:	62a3      	str	r3, [r4, #40]	@ 0x28
10004be8:	4b0c      	ldr	r3, [pc, #48]	@ (10004c1c <std+0x60>)
10004bea:	62e3      	str	r3, [r4, #44]	@ 0x2c
10004bec:	4b0c      	ldr	r3, [pc, #48]	@ (10004c20 <std+0x64>)
10004bee:	6323      	str	r3, [r4, #48]	@ 0x30
10004bf0:	4b0c      	ldr	r3, [pc, #48]	@ (10004c24 <std+0x68>)
10004bf2:	429c      	cmp	r4, r3
10004bf4:	d006      	beq.n	10004c04 <std+0x48>
10004bf6:	f103 0268 	add.w	r2, r3, #104	@ 0x68
10004bfa:	4294      	cmp	r4, r2
10004bfc:	d002      	beq.n	10004c04 <std+0x48>
10004bfe:	33d0      	adds	r3, #208	@ 0xd0
10004c00:	429c      	cmp	r4, r3
10004c02:	d105      	bne.n	10004c10 <std+0x54>
10004c04:	f104 0058 	add.w	r0, r4, #88	@ 0x58
10004c08:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
10004c0c:	f000 ba36 	b.w	1000507c <__retarget_lock_init_recursive>
10004c10:	bd10      	pop	{r4, pc}
10004c12:	bf00      	nop
10004c14:	10004e25 	.word	0x10004e25
10004c18:	10004e47 	.word	0x10004e47
10004c1c:	10004e7f 	.word	0x10004e7f
10004c20:	10004ea5 	.word	0x10004ea5
10004c24:	20005b00 	.word	0x20005b00

10004c28 <stdio_exit_handler>:
10004c28:	4a02      	ldr	r2, [pc, #8]	@ (10004c34 <stdio_exit_handler+0xc>)
10004c2a:	4903      	ldr	r1, [pc, #12]	@ (10004c38 <stdio_exit_handler+0x10>)
10004c2c:	4803      	ldr	r0, [pc, #12]	@ (10004c3c <stdio_exit_handler+0x14>)
10004c2e:	f000 b86b 	b.w	10004d08 <_fwalk_sglue>
10004c32:	bf00      	nop
10004c34:	2000598c 	.word	0x2000598c
10004c38:	100057d9 	.word	0x100057d9
10004c3c:	2000599c 	.word	0x2000599c

10004c40 <cleanup_stdio>:
10004c40:	6841      	ldr	r1, [r0, #4]
10004c42:	4b0c      	ldr	r3, [pc, #48]	@ (10004c74 <cleanup_stdio+0x34>)
10004c44:	4299      	cmp	r1, r3
10004c46:	b510      	push	{r4, lr}
10004c48:	4604      	mov	r4, r0
10004c4a:	d001      	beq.n	10004c50 <cleanup_stdio+0x10>
10004c4c:	f000 fdc4 	bl	100057d8 <_fflush_r>
10004c50:	68a1      	ldr	r1, [r4, #8]
10004c52:	4b09      	ldr	r3, [pc, #36]	@ (10004c78 <cleanup_stdio+0x38>)
10004c54:	4299      	cmp	r1, r3
10004c56:	d002      	beq.n	10004c5e <cleanup_stdio+0x1e>
10004c58:	4620      	mov	r0, r4
10004c5a:	f000 fdbd 	bl	100057d8 <_fflush_r>
10004c5e:	68e1      	ldr	r1, [r4, #12]
10004c60:	4b06      	ldr	r3, [pc, #24]	@ (10004c7c <cleanup_stdio+0x3c>)
10004c62:	4299      	cmp	r1, r3
10004c64:	d004      	beq.n	10004c70 <cleanup_stdio+0x30>
10004c66:	4620      	mov	r0, r4
10004c68:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
10004c6c:	f000 bdb4 	b.w	100057d8 <_fflush_r>
10004c70:	bd10      	pop	{r4, pc}
10004c72:	bf00      	nop
10004c74:	20005b00 	.word	0x20005b00
10004c78:	20005b68 	.word	0x20005b68
10004c7c:	20005bd0 	.word	0x20005bd0

10004c80 <global_stdio_init.part.0>:
10004c80:	4b0c      	ldr	r3, [pc, #48]	@ (10004cb4 <global_stdio_init.part.0+0x34>)
10004c82:	2104      	movs	r1, #4
10004c84:	4a0c      	ldr	r2, [pc, #48]	@ (10004cb8 <global_stdio_init.part.0+0x38>)
10004c86:	480d      	ldr	r0, [pc, #52]	@ (10004cbc <global_stdio_init.part.0+0x3c>)
10004c88:	b510      	push	{r4, lr}
10004c8a:	601a      	str	r2, [r3, #0]
10004c8c:	2200      	movs	r2, #0
10004c8e:	f7ff ff95 	bl	10004bbc <std>
10004c92:	4b0a      	ldr	r3, [pc, #40]	@ (10004cbc <global_stdio_init.part.0+0x3c>)
10004c94:	2201      	movs	r2, #1
10004c96:	2109      	movs	r1, #9
10004c98:	461c      	mov	r4, r3
10004c9a:	f103 0068 	add.w	r0, r3, #104	@ 0x68
10004c9e:	f7ff ff8d 	bl	10004bbc <std>
10004ca2:	2202      	movs	r2, #2
10004ca4:	f104 00d0 	add.w	r0, r4, #208	@ 0xd0
10004ca8:	2112      	movs	r1, #18
10004caa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
10004cae:	f7ff bf85 	b.w	10004bbc <std>
10004cb2:	bf00      	nop
10004cb4:	20005c38 	.word	0x20005c38
10004cb8:	10004c29 	.word	0x10004c29
10004cbc:	20005b00 	.word	0x20005b00

10004cc0 <__sfp_lock_acquire>:
10004cc0:	4801      	ldr	r0, [pc, #4]	@ (10004cc8 <__sfp_lock_acquire+0x8>)
10004cc2:	f000 b9dc 	b.w	1000507e <__retarget_lock_acquire_recursive>
10004cc6:	bf00      	nop
10004cc8:	20005c41 	.word	0x20005c41

10004ccc <__sfp_lock_release>:
10004ccc:	4801      	ldr	r0, [pc, #4]	@ (10004cd4 <__sfp_lock_release+0x8>)
10004cce:	f000 b9d7 	b.w	10005080 <__retarget_lock_release_recursive>
10004cd2:	bf00      	nop
10004cd4:	20005c41 	.word	0x20005c41

10004cd8 <__sinit>:
10004cd8:	b510      	push	{r4, lr}
10004cda:	4604      	mov	r4, r0
10004cdc:	f7ff fff0 	bl	10004cc0 <__sfp_lock_acquire>
10004ce0:	6a23      	ldr	r3, [r4, #32]
10004ce2:	b11b      	cbz	r3, 10004cec <__sinit+0x14>
10004ce4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
10004ce8:	f7ff bff0 	b.w	10004ccc <__sfp_lock_release>
10004cec:	4b04      	ldr	r3, [pc, #16]	@ (10004d00 <__sinit+0x28>)
10004cee:	6223      	str	r3, [r4, #32]
10004cf0:	4b04      	ldr	r3, [pc, #16]	@ (10004d04 <__sinit+0x2c>)
10004cf2:	681b      	ldr	r3, [r3, #0]
10004cf4:	2b00      	cmp	r3, #0
10004cf6:	d1f5      	bne.n	10004ce4 <__sinit+0xc>
10004cf8:	f7ff ffc2 	bl	10004c80 <global_stdio_init.part.0>
10004cfc:	e7f2      	b.n	10004ce4 <__sinit+0xc>
10004cfe:	bf00      	nop
10004d00:	10004c41 	.word	0x10004c41
10004d04:	20005c38 	.word	0x20005c38

10004d08 <_fwalk_sglue>:
10004d08:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
10004d0c:	4607      	mov	r7, r0
10004d0e:	4688      	mov	r8, r1
10004d10:	4614      	mov	r4, r2
10004d12:	2600      	movs	r6, #0
10004d14:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
10004d18:	f1b9 0901 	subs.w	r9, r9, #1
10004d1c:	d505      	bpl.n	10004d2a <_fwalk_sglue+0x22>
10004d1e:	6824      	ldr	r4, [r4, #0]
10004d20:	2c00      	cmp	r4, #0
10004d22:	d1f7      	bne.n	10004d14 <_fwalk_sglue+0xc>
10004d24:	4630      	mov	r0, r6
10004d26:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
10004d2a:	89ab      	ldrh	r3, [r5, #12]
10004d2c:	2b01      	cmp	r3, #1
10004d2e:	d907      	bls.n	10004d40 <_fwalk_sglue+0x38>
10004d30:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
10004d34:	3301      	adds	r3, #1
10004d36:	d003      	beq.n	10004d40 <_fwalk_sglue+0x38>
10004d38:	4629      	mov	r1, r5
10004d3a:	4638      	mov	r0, r7
10004d3c:	47c0      	blx	r8
10004d3e:	4306      	orrs	r6, r0
10004d40:	3568      	adds	r5, #104	@ 0x68
10004d42:	e7e9      	b.n	10004d18 <_fwalk_sglue+0x10>

10004d44 <iprintf>:
10004d44:	b40f      	push	{r0, r1, r2, r3}
10004d46:	b507      	push	{r0, r1, r2, lr}
10004d48:	4906      	ldr	r1, [pc, #24]	@ (10004d64 <iprintf+0x20>)
10004d4a:	ab04      	add	r3, sp, #16
10004d4c:	6808      	ldr	r0, [r1, #0]
10004d4e:	f853 2b04 	ldr.w	r2, [r3], #4
10004d52:	6881      	ldr	r1, [r0, #8]
10004d54:	9301      	str	r3, [sp, #4]
10004d56:	f000 fa15 	bl	10005184 <_vfiprintf_r>
10004d5a:	b003      	add	sp, #12
10004d5c:	f85d eb04 	ldr.w	lr, [sp], #4
10004d60:	b004      	add	sp, #16
10004d62:	4770      	bx	lr
10004d64:	20005998 	.word	0x20005998

10004d68 <_puts_r>:
10004d68:	6a03      	ldr	r3, [r0, #32]
10004d6a:	b570      	push	{r4, r5, r6, lr}
10004d6c:	4605      	mov	r5, r0
10004d6e:	460e      	mov	r6, r1
10004d70:	6884      	ldr	r4, [r0, #8]
10004d72:	b90b      	cbnz	r3, 10004d78 <_puts_r+0x10>
10004d74:	f7ff ffb0 	bl	10004cd8 <__sinit>
10004d78:	6e63      	ldr	r3, [r4, #100]	@ 0x64
10004d7a:	07db      	lsls	r3, r3, #31
10004d7c:	d405      	bmi.n	10004d8a <_puts_r+0x22>
10004d7e:	89a3      	ldrh	r3, [r4, #12]
10004d80:	0598      	lsls	r0, r3, #22
10004d82:	d402      	bmi.n	10004d8a <_puts_r+0x22>
10004d84:	6da0      	ldr	r0, [r4, #88]	@ 0x58
10004d86:	f000 f97a 	bl	1000507e <__retarget_lock_acquire_recursive>
10004d8a:	89a3      	ldrh	r3, [r4, #12]
10004d8c:	0719      	lsls	r1, r3, #28
10004d8e:	d502      	bpl.n	10004d96 <_puts_r+0x2e>
10004d90:	6923      	ldr	r3, [r4, #16]
10004d92:	2b00      	cmp	r3, #0
10004d94:	d135      	bne.n	10004e02 <_puts_r+0x9a>
10004d96:	4621      	mov	r1, r4
10004d98:	4628      	mov	r0, r5
10004d9a:	f000 f8c5 	bl	10004f28 <__swsetup_r>
10004d9e:	b380      	cbz	r0, 10004e02 <_puts_r+0x9a>
10004da0:	f04f 35ff 	mov.w	r5, #4294967295
10004da4:	6e63      	ldr	r3, [r4, #100]	@ 0x64
10004da6:	07da      	lsls	r2, r3, #31
10004da8:	d405      	bmi.n	10004db6 <_puts_r+0x4e>
10004daa:	89a3      	ldrh	r3, [r4, #12]
10004dac:	059b      	lsls	r3, r3, #22
10004dae:	d402      	bmi.n	10004db6 <_puts_r+0x4e>
10004db0:	6da0      	ldr	r0, [r4, #88]	@ 0x58
10004db2:	f000 f965 	bl	10005080 <__retarget_lock_release_recursive>
10004db6:	4628      	mov	r0, r5
10004db8:	bd70      	pop	{r4, r5, r6, pc}
10004dba:	2b00      	cmp	r3, #0
10004dbc:	da04      	bge.n	10004dc8 <_puts_r+0x60>
10004dbe:	69a2      	ldr	r2, [r4, #24]
10004dc0:	4293      	cmp	r3, r2
10004dc2:	db17      	blt.n	10004df4 <_puts_r+0x8c>
10004dc4:	290a      	cmp	r1, #10
10004dc6:	d015      	beq.n	10004df4 <_puts_r+0x8c>
10004dc8:	6823      	ldr	r3, [r4, #0]
10004dca:	1c5a      	adds	r2, r3, #1
10004dcc:	6022      	str	r2, [r4, #0]
10004dce:	7019      	strb	r1, [r3, #0]
10004dd0:	68a3      	ldr	r3, [r4, #8]
10004dd2:	f816 1f01 	ldrb.w	r1, [r6, #1]!
10004dd6:	3b01      	subs	r3, #1
10004dd8:	60a3      	str	r3, [r4, #8]
10004dda:	2900      	cmp	r1, #0
10004ddc:	d1ed      	bne.n	10004dba <_puts_r+0x52>
10004dde:	2b00      	cmp	r3, #0
10004de0:	da11      	bge.n	10004e06 <_puts_r+0x9e>
10004de2:	4622      	mov	r2, r4
10004de4:	210a      	movs	r1, #10
10004de6:	4628      	mov	r0, r5
10004de8:	f000 f860 	bl	10004eac <__swbuf_r>
10004dec:	3001      	adds	r0, #1
10004dee:	d0d7      	beq.n	10004da0 <_puts_r+0x38>
10004df0:	250a      	movs	r5, #10
10004df2:	e7d7      	b.n	10004da4 <_puts_r+0x3c>
10004df4:	4622      	mov	r2, r4
10004df6:	4628      	mov	r0, r5
10004df8:	f000 f858 	bl	10004eac <__swbuf_r>
10004dfc:	3001      	adds	r0, #1
10004dfe:	d1e7      	bne.n	10004dd0 <_puts_r+0x68>
10004e00:	e7ce      	b.n	10004da0 <_puts_r+0x38>
10004e02:	3e01      	subs	r6, #1
10004e04:	e7e4      	b.n	10004dd0 <_puts_r+0x68>
10004e06:	6823      	ldr	r3, [r4, #0]
10004e08:	1c5a      	adds	r2, r3, #1
10004e0a:	6022      	str	r2, [r4, #0]
10004e0c:	220a      	movs	r2, #10
10004e0e:	701a      	strb	r2, [r3, #0]
10004e10:	e7ee      	b.n	10004df0 <_puts_r+0x88>
	...

10004e14 <puts>:
10004e14:	4b02      	ldr	r3, [pc, #8]	@ (10004e20 <puts+0xc>)
10004e16:	4601      	mov	r1, r0
10004e18:	6818      	ldr	r0, [r3, #0]
10004e1a:	f7ff bfa5 	b.w	10004d68 <_puts_r>
10004e1e:	bf00      	nop
10004e20:	20005998 	.word	0x20005998

10004e24 <__sread>:
10004e24:	b510      	push	{r4, lr}
10004e26:	460c      	mov	r4, r1
10004e28:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
10004e2c:	f000 f8f2 	bl	10005014 <_read_r>
10004e30:	2800      	cmp	r0, #0
10004e32:	bfab      	itete	ge
10004e34:	6d63      	ldrge	r3, [r4, #84]	@ 0x54
10004e36:	89a3      	ldrhlt	r3, [r4, #12]
10004e38:	181b      	addge	r3, r3, r0
10004e3a:	f423 5380 	biclt.w	r3, r3, #4096	@ 0x1000
10004e3e:	bfac      	ite	ge
10004e40:	6563      	strge	r3, [r4, #84]	@ 0x54
10004e42:	81a3      	strhlt	r3, [r4, #12]
10004e44:	bd10      	pop	{r4, pc}

10004e46 <__swrite>:
10004e46:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
10004e4a:	461f      	mov	r7, r3
10004e4c:	898b      	ldrh	r3, [r1, #12]
10004e4e:	4605      	mov	r5, r0
10004e50:	460c      	mov	r4, r1
10004e52:	05db      	lsls	r3, r3, #23
10004e54:	4616      	mov	r6, r2
10004e56:	d505      	bpl.n	10004e64 <__swrite+0x1e>
10004e58:	2302      	movs	r3, #2
10004e5a:	2200      	movs	r2, #0
10004e5c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
10004e60:	f000 f8c6 	bl	10004ff0 <_lseek_r>
10004e64:	89a3      	ldrh	r3, [r4, #12]
10004e66:	4632      	mov	r2, r6
10004e68:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
10004e6c:	4628      	mov	r0, r5
10004e6e:	f423 5380 	bic.w	r3, r3, #4096	@ 0x1000
10004e72:	81a3      	strh	r3, [r4, #12]
10004e74:	463b      	mov	r3, r7
10004e76:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
10004e7a:	f000 b8ed 	b.w	10005058 <_write_r>

10004e7e <__sseek>:
10004e7e:	b510      	push	{r4, lr}
10004e80:	460c      	mov	r4, r1
10004e82:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
10004e86:	f000 f8b3 	bl	10004ff0 <_lseek_r>
10004e8a:	1c42      	adds	r2, r0, #1
10004e8c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
10004e90:	bf15      	itete	ne
10004e92:	6560      	strne	r0, [r4, #84]	@ 0x54
10004e94:	f423 5380 	biceq.w	r3, r3, #4096	@ 0x1000
10004e98:	f443 5380 	orrne.w	r3, r3, #4096	@ 0x1000
10004e9c:	81a3      	strheq	r3, [r4, #12]
10004e9e:	bf18      	it	ne
10004ea0:	81a3      	strhne	r3, [r4, #12]
10004ea2:	bd10      	pop	{r4, pc}

10004ea4 <__sclose>:
10004ea4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
10004ea8:	f000 b892 	b.w	10004fd0 <_close_r>

10004eac <__swbuf_r>:
10004eac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10004eae:	460e      	mov	r6, r1
10004eb0:	4614      	mov	r4, r2
10004eb2:	4605      	mov	r5, r0
10004eb4:	b118      	cbz	r0, 10004ebe <__swbuf_r+0x12>
10004eb6:	6a03      	ldr	r3, [r0, #32]
10004eb8:	b90b      	cbnz	r3, 10004ebe <__swbuf_r+0x12>
10004eba:	f7ff ff0d 	bl	10004cd8 <__sinit>
10004ebe:	69a3      	ldr	r3, [r4, #24]
10004ec0:	60a3      	str	r3, [r4, #8]
10004ec2:	89a3      	ldrh	r3, [r4, #12]
10004ec4:	071a      	lsls	r2, r3, #28
10004ec6:	d501      	bpl.n	10004ecc <__swbuf_r+0x20>
10004ec8:	6923      	ldr	r3, [r4, #16]
10004eca:	b943      	cbnz	r3, 10004ede <__swbuf_r+0x32>
10004ecc:	4621      	mov	r1, r4
10004ece:	4628      	mov	r0, r5
10004ed0:	f000 f82a 	bl	10004f28 <__swsetup_r>
10004ed4:	b118      	cbz	r0, 10004ede <__swbuf_r+0x32>
10004ed6:	f04f 37ff 	mov.w	r7, #4294967295
10004eda:	4638      	mov	r0, r7
10004edc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10004ede:	6823      	ldr	r3, [r4, #0]
10004ee0:	b2f6      	uxtb	r6, r6
10004ee2:	6922      	ldr	r2, [r4, #16]
10004ee4:	4637      	mov	r7, r6
10004ee6:	1a98      	subs	r0, r3, r2
10004ee8:	6963      	ldr	r3, [r4, #20]
10004eea:	4283      	cmp	r3, r0
10004eec:	dc05      	bgt.n	10004efa <__swbuf_r+0x4e>
10004eee:	4621      	mov	r1, r4
10004ef0:	4628      	mov	r0, r5
10004ef2:	f000 fc71 	bl	100057d8 <_fflush_r>
10004ef6:	2800      	cmp	r0, #0
10004ef8:	d1ed      	bne.n	10004ed6 <__swbuf_r+0x2a>
10004efa:	68a3      	ldr	r3, [r4, #8]
10004efc:	3b01      	subs	r3, #1
10004efe:	60a3      	str	r3, [r4, #8]
10004f00:	6823      	ldr	r3, [r4, #0]
10004f02:	1c5a      	adds	r2, r3, #1
10004f04:	6022      	str	r2, [r4, #0]
10004f06:	701e      	strb	r6, [r3, #0]
10004f08:	1c43      	adds	r3, r0, #1
10004f0a:	6962      	ldr	r2, [r4, #20]
10004f0c:	429a      	cmp	r2, r3
10004f0e:	d004      	beq.n	10004f1a <__swbuf_r+0x6e>
10004f10:	89a3      	ldrh	r3, [r4, #12]
10004f12:	07db      	lsls	r3, r3, #31
10004f14:	d5e1      	bpl.n	10004eda <__swbuf_r+0x2e>
10004f16:	2e0a      	cmp	r6, #10
10004f18:	d1df      	bne.n	10004eda <__swbuf_r+0x2e>
10004f1a:	4621      	mov	r1, r4
10004f1c:	4628      	mov	r0, r5
10004f1e:	f000 fc5b 	bl	100057d8 <_fflush_r>
10004f22:	2800      	cmp	r0, #0
10004f24:	d0d9      	beq.n	10004eda <__swbuf_r+0x2e>
10004f26:	e7d6      	b.n	10004ed6 <__swbuf_r+0x2a>

10004f28 <__swsetup_r>:
10004f28:	b538      	push	{r3, r4, r5, lr}
10004f2a:	4b28      	ldr	r3, [pc, #160]	@ (10004fcc <__swsetup_r+0xa4>)
10004f2c:	4605      	mov	r5, r0
10004f2e:	460c      	mov	r4, r1
10004f30:	6818      	ldr	r0, [r3, #0]
10004f32:	b118      	cbz	r0, 10004f3c <__swsetup_r+0x14>
10004f34:	6a03      	ldr	r3, [r0, #32]
10004f36:	b90b      	cbnz	r3, 10004f3c <__swsetup_r+0x14>
10004f38:	f7ff fece 	bl	10004cd8 <__sinit>
10004f3c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
10004f40:	071a      	lsls	r2, r3, #28
10004f42:	d421      	bmi.n	10004f88 <__swsetup_r+0x60>
10004f44:	06d8      	lsls	r0, r3, #27
10004f46:	d407      	bmi.n	10004f58 <__swsetup_r+0x30>
10004f48:	2209      	movs	r2, #9
10004f4a:	602a      	str	r2, [r5, #0]
10004f4c:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
10004f50:	f04f 30ff 	mov.w	r0, #4294967295
10004f54:	81a3      	strh	r3, [r4, #12]
10004f56:	e030      	b.n	10004fba <__swsetup_r+0x92>
10004f58:	0759      	lsls	r1, r3, #29
10004f5a:	d512      	bpl.n	10004f82 <__swsetup_r+0x5a>
10004f5c:	6b61      	ldr	r1, [r4, #52]	@ 0x34
10004f5e:	b141      	cbz	r1, 10004f72 <__swsetup_r+0x4a>
10004f60:	f104 0344 	add.w	r3, r4, #68	@ 0x44
10004f64:	4299      	cmp	r1, r3
10004f66:	d002      	beq.n	10004f6e <__swsetup_r+0x46>
10004f68:	4628      	mov	r0, r5
10004f6a:	f000 f897 	bl	1000509c <_free_r>
10004f6e:	2300      	movs	r3, #0
10004f70:	6363      	str	r3, [r4, #52]	@ 0x34
10004f72:	2200      	movs	r2, #0
10004f74:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
10004f78:	6062      	str	r2, [r4, #4]
10004f7a:	f023 0324 	bic.w	r3, r3, #36	@ 0x24
10004f7e:	6922      	ldr	r2, [r4, #16]
10004f80:	6022      	str	r2, [r4, #0]
10004f82:	f043 0308 	orr.w	r3, r3, #8
10004f86:	81a3      	strh	r3, [r4, #12]
10004f88:	6922      	ldr	r2, [r4, #16]
10004f8a:	b93a      	cbnz	r2, 10004f9c <__swsetup_r+0x74>
10004f8c:	059a      	lsls	r2, r3, #22
10004f8e:	d501      	bpl.n	10004f94 <__swsetup_r+0x6c>
10004f90:	0618      	lsls	r0, r3, #24
10004f92:	d503      	bpl.n	10004f9c <__swsetup_r+0x74>
10004f94:	4621      	mov	r1, r4
10004f96:	4628      	mov	r0, r5
10004f98:	f000 fc6a 	bl	10005870 <__smakebuf_r>
10004f9c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
10004fa0:	f013 0201 	ands.w	r2, r3, #1
10004fa4:	d00a      	beq.n	10004fbc <__swsetup_r+0x94>
10004fa6:	2200      	movs	r2, #0
10004fa8:	60a2      	str	r2, [r4, #8]
10004faa:	6962      	ldr	r2, [r4, #20]
10004fac:	4252      	negs	r2, r2
10004fae:	61a2      	str	r2, [r4, #24]
10004fb0:	6922      	ldr	r2, [r4, #16]
10004fb2:	b942      	cbnz	r2, 10004fc6 <__swsetup_r+0x9e>
10004fb4:	f013 0080 	ands.w	r0, r3, #128	@ 0x80
10004fb8:	d1c8      	bne.n	10004f4c <__swsetup_r+0x24>
10004fba:	bd38      	pop	{r3, r4, r5, pc}
10004fbc:	0799      	lsls	r1, r3, #30
10004fbe:	bf58      	it	pl
10004fc0:	6962      	ldrpl	r2, [r4, #20]
10004fc2:	60a2      	str	r2, [r4, #8]
10004fc4:	e7f4      	b.n	10004fb0 <__swsetup_r+0x88>
10004fc6:	2000      	movs	r0, #0
10004fc8:	e7f7      	b.n	10004fba <__swsetup_r+0x92>
10004fca:	bf00      	nop
10004fcc:	20005998 	.word	0x20005998

10004fd0 <_close_r>:
10004fd0:	b538      	push	{r3, r4, r5, lr}
10004fd2:	2300      	movs	r3, #0
10004fd4:	4d05      	ldr	r5, [pc, #20]	@ (10004fec <_close_r+0x1c>)
10004fd6:	4604      	mov	r4, r0
10004fd8:	4608      	mov	r0, r1
10004fda:	602b      	str	r3, [r5, #0]
10004fdc:	f000 fcb2 	bl	10005944 <_close>
10004fe0:	1c43      	adds	r3, r0, #1
10004fe2:	d102      	bne.n	10004fea <_close_r+0x1a>
10004fe4:	682b      	ldr	r3, [r5, #0]
10004fe6:	b103      	cbz	r3, 10004fea <_close_r+0x1a>
10004fe8:	6023      	str	r3, [r4, #0]
10004fea:	bd38      	pop	{r3, r4, r5, pc}
10004fec:	20005c3c 	.word	0x20005c3c

10004ff0 <_lseek_r>:
10004ff0:	b538      	push	{r3, r4, r5, lr}
10004ff2:	4604      	mov	r4, r0
10004ff4:	4d06      	ldr	r5, [pc, #24]	@ (10005010 <_lseek_r+0x20>)
10004ff6:	4608      	mov	r0, r1
10004ff8:	4611      	mov	r1, r2
10004ffa:	2200      	movs	r2, #0
10004ffc:	602a      	str	r2, [r5, #0]
10004ffe:	461a      	mov	r2, r3
10005000:	f000 fcb8 	bl	10005974 <_lseek>
10005004:	1c43      	adds	r3, r0, #1
10005006:	d102      	bne.n	1000500e <_lseek_r+0x1e>
10005008:	682b      	ldr	r3, [r5, #0]
1000500a:	b103      	cbz	r3, 1000500e <_lseek_r+0x1e>
1000500c:	6023      	str	r3, [r4, #0]
1000500e:	bd38      	pop	{r3, r4, r5, pc}
10005010:	20005c3c 	.word	0x20005c3c

10005014 <_read_r>:
10005014:	b538      	push	{r3, r4, r5, lr}
10005016:	4604      	mov	r4, r0
10005018:	4d06      	ldr	r5, [pc, #24]	@ (10005034 <_read_r+0x20>)
1000501a:	4608      	mov	r0, r1
1000501c:	4611      	mov	r1, r2
1000501e:	2200      	movs	r2, #0
10005020:	602a      	str	r2, [r5, #0]
10005022:	461a      	mov	r2, r3
10005024:	f000 fcae 	bl	10005984 <_read>
10005028:	1c43      	adds	r3, r0, #1
1000502a:	d102      	bne.n	10005032 <_read_r+0x1e>
1000502c:	682b      	ldr	r3, [r5, #0]
1000502e:	b103      	cbz	r3, 10005032 <_read_r+0x1e>
10005030:	6023      	str	r3, [r4, #0]
10005032:	bd38      	pop	{r3, r4, r5, pc}
10005034:	20005c3c 	.word	0x20005c3c

10005038 <_sbrk_r>:
10005038:	b538      	push	{r3, r4, r5, lr}
1000503a:	2300      	movs	r3, #0
1000503c:	4d05      	ldr	r5, [pc, #20]	@ (10005054 <_sbrk_r+0x1c>)
1000503e:	4604      	mov	r4, r0
10005040:	4608      	mov	r0, r1
10005042:	602b      	str	r3, [r5, #0]
10005044:	f000 fca6 	bl	10005994 <_sbrk>
10005048:	1c43      	adds	r3, r0, #1
1000504a:	d102      	bne.n	10005052 <_sbrk_r+0x1a>
1000504c:	682b      	ldr	r3, [r5, #0]
1000504e:	b103      	cbz	r3, 10005052 <_sbrk_r+0x1a>
10005050:	6023      	str	r3, [r4, #0]
10005052:	bd38      	pop	{r3, r4, r5, pc}
10005054:	20005c3c 	.word	0x20005c3c

10005058 <_write_r>:
10005058:	b538      	push	{r3, r4, r5, lr}
1000505a:	4604      	mov	r4, r0
1000505c:	4d06      	ldr	r5, [pc, #24]	@ (10005078 <_write_r+0x20>)
1000505e:	4608      	mov	r0, r1
10005060:	4611      	mov	r1, r2
10005062:	2200      	movs	r2, #0
10005064:	602a      	str	r2, [r5, #0]
10005066:	461a      	mov	r2, r3
10005068:	f7ff fada 	bl	10004620 <_write>
1000506c:	1c43      	adds	r3, r0, #1
1000506e:	d102      	bne.n	10005076 <_write_r+0x1e>
10005070:	682b      	ldr	r3, [r5, #0]
10005072:	b103      	cbz	r3, 10005076 <_write_r+0x1e>
10005074:	6023      	str	r3, [r4, #0]
10005076:	bd38      	pop	{r3, r4, r5, pc}
10005078:	20005c3c 	.word	0x20005c3c

1000507c <__retarget_lock_init_recursive>:
1000507c:	4770      	bx	lr

1000507e <__retarget_lock_acquire_recursive>:
1000507e:	4770      	bx	lr

10005080 <__retarget_lock_release_recursive>:
10005080:	4770      	bx	lr

10005082 <memcpy>:
10005082:	440a      	add	r2, r1
10005084:	1e43      	subs	r3, r0, #1
10005086:	4291      	cmp	r1, r2
10005088:	d100      	bne.n	1000508c <memcpy+0xa>
1000508a:	4770      	bx	lr
1000508c:	b510      	push	{r4, lr}
1000508e:	f811 4b01 	ldrb.w	r4, [r1], #1
10005092:	4291      	cmp	r1, r2
10005094:	f803 4f01 	strb.w	r4, [r3, #1]!
10005098:	d1f9      	bne.n	1000508e <memcpy+0xc>
1000509a:	bd10      	pop	{r4, pc}

1000509c <_free_r>:
1000509c:	b538      	push	{r3, r4, r5, lr}
1000509e:	4605      	mov	r5, r0
100050a0:	2900      	cmp	r1, #0
100050a2:	d041      	beq.n	10005128 <_free_r+0x8c>
100050a4:	f851 3c04 	ldr.w	r3, [r1, #-4]
100050a8:	1f0c      	subs	r4, r1, #4
100050aa:	2b00      	cmp	r3, #0
100050ac:	bfb8      	it	lt
100050ae:	18e4      	addlt	r4, r4, r3
100050b0:	f7ff fd78 	bl	10004ba4 <__malloc_lock>
100050b4:	4a1d      	ldr	r2, [pc, #116]	@ (1000512c <_free_r+0x90>)
100050b6:	6813      	ldr	r3, [r2, #0]
100050b8:	b933      	cbnz	r3, 100050c8 <_free_r+0x2c>
100050ba:	6063      	str	r3, [r4, #4]
100050bc:	6014      	str	r4, [r2, #0]
100050be:	4628      	mov	r0, r5
100050c0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
100050c4:	f7ff bd74 	b.w	10004bb0 <__malloc_unlock>
100050c8:	42a3      	cmp	r3, r4
100050ca:	d908      	bls.n	100050de <_free_r+0x42>
100050cc:	6820      	ldr	r0, [r4, #0]
100050ce:	1821      	adds	r1, r4, r0
100050d0:	428b      	cmp	r3, r1
100050d2:	bf01      	itttt	eq
100050d4:	6819      	ldreq	r1, [r3, #0]
100050d6:	685b      	ldreq	r3, [r3, #4]
100050d8:	1809      	addeq	r1, r1, r0
100050da:	6021      	streq	r1, [r4, #0]
100050dc:	e7ed      	b.n	100050ba <_free_r+0x1e>
100050de:	461a      	mov	r2, r3
100050e0:	685b      	ldr	r3, [r3, #4]
100050e2:	b10b      	cbz	r3, 100050e8 <_free_r+0x4c>
100050e4:	42a3      	cmp	r3, r4
100050e6:	d9fa      	bls.n	100050de <_free_r+0x42>
100050e8:	6811      	ldr	r1, [r2, #0]
100050ea:	1850      	adds	r0, r2, r1
100050ec:	42a0      	cmp	r0, r4
100050ee:	d10b      	bne.n	10005108 <_free_r+0x6c>
100050f0:	6820      	ldr	r0, [r4, #0]
100050f2:	4401      	add	r1, r0
100050f4:	1850      	adds	r0, r2, r1
100050f6:	6011      	str	r1, [r2, #0]
100050f8:	4283      	cmp	r3, r0
100050fa:	d1e0      	bne.n	100050be <_free_r+0x22>
100050fc:	6818      	ldr	r0, [r3, #0]
100050fe:	685b      	ldr	r3, [r3, #4]
10005100:	4408      	add	r0, r1
10005102:	6053      	str	r3, [r2, #4]
10005104:	6010      	str	r0, [r2, #0]
10005106:	e7da      	b.n	100050be <_free_r+0x22>
10005108:	d902      	bls.n	10005110 <_free_r+0x74>
1000510a:	230c      	movs	r3, #12
1000510c:	602b      	str	r3, [r5, #0]
1000510e:	e7d6      	b.n	100050be <_free_r+0x22>
10005110:	6820      	ldr	r0, [r4, #0]
10005112:	1821      	adds	r1, r4, r0
10005114:	428b      	cmp	r3, r1
10005116:	bf02      	ittt	eq
10005118:	6819      	ldreq	r1, [r3, #0]
1000511a:	685b      	ldreq	r3, [r3, #4]
1000511c:	1809      	addeq	r1, r1, r0
1000511e:	6063      	str	r3, [r4, #4]
10005120:	bf08      	it	eq
10005122:	6021      	streq	r1, [r4, #0]
10005124:	6054      	str	r4, [r2, #4]
10005126:	e7ca      	b.n	100050be <_free_r+0x22>
10005128:	bd38      	pop	{r3, r4, r5, pc}
1000512a:	bf00      	nop
1000512c:	20005afc 	.word	0x20005afc

10005130 <__sfputc_r>:
10005130:	6893      	ldr	r3, [r2, #8]
10005132:	3b01      	subs	r3, #1
10005134:	2b00      	cmp	r3, #0
10005136:	b410      	push	{r4}
10005138:	6093      	str	r3, [r2, #8]
1000513a:	da08      	bge.n	1000514e <__sfputc_r+0x1e>
1000513c:	6994      	ldr	r4, [r2, #24]
1000513e:	42a3      	cmp	r3, r4
10005140:	db01      	blt.n	10005146 <__sfputc_r+0x16>
10005142:	290a      	cmp	r1, #10
10005144:	d103      	bne.n	1000514e <__sfputc_r+0x1e>
10005146:	f85d 4b04 	ldr.w	r4, [sp], #4
1000514a:	f7ff beaf 	b.w	10004eac <__swbuf_r>
1000514e:	6813      	ldr	r3, [r2, #0]
10005150:	1c58      	adds	r0, r3, #1
10005152:	6010      	str	r0, [r2, #0]
10005154:	4608      	mov	r0, r1
10005156:	7019      	strb	r1, [r3, #0]
10005158:	f85d 4b04 	ldr.w	r4, [sp], #4
1000515c:	4770      	bx	lr

1000515e <__sfputs_r>:
1000515e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10005160:	4606      	mov	r6, r0
10005162:	460f      	mov	r7, r1
10005164:	4614      	mov	r4, r2
10005166:	18d5      	adds	r5, r2, r3
10005168:	42ac      	cmp	r4, r5
1000516a:	d101      	bne.n	10005170 <__sfputs_r+0x12>
1000516c:	2000      	movs	r0, #0
1000516e:	e007      	b.n	10005180 <__sfputs_r+0x22>
10005170:	463a      	mov	r2, r7
10005172:	f814 1b01 	ldrb.w	r1, [r4], #1
10005176:	4630      	mov	r0, r6
10005178:	f7ff ffda 	bl	10005130 <__sfputc_r>
1000517c:	1c43      	adds	r3, r0, #1
1000517e:	d1f3      	bne.n	10005168 <__sfputs_r+0xa>
10005180:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

10005184 <_vfiprintf_r>:
10005184:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
10005188:	460d      	mov	r5, r1
1000518a:	b09d      	sub	sp, #116	@ 0x74
1000518c:	4614      	mov	r4, r2
1000518e:	4698      	mov	r8, r3
10005190:	4606      	mov	r6, r0
10005192:	b118      	cbz	r0, 1000519c <_vfiprintf_r+0x18>
10005194:	6a03      	ldr	r3, [r0, #32]
10005196:	b90b      	cbnz	r3, 1000519c <_vfiprintf_r+0x18>
10005198:	f7ff fd9e 	bl	10004cd8 <__sinit>
1000519c:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
1000519e:	07d9      	lsls	r1, r3, #31
100051a0:	d405      	bmi.n	100051ae <_vfiprintf_r+0x2a>
100051a2:	89ab      	ldrh	r3, [r5, #12]
100051a4:	059a      	lsls	r2, r3, #22
100051a6:	d402      	bmi.n	100051ae <_vfiprintf_r+0x2a>
100051a8:	6da8      	ldr	r0, [r5, #88]	@ 0x58
100051aa:	f7ff ff68 	bl	1000507e <__retarget_lock_acquire_recursive>
100051ae:	89ab      	ldrh	r3, [r5, #12]
100051b0:	071b      	lsls	r3, r3, #28
100051b2:	d501      	bpl.n	100051b8 <_vfiprintf_r+0x34>
100051b4:	692b      	ldr	r3, [r5, #16]
100051b6:	b99b      	cbnz	r3, 100051e0 <_vfiprintf_r+0x5c>
100051b8:	4629      	mov	r1, r5
100051ba:	4630      	mov	r0, r6
100051bc:	f7ff feb4 	bl	10004f28 <__swsetup_r>
100051c0:	b170      	cbz	r0, 100051e0 <_vfiprintf_r+0x5c>
100051c2:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
100051c4:	07dc      	lsls	r4, r3, #31
100051c6:	d504      	bpl.n	100051d2 <_vfiprintf_r+0x4e>
100051c8:	f04f 30ff 	mov.w	r0, #4294967295
100051cc:	b01d      	add	sp, #116	@ 0x74
100051ce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
100051d2:	89ab      	ldrh	r3, [r5, #12]
100051d4:	0598      	lsls	r0, r3, #22
100051d6:	d4f7      	bmi.n	100051c8 <_vfiprintf_r+0x44>
100051d8:	6da8      	ldr	r0, [r5, #88]	@ 0x58
100051da:	f7ff ff51 	bl	10005080 <__retarget_lock_release_recursive>
100051de:	e7f3      	b.n	100051c8 <_vfiprintf_r+0x44>
100051e0:	2300      	movs	r3, #0
100051e2:	f8cd 800c 	str.w	r8, [sp, #12]
100051e6:	f04f 0901 	mov.w	r9, #1
100051ea:	f8df 81b4 	ldr.w	r8, [pc, #436]	@ 100053a0 <_vfiprintf_r+0x21c>
100051ee:	9309      	str	r3, [sp, #36]	@ 0x24
100051f0:	2320      	movs	r3, #32
100051f2:	f88d 3029 	strb.w	r3, [sp, #41]	@ 0x29
100051f6:	2330      	movs	r3, #48	@ 0x30
100051f8:	f88d 302a 	strb.w	r3, [sp, #42]	@ 0x2a
100051fc:	4623      	mov	r3, r4
100051fe:	469a      	mov	sl, r3
10005200:	f813 2b01 	ldrb.w	r2, [r3], #1
10005204:	b10a      	cbz	r2, 1000520a <_vfiprintf_r+0x86>
10005206:	2a25      	cmp	r2, #37	@ 0x25
10005208:	d1f9      	bne.n	100051fe <_vfiprintf_r+0x7a>
1000520a:	ebba 0b04 	subs.w	fp, sl, r4
1000520e:	d00b      	beq.n	10005228 <_vfiprintf_r+0xa4>
10005210:	465b      	mov	r3, fp
10005212:	4622      	mov	r2, r4
10005214:	4629      	mov	r1, r5
10005216:	4630      	mov	r0, r6
10005218:	f7ff ffa1 	bl	1000515e <__sfputs_r>
1000521c:	3001      	adds	r0, #1
1000521e:	f000 80a7 	beq.w	10005370 <_vfiprintf_r+0x1ec>
10005222:	9a09      	ldr	r2, [sp, #36]	@ 0x24
10005224:	445a      	add	r2, fp
10005226:	9209      	str	r2, [sp, #36]	@ 0x24
10005228:	f89a 3000 	ldrb.w	r3, [sl]
1000522c:	2b00      	cmp	r3, #0
1000522e:	f000 809f 	beq.w	10005370 <_vfiprintf_r+0x1ec>
10005232:	2300      	movs	r3, #0
10005234:	f04f 32ff 	mov.w	r2, #4294967295
10005238:	f10a 0a01 	add.w	sl, sl, #1
1000523c:	9304      	str	r3, [sp, #16]
1000523e:	9307      	str	r3, [sp, #28]
10005240:	f88d 3053 	strb.w	r3, [sp, #83]	@ 0x53
10005244:	931a      	str	r3, [sp, #104]	@ 0x68
10005246:	e9cd 2305 	strd	r2, r3, [sp, #20]
1000524a:	4654      	mov	r4, sl
1000524c:	2205      	movs	r2, #5
1000524e:	4854      	ldr	r0, [pc, #336]	@ (100053a0 <_vfiprintf_r+0x21c>)
10005250:	f814 1b01 	ldrb.w	r1, [r4], #1
10005254:	f000 fb68 	bl	10005928 <memchr>
10005258:	9a04      	ldr	r2, [sp, #16]
1000525a:	b9d8      	cbnz	r0, 10005294 <_vfiprintf_r+0x110>
1000525c:	06d1      	lsls	r1, r2, #27
1000525e:	bf44      	itt	mi
10005260:	2320      	movmi	r3, #32
10005262:	f88d 3053 	strbmi.w	r3, [sp, #83]	@ 0x53
10005266:	0713      	lsls	r3, r2, #28
10005268:	bf44      	itt	mi
1000526a:	232b      	movmi	r3, #43	@ 0x2b
1000526c:	f88d 3053 	strbmi.w	r3, [sp, #83]	@ 0x53
10005270:	f89a 3000 	ldrb.w	r3, [sl]
10005274:	2b2a      	cmp	r3, #42	@ 0x2a
10005276:	d015      	beq.n	100052a4 <_vfiprintf_r+0x120>
10005278:	9a07      	ldr	r2, [sp, #28]
1000527a:	4654      	mov	r4, sl
1000527c:	2000      	movs	r0, #0
1000527e:	f04f 0c0a 	mov.w	ip, #10
10005282:	4621      	mov	r1, r4
10005284:	f811 3b01 	ldrb.w	r3, [r1], #1
10005288:	3b30      	subs	r3, #48	@ 0x30
1000528a:	2b09      	cmp	r3, #9
1000528c:	d94b      	bls.n	10005326 <_vfiprintf_r+0x1a2>
1000528e:	b1b0      	cbz	r0, 100052be <_vfiprintf_r+0x13a>
10005290:	9207      	str	r2, [sp, #28]
10005292:	e014      	b.n	100052be <_vfiprintf_r+0x13a>
10005294:	eba0 0308 	sub.w	r3, r0, r8
10005298:	46a2      	mov	sl, r4
1000529a:	fa09 f303 	lsl.w	r3, r9, r3
1000529e:	4313      	orrs	r3, r2
100052a0:	9304      	str	r3, [sp, #16]
100052a2:	e7d2      	b.n	1000524a <_vfiprintf_r+0xc6>
100052a4:	9b03      	ldr	r3, [sp, #12]
100052a6:	1d19      	adds	r1, r3, #4
100052a8:	681b      	ldr	r3, [r3, #0]
100052aa:	2b00      	cmp	r3, #0
100052ac:	9103      	str	r1, [sp, #12]
100052ae:	bfbb      	ittet	lt
100052b0:	425b      	neglt	r3, r3
100052b2:	f042 0202 	orrlt.w	r2, r2, #2
100052b6:	9307      	strge	r3, [sp, #28]
100052b8:	9307      	strlt	r3, [sp, #28]
100052ba:	bfb8      	it	lt
100052bc:	9204      	strlt	r2, [sp, #16]
100052be:	7823      	ldrb	r3, [r4, #0]
100052c0:	2b2e      	cmp	r3, #46	@ 0x2e
100052c2:	d10a      	bne.n	100052da <_vfiprintf_r+0x156>
100052c4:	7863      	ldrb	r3, [r4, #1]
100052c6:	2b2a      	cmp	r3, #42	@ 0x2a
100052c8:	d132      	bne.n	10005330 <_vfiprintf_r+0x1ac>
100052ca:	9b03      	ldr	r3, [sp, #12]
100052cc:	3402      	adds	r4, #2
100052ce:	1d1a      	adds	r2, r3, #4
100052d0:	681b      	ldr	r3, [r3, #0]
100052d2:	ea43 73e3 	orr.w	r3, r3, r3, asr #31
100052d6:	9203      	str	r2, [sp, #12]
100052d8:	9305      	str	r3, [sp, #20]
100052da:	f8df a0d4 	ldr.w	sl, [pc, #212]	@ 100053b0 <_vfiprintf_r+0x22c>
100052de:	2203      	movs	r2, #3
100052e0:	7821      	ldrb	r1, [r4, #0]
100052e2:	4650      	mov	r0, sl
100052e4:	f000 fb20 	bl	10005928 <memchr>
100052e8:	b138      	cbz	r0, 100052fa <_vfiprintf_r+0x176>
100052ea:	eba0 000a 	sub.w	r0, r0, sl
100052ee:	2240      	movs	r2, #64	@ 0x40
100052f0:	9b04      	ldr	r3, [sp, #16]
100052f2:	3401      	adds	r4, #1
100052f4:	4082      	lsls	r2, r0
100052f6:	4313      	orrs	r3, r2
100052f8:	9304      	str	r3, [sp, #16]
100052fa:	f814 1b01 	ldrb.w	r1, [r4], #1
100052fe:	2206      	movs	r2, #6
10005300:	4828      	ldr	r0, [pc, #160]	@ (100053a4 <_vfiprintf_r+0x220>)
10005302:	f88d 1028 	strb.w	r1, [sp, #40]	@ 0x28
10005306:	f000 fb0f 	bl	10005928 <memchr>
1000530a:	2800      	cmp	r0, #0
1000530c:	d03f      	beq.n	1000538e <_vfiprintf_r+0x20a>
1000530e:	4b26      	ldr	r3, [pc, #152]	@ (100053a8 <_vfiprintf_r+0x224>)
10005310:	bb1b      	cbnz	r3, 1000535a <_vfiprintf_r+0x1d6>
10005312:	9b03      	ldr	r3, [sp, #12]
10005314:	3307      	adds	r3, #7
10005316:	f023 0307 	bic.w	r3, r3, #7
1000531a:	3308      	adds	r3, #8
1000531c:	9303      	str	r3, [sp, #12]
1000531e:	9b09      	ldr	r3, [sp, #36]	@ 0x24
10005320:	443b      	add	r3, r7
10005322:	9309      	str	r3, [sp, #36]	@ 0x24
10005324:	e76a      	b.n	100051fc <_vfiprintf_r+0x78>
10005326:	fb0c 3202 	mla	r2, ip, r2, r3
1000532a:	460c      	mov	r4, r1
1000532c:	2001      	movs	r0, #1
1000532e:	e7a8      	b.n	10005282 <_vfiprintf_r+0xfe>
10005330:	2300      	movs	r3, #0
10005332:	3401      	adds	r4, #1
10005334:	f04f 0c0a 	mov.w	ip, #10
10005338:	4619      	mov	r1, r3
1000533a:	9305      	str	r3, [sp, #20]
1000533c:	4620      	mov	r0, r4
1000533e:	f810 2b01 	ldrb.w	r2, [r0], #1
10005342:	3a30      	subs	r2, #48	@ 0x30
10005344:	2a09      	cmp	r2, #9
10005346:	d903      	bls.n	10005350 <_vfiprintf_r+0x1cc>
10005348:	2b00      	cmp	r3, #0
1000534a:	d0c6      	beq.n	100052da <_vfiprintf_r+0x156>
1000534c:	9105      	str	r1, [sp, #20]
1000534e:	e7c4      	b.n	100052da <_vfiprintf_r+0x156>
10005350:	fb0c 2101 	mla	r1, ip, r1, r2
10005354:	4604      	mov	r4, r0
10005356:	2301      	movs	r3, #1
10005358:	e7f0      	b.n	1000533c <_vfiprintf_r+0x1b8>
1000535a:	ab03      	add	r3, sp, #12
1000535c:	462a      	mov	r2, r5
1000535e:	a904      	add	r1, sp, #16
10005360:	4630      	mov	r0, r6
10005362:	9300      	str	r3, [sp, #0]
10005364:	4b11      	ldr	r3, [pc, #68]	@ (100053ac <_vfiprintf_r+0x228>)
10005366:	f3af 8000 	nop.w
1000536a:	4607      	mov	r7, r0
1000536c:	1c78      	adds	r0, r7, #1
1000536e:	d1d6      	bne.n	1000531e <_vfiprintf_r+0x19a>
10005370:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
10005372:	07d9      	lsls	r1, r3, #31
10005374:	d405      	bmi.n	10005382 <_vfiprintf_r+0x1fe>
10005376:	89ab      	ldrh	r3, [r5, #12]
10005378:	059a      	lsls	r2, r3, #22
1000537a:	d402      	bmi.n	10005382 <_vfiprintf_r+0x1fe>
1000537c:	6da8      	ldr	r0, [r5, #88]	@ 0x58
1000537e:	f7ff fe7f 	bl	10005080 <__retarget_lock_release_recursive>
10005382:	89ab      	ldrh	r3, [r5, #12]
10005384:	065b      	lsls	r3, r3, #25
10005386:	f53f af1f 	bmi.w	100051c8 <_vfiprintf_r+0x44>
1000538a:	9809      	ldr	r0, [sp, #36]	@ 0x24
1000538c:	e71e      	b.n	100051cc <_vfiprintf_r+0x48>
1000538e:	ab03      	add	r3, sp, #12
10005390:	462a      	mov	r2, r5
10005392:	a904      	add	r1, sp, #16
10005394:	4630      	mov	r0, r6
10005396:	9300      	str	r3, [sp, #0]
10005398:	4b04      	ldr	r3, [pc, #16]	@ (100053ac <_vfiprintf_r+0x228>)
1000539a:	f000 f87d 	bl	10005498 <_printf_i>
1000539e:	e7e4      	b.n	1000536a <_vfiprintf_r+0x1e6>
100053a0:	10005afe 	.word	0x10005afe
100053a4:	10005b08 	.word	0x10005b08
100053a8:	00000000 	.word	0x00000000
100053ac:	1000515f 	.word	0x1000515f
100053b0:	10005b04 	.word	0x10005b04

100053b4 <_printf_common>:
100053b4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
100053b8:	4616      	mov	r6, r2
100053ba:	4698      	mov	r8, r3
100053bc:	688a      	ldr	r2, [r1, #8]
100053be:	4607      	mov	r7, r0
100053c0:	690b      	ldr	r3, [r1, #16]
100053c2:	460c      	mov	r4, r1
100053c4:	f8dd 9020 	ldr.w	r9, [sp, #32]
100053c8:	4293      	cmp	r3, r2
100053ca:	bfb8      	it	lt
100053cc:	4613      	movlt	r3, r2
100053ce:	6033      	str	r3, [r6, #0]
100053d0:	f891 2043 	ldrb.w	r2, [r1, #67]	@ 0x43
100053d4:	b10a      	cbz	r2, 100053da <_printf_common+0x26>
100053d6:	3301      	adds	r3, #1
100053d8:	6033      	str	r3, [r6, #0]
100053da:	6823      	ldr	r3, [r4, #0]
100053dc:	0699      	lsls	r1, r3, #26
100053de:	bf42      	ittt	mi
100053e0:	6833      	ldrmi	r3, [r6, #0]
100053e2:	3302      	addmi	r3, #2
100053e4:	6033      	strmi	r3, [r6, #0]
100053e6:	6825      	ldr	r5, [r4, #0]
100053e8:	f015 0506 	ands.w	r5, r5, #6
100053ec:	d106      	bne.n	100053fc <_printf_common+0x48>
100053ee:	f104 0a19 	add.w	sl, r4, #25
100053f2:	68e3      	ldr	r3, [r4, #12]
100053f4:	6832      	ldr	r2, [r6, #0]
100053f6:	1a9b      	subs	r3, r3, r2
100053f8:	42ab      	cmp	r3, r5
100053fa:	dc2b      	bgt.n	10005454 <_printf_common+0xa0>
100053fc:	f894 3043 	ldrb.w	r3, [r4, #67]	@ 0x43
10005400:	6822      	ldr	r2, [r4, #0]
10005402:	3b00      	subs	r3, #0
10005404:	bf18      	it	ne
10005406:	2301      	movne	r3, #1
10005408:	0692      	lsls	r2, r2, #26
1000540a:	d430      	bmi.n	1000546e <_printf_common+0xba>
1000540c:	f104 0243 	add.w	r2, r4, #67	@ 0x43
10005410:	4641      	mov	r1, r8
10005412:	4638      	mov	r0, r7
10005414:	47c8      	blx	r9
10005416:	3001      	adds	r0, #1
10005418:	d023      	beq.n	10005462 <_printf_common+0xae>
1000541a:	6823      	ldr	r3, [r4, #0]
1000541c:	341a      	adds	r4, #26
1000541e:	f854 2c0a 	ldr.w	r2, [r4, #-10]
10005422:	f003 0306 	and.w	r3, r3, #6
10005426:	2b04      	cmp	r3, #4
10005428:	bf0a      	itet	eq
1000542a:	f854 5c0e 	ldreq.w	r5, [r4, #-14]
1000542e:	2500      	movne	r5, #0
10005430:	6833      	ldreq	r3, [r6, #0]
10005432:	f04f 0600 	mov.w	r6, #0
10005436:	bf08      	it	eq
10005438:	1aed      	subeq	r5, r5, r3
1000543a:	f854 3c12 	ldr.w	r3, [r4, #-18]
1000543e:	bf08      	it	eq
10005440:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
10005444:	4293      	cmp	r3, r2
10005446:	bfc4      	itt	gt
10005448:	1a9b      	subgt	r3, r3, r2
1000544a:	18ed      	addgt	r5, r5, r3
1000544c:	42b5      	cmp	r5, r6
1000544e:	d11a      	bne.n	10005486 <_printf_common+0xd2>
10005450:	2000      	movs	r0, #0
10005452:	e008      	b.n	10005466 <_printf_common+0xb2>
10005454:	2301      	movs	r3, #1
10005456:	4652      	mov	r2, sl
10005458:	4641      	mov	r1, r8
1000545a:	4638      	mov	r0, r7
1000545c:	47c8      	blx	r9
1000545e:	3001      	adds	r0, #1
10005460:	d103      	bne.n	1000546a <_printf_common+0xb6>
10005462:	f04f 30ff 	mov.w	r0, #4294967295
10005466:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
1000546a:	3501      	adds	r5, #1
1000546c:	e7c1      	b.n	100053f2 <_printf_common+0x3e>
1000546e:	18e1      	adds	r1, r4, r3
10005470:	1c5a      	adds	r2, r3, #1
10005472:	2030      	movs	r0, #48	@ 0x30
10005474:	3302      	adds	r3, #2
10005476:	4422      	add	r2, r4
10005478:	f881 0043 	strb.w	r0, [r1, #67]	@ 0x43
1000547c:	f894 1045 	ldrb.w	r1, [r4, #69]	@ 0x45
10005480:	f882 1043 	strb.w	r1, [r2, #67]	@ 0x43
10005484:	e7c2      	b.n	1000540c <_printf_common+0x58>
10005486:	2301      	movs	r3, #1
10005488:	4622      	mov	r2, r4
1000548a:	4641      	mov	r1, r8
1000548c:	4638      	mov	r0, r7
1000548e:	47c8      	blx	r9
10005490:	3001      	adds	r0, #1
10005492:	d0e6      	beq.n	10005462 <_printf_common+0xae>
10005494:	3601      	adds	r6, #1
10005496:	e7d9      	b.n	1000544c <_printf_common+0x98>

10005498 <_printf_i>:
10005498:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
1000549c:	7e0f      	ldrb	r7, [r1, #24]
1000549e:	4691      	mov	r9, r2
100054a0:	4680      	mov	r8, r0
100054a2:	460c      	mov	r4, r1
100054a4:	2f78      	cmp	r7, #120	@ 0x78
100054a6:	469a      	mov	sl, r3
100054a8:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
100054aa:	f101 0243 	add.w	r2, r1, #67	@ 0x43
100054ae:	d807      	bhi.n	100054c0 <_printf_i+0x28>
100054b0:	2f62      	cmp	r7, #98	@ 0x62
100054b2:	d80a      	bhi.n	100054ca <_printf_i+0x32>
100054b4:	2f00      	cmp	r7, #0
100054b6:	f000 80d2 	beq.w	1000565e <_printf_i+0x1c6>
100054ba:	2f58      	cmp	r7, #88	@ 0x58
100054bc:	f000 80b7 	beq.w	1000562e <_printf_i+0x196>
100054c0:	f104 0642 	add.w	r6, r4, #66	@ 0x42
100054c4:	f884 7042 	strb.w	r7, [r4, #66]	@ 0x42
100054c8:	e03a      	b.n	10005540 <_printf_i+0xa8>
100054ca:	f1a7 0363 	sub.w	r3, r7, #99	@ 0x63
100054ce:	2b15      	cmp	r3, #21
100054d0:	d8f6      	bhi.n	100054c0 <_printf_i+0x28>
100054d2:	a101      	add	r1, pc, #4	@ (adr r1, 100054d8 <_printf_i+0x40>)
100054d4:	f851 f023 	ldr.w	pc, [r1, r3, lsl #2]
100054d8:	10005531 	.word	0x10005531
100054dc:	10005545 	.word	0x10005545
100054e0:	100054c1 	.word	0x100054c1
100054e4:	100054c1 	.word	0x100054c1
100054e8:	100054c1 	.word	0x100054c1
100054ec:	100054c1 	.word	0x100054c1
100054f0:	10005545 	.word	0x10005545
100054f4:	100054c1 	.word	0x100054c1
100054f8:	100054c1 	.word	0x100054c1
100054fc:	100054c1 	.word	0x100054c1
10005500:	100054c1 	.word	0x100054c1
10005504:	10005645 	.word	0x10005645
10005508:	1000556f 	.word	0x1000556f
1000550c:	100055fb 	.word	0x100055fb
10005510:	100054c1 	.word	0x100054c1
10005514:	100054c1 	.word	0x100054c1
10005518:	10005667 	.word	0x10005667
1000551c:	100054c1 	.word	0x100054c1
10005520:	1000556f 	.word	0x1000556f
10005524:	100054c1 	.word	0x100054c1
10005528:	100054c1 	.word	0x100054c1
1000552c:	10005603 	.word	0x10005603
10005530:	6833      	ldr	r3, [r6, #0]
10005532:	1d1a      	adds	r2, r3, #4
10005534:	681b      	ldr	r3, [r3, #0]
10005536:	6032      	str	r2, [r6, #0]
10005538:	f104 0642 	add.w	r6, r4, #66	@ 0x42
1000553c:	f884 3042 	strb.w	r3, [r4, #66]	@ 0x42
10005540:	2301      	movs	r3, #1
10005542:	e09d      	b.n	10005680 <_printf_i+0x1e8>
10005544:	6833      	ldr	r3, [r6, #0]
10005546:	6820      	ldr	r0, [r4, #0]
10005548:	1d19      	adds	r1, r3, #4
1000554a:	6031      	str	r1, [r6, #0]
1000554c:	0606      	lsls	r6, r0, #24
1000554e:	d501      	bpl.n	10005554 <_printf_i+0xbc>
10005550:	681d      	ldr	r5, [r3, #0]
10005552:	e003      	b.n	1000555c <_printf_i+0xc4>
10005554:	0645      	lsls	r5, r0, #25
10005556:	d5fb      	bpl.n	10005550 <_printf_i+0xb8>
10005558:	f9b3 5000 	ldrsh.w	r5, [r3]
1000555c:	2d00      	cmp	r5, #0
1000555e:	da03      	bge.n	10005568 <_printf_i+0xd0>
10005560:	232d      	movs	r3, #45	@ 0x2d
10005562:	426d      	negs	r5, r5
10005564:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
10005568:	4859      	ldr	r0, [pc, #356]	@ (100056d0 <_printf_i+0x238>)
1000556a:	230a      	movs	r3, #10
1000556c:	e010      	b.n	10005590 <_printf_i+0xf8>
1000556e:	6821      	ldr	r1, [r4, #0]
10005570:	6833      	ldr	r3, [r6, #0]
10005572:	0608      	lsls	r0, r1, #24
10005574:	f853 5b04 	ldr.w	r5, [r3], #4
10005578:	d402      	bmi.n	10005580 <_printf_i+0xe8>
1000557a:	0649      	lsls	r1, r1, #25
1000557c:	bf48      	it	mi
1000557e:	b2ad      	uxthmi	r5, r5
10005580:	2f6f      	cmp	r7, #111	@ 0x6f
10005582:	4853      	ldr	r0, [pc, #332]	@ (100056d0 <_printf_i+0x238>)
10005584:	6033      	str	r3, [r6, #0]
10005586:	d159      	bne.n	1000563c <_printf_i+0x1a4>
10005588:	2308      	movs	r3, #8
1000558a:	2100      	movs	r1, #0
1000558c:	f884 1043 	strb.w	r1, [r4, #67]	@ 0x43
10005590:	6866      	ldr	r6, [r4, #4]
10005592:	2e00      	cmp	r6, #0
10005594:	60a6      	str	r6, [r4, #8]
10005596:	db05      	blt.n	100055a4 <_printf_i+0x10c>
10005598:	6821      	ldr	r1, [r4, #0]
1000559a:	432e      	orrs	r6, r5
1000559c:	f021 0104 	bic.w	r1, r1, #4
100055a0:	6021      	str	r1, [r4, #0]
100055a2:	d04d      	beq.n	10005640 <_printf_i+0x1a8>
100055a4:	4616      	mov	r6, r2
100055a6:	fbb5 f1f3 	udiv	r1, r5, r3
100055aa:	fb03 5711 	mls	r7, r3, r1, r5
100055ae:	5dc7      	ldrb	r7, [r0, r7]
100055b0:	f806 7d01 	strb.w	r7, [r6, #-1]!
100055b4:	462f      	mov	r7, r5
100055b6:	460d      	mov	r5, r1
100055b8:	42bb      	cmp	r3, r7
100055ba:	d9f4      	bls.n	100055a6 <_printf_i+0x10e>
100055bc:	2b08      	cmp	r3, #8
100055be:	d10b      	bne.n	100055d8 <_printf_i+0x140>
100055c0:	6823      	ldr	r3, [r4, #0]
100055c2:	07df      	lsls	r7, r3, #31
100055c4:	d508      	bpl.n	100055d8 <_printf_i+0x140>
100055c6:	6923      	ldr	r3, [r4, #16]
100055c8:	6861      	ldr	r1, [r4, #4]
100055ca:	4299      	cmp	r1, r3
100055cc:	bfde      	ittt	le
100055ce:	2330      	movle	r3, #48	@ 0x30
100055d0:	f806 3c01 	strble.w	r3, [r6, #-1]
100055d4:	f106 36ff 	addle.w	r6, r6, #4294967295
100055d8:	1b92      	subs	r2, r2, r6
100055da:	6122      	str	r2, [r4, #16]
100055dc:	464b      	mov	r3, r9
100055de:	aa03      	add	r2, sp, #12
100055e0:	4621      	mov	r1, r4
100055e2:	4640      	mov	r0, r8
100055e4:	f8cd a000 	str.w	sl, [sp]
100055e8:	f7ff fee4 	bl	100053b4 <_printf_common>
100055ec:	3001      	adds	r0, #1
100055ee:	d14c      	bne.n	1000568a <_printf_i+0x1f2>
100055f0:	f04f 30ff 	mov.w	r0, #4294967295
100055f4:	b004      	add	sp, #16
100055f6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
100055fa:	6823      	ldr	r3, [r4, #0]
100055fc:	f043 0320 	orr.w	r3, r3, #32
10005600:	6023      	str	r3, [r4, #0]
10005602:	2778      	movs	r7, #120	@ 0x78
10005604:	4833      	ldr	r0, [pc, #204]	@ (100056d4 <_printf_i+0x23c>)
10005606:	6823      	ldr	r3, [r4, #0]
10005608:	f884 7045 	strb.w	r7, [r4, #69]	@ 0x45
1000560c:	061f      	lsls	r7, r3, #24
1000560e:	6831      	ldr	r1, [r6, #0]
10005610:	f851 5b04 	ldr.w	r5, [r1], #4
10005614:	d402      	bmi.n	1000561c <_printf_i+0x184>
10005616:	065f      	lsls	r7, r3, #25
10005618:	bf48      	it	mi
1000561a:	b2ad      	uxthmi	r5, r5
1000561c:	6031      	str	r1, [r6, #0]
1000561e:	07d9      	lsls	r1, r3, #31
10005620:	bf44      	itt	mi
10005622:	f043 0320 	orrmi.w	r3, r3, #32
10005626:	6023      	strmi	r3, [r4, #0]
10005628:	b11d      	cbz	r5, 10005632 <_printf_i+0x19a>
1000562a:	2310      	movs	r3, #16
1000562c:	e7ad      	b.n	1000558a <_printf_i+0xf2>
1000562e:	4828      	ldr	r0, [pc, #160]	@ (100056d0 <_printf_i+0x238>)
10005630:	e7e9      	b.n	10005606 <_printf_i+0x16e>
10005632:	6823      	ldr	r3, [r4, #0]
10005634:	f023 0320 	bic.w	r3, r3, #32
10005638:	6023      	str	r3, [r4, #0]
1000563a:	e7f6      	b.n	1000562a <_printf_i+0x192>
1000563c:	230a      	movs	r3, #10
1000563e:	e7a4      	b.n	1000558a <_printf_i+0xf2>
10005640:	4616      	mov	r6, r2
10005642:	e7bb      	b.n	100055bc <_printf_i+0x124>
10005644:	6833      	ldr	r3, [r6, #0]
10005646:	6825      	ldr	r5, [r4, #0]
10005648:	1d18      	adds	r0, r3, #4
1000564a:	6961      	ldr	r1, [r4, #20]
1000564c:	6030      	str	r0, [r6, #0]
1000564e:	062e      	lsls	r6, r5, #24
10005650:	681b      	ldr	r3, [r3, #0]
10005652:	d501      	bpl.n	10005658 <_printf_i+0x1c0>
10005654:	6019      	str	r1, [r3, #0]
10005656:	e002      	b.n	1000565e <_printf_i+0x1c6>
10005658:	0668      	lsls	r0, r5, #25
1000565a:	d5fb      	bpl.n	10005654 <_printf_i+0x1bc>
1000565c:	8019      	strh	r1, [r3, #0]
1000565e:	2300      	movs	r3, #0
10005660:	4616      	mov	r6, r2
10005662:	6123      	str	r3, [r4, #16]
10005664:	e7ba      	b.n	100055dc <_printf_i+0x144>
10005666:	6833      	ldr	r3, [r6, #0]
10005668:	2100      	movs	r1, #0
1000566a:	1d1a      	adds	r2, r3, #4
1000566c:	6032      	str	r2, [r6, #0]
1000566e:	681e      	ldr	r6, [r3, #0]
10005670:	6862      	ldr	r2, [r4, #4]
10005672:	4630      	mov	r0, r6
10005674:	f000 f958 	bl	10005928 <memchr>
10005678:	b108      	cbz	r0, 1000567e <_printf_i+0x1e6>
1000567a:	1b80      	subs	r0, r0, r6
1000567c:	6060      	str	r0, [r4, #4]
1000567e:	6863      	ldr	r3, [r4, #4]
10005680:	6123      	str	r3, [r4, #16]
10005682:	2300      	movs	r3, #0
10005684:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
10005688:	e7a8      	b.n	100055dc <_printf_i+0x144>
1000568a:	6923      	ldr	r3, [r4, #16]
1000568c:	4632      	mov	r2, r6
1000568e:	4649      	mov	r1, r9
10005690:	4640      	mov	r0, r8
10005692:	47d0      	blx	sl
10005694:	3001      	adds	r0, #1
10005696:	d0ab      	beq.n	100055f0 <_printf_i+0x158>
10005698:	6823      	ldr	r3, [r4, #0]
1000569a:	079b      	lsls	r3, r3, #30
1000569c:	d413      	bmi.n	100056c6 <_printf_i+0x22e>
1000569e:	68e0      	ldr	r0, [r4, #12]
100056a0:	9b03      	ldr	r3, [sp, #12]
100056a2:	4298      	cmp	r0, r3
100056a4:	bfb8      	it	lt
100056a6:	4618      	movlt	r0, r3
100056a8:	e7a4      	b.n	100055f4 <_printf_i+0x15c>
100056aa:	2301      	movs	r3, #1
100056ac:	4632      	mov	r2, r6
100056ae:	4649      	mov	r1, r9
100056b0:	4640      	mov	r0, r8
100056b2:	47d0      	blx	sl
100056b4:	3001      	adds	r0, #1
100056b6:	d09b      	beq.n	100055f0 <_printf_i+0x158>
100056b8:	3501      	adds	r5, #1
100056ba:	68e3      	ldr	r3, [r4, #12]
100056bc:	9903      	ldr	r1, [sp, #12]
100056be:	1a5b      	subs	r3, r3, r1
100056c0:	42ab      	cmp	r3, r5
100056c2:	dcf2      	bgt.n	100056aa <_printf_i+0x212>
100056c4:	e7eb      	b.n	1000569e <_printf_i+0x206>
100056c6:	2500      	movs	r5, #0
100056c8:	f104 0619 	add.w	r6, r4, #25
100056cc:	e7f5      	b.n	100056ba <_printf_i+0x222>
100056ce:	bf00      	nop
100056d0:	10005b0f 	.word	0x10005b0f
100056d4:	10005b20 	.word	0x10005b20

100056d8 <__sflush_r>:
100056d8:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
100056dc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
100056e0:	0716      	lsls	r6, r2, #28
100056e2:	4605      	mov	r5, r0
100056e4:	460c      	mov	r4, r1
100056e6:	d451      	bmi.n	1000578c <__sflush_r+0xb4>
100056e8:	684b      	ldr	r3, [r1, #4]
100056ea:	2b00      	cmp	r3, #0
100056ec:	dc02      	bgt.n	100056f4 <__sflush_r+0x1c>
100056ee:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
100056f0:	2b00      	cmp	r3, #0
100056f2:	dd49      	ble.n	10005788 <__sflush_r+0xb0>
100056f4:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
100056f6:	2e00      	cmp	r6, #0
100056f8:	d046      	beq.n	10005788 <__sflush_r+0xb0>
100056fa:	2300      	movs	r3, #0
100056fc:	f412 5280 	ands.w	r2, r2, #4096	@ 0x1000
10005700:	682f      	ldr	r7, [r5, #0]
10005702:	602b      	str	r3, [r5, #0]
10005704:	d031      	beq.n	1000576a <__sflush_r+0x92>
10005706:	6d62      	ldr	r2, [r4, #84]	@ 0x54
10005708:	89a3      	ldrh	r3, [r4, #12]
1000570a:	0759      	lsls	r1, r3, #29
1000570c:	d505      	bpl.n	1000571a <__sflush_r+0x42>
1000570e:	6863      	ldr	r3, [r4, #4]
10005710:	1ad2      	subs	r2, r2, r3
10005712:	6b63      	ldr	r3, [r4, #52]	@ 0x34
10005714:	b10b      	cbz	r3, 1000571a <__sflush_r+0x42>
10005716:	6c23      	ldr	r3, [r4, #64]	@ 0x40
10005718:	1ad2      	subs	r2, r2, r3
1000571a:	2300      	movs	r3, #0
1000571c:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
1000571e:	6a21      	ldr	r1, [r4, #32]
10005720:	4628      	mov	r0, r5
10005722:	47b0      	blx	r6
10005724:	1c42      	adds	r2, r0, #1
10005726:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
1000572a:	d106      	bne.n	1000573a <__sflush_r+0x62>
1000572c:	6829      	ldr	r1, [r5, #0]
1000572e:	291d      	cmp	r1, #29
10005730:	d845      	bhi.n	100057be <__sflush_r+0xe6>
10005732:	4a28      	ldr	r2, [pc, #160]	@ (100057d4 <__sflush_r+0xfc>)
10005734:	40ca      	lsrs	r2, r1
10005736:	07d6      	lsls	r6, r2, #31
10005738:	d541      	bpl.n	100057be <__sflush_r+0xe6>
1000573a:	2200      	movs	r2, #0
1000573c:	04d9      	lsls	r1, r3, #19
1000573e:	6062      	str	r2, [r4, #4]
10005740:	6922      	ldr	r2, [r4, #16]
10005742:	6022      	str	r2, [r4, #0]
10005744:	d504      	bpl.n	10005750 <__sflush_r+0x78>
10005746:	1c42      	adds	r2, r0, #1
10005748:	d101      	bne.n	1000574e <__sflush_r+0x76>
1000574a:	682b      	ldr	r3, [r5, #0]
1000574c:	b903      	cbnz	r3, 10005750 <__sflush_r+0x78>
1000574e:	6560      	str	r0, [r4, #84]	@ 0x54
10005750:	6b61      	ldr	r1, [r4, #52]	@ 0x34
10005752:	602f      	str	r7, [r5, #0]
10005754:	b1c1      	cbz	r1, 10005788 <__sflush_r+0xb0>
10005756:	f104 0344 	add.w	r3, r4, #68	@ 0x44
1000575a:	4299      	cmp	r1, r3
1000575c:	d002      	beq.n	10005764 <__sflush_r+0x8c>
1000575e:	4628      	mov	r0, r5
10005760:	f7ff fc9c 	bl	1000509c <_free_r>
10005764:	2300      	movs	r3, #0
10005766:	6363      	str	r3, [r4, #52]	@ 0x34
10005768:	e00e      	b.n	10005788 <__sflush_r+0xb0>
1000576a:	2301      	movs	r3, #1
1000576c:	6a21      	ldr	r1, [r4, #32]
1000576e:	4628      	mov	r0, r5
10005770:	47b0      	blx	r6
10005772:	4602      	mov	r2, r0
10005774:	1c50      	adds	r0, r2, #1
10005776:	d1c7      	bne.n	10005708 <__sflush_r+0x30>
10005778:	682b      	ldr	r3, [r5, #0]
1000577a:	2b00      	cmp	r3, #0
1000577c:	d0c4      	beq.n	10005708 <__sflush_r+0x30>
1000577e:	2b1d      	cmp	r3, #29
10005780:	d001      	beq.n	10005786 <__sflush_r+0xae>
10005782:	2b16      	cmp	r3, #22
10005784:	d119      	bne.n	100057ba <__sflush_r+0xe2>
10005786:	602f      	str	r7, [r5, #0]
10005788:	2000      	movs	r0, #0
1000578a:	e01d      	b.n	100057c8 <__sflush_r+0xf0>
1000578c:	690f      	ldr	r7, [r1, #16]
1000578e:	2f00      	cmp	r7, #0
10005790:	d0fa      	beq.n	10005788 <__sflush_r+0xb0>
10005792:	0793      	lsls	r3, r2, #30
10005794:	680e      	ldr	r6, [r1, #0]
10005796:	600f      	str	r7, [r1, #0]
10005798:	bf0c      	ite	eq
1000579a:	694b      	ldreq	r3, [r1, #20]
1000579c:	2300      	movne	r3, #0
1000579e:	eba6 0807 	sub.w	r8, r6, r7
100057a2:	608b      	str	r3, [r1, #8]
100057a4:	f1b8 0f00 	cmp.w	r8, #0
100057a8:	ddee      	ble.n	10005788 <__sflush_r+0xb0>
100057aa:	4643      	mov	r3, r8
100057ac:	463a      	mov	r2, r7
100057ae:	6a21      	ldr	r1, [r4, #32]
100057b0:	4628      	mov	r0, r5
100057b2:	6aa6      	ldr	r6, [r4, #40]	@ 0x28
100057b4:	47b0      	blx	r6
100057b6:	2800      	cmp	r0, #0
100057b8:	dc08      	bgt.n	100057cc <__sflush_r+0xf4>
100057ba:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
100057be:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
100057c2:	f04f 30ff 	mov.w	r0, #4294967295
100057c6:	81a3      	strh	r3, [r4, #12]
100057c8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
100057cc:	4407      	add	r7, r0
100057ce:	eba8 0800 	sub.w	r8, r8, r0
100057d2:	e7e7      	b.n	100057a4 <__sflush_r+0xcc>
100057d4:	20400001 	.word	0x20400001

100057d8 <_fflush_r>:
100057d8:	b538      	push	{r3, r4, r5, lr}
100057da:	690b      	ldr	r3, [r1, #16]
100057dc:	4605      	mov	r5, r0
100057de:	460c      	mov	r4, r1
100057e0:	b913      	cbnz	r3, 100057e8 <_fflush_r+0x10>
100057e2:	2500      	movs	r5, #0
100057e4:	4628      	mov	r0, r5
100057e6:	bd38      	pop	{r3, r4, r5, pc}
100057e8:	b118      	cbz	r0, 100057f2 <_fflush_r+0x1a>
100057ea:	6a03      	ldr	r3, [r0, #32]
100057ec:	b90b      	cbnz	r3, 100057f2 <_fflush_r+0x1a>
100057ee:	f7ff fa73 	bl	10004cd8 <__sinit>
100057f2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
100057f6:	2b00      	cmp	r3, #0
100057f8:	d0f3      	beq.n	100057e2 <_fflush_r+0xa>
100057fa:	6e62      	ldr	r2, [r4, #100]	@ 0x64
100057fc:	07d0      	lsls	r0, r2, #31
100057fe:	d404      	bmi.n	1000580a <_fflush_r+0x32>
10005800:	0599      	lsls	r1, r3, #22
10005802:	d402      	bmi.n	1000580a <_fflush_r+0x32>
10005804:	6da0      	ldr	r0, [r4, #88]	@ 0x58
10005806:	f7ff fc3a 	bl	1000507e <__retarget_lock_acquire_recursive>
1000580a:	4628      	mov	r0, r5
1000580c:	4621      	mov	r1, r4
1000580e:	f7ff ff63 	bl	100056d8 <__sflush_r>
10005812:	6e63      	ldr	r3, [r4, #100]	@ 0x64
10005814:	4605      	mov	r5, r0
10005816:	07da      	lsls	r2, r3, #31
10005818:	d4e4      	bmi.n	100057e4 <_fflush_r+0xc>
1000581a:	89a3      	ldrh	r3, [r4, #12]
1000581c:	059b      	lsls	r3, r3, #22
1000581e:	d4e1      	bmi.n	100057e4 <_fflush_r+0xc>
10005820:	6da0      	ldr	r0, [r4, #88]	@ 0x58
10005822:	f7ff fc2d 	bl	10005080 <__retarget_lock_release_recursive>
10005826:	e7dd      	b.n	100057e4 <_fflush_r+0xc>

10005828 <__swhatbuf_r>:
10005828:	b570      	push	{r4, r5, r6, lr}
1000582a:	460c      	mov	r4, r1
1000582c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
10005830:	b096      	sub	sp, #88	@ 0x58
10005832:	4615      	mov	r5, r2
10005834:	2900      	cmp	r1, #0
10005836:	461e      	mov	r6, r3
10005838:	da0a      	bge.n	10005850 <__swhatbuf_r+0x28>
1000583a:	89a1      	ldrh	r1, [r4, #12]
1000583c:	f011 0180 	ands.w	r1, r1, #128	@ 0x80
10005840:	d113      	bne.n	1000586a <__swhatbuf_r+0x42>
10005842:	f44f 6280 	mov.w	r2, #1024	@ 0x400
10005846:	2000      	movs	r0, #0
10005848:	6031      	str	r1, [r6, #0]
1000584a:	602a      	str	r2, [r5, #0]
1000584c:	b016      	add	sp, #88	@ 0x58
1000584e:	bd70      	pop	{r4, r5, r6, pc}
10005850:	466a      	mov	r2, sp
10005852:	f000 f847 	bl	100058e4 <_fstat_r>
10005856:	2800      	cmp	r0, #0
10005858:	dbef      	blt.n	1000583a <__swhatbuf_r+0x12>
1000585a:	9901      	ldr	r1, [sp, #4]
1000585c:	f401 4170 	and.w	r1, r1, #61440	@ 0xf000
10005860:	f5a1 5300 	sub.w	r3, r1, #8192	@ 0x2000
10005864:	4259      	negs	r1, r3
10005866:	4159      	adcs	r1, r3
10005868:	e7eb      	b.n	10005842 <__swhatbuf_r+0x1a>
1000586a:	2100      	movs	r1, #0
1000586c:	2240      	movs	r2, #64	@ 0x40
1000586e:	e7ea      	b.n	10005846 <__swhatbuf_r+0x1e>

10005870 <__smakebuf_r>:
10005870:	898b      	ldrh	r3, [r1, #12]
10005872:	b573      	push	{r0, r1, r4, r5, r6, lr}
10005874:	079e      	lsls	r6, r3, #30
10005876:	4605      	mov	r5, r0
10005878:	460c      	mov	r4, r1
1000587a:	d507      	bpl.n	1000588c <__smakebuf_r+0x1c>
1000587c:	f104 0347 	add.w	r3, r4, #71	@ 0x47
10005880:	6023      	str	r3, [r4, #0]
10005882:	6123      	str	r3, [r4, #16]
10005884:	2301      	movs	r3, #1
10005886:	6163      	str	r3, [r4, #20]
10005888:	b002      	add	sp, #8
1000588a:	bd70      	pop	{r4, r5, r6, pc}
1000588c:	ab01      	add	r3, sp, #4
1000588e:	466a      	mov	r2, sp
10005890:	f7ff ffca 	bl	10005828 <__swhatbuf_r>
10005894:	9e00      	ldr	r6, [sp, #0]
10005896:	4628      	mov	r0, r5
10005898:	4631      	mov	r1, r6
1000589a:	f7ff f903 	bl	10004aa4 <_malloc_r>
1000589e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
100058a2:	b938      	cbnz	r0, 100058b4 <__smakebuf_r+0x44>
100058a4:	059a      	lsls	r2, r3, #22
100058a6:	d4ef      	bmi.n	10005888 <__smakebuf_r+0x18>
100058a8:	f023 0303 	bic.w	r3, r3, #3
100058ac:	f043 0302 	orr.w	r3, r3, #2
100058b0:	81a3      	strh	r3, [r4, #12]
100058b2:	e7e3      	b.n	1000587c <__smakebuf_r+0xc>
100058b4:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
100058b8:	6020      	str	r0, [r4, #0]
100058ba:	81a3      	strh	r3, [r4, #12]
100058bc:	9b01      	ldr	r3, [sp, #4]
100058be:	e9c4 0604 	strd	r0, r6, [r4, #16]
100058c2:	2b00      	cmp	r3, #0
100058c4:	d0e0      	beq.n	10005888 <__smakebuf_r+0x18>
100058c6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
100058ca:	4628      	mov	r0, r5
100058cc:	f000 f81c 	bl	10005908 <_isatty_r>
100058d0:	2800      	cmp	r0, #0
100058d2:	d0d9      	beq.n	10005888 <__smakebuf_r+0x18>
100058d4:	89a3      	ldrh	r3, [r4, #12]
100058d6:	f023 0303 	bic.w	r3, r3, #3
100058da:	f043 0301 	orr.w	r3, r3, #1
100058de:	81a3      	strh	r3, [r4, #12]
100058e0:	e7d2      	b.n	10005888 <__smakebuf_r+0x18>
	...

100058e4 <_fstat_r>:
100058e4:	b538      	push	{r3, r4, r5, lr}
100058e6:	2300      	movs	r3, #0
100058e8:	4d06      	ldr	r5, [pc, #24]	@ (10005904 <_fstat_r+0x20>)
100058ea:	4604      	mov	r4, r0
100058ec:	4608      	mov	r0, r1
100058ee:	4611      	mov	r1, r2
100058f0:	602b      	str	r3, [r5, #0]
100058f2:	f000 f82f 	bl	10005954 <_fstat>
100058f6:	1c43      	adds	r3, r0, #1
100058f8:	d102      	bne.n	10005900 <_fstat_r+0x1c>
100058fa:	682b      	ldr	r3, [r5, #0]
100058fc:	b103      	cbz	r3, 10005900 <_fstat_r+0x1c>
100058fe:	6023      	str	r3, [r4, #0]
10005900:	bd38      	pop	{r3, r4, r5, pc}
10005902:	bf00      	nop
10005904:	20005c3c 	.word	0x20005c3c

10005908 <_isatty_r>:
10005908:	b538      	push	{r3, r4, r5, lr}
1000590a:	2300      	movs	r3, #0
1000590c:	4d05      	ldr	r5, [pc, #20]	@ (10005924 <_isatty_r+0x1c>)
1000590e:	4604      	mov	r4, r0
10005910:	4608      	mov	r0, r1
10005912:	602b      	str	r3, [r5, #0]
10005914:	f000 f826 	bl	10005964 <_isatty>
10005918:	1c43      	adds	r3, r0, #1
1000591a:	d102      	bne.n	10005922 <_isatty_r+0x1a>
1000591c:	682b      	ldr	r3, [r5, #0]
1000591e:	b103      	cbz	r3, 10005922 <_isatty_r+0x1a>
10005920:	6023      	str	r3, [r4, #0]
10005922:	bd38      	pop	{r3, r4, r5, pc}
10005924:	20005c3c 	.word	0x20005c3c

10005928 <memchr>:
10005928:	b2c9      	uxtb	r1, r1
1000592a:	4603      	mov	r3, r0
1000592c:	4402      	add	r2, r0
1000592e:	b510      	push	{r4, lr}
10005930:	4293      	cmp	r3, r2
10005932:	4618      	mov	r0, r3
10005934:	d101      	bne.n	1000593a <memchr+0x12>
10005936:	2000      	movs	r0, #0
10005938:	e003      	b.n	10005942 <memchr+0x1a>
1000593a:	7804      	ldrb	r4, [r0, #0]
1000593c:	3301      	adds	r3, #1
1000593e:	428c      	cmp	r4, r1
10005940:	d1f6      	bne.n	10005930 <memchr+0x8>
10005942:	bd10      	pop	{r4, pc}

10005944 <_close>:
10005944:	4b02      	ldr	r3, [pc, #8]	@ (10005950 <_close+0xc>)
10005946:	2258      	movs	r2, #88	@ 0x58
10005948:	f04f 30ff 	mov.w	r0, #4294967295
1000594c:	601a      	str	r2, [r3, #0]
1000594e:	4770      	bx	lr
10005950:	20005c3c 	.word	0x20005c3c

10005954 <_fstat>:
10005954:	4b02      	ldr	r3, [pc, #8]	@ (10005960 <_fstat+0xc>)
10005956:	2258      	movs	r2, #88	@ 0x58
10005958:	f04f 30ff 	mov.w	r0, #4294967295
1000595c:	601a      	str	r2, [r3, #0]
1000595e:	4770      	bx	lr
10005960:	20005c3c 	.word	0x20005c3c

10005964 <_isatty>:
10005964:	4b02      	ldr	r3, [pc, #8]	@ (10005970 <_isatty+0xc>)
10005966:	2258      	movs	r2, #88	@ 0x58
10005968:	2000      	movs	r0, #0
1000596a:	601a      	str	r2, [r3, #0]
1000596c:	4770      	bx	lr
1000596e:	bf00      	nop
10005970:	20005c3c 	.word	0x20005c3c

10005974 <_lseek>:
10005974:	4b02      	ldr	r3, [pc, #8]	@ (10005980 <_lseek+0xc>)
10005976:	2258      	movs	r2, #88	@ 0x58
10005978:	f04f 30ff 	mov.w	r0, #4294967295
1000597c:	601a      	str	r2, [r3, #0]
1000597e:	4770      	bx	lr
10005980:	20005c3c 	.word	0x20005c3c

10005984 <_read>:
10005984:	4b02      	ldr	r3, [pc, #8]	@ (10005990 <_read+0xc>)
10005986:	2258      	movs	r2, #88	@ 0x58
10005988:	f04f 30ff 	mov.w	r0, #4294967295
1000598c:	601a      	str	r2, [r3, #0]
1000598e:	4770      	bx	lr
10005990:	20005c3c 	.word	0x20005c3c

10005994 <_sbrk>:
10005994:	4a05      	ldr	r2, [pc, #20]	@ (100059ac <_sbrk+0x18>)
10005996:	4603      	mov	r3, r0
10005998:	6810      	ldr	r0, [r2, #0]
1000599a:	b110      	cbz	r0, 100059a2 <_sbrk+0xe>
1000599c:	4403      	add	r3, r0
1000599e:	6013      	str	r3, [r2, #0]
100059a0:	4770      	bx	lr
100059a2:	4803      	ldr	r0, [pc, #12]	@ (100059b0 <_sbrk+0x1c>)
100059a4:	4403      	add	r3, r0
100059a6:	6013      	str	r3, [r2, #0]
100059a8:	4770      	bx	lr
100059aa:	bf00      	nop
100059ac:	20005c44 	.word	0x20005c44
100059b0:	20002000 	.word	0x20002000

100059b4 <rom_array_a4>:
100059b4:	00200009 000a0052 000c0074 00ac000b     .. .R...t.......
100059c4:	000c0018 002c0080 00c4000d 000e0004     ......,.........
100059d4:	000400c8                                ....

100059d8 <rom_array>:
100059d8:	001a0000 00010001 00040004 00080002     ................
100059e8:	00030004 0004000c 00100004 00050004     ................
100059f8:	00020018 00140006 00070004 0001001b     ................
10005a08:	001c0008 504c0004 6c637943 203a7365     ......LPCycles: 
10005a18:	3d727563 64206425 61746c65 2c64253d     cur=%d delta=%d,
10005a28:	3d706d74 000a6425 6320504c 656c6379     tmp=%d..LP cycle
10005a38:	64252073 6874202c 25203064 74202c64     s %d, thd0 %d, t
10005a48:	20316468 202c6425 6c616373 64252065     hd1 %d, scale %d
10005a58:	74634100 206c6175 61726150 7563203a     .Actual Para: cu
10005a68:	64253d72 7661202c 64253d65 7563202c     r=%d, ave=%d, cu
10005a78:	61625f72 70756b63 2c642520 706c6120     r_backup %d, alp
10005a88:	25206168 74202c64 2a28706d 3d293031     ha %d, tmp(*10)=
10005a98:	0a0d6425 74657300 65766120 43504c00     %d...set ave.LPC
10005aa8:	656c6379 25203a73 61202c64 253d6576     ycles: %d, ave=%
10005ab8:	63202c64 746e756f 2064253d 3d706d74     d, count=%d tmp=
10005ac8:	0a0d6425 004e4f00 0046464f 72617453     %d...ON.OFF.Star
10005ad8:	78652074 6c706d61 6c622065 216b6e69     t example blink!
10005ae8:	72755400 676e696e 65687420 44454c20     .Turning the LED
10005af8:	3b732520 2d23000a 00202b30 004c6c68      %s;..#-0+ .hlL.
10005b08:	45676665 30004746 34333231 38373635     efgEFG.012345678
10005b18:	43424139 00464544 33323130 37363534     9ABCDEF.01234567
10005b28:	62613938 66656463 00000000              89abcdef....

10005b34 <_init>:
10005b34:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10005b36:	bf00      	nop
10005b38:	bcf8      	pop	{r3, r4, r5, r6, r7}
10005b3a:	bc08      	pop	{r3}
10005b3c:	469e      	mov	lr, r3
10005b3e:	4770      	bx	lr

10005b40 <_fini>:
10005b40:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10005b42:	bf00      	nop
10005b44:	bcf8      	pop	{r3, r4, r5, r6, r7}
10005b46:	bc08      	pop	{r3}
10005b48:	469e      	mov	lr, r3
10005b4a:	4770      	bx	lr
10005b4c:	0000      	movs	r0, r0
	...

10005b50 <__HAL_RCC_LCPU_SetDiv_veneer>:
10005b50:	f85f f000 	ldr.w	pc, [pc]	@ 10005b54 <__HAL_RCC_LCPU_SetDiv_veneer+0x4>
10005b54:	20003f65 	.word	0x20003f65

10005b58 <__HAL_GPIO_WritePin_veneer>:
10005b58:	f85f f000 	ldr.w	pc, [pc]	@ 10005b5c <__HAL_GPIO_WritePin_veneer+0x4>
10005b5c:	200049bd 	.word	0x200049bd

10005b60 <__HAL_Delay_us_veneer>:
10005b60:	f85f f000 	ldr.w	pc, [pc]	@ 10005b64 <__HAL_Delay_us_veneer+0x4>
10005b64:	20004b4d 	.word	0x20004b4d

10005b68 <__HAL_Delay_us__veneer>:
10005b68:	f85f f000 	ldr.w	pc, [pc]	@ 10005b6c <__HAL_Delay_us__veneer+0x4>
10005b6c:	20004b91 	.word	0x20004b91

10005b70 <__HAL_GPIO_Init_veneer>:
10005b70:	f85f f000 	ldr.w	pc, [pc]	@ 10005b74 <__HAL_GPIO_Init_veneer+0x4>
10005b74:	2000488d 	.word	0x2000488d

10005b78 <__HAL_Init_veneer>:
10005b78:	f85f f000 	ldr.w	pc, [pc]	@ 10005b7c <__HAL_Init_veneer+0x4>
10005b7c:	20004ae9 	.word	0x20004ae9

10005b80 <__HAL_RCC_EnableModule_veneer>:
10005b80:	f85f f000 	ldr.w	pc, [pc]	@ 10005b84 <__HAL_RCC_EnableModule_veneer+0x4>
10005b84:	20004051 	.word	0x20004051

10005b88 <__HAL_GTIMER_Check_veneer>:
10005b88:	f85f f000 	ldr.w	pc, [pc]	@ 10005b8c <__HAL_GTIMER_Check_veneer+0x4>
10005b8c:	20004a9d 	.word	0x20004a9d

10005b90 <__HAL_HPAON_WakeCore_veneer>:
10005b90:	f85f f000 	ldr.w	pc, [pc]	@ 10005b94 <__HAL_HPAON_WakeCore_veneer+0x4>
10005b94:	20004a21 	.word	0x20004a21

10005b98 <__memset_veneer>:
10005b98:	f85f f000 	ldr.w	pc, [pc]	@ 10005b9c <__memset_veneer+0x4>
10005b9c:	200058dd 	.word	0x200058dd

10005ba0 <__HAL_Delay_veneer>:
10005ba0:	f85f f000 	ldr.w	pc, [pc]	@ 10005ba4 <__HAL_Delay_veneer+0x4>
10005ba4:	20004c4f 	.word	0x20004c4f

10005ba8 <__HAL_RCC_GetPCLKFreq_veneer>:
10005ba8:	f85f f000 	ldr.w	pc, [pc]	@ 10005bac <__HAL_RCC_GetPCLKFreq_veneer+0x4>
10005bac:	20003fc5 	.word	0x20003fc5

10005bb0 <__EH_FRAME_BEGIN__>:
10005bb0:	00000000                                ....
