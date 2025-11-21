
build_sf32lb52-nano_a128r16_hcpu\bootloader\bootloader.elf:     file format elf32-littlearm


Disassembly of section .text:

20020208 <deregister_tm_clones>:
20020208:	4803      	ldr	r0, [pc, #12]	@ (20020218 <deregister_tm_clones+0x10>)
2002020a:	4b04      	ldr	r3, [pc, #16]	@ (2002021c <deregister_tm_clones+0x14>)
2002020c:	4283      	cmp	r3, r0
2002020e:	d002      	beq.n	20020216 <deregister_tm_clones+0xe>
20020210:	4b03      	ldr	r3, [pc, #12]	@ (20020220 <deregister_tm_clones+0x18>)
20020212:	b103      	cbz	r3, 20020216 <deregister_tm_clones+0xe>
20020214:	4718      	bx	r3
20020216:	4770      	bx	lr
20020218:	20044960 	.word	0x20044960
2002021c:	20044960 	.word	0x20044960
20020220:	00000000 	.word	0x00000000

20020224 <register_tm_clones>:
20020224:	4b06      	ldr	r3, [pc, #24]	@ (20020240 <register_tm_clones+0x1c>)
20020226:	4907      	ldr	r1, [pc, #28]	@ (20020244 <register_tm_clones+0x20>)
20020228:	1ac9      	subs	r1, r1, r3
2002022a:	1089      	asrs	r1, r1, #2
2002022c:	bf48      	it	mi
2002022e:	3101      	addmi	r1, #1
20020230:	1049      	asrs	r1, r1, #1
20020232:	d003      	beq.n	2002023c <register_tm_clones+0x18>
20020234:	4b04      	ldr	r3, [pc, #16]	@ (20020248 <register_tm_clones+0x24>)
20020236:	b10b      	cbz	r3, 2002023c <register_tm_clones+0x18>
20020238:	4801      	ldr	r0, [pc, #4]	@ (20020240 <register_tm_clones+0x1c>)
2002023a:	4718      	bx	r3
2002023c:	4770      	bx	lr
2002023e:	bf00      	nop
20020240:	20044960 	.word	0x20044960
20020244:	20044960 	.word	0x20044960
20020248:	00000000 	.word	0x00000000

2002024c <__do_global_dtors_aux>:
2002024c:	b510      	push	{r4, lr}
2002024e:	4c06      	ldr	r4, [pc, #24]	@ (20020268 <__do_global_dtors_aux+0x1c>)
20020250:	7823      	ldrb	r3, [r4, #0]
20020252:	b943      	cbnz	r3, 20020266 <__do_global_dtors_aux+0x1a>
20020254:	f7ff ffd8 	bl	20020208 <deregister_tm_clones>
20020258:	4b04      	ldr	r3, [pc, #16]	@ (2002026c <__do_global_dtors_aux+0x20>)
2002025a:	b113      	cbz	r3, 20020262 <__do_global_dtors_aux+0x16>
2002025c:	4804      	ldr	r0, [pc, #16]	@ (20020270 <__do_global_dtors_aux+0x24>)
2002025e:	f3af 8000 	nop.w
20020262:	2301      	movs	r3, #1
20020264:	7023      	strb	r3, [r4, #0]
20020266:	bd10      	pop	{r4, pc}
20020268:	20044960 	.word	0x20044960
2002026c:	00000000 	.word	0x00000000
20020270:	2002c2f4 	.word	0x2002c2f4

20020274 <frame_dummy>:
20020274:	b508      	push	{r3, lr}
20020276:	4b05      	ldr	r3, [pc, #20]	@ (2002028c <frame_dummy+0x18>)
20020278:	b11b      	cbz	r3, 20020282 <frame_dummy+0xe>
2002027a:	4905      	ldr	r1, [pc, #20]	@ (20020290 <frame_dummy+0x1c>)
2002027c:	4805      	ldr	r0, [pc, #20]	@ (20020294 <frame_dummy+0x20>)
2002027e:	f3af 8000 	nop.w
20020282:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20020286:	f7ff bfcd 	b.w	20020224 <register_tm_clones>
2002028a:	bf00      	nop
2002028c:	00000000 	.word	0x00000000
20020290:	20044964 	.word	0x20044964
20020294:	2002c2f4 	.word	0x2002c2f4

20020298 <boot_uart_tx>:
20020298:	2300      	movs	r3, #0
2002029a:	b510      	push	{r4, lr}
2002029c:	4293      	cmp	r3, r2
2002029e:	db00      	blt.n	200202a2 <boot_uart_tx+0xa>
200202a0:	bd10      	pop	{r4, pc}
200202a2:	69c4      	ldr	r4, [r0, #28]
200202a4:	0624      	lsls	r4, r4, #24
200202a6:	d5fc      	bpl.n	200202a2 <boot_uart_tx+0xa>
200202a8:	5ccc      	ldrb	r4, [r1, r3]
200202aa:	3301      	adds	r3, #1
200202ac:	6284      	str	r4, [r0, #40]	@ 0x28
200202ae:	e7f5      	b.n	2002029c <boot_uart_tx+0x4>

200202b0 <boot_error>:
200202b0:	b507      	push	{r0, r1, r2, lr}
200202b2:	2201      	movs	r2, #1
200202b4:	f88d 0007 	strb.w	r0, [sp, #7]
200202b8:	f10d 0107 	add.w	r1, sp, #7
200202bc:	480e      	ldr	r0, [pc, #56]	@ (200202f8 <boot_error+0x48>)
200202be:	f7ff ffeb 	bl	20020298 <boot_uart_tx>
200202c2:	4b0e      	ldr	r3, [pc, #56]	@ (200202fc <boot_error+0x4c>)
200202c4:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202c8:	f002 0203 	and.w	r2, r2, #3
200202cc:	2a03      	cmp	r2, #3
200202ce:	f102 0101 	add.w	r1, r2, #1
200202d2:	d00f      	beq.n	200202f4 <boot_error+0x44>
200202d4:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202d8:	f022 0203 	bic.w	r2, r2, #3
200202dc:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
200202e0:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
200202e4:	430a      	orrs	r2, r1
200202e6:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
200202ea:	f00c f82f 	bl	2002c34c <HAL_PMU_Reboot>
200202ee:	b003      	add	sp, #12
200202f0:	f85d fb04 	ldr.w	pc, [sp], #4
200202f4:	e7fe      	b.n	200202f4 <boot_error+0x44>
200202f6:	bf00      	nop
200202f8:	50084000 	.word	0x50084000
200202fc:	500ca000 	.word	0x500ca000

20020300 <HAL_MspInit>:
20020300:	2234      	movs	r2, #52	@ 0x34
20020302:	4b01      	ldr	r3, [pc, #4]	@ (20020308 <HAL_MspInit+0x8>)
20020304:	60da      	str	r2, [r3, #12]
20020306:	4770      	bx	lr
20020308:	50094000 	.word	0x50094000

2002030c <mpu_config>:
2002030c:	4770      	bx	lr

2002030e <cache_enable>:
2002030e:	4770      	bx	lr

20020310 <board_pinmux_mpi1_puya_base>:
20020310:	b510      	push	{r4, lr}
20020312:	2301      	movs	r3, #1
20020314:	2200      	movs	r2, #0
20020316:	2103      	movs	r1, #3
20020318:	2002      	movs	r0, #2
2002031a:	f004 fc21 	bl	20024b60 <HAL_PIN_Set>
2002031e:	2301      	movs	r3, #1
20020320:	2200      	movs	r2, #0
20020322:	4619      	mov	r1, r3
20020324:	200a      	movs	r0, #10
20020326:	f004 fc1b 	bl	20024b60 <HAL_PIN_Set>
2002032a:	2301      	movs	r3, #1
2002032c:	2210      	movs	r2, #16
2002032e:	2109      	movs	r1, #9
20020330:	2008      	movs	r0, #8
20020332:	f004 fc15 	bl	20024b60 <HAL_PIN_Set>
20020336:	2301      	movs	r3, #1
20020338:	2210      	movs	r2, #16
2002033a:	210a      	movs	r1, #10
2002033c:	2003      	movs	r0, #3
2002033e:	f004 fc0f 	bl	20024b60 <HAL_PIN_Set>
20020342:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020346:	2301      	movs	r3, #1
20020348:	2200      	movs	r2, #0
2002034a:	210c      	movs	r1, #12
2002034c:	200b      	movs	r0, #11
2002034e:	f004 bc07 	b.w	20024b60 <HAL_PIN_Set>

20020352 <board_pinmux_mpi1_puya_ext>:
20020352:	b510      	push	{r4, lr}
20020354:	4604      	mov	r4, r0
20020356:	2101      	movs	r1, #1
20020358:	2005      	movs	r0, #5
2002035a:	f004 fd45 	bl	20024de8 <HAL_PIN_Set_Analog>
2002035e:	2101      	movs	r1, #1
20020360:	2006      	movs	r0, #6
20020362:	f004 fd41 	bl	20024de8 <HAL_PIN_Set_Analog>
20020366:	2101      	movs	r1, #1
20020368:	2007      	movs	r0, #7
2002036a:	f004 fd3d 	bl	20024de8 <HAL_PIN_Set_Analog>
2002036e:	2101      	movs	r1, #1
20020370:	2009      	movs	r0, #9
20020372:	f004 fd39 	bl	20024de8 <HAL_PIN_Set_Analog>
20020376:	2101      	movs	r1, #1
20020378:	200c      	movs	r0, #12
2002037a:	f004 fd35 	bl	20024de8 <HAL_PIN_Set_Analog>
2002037e:	2101      	movs	r1, #1
20020380:	200d      	movs	r0, #13
20020382:	f004 fd31 	bl	20024de8 <HAL_PIN_Set_Analog>
20020386:	2101      	movs	r1, #1
20020388:	b154      	cbz	r4, 200203a0 <board_pinmux_mpi1_puya_ext+0x4e>
2002038a:	4608      	mov	r0, r1
2002038c:	f004 fd2c 	bl	20024de8 <HAL_PIN_Set_Analog>
20020390:	2301      	movs	r3, #1
20020392:	2230      	movs	r2, #48	@ 0x30
20020394:	210b      	movs	r1, #11
20020396:	2004      	movs	r0, #4
20020398:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002039c:	f004 bbe0 	b.w	20024b60 <HAL_PIN_Set>
200203a0:	2004      	movs	r0, #4
200203a2:	f004 fd21 	bl	20024de8 <HAL_PIN_Set_Analog>
200203a6:	2301      	movs	r3, #1
200203a8:	2230      	movs	r2, #48	@ 0x30
200203aa:	210b      	movs	r1, #11
200203ac:	4618      	mov	r0, r3
200203ae:	e7f3      	b.n	20020398 <board_pinmux_mpi1_puya_ext+0x46>

200203b0 <board_pinmux_mpi1_gd>:
200203b0:	b508      	push	{r3, lr}
200203b2:	2200      	movs	r2, #0
200203b4:	2301      	movs	r3, #1
200203b6:	2103      	movs	r1, #3
200203b8:	2005      	movs	r0, #5
200203ba:	f004 fbd1 	bl	20024b60 <HAL_PIN_Set>
200203be:	2301      	movs	r3, #1
200203c0:	2200      	movs	r2, #0
200203c2:	4619      	mov	r1, r3
200203c4:	200a      	movs	r0, #10
200203c6:	f004 fbcb 	bl	20024b60 <HAL_PIN_Set>
200203ca:	2301      	movs	r3, #1
200203cc:	2210      	movs	r2, #16
200203ce:	2109      	movs	r1, #9
200203d0:	200c      	movs	r0, #12
200203d2:	f004 fbc5 	bl	20024b60 <HAL_PIN_Set>
200203d6:	2301      	movs	r3, #1
200203d8:	2210      	movs	r2, #16
200203da:	210a      	movs	r1, #10
200203dc:	2003      	movs	r0, #3
200203de:	f004 fbbf 	bl	20024b60 <HAL_PIN_Set>
200203e2:	2301      	movs	r3, #1
200203e4:	2230      	movs	r2, #48	@ 0x30
200203e6:	210b      	movs	r1, #11
200203e8:	4618      	mov	r0, r3
200203ea:	f004 fbb9 	bl	20024b60 <HAL_PIN_Set>
200203ee:	2301      	movs	r3, #1
200203f0:	2230      	movs	r2, #48	@ 0x30
200203f2:	210c      	movs	r1, #12
200203f4:	2009      	movs	r0, #9
200203f6:	f004 fbb3 	bl	20024b60 <HAL_PIN_Set>
200203fa:	2101      	movs	r1, #1
200203fc:	2002      	movs	r0, #2
200203fe:	f004 fcf3 	bl	20024de8 <HAL_PIN_Set_Analog>
20020402:	2101      	movs	r1, #1
20020404:	2004      	movs	r0, #4
20020406:	f004 fcef 	bl	20024de8 <HAL_PIN_Set_Analog>
2002040a:	2101      	movs	r1, #1
2002040c:	2006      	movs	r0, #6
2002040e:	f004 fceb 	bl	20024de8 <HAL_PIN_Set_Analog>
20020412:	2101      	movs	r1, #1
20020414:	2007      	movs	r0, #7
20020416:	f004 fce7 	bl	20024de8 <HAL_PIN_Set_Analog>
2002041a:	2101      	movs	r1, #1
2002041c:	2008      	movs	r0, #8
2002041e:	f004 fce3 	bl	20024de8 <HAL_PIN_Set_Analog>
20020422:	2101      	movs	r1, #1
20020424:	200b      	movs	r0, #11
20020426:	f004 fcdf 	bl	20024de8 <HAL_PIN_Set_Analog>
2002042a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002042e:	2101      	movs	r1, #1
20020430:	200d      	movs	r0, #13
20020432:	f004 bcd9 	b.w	20024de8 <HAL_PIN_Set_Analog>

20020436 <board_pinmux_mpi2>:
20020436:	b510      	push	{r4, lr}
20020438:	2301      	movs	r3, #1
2002043a:	2200      	movs	r2, #0
2002043c:	2119      	movs	r1, #25
2002043e:	201e      	movs	r0, #30
20020440:	f004 fb8e 	bl	20024b60 <HAL_PIN_Set>
20020444:	2301      	movs	r3, #1
20020446:	2200      	movs	r2, #0
20020448:	211b      	movs	r1, #27
2002044a:	201a      	movs	r0, #26
2002044c:	f004 fb88 	bl	20024b60 <HAL_PIN_Set>
20020450:	2301      	movs	r3, #1
20020452:	2210      	movs	r2, #16
20020454:	2121      	movs	r1, #33	@ 0x21
20020456:	201d      	movs	r0, #29
20020458:	f004 fb82 	bl	20024b60 <HAL_PIN_Set>
2002045c:	2301      	movs	r3, #1
2002045e:	2210      	movs	r2, #16
20020460:	2122      	movs	r1, #34	@ 0x22
20020462:	201b      	movs	r0, #27
20020464:	f004 fb7c 	bl	20024b60 <HAL_PIN_Set>
20020468:	2301      	movs	r3, #1
2002046a:	2230      	movs	r2, #48	@ 0x30
2002046c:	2123      	movs	r1, #35	@ 0x23
2002046e:	201c      	movs	r0, #28
20020470:	f004 fb76 	bl	20024b60 <HAL_PIN_Set>
20020474:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020478:	2301      	movs	r3, #1
2002047a:	2230      	movs	r2, #48	@ 0x30
2002047c:	2124      	movs	r1, #36	@ 0x24
2002047e:	201f      	movs	r0, #31
20020480:	f004 bb6e 	b.w	20024b60 <HAL_PIN_Set>

20020484 <board_pinmux_sd>:
20020484:	b510      	push	{r4, lr}
20020486:	2301      	movs	r3, #1
20020488:	2230      	movs	r2, #48	@ 0x30
2002048a:	f44f 71da 	mov.w	r1, #436	@ 0x1b4
2002048e:	201d      	movs	r0, #29
20020490:	f004 fb66 	bl	20024b60 <HAL_PIN_Set>
20020494:	2014      	movs	r0, #20
20020496:	f001 fd46 	bl	20021f26 <HAL_Delay_us>
2002049a:	2301      	movs	r3, #1
2002049c:	2200      	movs	r2, #0
2002049e:	f44f 71d9 	mov.w	r1, #434	@ 0x1b2
200204a2:	201c      	movs	r0, #28
200204a4:	f004 fb5c 	bl	20024b60 <HAL_PIN_Set>
200204a8:	2301      	movs	r3, #1
200204aa:	2230      	movs	r2, #48	@ 0x30
200204ac:	f240 11b5 	movw	r1, #437	@ 0x1b5
200204b0:	201e      	movs	r0, #30
200204b2:	f004 fb55 	bl	20024b60 <HAL_PIN_Set>
200204b6:	2301      	movs	r3, #1
200204b8:	2230      	movs	r2, #48	@ 0x30
200204ba:	f44f 71db 	mov.w	r1, #438	@ 0x1b6
200204be:	201f      	movs	r0, #31
200204c0:	f004 fb4e 	bl	20024b60 <HAL_PIN_Set>
200204c4:	2301      	movs	r3, #1
200204c6:	2230      	movs	r2, #48	@ 0x30
200204c8:	f240 11b7 	movw	r1, #439	@ 0x1b7
200204cc:	201a      	movs	r0, #26
200204ce:	f004 fb47 	bl	20024b60 <HAL_PIN_Set>
200204d2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200204d6:	2301      	movs	r3, #1
200204d8:	2230      	movs	r2, #48	@ 0x30
200204da:	f44f 71dc 	mov.w	r1, #440	@ 0x1b8
200204de:	201b      	movs	r0, #27
200204e0:	f004 bb3e 	b.w	20024b60 <HAL_PIN_Set>

200204e4 <board_boot_from>:
200204e4:	b510      	push	{r4, lr}
200204e6:	4b0d      	ldr	r3, [pc, #52]	@ (2002051c <board_boot_from+0x38>)
200204e8:	685b      	ldr	r3, [r3, #4]
200204ea:	f3c3 2302 	ubfx	r3, r3, #8, #3
200204ee:	2b07      	cmp	r3, #7
200204f0:	d10c      	bne.n	2002050c <board_boot_from+0x28>
200204f2:	2400      	movs	r4, #0
200204f4:	3401      	adds	r4, #1
200204f6:	2101      	movs	r1, #1
200204f8:	4620      	mov	r0, r4
200204fa:	f004 fc75 	bl	20024de8 <HAL_PIN_Set_Analog>
200204fe:	2c0d      	cmp	r4, #13
20020500:	d1f8      	bne.n	200204f4 <board_boot_from+0x10>
20020502:	2000      	movs	r0, #0
20020504:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020508:	f002 baf2 	b.w	20022af0 <HAL_Get_backup>
2002050c:	b11b      	cbz	r3, 20020516 <board_boot_from+0x32>
2002050e:	2b01      	cmp	r3, #1
20020510:	d1f7      	bne.n	20020502 <board_boot_from+0x1e>
20020512:	2002      	movs	r0, #2
20020514:	bd10      	pop	{r4, pc}
20020516:	2001      	movs	r0, #1
20020518:	e7fc      	b.n	20020514 <board_boot_from+0x30>
2002051a:	bf00      	nop
2002051c:	5000b000 	.word	0x5000b000

20020520 <board_flash_power_on>:
20020520:	4770      	bx	lr

20020522 <board_pinmux_psram_func0>:
20020522:	b508      	push	{r3, lr}
20020524:	2210      	movs	r2, #16
20020526:	2301      	movs	r3, #1
20020528:	2109      	movs	r1, #9
2002052a:	2002      	movs	r0, #2
2002052c:	f004 fb18 	bl	20024b60 <HAL_PIN_Set>
20020530:	2301      	movs	r3, #1
20020532:	2210      	movs	r2, #16
20020534:	210a      	movs	r1, #10
20020536:	2003      	movs	r0, #3
20020538:	f004 fb12 	bl	20024b60 <HAL_PIN_Set>
2002053c:	2301      	movs	r3, #1
2002053e:	2210      	movs	r2, #16
20020540:	210b      	movs	r1, #11
20020542:	2004      	movs	r0, #4
20020544:	f004 fb0c 	bl	20024b60 <HAL_PIN_Set>
20020548:	2301      	movs	r3, #1
2002054a:	2210      	movs	r2, #16
2002054c:	210c      	movs	r1, #12
2002054e:	2005      	movs	r0, #5
20020550:	f004 fb06 	bl	20024b60 <HAL_PIN_Set>
20020554:	2301      	movs	r3, #1
20020556:	2210      	movs	r2, #16
20020558:	210d      	movs	r1, #13
2002055a:	2006      	movs	r0, #6
2002055c:	f004 fb00 	bl	20024b60 <HAL_PIN_Set>
20020560:	2301      	movs	r3, #1
20020562:	2210      	movs	r2, #16
20020564:	210e      	movs	r1, #14
20020566:	2007      	movs	r0, #7
20020568:	f004 fafa 	bl	20024b60 <HAL_PIN_Set>
2002056c:	2301      	movs	r3, #1
2002056e:	2210      	movs	r2, #16
20020570:	210f      	movs	r1, #15
20020572:	2008      	movs	r0, #8
20020574:	f004 faf4 	bl	20024b60 <HAL_PIN_Set>
20020578:	2210      	movs	r2, #16
2002057a:	2301      	movs	r3, #1
2002057c:	4611      	mov	r1, r2
2002057e:	2009      	movs	r0, #9
20020580:	f004 faee 	bl	20024b60 <HAL_PIN_Set>
20020584:	2301      	movs	r3, #1
20020586:	2210      	movs	r2, #16
20020588:	2106      	movs	r1, #6
2002058a:	200a      	movs	r0, #10
2002058c:	f004 fae8 	bl	20024b60 <HAL_PIN_Set>
20020590:	2301      	movs	r3, #1
20020592:	2200      	movs	r2, #0
20020594:	4619      	mov	r1, r3
20020596:	200b      	movs	r0, #11
20020598:	f004 fae2 	bl	20024b60 <HAL_PIN_Set>
2002059c:	2301      	movs	r3, #1
2002059e:	2200      	movs	r2, #0
200205a0:	2103      	movs	r1, #3
200205a2:	200c      	movs	r0, #12
200205a4:	f004 fadc 	bl	20024b60 <HAL_PIN_Set>
200205a8:	2101      	movs	r1, #1
200205aa:	4608      	mov	r0, r1
200205ac:	f004 fc1c 	bl	20024de8 <HAL_PIN_Set_Analog>
200205b0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
200205b4:	2101      	movs	r1, #1
200205b6:	200d      	movs	r0, #13
200205b8:	f004 bc16 	b.w	20024de8 <HAL_PIN_Set_Analog>

200205bc <board_pinmux_psram_func1_2_4>:
200205bc:	b510      	push	{r4, lr}
200205be:	2301      	movs	r3, #1
200205c0:	4604      	mov	r4, r0
200205c2:	2210      	movs	r2, #16
200205c4:	2109      	movs	r1, #9
200205c6:	2002      	movs	r0, #2
200205c8:	f004 faca 	bl	20024b60 <HAL_PIN_Set>
200205cc:	2301      	movs	r3, #1
200205ce:	2210      	movs	r2, #16
200205d0:	210a      	movs	r1, #10
200205d2:	2003      	movs	r0, #3
200205d4:	f004 fac4 	bl	20024b60 <HAL_PIN_Set>
200205d8:	2301      	movs	r3, #1
200205da:	2210      	movs	r2, #16
200205dc:	210b      	movs	r1, #11
200205de:	2004      	movs	r0, #4
200205e0:	f004 fabe 	bl	20024b60 <HAL_PIN_Set>
200205e4:	2301      	movs	r3, #1
200205e6:	2210      	movs	r2, #16
200205e8:	210c      	movs	r1, #12
200205ea:	2005      	movs	r0, #5
200205ec:	f004 fab8 	bl	20024b60 <HAL_PIN_Set>
200205f0:	2301      	movs	r3, #1
200205f2:	2210      	movs	r2, #16
200205f4:	210d      	movs	r1, #13
200205f6:	2009      	movs	r0, #9
200205f8:	f004 fab2 	bl	20024b60 <HAL_PIN_Set>
200205fc:	2301      	movs	r3, #1
200205fe:	2210      	movs	r2, #16
20020600:	210e      	movs	r1, #14
20020602:	200a      	movs	r0, #10
20020604:	f004 faac 	bl	20024b60 <HAL_PIN_Set>
20020608:	2301      	movs	r3, #1
2002060a:	2210      	movs	r2, #16
2002060c:	210f      	movs	r1, #15
2002060e:	200b      	movs	r0, #11
20020610:	f004 faa6 	bl	20024b60 <HAL_PIN_Set>
20020614:	2210      	movs	r2, #16
20020616:	2301      	movs	r3, #1
20020618:	4611      	mov	r1, r2
2002061a:	200c      	movs	r0, #12
2002061c:	f004 faa0 	bl	20024b60 <HAL_PIN_Set>
20020620:	2301      	movs	r3, #1
20020622:	2200      	movs	r2, #0
20020624:	4619      	mov	r1, r3
20020626:	2008      	movs	r0, #8
20020628:	f004 fa9a 	bl	20024b60 <HAL_PIN_Set>
2002062c:	2301      	movs	r3, #1
2002062e:	2200      	movs	r2, #0
20020630:	2103      	movs	r1, #3
20020632:	2006      	movs	r0, #6
20020634:	f004 fa94 	bl	20024b60 <HAL_PIN_Set>
20020638:	2c02      	cmp	r4, #2
2002063a:	d013      	beq.n	20020664 <board_pinmux_psram_func1_2_4+0xa8>
2002063c:	2c04      	cmp	r4, #4
2002063e:	d025      	beq.n	2002068c <board_pinmux_psram_func1_2_4+0xd0>
20020640:	2c01      	cmp	r4, #1
20020642:	d12c      	bne.n	2002069e <board_pinmux_psram_func1_2_4+0xe2>
20020644:	2106      	movs	r1, #6
20020646:	4623      	mov	r3, r4
20020648:	2210      	movs	r2, #16
2002064a:	200d      	movs	r0, #13
2002064c:	f004 fa88 	bl	20024b60 <HAL_PIN_Set>
20020650:	4621      	mov	r1, r4
20020652:	4620      	mov	r0, r4
20020654:	f004 fbc8 	bl	20024de8 <HAL_PIN_Set_Analog>
20020658:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002065c:	2101      	movs	r1, #1
2002065e:	2007      	movs	r0, #7
20020660:	f004 bbc2 	b.w	20024de8 <HAL_PIN_Set_Analog>
20020664:	2301      	movs	r3, #1
20020666:	2210      	movs	r2, #16
20020668:	2104      	movs	r1, #4
2002066a:	4618      	mov	r0, r3
2002066c:	f004 fa78 	bl	20024b60 <HAL_PIN_Set>
20020670:	2301      	movs	r3, #1
20020672:	2210      	movs	r2, #16
20020674:	2105      	movs	r1, #5
20020676:	200d      	movs	r0, #13
20020678:	f004 fa72 	bl	20024b60 <HAL_PIN_Set>
2002067c:	4621      	mov	r1, r4
2002067e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20020682:	2301      	movs	r3, #1
20020684:	2200      	movs	r2, #0
20020686:	2007      	movs	r0, #7
20020688:	f004 ba6a 	b.w	20024b60 <HAL_PIN_Set>
2002068c:	2106      	movs	r1, #6
2002068e:	2301      	movs	r3, #1
20020690:	2200      	movs	r2, #0
20020692:	200d      	movs	r0, #13
20020694:	f004 fa64 	bl	20024b60 <HAL_PIN_Set>
20020698:	2101      	movs	r1, #1
2002069a:	4608      	mov	r0, r1
2002069c:	e7da      	b.n	20020654 <board_pinmux_psram_func1_2_4+0x98>
2002069e:	bd10      	pop	{r4, pc}

200206a0 <board_pinmux_psram_func3>:
200206a0:	b508      	push	{r3, lr}
200206a2:	2301      	movs	r3, #1
200206a4:	2200      	movs	r2, #0
200206a6:	4619      	mov	r1, r3
200206a8:	200a      	movs	r0, #10
200206aa:	f004 fa59 	bl	20024b60 <HAL_PIN_Set>
200206ae:	2301      	movs	r3, #1
200206b0:	2200      	movs	r2, #0
200206b2:	2103      	movs	r1, #3
200206b4:	2009      	movs	r0, #9
200206b6:	f004 fa53 	bl	20024b60 <HAL_PIN_Set>
200206ba:	2301      	movs	r3, #1
200206bc:	2210      	movs	r2, #16
200206be:	2109      	movs	r1, #9
200206c0:	2006      	movs	r0, #6
200206c2:	f004 fa4d 	bl	20024b60 <HAL_PIN_Set>
200206c6:	2301      	movs	r3, #1
200206c8:	2210      	movs	r2, #16
200206ca:	210a      	movs	r1, #10
200206cc:	2008      	movs	r0, #8
200206ce:	f004 fa47 	bl	20024b60 <HAL_PIN_Set>
200206d2:	2301      	movs	r3, #1
200206d4:	2230      	movs	r2, #48	@ 0x30
200206d6:	210b      	movs	r1, #11
200206d8:	2007      	movs	r0, #7
200206da:	f004 fa41 	bl	20024b60 <HAL_PIN_Set>
200206de:	2301      	movs	r3, #1
200206e0:	2230      	movs	r2, #48	@ 0x30
200206e2:	210c      	movs	r1, #12
200206e4:	200b      	movs	r0, #11
200206e6:	f004 fa3b 	bl	20024b60 <HAL_PIN_Set>
200206ea:	2101      	movs	r1, #1
200206ec:	4608      	mov	r0, r1
200206ee:	f004 fb7b 	bl	20024de8 <HAL_PIN_Set_Analog>
200206f2:	2101      	movs	r1, #1
200206f4:	2002      	movs	r0, #2
200206f6:	f004 fb77 	bl	20024de8 <HAL_PIN_Set_Analog>
200206fa:	2101      	movs	r1, #1
200206fc:	2003      	movs	r0, #3
200206fe:	f004 fb73 	bl	20024de8 <HAL_PIN_Set_Analog>
20020702:	2101      	movs	r1, #1
20020704:	2004      	movs	r0, #4
20020706:	f004 fb6f 	bl	20024de8 <HAL_PIN_Set_Analog>
2002070a:	2101      	movs	r1, #1
2002070c:	2005      	movs	r0, #5
2002070e:	f004 fb6b 	bl	20024de8 <HAL_PIN_Set_Analog>
20020712:	2101      	movs	r1, #1
20020714:	200c      	movs	r0, #12
20020716:	f004 fb67 	bl	20024de8 <HAL_PIN_Set_Analog>
2002071a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
2002071e:	2101      	movs	r1, #1
20020720:	200d      	movs	r0, #13
20020722:	f004 bb61 	b.w	20024de8 <HAL_PIN_Set_Analog>

20020726 <bootloader_switch_clock>:
20020726:	2102      	movs	r1, #2
20020728:	2004      	movs	r0, #4
2002072a:	f004 bc8f 	b.w	2002504c <HAL_RCC_HCPU_ClockSelect>
	...

20020730 <boot_psram_init>:
20020730:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20020734:	2400      	movs	r4, #0
20020736:	b08a      	sub	sp, #40	@ 0x28
20020738:	4605      	mov	r5, r0
2002073a:	2230      	movs	r2, #48	@ 0x30
2002073c:	4621      	mov	r1, r4
2002073e:	4863      	ldr	r0, [pc, #396]	@ (200208cc <boot_psram_init+0x19c>)
20020740:	f00a f894 	bl	2002a86c <memset>
20020744:	4b62      	ldr	r3, [pc, #392]	@ (200208d0 <boot_psram_init+0x1a0>)
20020746:	1ea8      	subs	r0, r5, #2
20020748:	9305      	str	r3, [sp, #20]
2002074a:	f04f 5380 	mov.w	r3, #268435456	@ 0x10000000
2002074e:	9307      	str	r3, [sp, #28]
20020750:	2303      	movs	r3, #3
20020752:	9406      	str	r4, [sp, #24]
20020754:	9309      	str	r3, [sp, #36]	@ 0x24
20020756:	2804      	cmp	r0, #4
20020758:	d804      	bhi.n	20020764 <boot_psram_init+0x34>
2002075a:	e8df f000 	tbb	[pc, r0]
2002075e:	6264      	.short	0x6264
20020760:	5d04      	.short	0x5d04
20020762:	60          	.byte	0x60
20020763:	00          	.byte	0x00
20020764:	e7fe      	b.n	20020764 <boot_psram_init+0x34>
20020766:	2305      	movs	r3, #5
20020768:	9309      	str	r3, [sp, #36]	@ 0x24
2002076a:	2304      	movs	r3, #4
2002076c:	9d09      	ldr	r5, [sp, #36]	@ 0x24
2002076e:	9308      	str	r3, [sp, #32]
20020770:	2d03      	cmp	r5, #3
20020772:	d162      	bne.n	2002083a <boot_psram_init+0x10a>
20020774:	f001 faf8 	bl	20021d68 <BSP_GetFlash1DIV>
20020778:	a905      	add	r1, sp, #20
2002077a:	4602      	mov	r2, r0
2002077c:	4853      	ldr	r0, [pc, #332]	@ (200208cc <boot_psram_init+0x19c>)
2002077e:	f003 ff93 	bl	200246a8 <HAL_OPI_PSRAM_Init>
20020782:	462a      	mov	r2, r5
20020784:	2108      	movs	r1, #8
20020786:	4851      	ldr	r0, [pc, #324]	@ (200208cc <boot_psram_init+0x19c>)
20020788:	f003 fe80 	bl	2002448c <HAL_MPI_MR_WRITE>
2002078c:	484f      	ldr	r0, [pc, #316]	@ (200208cc <boot_psram_init+0x19c>)
2002078e:	f003 fb8b 	bl	20023ea8 <HAL_QSPI_GET_CLK>
20020792:	4b50      	ldr	r3, [pc, #320]	@ (200208d4 <boot_psram_init+0x1a4>)
20020794:	4298      	cmp	r0, r3
20020796:	d948      	bls.n	2002082a <boot_psram_init+0xfa>
20020798:	f103 63a4 	add.w	r3, r3, #85983232	@ 0x5200000
2002079c:	f503 4383 	add.w	r3, r3, #16768	@ 0x4180
200207a0:	4298      	cmp	r0, r3
200207a2:	d944      	bls.n	2002082e <boot_psram_init+0xfe>
200207a4:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
200207a8:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
200207ac:	4298      	cmp	r0, r3
200207ae:	d940      	bls.n	20020832 <boot_psram_init+0x102>
200207b0:	4b49      	ldr	r3, [pc, #292]	@ (200208d8 <boot_psram_init+0x1a8>)
200207b2:	4298      	cmp	r0, r3
200207b4:	d93f      	bls.n	20020836 <boot_psram_init+0x106>
200207b6:	4b49      	ldr	r3, [pc, #292]	@ (200208dc <boot_psram_init+0x1ac>)
200207b8:	4298      	cmp	r0, r3
200207ba:	bf98      	it	ls
200207bc:	2407      	movls	r4, #7
200207be:	2600      	movs	r6, #0
200207c0:	2507      	movs	r5, #7
200207c2:	f04f 0803 	mov.w	r8, #3
200207c6:	0067      	lsls	r7, r4, #1
200207c8:	b2ff      	uxtb	r7, r7
200207ca:	1e7a      	subs	r2, r7, #1
200207cc:	4633      	mov	r3, r6
200207ce:	b252      	sxtb	r2, r2
200207d0:	4629      	mov	r1, r5
200207d2:	483e      	ldr	r0, [pc, #248]	@ (200208cc <boot_psram_init+0x19c>)
200207d4:	e9cd 5502 	strd	r5, r5, [sp, #8]
200207d8:	e9cd 6800 	strd	r6, r8, [sp]
200207dc:	f002 f9f8 	bl	20022bd0 <HAL_FLASH_CFG_AHB_RCMD>
200207e0:	4631      	mov	r1, r6
200207e2:	483a      	ldr	r0, [pc, #232]	@ (200208cc <boot_psram_init+0x19c>)
200207e4:	f002 f9e9 	bl	20022bba <HAL_FLASH_SET_AHB_RCMD>
200207e8:	1e62      	subs	r2, r4, #1
200207ea:	4633      	mov	r3, r6
200207ec:	b252      	sxtb	r2, r2
200207ee:	4629      	mov	r1, r5
200207f0:	4836      	ldr	r0, [pc, #216]	@ (200208cc <boot_psram_init+0x19c>)
200207f2:	e9cd 5502 	strd	r5, r5, [sp, #8]
200207f6:	e9cd 6800 	strd	r6, r8, [sp]
200207fa:	f002 fa12 	bl	20022c22 <HAL_FLASH_CFG_AHB_WCMD>
200207fe:	2180      	movs	r1, #128	@ 0x80
20020800:	4832      	ldr	r0, [pc, #200]	@ (200208cc <boot_psram_init+0x19c>)
20020802:	f002 fa02 	bl	20022c0a <HAL_FLASH_SET_AHB_WCMD>
20020806:	4623      	mov	r3, r4
20020808:	463a      	mov	r2, r7
2002080a:	2101      	movs	r1, #1
2002080c:	482f      	ldr	r0, [pc, #188]	@ (200208cc <boot_psram_init+0x19c>)
2002080e:	f003 fe61 	bl	200244d4 <HAL_MPI_SET_FIXLAT>
20020812:	b00a      	add	sp, #40	@ 0x28
20020814:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20020818:	2302      	movs	r3, #2
2002081a:	9309      	str	r3, [sp, #36]	@ 0x24
2002081c:	e7a6      	b.n	2002076c <boot_psram_init+0x3c>
2002081e:	2306      	movs	r3, #6
20020820:	9309      	str	r3, [sp, #36]	@ 0x24
20020822:	2308      	movs	r3, #8
20020824:	e7a2      	b.n	2002076c <boot_psram_init+0x3c>
20020826:	2310      	movs	r3, #16
20020828:	e7a0      	b.n	2002076c <boot_psram_init+0x3c>
2002082a:	462c      	mov	r4, r5
2002082c:	e7c7      	b.n	200207be <boot_psram_init+0x8e>
2002082e:	2404      	movs	r4, #4
20020830:	e7c5      	b.n	200207be <boot_psram_init+0x8e>
20020832:	2405      	movs	r4, #5
20020834:	e7c3      	b.n	200207be <boot_psram_init+0x8e>
20020836:	2406      	movs	r4, #6
20020838:	e7c1      	b.n	200207be <boot_psram_init+0x8e>
2002083a:	2d05      	cmp	r5, #5
2002083c:	d10d      	bne.n	2002085a <boot_psram_init+0x12a>
2002083e:	f001 fa93 	bl	20021d68 <BSP_GetFlash1DIV>
20020842:	a905      	add	r1, sp, #20
20020844:	4602      	mov	r2, r0
20020846:	4821      	ldr	r0, [pc, #132]	@ (200208cc <boot_psram_init+0x19c>)
20020848:	f003 ffa6 	bl	20024798 <HAL_LEGACY_PSRAM_Init>
2002084c:	481f      	ldr	r0, [pc, #124]	@ (200208cc <boot_psram_init+0x19c>)
2002084e:	f003 feb3 	bl	200245b8 <HAL_LEGACY_CFG_READ>
20020852:	481e      	ldr	r0, [pc, #120]	@ (200208cc <boot_psram_init+0x19c>)
20020854:	f003 fecb 	bl	200245ee <HAL_LEGACY_CFG_WRITE>
20020858:	e7db      	b.n	20020812 <boot_psram_init+0xe2>
2002085a:	2d06      	cmp	r5, #6
2002085c:	d10d      	bne.n	2002087a <boot_psram_init+0x14a>
2002085e:	f001 fa83 	bl	20021d68 <BSP_GetFlash1DIV>
20020862:	a905      	add	r1, sp, #20
20020864:	4602      	mov	r2, r0
20020866:	4819      	ldr	r0, [pc, #100]	@ (200208cc <boot_psram_init+0x19c>)
20020868:	f004 f85e 	bl	20024928 <HAL_HYPER_PSRAM_Init>
2002086c:	4817      	ldr	r0, [pc, #92]	@ (200208cc <boot_psram_init+0x19c>)
2002086e:	f004 f895 	bl	2002499c <HAL_HYPER_CFG_READ>
20020872:	4816      	ldr	r0, [pc, #88]	@ (200208cc <boot_psram_init+0x19c>)
20020874:	f004 f8a4 	bl	200249c0 <HAL_HYPER_CFG_WRITE>
20020878:	e7cb      	b.n	20020812 <boot_psram_init+0xe2>
2002087a:	f001 fa75 	bl	20021d68 <BSP_GetFlash1DIV>
2002087e:	2500      	movs	r5, #0
20020880:	2403      	movs	r4, #3
20020882:	2701      	movs	r7, #1
20020884:	2602      	movs	r6, #2
20020886:	4602      	mov	r2, r0
20020888:	a905      	add	r1, sp, #20
2002088a:	4810      	ldr	r0, [pc, #64]	@ (200208cc <boot_psram_init+0x19c>)
2002088c:	f003 fda8 	bl	200243e0 <HAL_SPI_PSRAM_Init>
20020890:	462b      	mov	r3, r5
20020892:	2206      	movs	r2, #6
20020894:	4621      	mov	r1, r4
20020896:	e9cd 4702 	strd	r4, r7, [sp, #8]
2002089a:	e9cd 5600 	strd	r5, r6, [sp]
2002089e:	480b      	ldr	r0, [pc, #44]	@ (200208cc <boot_psram_init+0x19c>)
200208a0:	f002 f996 	bl	20022bd0 <HAL_FLASH_CFG_AHB_RCMD>
200208a4:	21eb      	movs	r1, #235	@ 0xeb
200208a6:	4809      	ldr	r0, [pc, #36]	@ (200208cc <boot_psram_init+0x19c>)
200208a8:	f002 f987 	bl	20022bba <HAL_FLASH_SET_AHB_RCMD>
200208ac:	4621      	mov	r1, r4
200208ae:	462b      	mov	r3, r5
200208b0:	462a      	mov	r2, r5
200208b2:	e9cd 4702 	strd	r4, r7, [sp, #8]
200208b6:	e9cd 5600 	strd	r5, r6, [sp]
200208ba:	4804      	ldr	r0, [pc, #16]	@ (200208cc <boot_psram_init+0x19c>)
200208bc:	f002 f9b1 	bl	20022c22 <HAL_FLASH_CFG_AHB_WCMD>
200208c0:	2138      	movs	r1, #56	@ 0x38
200208c2:	4802      	ldr	r0, [pc, #8]	@ (200208cc <boot_psram_init+0x19c>)
200208c4:	f002 f9a1 	bl	20022c0a <HAL_FLASH_SET_AHB_WCMD>
200208c8:	e7a3      	b.n	20020812 <boot_psram_init+0xe2>
200208ca:	bf00      	nop
200208cc:	2004497c 	.word	0x2004497c
200208d0:	50041000 	.word	0x50041000
200208d4:	07de2901 	.word	0x07de2901
200208d8:	13c9eb01 	.word	0x13c9eb01
200208dc:	17d78401 	.word	0x17d78401

200208e0 <board_init_psram>:
200208e0:	b510      	push	{r4, lr}
200208e2:	4b15      	ldr	r3, [pc, #84]	@ (20020938 <board_init_psram+0x58>)
200208e4:	685c      	ldr	r4, [r3, #4]
200208e6:	f3c4 2402 	ubfx	r4, r4, #8, #3
200208ea:	1ea3      	subs	r3, r4, #2
200208ec:	2b04      	cmp	r3, #4
200208ee:	d821      	bhi.n	20020934 <board_init_psram+0x54>
200208f0:	e8df f003 	tbb	[pc, r3]
200208f4:	03151b1d 	.word	0x03151b1d
200208f8:	19          	.byte	0x19
200208f9:	00          	.byte	0x00
200208fa:	f7ff fed1 	bl	200206a0 <board_pinmux_psram_func3>
200208fe:	2201      	movs	r2, #1
20020900:	2000      	movs	r0, #0
20020902:	4611      	mov	r1, r2
20020904:	f00b fcf8 	bl	2002c2f8 <HAL_PMU_ConfigPeriLdo>
20020908:	2001      	movs	r0, #1
2002090a:	f7ff ff0c 	bl	20020726 <bootloader_switch_clock>
2002090e:	2002      	movs	r0, #2
20020910:	f001 fa36 	bl	20021d80 <BSP_SetFlash1DIV>
20020914:	4620      	mov	r0, r4
20020916:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002091a:	f7ff bf09 	b.w	20020730 <boot_psram_init>
2002091e:	2002      	movs	r0, #2
20020920:	f7ff fe4c 	bl	200205bc <board_pinmux_psram_func1_2_4>
20020924:	e7eb      	b.n	200208fe <board_init_psram+0x1e>
20020926:	2004      	movs	r0, #4
20020928:	e7fa      	b.n	20020920 <board_init_psram+0x40>
2002092a:	2001      	movs	r0, #1
2002092c:	e7f8      	b.n	20020920 <board_init_psram+0x40>
2002092e:	f7ff fdf8 	bl	20020522 <board_pinmux_psram_func0>
20020932:	e7e4      	b.n	200208fe <board_init_psram+0x1e>
20020934:	bd10      	pop	{r4, pc}
20020936:	bf00      	nop
20020938:	5000b000 	.word	0x5000b000

2002093c <erase_nor>:
2002093c:	4b15      	ldr	r3, [pc, #84]	@ (20020994 <erase_nor+0x58>)
2002093e:	b570      	push	{r4, r5, r6, lr}
20020940:	f103 0644 	add.w	r6, r3, #68	@ 0x44
20020944:	f1b0 5f90 	cmp.w	r0, #301989888	@ 0x12000000
20020948:	bf38      	it	cc
2002094a:	461e      	movcc	r6, r3
2002094c:	6933      	ldr	r3, [r6, #16]
2002094e:	460c      	mov	r4, r1
20020950:	4283      	cmp	r3, r0
20020952:	d901      	bls.n	20020958 <erase_nor+0x1c>
20020954:	2001      	movs	r0, #1
20020956:	bd70      	pop	{r4, r5, r6, pc}
20020958:	6972      	ldr	r2, [r6, #20]
2002095a:	441a      	add	r2, r3
2002095c:	4282      	cmp	r2, r0
2002095e:	d3f9      	bcc.n	20020954 <erase_nor+0x18>
20020960:	1ac0      	subs	r0, r0, r3
20020962:	f3c0 030b 	ubfx	r3, r0, #0, #12
20020966:	b97b      	cbnz	r3, 20020988 <erase_nor+0x4c>
20020968:	f3c1 030b 	ubfx	r3, r1, #0, #12
2002096c:	b97b      	cbnz	r3, 2002098e <erase_nor+0x52>
2002096e:	1845      	adds	r5, r0, r1
20020970:	1b29      	subs	r1, r5, r4
20020972:	b90c      	cbnz	r4, 20020978 <erase_nor+0x3c>
20020974:	4620      	mov	r0, r4
20020976:	e7ee      	b.n	20020956 <erase_nor+0x1a>
20020978:	4630      	mov	r0, r6
2002097a:	f003 fa49 	bl	20023e10 <HAL_QSPIEX_SECT_ERASE>
2002097e:	2800      	cmp	r0, #0
20020980:	d1e8      	bne.n	20020954 <erase_nor+0x18>
20020982:	f5a4 5480 	sub.w	r4, r4, #4096	@ 0x1000
20020986:	e7f3      	b.n	20020970 <erase_nor+0x34>
20020988:	f04f 30ff 	mov.w	r0, #4294967295
2002098c:	e7e3      	b.n	20020956 <erase_nor+0x1a>
2002098e:	f06f 0001 	mvn.w	r0, #1
20020992:	e7e0      	b.n	20020956 <erase_nor+0x1a>
20020994:	20046ecc 	.word	0x20046ecc

20020998 <write_nor>:
20020998:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002099c:	4b20      	ldr	r3, [pc, #128]	@ (20020a20 <write_nor+0x88>)
2002099e:	460f      	mov	r7, r1
200209a0:	f103 0844 	add.w	r8, r3, #68	@ 0x44
200209a4:	f1b0 5f90 	cmp.w	r0, #301989888	@ 0x12000000
200209a8:	bf38      	it	cc
200209aa:	4698      	movcc	r8, r3
200209ac:	f8d8 5010 	ldr.w	r5, [r8, #16]
200209b0:	4616      	mov	r6, r2
200209b2:	4285      	cmp	r5, r0
200209b4:	d902      	bls.n	200209bc <write_nor+0x24>
200209b6:	2000      	movs	r0, #0
200209b8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
200209bc:	f8d8 2014 	ldr.w	r2, [r8, #20]
200209c0:	442a      	add	r2, r5
200209c2:	4282      	cmp	r2, r0
200209c4:	d3f7      	bcc.n	200209b6 <write_nor+0x1e>
200209c6:	1b45      	subs	r5, r0, r5
200209c8:	f015 04ff 	ands.w	r4, r5, #255	@ 0xff
200209cc:	d012      	beq.n	200209f4 <write_nor+0x5c>
200209ce:	f5c4 7480 	rsb	r4, r4, #256	@ 0x100
200209d2:	42b4      	cmp	r4, r6
200209d4:	bf28      	it	cs
200209d6:	4634      	movcs	r4, r6
200209d8:	460a      	mov	r2, r1
200209da:	4623      	mov	r3, r4
200209dc:	4629      	mov	r1, r5
200209de:	4640      	mov	r0, r8
200209e0:	f003 f931 	bl	20023c46 <HAL_QSPIEX_WRITE_PAGE>
200209e4:	4284      	cmp	r4, r0
200209e6:	d1e6      	bne.n	200209b6 <write_nor+0x1e>
200209e8:	4425      	add	r5, r4
200209ea:	4427      	add	r7, r4
200209ec:	1b34      	subs	r4, r6, r4
200209ee:	b91c      	cbnz	r4, 200209f8 <write_nor+0x60>
200209f0:	4630      	mov	r0, r6
200209f2:	e7e1      	b.n	200209b8 <write_nor+0x20>
200209f4:	4634      	mov	r4, r6
200209f6:	e7fa      	b.n	200209ee <write_nor+0x56>
200209f8:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
200209fc:	46a1      	mov	r9, r4
200209fe:	bf28      	it	cs
20020a00:	f44f 7980 	movcs.w	r9, #256	@ 0x100
20020a04:	463a      	mov	r2, r7
20020a06:	464b      	mov	r3, r9
20020a08:	4629      	mov	r1, r5
20020a0a:	4640      	mov	r0, r8
20020a0c:	f003 f91b 	bl	20023c46 <HAL_QSPIEX_WRITE_PAGE>
20020a10:	4581      	cmp	r9, r0
20020a12:	d1d0      	bne.n	200209b6 <write_nor+0x1e>
20020a14:	444d      	add	r5, r9
20020a16:	444f      	add	r7, r9
20020a18:	eba4 0409 	sub.w	r4, r4, r9
20020a1c:	e7e7      	b.n	200209ee <write_nor+0x56>
20020a1e:	bf00      	nop
20020a20:	20046ecc 	.word	0x20046ecc

20020a24 <read_nor>:
20020a24:	460b      	mov	r3, r1
20020a26:	b510      	push	{r4, lr}
20020a28:	4614      	mov	r4, r2
20020a2a:	4601      	mov	r1, r0
20020a2c:	4618      	mov	r0, r3
20020a2e:	f009 ff37 	bl	2002a8a0 <memcpy>
20020a32:	4620      	mov	r0, r4
20020a34:	bd10      	pop	{r4, pc}
	...

20020a38 <read_nand>:
20020a38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20020a3c:	2600      	movs	r6, #0
20020a3e:	460f      	mov	r7, r1
20020a40:	4615      	mov	r5, r2
20020a42:	46b0      	mov	r8, r6
20020a44:	4b19      	ldr	r3, [pc, #100]	@ (20020aac <read_nand+0x74>)
20020a46:	f8df a068 	ldr.w	sl, [pc, #104]	@ 20020ab0 <read_nand+0x78>
20020a4a:	681b      	ldr	r3, [r3, #0]
20020a4c:	f8df b064 	ldr.w	fp, [pc, #100]	@ 20020ab4 <read_nand+0x7c>
20020a50:	691b      	ldr	r3, [r3, #16]
20020a52:	4604      	mov	r4, r0
20020a54:	4283      	cmp	r3, r0
20020a56:	b085      	sub	sp, #20
20020a58:	bf98      	it	ls
20020a5a:	1ac4      	subls	r4, r0, r3
20020a5c:	b91d      	cbnz	r5, 20020a66 <read_nand+0x2e>
20020a5e:	4630      	mov	r0, r6
20020a60:	b005      	add	sp, #20
20020a62:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20020a66:	f8da 1000 	ldr.w	r1, [sl]
20020a6a:	f8db 0000 	ldr.w	r0, [fp]
20020a6e:	42a9      	cmp	r1, r5
20020a70:	fbb0 fcf1 	udiv	ip, r0, r1
20020a74:	4689      	mov	r9, r1
20020a76:	f101 32ff 	add.w	r2, r1, #4294967295
20020a7a:	bf28      	it	cs
20020a7c:	46a9      	movcs	r9, r5
20020a7e:	fbb4 f1f1 	udiv	r1, r4, r1
20020a82:	f10c 3cff 	add.w	ip, ip, #4294967295
20020a86:	fbb4 f0f0 	udiv	r0, r4, r0
20020a8a:	e9cd 8801 	strd	r8, r8, [sp, #4]
20020a8e:	f8cd 9000 	str.w	r9, [sp]
20020a92:	19bb      	adds	r3, r7, r6
20020a94:	4022      	ands	r2, r4
20020a96:	ea0c 0101 	and.w	r1, ip, r1
20020a9a:	f004 feed 	bl	20025878 <bbm_read_page>
20020a9e:	4548      	cmp	r0, r9
20020aa0:	d1dd      	bne.n	20020a5e <read_nand+0x26>
20020aa2:	4406      	add	r6, r0
20020aa4:	1a2d      	subs	r5, r5, r0
20020aa6:	4404      	add	r4, r0
20020aa8:	e7d8      	b.n	20020a5c <read_nand+0x24>
20020aaa:	bf00      	nop
20020aac:	20046cb4 	.word	0x20046cb4
20020ab0:	20042c04 	.word	0x20042c04
20020ab4:	20042c00 	.word	0x20042c00

20020ab8 <read_sdnand>:
20020ab8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20020abc:	f100 461e 	add.w	r6, r0, #2650800128	@ 0x9e000000
20020ac0:	460d      	mov	r5, r1
20020ac2:	4614      	mov	r4, r2
20020ac4:	4617      	mov	r7, r2
20020ac6:	46b0      	mov	r8, r6
20020ac8:	eb02 0901 	add.w	r9, r2, r1
20020acc:	f5b7 7f00 	cmp.w	r7, #512	@ 0x200
20020ad0:	eba9 0107 	sub.w	r1, r9, r7
20020ad4:	d218      	bcs.n	20020b08 <read_sdnand+0x50>
20020ad6:	f3c4 0708 	ubfx	r7, r4, #0, #9
20020ada:	b197      	cbz	r7, 20020b02 <read_sdnand+0x4a>
20020adc:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020ae0:	f020 0001 	bic.w	r0, r0, #1
20020ae4:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020ae8:	490c      	ldr	r1, [pc, #48]	@ (20020b1c <read_sdnand+0x64>)
20020aea:	4430      	add	r0, r6
20020aec:	f001 f820 	bl	20021b30 <sd_read_data>
20020af0:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020af4:	f020 0001 	bic.w	r0, r0, #1
20020af8:	463a      	mov	r2, r7
20020afa:	4908      	ldr	r1, [pc, #32]	@ (20020b1c <read_sdnand+0x64>)
20020afc:	4428      	add	r0, r5
20020afe:	f009 fecf 	bl	2002a8a0 <memcpy>
20020b02:	4620      	mov	r0, r4
20020b04:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b08:	4640      	mov	r0, r8
20020b0a:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b0e:	f001 f80f 	bl	20021b30 <sd_read_data>
20020b12:	f5a7 7700 	sub.w	r7, r7, #512	@ 0x200
20020b16:	f508 7800 	add.w	r8, r8, #512	@ 0x200
20020b1a:	e7d7      	b.n	20020acc <read_sdnand+0x14>
20020b1c:	20046ab0 	.word	0x20046ab0

20020b20 <read_sdemmc>:
20020b20:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20020b24:	f100 461e 	add.w	r6, r0, #2650800128	@ 0x9e000000
20020b28:	460d      	mov	r5, r1
20020b2a:	4614      	mov	r4, r2
20020b2c:	4617      	mov	r7, r2
20020b2e:	46b0      	mov	r8, r6
20020b30:	eb02 0901 	add.w	r9, r2, r1
20020b34:	f5b7 7f00 	cmp.w	r7, #512	@ 0x200
20020b38:	eba9 0107 	sub.w	r1, r9, r7
20020b3c:	d218      	bcs.n	20020b70 <read_sdemmc+0x50>
20020b3e:	f3c4 0708 	ubfx	r7, r4, #0, #9
20020b42:	b197      	cbz	r7, 20020b6a <read_sdemmc+0x4a>
20020b44:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020b48:	f020 0001 	bic.w	r0, r0, #1
20020b4c:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b50:	490c      	ldr	r1, [pc, #48]	@ (20020b84 <read_sdemmc+0x64>)
20020b52:	4430      	add	r0, r6
20020b54:	f000 fdd6 	bl	20021704 <emmc_read_data>
20020b58:	f424 70ff 	bic.w	r0, r4, #510	@ 0x1fe
20020b5c:	f020 0001 	bic.w	r0, r0, #1
20020b60:	463a      	mov	r2, r7
20020b62:	4908      	ldr	r1, [pc, #32]	@ (20020b84 <read_sdemmc+0x64>)
20020b64:	4428      	add	r0, r5
20020b66:	f009 fe9b 	bl	2002a8a0 <memcpy>
20020b6a:	4620      	mov	r0, r4
20020b6c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20020b70:	4640      	mov	r0, r8
20020b72:	f44f 7200 	mov.w	r2, #512	@ 0x200
20020b76:	f000 fdc5 	bl	20021704 <emmc_read_data>
20020b7a:	f5a7 7700 	sub.w	r7, r7, #512	@ 0x200
20020b7e:	f508 7800 	add.w	r8, r8, #512	@ 0x200
20020b82:	e7d7      	b.n	20020b34 <read_sdemmc+0x14>
20020b84:	20046ab0 	.word	0x20046ab0

20020b88 <port_read_page>:
20020b88:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20020b8c:	4615      	mov	r5, r2
20020b8e:	f8df 90e8 	ldr.w	r9, [pc, #232]	@ 20020c78 <port_read_page+0xf0>
20020b92:	460e      	mov	r6, r1
20020b94:	f8d9 7000 	ldr.w	r7, [r9]
20020b98:	461a      	mov	r2, r3
20020b9a:	e9dd 3c09 	ldrd	r3, ip, [sp, #36]	@ 0x24
20020b9e:	18e9      	adds	r1, r5, r3
20020ba0:	428f      	cmp	r7, r1
20020ba2:	f8dd e02c 	ldr.w	lr, [sp, #44]	@ 0x2c
20020ba6:	d200      	bcs.n	20020baa <port_read_page+0x22>
20020ba8:	e7fe      	b.n	20020ba8 <port_read_page+0x20>
20020baa:	4930      	ldr	r1, [pc, #192]	@ (20020c6c <port_read_page+0xe4>)
20020bac:	2b00      	cmp	r3, #0
20020bae:	6809      	ldr	r1, [r1, #0]
20020bb0:	dd15      	ble.n	20020bde <port_read_page+0x56>
20020bb2:	f002 041f 	and.w	r4, r2, #31
20020bb6:	441c      	add	r4, r3
20020bb8:	f3bf 8f4f 	dsb	sy
20020bbc:	4690      	mov	r8, r2
20020bbe:	f8df a0bc 	ldr.w	sl, [pc, #188]	@ 20020c7c <port_read_page+0xf4>
20020bc2:	4414      	add	r4, r2
20020bc4:	f8ca 825c 	str.w	r8, [sl, #604]	@ 0x25c
20020bc8:	f108 0820 	add.w	r8, r8, #32
20020bcc:	eba4 0b08 	sub.w	fp, r4, r8
20020bd0:	f1bb 0f00 	cmp.w	fp, #0
20020bd4:	dcf6      	bgt.n	20020bc4 <port_read_page+0x3c>
20020bd6:	f3bf 8f4f 	dsb	sy
20020bda:	f3bf 8f6f 	isb	sy
20020bde:	f8d9 4000 	ldr.w	r4, [r9]
20020be2:	f104 0980 	add.w	r9, r4, #128	@ 0x80
20020be6:	f1b9 0f00 	cmp.w	r9, #0
20020bea:	dd15      	ble.n	20020c18 <port_read_page+0x90>
20020bec:	4c20      	ldr	r4, [pc, #128]	@ (20020c70 <port_read_page+0xe8>)
20020bee:	6d64      	ldr	r4, [r4, #84]	@ 0x54
20020bf0:	f004 081f 	and.w	r8, r4, #31
20020bf4:	44c8      	add	r8, r9
20020bf6:	f3bf 8f4f 	dsb	sy
20020bfa:	f8df a080 	ldr.w	sl, [pc, #128]	@ 20020c7c <port_read_page+0xf4>
20020bfe:	44a0      	add	r8, r4
20020c00:	f8ca 425c 	str.w	r4, [sl, #604]	@ 0x25c
20020c04:	3420      	adds	r4, #32
20020c06:	eba8 0904 	sub.w	r9, r8, r4
20020c0a:	f1b9 0f00 	cmp.w	r9, #0
20020c0e:	dcf7      	bgt.n	20020c00 <port_read_page+0x78>
20020c10:	f3bf 8f4f 	dsb	sy
20020c14:	f3bf 8f6f 	isb	sy
20020c18:	07c4      	lsls	r4, r0, #31
20020c1a:	d51b      	bpl.n	20020c54 <port_read_page+0xcc>
20020c1c:	4c14      	ldr	r4, [pc, #80]	@ (20020c70 <port_read_page+0xe8>)
20020c1e:	f894 806b 	ldrb.w	r8, [r4, #107]	@ 0x6b
20020c22:	f1b8 0f00 	cmp.w	r8, #0
20020c26:	d015      	beq.n	20020c54 <port_read_page+0xcc>
20020c28:	6d64      	ldr	r4, [r4, #84]	@ 0x54
20020c2a:	f504 5880 	add.w	r8, r4, #4096	@ 0x1000
20020c2e:	f004 041f 	and.w	r4, r4, #31
20020c32:	f504 6408 	add.w	r4, r4, #2176	@ 0x880
20020c36:	f3bf 8f4f 	dsb	sy
20020c3a:	f8df 9040 	ldr.w	r9, [pc, #64]	@ 20020c7c <port_read_page+0xf4>
20020c3e:	3c20      	subs	r4, #32
20020c40:	2c00      	cmp	r4, #0
20020c42:	f8c9 825c 	str.w	r8, [r9, #604]	@ 0x25c
20020c46:	f108 0820 	add.w	r8, r8, #32
20020c4a:	dcf8      	bgt.n	20020c3e <port_read_page+0xb6>
20020c4c:	f3bf 8f4f 	dsb	sy
20020c50:	f3bf 8f6f 	isb	sy
20020c54:	fb07 5506 	mla	r5, r7, r6, r5
20020c58:	e9cd ce09 	strd	ip, lr, [sp, #36]	@ 0x24
20020c5c:	fb01 5100 	mla	r1, r1, r0, r5
20020c60:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20020c64:	4803      	ldr	r0, [pc, #12]	@ (20020c74 <port_read_page+0xec>)
20020c66:	f002 becd 	b.w	20023a04 <HAL_NAND_READ_WITHOOB>
20020c6a:	bf00      	nop
20020c6c:	20042c00 	.word	0x20042c00
20020c70:	20046ecc 	.word	0x20046ecc
20020c74:	20046f10 	.word	0x20046f10
20020c78:	20042c04 	.word	0x20042c04
20020c7c:	e000ed00 	.word	0xe000ed00

20020c80 <bbm_get_bb>:
20020c80:	b410      	push	{r4}
20020c82:	4b1c      	ldr	r3, [pc, #112]	@ (20020cf4 <bbm_get_bb+0x74>)
20020c84:	4601      	mov	r1, r0
20020c86:	6818      	ldr	r0, [r3, #0]
20020c88:	3080      	adds	r0, #128	@ 0x80
20020c8a:	2800      	cmp	r0, #0
20020c8c:	dd12      	ble.n	20020cb4 <bbm_get_bb+0x34>
20020c8e:	4b1a      	ldr	r3, [pc, #104]	@ (20020cf8 <bbm_get_bb+0x78>)
20020c90:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
20020c92:	f003 021f 	and.w	r2, r3, #31
20020c96:	4402      	add	r2, r0
20020c98:	f3bf 8f4f 	dsb	sy
20020c9c:	4c17      	ldr	r4, [pc, #92]	@ (20020cfc <bbm_get_bb+0x7c>)
20020c9e:	441a      	add	r2, r3
20020ca0:	f8c4 325c 	str.w	r3, [r4, #604]	@ 0x25c
20020ca4:	3320      	adds	r3, #32
20020ca6:	1ad0      	subs	r0, r2, r3
20020ca8:	2800      	cmp	r0, #0
20020caa:	dcf9      	bgt.n	20020ca0 <bbm_get_bb+0x20>
20020cac:	f3bf 8f4f 	dsb	sy
20020cb0:	f3bf 8f6f 	isb	sy
20020cb4:	07cb      	lsls	r3, r1, #31
20020cb6:	d518      	bpl.n	20020cea <bbm_get_bb+0x6a>
20020cb8:	4b0f      	ldr	r3, [pc, #60]	@ (20020cf8 <bbm_get_bb+0x78>)
20020cba:	f893 206b 	ldrb.w	r2, [r3, #107]	@ 0x6b
20020cbe:	b1a2      	cbz	r2, 20020cea <bbm_get_bb+0x6a>
20020cc0:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
20020cc2:	f503 5280 	add.w	r2, r3, #4096	@ 0x1000
20020cc6:	f003 031f 	and.w	r3, r3, #31
20020cca:	f503 6308 	add.w	r3, r3, #2176	@ 0x880
20020cce:	f3bf 8f4f 	dsb	sy
20020cd2:	480a      	ldr	r0, [pc, #40]	@ (20020cfc <bbm_get_bb+0x7c>)
20020cd4:	3b20      	subs	r3, #32
20020cd6:	2b00      	cmp	r3, #0
20020cd8:	f8c0 225c 	str.w	r2, [r0, #604]	@ 0x25c
20020cdc:	f102 0220 	add.w	r2, r2, #32
20020ce0:	dcf8      	bgt.n	20020cd4 <bbm_get_bb+0x54>
20020ce2:	f3bf 8f4f 	dsb	sy
20020ce6:	f3bf 8f6f 	isb	sy
20020cea:	4805      	ldr	r0, [pc, #20]	@ (20020d00 <bbm_get_bb+0x80>)
20020cec:	f85d 4b04 	ldr.w	r4, [sp], #4
20020cf0:	f002 bf88 	b.w	20023c04 <HAL_NAND_GET_BADBLK>
20020cf4:	20042c04 	.word	0x20042c04
20020cf8:	20046ecc 	.word	0x20046ecc
20020cfc:	e000ed00 	.word	0xe000ed00
20020d00:	20046f10 	.word	0x20046f10

20020d04 <dfu_flash_init>:
20020d04:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020d08:	b08c      	sub	sp, #48	@ 0x30
20020d0a:	f001 ff21 	bl	20022b50 <HAL_HPAON_EnableXT48>
20020d0e:	2101      	movs	r1, #1
20020d10:	2000      	movs	r0, #0
20020d12:	f004 f99b 	bl	2002504c <HAL_RCC_HCPU_ClockSelect>
20020d16:	2101      	movs	r1, #1
20020d18:	200c      	movs	r0, #12
20020d1a:	f004 f997 	bl	2002504c <HAL_RCC_HCPU_ClockSelect>
20020d1e:	2001      	movs	r0, #1
20020d20:	f004 f892 	bl	20024e48 <HAL_PMU_EnableDLL>
20020d24:	4f97      	ldr	r7, [pc, #604]	@ (20020f84 <dfu_flash_init+0x280>)
20020d26:	2090      	movs	r0, #144	@ 0x90
20020d28:	f004 faf2 	bl	20025310 <HAL_RCC_HCPU_ConfigHCLK>
20020d2c:	2000      	movs	r0, #0
20020d2e:	f001 f8fa 	bl	20021f26 <HAL_Delay_us>
20020d32:	683b      	ldr	r3, [r7, #0]
20020d34:	4d94      	ldr	r5, [pc, #592]	@ (20020f88 <dfu_flash_init+0x284>)
20020d36:	3b01      	subs	r3, #1
20020d38:	2b05      	cmp	r3, #5
20020d3a:	f200 8113 	bhi.w	20020f64 <dfu_flash_init+0x260>
20020d3e:	e8df f013 	tbh	[pc, r3, lsl #1]
20020d42:	0006      	.short	0x0006
20020d44:	00780006 	.word	0x00780006
20020d48:	00ee0078 	.word	0x00ee0078
20020d4c:	0102      	.short	0x0102
20020d4e:	488f      	ldr	r0, [pc, #572]	@ (20020f8c <dfu_flash_init+0x288>)
20020d50:	f004 f944 	bl	20024fdc <HAL_RCC_HCPU_EnableDLL2>
20020d54:	4c8e      	ldr	r4, [pc, #568]	@ (20020f90 <dfu_flash_init+0x28c>)
20020d56:	2006      	movs	r0, #6
20020d58:	f001 f812 	bl	20021d80 <BSP_SetFlash1DIV>
20020d5c:	ae07      	add	r6, sp, #28
20020d5e:	2102      	movs	r1, #2
20020d60:	2004      	movs	r0, #4
20020d62:	f004 f973 	bl	2002504c <HAL_RCC_HCPU_ClockSelect>
20020d66:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
20020d68:	c60f      	stmia	r6!, {r0, r1, r2, r3}
20020d6a:	f854 3b04 	ldr.w	r3, [r4], #4
20020d6e:	6033      	str	r3, [r6, #0]
20020d70:	ae03      	add	r6, sp, #12
20020d72:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
20020d76:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
20020d7a:	2301      	movs	r3, #1
20020d7c:	4c85      	ldr	r4, [pc, #532]	@ (20020f94 <dfu_flash_init+0x290>)
20020d7e:	f884 3035 	strb.w	r3, [r4, #53]	@ 0x35
20020d82:	2300      	movs	r3, #0
20020d84:	9308      	str	r3, [sp, #32]
20020d86:	683b      	ldr	r3, [r7, #0]
20020d88:	2b01      	cmp	r3, #1
20020d8a:	d14d      	bne.n	20020e28 <dfu_flash_init+0x124>
20020d8c:	f7ff fac0 	bl	20020310 <board_pinmux_mpi1_puya_base>
20020d90:	f000 ffea 	bl	20021d68 <BSP_GetFlash1DIV>
20020d94:	4633      	mov	r3, r6
20020d96:	9000      	str	r0, [sp, #0]
20020d98:	4a7f      	ldr	r2, [pc, #508]	@ (20020f98 <dfu_flash_init+0x294>)
20020d9a:	487e      	ldr	r0, [pc, #504]	@ (20020f94 <dfu_flash_init+0x290>)
20020d9c:	a907      	add	r1, sp, #28
20020d9e:	f003 f909 	bl	20023fb4 <HAL_FLASH_Init>
20020da2:	683e      	ldr	r6, [r7, #0]
20020da4:	2e01      	cmp	r6, #1
20020da6:	d10d      	bne.n	20020dc4 <dfu_flash_init+0xc0>
20020da8:	6b20      	ldr	r0, [r4, #48]	@ 0x30
20020daa:	4b7c      	ldr	r3, [pc, #496]	@ (20020f9c <dfu_flash_init+0x298>)
20020dac:	1ac3      	subs	r3, r0, r3
20020dae:	4258      	negs	r0, r3
20020db0:	4158      	adcs	r0, r3
20020db2:	f7ff face 	bl	20020352 <board_pinmux_mpi1_puya_ext>
20020db6:	4631      	mov	r1, r6
20020db8:	4876      	ldr	r0, [pc, #472]	@ (20020f94 <dfu_flash_init+0x290>)
20020dba:	f002 fb34 	bl	20023426 <HAL_FLASH_SET_QUAL_SPI>
20020dbe:	2302      	movs	r3, #2
20020dc0:	f884 3020 	strb.w	r3, [r4, #32]
20020dc4:	4b76      	ldr	r3, [pc, #472]	@ (20020fa0 <dfu_flash_init+0x29c>)
20020dc6:	4a77      	ldr	r2, [pc, #476]	@ (20020fa4 <dfu_flash_init+0x2a0>)
20020dc8:	602b      	str	r3, [r5, #0]
20020dca:	4b77      	ldr	r3, [pc, #476]	@ (20020fa8 <dfu_flash_init+0x2a4>)
20020dcc:	601a      	str	r2, [r3, #0]
20020dce:	4b77      	ldr	r3, [pc, #476]	@ (20020fac <dfu_flash_init+0x2a8>)
20020dd0:	4a77      	ldr	r2, [pc, #476]	@ (20020fb0 <dfu_flash_init+0x2ac>)
20020dd2:	601a      	str	r2, [r3, #0]
20020dd4:	4b77      	ldr	r3, [pc, #476]	@ (20020fb4 <dfu_flash_init+0x2b0>)
20020dd6:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
20020dd8:	601a      	str	r2, [r3, #0]
20020dda:	4b77      	ldr	r3, [pc, #476]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020ddc:	601c      	str	r4, [r3, #0]
20020dde:	2405      	movs	r4, #5
20020de0:	f8df 81d8 	ldr.w	r8, [pc, #472]	@ 20020fbc <dfu_flash_init+0x2b8>
20020de4:	4e73      	ldr	r6, [pc, #460]	@ (20020fb4 <dfu_flash_init+0x2b0>)
20020de6:	f8df 9208 	ldr.w	r9, [pc, #520]	@ 20020ff0 <dfu_flash_init+0x2ec>
20020dea:	682b      	ldr	r3, [r5, #0]
20020dec:	f642 4210 	movw	r2, #11280	@ 0x2c10
20020df0:	4972      	ldr	r1, [pc, #456]	@ (20020fbc <dfu_flash_init+0x2b8>)
20020df2:	6830      	ldr	r0, [r6, #0]
20020df4:	4798      	blx	r3
20020df6:	f8d8 3000 	ldr.w	r3, [r8]
20020dfa:	454b      	cmp	r3, r9
20020dfc:	f040 80b6 	bne.w	20020f6c <dfu_flash_init+0x268>
20020e00:	683b      	ldr	r3, [r7, #0]
20020e02:	2b04      	cmp	r3, #4
20020e04:	f040 8085 	bne.w	20020f12 <dfu_flash_init+0x20e>
20020e08:	f8d8 30a4 	ldr.w	r3, [r8, #164]	@ 0xa4
20020e0c:	1e5a      	subs	r2, r3, #1
20020e0e:	3203      	adds	r2, #3
20020e10:	d87f      	bhi.n	20020f12 <dfu_flash_init+0x20e>
20020e12:	4a6b      	ldr	r2, [pc, #428]	@ (20020fc0 <dfu_flash_init+0x2bc>)
20020e14:	4969      	ldr	r1, [pc, #420]	@ (20020fbc <dfu_flash_init+0x2b8>)
20020e16:	6013      	str	r3, [r2, #0]
20020e18:	f642 4210 	movw	r2, #11280	@ 0x2c10
20020e1c:	682b      	ldr	r3, [r5, #0]
20020e1e:	6830      	ldr	r0, [r6, #0]
20020e20:	b00c      	add	sp, #48	@ 0x30
20020e22:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020e26:	4718      	bx	r3
20020e28:	f7ff fac2 	bl	200203b0 <board_pinmux_mpi1_gd>
20020e2c:	2302      	movs	r3, #2
20020e2e:	9308      	str	r3, [sp, #32]
20020e30:	e7ae      	b.n	20020d90 <dfu_flash_init+0x8c>
20020e32:	4856      	ldr	r0, [pc, #344]	@ (20020f8c <dfu_flash_init+0x288>)
20020e34:	f004 f8d2 	bl	20024fdc <HAL_RCC_HCPU_EnableDLL2>
20020e38:	4c62      	ldr	r4, [pc, #392]	@ (20020fc4 <dfu_flash_init+0x2c0>)
20020e3a:	2006      	movs	r0, #6
20020e3c:	f000 ffa6 	bl	20021d8c <BSP_SetFlash2DIV>
20020e40:	ae07      	add	r6, sp, #28
20020e42:	2102      	movs	r1, #2
20020e44:	2006      	movs	r0, #6
20020e46:	f004 f901 	bl	2002504c <HAL_RCC_HCPU_ClockSelect>
20020e4a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
20020e4c:	c60f      	stmia	r6!, {r0, r1, r2, r3}
20020e4e:	f854 3b04 	ldr.w	r3, [r4], #4
20020e52:	f8d7 8000 	ldr.w	r8, [r7]
20020e56:	6033      	str	r3, [r6, #0]
20020e58:	ae03      	add	r6, sp, #12
20020e5a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
20020e5e:	f1b8 0903 	subs.w	r9, r8, #3
20020e62:	e886 000f 	stmia.w	r6, {r0, r1, r2, r3}
20020e66:	bf18      	it	ne
20020e68:	f04f 0901 	movne.w	r9, #1
20020e6c:	f7ff fae3 	bl	20020436 <board_pinmux_mpi2>
20020e70:	2302      	movs	r3, #2
20020e72:	f1b8 0f03 	cmp.w	r8, #3
20020e76:	4c47      	ldr	r4, [pc, #284]	@ (20020f94 <dfu_flash_init+0x290>)
20020e78:	9308      	str	r3, [sp, #32]
20020e7a:	d04d      	beq.n	20020f18 <dfu_flash_init+0x214>
20020e7c:	4b52      	ldr	r3, [pc, #328]	@ (20020fc8 <dfu_flash_init+0x2c4>)
20020e7e:	602b      	str	r3, [r5, #0]
20020e80:	9b09      	ldr	r3, [sp, #36]	@ 0x24
20020e82:	f103 43a0 	add.w	r3, r3, #1342177280	@ 0x50000000
20020e86:	9309      	str	r3, [sp, #36]	@ 0x24
20020e88:	2301      	movs	r3, #1
20020e8a:	930b      	str	r3, [sp, #44]	@ 0x2c
20020e8c:	4b4f      	ldr	r3, [pc, #316]	@ (20020fcc <dfu_flash_init+0x2c8>)
20020e8e:	6623      	str	r3, [r4, #96]	@ 0x60
20020e90:	f04f 0a01 	mov.w	sl, #1
20020e94:	2000      	movs	r0, #0
20020e96:	f001 f846 	bl	20021f26 <HAL_Delay_us>
20020e9a:	f884 a079 	strb.w	sl, [r4, #121]	@ 0x79
20020e9e:	f884 9078 	strb.w	r9, [r4, #120]	@ 0x78
20020ea2:	f000 ff67 	bl	20021d74 <BSP_GetFlash2DIV>
20020ea6:	4633      	mov	r3, r6
20020ea8:	9000      	str	r0, [sp, #0]
20020eaa:	4a49      	ldr	r2, [pc, #292]	@ (20020fd0 <dfu_flash_init+0x2cc>)
20020eac:	4849      	ldr	r0, [pc, #292]	@ (20020fd4 <dfu_flash_init+0x2d0>)
20020eae:	a907      	add	r1, sp, #28
20020eb0:	f003 f880 	bl	20023fb4 <HAL_FLASH_Init>
20020eb4:	4e47      	ldr	r6, [pc, #284]	@ (20020fd4 <dfu_flash_init+0x2d0>)
20020eb6:	bb18      	cbnz	r0, 20020f00 <dfu_flash_init+0x1fc>
20020eb8:	f1b8 0f03 	cmp.w	r8, #3
20020ebc:	d020      	beq.n	20020f00 <dfu_flash_init+0x1fc>
20020ebe:	4630      	mov	r0, r6
20020ec0:	f002 fd94 	bl	200239ec <HAL_NAND_PAGE_SIZE>
20020ec4:	f8df 90f8 	ldr.w	r9, [pc, #248]	@ 20020fc0 <dfu_flash_init+0x2bc>
20020ec8:	f8df 8128 	ldr.w	r8, [pc, #296]	@ 20020ff4 <dfu_flash_init+0x2f0>
20020ecc:	f8c9 0000 	str.w	r0, [r9]
20020ed0:	4630      	mov	r0, r6
20020ed2:	f002 fe8b 	bl	20023bec <HAL_NAND_BLOCK_SIZE>
20020ed6:	4651      	mov	r1, sl
20020ed8:	f8c8 0000 	str.w	r0, [r8]
20020edc:	4630      	mov	r0, r6
20020ede:	f884 a06a 	strb.w	sl, [r4, #106]	@ 0x6a
20020ee2:	f002 fc60 	bl	200237a6 <HAL_NAND_CONF_ECC>
20020ee6:	f8d9 0000 	ldr.w	r0, [r9]
20020eea:	f004 ffad 	bl	20025e48 <bbm_set_page_size>
20020eee:	f8d8 0000 	ldr.w	r0, [r8]
20020ef2:	f004 ffaf 	bl	20025e54 <bbm_set_blk_size>
20020ef6:	4938      	ldr	r1, [pc, #224]	@ (20020fd8 <dfu_flash_init+0x2d4>)
20020ef8:	f8d4 0080 	ldr.w	r0, [r4, #128]	@ 0x80
20020efc:	f004 fe46 	bl	20025b8c <sif_bbm_init>
20020f00:	4b2c      	ldr	r3, [pc, #176]	@ (20020fb4 <dfu_flash_init+0x2b0>)
20020f02:	6fe2      	ldr	r2, [r4, #124]	@ 0x7c
20020f04:	601a      	str	r2, [r3, #0]
20020f06:	4b2c      	ldr	r3, [pc, #176]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020f08:	601e      	str	r6, [r3, #0]
20020f0a:	682b      	ldr	r3, [r5, #0]
20020f0c:	2b00      	cmp	r3, #0
20020f0e:	f47f af66 	bne.w	20020dde <dfu_flash_init+0xda>
20020f12:	b00c      	add	sp, #48	@ 0x30
20020f14:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20020f18:	4b21      	ldr	r3, [pc, #132]	@ (20020fa0 <dfu_flash_init+0x29c>)
20020f1a:	602b      	str	r3, [r5, #0]
20020f1c:	e7b8      	b.n	20020e90 <dfu_flash_init+0x18c>
20020f1e:	481b      	ldr	r0, [pc, #108]	@ (20020f8c <dfu_flash_init+0x288>)
20020f20:	f004 f85c 	bl	20024fdc <HAL_RCC_HCPU_EnableDLL2>
20020f24:	f7ff faae 	bl	20020484 <board_pinmux_sd>
20020f28:	f000 fcd6 	bl	200218d8 <sdmmc1_sdnand>
20020f2c:	2801      	cmp	r0, #1
20020f2e:	d001      	beq.n	20020f34 <dfu_flash_init+0x230>
20020f30:	f7ff f9be 	bl	200202b0 <boot_error>
20020f34:	4b29      	ldr	r3, [pc, #164]	@ (20020fdc <dfu_flash_init+0x2d8>)
20020f36:	4a2a      	ldr	r2, [pc, #168]	@ (20020fe0 <dfu_flash_init+0x2dc>)
20020f38:	602b      	str	r3, [r5, #0]
20020f3a:	4b1e      	ldr	r3, [pc, #120]	@ (20020fb4 <dfu_flash_init+0x2b0>)
20020f3c:	601a      	str	r2, [r3, #0]
20020f3e:	2200      	movs	r2, #0
20020f40:	4b1d      	ldr	r3, [pc, #116]	@ (20020fb8 <dfu_flash_init+0x2b4>)
20020f42:	601a      	str	r2, [r3, #0]
20020f44:	e74b      	b.n	20020dde <dfu_flash_init+0xda>
20020f46:	4811      	ldr	r0, [pc, #68]	@ (20020f8c <dfu_flash_init+0x288>)
20020f48:	f004 f848 	bl	20024fdc <HAL_RCC_HCPU_EnableDLL2>
20020f4c:	f7ff fa9a 	bl	20020484 <board_pinmux_sd>
20020f50:	f000 fab2 	bl	200214b8 <sdio_emmc_init>
20020f54:	4b23      	ldr	r3, [pc, #140]	@ (20020fe4 <dfu_flash_init+0x2e0>)
20020f56:	6018      	str	r0, [r3, #0]
20020f58:	b110      	cbz	r0, 20020f60 <dfu_flash_init+0x25c>
20020f5a:	b2c0      	uxtb	r0, r0
20020f5c:	f7ff f9a8 	bl	200202b0 <boot_error>
20020f60:	4b21      	ldr	r3, [pc, #132]	@ (20020fe8 <dfu_flash_init+0x2e4>)
20020f62:	e7e8      	b.n	20020f36 <dfu_flash_init+0x232>
20020f64:	2053      	movs	r0, #83	@ 0x53
20020f66:	f7ff f9a3 	bl	200202b0 <boot_error>
20020f6a:	e7ce      	b.n	20020f0a <dfu_flash_init+0x206>
20020f6c:	481f      	ldr	r0, [pc, #124]	@ (20020fec <dfu_flash_init+0x2e8>)
20020f6e:	f000 ffda 	bl	20021f26 <HAL_Delay_us>
20020f72:	3c01      	subs	r4, #1
20020f74:	f47f af39 	bne.w	20020dea <dfu_flash_init+0xe6>
20020f78:	2043      	movs	r0, #67	@ 0x43
20020f7a:	b00c      	add	sp, #48	@ 0x30
20020f7c:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20020f80:	f7ff b996 	b.w	200202b0 <boot_error>
20020f84:	20049ed0 	.word	0x20049ed0
20020f88:	20046cc0 	.word	0x20046cc0
20020f8c:	112a8800 	.word	0x112a8800
20020f90:	2002a970 	.word	0x2002a970
20020f94:	20046ecc 	.word	0x20046ecc
20020f98:	20046cc4 	.word	0x20046cc4
20020f9c:	00176085 	.word	0x00176085
20020fa0:	20020a25 	.word	0x20020a25
20020fa4:	20020999 	.word	0x20020999
20020fa8:	20046cbc 	.word	0x20046cbc
20020fac:	20046cb8 	.word	0x20046cb8
20020fb0:	2002093d 	.word	0x2002093d
20020fb4:	20046cb0 	.word	0x20046cb0
20020fb8:	20046cb4 	.word	0x20046cb4
20020fbc:	200472c0 	.word	0x200472c0
20020fc0:	20042c04 	.word	0x20042c04
20020fc4:	2002a994 	.word	0x2002a994
20020fc8:	20020a39 	.word	0x20020a39
20020fcc:	20045a30 	.word	0x20045a30
20020fd0:	20046d2c 	.word	0x20046d2c
20020fd4:	20046f10 	.word	0x20046f10
20020fd8:	200449b0 	.word	0x200449b0
20020fdc:	20020ab9 	.word	0x20020ab9
20020fe0:	62001000 	.word	0x62001000
20020fe4:	200449ac 	.word	0x200449ac
20020fe8:	20020b21 	.word	0x20020b21
20020fec:	000f4240 	.word	0x000f4240
20020ff0:	53454346 	.word	0x53454346
20020ff4:	20042c00 	.word	0x20042c00

20020ff8 <sifli_hw_efuse_read_bank>:
20020ff8:	2803      	cmp	r0, #3
20020ffa:	b508      	push	{r3, lr}
20020ffc:	d80c      	bhi.n	20021018 <sifli_hw_efuse_read_bank+0x20>
20020ffe:	0200      	lsls	r0, r0, #8
20021000:	2220      	movs	r2, #32
20021002:	4907      	ldr	r1, [pc, #28]	@ (20021020 <sifli_hw_efuse_read_bank+0x28>)
20021004:	f400 407f 	and.w	r0, r0, #65280	@ 0xff00
20021008:	f001 fc66 	bl	200228d8 <HAL_EFUSE_Read>
2002100c:	2800      	cmp	r0, #0
2002100e:	bf0c      	ite	eq
20021010:	f06f 0001 	mvneq.w	r0, #1
20021014:	2000      	movne	r0, #0
20021016:	bd08      	pop	{r3, pc}
20021018:	f04f 30ff 	mov.w	r0, #4294967295
2002101c:	e7fb      	b.n	20021016 <sifli_hw_efuse_read_bank+0x1e>
2002101e:	bf00      	nop
20021020:	20047240 	.word	0x20047240

20021024 <sifli_hw_efuse_read>:
20021024:	b513      	push	{r0, r1, r4, lr}
20021026:	3801      	subs	r0, #1
20021028:	460c      	mov	r4, r1
2002102a:	2803      	cmp	r0, #3
2002102c:	d81e      	bhi.n	2002106c <sifli_hw_efuse_read+0x48>
2002102e:	e8df f000 	tbb	[pc, r0]
20021032:	0c02      	.short	0x0c02
20021034:	1009      	.short	0x1009
20021036:	2210      	movs	r2, #16
20021038:	2000      	movs	r0, #0
2002103a:	b002      	add	sp, #8
2002103c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20021040:	f001 bc4a 	b.w	200228d8 <HAL_EFUSE_Read>
20021044:	2208      	movs	r2, #8
20021046:	2080      	movs	r0, #128	@ 0x80
20021048:	e7f7      	b.n	2002103a <sifli_hw_efuse_read+0x16>
2002104a:	2220      	movs	r2, #32
2002104c:	f44f 7040 	mov.w	r0, #768	@ 0x300
20021050:	e7f3      	b.n	2002103a <sifli_hw_efuse_read+0x16>
20021052:	2204      	movs	r2, #4
20021054:	20c0      	movs	r0, #192	@ 0xc0
20021056:	eb0d 0102 	add.w	r1, sp, r2
2002105a:	f001 fc3d 	bl	200228d8 <HAL_EFUSE_Read>
2002105e:	2804      	cmp	r0, #4
20021060:	d104      	bne.n	2002106c <sifli_hw_efuse_read+0x48>
20021062:	2001      	movs	r0, #1
20021064:	9b01      	ldr	r3, [sp, #4]
20021066:	7023      	strb	r3, [r4, #0]
20021068:	b002      	add	sp, #8
2002106a:	bd10      	pop	{r4, pc}
2002106c:	2000      	movs	r0, #0
2002106e:	e7fb      	b.n	20021068 <sifli_hw_efuse_read+0x44>

20021070 <sifli_hw_init_xip_key>:
20021070:	b538      	push	{r3, r4, r5, lr}
20021072:	4605      	mov	r5, r0
20021074:	4c0f      	ldr	r4, [pc, #60]	@ (200210b4 <sifli_hw_init_xip_key+0x44>)
20021076:	2210      	movs	r2, #16
20021078:	68e3      	ldr	r3, [r4, #12]
2002107a:	490f      	ldr	r1, [pc, #60]	@ (200210b8 <sifli_hw_init_xip_key+0x48>)
2002107c:	f043 0301 	orr.w	r3, r3, #1
20021080:	60e3      	str	r3, [r4, #12]
20021082:	2001      	movs	r0, #1
20021084:	f7ff ffce 	bl	20021024 <sifli_hw_efuse_read>
20021088:	2220      	movs	r2, #32
2002108a:	2100      	movs	r1, #0
2002108c:	480b      	ldr	r0, [pc, #44]	@ (200210bc <sifli_hw_init_xip_key+0x4c>)
2002108e:	f009 fbed 	bl	2002a86c <memset>
20021092:	2302      	movs	r3, #2
20021094:	2120      	movs	r1, #32
20021096:	4a08      	ldr	r2, [pc, #32]	@ (200210b8 <sifli_hw_init_xip_key+0x48>)
20021098:	2000      	movs	r0, #0
2002109a:	f000 ffbd 	bl	20022018 <HAL_AES_init>
2002109e:	2320      	movs	r3, #32
200210a0:	4629      	mov	r1, r5
200210a2:	2000      	movs	r0, #0
200210a4:	4a05      	ldr	r2, [pc, #20]	@ (200210bc <sifli_hw_init_xip_key+0x4c>)
200210a6:	f000 fffb 	bl	200220a0 <HAL_AES_run>
200210aa:	68e3      	ldr	r3, [r4, #12]
200210ac:	f023 0301 	bic.w	r3, r3, #1
200210b0:	60e3      	str	r3, [r4, #12]
200210b2:	bd38      	pop	{r3, r4, r5, pc}
200210b4:	5000b000 	.word	0x5000b000
200210b8:	20047270 	.word	0x20047270
200210bc:	20047220 	.word	0x20047220

200210c0 <sifli_hw_dec_key>:
200210c0:	b538      	push	{r3, r4, r5, lr}
200210c2:	4604      	mov	r4, r0
200210c4:	460d      	mov	r5, r1
200210c6:	2210      	movs	r2, #16
200210c8:	4908      	ldr	r1, [pc, #32]	@ (200210ec <sifli_hw_dec_key+0x2c>)
200210ca:	2001      	movs	r0, #1
200210cc:	f7ff ffaa 	bl	20021024 <sifli_hw_efuse_read>
200210d0:	2302      	movs	r3, #2
200210d2:	2120      	movs	r1, #32
200210d4:	4a05      	ldr	r2, [pc, #20]	@ (200210ec <sifli_hw_dec_key+0x2c>)
200210d6:	2000      	movs	r0, #0
200210d8:	f000 ff9e 	bl	20022018 <HAL_AES_init>
200210dc:	2320      	movs	r3, #32
200210de:	462a      	mov	r2, r5
200210e0:	4621      	mov	r1, r4
200210e2:	2000      	movs	r0, #0
200210e4:	f000 ffdc 	bl	200220a0 <HAL_AES_run>
200210e8:	2000      	movs	r0, #0
200210ea:	bd38      	pop	{r3, r4, r5, pc}
200210ec:	20047270 	.word	0x20047270

200210f0 <dfu_get_counter>:
200210f0:	b538      	push	{r3, r4, r5, lr}
200210f2:	4d0a      	ldr	r5, [pc, #40]	@ (2002111c <dfu_get_counter+0x2c>)
200210f4:	4604      	mov	r4, r0
200210f6:	2208      	movs	r2, #8
200210f8:	4629      	mov	r1, r5
200210fa:	2003      	movs	r0, #3
200210fc:	f7ff ff92 	bl	20021024 <sifli_hw_efuse_read>
20021100:	2300      	movs	r3, #0
20021102:	e9c5 3302 	strd	r3, r3, [r5, #8]
20021106:	230f      	movs	r3, #15
20021108:	0924      	lsrs	r4, r4, #4
2002110a:	b12c      	cbz	r4, 20021118 <dfu_get_counter+0x28>
2002110c:	54ec      	strb	r4, [r5, r3]
2002110e:	3b01      	subs	r3, #1
20021110:	2b0b      	cmp	r3, #11
20021112:	ea4f 2414 	mov.w	r4, r4, lsr #8
20021116:	d1f8      	bne.n	2002110a <dfu_get_counter+0x1a>
20021118:	4800      	ldr	r0, [pc, #0]	@ (2002111c <dfu_get_counter+0x2c>)
2002111a:	bd38      	pop	{r3, r4, r5, pc}
2002111c:	20047260 	.word	0x20047260

20021120 <sifli_hw_dec>:
20021120:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20021124:	4680      	mov	r8, r0
20021126:	4689      	mov	r9, r1
20021128:	4692      	mov	sl, r2
2002112a:	2100      	movs	r1, #0
2002112c:	f44f 7200 	mov.w	r2, #512	@ 0x200
20021130:	4814      	ldr	r0, [pc, #80]	@ (20021184 <sifli_hw_dec+0x64>)
20021132:	461e      	mov	r6, r3
20021134:	9f08      	ldr	r7, [sp, #32]
20021136:	2400      	movs	r4, #0
20021138:	f009 fb98 	bl	2002a86c <memset>
2002113c:	42a6      	cmp	r6, r4
2002113e:	d802      	bhi.n	20021146 <sifli_hw_dec+0x26>
20021140:	4620      	mov	r0, r4
20021142:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20021146:	1b35      	subs	r5, r6, r4
20021148:	f5b5 7f00 	cmp.w	r5, #512	@ 0x200
2002114c:	bf28      	it	cs
2002114e:	f44f 7500 	movcs.w	r5, #512	@ 0x200
20021152:	eb09 0104 	add.w	r1, r9, r4
20021156:	462a      	mov	r2, r5
20021158:	480a      	ldr	r0, [pc, #40]	@ (20021184 <sifli_hw_dec+0x64>)
2002115a:	f009 fba1 	bl	2002a8a0 <memcpy>
2002115e:	19e0      	adds	r0, r4, r7
20021160:	f7ff ffc6 	bl	200210f0 <dfu_get_counter>
20021164:	2301      	movs	r3, #1
20021166:	4602      	mov	r2, r0
20021168:	2120      	movs	r1, #32
2002116a:	4640      	mov	r0, r8
2002116c:	f000 ff54 	bl	20022018 <HAL_AES_init>
20021170:	eb0a 0204 	add.w	r2, sl, r4
20021174:	462b      	mov	r3, r5
20021176:	2000      	movs	r0, #0
20021178:	4902      	ldr	r1, [pc, #8]	@ (20021184 <sifli_hw_dec+0x64>)
2002117a:	f000 ff91 	bl	200220a0 <HAL_AES_run>
2002117e:	442c      	add	r4, r5
20021180:	e7dc      	b.n	2002113c <sifli_hw_dec+0x1c>
20021182:	bf00      	nop
20021184:	20047020 	.word	0x20047020

20021188 <boot_ram>:
20021188:	4b05      	ldr	r3, [pc, #20]	@ (200211a0 <boot_ram+0x18>)
2002118a:	b082      	sub	sp, #8
2002118c:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
2002118e:	9301      	str	r3, [sp, #4]
20021190:	9b01      	ldr	r3, [sp, #4]
20021192:	b113      	cbz	r3, 2002119a <boot_ram+0x12>
20021194:	9b01      	ldr	r3, [sp, #4]
20021196:	b002      	add	sp, #8
20021198:	4718      	bx	r3
2002119a:	b002      	add	sp, #8
2002119c:	4770      	bx	lr
2002119e:	bf00      	nop
200211a0:	500c0000 	.word	0x500c0000

200211a4 <is_addr_in_nor>:
200211a4:	4b09      	ldr	r3, [pc, #36]	@ (200211cc <is_addr_in_nor+0x28>)
200211a6:	4602      	mov	r2, r0
200211a8:	681b      	ldr	r3, [r3, #0]
200211aa:	b163      	cbz	r3, 200211c6 <is_addr_in_nor+0x22>
200211ac:	f893 0023 	ldrb.w	r0, [r3, #35]	@ 0x23
200211b0:	b948      	cbnz	r0, 200211c6 <is_addr_in_nor+0x22>
200211b2:	6919      	ldr	r1, [r3, #16]
200211b4:	4291      	cmp	r1, r2
200211b6:	d807      	bhi.n	200211c8 <is_addr_in_nor+0x24>
200211b8:	695b      	ldr	r3, [r3, #20]
200211ba:	4419      	add	r1, r3
200211bc:	4291      	cmp	r1, r2
200211be:	bf94      	ite	ls
200211c0:	2000      	movls	r0, #0
200211c2:	2001      	movhi	r0, #1
200211c4:	4770      	bx	lr
200211c6:	2000      	movs	r0, #0
200211c8:	4770      	bx	lr
200211ca:	bf00      	nop
200211cc:	20046cb4 	.word	0x20046cb4

200211d0 <dfu_boot_img_in_flash>:
200211d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200211d4:	4f5e      	ldr	r7, [pc, #376]	@ (20021350 <dfu_boot_img_in_flash+0x180>)
200211d6:	1e84      	subs	r4, r0, #2
200211d8:	eb07 1300 	add.w	r3, r7, r0, lsl #4
200211dc:	eb07 2040 	add.w	r0, r7, r0, lsl #9
200211e0:	f8d3 8004 	ldr.w	r8, [r3, #4]
200211e4:	68dd      	ldr	r5, [r3, #12]
200211e6:	f8b0 3c06 	ldrh.w	r3, [r0, #3078]	@ 0xc06
200211ea:	b085      	sub	sp, #20
200211ec:	07db      	lsls	r3, r3, #31
200211ee:	f140 8095 	bpl.w	2002131c <dfu_boot_img_in_flash+0x14c>
200211f2:	f44f 7193 	mov.w	r1, #294	@ 0x126
200211f6:	f507 7082 	add.w	r0, r7, #260	@ 0x104
200211fa:	f000 fd4e 	bl	20021c9a <sifli_sigkey_pub_verify>
200211fe:	b110      	cbz	r0, 20021206 <dfu_boot_img_in_flash+0x36>
20021200:	2001      	movs	r0, #1
20021202:	f000 fd97 	bl	20021d34 <sifli_secboot_exception>
20021206:	2c07      	cmp	r4, #7
20021208:	f300 8093 	bgt.w	20021332 <dfu_boot_img_in_flash+0x162>
2002120c:	2003      	movs	r0, #3
2002120e:	f7ff fef3 	bl	20020ff8 <sifli_hw_efuse_read_bank>
20021212:	4262      	negs	r2, r4
20021214:	f002 0203 	and.w	r2, r2, #3
20021218:	f004 0303 	and.w	r3, r4, #3
2002121c:	bf58      	it	pl
2002121e:	4253      	negpl	r3, r2
20021220:	2b02      	cmp	r3, #2
20021222:	f200 8086 	bhi.w	20021332 <dfu_boot_img_in_flash+0x162>
20021226:	4628      	mov	r0, r5
20021228:	f7ff ffbc 	bl	200211a4 <is_addr_in_nor>
2002122c:	f241 0308 	movw	r3, #4104	@ 0x1008
20021230:	4682      	mov	sl, r0
20021232:	ea4f 2944 	mov.w	r9, r4, lsl #9
20021236:	f8df c12c 	ldr.w	ip, [pc, #300]	@ 20021364 <dfu_boot_img_in_flash+0x194>
2002123a:	eb07 0609 	add.w	r6, r7, r9
2002123e:	441e      	add	r6, r3
20021240:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
20021242:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
20021246:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
2002124a:	e88c 000f 	stmia.w	ip, {r0, r1, r2, r3}
2002124e:	f1ba 0f00 	cmp.w	sl, #0
20021252:	d04b      	beq.n	200212ec <dfu_boot_img_in_flash+0x11c>
20021254:	f104 0608 	add.w	r6, r4, #8
20021258:	f1ac 0010 	sub.w	r0, ip, #16
2002125c:	0276      	lsls	r6, r6, #9
2002125e:	f7ff ff07 	bl	20021070 <sifli_hw_init_xip_key>
20021262:	59ba      	ldr	r2, [r7, r6]
20021264:	f8df a0f0 	ldr.w	sl, [pc, #240]	@ 20021358 <dfu_boot_img_in_flash+0x188>
20021268:	442a      	add	r2, r5
2002126a:	2000      	movs	r0, #0
2002126c:	f8da b000 	ldr.w	fp, [sl]
20021270:	9203      	str	r2, [sp, #12]
20021272:	f7ff ff3d 	bl	200210f0 <dfu_get_counter>
20021276:	4629      	mov	r1, r5
20021278:	4603      	mov	r3, r0
2002127a:	9a03      	ldr	r2, [sp, #12]
2002127c:	4658      	mov	r0, fp
2002127e:	f002 fa40 	bl	20023702 <HAL_FLASH_NONCE_CFG>
20021282:	4629      	mov	r1, r5
20021284:	f8da 0000 	ldr.w	r0, [sl]
20021288:	59ba      	ldr	r2, [r7, r6]
2002128a:	eba8 0305 	sub.w	r3, r8, r5
2002128e:	f002 fa27 	bl	200236e0 <HAL_FLASH_ALIAS_CFG>
20021292:	2101      	movs	r1, #1
20021294:	f8da 0000 	ldr.w	r0, [sl]
20021298:	f002 fa4b 	bl	20023732 <HAL_FLASH_AES_CFG>
2002129c:	f104 0308 	add.w	r3, r4, #8
200212a0:	f509 5081 	add.w	r0, r9, #4128	@ 0x1020
200212a4:	025b      	lsls	r3, r3, #9
200212a6:	3008      	adds	r0, #8
200212a8:	462a      	mov	r2, r5
200212aa:	58fb      	ldr	r3, [r7, r3]
200212ac:	4929      	ldr	r1, [pc, #164]	@ (20021354 <dfu_boot_img_in_flash+0x184>)
200212ae:	4438      	add	r0, r7
200212b0:	f000 fd0b 	bl	20021cca <sifli_img_sig_hash_verify>
200212b4:	b110      	cbz	r0, 200212bc <dfu_boot_img_in_flash+0xec>
200212b6:	2002      	movs	r0, #2
200212b8:	f000 fd3c 	bl	20021d34 <sifli_secboot_exception>
200212bc:	f8d5 d000 	ldr.w	sp, [r5]
200212c0:	f8d5 f004 	ldr.w	pc, [r5, #4]
200212c4:	4628      	mov	r0, r5
200212c6:	f7ff ff6d 	bl	200211a4 <is_addr_in_nor>
200212ca:	2800      	cmp	r0, #0
200212cc:	d034      	beq.n	20021338 <dfu_boot_img_in_flash+0x168>
200212ce:	4822      	ldr	r0, [pc, #136]	@ (20021358 <dfu_boot_img_in_flash+0x188>)
200212d0:	3408      	adds	r4, #8
200212d2:	0264      	lsls	r4, r4, #9
200212d4:	4629      	mov	r1, r5
200212d6:	593a      	ldr	r2, [r7, r4]
200212d8:	6800      	ldr	r0, [r0, #0]
200212da:	eba8 0305 	sub.w	r3, r8, r5
200212de:	f002 f9ff 	bl	200236e0 <HAL_FLASH_ALIAS_CFG>
200212e2:	f8d5 d000 	ldr.w	sp, [r5]
200212e6:	f8d5 f004 	ldr.w	pc, [r5, #4]
200212ea:	e022      	b.n	20021332 <dfu_boot_img_in_flash+0x162>
200212ec:	f1ac 0010 	sub.w	r0, ip, #16
200212f0:	2220      	movs	r2, #32
200212f2:	491a      	ldr	r1, [pc, #104]	@ (2002135c <dfu_boot_img_in_flash+0x18c>)
200212f4:	f7ff fee4 	bl	200210c0 <sifli_hw_dec_key>
200212f8:	f104 0608 	add.w	r6, r4, #8
200212fc:	4b18      	ldr	r3, [pc, #96]	@ (20021360 <dfu_boot_img_in_flash+0x190>)
200212fe:	0276      	lsls	r6, r6, #9
20021300:	4629      	mov	r1, r5
20021302:	59ba      	ldr	r2, [r7, r6]
20021304:	4640      	mov	r0, r8
20021306:	681b      	ldr	r3, [r3, #0]
20021308:	4798      	blx	r3
2002130a:	f8cd a000 	str.w	sl, [sp]
2002130e:	462a      	mov	r2, r5
20021310:	4629      	mov	r1, r5
20021312:	59bb      	ldr	r3, [r7, r6]
20021314:	4811      	ldr	r0, [pc, #68]	@ (2002135c <dfu_boot_img_in_flash+0x18c>)
20021316:	f7ff ff03 	bl	20021120 <sifli_hw_dec>
2002131a:	e7bf      	b.n	2002129c <dfu_boot_img_in_flash+0xcc>
2002131c:	2c07      	cmp	r4, #7
2002131e:	dc08      	bgt.n	20021332 <dfu_boot_img_in_flash+0x162>
20021320:	4262      	negs	r2, r4
20021322:	f002 0203 	and.w	r2, r2, #3
20021326:	f004 0303 	and.w	r3, r4, #3
2002132a:	bf58      	it	pl
2002132c:	4253      	negpl	r3, r2
2002132e:	2b02      	cmp	r3, #2
20021330:	d9c8      	bls.n	200212c4 <dfu_boot_img_in_flash+0xf4>
20021332:	b005      	add	sp, #20
20021334:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20021338:	45a8      	cmp	r8, r5
2002133a:	d0d2      	beq.n	200212e2 <dfu_boot_img_in_flash+0x112>
2002133c:	4b08      	ldr	r3, [pc, #32]	@ (20021360 <dfu_boot_img_in_flash+0x190>)
2002133e:	3408      	adds	r4, #8
20021340:	0264      	lsls	r4, r4, #9
20021342:	4629      	mov	r1, r5
20021344:	4640      	mov	r0, r8
20021346:	681b      	ldr	r3, [r3, #0]
20021348:	593a      	ldr	r2, [r7, r4]
2002134a:	4798      	blx	r3
2002134c:	e7c9      	b.n	200212e2 <dfu_boot_img_in_flash+0x112>
2002134e:	bf00      	nop
20021350:	200472c0 	.word	0x200472c0
20021354:	200473c4 	.word	0x200473c4
20021358:	20046cb4 	.word	0x20046cb4
2002135c:	20047280 	.word	0x20047280
20021360:	20046cc0 	.word	0x20046cc0
20021364:	200472a0 	.word	0x200472a0

20021368 <boot_images_help>:
20021368:	b5f0      	push	{r4, r5, r6, r7, lr}
2002136a:	4b21      	ldr	r3, [pc, #132]	@ (200213f0 <boot_images_help+0x88>)
2002136c:	4c21      	ldr	r4, [pc, #132]	@ (200213f4 <boot_images_help+0x8c>)
2002136e:	681b      	ldr	r3, [r3, #0]
20021370:	b085      	sub	sp, #20
20021372:	42a3      	cmp	r3, r4
20021374:	d13a      	bne.n	200213ec <boot_images_help+0x84>
20021376:	2300      	movs	r3, #0
20021378:	4f1f      	ldr	r7, [pc, #124]	@ (200213f8 <boot_images_help+0x90>)
2002137a:	2208      	movs	r2, #8
2002137c:	4669      	mov	r1, sp
2002137e:	e9cd 3302 	strd	r3, r3, [sp, #8]
20021382:	9300      	str	r3, [sp, #0]
20021384:	9301      	str	r3, [sp, #4]
20021386:	481d      	ldr	r0, [pc, #116]	@ (200213fc <boot_images_help+0x94>)
20021388:	683b      	ldr	r3, [r7, #0]
2002138a:	ae02      	add	r6, sp, #8
2002138c:	4798      	blx	r3
2002138e:	683b      	ldr	r3, [r7, #0]
20021390:	2208      	movs	r2, #8
20021392:	4631      	mov	r1, r6
20021394:	481a      	ldr	r0, [pc, #104]	@ (20021400 <boot_images_help+0x98>)
20021396:	4798      	blx	r3
20021398:	9b00      	ldr	r3, [sp, #0]
2002139a:	42a3      	cmp	r3, r4
2002139c:	d106      	bne.n	200213ac <boot_images_help+0x44>
2002139e:	9b02      	ldr	r3, [sp, #8]
200213a0:	42a3      	cmp	r3, r4
200213a2:	bf04      	itt	eq
200213a4:	e9d6 0100 	ldrdeq	r0, r1, [r6]
200213a8:	e9cd 0100 	strdeq	r0, r1, [sp]
200213ac:	2005      	movs	r0, #5
200213ae:	f001 fb9f 	bl	20022af0 <HAL_Get_backup>
200213b2:	2802      	cmp	r0, #2
200213b4:	4b13      	ldr	r3, [pc, #76]	@ (20021404 <boot_images_help+0x9c>)
200213b6:	d006      	beq.n	200213c6 <boot_images_help+0x5e>
200213b8:	9a00      	ldr	r2, [sp, #0]
200213ba:	42a2      	cmp	r2, r4
200213bc:	d106      	bne.n	200213cc <boot_images_help+0x64>
200213be:	f89d 2005 	ldrb.w	r2, [sp, #5]
200213c2:	2a7f      	cmp	r2, #127	@ 0x7f
200213c4:	d102      	bne.n	200213cc <boot_images_help+0x64>
200213c6:	4a10      	ldr	r2, [pc, #64]	@ (20021408 <boot_images_help+0xa0>)
200213c8:	f8c3 2c08 	str.w	r2, [r3, #3080]	@ 0xc08
200213cc:	f8d3 3c08 	ldr.w	r3, [r3, #3080]	@ 0xc08
200213d0:	1c5a      	adds	r2, r3, #1
200213d2:	d00b      	beq.n	200213ec <boot_images_help+0x84>
200213d4:	4a0d      	ldr	r2, [pc, #52]	@ (2002140c <boot_images_help+0xa4>)
200213d6:	6814      	ldr	r4, [r2, #0]
200213d8:	1b1c      	subs	r4, r3, r4
200213da:	f5a4 5480 	sub.w	r4, r4, #4096	@ 0x1000
200213de:	0a64      	lsrs	r4, r4, #9
200213e0:	3402      	adds	r4, #2
200213e2:	f7ff fa7d 	bl	200208e0 <board_init_psram>
200213e6:	4620      	mov	r0, r4
200213e8:	f7ff fef2 	bl	200211d0 <dfu_boot_img_in_flash>
200213ec:	b005      	add	sp, #20
200213ee:	bdf0      	pop	{r4, r5, r6, r7, pc}
200213f0:	200472c0 	.word	0x200472c0
200213f4:	53454346 	.word	0x53454346
200213f8:	20046cc0 	.word	0x20046cc0
200213fc:	62780000 	.word	0x62780000
20021400:	62520000 	.word	0x62520000
20021404:	200492c0 	.word	0x200492c0
20021408:	62001000 	.word	0x62001000
2002140c:	20046cb0 	.word	0x20046cb0

20021410 <hw_preinit0>:
20021410:	b508      	push	{r3, lr}
20021412:	4b0e      	ldr	r3, [pc, #56]	@ (2002144c <hw_preinit0+0x3c>)
20021414:	685b      	ldr	r3, [r3, #4]
20021416:	b2db      	uxtb	r3, r3
20021418:	2b06      	cmp	r3, #6
2002141a:	d80a      	bhi.n	20021432 <hw_preinit0+0x22>
2002141c:	4a0c      	ldr	r2, [pc, #48]	@ (20021450 <hw_preinit0+0x40>)
2002141e:	6a93      	ldr	r3, [r2, #40]	@ 0x28
20021420:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
20021424:	f043 0306 	orr.w	r3, r3, #6
20021428:	6293      	str	r3, [r2, #40]	@ 0x28
2002142a:	6853      	ldr	r3, [r2, #4]
2002142c:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20021430:	6053      	str	r3, [r2, #4]
20021432:	2000      	movs	r0, #0
20021434:	f000 fd77 	bl	20021f26 <HAL_Delay_us>
20021438:	4b06      	ldr	r3, [pc, #24]	@ (20021454 <hw_preinit0+0x44>)
2002143a:	4a07      	ldr	r2, [pc, #28]	@ (20021458 <hw_preinit0+0x48>)
2002143c:	2000      	movs	r0, #0
2002143e:	605a      	str	r2, [r3, #4]
20021440:	f7ff fdda 	bl	20020ff8 <sifli_hw_efuse_read_bank>
20021444:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20021448:	f7ff be9e 	b.w	20021188 <boot_ram>
2002144c:	5000b000 	.word	0x5000b000
20021450:	500ca000 	.word	0x500ca000
20021454:	5000c000 	.word	0x5000c000
20021458:	0002d08f 	.word	0x0002d08f

2002145c <entry>:
2002145c:	4c14      	ldr	r4, [pc, #80]	@ (200214b0 <entry+0x54>)
2002145e:	b508      	push	{r3, lr}
20021460:	2000      	movs	r0, #0
20021462:	f000 fd60 	bl	20021f26 <HAL_Delay_us>
20021466:	6863      	ldr	r3, [r4, #4]
20021468:	4d12      	ldr	r5, [pc, #72]	@ (200214b4 <entry+0x58>)
2002146a:	b2db      	uxtb	r3, r3
2002146c:	2b06      	cmp	r3, #6
2002146e:	d90f      	bls.n	20021490 <entry+0x34>
20021470:	f7ff f856 	bl	20020520 <board_flash_power_on>
20021474:	f7fe ff44 	bl	20020300 <HAL_MspInit>
20021478:	f7ff f834 	bl	200204e4 <board_boot_from>
2002147c:	6028      	str	r0, [r5, #0]
2002147e:	68e3      	ldr	r3, [r4, #12]
20021480:	f023 0301 	bic.w	r3, r3, #1
20021484:	60e3      	str	r3, [r4, #12]
20021486:	f7ff fc3d 	bl	20020d04 <dfu_flash_init>
2002148a:	f7ff ff6d 	bl	20021368 <boot_images_help>
2002148e:	e7fe      	b.n	2002148e <entry+0x32>
20021490:	f7ff f828 	bl	200204e4 <board_boot_from>
20021494:	6028      	str	r0, [r5, #0]
20021496:	f7ff f843 	bl	20020520 <board_flash_power_on>
2002149a:	f7fe ff31 	bl	20020300 <HAL_MspInit>
2002149e:	68e3      	ldr	r3, [r4, #12]
200214a0:	f023 0301 	bic.w	r3, r3, #1
200214a4:	60e3      	str	r3, [r4, #12]
200214a6:	f7ff fc2d 	bl	20020d04 <dfu_flash_init>
200214aa:	f7ff ff5d 	bl	20021368 <boot_images_help>
200214ae:	e7ee      	b.n	2002148e <entry+0x32>
200214b0:	5000b000 	.word	0x5000b000
200214b4:	20049ed0 	.word	0x20049ed0

200214b8 <sdio_emmc_init>:
200214b8:	b570      	push	{r4, r5, r6, lr}
200214ba:	b08c      	sub	sp, #48	@ 0x30
200214bc:	f000 f968 	bl	20021790 <sd1_init>
200214c0:	4c8d      	ldr	r4, [pc, #564]	@ (200216f8 <sdio_emmc_init+0x240>)
200214c2:	4b8e      	ldr	r3, [pc, #568]	@ (200216fc <sdio_emmc_init+0x244>)
200214c4:	2500      	movs	r5, #0
200214c6:	6323      	str	r3, [r4, #48]	@ 0x30
200214c8:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200214ca:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
200214ce:	f043 0302 	orr.w	r3, r3, #2
200214d2:	6323      	str	r3, [r4, #48]	@ 0x30
200214d4:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
200214d8:	62e5      	str	r5, [r4, #44]	@ 0x2c
200214da:	6223      	str	r3, [r4, #32]
200214dc:	f000 fd23 	bl	20021f26 <HAL_Delay_us>
200214e0:	4629      	mov	r1, r5
200214e2:	4628      	mov	r0, r5
200214e4:	f000 f986 	bl	200217f4 <sd1_send_cmd>
200214e8:	2301      	movs	r3, #1
200214ea:	65e3      	str	r3, [r4, #92]	@ 0x5c
200214ec:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
200214ee:	079d      	lsls	r5, r3, #30
200214f0:	d5fc      	bpl.n	200214ec <sdio_emmc_init+0x34>
200214f2:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
200214f4:	f043 0320 	orr.w	r3, r3, #32
200214f8:	63e3      	str	r3, [r4, #60]	@ 0x3c
200214fa:	4981      	ldr	r1, [pc, #516]	@ (20021700 <sdio_emmc_init+0x248>)
200214fc:	2001      	movs	r0, #1
200214fe:	ad07      	add	r5, sp, #28
20021500:	f000 f978 	bl	200217f4 <sd1_send_cmd>
20021504:	ab06      	add	r3, sp, #24
20021506:	aa05      	add	r2, sp, #20
20021508:	a904      	add	r1, sp, #16
2002150a:	f10d 000f 	add.w	r0, sp, #15
2002150e:	9500      	str	r5, [sp, #0]
20021510:	f000 f9ae 	bl	20021870 <sd1_get_rsp>
20021514:	2014      	movs	r0, #20
20021516:	f000 fd06 	bl	20021f26 <HAL_Delay_us>
2002151a:	9b04      	ldr	r3, [sp, #16]
2002151c:	2b00      	cmp	r3, #0
2002151e:	daec      	bge.n	200214fa <sdio_emmc_init+0x42>
20021520:	2014      	movs	r0, #20
20021522:	f000 fd00 	bl	20021f26 <HAL_Delay_us>
20021526:	2100      	movs	r1, #0
20021528:	2002      	movs	r0, #2
2002152a:	f000 f963 	bl	200217f4 <sd1_send_cmd>
2002152e:	2801      	cmp	r0, #1
20021530:	f000 8081 	beq.w	20021636 <sdio_emmc_init+0x17e>
20021534:	2802      	cmp	r0, #2
20021536:	d07e      	beq.n	20021636 <sdio_emmc_init+0x17e>
20021538:	ab08      	add	r3, sp, #32
2002153a:	aa0a      	add	r2, sp, #40	@ 0x28
2002153c:	a90b      	add	r1, sp, #44	@ 0x2c
2002153e:	9300      	str	r3, [sp, #0]
20021540:	f10d 000f 	add.w	r0, sp, #15
20021544:	ab09      	add	r3, sp, #36	@ 0x24
20021546:	f000 f993 	bl	20021870 <sd1_get_rsp>
2002154a:	2014      	movs	r0, #20
2002154c:	f000 fceb 	bl	20021f26 <HAL_Delay_us>
20021550:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
20021554:	2003      	movs	r0, #3
20021556:	f000 f94d 	bl	200217f4 <sd1_send_cmd>
2002155a:	2801      	cmp	r0, #1
2002155c:	f000 80ab 	beq.w	200216b6 <sdio_emmc_init+0x1fe>
20021560:	2802      	cmp	r0, #2
20021562:	f000 80aa 	beq.w	200216ba <sdio_emmc_init+0x202>
20021566:	ab06      	add	r3, sp, #24
20021568:	9500      	str	r5, [sp, #0]
2002156a:	aa05      	add	r2, sp, #20
2002156c:	a904      	add	r1, sp, #16
2002156e:	f10d 000f 	add.w	r0, sp, #15
20021572:	f000 f97d 	bl	20021870 <sd1_get_rsp>
20021576:	f89d 300f 	ldrb.w	r3, [sp, #15]
2002157a:	2b03      	cmp	r3, #3
2002157c:	f040 809f 	bne.w	200216be <sdio_emmc_init+0x206>
20021580:	4c5d      	ldr	r4, [pc, #372]	@ (200216f8 <sdio_emmc_init+0x240>)
20021582:	2014      	movs	r0, #20
20021584:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20021586:	f023 0320 	bic.w	r3, r3, #32
2002158a:	63e3      	str	r3, [r4, #60]	@ 0x3c
2002158c:	f000 fccb 	bl	20021f26 <HAL_Delay_us>
20021590:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
20021594:	2009      	movs	r0, #9
20021596:	f000 f92d 	bl	200217f4 <sd1_send_cmd>
2002159a:	2801      	cmp	r0, #1
2002159c:	f000 8091 	beq.w	200216c2 <sdio_emmc_init+0x20a>
200215a0:	2802      	cmp	r0, #2
200215a2:	f000 8090 	beq.w	200216c6 <sdio_emmc_init+0x20e>
200215a6:	aa05      	add	r2, sp, #20
200215a8:	a904      	add	r1, sp, #16
200215aa:	ab06      	add	r3, sp, #24
200215ac:	f10d 000f 	add.w	r0, sp, #15
200215b0:	9500      	str	r5, [sp, #0]
200215b2:	f000 f95d 	bl	20021870 <sd1_get_rsp>
200215b6:	f44f 53b8 	mov.w	r3, #5888	@ 0x1700
200215ba:	6323      	str	r3, [r4, #48]	@ 0x30
200215bc:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200215be:	2014      	movs	r0, #20
200215c0:	f043 0302 	orr.w	r3, r3, #2
200215c4:	6323      	str	r3, [r4, #48]	@ 0x30
200215c6:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
200215ca:	6223      	str	r3, [r4, #32]
200215cc:	2302      	movs	r3, #2
200215ce:	63e3      	str	r3, [r4, #60]	@ 0x3c
200215d0:	f000 fca9 	bl	20021f26 <HAL_Delay_us>
200215d4:	f44f 3180 	mov.w	r1, #65536	@ 0x10000
200215d8:	2007      	movs	r0, #7
200215da:	f000 f90b 	bl	200217f4 <sd1_send_cmd>
200215de:	2801      	cmp	r0, #1
200215e0:	d073      	beq.n	200216ca <sdio_emmc_init+0x212>
200215e2:	2802      	cmp	r0, #2
200215e4:	d073      	beq.n	200216ce <sdio_emmc_init+0x216>
200215e6:	ab06      	add	r3, sp, #24
200215e8:	9500      	str	r5, [sp, #0]
200215ea:	aa05      	add	r2, sp, #20
200215ec:	a904      	add	r1, sp, #16
200215ee:	f10d 000f 	add.w	r0, sp, #15
200215f2:	f000 f93d 	bl	20021870 <sd1_get_rsp>
200215f6:	f89d 300f 	ldrb.w	r3, [sp, #15]
200215fa:	2b07      	cmp	r3, #7
200215fc:	d169      	bne.n	200216d2 <sdio_emmc_init+0x21a>
200215fe:	f04f 33ff 	mov.w	r3, #4294967295
20021602:	2101      	movs	r1, #1
20021604:	2000      	movs	r0, #0
20021606:	6023      	str	r3, [r4, #0]
20021608:	f000 f942 	bl	20021890 <sd1_read>
2002160c:	2100      	movs	r1, #0
2002160e:	2008      	movs	r0, #8
20021610:	f000 f8f0 	bl	200217f4 <sd1_send_cmd>
20021614:	2801      	cmp	r0, #1
20021616:	d05e      	beq.n	200216d6 <sdio_emmc_init+0x21e>
20021618:	2802      	cmp	r0, #2
2002161a:	d05e      	beq.n	200216da <sdio_emmc_init+0x222>
2002161c:	ab06      	add	r3, sp, #24
2002161e:	9500      	str	r5, [sp, #0]
20021620:	aa05      	add	r2, sp, #20
20021622:	a904      	add	r1, sp, #16
20021624:	f10d 000f 	add.w	r0, sp, #15
20021628:	f000 f922 	bl	20021870 <sd1_get_rsp>
2002162c:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021630:	2b08      	cmp	r3, #8
20021632:	d002      	beq.n	2002163a <sdio_emmc_init+0x182>
20021634:	200d      	movs	r0, #13
20021636:	b00c      	add	sp, #48	@ 0x30
20021638:	bd70      	pop	{r4, r5, r6, pc}
2002163a:	2320      	movs	r3, #32
2002163c:	62e3      	str	r3, [r4, #44]	@ 0x2c
2002163e:	f000 f937 	bl	200218b0 <sd1_wait_read>
20021642:	6823      	ldr	r3, [r4, #0]
20021644:	0618      	lsls	r0, r3, #24
20021646:	d4f5      	bmi.n	20021634 <sdio_emmc_init+0x17c>
20021648:	6823      	ldr	r3, [r4, #0]
2002164a:	0659      	lsls	r1, r3, #25
2002164c:	d447      	bmi.n	200216de <sdio_emmc_init+0x226>
2002164e:	2680      	movs	r6, #128	@ 0x80
20021650:	3e01      	subs	r6, #1
20021652:	f8d4 3200 	ldr.w	r3, [r4, #512]	@ 0x200
20021656:	d1fb      	bne.n	20021650 <sdio_emmc_init+0x198>
20021658:	2101      	movs	r1, #1
2002165a:	4630      	mov	r0, r6
2002165c:	f000 f918 	bl	20021890 <sd1_read>
20021660:	2014      	movs	r0, #20
20021662:	f000 fc60 	bl	20021f26 <HAL_Delay_us>
20021666:	f04f 33ff 	mov.w	r3, #4294967295
2002166a:	4631      	mov	r1, r6
2002166c:	2011      	movs	r0, #17
2002166e:	6023      	str	r3, [r4, #0]
20021670:	f000 f8c0 	bl	200217f4 <sd1_send_cmd>
20021674:	2801      	cmp	r0, #1
20021676:	d034      	beq.n	200216e2 <sdio_emmc_init+0x22a>
20021678:	2802      	cmp	r0, #2
2002167a:	d034      	beq.n	200216e6 <sdio_emmc_init+0x22e>
2002167c:	ab06      	add	r3, sp, #24
2002167e:	9500      	str	r5, [sp, #0]
20021680:	aa05      	add	r2, sp, #20
20021682:	a904      	add	r1, sp, #16
20021684:	f10d 000f 	add.w	r0, sp, #15
20021688:	f000 f8f2 	bl	20021870 <sd1_get_rsp>
2002168c:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021690:	2b11      	cmp	r3, #17
20021692:	d12a      	bne.n	200216ea <sdio_emmc_init+0x232>
20021694:	2320      	movs	r3, #32
20021696:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021698:	f000 f90a 	bl	200218b0 <sd1_wait_read>
2002169c:	6823      	ldr	r3, [r4, #0]
2002169e:	061a      	lsls	r2, r3, #24
200216a0:	d425      	bmi.n	200216ee <sdio_emmc_init+0x236>
200216a2:	6823      	ldr	r3, [r4, #0]
200216a4:	065b      	lsls	r3, r3, #25
200216a6:	d424      	bmi.n	200216f2 <sdio_emmc_init+0x23a>
200216a8:	2080      	movs	r0, #128	@ 0x80
200216aa:	4b13      	ldr	r3, [pc, #76]	@ (200216f8 <sdio_emmc_init+0x240>)
200216ac:	3801      	subs	r0, #1
200216ae:	f8d3 2200 	ldr.w	r2, [r3, #512]	@ 0x200
200216b2:	d1fb      	bne.n	200216ac <sdio_emmc_init+0x1f4>
200216b4:	e7bf      	b.n	20021636 <sdio_emmc_init+0x17e>
200216b6:	2003      	movs	r0, #3
200216b8:	e7bd      	b.n	20021636 <sdio_emmc_init+0x17e>
200216ba:	2004      	movs	r0, #4
200216bc:	e7bb      	b.n	20021636 <sdio_emmc_init+0x17e>
200216be:	2005      	movs	r0, #5
200216c0:	e7b9      	b.n	20021636 <sdio_emmc_init+0x17e>
200216c2:	2006      	movs	r0, #6
200216c4:	e7b7      	b.n	20021636 <sdio_emmc_init+0x17e>
200216c6:	2007      	movs	r0, #7
200216c8:	e7b5      	b.n	20021636 <sdio_emmc_init+0x17e>
200216ca:	2008      	movs	r0, #8
200216cc:	e7b3      	b.n	20021636 <sdio_emmc_init+0x17e>
200216ce:	2009      	movs	r0, #9
200216d0:	e7b1      	b.n	20021636 <sdio_emmc_init+0x17e>
200216d2:	200a      	movs	r0, #10
200216d4:	e7af      	b.n	20021636 <sdio_emmc_init+0x17e>
200216d6:	200b      	movs	r0, #11
200216d8:	e7ad      	b.n	20021636 <sdio_emmc_init+0x17e>
200216da:	200c      	movs	r0, #12
200216dc:	e7ab      	b.n	20021636 <sdio_emmc_init+0x17e>
200216de:	200e      	movs	r0, #14
200216e0:	e7a9      	b.n	20021636 <sdio_emmc_init+0x17e>
200216e2:	2011      	movs	r0, #17
200216e4:	e7a7      	b.n	20021636 <sdio_emmc_init+0x17e>
200216e6:	2012      	movs	r0, #18
200216e8:	e7a5      	b.n	20021636 <sdio_emmc_init+0x17e>
200216ea:	2013      	movs	r0, #19
200216ec:	e7a3      	b.n	20021636 <sdio_emmc_init+0x17e>
200216ee:	2014      	movs	r0, #20
200216f0:	e7a1      	b.n	20021636 <sdio_emmc_init+0x17e>
200216f2:	2015      	movs	r0, #21
200216f4:	e79f      	b.n	20021636 <sdio_emmc_init+0x17e>
200216f6:	bf00      	nop
200216f8:	50045000 	.word	0x50045000
200216fc:	00016700 	.word	0x00016700
20021700:	40000080 	.word	0x40000080

20021704 <emmc_read_data>:
20021704:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20021708:	4607      	mov	r7, r0
2002170a:	f04f 38ff 	mov.w	r8, #4294967295
2002170e:	b088      	sub	sp, #32
20021710:	2000      	movs	r0, #0
20021712:	460d      	mov	r5, r1
20021714:	4e1d      	ldr	r6, [pc, #116]	@ (2002178c <emmc_read_data+0x88>)
20021716:	2101      	movs	r1, #1
20021718:	4614      	mov	r4, r2
2002171a:	f000 f8b9 	bl	20021890 <sd1_read>
2002171e:	2014      	movs	r0, #20
20021720:	f000 fc01 	bl	20021f26 <HAL_Delay_us>
20021724:	2011      	movs	r0, #17
20021726:	f8c6 8000 	str.w	r8, [r6]
2002172a:	0a79      	lsrs	r1, r7, #9
2002172c:	f000 f862 	bl	200217f4 <sd1_send_cmd>
20021730:	4440      	add	r0, r8
20021732:	b2c0      	uxtb	r0, r0
20021734:	2801      	cmp	r0, #1
20021736:	d803      	bhi.n	20021740 <emmc_read_data+0x3c>
20021738:	2000      	movs	r0, #0
2002173a:	b008      	add	sp, #32
2002173c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20021740:	ab07      	add	r3, sp, #28
20021742:	9300      	str	r3, [sp, #0]
20021744:	aa05      	add	r2, sp, #20
20021746:	ab06      	add	r3, sp, #24
20021748:	a904      	add	r1, sp, #16
2002174a:	f10d 000f 	add.w	r0, sp, #15
2002174e:	f000 f88f 	bl	20021870 <sd1_get_rsp>
20021752:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021756:	2b11      	cmp	r3, #17
20021758:	d1ee      	bne.n	20021738 <emmc_read_data+0x34>
2002175a:	2320      	movs	r3, #32
2002175c:	f8c6 8000 	str.w	r8, [r6]
20021760:	62f3      	str	r3, [r6, #44]	@ 0x2c
20021762:	f000 f8a5 	bl	200218b0 <sd1_wait_read>
20021766:	6833      	ldr	r3, [r6, #0]
20021768:	061a      	lsls	r2, r3, #24
2002176a:	d4e5      	bmi.n	20021738 <emmc_read_data+0x34>
2002176c:	6833      	ldr	r3, [r6, #0]
2002176e:	065b      	lsls	r3, r3, #25
20021770:	d4e2      	bmi.n	20021738 <emmc_read_data+0x34>
20021772:	f024 0303 	bic.w	r3, r4, #3
20021776:	442b      	add	r3, r5
20021778:	429d      	cmp	r5, r3
2002177a:	d101      	bne.n	20021780 <emmc_read_data+0x7c>
2002177c:	4620      	mov	r0, r4
2002177e:	e7dc      	b.n	2002173a <emmc_read_data+0x36>
20021780:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
20021784:	f845 2b04 	str.w	r2, [r5], #4
20021788:	e7f6      	b.n	20021778 <emmc_read_data+0x74>
2002178a:	bf00      	nop
2002178c:	50045000 	.word	0x50045000

20021790 <sd1_init>:
20021790:	b510      	push	{r4, lr}
20021792:	f04f 44a0 	mov.w	r4, #1342177280	@ 0x50000000
20021796:	68e3      	ldr	r3, [r4, #12]
20021798:	2064      	movs	r0, #100	@ 0x64
2002179a:	f023 0310 	bic.w	r3, r3, #16
2002179e:	60e3      	str	r3, [r4, #12]
200217a0:	f000 fbc1 	bl	20021f26 <HAL_Delay_us>
200217a4:	68e3      	ldr	r3, [r4, #12]
200217a6:	4a07      	ldr	r2, [pc, #28]	@ (200217c4 <sd1_init+0x34>)
200217a8:	f043 0310 	orr.w	r3, r3, #16
200217ac:	60e3      	str	r3, [r4, #12]
200217ae:	6913      	ldr	r3, [r2, #16]
200217b0:	f043 0302 	orr.w	r3, r3, #2
200217b4:	6113      	str	r3, [r2, #16]
200217b6:	f44f 7280 	mov.w	r2, #256	@ 0x100
200217ba:	4b03      	ldr	r3, [pc, #12]	@ (200217c8 <sd1_init+0x38>)
200217bc:	631a      	str	r2, [r3, #48]	@ 0x30
200217be:	2200      	movs	r2, #0
200217c0:	63da      	str	r2, [r3, #60]	@ 0x3c
200217c2:	bd10      	pop	{r4, pc}
200217c4:	5000b000 	.word	0x5000b000
200217c8:	50045000 	.word	0x50045000

200217cc <sd1_wait_cmd>:
200217cc:	4b08      	ldr	r3, [pc, #32]	@ (200217f0 <sd1_wait_cmd+0x24>)
200217ce:	681a      	ldr	r2, [r3, #0]
200217d0:	f012 0f0a 	tst.w	r2, #10
200217d4:	d0fb      	beq.n	200217ce <sd1_wait_cmd+0x2>
200217d6:	2202      	movs	r2, #2
200217d8:	601a      	str	r2, [r3, #0]
200217da:	681a      	ldr	r2, [r3, #0]
200217dc:	0712      	lsls	r2, r2, #28
200217de:	bf5f      	itttt	pl
200217e0:	6818      	ldrpl	r0, [r3, #0]
200217e2:	f3c0 0080 	ubfxpl	r0, r0, #2, #1
200217e6:	0040      	lslpl	r0, r0, #1
200217e8:	b2c0      	uxtbpl	r0, r0
200217ea:	bf48      	it	mi
200217ec:	2001      	movmi	r0, #1
200217ee:	4770      	bx	lr
200217f0:	50045000 	.word	0x50045000

200217f4 <sd1_send_cmd>:
200217f4:	4b0e      	ldr	r3, [pc, #56]	@ (20021830 <sd1_send_cmd+0x3c>)
200217f6:	280f      	cmp	r0, #15
200217f8:	6099      	str	r1, [r3, #8]
200217fa:	ea4f 4380 	mov.w	r3, r0, lsl #18
200217fe:	d813      	bhi.n	20021828 <sd1_send_cmd+0x34>
20021800:	2201      	movs	r2, #1
20021802:	f248 0111 	movw	r1, #32785	@ 0x8011
20021806:	4082      	lsls	r2, r0
20021808:	420a      	tst	r2, r1
2002180a:	d105      	bne.n	20021818 <sd1_send_cmd+0x24>
2002180c:	f240 6104 	movw	r1, #1540	@ 0x604
20021810:	420a      	tst	r2, r1
20021812:	d009      	beq.n	20021828 <sd1_send_cmd+0x34>
20021814:	f443 3340 	orr.w	r3, r3, #196608	@ 0x30000
20021818:	4a05      	ldr	r2, [pc, #20]	@ (20021830 <sd1_send_cmd+0x3c>)
2002181a:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
2002181e:	f043 0301 	orr.w	r3, r3, #1
20021822:	6053      	str	r3, [r2, #4]
20021824:	f7ff bfd2 	b.w	200217cc <sd1_wait_cmd>
20021828:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
2002182c:	e7f4      	b.n	20021818 <sd1_send_cmd+0x24>
2002182e:	bf00      	nop
20021830:	50045000 	.word	0x50045000

20021834 <sd1_send_acmd>:
20021834:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20021836:	4605      	mov	r5, r0
20021838:	460f      	mov	r7, r1
2002183a:	2037      	movs	r0, #55	@ 0x37
2002183c:	0411      	lsls	r1, r2, #16
2002183e:	f7ff ffd9 	bl	200217f4 <sd1_send_cmd>
20021842:	4604      	mov	r4, r0
20021844:	b968      	cbnz	r0, 20021862 <sd1_send_acmd+0x2e>
20021846:	4b08      	ldr	r3, [pc, #32]	@ (20021868 <sd1_send_acmd+0x34>)
20021848:	4e08      	ldr	r6, [pc, #32]	@ (2002186c <sd1_send_acmd+0x38>)
2002184a:	ea43 4385 	orr.w	r3, r3, r5, lsl #18
2002184e:	60b7      	str	r7, [r6, #8]
20021850:	6073      	str	r3, [r6, #4]
20021852:	f7ff ffbb 	bl	200217cc <sd1_wait_cmd>
20021856:	2802      	cmp	r0, #2
20021858:	d104      	bne.n	20021864 <sd1_send_acmd+0x30>
2002185a:	2d29      	cmp	r5, #41	@ 0x29
2002185c:	d102      	bne.n	20021864 <sd1_send_acmd+0x30>
2002185e:	2304      	movs	r3, #4
20021860:	6033      	str	r3, [r6, #0]
20021862:	4620      	mov	r0, r4
20021864:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20021866:	bf00      	nop
20021868:	00010101 	.word	0x00010101
2002186c:	50045000 	.word	0x50045000

20021870 <sd1_get_rsp>:
20021870:	b530      	push	{r4, r5, lr}
20021872:	4c06      	ldr	r4, [pc, #24]	@ (2002188c <sd1_get_rsp+0x1c>)
20021874:	68e5      	ldr	r5, [r4, #12]
20021876:	7005      	strb	r5, [r0, #0]
20021878:	6920      	ldr	r0, [r4, #16]
2002187a:	6008      	str	r0, [r1, #0]
2002187c:	6961      	ldr	r1, [r4, #20]
2002187e:	6011      	str	r1, [r2, #0]
20021880:	69a2      	ldr	r2, [r4, #24]
20021882:	601a      	str	r2, [r3, #0]
20021884:	69e2      	ldr	r2, [r4, #28]
20021886:	9b03      	ldr	r3, [sp, #12]
20021888:	601a      	str	r2, [r3, #0]
2002188a:	bd30      	pop	{r4, r5, pc}
2002188c:	50045000 	.word	0x50045000

20021890 <sd1_read>:
20021890:	f04f 33ff 	mov.w	r3, #4294967295
20021894:	4a04      	ldr	r2, [pc, #16]	@ (200218a8 <sd1_read+0x18>)
20021896:	eb03 2341 	add.w	r3, r3, r1, lsl #9
2002189a:	6293      	str	r3, [r2, #40]	@ 0x28
2002189c:	4b03      	ldr	r3, [pc, #12]	@ (200218ac <sd1_read+0x1c>)
2002189e:	ea43 23c0 	orr.w	r3, r3, r0, lsl #11
200218a2:	6253      	str	r3, [r2, #36]	@ 0x24
200218a4:	4770      	bx	lr
200218a6:	bf00      	nop
200218a8:	50045000 	.word	0x50045000
200218ac:	01ff0301 	.word	0x01ff0301

200218b0 <sd1_wait_read>:
200218b0:	4b08      	ldr	r3, [pc, #32]	@ (200218d4 <sd1_wait_read+0x24>)
200218b2:	681a      	ldr	r2, [r3, #0]
200218b4:	f012 0fe0 	tst.w	r2, #224	@ 0xe0
200218b8:	d0fb      	beq.n	200218b2 <sd1_wait_read+0x2>
200218ba:	2220      	movs	r2, #32
200218bc:	601a      	str	r2, [r3, #0]
200218be:	681a      	ldr	r2, [r3, #0]
200218c0:	0612      	lsls	r2, r2, #24
200218c2:	bf5f      	itttt	pl
200218c4:	6818      	ldrpl	r0, [r3, #0]
200218c6:	f3c0 1080 	ubfxpl	r0, r0, #6, #1
200218ca:	0040      	lslpl	r0, r0, #1
200218cc:	b2c0      	uxtbpl	r0, r0
200218ce:	bf48      	it	mi
200218d0:	2001      	movmi	r0, #1
200218d2:	4770      	bx	lr
200218d4:	50045000 	.word	0x50045000

200218d8 <sdmmc1_sdnand>:
200218d8:	b5f0      	push	{r4, r5, r6, r7, lr}
200218da:	b08d      	sub	sp, #52	@ 0x34
200218dc:	f7ff ff58 	bl	20021790 <sd1_init>
200218e0:	4c8f      	ldr	r4, [pc, #572]	@ (20021b20 <sdmmc1_sdnand+0x248>)
200218e2:	4b90      	ldr	r3, [pc, #576]	@ (20021b24 <sdmmc1_sdnand+0x24c>)
200218e4:	2500      	movs	r5, #0
200218e6:	6323      	str	r3, [r4, #48]	@ 0x30
200218e8:	6b23      	ldr	r3, [r4, #48]	@ 0x30
200218ea:	f44f 70fa 	mov.w	r0, #500	@ 0x1f4
200218ee:	f043 0302 	orr.w	r3, r3, #2
200218f2:	6323      	str	r3, [r4, #48]	@ 0x30
200218f4:	f44f 1380 	mov.w	r3, #1048576	@ 0x100000
200218f8:	62e5      	str	r5, [r4, #44]	@ 0x2c
200218fa:	6223      	str	r3, [r4, #32]
200218fc:	f000 fb13 	bl	20021f26 <HAL_Delay_us>
20021900:	4629      	mov	r1, r5
20021902:	4628      	mov	r0, r5
20021904:	f7ff ff76 	bl	200217f4 <sd1_send_cmd>
20021908:	2301      	movs	r3, #1
2002190a:	65e3      	str	r3, [r4, #92]	@ 0x5c
2002190c:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
2002190e:	079a      	lsls	r2, r3, #30
20021910:	d5fc      	bpl.n	2002190c <sdmmc1_sdnand+0x34>
20021912:	2014      	movs	r0, #20
20021914:	f000 fb07 	bl	20021f26 <HAL_Delay_us>
20021918:	f44f 71d5 	mov.w	r1, #426	@ 0x1aa
2002191c:	2008      	movs	r0, #8
2002191e:	f7ff ff69 	bl	200217f4 <sd1_send_cmd>
20021922:	3801      	subs	r0, #1
20021924:	b2c0      	uxtb	r0, r0
20021926:	2801      	cmp	r0, #1
20021928:	d802      	bhi.n	20021930 <sdmmc1_sdnand+0x58>
2002192a:	2038      	movs	r0, #56	@ 0x38
2002192c:	b00d      	add	sp, #52	@ 0x34
2002192e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021930:	ac07      	add	r4, sp, #28
20021932:	ab06      	add	r3, sp, #24
20021934:	9400      	str	r4, [sp, #0]
20021936:	aa05      	add	r2, sp, #20
20021938:	a904      	add	r1, sp, #16
2002193a:	f10d 000f 	add.w	r0, sp, #15
2002193e:	f7ff ff97 	bl	20021870 <sd1_get_rsp>
20021942:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021946:	2b08      	cmp	r3, #8
20021948:	d1ef      	bne.n	2002192a <sdmmc1_sdnand+0x52>
2002194a:	9b04      	ldr	r3, [sp, #16]
2002194c:	f5b3 7fd5 	cmp.w	r3, #426	@ 0x1aa
20021950:	d1eb      	bne.n	2002192a <sdmmc1_sdnand+0x52>
20021952:	2014      	movs	r0, #20
20021954:	f000 fae7 	bl	20021f26 <HAL_Delay_us>
20021958:	2200      	movs	r2, #0
2002195a:	2029      	movs	r0, #41	@ 0x29
2002195c:	4972      	ldr	r1, [pc, #456]	@ (20021b28 <sdmmc1_sdnand+0x250>)
2002195e:	f7ff ff69 	bl	20021834 <sd1_send_acmd>
20021962:	2801      	cmp	r0, #1
20021964:	f000 80d0 	beq.w	20021b08 <sdmmc1_sdnand+0x230>
20021968:	ab06      	add	r3, sp, #24
2002196a:	9400      	str	r4, [sp, #0]
2002196c:	aa05      	add	r2, sp, #20
2002196e:	a904      	add	r1, sp, #16
20021970:	f10d 000f 	add.w	r0, sp, #15
20021974:	f7ff ff7c 	bl	20021870 <sd1_get_rsp>
20021978:	9b04      	ldr	r3, [sp, #16]
2002197a:	2b00      	cmp	r3, #0
2002197c:	db03      	blt.n	20021986 <sdmmc1_sdnand+0xae>
2002197e:	2002      	movs	r0, #2
20021980:	f000 fad1 	bl	20021f26 <HAL_Delay_us>
20021984:	e7e5      	b.n	20021952 <sdmmc1_sdnand+0x7a>
20021986:	2014      	movs	r0, #20
20021988:	f000 facd 	bl	20021f26 <HAL_Delay_us>
2002198c:	2100      	movs	r1, #0
2002198e:	2002      	movs	r0, #2
20021990:	f7ff ff30 	bl	200217f4 <sd1_send_cmd>
20021994:	3801      	subs	r0, #1
20021996:	b2c0      	uxtb	r0, r0
20021998:	2801      	cmp	r0, #1
2002199a:	f240 80b7 	bls.w	20021b0c <sdmmc1_sdnand+0x234>
2002199e:	ab08      	add	r3, sp, #32
200219a0:	aa0a      	add	r2, sp, #40	@ 0x28
200219a2:	a90b      	add	r1, sp, #44	@ 0x2c
200219a4:	9300      	str	r3, [sp, #0]
200219a6:	f10d 000f 	add.w	r0, sp, #15
200219aa:	ab09      	add	r3, sp, #36	@ 0x24
200219ac:	f7ff ff60 	bl	20021870 <sd1_get_rsp>
200219b0:	2014      	movs	r0, #20
200219b2:	f000 fab8 	bl	20021f26 <HAL_Delay_us>
200219b6:	2100      	movs	r1, #0
200219b8:	2003      	movs	r0, #3
200219ba:	f7ff ff1b 	bl	200217f4 <sd1_send_cmd>
200219be:	3801      	subs	r0, #1
200219c0:	b2c0      	uxtb	r0, r0
200219c2:	2801      	cmp	r0, #1
200219c4:	d801      	bhi.n	200219ca <sdmmc1_sdnand+0xf2>
200219c6:	2033      	movs	r0, #51	@ 0x33
200219c8:	e7b0      	b.n	2002192c <sdmmc1_sdnand+0x54>
200219ca:	ab06      	add	r3, sp, #24
200219cc:	9400      	str	r4, [sp, #0]
200219ce:	aa05      	add	r2, sp, #20
200219d0:	a904      	add	r1, sp, #16
200219d2:	f10d 000f 	add.w	r0, sp, #15
200219d6:	f7ff ff4b 	bl	20021870 <sd1_get_rsp>
200219da:	f89d 300f 	ldrb.w	r3, [sp, #15]
200219de:	2b03      	cmp	r3, #3
200219e0:	d1f1      	bne.n	200219c6 <sdmmc1_sdnand+0xee>
200219e2:	9e04      	ldr	r6, [sp, #16]
200219e4:	2014      	movs	r0, #20
200219e6:	0c35      	lsrs	r5, r6, #16
200219e8:	042d      	lsls	r5, r5, #16
200219ea:	f000 fa9c 	bl	20021f26 <HAL_Delay_us>
200219ee:	4629      	mov	r1, r5
200219f0:	2009      	movs	r0, #9
200219f2:	f7ff feff 	bl	200217f4 <sd1_send_cmd>
200219f6:	3801      	subs	r0, #1
200219f8:	b2c0      	uxtb	r0, r0
200219fa:	2801      	cmp	r0, #1
200219fc:	f240 8088 	bls.w	20021b10 <sdmmc1_sdnand+0x238>
20021a00:	9400      	str	r4, [sp, #0]
20021a02:	ab06      	add	r3, sp, #24
20021a04:	aa05      	add	r2, sp, #20
20021a06:	a904      	add	r1, sp, #16
20021a08:	f10d 000f 	add.w	r0, sp, #15
20021a0c:	f7ff ff30 	bl	20021870 <sd1_get_rsp>
20021a10:	e9dd 2004 	ldrd	r2, r0, [sp, #16]
20021a14:	9c06      	ldr	r4, [sp, #24]
20021a16:	9907      	ldr	r1, [sp, #28]
20021a18:	0e23      	lsrs	r3, r4, #24
20021a1a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
20021a1e:	0e01      	lsrs	r1, r0, #24
20021a20:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
20021a24:	9105      	str	r1, [sp, #20]
20021a26:	0e11      	lsrs	r1, r2, #24
20021a28:	9304      	str	r3, [sp, #16]
20021a2a:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
20021a2e:	0212      	lsls	r2, r2, #8
20021a30:	0f9b      	lsrs	r3, r3, #30
20021a32:	9106      	str	r1, [sp, #24]
20021a34:	9207      	str	r2, [sp, #28]
20021a36:	d01e      	beq.n	20021a76 <sdmmc1_sdnand+0x19e>
20021a38:	2b01      	cmp	r3, #1
20021a3a:	d16b      	bne.n	20021b14 <sdmmc1_sdnand+0x23c>
20021a3c:	2300      	movs	r3, #0
20021a3e:	4a3b      	ldr	r2, [pc, #236]	@ (20021b2c <sdmmc1_sdnand+0x254>)
20021a40:	4c37      	ldr	r4, [pc, #220]	@ (20021b20 <sdmmc1_sdnand+0x248>)
20021a42:	7013      	strb	r3, [r2, #0]
20021a44:	f44f 63a0 	mov.w	r3, #1280	@ 0x500
20021a48:	6323      	str	r3, [r4, #48]	@ 0x30
20021a4a:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20021a4c:	2702      	movs	r7, #2
20021a4e:	f043 0302 	orr.w	r3, r3, #2
20021a52:	6323      	str	r3, [r4, #48]	@ 0x30
20021a54:	f04f 7300 	mov.w	r3, #33554432	@ 0x2000000
20021a58:	2014      	movs	r0, #20
20021a5a:	6223      	str	r3, [r4, #32]
20021a5c:	63e7      	str	r7, [r4, #60]	@ 0x3c
20021a5e:	f000 fa62 	bl	20021f26 <HAL_Delay_us>
20021a62:	4629      	mov	r1, r5
20021a64:	2007      	movs	r0, #7
20021a66:	f7ff fec5 	bl	200217f4 <sd1_send_cmd>
20021a6a:	3801      	subs	r0, #1
20021a6c:	b2c0      	uxtb	r0, r0
20021a6e:	2801      	cmp	r0, #1
20021a70:	d803      	bhi.n	20021a7a <sdmmc1_sdnand+0x1a2>
20021a72:	2037      	movs	r0, #55	@ 0x37
20021a74:	e75a      	b.n	2002192c <sdmmc1_sdnand+0x54>
20021a76:	2301      	movs	r3, #1
20021a78:	e7e1      	b.n	20021a3e <sdmmc1_sdnand+0x166>
20021a7a:	ad07      	add	r5, sp, #28
20021a7c:	ab06      	add	r3, sp, #24
20021a7e:	9500      	str	r5, [sp, #0]
20021a80:	aa05      	add	r2, sp, #20
20021a82:	a904      	add	r1, sp, #16
20021a84:	f10d 000f 	add.w	r0, sp, #15
20021a88:	f7ff fef2 	bl	20021870 <sd1_get_rsp>
20021a8c:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021a90:	2b07      	cmp	r3, #7
20021a92:	d1ee      	bne.n	20021a72 <sdmmc1_sdnand+0x19a>
20021a94:	2014      	movs	r0, #20
20021a96:	f000 fa46 	bl	20021f26 <HAL_Delay_us>
20021a9a:	4639      	mov	r1, r7
20021a9c:	2006      	movs	r0, #6
20021a9e:	0c32      	lsrs	r2, r6, #16
20021aa0:	f7ff fec8 	bl	20021834 <sd1_send_acmd>
20021aa4:	3801      	subs	r0, #1
20021aa6:	b2c0      	uxtb	r0, r0
20021aa8:	2801      	cmp	r0, #1
20021aaa:	d935      	bls.n	20021b18 <sdmmc1_sdnand+0x240>
20021aac:	2101      	movs	r1, #1
20021aae:	4608      	mov	r0, r1
20021ab0:	f7ff feee 	bl	20021890 <sd1_read>
20021ab4:	2014      	movs	r0, #20
20021ab6:	f000 fa36 	bl	20021f26 <HAL_Delay_us>
20021aba:	2100      	movs	r1, #0
20021abc:	2011      	movs	r0, #17
20021abe:	f7ff fe99 	bl	200217f4 <sd1_send_cmd>
20021ac2:	3801      	subs	r0, #1
20021ac4:	b2c0      	uxtb	r0, r0
20021ac6:	2801      	cmp	r0, #1
20021ac8:	d801      	bhi.n	20021ace <sdmmc1_sdnand+0x1f6>
20021aca:	2052      	movs	r0, #82	@ 0x52
20021acc:	e72e      	b.n	2002192c <sdmmc1_sdnand+0x54>
20021ace:	ab06      	add	r3, sp, #24
20021ad0:	9500      	str	r5, [sp, #0]
20021ad2:	aa05      	add	r2, sp, #20
20021ad4:	a904      	add	r1, sp, #16
20021ad6:	f10d 000f 	add.w	r0, sp, #15
20021ada:	f7ff fec9 	bl	20021870 <sd1_get_rsp>
20021ade:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021ae2:	2b11      	cmp	r3, #17
20021ae4:	d1f1      	bne.n	20021aca <sdmmc1_sdnand+0x1f2>
20021ae6:	f04f 33ff 	mov.w	r3, #4294967295
20021aea:	6023      	str	r3, [r4, #0]
20021aec:	2320      	movs	r3, #32
20021aee:	62e3      	str	r3, [r4, #44]	@ 0x2c
20021af0:	f7ff fede 	bl	200218b0 <sd1_wait_read>
20021af4:	6823      	ldr	r3, [r4, #0]
20021af6:	061b      	lsls	r3, r3, #24
20021af8:	d410      	bmi.n	20021b1c <sdmmc1_sdnand+0x244>
20021afa:	6823      	ldr	r3, [r4, #0]
20021afc:	f013 0f40 	tst.w	r3, #64	@ 0x40
20021b00:	bf14      	ite	ne
20021b02:	2044      	movne	r0, #68	@ 0x44
20021b04:	2001      	moveq	r0, #1
20021b06:	e711      	b.n	2002192c <sdmmc1_sdnand+0x54>
20021b08:	2034      	movs	r0, #52	@ 0x34
20021b0a:	e70f      	b.n	2002192c <sdmmc1_sdnand+0x54>
20021b0c:	2032      	movs	r0, #50	@ 0x32
20021b0e:	e70d      	b.n	2002192c <sdmmc1_sdnand+0x54>
20021b10:	2039      	movs	r0, #57	@ 0x39
20021b12:	e70b      	b.n	2002192c <sdmmc1_sdnand+0x54>
20021b14:	2054      	movs	r0, #84	@ 0x54
20021b16:	e709      	b.n	2002192c <sdmmc1_sdnand+0x54>
20021b18:	2036      	movs	r0, #54	@ 0x36
20021b1a:	e707      	b.n	2002192c <sdmmc1_sdnand+0x54>
20021b1c:	204f      	movs	r0, #79	@ 0x4f
20021b1e:	e705      	b.n	2002192c <sdmmc1_sdnand+0x54>
20021b20:	50045000 	.word	0x50045000
20021b24:	00016700 	.word	0x00016700
20021b28:	40ff8000 	.word	0x40ff8000
20021b2c:	20042c08 	.word	0x20042c08

20021b30 <sd_read_data>:
20021b30:	b570      	push	{r4, r5, r6, lr}
20021b32:	460d      	mov	r5, r1
20021b34:	2101      	movs	r1, #1
20021b36:	b088      	sub	sp, #32
20021b38:	4606      	mov	r6, r0
20021b3a:	4608      	mov	r0, r1
20021b3c:	4614      	mov	r4, r2
20021b3e:	f7ff fea7 	bl	20021890 <sd1_read>
20021b42:	2014      	movs	r0, #20
20021b44:	f000 f9ef 	bl	20021f26 <HAL_Delay_us>
20021b48:	4b1a      	ldr	r3, [pc, #104]	@ (20021bb4 <sd_read_data+0x84>)
20021b4a:	781b      	ldrb	r3, [r3, #0]
20021b4c:	b903      	cbnz	r3, 20021b50 <sd_read_data+0x20>
20021b4e:	0a76      	lsrs	r6, r6, #9
20021b50:	4631      	mov	r1, r6
20021b52:	2011      	movs	r0, #17
20021b54:	f7ff fe4e 	bl	200217f4 <sd1_send_cmd>
20021b58:	3801      	subs	r0, #1
20021b5a:	b2c0      	uxtb	r0, r0
20021b5c:	2801      	cmp	r0, #1
20021b5e:	d802      	bhi.n	20021b66 <sd_read_data+0x36>
20021b60:	2000      	movs	r0, #0
20021b62:	b008      	add	sp, #32
20021b64:	bd70      	pop	{r4, r5, r6, pc}
20021b66:	ab07      	add	r3, sp, #28
20021b68:	9300      	str	r3, [sp, #0]
20021b6a:	aa05      	add	r2, sp, #20
20021b6c:	ab06      	add	r3, sp, #24
20021b6e:	a904      	add	r1, sp, #16
20021b70:	f10d 000f 	add.w	r0, sp, #15
20021b74:	f7ff fe7c 	bl	20021870 <sd1_get_rsp>
20021b78:	f89d 300f 	ldrb.w	r3, [sp, #15]
20021b7c:	2b11      	cmp	r3, #17
20021b7e:	d1ef      	bne.n	20021b60 <sd_read_data+0x30>
20021b80:	f04f 33ff 	mov.w	r3, #4294967295
20021b84:	4e0c      	ldr	r6, [pc, #48]	@ (20021bb8 <sd_read_data+0x88>)
20021b86:	6033      	str	r3, [r6, #0]
20021b88:	2320      	movs	r3, #32
20021b8a:	62f3      	str	r3, [r6, #44]	@ 0x2c
20021b8c:	f7ff fe90 	bl	200218b0 <sd1_wait_read>
20021b90:	6833      	ldr	r3, [r6, #0]
20021b92:	061a      	lsls	r2, r3, #24
20021b94:	d4e4      	bmi.n	20021b60 <sd_read_data+0x30>
20021b96:	6833      	ldr	r3, [r6, #0]
20021b98:	065b      	lsls	r3, r3, #25
20021b9a:	d4e1      	bmi.n	20021b60 <sd_read_data+0x30>
20021b9c:	f024 0303 	bic.w	r3, r4, #3
20021ba0:	442b      	add	r3, r5
20021ba2:	429d      	cmp	r5, r3
20021ba4:	d101      	bne.n	20021baa <sd_read_data+0x7a>
20021ba6:	4620      	mov	r0, r4
20021ba8:	e7db      	b.n	20021b62 <sd_read_data+0x32>
20021baa:	f8d6 2200 	ldr.w	r2, [r6, #512]	@ 0x200
20021bae:	f845 2b04 	str.w	r2, [r5], #4
20021bb2:	e7f6      	b.n	20021ba2 <sd_read_data+0x72>
20021bb4:	20042c08 	.word	0x20042c08
20021bb8:	50045000 	.word	0x50045000

20021bbc <sifli_hash_calculate>:
20021bbc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20021bc0:	460c      	mov	r4, r1
20021bc2:	4615      	mov	r5, r2
20021bc4:	4699      	mov	r9, r3
20021bc6:	4680      	mov	r8, r0
20021bc8:	2800      	cmp	r0, #0
20021bca:	d03f      	beq.n	20021c4c <sifli_hash_calculate+0x90>
20021bcc:	2900      	cmp	r1, #0
20021bce:	d03d      	beq.n	20021c4c <sifli_hash_calculate+0x90>
20021bd0:	2a00      	cmp	r2, #0
20021bd2:	d03b      	beq.n	20021c4c <sifli_hash_calculate+0x90>
20021bd4:	2b03      	cmp	r3, #3
20021bd6:	d839      	bhi.n	20021c4c <sifli_hash_calculate+0x90>
20021bd8:	f000 fab8 	bl	2002214c <HAL_HASH_reset>
20021bdc:	2200      	movs	r2, #0
20021bde:	4649      	mov	r1, r9
20021be0:	4610      	mov	r0, r2
20021be2:	f000 fabb 	bl	2002215c <HAL_HASH_init>
20021be6:	f5b4 7f80 	cmp.w	r4, #256	@ 0x100
20021bea:	d929      	bls.n	20021c40 <sifli_hash_calculate+0x84>
20021bec:	2600      	movs	r6, #0
20021bee:	4637      	mov	r7, r6
20021bf0:	f506 7680 	add.w	r6, r6, #256	@ 0x100
20021bf4:	42a6      	cmp	r6, r4
20021bf6:	bf34      	ite	cc
20021bf8:	f04f 0a00 	movcc.w	sl, #0
20021bfc:	f04f 0a01 	movcs.w	sl, #1
20021c00:	b14f      	cbz	r7, 20021c16 <sifli_hash_calculate+0x5a>
20021c02:	f000 faa3 	bl	2002214c <HAL_HASH_reset>
20021c06:	42a6      	cmp	r6, r4
20021c08:	bf2c      	ite	cs
20021c0a:	463a      	movcs	r2, r7
20021c0c:	2200      	movcc	r2, #0
20021c0e:	4649      	mov	r1, r9
20021c10:	4628      	mov	r0, r5
20021c12:	f000 faa3 	bl	2002215c <HAL_HASH_init>
20021c16:	42a6      	cmp	r6, r4
20021c18:	bf34      	ite	cc
20021c1a:	f44f 7180 	movcc.w	r1, #256	@ 0x100
20021c1e:	1be1      	subcs	r1, r4, r7
20021c20:	4652      	mov	r2, sl
20021c22:	eb08 0007 	add.w	r0, r8, r7
20021c26:	f000 fa73 	bl	20022110 <HAL_HASH_run>
20021c2a:	4628      	mov	r0, r5
20021c2c:	f000 fac4 	bl	200221b8 <HAL_HASH_result>
20021c30:	42a6      	cmp	r6, r4
20021c32:	d3dc      	bcc.n	20021bee <sifli_hash_calculate+0x32>
20021c34:	4628      	mov	r0, r5
20021c36:	f000 fabf 	bl	200221b8 <HAL_HASH_result>
20021c3a:	2000      	movs	r0, #0
20021c3c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20021c40:	2201      	movs	r2, #1
20021c42:	4621      	mov	r1, r4
20021c44:	4640      	mov	r0, r8
20021c46:	f000 fa63 	bl	20022110 <HAL_HASH_run>
20021c4a:	e7f3      	b.n	20021c34 <sifli_hash_calculate+0x78>
20021c4c:	f04f 30ff 	mov.w	r0, #4294967295
20021c50:	e7f4      	b.n	20021c3c <sifli_hash_calculate+0x80>

20021c52 <sifli_hash_verify>:
20021c52:	b5f0      	push	{r4, r5, r6, r7, lr}
20021c54:	4605      	mov	r5, r0
20021c56:	b089      	sub	sp, #36	@ 0x24
20021c58:	460f      	mov	r7, r1
20021c5a:	4614      	mov	r4, r2
20021c5c:	2100      	movs	r1, #0
20021c5e:	2220      	movs	r2, #32
20021c60:	4668      	mov	r0, sp
20021c62:	461e      	mov	r6, r3
20021c64:	f008 fe02 	bl	2002a86c <memset>
20021c68:	b91d      	cbnz	r5, 20021c72 <sifli_hash_verify+0x20>
20021c6a:	f04f 30ff 	mov.w	r0, #4294967295
20021c6e:	b009      	add	sp, #36	@ 0x24
20021c70:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021c72:	2c00      	cmp	r4, #0
20021c74:	d0f9      	beq.n	20021c6a <sifli_hash_verify+0x18>
20021c76:	2302      	movs	r3, #2
20021c78:	466a      	mov	r2, sp
20021c7a:	4639      	mov	r1, r7
20021c7c:	4628      	mov	r0, r5
20021c7e:	f7ff ff9d 	bl	20021bbc <sifli_hash_calculate>
20021c82:	2800      	cmp	r0, #0
20021c84:	d1f1      	bne.n	20021c6a <sifli_hash_verify+0x18>
20021c86:	4632      	mov	r2, r6
20021c88:	4621      	mov	r1, r4
20021c8a:	4668      	mov	r0, sp
20021c8c:	f008 fdde 	bl	2002a84c <memcmp>
20021c90:	3800      	subs	r0, #0
20021c92:	bf18      	it	ne
20021c94:	2001      	movne	r0, #1
20021c96:	4240      	negs	r0, r0
20021c98:	e7e9      	b.n	20021c6e <sifli_hash_verify+0x1c>

20021c9a <sifli_sigkey_pub_verify>:
20021c9a:	2300      	movs	r3, #0
20021c9c:	b537      	push	{r0, r1, r2, r4, r5, lr}
20021c9e:	4604      	mov	r4, r0
20021ca0:	460d      	mov	r5, r1
20021ca2:	2208      	movs	r2, #8
20021ca4:	4669      	mov	r1, sp
20021ca6:	2003      	movs	r0, #3
20021ca8:	e9cd 3300 	strd	r3, r3, [sp]
20021cac:	f7ff f9ba 	bl	20021024 <sifli_hw_efuse_read>
20021cb0:	2808      	cmp	r0, #8
20021cb2:	4603      	mov	r3, r0
20021cb4:	d106      	bne.n	20021cc4 <sifli_sigkey_pub_verify+0x2a>
20021cb6:	466a      	mov	r2, sp
20021cb8:	4629      	mov	r1, r5
20021cba:	4620      	mov	r0, r4
20021cbc:	f7ff ffc9 	bl	20021c52 <sifli_hash_verify>
20021cc0:	b003      	add	sp, #12
20021cc2:	bd30      	pop	{r4, r5, pc}
20021cc4:	f04f 30ff 	mov.w	r0, #4294967295
20021cc8:	e7fa      	b.n	20021cc0 <sifli_sigkey_pub_verify+0x26>

20021cca <sifli_img_sig_hash_verify>:
20021cca:	b5f0      	push	{r4, r5, r6, r7, lr}
20021ccc:	461f      	mov	r7, r3
20021cce:	4616      	mov	r6, r2
20021cd0:	b08d      	sub	sp, #52	@ 0x34
20021cd2:	2220      	movs	r2, #32
20021cd4:	4604      	mov	r4, r0
20021cd6:	460d      	mov	r5, r1
20021cd8:	a804      	add	r0, sp, #16
20021cda:	2100      	movs	r1, #0
20021cdc:	f008 fdc6 	bl	2002a86c <memset>
20021ce0:	2302      	movs	r3, #2
20021ce2:	4639      	mov	r1, r7
20021ce4:	4630      	mov	r0, r6
20021ce6:	aa04      	add	r2, sp, #16
20021ce8:	f7ff ff68 	bl	20021bbc <sifli_hash_calculate>
20021cec:	b118      	cbz	r0, 20021cf6 <sifli_img_sig_hash_verify+0x2c>
20021cee:	f04f 30ff 	mov.w	r0, #4294967295
20021cf2:	b00d      	add	sp, #52	@ 0x34
20021cf4:	bdf0      	pop	{r4, r5, r6, r7, pc}
20021cf6:	a802      	add	r0, sp, #8
20021cf8:	f007 fb2c 	bl	20029354 <mbedtls_pk_init>
20021cfc:	4629      	mov	r1, r5
20021cfe:	f44f 7293 	mov.w	r2, #294	@ 0x126
20021d02:	a802      	add	r0, sp, #8
20021d04:	f007 fc32 	bl	2002956c <mbedtls_pk_parse_public_key>
20021d08:	4601      	mov	r1, r0
20021d0a:	2800      	cmp	r0, #0
20021d0c:	d1ef      	bne.n	20021cee <sifli_img_sig_hash_verify+0x24>
20021d0e:	2206      	movs	r2, #6
20021d10:	9803      	ldr	r0, [sp, #12]
20021d12:	f007 fcd2 	bl	200296ba <mbedtls_rsa_set_padding>
20021d16:	f44f 7380 	mov.w	r3, #256	@ 0x100
20021d1a:	2106      	movs	r1, #6
20021d1c:	e9cd 4300 	strd	r4, r3, [sp]
20021d20:	aa04      	add	r2, sp, #16
20021d22:	2320      	movs	r3, #32
20021d24:	a802      	add	r0, sp, #8
20021d26:	f007 fb49 	bl	200293bc <mbedtls_pk_verify>
20021d2a:	3800      	subs	r0, #0
20021d2c:	bf18      	it	ne
20021d2e:	2001      	movne	r0, #1
20021d30:	4240      	negs	r0, r0
20021d32:	e7de      	b.n	20021cf2 <sifli_img_sig_hash_verify+0x28>

20021d34 <sifli_secboot_exception>:
20021d34:	2801      	cmp	r0, #1
20021d36:	b508      	push	{r3, lr}
20021d38:	d004      	beq.n	20021d44 <sifli_secboot_exception+0x10>
20021d3a:	2802      	cmp	r0, #2
20021d3c:	d009      	beq.n	20021d52 <sifli_secboot_exception+0x1e>
20021d3e:	2213      	movs	r2, #19
20021d40:	4905      	ldr	r1, [pc, #20]	@ (20021d58 <sifli_secboot_exception+0x24>)
20021d42:	e001      	b.n	20021d48 <sifli_secboot_exception+0x14>
20021d44:	2217      	movs	r2, #23
20021d46:	4905      	ldr	r1, [pc, #20]	@ (20021d5c <sifli_secboot_exception+0x28>)
20021d48:	4805      	ldr	r0, [pc, #20]	@ (20021d60 <sifli_secboot_exception+0x2c>)
20021d4a:	f7fe faa5 	bl	20020298 <boot_uart_tx>
20021d4e:	e7fe      	b.n	20021d4e <sifli_secboot_exception+0x1a>
20021d50:	bd08      	pop	{r3, pc}
20021d52:	2219      	movs	r2, #25
20021d54:	4903      	ldr	r1, [pc, #12]	@ (20021d64 <sifli_secboot_exception+0x30>)
20021d56:	e7f7      	b.n	20021d48 <sifli_secboot_exception+0x14>
20021d58:	2002a9ea 	.word	0x2002a9ea
20021d5c:	2002a9b8 	.word	0x2002a9b8
20021d60:	50084000 	.word	0x50084000
20021d64:	2002a9d0 	.word	0x2002a9d0

20021d68 <BSP_GetFlash1DIV>:
20021d68:	4b01      	ldr	r3, [pc, #4]	@ (20021d70 <BSP_GetFlash1DIV+0x8>)
20021d6a:	8818      	ldrh	r0, [r3, #0]
20021d6c:	4770      	bx	lr
20021d6e:	bf00      	nop
20021d70:	20042c0c 	.word	0x20042c0c

20021d74 <BSP_GetFlash2DIV>:
20021d74:	4b01      	ldr	r3, [pc, #4]	@ (20021d7c <BSP_GetFlash2DIV+0x8>)
20021d76:	8818      	ldrh	r0, [r3, #0]
20021d78:	4770      	bx	lr
20021d7a:	bf00      	nop
20021d7c:	20042c0a 	.word	0x20042c0a

20021d80 <BSP_SetFlash1DIV>:
20021d80:	4b01      	ldr	r3, [pc, #4]	@ (20021d88 <BSP_SetFlash1DIV+0x8>)
20021d82:	8018      	strh	r0, [r3, #0]
20021d84:	4770      	bx	lr
20021d86:	bf00      	nop
20021d88:	20042c0c 	.word	0x20042c0c

20021d8c <BSP_SetFlash2DIV>:
20021d8c:	4b01      	ldr	r3, [pc, #4]	@ (20021d94 <BSP_SetFlash2DIV+0x8>)
20021d8e:	8018      	strh	r0, [r3, #0]
20021d90:	4770      	bx	lr
20021d92:	bf00      	nop
20021d94:	20042c0a 	.word	0x20042c0a

20021d98 <boot_images>:
20021d98:	4770      	bx	lr

20021d9a <SystemPowerOnModeInit>:
20021d9a:	4770      	bx	lr

20021d9c <SystemInit>:
20021d9c:	b508      	push	{r3, lr}
20021d9e:	4a10      	ldr	r2, [pc, #64]	@ (20021de0 <SystemInit+0x44>)
20021da0:	4b10      	ldr	r3, [pc, #64]	@ (20021de4 <SystemInit+0x48>)
20021da2:	609a      	str	r2, [r3, #8]
20021da4:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20021da8:	f042 023f 	orr.w	r2, r2, #63	@ 0x3f
20021dac:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20021db0:	f8d3 2088 	ldr.w	r2, [r3, #136]	@ 0x88
20021db4:	f442 0270 	orr.w	r2, r2, #15728640	@ 0xf00000
20021db8:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
20021dbc:	f7ff fb28 	bl	20021410 <hw_preinit0>
20021dc0:	f7fe faa4 	bl	2002030c <mpu_config>
20021dc4:	4b08      	ldr	r3, [pc, #32]	@ (20021de8 <SystemInit+0x4c>)
20021dc6:	681b      	ldr	r3, [r3, #0]
20021dc8:	07db      	lsls	r3, r3, #31
20021dca:	d401      	bmi.n	20021dd0 <SystemInit+0x34>
20021dcc:	f7ff ffe4 	bl	20021d98 <boot_images>
20021dd0:	f7fe fa9d 	bl	2002030e <cache_enable>
20021dd4:	f7ff ffe1 	bl	20021d9a <SystemPowerOnModeInit>
20021dd8:	4b04      	ldr	r3, [pc, #16]	@ (20021dec <SystemInit+0x50>)
20021dda:	4a05      	ldr	r2, [pc, #20]	@ (20021df0 <SystemInit+0x54>)
20021ddc:	601a      	str	r2, [r3, #0]
20021dde:	bd08      	pop	{r3, pc}
20021de0:	20020000 	.word	0x20020000
20021de4:	e000ed00 	.word	0xe000ed00
20021de8:	5000b000 	.word	0x5000b000
20021dec:	20042c10 	.word	0x20042c10
20021df0:	017d7840 	.word	0x017d7840

20021df4 <Reset_Handler>:
20021df4:	f8df d048 	ldr.w	sp, [pc, #72]	@ 20021e40 <AES_IRQHandler+0x2>
20021df8:	4812      	ldr	r0, [pc, #72]	@ (20021e44 <AES_IRQHandler+0x6>)
20021dfa:	f380 880a 	msr	MSPLIM, r0
20021dfe:	f7ff ffcd 	bl	20021d9c <SystemInit>
20021e02:	4c11      	ldr	r4, [pc, #68]	@ (20021e48 <AES_IRQHandler+0xa>)
20021e04:	4d11      	ldr	r5, [pc, #68]	@ (20021e4c <AES_IRQHandler+0xe>)
20021e06:	42ac      	cmp	r4, r5
20021e08:	da09      	bge.n	20021e1e <Reset_Handler+0x2a>
20021e0a:	6821      	ldr	r1, [r4, #0]
20021e0c:	6862      	ldr	r2, [r4, #4]
20021e0e:	68a3      	ldr	r3, [r4, #8]
20021e10:	3b04      	subs	r3, #4
20021e12:	bfa2      	ittt	ge
20021e14:	58c8      	ldrge	r0, [r1, r3]
20021e16:	50d0      	strge	r0, [r2, r3]
20021e18:	e7fa      	bge.n	20021e10 <Reset_Handler+0x1c>
20021e1a:	340c      	adds	r4, #12
20021e1c:	e7f3      	b.n	20021e06 <Reset_Handler+0x12>
20021e1e:	4b0c      	ldr	r3, [pc, #48]	@ (20021e50 <AES_IRQHandler+0x12>)
20021e20:	4c0c      	ldr	r4, [pc, #48]	@ (20021e54 <AES_IRQHandler+0x16>)
20021e22:	42a3      	cmp	r3, r4
20021e24:	da08      	bge.n	20021e38 <Reset_Handler+0x44>
20021e26:	6819      	ldr	r1, [r3, #0]
20021e28:	685a      	ldr	r2, [r3, #4]
20021e2a:	2000      	movs	r0, #0
20021e2c:	3a04      	subs	r2, #4
20021e2e:	bfa4      	itt	ge
20021e30:	5088      	strge	r0, [r1, r2]
20021e32:	e7fb      	bge.n	20021e2c <Reset_Handler+0x38>
20021e34:	3308      	adds	r3, #8
20021e36:	e7f4      	b.n	20021e22 <Reset_Handler+0x2e>
20021e38:	f7ff fb10 	bl	2002145c <entry>

20021e3c <HardFault_Handler>:
20021e3c:	e7fe      	b.n	20021e3c <HardFault_Handler>

20021e3e <AES_IRQHandler>:
20021e3e:	e7fe      	b.n	20021e3e <AES_IRQHandler>
20021e40:	20042000 	.word	0x20042000
20021e44:	20040000 	.word	0x20040000
20021e48:	2002c408 	.word	0x2002c408
20021e4c:	2002c414 	.word	0x2002c414
20021e50:	2002c414 	.word	0x2002c414
20021e54:	2002c41c 	.word	0x2002c41c

20021e58 <__aeabi_unwind_cpp_pr0>:
20021e58:	2000      	movs	r0, #0
20021e5a:	4770      	bx	lr

20021e5c <HAL_GetTick>:
20021e5c:	4b01      	ldr	r3, [pc, #4]	@ (20021e64 <HAL_GetTick+0x8>)
20021e5e:	6818      	ldr	r0, [r3, #0]
20021e60:	4770      	bx	lr
20021e62:	bf00      	nop
20021e64:	20049ed8 	.word	0x20049ed8

20021e68 <HAL_Delay_us_>:
20021e68:	b513      	push	{r0, r1, r4, lr}
20021e6a:	9001      	str	r0, [sp, #4]
20021e6c:	9b01      	ldr	r3, [sp, #4]
20021e6e:	4c1a      	ldr	r4, [pc, #104]	@ (20021ed8 <HAL_Delay_us_+0x70>)
20021e70:	b133      	cbz	r3, 20021e80 <HAL_Delay_us_+0x18>
20021e72:	6823      	ldr	r3, [r4, #0]
20021e74:	b123      	cbz	r3, 20021e80 <HAL_Delay_us_+0x18>
20021e76:	9b01      	ldr	r3, [sp, #4]
20021e78:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20021e7c:	d90c      	bls.n	20021e98 <HAL_Delay_us_+0x30>
20021e7e:	e7fe      	b.n	20021e7e <HAL_Delay_us_+0x16>
20021e80:	2000      	movs	r0, #0
20021e82:	f003 f8c7 	bl	20025014 <HAL_RCC_GetHCLKFreq>
20021e86:	4b15      	ldr	r3, [pc, #84]	@ (20021edc <HAL_Delay_us_+0x74>)
20021e88:	fbb0 f0f3 	udiv	r0, r0, r3
20021e8c:	9b01      	ldr	r3, [sp, #4]
20021e8e:	6020      	str	r0, [r4, #0]
20021e90:	2b00      	cmp	r3, #0
20021e92:	d1f0      	bne.n	20021e76 <HAL_Delay_us_+0xe>
20021e94:	b002      	add	sp, #8
20021e96:	bd10      	pop	{r4, pc}
20021e98:	9b01      	ldr	r3, [sp, #4]
20021e9a:	2b00      	cmp	r3, #0
20021e9c:	d0fa      	beq.n	20021e94 <HAL_Delay_us_+0x2c>
20021e9e:	4a10      	ldr	r2, [pc, #64]	@ (20021ee0 <HAL_Delay_us_+0x78>)
20021ea0:	6813      	ldr	r3, [r2, #0]
20021ea2:	f013 0301 	ands.w	r3, r3, #1
20021ea6:	d10d      	bne.n	20021ec4 <HAL_Delay_us_+0x5c>
20021ea8:	480e      	ldr	r0, [pc, #56]	@ (20021ee4 <HAL_Delay_us_+0x7c>)
20021eaa:	f8d0 10fc 	ldr.w	r1, [r0, #252]	@ 0xfc
20021eae:	f041 7180 	orr.w	r1, r1, #16777216	@ 0x1000000
20021eb2:	f8c0 10fc 	str.w	r1, [r0, #252]	@ 0xfc
20021eb6:	6053      	str	r3, [r2, #4]
20021eb8:	6813      	ldr	r3, [r2, #0]
20021eba:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
20021ebe:	f043 0301 	orr.w	r3, r3, #1
20021ec2:	6013      	str	r3, [r2, #0]
20021ec4:	9b01      	ldr	r3, [sp, #4]
20021ec6:	6822      	ldr	r2, [r4, #0]
20021ec8:	4905      	ldr	r1, [pc, #20]	@ (20021ee0 <HAL_Delay_us_+0x78>)
20021eca:	4353      	muls	r3, r2
20021ecc:	6848      	ldr	r0, [r1, #4]
20021ece:	684a      	ldr	r2, [r1, #4]
20021ed0:	1a12      	subs	r2, r2, r0
20021ed2:	429a      	cmp	r2, r3
20021ed4:	d3fb      	bcc.n	20021ece <HAL_Delay_us_+0x66>
20021ed6:	e7dd      	b.n	20021e94 <HAL_Delay_us_+0x2c>
20021ed8:	20049ed4 	.word	0x20049ed4
20021edc:	000f4240 	.word	0x000f4240
20021ee0:	e0001000 	.word	0xe0001000
20021ee4:	e000ed00 	.word	0xe000ed00

20021ee8 <HAL_Delay_us2_>:
20021ee8:	b537      	push	{r0, r1, r2, r4, r5, lr}
20021eea:	9001      	str	r0, [sp, #4]
20021eec:	f04f 20e0 	mov.w	r0, #3758153728	@ 0xe000e000
20021ef0:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20021ef4:	6944      	ldr	r4, [r0, #20]
20021ef6:	9b01      	ldr	r3, [sp, #4]
20021ef8:	4363      	muls	r3, r4
20021efa:	fbb3 f3f2 	udiv	r3, r3, r2
20021efe:	9301      	str	r3, [sp, #4]
20021f00:	2300      	movs	r3, #0
20021f02:	6981      	ldr	r1, [r0, #24]
20021f04:	6982      	ldr	r2, [r0, #24]
20021f06:	428a      	cmp	r2, r1
20021f08:	d0fc      	beq.n	20021f04 <HAL_Delay_us2_+0x1c>
20021f0a:	bf25      	ittet	cs
20021f0c:	1aa5      	subcs	r5, r4, r2
20021f0e:	195b      	addcs	r3, r3, r5
20021f10:	185b      	addcc	r3, r3, r1
20021f12:	185b      	addcs	r3, r3, r1
20021f14:	9901      	ldr	r1, [sp, #4]
20021f16:	bf38      	it	cc
20021f18:	1a9b      	subcc	r3, r3, r2
20021f1a:	4299      	cmp	r1, r3
20021f1c:	d801      	bhi.n	20021f22 <HAL_Delay_us2_+0x3a>
20021f1e:	b003      	add	sp, #12
20021f20:	bd30      	pop	{r4, r5, pc}
20021f22:	4611      	mov	r1, r2
20021f24:	e7ee      	b.n	20021f04 <HAL_Delay_us2_+0x1c>

20021f26 <HAL_Delay_us>:
20021f26:	4603      	mov	r3, r0
20021f28:	b570      	push	{r4, r5, r6, lr}
20021f2a:	b1b8      	cbz	r0, 20021f5c <HAL_Delay_us+0x36>
20021f2c:	f242 7510 	movw	r5, #10000	@ 0x2710
20021f30:	f04f 26e0 	mov.w	r6, #3758153728	@ 0xe000e000
20021f34:	42ab      	cmp	r3, r5
20021f36:	bf84      	itt	hi
20021f38:	f5a3 541c 	subhi.w	r4, r3, #9984	@ 0x2700
20021f3c:	f242 7310 	movwhi	r3, #10000	@ 0x2710
20021f40:	6932      	ldr	r2, [r6, #16]
20021f42:	bf98      	it	ls
20021f44:	2400      	movls	r4, #0
20021f46:	4618      	mov	r0, r3
20021f48:	bf88      	it	hi
20021f4a:	3c10      	subhi	r4, #16
20021f4c:	07d3      	lsls	r3, r2, #31
20021f4e:	d408      	bmi.n	20021f62 <HAL_Delay_us+0x3c>
20021f50:	f7ff ff8a 	bl	20021e68 <HAL_Delay_us_>
20021f54:	4623      	mov	r3, r4
20021f56:	2c00      	cmp	r4, #0
20021f58:	d1ec      	bne.n	20021f34 <HAL_Delay_us+0xe>
20021f5a:	e001      	b.n	20021f60 <HAL_Delay_us+0x3a>
20021f5c:	f7ff ff84 	bl	20021e68 <HAL_Delay_us_>
20021f60:	bd70      	pop	{r4, r5, r6, pc}
20021f62:	f7ff ffc1 	bl	20021ee8 <HAL_Delay_us2_>
20021f66:	e7f5      	b.n	20021f54 <HAL_Delay_us+0x2e>

20021f68 <WDT_IRQHandler>:
20021f68:	4770      	bx	lr

20021f6a <DBG_Trigger_IRQHandler>:
20021f6a:	4770      	bx	lr

20021f6c <NMI_Handler>:
20021f6c:	b508      	push	{r3, lr}
20021f6e:	4b05      	ldr	r3, [pc, #20]	@ (20021f84 <NMI_Handler+0x18>)
20021f70:	6a1b      	ldr	r3, [r3, #32]
20021f72:	005b      	lsls	r3, r3, #1
20021f74:	d502      	bpl.n	20021f7c <NMI_Handler+0x10>
20021f76:	f7ff fff8 	bl	20021f6a <DBG_Trigger_IRQHandler>
20021f7a:	bd08      	pop	{r3, pc}
20021f7c:	f7ff fff4 	bl	20021f68 <WDT_IRQHandler>
20021f80:	e7fb      	b.n	20021f7a <NMI_Handler+0xe>
20021f82:	bf00      	nop
20021f84:	5000b000 	.word	0x5000b000

20021f88 <HAL_AES_run_help>:
20021f88:	b510      	push	{r4, lr}
20021f8a:	f101 4470 	add.w	r4, r1, #4026531840	@ 0xf0000000
20021f8e:	f1b4 5f80 	cmp.w	r4, #268435456	@ 0x10000000
20021f92:	4c0e      	ldr	r4, [pc, #56]	@ (20021fcc <HAL_AES_run_help+0x44>)
20021f94:	bf38      	it	cc
20021f96:	f101 41a0 	addcc.w	r1, r1, #1342177280	@ 0x50000000
20021f9a:	6161      	str	r1, [r4, #20]
20021f9c:	f102 4170 	add.w	r1, r2, #4026531840	@ 0xf0000000
20021fa0:	f1b1 5f80 	cmp.w	r1, #268435456	@ 0x10000000
20021fa4:	f103 030f 	add.w	r3, r3, #15
20021fa8:	ea4f 1323 	mov.w	r3, r3, asr #4
20021fac:	bf38      	it	cc
20021fae:	f102 42a0 	addcc.w	r2, r2, #1342177280	@ 0x50000000
20021fb2:	61a2      	str	r2, [r4, #24]
20021fb4:	61e3      	str	r3, [r4, #28]
20021fb6:	6923      	ldr	r3, [r4, #16]
20021fb8:	b108      	cbz	r0, 20021fbe <HAL_AES_run_help+0x36>
20021fba:	ea43 13c0 	orr.w	r3, r3, r0, lsl #7
20021fbe:	4a03      	ldr	r2, [pc, #12]	@ (20021fcc <HAL_AES_run_help+0x44>)
20021fc0:	6123      	str	r3, [r4, #16]
20021fc2:	6813      	ldr	r3, [r2, #0]
20021fc4:	f043 0301 	orr.w	r3, r3, #1
20021fc8:	6013      	str	r3, [r2, #0]
20021fca:	bd10      	pop	{r4, pc}
20021fcc:	5000d000 	.word	0x5000d000

20021fd0 <HAL_HASH_run_help.isra.0>:
20021fd0:	f100 4370 	add.w	r3, r0, #4026531840	@ 0xf0000000
20021fd4:	b510      	push	{r4, lr}
20021fd6:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
20021fda:	4c09      	ldr	r4, [pc, #36]	@ (20022000 <HAL_HASH_run_help.isra.0+0x30>)
20021fdc:	bf38      	it	cc
20021fde:	f100 40a0 	addcc.w	r0, r0, #1342177280	@ 0x50000000
20021fe2:	6560      	str	r0, [r4, #84]	@ 0x54
20021fe4:	65a1      	str	r1, [r4, #88]	@ 0x58
20021fe6:	b11a      	cbz	r2, 20021ff0 <HAL_HASH_run_help.isra.0+0x20>
20021fe8:	6d23      	ldr	r3, [r4, #80]	@ 0x50
20021fea:	f043 0308 	orr.w	r3, r3, #8
20021fee:	6523      	str	r3, [r4, #80]	@ 0x50
20021ff0:	6d21      	ldr	r1, [r4, #80]	@ 0x50
20021ff2:	4804      	ldr	r0, [pc, #16]	@ (20022004 <HAL_HASH_run_help.isra.0+0x34>)
20021ff4:	f000 fd79 	bl	20022aea <HAL_DBG_printf>
20021ff8:	2304      	movs	r3, #4
20021ffa:	6023      	str	r3, [r4, #0]
20021ffc:	bd10      	pop	{r4, pc}
20021ffe:	bf00      	nop
20022000:	5000d000 	.word	0x5000d000
20022004:	2002a9fe 	.word	0x2002a9fe

20022008 <HAL_AES_reset>:
20022008:	2202      	movs	r2, #2
2002200a:	2000      	movs	r0, #0
2002200c:	4b01      	ldr	r3, [pc, #4]	@ (20022014 <HAL_AES_reset+0xc>)
2002200e:	601a      	str	r2, [r3, #0]
20022010:	6018      	str	r0, [r3, #0]
20022012:	4770      	bx	lr
20022014:	5000d000 	.word	0x5000d000

20022018 <HAL_AES_init>:
20022018:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002201a:	461f      	mov	r7, r3
2002201c:	4b1e      	ldr	r3, [pc, #120]	@ (20022098 <HAL_AES_init+0x80>)
2002201e:	4604      	mov	r4, r0
20022020:	685b      	ldr	r3, [r3, #4]
20022022:	4616      	mov	r6, r2
20022024:	07db      	lsls	r3, r3, #31
20022026:	d501      	bpl.n	2002202c <HAL_AES_init+0x14>
20022028:	f7ff ffee 	bl	20022008 <HAL_AES_reset>
2002202c:	fab4 f084 	clz	r0, r4
20022030:	2918      	cmp	r1, #24
20022032:	ea4f 1050 	mov.w	r0, r0, lsr #5
20022036:	ea4f 1540 	mov.w	r5, r0, lsl #5
2002203a:	d01c      	beq.n	20022076 <HAL_AES_init+0x5e>
2002203c:	2920      	cmp	r1, #32
2002203e:	d01c      	beq.n	2002207a <HAL_AES_init+0x62>
20022040:	2910      	cmp	r1, #16
20022042:	d125      	bne.n	20022090 <HAL_AES_init+0x78>
20022044:	2300      	movs	r3, #0
20022046:	b164      	cbz	r4, 20022062 <HAL_AES_init+0x4a>
20022048:	4620      	mov	r0, r4
2002204a:	4a14      	ldr	r2, [pc, #80]	@ (2002209c <HAL_AES_init+0x84>)
2002204c:	f021 0103 	bic.w	r1, r1, #3
20022050:	4421      	add	r1, r4
20022052:	1b12      	subs	r2, r2, r4
20022054:	1814      	adds	r4, r2, r0
20022056:	f850 cb04 	ldr.w	ip, [r0], #4
2002205a:	4281      	cmp	r1, r0
2002205c:	f8c4 c000 	str.w	ip, [r4]
20022060:	d1f8      	bne.n	20022054 <HAL_AES_init+0x3c>
20022062:	ea47 0005 	orr.w	r0, r7, r5
20022066:	ea40 00c3 	orr.w	r0, r0, r3, lsl #3
2002206a:	4b0b      	ldr	r3, [pc, #44]	@ (20022098 <HAL_AES_init+0x80>)
2002206c:	6118      	str	r0, [r3, #16]
2002206e:	b107      	cbz	r7, 20022072 <HAL_AES_init+0x5a>
20022070:	b92e      	cbnz	r6, 2002207e <HAL_AES_init+0x66>
20022072:	2000      	movs	r0, #0
20022074:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20022076:	2301      	movs	r3, #1
20022078:	e7e5      	b.n	20022046 <HAL_AES_init+0x2e>
2002207a:	2302      	movs	r3, #2
2002207c:	e7e3      	b.n	20022046 <HAL_AES_init+0x2e>
2002207e:	6832      	ldr	r2, [r6, #0]
20022080:	621a      	str	r2, [r3, #32]
20022082:	6872      	ldr	r2, [r6, #4]
20022084:	625a      	str	r2, [r3, #36]	@ 0x24
20022086:	68b2      	ldr	r2, [r6, #8]
20022088:	629a      	str	r2, [r3, #40]	@ 0x28
2002208a:	68f2      	ldr	r2, [r6, #12]
2002208c:	62da      	str	r2, [r3, #44]	@ 0x2c
2002208e:	e7f0      	b.n	20022072 <HAL_AES_init+0x5a>
20022090:	f04f 30ff 	mov.w	r0, #4294967295
20022094:	e7ee      	b.n	20022074 <HAL_AES_init+0x5c>
20022096:	bf00      	nop
20022098:	5000d000 	.word	0x5000d000
2002209c:	5000d030 	.word	0x5000d030

200220a0 <HAL_AES_run>:
200220a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200220a2:	2708      	movs	r7, #8
200220a4:	4e17      	ldr	r6, [pc, #92]	@ (20022104 <HAL_AES_run+0x64>)
200220a6:	4614      	mov	r4, r2
200220a8:	461d      	mov	r5, r3
200220aa:	f8c6 7088 	str.w	r7, [r6, #136]	@ 0x88
200220ae:	f3bf 8f4f 	dsb	sy
200220b2:	f3bf 8f6f 	isb	sy
200220b6:	2700      	movs	r7, #0
200220b8:	4e13      	ldr	r6, [pc, #76]	@ (20022108 <HAL_AES_run+0x68>)
200220ba:	60f7      	str	r7, [r6, #12]
200220bc:	f7ff ff64 	bl	20021f88 <HAL_AES_run_help>
200220c0:	6873      	ldr	r3, [r6, #4]
200220c2:	07db      	lsls	r3, r3, #31
200220c4:	d4fc      	bmi.n	200220c0 <HAL_AES_run+0x20>
200220c6:	68b0      	ldr	r0, [r6, #8]
200220c8:	f000 0006 	and.w	r0, r0, #6
200220cc:	3800      	subs	r0, #0
200220ce:	bf18      	it	ne
200220d0:	2001      	movne	r0, #1
200220d2:	f1b4 4fc0 	cmp.w	r4, #1610612736	@ 0x60000000
200220d6:	d313      	bcc.n	20022100 <HAL_AES_run+0x60>
200220d8:	2d00      	cmp	r5, #0
200220da:	dd11      	ble.n	20022100 <HAL_AES_run+0x60>
200220dc:	f004 031f 	and.w	r3, r4, #31
200220e0:	442b      	add	r3, r5
200220e2:	f3bf 8f4f 	dsb	sy
200220e6:	4622      	mov	r2, r4
200220e8:	4c08      	ldr	r4, [pc, #32]	@ (2002210c <HAL_AES_run+0x6c>)
200220ea:	4413      	add	r3, r2
200220ec:	f8c4 225c 	str.w	r2, [r4, #604]	@ 0x25c
200220f0:	3220      	adds	r2, #32
200220f2:	1a99      	subs	r1, r3, r2
200220f4:	2900      	cmp	r1, #0
200220f6:	dcf9      	bgt.n	200220ec <HAL_AES_run+0x4c>
200220f8:	f3bf 8f4f 	dsb	sy
200220fc:	f3bf 8f6f 	isb	sy
20022100:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20022102:	bf00      	nop
20022104:	e000e100 	.word	0xe000e100
20022108:	5000d000 	.word	0x5000d000
2002210c:	e000ed00 	.word	0xe000ed00

20022110 <HAL_HASH_run>:
20022110:	b510      	push	{r4, lr}
20022112:	2408      	movs	r4, #8
20022114:	4b0b      	ldr	r3, [pc, #44]	@ (20022144 <HAL_HASH_run+0x34>)
20022116:	f8c3 4088 	str.w	r4, [r3, #136]	@ 0x88
2002211a:	f3bf 8f4f 	dsb	sy
2002211e:	f3bf 8f6f 	isb	sy
20022122:	f7ff ff55 	bl	20021fd0 <HAL_HASH_run_help.isra.0>
20022126:	4b08      	ldr	r3, [pc, #32]	@ (20022148 <HAL_HASH_run+0x38>)
20022128:	685a      	ldr	r2, [r3, #4]
2002212a:	0752      	lsls	r2, r2, #29
2002212c:	d4fc      	bmi.n	20022128 <HAL_HASH_run+0x18>
2002212e:	689a      	ldr	r2, [r3, #8]
20022130:	f002 0238 	and.w	r2, r2, #56	@ 0x38
20022134:	609a      	str	r2, [r3, #8]
20022136:	6898      	ldr	r0, [r3, #8]
20022138:	f000 0030 	and.w	r0, r0, #48	@ 0x30
2002213c:	3800      	subs	r0, #0
2002213e:	bf18      	it	ne
20022140:	2001      	movne	r0, #1
20022142:	bd10      	pop	{r4, pc}
20022144:	e000e100 	.word	0xe000e100
20022148:	5000d000 	.word	0x5000d000

2002214c <HAL_HASH_reset>:
2002214c:	2208      	movs	r2, #8
2002214e:	2000      	movs	r0, #0
20022150:	4b01      	ldr	r3, [pc, #4]	@ (20022158 <HAL_HASH_reset+0xc>)
20022152:	601a      	str	r2, [r3, #0]
20022154:	6018      	str	r0, [r3, #0]
20022156:	4770      	bx	lr
20022158:	5000d000 	.word	0x5000d000

2002215c <HAL_HASH_init>:
2002215c:	0693      	lsls	r3, r2, #26
2002215e:	b570      	push	{r4, r5, r6, lr}
20022160:	4606      	mov	r6, r0
20022162:	460c      	mov	r4, r1
20022164:	4615      	mov	r5, r2
20022166:	d11c      	bne.n	200221a2 <HAL_HASH_init+0x46>
20022168:	2903      	cmp	r1, #3
2002216a:	d81a      	bhi.n	200221a2 <HAL_HASH_init+0x46>
2002216c:	f7ff ffee 	bl	2002214c <HAL_HASH_reset>
20022170:	b13e      	cbz	r6, 20022182 <HAL_HASH_init+0x26>
20022172:	4b0d      	ldr	r3, [pc, #52]	@ (200221a8 <HAL_HASH_init+0x4c>)
20022174:	480d      	ldr	r0, [pc, #52]	@ (200221ac <HAL_HASH_init+0x50>)
20022176:	5c5a      	ldrb	r2, [r3, r1]
20022178:	4631      	mov	r1, r6
2002217a:	f008 fb91 	bl	2002a8a0 <memcpy>
2002217e:	f044 0420 	orr.w	r4, r4, #32
20022182:	4b0b      	ldr	r3, [pc, #44]	@ (200221b0 <HAL_HASH_init+0x54>)
20022184:	f044 0180 	orr.w	r1, r4, #128	@ 0x80
20022188:	6519      	str	r1, [r3, #80]	@ 0x50
2002218a:	b11d      	cbz	r5, 20022194 <HAL_HASH_init+0x38>
2002218c:	f8c3 509c 	str.w	r5, [r3, #156]	@ 0x9c
20022190:	f444 71c0 	orr.w	r1, r4, #384	@ 0x180
20022194:	4807      	ldr	r0, [pc, #28]	@ (200221b4 <HAL_HASH_init+0x58>)
20022196:	462a      	mov	r2, r5
20022198:	6519      	str	r1, [r3, #80]	@ 0x50
2002219a:	f000 fca6 	bl	20022aea <HAL_DBG_printf>
2002219e:	2000      	movs	r0, #0
200221a0:	bd70      	pop	{r4, r5, r6, pc}
200221a2:	f04f 30ff 	mov.w	r0, #4294967295
200221a6:	e7fb      	b.n	200221a0 <HAL_HASH_init+0x44>
200221a8:	2002b894 	.word	0x2002b894
200221ac:	5000d05c 	.word	0x5000d05c
200221b0:	5000d000 	.word	0x5000d000
200221b4:	2002aa11 	.word	0x2002aa11

200221b8 <HAL_HASH_result>:
200221b8:	b510      	push	{r4, lr}
200221ba:	4c08      	ldr	r4, [pc, #32]	@ (200221dc <HAL_HASH_result+0x24>)
200221bc:	4a08      	ldr	r2, [pc, #32]	@ (200221e0 <HAL_HASH_result+0x28>)
200221be:	6d23      	ldr	r3, [r4, #80]	@ 0x50
200221c0:	f104 017c 	add.w	r1, r4, #124	@ 0x7c
200221c4:	f003 0307 	and.w	r3, r3, #7
200221c8:	5cd2      	ldrb	r2, [r2, r3]
200221ca:	f008 fb69 	bl	2002a8a0 <memcpy>
200221ce:	f8d4 10a4 	ldr.w	r1, [r4, #164]	@ 0xa4
200221d2:	4804      	ldr	r0, [pc, #16]	@ (200221e4 <HAL_HASH_result+0x2c>)
200221d4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200221d8:	f000 bc87 	b.w	20022aea <HAL_DBG_printf>
200221dc:	5000d000 	.word	0x5000d000
200221e0:	2002b894 	.word	0x2002b894
200221e4:	2002aa45 	.word	0x2002aa45

200221e8 <HAL_NVIC_SetPriority>:
200221e8:	2a0f      	cmp	r2, #15
200221ea:	b530      	push	{r4, r5, lr}
200221ec:	d900      	bls.n	200221f0 <HAL_NVIC_SetPriority+0x8>
200221ee:	e7fe      	b.n	200221ee <HAL_NVIC_SetPriority+0x6>
200221f0:	290f      	cmp	r1, #15
200221f2:	d900      	bls.n	200221f6 <HAL_NVIC_SetPriority+0xe>
200221f4:	e7fe      	b.n	200221f4 <HAL_NVIC_SetPriority+0xc>
200221f6:	4b15      	ldr	r3, [pc, #84]	@ (2002224c <HAL_NVIC_SetPriority+0x64>)
200221f8:	68dc      	ldr	r4, [r3, #12]
200221fa:	f3c4 2402 	ubfx	r4, r4, #8, #3
200221fe:	f1c4 0307 	rsb	r3, r4, #7
20022202:	1ce5      	adds	r5, r4, #3
20022204:	2b03      	cmp	r3, #3
20022206:	bf28      	it	cs
20022208:	2303      	movcs	r3, #3
2002220a:	2d06      	cmp	r5, #6
2002220c:	f04f 35ff 	mov.w	r5, #4294967295
20022210:	bf94      	ite	ls
20022212:	2400      	movls	r4, #0
20022214:	3c04      	subhi	r4, #4
20022216:	fa05 f303 	lsl.w	r3, r5, r3
2002221a:	ea21 0303 	bic.w	r3, r1, r3
2002221e:	40a5      	lsls	r5, r4
20022220:	ea22 0205 	bic.w	r2, r2, r5
20022224:	40a3      	lsls	r3, r4
20022226:	2800      	cmp	r0, #0
20022228:	ea43 0302 	orr.w	r3, r3, r2
2002222c:	bfac      	ite	ge
2002222e:	f100 4060 	addge.w	r0, r0, #3758096384	@ 0xe0000000
20022232:	4a07      	ldrlt	r2, [pc, #28]	@ (20022250 <HAL_NVIC_SetPriority+0x68>)
20022234:	ea4f 1343 	mov.w	r3, r3, lsl #5
20022238:	b2db      	uxtb	r3, r3
2002223a:	bfab      	itete	ge
2002223c:	f500 4061 	addge.w	r0, r0, #57600	@ 0xe100
20022240:	f000 000f 	andlt.w	r0, r0, #15
20022244:	f880 3300 	strbge.w	r3, [r0, #768]	@ 0x300
20022248:	5413      	strblt	r3, [r2, r0]
2002224a:	bd30      	pop	{r4, r5, pc}
2002224c:	e000ed00 	.word	0xe000ed00
20022250:	e000ed14 	.word	0xe000ed14

20022254 <HAL_NVIC_EnableIRQ>:
20022254:	2800      	cmp	r0, #0
20022256:	da00      	bge.n	2002225a <HAL_NVIC_EnableIRQ+0x6>
20022258:	e7fe      	b.n	20022258 <HAL_NVIC_EnableIRQ+0x4>
2002225a:	2301      	movs	r3, #1
2002225c:	0941      	lsrs	r1, r0, #5
2002225e:	4a03      	ldr	r2, [pc, #12]	@ (2002226c <HAL_NVIC_EnableIRQ+0x18>)
20022260:	f000 001f 	and.w	r0, r0, #31
20022264:	4083      	lsls	r3, r0
20022266:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
2002226a:	4770      	bx	lr
2002226c:	e000e100 	.word	0xe000e100

20022270 <HAL_NVIC_DisableIRQ>:
20022270:	2800      	cmp	r0, #0
20022272:	da00      	bge.n	20022276 <HAL_NVIC_DisableIRQ+0x6>
20022274:	e7fe      	b.n	20022274 <HAL_NVIC_DisableIRQ+0x4>
20022276:	2201      	movs	r2, #1
20022278:	4906      	ldr	r1, [pc, #24]	@ (20022294 <HAL_NVIC_DisableIRQ+0x24>)
2002227a:	0943      	lsrs	r3, r0, #5
2002227c:	f000 001f 	and.w	r0, r0, #31
20022280:	4082      	lsls	r2, r0
20022282:	3320      	adds	r3, #32
20022284:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
20022288:	f3bf 8f4f 	dsb	sy
2002228c:	f3bf 8f6f 	isb	sy
20022290:	4770      	bx	lr
20022292:	bf00      	nop
20022294:	e000e100 	.word	0xe000e100

20022298 <DMA_Init>:
20022298:	2302      	movs	r3, #2
2002229a:	b530      	push	{r4, r5, lr}
2002229c:	6a42      	ldr	r2, [r0, #36]	@ 0x24
2002229e:	f880 302d 	strb.w	r3, [r0, #45]	@ 0x2d
200222a2:	6803      	ldr	r3, [r0, #0]
200222a4:	611a      	str	r2, [r3, #16]
200222a6:	e9d0 3402 	ldrd	r3, r4, [r0, #8]
200222aa:	4323      	orrs	r3, r4
200222ac:	6904      	ldr	r4, [r0, #16]
200222ae:	6801      	ldr	r1, [r0, #0]
200222b0:	4323      	orrs	r3, r4
200222b2:	6944      	ldr	r4, [r0, #20]
200222b4:	680a      	ldr	r2, [r1, #0]
200222b6:	4323      	orrs	r3, r4
200222b8:	6984      	ldr	r4, [r0, #24]
200222ba:	f36f 120e 	bfc	r2, #4, #11
200222be:	4323      	orrs	r3, r4
200222c0:	69c4      	ldr	r4, [r0, #28]
200222c2:	4323      	orrs	r3, r4
200222c4:	6a04      	ldr	r4, [r0, #32]
200222c6:	4323      	orrs	r3, r4
200222c8:	4313      	orrs	r3, r2
200222ca:	600b      	str	r3, [r1, #0]
200222cc:	6883      	ldr	r3, [r0, #8]
200222ce:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
200222d2:	d018      	beq.n	20022306 <DMA_Init+0x6e>
200222d4:	6cc1      	ldr	r1, [r0, #76]	@ 0x4c
200222d6:	6c82      	ldr	r2, [r0, #72]	@ 0x48
200222d8:	f3c1 0387 	ubfx	r3, r1, #2, #8
200222dc:	06c9      	lsls	r1, r1, #27
200222de:	d41b      	bmi.n	20022318 <DMA_Init+0x80>
200222e0:	243f      	movs	r4, #63	@ 0x3f
200222e2:	f003 0307 	and.w	r3, r3, #7
200222e6:	f8d2 10a8 	ldr.w	r1, [r2, #168]	@ 0xa8
200222ea:	00db      	lsls	r3, r3, #3
200222ec:	409c      	lsls	r4, r3
200222ee:	ea21 0104 	bic.w	r1, r1, r4
200222f2:	f8c2 10a8 	str.w	r1, [r2, #168]	@ 0xa8
200222f6:	6c81      	ldr	r1, [r0, #72]	@ 0x48
200222f8:	6842      	ldr	r2, [r0, #4]
200222fa:	f8d1 40a8 	ldr.w	r4, [r1, #168]	@ 0xa8
200222fe:	409a      	lsls	r2, r3
20022300:	4322      	orrs	r2, r4
20022302:	f8c1 20a8 	str.w	r2, [r1, #168]	@ 0xa8
20022306:	6982      	ldr	r2, [r0, #24]
20022308:	f5b2 6f80 	cmp.w	r2, #1024	@ 0x400
2002230c:	d018      	beq.n	20022340 <DMA_Init+0xa8>
2002230e:	f5b2 6f00 	cmp.w	r2, #2048	@ 0x800
20022312:	d01f      	beq.n	20022354 <DMA_Init+0xbc>
20022314:	b1aa      	cbz	r2, 20022342 <DMA_Init+0xaa>
20022316:	e7fe      	b.n	20022316 <DMA_Init+0x7e>
20022318:	243f      	movs	r4, #63	@ 0x3f
2002231a:	f003 0303 	and.w	r3, r3, #3
2002231e:	f8d2 10ac 	ldr.w	r1, [r2, #172]	@ 0xac
20022322:	00db      	lsls	r3, r3, #3
20022324:	409c      	lsls	r4, r3
20022326:	ea21 0104 	bic.w	r1, r1, r4
2002232a:	f8c2 10ac 	str.w	r1, [r2, #172]	@ 0xac
2002232e:	6c81      	ldr	r1, [r0, #72]	@ 0x48
20022330:	6842      	ldr	r2, [r0, #4]
20022332:	f8d1 40ac 	ldr.w	r4, [r1, #172]	@ 0xac
20022336:	409a      	lsls	r2, r3
20022338:	4322      	orrs	r2, r4
2002233a:	f8c1 20ac 	str.w	r2, [r1, #172]	@ 0xac
2002233e:	e7e2      	b.n	20022306 <DMA_Init+0x6e>
20022340:	2201      	movs	r2, #1
20022342:	6943      	ldr	r3, [r0, #20]
20022344:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
20022348:	d006      	beq.n	20022358 <DMA_Init+0xc0>
2002234a:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
2002234e:	d02b      	beq.n	200223a8 <DMA_Init+0x110>
20022350:	b11b      	cbz	r3, 2002235a <DMA_Init+0xc2>
20022352:	e7fe      	b.n	20022352 <DMA_Init+0xba>
20022354:	2202      	movs	r2, #2
20022356:	e7f4      	b.n	20022342 <DMA_Init+0xaa>
20022358:	2301      	movs	r3, #1
2002235a:	6901      	ldr	r1, [r0, #16]
2002235c:	f1a1 0480 	sub.w	r4, r1, #128	@ 0x80
20022360:	4261      	negs	r1, r4
20022362:	4161      	adcs	r1, r4
20022364:	68c4      	ldr	r4, [r0, #12]
20022366:	f1a4 0540 	sub.w	r5, r4, #64	@ 0x40
2002236a:	426c      	negs	r4, r5
2002236c:	416c      	adcs	r4, r5
2002236e:	6885      	ldr	r5, [r0, #8]
20022370:	2d10      	cmp	r5, #16
20022372:	bf1f      	itttt	ne
20022374:	f880 1065 	strbne.w	r1, [r0, #101]	@ 0x65
20022378:	4619      	movne	r1, r3
2002237a:	4613      	movne	r3, r2
2002237c:	460a      	movne	r2, r1
2002237e:	f880 3067 	strb.w	r3, [r0, #103]	@ 0x67
20022382:	f880 2066 	strb.w	r2, [r0, #102]	@ 0x66
20022386:	f04f 0300 	mov.w	r3, #0
2002238a:	f04f 0201 	mov.w	r2, #1
2002238e:	6443      	str	r3, [r0, #68]	@ 0x44
20022390:	bf06      	itte	eq
20022392:	f880 4065 	strbeq.w	r4, [r0, #101]	@ 0x65
20022396:	f880 1064 	strbeq.w	r1, [r0, #100]	@ 0x64
2002239a:	f880 4064 	strbne.w	r4, [r0, #100]	@ 0x64
2002239e:	f880 202d 	strb.w	r2, [r0, #45]	@ 0x2d
200223a2:	f880 302c 	strb.w	r3, [r0, #44]	@ 0x2c
200223a6:	bd30      	pop	{r4, r5, pc}
200223a8:	2302      	movs	r3, #2
200223aa:	e7d6      	b.n	2002235a <DMA_Init+0xc2>

200223ac <DMA_AllocChannel>:
200223ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200223ae:	4b2c      	ldr	r3, [pc, #176]	@ (20022460 <DMA_AllocChannel+0xb4>)
200223b0:	6802      	ldr	r2, [r0, #0]
200223b2:	4413      	add	r3, r2
200223b4:	2ba0      	cmp	r3, #160	@ 0xa0
200223b6:	d904      	bls.n	200223c2 <DMA_AllocChannel+0x16>
200223b8:	4b2a      	ldr	r3, [pc, #168]	@ (20022464 <DMA_AllocChannel+0xb8>)
200223ba:	4413      	add	r3, r2
200223bc:	2ba0      	cmp	r3, #160	@ 0xa0
200223be:	d90f      	bls.n	200223e0 <DMA_AllocChannel+0x34>
200223c0:	e7fe      	b.n	200223c0 <DMA_AllocChannel+0x14>
200223c2:	2632      	movs	r6, #50	@ 0x32
200223c4:	f8df c0a8 	ldr.w	ip, [pc, #168]	@ 20022470 <DMA_AllocChannel+0xc4>
200223c8:	4b27      	ldr	r3, [pc, #156]	@ (20022468 <DMA_AllocChannel+0xbc>)
200223ca:	f3ef 8710 	mrs	r7, PRIMASK
200223ce:	2201      	movs	r2, #1
200223d0:	f382 8810 	msr	PRIMASK, r2
200223d4:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
200223d6:	2d1f      	cmp	r5, #31
200223d8:	ea4f 0495 	mov.w	r4, r5, lsr #2
200223dc:	d905      	bls.n	200223ea <DMA_AllocChannel+0x3e>
200223de:	e7fe      	b.n	200223de <DMA_AllocChannel+0x32>
200223e0:	2602      	movs	r6, #2
200223e2:	f8df c090 	ldr.w	ip, [pc, #144]	@ 20022474 <DMA_AllocChannel+0xc8>
200223e6:	4b21      	ldr	r3, [pc, #132]	@ (2002246c <DMA_AllocChannel+0xc0>)
200223e8:	e7ef      	b.n	200223ca <DMA_AllocChannel+0x1e>
200223ea:	eb03 05c4 	add.w	r5, r3, r4, lsl #3
200223ee:	f895 e004 	ldrb.w	lr, [r5, #4]
200223f2:	f1be 0f00 	cmp.w	lr, #0
200223f6:	d02e      	beq.n	20022456 <DMA_AllocChannel+0xaa>
200223f8:	f853 2034 	ldr.w	r2, [r3, r4, lsl #3]
200223fc:	4282      	cmp	r2, r0
200223fe:	d103      	bne.n	20022408 <DMA_AllocChannel+0x5c>
20022400:	f387 8810 	msr	PRIMASK, r7
20022404:	2002      	movs	r0, #2
20022406:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20022408:	2200      	movs	r2, #0
2002240a:	791c      	ldrb	r4, [r3, #4]
2002240c:	461d      	mov	r5, r3
2002240e:	b9e4      	cbnz	r4, 2002244a <DMA_AllocChannel+0x9e>
20022410:	2301      	movs	r3, #1
20022412:	712b      	strb	r3, [r5, #4]
20022414:	2314      	movs	r3, #20
20022416:	fb03 c302 	mla	r3, r3, r2, ip
2002241a:	4416      	add	r6, r2
2002241c:	0092      	lsls	r2, r2, #2
2002241e:	b274      	sxtb	r4, r6
20022420:	6003      	str	r3, [r0, #0]
20022422:	64c2      	str	r2, [r0, #76]	@ 0x4c
20022424:	f387 8810 	msr	PRIMASK, r7
20022428:	b121      	cbz	r1, 20022434 <DMA_AllocChannel+0x88>
2002242a:	682b      	ldr	r3, [r5, #0]
2002242c:	4283      	cmp	r3, r0
2002242e:	d001      	beq.n	20022434 <DMA_AllocChannel+0x88>
20022430:	f7ff ff32 	bl	20022298 <DMA_Init>
20022434:	2200      	movs	r2, #0
20022436:	6028      	str	r0, [r5, #0]
20022438:	4611      	mov	r1, r2
2002243a:	4620      	mov	r0, r4
2002243c:	f7ff fed4 	bl	200221e8 <HAL_NVIC_SetPriority>
20022440:	4620      	mov	r0, r4
20022442:	f7ff ff07 	bl	20022254 <HAL_NVIC_EnableIRQ>
20022446:	2000      	movs	r0, #0
20022448:	e7dd      	b.n	20022406 <DMA_AllocChannel+0x5a>
2002244a:	3201      	adds	r2, #1
2002244c:	2a08      	cmp	r2, #8
2002244e:	f103 0308 	add.w	r3, r3, #8
20022452:	d1da      	bne.n	2002240a <DMA_AllocChannel+0x5e>
20022454:	e7d4      	b.n	20022400 <DMA_AllocChannel+0x54>
20022456:	4434      	add	r4, r6
20022458:	712a      	strb	r2, [r5, #4]
2002245a:	b264      	sxtb	r4, r4
2002245c:	e7e2      	b.n	20022424 <DMA_AllocChannel+0x78>
2002245e:	bf00      	nop
20022460:	aff7eff8 	.word	0xaff7eff8
20022464:	bfffeff8 	.word	0xbfffeff8
20022468:	20049f1c 	.word	0x20049f1c
2002246c:	20049edc 	.word	0x20049edc
20022470:	50081008 	.word	0x50081008
20022474:	40001008 	.word	0x40001008

20022478 <DMA_FreeChannel.isra.0>:
20022478:	b538      	push	{r3, r4, r5, lr}
2002247a:	4a13      	ldr	r2, [pc, #76]	@ (200224c8 <DMA_FreeChannel.isra.0+0x50>)
2002247c:	6c83      	ldr	r3, [r0, #72]	@ 0x48
2002247e:	4293      	cmp	r3, r2
20022480:	d003      	beq.n	2002248a <DMA_FreeChannel.isra.0+0x12>
20022482:	4a12      	ldr	r2, [pc, #72]	@ (200224cc <DMA_FreeChannel.isra.0+0x54>)
20022484:	4293      	cmp	r3, r2
20022486:	d008      	beq.n	2002249a <DMA_FreeChannel.isra.0+0x22>
20022488:	e7fe      	b.n	20022488 <DMA_FreeChannel.isra.0+0x10>
2002248a:	2132      	movs	r1, #50	@ 0x32
2002248c:	4a10      	ldr	r2, [pc, #64]	@ (200224d0 <DMA_FreeChannel.isra.0+0x58>)
2002248e:	6cc4      	ldr	r4, [r0, #76]	@ 0x4c
20022490:	2c1f      	cmp	r4, #31
20022492:	ea4f 0394 	mov.w	r3, r4, lsr #2
20022496:	d903      	bls.n	200224a0 <DMA_FreeChannel.isra.0+0x28>
20022498:	e7fe      	b.n	20022498 <DMA_FreeChannel.isra.0+0x20>
2002249a:	2102      	movs	r1, #2
2002249c:	4a0d      	ldr	r2, [pc, #52]	@ (200224d4 <DMA_FreeChannel.isra.0+0x5c>)
2002249e:	e7f6      	b.n	2002248e <DMA_FreeChannel.isra.0+0x16>
200224a0:	f3ef 8410 	mrs	r4, PRIMASK
200224a4:	2501      	movs	r5, #1
200224a6:	f385 8810 	msr	PRIMASK, r5
200224aa:	eb02 05c3 	add.w	r5, r2, r3, lsl #3
200224ae:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
200224b2:	4290      	cmp	r0, r2
200224b4:	d105      	bne.n	200224c2 <DMA_FreeChannel.isra.0+0x4a>
200224b6:	1858      	adds	r0, r3, r1
200224b8:	b240      	sxtb	r0, r0
200224ba:	f7ff fed9 	bl	20022270 <HAL_NVIC_DisableIRQ>
200224be:	2300      	movs	r3, #0
200224c0:	712b      	strb	r3, [r5, #4]
200224c2:	f384 8810 	msr	PRIMASK, r4
200224c6:	bd38      	pop	{r3, r4, r5, pc}
200224c8:	50081000 	.word	0x50081000
200224cc:	40001000 	.word	0x40001000
200224d0:	20049f1c 	.word	0x20049f1c
200224d4:	20049edc 	.word	0x20049edc

200224d8 <HAL_DMA_Init>:
200224d8:	b538      	push	{r3, r4, r5, lr}
200224da:	4604      	mov	r4, r0
200224dc:	2800      	cmp	r0, #0
200224de:	d053      	beq.n	20022588 <HAL_DMA_Init+0xb0>
200224e0:	6883      	ldr	r3, [r0, #8]
200224e2:	f033 0210 	bics.w	r2, r3, #16
200224e6:	d003      	beq.n	200224f0 <HAL_DMA_Init+0x18>
200224e8:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
200224ec:	d000      	beq.n	200224f0 <HAL_DMA_Init+0x18>
200224ee:	e7fe      	b.n	200224ee <HAL_DMA_Init+0x16>
200224f0:	68e3      	ldr	r3, [r4, #12]
200224f2:	f033 0340 	bics.w	r3, r3, #64	@ 0x40
200224f6:	d000      	beq.n	200224fa <HAL_DMA_Init+0x22>
200224f8:	e7fe      	b.n	200224f8 <HAL_DMA_Init+0x20>
200224fa:	6923      	ldr	r3, [r4, #16]
200224fc:	f033 0380 	bics.w	r3, r3, #128	@ 0x80
20022500:	d000      	beq.n	20022504 <HAL_DMA_Init+0x2c>
20022502:	e7fe      	b.n	20022502 <HAL_DMA_Init+0x2a>
20022504:	6963      	ldr	r3, [r4, #20]
20022506:	f433 7280 	bics.w	r2, r3, #256	@ 0x100
2002250a:	d003      	beq.n	20022514 <HAL_DMA_Init+0x3c>
2002250c:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
20022510:	d000      	beq.n	20022514 <HAL_DMA_Init+0x3c>
20022512:	e7fe      	b.n	20022512 <HAL_DMA_Init+0x3a>
20022514:	69a3      	ldr	r3, [r4, #24]
20022516:	f433 6280 	bics.w	r2, r3, #1024	@ 0x400
2002251a:	d003      	beq.n	20022524 <HAL_DMA_Init+0x4c>
2002251c:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
20022520:	d000      	beq.n	20022524 <HAL_DMA_Init+0x4c>
20022522:	e7fe      	b.n	20022522 <HAL_DMA_Init+0x4a>
20022524:	69e3      	ldr	r3, [r4, #28]
20022526:	f033 0320 	bics.w	r3, r3, #32
2002252a:	d000      	beq.n	2002252e <HAL_DMA_Init+0x56>
2002252c:	e7fe      	b.n	2002252c <HAL_DMA_Init+0x54>
2002252e:	6a23      	ldr	r3, [r4, #32]
20022530:	f433 5340 	bics.w	r3, r3, #12288	@ 0x3000
20022534:	d000      	beq.n	20022538 <HAL_DMA_Init+0x60>
20022536:	e7fe      	b.n	20022536 <HAL_DMA_Init+0x5e>
20022538:	6863      	ldr	r3, [r4, #4]
2002253a:	2b3f      	cmp	r3, #63	@ 0x3f
2002253c:	d900      	bls.n	20022540 <HAL_DMA_Init+0x68>
2002253e:	e7fe      	b.n	2002253e <HAL_DMA_Init+0x66>
20022540:	6822      	ldr	r2, [r4, #0]
20022542:	4b13      	ldr	r3, [pc, #76]	@ (20022590 <HAL_DMA_Init+0xb8>)
20022544:	4413      	add	r3, r2
20022546:	2b8c      	cmp	r3, #140	@ 0x8c
20022548:	d813      	bhi.n	20022572 <HAL_DMA_Init+0x9a>
2002254a:	2214      	movs	r2, #20
2002254c:	fbb3 f3f2 	udiv	r3, r3, r2
20022550:	009b      	lsls	r3, r3, #2
20022552:	64e3      	str	r3, [r4, #76]	@ 0x4c
20022554:	4b0f      	ldr	r3, [pc, #60]	@ (20022594 <HAL_DMA_Init+0xbc>)
20022556:	64a3      	str	r3, [r4, #72]	@ 0x48
20022558:	2100      	movs	r1, #0
2002255a:	4620      	mov	r0, r4
2002255c:	f7ff ff26 	bl	200223ac <DMA_AllocChannel>
20022560:	4605      	mov	r5, r0
20022562:	b998      	cbnz	r0, 2002258c <HAL_DMA_Init+0xb4>
20022564:	4620      	mov	r0, r4
20022566:	f7ff fe97 	bl	20022298 <DMA_Init>
2002256a:	f7ff ff85 	bl	20022478 <DMA_FreeChannel.isra.0>
2002256e:	4628      	mov	r0, r5
20022570:	bd38      	pop	{r3, r4, r5, pc}
20022572:	4b09      	ldr	r3, [pc, #36]	@ (20022598 <HAL_DMA_Init+0xc0>)
20022574:	4413      	add	r3, r2
20022576:	2b8c      	cmp	r3, #140	@ 0x8c
20022578:	d8ee      	bhi.n	20022558 <HAL_DMA_Init+0x80>
2002257a:	2214      	movs	r2, #20
2002257c:	fbb3 f3f2 	udiv	r3, r3, r2
20022580:	009b      	lsls	r3, r3, #2
20022582:	64e3      	str	r3, [r4, #76]	@ 0x4c
20022584:	4b05      	ldr	r3, [pc, #20]	@ (2002259c <HAL_DMA_Init+0xc4>)
20022586:	e7e6      	b.n	20022556 <HAL_DMA_Init+0x7e>
20022588:	2501      	movs	r5, #1
2002258a:	e7f0      	b.n	2002256e <HAL_DMA_Init+0x96>
2002258c:	2502      	movs	r5, #2
2002258e:	e7ee      	b.n	2002256e <HAL_DMA_Init+0x96>
20022590:	aff7eff8 	.word	0xaff7eff8
20022594:	50081000 	.word	0x50081000
20022598:	bfffeff8 	.word	0xbfffeff8
2002259c:	40001000 	.word	0x40001000

200225a0 <HAL_DMA_DeInit>:
200225a0:	b510      	push	{r4, lr}
200225a2:	4604      	mov	r4, r0
200225a4:	2800      	cmp	r0, #0
200225a6:	d051      	beq.n	2002264c <HAL_DMA_DeInit+0xac>
200225a8:	6802      	ldr	r2, [r0, #0]
200225aa:	6813      	ldr	r3, [r2, #0]
200225ac:	f023 0301 	bic.w	r3, r3, #1
200225b0:	6013      	str	r3, [r2, #0]
200225b2:	6802      	ldr	r2, [r0, #0]
200225b4:	4b26      	ldr	r3, [pc, #152]	@ (20022650 <HAL_DMA_DeInit+0xb0>)
200225b6:	4413      	add	r3, r2
200225b8:	2b8c      	cmp	r3, #140	@ 0x8c
200225ba:	d82f      	bhi.n	2002261c <HAL_DMA_DeInit+0x7c>
200225bc:	2114      	movs	r1, #20
200225be:	fbb3 f3f1 	udiv	r3, r3, r1
200225c2:	009b      	lsls	r3, r3, #2
200225c4:	64c3      	str	r3, [r0, #76]	@ 0x4c
200225c6:	4b23      	ldr	r3, [pc, #140]	@ (20022654 <HAL_DMA_DeInit+0xb4>)
200225c8:	64a3      	str	r3, [r4, #72]	@ 0x48
200225ca:	2300      	movs	r3, #0
200225cc:	6013      	str	r3, [r2, #0]
200225ce:	e9d4 1312 	ldrd	r1, r3, [r4, #72]	@ 0x48
200225d2:	f003 021c 	and.w	r2, r3, #28
200225d6:	2301      	movs	r3, #1
200225d8:	4093      	lsls	r3, r2
200225da:	604b      	str	r3, [r1, #4]
200225dc:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
200225de:	6ca1      	ldr	r1, [r4, #72]	@ 0x48
200225e0:	2b0f      	cmp	r3, #15
200225e2:	ea4f 0293 	mov.w	r2, r3, lsr #2
200225e6:	d824      	bhi.n	20022632 <HAL_DMA_DeInit+0x92>
200225e8:	203f      	movs	r0, #63	@ 0x3f
200225ea:	005b      	lsls	r3, r3, #1
200225ec:	f8d1 20a8 	ldr.w	r2, [r1, #168]	@ 0xa8
200225f0:	f003 0338 	and.w	r3, r3, #56	@ 0x38
200225f4:	fa00 f303 	lsl.w	r3, r0, r3
200225f8:	ea22 0303 	bic.w	r3, r2, r3
200225fc:	f8c1 30a8 	str.w	r3, [r1, #168]	@ 0xa8
20022600:	4620      	mov	r0, r4
20022602:	f7ff ff39 	bl	20022478 <DMA_FreeChannel.isra.0>
20022606:	2000      	movs	r0, #0
20022608:	e9c4 000d 	strd	r0, r0, [r4, #52]	@ 0x34
2002260c:	e9c4 000f 	strd	r0, r0, [r4, #60]	@ 0x3c
20022610:	6460      	str	r0, [r4, #68]	@ 0x44
20022612:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
20022616:	f884 002d 	strb.w	r0, [r4, #45]	@ 0x2d
2002261a:	bd10      	pop	{r4, pc}
2002261c:	4b0e      	ldr	r3, [pc, #56]	@ (20022658 <HAL_DMA_DeInit+0xb8>)
2002261e:	4413      	add	r3, r2
20022620:	2b8c      	cmp	r3, #140	@ 0x8c
20022622:	d8d2      	bhi.n	200225ca <HAL_DMA_DeInit+0x2a>
20022624:	2114      	movs	r1, #20
20022626:	fbb3 f3f1 	udiv	r3, r3, r1
2002262a:	009b      	lsls	r3, r3, #2
2002262c:	64c3      	str	r3, [r0, #76]	@ 0x4c
2002262e:	4b0b      	ldr	r3, [pc, #44]	@ (2002265c <HAL_DMA_DeInit+0xbc>)
20022630:	e7ca      	b.n	200225c8 <HAL_DMA_DeInit+0x28>
20022632:	f002 0303 	and.w	r3, r2, #3
20022636:	223f      	movs	r2, #63	@ 0x3f
20022638:	f8d1 00ac 	ldr.w	r0, [r1, #172]	@ 0xac
2002263c:	00db      	lsls	r3, r3, #3
2002263e:	fa02 f303 	lsl.w	r3, r2, r3
20022642:	ea20 0303 	bic.w	r3, r0, r3
20022646:	f8c1 30ac 	str.w	r3, [r1, #172]	@ 0xac
2002264a:	e7d9      	b.n	20022600 <HAL_DMA_DeInit+0x60>
2002264c:	2001      	movs	r0, #1
2002264e:	e7e4      	b.n	2002261a <HAL_DMA_DeInit+0x7a>
20022650:	aff7eff8 	.word	0xaff7eff8
20022654:	50081000 	.word	0x50081000
20022658:	bfffeff8 	.word	0xbfffeff8
2002265c:	40001000 	.word	0x40001000

20022660 <HAL_DMA_PollForTransfer>:
20022660:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
20022664:	f890 302d 	ldrb.w	r3, [r0, #45]	@ 0x2d
20022668:	4617      	mov	r7, r2
2002266a:	2b02      	cmp	r3, #2
2002266c:	4604      	mov	r4, r0
2002266e:	4688      	mov	r8, r1
20022670:	b2da      	uxtb	r2, r3
20022672:	d005      	beq.n	20022680 <HAL_DMA_PollForTransfer+0x20>
20022674:	2304      	movs	r3, #4
20022676:	6443      	str	r3, [r0, #68]	@ 0x44
20022678:	2300      	movs	r3, #0
2002267a:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
2002267e:	e006      	b.n	2002268e <HAL_DMA_PollForTransfer+0x2e>
20022680:	6803      	ldr	r3, [r0, #0]
20022682:	681b      	ldr	r3, [r3, #0]
20022684:	0699      	lsls	r1, r3, #26
20022686:	d505      	bpl.n	20022694 <HAL_DMA_PollForTransfer+0x34>
20022688:	f44f 7380 	mov.w	r3, #256	@ 0x100
2002268c:	6443      	str	r3, [r0, #68]	@ 0x44
2002268e:	2001      	movs	r0, #1
20022690:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
20022694:	6cc5      	ldr	r5, [r0, #76]	@ 0x4c
20022696:	f005 051c 	and.w	r5, r5, #28
2002269a:	f1b8 0f00 	cmp.w	r8, #0
2002269e:	d123      	bne.n	200226e8 <HAL_DMA_PollForTransfer+0x88>
200226a0:	fa02 f505 	lsl.w	r5, r2, r5
200226a4:	f7ff fbda 	bl	20021e5c <HAL_GetTick>
200226a8:	f04f 0a08 	mov.w	sl, #8
200226ac:	4681      	mov	r9, r0
200226ae:	e9d4 6312 	ldrd	r6, r3, [r4, #72]	@ 0x48
200226b2:	f003 031c 	and.w	r3, r3, #28
200226b6:	fa0a f103 	lsl.w	r1, sl, r3
200226ba:	6832      	ldr	r2, [r6, #0]
200226bc:	ea12 0b05 	ands.w	fp, r2, r5
200226c0:	d016      	beq.n	200226f0 <HAL_DMA_PollForTransfer+0x90>
200226c2:	f1b8 0f00 	cmp.w	r8, #0
200226c6:	d136      	bne.n	20022736 <HAL_DMA_PollForTransfer+0xd6>
200226c8:	2202      	movs	r2, #2
200226ca:	fa02 f303 	lsl.w	r3, r2, r3
200226ce:	6073      	str	r3, [r6, #4]
200226d0:	6d23      	ldr	r3, [r4, #80]	@ 0x50
200226d2:	b92b      	cbnz	r3, 200226e0 <HAL_DMA_PollForTransfer+0x80>
200226d4:	4620      	mov	r0, r4
200226d6:	f7ff fecf 	bl	20022478 <DMA_FreeChannel.isra.0>
200226da:	2301      	movs	r3, #1
200226dc:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
200226e0:	2000      	movs	r0, #0
200226e2:	f884 002c 	strb.w	r0, [r4, #44]	@ 0x2c
200226e6:	e7d3      	b.n	20022690 <HAL_DMA_PollForTransfer+0x30>
200226e8:	2304      	movs	r3, #4
200226ea:	fa03 f505 	lsl.w	r5, r3, r5
200226ee:	e7d9      	b.n	200226a4 <HAL_DMA_PollForTransfer+0x44>
200226f0:	6832      	ldr	r2, [r6, #0]
200226f2:	4211      	tst	r1, r2
200226f4:	d00c      	beq.n	20022710 <HAL_DMA_PollForTransfer+0xb0>
200226f6:	2501      	movs	r5, #1
200226f8:	fa05 f303 	lsl.w	r3, r5, r3
200226fc:	6073      	str	r3, [r6, #4]
200226fe:	4620      	mov	r0, r4
20022700:	6465      	str	r5, [r4, #68]	@ 0x44
20022702:	f7ff feb9 	bl	20022478 <DMA_FreeChannel.isra.0>
20022706:	f884 502d 	strb.w	r5, [r4, #45]	@ 0x2d
2002270a:	f884 b02c 	strb.w	fp, [r4, #44]	@ 0x2c
2002270e:	e7be      	b.n	2002268e <HAL_DMA_PollForTransfer+0x2e>
20022710:	1c7a      	adds	r2, r7, #1
20022712:	d0d2      	beq.n	200226ba <HAL_DMA_PollForTransfer+0x5a>
20022714:	f7ff fba2 	bl	20021e5c <HAL_GetTick>
20022718:	eba0 0009 	sub.w	r0, r0, r9
2002271c:	42b8      	cmp	r0, r7
2002271e:	d801      	bhi.n	20022724 <HAL_DMA_PollForTransfer+0xc4>
20022720:	2f00      	cmp	r7, #0
20022722:	d1c4      	bne.n	200226ae <HAL_DMA_PollForTransfer+0x4e>
20022724:	2320      	movs	r3, #32
20022726:	4620      	mov	r0, r4
20022728:	6463      	str	r3, [r4, #68]	@ 0x44
2002272a:	f7ff fea5 	bl	20022478 <DMA_FreeChannel.isra.0>
2002272e:	2301      	movs	r3, #1
20022730:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
20022734:	e7a0      	b.n	20022678 <HAL_DMA_PollForTransfer+0x18>
20022736:	2204      	movs	r2, #4
20022738:	fa02 f303 	lsl.w	r3, r2, r3
2002273c:	6073      	str	r3, [r6, #4]
2002273e:	e7cf      	b.n	200226e0 <HAL_DMA_PollForTransfer+0x80>

20022740 <DMA_Remap>:
20022740:	b530      	push	{r4, r5, lr}
20022742:	4b15      	ldr	r3, [pc, #84]	@ (20022798 <DMA_Remap+0x58>)
20022744:	6c84      	ldr	r4, [r0, #72]	@ 0x48
20022746:	429c      	cmp	r4, r3
20022748:	d11b      	bne.n	20022782 <DMA_Remap+0x42>
2002274a:	6883      	ldr	r3, [r0, #8]
2002274c:	2b10      	cmp	r3, #16
2002274e:	d002      	beq.n	20022756 <DMA_Remap+0x16>
20022750:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
20022754:	d108      	bne.n	20022768 <DMA_Remap+0x28>
20022756:	680b      	ldr	r3, [r1, #0]
20022758:	4c10      	ldr	r4, [pc, #64]	@ (2002279c <DMA_Remap+0x5c>)
2002275a:	f103 4560 	add.w	r5, r3, #3758096384	@ 0xe0000000
2002275e:	42a5      	cmp	r5, r4
20022760:	bf98      	it	ls
20022762:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
20022766:	600b      	str	r3, [r1, #0]
20022768:	6883      	ldr	r3, [r0, #8]
2002276a:	f433 4380 	bics.w	r3, r3, #16384	@ 0x4000
2002276e:	d108      	bne.n	20022782 <DMA_Remap+0x42>
20022770:	6813      	ldr	r3, [r2, #0]
20022772:	480a      	ldr	r0, [pc, #40]	@ (2002279c <DMA_Remap+0x5c>)
20022774:	f103 4460 	add.w	r4, r3, #3758096384	@ 0xe0000000
20022778:	4284      	cmp	r4, r0
2002277a:	bf98      	it	ls
2002277c:	f103 6320 	addls.w	r3, r3, #167772160	@ 0xa000000
20022780:	6013      	str	r3, [r2, #0]
20022782:	680b      	ldr	r3, [r1, #0]
20022784:	f103 4270 	add.w	r2, r3, #4026531840	@ 0xf0000000
20022788:	f1b2 5f80 	cmp.w	r2, #268435456	@ 0x10000000
2002278c:	bf3c      	itt	cc
2002278e:	f103 43a0 	addcc.w	r3, r3, #1342177280	@ 0x50000000
20022792:	600b      	strcc	r3, [r1, #0]
20022794:	bd30      	pop	{r4, r5, pc}
20022796:	bf00      	nop
20022798:	40001000 	.word	0x40001000
2002279c:	0007fffe 	.word	0x0007fffe

200227a0 <DMA_Start>:
200227a0:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
200227a4:	f64f 75ff 	movw	r5, #65535	@ 0xffff
200227a8:	6d03      	ldr	r3, [r0, #80]	@ 0x50
200227aa:	6802      	ldr	r2, [r0, #0]
200227ac:	429d      	cmp	r5, r3
200227ae:	bf28      	it	cs
200227b0:	461d      	movcs	r5, r3
200227b2:	1b5b      	subs	r3, r3, r5
200227b4:	6503      	str	r3, [r0, #80]	@ 0x50
200227b6:	6585      	str	r5, [r0, #88]	@ 0x58
200227b8:	6813      	ldr	r3, [r2, #0]
200227ba:	f890 7066 	ldrb.w	r7, [r0, #102]	@ 0x66
200227be:	f023 0301 	bic.w	r3, r3, #1
200227c2:	f890 8067 	ldrb.w	r8, [r0, #103]	@ 0x67
200227c6:	6013      	str	r3, [r2, #0]
200227c8:	e9d0 2317 	ldrd	r2, r3, [r0, #92]	@ 0x5c
200227cc:	460e      	mov	r6, r1
200227ce:	e9cd 2300 	strd	r2, r3, [sp]
200227d2:	e9d0 2312 	ldrd	r2, r3, [r0, #72]	@ 0x48
200227d6:	f003 011c 	and.w	r1, r3, #28
200227da:	2301      	movs	r3, #1
200227dc:	4604      	mov	r4, r0
200227de:	408b      	lsls	r3, r1
200227e0:	6053      	str	r3, [r2, #4]
200227e2:	6803      	ldr	r3, [r0, #0]
200227e4:	4669      	mov	r1, sp
200227e6:	605d      	str	r5, [r3, #4]
200227e8:	aa01      	add	r2, sp, #4
200227ea:	f7ff ffa9 	bl	20022740 <DMA_Remap>
200227ee:	e9dd 0300 	ldrd	r0, r3, [sp]
200227f2:	68a1      	ldr	r1, [r4, #8]
200227f4:	6822      	ldr	r2, [r4, #0]
200227f6:	2910      	cmp	r1, #16
200227f8:	bf0b      	itete	eq
200227fa:	6093      	streq	r3, [r2, #8]
200227fc:	6090      	strne	r0, [r2, #8]
200227fe:	6823      	ldreq	r3, [r4, #0]
20022800:	6822      	ldrne	r2, [r4, #0]
20022802:	bf0c      	ite	eq
20022804:	60d8      	streq	r0, [r3, #12]
20022806:	60d3      	strne	r3, [r2, #12]
20022808:	f894 3064 	ldrb.w	r3, [r4, #100]	@ 0x64
2002280c:	b123      	cbz	r3, 20022818 <DMA_Start+0x78>
2002280e:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
20022810:	fa05 f707 	lsl.w	r7, r5, r7
20022814:	443b      	add	r3, r7
20022816:	65e3      	str	r3, [r4, #92]	@ 0x5c
20022818:	f894 3065 	ldrb.w	r3, [r4, #101]	@ 0x65
2002281c:	b123      	cbz	r3, 20022828 <DMA_Start+0x88>
2002281e:	6e23      	ldr	r3, [r4, #96]	@ 0x60
20022820:	fa05 f508 	lsl.w	r5, r5, r8
20022824:	442b      	add	r3, r5
20022826:	6623      	str	r3, [r4, #96]	@ 0x60
20022828:	b136      	cbz	r6, 20022838 <DMA_Start+0x98>
2002282a:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
2002282c:	6823      	ldr	r3, [r4, #0]
2002282e:	b15a      	cbz	r2, 20022848 <DMA_Start+0xa8>
20022830:	681a      	ldr	r2, [r3, #0]
20022832:	f042 020e 	orr.w	r2, r2, #14
20022836:	601a      	str	r2, [r3, #0]
20022838:	6822      	ldr	r2, [r4, #0]
2002283a:	6813      	ldr	r3, [r2, #0]
2002283c:	f043 0301 	orr.w	r3, r3, #1
20022840:	6013      	str	r3, [r2, #0]
20022842:	b002      	add	sp, #8
20022844:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20022848:	681a      	ldr	r2, [r3, #0]
2002284a:	f022 0204 	bic.w	r2, r2, #4
2002284e:	601a      	str	r2, [r3, #0]
20022850:	6822      	ldr	r2, [r4, #0]
20022852:	6813      	ldr	r3, [r2, #0]
20022854:	f043 030a 	orr.w	r3, r3, #10
20022858:	6013      	str	r3, [r2, #0]
2002285a:	e7ed      	b.n	20022838 <DMA_Start+0x98>

2002285c <HAL_DMA_Start>:
2002285c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002285e:	461d      	mov	r5, r3
20022860:	69c3      	ldr	r3, [r0, #28]
20022862:	4604      	mov	r4, r0
20022864:	2b20      	cmp	r3, #32
20022866:	460f      	mov	r7, r1
20022868:	4616      	mov	r6, r2
2002286a:	d105      	bne.n	20022878 <HAL_DMA_Start+0x1c>
2002286c:	f64f 73fe 	movw	r3, #65534	@ 0xfffe
20022870:	1e6a      	subs	r2, r5, #1
20022872:	429a      	cmp	r2, r3
20022874:	d900      	bls.n	20022878 <HAL_DMA_Start+0x1c>
20022876:	e7fe      	b.n	20022876 <HAL_DMA_Start+0x1a>
20022878:	f894 302c 	ldrb.w	r3, [r4, #44]	@ 0x2c
2002287c:	2b01      	cmp	r3, #1
2002287e:	d00e      	beq.n	2002289e <HAL_DMA_Start+0x42>
20022880:	2301      	movs	r3, #1
20022882:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
20022886:	f894 302d 	ldrb.w	r3, [r4, #45]	@ 0x2d
2002288a:	2b01      	cmp	r3, #1
2002288c:	b2d9      	uxtb	r1, r3
2002288e:	d103      	bne.n	20022898 <HAL_DMA_Start+0x3c>
20022890:	4620      	mov	r0, r4
20022892:	f7ff fd8b 	bl	200223ac <DMA_AllocChannel>
20022896:	b120      	cbz	r0, 200228a2 <HAL_DMA_Start+0x46>
20022898:	2300      	movs	r3, #0
2002289a:	f884 302c 	strb.w	r3, [r4, #44]	@ 0x2c
2002289e:	2002      	movs	r0, #2
200228a0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200228a2:	2302      	movs	r3, #2
200228a4:	e9c4 5514 	strd	r5, r5, [r4, #80]	@ 0x50
200228a8:	e9c4 7617 	strd	r7, r6, [r4, #92]	@ 0x5c
200228ac:	f884 302d 	strb.w	r3, [r4, #45]	@ 0x2d
200228b0:	6460      	str	r0, [r4, #68]	@ 0x44
200228b2:	6d20      	ldr	r0, [r4, #80]	@ 0x50
200228b4:	2800      	cmp	r0, #0
200228b6:	d0f3      	beq.n	200228a0 <HAL_DMA_Start+0x44>
200228b8:	2100      	movs	r1, #0
200228ba:	4620      	mov	r0, r4
200228bc:	f7ff ff70 	bl	200227a0 <DMA_Start>
200228c0:	6d23      	ldr	r3, [r4, #80]	@ 0x50
200228c2:	2b00      	cmp	r3, #0
200228c4:	d0f5      	beq.n	200228b2 <HAL_DMA_Start+0x56>
200228c6:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
200228ca:	2100      	movs	r1, #0
200228cc:	4620      	mov	r0, r4
200228ce:	f7ff fec7 	bl	20022660 <HAL_DMA_PollForTransfer>
200228d2:	2800      	cmp	r0, #0
200228d4:	d0ed      	beq.n	200228b2 <HAL_DMA_Start+0x56>
200228d6:	e7e3      	b.n	200228a0 <HAL_DMA_Start+0x44>

200228d8 <HAL_EFUSE_Read>:
200228d8:	2a20      	cmp	r2, #32
200228da:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
200228de:	4606      	mov	r6, r0
200228e0:	460c      	mov	r4, r1
200228e2:	4615      	mov	r5, r2
200228e4:	dc30      	bgt.n	20022948 <HAL_EFUSE_Read+0x70>
200228e6:	f3c0 08c4 	ubfx	r8, r0, #3, #5
200228ea:	eb08 0302 	add.w	r3, r8, r2
200228ee:	2b20      	cmp	r3, #32
200228f0:	dc2a      	bgt.n	20022948 <HAL_EFUSE_Read+0x70>
200228f2:	0797      	lsls	r7, r2, #30
200228f4:	d128      	bne.n	20022948 <HAL_EFUSE_Read+0x70>
200228f6:	f010 091f 	ands.w	r9, r0, #31
200228fa:	d125      	bne.n	20022948 <HAL_EFUSE_Read+0x70>
200228fc:	4a25      	ldr	r2, [pc, #148]	@ (20022994 <HAL_EFUSE_Read+0xbc>)
200228fe:	2014      	movs	r0, #20
20022900:	f8d2 7094 	ldr.w	r7, [r2, #148]	@ 0x94
20022904:	0a36      	lsrs	r6, r6, #8
20022906:	1cfb      	adds	r3, r7, #3
20022908:	2b0e      	cmp	r3, #14
2002290a:	bf38      	it	cc
2002290c:	230e      	movcc	r3, #14
2002290e:	2b0f      	cmp	r3, #15
20022910:	bf28      	it	cs
20022912:	230f      	movcs	r3, #15
20022914:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20022918:	f7ff fb05 	bl	20021f26 <HAL_Delay_us>
2002291c:	4a1e      	ldr	r2, [pc, #120]	@ (20022998 <HAL_EFUSE_Read+0xc0>)
2002291e:	00b3      	lsls	r3, r6, #2
20022920:	6013      	str	r3, [r2, #0]
20022922:	6813      	ldr	r3, [r2, #0]
20022924:	491d      	ldr	r1, [pc, #116]	@ (2002299c <HAL_EFUSE_Read+0xc4>)
20022926:	f043 0301 	orr.w	r3, r3, #1
2002292a:	6013      	str	r3, [r2, #0]
2002292c:	464b      	mov	r3, r9
2002292e:	4369      	muls	r1, r5
20022930:	6890      	ldr	r0, [r2, #8]
20022932:	07c0      	lsls	r0, r0, #31
20022934:	d50c      	bpl.n	20022950 <HAL_EFUSE_Read+0x78>
20022936:	6890      	ldr	r0, [r2, #8]
20022938:	428b      	cmp	r3, r1
2002293a:	f040 0001 	orr.w	r0, r0, #1
2002293e:	6090      	str	r0, [r2, #8]
20022940:	d30a      	bcc.n	20022958 <HAL_EFUSE_Read+0x80>
20022942:	4b14      	ldr	r3, [pc, #80]	@ (20022994 <HAL_EFUSE_Read+0xbc>)
20022944:	f8c3 7094 	str.w	r7, [r3, #148]	@ 0x94
20022948:	2500      	movs	r5, #0
2002294a:	4628      	mov	r0, r5
2002294c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20022950:	428b      	cmp	r3, r1
20022952:	d2f0      	bcs.n	20022936 <HAL_EFUSE_Read+0x5e>
20022954:	3301      	adds	r3, #1
20022956:	e7eb      	b.n	20022930 <HAL_EFUSE_Read+0x58>
20022958:	4a11      	ldr	r2, [pc, #68]	@ (200229a0 <HAL_EFUSE_Read+0xc8>)
2002295a:	f008 001c 	and.w	r0, r8, #28
2002295e:	eb00 1046 	add.w	r0, r0, r6, lsl #5
20022962:	f025 0103 	bic.w	r1, r5, #3
20022966:	4402      	add	r2, r0
20022968:	4421      	add	r1, r4
2002296a:	428c      	cmp	r4, r1
2002296c:	d103      	bne.n	20022976 <HAL_EFUSE_Read+0x9e>
2002296e:	4b09      	ldr	r3, [pc, #36]	@ (20022994 <HAL_EFUSE_Read+0xbc>)
20022970:	f8c3 7094 	str.w	r7, [r3, #148]	@ 0x94
20022974:	e7e9      	b.n	2002294a <HAL_EFUSE_Read+0x72>
20022976:	f852 3b04 	ldr.w	r3, [r2], #4
2002297a:	3404      	adds	r4, #4
2002297c:	0a18      	lsrs	r0, r3, #8
2002297e:	f804 3c04 	strb.w	r3, [r4, #-4]
20022982:	f804 0c03 	strb.w	r0, [r4, #-3]
20022986:	0c18      	lsrs	r0, r3, #16
20022988:	0e1b      	lsrs	r3, r3, #24
2002298a:	f804 0c02 	strb.w	r0, [r4, #-2]
2002298e:	f804 3c01 	strb.w	r3, [r4, #-1]
20022992:	e7ea      	b.n	2002296a <HAL_EFUSE_Read+0x92>
20022994:	500ca000 	.word	0x500ca000
20022998:	5000c000 	.word	0x5000c000
2002299c:	0005dc00 	.word	0x0005dc00
200229a0:	5000c030 	.word	0x5000c030

200229a4 <EXT_DMA_SetConfig>:
200229a4:	b530      	push	{r4, r5, lr}
200229a6:	2501      	movs	r5, #1
200229a8:	6804      	ldr	r4, [r0, #0]
200229aa:	6065      	str	r5, [r4, #4]
200229ac:	6804      	ldr	r4, [r0, #0]
200229ae:	60e3      	str	r3, [r4, #12]
200229b0:	f101 4370 	add.w	r3, r1, #4026531840	@ 0xf0000000
200229b4:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
200229b8:	6803      	ldr	r3, [r0, #0]
200229ba:	bf38      	it	cc
200229bc:	f101 41a0 	addcc.w	r1, r1, #1342177280	@ 0x50000000
200229c0:	6119      	str	r1, [r3, #16]
200229c2:	f102 4370 	add.w	r3, r2, #4026531840	@ 0xf0000000
200229c6:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
200229ca:	6803      	ldr	r3, [r0, #0]
200229cc:	bf38      	it	cc
200229ce:	f102 42a0 	addcc.w	r2, r2, #1342177280	@ 0x50000000
200229d2:	615a      	str	r2, [r3, #20]
200229d4:	7b03      	ldrb	r3, [r0, #12]
200229d6:	b103      	cbz	r3, 200229da <EXT_DMA_SetConfig+0x36>
200229d8:	e7fe      	b.n	200229d8 <EXT_DMA_SetConfig+0x34>
200229da:	bd30      	pop	{r4, r5, pc}

200229dc <HAL_EXT_DMA_Init>:
200229dc:	b510      	push	{r4, lr}
200229de:	b1c0      	cbz	r0, 20022a12 <HAL_EXT_DMA_Init+0x36>
200229e0:	2302      	movs	r3, #2
200229e2:	4a0d      	ldr	r2, [pc, #52]	@ (20022a18 <HAL_EXT_DMA_Init+0x3c>)
200229e4:	7643      	strb	r3, [r0, #25]
200229e6:	6002      	str	r2, [r0, #0]
200229e8:	e9d0 3101 	ldrd	r3, r1, [r0, #4]
200229ec:	6894      	ldr	r4, [r2, #8]
200229ee:	430b      	orrs	r3, r1
200229f0:	490a      	ldr	r1, [pc, #40]	@ (20022a1c <HAL_EXT_DMA_Init+0x40>)
200229f2:	4021      	ands	r1, r4
200229f4:	430b      	orrs	r3, r1
200229f6:	f443 6320 	orr.w	r3, r3, #2560	@ 0xa00
200229fa:	6093      	str	r3, [r2, #8]
200229fc:	7b03      	ldrb	r3, [r0, #12]
200229fe:	b103      	cbz	r3, 20022a02 <HAL_EXT_DMA_Init+0x26>
20022a00:	e7fe      	b.n	20022a00 <HAL_EXT_DMA_Init+0x24>
20022a02:	6802      	ldr	r2, [r0, #0]
20022a04:	6213      	str	r3, [r2, #32]
20022a06:	2201      	movs	r2, #1
20022a08:	62c3      	str	r3, [r0, #44]	@ 0x2c
20022a0a:	7603      	strb	r3, [r0, #24]
20022a0c:	7642      	strb	r2, [r0, #25]
20022a0e:	4618      	mov	r0, r3
20022a10:	bd10      	pop	{r4, pc}
20022a12:	2001      	movs	r0, #1
20022a14:	e7fc      	b.n	20022a10 <HAL_EXT_DMA_Init+0x34>
20022a16:	bf00      	nop
20022a18:	50001000 	.word	0x50001000
20022a1c:	fff0f020 	.word	0xfff0f020

20022a20 <HAL_EXT_DMA_Start>:
20022a20:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
20022a24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20022a26:	d304      	bcc.n	20022a32 <HAL_EXT_DMA_Start+0x12>
20022a28:	f44f 7300 	mov.w	r3, #512	@ 0x200
20022a2c:	62c3      	str	r3, [r0, #44]	@ 0x2c
20022a2e:	2001      	movs	r0, #1
20022a30:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20022a32:	7e05      	ldrb	r5, [r0, #24]
20022a34:	2d01      	cmp	r5, #1
20022a36:	d018      	beq.n	20022a6a <HAL_EXT_DMA_Start+0x4a>
20022a38:	2501      	movs	r5, #1
20022a3a:	7605      	strb	r5, [r0, #24]
20022a3c:	7e45      	ldrb	r5, [r0, #25]
20022a3e:	2d01      	cmp	r5, #1
20022a40:	f04f 0500 	mov.w	r5, #0
20022a44:	d110      	bne.n	20022a68 <HAL_EXT_DMA_Start+0x48>
20022a46:	2602      	movs	r6, #2
20022a48:	6807      	ldr	r7, [r0, #0]
20022a4a:	7646      	strb	r6, [r0, #25]
20022a4c:	62c5      	str	r5, [r0, #44]	@ 0x2c
20022a4e:	68be      	ldr	r6, [r7, #8]
20022a50:	f026 0601 	bic.w	r6, r6, #1
20022a54:	60be      	str	r6, [r7, #8]
20022a56:	f7ff ffa5 	bl	200229a4 <EXT_DMA_SetConfig>
20022a5a:	6802      	ldr	r2, [r0, #0]
20022a5c:	4628      	mov	r0, r5
20022a5e:	6893      	ldr	r3, [r2, #8]
20022a60:	f043 0301 	orr.w	r3, r3, #1
20022a64:	6093      	str	r3, [r2, #8]
20022a66:	e7e3      	b.n	20022a30 <HAL_EXT_DMA_Start+0x10>
20022a68:	7605      	strb	r5, [r0, #24]
20022a6a:	2002      	movs	r0, #2
20022a6c:	e7e0      	b.n	20022a30 <HAL_EXT_DMA_Start+0x10>

20022a6e <HAL_EXT_DMA_PollForTransfer>:
20022a6e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20022a72:	7e43      	ldrb	r3, [r0, #25]
20022a74:	4604      	mov	r4, r0
20022a76:	2b02      	cmp	r3, #2
20022a78:	460e      	mov	r6, r1
20022a7a:	4615      	mov	r5, r2
20022a7c:	d006      	beq.n	20022a8c <HAL_EXT_DMA_PollForTransfer+0x1e>
20022a7e:	2304      	movs	r3, #4
20022a80:	62c3      	str	r3, [r0, #44]	@ 0x2c
20022a82:	2001      	movs	r0, #1
20022a84:	2300      	movs	r3, #0
20022a86:	7623      	strb	r3, [r4, #24]
20022a88:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20022a8c:	2900      	cmp	r1, #0
20022a8e:	bf14      	ite	ne
20022a90:	f04f 0804 	movne.w	r8, #4
20022a94:	f04f 0802 	moveq.w	r8, #2
20022a98:	f7ff f9e0 	bl	20021e5c <HAL_GetTick>
20022a9c:	4607      	mov	r7, r0
20022a9e:	6823      	ldr	r3, [r4, #0]
20022aa0:	681a      	ldr	r2, [r3, #0]
20022aa2:	ea12 0f08 	tst.w	r2, r8
20022aa6:	d006      	beq.n	20022ab6 <HAL_EXT_DMA_PollForTransfer+0x48>
20022aa8:	b9e6      	cbnz	r6, 20022ae4 <HAL_EXT_DMA_PollForTransfer+0x76>
20022aaa:	2202      	movs	r2, #2
20022aac:	605a      	str	r2, [r3, #4]
20022aae:	2301      	movs	r3, #1
20022ab0:	7663      	strb	r3, [r4, #25]
20022ab2:	2000      	movs	r0, #0
20022ab4:	e7e6      	b.n	20022a84 <HAL_EXT_DMA_PollForTransfer+0x16>
20022ab6:	681a      	ldr	r2, [r3, #0]
20022ab8:	f012 0f18 	tst.w	r2, #24
20022abc:	d004      	beq.n	20022ac8 <HAL_EXT_DMA_PollForTransfer+0x5a>
20022abe:	2201      	movs	r2, #1
20022ac0:	605a      	str	r2, [r3, #4]
20022ac2:	62e2      	str	r2, [r4, #44]	@ 0x2c
20022ac4:	7662      	strb	r2, [r4, #25]
20022ac6:	e7dc      	b.n	20022a82 <HAL_EXT_DMA_PollForTransfer+0x14>
20022ac8:	1c6a      	adds	r2, r5, #1
20022aca:	d0e9      	beq.n	20022aa0 <HAL_EXT_DMA_PollForTransfer+0x32>
20022acc:	f7ff f9c6 	bl	20021e5c <HAL_GetTick>
20022ad0:	1bc0      	subs	r0, r0, r7
20022ad2:	42a8      	cmp	r0, r5
20022ad4:	d801      	bhi.n	20022ada <HAL_EXT_DMA_PollForTransfer+0x6c>
20022ad6:	2d00      	cmp	r5, #0
20022ad8:	d1e1      	bne.n	20022a9e <HAL_EXT_DMA_PollForTransfer+0x30>
20022ada:	2320      	movs	r3, #32
20022adc:	62e3      	str	r3, [r4, #44]	@ 0x2c
20022ade:	2301      	movs	r3, #1
20022ae0:	7663      	strb	r3, [r4, #25]
20022ae2:	e7ce      	b.n	20022a82 <HAL_EXT_DMA_PollForTransfer+0x14>
20022ae4:	2204      	movs	r2, #4
20022ae6:	605a      	str	r2, [r3, #4]
20022ae8:	e7e3      	b.n	20022ab2 <HAL_EXT_DMA_PollForTransfer+0x44>

20022aea <HAL_DBG_printf>:
20022aea:	b40f      	push	{r0, r1, r2, r3}
20022aec:	b004      	add	sp, #16
20022aee:	4770      	bx	lr

20022af0 <HAL_Get_backup>:
20022af0:	4b01      	ldr	r3, [pc, #4]	@ (20022af8 <HAL_Get_backup+0x8>)
20022af2:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
20022af6:	4770      	bx	lr
20022af8:	500cb030 	.word	0x500cb030

20022afc <HAL_HPAON_WakeCore>:
20022afc:	2802      	cmp	r0, #2
20022afe:	b510      	push	{r4, lr}
20022b00:	d120      	bne.n	20022b44 <HAL_HPAON_WakeCore+0x48>
20022b02:	4c11      	ldr	r4, [pc, #68]	@ (20022b48 <HAL_HPAON_WakeCore+0x4c>)
20022b04:	20e6      	movs	r0, #230	@ 0xe6
20022b06:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022b08:	f043 0301 	orr.w	r3, r3, #1
20022b0c:	62e3      	str	r3, [r4, #44]	@ 0x2c
20022b0e:	f7ff fa0a 	bl	20021f26 <HAL_Delay_us>
20022b12:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022b14:	069a      	lsls	r2, r3, #26
20022b16:	d5fc      	bpl.n	20022b12 <HAL_HPAON_WakeCore+0x16>
20022b18:	201e      	movs	r0, #30
20022b1a:	f7ff fa04 	bl	20021f26 <HAL_Delay_us>
20022b1e:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022b20:	069b      	lsls	r3, r3, #26
20022b22:	d5fc      	bpl.n	20022b1e <HAL_HPAON_WakeCore+0x22>
20022b24:	f3ef 8110 	mrs	r1, PRIMASK
20022b28:	2301      	movs	r3, #1
20022b2a:	f383 8810 	msr	PRIMASK, r3
20022b2e:	4a07      	ldr	r2, [pc, #28]	@ (20022b4c <HAL_HPAON_WakeCore+0x50>)
20022b30:	7813      	ldrb	r3, [r2, #0]
20022b32:	2b13      	cmp	r3, #19
20022b34:	d900      	bls.n	20022b38 <HAL_HPAON_WakeCore+0x3c>
20022b36:	e7fe      	b.n	20022b36 <HAL_HPAON_WakeCore+0x3a>
20022b38:	3301      	adds	r3, #1
20022b3a:	7013      	strb	r3, [r2, #0]
20022b3c:	f381 8810 	msr	PRIMASK, r1
20022b40:	2000      	movs	r0, #0
20022b42:	bd10      	pop	{r4, pc}
20022b44:	2001      	movs	r0, #1
20022b46:	e7fc      	b.n	20022b42 <HAL_HPAON_WakeCore+0x46>
20022b48:	500c0000 	.word	0x500c0000
20022b4c:	20049f5c 	.word	0x20049f5c

20022b50 <HAL_HPAON_EnableXT48>:
20022b50:	4b04      	ldr	r3, [pc, #16]	@ (20022b64 <HAL_HPAON_EnableXT48+0x14>)
20022b52:	691a      	ldr	r2, [r3, #16]
20022b54:	f042 0202 	orr.w	r2, r2, #2
20022b58:	611a      	str	r2, [r3, #16]
20022b5a:	691a      	ldr	r2, [r3, #16]
20022b5c:	2a00      	cmp	r2, #0
20022b5e:	dafc      	bge.n	20022b5a <HAL_HPAON_EnableXT48+0xa>
20022b60:	4770      	bx	lr
20022b62:	bf00      	nop
20022b64:	500c0000 	.word	0x500c0000

20022b68 <HAL_HPAON_DisableXT48>:
20022b68:	4a02      	ldr	r2, [pc, #8]	@ (20022b74 <HAL_HPAON_DisableXT48+0xc>)
20022b6a:	6913      	ldr	r3, [r2, #16]
20022b6c:	f023 0302 	bic.w	r3, r3, #2
20022b70:	6113      	str	r3, [r2, #16]
20022b72:	4770      	bx	lr
20022b74:	500c0000 	.word	0x500c0000

20022b78 <HAL_QSPI_Init>:
20022b78:	b510      	push	{r4, lr}
20022b7a:	b1e0      	cbz	r0, 20022bb6 <HAL_QSPI_Init+0x3e>
20022b7c:	b1d9      	cbz	r1, 20022bb6 <HAL_QSPI_Init+0x3e>
20022b7e:	2300      	movs	r3, #0
20022b80:	2201      	movs	r2, #1
20022b82:	6043      	str	r3, [r0, #4]
20022b84:	f880 2022 	strb.w	r2, [r0, #34]	@ 0x22
20022b88:	680c      	ldr	r4, [r1, #0]
20022b8a:	6004      	str	r4, [r0, #0]
20022b8c:	684a      	ldr	r2, [r1, #4]
20022b8e:	f880 2020 	strb.w	r2, [r0, #32]
20022b92:	688a      	ldr	r2, [r1, #8]
20022b94:	6102      	str	r2, [r0, #16]
20022b96:	68ca      	ldr	r2, [r1, #12]
20022b98:	0512      	lsls	r2, r2, #20
20022b9a:	6142      	str	r2, [r0, #20]
20022b9c:	22ff      	movs	r2, #255	@ 0xff
20022b9e:	f8c4 2084 	str.w	r2, [r4, #132]	@ 0x84
20022ba2:	f04f 2450 	mov.w	r4, #1342197760	@ 0x50005000
20022ba6:	6801      	ldr	r1, [r0, #0]
20022ba8:	678c      	str	r4, [r1, #120]	@ 0x78
20022baa:	6801      	ldr	r1, [r0, #0]
20022bac:	620a      	str	r2, [r1, #32]
20022bae:	6801      	ldr	r1, [r0, #0]
20022bb0:	4618      	mov	r0, r3
20022bb2:	644a      	str	r2, [r1, #68]	@ 0x44
20022bb4:	bd10      	pop	{r4, pc}
20022bb6:	2001      	movs	r0, #1
20022bb8:	e7fc      	b.n	20022bb4 <HAL_QSPI_Init+0x3c>

20022bba <HAL_FLASH_SET_AHB_RCMD>:
20022bba:	b138      	cbz	r0, 20022bcc <HAL_FLASH_SET_AHB_RCMD+0x12>
20022bbc:	6802      	ldr	r2, [r0, #0]
20022bbe:	2000      	movs	r0, #0
20022bc0:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022bc2:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
20022bc6:	4319      	orrs	r1, r3
20022bc8:	6411      	str	r1, [r2, #64]	@ 0x40
20022bca:	4770      	bx	lr
20022bcc:	2001      	movs	r0, #1
20022bce:	4770      	bx	lr

20022bd0 <HAL_FLASH_CFG_AHB_RCMD>:
20022bd0:	b570      	push	{r4, r5, r6, lr}
20022bd2:	b1c8      	cbz	r0, 20022c08 <HAL_FLASH_CFG_AHB_RCMD+0x38>
20022bd4:	6805      	ldr	r5, [r0, #0]
20022bd6:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022bda:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022bde:	6cac      	ldr	r4, [r5, #72]	@ 0x48
20022be0:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022be4:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022be8:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022bec:	f36f 0414 	bfc	r4, #0, #21
20022bf0:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022bf4:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022bf8:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022bfc:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022c00:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022c04:	4321      	orrs	r1, r4
20022c06:	64a9      	str	r1, [r5, #72]	@ 0x48
20022c08:	bd70      	pop	{r4, r5, r6, pc}

20022c0a <HAL_FLASH_SET_AHB_WCMD>:
20022c0a:	b140      	cbz	r0, 20022c1e <HAL_FLASH_SET_AHB_WCMD+0x14>
20022c0c:	6802      	ldr	r2, [r0, #0]
20022c0e:	2000      	movs	r0, #0
20022c10:	6c13      	ldr	r3, [r2, #64]	@ 0x40
20022c12:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20022c16:	ea43 2101 	orr.w	r1, r3, r1, lsl #8
20022c1a:	6411      	str	r1, [r2, #64]	@ 0x40
20022c1c:	4770      	bx	lr
20022c1e:	2001      	movs	r0, #1
20022c20:	4770      	bx	lr

20022c22 <HAL_FLASH_CFG_AHB_WCMD>:
20022c22:	b570      	push	{r4, r5, r6, lr}
20022c24:	b1c8      	cbz	r0, 20022c5a <HAL_FLASH_CFG_AHB_WCMD+0x38>
20022c26:	6805      	ldr	r5, [r0, #0]
20022c28:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022c2c:	f99d 001c 	ldrsb.w	r0, [sp, #28]
20022c30:	6d2c      	ldr	r4, [r5, #80]	@ 0x50
20022c32:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022c36:	ea40 23c3 	orr.w	r3, r0, r3, lsl #11
20022c3a:	f99d 0010 	ldrsb.w	r0, [sp, #16]
20022c3e:	f36f 0414 	bfc	r4, #0, #21
20022c42:	ea43 2300 	orr.w	r3, r3, r0, lsl #8
20022c46:	f99d 0014 	ldrsb.w	r0, [sp, #20]
20022c4a:	ea43 1380 	orr.w	r3, r3, r0, lsl #6
20022c4e:	ea43 3242 	orr.w	r2, r3, r2, lsl #13
20022c52:	ea42 4181 	orr.w	r1, r2, r1, lsl #18
20022c56:	4321      	orrs	r1, r4
20022c58:	6529      	str	r1, [r5, #80]	@ 0x50
20022c5a:	bd70      	pop	{r4, r5, r6, pc}

20022c5c <HAL_FLASH_WRITE_WORD>:
20022c5c:	b118      	cbz	r0, 20022c66 <HAL_FLASH_WRITE_WORD+0xa>
20022c5e:	6803      	ldr	r3, [r0, #0]
20022c60:	2000      	movs	r0, #0
20022c62:	6059      	str	r1, [r3, #4]
20022c64:	4770      	bx	lr
20022c66:	2001      	movs	r0, #1
20022c68:	4770      	bx	lr

20022c6a <HAL_FLASH_WRITE_DLEN>:
20022c6a:	b130      	cbz	r0, 20022c7a <HAL_FLASH_WRITE_DLEN+0x10>
20022c6c:	6803      	ldr	r3, [r0, #0]
20022c6e:	3901      	subs	r1, #1
20022c70:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022c74:	2000      	movs	r0, #0
20022c76:	6259      	str	r1, [r3, #36]	@ 0x24
20022c78:	4770      	bx	lr
20022c7a:	2001      	movs	r0, #1
20022c7c:	4770      	bx	lr

20022c7e <HAL_FLASH_WRITE_DLEN2>:
20022c7e:	b130      	cbz	r0, 20022c8e <HAL_FLASH_WRITE_DLEN2+0x10>
20022c80:	6803      	ldr	r3, [r0, #0]
20022c82:	3901      	subs	r1, #1
20022c84:	f3c1 0113 	ubfx	r1, r1, #0, #20
20022c88:	2000      	movs	r0, #0
20022c8a:	6399      	str	r1, [r3, #56]	@ 0x38
20022c8c:	4770      	bx	lr
20022c8e:	2001      	movs	r0, #1
20022c90:	4770      	bx	lr

20022c92 <HAL_FLASH_WRITE_ABYTE>:
20022c92:	b108      	cbz	r0, 20022c98 <HAL_FLASH_WRITE_ABYTE+0x6>
20022c94:	6803      	ldr	r3, [r0, #0]
20022c96:	6219      	str	r1, [r3, #32]
20022c98:	4770      	bx	lr

20022c9a <HAL_FLASH_IS_CMD_DONE>:
20022c9a:	b118      	cbz	r0, 20022ca4 <HAL_FLASH_IS_CMD_DONE+0xa>
20022c9c:	6803      	ldr	r3, [r0, #0]
20022c9e:	6918      	ldr	r0, [r3, #16]
20022ca0:	f000 0001 	and.w	r0, r0, #1
20022ca4:	4770      	bx	lr

20022ca6 <HAL_FLASH_CLR_CMD_DONE>:
20022ca6:	b120      	cbz	r0, 20022cb2 <HAL_FLASH_CLR_CMD_DONE+0xc>
20022ca8:	6802      	ldr	r2, [r0, #0]
20022caa:	6953      	ldr	r3, [r2, #20]
20022cac:	f043 0301 	orr.w	r3, r3, #1
20022cb0:	6153      	str	r3, [r2, #20]
20022cb2:	4770      	bx	lr

20022cb4 <HAL_FLASH_SET_CMD>:
20022cb4:	b538      	push	{r3, r4, r5, lr}
20022cb6:	460d      	mov	r5, r1
20022cb8:	4604      	mov	r4, r0
20022cba:	b1a8      	cbz	r0, 20022ce8 <HAL_FLASH_SET_CMD+0x34>
20022cbc:	6803      	ldr	r3, [r0, #0]
20022cbe:	61da      	str	r2, [r3, #28]
20022cc0:	6ac3      	ldr	r3, [r0, #44]	@ 0x2c
20022cc2:	b10b      	cbz	r3, 20022cc8 <HAL_FLASH_SET_CMD+0x14>
20022cc4:	2001      	movs	r0, #1
20022cc6:	4798      	blx	r3
20022cc8:	6823      	ldr	r3, [r4, #0]
20022cca:	619d      	str	r5, [r3, #24]
20022ccc:	4620      	mov	r0, r4
20022cce:	f7ff ffe4 	bl	20022c9a <HAL_FLASH_IS_CMD_DONE>
20022cd2:	2800      	cmp	r0, #0
20022cd4:	d0fa      	beq.n	20022ccc <HAL_FLASH_SET_CMD+0x18>
20022cd6:	4620      	mov	r0, r4
20022cd8:	f7ff ffe5 	bl	20022ca6 <HAL_FLASH_CLR_CMD_DONE>
20022cdc:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
20022cde:	b10b      	cbz	r3, 20022ce4 <HAL_FLASH_SET_CMD+0x30>
20022ce0:	2000      	movs	r0, #0
20022ce2:	4798      	blx	r3
20022ce4:	2000      	movs	r0, #0
20022ce6:	bd38      	pop	{r3, r4, r5, pc}
20022ce8:	2001      	movs	r0, #1
20022cea:	e7fc      	b.n	20022ce6 <HAL_FLASH_SET_CMD+0x32>

20022cec <HAL_FLASH_CLR_STATUS>:
20022cec:	b118      	cbz	r0, 20022cf6 <HAL_FLASH_CLR_STATUS+0xa>
20022cee:	6802      	ldr	r2, [r0, #0]
20022cf0:	6953      	ldr	r3, [r2, #20]
20022cf2:	4319      	orrs	r1, r3
20022cf4:	6151      	str	r1, [r2, #20]
20022cf6:	4770      	bx	lr

20022cf8 <HAL_FLASH_STATUS_MATCH>:
20022cf8:	b118      	cbz	r0, 20022d02 <HAL_FLASH_STATUS_MATCH+0xa>
20022cfa:	6803      	ldr	r3, [r0, #0]
20022cfc:	6918      	ldr	r0, [r3, #16]
20022cfe:	f3c0 00c0 	ubfx	r0, r0, #3, #1
20022d02:	4770      	bx	lr

20022d04 <HAL_FLASH_IS_PROG_DONE>:
20022d04:	b128      	cbz	r0, 20022d12 <HAL_FLASH_IS_PROG_DONE+0xe>
20022d06:	6803      	ldr	r3, [r0, #0]
20022d08:	6858      	ldr	r0, [r3, #4]
20022d0a:	43c0      	mvns	r0, r0
20022d0c:	f000 0001 	and.w	r0, r0, #1
20022d10:	4770      	bx	lr
20022d12:	2001      	movs	r0, #1
20022d14:	4770      	bx	lr

20022d16 <HAL_FLASH_READ32>:
20022d16:	b108      	cbz	r0, 20022d1c <HAL_FLASH_READ32+0x6>
20022d18:	6803      	ldr	r3, [r0, #0]
20022d1a:	6858      	ldr	r0, [r3, #4]
20022d1c:	4770      	bx	lr

20022d1e <HAL_FLASH_SET_TXSLOT>:
20022d1e:	b120      	cbz	r0, 20022d2a <HAL_FLASH_SET_TXSLOT+0xc>
20022d20:	6802      	ldr	r2, [r0, #0]
20022d22:	6d53      	ldr	r3, [r2, #84]	@ 0x54
20022d24:	f361 238e 	bfi	r3, r1, #10, #5
20022d28:	6553      	str	r3, [r2, #84]	@ 0x54
20022d2a:	4770      	bx	lr

20022d2c <HAL_FLASH_SET_CLK_rom>:
20022d2c:	b108      	cbz	r0, 20022d32 <HAL_FLASH_SET_CLK_rom+0x6>
20022d2e:	6803      	ldr	r3, [r0, #0]
20022d30:	60d9      	str	r1, [r3, #12]
20022d32:	4770      	bx	lr

20022d34 <HAL_FLASH_GET_DIV>:
20022d34:	b110      	cbz	r0, 20022d3c <HAL_FLASH_GET_DIV+0x8>
20022d36:	6803      	ldr	r3, [r0, #0]
20022d38:	68d8      	ldr	r0, [r3, #12]
20022d3a:	b2c0      	uxtb	r0, r0
20022d3c:	4770      	bx	lr

20022d3e <HAL_FLASH_MANUAL_CMD>:
20022d3e:	b570      	push	{r4, r5, r6, lr}
20022d40:	b1e8      	cbz	r0, 20022d7e <HAL_FLASH_MANUAL_CMD+0x40>
20022d42:	6805      	ldr	r5, [r0, #0]
20022d44:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20022d48:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20022d4c:	6aac      	ldr	r4, [r5, #40]	@ 0x28
20022d4e:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022d52:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20022d56:	f36f 0415 	bfc	r4, #0, #22
20022d5a:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20022d5e:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20022d62:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20022d66:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022d6a:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20022d6e:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20022d72:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20022d76:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20022d7a:	4321      	orrs	r1, r4
20022d7c:	62a9      	str	r1, [r5, #40]	@ 0x28
20022d7e:	bd70      	pop	{r4, r5, r6, pc}

20022d80 <HAL_FLASH_MANUAL_CMD2>:
20022d80:	b570      	push	{r4, r5, r6, lr}
20022d82:	b1e8      	cbz	r0, 20022dc0 <HAL_FLASH_MANUAL_CMD2+0x40>
20022d84:	6805      	ldr	r5, [r0, #0]
20022d86:	f99d 601c 	ldrsb.w	r6, [sp, #28]
20022d8a:	f99d 0020 	ldrsb.w	r0, [sp, #32]
20022d8e:	6bec      	ldr	r4, [r5, #60]	@ 0x3c
20022d90:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20022d94:	f99d 6010 	ldrsb.w	r6, [sp, #16]
20022d98:	f36f 0415 	bfc	r4, #0, #22
20022d9c:	ea40 20c6 	orr.w	r0, r0, r6, lsl #11
20022da0:	f99d 6014 	ldrsb.w	r6, [sp, #20]
20022da4:	ea40 2006 	orr.w	r0, r0, r6, lsl #8
20022da8:	f99d 6018 	ldrsb.w	r6, [sp, #24]
20022dac:	ea40 1086 	orr.w	r0, r0, r6, lsl #6
20022db0:	ea40 3343 	orr.w	r3, r0, r3, lsl #13
20022db4:	ea43 4282 	orr.w	r2, r3, r2, lsl #18
20022db8:	ea42 5141 	orr.w	r1, r2, r1, lsl #21
20022dbc:	4321      	orrs	r1, r4
20022dbe:	63e9      	str	r1, [r5, #60]	@ 0x3c
20022dc0:	bd70      	pop	{r4, r5, r6, pc}
	...

20022dc4 <HAL_FLASH_SET_ALIAS_RANGE>:
20022dc4:	b510      	push	{r4, lr}
20022dc6:	b158      	cbz	r0, 20022de0 <HAL_FLASH_SET_ALIAS_RANGE+0x1c>
20022dc8:	4b06      	ldr	r3, [pc, #24]	@ (20022de4 <HAL_FLASH_SET_ALIAS_RANGE+0x20>)
20022dca:	6804      	ldr	r4, [r0, #0]
20022dcc:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022dd0:	440a      	add	r2, r1
20022dd2:	4019      	ands	r1, r3
20022dd4:	66e1      	str	r1, [r4, #108]	@ 0x6c
20022dd6:	401a      	ands	r2, r3
20022dd8:	6803      	ldr	r3, [r0, #0]
20022dda:	2000      	movs	r0, #0
20022ddc:	671a      	str	r2, [r3, #112]	@ 0x70
20022dde:	bd10      	pop	{r4, pc}
20022de0:	2001      	movs	r0, #1
20022de2:	e7fc      	b.n	20022dde <HAL_FLASH_SET_ALIAS_RANGE+0x1a>
20022de4:	fffffc00 	.word	0xfffffc00

20022de8 <HAL_FLASH_SET_ALIAS_OFFSET>:
20022de8:	b128      	cbz	r0, 20022df6 <HAL_FLASH_SET_ALIAS_OFFSET+0xe>
20022dea:	6803      	ldr	r3, [r0, #0]
20022dec:	f36f 0109 	bfc	r1, #0, #10
20022df0:	2000      	movs	r0, #0
20022df2:	6759      	str	r1, [r3, #116]	@ 0x74
20022df4:	4770      	bx	lr
20022df6:	2001      	movs	r0, #1
20022df8:	4770      	bx	lr
	...

20022dfc <HAL_FLASH_SET_CTR>:
20022dfc:	b510      	push	{r4, lr}
20022dfe:	b150      	cbz	r0, 20022e16 <HAL_FLASH_SET_CTR+0x1a>
20022e00:	4b06      	ldr	r3, [pc, #24]	@ (20022e1c <HAL_FLASH_SET_CTR+0x20>)
20022e02:	6804      	ldr	r4, [r0, #0]
20022e04:	4019      	ands	r1, r3
20022e06:	65e1      	str	r1, [r4, #92]	@ 0x5c
20022e08:	6801      	ldr	r1, [r0, #0]
20022e0a:	2000      	movs	r0, #0
20022e0c:	f202 32ff 	addw	r2, r2, #1023	@ 0x3ff
20022e10:	401a      	ands	r2, r3
20022e12:	660a      	str	r2, [r1, #96]	@ 0x60
20022e14:	bd10      	pop	{r4, pc}
20022e16:	2001      	movs	r0, #1
20022e18:	e7fc      	b.n	20022e14 <HAL_FLASH_SET_CTR+0x18>
20022e1a:	bf00      	nop
20022e1c:	fffffc00 	.word	0xfffffc00

20022e20 <HAL_FLASH_SET_NONCE>:
20022e20:	b150      	cbz	r0, 20022e38 <HAL_FLASH_SET_NONCE+0x18>
20022e22:	b149      	cbz	r1, 20022e38 <HAL_FLASH_SET_NONCE+0x18>
20022e24:	680b      	ldr	r3, [r1, #0]
20022e26:	6802      	ldr	r2, [r0, #0]
20022e28:	ba1b      	rev	r3, r3
20022e2a:	6653      	str	r3, [r2, #100]	@ 0x64
20022e2c:	684b      	ldr	r3, [r1, #4]
20022e2e:	6802      	ldr	r2, [r0, #0]
20022e30:	ba1b      	rev	r3, r3
20022e32:	2000      	movs	r0, #0
20022e34:	6693      	str	r3, [r2, #104]	@ 0x68
20022e36:	4770      	bx	lr
20022e38:	2001      	movs	r0, #1
20022e3a:	4770      	bx	lr

20022e3c <HAL_FLASH_SET_AES>:
20022e3c:	b158      	cbz	r0, 20022e56 <HAL_FLASH_SET_AES+0x1a>
20022e3e:	6803      	ldr	r3, [r0, #0]
20022e40:	2901      	cmp	r1, #1
20022e42:	681a      	ldr	r2, [r3, #0]
20022e44:	d104      	bne.n	20022e50 <HAL_FLASH_SET_AES+0x14>
20022e46:	f042 0280 	orr.w	r2, r2, #128	@ 0x80
20022e4a:	2000      	movs	r0, #0
20022e4c:	601a      	str	r2, [r3, #0]
20022e4e:	4770      	bx	lr
20022e50:	f022 0280 	bic.w	r2, r2, #128	@ 0x80
20022e54:	e7f9      	b.n	20022e4a <HAL_FLASH_SET_AES+0xe>
20022e56:	2001      	movs	r0, #1
20022e58:	4770      	bx	lr

20022e5a <HAL_FLASH_ENABLE_AES>:
20022e5a:	b150      	cbz	r0, 20022e72 <HAL_FLASH_ENABLE_AES+0x18>
20022e5c:	6803      	ldr	r3, [r0, #0]
20022e5e:	681a      	ldr	r2, [r3, #0]
20022e60:	b121      	cbz	r1, 20022e6c <HAL_FLASH_ENABLE_AES+0x12>
20022e62:	f042 0240 	orr.w	r2, r2, #64	@ 0x40
20022e66:	2000      	movs	r0, #0
20022e68:	601a      	str	r2, [r3, #0]
20022e6a:	4770      	bx	lr
20022e6c:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
20022e70:	e7f9      	b.n	20022e66 <HAL_FLASH_ENABLE_AES+0xc>
20022e72:	2001      	movs	r0, #1
20022e74:	4770      	bx	lr

20022e76 <HAL_FLASH_ENABLE_QSPI>:
20022e76:	b150      	cbz	r0, 20022e8e <HAL_FLASH_ENABLE_QSPI+0x18>
20022e78:	6803      	ldr	r3, [r0, #0]
20022e7a:	681a      	ldr	r2, [r3, #0]
20022e7c:	b121      	cbz	r1, 20022e88 <HAL_FLASH_ENABLE_QSPI+0x12>
20022e7e:	f042 0201 	orr.w	r2, r2, #1
20022e82:	2000      	movs	r0, #0
20022e84:	601a      	str	r2, [r3, #0]
20022e86:	4770      	bx	lr
20022e88:	f022 0201 	bic.w	r2, r2, #1
20022e8c:	e7f9      	b.n	20022e82 <HAL_FLASH_ENABLE_QSPI+0xc>
20022e8e:	2001      	movs	r0, #1
20022e90:	4770      	bx	lr

20022e92 <HAL_FLASH_ENABLE_OPI>:
20022e92:	b150      	cbz	r0, 20022eaa <HAL_FLASH_ENABLE_OPI+0x18>
20022e94:	6803      	ldr	r3, [r0, #0]
20022e96:	681a      	ldr	r2, [r3, #0]
20022e98:	b121      	cbz	r1, 20022ea4 <HAL_FLASH_ENABLE_OPI+0x12>
20022e9a:	f442 1200 	orr.w	r2, r2, #2097152	@ 0x200000
20022e9e:	2000      	movs	r0, #0
20022ea0:	601a      	str	r2, [r3, #0]
20022ea2:	4770      	bx	lr
20022ea4:	f422 1200 	bic.w	r2, r2, #2097152	@ 0x200000
20022ea8:	e7f9      	b.n	20022e9e <HAL_FLASH_ENABLE_OPI+0xc>
20022eaa:	2001      	movs	r0, #1
20022eac:	4770      	bx	lr

20022eae <HAL_FLASH_ENABLE_HYPER>:
20022eae:	b150      	cbz	r0, 20022ec6 <HAL_FLASH_ENABLE_HYPER+0x18>
20022eb0:	6803      	ldr	r3, [r0, #0]
20022eb2:	689a      	ldr	r2, [r3, #8]
20022eb4:	b121      	cbz	r1, 20022ec0 <HAL_FLASH_ENABLE_HYPER+0x12>
20022eb6:	f042 0210 	orr.w	r2, r2, #16
20022eba:	2000      	movs	r0, #0
20022ebc:	609a      	str	r2, [r3, #8]
20022ebe:	4770      	bx	lr
20022ec0:	f022 0210 	bic.w	r2, r2, #16
20022ec4:	e7f9      	b.n	20022eba <HAL_FLASH_ENABLE_HYPER+0xc>
20022ec6:	2001      	movs	r0, #1
20022ec8:	4770      	bx	lr

20022eca <HAL_FLASH_ENABLE_CMD2>:
20022eca:	b150      	cbz	r0, 20022ee2 <HAL_FLASH_ENABLE_CMD2+0x18>
20022ecc:	6803      	ldr	r3, [r0, #0]
20022ece:	681a      	ldr	r2, [r3, #0]
20022ed0:	b121      	cbz	r1, 20022edc <HAL_FLASH_ENABLE_CMD2+0x12>
20022ed2:	f442 3280 	orr.w	r2, r2, #65536	@ 0x10000
20022ed6:	2000      	movs	r0, #0
20022ed8:	601a      	str	r2, [r3, #0]
20022eda:	4770      	bx	lr
20022edc:	f422 3280 	bic.w	r2, r2, #65536	@ 0x10000
20022ee0:	e7f9      	b.n	20022ed6 <HAL_FLASH_ENABLE_CMD2+0xc>
20022ee2:	2001      	movs	r0, #1
20022ee4:	4770      	bx	lr

20022ee6 <HAL_FLASH_STAUS_MATCH_CMD2>:
20022ee6:	b150      	cbz	r0, 20022efe <HAL_FLASH_STAUS_MATCH_CMD2+0x18>
20022ee8:	6803      	ldr	r3, [r0, #0]
20022eea:	681a      	ldr	r2, [r3, #0]
20022eec:	b121      	cbz	r1, 20022ef8 <HAL_FLASH_STAUS_MATCH_CMD2+0x12>
20022eee:	f442 2280 	orr.w	r2, r2, #262144	@ 0x40000
20022ef2:	2000      	movs	r0, #0
20022ef4:	601a      	str	r2, [r3, #0]
20022ef6:	4770      	bx	lr
20022ef8:	f422 2280 	bic.w	r2, r2, #262144	@ 0x40000
20022efc:	e7f9      	b.n	20022ef2 <HAL_FLASH_STAUS_MATCH_CMD2+0xc>
20022efe:	2001      	movs	r0, #1
20022f00:	4770      	bx	lr

20022f02 <HAL_FLASH_SET_CS_TIME>:
20022f02:	b530      	push	{r4, r5, lr}
20022f04:	b180      	cbz	r0, 20022f28 <HAL_FLASH_SET_CS_TIME+0x26>
20022f06:	6805      	ldr	r5, [r0, #0]
20022f08:	f8bd 000c 	ldrh.w	r0, [sp, #12]
20022f0c:	68ac      	ldr	r4, [r5, #8]
20022f0e:	0680      	lsls	r0, r0, #26
20022f10:	ea40 5383 	orr.w	r3, r0, r3, lsl #22
20022f14:	2000      	movs	r0, #0
20022f16:	ea43 4181 	orr.w	r1, r3, r1, lsl #18
20022f1a:	f36f 149e 	bfc	r4, #6, #25
20022f1e:	ea41 1282 	orr.w	r2, r1, r2, lsl #6
20022f22:	4322      	orrs	r2, r4
20022f24:	60aa      	str	r2, [r5, #8]
20022f26:	bd30      	pop	{r4, r5, pc}
20022f28:	2001      	movs	r0, #1
20022f2a:	e7fc      	b.n	20022f26 <HAL_FLASH_SET_CS_TIME+0x24>

20022f2c <HAL_FLASH_SET_ROW_BOUNDARY>:
20022f2c:	b130      	cbz	r0, 20022f3c <HAL_FLASH_SET_ROW_BOUNDARY+0x10>
20022f2e:	6802      	ldr	r2, [r0, #0]
20022f30:	2000      	movs	r0, #0
20022f32:	6893      	ldr	r3, [r2, #8]
20022f34:	f361 0302 	bfi	r3, r1, #0, #3
20022f38:	6093      	str	r3, [r2, #8]
20022f3a:	4770      	bx	lr
20022f3c:	2001      	movs	r0, #1
20022f3e:	4770      	bx	lr

20022f40 <HAL_FLASH_SET_LEGACY>:
20022f40:	b150      	cbz	r0, 20022f58 <HAL_FLASH_SET_LEGACY+0x18>
20022f42:	6803      	ldr	r3, [r0, #0]
20022f44:	689a      	ldr	r2, [r3, #8]
20022f46:	b121      	cbz	r1, 20022f52 <HAL_FLASH_SET_LEGACY+0x12>
20022f48:	f042 0220 	orr.w	r2, r2, #32
20022f4c:	2000      	movs	r0, #0
20022f4e:	609a      	str	r2, [r3, #8]
20022f50:	4770      	bx	lr
20022f52:	f022 0220 	bic.w	r2, r2, #32
20022f56:	e7f9      	b.n	20022f4c <HAL_FLASH_SET_LEGACY+0xc>
20022f58:	2001      	movs	r0, #1
20022f5a:	4770      	bx	lr

20022f5c <HAL_FLASH_SET_DUAL_MODE>:
20022f5c:	b150      	cbz	r0, 20022f74 <HAL_FLASH_SET_DUAL_MODE+0x18>
20022f5e:	6803      	ldr	r3, [r0, #0]
20022f60:	681a      	ldr	r2, [r3, #0]
20022f62:	b121      	cbz	r1, 20022f6e <HAL_FLASH_SET_DUAL_MODE+0x12>
20022f64:	f042 7280 	orr.w	r2, r2, #16777216	@ 0x1000000
20022f68:	2000      	movs	r0, #0
20022f6a:	601a      	str	r2, [r3, #0]
20022f6c:	4770      	bx	lr
20022f6e:	f022 7280 	bic.w	r2, r2, #16777216	@ 0x1000000
20022f72:	e7f9      	b.n	20022f68 <HAL_FLASH_SET_DUAL_MODE+0xc>
20022f74:	2001      	movs	r0, #1
20022f76:	4770      	bx	lr

20022f78 <HAL_MPI_EN_FIXLAT>:
20022f78:	b150      	cbz	r0, 20022f90 <HAL_MPI_EN_FIXLAT+0x18>
20022f7a:	6803      	ldr	r3, [r0, #0]
20022f7c:	689a      	ldr	r2, [r3, #8]
20022f7e:	b121      	cbz	r1, 20022f8a <HAL_MPI_EN_FIXLAT+0x12>
20022f80:	f042 4200 	orr.w	r2, r2, #2147483648	@ 0x80000000
20022f84:	2000      	movs	r0, #0
20022f86:	609a      	str	r2, [r3, #8]
20022f88:	4770      	bx	lr
20022f8a:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20022f8e:	e7f9      	b.n	20022f84 <HAL_MPI_EN_FIXLAT+0xc>
20022f90:	2001      	movs	r0, #1
20022f92:	4770      	bx	lr

20022f94 <HAL_MPI_ENABLE_DQS>:
20022f94:	b150      	cbz	r0, 20022fac <HAL_MPI_ENABLE_DQS+0x18>
20022f96:	6803      	ldr	r3, [r0, #0]
20022f98:	689a      	ldr	r2, [r3, #8]
20022f9a:	b121      	cbz	r1, 20022fa6 <HAL_MPI_ENABLE_DQS+0x12>
20022f9c:	f042 0208 	orr.w	r2, r2, #8
20022fa0:	2000      	movs	r0, #0
20022fa2:	609a      	str	r2, [r3, #8]
20022fa4:	4770      	bx	lr
20022fa6:	f022 0208 	bic.w	r2, r2, #8
20022faa:	e7f9      	b.n	20022fa0 <HAL_MPI_ENABLE_DQS+0xc>
20022fac:	2001      	movs	r0, #1
20022fae:	4770      	bx	lr

20022fb0 <HAL_MPI_SET_DQS_DELAY>:
20022fb0:	b140      	cbz	r0, 20022fc4 <HAL_MPI_SET_DQS_DELAY+0x14>
20022fb2:	6802      	ldr	r2, [r0, #0]
20022fb4:	2000      	movs	r0, #0
20022fb6:	6d93      	ldr	r3, [r2, #88]	@ 0x58
20022fb8:	f423 037f 	bic.w	r3, r3, #16711680	@ 0xff0000
20022fbc:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
20022fc0:	6591      	str	r1, [r2, #88]	@ 0x58
20022fc2:	4770      	bx	lr
20022fc4:	2001      	movs	r0, #1
20022fc6:	4770      	bx	lr

20022fc8 <HAL_MPI_SET_SCK>:
20022fc8:	b160      	cbz	r0, 20022fe4 <HAL_MPI_SET_SCK+0x1c>
20022fca:	6800      	ldr	r0, [r0, #0]
20022fcc:	0652      	lsls	r2, r2, #25
20022fce:	6d83      	ldr	r3, [r0, #88]	@ 0x58
20022fd0:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
20022fd4:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
20022fd8:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
20022fdc:	4319      	orrs	r1, r3
20022fde:	6581      	str	r1, [r0, #88]	@ 0x58
20022fe0:	2000      	movs	r0, #0
20022fe2:	4770      	bx	lr
20022fe4:	2001      	movs	r0, #1
20022fe6:	4770      	bx	lr

20022fe8 <HAL_MPI_CFG_DTR>:
20022fe8:	b510      	push	{r4, lr}
20022fea:	b1f0      	cbz	r0, 2002302a <HAL_MPI_CFG_DTR+0x42>
20022fec:	6804      	ldr	r4, [r0, #0]
20022fee:	6da0      	ldr	r0, [r4, #88]	@ 0x58
20022ff0:	b1b1      	cbz	r1, 20023020 <HAL_MPI_CFG_DTR+0x38>
20022ff2:	2a02      	cmp	r2, #2
20022ff4:	bf84      	itt	hi
20022ff6:	3a02      	subhi	r2, #2
20022ff8:	b2d2      	uxtbhi	r2, r2
20022ffa:	0213      	lsls	r3, r2, #8
20022ffc:	f36f 000f 	bfc	r0, #0, #16
20023000:	f403 43fe 	and.w	r3, r3, #32512	@ 0x7f00
20023004:	4303      	orrs	r3, r0
20023006:	0612      	lsls	r2, r2, #24
20023008:	bf54      	ite	pl
2002300a:	f043 6380 	orrpl.w	r3, r3, #67108864	@ 0x4000000
2002300e:	f043 63a0 	orrmi.w	r3, r3, #83886080	@ 0x5000000
20023012:	f043 030a 	orr.w	r3, r3, #10
20023016:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
2002301a:	2000      	movs	r0, #0
2002301c:	65a3      	str	r3, [r4, #88]	@ 0x58
2002301e:	bd10      	pop	{r4, pc}
20023020:	4b03      	ldr	r3, [pc, #12]	@ (20023030 <HAL_MPI_CFG_DTR+0x48>)
20023022:	4003      	ands	r3, r0
20023024:	f043 7300 	orr.w	r3, r3, #33554432	@ 0x2000000
20023028:	e7f7      	b.n	2002301a <HAL_MPI_CFG_DTR+0x32>
2002302a:	2001      	movs	r0, #1
2002302c:	e7f7      	b.n	2002301e <HAL_MPI_CFG_DTR+0x36>
2002302e:	bf00      	nop
20023030:	faff0000 	.word	0xfaff0000

20023034 <HAL_MPI_MODIFY_RCMD_DELAY>:
20023034:	b130      	cbz	r0, 20023044 <HAL_MPI_MODIFY_RCMD_DELAY+0x10>
20023036:	6802      	ldr	r2, [r0, #0]
20023038:	6c93      	ldr	r3, [r2, #72]	@ 0x48
2002303a:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
2002303e:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20023042:	6491      	str	r1, [r2, #72]	@ 0x48
20023044:	4770      	bx	lr

20023046 <HAL_MPI_MODIFY_WCMD_DELAY>:
20023046:	b130      	cbz	r0, 20023056 <HAL_MPI_MODIFY_WCMD_DELAY+0x10>
20023048:	6802      	ldr	r2, [r0, #0]
2002304a:	6d13      	ldr	r3, [r2, #80]	@ 0x50
2002304c:	f423 3378 	bic.w	r3, r3, #253952	@ 0x3e000
20023050:	ea43 3141 	orr.w	r1, r3, r1, lsl #13
20023054:	6511      	str	r1, [r2, #80]	@ 0x50
20023056:	4770      	bx	lr

20023058 <HAL_FLASH_CONFIG_AHB_READ>:
20023058:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
2002305a:	4605      	mov	r5, r0
2002305c:	2800      	cmp	r0, #0
2002305e:	d03d      	beq.n	200230dc <HAL_FLASH_CONFIG_AHB_READ+0x84>
20023060:	68c4      	ldr	r4, [r0, #12]
20023062:	b301      	cbz	r1, 200230a6 <HAL_FLASH_CONFIG_AHB_READ+0x4e>
20023064:	f894 306a 	ldrb.w	r3, [r4, #106]	@ 0x6a
20023068:	2b00      	cmp	r3, #0
2002306a:	d037      	beq.n	200230dc <HAL_FLASH_CONFIG_AHB_READ+0x84>
2002306c:	f994 6072 	ldrsb.w	r6, [r4, #114]	@ 0x72
20023070:	f994 306e 	ldrsb.w	r3, [r4, #110]	@ 0x6e
20023074:	f994 106c 	ldrsb.w	r1, [r4, #108]	@ 0x6c
20023078:	f994 206d 	ldrsb.w	r2, [r4, #109]	@ 0x6d
2002307c:	9603      	str	r6, [sp, #12]
2002307e:	f994 6071 	ldrsb.w	r6, [r4, #113]	@ 0x71
20023082:	9602      	str	r6, [sp, #8]
20023084:	f994 6070 	ldrsb.w	r6, [r4, #112]	@ 0x70
20023088:	9601      	str	r6, [sp, #4]
2002308a:	f994 406f 	ldrsb.w	r4, [r4, #111]	@ 0x6f
2002308e:	9400      	str	r4, [sp, #0]
20023090:	f7ff fd9e 	bl	20022bd0 <HAL_FLASH_CFG_AHB_RCMD>
20023094:	68eb      	ldr	r3, [r5, #12]
20023096:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
2002309a:	4628      	mov	r0, r5
2002309c:	f7ff fd8d 	bl	20022bba <HAL_FLASH_SET_AHB_RCMD>
200230a0:	2000      	movs	r0, #0
200230a2:	b004      	add	sp, #16
200230a4:	bd70      	pop	{r4, r5, r6, pc}
200230a6:	f894 3046 	ldrb.w	r3, [r4, #70]	@ 0x46
200230aa:	b1bb      	cbz	r3, 200230dc <HAL_FLASH_CONFIG_AHB_READ+0x84>
200230ac:	f994 604e 	ldrsb.w	r6, [r4, #78]	@ 0x4e
200230b0:	f994 304a 	ldrsb.w	r3, [r4, #74]	@ 0x4a
200230b4:	f994 1048 	ldrsb.w	r1, [r4, #72]	@ 0x48
200230b8:	f994 2049 	ldrsb.w	r2, [r4, #73]	@ 0x49
200230bc:	9603      	str	r6, [sp, #12]
200230be:	f994 604d 	ldrsb.w	r6, [r4, #77]	@ 0x4d
200230c2:	9602      	str	r6, [sp, #8]
200230c4:	f994 604c 	ldrsb.w	r6, [r4, #76]	@ 0x4c
200230c8:	9601      	str	r6, [sp, #4]
200230ca:	f994 404b 	ldrsb.w	r4, [r4, #75]	@ 0x4b
200230ce:	9400      	str	r4, [sp, #0]
200230d0:	f7ff fd7e 	bl	20022bd0 <HAL_FLASH_CFG_AHB_RCMD>
200230d4:	68eb      	ldr	r3, [r5, #12]
200230d6:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
200230da:	e7de      	b.n	2002309a <HAL_FLASH_CONFIG_AHB_READ+0x42>
200230dc:	2001      	movs	r0, #1
200230de:	e7e0      	b.n	200230a2 <HAL_FLASH_CONFIG_AHB_READ+0x4a>

200230e0 <HAL_FLASH_CONFIG_FULL_AHB_READ>:
200230e0:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
200230e2:	4605      	mov	r5, r0
200230e4:	2800      	cmp	r0, #0
200230e6:	d036      	beq.n	20023156 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x76>
200230e8:	68c4      	ldr	r4, [r0, #12]
200230ea:	b1e1      	cbz	r1, 20023126 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x46>
200230ec:	f994 616e 	ldrsb.w	r6, [r4, #366]	@ 0x16e
200230f0:	f994 316a 	ldrsb.w	r3, [r4, #362]	@ 0x16a
200230f4:	f994 1168 	ldrsb.w	r1, [r4, #360]	@ 0x168
200230f8:	f994 2169 	ldrsb.w	r2, [r4, #361]	@ 0x169
200230fc:	9603      	str	r6, [sp, #12]
200230fe:	f994 616d 	ldrsb.w	r6, [r4, #365]	@ 0x16d
20023102:	9602      	str	r6, [sp, #8]
20023104:	f994 616c 	ldrsb.w	r6, [r4, #364]	@ 0x16c
20023108:	9601      	str	r6, [sp, #4]
2002310a:	f994 416b 	ldrsb.w	r4, [r4, #363]	@ 0x16b
2002310e:	9400      	str	r4, [sp, #0]
20023110:	f7ff fd5e 	bl	20022bd0 <HAL_FLASH_CFG_AHB_RCMD>
20023114:	68eb      	ldr	r3, [r5, #12]
20023116:	f893 1166 	ldrb.w	r1, [r3, #358]	@ 0x166
2002311a:	4628      	mov	r0, r5
2002311c:	f7ff fd4d 	bl	20022bba <HAL_FLASH_SET_AHB_RCMD>
20023120:	2000      	movs	r0, #0
20023122:	b004      	add	sp, #16
20023124:	bd70      	pop	{r4, r5, r6, pc}
20023126:	f994 615c 	ldrsb.w	r6, [r4, #348]	@ 0x15c
2002312a:	f994 3158 	ldrsb.w	r3, [r4, #344]	@ 0x158
2002312e:	f994 1156 	ldrsb.w	r1, [r4, #342]	@ 0x156
20023132:	f994 2157 	ldrsb.w	r2, [r4, #343]	@ 0x157
20023136:	9603      	str	r6, [sp, #12]
20023138:	f994 615b 	ldrsb.w	r6, [r4, #347]	@ 0x15b
2002313c:	9602      	str	r6, [sp, #8]
2002313e:	f994 615a 	ldrsb.w	r6, [r4, #346]	@ 0x15a
20023142:	9601      	str	r6, [sp, #4]
20023144:	f994 4159 	ldrsb.w	r4, [r4, #345]	@ 0x159
20023148:	9400      	str	r4, [sp, #0]
2002314a:	f7ff fd41 	bl	20022bd0 <HAL_FLASH_CFG_AHB_RCMD>
2002314e:	68eb      	ldr	r3, [r5, #12]
20023150:	f893 1154 	ldrb.w	r1, [r3, #340]	@ 0x154
20023154:	e7e1      	b.n	2002311a <HAL_FLASH_CONFIG_FULL_AHB_READ+0x3a>
20023156:	2001      	movs	r0, #1
20023158:	e7e3      	b.n	20023122 <HAL_FLASH_CONFIG_FULL_AHB_READ+0x42>

2002315a <HAL_FLASH_PRE_CMD>:
2002315a:	b530      	push	{r4, r5, lr}
2002315c:	68c4      	ldr	r4, [r0, #12]
2002315e:	b087      	sub	sp, #28
20023160:	b304      	cbz	r4, 200231a4 <HAL_FLASH_PRE_CMD+0x4a>
20023162:	2938      	cmp	r1, #56	@ 0x38
20023164:	d81e      	bhi.n	200231a4 <HAL_FLASH_PRE_CMD+0x4a>
20023166:	eb01 01c1 	add.w	r1, r1, r1, lsl #3
2002316a:	440c      	add	r4, r1
2002316c:	7c23      	ldrb	r3, [r4, #16]
2002316e:	b1cb      	cbz	r3, 200231a4 <HAL_FLASH_PRE_CMD+0x4a>
20023170:	f994 5018 	ldrsb.w	r5, [r4, #24]
20023174:	f994 3013 	ldrsb.w	r3, [r4, #19]
20023178:	f994 2012 	ldrsb.w	r2, [r4, #18]
2002317c:	f994 1011 	ldrsb.w	r1, [r4, #17]
20023180:	9504      	str	r5, [sp, #16]
20023182:	f994 5017 	ldrsb.w	r5, [r4, #23]
20023186:	9503      	str	r5, [sp, #12]
20023188:	f994 5016 	ldrsb.w	r5, [r4, #22]
2002318c:	9502      	str	r5, [sp, #8]
2002318e:	f994 5015 	ldrsb.w	r5, [r4, #21]
20023192:	9501      	str	r5, [sp, #4]
20023194:	f994 4014 	ldrsb.w	r4, [r4, #20]
20023198:	9400      	str	r4, [sp, #0]
2002319a:	f7ff fdd0 	bl	20022d3e <HAL_FLASH_MANUAL_CMD>
2002319e:	2000      	movs	r0, #0
200231a0:	b007      	add	sp, #28
200231a2:	bd30      	pop	{r4, r5, pc}
200231a4:	2001      	movs	r0, #1
200231a6:	e7fb      	b.n	200231a0 <HAL_FLASH_PRE_CMD+0x46>

200231a8 <HAL_FLASH_ISSUE_CMD>:
200231a8:	b5f0      	push	{r4, r5, r6, r7, lr}
200231aa:	68c4      	ldr	r4, [r0, #12]
200231ac:	4606      	mov	r6, r0
200231ae:	4617      	mov	r7, r2
200231b0:	b087      	sub	sp, #28
200231b2:	b354      	cbz	r4, 2002320a <HAL_FLASH_ISSUE_CMD+0x62>
200231b4:	2938      	cmp	r1, #56	@ 0x38
200231b6:	d828      	bhi.n	2002320a <HAL_FLASH_ISSUE_CMD+0x62>
200231b8:	eb01 05c1 	add.w	r5, r1, r1, lsl #3
200231bc:	442c      	add	r4, r5
200231be:	7c23      	ldrb	r3, [r4, #16]
200231c0:	b31b      	cbz	r3, 2002320a <HAL_FLASH_ISSUE_CMD+0x62>
200231c2:	f994 c018 	ldrsb.w	ip, [r4, #24]
200231c6:	f994 3013 	ldrsb.w	r3, [r4, #19]
200231ca:	f994 2012 	ldrsb.w	r2, [r4, #18]
200231ce:	f994 1011 	ldrsb.w	r1, [r4, #17]
200231d2:	f8cd c010 	str.w	ip, [sp, #16]
200231d6:	f994 c017 	ldrsb.w	ip, [r4, #23]
200231da:	f8cd c00c 	str.w	ip, [sp, #12]
200231de:	f994 c016 	ldrsb.w	ip, [r4, #22]
200231e2:	f8cd c008 	str.w	ip, [sp, #8]
200231e6:	f994 c015 	ldrsb.w	ip, [r4, #21]
200231ea:	f8cd c004 	str.w	ip, [sp, #4]
200231ee:	f994 4014 	ldrsb.w	r4, [r4, #20]
200231f2:	9400      	str	r4, [sp, #0]
200231f4:	f7ff fda3 	bl	20022d3e <HAL_FLASH_MANUAL_CMD>
200231f8:	68f3      	ldr	r3, [r6, #12]
200231fa:	463a      	mov	r2, r7
200231fc:	442b      	add	r3, r5
200231fe:	4630      	mov	r0, r6
20023200:	7c19      	ldrb	r1, [r3, #16]
20023202:	f7ff fd57 	bl	20022cb4 <HAL_FLASH_SET_CMD>
20023206:	b007      	add	sp, #28
20023208:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002320a:	2001      	movs	r0, #1
2002320c:	e7fb      	b.n	20023206 <HAL_FLASH_ISSUE_CMD+0x5e>

2002320e <HAL_FLASH_ISSUE_CMD_SEQ>:
2002320e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20023212:	4690      	mov	r8, r2
20023214:	68c2      	ldr	r2, [r0, #12]
20023216:	4604      	mov	r4, r0
20023218:	b086      	sub	sp, #24
2002321a:	2a00      	cmp	r2, #0
2002321c:	d072      	beq.n	20023304 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
2002321e:	2938      	cmp	r1, #56	@ 0x38
20023220:	d870      	bhi.n	20023304 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
20023222:	eb01 07c1 	add.w	r7, r1, r1, lsl #3
20023226:	19d6      	adds	r6, r2, r7
20023228:	7c31      	ldrb	r1, [r6, #16]
2002322a:	2900      	cmp	r1, #0
2002322c:	d06a      	beq.n	20023304 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
2002322e:	2b38      	cmp	r3, #56	@ 0x38
20023230:	d868      	bhi.n	20023304 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
20023232:	eb03 05c3 	add.w	r5, r3, r3, lsl #3
20023236:	442a      	add	r2, r5
20023238:	7c13      	ldrb	r3, [r2, #16]
2002323a:	2b00      	cmp	r3, #0
2002323c:	d062      	beq.n	20023304 <HAL_FLASH_ISSUE_CMD_SEQ+0xf6>
2002323e:	f996 c018 	ldrsb.w	ip, [r6, #24]
20023242:	f996 3013 	ldrsb.w	r3, [r6, #19]
20023246:	f996 2012 	ldrsb.w	r2, [r6, #18]
2002324a:	f996 1011 	ldrsb.w	r1, [r6, #17]
2002324e:	f8cd c010 	str.w	ip, [sp, #16]
20023252:	f996 c017 	ldrsb.w	ip, [r6, #23]
20023256:	f8cd c00c 	str.w	ip, [sp, #12]
2002325a:	f996 c016 	ldrsb.w	ip, [r6, #22]
2002325e:	f8cd c008 	str.w	ip, [sp, #8]
20023262:	f996 c015 	ldrsb.w	ip, [r6, #21]
20023266:	f8cd c004 	str.w	ip, [sp, #4]
2002326a:	f996 6014 	ldrsb.w	r6, [r6, #20]
2002326e:	9600      	str	r6, [sp, #0]
20023270:	f7ff fd65 	bl	20022d3e <HAL_FLASH_MANUAL_CMD>
20023274:	68e0      	ldr	r0, [r4, #12]
20023276:	4428      	add	r0, r5
20023278:	f990 6018 	ldrsb.w	r6, [r0, #24]
2002327c:	f990 3013 	ldrsb.w	r3, [r0, #19]
20023280:	f990 2012 	ldrsb.w	r2, [r0, #18]
20023284:	f990 1011 	ldrsb.w	r1, [r0, #17]
20023288:	9604      	str	r6, [sp, #16]
2002328a:	f990 6017 	ldrsb.w	r6, [r0, #23]
2002328e:	9603      	str	r6, [sp, #12]
20023290:	f990 6016 	ldrsb.w	r6, [r0, #22]
20023294:	9602      	str	r6, [sp, #8]
20023296:	f990 6015 	ldrsb.w	r6, [r0, #21]
2002329a:	9601      	str	r6, [sp, #4]
2002329c:	f990 0014 	ldrsb.w	r0, [r0, #20]
200232a0:	9000      	str	r0, [sp, #0]
200232a2:	4620      	mov	r0, r4
200232a4:	f7ff fd6c 	bl	20022d80 <HAL_FLASH_MANUAL_CMD2>
200232a8:	2200      	movs	r2, #0
200232aa:	6823      	ldr	r3, [r4, #0]
200232ac:	2101      	movs	r1, #1
200232ae:	67da      	str	r2, [r3, #124]	@ 0x7c
200232b0:	68e3      	ldr	r3, [r4, #12]
200232b2:	6822      	ldr	r2, [r4, #0]
200232b4:	442b      	add	r3, r5
200232b6:	7c1b      	ldrb	r3, [r3, #16]
200232b8:	4620      	mov	r0, r4
200232ba:	62d3      	str	r3, [r2, #44]	@ 0x2c
200232bc:	6823      	ldr	r3, [r4, #0]
200232be:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
200232c0:	f8c3 2080 	str.w	r2, [r3, #128]	@ 0x80
200232c4:	f7ff fe01 	bl	20022eca <HAL_FLASH_ENABLE_CMD2>
200232c8:	4620      	mov	r0, r4
200232ca:	f7ff fe0c 	bl	20022ee6 <HAL_FLASH_STAUS_MATCH_CMD2>
200232ce:	6823      	ldr	r3, [r4, #0]
200232d0:	f8c3 801c 	str.w	r8, [r3, #28]
200232d4:	68e3      	ldr	r3, [r4, #12]
200232d6:	6822      	ldr	r2, [r4, #0]
200232d8:	443b      	add	r3, r7
200232da:	7c1b      	ldrb	r3, [r3, #16]
200232dc:	6193      	str	r3, [r2, #24]
200232de:	4620      	mov	r0, r4
200232e0:	f7ff fd0a 	bl	20022cf8 <HAL_FLASH_STATUS_MATCH>
200232e4:	2800      	cmp	r0, #0
200232e6:	d0fa      	beq.n	200232de <HAL_FLASH_ISSUE_CMD_SEQ+0xd0>
200232e8:	2109      	movs	r1, #9
200232ea:	4620      	mov	r0, r4
200232ec:	f7ff fcfe 	bl	20022cec <HAL_FLASH_CLR_STATUS>
200232f0:	2100      	movs	r1, #0
200232f2:	f7ff fdea 	bl	20022eca <HAL_FLASH_ENABLE_CMD2>
200232f6:	4620      	mov	r0, r4
200232f8:	f7ff fdf5 	bl	20022ee6 <HAL_FLASH_STAUS_MATCH_CMD2>
200232fc:	4608      	mov	r0, r1
200232fe:	b006      	add	sp, #24
20023300:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20023304:	2001      	movs	r0, #1
20023306:	e7fa      	b.n	200232fe <HAL_FLASH_ISSUE_CMD_SEQ+0xf0>

20023308 <nor_qspi_switch>:
20023308:	b570      	push	{r4, r5, r6, lr}
2002330a:	4604      	mov	r4, r0
2002330c:	b3e0      	cbz	r0, 20023388 <nor_qspi_switch+0x80>
2002330e:	68c3      	ldr	r3, [r0, #12]
20023310:	b3d3      	cbz	r3, 20023388 <nor_qspi_switch+0x80>
20023312:	b3c9      	cbz	r1, 20023388 <nor_qspi_switch+0x80>
20023314:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
20023318:	2101      	movs	r1, #1
2002331a:	b3b5      	cbz	r5, 2002338a <nor_qspi_switch+0x82>
2002331c:	f7ff fca5 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
20023320:	2200      	movs	r2, #0
20023322:	2114      	movs	r1, #20
20023324:	4620      	mov	r0, r4
20023326:	f7ff ff3f 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
2002332a:	4620      	mov	r0, r4
2002332c:	f7ff fcf3 	bl	20022d16 <HAL_FLASH_READ32>
20023330:	f010 0501 	ands.w	r5, r0, #1
20023334:	d000      	beq.n	20023338 <nor_qspi_switch+0x30>
20023336:	e7fe      	b.n	20023336 <nor_qspi_switch+0x2e>
20023338:	462a      	mov	r2, r5
2002333a:	2115      	movs	r1, #21
2002333c:	4620      	mov	r0, r4
2002333e:	f7ff ff33 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023342:	4606      	mov	r6, r0
20023344:	b120      	cbz	r0, 20023350 <nor_qspi_switch+0x48>
20023346:	462a      	mov	r2, r5
20023348:	4629      	mov	r1, r5
2002334a:	4620      	mov	r0, r4
2002334c:	f7ff ff2c 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023350:	2102      	movs	r1, #2
20023352:	4620      	mov	r0, r4
20023354:	f7ff fc82 	bl	20022c5c <HAL_FLASH_WRITE_WORD>
20023358:	2101      	movs	r1, #1
2002335a:	4620      	mov	r0, r4
2002335c:	f7ff fc85 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
20023360:	2200      	movs	r2, #0
20023362:	212b      	movs	r1, #43	@ 0x2b
20023364:	4620      	mov	r0, r4
20023366:	f7ff ff1f 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
2002336a:	b16e      	cbz	r6, 20023388 <nor_qspi_switch+0x80>
2002336c:	2101      	movs	r1, #1
2002336e:	4620      	mov	r0, r4
20023370:	f7ff fc7b 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
20023374:	2200      	movs	r2, #0
20023376:	2102      	movs	r1, #2
20023378:	4620      	mov	r0, r4
2002337a:	f7ff ff15 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
2002337e:	4620      	mov	r0, r4
20023380:	f7ff fcc0 	bl	20022d04 <HAL_FLASH_IS_PROG_DONE>
20023384:	2800      	cmp	r0, #0
20023386:	d0f5      	beq.n	20023374 <nor_qspi_switch+0x6c>
20023388:	bd70      	pop	{r4, r5, r6, pc}
2002338a:	f7ff fc6e 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
2002338e:	462a      	mov	r2, r5
20023390:	2102      	movs	r1, #2
20023392:	4620      	mov	r0, r4
20023394:	f7ff ff08 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023398:	4620      	mov	r0, r4
2002339a:	f7ff fcbc 	bl	20022d16 <HAL_FLASH_READ32>
2002339e:	462a      	mov	r2, r5
200233a0:	2114      	movs	r1, #20
200233a2:	4620      	mov	r0, r4
200233a4:	f7ff ff00 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
200233a8:	b910      	cbnz	r0, 200233b0 <nor_qspi_switch+0xa8>
200233aa:	4620      	mov	r0, r4
200233ac:	f7ff fcb3 	bl	20022d16 <HAL_FLASH_READ32>
200233b0:	68e3      	ldr	r3, [r4, #12]
200233b2:	7a1b      	ldrb	r3, [r3, #8]
200233b4:	b3ab      	cbz	r3, 20023422 <nor_qspi_switch+0x11a>
200233b6:	2101      	movs	r1, #1
200233b8:	f003 050f 	and.w	r5, r3, #15
200233bc:	091b      	lsrs	r3, r3, #4
200233be:	fa01 f303 	lsl.w	r3, r1, r3
200233c2:	b2db      	uxtb	r3, r3
200233c4:	b10d      	cbz	r5, 200233ca <nor_qspi_switch+0xc2>
200233c6:	461d      	mov	r5, r3
200233c8:	2300      	movs	r3, #0
200233ca:	2200      	movs	r2, #0
200233cc:	2115      	movs	r1, #21
200233ce:	4620      	mov	r0, r4
200233d0:	ea43 2505 	orr.w	r5, r3, r5, lsl #8
200233d4:	f7ff fee8 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
200233d8:	4606      	mov	r6, r0
200233da:	b120      	cbz	r0, 200233e6 <nor_qspi_switch+0xde>
200233dc:	2200      	movs	r2, #0
200233de:	4620      	mov	r0, r4
200233e0:	4611      	mov	r1, r2
200233e2:	f7ff fee1 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
200233e6:	4629      	mov	r1, r5
200233e8:	4620      	mov	r0, r4
200233ea:	f7ff fc37 	bl	20022c5c <HAL_FLASH_WRITE_WORD>
200233ee:	2102      	movs	r1, #2
200233f0:	4620      	mov	r0, r4
200233f2:	f7ff fc3a 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
200233f6:	2200      	movs	r2, #0
200233f8:	2103      	movs	r1, #3
200233fa:	4620      	mov	r0, r4
200233fc:	f7ff fed4 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023400:	2e00      	cmp	r6, #0
20023402:	d0c1      	beq.n	20023388 <nor_qspi_switch+0x80>
20023404:	2101      	movs	r1, #1
20023406:	4620      	mov	r0, r4
20023408:	f7ff fc2f 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
2002340c:	2200      	movs	r2, #0
2002340e:	2102      	movs	r1, #2
20023410:	4620      	mov	r0, r4
20023412:	f7ff fec9 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023416:	4620      	mov	r0, r4
20023418:	f7ff fc74 	bl	20022d04 <HAL_FLASH_IS_PROG_DONE>
2002341c:	2800      	cmp	r0, #0
2002341e:	d0f5      	beq.n	2002340c <nor_qspi_switch+0x104>
20023420:	e7b2      	b.n	20023388 <nor_qspi_switch+0x80>
20023422:	2502      	movs	r5, #2
20023424:	e7d1      	b.n	200233ca <nor_qspi_switch+0xc2>

20023426 <HAL_FLASH_SET_QUAL_SPI>:
20023426:	b538      	push	{r3, r4, r5, lr}
20023428:	4604      	mov	r4, r0
2002342a:	460d      	mov	r5, r1
2002342c:	f7ff ff6c 	bl	20023308 <nor_qspi_switch>
20023430:	4629      	mov	r1, r5
20023432:	4620      	mov	r0, r4
20023434:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
20023438:	f7ff be0e 	b.w	20023058 <HAL_FLASH_CONFIG_AHB_READ>

2002343c <HAL_FLASH_FADDR_SET_QSPI>:
2002343c:	b538      	push	{r3, r4, r5, lr}
2002343e:	4604      	mov	r4, r0
20023440:	460d      	mov	r5, r1
20023442:	f7ff ff61 	bl	20023308 <nor_qspi_switch>
20023446:	4629      	mov	r1, r5
20023448:	4620      	mov	r0, r4
2002344a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
2002344e:	f7ff be47 	b.w	200230e0 <HAL_FLASH_CONFIG_FULL_AHB_READ>

20023452 <HAL_FLASH_GET_NOR_ID>:
20023452:	b510      	push	{r4, lr}
20023454:	4604      	mov	r4, r0
20023456:	b140      	cbz	r0, 2002346a <HAL_FLASH_GET_NOR_ID+0x18>
20023458:	6802      	ldr	r2, [r0, #0]
2002345a:	6a93      	ldr	r3, [r2, #40]	@ 0x28
2002345c:	f36f 0315 	bfc	r3, #0, #22
20023460:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
20023464:	f043 0301 	orr.w	r3, r3, #1
20023468:	6293      	str	r3, [r2, #40]	@ 0x28
2002346a:	2103      	movs	r1, #3
2002346c:	4620      	mov	r0, r4
2002346e:	f7ff fbfc 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
20023472:	2200      	movs	r2, #0
20023474:	219f      	movs	r1, #159	@ 0x9f
20023476:	4620      	mov	r0, r4
20023478:	f7ff fc1c 	bl	20022cb4 <HAL_FLASH_SET_CMD>
2002347c:	4620      	mov	r0, r4
2002347e:	f7ff fc4a 	bl	20022d16 <HAL_FLASH_READ32>
20023482:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
20023486:	bd10      	pop	{r4, pc}

20023488 <HAL_FLASH_CLR_PROTECT>:
20023488:	b570      	push	{r4, r5, r6, lr}
2002348a:	4604      	mov	r4, r0
2002348c:	2800      	cmp	r0, #0
2002348e:	d03e      	beq.n	2002350e <HAL_FLASH_CLR_PROTECT+0x86>
20023490:	68c3      	ldr	r3, [r0, #12]
20023492:	2101      	movs	r1, #1
20023494:	f893 5193 	ldrb.w	r5, [r3, #403]	@ 0x193
20023498:	2d00      	cmp	r5, #0
2002349a:	d03b      	beq.n	20023514 <HAL_FLASH_CLR_PROTECT+0x8c>
2002349c:	f7ff fbe5 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
200234a0:	2200      	movs	r2, #0
200234a2:	2102      	movs	r1, #2
200234a4:	4620      	mov	r0, r4
200234a6:	f7ff fe7f 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
200234aa:	bb88      	cbnz	r0, 20023510 <HAL_FLASH_CLR_PROTECT+0x88>
200234ac:	4620      	mov	r0, r4
200234ae:	f7ff fc32 	bl	20022d16 <HAL_FLASH_READ32>
200234b2:	b2c0      	uxtb	r0, r0
200234b4:	68e3      	ldr	r3, [r4, #12]
200234b6:	79dd      	ldrb	r5, [r3, #7]
200234b8:	b10d      	cbz	r5, 200234be <HAL_FLASH_CLR_PROTECT+0x36>
200234ba:	ea20 0505 	bic.w	r5, r0, r5
200234be:	2200      	movs	r2, #0
200234c0:	2115      	movs	r1, #21
200234c2:	4620      	mov	r0, r4
200234c4:	f7ff fe70 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
200234c8:	4606      	mov	r6, r0
200234ca:	b120      	cbz	r0, 200234d6 <HAL_FLASH_CLR_PROTECT+0x4e>
200234cc:	2200      	movs	r2, #0
200234ce:	4620      	mov	r0, r4
200234d0:	4611      	mov	r1, r2
200234d2:	f7ff fe69 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
200234d6:	4629      	mov	r1, r5
200234d8:	4620      	mov	r0, r4
200234da:	f7ff fbbf 	bl	20022c5c <HAL_FLASH_WRITE_WORD>
200234de:	2101      	movs	r1, #1
200234e0:	4620      	mov	r0, r4
200234e2:	f7ff fbc2 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
200234e6:	2200      	movs	r2, #0
200234e8:	2103      	movs	r1, #3
200234ea:	4620      	mov	r0, r4
200234ec:	f7ff fe5c 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
200234f0:	b16e      	cbz	r6, 2002350e <HAL_FLASH_CLR_PROTECT+0x86>
200234f2:	2101      	movs	r1, #1
200234f4:	4620      	mov	r0, r4
200234f6:	f7ff fbb8 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
200234fa:	2200      	movs	r2, #0
200234fc:	2102      	movs	r1, #2
200234fe:	4620      	mov	r0, r4
20023500:	f7ff fe52 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023504:	4620      	mov	r0, r4
20023506:	f7ff fbfd 	bl	20022d04 <HAL_FLASH_IS_PROG_DONE>
2002350a:	2800      	cmp	r0, #0
2002350c:	d0f5      	beq.n	200234fa <HAL_FLASH_CLR_PROTECT+0x72>
2002350e:	bd70      	pop	{r4, r5, r6, pc}
20023510:	2000      	movs	r0, #0
20023512:	e7cf      	b.n	200234b4 <HAL_FLASH_CLR_PROTECT+0x2c>
20023514:	f7ff fba9 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
20023518:	462a      	mov	r2, r5
2002351a:	2102      	movs	r1, #2
2002351c:	4620      	mov	r0, r4
2002351e:	f7ff fe43 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023522:	2800      	cmp	r0, #0
20023524:	d13e      	bne.n	200235a4 <HAL_FLASH_CLR_PROTECT+0x11c>
20023526:	4620      	mov	r0, r4
20023528:	f7ff fbf5 	bl	20022d16 <HAL_FLASH_READ32>
2002352c:	b2c6      	uxtb	r6, r0
2002352e:	2200      	movs	r2, #0
20023530:	2114      	movs	r1, #20
20023532:	4620      	mov	r0, r4
20023534:	f7ff fe38 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023538:	b918      	cbnz	r0, 20023542 <HAL_FLASH_CLR_PROTECT+0xba>
2002353a:	4620      	mov	r0, r4
2002353c:	f7ff fbeb 	bl	20022d16 <HAL_FLASH_READ32>
20023540:	b2c5      	uxtb	r5, r0
20023542:	68e3      	ldr	r3, [r4, #12]
20023544:	79d9      	ldrb	r1, [r3, #7]
20023546:	b109      	cbz	r1, 2002354c <HAL_FLASH_CLR_PROTECT+0xc4>
20023548:	ea26 0101 	bic.w	r1, r6, r1
2002354c:	2200      	movs	r2, #0
2002354e:	4620      	mov	r0, r4
20023550:	ea41 2505 	orr.w	r5, r1, r5, lsl #8
20023554:	2115      	movs	r1, #21
20023556:	f7ff fe27 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
2002355a:	4606      	mov	r6, r0
2002355c:	b120      	cbz	r0, 20023568 <HAL_FLASH_CLR_PROTECT+0xe0>
2002355e:	2200      	movs	r2, #0
20023560:	4620      	mov	r0, r4
20023562:	4611      	mov	r1, r2
20023564:	f7ff fe20 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023568:	4629      	mov	r1, r5
2002356a:	4620      	mov	r0, r4
2002356c:	f7ff fb76 	bl	20022c5c <HAL_FLASH_WRITE_WORD>
20023570:	2102      	movs	r1, #2
20023572:	4620      	mov	r0, r4
20023574:	f7ff fb79 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
20023578:	2200      	movs	r2, #0
2002357a:	2103      	movs	r1, #3
2002357c:	4620      	mov	r0, r4
2002357e:	f7ff fe13 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023582:	2e00      	cmp	r6, #0
20023584:	d0c3      	beq.n	2002350e <HAL_FLASH_CLR_PROTECT+0x86>
20023586:	2101      	movs	r1, #1
20023588:	4620      	mov	r0, r4
2002358a:	f7ff fb6e 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
2002358e:	2200      	movs	r2, #0
20023590:	2102      	movs	r1, #2
20023592:	4620      	mov	r0, r4
20023594:	f7ff fe08 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023598:	4620      	mov	r0, r4
2002359a:	f7ff fbb3 	bl	20022d04 <HAL_FLASH_IS_PROG_DONE>
2002359e:	2800      	cmp	r0, #0
200235a0:	d0f5      	beq.n	2002358e <HAL_FLASH_CLR_PROTECT+0x106>
200235a2:	e7b4      	b.n	2002350e <HAL_FLASH_CLR_PROTECT+0x86>
200235a4:	462e      	mov	r6, r5
200235a6:	e7c2      	b.n	2002352e <HAL_FLASH_CLR_PROTECT+0xa6>

200235a8 <HAL_QSPI_SET_CLK_INV>:
200235a8:	b160      	cbz	r0, 200235c4 <HAL_QSPI_SET_CLK_INV+0x1c>
200235aa:	6800      	ldr	r0, [r0, #0]
200235ac:	b150      	cbz	r0, 200235c4 <HAL_QSPI_SET_CLK_INV+0x1c>
200235ae:	6d83      	ldr	r3, [r0, #88]	@ 0x58
200235b0:	0609      	lsls	r1, r1, #24
200235b2:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
200235b6:	f001 7180 	and.w	r1, r1, #16777216	@ 0x1000000
200235ba:	f023 03ff 	bic.w	r3, r3, #255	@ 0xff
200235be:	4311      	orrs	r1, r2
200235c0:	4319      	orrs	r1, r3
200235c2:	6581      	str	r1, [r0, #88]	@ 0x58
200235c4:	4770      	bx	lr

200235c6 <HAL_FLASH_RELEASE_DPD>:
200235c6:	b538      	push	{r3, r4, r5, lr}
200235c8:	4604      	mov	r4, r0
200235ca:	b1d0      	cbz	r0, 20023602 <HAL_FLASH_RELEASE_DPD+0x3c>
200235cc:	6803      	ldr	r3, [r0, #0]
200235ce:	21ab      	movs	r1, #171	@ 0xab
200235d0:	681d      	ldr	r5, [r3, #0]
200235d2:	f015 0501 	ands.w	r5, r5, #1
200235d6:	bf02      	ittt	eq
200235d8:	681a      	ldreq	r2, [r3, #0]
200235da:	f042 0201 	orreq.w	r2, r2, #1
200235de:	601a      	streq	r2, [r3, #0]
200235e0:	6802      	ldr	r2, [r0, #0]
200235e2:	6a93      	ldr	r3, [r2, #40]	@ 0x28
200235e4:	f36f 0315 	bfc	r3, #0, #22
200235e8:	f043 0301 	orr.w	r3, r3, #1
200235ec:	6293      	str	r3, [r2, #40]	@ 0x28
200235ee:	2200      	movs	r2, #0
200235f0:	f7ff fb60 	bl	20022cb4 <HAL_FLASH_SET_CMD>
200235f4:	b925      	cbnz	r5, 20023600 <HAL_FLASH_RELEASE_DPD+0x3a>
200235f6:	6822      	ldr	r2, [r4, #0]
200235f8:	6813      	ldr	r3, [r2, #0]
200235fa:	f023 0301 	bic.w	r3, r3, #1
200235fe:	6013      	str	r3, [r2, #0]
20023600:	bd38      	pop	{r3, r4, r5, pc}
20023602:	2001      	movs	r0, #1
20023604:	e7fc      	b.n	20023600 <HAL_FLASH_RELEASE_DPD+0x3a>

20023606 <flash_handle_valid>:
20023606:	b118      	cbz	r0, 20023610 <flash_handle_valid+0xa>
20023608:	68c0      	ldr	r0, [r0, #12]
2002360a:	3800      	subs	r0, #0
2002360c:	bf18      	it	ne
2002360e:	2001      	movne	r0, #1
20023610:	4770      	bx	lr

20023612 <HAL_GET_FLASH_MID>:
20023612:	2000      	movs	r0, #0
20023614:	4770      	bx	lr

20023616 <HAL_FLASH_DMA_START>:
20023616:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
2002361a:	4688      	mov	r8, r1
2002361c:	4699      	mov	r9, r3
2002361e:	4604      	mov	r4, r0
20023620:	2800      	cmp	r0, #0
20023622:	d045      	beq.n	200236b0 <HAL_FLASH_DMA_START+0x9a>
20023624:	6883      	ldr	r3, [r0, #8]
20023626:	2b00      	cmp	r3, #0
20023628:	d042      	beq.n	200236b0 <HAL_FLASH_DMA_START+0x9a>
2002362a:	f1b9 0f00 	cmp.w	r9, #0
2002362e:	d03f      	beq.n	200236b0 <HAL_FLASH_DMA_START+0x9a>
20023630:	6801      	ldr	r1, [r0, #0]
20023632:	680f      	ldr	r7, [r1, #0]
20023634:	b332      	cbz	r2, 20023684 <HAL_FLASH_DMA_START+0x6e>
20023636:	2210      	movs	r2, #16
20023638:	609a      	str	r2, [r3, #8]
2002363a:	2300      	movs	r3, #0
2002363c:	6882      	ldr	r2, [r0, #8]
2002363e:	464e      	mov	r6, r9
20023640:	6153      	str	r3, [r2, #20]
20023642:	6882      	ldr	r2, [r0, #8]
20023644:	6193      	str	r3, [r2, #24]
20023646:	6882      	ldr	r2, [r0, #8]
20023648:	60d3      	str	r3, [r2, #12]
2002364a:	2280      	movs	r2, #128	@ 0x80
2002364c:	6883      	ldr	r3, [r0, #8]
2002364e:	611a      	str	r2, [r3, #16]
20023650:	6805      	ldr	r5, [r0, #0]
20023652:	3504      	adds	r5, #4
20023654:	68a0      	ldr	r0, [r4, #8]
20023656:	f7fe ffa3 	bl	200225a0 <HAL_DMA_DeInit>
2002365a:	bb50      	cbnz	r0, 200236b2 <HAL_FLASH_DMA_START+0x9c>
2002365c:	68a0      	ldr	r0, [r4, #8]
2002365e:	f7fe ff3b 	bl	200224d8 <HAL_DMA_Init>
20023662:	bb30      	cbnz	r0, 200236b2 <HAL_FLASH_DMA_START+0x9c>
20023664:	6823      	ldr	r3, [r4, #0]
20023666:	f047 0720 	orr.w	r7, r7, #32
2002366a:	601f      	str	r7, [r3, #0]
2002366c:	6822      	ldr	r2, [r4, #0]
2002366e:	f109 33ff 	add.w	r3, r9, #4294967295
20023672:	6253      	str	r3, [r2, #36]	@ 0x24
20023674:	4641      	mov	r1, r8
20023676:	4633      	mov	r3, r6
20023678:	462a      	mov	r2, r5
2002367a:	68a0      	ldr	r0, [r4, #8]
2002367c:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20023680:	f7ff b8ec 	b.w	2002285c <HAL_DMA_Start>
20023684:	f44f 7100 	mov.w	r1, #512	@ 0x200
20023688:	609a      	str	r2, [r3, #8]
2002368a:	6883      	ldr	r3, [r0, #8]
2002368c:	f109 0603 	add.w	r6, r9, #3
20023690:	6159      	str	r1, [r3, #20]
20023692:	f44f 6100 	mov.w	r1, #2048	@ 0x800
20023696:	6883      	ldr	r3, [r0, #8]
20023698:	4645      	mov	r5, r8
2002369a:	6199      	str	r1, [r3, #24]
2002369c:	6883      	ldr	r3, [r0, #8]
2002369e:	08b6      	lsrs	r6, r6, #2
200236a0:	60da      	str	r2, [r3, #12]
200236a2:	2280      	movs	r2, #128	@ 0x80
200236a4:	6883      	ldr	r3, [r0, #8]
200236a6:	611a      	str	r2, [r3, #16]
200236a8:	6803      	ldr	r3, [r0, #0]
200236aa:	f103 0804 	add.w	r8, r3, #4
200236ae:	e7d1      	b.n	20023654 <HAL_FLASH_DMA_START+0x3e>
200236b0:	2001      	movs	r0, #1
200236b2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

200236b6 <HAL_FLASH_DMA_WAIT_DONE>:
200236b6:	b510      	push	{r4, lr}
200236b8:	460a      	mov	r2, r1
200236ba:	4604      	mov	r4, r0
200236bc:	b170      	cbz	r0, 200236dc <HAL_FLASH_DMA_WAIT_DONE+0x26>
200236be:	6880      	ldr	r0, [r0, #8]
200236c0:	b160      	cbz	r0, 200236dc <HAL_FLASH_DMA_WAIT_DONE+0x26>
200236c2:	6ae1      	ldr	r1, [r4, #44]	@ 0x2c
200236c4:	b111      	cbz	r1, 200236cc <HAL_FLASH_DMA_WAIT_DONE+0x16>
200236c6:	f04f 32ff 	mov.w	r2, #4294967295
200236ca:	2100      	movs	r1, #0
200236cc:	f7fe ffc8 	bl	20022660 <HAL_DMA_PollForTransfer>
200236d0:	6822      	ldr	r2, [r4, #0]
200236d2:	6813      	ldr	r3, [r2, #0]
200236d4:	f023 0320 	bic.w	r3, r3, #32
200236d8:	6013      	str	r3, [r2, #0]
200236da:	bd10      	pop	{r4, pc}
200236dc:	2001      	movs	r0, #1
200236de:	e7fc      	b.n	200236da <HAL_FLASH_DMA_WAIT_DONE+0x24>

200236e0 <HAL_FLASH_ALIAS_CFG>:
200236e0:	b538      	push	{r3, r4, r5, lr}
200236e2:	461d      	mov	r5, r3
200236e4:	4604      	mov	r4, r0
200236e6:	b158      	cbz	r0, 20023700 <HAL_FLASH_ALIAS_CFG+0x20>
200236e8:	6903      	ldr	r3, [r0, #16]
200236ea:	428b      	cmp	r3, r1
200236ec:	bf98      	it	ls
200236ee:	1ac9      	subls	r1, r1, r3
200236f0:	f7ff fb68 	bl	20022dc4 <HAL_FLASH_SET_ALIAS_RANGE>
200236f4:	4629      	mov	r1, r5
200236f6:	4620      	mov	r0, r4
200236f8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
200236fc:	f7ff bb74 	b.w	20022de8 <HAL_FLASH_SET_ALIAS_OFFSET>
20023700:	bd38      	pop	{r3, r4, r5, pc}

20023702 <HAL_FLASH_NONCE_CFG>:
20023702:	b570      	push	{r4, r5, r6, lr}
20023704:	460c      	mov	r4, r1
20023706:	4615      	mov	r5, r2
20023708:	4619      	mov	r1, r3
2002370a:	4606      	mov	r6, r0
2002370c:	b180      	cbz	r0, 20023730 <HAL_FLASH_NONCE_CFG+0x2e>
2002370e:	b17b      	cbz	r3, 20023730 <HAL_FLASH_NONCE_CFG+0x2e>
20023710:	f7ff fb86 	bl	20022e20 <HAL_FLASH_SET_NONCE>
20023714:	6933      	ldr	r3, [r6, #16]
20023716:	4630      	mov	r0, r6
20023718:	42a3      	cmp	r3, r4
2002371a:	bf98      	it	ls
2002371c:	1ae4      	subls	r4, r4, r3
2002371e:	42ab      	cmp	r3, r5
20023720:	bf98      	it	ls
20023722:	1aed      	subls	r5, r5, r3
20023724:	462a      	mov	r2, r5
20023726:	4621      	mov	r1, r4
20023728:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
2002372c:	f7ff bb66 	b.w	20022dfc <HAL_FLASH_SET_CTR>
20023730:	bd70      	pop	{r4, r5, r6, pc}

20023732 <HAL_FLASH_AES_CFG>:
20023732:	b510      	push	{r4, lr}
20023734:	4604      	mov	r4, r0
20023736:	b148      	cbz	r0, 2002374c <HAL_FLASH_AES_CFG+0x1a>
20023738:	b101      	cbz	r1, 2002373c <HAL_FLASH_AES_CFG+0xa>
2002373a:	2101      	movs	r1, #1
2002373c:	f7ff fb7e 	bl	20022e3c <HAL_FLASH_SET_AES>
20023740:	4620      	mov	r0, r4
20023742:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20023746:	2101      	movs	r1, #1
20023748:	f7ff bb87 	b.w	20022e5a <HAL_FLASH_ENABLE_AES>
2002374c:	bd10      	pop	{r4, pc}

2002374e <nand_read_id>:
2002374e:	b510      	push	{r4, lr}
20023750:	460b      	mov	r3, r1
20023752:	4604      	mov	r4, r0
20023754:	b086      	sub	sp, #24
20023756:	b320      	cbz	r0, 200237a2 <nand_read_id+0x54>
20023758:	2908      	cmp	r1, #8
2002375a:	f04f 0100 	mov.w	r1, #0
2002375e:	f04f 0201 	mov.w	r2, #1
20023762:	bf83      	ittte	hi
20023764:	460b      	movhi	r3, r1
20023766:	e9cd 1202 	strdhi	r1, r2, [sp, #8]
2002376a:	e9cd 1100 	strdhi	r1, r1, [sp]
2002376e:	e9cd 1102 	strdls	r1, r1, [sp, #8]
20023772:	bf8e      	itee	hi
20023774:	4619      	movhi	r1, r3
20023776:	e9cd 1100 	strdls	r1, r1, [sp]
2002377a:	b25b      	sxtbls	r3, r3
2002377c:	9204      	str	r2, [sp, #16]
2002377e:	f7ff fade 	bl	20022d3e <HAL_FLASH_MANUAL_CMD>
20023782:	2103      	movs	r1, #3
20023784:	4620      	mov	r0, r4
20023786:	f7ff fa70 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
2002378a:	2200      	movs	r2, #0
2002378c:	219f      	movs	r1, #159	@ 0x9f
2002378e:	4620      	mov	r0, r4
20023790:	f7ff fa90 	bl	20022cb4 <HAL_FLASH_SET_CMD>
20023794:	4620      	mov	r0, r4
20023796:	f7ff fabe 	bl	20022d16 <HAL_FLASH_READ32>
2002379a:	f020 407f 	bic.w	r0, r0, #4278190080	@ 0xff000000
2002379e:	b006      	add	sp, #24
200237a0:	bd10      	pop	{r4, pc}
200237a2:	20ff      	movs	r0, #255	@ 0xff
200237a4:	e7fb      	b.n	2002379e <nand_read_id+0x50>

200237a6 <HAL_NAND_CONF_ECC>:
200237a6:	b538      	push	{r3, r4, r5, lr}
200237a8:	460d      	mov	r5, r1
200237aa:	4604      	mov	r4, r0
200237ac:	b398      	cbz	r0, 20023816 <HAL_NAND_CONF_ECC+0x70>
200237ae:	68c3      	ldr	r3, [r0, #12]
200237b0:	b38b      	cbz	r3, 20023816 <HAL_NAND_CONF_ECC+0x70>
200237b2:	799a      	ldrb	r2, [r3, #6]
200237b4:	b392      	cbz	r2, 2002381c <HAL_NAND_CONF_ECC+0x76>
200237b6:	7a9b      	ldrb	r3, [r3, #10]
200237b8:	b383      	cbz	r3, 2002381c <HAL_NAND_CONF_ECC+0x76>
200237ba:	2101      	movs	r1, #1
200237bc:	f7ff fa55 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
200237c0:	68e3      	ldr	r3, [r4, #12]
200237c2:	2102      	movs	r1, #2
200237c4:	799a      	ldrb	r2, [r3, #6]
200237c6:	4620      	mov	r0, r4
200237c8:	f7ff fcee 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
200237cc:	4620      	mov	r0, r4
200237ce:	f7ff faa2 	bl	20022d16 <HAL_FLASH_READ32>
200237d2:	68e3      	ldr	r3, [r4, #12]
200237d4:	7a9b      	ldrb	r3, [r3, #10]
200237d6:	b1dd      	cbz	r5, 20023810 <HAL_NAND_CONF_ECC+0x6a>
200237d8:	ea43 0100 	orr.w	r1, r3, r0
200237dc:	4620      	mov	r0, r4
200237de:	f7ff fa3d 	bl	20022c5c <HAL_FLASH_WRITE_WORD>
200237e2:	2101      	movs	r1, #1
200237e4:	4620      	mov	r0, r4
200237e6:	f7ff fa40 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
200237ea:	68e3      	ldr	r3, [r4, #12]
200237ec:	2103      	movs	r1, #3
200237ee:	799a      	ldrb	r2, [r3, #6]
200237f0:	4620      	mov	r0, r4
200237f2:	f7ff fcd9 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
200237f6:	68e3      	ldr	r3, [r4, #12]
200237f8:	f884 5025 	strb.w	r5, [r4, #37]	@ 0x25
200237fc:	2102      	movs	r1, #2
200237fe:	799a      	ldrb	r2, [r3, #6]
20023800:	4620      	mov	r0, r4
20023802:	f7ff fcd1 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023806:	4620      	mov	r0, r4
20023808:	f7ff fa85 	bl	20022d16 <HAL_FLASH_READ32>
2002380c:	2000      	movs	r0, #0
2002380e:	bd38      	pop	{r3, r4, r5, pc}
20023810:	ea20 0103 	bic.w	r1, r0, r3
20023814:	e7e2      	b.n	200237dc <HAL_NAND_CONF_ECC+0x36>
20023816:	f04f 30ff 	mov.w	r0, #4294967295
2002381a:	e7f8      	b.n	2002380e <HAL_NAND_CONF_ECC+0x68>
2002381c:	f06f 0001 	mvn.w	r0, #1
20023820:	e7f5      	b.n	2002380e <HAL_NAND_CONF_ECC+0x68>

20023822 <HAL_NAND_GET_ECC_STATUS>:
20023822:	b510      	push	{r4, lr}
20023824:	4604      	mov	r4, r0
20023826:	b320      	cbz	r0, 20023872 <HAL_NAND_GET_ECC_STATUS+0x50>
20023828:	68c2      	ldr	r2, [r0, #12]
2002382a:	b31a      	cbz	r2, 20023874 <HAL_NAND_GET_ECC_STATUS+0x52>
2002382c:	7913      	ldrb	r3, [r2, #4]
2002382e:	b31b      	cbz	r3, 20023878 <HAL_NAND_GET_ECC_STATUS+0x56>
20023830:	79d3      	ldrb	r3, [r2, #7]
20023832:	b30b      	cbz	r3, 20023878 <HAL_NAND_GET_ECC_STATUS+0x56>
20023834:	2101      	movs	r1, #1
20023836:	f7ff fa18 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
2002383a:	68e3      	ldr	r3, [r4, #12]
2002383c:	2102      	movs	r1, #2
2002383e:	791a      	ldrb	r2, [r3, #4]
20023840:	4620      	mov	r0, r4
20023842:	f7ff fcb1 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023846:	4620      	mov	r0, r4
20023848:	f7ff fa65 	bl	20022d16 <HAL_FLASH_READ32>
2002384c:	f894 2024 	ldrb.w	r2, [r4, #36]	@ 0x24
20023850:	2a3f      	cmp	r2, #63	@ 0x3f
20023852:	ea4f 1312 	mov.w	r3, r2, lsr #4
20023856:	d804      	bhi.n	20023862 <HAL_NAND_GET_ECC_STATUS+0x40>
20023858:	2b01      	cmp	r3, #1
2002385a:	d808      	bhi.n	2002386e <HAL_NAND_GET_ECC_STATUS+0x4c>
2002385c:	f000 0030 	and.w	r0, r0, #48	@ 0x30
20023860:	e007      	b.n	20023872 <HAL_NAND_GET_ECC_STATUS+0x50>
20023862:	3b04      	subs	r3, #4
20023864:	2b01      	cmp	r3, #1
20023866:	d8f9      	bhi.n	2002385c <HAL_NAND_GET_ECC_STATUS+0x3a>
20023868:	f000 00f0 	and.w	r0, r0, #240	@ 0xf0
2002386c:	e001      	b.n	20023872 <HAL_NAND_GET_ECC_STATUS+0x50>
2002386e:	f000 0070 	and.w	r0, r0, #112	@ 0x70
20023872:	bd10      	pop	{r4, pc}
20023874:	4610      	mov	r0, r2
20023876:	e7fc      	b.n	20023872 <HAL_NAND_GET_ECC_STATUS+0x50>
20023878:	4618      	mov	r0, r3
2002387a:	e7fa      	b.n	20023872 <HAL_NAND_GET_ECC_STATUS+0x50>

2002387c <HAL_NAND_CHECK_ECC>:
2002387c:	4603      	mov	r3, r0
2002387e:	1108      	asrs	r0, r1, #4
20023880:	b172      	cbz	r2, 200238a0 <HAL_NAND_CHECK_ECC+0x24>
20023882:	2b06      	cmp	r3, #6
20023884:	d80c      	bhi.n	200238a0 <HAL_NAND_CHECK_ECC+0x24>
20023886:	e8df f003 	tbb	[pc, r3]
2002388a:	0d04      	.short	0x0d04
2002388c:	3f352e18 	.word	0x3f352e18
20023890:	47          	.byte	0x47
20023891:	00          	.byte	0x00
20023892:	b128      	cbz	r0, 200238a0 <HAL_NAND_CHECK_ECC+0x24>
20023894:	2801      	cmp	r0, #1
20023896:	6813      	ldr	r3, [r2, #0]
20023898:	d10a      	bne.n	200238b0 <HAL_NAND_CHECK_ECC+0x34>
2002389a:	f043 0301 	orr.w	r3, r3, #1
2002389e:	6013      	str	r3, [r2, #0]
200238a0:	2000      	movs	r0, #0
200238a2:	4770      	bx	lr
200238a4:	f020 0302 	bic.w	r3, r0, #2
200238a8:	2b01      	cmp	r3, #1
200238aa:	d003      	beq.n	200238b4 <HAL_NAND_CHECK_ECC+0x38>
200238ac:	b1d0      	cbz	r0, 200238e4 <HAL_NAND_CHECK_ECC+0x68>
200238ae:	6813      	ldr	r3, [r2, #0]
200238b0:	4303      	orrs	r3, r0
200238b2:	e016      	b.n	200238e2 <HAL_NAND_CHECK_ECC+0x66>
200238b4:	6813      	ldr	r3, [r2, #0]
200238b6:	4303      	orrs	r3, r0
200238b8:	e7f1      	b.n	2002389e <HAL_NAND_CHECK_ECC+0x22>
200238ba:	2805      	cmp	r0, #5
200238bc:	d8f7      	bhi.n	200238ae <HAL_NAND_CHECK_ECC+0x32>
200238be:	a301      	add	r3, pc, #4	@ (adr r3, 200238c4 <HAL_NAND_CHECK_ECC+0x48>)
200238c0:	f853 f020 	ldr.w	pc, [r3, r0, lsl #2]
200238c4:	200238a1 	.word	0x200238a1
200238c8:	200238b5 	.word	0x200238b5
200238cc:	200238dd 	.word	0x200238dd
200238d0:	200238b5 	.word	0x200238b5
200238d4:	200238af 	.word	0x200238af
200238d8:	200238b5 	.word	0x200238b5
200238dc:	6813      	ldr	r3, [r2, #0]
200238de:	f043 0302 	orr.w	r3, r3, #2
200238e2:	6013      	str	r3, [r2, #0]
200238e4:	4770      	bx	lr
200238e6:	2800      	cmp	r0, #0
200238e8:	d0da      	beq.n	200238a0 <HAL_NAND_CHECK_ECC+0x24>
200238ea:	1e43      	subs	r3, r0, #1
200238ec:	2b05      	cmp	r3, #5
200238ee:	6813      	ldr	r3, [r2, #0]
200238f0:	d9e1      	bls.n	200238b6 <HAL_NAND_CHECK_ECC+0x3a>
200238f2:	e7dd      	b.n	200238b0 <HAL_NAND_CHECK_ECC+0x34>
200238f4:	07c3      	lsls	r3, r0, #31
200238f6:	f000 0103 	and.w	r1, r0, #3
200238fa:	d402      	bmi.n	20023902 <HAL_NAND_CHECK_ECC+0x86>
200238fc:	2900      	cmp	r1, #0
200238fe:	d0cf      	beq.n	200238a0 <HAL_NAND_CHECK_ECC+0x24>
20023900:	e7d5      	b.n	200238ae <HAL_NAND_CHECK_ECC+0x32>
20023902:	6813      	ldr	r3, [r2, #0]
20023904:	430b      	orrs	r3, r1
20023906:	e7ca      	b.n	2002389e <HAL_NAND_CHECK_ECC+0x22>
20023908:	2800      	cmp	r0, #0
2002390a:	d0c9      	beq.n	200238a0 <HAL_NAND_CHECK_ECC+0x24>
2002390c:	6813      	ldr	r3, [r2, #0]
2002390e:	2808      	cmp	r0, #8
20023910:	ea43 0300 	orr.w	r3, r3, r0
20023914:	dce5      	bgt.n	200238e2 <HAL_NAND_CHECK_ECC+0x66>
20023916:	e7c2      	b.n	2002389e <HAL_NAND_CHECK_ECC+0x22>
20023918:	2800      	cmp	r0, #0
2002391a:	d0c1      	beq.n	200238a0 <HAL_NAND_CHECK_ECC+0x24>
2002391c:	1e43      	subs	r3, r0, #1
2002391e:	2b01      	cmp	r3, #1
20023920:	e7e5      	b.n	200238ee <HAL_NAND_CHECK_ECC+0x72>
20023922:	bf00      	nop

20023924 <HAL_NAND_GET_ECC_RESULT>:
20023924:	b510      	push	{r4, lr}
20023926:	f890 3025 	ldrb.w	r3, [r0, #37]	@ 0x25
2002392a:	4604      	mov	r4, r0
2002392c:	b183      	cbz	r3, 20023950 <HAL_NAND_GET_ECC_RESULT+0x2c>
2002392e:	f7ff ff78 	bl	20023822 <HAL_NAND_GET_ECC_STATUS>
20023932:	4601      	mov	r1, r0
20023934:	b160      	cbz	r0, 20023950 <HAL_NAND_GET_ECC_RESULT+0x2c>
20023936:	4622      	mov	r2, r4
20023938:	6863      	ldr	r3, [r4, #4]
2002393a:	f443 4300 	orr.w	r3, r3, #32768	@ 0x8000
2002393e:	f842 3f04 	str.w	r3, [r2, #4]!
20023942:	f894 0024 	ldrb.w	r0, [r4, #36]	@ 0x24
20023946:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002394a:	0900      	lsrs	r0, r0, #4
2002394c:	f7ff bf96 	b.w	2002387c <HAL_NAND_CHECK_ECC>
20023950:	2000      	movs	r0, #0
20023952:	bd10      	pop	{r4, pc}

20023954 <HAL_NAND_EN_QUAL>:
20023954:	b538      	push	{r3, r4, r5, lr}
20023956:	460d      	mov	r5, r1
20023958:	4604      	mov	r4, r0
2002395a:	b348      	cbz	r0, 200239b0 <HAL_NAND_EN_QUAL+0x5c>
2002395c:	68c3      	ldr	r3, [r0, #12]
2002395e:	b33b      	cbz	r3, 200239b0 <HAL_NAND_EN_QUAL+0x5c>
20023960:	799a      	ldrb	r2, [r3, #6]
20023962:	b10a      	cbz	r2, 20023968 <HAL_NAND_EN_QUAL+0x14>
20023964:	7a1b      	ldrb	r3, [r3, #8]
20023966:	b90b      	cbnz	r3, 2002396c <HAL_NAND_EN_QUAL+0x18>
20023968:	2000      	movs	r0, #0
2002396a:	bd38      	pop	{r3, r4, r5, pc}
2002396c:	2101      	movs	r1, #1
2002396e:	f7ff f97c 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
20023972:	68e3      	ldr	r3, [r4, #12]
20023974:	2102      	movs	r1, #2
20023976:	799a      	ldrb	r2, [r3, #6]
20023978:	4620      	mov	r0, r4
2002397a:	f7ff fc15 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
2002397e:	4620      	mov	r0, r4
20023980:	f7ff f9c9 	bl	20022d16 <HAL_FLASH_READ32>
20023984:	68e3      	ldr	r3, [r4, #12]
20023986:	7a1b      	ldrb	r3, [r3, #8]
20023988:	b17d      	cbz	r5, 200239aa <HAL_NAND_EN_QUAL+0x56>
2002398a:	ea43 0100 	orr.w	r1, r3, r0
2002398e:	4620      	mov	r0, r4
20023990:	f7ff f964 	bl	20022c5c <HAL_FLASH_WRITE_WORD>
20023994:	2101      	movs	r1, #1
20023996:	4620      	mov	r0, r4
20023998:	f7ff f967 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
2002399c:	68e3      	ldr	r3, [r4, #12]
2002399e:	2103      	movs	r1, #3
200239a0:	4620      	mov	r0, r4
200239a2:	799a      	ldrb	r2, [r3, #6]
200239a4:	f7ff fc00 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
200239a8:	e7de      	b.n	20023968 <HAL_NAND_EN_QUAL+0x14>
200239aa:	ea20 0103 	bic.w	r1, r0, r3
200239ae:	e7ee      	b.n	2002398e <HAL_NAND_EN_QUAL+0x3a>
200239b0:	f04f 30ff 	mov.w	r0, #4294967295
200239b4:	e7d9      	b.n	2002396a <HAL_NAND_EN_QUAL+0x16>

200239b6 <nand_clear_status>:
200239b6:	b510      	push	{r4, lr}
200239b8:	4604      	mov	r4, r0
200239ba:	2101      	movs	r1, #1
200239bc:	f7ff f955 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
200239c0:	2102      	movs	r1, #2
200239c2:	4620      	mov	r0, r4
200239c4:	f7ff f94a 	bl	20022c5c <HAL_FLASH_WRITE_WORD>
200239c8:	68e3      	ldr	r3, [r4, #12]
200239ca:	2103      	movs	r1, #3
200239cc:	795a      	ldrb	r2, [r3, #5]
200239ce:	4620      	mov	r0, r4
200239d0:	f7ff fbea 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
200239d4:	2100      	movs	r1, #0
200239d6:	4620      	mov	r0, r4
200239d8:	f7ff f940 	bl	20022c5c <HAL_FLASH_WRITE_WORD>
200239dc:	68e3      	ldr	r3, [r4, #12]
200239de:	2103      	movs	r1, #3
200239e0:	4620      	mov	r0, r4
200239e2:	795a      	ldrb	r2, [r3, #5]
200239e4:	f7ff fbe0 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
200239e8:	2000      	movs	r0, #0
200239ea:	bd10      	pop	{r4, pc}

200239ec <HAL_NAND_PAGE_SIZE>:
200239ec:	b140      	cbz	r0, 20023a00 <HAL_NAND_PAGE_SIZE+0x14>
200239ee:	f890 3024 	ldrb.w	r3, [r0, #36]	@ 0x24
200239f2:	f013 0f01 	tst.w	r3, #1
200239f6:	bf14      	ite	ne
200239f8:	f44f 5080 	movne.w	r0, #4096	@ 0x1000
200239fc:	f44f 6000 	moveq.w	r0, #2048	@ 0x800
20023a00:	4770      	bx	lr
	...

20023a04 <HAL_NAND_READ_WITHOOB>:
20023a04:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20023a08:	b091      	sub	sp, #68	@ 0x44
20023a0a:	460e      	mov	r6, r1
20023a0c:	4692      	mov	sl, r2
20023a0e:	461d      	mov	r5, r3
20023a10:	4604      	mov	r4, r0
20023a12:	9f1b      	ldr	r7, [sp, #108]	@ 0x6c
20023a14:	b128      	cbz	r0, 20023a22 <HAL_NAND_READ_WITHOOB+0x1e>
20023a16:	68c3      	ldr	r3, [r0, #12]
20023a18:	b11b      	cbz	r3, 20023a22 <HAL_NAND_READ_WITHOOB+0x1e>
20023a1a:	69c3      	ldr	r3, [r0, #28]
20023a1c:	b10b      	cbz	r3, 20023a22 <HAL_NAND_READ_WITHOOB+0x1e>
20023a1e:	2f80      	cmp	r7, #128	@ 0x80
20023a20:	d905      	bls.n	20023a2e <HAL_NAND_READ_WITHOOB+0x2a>
20023a22:	2301      	movs	r3, #1
20023a24:	6063      	str	r3, [r4, #4]
20023a26:	2000      	movs	r0, #0
20023a28:	b011      	add	sp, #68	@ 0x44
20023a2a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20023a2e:	f7ff ffdd 	bl	200239ec <HAL_NAND_PAGE_SIZE>
20023a32:	f100 39ff 	add.w	r9, r0, #4294967295
20023a36:	ea09 0901 	and.w	r9, r9, r1
20023a3a:	eb09 0305 	add.w	r3, r9, r5
20023a3e:	4283      	cmp	r3, r0
20023a40:	4680      	mov	r8, r0
20023a42:	d901      	bls.n	20023a48 <HAL_NAND_READ_WITHOOB+0x44>
20023a44:	2302      	movs	r3, #2
20023a46:	e7ed      	b.n	20023a24 <HAL_NAND_READ_WITHOOB+0x20>
20023a48:	2300      	movs	r3, #0
20023a4a:	6063      	str	r3, [r4, #4]
20023a4c:	6923      	ldr	r3, [r4, #16]
20023a4e:	f04f 0b00 	mov.w	fp, #0
20023a52:	428b      	cmp	r3, r1
20023a54:	bf98      	it	ls
20023a56:	1ace      	subls	r6, r1, r3
20023a58:	fbb6 f2f0 	udiv	r2, r6, r0
20023a5c:	2104      	movs	r1, #4
20023a5e:	4620      	mov	r0, r4
20023a60:	f7ff fba2 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023a64:	2014      	movs	r0, #20
20023a66:	f7fe f9ff 	bl	20021e68 <HAL_Delay_us_>
20023a6a:	2101      	movs	r1, #1
20023a6c:	4620      	mov	r0, r4
20023a6e:	f7ff f8fc 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
20023a72:	2005      	movs	r0, #5
20023a74:	f7fe f9f8 	bl	20021e68 <HAL_Delay_us_>
20023a78:	68e3      	ldr	r3, [r4, #12]
20023a7a:	2102      	movs	r1, #2
20023a7c:	791a      	ldrb	r2, [r3, #4]
20023a7e:	4620      	mov	r0, r4
20023a80:	f7ff fb92 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023a84:	4620      	mov	r0, r4
20023a86:	f7ff f946 	bl	20022d16 <HAL_FLASH_READ32>
20023a8a:	07c3      	lsls	r3, r0, #31
20023a8c:	d4f1      	bmi.n	20023a72 <HAL_NAND_READ_WITHOOB+0x6e>
20023a8e:	f1bb 0f00 	cmp.w	fp, #0
20023a92:	d102      	bne.n	20023a9a <HAL_NAND_READ_WITHOOB+0x96>
20023a94:	f04f 0b01 	mov.w	fp, #1
20023a98:	e7eb      	b.n	20023a72 <HAL_NAND_READ_WITHOOB+0x6e>
20023a9a:	4620      	mov	r0, r4
20023a9c:	f7ff ff42 	bl	20023924 <HAL_NAND_GET_ECC_RESULT>
20023aa0:	b118      	cbz	r0, 20023aaa <HAL_NAND_READ_WITHOOB+0xa6>
20023aa2:	f440 4000 	orr.w	r0, r0, #32768	@ 0x8000
20023aa6:	6060      	str	r0, [r4, #4]
20023aa8:	e7bd      	b.n	20023a26 <HAL_NAND_READ_WITHOOB+0x22>
20023aaa:	f894 2020 	ldrb.w	r2, [r4, #32]
20023aae:	68e3      	ldr	r3, [r4, #12]
20023ab0:	2a00      	cmp	r2, #0
20023ab2:	d140      	bne.n	20023b36 <HAL_NAND_READ_WITHOOB+0x132>
20023ab4:	f893 1046 	ldrb.w	r1, [r3, #70]	@ 0x46
20023ab8:	4620      	mov	r0, r4
20023aba:	f7ff f87e 	bl	20022bba <HAL_FLASH_SET_AHB_RCMD>
20023abe:	68e0      	ldr	r0, [r4, #12]
20023ac0:	f990 c04e 	ldrsb.w	ip, [r0, #78]	@ 0x4e
20023ac4:	f990 304a 	ldrsb.w	r3, [r0, #74]	@ 0x4a
20023ac8:	f990 2049 	ldrsb.w	r2, [r0, #73]	@ 0x49
20023acc:	f990 1048 	ldrsb.w	r1, [r0, #72]	@ 0x48
20023ad0:	f8cd c00c 	str.w	ip, [sp, #12]
20023ad4:	f990 c04d 	ldrsb.w	ip, [r0, #77]	@ 0x4d
20023ad8:	f8cd c008 	str.w	ip, [sp, #8]
20023adc:	f990 c04c 	ldrsb.w	ip, [r0, #76]	@ 0x4c
20023ae0:	f8cd c004 	str.w	ip, [sp, #4]
20023ae4:	f990 004b 	ldrsb.w	r0, [r0, #75]	@ 0x4b
20023ae8:	9000      	str	r0, [sp, #0]
20023aea:	4620      	mov	r0, r4
20023aec:	f7ff f870 	bl	20022bd0 <HAL_FLASH_CFG_AHB_RCMD>
20023af0:	03b0      	lsls	r0, r6, #14
20023af2:	f8d4 b010 	ldr.w	fp, [r4, #16]
20023af6:	d504      	bpl.n	20023b02 <HAL_NAND_READ_WITHOOB+0xfe>
20023af8:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
20023afc:	b10b      	cbz	r3, 20023b02 <HAL_NAND_READ_WITHOOB+0xfe>
20023afe:	f44b 5b80 	orr.w	fp, fp, #4096	@ 0x1000
20023b02:	ea4a 0305 	orr.w	r3, sl, r5
20023b06:	ea43 0309 	orr.w	r3, r3, r9
20023b0a:	f013 0303 	ands.w	r3, r3, #3
20023b0e:	d102      	bne.n	20023b16 <HAL_NAND_READ_WITHOOB+0x112>
20023b10:	1e6a      	subs	r2, r5, #1
20023b12:	2afe      	cmp	r2, #254	@ 0xfe
20023b14:	d82a      	bhi.n	20023b6c <HAL_NAND_READ_WITHOOB+0x168>
20023b16:	462a      	mov	r2, r5
20023b18:	4650      	mov	r0, sl
20023b1a:	eb0b 0109 	add.w	r1, fp, r9
20023b1e:	f006 febf 	bl	2002a8a0 <memcpy>
20023b22:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20023b24:	b12b      	cbz	r3, 20023b32 <HAL_NAND_READ_WITHOOB+0x12e>
20023b26:	463a      	mov	r2, r7
20023b28:	4618      	mov	r0, r3
20023b2a:	eb0b 0108 	add.w	r1, fp, r8
20023b2e:	f006 feb7 	bl	2002a8a0 <memcpy>
20023b32:	1978      	adds	r0, r7, r5
20023b34:	e778      	b.n	20023a28 <HAL_NAND_READ_WITHOOB+0x24>
20023b36:	f893 106a 	ldrb.w	r1, [r3, #106]	@ 0x6a
20023b3a:	4620      	mov	r0, r4
20023b3c:	f7ff f83d 	bl	20022bba <HAL_FLASH_SET_AHB_RCMD>
20023b40:	68e0      	ldr	r0, [r4, #12]
20023b42:	f990 c072 	ldrsb.w	ip, [r0, #114]	@ 0x72
20023b46:	f990 306e 	ldrsb.w	r3, [r0, #110]	@ 0x6e
20023b4a:	f990 206d 	ldrsb.w	r2, [r0, #109]	@ 0x6d
20023b4e:	f990 106c 	ldrsb.w	r1, [r0, #108]	@ 0x6c
20023b52:	f8cd c00c 	str.w	ip, [sp, #12]
20023b56:	f990 c071 	ldrsb.w	ip, [r0, #113]	@ 0x71
20023b5a:	f8cd c008 	str.w	ip, [sp, #8]
20023b5e:	f990 c070 	ldrsb.w	ip, [r0, #112]	@ 0x70
20023b62:	f8cd c004 	str.w	ip, [sp, #4]
20023b66:	f990 006f 	ldrsb.w	r0, [r0, #111]	@ 0x6f
20023b6a:	e7bd      	b.n	20023ae8 <HAL_NAND_READ_WITHOOB+0xe4>
20023b6c:	f1ba 0f00 	cmp.w	sl, #0
20023b70:	d0d7      	beq.n	20023b22 <HAL_NAND_READ_WITHOOB+0x11e>
20023b72:	491c      	ldr	r1, [pc, #112]	@ (20023be4 <HAL_NAND_READ_WITHOOB+0x1e0>)
20023b74:	4a1c      	ldr	r2, [pc, #112]	@ (20023be8 <HAL_NAND_READ_WITHOOB+0x1e4>)
20023b76:	a804      	add	r0, sp, #16
20023b78:	e9cd 1205 	strd	r1, r2, [sp, #20]
20023b7c:	f88d 301c 	strb.w	r3, [sp, #28]
20023b80:	f7fe ff2c 	bl	200229dc <HAL_EXT_DMA_Init>
20023b84:	b150      	cbz	r0, 20023b9c <HAL_NAND_READ_WITHOOB+0x198>
20023b86:	990f      	ldr	r1, [sp, #60]	@ 0x3c
20023b88:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023b8c:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
20023b90:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023b94:	f041 4100 	orr.w	r1, r1, #2147483648	@ 0x80000000
20023b98:	6061      	str	r1, [r4, #4]
20023b9a:	e744      	b.n	20023a26 <HAL_NAND_READ_WITHOOB+0x22>
20023b9c:	eb0b 0109 	add.w	r1, fp, r9
20023ba0:	4652      	mov	r2, sl
20023ba2:	08ab      	lsrs	r3, r5, #2
20023ba4:	a804      	add	r0, sp, #16
20023ba6:	f7fe ff3b 	bl	20022a20 <HAL_EXT_DMA_Start>
20023baa:	4601      	mov	r1, r0
20023bac:	b980      	cbnz	r0, 20023bd0 <HAL_NAND_READ_WITHOOB+0x1cc>
20023bae:	f44f 727a 	mov.w	r2, #1000	@ 0x3e8
20023bb2:	a804      	add	r0, sp, #16
20023bb4:	f7fe ff5b 	bl	20022a6e <HAL_EXT_DMA_PollForTransfer>
20023bb8:	2800      	cmp	r0, #0
20023bba:	d0b2      	beq.n	20023b22 <HAL_NAND_READ_WITHOOB+0x11e>
20023bbc:	990f      	ldr	r1, [sp, #60]	@ 0x3c
20023bbe:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023bc2:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
20023bc6:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023bca:	f041 4160 	orr.w	r1, r1, #3758096384	@ 0xe0000000
20023bce:	e7e3      	b.n	20023b98 <HAL_NAND_READ_WITHOOB+0x194>
20023bd0:	9a0f      	ldr	r2, [sp, #60]	@ 0x3c
20023bd2:	f89d 3029 	ldrb.w	r3, [sp, #41]	@ 0x29
20023bd6:	ea40 4102 	orr.w	r1, r0, r2, lsl #16
20023bda:	ea41 2103 	orr.w	r1, r1, r3, lsl #8
20023bde:	f041 4140 	orr.w	r1, r1, #3221225472	@ 0xc0000000
20023be2:	e7d9      	b.n	20023b98 <HAL_NAND_READ_WITHOOB+0x194>
20023be4:	000c0080 	.word	0x000c0080
20023be8:	00030040 	.word	0x00030040

20023bec <HAL_NAND_BLOCK_SIZE>:
20023bec:	b508      	push	{r3, lr}
20023bee:	4602      	mov	r2, r0
20023bf0:	f7ff fefc 	bl	200239ec <HAL_NAND_PAGE_SIZE>
20023bf4:	b128      	cbz	r0, 20023c02 <HAL_NAND_BLOCK_SIZE+0x16>
20023bf6:	f892 3024 	ldrb.w	r3, [r2, #36]	@ 0x24
20023bfa:	079b      	lsls	r3, r3, #30
20023bfc:	bf4c      	ite	mi
20023bfe:	01c0      	lslmi	r0, r0, #7
20023c00:	0180      	lslpl	r0, r0, #6
20023c02:	bd08      	pop	{r3, pc}

20023c04 <HAL_NAND_GET_BADBLK>:
20023c04:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20023c06:	4604      	mov	r4, r0
20023c08:	b910      	cbnz	r0, 20023c10 <HAL_NAND_GET_BADBLK+0xc>
20023c0a:	2000      	movs	r0, #0
20023c0c:	b004      	add	sp, #16
20023c0e:	bd10      	pop	{r4, pc}
20023c10:	69c3      	ldr	r3, [r0, #28]
20023c12:	2b00      	cmp	r3, #0
20023c14:	d0f9      	beq.n	20023c0a <HAL_NAND_GET_BADBLK+0x6>
20023c16:	f7ff ffe9 	bl	20023bec <HAL_NAND_BLOCK_SIZE>
20023c1a:	2304      	movs	r3, #4
20023c1c:	9301      	str	r3, [sp, #4]
20023c1e:	ab03      	add	r3, sp, #12
20023c20:	9300      	str	r3, [sp, #0]
20023c22:	2300      	movs	r3, #0
20023c24:	4341      	muls	r1, r0
20023c26:	461a      	mov	r2, r3
20023c28:	4620      	mov	r0, r4
20023c2a:	f7ff feeb 	bl	20023a04 <HAL_NAND_READ_WITHOOB>
20023c2e:	b140      	cbz	r0, 20023c42 <HAL_NAND_GET_BADBLK+0x3e>
20023c30:	f89d 300c 	ldrb.w	r3, [sp, #12]
20023c34:	2bff      	cmp	r3, #255	@ 0xff
20023c36:	d0e8      	beq.n	20023c0a <HAL_NAND_GET_BADBLK+0x6>
20023c38:	9803      	ldr	r0, [sp, #12]
20023c3a:	2800      	cmp	r0, #0
20023c3c:	bf08      	it	eq
20023c3e:	2001      	moveq	r0, #1
20023c40:	e7e4      	b.n	20023c0c <HAL_NAND_GET_BADBLK+0x8>
20023c42:	2001      	movs	r0, #1
20023c44:	e7e2      	b.n	20023c0c <HAL_NAND_GET_BADBLK+0x8>

20023c46 <HAL_QSPIEX_WRITE_PAGE>:
20023c46:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20023c4a:	b099      	sub	sp, #100	@ 0x64
20023c4c:	4604      	mov	r4, r0
20023c4e:	460e      	mov	r6, r1
20023c50:	4691      	mov	r9, r2
20023c52:	f7ff fcd8 	bl	20023606 <flash_handle_valid>
20023c56:	b318      	cbz	r0, 20023ca0 <HAL_QSPIEX_WRITE_PAGE+0x5a>
20023c58:	2b00      	cmp	r3, #0
20023c5a:	f000 80d7 	beq.w	20023e0c <HAL_QSPIEX_WRITE_PAGE+0x1c6>
20023c5e:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
20023c62:	bf28      	it	cs
20023c64:	f44f 7380 	movcs.w	r3, #256	@ 0x100
20023c68:	68a1      	ldr	r1, [r4, #8]
20023c6a:	461d      	mov	r5, r3
20023c6c:	6962      	ldr	r2, [r4, #20]
20023c6e:	f894 3020 	ldrb.w	r3, [r4, #32]
20023c72:	2900      	cmp	r1, #0
20023c74:	d03b      	beq.n	20023cee <HAL_QSPIEX_WRITE_PAGE+0xa8>
20023c76:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023c7a:	d914      	bls.n	20023ca6 <HAL_QSPIEX_WRITE_PAGE+0x60>
20023c7c:	2b02      	cmp	r3, #2
20023c7e:	bf14      	ite	ne
20023c80:	2727      	movne	r7, #39	@ 0x27
20023c82:	2728      	moveq	r7, #40	@ 0x28
20023c84:	4639      	mov	r1, r7
20023c86:	4620      	mov	r0, r4
20023c88:	f7ff fa67 	bl	2002315a <HAL_FLASH_PRE_CMD>
20023c8c:	4649      	mov	r1, r9
20023c8e:	462b      	mov	r3, r5
20023c90:	2201      	movs	r2, #1
20023c92:	4620      	mov	r0, r4
20023c94:	f7ff fcbf 	bl	20023616 <HAL_FLASH_DMA_START>
20023c98:	4601      	mov	r1, r0
20023c9a:	b148      	cbz	r0, 20023cb0 <HAL_QSPIEX_WRITE_PAGE+0x6a>
20023c9c:	2500      	movs	r5, #0
20023c9e:	4628      	mov	r0, r5
20023ca0:	b019      	add	sp, #100	@ 0x64
20023ca2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20023ca6:	2b02      	cmp	r3, #2
20023ca8:	bf14      	ite	ne
20023caa:	2716      	movne	r7, #22
20023cac:	2717      	moveq	r7, #23
20023cae:	e7e9      	b.n	20023c84 <HAL_QSPIEX_WRITE_PAGE+0x3e>
20023cb0:	4632      	mov	r2, r6
20023cb2:	4620      	mov	r0, r4
20023cb4:	f7ff fa78 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023cb8:	2101      	movs	r1, #1
20023cba:	4620      	mov	r0, r4
20023cbc:	f7fe ffdf 	bl	20022c7e <HAL_FLASH_WRITE_DLEN2>
20023cc0:	2301      	movs	r3, #1
20023cc2:	4632      	mov	r2, r6
20023cc4:	9300      	str	r3, [sp, #0]
20023cc6:	4639      	mov	r1, r7
20023cc8:	2302      	movs	r3, #2
20023cca:	4620      	mov	r0, r4
20023ccc:	f7ff fa9f 	bl	2002320e <HAL_FLASH_ISSUE_CMD_SEQ>
20023cd0:	2800      	cmp	r0, #0
20023cd2:	d1e3      	bne.n	20023c9c <HAL_QSPIEX_WRITE_PAGE+0x56>
20023cd4:	f44f 717a 	mov.w	r1, #1000	@ 0x3e8
20023cd8:	4620      	mov	r0, r4
20023cda:	f7ff fcec 	bl	200236b6 <HAL_FLASH_DMA_WAIT_DONE>
20023cde:	2800      	cmp	r0, #0
20023ce0:	d1dc      	bne.n	20023c9c <HAL_QSPIEX_WRITE_PAGE+0x56>
20023ce2:	6822      	ldr	r2, [r4, #0]
20023ce4:	6813      	ldr	r3, [r2, #0]
20023ce6:	f023 0320 	bic.w	r3, r3, #32
20023cea:	6013      	str	r3, [r2, #0]
20023cec:	e7d7      	b.n	20023c9e <HAL_QSPIEX_WRITE_PAGE+0x58>
20023cee:	f1b2 7f80 	cmp.w	r2, #16777216	@ 0x1000000
20023cf2:	f240 8082 	bls.w	20023dfa <HAL_QSPIEX_WRITE_PAGE+0x1b4>
20023cf6:	2b02      	cmp	r3, #2
20023cf8:	bf14      	ite	ne
20023cfa:	2327      	movne	r3, #39	@ 0x27
20023cfc:	2328      	moveq	r3, #40	@ 0x28
20023cfe:	462f      	mov	r7, r5
20023d00:	f04f 0800 	mov.w	r8, #0
20023d04:	9303      	str	r3, [sp, #12]
20023d06:	f64f 7afc 	movw	sl, #65532	@ 0xfffc
20023d0a:	2f40      	cmp	r7, #64	@ 0x40
20023d0c:	bfd4      	ite	le
20023d0e:	ea0a 0a07 	andle.w	sl, sl, r7
20023d12:	f00a 0a40 	andgt.w	sl, sl, #64	@ 0x40
20023d16:	f1ba 0f00 	cmp.w	sl, #0
20023d1a:	d03f      	beq.n	20023d9c <HAL_QSPIEX_WRITE_PAGE+0x156>
20023d1c:	2200      	movs	r2, #0
20023d1e:	4620      	mov	r0, r4
20023d20:	4611      	mov	r1, r2
20023d22:	f7ff fa41 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023d26:	eb09 0308 	add.w	r3, r9, r8
20023d2a:	f10d 0c20 	add.w	ip, sp, #32
20023d2e:	f103 0e40 	add.w	lr, r3, #64	@ 0x40
20023d32:	4662      	mov	r2, ip
20023d34:	6818      	ldr	r0, [r3, #0]
20023d36:	6859      	ldr	r1, [r3, #4]
20023d38:	3308      	adds	r3, #8
20023d3a:	c203      	stmia	r2!, {r0, r1}
20023d3c:	4573      	cmp	r3, lr
20023d3e:	4694      	mov	ip, r2
20023d40:	d1f7      	bne.n	20023d32 <HAL_QSPIEX_WRITE_PAGE+0xec>
20023d42:	f04f 0b00 	mov.w	fp, #0
20023d46:	ea4f 02aa 	mov.w	r2, sl, asr #2
20023d4a:	ab08      	add	r3, sp, #32
20023d4c:	f853 1b04 	ldr.w	r1, [r3], #4
20023d50:	4620      	mov	r0, r4
20023d52:	9205      	str	r2, [sp, #20]
20023d54:	9304      	str	r3, [sp, #16]
20023d56:	f7fe ff81 	bl	20022c5c <HAL_FLASH_WRITE_WORD>
20023d5a:	9a05      	ldr	r2, [sp, #20]
20023d5c:	f10b 0b01 	add.w	fp, fp, #1
20023d60:	4593      	cmp	fp, r2
20023d62:	9b04      	ldr	r3, [sp, #16]
20023d64:	d1f2      	bne.n	20023d4c <HAL_QSPIEX_WRITE_PAGE+0x106>
20023d66:	4651      	mov	r1, sl
20023d68:	4620      	mov	r0, r4
20023d6a:	f7fe ff7e 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
20023d6e:	4620      	mov	r0, r4
20023d70:	9903      	ldr	r1, [sp, #12]
20023d72:	eb06 0208 	add.w	r2, r6, r8
20023d76:	f7ff fa17 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023d7a:	2101      	movs	r1, #1
20023d7c:	4620      	mov	r0, r4
20023d7e:	f7fe ff74 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
20023d82:	2200      	movs	r2, #0
20023d84:	2102      	movs	r1, #2
20023d86:	4620      	mov	r0, r4
20023d88:	f7ff fa0e 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023d8c:	4620      	mov	r0, r4
20023d8e:	f7fe ffb9 	bl	20022d04 <HAL_FLASH_IS_PROG_DONE>
20023d92:	2800      	cmp	r0, #0
20023d94:	d0f1      	beq.n	20023d7a <HAL_QSPIEX_WRITE_PAGE+0x134>
20023d96:	eba7 070a 	sub.w	r7, r7, sl
20023d9a:	44d0      	add	r8, sl
20023d9c:	1e7b      	subs	r3, r7, #1
20023d9e:	2b02      	cmp	r3, #2
20023da0:	d830      	bhi.n	20023e04 <HAL_QSPIEX_WRITE_PAGE+0x1be>
20023da2:	6923      	ldr	r3, [r4, #16]
20023da4:	4446      	add	r6, r8
20023da6:	4333      	orrs	r3, r6
20023da8:	681b      	ldr	r3, [r3, #0]
20023daa:	463a      	mov	r2, r7
20023dac:	eb09 0108 	add.w	r1, r9, r8
20023db0:	a807      	add	r0, sp, #28
20023db2:	9307      	str	r3, [sp, #28]
20023db4:	f006 fd74 	bl	2002a8a0 <memcpy>
20023db8:	2200      	movs	r2, #0
20023dba:	4620      	mov	r0, r4
20023dbc:	4611      	mov	r1, r2
20023dbe:	f7ff f9f3 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023dc2:	9907      	ldr	r1, [sp, #28]
20023dc4:	4620      	mov	r0, r4
20023dc6:	f7fe ff49 	bl	20022c5c <HAL_FLASH_WRITE_WORD>
20023dca:	2104      	movs	r1, #4
20023dcc:	4620      	mov	r0, r4
20023dce:	f7fe ff4c 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
20023dd2:	4632      	mov	r2, r6
20023dd4:	4620      	mov	r0, r4
20023dd6:	9903      	ldr	r1, [sp, #12]
20023dd8:	f7ff f9e6 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023ddc:	2101      	movs	r1, #1
20023dde:	4620      	mov	r0, r4
20023de0:	f7fe ff43 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
20023de4:	2200      	movs	r2, #0
20023de6:	2102      	movs	r1, #2
20023de8:	4620      	mov	r0, r4
20023dea:	f7ff f9dd 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023dee:	4620      	mov	r0, r4
20023df0:	f7fe ff88 	bl	20022d04 <HAL_FLASH_IS_PROG_DONE>
20023df4:	2800      	cmp	r0, #0
20023df6:	d0f1      	beq.n	20023ddc <HAL_QSPIEX_WRITE_PAGE+0x196>
20023df8:	e751      	b.n	20023c9e <HAL_QSPIEX_WRITE_PAGE+0x58>
20023dfa:	2b02      	cmp	r3, #2
20023dfc:	bf14      	ite	ne
20023dfe:	2316      	movne	r3, #22
20023e00:	2317      	moveq	r3, #23
20023e02:	e77c      	b.n	20023cfe <HAL_QSPIEX_WRITE_PAGE+0xb8>
20023e04:	2f00      	cmp	r7, #0
20023e06:	f73f af7e 	bgt.w	20023d06 <HAL_QSPIEX_WRITE_PAGE+0xc0>
20023e0a:	e748      	b.n	20023c9e <HAL_QSPIEX_WRITE_PAGE+0x58>
20023e0c:	4618      	mov	r0, r3
20023e0e:	e747      	b.n	20023ca0 <HAL_QSPIEX_WRITE_PAGE+0x5a>

20023e10 <HAL_QSPIEX_SECT_ERASE>:
20023e10:	b573      	push	{r0, r1, r4, r5, r6, lr}
20023e12:	4604      	mov	r4, r0
20023e14:	460d      	mov	r5, r1
20023e16:	f7ff fbf6 	bl	20023606 <flash_handle_valid>
20023e1a:	b1e8      	cbz	r0, 20023e58 <HAL_QSPIEX_SECT_ERASE+0x48>
20023e1c:	6963      	ldr	r3, [r4, #20]
20023e1e:	460a      	mov	r2, r1
20023e20:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023e24:	f04f 0100 	mov.w	r1, #0
20023e28:	4620      	mov	r0, r4
20023e2a:	bf94      	ite	ls
20023e2c:	261b      	movls	r6, #27
20023e2e:	2629      	movhi	r6, #41	@ 0x29
20023e30:	f7ff f9ba 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20023e34:	2101      	movs	r1, #1
20023e36:	4620      	mov	r0, r4
20023e38:	f7fe ff21 	bl	20022c7e <HAL_FLASH_WRITE_DLEN2>
20023e3c:	2301      	movs	r3, #1
20023e3e:	462a      	mov	r2, r5
20023e40:	9300      	str	r3, [sp, #0]
20023e42:	4631      	mov	r1, r6
20023e44:	2302      	movs	r3, #2
20023e46:	4620      	mov	r0, r4
20023e48:	f7ff f9e1 	bl	2002320e <HAL_FLASH_ISSUE_CMD_SEQ>
20023e4c:	3800      	subs	r0, #0
20023e4e:	bf18      	it	ne
20023e50:	2001      	movne	r0, #1
20023e52:	4240      	negs	r0, r0
20023e54:	b002      	add	sp, #8
20023e56:	bd70      	pop	{r4, r5, r6, pc}
20023e58:	f04f 30ff 	mov.w	r0, #4294967295
20023e5c:	e7fa      	b.n	20023e54 <HAL_QSPIEX_SECT_ERASE+0x44>
	...

20023e60 <HAL_QSPI_GET_SRC_CLK>:
20023e60:	b508      	push	{r3, lr}
20023e62:	b1e8      	cbz	r0, 20023ea0 <HAL_QSPI_GET_SRC_CLK+0x40>
20023e64:	6803      	ldr	r3, [r0, #0]
20023e66:	4a0f      	ldr	r2, [pc, #60]	@ (20023ea4 <HAL_QSPI_GET_SRC_CLK+0x44>)
20023e68:	4293      	cmp	r3, r2
20023e6a:	d00c      	beq.n	20023e86 <HAL_QSPI_GET_SRC_CLK+0x26>
20023e6c:	f502 5280 	add.w	r2, r2, #4096	@ 0x1000
20023e70:	4293      	cmp	r3, r2
20023e72:	d115      	bne.n	20023ea0 <HAL_QSPI_GET_SRC_CLK+0x40>
20023e74:	2006      	movs	r0, #6
20023e76:	f001 f821 	bl	20024ebc <HAL_RCC_HCPU_GetClockSrc>
20023e7a:	2802      	cmp	r0, #2
20023e7c:	d105      	bne.n	20023e8a <HAL_QSPI_GET_SRC_CLK+0x2a>
20023e7e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023e82:	f001 b850 	b.w	20024f26 <HAL_RCC_HCPU_GetDLL2Freq>
20023e86:	2004      	movs	r0, #4
20023e88:	e7f5      	b.n	20023e76 <HAL_QSPI_GET_SRC_CLK+0x16>
20023e8a:	2803      	cmp	r0, #3
20023e8c:	d103      	bne.n	20023e96 <HAL_QSPI_GET_SRC_CLK+0x36>
20023e8e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023e92:	f001 b84b 	b.w	20024f2c <HAL_RCC_HCPU_GetDLL3Freq>
20023e96:	2001      	movs	r0, #1
20023e98:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
20023e9c:	f001 b8aa 	b.w	20024ff4 <HAL_RCC_GetSysCLKFreq>
20023ea0:	2000      	movs	r0, #0
20023ea2:	bd08      	pop	{r3, pc}
20023ea4:	50041000 	.word	0x50041000

20023ea8 <HAL_QSPI_GET_CLK>:
20023ea8:	b538      	push	{r3, r4, r5, lr}
20023eaa:	4605      	mov	r5, r0
20023eac:	b908      	cbnz	r0, 20023eb2 <HAL_QSPI_GET_CLK+0xa>
20023eae:	2000      	movs	r0, #0
20023eb0:	bd38      	pop	{r3, r4, r5, pc}
20023eb2:	f7fe ff3f 	bl	20022d34 <HAL_FLASH_GET_DIV>
20023eb6:	4604      	mov	r4, r0
20023eb8:	2800      	cmp	r0, #0
20023eba:	d0f8      	beq.n	20023eae <HAL_QSPI_GET_CLK+0x6>
20023ebc:	4628      	mov	r0, r5
20023ebe:	f7ff ffcf 	bl	20023e60 <HAL_QSPI_GET_SRC_CLK>
20023ec2:	fbb0 f0f4 	udiv	r0, r0, r4
20023ec6:	e7f3      	b.n	20023eb0 <HAL_QSPI_GET_CLK+0x8>

20023ec8 <HAL_QSPI_READ_ID>:
20023ec8:	b138      	cbz	r0, 20023eda <HAL_QSPI_READ_ID+0x12>
20023eca:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
20023ece:	b113      	cbz	r3, 20023ed6 <HAL_QSPI_READ_ID+0xe>
20023ed0:	2100      	movs	r1, #0
20023ed2:	f7ff bc3c 	b.w	2002374e <nand_read_id>
20023ed6:	f7ff babc 	b.w	20023452 <HAL_FLASH_GET_NOR_ID>
20023eda:	20ff      	movs	r0, #255	@ 0xff
20023edc:	4770      	bx	lr

20023ede <HAL_NOR_CFG_DTR>:
20023ede:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
20023ee0:	4604      	mov	r4, r0
20023ee2:	460a      	mov	r2, r1
20023ee4:	b351      	cbz	r1, 20023f3c <HAL_NOR_CFG_DTR+0x5e>
20023ee6:	68c5      	ldr	r5, [r0, #12]
20023ee8:	f895 31ff 	ldrb.w	r3, [r5, #511]	@ 0x1ff
20023eec:	2b00      	cmp	r3, #0
20023eee:	d03b      	beq.n	20023f68 <HAL_NOR_CFG_DTR+0x8a>
20023ef0:	f890 3020 	ldrb.w	r3, [r0, #32]
20023ef4:	b3c3      	cbz	r3, 20023f68 <HAL_NOR_CFG_DTR+0x8a>
20023ef6:	f995 6207 	ldrsb.w	r6, [r5, #519]	@ 0x207
20023efa:	f995 2202 	ldrsb.w	r2, [r5, #514]	@ 0x202
20023efe:	f995 3203 	ldrsb.w	r3, [r5, #515]	@ 0x203
20023f02:	f995 1201 	ldrsb.w	r1, [r5, #513]	@ 0x201
20023f06:	9603      	str	r6, [sp, #12]
20023f08:	f995 6206 	ldrsb.w	r6, [r5, #518]	@ 0x206
20023f0c:	9602      	str	r6, [sp, #8]
20023f0e:	f995 6205 	ldrsb.w	r6, [r5, #517]	@ 0x205
20023f12:	9601      	str	r6, [sp, #4]
20023f14:	f995 5204 	ldrsb.w	r5, [r5, #516]	@ 0x204
20023f18:	9500      	str	r5, [sp, #0]
20023f1a:	f7fe fe59 	bl	20022bd0 <HAL_FLASH_CFG_AHB_RCMD>
20023f1e:	68e3      	ldr	r3, [r4, #12]
20023f20:	4620      	mov	r0, r4
20023f22:	f893 11ff 	ldrb.w	r1, [r3, #511]	@ 0x1ff
20023f26:	f7fe fe48 	bl	20022bba <HAL_FLASH_SET_AHB_RCMD>
20023f2a:	2101      	movs	r1, #1
20023f2c:	4620      	mov	r0, r4
20023f2e:	f894 2025 	ldrb.w	r2, [r4, #37]	@ 0x25
20023f32:	f7ff f859 	bl	20022fe8 <HAL_MPI_CFG_DTR>
20023f36:	2000      	movs	r0, #0
20023f38:	b004      	add	sp, #16
20023f3a:	bd70      	pop	{r4, r5, r6, pc}
20023f3c:	f7ff f854 	bl	20022fe8 <HAL_MPI_CFG_DTR>
20023f40:	6963      	ldr	r3, [r4, #20]
20023f42:	f894 1020 	ldrb.w	r1, [r4, #32]
20023f46:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20023f4a:	d906      	bls.n	20023f5a <HAL_NOR_CFG_DTR+0x7c>
20023f4c:	b919      	cbnz	r1, 20023f56 <HAL_NOR_CFG_DTR+0x78>
20023f4e:	4620      	mov	r0, r4
20023f50:	f7ff f8c6 	bl	200230e0 <HAL_FLASH_CONFIG_FULL_AHB_READ>
20023f54:	e7ef      	b.n	20023f36 <HAL_NOR_CFG_DTR+0x58>
20023f56:	2101      	movs	r1, #1
20023f58:	e7f9      	b.n	20023f4e <HAL_NOR_CFG_DTR+0x70>
20023f5a:	b919      	cbnz	r1, 20023f64 <HAL_NOR_CFG_DTR+0x86>
20023f5c:	4620      	mov	r0, r4
20023f5e:	f7ff f87b 	bl	20023058 <HAL_FLASH_CONFIG_AHB_READ>
20023f62:	e7e8      	b.n	20023f36 <HAL_NOR_CFG_DTR+0x58>
20023f64:	2101      	movs	r1, #1
20023f66:	e7f9      	b.n	20023f5c <HAL_NOR_CFG_DTR+0x7e>
20023f68:	2001      	movs	r0, #1
20023f6a:	e7e5      	b.n	20023f38 <HAL_NOR_CFG_DTR+0x5a>

20023f6c <HAL_NOR_DTR_CAL>:
20023f6c:	b510      	push	{r4, lr}
20023f6e:	4604      	mov	r4, r0
20023f70:	b1f0      	cbz	r0, 20023fb0 <HAL_NOR_DTR_CAL+0x44>
20023f72:	6802      	ldr	r2, [r0, #0]
20023f74:	2014      	movs	r0, #20
20023f76:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20023f7a:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
20023f7e:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20023f82:	f7fd ffd0 	bl	20021f26 <HAL_Delay_us>
20023f86:	6823      	ldr	r3, [r4, #0]
20023f88:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20023f8c:	05d2      	lsls	r2, r2, #23
20023f8e:	d5fb      	bpl.n	20023f88 <HAL_NOR_DTR_CAL+0x1c>
20023f90:	f8d3 0094 	ldr.w	r0, [r3, #148]	@ 0x94
20023f94:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20023f98:	b2c0      	uxtb	r0, r0
20023f9a:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
20023f9e:	f8c3 2094 	str.w	r2, [r3, #148]	@ 0x94
20023fa2:	f894 3025 	ldrb.w	r3, [r4, #37]	@ 0x25
20023fa6:	f023 037f 	bic.w	r3, r3, #127	@ 0x7f
20023faa:	4303      	orrs	r3, r0
20023fac:	f884 3025 	strb.w	r3, [r4, #37]	@ 0x25
20023fb0:	bd10      	pop	{r4, pc}
	...

20023fb4 <HAL_FLASH_Init>:
20023fb4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20023fb8:	460e      	mov	r6, r1
20023fba:	4690      	mov	r8, r2
20023fbc:	461f      	mov	r7, r3
20023fbe:	4604      	mov	r4, r0
20023fc0:	b087      	sub	sp, #28
20023fc2:	2800      	cmp	r0, #0
20023fc4:	f000 80e5 	beq.w	20024192 <HAL_FLASH_Init+0x1de>
20023fc8:	2900      	cmp	r1, #0
20023fca:	f000 80e2 	beq.w	20024192 <HAL_FLASH_Init+0x1de>
20023fce:	f7fe fdd3 	bl	20022b78 <HAL_QSPI_Init>
20023fd2:	6820      	ldr	r0, [r4, #0]
20023fd4:	f7ff fb1d 	bl	20023612 <HAL_GET_FLASH_MID>
20023fd8:	6933      	ldr	r3, [r6, #16]
20023fda:	2100      	movs	r1, #0
20023fdc:	f884 3034 	strb.w	r3, [r4, #52]	@ 0x34
20023fe0:	68b3      	ldr	r3, [r6, #8]
20023fe2:	4605      	mov	r5, r0
20023fe4:	63a3      	str	r3, [r4, #56]	@ 0x38
20023fe6:	68f3      	ldr	r3, [r6, #12]
20023fe8:	f884 1024 	strb.w	r1, [r4, #36]	@ 0x24
20023fec:	051b      	lsls	r3, r3, #20
20023fee:	63e3      	str	r3, [r4, #60]	@ 0x3c
20023ff0:	2302      	movs	r3, #2
20023ff2:	f884 3036 	strb.w	r3, [r4, #54]	@ 0x36
20023ff6:	6933      	ldr	r3, [r6, #16]
20023ff8:	f8c4 8008 	str.w	r8, [r4, #8]
20023ffc:	1e5a      	subs	r2, r3, #1
20023ffe:	4253      	negs	r3, r2
20024000:	4153      	adcs	r3, r2
20024002:	f884 3023 	strb.w	r3, [r4, #35]	@ 0x23
20024006:	f1b8 0f00 	cmp.w	r8, #0
2002400a:	d058      	beq.n	200240be <HAL_FLASH_Init+0x10a>
2002400c:	2f00      	cmp	r7, #0
2002400e:	d056      	beq.n	200240be <HAL_FLASH_Init+0x10a>
20024010:	683b      	ldr	r3, [r7, #0]
20024012:	f8c8 3000 	str.w	r3, [r8]
20024016:	68a3      	ldr	r3, [r4, #8]
20024018:	68fa      	ldr	r2, [r7, #12]
2002401a:	605a      	str	r2, [r3, #4]
2002401c:	2210      	movs	r2, #16
2002401e:	68a3      	ldr	r3, [r4, #8]
20024020:	609a      	str	r2, [r3, #8]
20024022:	2280      	movs	r2, #128	@ 0x80
20024024:	68a3      	ldr	r3, [r4, #8]
20024026:	60d9      	str	r1, [r3, #12]
20024028:	68a3      	ldr	r3, [r4, #8]
2002402a:	611a      	str	r2, [r3, #16]
2002402c:	f44f 5280 	mov.w	r2, #4096	@ 0x1000
20024030:	68a3      	ldr	r3, [r4, #8]
20024032:	6159      	str	r1, [r3, #20]
20024034:	68a3      	ldr	r3, [r4, #8]
20024036:	6199      	str	r1, [r3, #24]
20024038:	68a3      	ldr	r3, [r4, #8]
2002403a:	61d9      	str	r1, [r3, #28]
2002403c:	68a3      	ldr	r3, [r4, #8]
2002403e:	621a      	str	r2, [r3, #32]
20024040:	68a3      	ldr	r3, [r4, #8]
20024042:	6259      	str	r1, [r3, #36]	@ 0x24
20024044:	b1c0      	cbz	r0, 20024078 <HAL_FLASH_Init+0xc4>
20024046:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
2002404a:	4298      	cmp	r0, r3
2002404c:	d014      	beq.n	20024078 <HAL_FLASH_Init+0xc4>
2002404e:	2601      	movs	r6, #1
20024050:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024054:	2b00      	cmp	r3, #0
20024056:	d13d      	bne.n	200240d4 <HAL_FLASH_Init+0x120>
20024058:	2e00      	cmp	r6, #0
2002405a:	d15a      	bne.n	20024112 <HAL_FLASH_Init+0x15e>
2002405c:	4620      	mov	r0, r4
2002405e:	f7ff fab2 	bl	200235c6 <HAL_FLASH_RELEASE_DPD>
20024062:	4630      	mov	r0, r6
20024064:	f7fd ff5f 	bl	20021f26 <HAL_Delay_us>
20024068:	2032      	movs	r0, #50	@ 0x32
2002406a:	f7fd ff5c 	bl	20021f26 <HAL_Delay_us>
2002406e:	4620      	mov	r0, r4
20024070:	f7ff ff2a 	bl	20023ec8 <HAL_QSPI_READ_ID>
20024074:	4605      	mov	r5, r0
20024076:	e04c      	b.n	20024112 <HAL_FLASH_Init+0x15e>
20024078:	2101      	movs	r1, #1
2002407a:	4620      	mov	r0, r4
2002407c:	f7fe fe4f 	bl	20022d1e <HAL_FLASH_SET_TXSLOT>
20024080:	4ba7      	ldr	r3, [pc, #668]	@ (20024320 <HAL_FLASH_Init+0x36c>)
20024082:	69a2      	ldr	r2, [r4, #24]
20024084:	4620      	mov	r0, r4
20024086:	429a      	cmp	r2, r3
20024088:	f04f 0200 	mov.w	r2, #0
2002408c:	bf8c      	ite	hi
2002408e:	2101      	movhi	r1, #1
20024090:	4611      	movls	r1, r2
20024092:	f7ff fa89 	bl	200235a8 <HAL_QSPI_SET_CLK_INV>
20024096:	4620      	mov	r0, r4
20024098:	f89d 1038 	ldrb.w	r1, [sp, #56]	@ 0x38
2002409c:	f7fe fe46 	bl	20022d2c <HAL_FLASH_SET_CLK_rom>
200240a0:	f894 3035 	ldrb.w	r3, [r4, #53]	@ 0x35
200240a4:	b12b      	cbz	r3, 200240b2 <HAL_FLASH_Init+0xfe>
200240a6:	2b01      	cmp	r3, #1
200240a8:	d110      	bne.n	200240cc <HAL_FLASH_Init+0x118>
200240aa:	2100      	movs	r1, #0
200240ac:	4620      	mov	r0, r4
200240ae:	f7fe ff55 	bl	20022f5c <HAL_FLASH_SET_DUAL_MODE>
200240b2:	2101      	movs	r1, #1
200240b4:	4620      	mov	r0, r4
200240b6:	f7fe fede 	bl	20022e76 <HAL_FLASH_ENABLE_QSPI>
200240ba:	2600      	movs	r6, #0
200240bc:	e7c8      	b.n	20024050 <HAL_FLASH_Init+0x9c>
200240be:	2d00      	cmp	r5, #0
200240c0:	d0de      	beq.n	20024080 <HAL_FLASH_Init+0xcc>
200240c2:	f06f 437f 	mvn.w	r3, #4278190080	@ 0xff000000
200240c6:	429d      	cmp	r5, r3
200240c8:	d1c1      	bne.n	2002404e <HAL_FLASH_Init+0x9a>
200240ca:	e7d9      	b.n	20024080 <HAL_FLASH_Init+0xcc>
200240cc:	2b02      	cmp	r3, #2
200240ce:	d1f0      	bne.n	200240b2 <HAL_FLASH_Init+0xfe>
200240d0:	2101      	movs	r1, #1
200240d2:	e7eb      	b.n	200240ac <HAL_FLASH_Init+0xf8>
200240d4:	6822      	ldr	r2, [r4, #0]
200240d6:	2700      	movs	r7, #0
200240d8:	6893      	ldr	r3, [r2, #8]
200240da:	4639      	mov	r1, r7
200240dc:	f043 7370 	orr.w	r3, r3, #62914560	@ 0x3c00000
200240e0:	6093      	str	r3, [r2, #8]
200240e2:	2301      	movs	r3, #1
200240e4:	463a      	mov	r2, r7
200240e6:	4620      	mov	r0, r4
200240e8:	e9cd 7303 	strd	r7, r3, [sp, #12]
200240ec:	e9cd 7701 	strd	r7, r7, [sp, #4]
200240f0:	463b      	mov	r3, r7
200240f2:	9700      	str	r7, [sp, #0]
200240f4:	f7fe fe23 	bl	20022d3e <HAL_FLASH_MANUAL_CMD>
200240f8:	463a      	mov	r2, r7
200240fa:	21ff      	movs	r1, #255	@ 0xff
200240fc:	4620      	mov	r0, r4
200240fe:	f7fe fdd9 	bl	20022cb4 <HAL_FLASH_SET_CMD>
20024102:	4638      	mov	r0, r7
20024104:	f7fd ff0f 	bl	20021f26 <HAL_Delay_us>
20024108:	20c8      	movs	r0, #200	@ 0xc8
2002410a:	f7fd ff0c 	bl	20021f26 <HAL_Delay_us>
2002410e:	2e00      	cmp	r6, #0
20024110:	d0ad      	beq.n	2002406e <HAL_FLASH_Init+0xba>
20024112:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024116:	b2ef      	uxtb	r7, r5
20024118:	f3c5 2807 	ubfx	r8, r5, #8, #8
2002411c:	6325      	str	r5, [r4, #48]	@ 0x30
2002411e:	f3c5 4507 	ubfx	r5, r5, #16, #8
20024122:	4642      	mov	r2, r8
20024124:	4629      	mov	r1, r5
20024126:	4638      	mov	r0, r7
20024128:	b3ab      	cbz	r3, 20024196 <HAL_FLASH_Init+0x1e2>
2002412a:	f001 f96b 	bl	20025404 <spi_nand_get_cmd_by_id>
2002412e:	60e0      	str	r0, [r4, #12]
20024130:	bba0      	cbnz	r0, 2002419c <HAL_FLASH_Init+0x1e8>
20024132:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024136:	b32b      	cbz	r3, 20024184 <HAL_FLASH_Init+0x1d0>
20024138:	2108      	movs	r1, #8
2002413a:	4620      	mov	r0, r4
2002413c:	f7ff fb07 	bl	2002374e <nand_read_id>
20024140:	f3c0 2807 	ubfx	r8, r0, #8, #8
20024144:	f3c0 4507 	ubfx	r5, r0, #16, #8
20024148:	b2c7      	uxtb	r7, r0
2002414a:	6320      	str	r0, [r4, #48]	@ 0x30
2002414c:	4642      	mov	r2, r8
2002414e:	4629      	mov	r1, r5
20024150:	4638      	mov	r0, r7
20024152:	f001 f957 	bl	20025404 <spi_nand_get_cmd_by_id>
20024156:	60e0      	str	r0, [r4, #12]
20024158:	bb00      	cbnz	r0, 2002419c <HAL_FLASH_Init+0x1e8>
2002415a:	210f      	movs	r1, #15
2002415c:	4620      	mov	r0, r4
2002415e:	f7ff faf6 	bl	2002374e <nand_read_id>
20024162:	f3c0 2807 	ubfx	r8, r0, #8, #8
20024166:	f3c0 4507 	ubfx	r5, r0, #16, #8
2002416a:	b2c7      	uxtb	r7, r0
2002416c:	6320      	str	r0, [r4, #48]	@ 0x30
2002416e:	4642      	mov	r2, r8
20024170:	4629      	mov	r1, r5
20024172:	4638      	mov	r0, r7
20024174:	f001 f946 	bl	20025404 <spi_nand_get_cmd_by_id>
20024178:	60e0      	str	r0, [r4, #12]
2002417a:	b978      	cbnz	r0, 2002419c <HAL_FLASH_Init+0x1e8>
2002417c:	f001 f958 	bl	20025430 <spi_nand_get_default_ctable>
20024180:	60e0      	str	r0, [r4, #12]
20024182:	b958      	cbnz	r0, 2002419c <HAL_FLASH_Init+0x1e8>
20024184:	2100      	movs	r1, #0
20024186:	4620      	mov	r0, r4
20024188:	f7fe fe75 	bl	20022e76 <HAL_FLASH_ENABLE_QSPI>
2002418c:	2300      	movs	r3, #0
2002418e:	e9c4 330e 	strd	r3, r3, [r4, #56]	@ 0x38
20024192:	2001      	movs	r0, #1
20024194:	e04c      	b.n	20024230 <HAL_FLASH_Init+0x27c>
20024196:	f001 f8ed 	bl	20025374 <spi_flash_get_cmd_by_id>
2002419a:	e7c8      	b.n	2002412e <HAL_FLASH_Init+0x17a>
2002419c:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200241a0:	4642      	mov	r2, r8
200241a2:	4629      	mov	r1, r5
200241a4:	4638      	mov	r0, r7
200241a6:	2b00      	cmp	r3, #0
200241a8:	d045      	beq.n	20024236 <HAL_FLASH_Init+0x282>
200241aa:	f001 f94f 	bl	2002544c <spi_nand_get_size_by_id>
200241ae:	4642      	mov	r2, r8
200241b0:	4629      	mov	r1, r5
200241b2:	4681      	mov	r9, r0
200241b4:	4638      	mov	r0, r7
200241b6:	f001 f953 	bl	20025460 <spi_nand_get_plane_select_flag>
200241ba:	4642      	mov	r2, r8
200241bc:	4629      	mov	r1, r5
200241be:	f884 0027 	strb.w	r0, [r4, #39]	@ 0x27
200241c2:	4638      	mov	r0, r7
200241c4:	f001 f955 	bl	20025472 <spi_nand_get_big_page_flag>
200241c8:	4642      	mov	r2, r8
200241ca:	f884 0024 	strb.w	r0, [r4, #36]	@ 0x24
200241ce:	4629      	mov	r1, r5
200241d0:	4638      	mov	r0, r7
200241d2:	f001 f957 	bl	20025484 <spi_nand_get_ecc_mode>
200241d6:	f894 3024 	ldrb.w	r3, [r4, #36]	@ 0x24
200241da:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
200241de:	f884 3024 	strb.w	r3, [r4, #36]	@ 0x24
200241e2:	f1b9 0f00 	cmp.w	r9, #0
200241e6:	d003      	beq.n	200241f0 <HAL_FLASH_Init+0x23c>
200241e8:	f8c4 903c 	str.w	r9, [r4, #60]	@ 0x3c
200241ec:	f8c4 9014 	str.w	r9, [r4, #20]
200241f0:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200241f4:	2b00      	cmp	r3, #0
200241f6:	d173      	bne.n	200242e0 <HAL_FLASH_Init+0x32c>
200241f8:	2e00      	cmp	r6, #0
200241fa:	d16e      	bne.n	200242da <HAL_FLASH_Init+0x326>
200241fc:	4620      	mov	r0, r4
200241fe:	f7ff f943 	bl	20023488 <HAL_FLASH_CLR_PROTECT>
20024202:	6963      	ldr	r3, [r4, #20]
20024204:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
20024208:	d938      	bls.n	2002427c <HAL_FLASH_Init+0x2c8>
2002420a:	4632      	mov	r2, r6
2002420c:	2121      	movs	r1, #33	@ 0x21
2002420e:	4620      	mov	r0, r4
20024210:	f7fe ffca 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
20024214:	f894 3020 	ldrb.w	r3, [r4, #32]
20024218:	b98b      	cbnz	r3, 2002423e <HAL_FLASH_Init+0x28a>
2002421a:	4631      	mov	r1, r6
2002421c:	4620      	mov	r0, r4
2002421e:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
20024222:	f7ff f90b 	bl	2002343c <HAL_FLASH_FADDR_SET_QSPI>
20024226:	2107      	movs	r1, #7
20024228:	4620      	mov	r0, r4
2002422a:	f7fe fe7f 	bl	20022f2c <HAL_FLASH_SET_ROW_BOUNDARY>
2002422e:	2000      	movs	r0, #0
20024230:	b007      	add	sp, #28
20024232:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20024236:	f001 f8b1 	bl	2002539c <spi_flash_get_size_by_id>
2002423a:	4681      	mov	r9, r0
2002423c:	e7d1      	b.n	200241e2 <HAL_FLASH_Init+0x22e>
2002423e:	2101      	movs	r1, #1
20024240:	4620      	mov	r0, r4
20024242:	f7ff f8fb 	bl	2002343c <HAL_FLASH_FADDR_SET_QSPI>
20024246:	f894 9026 	ldrb.w	r9, [r4, #38]	@ 0x26
2002424a:	f1b9 0f01 	cmp.w	r9, #1
2002424e:	d1ea      	bne.n	20024226 <HAL_FLASH_Init+0x272>
20024250:	4642      	mov	r2, r8
20024252:	4629      	mov	r1, r5
20024254:	4638      	mov	r0, r7
20024256:	f001 f8ab 	bl	200253b0 <spi_flash_is_support_dtr>
2002425a:	b138      	cbz	r0, 2002426c <HAL_FLASH_Init+0x2b8>
2002425c:	4620      	mov	r0, r4
2002425e:	f7ff fe85 	bl	20023f6c <HAL_NOR_DTR_CAL>
20024262:	4649      	mov	r1, r9
20024264:	4620      	mov	r0, r4
20024266:	f7ff fe3a 	bl	20023ede <HAL_NOR_CFG_DTR>
2002426a:	e7dc      	b.n	20024226 <HAL_FLASH_Init+0x272>
2002426c:	4632      	mov	r2, r6
2002426e:	4631      	mov	r1, r6
20024270:	4620      	mov	r0, r4
20024272:	f7fe feb9 	bl	20022fe8 <HAL_MPI_CFG_DTR>
20024276:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
2002427a:	e7d4      	b.n	20024226 <HAL_FLASH_Init+0x272>
2002427c:	f894 3020 	ldrb.w	r3, [r4, #32]
20024280:	b933      	cbnz	r3, 20024290 <HAL_FLASH_Init+0x2dc>
20024282:	4631      	mov	r1, r6
20024284:	4620      	mov	r0, r4
20024286:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
2002428a:	f7ff f8cc 	bl	20023426 <HAL_FLASH_SET_QUAL_SPI>
2002428e:	e7ce      	b.n	2002422e <HAL_FLASH_Init+0x27a>
20024290:	2101      	movs	r1, #1
20024292:	4620      	mov	r0, r4
20024294:	f7ff f8c7 	bl	20023426 <HAL_FLASH_SET_QUAL_SPI>
20024298:	f894 9026 	ldrb.w	r9, [r4, #38]	@ 0x26
2002429c:	f1b9 0f01 	cmp.w	r9, #1
200242a0:	d115      	bne.n	200242ce <HAL_FLASH_Init+0x31a>
200242a2:	4642      	mov	r2, r8
200242a4:	4629      	mov	r1, r5
200242a6:	4638      	mov	r0, r7
200242a8:	f001 f882 	bl	200253b0 <spi_flash_is_support_dtr>
200242ac:	b138      	cbz	r0, 200242be <HAL_FLASH_Init+0x30a>
200242ae:	4620      	mov	r0, r4
200242b0:	f7ff fe5c 	bl	20023f6c <HAL_NOR_DTR_CAL>
200242b4:	4649      	mov	r1, r9
200242b6:	4620      	mov	r0, r4
200242b8:	f7ff fe11 	bl	20023ede <HAL_NOR_CFG_DTR>
200242bc:	e7b7      	b.n	2002422e <HAL_FLASH_Init+0x27a>
200242be:	4632      	mov	r2, r6
200242c0:	4631      	mov	r1, r6
200242c2:	4620      	mov	r0, r4
200242c4:	f7fe fe90 	bl	20022fe8 <HAL_MPI_CFG_DTR>
200242c8:	f884 6026 	strb.w	r6, [r4, #38]	@ 0x26
200242cc:	e7af      	b.n	2002422e <HAL_FLASH_Init+0x27a>
200242ce:	4632      	mov	r2, r6
200242d0:	4631      	mov	r1, r6
200242d2:	4620      	mov	r0, r4
200242d4:	f7fe fe88 	bl	20022fe8 <HAL_MPI_CFG_DTR>
200242d8:	e7a9      	b.n	2002422e <HAL_FLASH_Init+0x27a>
200242da:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
200242de:	e7a6      	b.n	2002422e <HAL_FLASH_Init+0x27a>
200242e0:	2101      	movs	r1, #1
200242e2:	4620      	mov	r0, r4
200242e4:	f7fe fcc1 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
200242e8:	68e3      	ldr	r3, [r4, #12]
200242ea:	2102      	movs	r1, #2
200242ec:	791a      	ldrb	r2, [r3, #4]
200242ee:	4620      	mov	r0, r4
200242f0:	f7fe ff5a 	bl	200231a8 <HAL_FLASH_ISSUE_CMD>
200242f4:	4620      	mov	r0, r4
200242f6:	f7fe fd0e 	bl	20022d16 <HAL_FLASH_READ32>
200242fa:	4605      	mov	r5, r0
200242fc:	200a      	movs	r0, #10
200242fe:	f7fd fe12 	bl	20021f26 <HAL_Delay_us>
20024302:	07eb      	lsls	r3, r5, #31
20024304:	d4ec      	bmi.n	200242e0 <HAL_FLASH_Init+0x32c>
20024306:	4620      	mov	r0, r4
20024308:	f7ff fb55 	bl	200239b6 <nand_clear_status>
2002430c:	f894 3020 	ldrb.w	r3, [r4, #32]
20024310:	2b02      	cmp	r3, #2
20024312:	d18c      	bne.n	2002422e <HAL_FLASH_Init+0x27a>
20024314:	2101      	movs	r1, #1
20024316:	4620      	mov	r0, r4
20024318:	f7ff fb1c 	bl	20023954 <HAL_NAND_EN_QUAL>
2002431c:	e787      	b.n	2002422e <HAL_FLASH_Init+0x27a>
2002431e:	bf00      	nop
20024320:	05f5e100 	.word	0x05f5e100

20024324 <HAL_Delay_us_psram>:
20024324:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20024326:	9001      	str	r0, [sp, #4]
20024328:	9b01      	ldr	r3, [sp, #4]
2002432a:	4c11      	ldr	r4, [pc, #68]	@ (20024370 <HAL_Delay_us_psram+0x4c>)
2002432c:	b10b      	cbz	r3, 20024332 <HAL_Delay_us_psram+0xe>
2002432e:	6820      	ldr	r0, [r4, #0]
20024330:	b940      	cbnz	r0, 20024344 <HAL_Delay_us_psram+0x20>
20024332:	2000      	movs	r0, #0
20024334:	f000 fe6e 	bl	20025014 <HAL_RCC_GetHCLKFreq>
20024338:	4b0e      	ldr	r3, [pc, #56]	@ (20024374 <HAL_Delay_us_psram+0x50>)
2002433a:	fbb0 f0f3 	udiv	r0, r0, r3
2002433e:	9b01      	ldr	r3, [sp, #4]
20024340:	6020      	str	r0, [r4, #0]
20024342:	b19b      	cbz	r3, 2002436c <HAL_Delay_us_psram+0x48>
20024344:	2830      	cmp	r0, #48	@ 0x30
20024346:	bf82      	ittt	hi
20024348:	9b01      	ldrhi	r3, [sp, #4]
2002434a:	f103 33ff 	addhi.w	r3, r3, #4294967295
2002434e:	9301      	strhi	r3, [sp, #4]
20024350:	9b01      	ldr	r3, [sp, #4]
20024352:	b15b      	cbz	r3, 2002436c <HAL_Delay_us_psram+0x48>
20024354:	2205      	movs	r2, #5
20024356:	9b01      	ldr	r3, [sp, #4]
20024358:	3b01      	subs	r3, #1
2002435a:	4343      	muls	r3, r0
2002435c:	fbb3 f3f2 	udiv	r3, r3, r2
20024360:	9303      	str	r3, [sp, #12]
20024362:	9b03      	ldr	r3, [sp, #12]
20024364:	1e5a      	subs	r2, r3, #1
20024366:	9203      	str	r2, [sp, #12]
20024368:	2b00      	cmp	r3, #0
2002436a:	d1fa      	bne.n	20024362 <HAL_Delay_us_psram+0x3e>
2002436c:	b004      	add	sp, #16
2002436e:	bd10      	pop	{r4, pc}
20024370:	20049f60 	.word	0x20049f60
20024374:	000f4240 	.word	0x000f4240

20024378 <HAL_MPI_OPSRAM_CAL_DELAY>:
20024378:	b570      	push	{r4, r5, r6, lr}
2002437a:	460e      	mov	r6, r1
2002437c:	4615      	mov	r5, r2
2002437e:	4604      	mov	r4, r0
20024380:	b358      	cbz	r0, 200243da <HAL_MPI_OPSRAM_CAL_DELAY+0x62>
20024382:	2202      	movs	r2, #2
20024384:	6803      	ldr	r3, [r0, #0]
20024386:	60da      	str	r2, [r3, #12]
20024388:	6802      	ldr	r2, [r0, #0]
2002438a:	6d93      	ldr	r3, [r2, #88]	@ 0x58
2002438c:	f023 7300 	bic.w	r3, r3, #33554432	@ 0x2000000
20024390:	6593      	str	r3, [r2, #88]	@ 0x58
20024392:	6802      	ldr	r2, [r0, #0]
20024394:	2000      	movs	r0, #0
20024396:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
2002439a:	f043 4300 	orr.w	r3, r3, #2147483648	@ 0x80000000
2002439e:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
200243a2:	f7ff ffbf 	bl	20024324 <HAL_Delay_us_psram>
200243a6:	2014      	movs	r0, #20
200243a8:	f7ff ffbc 	bl	20024324 <HAL_Delay_us_psram>
200243ac:	6820      	ldr	r0, [r4, #0]
200243ae:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
200243b2:	05db      	lsls	r3, r3, #23
200243b4:	d5fb      	bpl.n	200243ae <HAL_MPI_OPSRAM_CAL_DELAY+0x36>
200243b6:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
200243ba:	f8d0 2094 	ldr.w	r2, [r0, #148]	@ 0x94
200243be:	b2db      	uxtb	r3, r3
200243c0:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
200243c4:	f8c0 2094 	str.w	r2, [r0, #148]	@ 0x94
200243c8:	1e5a      	subs	r2, r3, #1
200243ca:	7032      	strb	r2, [r6, #0]
200243cc:	2201      	movs	r2, #1
200243ce:	2000      	movs	r0, #0
200243d0:	3b04      	subs	r3, #4
200243d2:	702b      	strb	r3, [r5, #0]
200243d4:	6823      	ldr	r3, [r4, #0]
200243d6:	60da      	str	r2, [r3, #12]
200243d8:	bd70      	pop	{r4, r5, r6, pc}
200243da:	2001      	movs	r0, #1
200243dc:	e7fc      	b.n	200243d8 <HAL_MPI_OPSRAM_CAL_DELAY+0x60>
	...

200243e0 <HAL_SPI_PSRAM_Init>:
200243e0:	b537      	push	{r0, r1, r2, r4, r5, lr}
200243e2:	4614      	mov	r4, r2
200243e4:	4605      	mov	r5, r0
200243e6:	2800      	cmp	r0, #0
200243e8:	d043      	beq.n	20024472 <HAL_SPI_PSRAM_Init+0x92>
200243ea:	2900      	cmp	r1, #0
200243ec:	d041      	beq.n	20024472 <HAL_SPI_PSRAM_Init+0x92>
200243ee:	f7fe fbc3 	bl	20022b78 <HAL_QSPI_Init>
200243f2:	4628      	mov	r0, r5
200243f4:	b2e1      	uxtb	r1, r4
200243f6:	f7fe fc99 	bl	20022d2c <HAL_FLASH_SET_CLK_rom>
200243fa:	4628      	mov	r0, r5
200243fc:	f7ff fd54 	bl	20023ea8 <HAL_QSPI_GET_CLK>
20024400:	4b1d      	ldr	r3, [pc, #116]	@ (20024478 <HAL_SPI_PSRAM_Init+0x98>)
20024402:	4298      	cmp	r0, r3
20024404:	d930      	bls.n	20024468 <HAL_SPI_PSRAM_Init+0x88>
20024406:	4b1d      	ldr	r3, [pc, #116]	@ (2002447c <HAL_SPI_PSRAM_Init+0x9c>)
20024408:	4298      	cmp	r0, r3
2002440a:	d92f      	bls.n	2002446c <HAL_SPI_PSRAM_Init+0x8c>
2002440c:	4b1c      	ldr	r3, [pc, #112]	@ (20024480 <HAL_SPI_PSRAM_Init+0xa0>)
2002440e:	4298      	cmp	r0, r3
20024410:	d922      	bls.n	20024458 <HAL_SPI_PSRAM_Init+0x78>
20024412:	f240 34b6 	movw	r4, #950	@ 0x3b6
20024416:	f240 4374 	movw	r3, #1140	@ 0x474
2002441a:	4a1a      	ldr	r2, [pc, #104]	@ (20024484 <HAL_SPI_PSRAM_Init+0xa4>)
2002441c:	4290      	cmp	r0, r2
2002441e:	bf88      	it	hi
20024420:	461c      	movhi	r4, r3
20024422:	2200      	movs	r2, #0
20024424:	2101      	movs	r1, #1
20024426:	4628      	mov	r0, r5
20024428:	f7ff f8be 	bl	200235a8 <HAL_QSPI_SET_CLK_INV>
2002442c:	2100      	movs	r1, #0
2002442e:	4622      	mov	r2, r4
20024430:	2302      	movs	r3, #2
20024432:	4628      	mov	r0, r5
20024434:	9100      	str	r1, [sp, #0]
20024436:	f7fe fd64 	bl	20022f02 <HAL_FLASH_SET_CS_TIME>
2002443a:	4604      	mov	r4, r0
2002443c:	b948      	cbnz	r0, 20024452 <HAL_SPI_PSRAM_Init+0x72>
2002443e:	2106      	movs	r1, #6
20024440:	4628      	mov	r0, r5
20024442:	f7fe fd73 	bl	20022f2c <HAL_FLASH_SET_ROW_BOUNDARY>
20024446:	4604      	mov	r4, r0
20024448:	b918      	cbnz	r0, 20024452 <HAL_SPI_PSRAM_Init+0x72>
2002444a:	2101      	movs	r1, #1
2002444c:	4628      	mov	r0, r5
2002444e:	f7fe fd12 	bl	20022e76 <HAL_FLASH_ENABLE_QSPI>
20024452:	4620      	mov	r0, r4
20024454:	b003      	add	sp, #12
20024456:	bd30      	pop	{r4, r5, pc}
20024458:	4b0b      	ldr	r3, [pc, #44]	@ (20024488 <HAL_SPI_PSRAM_Init+0xa8>)
2002445a:	f44f 743e 	mov.w	r4, #760	@ 0x2f8
2002445e:	4298      	cmp	r0, r3
20024460:	d8df      	bhi.n	20024422 <HAL_SPI_PSRAM_Init+0x42>
20024462:	2200      	movs	r2, #0
20024464:	4611      	mov	r1, r2
20024466:	e7de      	b.n	20024426 <HAL_SPI_PSRAM_Init+0x46>
20024468:	24b4      	movs	r4, #180	@ 0xb4
2002446a:	e7fa      	b.n	20024462 <HAL_SPI_PSRAM_Init+0x82>
2002446c:	f44f 74be 	mov.w	r4, #380	@ 0x17c
20024470:	e7f7      	b.n	20024462 <HAL_SPI_PSRAM_Init+0x82>
20024472:	2401      	movs	r4, #1
20024474:	e7ed      	b.n	20024452 <HAL_SPI_PSRAM_Init+0x72>
20024476:	bf00      	nop
20024478:	016e3600 	.word	0x016e3600
2002447c:	02dc6c00 	.word	0x02dc6c00
20024480:	05b8d800 	.word	0x05b8d800
20024484:	07270e00 	.word	0x07270e00
20024488:	03938700 	.word	0x03938700

2002448c <HAL_MPI_MR_WRITE>:
2002448c:	b5f0      	push	{r4, r5, r6, r7, lr}
2002448e:	460e      	mov	r6, r1
20024490:	4617      	mov	r7, r2
20024492:	4605      	mov	r5, r0
20024494:	b087      	sub	sp, #28
20024496:	b1d8      	cbz	r0, 200244d0 <HAL_MPI_MR_WRITE+0x44>
20024498:	2207      	movs	r2, #7
2002449a:	2400      	movs	r4, #0
2002449c:	2303      	movs	r3, #3
2002449e:	e9cd 2203 	strd	r2, r2, [sp, #12]
200244a2:	2101      	movs	r1, #1
200244a4:	e9cd 4301 	strd	r4, r3, [sp, #4]
200244a8:	9400      	str	r4, [sp, #0]
200244aa:	4623      	mov	r3, r4
200244ac:	f7fe fc47 	bl	20022d3e <HAL_FLASH_MANUAL_CMD>
200244b0:	2102      	movs	r1, #2
200244b2:	4628      	mov	r0, r5
200244b4:	f7fe fbd9 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
200244b8:	4639      	mov	r1, r7
200244ba:	4628      	mov	r0, r5
200244bc:	f7fe fbce 	bl	20022c5c <HAL_FLASH_WRITE_WORD>
200244c0:	4632      	mov	r2, r6
200244c2:	21c0      	movs	r1, #192	@ 0xc0
200244c4:	4628      	mov	r0, r5
200244c6:	f7fe fbf5 	bl	20022cb4 <HAL_FLASH_SET_CMD>
200244ca:	4620      	mov	r0, r4
200244cc:	b007      	add	sp, #28
200244ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
200244d0:	2001      	movs	r0, #1
200244d2:	e7fb      	b.n	200244cc <HAL_MPI_MR_WRITE+0x40>

200244d4 <HAL_MPI_SET_FIXLAT>:
200244d4:	e92d 41ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
200244d8:	460c      	mov	r4, r1
200244da:	4616      	mov	r6, r2
200244dc:	461f      	mov	r7, r3
200244de:	4605      	mov	r5, r0
200244e0:	2800      	cmp	r0, #0
200244e2:	d040      	beq.n	20024566 <HAL_MPI_SET_FIXLAT+0x92>
200244e4:	466b      	mov	r3, sp
200244e6:	4a21      	ldr	r2, [pc, #132]	@ (2002456c <HAL_MPI_SET_FIXLAT+0x98>)
200244e8:	6810      	ldr	r0, [r2, #0]
200244ea:	6851      	ldr	r1, [r2, #4]
200244ec:	c303      	stmia	r3!, {r0, r1}
200244ee:	6890      	ldr	r0, [r2, #8]
200244f0:	68d1      	ldr	r1, [r2, #12]
200244f2:	c303      	stmia	r3!, {r0, r1}
200244f4:	4628      	mov	r0, r5
200244f6:	b2e1      	uxtb	r1, r4
200244f8:	f7fe fd3e 	bl	20022f78 <HAL_MPI_EN_FIXLAT>
200244fc:	f107 0310 	add.w	r3, r7, #16
20024500:	446b      	add	r3, sp
20024502:	f813 8c08 	ldrb.w	r8, [r3, #-8]
20024506:	ea4f 1848 	mov.w	r8, r8, lsl #5
2002450a:	fa5f f888 	uxtb.w	r8, r8
2002450e:	b30c      	cbz	r4, 20024554 <HAL_MPI_SET_FIXLAT+0x80>
20024510:	ab04      	add	r3, sp, #16
20024512:	eb03 0356 	add.w	r3, r3, r6, lsr #1
20024516:	f813 4c10 	ldrb.w	r4, [r3, #-16]
2002451a:	00a4      	lsls	r4, r4, #2
2002451c:	f044 0421 	orr.w	r4, r4, #33	@ 0x21
20024520:	b264      	sxtb	r4, r4
20024522:	f004 02fd 	and.w	r2, r4, #253	@ 0xfd
20024526:	2100      	movs	r1, #0
20024528:	4628      	mov	r0, r5
2002452a:	f7ff ffaf 	bl	2002448c <HAL_MPI_MR_WRITE>
2002452e:	1e71      	subs	r1, r6, #1
20024530:	4628      	mov	r0, r5
20024532:	b249      	sxtb	r1, r1
20024534:	f7fe fd7e 	bl	20023034 <HAL_MPI_MODIFY_RCMD_DELAY>
20024538:	4642      	mov	r2, r8
2002453a:	2104      	movs	r1, #4
2002453c:	4628      	mov	r0, r5
2002453e:	f7ff ffa5 	bl	2002448c <HAL_MPI_MR_WRITE>
20024542:	1e79      	subs	r1, r7, #1
20024544:	4628      	mov	r0, r5
20024546:	b249      	sxtb	r1, r1
20024548:	f7fe fd7d 	bl	20023046 <HAL_MPI_MODIFY_WCMD_DELAY>
2002454c:	2000      	movs	r0, #0
2002454e:	b004      	add	sp, #16
20024550:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20024554:	f106 0310 	add.w	r3, r6, #16
20024558:	446b      	add	r3, sp
2002455a:	f813 4c10 	ldrb.w	r4, [r3, #-16]
2002455e:	00a4      	lsls	r4, r4, #2
20024560:	f044 0401 	orr.w	r4, r4, #1
20024564:	e7dc      	b.n	20024520 <HAL_MPI_SET_FIXLAT+0x4c>
20024566:	2001      	movs	r0, #1
20024568:	e7f1      	b.n	2002454e <HAL_MPI_SET_FIXLAT+0x7a>
2002456a:	bf00      	nop
2002456c:	2002b898 	.word	0x2002b898

20024570 <HAL_LEGACY_MR_WRITE>:
20024570:	b5f0      	push	{r4, r5, r6, r7, lr}
20024572:	460e      	mov	r6, r1
20024574:	4617      	mov	r7, r2
20024576:	4605      	mov	r5, r0
20024578:	b087      	sub	sp, #28
2002457a:	b1d8      	cbz	r0, 200245b4 <HAL_LEGACY_MR_WRITE+0x44>
2002457c:	2207      	movs	r2, #7
2002457e:	2400      	movs	r4, #0
20024580:	2302      	movs	r3, #2
20024582:	e9cd 2203 	strd	r2, r2, [sp, #12]
20024586:	2101      	movs	r1, #1
20024588:	e9cd 4301 	strd	r4, r3, [sp, #4]
2002458c:	9400      	str	r4, [sp, #0]
2002458e:	4623      	mov	r3, r4
20024590:	f7fe fbd5 	bl	20022d3e <HAL_FLASH_MANUAL_CMD>
20024594:	2104      	movs	r1, #4
20024596:	4628      	mov	r0, r5
20024598:	f7fe fb67 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
2002459c:	4639      	mov	r1, r7
2002459e:	4628      	mov	r0, r5
200245a0:	f7fe fb5c 	bl	20022c5c <HAL_FLASH_WRITE_WORD>
200245a4:	4632      	mov	r2, r6
200245a6:	21c0      	movs	r1, #192	@ 0xc0
200245a8:	4628      	mov	r0, r5
200245aa:	f7fe fb83 	bl	20022cb4 <HAL_FLASH_SET_CMD>
200245ae:	4620      	mov	r0, r4
200245b0:	b007      	add	sp, #28
200245b2:	bdf0      	pop	{r4, r5, r6, r7, pc}
200245b4:	2001      	movs	r0, #1
200245b6:	e7fb      	b.n	200245b0 <HAL_LEGACY_MR_WRITE+0x40>

200245b8 <HAL_LEGACY_CFG_READ>:
200245b8:	b530      	push	{r4, r5, lr}
200245ba:	4605      	mov	r5, r0
200245bc:	b085      	sub	sp, #20
200245be:	b1a0      	cbz	r0, 200245ea <HAL_LEGACY_CFG_READ+0x32>
200245c0:	2400      	movs	r4, #0
200245c2:	2107      	movs	r1, #7
200245c4:	2302      	movs	r3, #2
200245c6:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
200245ca:	e9cd 1102 	strd	r1, r1, [sp, #8]
200245ce:	0052      	lsls	r2, r2, #1
200245d0:	e9cd 4300 	strd	r4, r3, [sp]
200245d4:	b252      	sxtb	r2, r2
200245d6:	4623      	mov	r3, r4
200245d8:	f7fe fafa 	bl	20022bd0 <HAL_FLASH_CFG_AHB_RCMD>
200245dc:	4621      	mov	r1, r4
200245de:	4628      	mov	r0, r5
200245e0:	f7fe faeb 	bl	20022bba <HAL_FLASH_SET_AHB_RCMD>
200245e4:	4620      	mov	r0, r4
200245e6:	b005      	add	sp, #20
200245e8:	bd30      	pop	{r4, r5, pc}
200245ea:	2001      	movs	r0, #1
200245ec:	e7fb      	b.n	200245e6 <HAL_LEGACY_CFG_READ+0x2e>

200245ee <HAL_LEGACY_CFG_WRITE>:
200245ee:	b530      	push	{r4, r5, lr}
200245f0:	4605      	mov	r5, r0
200245f2:	b085      	sub	sp, #20
200245f4:	b190      	cbz	r0, 2002461c <HAL_LEGACY_CFG_WRITE+0x2e>
200245f6:	2107      	movs	r1, #7
200245f8:	2400      	movs	r4, #0
200245fa:	2302      	movs	r3, #2
200245fc:	e9cd 1102 	strd	r1, r1, [sp, #8]
20024600:	e9cd 4300 	strd	r4, r3, [sp]
20024604:	4623      	mov	r3, r4
20024606:	f990 2026 	ldrsb.w	r2, [r0, #38]	@ 0x26
2002460a:	f7fe fb0a 	bl	20022c22 <HAL_FLASH_CFG_AHB_WCMD>
2002460e:	2180      	movs	r1, #128	@ 0x80
20024610:	4628      	mov	r0, r5
20024612:	f7fe fafa 	bl	20022c0a <HAL_FLASH_SET_AHB_WCMD>
20024616:	4620      	mov	r0, r4
20024618:	b005      	add	sp, #20
2002461a:	bd30      	pop	{r4, r5, pc}
2002461c:	2001      	movs	r0, #1
2002461e:	e7fb      	b.n	20024618 <HAL_LEGACY_CFG_WRITE+0x2a>

20024620 <HAL_PSRAM_RESET>:
20024620:	b5f0      	push	{r4, r5, r6, r7, lr}
20024622:	4604      	mov	r4, r0
20024624:	b087      	sub	sp, #28
20024626:	2800      	cmp	r0, #0
20024628:	d03b      	beq.n	200246a2 <HAL_PSRAM_RESET+0x82>
2002462a:	f890 3023 	ldrb.w	r3, [r0, #35]	@ 0x23
2002462e:	2b05      	cmp	r3, #5
20024630:	d034      	beq.n	2002469c <HAL_PSRAM_RESET+0x7c>
20024632:	3b03      	subs	r3, #3
20024634:	2b01      	cmp	r3, #1
20024636:	d82e      	bhi.n	20024696 <HAL_PSRAM_RESET+0x76>
20024638:	2601      	movs	r6, #1
2002463a:	2703      	movs	r7, #3
2002463c:	2300      	movs	r3, #0
2002463e:	2507      	movs	r5, #7
20024640:	b276      	sxtb	r6, r6
20024642:	b27f      	sxtb	r7, r7
20024644:	461a      	mov	r2, r3
20024646:	2101      	movs	r1, #1
20024648:	4620      	mov	r0, r4
2002464a:	e9cd 5503 	strd	r5, r5, [sp, #12]
2002464e:	e9cd 5701 	strd	r5, r7, [sp, #4]
20024652:	9600      	str	r6, [sp, #0]
20024654:	f7fe fb73 	bl	20022d3e <HAL_FLASH_MANUAL_CMD>
20024658:	2200      	movs	r2, #0
2002465a:	21ff      	movs	r1, #255	@ 0xff
2002465c:	4620      	mov	r0, r4
2002465e:	f7fe fb29 	bl	20022cb4 <HAL_FLASH_SET_CMD>
20024662:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
20024666:	2b05      	cmp	r3, #5
20024668:	d10f      	bne.n	2002468a <HAL_PSRAM_RESET+0x6a>
2002466a:	2300      	movs	r3, #0
2002466c:	2101      	movs	r1, #1
2002466e:	461a      	mov	r2, r3
20024670:	4620      	mov	r0, r4
20024672:	e9cd 5503 	strd	r5, r5, [sp, #12]
20024676:	e9cd 5701 	strd	r5, r7, [sp, #4]
2002467a:	9600      	str	r6, [sp, #0]
2002467c:	f7fe fb5f 	bl	20022d3e <HAL_FLASH_MANUAL_CMD>
20024680:	2200      	movs	r2, #0
20024682:	21ff      	movs	r1, #255	@ 0xff
20024684:	4620      	mov	r0, r4
20024686:	f7fe fb15 	bl	20022cb4 <HAL_FLASH_SET_CMD>
2002468a:	2000      	movs	r0, #0
2002468c:	f7fd fc4b 	bl	20021f26 <HAL_Delay_us>
20024690:	2003      	movs	r0, #3
20024692:	f7fd fc48 	bl	20021f26 <HAL_Delay_us>
20024696:	2000      	movs	r0, #0
20024698:	b007      	add	sp, #28
2002469a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002469c:	2603      	movs	r6, #3
2002469e:	2702      	movs	r7, #2
200246a0:	e7cc      	b.n	2002463c <HAL_PSRAM_RESET+0x1c>
200246a2:	2001      	movs	r0, #1
200246a4:	e7f8      	b.n	20024698 <HAL_PSRAM_RESET+0x78>
	...

200246a8 <HAL_OPI_PSRAM_Init>:
200246a8:	b530      	push	{r4, r5, lr}
200246aa:	4604      	mov	r4, r0
200246ac:	b085      	sub	sp, #20
200246ae:	2800      	cmp	r0, #0
200246b0:	d06c      	beq.n	2002478c <HAL_OPI_PSRAM_Init+0xe4>
200246b2:	2900      	cmp	r1, #0
200246b4:	d06a      	beq.n	2002478c <HAL_OPI_PSRAM_Init+0xe4>
200246b6:	f7fe fa5f 	bl	20022b78 <HAL_QSPI_Init>
200246ba:	6823      	ldr	r3, [r4, #0]
200246bc:	f10d 020e 	add.w	r2, sp, #14
200246c0:	f10d 010f 	add.w	r1, sp, #15
200246c4:	4620      	mov	r0, r4
200246c6:	681d      	ldr	r5, [r3, #0]
200246c8:	f7ff fe56 	bl	20024378 <HAL_MPI_OPSRAM_CAL_DELAY>
200246cc:	2101      	movs	r1, #1
200246ce:	4620      	mov	r0, r4
200246d0:	f7fe fb2c 	bl	20022d2c <HAL_FLASH_SET_CLK_rom>
200246d4:	4620      	mov	r0, r4
200246d6:	f7ff fbe7 	bl	20023ea8 <HAL_QSPI_GET_CLK>
200246da:	4b2d      	ldr	r3, [pc, #180]	@ (20024790 <HAL_OPI_PSRAM_Init+0xe8>)
200246dc:	f005 0501 	and.w	r5, r5, #1
200246e0:	4298      	cmp	r0, r3
200246e2:	d93e      	bls.n	20024762 <HAL_OPI_PSRAM_Init+0xba>
200246e4:	f103 6337 	add.w	r3, r3, #191889408	@ 0xb700000
200246e8:	f503 33d8 	add.w	r3, r3, #110592	@ 0x1b000
200246ec:	4298      	cmp	r0, r3
200246ee:	d93d      	bls.n	2002476c <HAL_OPI_PSRAM_Init+0xc4>
200246f0:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
200246f4:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
200246f8:	4298      	cmp	r0, r3
200246fa:	d93d      	bls.n	20024778 <HAL_OPI_PSRAM_Init+0xd0>
200246fc:	2107      	movs	r1, #7
200246fe:	2014      	movs	r0, #20
20024700:	2308      	movs	r3, #8
20024702:	f240 5232 	movw	r2, #1330	@ 0x532
20024706:	f884 1025 	strb.w	r1, [r4, #37]	@ 0x25
2002470a:	f884 1026 	strb.w	r1, [r4, #38]	@ 0x26
2002470e:	2106      	movs	r1, #6
20024710:	9000      	str	r0, [sp, #0]
20024712:	4620      	mov	r0, r4
20024714:	f7fe fbf5 	bl	20022f02 <HAL_FLASH_SET_CS_TIME>
20024718:	2107      	movs	r1, #7
2002471a:	4620      	mov	r0, r4
2002471c:	f7fe fc06 	bl	20022f2c <HAL_FLASH_SET_ROW_BOUNDARY>
20024720:	2101      	movs	r1, #1
20024722:	4620      	mov	r0, r4
20024724:	f7fe fc36 	bl	20022f94 <HAL_MPI_ENABLE_DQS>
20024728:	f89d 100e 	ldrb.w	r1, [sp, #14]
2002472c:	4620      	mov	r0, r4
2002472e:	f7fe fc3f 	bl	20022fb0 <HAL_MPI_SET_DQS_DELAY>
20024732:	2200      	movs	r2, #0
20024734:	f89d 100f 	ldrb.w	r1, [sp, #15]
20024738:	4620      	mov	r0, r4
2002473a:	f7fe fc45 	bl	20022fc8 <HAL_MPI_SET_SCK>
2002473e:	2101      	movs	r1, #1
20024740:	4620      	mov	r0, r4
20024742:	f7fe fb98 	bl	20022e76 <HAL_FLASH_ENABLE_QSPI>
20024746:	2101      	movs	r1, #1
20024748:	4620      	mov	r0, r4
2002474a:	f7fe fba2 	bl	20022e92 <HAL_FLASH_ENABLE_OPI>
2002474e:	b92d      	cbnz	r5, 2002475c <HAL_OPI_PSRAM_Init+0xb4>
20024750:	4b10      	ldr	r3, [pc, #64]	@ (20024794 <HAL_OPI_PSRAM_Init+0xec>)
20024752:	681b      	ldr	r3, [r3, #0]
20024754:	f003 0303 	and.w	r3, r3, #3
20024758:	2b03      	cmp	r3, #3
2002475a:	d113      	bne.n	20024784 <HAL_OPI_PSRAM_Init+0xdc>
2002475c:	2000      	movs	r0, #0
2002475e:	b005      	add	sp, #20
20024760:	bd30      	pop	{r4, r5, pc}
20024762:	2103      	movs	r1, #3
20024764:	2300      	movs	r3, #0
20024766:	4608      	mov	r0, r1
20024768:	22b4      	movs	r2, #180	@ 0xb4
2002476a:	e7cc      	b.n	20024706 <HAL_OPI_PSRAM_Init+0x5e>
2002476c:	2105      	movs	r1, #5
2002476e:	200e      	movs	r0, #14
20024770:	2303      	movs	r3, #3
20024772:	f240 32b6 	movw	r2, #950	@ 0x3b6
20024776:	e7c6      	b.n	20024706 <HAL_OPI_PSRAM_Init+0x5e>
20024778:	2106      	movs	r1, #6
2002477a:	2011      	movs	r0, #17
2002477c:	2305      	movs	r3, #5
2002477e:	f240 4274 	movw	r2, #1140	@ 0x474
20024782:	e7c0      	b.n	20024706 <HAL_OPI_PSRAM_Init+0x5e>
20024784:	4620      	mov	r0, r4
20024786:	f7ff ff4b 	bl	20024620 <HAL_PSRAM_RESET>
2002478a:	e7e7      	b.n	2002475c <HAL_OPI_PSRAM_Init+0xb4>
2002478c:	2001      	movs	r0, #1
2002478e:	e7e6      	b.n	2002475e <HAL_OPI_PSRAM_Init+0xb6>
20024790:	02dc6c01 	.word	0x02dc6c01
20024794:	500c0000 	.word	0x500c0000

20024798 <HAL_LEGACY_PSRAM_Init>:
20024798:	b5f0      	push	{r4, r5, r6, r7, lr}
2002479a:	4604      	mov	r4, r0
2002479c:	b085      	sub	sp, #20
2002479e:	2800      	cmp	r0, #0
200247a0:	f000 8091 	beq.w	200248c6 <HAL_LEGACY_PSRAM_Init+0x12e>
200247a4:	2900      	cmp	r1, #0
200247a6:	f000 808e 	beq.w	200248c6 <HAL_LEGACY_PSRAM_Init+0x12e>
200247aa:	f7fe f9e5 	bl	20022b78 <HAL_QSPI_Init>
200247ae:	6823      	ldr	r3, [r4, #0]
200247b0:	f10d 020e 	add.w	r2, sp, #14
200247b4:	f10d 010f 	add.w	r1, sp, #15
200247b8:	4620      	mov	r0, r4
200247ba:	681e      	ldr	r6, [r3, #0]
200247bc:	f7ff fddc 	bl	20024378 <HAL_MPI_OPSRAM_CAL_DELAY>
200247c0:	2101      	movs	r1, #1
200247c2:	4620      	mov	r0, r4
200247c4:	f7fe fab2 	bl	20022d2c <HAL_FLASH_SET_CLK_rom>
200247c8:	4620      	mov	r0, r4
200247ca:	f7ff fb6d 	bl	20023ea8 <HAL_QSPI_GET_CLK>
200247ce:	4b3f      	ldr	r3, [pc, #252]	@ (200248cc <HAL_LEGACY_PSRAM_Init+0x134>)
200247d0:	4605      	mov	r5, r0
200247d2:	4298      	cmp	r0, r3
200247d4:	4f3e      	ldr	r7, [pc, #248]	@ (200248d0 <HAL_LEGACY_PSRAM_Init+0x138>)
200247d6:	f006 0601 	and.w	r6, r6, #1
200247da:	d957      	bls.n	2002488c <HAL_LEGACY_PSRAM_Init+0xf4>
200247dc:	42b8      	cmp	r0, r7
200247de:	d959      	bls.n	20024894 <HAL_LEGACY_PSRAM_Init+0xfc>
200247e0:	4b3c      	ldr	r3, [pc, #240]	@ (200248d4 <HAL_LEGACY_PSRAM_Init+0x13c>)
200247e2:	4298      	cmp	r0, r3
200247e4:	d95b      	bls.n	2002489e <HAL_LEGACY_PSRAM_Init+0x106>
200247e6:	f103 7337 	add.w	r3, r3, #47972352	@ 0x2dc0000
200247ea:	f503 43d8 	add.w	r3, r3, #27648	@ 0x6c00
200247ee:	4298      	cmp	r0, r3
200247f0:	d85a      	bhi.n	200248a8 <HAL_LEGACY_PSRAM_Init+0x110>
200247f2:	2114      	movs	r1, #20
200247f4:	2308      	movs	r3, #8
200247f6:	f240 5232 	movw	r2, #1330	@ 0x532
200247fa:	9100      	str	r1, [sp, #0]
200247fc:	4620      	mov	r0, r4
200247fe:	2106      	movs	r1, #6
20024800:	f7fe fb7f 	bl	20022f02 <HAL_FLASH_SET_CS_TIME>
20024804:	2107      	movs	r1, #7
20024806:	4620      	mov	r0, r4
20024808:	f7fe fb90 	bl	20022f2c <HAL_FLASH_SET_ROW_BOUNDARY>
2002480c:	2101      	movs	r1, #1
2002480e:	4620      	mov	r0, r4
20024810:	f7fe fbc0 	bl	20022f94 <HAL_MPI_ENABLE_DQS>
20024814:	f89d 100e 	ldrb.w	r1, [sp, #14]
20024818:	4620      	mov	r0, r4
2002481a:	f7fe fbc9 	bl	20022fb0 <HAL_MPI_SET_DQS_DELAY>
2002481e:	2200      	movs	r2, #0
20024820:	f89d 100f 	ldrb.w	r1, [sp, #15]
20024824:	4620      	mov	r0, r4
20024826:	f7fe fbcf 	bl	20022fc8 <HAL_MPI_SET_SCK>
2002482a:	2101      	movs	r1, #1
2002482c:	4620      	mov	r0, r4
2002482e:	f7fe fb87 	bl	20022f40 <HAL_FLASH_SET_LEGACY>
20024832:	2101      	movs	r1, #1
20024834:	4620      	mov	r0, r4
20024836:	f7fe fb1e 	bl	20022e76 <HAL_FLASH_ENABLE_QSPI>
2002483a:	2101      	movs	r1, #1
2002483c:	4620      	mov	r0, r4
2002483e:	f7fe fb28 	bl	20022e92 <HAL_FLASH_ENABLE_OPI>
20024842:	b92e      	cbnz	r6, 20024850 <HAL_LEGACY_PSRAM_Init+0xb8>
20024844:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
20024848:	b913      	cbnz	r3, 20024850 <HAL_LEGACY_PSRAM_Init+0xb8>
2002484a:	4620      	mov	r0, r4
2002484c:	f7ff fee8 	bl	20024620 <HAL_PSRAM_RESET>
20024850:	42bd      	cmp	r5, r7
20024852:	d92e      	bls.n	200248b2 <HAL_LEGACY_PSRAM_Init+0x11a>
20024854:	4b1f      	ldr	r3, [pc, #124]	@ (200248d4 <HAL_LEGACY_PSRAM_Init+0x13c>)
20024856:	429d      	cmp	r5, r3
20024858:	d930      	bls.n	200248bc <HAL_LEGACY_PSRAM_Init+0x124>
2002485a:	2206      	movs	r2, #6
2002485c:	2302      	movs	r3, #2
2002485e:	2588      	movs	r5, #136	@ 0x88
20024860:	263b      	movs	r6, #59	@ 0x3b
20024862:	f884 3026 	strb.w	r3, [r4, #38]	@ 0x26
20024866:	2101      	movs	r1, #1
20024868:	f884 2025 	strb.w	r2, [r4, #37]	@ 0x25
2002486c:	4620      	mov	r0, r4
2002486e:	f7fe fb83 	bl	20022f78 <HAL_MPI_EN_FIXLAT>
20024872:	4632      	mov	r2, r6
20024874:	2100      	movs	r1, #0
20024876:	4620      	mov	r0, r4
20024878:	f7ff fe7a 	bl	20024570 <HAL_LEGACY_MR_WRITE>
2002487c:	462a      	mov	r2, r5
2002487e:	2104      	movs	r1, #4
20024880:	4620      	mov	r0, r4
20024882:	f7ff fe75 	bl	20024570 <HAL_LEGACY_MR_WRITE>
20024886:	2000      	movs	r0, #0
20024888:	b005      	add	sp, #20
2002488a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002488c:	2103      	movs	r1, #3
2002488e:	2300      	movs	r3, #0
20024890:	22b4      	movs	r2, #180	@ 0xb4
20024892:	e7b2      	b.n	200247fa <HAL_LEGACY_PSRAM_Init+0x62>
20024894:	210e      	movs	r1, #14
20024896:	2303      	movs	r3, #3
20024898:	f240 32b6 	movw	r2, #950	@ 0x3b6
2002489c:	e7ad      	b.n	200247fa <HAL_LEGACY_PSRAM_Init+0x62>
2002489e:	2111      	movs	r1, #17
200248a0:	2305      	movs	r3, #5
200248a2:	f240 4274 	movw	r2, #1140	@ 0x474
200248a6:	e7a8      	b.n	200247fa <HAL_LEGACY_PSRAM_Init+0x62>
200248a8:	2117      	movs	r1, #23
200248aa:	2309      	movs	r3, #9
200248ac:	f44f 62be 	mov.w	r2, #1520	@ 0x5f0
200248b0:	e7a3      	b.n	200247fa <HAL_LEGACY_PSRAM_Init+0x62>
200248b2:	2204      	movs	r2, #4
200248b4:	2300      	movs	r3, #0
200248b6:	2508      	movs	r5, #8
200248b8:	2633      	movs	r6, #51	@ 0x33
200248ba:	e7d2      	b.n	20024862 <HAL_LEGACY_PSRAM_Init+0xca>
200248bc:	2205      	movs	r2, #5
200248be:	2300      	movs	r3, #0
200248c0:	2508      	movs	r5, #8
200248c2:	2637      	movs	r6, #55	@ 0x37
200248c4:	e7cd      	b.n	20024862 <HAL_LEGACY_PSRAM_Init+0xca>
200248c6:	2001      	movs	r0, #1
200248c8:	e7de      	b.n	20024888 <HAL_LEGACY_PSRAM_Init+0xf0>
200248ca:	bf00      	nop
200248cc:	02dc6c01 	.word	0x02dc6c01
200248d0:	0e4e1c01 	.word	0x0e4e1c01
200248d4:	112a8801 	.word	0x112a8801

200248d8 <HAL_HYPER_PSRAM_WriteCR>:
200248d8:	b570      	push	{r4, r5, r6, lr}
200248da:	460e      	mov	r6, r1
200248dc:	4615      	mov	r5, r2
200248de:	4604      	mov	r4, r0
200248e0:	b086      	sub	sp, #24
200248e2:	b1f8      	cbz	r0, 20024924 <HAL_HYPER_PSRAM_WriteCR+0x4c>
200248e4:	2207      	movs	r2, #7
200248e6:	2303      	movs	r3, #3
200248e8:	e9cd 2301 	strd	r2, r3, [sp, #4]
200248ec:	2300      	movs	r3, #0
200248ee:	e9cd 2203 	strd	r2, r2, [sp, #12]
200248f2:	9300      	str	r3, [sp, #0]
200248f4:	2101      	movs	r1, #1
200248f6:	f7fe fa22 	bl	20022d3e <HAL_FLASH_MANUAL_CMD>
200248fa:	4631      	mov	r1, r6
200248fc:	4620      	mov	r0, r4
200248fe:	f7fe f9c8 	bl	20022c92 <HAL_FLASH_WRITE_ABYTE>
20024902:	2102      	movs	r1, #2
20024904:	4620      	mov	r0, r4
20024906:	f7fe f9b0 	bl	20022c6a <HAL_FLASH_WRITE_DLEN>
2002490a:	4629      	mov	r1, r5
2002490c:	4620      	mov	r0, r4
2002490e:	f7fe f9a5 	bl	20022c5c <HAL_FLASH_WRITE_WORD>
20024912:	f44f 3280 	mov.w	r2, #65536	@ 0x10000
20024916:	2160      	movs	r1, #96	@ 0x60
20024918:	4620      	mov	r0, r4
2002491a:	b006      	add	sp, #24
2002491c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
20024920:	f7fe b9c8 	b.w	20022cb4 <HAL_FLASH_SET_CMD>
20024924:	b006      	add	sp, #24
20024926:	bd70      	pop	{r4, r5, r6, pc}

20024928 <HAL_HYPER_PSRAM_Init>:
20024928:	b538      	push	{r3, r4, r5, lr}
2002492a:	4604      	mov	r4, r0
2002492c:	2201      	movs	r2, #1
2002492e:	f7ff febb 	bl	200246a8 <HAL_OPI_PSRAM_Init>
20024932:	4620      	mov	r0, r4
20024934:	f7ff fab8 	bl	20023ea8 <HAL_QSPI_GET_CLK>
20024938:	4b15      	ldr	r3, [pc, #84]	@ (20024990 <HAL_HYPER_PSRAM_Init+0x68>)
2002493a:	4298      	cmp	r0, r3
2002493c:	d91f      	bls.n	2002497e <HAL_HYPER_PSRAM_Init+0x56>
2002493e:	4b15      	ldr	r3, [pc, #84]	@ (20024994 <HAL_HYPER_PSRAM_Init+0x6c>)
20024940:	4298      	cmp	r0, r3
20024942:	d91f      	bls.n	20024984 <HAL_HYPER_PSRAM_Init+0x5c>
20024944:	f103 73f4 	add.w	r3, r3, #31981568	@ 0x1e80000
20024948:	f503 4390 	add.w	r3, r3, #18432	@ 0x4800
2002494c:	4298      	cmp	r0, r3
2002494e:	d91c      	bls.n	2002498a <HAL_HYPER_PSRAM_Init+0x62>
20024950:	f242 758f 	movw	r5, #10127	@ 0x278f
20024954:	f241 738f 	movw	r3, #6031	@ 0x178f
20024958:	4a0f      	ldr	r2, [pc, #60]	@ (20024998 <HAL_HYPER_PSRAM_Init+0x70>)
2002495a:	4290      	cmp	r0, r2
2002495c:	bf98      	it	ls
2002495e:	461d      	movls	r5, r3
20024960:	2101      	movs	r1, #1
20024962:	4620      	mov	r0, r4
20024964:	f7fe faa3 	bl	20022eae <HAL_FLASH_ENABLE_HYPER>
20024968:	462a      	mov	r2, r5
2002496a:	4620      	mov	r0, r4
2002496c:	2100      	movs	r1, #0
2002496e:	f7ff ffb3 	bl	200248d8 <HAL_HYPER_PSRAM_WriteCR>
20024972:	2101      	movs	r1, #1
20024974:	4620      	mov	r0, r4
20024976:	f7fe faff 	bl	20022f78 <HAL_MPI_EN_FIXLAT>
2002497a:	2000      	movs	r0, #0
2002497c:	bd38      	pop	{r3, r4, r5, pc}
2002497e:	f24e 758f 	movw	r5, #59279	@ 0xe78f
20024982:	e7ed      	b.n	20024960 <HAL_HYPER_PSRAM_Init+0x38>
20024984:	f24f 758f 	movw	r5, #63375	@ 0xf78f
20024988:	e7ea      	b.n	20024960 <HAL_HYPER_PSRAM_Init+0x38>
2002498a:	f240 758f 	movw	r5, #1935	@ 0x78f
2002498e:	e7e7      	b.n	20024960 <HAL_HYPER_PSRAM_Init+0x38>
20024990:	0a21fe81 	.word	0x0a21fe81
20024994:	0c65d401 	.word	0x0c65d401
20024998:	112a8801 	.word	0x112a8801

2002499c <HAL_HYPER_CFG_READ>:
2002499c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
2002499e:	b160      	cbz	r0, 200249ba <HAL_HYPER_CFG_READ+0x1e>
200249a0:	2107      	movs	r1, #7
200249a2:	2303      	movs	r3, #3
200249a4:	f890 2025 	ldrb.w	r2, [r0, #37]	@ 0x25
200249a8:	e9cd 1300 	strd	r1, r3, [sp]
200249ac:	3a01      	subs	r2, #1
200249ae:	2300      	movs	r3, #0
200249b0:	e9cd 1102 	strd	r1, r1, [sp, #8]
200249b4:	b252      	sxtb	r2, r2
200249b6:	f7fe f90b 	bl	20022bd0 <HAL_FLASH_CFG_AHB_RCMD>
200249ba:	b005      	add	sp, #20
200249bc:	f85d fb04 	ldr.w	pc, [sp], #4

200249c0 <HAL_HYPER_CFG_WRITE>:
200249c0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
200249c2:	b160      	cbz	r0, 200249de <HAL_HYPER_CFG_WRITE+0x1e>
200249c4:	2107      	movs	r1, #7
200249c6:	2303      	movs	r3, #3
200249c8:	f890 2026 	ldrb.w	r2, [r0, #38]	@ 0x26
200249cc:	e9cd 1300 	strd	r1, r3, [sp]
200249d0:	3a01      	subs	r2, #1
200249d2:	2300      	movs	r3, #0
200249d4:	e9cd 1102 	strd	r1, r1, [sp, #8]
200249d8:	b252      	sxtb	r2, r2
200249da:	f7fe f922 	bl	20022c22 <HAL_FLASH_CFG_AHB_WCMD>
200249de:	b005      	add	sp, #20
200249e0:	f85d fb04 	ldr.w	pc, [sp], #4

200249e4 <HAL_PIN_SetUartFunc.part.0>:
200249e4:	108b      	asrs	r3, r1, #2
200249e6:	f1a3 0248 	sub.w	r2, r3, #72	@ 0x48
200249ea:	b5f0      	push	{r4, r5, r6, r7, lr}
200249ec:	b2d6      	uxtb	r6, r2
200249ee:	2e04      	cmp	r6, #4
200249f0:	d849      	bhi.n	20024a86 <HAL_PIN_SetUartFunc.part.0+0xa2>
200249f2:	2e02      	cmp	r6, #2
200249f4:	d810      	bhi.n	20024a18 <HAL_PIN_SetUartFunc.part.0+0x34>
200249f6:	4d25      	ldr	r5, [pc, #148]	@ (20024a8c <HAL_PIN_SetUartFunc.part.0+0xa8>)
200249f8:	240e      	movs	r4, #14
200249fa:	eb05 0582 	add.w	r5, r5, r2, lsl #2
200249fe:	f240 22b2 	movw	r2, #690	@ 0x2b2
20024a02:	eba1 0386 	sub.w	r3, r1, r6, lsl #2
20024a06:	b29b      	uxth	r3, r3
20024a08:	f5a3 7390 	sub.w	r3, r3, #288	@ 0x120
20024a0c:	2b03      	cmp	r3, #3
20024a0e:	d83a      	bhi.n	20024a86 <HAL_PIN_SetUartFunc.part.0+0xa2>
20024a10:	e8df f003 	tbb	[pc, r3]
20024a14:	20271a09 	.word	0x20271a09
20024a18:	4d1d      	ldr	r5, [pc, #116]	@ (20024a90 <HAL_PIN_SetUartFunc.part.0+0xac>)
20024a1a:	009b      	lsls	r3, r3, #2
20024a1c:	243d      	movs	r4, #61	@ 0x3d
20024a1e:	f240 3221 	movw	r2, #801	@ 0x321
20024a22:	441d      	add	r5, r3
20024a24:	e7ed      	b.n	20024a02 <HAL_PIN_SetUartFunc.part.0+0x1e>
20024a26:	2c0e      	cmp	r4, #14
20024a28:	f04f 0608 	mov.w	r6, #8
20024a2c:	d120      	bne.n	20024a70 <HAL_PIN_SetUartFunc.part.0+0x8c>
20024a2e:	f44f 517c 	mov.w	r1, #16128	@ 0x3f00
20024a32:	682f      	ldr	r7, [r5, #0]
20024a34:	1b03      	subs	r3, r0, r4
20024a36:	40b3      	lsls	r3, r6
20024a38:	407b      	eors	r3, r7
20024a3a:	400b      	ands	r3, r1
20024a3c:	4410      	add	r0, r2
20024a3e:	407b      	eors	r3, r7
20024a40:	1b00      	subs	r0, r0, r4
20024a42:	602b      	str	r3, [r5, #0]
20024a44:	b280      	uxth	r0, r0
20024a46:	bdf0      	pop	{r4, r5, r6, r7, pc}
20024a48:	2c0e      	cmp	r4, #14
20024a4a:	f04f 0600 	mov.w	r6, #0
20024a4e:	d112      	bne.n	20024a76 <HAL_PIN_SetUartFunc.part.0+0x92>
20024a50:	213f      	movs	r1, #63	@ 0x3f
20024a52:	e7ee      	b.n	20024a32 <HAL_PIN_SetUartFunc.part.0+0x4e>
20024a54:	2c0e      	cmp	r4, #14
20024a56:	f04f 0610 	mov.w	r6, #16
20024a5a:	d10e      	bne.n	20024a7a <HAL_PIN_SetUartFunc.part.0+0x96>
20024a5c:	f44f 117c 	mov.w	r1, #4128768	@ 0x3f0000
20024a60:	e7e7      	b.n	20024a32 <HAL_PIN_SetUartFunc.part.0+0x4e>
20024a62:	2c0e      	cmp	r4, #14
20024a64:	f04f 0618 	mov.w	r6, #24
20024a68:	d10a      	bne.n	20024a80 <HAL_PIN_SetUartFunc.part.0+0x9c>
20024a6a:	f04f 517c 	mov.w	r1, #1056964608	@ 0x3f000000
20024a6e:	e7e0      	b.n	20024a32 <HAL_PIN_SetUartFunc.part.0+0x4e>
20024a70:	f44f 61e0 	mov.w	r1, #1792	@ 0x700
20024a74:	e7dd      	b.n	20024a32 <HAL_PIN_SetUartFunc.part.0+0x4e>
20024a76:	2107      	movs	r1, #7
20024a78:	e7db      	b.n	20024a32 <HAL_PIN_SetUartFunc.part.0+0x4e>
20024a7a:	f44f 21e0 	mov.w	r1, #458752	@ 0x70000
20024a7e:	e7d8      	b.n	20024a32 <HAL_PIN_SetUartFunc.part.0+0x4e>
20024a80:	f04f 61e0 	mov.w	r1, #117440512	@ 0x7000000
20024a84:	e7d5      	b.n	20024a32 <HAL_PIN_SetUartFunc.part.0+0x4e>
20024a86:	2000      	movs	r0, #0
20024a88:	e7dd      	b.n	20024a46 <HAL_PIN_SetUartFunc.part.0+0x62>
20024a8a:	bf00      	nop
20024a8c:	5000b058 	.word	0x5000b058
20024a90:	4000ef0c 	.word	0x4000ef0c

20024a94 <HAL_PIN_SetAonPE>:
20024a94:	2a00      	cmp	r2, #0
20024a96:	d031      	beq.n	20024afc <HAL_PIN_SetAonPE+0x68>
20024a98:	282f      	cmp	r0, #47	@ 0x2f
20024a9a:	dd16      	ble.n	20024aca <HAL_PIN_SetAonPE+0x36>
20024a9c:	283a      	cmp	r0, #58	@ 0x3a
20024a9e:	dc2d      	bgt.n	20024afc <HAL_PIN_SetAonPE+0x68>
20024aa0:	2301      	movs	r3, #1
20024aa2:	4a17      	ldr	r2, [pc, #92]	@ (20024b00 <HAL_PIN_SetAonPE+0x6c>)
20024aa4:	382a      	subs	r0, #42	@ 0x2a
20024aa6:	4083      	lsls	r3, r0
20024aa8:	6f10      	ldr	r0, [r2, #112]	@ 0x70
20024aaa:	f011 0f20 	tst.w	r1, #32
20024aae:	bf14      	ite	ne
20024ab0:	4318      	orrne	r0, r3
20024ab2:	4398      	biceq	r0, r3
20024ab4:	6710      	str	r0, [r2, #112]	@ 0x70
20024ab6:	4a12      	ldr	r2, [pc, #72]	@ (20024b00 <HAL_PIN_SetAonPE+0x6c>)
20024ab8:	f011 0f10 	tst.w	r1, #16
20024abc:	6ed1      	ldr	r1, [r2, #108]	@ 0x6c
20024abe:	bf14      	ite	ne
20024ac0:	430b      	orrne	r3, r1
20024ac2:	ea21 0303 	biceq.w	r3, r1, r3
20024ac6:	66d3      	str	r3, [r2, #108]	@ 0x6c
20024ac8:	4770      	bx	lr
20024aca:	3826      	subs	r0, #38	@ 0x26
20024acc:	2803      	cmp	r0, #3
20024ace:	d815      	bhi.n	20024afc <HAL_PIN_SetAonPE+0x68>
20024ad0:	4b0c      	ldr	r3, [pc, #48]	@ (20024b04 <HAL_PIN_SetAonPE+0x70>)
20024ad2:	f011 0f20 	tst.w	r1, #32
20024ad6:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20024ada:	bf14      	ite	ne
20024adc:	f042 0210 	orrne.w	r2, r2, #16
20024ae0:	f022 0210 	biceq.w	r2, r2, #16
20024ae4:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20024ae8:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
20024aec:	06c9      	lsls	r1, r1, #27
20024aee:	bf4c      	ite	mi
20024af0:	f042 0208 	orrmi.w	r2, r2, #8
20024af4:	f022 0208 	bicpl.w	r2, r2, #8
20024af8:	f843 2020 	str.w	r2, [r3, r0, lsl #2]
20024afc:	4770      	bx	lr
20024afe:	bf00      	nop
20024b00:	500cb000 	.word	0x500cb000
20024b04:	500cb05c 	.word	0x500cb05c

20024b08 <HAL_PIN_Get_Base>:
20024b08:	b138      	cbz	r0, 20024b1a <HAL_PIN_Get_Base+0x12>
20024b0a:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024b0e:	6893      	ldr	r3, [r2, #8]
20024b10:	4806      	ldr	r0, [pc, #24]	@ (20024b2c <HAL_PIN_Get_Base+0x24>)
20024b12:	f043 0304 	orr.w	r3, r3, #4
20024b16:	6093      	str	r3, [r2, #8]
20024b18:	4770      	bx	lr
20024b1a:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
20024b1e:	6853      	ldr	r3, [r2, #4]
20024b20:	4803      	ldr	r0, [pc, #12]	@ (20024b30 <HAL_PIN_Get_Base+0x28>)
20024b22:	f043 0308 	orr.w	r3, r3, #8
20024b26:	6053      	str	r3, [r2, #4]
20024b28:	4770      	bx	lr
20024b2a:	bf00      	nop
20024b2c:	50003000 	.word	0x50003000
20024b30:	40003000 	.word	0x40003000

20024b34 <HAL_PIN_Func2Idx>:
20024b34:	283b      	cmp	r0, #59	@ 0x3b
20024b36:	bfc8      	it	gt
20024b38:	383c      	subgt	r0, #60	@ 0x3c
20024b3a:	0143      	lsls	r3, r0, #5
20024b3c:	b152      	cbz	r2, 20024b54 <HAL_PIN_Func2Idx+0x20>
20024b3e:	4a06      	ldr	r2, [pc, #24]	@ (20024b58 <HAL_PIN_Func2Idx+0x24>)
20024b40:	2000      	movs	r0, #0
20024b42:	4413      	add	r3, r2
20024b44:	f833 2010 	ldrh.w	r2, [r3, r0, lsl #1]
20024b48:	428a      	cmp	r2, r1
20024b4a:	d002      	beq.n	20024b52 <HAL_PIN_Func2Idx+0x1e>
20024b4c:	3001      	adds	r0, #1
20024b4e:	2810      	cmp	r0, #16
20024b50:	d1f8      	bne.n	20024b44 <HAL_PIN_Func2Idx+0x10>
20024b52:	4770      	bx	lr
20024b54:	4a01      	ldr	r2, [pc, #4]	@ (20024b5c <HAL_PIN_Func2Idx+0x28>)
20024b56:	e7f3      	b.n	20024b40 <HAL_PIN_Func2Idx+0xc>
20024b58:	2002b134 	.word	0x2002b134
20024b5c:	2002b094 	.word	0x2002b094

20024b60 <HAL_PIN_Set>:
20024b60:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20024b64:	4615      	mov	r5, r2
20024b66:	4604      	mov	r4, r0
20024b68:	b918      	cbnz	r0, 20024b72 <HAL_PIN_Set+0x12>
20024b6a:	f04f 30ff 	mov.w	r0, #4294967295
20024b6e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
20024b72:	283a      	cmp	r0, #58	@ 0x3a
20024b74:	bfcd      	iteet	gt
20024b76:	2700      	movgt	r7, #0
20024b78:	2701      	movle	r7, #1
20024b7a:	4606      	movle	r6, r0
20024b7c:	f1a0 063c 	subgt.w	r6, r0, #60	@ 0x3c
20024b80:	4638      	mov	r0, r7
20024b82:	f7ff ffc1 	bl	20024b08 <HAL_PIN_Get_Base>
20024b86:	4680      	mov	r8, r0
20024b88:	2f00      	cmp	r7, #0
20024b8a:	f000 80fe 	beq.w	20024d8a <HAL_PIN_Set+0x22a>
20024b8e:	f5a1 7390 	sub.w	r3, r1, #288	@ 0x120
20024b92:	b29b      	uxth	r3, r3
20024b94:	2b0b      	cmp	r3, #11
20024b96:	d82e      	bhi.n	20024bf6 <HAL_PIN_Set+0x96>
20024b98:	4620      	mov	r0, r4
20024b9a:	f7ff ff23 	bl	200249e4 <HAL_PIN_SetUartFunc.part.0>
20024b9e:	4601      	mov	r1, r0
20024ba0:	463a      	mov	r2, r7
20024ba2:	4620      	mov	r0, r4
20024ba4:	f7ff ffc6 	bl	20024b34 <HAL_PIN_Func2Idx>
20024ba8:	280f      	cmp	r0, #15
20024baa:	4681      	mov	r9, r0
20024bac:	dcdd      	bgt.n	20024b6a <HAL_PIN_Set+0xa>
20024bae:	463a      	mov	r2, r7
20024bb0:	4629      	mov	r1, r5
20024bb2:	4620      	mov	r0, r4
20024bb4:	f7ff ff6e 	bl	20024a94 <HAL_PIN_SetAonPE>
20024bb8:	2f00      	cmp	r7, #0
20024bba:	f040 80ef 	bne.w	20024d9c <HAL_PIN_Set+0x23c>
20024bbe:	2c40      	cmp	r4, #64	@ 0x40
20024bc0:	f340 80ec 	ble.w	20024d9c <HAL_PIN_Set+0x23c>
20024bc4:	4a7f      	ldr	r2, [pc, #508]	@ (20024dc4 <HAL_PIN_Set+0x264>)
20024bc6:	06e8      	lsls	r0, r5, #27
20024bc8:	f852 3024 	ldr.w	r3, [r2, r4, lsl #2]
20024bcc:	ea4f 3909 	mov.w	r9, r9, lsl #12
20024bd0:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024bd4:	f023 0318 	bic.w	r3, r3, #24
20024bd8:	bf48      	it	mi
20024bda:	f043 0308 	orrmi.w	r3, r3, #8
20024bde:	06a9      	lsls	r1, r5, #26
20024be0:	bf48      	it	mi
20024be2:	f043 0310 	orrmi.w	r3, r3, #16
20024be6:	f409 49e0 	and.w	r9, r9, #28672	@ 0x7000
20024bea:	ea49 0303 	orr.w	r3, r9, r3
20024bee:	f842 3024 	str.w	r3, [r2, r4, lsl #2]
20024bf2:	2000      	movs	r0, #0
20024bf4:	e7bb      	b.n	20024b6e <HAL_PIN_Set+0xe>
20024bf6:	f5a1 739c 	sub.w	r3, r1, #312	@ 0x138
20024bfa:	b29b      	uxth	r3, r3
20024bfc:	2b07      	cmp	r3, #7
20024bfe:	d826      	bhi.n	20024c4e <HAL_PIN_Set+0xee>
20024c00:	104a      	asrs	r2, r1, #1
20024c02:	3a9c      	subs	r2, #156	@ 0x9c
20024c04:	eba1 0142 	sub.w	r1, r1, r2, lsl #1
20024c08:	b289      	uxth	r1, r1
20024c0a:	f5b1 7f9c 	cmp.w	r1, #312	@ 0x138
20024c0e:	d019      	beq.n	20024c44 <HAL_PIN_Set+0xe4>
20024c10:	f240 1339 	movw	r3, #313	@ 0x139
20024c14:	4299      	cmp	r1, r3
20024c16:	f040 80bf 	bne.w	20024d98 <HAL_PIN_Set+0x238>
20024c1a:	f04f 0e08 	mov.w	lr, #8
20024c1e:	f44f 5c7c 	mov.w	ip, #16128	@ 0x3f00
20024c22:	4969      	ldr	r1, [pc, #420]	@ (20024dc8 <HAL_PIN_Set+0x268>)
20024c24:	f1a4 030e 	sub.w	r3, r4, #14
20024c28:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024c2c:	fa03 f30e 	lsl.w	r3, r3, lr
20024c30:	4043      	eors	r3, r0
20024c32:	ea03 030c 	and.w	r3, r3, ip
20024c36:	4043      	eors	r3, r0
20024c38:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024c3c:	f504 7129 	add.w	r1, r4, #676	@ 0x2a4
20024c40:	b289      	uxth	r1, r1
20024c42:	e7ad      	b.n	20024ba0 <HAL_PIN_Set+0x40>
20024c44:	f04f 0e00 	mov.w	lr, #0
20024c48:	f04f 0c3f 	mov.w	ip, #63	@ 0x3f
20024c4c:	e7e9      	b.n	20024c22 <HAL_PIN_Set+0xc2>
20024c4e:	f5a1 73ec 	sub.w	r3, r1, #472	@ 0x1d8
20024c52:	b29a      	uxth	r2, r3
20024c54:	2a09      	cmp	r2, #9
20024c56:	d836      	bhi.n	20024cc6 <HAL_PIN_Set+0x166>
20024c58:	2205      	movs	r2, #5
20024c5a:	fbb3 f3f2 	udiv	r3, r3, r2
20024c5e:	ebc3 3283 	rsb	r2, r3, r3, lsl #14
20024c62:	ebc3 0282 	rsb	r2, r3, r2, lsl #2
20024c66:	440a      	add	r2, r1
20024c68:	b292      	uxth	r2, r2
20024c6a:	f5a2 71ec 	sub.w	r1, r2, #472	@ 0x1d8
20024c6e:	b288      	uxth	r0, r1
20024c70:	2803      	cmp	r0, #3
20024c72:	d814      	bhi.n	20024c9e <HAL_PIN_Set+0x13e>
20024c74:	f04f 0e3f 	mov.w	lr, #63	@ 0x3f
20024c78:	4854      	ldr	r0, [pc, #336]	@ (20024dcc <HAL_PIN_Set+0x26c>)
20024c7a:	00c9      	lsls	r1, r1, #3
20024c7c:	f850 c023 	ldr.w	ip, [r0, r3, lsl #2]
20024c80:	f1a4 020e 	sub.w	r2, r4, #14
20024c84:	408a      	lsls	r2, r1
20024c86:	ea82 020c 	eor.w	r2, r2, ip
20024c8a:	fa0e f101 	lsl.w	r1, lr, r1
20024c8e:	400a      	ands	r2, r1
20024c90:	ea82 020c 	eor.w	r2, r2, ip
20024c94:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
20024c98:	f204 2155 	addw	r1, r4, #597	@ 0x255
20024c9c:	e7d0      	b.n	20024c40 <HAL_PIN_Set+0xe0>
20024c9e:	f5b2 7fee 	cmp.w	r2, #476	@ 0x1dc
20024ca2:	d179      	bne.n	20024d98 <HAL_PIN_Set+0x238>
20024ca4:	213f      	movs	r1, #63	@ 0x3f
20024ca6:	484a      	ldr	r0, [pc, #296]	@ (20024dd0 <HAL_PIN_Set+0x270>)
20024ca8:	00da      	lsls	r2, r3, #3
20024caa:	f8d0 c06c 	ldr.w	ip, [r0, #108]	@ 0x6c
20024cae:	f1a4 030e 	sub.w	r3, r4, #14
20024cb2:	4093      	lsls	r3, r2
20024cb4:	ea83 030c 	eor.w	r3, r3, ip
20024cb8:	fa01 f202 	lsl.w	r2, r1, r2
20024cbc:	4013      	ands	r3, r2
20024cbe:	ea83 030c 	eor.w	r3, r3, ip
20024cc2:	66c3      	str	r3, [r0, #108]	@ 0x6c
20024cc4:	e7e8      	b.n	20024c98 <HAL_PIN_Set+0x138>
20024cc6:	f46f 7901 	mvn.w	r9, #516	@ 0x204
20024cca:	eb01 0209 	add.w	r2, r1, r9
20024cce:	b293      	uxth	r3, r2
20024cd0:	2b05      	cmp	r3, #5
20024cd2:	d827      	bhi.n	20024d24 <HAL_PIN_Set+0x1c4>
20024cd4:	2303      	movs	r3, #3
20024cd6:	fbb2 f2f3 	udiv	r2, r2, r3
20024cda:	f46f 7e01 	mvn.w	lr, #516	@ 0x204
20024cde:	ebc2 3382 	rsb	r3, r2, r2, lsl #14
20024ce2:	eb02 0383 	add.w	r3, r2, r3, lsl #2
20024ce6:	440b      	add	r3, r1
20024ce8:	b29b      	uxth	r3, r3
20024cea:	eb03 0c0e 	add.w	ip, r3, lr
20024cee:	fa1f fc8c 	uxth.w	ip, ip
20024cf2:	f1bc 0f02 	cmp.w	ip, #2
20024cf6:	d84f      	bhi.n	20024d98 <HAL_PIN_Set+0x238>
20024cf8:	00db      	lsls	r3, r3, #3
20024cfa:	f5a3 5381 	sub.w	r3, r3, #4128	@ 0x1020
20024cfe:	4935      	ldr	r1, [pc, #212]	@ (20024dd4 <HAL_PIN_Set+0x274>)
20024d00:	f1a4 0e0e 	sub.w	lr, r4, #14
20024d04:	3b08      	subs	r3, #8
20024d06:	fa0e f303 	lsl.w	r3, lr, r3
20024d0a:	f8df e0d8 	ldr.w	lr, [pc, #216]	@ 20024de4 <HAL_PIN_Set+0x284>
20024d0e:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
20024d12:	f85e c02c 	ldr.w	ip, [lr, ip, lsl #2]
20024d16:	4043      	eors	r3, r0
20024d18:	ea03 030c 	and.w	r3, r3, ip
20024d1c:	4043      	eors	r3, r0
20024d1e:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
20024d22:	e7b9      	b.n	20024c98 <HAL_PIN_Set+0x138>
20024d24:	f46f 7cf8 	mvn.w	ip, #496	@ 0x1f0
20024d28:	eb01 030c 	add.w	r3, r1, ip
20024d2c:	b29a      	uxth	r2, r3
20024d2e:	2a09      	cmp	r2, #9
20024d30:	f63f af36 	bhi.w	20024ba0 <HAL_PIN_Set+0x40>
20024d34:	f5b1 7ffc 	cmp.w	r1, #504	@ 0x1f8
20024d38:	d216      	bcs.n	20024d68 <HAL_PIN_Set+0x208>
20024d3a:	0859      	lsrs	r1, r3, #1
20024d3c:	f013 0f01 	tst.w	r3, #1
20024d40:	4b25      	ldr	r3, [pc, #148]	@ (20024dd8 <HAL_PIN_Set+0x278>)
20024d42:	f04f 003f 	mov.w	r0, #63	@ 0x3f
20024d46:	4a25      	ldr	r2, [pc, #148]	@ (20024ddc <HAL_PIN_Set+0x27c>)
20024d48:	bf18      	it	ne
20024d4a:	461a      	movne	r2, r3
20024d4c:	00c9      	lsls	r1, r1, #3
20024d4e:	4088      	lsls	r0, r1
20024d50:	f8d2 c000 	ldr.w	ip, [r2]
20024d54:	f1a4 030e 	sub.w	r3, r4, #14
20024d58:	408b      	lsls	r3, r1
20024d5a:	ea83 030c 	eor.w	r3, r3, ip
20024d5e:	4003      	ands	r3, r0
20024d60:	ea83 030c 	eor.w	r3, r3, ip
20024d64:	6013      	str	r3, [r2, #0]
20024d66:	e797      	b.n	20024c98 <HAL_PIN_Set+0x138>
20024d68:	d007      	beq.n	20024d7a <HAL_PIN_Set+0x21a>
20024d6a:	f240 13f9 	movw	r3, #505	@ 0x1f9
20024d6e:	4299      	cmp	r1, r3
20024d70:	d107      	bne.n	20024d82 <HAL_PIN_Set+0x222>
20024d72:	2100      	movs	r1, #0
20024d74:	203f      	movs	r0, #63	@ 0x3f
20024d76:	4a1a      	ldr	r2, [pc, #104]	@ (20024de0 <HAL_PIN_Set+0x280>)
20024d78:	e7ea      	b.n	20024d50 <HAL_PIN_Set+0x1f0>
20024d7a:	2110      	movs	r1, #16
20024d7c:	f44f 107c 	mov.w	r0, #4128768	@ 0x3f0000
20024d80:	e7f9      	b.n	20024d76 <HAL_PIN_Set+0x216>
20024d82:	2108      	movs	r1, #8
20024d84:	f44f 507c 	mov.w	r0, #16128	@ 0x3f00
20024d88:	e7f5      	b.n	20024d76 <HAL_PIN_Set+0x216>
20024d8a:	f5a1 7396 	sub.w	r3, r1, #300	@ 0x12c
20024d8e:	b29b      	uxth	r3, r3
20024d90:	2b07      	cmp	r3, #7
20024d92:	f63f af05 	bhi.w	20024ba0 <HAL_PIN_Set+0x40>
20024d96:	e6ff      	b.n	20024b98 <HAL_PIN_Set+0x38>
20024d98:	2100      	movs	r1, #0
20024d9a:	e701      	b.n	20024ba0 <HAL_PIN_Set+0x40>
20024d9c:	f106 4680 	add.w	r6, r6, #1073741824	@ 0x40000000
20024da0:	3e01      	subs	r6, #1
20024da2:	f858 3026 	ldr.w	r3, [r8, r6, lsl #2]
20024da6:	f005 0530 	and.w	r5, r5, #48	@ 0x30
20024daa:	f009 090f 	and.w	r9, r9, #15
20024dae:	ea45 0509 	orr.w	r5, r5, r9
20024db2:	f023 033f 	bic.w	r3, r3, #63	@ 0x3f
20024db6:	431d      	orrs	r5, r3
20024db8:	f045 0540 	orr.w	r5, r5, #64	@ 0x40
20024dbc:	f848 5026 	str.w	r5, [r8, r6, lsl #2]
20024dc0:	e717      	b.n	20024bf2 <HAL_PIN_Set+0x92>
20024dc2:	bf00      	nop
20024dc4:	500caf58 	.word	0x500caf58
20024dc8:	5000b048 	.word	0x5000b048
20024dcc:	5000b064 	.word	0x5000b064
20024dd0:	5000b000 	.word	0x5000b000
20024dd4:	5000b070 	.word	0x5000b070
20024dd8:	5000b07c 	.word	0x5000b07c
20024ddc:	5000b078 	.word	0x5000b078
20024de0:	5000b080 	.word	0x5000b080
20024de4:	2002b8a8 	.word	0x2002b8a8

20024de8 <HAL_PIN_Set_Analog>:
20024de8:	283a      	cmp	r0, #58	@ 0x3a
20024dea:	b538      	push	{r3, r4, r5, lr}
20024dec:	4604      	mov	r4, r0
20024dee:	dd25      	ble.n	20024e3c <HAL_PIN_Set_Analog+0x54>
20024df0:	2840      	cmp	r0, #64	@ 0x40
20024df2:	dc16      	bgt.n	20024e22 <HAL_PIN_Set_Analog+0x3a>
20024df4:	2500      	movs	r5, #0
20024df6:	f1a0 013c 	sub.w	r1, r0, #60	@ 0x3c
20024dfa:	4628      	mov	r0, r5
20024dfc:	f7ff fe84 	bl	20024b08 <HAL_PIN_Get_Base>
20024e00:	f101 4380 	add.w	r3, r1, #1073741824	@ 0x40000000
20024e04:	3b01      	subs	r3, #1
20024e06:	f850 1023 	ldr.w	r1, [r0, r3, lsl #2]
20024e0a:	462a      	mov	r2, r5
20024e0c:	f021 015f 	bic.w	r1, r1, #95	@ 0x5f
20024e10:	f041 010f 	orr.w	r1, r1, #15
20024e14:	f840 1023 	str.w	r1, [r0, r3, lsl #2]
20024e18:	2100      	movs	r1, #0
20024e1a:	4620      	mov	r0, r4
20024e1c:	f7ff fe3a 	bl	20024a94 <HAL_PIN_SetAonPE>
20024e20:	e00a      	b.n	20024e38 <HAL_PIN_Set_Analog+0x50>
20024e22:	4a08      	ldr	r2, [pc, #32]	@ (20024e44 <HAL_PIN_Set_Analog+0x5c>)
20024e24:	f852 3020 	ldr.w	r3, [r2, r0, lsl #2]
20024e28:	f423 43e0 	bic.w	r3, r3, #28672	@ 0x7000
20024e2c:	f023 030e 	bic.w	r3, r3, #14
20024e30:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
20024e34:	f842 3020 	str.w	r3, [r2, r0, lsl #2]
20024e38:	2000      	movs	r0, #0
20024e3a:	bd38      	pop	{r3, r4, r5, pc}
20024e3c:	4601      	mov	r1, r0
20024e3e:	2501      	movs	r5, #1
20024e40:	e7db      	b.n	20024dfa <HAL_PIN_Set_Analog+0x12>
20024e42:	bf00      	nop
20024e44:	500caf58 	.word	0x500caf58

20024e48 <HAL_PMU_EnableDLL>:
20024e48:	4b05      	ldr	r3, [pc, #20]	@ (20024e60 <HAL_PMU_EnableDLL+0x18>)
20024e4a:	6e9a      	ldr	r2, [r3, #104]	@ 0x68
20024e4c:	b120      	cbz	r0, 20024e58 <HAL_PMU_EnableDLL+0x10>
20024e4e:	f042 0220 	orr.w	r2, r2, #32
20024e52:	2000      	movs	r0, #0
20024e54:	669a      	str	r2, [r3, #104]	@ 0x68
20024e56:	4770      	bx	lr
20024e58:	f022 0220 	bic.w	r2, r2, #32
20024e5c:	e7f9      	b.n	20024e52 <HAL_PMU_EnableDLL+0xa>
20024e5e:	bf00      	nop
20024e60:	500ca000 	.word	0x500ca000

20024e64 <HAL_RCC_HCPU_ConfigSxModeVolt>:
20024e64:	b507      	push	{r0, r1, r2, lr}
20024e66:	4a13      	ldr	r2, [pc, #76]	@ (20024eb4 <HAL_RCC_HCPU_ConfigSxModeVolt+0x50>)
20024e68:	4913      	ldr	r1, [pc, #76]	@ (20024eb8 <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024e6a:	eb02 02c0 	add.w	r2, r2, r0, lsl #3
20024e6e:	f8d1 309c 	ldr.w	r3, [r1, #156]	@ 0x9c
20024e72:	7892      	ldrb	r2, [r2, #2]
20024e74:	2802      	cmp	r0, #2
20024e76:	f362 0303 	bfi	r3, r2, #0, #4
20024e7a:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
20024e7e:	f10d 0007 	add.w	r0, sp, #7
20024e82:	d111      	bne.n	20024ea8 <HAL_RCC_HCPU_ConfigSxModeVolt+0x44>
20024e84:	f007 faa0 	bl	2002c3c8 <HAL_PMU_GetHpsysVoutRef>
20024e88:	b110      	cbz	r0, 20024e90 <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20024e8a:	230b      	movs	r3, #11
20024e8c:	f88d 3007 	strb.w	r3, [sp, #7]
20024e90:	4a09      	ldr	r2, [pc, #36]	@ (20024eb8 <HAL_RCC_HCPU_ConfigSxModeVolt+0x54>)
20024e92:	f89d 1007 	ldrb.w	r1, [sp, #7]
20024e96:	f8d2 3094 	ldr.w	r3, [r2, #148]	@ 0x94
20024e9a:	f361 0303 	bfi	r3, r1, #0, #4
20024e9e:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
20024ea2:	b003      	add	sp, #12
20024ea4:	f85d fb04 	ldr.w	pc, [sp], #4
20024ea8:	f007 fa9a 	bl	2002c3e0 <HAL_PMU_GetHpsysVoutRef2>
20024eac:	2800      	cmp	r0, #0
20024eae:	d0ef      	beq.n	20024e90 <HAL_RCC_HCPU_ConfigSxModeVolt+0x2c>
20024eb0:	230d      	movs	r3, #13
20024eb2:	e7eb      	b.n	20024e8c <HAL_RCC_HCPU_ConfigSxModeVolt+0x28>
20024eb4:	2002b8c4 	.word	0x2002b8c4
20024eb8:	500ca000 	.word	0x500ca000

20024ebc <HAL_RCC_HCPU_GetClockSrc>:
20024ebc:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024ec0:	280d      	cmp	r0, #13
20024ec2:	6a1a      	ldr	r2, [r3, #32]
20024ec4:	d80d      	bhi.n	20024ee2 <HAL_RCC_HCPU_GetClockSrc+0x26>
20024ec6:	f642 73f1 	movw	r3, #12273	@ 0x2ff1
20024eca:	40c3      	lsrs	r3, r0
20024ecc:	f013 0f01 	tst.w	r3, #1
20024ed0:	bf0c      	ite	eq
20024ed2:	2301      	moveq	r3, #1
20024ed4:	2303      	movne	r3, #3
20024ed6:	4083      	lsls	r3, r0
20024ed8:	4013      	ands	r3, r2
20024eda:	fa23 f000 	lsr.w	r0, r3, r0
20024ede:	b2c0      	uxtb	r0, r0
20024ee0:	4770      	bx	lr
20024ee2:	2301      	movs	r3, #1
20024ee4:	e7f7      	b.n	20024ed6 <HAL_RCC_HCPU_GetClockSrc+0x1a>
	...

20024ee8 <HAL_RCC_HCPU_GetDLLFreq>:
20024ee8:	2801      	cmp	r0, #1
20024eea:	d003      	beq.n	20024ef4 <HAL_RCC_HCPU_GetDLLFreq+0xc>
20024eec:	2802      	cmp	r0, #2
20024eee:	d00e      	beq.n	20024f0e <HAL_RCC_HCPU_GetDLLFreq+0x26>
20024ef0:	2000      	movs	r0, #0
20024ef2:	4770      	bx	lr
20024ef4:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024ef8:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
20024efa:	b163      	cbz	r3, 20024f16 <HAL_RCC_HCPU_GetDLLFreq+0x2e>
20024efc:	f013 0001 	ands.w	r0, r3, #1
20024f00:	d00a      	beq.n	20024f18 <HAL_RCC_HCPU_GetDLLFreq+0x30>
20024f02:	4806      	ldr	r0, [pc, #24]	@ (20024f1c <HAL_RCC_HCPU_GetDLLFreq+0x34>)
20024f04:	f3c3 0383 	ubfx	r3, r3, #2, #4
20024f08:	fb03 0000 	mla	r0, r3, r0, r0
20024f0c:	4770      	bx	lr
20024f0e:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024f12:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
20024f14:	e7f1      	b.n	20024efa <HAL_RCC_HCPU_GetDLLFreq+0x12>
20024f16:	4618      	mov	r0, r3
20024f18:	4770      	bx	lr
20024f1a:	bf00      	nop
20024f1c:	016e3600 	.word	0x016e3600

20024f20 <HAL_RCC_HCPU_GetDLL1Freq>:
20024f20:	2001      	movs	r0, #1
20024f22:	f7ff bfe1 	b.w	20024ee8 <HAL_RCC_HCPU_GetDLLFreq>

20024f26 <HAL_RCC_HCPU_GetDLL2Freq>:
20024f26:	2002      	movs	r0, #2
20024f28:	f7ff bfde 	b.w	20024ee8 <HAL_RCC_HCPU_GetDLLFreq>

20024f2c <HAL_RCC_HCPU_GetDLL3Freq>:
20024f2c:	2000      	movs	r0, #0
20024f2e:	4770      	bx	lr

20024f30 <HAL_RCC_HCPU_EnableDLL>:
20024f30:	4b23      	ldr	r3, [pc, #140]	@ (20024fc0 <HAL_RCC_HCPU_EnableDLL+0x90>)
20024f32:	f1a1 71b7 	sub.w	r1, r1, #23986176	@ 0x16e0000
20024f36:	f5a1 5158 	sub.w	r1, r1, #13824	@ 0x3600
20024f3a:	4299      	cmp	r1, r3
20024f3c:	b510      	push	{r4, lr}
20024f3e:	d83c      	bhi.n	20024fba <HAL_RCC_HCPU_EnableDLL+0x8a>
20024f40:	2801      	cmp	r0, #1
20024f42:	d002      	beq.n	20024f4a <HAL_RCC_HCPU_EnableDLL+0x1a>
20024f44:	2802      	cmp	r0, #2
20024f46:	d036      	beq.n	20024fb6 <HAL_RCC_HCPU_EnableDLL+0x86>
20024f48:	e7fe      	b.n	20024f48 <HAL_RCC_HCPU_EnableDLL+0x18>
20024f4a:	4c1e      	ldr	r4, [pc, #120]	@ (20024fc4 <HAL_RCC_HCPU_EnableDLL+0x94>)
20024f4c:	4b1e      	ldr	r3, [pc, #120]	@ (20024fc8 <HAL_RCC_HCPU_EnableDLL+0x98>)
20024f4e:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20024f52:	0790      	lsls	r0, r2, #30
20024f54:	bf58      	it	pl
20024f56:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20024f5a:	f04f 0000 	mov.w	r0, #0
20024f5e:	bf5c      	itt	pl
20024f60:	f042 0202 	orrpl.w	r2, r2, #2
20024f64:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20024f68:	f8d3 2094 	ldr.w	r2, [r3, #148]	@ 0x94
20024f6c:	07d2      	lsls	r2, r2, #31
20024f6e:	bf5e      	ittt	pl
20024f70:	f8d3 2094 	ldrpl.w	r2, [r3, #148]	@ 0x94
20024f74:	f042 0201 	orrpl.w	r2, r2, #1
20024f78:	f8c3 2094 	strpl.w	r2, [r3, #148]	@ 0x94
20024f7c:	4a13      	ldr	r2, [pc, #76]	@ (20024fcc <HAL_RCC_HCPU_EnableDLL+0x9c>)
20024f7e:	6823      	ldr	r3, [r4, #0]
20024f80:	fbb1 f1f2 	udiv	r1, r1, r2
20024f84:	f023 0301 	bic.w	r3, r3, #1
20024f88:	6023      	str	r3, [r4, #0]
20024f8a:	6823      	ldr	r3, [r4, #0]
20024f8c:	f423 5300 	bic.w	r3, r3, #8192	@ 0x2000
20024f90:	f023 033c 	bic.w	r3, r3, #60	@ 0x3c
20024f94:	ea43 0381 	orr.w	r3, r3, r1, lsl #2
20024f98:	f443 5380 	orr.w	r3, r3, #4096	@ 0x1000
20024f9c:	f043 0301 	orr.w	r3, r3, #1
20024fa0:	6023      	str	r3, [r4, #0]
20024fa2:	f7fc ffc0 	bl	20021f26 <HAL_Delay_us>
20024fa6:	200a      	movs	r0, #10
20024fa8:	f7fc ffbd 	bl	20021f26 <HAL_Delay_us>
20024fac:	6823      	ldr	r3, [r4, #0]
20024fae:	2b00      	cmp	r3, #0
20024fb0:	dafc      	bge.n	20024fac <HAL_RCC_HCPU_EnableDLL+0x7c>
20024fb2:	2000      	movs	r0, #0
20024fb4:	bd10      	pop	{r4, pc}
20024fb6:	4c06      	ldr	r4, [pc, #24]	@ (20024fd0 <HAL_RCC_HCPU_EnableDLL+0xa0>)
20024fb8:	e7c8      	b.n	20024f4c <HAL_RCC_HCPU_EnableDLL+0x1c>
20024fba:	2001      	movs	r0, #1
20024fbc:	e7fa      	b.n	20024fb4 <HAL_RCC_HCPU_EnableDLL+0x84>
20024fbe:	bf00      	nop
20024fc0:	15752a00 	.word	0x15752a00
20024fc4:	5000002c 	.word	0x5000002c
20024fc8:	5000b000 	.word	0x5000b000
20024fcc:	016e3600 	.word	0x016e3600
20024fd0:	50000030 	.word	0x50000030

20024fd4 <HAL_RCC_HCPU_EnableDLL1>:
20024fd4:	4601      	mov	r1, r0
20024fd6:	2001      	movs	r0, #1
20024fd8:	f7ff bfaa 	b.w	20024f30 <HAL_RCC_HCPU_EnableDLL>

20024fdc <HAL_RCC_HCPU_EnableDLL2>:
20024fdc:	4601      	mov	r1, r0
20024fde:	2002      	movs	r0, #2
20024fe0:	f7ff bfa6 	b.w	20024f30 <HAL_RCC_HCPU_EnableDLL>

20024fe4 <HAL_RCC_HCPU_DisableDLL1>:
20024fe4:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20024fe8:	6ad3      	ldr	r3, [r2, #44]	@ 0x2c
20024fea:	2000      	movs	r0, #0
20024fec:	f023 0301 	bic.w	r3, r3, #1
20024ff0:	62d3      	str	r3, [r2, #44]	@ 0x2c
20024ff2:	4770      	bx	lr

20024ff4 <HAL_RCC_GetSysCLKFreq>:
20024ff4:	2801      	cmp	r0, #1
20024ff6:	d108      	bne.n	2002500a <HAL_RCC_GetSysCLKFreq+0x16>
20024ff8:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20024ffc:	6a1b      	ldr	r3, [r3, #32]
20024ffe:	f003 0303 	and.w	r3, r3, #3
20025002:	2b03      	cmp	r3, #3
20025004:	d101      	bne.n	2002500a <HAL_RCC_GetSysCLKFreq+0x16>
20025006:	f7ff bf8b 	b.w	20024f20 <HAL_RCC_HCPU_GetDLL1Freq>
2002500a:	4801      	ldr	r0, [pc, #4]	@ (20025010 <HAL_RCC_GetSysCLKFreq+0x1c>)
2002500c:	4770      	bx	lr
2002500e:	bf00      	nop
20025010:	02dc6c00 	.word	0x02dc6c00

20025014 <HAL_RCC_GetHCLKFreq>:
20025014:	1e02      	subs	r2, r0, #0
20025016:	bf08      	it	eq
20025018:	2201      	moveq	r2, #1
2002501a:	b508      	push	{r3, lr}
2002501c:	4610      	mov	r0, r2
2002501e:	f7ff ffe9 	bl	20024ff4 <HAL_RCC_GetSysCLKFreq>
20025022:	2a01      	cmp	r2, #1
20025024:	d002      	beq.n	2002502c <HAL_RCC_GetHCLKFreq+0x18>
20025026:	2a02      	cmp	r2, #2
20025028:	d00a      	beq.n	20025040 <HAL_RCC_GetHCLKFreq+0x2c>
2002502a:	e7fe      	b.n	2002502a <HAL_RCC_GetHCLKFreq+0x16>
2002502c:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20025030:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
20025032:	b2db      	uxtb	r3, r3
20025034:	2b01      	cmp	r3, #1
20025036:	bfb8      	it	lt
20025038:	2301      	movlt	r3, #1
2002503a:	fbb0 f0f3 	udiv	r0, r0, r3
2002503e:	bd08      	pop	{r3, pc}
20025040:	f04f 4380 	mov.w	r3, #1073741824	@ 0x40000000
20025044:	695b      	ldr	r3, [r3, #20]
20025046:	f003 033f 	and.w	r3, r3, #63	@ 0x3f
2002504a:	e7f3      	b.n	20025034 <HAL_RCC_GetHCLKFreq+0x20>

2002504c <HAL_RCC_HCPU_ClockSelect>:
2002504c:	f04f 43a0 	mov.w	r3, #1342177280	@ 0x50000000
20025050:	b510      	push	{r4, lr}
20025052:	280d      	cmp	r0, #13
20025054:	6a1b      	ldr	r3, [r3, #32]
20025056:	d818      	bhi.n	2002508a <HAL_RCC_HCPU_ClockSelect+0x3e>
20025058:	f642 72f1 	movw	r2, #12273	@ 0x2ff1
2002505c:	40c2      	lsrs	r2, r0
2002505e:	f012 0f01 	tst.w	r2, #1
20025062:	bf0c      	ite	eq
20025064:	2201      	moveq	r2, #1
20025066:	2203      	movne	r2, #3
20025068:	fa02 f400 	lsl.w	r4, r2, r0
2002506c:	4011      	ands	r1, r2
2002506e:	f04f 42a0 	mov.w	r2, #1342177280	@ 0x50000000
20025072:	ea23 0304 	bic.w	r3, r3, r4
20025076:	4081      	lsls	r1, r0
20025078:	430b      	orrs	r3, r1
2002507a:	6213      	str	r3, [r2, #32]
2002507c:	b920      	cbnz	r0, 20025088 <HAL_RCC_HCPU_ClockSelect+0x3c>
2002507e:	2001      	movs	r0, #1
20025080:	f7ff ffc8 	bl	20025014 <HAL_RCC_GetHCLKFreq>
20025084:	4b02      	ldr	r3, [pc, #8]	@ (20025090 <HAL_RCC_HCPU_ClockSelect+0x44>)
20025086:	6018      	str	r0, [r3, #0]
20025088:	bd10      	pop	{r4, pc}
2002508a:	2201      	movs	r2, #1
2002508c:	e7ec      	b.n	20025068 <HAL_RCC_HCPU_ClockSelect+0x1c>
2002508e:	bf00      	nop
20025090:	20042c10 	.word	0x20042c10

20025094 <HAL_RCC_HCPU_SetDiv>:
20025094:	2800      	cmp	r0, #0
20025096:	bfd8      	it	le
20025098:	2000      	movle	r0, #0
2002509a:	b508      	push	{r3, lr}
2002509c:	bfcc      	ite	gt
2002509e:	23ff      	movgt	r3, #255	@ 0xff
200250a0:	4603      	movle	r3, r0
200250a2:	2900      	cmp	r1, #0
200250a4:	db12      	blt.n	200250cc <HAL_RCC_HCPU_SetDiv+0x38>
200250a6:	2a00      	cmp	r2, #0
200250a8:	f443 63e0 	orr.w	r3, r3, #1792	@ 0x700
200250ac:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
200250b0:	da0e      	bge.n	200250d0 <HAL_RCC_HCPU_SetDiv+0x3c>
200250b2:	f04f 41a0 	mov.w	r1, #1342177280	@ 0x50000000
200250b6:	6a4a      	ldr	r2, [r1, #36]	@ 0x24
200250b8:	ea22 0303 	bic.w	r3, r2, r3
200250bc:	4303      	orrs	r3, r0
200250be:	624b      	str	r3, [r1, #36]	@ 0x24
200250c0:	2001      	movs	r0, #1
200250c2:	f7ff ffa7 	bl	20025014 <HAL_RCC_GetHCLKFreq>
200250c6:	4b07      	ldr	r3, [pc, #28]	@ (200250e4 <HAL_RCC_HCPU_SetDiv+0x50>)
200250c8:	6018      	str	r0, [r3, #0]
200250ca:	bd08      	pop	{r3, pc}
200250cc:	2a00      	cmp	r2, #0
200250ce:	db04      	blt.n	200250da <HAL_RCC_HCPU_SetDiv+0x46>
200250d0:	f443 43e0 	orr.w	r3, r3, #28672	@ 0x7000
200250d4:	ea40 3002 	orr.w	r0, r0, r2, lsl #12
200250d8:	e7eb      	b.n	200250b2 <HAL_RCC_HCPU_SetDiv+0x1e>
200250da:	2b00      	cmp	r3, #0
200250dc:	d0f0      	beq.n	200250c0 <HAL_RCC_HCPU_SetDiv+0x2c>
200250de:	23ff      	movs	r3, #255	@ 0xff
200250e0:	e7e7      	b.n	200250b2 <HAL_RCC_HCPU_SetDiv+0x1e>
200250e2:	bf00      	nop
200250e4:	20042c10 	.word	0x20042c10

200250e8 <HAL_RCC_HCPU_SwitchDvfsD2S>:
200250e8:	b570      	push	{r4, r5, r6, lr}
200250ea:	460c      	mov	r4, r1
200250ec:	4d19      	ldr	r5, [pc, #100]	@ (20025154 <HAL_RCC_HCPU_SwitchDvfsD2S+0x6c>)
200250ee:	4606      	mov	r6, r0
200250f0:	f7ff feb8 	bl	20024e64 <HAL_RCC_HCPU_ConfigSxModeVolt>
200250f4:	692b      	ldr	r3, [r5, #16]
200250f6:	20fa      	movs	r0, #250	@ 0xfa
200250f8:	f023 0304 	bic.w	r3, r3, #4
200250fc:	612b      	str	r3, [r5, #16]
200250fe:	f7fc ff12 	bl	20021f26 <HAL_Delay_us>
20025102:	2c30      	cmp	r4, #48	@ 0x30
20025104:	d80d      	bhi.n	20025122 <HAL_RCC_HCPU_SwitchDvfsD2S+0x3a>
20025106:	2100      	movs	r1, #0
20025108:	4608      	mov	r0, r1
2002510a:	f7ff ff9f 	bl	2002504c <HAL_RCC_HCPU_ClockSelect>
2002510e:	2030      	movs	r0, #48	@ 0x30
20025110:	2204      	movs	r2, #4
20025112:	2100      	movs	r1, #0
20025114:	fbb0 f0f4 	udiv	r0, r0, r4
20025118:	f7ff ffbc 	bl	20025094 <HAL_RCC_HCPU_SetDiv>
2002511c:	2400      	movs	r4, #0
2002511e:	4620      	mov	r0, r4
20025120:	bd70      	pop	{r4, r5, r6, pc}
20025122:	f7fd fd15 	bl	20022b50 <HAL_HPAON_EnableXT48>
20025126:	480c      	ldr	r0, [pc, #48]	@ (20025158 <HAL_RCC_HCPU_SwitchDvfsD2S+0x70>)
20025128:	eb00 00c6 	add.w	r0, r0, r6, lsl #3
2002512c:	6843      	ldr	r3, [r0, #4]
2002512e:	480b      	ldr	r0, [pc, #44]	@ (2002515c <HAL_RCC_HCPU_SwitchDvfsD2S+0x74>)
20025130:	61eb      	str	r3, [r5, #28]
20025132:	4360      	muls	r0, r4
20025134:	f7ff ff4e 	bl	20024fd4 <HAL_RCC_HCPU_EnableDLL1>
20025138:	4604      	mov	r4, r0
2002513a:	2800      	cmp	r0, #0
2002513c:	d1ef      	bne.n	2002511e <HAL_RCC_HCPU_SwitchDvfsD2S+0x36>
2002513e:	2101      	movs	r1, #1
20025140:	2206      	movs	r2, #6
20025142:	4608      	mov	r0, r1
20025144:	f7ff ffa6 	bl	20025094 <HAL_RCC_HCPU_SetDiv>
20025148:	2103      	movs	r1, #3
2002514a:	4620      	mov	r0, r4
2002514c:	f7ff ff7e 	bl	2002504c <HAL_RCC_HCPU_ClockSelect>
20025150:	e7e4      	b.n	2002511c <HAL_RCC_HCPU_SwitchDvfsD2S+0x34>
20025152:	bf00      	nop
20025154:	5000b000 	.word	0x5000b000
20025158:	2002b8c4 	.word	0x2002b8c4
2002515c:	000f4240 	.word	0x000f4240

20025160 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>:
20025160:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
20025164:	4c1d      	ldr	r4, [pc, #116]	@ (200251dc <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x7c>)
20025166:	4f1e      	ldr	r7, [pc, #120]	@ (200251e0 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x80>)
20025168:	eb04 02c0 	add.w	r2, r4, r0, lsl #3
2002516c:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
2002516e:	7892      	ldrb	r2, [r2, #2]
20025170:	4605      	mov	r5, r0
20025172:	f362 5317 	bfi	r3, r2, #20, #4
20025176:	ea4f 08c0 	mov.w	r8, r0, lsl #3
2002517a:	633b      	str	r3, [r7, #48]	@ 0x30
2002517c:	f10d 0007 	add.w	r0, sp, #7
20025180:	460e      	mov	r6, r1
20025182:	f007 f921 	bl	2002c3c8 <HAL_PMU_GetHpsysVoutRef>
20025186:	b110      	cbz	r0, 2002518e <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x2e>
20025188:	230b      	movs	r3, #11
2002518a:	f88d 3007 	strb.w	r3, [sp, #7]
2002518e:	f89d 1007 	ldrb.w	r1, [sp, #7]
20025192:	f914 2035 	ldrsb.w	r2, [r4, r5, lsl #3]
20025196:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
20025198:	440a      	add	r2, r1
2002519a:	2100      	movs	r1, #0
2002519c:	f362 0385 	bfi	r3, r2, #2, #4
200251a0:	4608      	mov	r0, r1
200251a2:	64fb      	str	r3, [r7, #76]	@ 0x4c
200251a4:	f7ff ff52 	bl	2002504c <HAL_RCC_HCPU_ClockSelect>
200251a8:	2e30      	cmp	r6, #48	@ 0x30
200251aa:	d900      	bls.n	200251ae <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4e>
200251ac:	e7fe      	b.n	200251ac <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x4c>
200251ae:	2030      	movs	r0, #48	@ 0x30
200251b0:	2204      	movs	r2, #4
200251b2:	2100      	movs	r1, #0
200251b4:	fbb0 f0f6 	udiv	r0, r0, r6
200251b8:	f7ff ff6c 	bl	20025094 <HAL_RCC_HCPU_SetDiv>
200251bc:	f7ff ff12 	bl	20024fe4 <HAL_RCC_HCPU_DisableDLL1>
200251c0:	f7fd fcd2 	bl	20022b68 <HAL_HPAON_DisableXT48>
200251c4:	4444      	add	r4, r8
200251c6:	4b07      	ldr	r3, [pc, #28]	@ (200251e4 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0+0x84>)
200251c8:	6862      	ldr	r2, [r4, #4]
200251ca:	61da      	str	r2, [r3, #28]
200251cc:	691a      	ldr	r2, [r3, #16]
200251ce:	f042 0204 	orr.w	r2, r2, #4
200251d2:	611a      	str	r2, [r3, #16]
200251d4:	b002      	add	sp, #8
200251d6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200251da:	bf00      	nop
200251dc:	2002b8c4 	.word	0x2002b8c4
200251e0:	500ca000 	.word	0x500ca000
200251e4:	5000b000 	.word	0x5000b000

200251e8 <HAL_RCC_HCPU_ConfigDvfs>:
200251e8:	b570      	push	{r4, r5, r6, lr}
200251ea:	4e31      	ldr	r6, [pc, #196]	@ (200252b0 <HAL_RCC_HCPU_ConfigDvfs+0xc8>)
200251ec:	4605      	mov	r5, r0
200251ee:	7833      	ldrb	r3, [r6, #0]
200251f0:	460c      	mov	r4, r1
200251f2:	2b01      	cmp	r3, #1
200251f4:	d943      	bls.n	2002527e <HAL_RCC_HCPU_ConfigDvfs+0x96>
200251f6:	3b02      	subs	r3, #2
200251f8:	2b01      	cmp	r3, #1
200251fa:	d902      	bls.n	20025202 <HAL_RCC_HCPU_ConfigDvfs+0x1a>
200251fc:	2501      	movs	r5, #1
200251fe:	4628      	mov	r0, r5
20025200:	bd70      	pop	{r4, r5, r6, pc}
20025202:	4b2c      	ldr	r3, [pc, #176]	@ (200252b4 <HAL_RCC_HCPU_ConfigDvfs+0xcc>)
20025204:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
20025208:	f7ff fe8d 	bl	20024f26 <HAL_RCC_HCPU_GetDLL2Freq>
2002520c:	4290      	cmp	r0, r2
2002520e:	d8f5      	bhi.n	200251fc <HAL_RCC_HCPU_ConfigDvfs+0x14>
20025210:	2901      	cmp	r1, #1
20025212:	d805      	bhi.n	20025220 <HAL_RCC_HCPU_ConfigDvfs+0x38>
20025214:	4629      	mov	r1, r5
20025216:	4620      	mov	r0, r4
20025218:	f7ff ffa2 	bl	20025160 <HAL_RCC_HCPU_SwitchDvfsS2D.isra.0>
2002521c:	2500      	movs	r5, #0
2002521e:	e035      	b.n	2002528c <HAL_RCC_HCPU_ConfigDvfs+0xa4>
20025220:	2100      	movs	r1, #0
20025222:	4608      	mov	r0, r1
20025224:	f7ff ff12 	bl	2002504c <HAL_RCC_HCPU_ClockSelect>
20025228:	4620      	mov	r0, r4
2002522a:	f7ff fe1b 	bl	20024e64 <HAL_RCC_HCPU_ConfigSxModeVolt>
2002522e:	20fa      	movs	r0, #250	@ 0xfa
20025230:	f7fc fe79 	bl	20021f26 <HAL_Delay_us>
20025234:	f7ff fed6 	bl	20024fe4 <HAL_RCC_HCPU_DisableDLL1>
20025238:	2d30      	cmp	r5, #48	@ 0x30
2002523a:	d80d      	bhi.n	20025258 <HAL_RCC_HCPU_ConfigDvfs+0x70>
2002523c:	f7fd fc94 	bl	20022b68 <HAL_HPAON_DisableXT48>
20025240:	2100      	movs	r1, #0
20025242:	4608      	mov	r0, r1
20025244:	f7ff ff02 	bl	2002504c <HAL_RCC_HCPU_ClockSelect>
20025248:	2204      	movs	r2, #4
2002524a:	2100      	movs	r1, #0
2002524c:	2030      	movs	r0, #48	@ 0x30
2002524e:	fbb0 f0f5 	udiv	r0, r0, r5
20025252:	f7ff ff1f 	bl	20025094 <HAL_RCC_HCPU_SetDiv>
20025256:	e7e1      	b.n	2002521c <HAL_RCC_HCPU_ConfigDvfs+0x34>
20025258:	f7fd fc7a 	bl	20022b50 <HAL_HPAON_EnableXT48>
2002525c:	4816      	ldr	r0, [pc, #88]	@ (200252b8 <HAL_RCC_HCPU_ConfigDvfs+0xd0>)
2002525e:	4368      	muls	r0, r5
20025260:	f7ff feb8 	bl	20024fd4 <HAL_RCC_HCPU_EnableDLL1>
20025264:	4605      	mov	r5, r0
20025266:	2800      	cmp	r0, #0
20025268:	d1c8      	bne.n	200251fc <HAL_RCC_HCPU_ConfigDvfs+0x14>
2002526a:	2101      	movs	r1, #1
2002526c:	2206      	movs	r2, #6
2002526e:	4608      	mov	r0, r1
20025270:	f7ff ff10 	bl	20025094 <HAL_RCC_HCPU_SetDiv>
20025274:	2103      	movs	r1, #3
20025276:	4628      	mov	r0, r5
20025278:	f7ff fee8 	bl	2002504c <HAL_RCC_HCPU_ClockSelect>
2002527c:	e7ce      	b.n	2002521c <HAL_RCC_HCPU_ConfigDvfs+0x34>
2002527e:	2901      	cmp	r1, #1
20025280:	d909      	bls.n	20025296 <HAL_RCC_HCPU_ConfigDvfs+0xae>
20025282:	4601      	mov	r1, r0
20025284:	4620      	mov	r0, r4
20025286:	f7ff ff2f 	bl	200250e8 <HAL_RCC_HCPU_SwitchDvfsD2S>
2002528a:	4605      	mov	r5, r0
2002528c:	2000      	movs	r0, #0
2002528e:	7034      	strb	r4, [r6, #0]
20025290:	f7fc fe49 	bl	20021f26 <HAL_Delay_us>
20025294:	e7b3      	b.n	200251fe <HAL_RCC_HCPU_ConfigDvfs+0x16>
20025296:	428b      	cmp	r3, r1
20025298:	d103      	bne.n	200252a2 <HAL_RCC_HCPU_ConfigDvfs+0xba>
2002529a:	f04f 32ff 	mov.w	r2, #4294967295
2002529e:	4611      	mov	r1, r2
200252a0:	e7d4      	b.n	2002524c <HAL_RCC_HCPU_ConfigDvfs+0x64>
200252a2:	2190      	movs	r1, #144	@ 0x90
200252a4:	2002      	movs	r0, #2
200252a6:	f7ff ff1f 	bl	200250e8 <HAL_RCC_HCPU_SwitchDvfsD2S>
200252aa:	2800      	cmp	r0, #0
200252ac:	d1a6      	bne.n	200251fc <HAL_RCC_HCPU_ConfigDvfs+0x14>
200252ae:	e7b1      	b.n	20025214 <HAL_RCC_HCPU_ConfigDvfs+0x2c>
200252b0:	20042c14 	.word	0x20042c14
200252b4:	2002b8b4 	.word	0x2002b8b4
200252b8:	000f4240 	.word	0x000f4240

200252bc <HAL_RCC_Reset_and_Halt_LCPU>:
200252bc:	4a13      	ldr	r2, [pc, #76]	@ (2002530c <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
200252be:	6813      	ldr	r3, [r2, #0]
200252c0:	0759      	lsls	r1, r3, #29
200252c2:	d421      	bmi.n	20025308 <HAL_RCC_Reset_and_Halt_LCPU+0x4c>
200252c4:	6811      	ldr	r1, [r2, #0]
200252c6:	2800      	cmp	r0, #0
200252c8:	bf0c      	ite	eq
200252ca:	2301      	moveq	r3, #1
200252cc:	f04f 33ff 	movne.w	r3, #4294967295
200252d0:	f041 0104 	orr.w	r1, r1, #4
200252d4:	6011      	str	r1, [r2, #0]
200252d6:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
200252da:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
200252de:	6013      	str	r3, [r2, #0]
200252e0:	6811      	ldr	r1, [r2, #0]
200252e2:	2900      	cmp	r1, #0
200252e4:	d0fc      	beq.n	200252e0 <HAL_RCC_Reset_and_Halt_LCPU+0x24>
200252e6:	4a09      	ldr	r2, [pc, #36]	@ (2002530c <HAL_RCC_Reset_and_Halt_LCPU+0x50>)
200252e8:	6c11      	ldr	r1, [r2, #64]	@ 0x40
200252ea:	06c8      	lsls	r0, r1, #27
200252ec:	d506      	bpl.n	200252fc <HAL_RCC_Reset_and_Halt_LCPU+0x40>
200252ee:	6c11      	ldr	r1, [r2, #64]	@ 0x40
200252f0:	f041 0102 	orr.w	r1, r1, #2
200252f4:	6411      	str	r1, [r2, #64]	@ 0x40
200252f6:	6c11      	ldr	r1, [r2, #64]	@ 0x40
200252f8:	06c9      	lsls	r1, r1, #27
200252fa:	d4fc      	bmi.n	200252f6 <HAL_RCC_Reset_and_Halt_LCPU+0x3a>
200252fc:	f04f 4180 	mov.w	r1, #1073741824	@ 0x40000000
20025300:	680a      	ldr	r2, [r1, #0]
20025302:	ea22 0303 	bic.w	r3, r2, r3
20025306:	600b      	str	r3, [r1, #0]
20025308:	4770      	bx	lr
2002530a:	bf00      	nop
2002530c:	40040000 	.word	0x40040000

20025310 <HAL_RCC_HCPU_ConfigHCLK>:
20025310:	28f0      	cmp	r0, #240	@ 0xf0
20025312:	d80d      	bhi.n	20025330 <HAL_RCC_HCPU_ConfigHCLK+0x20>
20025314:	2890      	cmp	r0, #144	@ 0x90
20025316:	d807      	bhi.n	20025328 <HAL_RCC_HCPU_ConfigHCLK+0x18>
20025318:	2830      	cmp	r0, #48	@ 0x30
2002531a:	d807      	bhi.n	2002532c <HAL_RCC_HCPU_ConfigHCLK+0x1c>
2002531c:	2818      	cmp	r0, #24
2002531e:	bf94      	ite	ls
20025320:	2100      	movls	r1, #0
20025322:	2101      	movhi	r1, #1
20025324:	f7ff bf60 	b.w	200251e8 <HAL_RCC_HCPU_ConfigDvfs>
20025328:	2103      	movs	r1, #3
2002532a:	e7fb      	b.n	20025324 <HAL_RCC_HCPU_ConfigHCLK+0x14>
2002532c:	2102      	movs	r1, #2
2002532e:	e7f9      	b.n	20025324 <HAL_RCC_HCPU_ConfigHCLK+0x14>
20025330:	2001      	movs	r0, #1
20025332:	4770      	bx	lr

20025334 <spi_flash_get_rdid>:
20025334:	b5f0      	push	{r4, r5, r6, r7, lr}
20025336:	4605      	mov	r5, r0
20025338:	3801      	subs	r0, #1
2002533a:	b2c0      	uxtb	r0, r0
2002533c:	28fd      	cmp	r0, #253	@ 0xfd
2002533e:	d808      	bhi.n	20025352 <spi_flash_get_rdid+0x1e>
20025340:	2400      	movs	r4, #0
20025342:	4f0b      	ldr	r7, [pc, #44]	@ (20025370 <spi_flash_get_rdid+0x3c>)
20025344:	f857 0b04 	ldr.w	r0, [r7], #4
20025348:	7806      	ldrb	r6, [r0, #0]
2002534a:	b926      	cbnz	r6, 20025356 <spi_flash_get_rdid+0x22>
2002534c:	3401      	adds	r4, #1
2002534e:	2c06      	cmp	r4, #6
20025350:	d1f8      	bne.n	20025344 <spi_flash_get_rdid+0x10>
20025352:	2000      	movs	r0, #0
20025354:	e00b      	b.n	2002536e <spi_flash_get_rdid+0x3a>
20025356:	42ae      	cmp	r6, r5
20025358:	d105      	bne.n	20025366 <spi_flash_get_rdid+0x32>
2002535a:	7846      	ldrb	r6, [r0, #1]
2002535c:	4296      	cmp	r6, r2
2002535e:	d102      	bne.n	20025366 <spi_flash_get_rdid+0x32>
20025360:	7886      	ldrb	r6, [r0, #2]
20025362:	428e      	cmp	r6, r1
20025364:	d001      	beq.n	2002536a <spi_flash_get_rdid+0x36>
20025366:	3008      	adds	r0, #8
20025368:	e7ee      	b.n	20025348 <spi_flash_get_rdid+0x14>
2002536a:	b103      	cbz	r3, 2002536e <spi_flash_get_rdid+0x3a>
2002536c:	701c      	strb	r4, [r3, #0]
2002536e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20025370:	20042c18 	.word	0x20042c18

20025374 <spi_flash_get_cmd_by_id>:
20025374:	b507      	push	{r0, r1, r2, lr}
20025376:	f10d 0307 	add.w	r3, sp, #7
2002537a:	f7ff ffdb 	bl	20025334 <spi_flash_get_rdid>
2002537e:	4b06      	ldr	r3, [pc, #24]	@ (20025398 <spi_flash_get_cmd_by_id+0x24>)
20025380:	b140      	cbz	r0, 20025394 <spi_flash_get_cmd_by_id+0x20>
20025382:	f44f 7105 	mov.w	r1, #532	@ 0x214
20025386:	f89d 2007 	ldrb.w	r2, [sp, #7]
2002538a:	fb01 3002 	mla	r0, r1, r2, r3
2002538e:	b003      	add	sp, #12
20025390:	f85d fb04 	ldr.w	pc, [sp], #4
20025394:	4618      	mov	r0, r3
20025396:	e7fa      	b.n	2002538e <spi_flash_get_cmd_by_id+0x1a>
20025398:	20042e30 	.word	0x20042e30

2002539c <spi_flash_get_size_by_id>:
2002539c:	b508      	push	{r3, lr}
2002539e:	2300      	movs	r3, #0
200253a0:	f7ff ffc8 	bl	20025334 <spi_flash_get_rdid>
200253a4:	b108      	cbz	r0, 200253aa <spi_flash_get_size_by_id+0xe>
200253a6:	6840      	ldr	r0, [r0, #4]
200253a8:	bd08      	pop	{r3, pc}
200253aa:	f44f 2000 	mov.w	r0, #524288	@ 0x80000
200253ae:	e7fb      	b.n	200253a8 <spi_flash_get_size_by_id+0xc>

200253b0 <spi_flash_is_support_dtr>:
200253b0:	b508      	push	{r3, lr}
200253b2:	2300      	movs	r3, #0
200253b4:	f7ff ffbe 	bl	20025334 <spi_flash_get_rdid>
200253b8:	b110      	cbz	r0, 200253c0 <spi_flash_is_support_dtr+0x10>
200253ba:	78c0      	ldrb	r0, [r0, #3]
200253bc:	f000 0001 	and.w	r0, r0, #1
200253c0:	bd08      	pop	{r3, pc}
	...

200253c4 <spi_nand_get_rdid>:
200253c4:	b5f0      	push	{r4, r5, r6, r7, lr}
200253c6:	4605      	mov	r5, r0
200253c8:	3801      	subs	r0, #1
200253ca:	b2c0      	uxtb	r0, r0
200253cc:	28fd      	cmp	r0, #253	@ 0xfd
200253ce:	d808      	bhi.n	200253e2 <spi_nand_get_rdid+0x1e>
200253d0:	2400      	movs	r4, #0
200253d2:	4f0b      	ldr	r7, [pc, #44]	@ (20025400 <spi_nand_get_rdid+0x3c>)
200253d4:	f857 0b04 	ldr.w	r0, [r7], #4
200253d8:	7806      	ldrb	r6, [r0, #0]
200253da:	b926      	cbnz	r6, 200253e6 <spi_nand_get_rdid+0x22>
200253dc:	3401      	adds	r4, #1
200253de:	2c06      	cmp	r4, #6
200253e0:	d1f8      	bne.n	200253d4 <spi_nand_get_rdid+0x10>
200253e2:	2000      	movs	r0, #0
200253e4:	e00b      	b.n	200253fe <spi_nand_get_rdid+0x3a>
200253e6:	42ae      	cmp	r6, r5
200253e8:	d105      	bne.n	200253f6 <spi_nand_get_rdid+0x32>
200253ea:	7846      	ldrb	r6, [r0, #1]
200253ec:	4296      	cmp	r6, r2
200253ee:	d102      	bne.n	200253f6 <spi_nand_get_rdid+0x32>
200253f0:	7886      	ldrb	r6, [r0, #2]
200253f2:	428e      	cmp	r6, r1
200253f4:	d001      	beq.n	200253fa <spi_nand_get_rdid+0x36>
200253f6:	3008      	adds	r0, #8
200253f8:	e7ee      	b.n	200253d8 <spi_nand_get_rdid+0x14>
200253fa:	b103      	cbz	r3, 200253fe <spi_nand_get_rdid+0x3a>
200253fc:	701c      	strb	r4, [r3, #0]
200253fe:	bdf0      	pop	{r4, r5, r6, r7, pc}
20025400:	20043aa8 	.word	0x20043aa8

20025404 <spi_nand_get_cmd_by_id>:
20025404:	b507      	push	{r0, r1, r2, lr}
20025406:	f10d 0307 	add.w	r3, sp, #7
2002540a:	f7ff ffdb 	bl	200253c4 <spi_nand_get_rdid>
2002540e:	b130      	cbz	r0, 2002541e <spi_nand_get_cmd_by_id+0x1a>
20025410:	f44f 7205 	mov.w	r2, #532	@ 0x214
20025414:	f89d 3007 	ldrb.w	r3, [sp, #7]
20025418:	4802      	ldr	r0, [pc, #8]	@ (20025424 <spi_nand_get_cmd_by_id+0x20>)
2002541a:	fb02 0003 	mla	r0, r2, r3, r0
2002541e:	b003      	add	sp, #12
20025420:	f85d fb04 	ldr.w	pc, [sp], #4
20025424:	20043c88 	.word	0x20043c88

20025428 <HAL_GET_FLASH_DEFAUT_INX>:
20025428:	f04f 30ff 	mov.w	r0, #4294967295
2002542c:	4770      	bx	lr
	...

20025430 <spi_nand_get_default_ctable>:
20025430:	b508      	push	{r3, lr}
20025432:	f7ff fff9 	bl	20025428 <HAL_GET_FLASH_DEFAUT_INX>
20025436:	1e03      	subs	r3, r0, #0
20025438:	bfa5      	ittet	ge
2002543a:	f44f 7205 	movge.w	r2, #532	@ 0x214
2002543e:	4802      	ldrge	r0, [pc, #8]	@ (20025448 <spi_nand_get_default_ctable+0x18>)
20025440:	2000      	movlt	r0, #0
20025442:	fb02 0003 	mlage	r0, r2, r3, r0
20025446:	bd08      	pop	{r3, pc}
20025448:	20043c88 	.word	0x20043c88

2002544c <spi_nand_get_size_by_id>:
2002544c:	b508      	push	{r3, lr}
2002544e:	2300      	movs	r3, #0
20025450:	f7ff ffb8 	bl	200253c4 <spi_nand_get_rdid>
20025454:	b108      	cbz	r0, 2002545a <spi_nand_get_size_by_id+0xe>
20025456:	6840      	ldr	r0, [r0, #4]
20025458:	bd08      	pop	{r3, pc}
2002545a:	f04f 6080 	mov.w	r0, #67108864	@ 0x4000000
2002545e:	e7fb      	b.n	20025458 <spi_nand_get_size_by_id+0xc>

20025460 <spi_nand_get_plane_select_flag>:
20025460:	b508      	push	{r3, lr}
20025462:	2300      	movs	r3, #0
20025464:	f7ff ffae 	bl	200253c4 <spi_nand_get_rdid>
20025468:	b110      	cbz	r0, 20025470 <spi_nand_get_plane_select_flag+0x10>
2002546a:	78c0      	ldrb	r0, [r0, #3]
2002546c:	f3c0 0040 	ubfx	r0, r0, #1, #1
20025470:	bd08      	pop	{r3, pc}

20025472 <spi_nand_get_big_page_flag>:
20025472:	b508      	push	{r3, lr}
20025474:	2300      	movs	r3, #0
20025476:	f7ff ffa5 	bl	200253c4 <spi_nand_get_rdid>
2002547a:	b110      	cbz	r0, 20025482 <spi_nand_get_big_page_flag+0x10>
2002547c:	78c0      	ldrb	r0, [r0, #3]
2002547e:	f3c0 0081 	ubfx	r0, r0, #2, #2
20025482:	bd08      	pop	{r3, pc}

20025484 <spi_nand_get_ecc_mode>:
20025484:	b508      	push	{r3, lr}
20025486:	2300      	movs	r3, #0
20025488:	f7ff ff9c 	bl	200253c4 <spi_nand_get_rdid>
2002548c:	b108      	cbz	r0, 20025492 <spi_nand_get_ecc_mode+0xe>
2002548e:	78c0      	ldrb	r0, [r0, #3]
20025490:	0900      	lsrs	r0, r0, #4
20025492:	bd08      	pop	{r3, pc}

20025494 <bbm_map_check.part.0>:
20025494:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
20025496:	4b21      	ldr	r3, [pc, #132]	@ (2002551c <bbm_map_check.part.0+0x88>)
20025498:	4606      	mov	r6, r0
2002549a:	681d      	ldr	r5, [r3, #0]
2002549c:	4b20      	ldr	r3, [pc, #128]	@ (20025520 <bbm_map_check.part.0+0x8c>)
2002549e:	3d04      	subs	r5, #4
200254a0:	681f      	ldr	r7, [r3, #0]
200254a2:	2300      	movs	r3, #0
200254a4:	f100 0e1a 	add.w	lr, r0, #26
200254a8:	42ab      	cmp	r3, r5
200254aa:	db02      	blt.n	200254b2 <bbm_map_check.part.0+0x1e>
200254ac:	2000      	movs	r0, #0
200254ae:	b003      	add	sp, #12
200254b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
200254b2:	8b31      	ldrh	r1, [r6, #24]
200254b4:	b321      	cbz	r1, 20025500 <bbm_map_check.part.0+0x6c>
200254b6:	8b72      	ldrh	r2, [r6, #26]
200254b8:	b33a      	cbz	r2, 2002550a <bbm_map_check.part.0+0x76>
200254ba:	42b9      	cmp	r1, r7
200254bc:	d201      	bcs.n	200254c2 <bbm_map_check.part.0+0x2e>
200254be:	4297      	cmp	r7, r2
200254c0:	d905      	bls.n	200254ce <bbm_map_check.part.0+0x3a>
200254c2:	4b18      	ldr	r3, [pc, #96]	@ (20025524 <bbm_map_check.part.0+0x90>)
200254c4:	681b      	ldr	r3, [r3, #0]
200254c6:	b10b      	cbz	r3, 200254cc <bbm_map_check.part.0+0x38>
200254c8:	4817      	ldr	r0, [pc, #92]	@ (20025528 <bbm_map_check.part.0+0x94>)
200254ca:	4798      	blx	r3
200254cc:	e7fe      	b.n	200254cc <bbm_map_check.part.0+0x38>
200254ce:	3301      	adds	r3, #1
200254d0:	461c      	mov	r4, r3
200254d2:	42ac      	cmp	r4, r5
200254d4:	db01      	blt.n	200254da <bbm_map_check.part.0+0x46>
200254d6:	3604      	adds	r6, #4
200254d8:	e7e6      	b.n	200254a8 <bbm_map_check.part.0+0x14>
200254da:	f83e c024 	ldrh.w	ip, [lr, r4, lsl #2]
200254de:	f1bc 0f00 	cmp.w	ip, #0
200254e2:	d0f8      	beq.n	200254d6 <bbm_map_check.part.0+0x42>
200254e4:	4562      	cmp	r2, ip
200254e6:	d109      	bne.n	200254fc <bbm_map_check.part.0+0x68>
200254e8:	4b0e      	ldr	r3, [pc, #56]	@ (20025524 <bbm_map_check.part.0+0x90>)
200254ea:	681d      	ldr	r5, [r3, #0]
200254ec:	b12d      	cbz	r5, 200254fa <bbm_map_check.part.0+0x66>
200254ee:	3406      	adds	r4, #6
200254f0:	f830 3024 	ldrh.w	r3, [r0, r4, lsl #2]
200254f4:	480d      	ldr	r0, [pc, #52]	@ (2002552c <bbm_map_check.part.0+0x98>)
200254f6:	9200      	str	r2, [sp, #0]
200254f8:	47a8      	blx	r5
200254fa:	e7fe      	b.n	200254fa <bbm_map_check.part.0+0x66>
200254fc:	3401      	adds	r4, #1
200254fe:	e7e8      	b.n	200254d2 <bbm_map_check.part.0+0x3e>
20025500:	eb00 0283 	add.w	r2, r0, r3, lsl #2
20025504:	8b52      	ldrh	r2, [r2, #26]
20025506:	2a00      	cmp	r2, #0
20025508:	d0d0      	beq.n	200254ac <bbm_map_check.part.0+0x18>
2002550a:	4a06      	ldr	r2, [pc, #24]	@ (20025524 <bbm_map_check.part.0+0x90>)
2002550c:	6814      	ldr	r4, [r2, #0]
2002550e:	b124      	cbz	r4, 2002551a <bbm_map_check.part.0+0x86>
20025510:	eb00 0383 	add.w	r3, r0, r3, lsl #2
20025514:	8b5a      	ldrh	r2, [r3, #26]
20025516:	4806      	ldr	r0, [pc, #24]	@ (20025530 <bbm_map_check.part.0+0x9c>)
20025518:	47a0      	blx	r4
2002551a:	e7fe      	b.n	2002551a <bbm_map_check.part.0+0x86>
2002551c:	20049f84 	.word	0x20049f84
20025520:	20049f88 	.word	0x20049f88
20025524:	20049f74 	.word	0x20049f74
20025528:	2002aa54 	.word	0x2002aa54
2002552c:	2002aa71 	.word	0x2002aa71
20025530:	2002aabe 	.word	0x2002aabe

20025534 <bbm_crc_check>:
20025534:	f04f 32ff 	mov.w	r2, #4294967295
20025538:	b510      	push	{r4, lr}
2002553a:	4c07      	ldr	r4, [pc, #28]	@ (20025558 <bbm_crc_check+0x24>)
2002553c:	4401      	add	r1, r0
2002553e:	4288      	cmp	r0, r1
20025540:	d101      	bne.n	20025546 <bbm_crc_check+0x12>
20025542:	43d0      	mvns	r0, r2
20025544:	bd10      	pop	{r4, pc}
20025546:	f810 3b01 	ldrb.w	r3, [r0], #1
2002554a:	4053      	eors	r3, r2
2002554c:	b2db      	uxtb	r3, r3
2002554e:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
20025552:	ea83 2212 	eor.w	r2, r3, r2, lsr #8
20025556:	e7f2      	b.n	2002553e <bbm_crc_check+0xa>
20025558:	2002b8e4 	.word	0x2002b8e4

2002555c <bbm_get_phy_blk>:
2002555c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002555e:	4b14      	ldr	r3, [pc, #80]	@ (200255b0 <bbm_get_phy_blk+0x54>)
20025560:	4601      	mov	r1, r0
20025562:	681e      	ldr	r6, [r3, #0]
20025564:	42b0      	cmp	r0, r6
20025566:	d21e      	bcs.n	200255a6 <bbm_get_phy_blk+0x4a>
20025568:	b138      	cbz	r0, 2002557a <bbm_get_phy_blk+0x1e>
2002556a:	4b12      	ldr	r3, [pc, #72]	@ (200255b4 <bbm_get_phy_blk+0x58>)
2002556c:	2200      	movs	r2, #0
2002556e:	681c      	ldr	r4, [r3, #0]
20025570:	4b11      	ldr	r3, [pc, #68]	@ (200255b8 <bbm_get_phy_blk+0x5c>)
20025572:	3c04      	subs	r4, #4
20025574:	461d      	mov	r5, r3
20025576:	4294      	cmp	r4, r2
20025578:	dc00      	bgt.n	2002557c <bbm_get_phy_blk+0x20>
2002557a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2002557c:	8b1f      	ldrh	r7, [r3, #24]
2002557e:	428f      	cmp	r7, r1
20025580:	d10a      	bne.n	20025598 <bbm_get_phy_blk+0x3c>
20025582:	eb05 0582 	add.w	r5, r5, r2, lsl #2
20025586:	8b6a      	ldrh	r2, [r5, #26]
20025588:	4296      	cmp	r6, r2
2002558a:	dd0f      	ble.n	200255ac <bbm_get_phy_blk+0x50>
2002558c:	4b0b      	ldr	r3, [pc, #44]	@ (200255bc <bbm_get_phy_blk+0x60>)
2002558e:	681b      	ldr	r3, [r3, #0]
20025590:	b10b      	cbz	r3, 20025596 <bbm_get_phy_blk+0x3a>
20025592:	480b      	ldr	r0, [pc, #44]	@ (200255c0 <bbm_get_phy_blk+0x64>)
20025594:	4798      	blx	r3
20025596:	e7fe      	b.n	20025596 <bbm_get_phy_blk+0x3a>
20025598:	b917      	cbnz	r7, 200255a0 <bbm_get_phy_blk+0x44>
2002559a:	8b5f      	ldrh	r7, [r3, #26]
2002559c:	2f00      	cmp	r7, #0
2002559e:	d0ec      	beq.n	2002557a <bbm_get_phy_blk+0x1e>
200255a0:	3201      	adds	r2, #1
200255a2:	3304      	adds	r3, #4
200255a4:	e7e7      	b.n	20025576 <bbm_get_phy_blk+0x1a>
200255a6:	f04f 30ff 	mov.w	r0, #4294967295
200255aa:	e7e6      	b.n	2002557a <bbm_get_phy_blk+0x1e>
200255ac:	4610      	mov	r0, r2
200255ae:	e7e4      	b.n	2002557a <bbm_get_phy_blk+0x1e>
200255b0:	20049f88 	.word	0x20049f88
200255b4:	20049f84 	.word	0x20049f84
200255b8:	20049f8c 	.word	0x20049f8c
200255bc:	20049f74 	.word	0x20049f74
200255c0:	2002aadc 	.word	0x2002aadc

200255c4 <bbm_get_version_inblk>:
200255c4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200255c8:	4607      	mov	r7, r0
200255ca:	4688      	mov	r8, r1
200255cc:	b087      	sub	sp, #28
200255ce:	2900      	cmp	r1, #0
200255d0:	d14b      	bne.n	2002566a <bbm_get_version_inblk+0xa6>
200255d2:	2500      	movs	r5, #0
200255d4:	4628      	mov	r0, r5
200255d6:	b007      	add	sp, #28
200255d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200255dc:	2200      	movs	r2, #0
200255de:	e9cd 2201 	strd	r2, r2, [sp, #4]
200255e2:	4e26      	ldr	r6, [pc, #152]	@ (2002567c <bbm_get_version_inblk+0xb8>)
200255e4:	9100      	str	r1, [sp, #0]
200255e6:	4638      	mov	r0, r7
200255e8:	4621      	mov	r1, r4
200255ea:	6833      	ldr	r3, [r6, #0]
200255ec:	f7fb facc 	bl	20020b88 <port_read_page>
200255f0:	2800      	cmp	r0, #0
200255f2:	dd32      	ble.n	2002565a <bbm_get_version_inblk+0x96>
200255f4:	6832      	ldr	r2, [r6, #0]
200255f6:	6813      	ldr	r3, [r2, #0]
200255f8:	455b      	cmp	r3, fp
200255fa:	d123      	bne.n	20025644 <bbm_get_version_inblk+0x80>
200255fc:	6856      	ldr	r6, [r2, #4]
200255fe:	f3c6 061e 	ubfx	r6, r6, #0, #31
20025602:	42ae      	cmp	r6, r5
20025604:	dd15      	ble.n	20025632 <bbm_get_version_inblk+0x6e>
20025606:	4610      	mov	r0, r2
20025608:	2110      	movs	r1, #16
2002560a:	9205      	str	r2, [sp, #20]
2002560c:	f7ff ff92 	bl	20025534 <bbm_crc_check>
20025610:	9a05      	ldr	r2, [sp, #20]
20025612:	6913      	ldr	r3, [r2, #16]
20025614:	4283      	cmp	r3, r0
20025616:	d113      	bne.n	20025640 <bbm_get_version_inblk+0x7c>
20025618:	f8c8 4000 	str.w	r4, [r8]
2002561c:	4635      	mov	r5, r6
2002561e:	3401      	adds	r4, #1
20025620:	f8da 1000 	ldr.w	r1, [sl]
20025624:	f8d9 3000 	ldr.w	r3, [r9]
20025628:	fbb3 f3f1 	udiv	r3, r3, r1
2002562c:	42a3      	cmp	r3, r4
2002562e:	d8d5      	bhi.n	200255dc <bbm_get_version_inblk+0x18>
20025630:	e7d0      	b.n	200255d4 <bbm_get_version_inblk+0x10>
20025632:	4b13      	ldr	r3, [pc, #76]	@ (20025680 <bbm_get_version_inblk+0xbc>)
20025634:	681b      	ldr	r3, [r3, #0]
20025636:	b11b      	cbz	r3, 20025640 <bbm_get_version_inblk+0x7c>
20025638:	4632      	mov	r2, r6
2002563a:	4629      	mov	r1, r5
2002563c:	4811      	ldr	r0, [pc, #68]	@ (20025684 <bbm_get_version_inblk+0xc0>)
2002563e:	4798      	blx	r3
20025640:	462e      	mov	r6, r5
20025642:	e7eb      	b.n	2002561c <bbm_get_version_inblk+0x58>
20025644:	1c5a      	adds	r2, r3, #1
20025646:	d0c5      	beq.n	200255d4 <bbm_get_version_inblk+0x10>
20025648:	4a0d      	ldr	r2, [pc, #52]	@ (20025680 <bbm_get_version_inblk+0xbc>)
2002564a:	6815      	ldr	r5, [r2, #0]
2002564c:	2d00      	cmp	r5, #0
2002564e:	d0c0      	beq.n	200255d2 <bbm_get_version_inblk+0xe>
20025650:	4622      	mov	r2, r4
20025652:	4639      	mov	r1, r7
20025654:	480c      	ldr	r0, [pc, #48]	@ (20025688 <bbm_get_version_inblk+0xc4>)
20025656:	47a8      	blx	r5
20025658:	e7bb      	b.n	200255d2 <bbm_get_version_inblk+0xe>
2002565a:	4b09      	ldr	r3, [pc, #36]	@ (20025680 <bbm_get_version_inblk+0xbc>)
2002565c:	681b      	ldr	r3, [r3, #0]
2002565e:	2b00      	cmp	r3, #0
20025660:	d0ee      	beq.n	20025640 <bbm_get_version_inblk+0x7c>
20025662:	4622      	mov	r2, r4
20025664:	4639      	mov	r1, r7
20025666:	4809      	ldr	r0, [pc, #36]	@ (2002568c <bbm_get_version_inblk+0xc8>)
20025668:	e7e9      	b.n	2002563e <bbm_get_version_inblk+0x7a>
2002566a:	2400      	movs	r4, #0
2002566c:	f8df a020 	ldr.w	sl, [pc, #32]	@ 20025690 <bbm_get_version_inblk+0xcc>
20025670:	4625      	mov	r5, r4
20025672:	f8df 9020 	ldr.w	r9, [pc, #32]	@ 20025694 <bbm_get_version_inblk+0xd0>
20025676:	f8df b020 	ldr.w	fp, [pc, #32]	@ 20025698 <bbm_get_version_inblk+0xd4>
2002567a:	e7d1      	b.n	20025620 <bbm_get_version_inblk+0x5c>
2002567c:	20049f78 	.word	0x20049f78
20025680:	20049f74 	.word	0x20049f74
20025684:	2002aafb 	.word	0x2002aafb
20025688:	2002ab28 	.word	0x2002ab28
2002568c:	2002ab59 	.word	0x2002ab59
20025690:	20044900 	.word	0x20044900
20025694:	20044904 	.word	0x20044904
20025698:	5366424d 	.word	0x5366424d

2002569c <bbm_get_map_table>:
2002569c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200256a0:	2801      	cmp	r0, #1
200256a2:	4607      	mov	r7, r0
200256a4:	f8df b15c 	ldr.w	fp, [pc, #348]	@ 20025804 <bbm_get_map_table+0x168>
200256a8:	b087      	sub	sp, #28
200256aa:	dd0a      	ble.n	200256c2 <bbm_get_map_table+0x26>
200256ac:	f8db 3000 	ldr.w	r3, [fp]
200256b0:	b91b      	cbnz	r3, 200256ba <bbm_get_map_table+0x1e>
200256b2:	2000      	movs	r0, #0
200256b4:	b007      	add	sp, #28
200256b6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200256ba:	4601      	mov	r1, r0
200256bc:	4847      	ldr	r0, [pc, #284]	@ (200257dc <bbm_get_map_table+0x140>)
200256be:	4798      	blx	r3
200256c0:	e7f7      	b.n	200256b2 <bbm_get_map_table+0x16>
200256c2:	f8df 8144 	ldr.w	r8, [pc, #324]	@ 20025808 <bbm_get_map_table+0x16c>
200256c6:	2800      	cmp	r0, #0
200256c8:	d163      	bne.n	20025792 <bbm_get_map_table+0xf6>
200256ca:	f8b8 6000 	ldrh.w	r6, [r8]
200256ce:	f8b8 5002 	ldrh.w	r5, [r8, #2]
200256d2:	2e00      	cmp	r6, #0
200256d4:	d062      	beq.n	2002579c <bbm_get_map_table+0x100>
200256d6:	4630      	mov	r0, r6
200256d8:	a904      	add	r1, sp, #16
200256da:	f7ff ff73 	bl	200255c4 <bbm_get_version_inblk>
200256de:	4681      	mov	r9, r0
200256e0:	2d00      	cmp	r5, #0
200256e2:	d05d      	beq.n	200257a0 <bbm_get_map_table+0x104>
200256e4:	4628      	mov	r0, r5
200256e6:	a905      	add	r1, sp, #20
200256e8:	f7ff ff6c 	bl	200255c4 <bbm_get_version_inblk>
200256ec:	4604      	mov	r4, r0
200256ee:	f8db a000 	ldr.w	sl, [fp]
200256f2:	f1ba 0f00 	cmp.w	sl, #0
200256f6:	d005      	beq.n	20025704 <bbm_get_map_table+0x68>
200256f8:	4623      	mov	r3, r4
200256fa:	4632      	mov	r2, r6
200256fc:	4649      	mov	r1, r9
200256fe:	4838      	ldr	r0, [pc, #224]	@ (200257e0 <bbm_get_map_table+0x144>)
20025700:	9500      	str	r5, [sp, #0]
20025702:	47d0      	blx	sl
20025704:	45a1      	cmp	r9, r4
20025706:	d0d4      	beq.n	200256b2 <bbm_get_map_table+0x16>
20025708:	f04f 0200 	mov.w	r2, #0
2002570c:	bf98      	it	ls
2002570e:	462e      	movls	r6, r5
20025710:	f107 0308 	add.w	r3, r7, #8
20025714:	bf94      	ite	ls
20025716:	f828 5013 	strhls.w	r5, [r8, r3, lsl #1]
2002571a:	f828 6013 	strhhi.w	r6, [r8, r3, lsl #1]
2002571e:	e9cd 2201 	strd	r2, r2, [sp, #4]
20025722:	4b30      	ldr	r3, [pc, #192]	@ (200257e4 <bbm_get_map_table+0x148>)
20025724:	bf88      	it	hi
20025726:	f8dd a010 	ldrhi.w	sl, [sp, #16]
2002572a:	681b      	ldr	r3, [r3, #0]
2002572c:	bf98      	it	ls
2002572e:	f8dd a014 	ldrls.w	sl, [sp, #20]
20025732:	f8df 80d8 	ldr.w	r8, [pc, #216]	@ 2002580c <bbm_get_map_table+0x170>
20025736:	9300      	str	r3, [sp, #0]
20025738:	4651      	mov	r1, sl
2002573a:	4630      	mov	r0, r6
2002573c:	f8d8 3000 	ldr.w	r3, [r8]
20025740:	bf88      	it	hi
20025742:	464c      	movhi	r4, r9
20025744:	f7fb fa20 	bl	20020b88 <port_read_page>
20025748:	2800      	cmp	r0, #0
2002574a:	f8db 5000 	ldr.w	r5, [fp]
2002574e:	dd38      	ble.n	200257c2 <bbm_get_map_table+0x126>
20025750:	f8d8 8000 	ldr.w	r8, [r8]
20025754:	4b24      	ldr	r3, [pc, #144]	@ (200257e8 <bbm_get_map_table+0x14c>)
20025756:	f8d8 2000 	ldr.w	r2, [r8]
2002575a:	429a      	cmp	r2, r3
2002575c:	d12b      	bne.n	200257b6 <bbm_get_map_table+0x11a>
2002575e:	2110      	movs	r1, #16
20025760:	4640      	mov	r0, r8
20025762:	f7ff fee7 	bl	20025534 <bbm_crc_check>
20025766:	f8d8 2010 	ldr.w	r2, [r8, #16]
2002576a:	4601      	mov	r1, r0
2002576c:	4282      	cmp	r2, r0
2002576e:	d11e      	bne.n	200257ae <bbm_get_map_table+0x112>
20025770:	f8d8 1004 	ldr.w	r1, [r8, #4]
20025774:	f3c1 011e 	ubfx	r1, r1, #0, #31
20025778:	42a1      	cmp	r1, r4
2002577a:	d113      	bne.n	200257a4 <bbm_get_map_table+0x108>
2002577c:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025780:	481a      	ldr	r0, [pc, #104]	@ (200257ec <bbm_get_map_table+0x150>)
20025782:	4641      	mov	r1, r8
20025784:	fb02 0007 	mla	r0, r2, r7, r0
20025788:	f005 f88a 	bl	2002a8a0 <memcpy>
2002578c:	bb0d      	cbnz	r5, 200257d2 <bbm_get_map_table+0x136>
2002578e:	4620      	mov	r0, r4
20025790:	e790      	b.n	200256b4 <bbm_get_map_table+0x18>
20025792:	f8b8 6004 	ldrh.w	r6, [r8, #4]
20025796:	f8b8 5006 	ldrh.w	r5, [r8, #6]
2002579a:	e79a      	b.n	200256d2 <bbm_get_map_table+0x36>
2002579c:	46b1      	mov	r9, r6
2002579e:	e79f      	b.n	200256e0 <bbm_get_map_table+0x44>
200257a0:	462c      	mov	r4, r5
200257a2:	e7a4      	b.n	200256ee <bbm_get_map_table+0x52>
200257a4:	b115      	cbz	r5, 200257ac <bbm_get_map_table+0x110>
200257a6:	4622      	mov	r2, r4
200257a8:	4811      	ldr	r0, [pc, #68]	@ (200257f0 <bbm_get_map_table+0x154>)
200257aa:	47a8      	blx	r5
200257ac:	e7fe      	b.n	200257ac <bbm_get_map_table+0x110>
200257ae:	b10d      	cbz	r5, 200257b4 <bbm_get_map_table+0x118>
200257b0:	4810      	ldr	r0, [pc, #64]	@ (200257f4 <bbm_get_map_table+0x158>)
200257b2:	47a8      	blx	r5
200257b4:	e7fe      	b.n	200257b4 <bbm_get_map_table+0x118>
200257b6:	b11d      	cbz	r5, 200257c0 <bbm_get_map_table+0x124>
200257b8:	4652      	mov	r2, sl
200257ba:	4631      	mov	r1, r6
200257bc:	480e      	ldr	r0, [pc, #56]	@ (200257f8 <bbm_get_map_table+0x15c>)
200257be:	47a8      	blx	r5
200257c0:	e7fe      	b.n	200257c0 <bbm_get_map_table+0x124>
200257c2:	2d00      	cmp	r5, #0
200257c4:	f43f af75 	beq.w	200256b2 <bbm_get_map_table+0x16>
200257c8:	4652      	mov	r2, sl
200257ca:	4631      	mov	r1, r6
200257cc:	480b      	ldr	r0, [pc, #44]	@ (200257fc <bbm_get_map_table+0x160>)
200257ce:	47a8      	blx	r5
200257d0:	e76f      	b.n	200256b2 <bbm_get_map_table+0x16>
200257d2:	4621      	mov	r1, r4
200257d4:	480a      	ldr	r0, [pc, #40]	@ (20025800 <bbm_get_map_table+0x164>)
200257d6:	47a8      	blx	r5
200257d8:	e7d9      	b.n	2002578e <bbm_get_map_table+0xf2>
200257da:	bf00      	nop
200257dc:	2002ab77 	.word	0x2002ab77
200257e0:	2002ab8b 	.word	0x2002ab8b
200257e4:	20044900 	.word	0x20044900
200257e8:	5366424d 	.word	0x5366424d
200257ec:	20049f8c 	.word	0x20049f8c
200257f0:	2002abb1 	.word	0x2002abb1
200257f4:	2002abfb 	.word	0x2002abfb
200257f8:	2002ac0d 	.word	0x2002ac0d
200257fc:	2002ac42 	.word	0x2002ac42
20025800:	2002ac6e 	.word	0x2002ac6e
20025804:	20049f74 	.word	0x20049f74
20025808:	2004a39c 	.word	0x2004a39c
2002580c:	20049f78 	.word	0x20049f78

20025810 <bbm_get_page_num>:
20025810:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20025814:	4605      	mov	r5, r0
20025816:	2400      	movs	r4, #0
20025818:	4f13      	ldr	r7, [pc, #76]	@ (20025868 <bbm_get_page_num+0x58>)
2002581a:	4e14      	ldr	r6, [pc, #80]	@ (2002586c <bbm_get_page_num+0x5c>)
2002581c:	f8df 8050 	ldr.w	r8, [pc, #80]	@ 20025870 <bbm_get_page_num+0x60>
20025820:	b085      	sub	sp, #20
20025822:	6839      	ldr	r1, [r7, #0]
20025824:	6833      	ldr	r3, [r6, #0]
20025826:	fbb3 f3f1 	udiv	r3, r3, r1
2002582a:	42a3      	cmp	r3, r4
2002582c:	d802      	bhi.n	20025834 <bbm_get_page_num+0x24>
2002582e:	f04f 34ff 	mov.w	r4, #4294967295
20025832:	e015      	b.n	20025860 <bbm_get_page_num+0x50>
20025834:	2200      	movs	r2, #0
20025836:	e9cd 2201 	strd	r2, r2, [sp, #4]
2002583a:	f8df 9038 	ldr.w	r9, [pc, #56]	@ 20025874 <bbm_get_page_num+0x64>
2002583e:	9100      	str	r1, [sp, #0]
20025840:	4628      	mov	r0, r5
20025842:	4621      	mov	r1, r4
20025844:	f8d9 3000 	ldr.w	r3, [r9]
20025848:	f7fb f99e 	bl	20020b88 <port_read_page>
2002584c:	b120      	cbz	r0, 20025858 <bbm_get_page_num+0x48>
2002584e:	f8d9 3000 	ldr.w	r3, [r9]
20025852:	681b      	ldr	r3, [r3, #0]
20025854:	4543      	cmp	r3, r8
20025856:	d101      	bne.n	2002585c <bbm_get_page_num+0x4c>
20025858:	3401      	adds	r4, #1
2002585a:	e7e2      	b.n	20025822 <bbm_get_page_num+0x12>
2002585c:	3301      	adds	r3, #1
2002585e:	d1fb      	bne.n	20025858 <bbm_get_page_num+0x48>
20025860:	4620      	mov	r0, r4
20025862:	b005      	add	sp, #20
20025864:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20025868:	20044900 	.word	0x20044900
2002586c:	20044904 	.word	0x20044904
20025870:	5366424d 	.word	0x5366424d
20025874:	20049f78 	.word	0x20049f78

20025878 <bbm_read_page>:
20025878:	b5f0      	push	{r4, r5, r6, r7, lr}
2002587a:	4604      	mov	r4, r0
2002587c:	b085      	sub	sp, #20
2002587e:	b280      	uxth	r0, r0
20025880:	461f      	mov	r7, r3
20025882:	460d      	mov	r5, r1
20025884:	4616      	mov	r6, r2
20025886:	f7ff fe69 	bl	2002555c <bbm_get_phy_blk>
2002588a:	1c43      	adds	r3, r0, #1
2002588c:	d108      	bne.n	200258a0 <bbm_read_page+0x28>
2002588e:	4b0a      	ldr	r3, [pc, #40]	@ (200258b8 <bbm_read_page+0x40>)
20025890:	681b      	ldr	r3, [r3, #0]
20025892:	b113      	cbz	r3, 2002589a <bbm_read_page+0x22>
20025894:	4621      	mov	r1, r4
20025896:	4809      	ldr	r0, [pc, #36]	@ (200258bc <bbm_read_page+0x44>)
20025898:	4798      	blx	r3
2002589a:	2000      	movs	r0, #0
2002589c:	b005      	add	sp, #20
2002589e:	bdf0      	pop	{r4, r5, r6, r7, pc}
200258a0:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
200258a2:	4632      	mov	r2, r6
200258a4:	9302      	str	r3, [sp, #8]
200258a6:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200258a8:	4629      	mov	r1, r5
200258aa:	9301      	str	r3, [sp, #4]
200258ac:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
200258ae:	9300      	str	r3, [sp, #0]
200258b0:	463b      	mov	r3, r7
200258b2:	f7fb f969 	bl	20020b88 <port_read_page>
200258b6:	e7f1      	b.n	2002589c <bbm_read_page+0x24>
200258b8:	20049f74 	.word	0x20049f74
200258bc:	2002ac81 	.word	0x2002ac81

200258c0 <port_write_page>:
200258c0:	4b01      	ldr	r3, [pc, #4]	@ (200258c8 <port_write_page+0x8>)
200258c2:	6818      	ldr	r0, [r3, #0]
200258c4:	4770      	bx	lr
200258c6:	bf00      	nop
200258c8:	20044900 	.word	0x20044900

200258cc <bbm_write_talbe.isra.0>:
200258cc:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
200258ce:	4604      	mov	r4, r0
200258d0:	4608      	mov	r0, r1
200258d2:	460e      	mov	r6, r1
200258d4:	f7ff ff9c 	bl	20025810 <bbm_get_page_num>
200258d8:	1e05      	subs	r5, r0, #0
200258da:	db25      	blt.n	20025928 <bbm_write_talbe.isra.0+0x5c>
200258dc:	4b13      	ldr	r3, [pc, #76]	@ (2002592c <bbm_write_talbe.isra.0+0x60>)
200258de:	681a      	ldr	r2, [r3, #0]
200258e0:	4b13      	ldr	r3, [pc, #76]	@ (20025930 <bbm_write_talbe.isra.0+0x64>)
200258e2:	681b      	ldr	r3, [r3, #0]
200258e4:	fbb3 f3f2 	udiv	r3, r3, r2
200258e8:	429d      	cmp	r5, r3
200258ea:	da1d      	bge.n	20025928 <bbm_write_talbe.isra.0+0x5c>
200258ec:	4f11      	ldr	r7, [pc, #68]	@ (20025934 <bbm_write_talbe.isra.0+0x68>)
200258ee:	21ff      	movs	r1, #255	@ 0xff
200258f0:	6838      	ldr	r0, [r7, #0]
200258f2:	f004 ffbb 	bl	2002a86c <memset>
200258f6:	4264      	negs	r4, r4
200258f8:	490f      	ldr	r1, [pc, #60]	@ (20025938 <bbm_write_talbe.isra.0+0x6c>)
200258fa:	f404 7402 	and.w	r4, r4, #520	@ 0x208
200258fe:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025902:	6838      	ldr	r0, [r7, #0]
20025904:	4421      	add	r1, r4
20025906:	f004 ffcb 	bl	2002a8a0 <memcpy>
2002590a:	6838      	ldr	r0, [r7, #0]
2002590c:	b160      	cbz	r0, 20025928 <bbm_write_talbe.isra.0+0x5c>
2002590e:	6802      	ldr	r2, [r0, #0]
20025910:	4b0a      	ldr	r3, [pc, #40]	@ (2002593c <bbm_write_talbe.isra.0+0x70>)
20025912:	429a      	cmp	r2, r3
20025914:	d108      	bne.n	20025928 <bbm_write_talbe.isra.0+0x5c>
20025916:	f7ff fdbd 	bl	20025494 <bbm_map_check.part.0>
2002591a:	2300      	movs	r3, #0
2002591c:	9300      	str	r3, [sp, #0]
2002591e:	4629      	mov	r1, r5
20025920:	4630      	mov	r0, r6
20025922:	683a      	ldr	r2, [r7, #0]
20025924:	f7ff ffcc 	bl	200258c0 <port_write_page>
20025928:	b003      	add	sp, #12
2002592a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2002592c:	20044900 	.word	0x20044900
20025930:	20044904 	.word	0x20044904
20025934:	20049f78 	.word	0x20049f78
20025938:	20049f8c 	.word	0x20049f8c
2002593c:	5366424d 	.word	0x5366424d

20025940 <port_erase_block>:
20025940:	2000      	movs	r0, #0
20025942:	4770      	bx	lr

20025944 <bbm_init_table>:
20025944:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025948:	4c7d      	ldr	r4, [pc, #500]	@ (20025b40 <bbm_init_table+0x1fc>)
2002594a:	4b7e      	ldr	r3, [pc, #504]	@ (20025b44 <bbm_init_table+0x200>)
2002594c:	6822      	ldr	r2, [r4, #0]
2002594e:	b085      	sub	sp, #20
20025950:	429a      	cmp	r2, r3
20025952:	f000 80ef 	beq.w	20025b34 <bbm_init_table+0x1f0>
20025956:	f8d4 2208 	ldr.w	r2, [r4, #520]	@ 0x208
2002595a:	429a      	cmp	r2, r3
2002595c:	f000 80ea 	beq.w	20025b34 <bbm_init_table+0x1f0>
20025960:	6023      	str	r3, [r4, #0]
20025962:	2301      	movs	r3, #1
20025964:	6063      	str	r3, [r4, #4]
20025966:	2300      	movs	r3, #0
20025968:	f8df 9210 	ldr.w	r9, [pc, #528]	@ 20025b7c <bbm_init_table+0x238>
2002596c:	8123      	strh	r3, [r4, #8]
2002596e:	f8d9 3000 	ldr.w	r3, [r9]
20025972:	4f75      	ldr	r7, [pc, #468]	@ (20025b48 <bbm_init_table+0x204>)
20025974:	3b04      	subs	r3, #4
20025976:	f8df a208 	ldr.w	sl, [pc, #520]	@ 20025b80 <bbm_init_table+0x23c>
2002597a:	8163      	strh	r3, [r4, #10]
2002597c:	683b      	ldr	r3, [r7, #0]
2002597e:	f8da 5000 	ldr.w	r5, [sl]
20025982:	3b01      	subs	r3, #1
20025984:	4e71      	ldr	r6, [pc, #452]	@ (20025b4c <bbm_init_table+0x208>)
20025986:	81a3      	strh	r3, [r4, #12]
20025988:	81e5      	strh	r5, [r4, #14]
2002598a:	683b      	ldr	r3, [r7, #0]
2002598c:	429d      	cmp	r5, r3
2002598e:	db10      	blt.n	200259b2 <bbm_init_table+0x6e>
20025990:	2500      	movs	r5, #0
20025992:	46a8      	mov	r8, r5
20025994:	f8df b1b4 	ldr.w	fp, [pc, #436]	@ 20025b4c <bbm_init_table+0x208>
20025998:	f8da 6000 	ldr.w	r6, [sl]
2002599c:	42b5      	cmp	r5, r6
2002599e:	db20      	blt.n	200259e2 <bbm_init_table+0x9e>
200259a0:	8963      	ldrh	r3, [r4, #10]
200259a2:	2b00      	cmp	r3, #0
200259a4:	d14d      	bne.n	20025a42 <bbm_init_table+0xfe>
200259a6:	4b69      	ldr	r3, [pc, #420]	@ (20025b4c <bbm_init_table+0x208>)
200259a8:	681b      	ldr	r3, [r3, #0]
200259aa:	b10b      	cbz	r3, 200259b0 <bbm_init_table+0x6c>
200259ac:	4868      	ldr	r0, [pc, #416]	@ (20025b50 <bbm_init_table+0x20c>)
200259ae:	4798      	blx	r3
200259b0:	e7fe      	b.n	200259b0 <bbm_init_table+0x6c>
200259b2:	4628      	mov	r0, r5
200259b4:	f7fb f964 	bl	20020c80 <bbm_get_bb>
200259b8:	b968      	cbnz	r0, 200259d6 <bbm_init_table+0x92>
200259ba:	4628      	mov	r0, r5
200259bc:	f7ff ffc0 	bl	20025940 <port_erase_block>
200259c0:	b138      	cbz	r0, 200259d2 <bbm_init_table+0x8e>
200259c2:	6833      	ldr	r3, [r6, #0]
200259c4:	b113      	cbz	r3, 200259cc <bbm_init_table+0x88>
200259c6:	4629      	mov	r1, r5
200259c8:	4862      	ldr	r0, [pc, #392]	@ (20025b54 <bbm_init_table+0x210>)
200259ca:	4798      	blx	r3
200259cc:	8963      	ldrh	r3, [r4, #10]
200259ce:	3b01      	subs	r3, #1
200259d0:	8163      	strh	r3, [r4, #10]
200259d2:	3501      	adds	r5, #1
200259d4:	e7d9      	b.n	2002598a <bbm_init_table+0x46>
200259d6:	6833      	ldr	r3, [r6, #0]
200259d8:	2b00      	cmp	r3, #0
200259da:	d0f7      	beq.n	200259cc <bbm_init_table+0x88>
200259dc:	4629      	mov	r1, r5
200259de:	485e      	ldr	r0, [pc, #376]	@ (20025b58 <bbm_init_table+0x214>)
200259e0:	e7f3      	b.n	200259ca <bbm_init_table+0x86>
200259e2:	4628      	mov	r0, r5
200259e4:	f7fb f94c 	bl	20020c80 <bbm_get_bb>
200259e8:	b348      	cbz	r0, 20025a3e <bbm_init_table+0xfa>
200259ea:	f8db 3000 	ldr.w	r3, [fp]
200259ee:	b113      	cbz	r3, 200259f6 <bbm_init_table+0xb2>
200259f0:	4629      	mov	r1, r5
200259f2:	485a      	ldr	r0, [pc, #360]	@ (20025b5c <bbm_init_table+0x218>)
200259f4:	4798      	blx	r3
200259f6:	89a0      	ldrh	r0, [r4, #12]
200259f8:	f7fb f942 	bl	20020c80 <bbm_get_bb>
200259fc:	89a3      	ldrh	r3, [r4, #12]
200259fe:	4606      	mov	r6, r0
20025a00:	3b01      	subs	r3, #1
20025a02:	81a3      	strh	r3, [r4, #12]
20025a04:	8963      	ldrh	r3, [r4, #10]
20025a06:	3b01      	subs	r3, #1
20025a08:	b29b      	uxth	r3, r3
20025a0a:	8163      	strh	r3, [r4, #10]
20025a0c:	b108      	cbz	r0, 20025a12 <bbm_init_table+0xce>
20025a0e:	2b00      	cmp	r3, #0
20025a10:	d1f1      	bne.n	200259f6 <bbm_init_table+0xb2>
20025a12:	f8db 3000 	ldr.w	r3, [fp]
20025a16:	b11b      	cbz	r3, 20025a20 <bbm_init_table+0xdc>
20025a18:	4642      	mov	r2, r8
20025a1a:	4629      	mov	r1, r5
20025a1c:	4850      	ldr	r0, [pc, #320]	@ (20025b60 <bbm_init_table+0x21c>)
20025a1e:	4798      	blx	r3
20025a20:	b946      	cbnz	r6, 20025a34 <bbm_init_table+0xf0>
20025a22:	89a2      	ldrh	r2, [r4, #12]
20025a24:	f108 0306 	add.w	r3, r8, #6
20025a28:	f824 5023 	strh.w	r5, [r4, r3, lsl #2]
20025a2c:	3201      	adds	r2, #1
20025a2e:	eb04 0383 	add.w	r3, r4, r3, lsl #2
20025a32:	805a      	strh	r2, [r3, #2]
20025a34:	8923      	ldrh	r3, [r4, #8]
20025a36:	f108 0801 	add.w	r8, r8, #1
20025a3a:	3301      	adds	r3, #1
20025a3c:	8123      	strh	r3, [r4, #8]
20025a3e:	3501      	adds	r5, #1
20025a40:	e7aa      	b.n	20025998 <bbm_init_table+0x54>
20025a42:	2110      	movs	r1, #16
20025a44:	483e      	ldr	r0, [pc, #248]	@ (20025b40 <bbm_init_table+0x1fc>)
20025a46:	f7ff fd75 	bl	20025534 <bbm_crc_check>
20025a4a:	f8d9 1000 	ldr.w	r1, [r9]
20025a4e:	6120      	str	r0, [r4, #16]
20025a50:	3904      	subs	r1, #4
20025a52:	0089      	lsls	r1, r1, #2
20025a54:	4843      	ldr	r0, [pc, #268]	@ (20025b64 <bbm_init_table+0x220>)
20025a56:	f7ff fd6d 	bl	20025534 <bbm_crc_check>
20025a5a:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025a5e:	4938      	ldr	r1, [pc, #224]	@ (20025b40 <bbm_init_table+0x1fc>)
20025a60:	6160      	str	r0, [r4, #20]
20025a62:	1888      	adds	r0, r1, r2
20025a64:	f004 ff1c 	bl	2002a8a0 <memcpy>
20025a68:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025a6c:	2110      	movs	r1, #16
20025a6e:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20025a72:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
20025a76:	483c      	ldr	r0, [pc, #240]	@ (20025b68 <bbm_init_table+0x224>)
20025a78:	f7ff fd5c 	bl	20025534 <bbm_crc_check>
20025a7c:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
20025a80:	2400      	movs	r4, #0
20025a82:	f8df 9100 	ldr.w	r9, [pc, #256]	@ 20025b84 <bbm_init_table+0x240>
20025a86:	f8df 8100 	ldr.w	r8, [pc, #256]	@ 20025b88 <bbm_init_table+0x244>
20025a8a:	683b      	ldr	r3, [r7, #0]
20025a8c:	429e      	cmp	r6, r3
20025a8e:	db08      	blt.n	20025aa2 <bbm_init_table+0x15e>
20025a90:	2c03      	cmp	r4, #3
20025a92:	dc30      	bgt.n	20025af6 <bbm_init_table+0x1b2>
20025a94:	4b2d      	ldr	r3, [pc, #180]	@ (20025b4c <bbm_init_table+0x208>)
20025a96:	681b      	ldr	r3, [r3, #0]
20025a98:	b113      	cbz	r3, 20025aa0 <bbm_init_table+0x15c>
20025a9a:	4621      	mov	r1, r4
20025a9c:	4833      	ldr	r0, [pc, #204]	@ (20025b6c <bbm_init_table+0x228>)
20025a9e:	4798      	blx	r3
20025aa0:	e7fe      	b.n	20025aa0 <bbm_init_table+0x15c>
20025aa2:	4630      	mov	r0, r6
20025aa4:	f7fb f8ec 	bl	20020c80 <bbm_get_bb>
20025aa8:	4605      	mov	r5, r0
20025aaa:	bb10      	cbnz	r0, 20025af2 <bbm_init_table+0x1ae>
20025aac:	f8d9 a000 	ldr.w	sl, [r9]
20025ab0:	21ff      	movs	r1, #255	@ 0xff
20025ab2:	4652      	mov	r2, sl
20025ab4:	f8d8 0000 	ldr.w	r0, [r8]
20025ab8:	f004 fed8 	bl	2002a86c <memset>
20025abc:	e9cd 5501 	strd	r5, r5, [sp, #4]
20025ac0:	f8cd a000 	str.w	sl, [sp]
20025ac4:	f8d8 3000 	ldr.w	r3, [r8]
20025ac8:	462a      	mov	r2, r5
20025aca:	4629      	mov	r1, r5
20025acc:	4630      	mov	r0, r6
20025ace:	f7fb f85b 	bl	20020b88 <port_read_page>
20025ad2:	f8d9 3000 	ldr.w	r3, [r9]
20025ad6:	4298      	cmp	r0, r3
20025ad8:	d109      	bne.n	20025aee <bbm_init_table+0x1aa>
20025ada:	f8d8 3000 	ldr.w	r3, [r8]
20025ade:	681b      	ldr	r3, [r3, #0]
20025ae0:	3301      	adds	r3, #1
20025ae2:	bf01      	itttt	eq
20025ae4:	4b22      	ldreq	r3, [pc, #136]	@ (20025b70 <bbm_init_table+0x22c>)
20025ae6:	1d22      	addeq	r2, r4, #4
20025ae8:	f823 6012 	strheq.w	r6, [r3, r2, lsl #1]
20025aec:	3401      	addeq	r4, #1
20025aee:	2c03      	cmp	r4, #3
20025af0:	dc01      	bgt.n	20025af6 <bbm_init_table+0x1b2>
20025af2:	3601      	adds	r6, #1
20025af4:	e7c9      	b.n	20025a8a <bbm_init_table+0x146>
20025af6:	2500      	movs	r5, #0
20025af8:	4c1d      	ldr	r4, [pc, #116]	@ (20025b70 <bbm_init_table+0x22c>)
20025afa:	2000      	movs	r0, #0
20025afc:	8921      	ldrh	r1, [r4, #8]
20025afe:	f7ff fee5 	bl	200258cc <bbm_write_talbe.isra.0>
20025b02:	8923      	ldrh	r3, [r4, #8]
20025b04:	2001      	movs	r0, #1
20025b06:	8961      	ldrh	r1, [r4, #10]
20025b08:	8023      	strh	r3, [r4, #0]
20025b0a:	8223      	strh	r3, [r4, #16]
20025b0c:	8125      	strh	r5, [r4, #8]
20025b0e:	f7ff fedd 	bl	200258cc <bbm_write_talbe.isra.0>
20025b12:	8963      	ldrh	r3, [r4, #10]
20025b14:	8165      	strh	r5, [r4, #10]
20025b16:	80a3      	strh	r3, [r4, #4]
20025b18:	8263      	strh	r3, [r4, #18]
20025b1a:	89a3      	ldrh	r3, [r4, #12]
20025b1c:	8063      	strh	r3, [r4, #2]
20025b1e:	89e3      	ldrh	r3, [r4, #14]
20025b20:	80e3      	strh	r3, [r4, #6]
20025b22:	4b0a      	ldr	r3, [pc, #40]	@ (20025b4c <bbm_init_table+0x208>)
20025b24:	681b      	ldr	r3, [r3, #0]
20025b26:	b10b      	cbz	r3, 20025b2c <bbm_init_table+0x1e8>
20025b28:	4812      	ldr	r0, [pc, #72]	@ (20025b74 <bbm_init_table+0x230>)
20025b2a:	4798      	blx	r3
20025b2c:	2000      	movs	r0, #0
20025b2e:	b005      	add	sp, #20
20025b30:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025b34:	4b05      	ldr	r3, [pc, #20]	@ (20025b4c <bbm_init_table+0x208>)
20025b36:	681b      	ldr	r3, [r3, #0]
20025b38:	b10b      	cbz	r3, 20025b3e <bbm_init_table+0x1fa>
20025b3a:	480f      	ldr	r0, [pc, #60]	@ (20025b78 <bbm_init_table+0x234>)
20025b3c:	4798      	blx	r3
20025b3e:	e7fe      	b.n	20025b3e <bbm_init_table+0x1fa>
20025b40:	20049f8c 	.word	0x20049f8c
20025b44:	5366424d 	.word	0x5366424d
20025b48:	20049f80 	.word	0x20049f80
20025b4c:	20049f74 	.word	0x20049f74
20025b50:	2002ad16 	.word	0x2002ad16
20025b54:	2002aca4 	.word	0x2002aca4
20025b58:	2002acc6 	.word	0x2002acc6
20025b5c:	2002ace3 	.word	0x2002ace3
20025b60:	2002ad02 	.word	0x2002ad02
20025b64:	20049fa4 	.word	0x20049fa4
20025b68:	2004a194 	.word	0x2004a194
20025b6c:	2002ad30 	.word	0x2002ad30
20025b70:	2004a39c 	.word	0x2004a39c
20025b74:	2002ad57 	.word	0x2002ad57
20025b78:	2002ad73 	.word	0x2002ad73
20025b7c:	20049f84 	.word	0x20049f84
20025b80:	20049f88 	.word	0x20049f88
20025b84:	20044900 	.word	0x20044900
20025b88:	20049f78 	.word	0x20049f78

20025b8c <sif_bbm_init>:
20025b8c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025b90:	b087      	sub	sp, #28
20025b92:	2900      	cmp	r1, #0
20025b94:	f000 8129 	beq.w	20025dea <sif_bbm_init+0x25e>
20025b98:	4b95      	ldr	r3, [pc, #596]	@ (20025df0 <sif_bbm_init+0x264>)
20025b9a:	681a      	ldr	r2, [r3, #0]
20025b9c:	2a01      	cmp	r2, #1
20025b9e:	d108      	bne.n	20025bb2 <sif_bbm_init+0x26>
20025ba0:	4b94      	ldr	r3, [pc, #592]	@ (20025df4 <sif_bbm_init+0x268>)
20025ba2:	681b      	ldr	r3, [r3, #0]
20025ba4:	b10b      	cbz	r3, 20025baa <sif_bbm_init+0x1e>
20025ba6:	4894      	ldr	r0, [pc, #592]	@ (20025df8 <sif_bbm_init+0x26c>)
20025ba8:	4798      	blx	r3
20025baa:	2000      	movs	r0, #0
20025bac:	b007      	add	sp, #28
20025bae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20025bb2:	2201      	movs	r2, #1
20025bb4:	601a      	str	r2, [r3, #0]
20025bb6:	4b91      	ldr	r3, [pc, #580]	@ (20025dfc <sif_bbm_init+0x270>)
20025bb8:	681c      	ldr	r4, [r3, #0]
20025bba:	b904      	cbnz	r4, 20025bbe <sif_bbm_init+0x32>
20025bbc:	e7fe      	b.n	20025bbc <sif_bbm_init+0x30>
20025bbe:	f8df a27c 	ldr.w	sl, [pc, #636]	@ 20025e3c <sif_bbm_init+0x2b0>
20025bc2:	f8da 2000 	ldr.w	r2, [sl]
20025bc6:	b902      	cbnz	r2, 20025bca <sif_bbm_init+0x3e>
20025bc8:	e7fe      	b.n	20025bc8 <sif_bbm_init+0x3c>
20025bca:	fbb0 f4f4 	udiv	r4, r0, r4
20025bce:	f04f 0800 	mov.w	r8, #0
20025bd2:	4a8b      	ldr	r2, [pc, #556]	@ (20025e00 <sif_bbm_init+0x274>)
20025bd4:	f8df b268 	ldr.w	fp, [pc, #616]	@ 20025e40 <sif_bbm_init+0x2b4>
20025bd8:	0963      	lsrs	r3, r4, #5
20025bda:	f8df 9268 	ldr.w	r9, [pc, #616]	@ 20025e44 <sif_bbm_init+0x2b8>
20025bde:	6013      	str	r3, [r2, #0]
20025be0:	f8cb 4000 	str.w	r4, [fp]
20025be4:	1ae4      	subs	r4, r4, r3
20025be6:	4b87      	ldr	r3, [pc, #540]	@ (20025e04 <sif_bbm_init+0x278>)
20025be8:	2218      	movs	r2, #24
20025bea:	f8c9 1000 	str.w	r1, [r9]
20025bee:	4886      	ldr	r0, [pc, #536]	@ (20025e08 <sif_bbm_init+0x27c>)
20025bf0:	2100      	movs	r1, #0
20025bf2:	601c      	str	r4, [r3, #0]
20025bf4:	f004 fe3a 	bl	2002a86c <memset>
20025bf8:	f44f 6282 	mov.w	r2, #1040	@ 0x410
20025bfc:	2100      	movs	r1, #0
20025bfe:	4883      	ldr	r0, [pc, #524]	@ (20025e0c <sif_bbm_init+0x280>)
20025c00:	f004 fe34 	bl	2002a86c <memset>
20025c04:	4647      	mov	r7, r8
20025c06:	4646      	mov	r6, r8
20025c08:	f8db 3000 	ldr.w	r3, [fp]
20025c0c:	429c      	cmp	r4, r3
20025c0e:	db02      	blt.n	20025c16 <sif_bbm_init+0x8a>
20025c10:	f04f 35ff 	mov.w	r5, #4294967295
20025c14:	e064      	b.n	20025ce0 <sif_bbm_init+0x154>
20025c16:	4620      	mov	r0, r4
20025c18:	f7fb f832 	bl	20020c80 <bbm_get_bb>
20025c1c:	4605      	mov	r5, r0
20025c1e:	b138      	cbz	r0, 20025c30 <sif_bbm_init+0xa4>
20025c20:	4b74      	ldr	r3, [pc, #464]	@ (20025df4 <sif_bbm_init+0x268>)
20025c22:	681b      	ldr	r3, [r3, #0]
20025c24:	b113      	cbz	r3, 20025c2c <sif_bbm_init+0xa0>
20025c26:	487a      	ldr	r0, [pc, #488]	@ (20025e10 <sif_bbm_init+0x284>)
20025c28:	1c61      	adds	r1, r4, #1
20025c2a:	4798      	blx	r3
20025c2c:	3401      	adds	r4, #1
20025c2e:	e7eb      	b.n	20025c08 <sif_bbm_init+0x7c>
20025c30:	f8da 2000 	ldr.w	r2, [sl]
20025c34:	21ff      	movs	r1, #255	@ 0xff
20025c36:	f8d9 0000 	ldr.w	r0, [r9]
20025c3a:	9205      	str	r2, [sp, #20]
20025c3c:	f004 fe16 	bl	2002a86c <memset>
20025c40:	9a05      	ldr	r2, [sp, #20]
20025c42:	e9cd 5501 	strd	r5, r5, [sp, #4]
20025c46:	9200      	str	r2, [sp, #0]
20025c48:	f8d9 3000 	ldr.w	r3, [r9]
20025c4c:	462a      	mov	r2, r5
20025c4e:	4629      	mov	r1, r5
20025c50:	4620      	mov	r0, r4
20025c52:	f7fa ff99 	bl	20020b88 <port_read_page>
20025c56:	f8da 3000 	ldr.w	r3, [sl]
20025c5a:	4298      	cmp	r0, r3
20025c5c:	d12e      	bne.n	20025cbc <sif_bbm_init+0x130>
20025c5e:	f8d9 1000 	ldr.w	r1, [r9]
20025c62:	486c      	ldr	r0, [pc, #432]	@ (20025e14 <sif_bbm_init+0x288>)
20025c64:	680b      	ldr	r3, [r1, #0]
20025c66:	b2a2      	uxth	r2, r4
20025c68:	4283      	cmp	r3, r0
20025c6a:	4b67      	ldr	r3, [pc, #412]	@ (20025e08 <sif_bbm_init+0x27c>)
20025c6c:	d11f      	bne.n	20025cae <sif_bbm_init+0x122>
20025c6e:	f991 1007 	ldrsb.w	r1, [r1, #7]
20025c72:	2900      	cmp	r1, #0
20025c74:	bfb5      	itete	lt
20025c76:	eb03 0147 	addlt.w	r1, r3, r7, lsl #1
20025c7a:	f823 2016 	strhge.w	r2, [r3, r6, lsl #1]
20025c7e:	808a      	strhlt	r2, [r1, #4]
20025c80:	3601      	addge	r6, #1
20025c82:	bfb8      	it	lt
20025c84:	3701      	addlt	r7, #1
20025c86:	eb06 0208 	add.w	r2, r6, r8
20025c8a:	443a      	add	r2, r7
20025c8c:	2a03      	cmp	r2, #3
20025c8e:	ddcd      	ble.n	20025c2c <sif_bbm_init+0xa0>
20025c90:	2e00      	cmp	r6, #0
20025c92:	f000 8081 	beq.w	20025d98 <sif_bbm_init+0x20c>
20025c96:	2f00      	cmp	r7, #0
20025c98:	d07e      	beq.n	20025d98 <sif_bbm_init+0x20c>
20025c9a:	2e01      	cmp	r6, #1
20025c9c:	d001      	beq.n	20025ca2 <sif_bbm_init+0x116>
20025c9e:	2f01      	cmp	r7, #1
20025ca0:	d11e      	bne.n	20025ce0 <sif_bbm_init+0x154>
20025ca2:	8819      	ldrh	r1, [r3, #0]
20025ca4:	891a      	ldrh	r2, [r3, #8]
20025ca6:	b981      	cbnz	r1, 20025cca <sif_bbm_init+0x13e>
20025ca8:	801a      	strh	r2, [r3, #0]
20025caa:	895a      	ldrh	r2, [r3, #10]
20025cac:	e013      	b.n	20025cd6 <sif_bbm_init+0x14a>
20025cae:	f108 0104 	add.w	r1, r8, #4
20025cb2:	f823 2011 	strh.w	r2, [r3, r1, lsl #1]
20025cb6:	f108 0801 	add.w	r8, r8, #1
20025cba:	e7e4      	b.n	20025c86 <sif_bbm_init+0xfa>
20025cbc:	4b4d      	ldr	r3, [pc, #308]	@ (20025df4 <sif_bbm_init+0x268>)
20025cbe:	681b      	ldr	r3, [r3, #0]
20025cc0:	2b00      	cmp	r3, #0
20025cc2:	d0b3      	beq.n	20025c2c <sif_bbm_init+0xa0>
20025cc4:	4854      	ldr	r0, [pc, #336]	@ (20025e18 <sif_bbm_init+0x28c>)
20025cc6:	1c61      	adds	r1, r4, #1
20025cc8:	e7af      	b.n	20025c2a <sif_bbm_init+0x9e>
20025cca:	8859      	ldrh	r1, [r3, #2]
20025ccc:	b909      	cbnz	r1, 20025cd2 <sif_bbm_init+0x146>
20025cce:	805a      	strh	r2, [r3, #2]
20025cd0:	e7eb      	b.n	20025caa <sif_bbm_init+0x11e>
20025cd2:	2a00      	cmp	r2, #0
20025cd4:	d0e9      	beq.n	20025caa <sif_bbm_init+0x11e>
20025cd6:	8899      	ldrh	r1, [r3, #4]
20025cd8:	2900      	cmp	r1, #0
20025cda:	d158      	bne.n	20025d8e <sif_bbm_init+0x202>
20025cdc:	809a      	strh	r2, [r3, #4]
20025cde:	2502      	movs	r5, #2
20025ce0:	f8df 9110 	ldr.w	r9, [pc, #272]	@ 20025df4 <sif_bbm_init+0x268>
20025ce4:	f8d9 4000 	ldr.w	r4, [r9]
20025ce8:	b124      	cbz	r4, 20025cf4 <sif_bbm_init+0x168>
20025cea:	4643      	mov	r3, r8
20025cec:	463a      	mov	r2, r7
20025cee:	4631      	mov	r1, r6
20025cf0:	484a      	ldr	r0, [pc, #296]	@ (20025e1c <sif_bbm_init+0x290>)
20025cf2:	47a0      	blx	r4
20025cf4:	f8d9 3000 	ldr.w	r3, [r9]
20025cf8:	b113      	cbz	r3, 20025d00 <sif_bbm_init+0x174>
20025cfa:	4629      	mov	r1, r5
20025cfc:	4848      	ldr	r0, [pc, #288]	@ (20025e20 <sif_bbm_init+0x294>)
20025cfe:	4798      	blx	r3
20025d00:	f035 0002 	bics.w	r0, r5, #2
20025d04:	d164      	bne.n	20025dd0 <sif_bbm_init+0x244>
20025d06:	f7ff fcc9 	bl	2002569c <bbm_get_map_table>
20025d0a:	4605      	mov	r5, r0
20025d0c:	2001      	movs	r0, #1
20025d0e:	f7ff fcc5 	bl	2002569c <bbm_get_map_table>
20025d12:	f8d9 6000 	ldr.w	r6, [r9]
20025d16:	4604      	mov	r4, r0
20025d18:	b13e      	cbz	r6, 20025d2a <sif_bbm_init+0x19e>
20025d1a:	4a3b      	ldr	r2, [pc, #236]	@ (20025e08 <sif_bbm_init+0x27c>)
20025d1c:	4629      	mov	r1, r5
20025d1e:	8a53      	ldrh	r3, [r2, #18]
20025d20:	9300      	str	r3, [sp, #0]
20025d22:	8a12      	ldrh	r2, [r2, #16]
20025d24:	4603      	mov	r3, r0
20025d26:	483f      	ldr	r0, [pc, #252]	@ (20025e24 <sif_bbm_init+0x298>)
20025d28:	47b0      	blx	r6
20025d2a:	42a5      	cmp	r5, r4
20025d2c:	4c37      	ldr	r4, [pc, #220]	@ (20025e0c <sif_bbm_init+0x280>)
20025d2e:	dd35      	ble.n	20025d9c <sif_bbm_init+0x210>
20025d30:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025d34:	4621      	mov	r1, r4
20025d36:	18a0      	adds	r0, r4, r2
20025d38:	f004 fdb2 	bl	2002a8a0 <memcpy>
20025d3c:	f894 320f 	ldrb.w	r3, [r4, #527]	@ 0x20f
20025d40:	2110      	movs	r1, #16
20025d42:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
20025d46:	f884 320f 	strb.w	r3, [r4, #527]	@ 0x20f
20025d4a:	f504 7002 	add.w	r0, r4, #520	@ 0x208
20025d4e:	f7ff fbf1 	bl	20025534 <bbm_crc_check>
20025d52:	f8c4 0218 	str.w	r0, [r4, #536]	@ 0x218
20025d56:	2001      	movs	r0, #1
20025d58:	4b2b      	ldr	r3, [pc, #172]	@ (20025e08 <sif_bbm_init+0x27c>)
20025d5a:	8a59      	ldrh	r1, [r3, #18]
20025d5c:	f7ff fdb6 	bl	200258cc <bbm_write_talbe.isra.0>
20025d60:	6822      	ldr	r2, [r4, #0]
20025d62:	4b2c      	ldr	r3, [pc, #176]	@ (20025e14 <sif_bbm_init+0x288>)
20025d64:	429a      	cmp	r2, r3
20025d66:	d12d      	bne.n	20025dc4 <sif_bbm_init+0x238>
20025d68:	4828      	ldr	r0, [pc, #160]	@ (20025e0c <sif_bbm_init+0x280>)
20025d6a:	f7ff fb93 	bl	20025494 <bbm_map_check.part.0>
20025d6e:	f8d9 4000 	ldr.w	r4, [r9]
20025d72:	b12c      	cbz	r4, 20025d80 <sif_bbm_init+0x1f4>
20025d74:	4b2c      	ldr	r3, [pc, #176]	@ (20025e28 <sif_bbm_init+0x29c>)
20025d76:	4924      	ldr	r1, [pc, #144]	@ (20025e08 <sif_bbm_init+0x27c>)
20025d78:	482c      	ldr	r0, [pc, #176]	@ (20025e2c <sif_bbm_init+0x2a0>)
20025d7a:	f5a3 7202 	sub.w	r2, r3, #520	@ 0x208
20025d7e:	47a0      	blx	r4
20025d80:	f8d9 3000 	ldr.w	r3, [r9]
20025d84:	2b00      	cmp	r3, #0
20025d86:	f43f af10 	beq.w	20025baa <sif_bbm_init+0x1e>
20025d8a:	4829      	ldr	r0, [pc, #164]	@ (20025e30 <sif_bbm_init+0x2a4>)
20025d8c:	e70c      	b.n	20025ba8 <sif_bbm_init+0x1c>
20025d8e:	88d9      	ldrh	r1, [r3, #6]
20025d90:	2900      	cmp	r1, #0
20025d92:	d1a4      	bne.n	20025cde <sif_bbm_init+0x152>
20025d94:	80da      	strh	r2, [r3, #6]
20025d96:	e7a2      	b.n	20025cde <sif_bbm_init+0x152>
20025d98:	2501      	movs	r5, #1
20025d9a:	e7a1      	b.n	20025ce0 <sif_bbm_init+0x154>
20025d9c:	dae0      	bge.n	20025d60 <sif_bbm_init+0x1d4>
20025d9e:	f44f 7202 	mov.w	r2, #520	@ 0x208
20025da2:	4620      	mov	r0, r4
20025da4:	18a1      	adds	r1, r4, r2
20025da6:	f004 fd7b 	bl	2002a8a0 <memcpy>
20025daa:	79e3      	ldrb	r3, [r4, #7]
20025dac:	2110      	movs	r1, #16
20025dae:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
20025db2:	71e3      	strb	r3, [r4, #7]
20025db4:	4620      	mov	r0, r4
20025db6:	f7ff fbbd 	bl	20025534 <bbm_crc_check>
20025dba:	4b13      	ldr	r3, [pc, #76]	@ (20025e08 <sif_bbm_init+0x27c>)
20025dbc:	6120      	str	r0, [r4, #16]
20025dbe:	8a19      	ldrh	r1, [r3, #16]
20025dc0:	2000      	movs	r0, #0
20025dc2:	e7cb      	b.n	20025d5c <sif_bbm_init+0x1d0>
20025dc4:	f8d9 3000 	ldr.w	r3, [r9]
20025dc8:	b10b      	cbz	r3, 20025dce <sif_bbm_init+0x242>
20025dca:	481a      	ldr	r0, [pc, #104]	@ (20025e34 <sif_bbm_init+0x2a8>)
20025dcc:	4798      	blx	r3
20025dce:	e7fe      	b.n	20025dce <sif_bbm_init+0x242>
20025dd0:	2d01      	cmp	r5, #1
20025dd2:	d102      	bne.n	20025dda <sif_bbm_init+0x24e>
20025dd4:	f7ff fdb6 	bl	20025944 <bbm_init_table>
20025dd8:	e7c9      	b.n	20025d6e <sif_bbm_init+0x1e2>
20025dda:	f8d9 3000 	ldr.w	r3, [r9]
20025dde:	b11b      	cbz	r3, 20025de8 <sif_bbm_init+0x25c>
20025de0:	f04f 31ff 	mov.w	r1, #4294967295
20025de4:	4814      	ldr	r0, [pc, #80]	@ (20025e38 <sif_bbm_init+0x2ac>)
20025de6:	4798      	blx	r3
20025de8:	e7fe      	b.n	20025de8 <sif_bbm_init+0x25c>
20025dea:	f04f 30ff 	mov.w	r0, #4294967295
20025dee:	e6dd      	b.n	20025bac <sif_bbm_init+0x20>
20025df0:	20049f7c 	.word	0x20049f7c
20025df4:	20049f74 	.word	0x20049f74
20025df8:	2002ad87 	.word	0x2002ad87
20025dfc:	20044904 	.word	0x20044904
20025e00:	20049f84 	.word	0x20049f84
20025e04:	20049f88 	.word	0x20049f88
20025e08:	2004a39c 	.word	0x2004a39c
20025e0c:	20049f8c 	.word	0x20049f8c
20025e10:	2002adb5 	.word	0x2002adb5
20025e14:	5366424d 	.word	0x5366424d
20025e18:	2002adc1 	.word	0x2002adc1
20025e1c:	2002ade0 	.word	0x2002ade0
20025e20:	2002adff 	.word	0x2002adff
20025e24:	2002ae11 	.word	0x2002ae11
20025e28:	2004a194 	.word	0x2004a194
20025e2c:	2002ae6c 	.word	0x2002ae6c
20025e30:	2002ae90 	.word	0x2002ae90
20025e34:	2002ae35 	.word	0x2002ae35
20025e38:	2002ae4b 	.word	0x2002ae4b
20025e3c:	20044900 	.word	0x20044900
20025e40:	20049f80 	.word	0x20049f80
20025e44:	20049f78 	.word	0x20049f78

20025e48 <bbm_set_page_size>:
20025e48:	4b01      	ldr	r3, [pc, #4]	@ (20025e50 <bbm_set_page_size+0x8>)
20025e4a:	6018      	str	r0, [r3, #0]
20025e4c:	4770      	bx	lr
20025e4e:	bf00      	nop
20025e50:	20044900 	.word	0x20044900

20025e54 <bbm_set_blk_size>:
20025e54:	4b01      	ldr	r3, [pc, #4]	@ (20025e5c <bbm_set_blk_size+0x8>)
20025e56:	6018      	str	r0, [r3, #0]
20025e58:	4770      	bx	lr
20025e5a:	bf00      	nop
20025e5c:	20044904 	.word	0x20044904

20025e60 <mbedtls_md_info_from_type>:
20025e60:	3805      	subs	r0, #5
20025e62:	b2c0      	uxtb	r0, r0
20025e64:	2803      	cmp	r0, #3
20025e66:	bf9a      	itte	ls
20025e68:	4b02      	ldrls	r3, [pc, #8]	@ (20025e74 <mbedtls_md_info_from_type+0x14>)
20025e6a:	f853 0020 	ldrls.w	r0, [r3, r0, lsl #2]
20025e6e:	2000      	movhi	r0, #0
20025e70:	4770      	bx	lr
20025e72:	bf00      	nop
20025e74:	2002bce4 	.word	0x2002bce4

20025e78 <mbedtls_md_get_size>:
20025e78:	b100      	cbz	r0, 20025e7c <mbedtls_md_get_size+0x4>
20025e7a:	7a00      	ldrb	r0, [r0, #8]
20025e7c:	4770      	bx	lr

20025e7e <sha224_process_wrap>:
20025e7e:	f000 b8a9 	b.w	20025fd4 <mbedtls_sha256_process>

20025e82 <sha224_clone_wrap>:
20025e82:	f000 b85a 	b.w	20025f3a <mbedtls_sha256_clone>

20025e86 <sha224_ctx_free>:
20025e86:	b510      	push	{r4, lr}
20025e88:	4604      	mov	r4, r0
20025e8a:	f000 f84c 	bl	20025f26 <mbedtls_sha256_free>
20025e8e:	4620      	mov	r0, r4
20025e90:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20025e94:	f004 bc24 	b.w	2002a6e0 <free>

20025e98 <sha224_ctx_alloc>:
20025e98:	b510      	push	{r4, lr}
20025e9a:	216c      	movs	r1, #108	@ 0x6c
20025e9c:	2001      	movs	r0, #1
20025e9e:	f004 fc03 	bl	2002a6a8 <calloc>
20025ea2:	4604      	mov	r4, r0
20025ea4:	b108      	cbz	r0, 20025eaa <sha224_ctx_alloc+0x12>
20025ea6:	f000 f83a 	bl	20025f1e <mbedtls_sha256_init>
20025eaa:	4620      	mov	r0, r4
20025eac:	bd10      	pop	{r4, pc}

20025eae <sha224_wrap>:
20025eae:	2301      	movs	r3, #1
20025eb0:	f000 bc94 	b.w	200267dc <mbedtls_sha256>

20025eb4 <sha256_wrap>:
20025eb4:	2300      	movs	r3, #0
20025eb6:	f000 bc91 	b.w	200267dc <mbedtls_sha256>

20025eba <sha224_finish_wrap>:
20025eba:	f000 bc21 	b.w	20026700 <mbedtls_sha256_finish>

20025ebe <sha224_update_wrap>:
20025ebe:	f000 bc1b 	b.w	200266f8 <mbedtls_sha256_update>

20025ec2 <sha224_starts_wrap>:
20025ec2:	2101      	movs	r1, #1
20025ec4:	f000 b83e 	b.w	20025f44 <mbedtls_sha256_starts>

20025ec8 <sha256_starts_wrap>:
20025ec8:	2100      	movs	r1, #0
20025eca:	f000 b83b 	b.w	20025f44 <mbedtls_sha256_starts>

20025ece <sha384_process_wrap>:
20025ece:	f000 bd8f 	b.w	200269f0 <mbedtls_sha512_process>

20025ed2 <sha384_clone_wrap>:
20025ed2:	f000 bcf5 	b.w	200268c0 <mbedtls_sha512_clone>

20025ed6 <sha384_ctx_free>:
20025ed6:	b510      	push	{r4, lr}
20025ed8:	4604      	mov	r4, r0
20025eda:	f000 fce7 	bl	200268ac <mbedtls_sha512_free>
20025ede:	4620      	mov	r0, r4
20025ee0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
20025ee4:	f004 bbfc 	b.w	2002a6e0 <free>

20025ee8 <sha384_ctx_alloc>:
20025ee8:	b510      	push	{r4, lr}
20025eea:	21d8      	movs	r1, #216	@ 0xd8
20025eec:	2001      	movs	r0, #1
20025eee:	f004 fbdb 	bl	2002a6a8 <calloc>
20025ef2:	4604      	mov	r4, r0
20025ef4:	b108      	cbz	r0, 20025efa <sha384_ctx_alloc+0x12>
20025ef6:	f000 fcd5 	bl	200268a4 <mbedtls_sha512_init>
20025efa:	4620      	mov	r0, r4
20025efc:	bd10      	pop	{r4, pc}

20025efe <sha384_wrap>:
20025efe:	2301      	movs	r3, #1
20025f00:	f001 bbfa 	b.w	200276f8 <mbedtls_sha512>

20025f04 <sha512_wrap>:
20025f04:	2300      	movs	r3, #0
20025f06:	f001 bbf7 	b.w	200276f8 <mbedtls_sha512>

20025f0a <sha384_finish_wrap>:
20025f0a:	f001 baef 	b.w	200274ec <mbedtls_sha512_finish>

20025f0e <sha384_update_wrap>:
20025f0e:	f001 bae8 	b.w	200274e2 <mbedtls_sha512_update>

20025f12 <sha384_starts_wrap>:
20025f12:	2101      	movs	r1, #1
20025f14:	f000 bcdc 	b.w	200268d0 <mbedtls_sha512_starts>

20025f18 <sha512_starts_wrap>:
20025f18:	2100      	movs	r1, #0
20025f1a:	f000 bcd9 	b.w	200268d0 <mbedtls_sha512_starts>

20025f1e <mbedtls_sha256_init>:
20025f1e:	226c      	movs	r2, #108	@ 0x6c
20025f20:	2100      	movs	r1, #0
20025f22:	f004 bca3 	b.w	2002a86c <memset>

20025f26 <mbedtls_sha256_free>:
20025f26:	b138      	cbz	r0, 20025f38 <mbedtls_sha256_free+0x12>
20025f28:	2100      	movs	r1, #0
20025f2a:	f100 036c 	add.w	r3, r0, #108	@ 0x6c
20025f2e:	4602      	mov	r2, r0
20025f30:	3001      	adds	r0, #1
20025f32:	4298      	cmp	r0, r3
20025f34:	7011      	strb	r1, [r2, #0]
20025f36:	d1fa      	bne.n	20025f2e <mbedtls_sha256_free+0x8>
20025f38:	4770      	bx	lr

20025f3a <mbedtls_sha256_clone>:
20025f3a:	b508      	push	{r3, lr}
20025f3c:	226c      	movs	r2, #108	@ 0x6c
20025f3e:	f004 fcaf 	bl	2002a8a0 <memcpy>
20025f42:	bd08      	pop	{r3, pc}

20025f44 <mbedtls_sha256_starts>:
20025f44:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20025f48:	b1c1      	cbz	r1, 20025f7c <mbedtls_sha256_starts+0x38>
20025f4a:	f8df e078 	ldr.w	lr, [pc, #120]	@ 20025fc4 <mbedtls_sha256_starts+0x80>
20025f4e:	f8df c078 	ldr.w	ip, [pc, #120]	@ 20025fc8 <mbedtls_sha256_starts+0x84>
20025f52:	4f10      	ldr	r7, [pc, #64]	@ (20025f94 <mbedtls_sha256_starts+0x50>)
20025f54:	4e10      	ldr	r6, [pc, #64]	@ (20025f98 <mbedtls_sha256_starts+0x54>)
20025f56:	4d11      	ldr	r5, [pc, #68]	@ (20025f9c <mbedtls_sha256_starts+0x58>)
20025f58:	4c11      	ldr	r4, [pc, #68]	@ (20025fa0 <mbedtls_sha256_starts+0x5c>)
20025f5a:	4a12      	ldr	r2, [pc, #72]	@ (20025fa4 <mbedtls_sha256_starts+0x60>)
20025f5c:	4b12      	ldr	r3, [pc, #72]	@ (20025fa8 <mbedtls_sha256_starts+0x64>)
20025f5e:	f04f 0800 	mov.w	r8, #0
20025f62:	e9c0 ec02 	strd	lr, ip, [r0, #8]
20025f66:	e9c0 8800 	strd	r8, r8, [r0]
20025f6a:	e9c0 7604 	strd	r7, r6, [r0, #16]
20025f6e:	e9c0 5406 	strd	r5, r4, [r0, #24]
20025f72:	e9c0 2308 	strd	r2, r3, [r0, #32]
20025f76:	6681      	str	r1, [r0, #104]	@ 0x68
20025f78:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20025f7c:	f8df e04c 	ldr.w	lr, [pc, #76]	@ 20025fcc <mbedtls_sha256_starts+0x88>
20025f80:	f8df c04c 	ldr.w	ip, [pc, #76]	@ 20025fd0 <mbedtls_sha256_starts+0x8c>
20025f84:	4f09      	ldr	r7, [pc, #36]	@ (20025fac <mbedtls_sha256_starts+0x68>)
20025f86:	4e0a      	ldr	r6, [pc, #40]	@ (20025fb0 <mbedtls_sha256_starts+0x6c>)
20025f88:	4d0a      	ldr	r5, [pc, #40]	@ (20025fb4 <mbedtls_sha256_starts+0x70>)
20025f8a:	4c0b      	ldr	r4, [pc, #44]	@ (20025fb8 <mbedtls_sha256_starts+0x74>)
20025f8c:	4a0b      	ldr	r2, [pc, #44]	@ (20025fbc <mbedtls_sha256_starts+0x78>)
20025f8e:	4b0c      	ldr	r3, [pc, #48]	@ (20025fc0 <mbedtls_sha256_starts+0x7c>)
20025f90:	e7e5      	b.n	20025f5e <mbedtls_sha256_starts+0x1a>
20025f92:	bf00      	nop
20025f94:	3070dd17 	.word	0x3070dd17
20025f98:	f70e5939 	.word	0xf70e5939
20025f9c:	ffc00b31 	.word	0xffc00b31
20025fa0:	68581511 	.word	0x68581511
20025fa4:	64f98fa7 	.word	0x64f98fa7
20025fa8:	befa4fa4 	.word	0xbefa4fa4
20025fac:	3c6ef372 	.word	0x3c6ef372
20025fb0:	a54ff53a 	.word	0xa54ff53a
20025fb4:	510e527f 	.word	0x510e527f
20025fb8:	9b05688c 	.word	0x9b05688c
20025fbc:	1f83d9ab 	.word	0x1f83d9ab
20025fc0:	5be0cd19 	.word	0x5be0cd19
20025fc4:	c1059ed8 	.word	0xc1059ed8
20025fc8:	367cd507 	.word	0x367cd507
20025fcc:	6a09e667 	.word	0x6a09e667
20025fd0:	bb67ae85 	.word	0xbb67ae85

20025fd4 <mbedtls_sha256_process>:
20025fd4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20025fd8:	b0cf      	sub	sp, #316	@ 0x13c
20025fda:	aa06      	add	r2, sp, #24
20025fdc:	460b      	mov	r3, r1
20025fde:	4616      	mov	r6, r2
20025fe0:	9004      	str	r0, [sp, #16]
20025fe2:	f100 0408 	add.w	r4, r0, #8
20025fe6:	f100 0728 	add.w	r7, r0, #40	@ 0x28
20025fea:	4635      	mov	r5, r6
20025fec:	6820      	ldr	r0, [r4, #0]
20025fee:	6861      	ldr	r1, [r4, #4]
20025ff0:	3408      	adds	r4, #8
20025ff2:	c503      	stmia	r5!, {r0, r1}
20025ff4:	42bc      	cmp	r4, r7
20025ff6:	462e      	mov	r6, r5
20025ff8:	d1f7      	bne.n	20025fea <mbedtls_sha256_process+0x16>
20025ffa:	f10d 0a38 	add.w	sl, sp, #56	@ 0x38
20025ffe:	4619      	mov	r1, r3
20026000:	4650      	mov	r0, sl
20026002:	f103 0440 	add.w	r4, r3, #64	@ 0x40
20026006:	784b      	ldrb	r3, [r1, #1]
20026008:	780d      	ldrb	r5, [r1, #0]
2002600a:	041b      	lsls	r3, r3, #16
2002600c:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
20026010:	78cd      	ldrb	r5, [r1, #3]
20026012:	3104      	adds	r1, #4
20026014:	432b      	orrs	r3, r5
20026016:	f811 5c02 	ldrb.w	r5, [r1, #-2]
2002601a:	428c      	cmp	r4, r1
2002601c:	ea43 2305 	orr.w	r3, r3, r5, lsl #8
20026020:	f840 3b04 	str.w	r3, [r0], #4
20026024:	d1ef      	bne.n	20026006 <mbedtls_sha256_process+0x32>
20026026:	4996      	ldr	r1, [pc, #600]	@ (20026280 <mbedtls_sha256_process+0x2ac>)
20026028:	46d4      	mov	ip, sl
2002602a:	e9d2 e705 	ldrd	lr, r7, [r2, #20]
2002602e:	e9d2 9600 	ldrd	r9, r6, [r2]
20026032:	460d      	mov	r5, r1
20026034:	9100      	str	r1, [sp, #0]
20026036:	f8d2 801c 	ldr.w	r8, [r2, #28]
2002603a:	f8d2 b010 	ldr.w	fp, [r2, #16]
2002603e:	e9d2 3202 	ldrd	r3, r2, [r2, #8]
20026042:	6829      	ldr	r1, [r5, #0]
20026044:	f8dc 0000 	ldr.w	r0, [ip]
20026048:	ea4f 24fb 	mov.w	r4, fp, ror #11
2002604c:	ea84 14bb 	eor.w	r4, r4, fp, ror #6
20026050:	4401      	add	r1, r0
20026052:	ea87 000e 	eor.w	r0, r7, lr
20026056:	ea84 647b 	eor.w	r4, r4, fp, ror #25
2002605a:	ea00 000b 	and.w	r0, r0, fp
2002605e:	4078      	eors	r0, r7
20026060:	4421      	add	r1, r4
20026062:	4401      	add	r1, r0
20026064:	4441      	add	r1, r8
20026066:	ea4f 3879 	mov.w	r8, r9, ror #13
2002606a:	ea88 08b9 	eor.w	r8, r8, r9, ror #2
2002606e:	ea88 58b9 	eor.w	r8, r8, r9, ror #22
20026072:	440a      	add	r2, r1
20026074:	4488      	add	r8, r1
20026076:	ea49 0106 	orr.w	r1, r9, r6
2002607a:	ea09 0006 	and.w	r0, r9, r6
2002607e:	4019      	ands	r1, r3
20026080:	4301      	orrs	r1, r0
20026082:	4488      	add	r8, r1
20026084:	f8dc 0004 	ldr.w	r0, [ip, #4]
20026088:	6869      	ldr	r1, [r5, #4]
2002608a:	ea4f 3478 	mov.w	r4, r8, ror #13
2002608e:	4401      	add	r1, r0
20026090:	ea8b 000e 	eor.w	r0, fp, lr
20026094:	4010      	ands	r0, r2
20026096:	ea80 000e 	eor.w	r0, r0, lr
2002609a:	4439      	add	r1, r7
2002609c:	4401      	add	r1, r0
2002609e:	ea4f 20f2 	mov.w	r0, r2, ror #11
200260a2:	ea80 10b2 	eor.w	r0, r0, r2, ror #6
200260a6:	ea80 6072 	eor.w	r0, r0, r2, ror #25
200260aa:	ea84 04b8 	eor.w	r4, r4, r8, ror #2
200260ae:	4401      	add	r1, r0
200260b0:	ea84 54b8 	eor.w	r4, r4, r8, ror #22
200260b4:	440b      	add	r3, r1
200260b6:	440c      	add	r4, r1
200260b8:	ea48 0109 	orr.w	r1, r8, r9
200260bc:	ea08 0009 	and.w	r0, r8, r9
200260c0:	4031      	ands	r1, r6
200260c2:	4301      	orrs	r1, r0
200260c4:	440c      	add	r4, r1
200260c6:	f8dc 0008 	ldr.w	r0, [ip, #8]
200260ca:	68a9      	ldr	r1, [r5, #8]
200260cc:	ea82 0703 	eor.w	r7, r2, r3
200260d0:	4401      	add	r1, r0
200260d2:	ea82 000b 	eor.w	r0, r2, fp
200260d6:	4018      	ands	r0, r3
200260d8:	ea80 000b 	eor.w	r0, r0, fp
200260dc:	4471      	add	r1, lr
200260de:	4401      	add	r1, r0
200260e0:	ea4f 20f3 	mov.w	r0, r3, ror #11
200260e4:	ea80 10b3 	eor.w	r0, r0, r3, ror #6
200260e8:	ea80 6073 	eor.w	r0, r0, r3, ror #25
200260ec:	4401      	add	r1, r0
200260ee:	ea4f 3074 	mov.w	r0, r4, ror #13
200260f2:	ea80 00b4 	eor.w	r0, r0, r4, ror #2
200260f6:	ea80 50b4 	eor.w	r0, r0, r4, ror #22
200260fa:	eb06 0e01 	add.w	lr, r6, r1
200260fe:	4408      	add	r0, r1
20026100:	ea48 0104 	orr.w	r1, r8, r4
20026104:	ea08 0604 	and.w	r6, r8, r4
20026108:	ea01 0109 	and.w	r1, r1, r9
2002610c:	4331      	orrs	r1, r6
2002610e:	4408      	add	r0, r1
20026110:	f8dc 600c 	ldr.w	r6, [ip, #12]
20026114:	68e9      	ldr	r1, [r5, #12]
20026116:	ea07 070e 	and.w	r7, r7, lr
2002611a:	440e      	add	r6, r1
2002611c:	ea4f 21fe 	mov.w	r1, lr, ror #11
20026120:	4057      	eors	r7, r2
20026122:	445e      	add	r6, fp
20026124:	ea81 11be 	eor.w	r1, r1, lr, ror #6
20026128:	ea81 617e 	eor.w	r1, r1, lr, ror #25
2002612c:	443e      	add	r6, r7
2002612e:	440e      	add	r6, r1
20026130:	ea4f 3170 	mov.w	r1, r0, ror #13
20026134:	ea81 01b0 	eor.w	r1, r1, r0, ror #2
20026138:	ea81 51b0 	eor.w	r1, r1, r0, ror #22
2002613c:	44b1      	add	r9, r6
2002613e:	4431      	add	r1, r6
20026140:	ea44 0600 	orr.w	r6, r4, r0
20026144:	ea04 0700 	and.w	r7, r4, r0
20026148:	ea06 0608 	and.w	r6, r6, r8
2002614c:	433e      	orrs	r6, r7
2002614e:	4431      	add	r1, r6
20026150:	f8dc 7010 	ldr.w	r7, [ip, #16]
20026154:	692e      	ldr	r6, [r5, #16]
20026156:	3520      	adds	r5, #32
20026158:	443e      	add	r6, r7
2002615a:	4416      	add	r6, r2
2002615c:	ea83 020e 	eor.w	r2, r3, lr
20026160:	ea02 0209 	and.w	r2, r2, r9
20026164:	405a      	eors	r2, r3
20026166:	4416      	add	r6, r2
20026168:	ea4f 22f9 	mov.w	r2, r9, ror #11
2002616c:	ea82 12b9 	eor.w	r2, r2, r9, ror #6
20026170:	ea82 6279 	eor.w	r2, r2, r9, ror #25
20026174:	4416      	add	r6, r2
20026176:	ea4f 3271 	mov.w	r2, r1, ror #13
2002617a:	ea82 02b1 	eor.w	r2, r2, r1, ror #2
2002617e:	ea82 52b1 	eor.w	r2, r2, r1, ror #22
20026182:	44b0      	add	r8, r6
20026184:	4432      	add	r2, r6
20026186:	ea40 0601 	orr.w	r6, r0, r1
2002618a:	ea00 0701 	and.w	r7, r0, r1
2002618e:	4026      	ands	r6, r4
20026190:	433e      	orrs	r6, r7
20026192:	4432      	add	r2, r6
20026194:	f8dc 7014 	ldr.w	r7, [ip, #20]
20026198:	f855 6c0c 	ldr.w	r6, [r5, #-12]
2002619c:	f10c 0c20 	add.w	ip, ip, #32
200261a0:	443e      	add	r6, r7
200261a2:	441e      	add	r6, r3
200261a4:	ea8e 0309 	eor.w	r3, lr, r9
200261a8:	ea03 0308 	and.w	r3, r3, r8
200261ac:	ea83 030e 	eor.w	r3, r3, lr
200261b0:	441e      	add	r6, r3
200261b2:	ea4f 23f8 	mov.w	r3, r8, ror #11
200261b6:	ea83 13b8 	eor.w	r3, r3, r8, ror #6
200261ba:	ea83 6378 	eor.w	r3, r3, r8, ror #25
200261be:	441e      	add	r6, r3
200261c0:	ea4f 3372 	mov.w	r3, r2, ror #13
200261c4:	ea83 03b2 	eor.w	r3, r3, r2, ror #2
200261c8:	19a7      	adds	r7, r4, r6
200261ca:	ea83 53b2 	eor.w	r3, r3, r2, ror #22
200261ce:	ea41 0402 	orr.w	r4, r1, r2
200261d2:	4433      	add	r3, r6
200261d4:	4004      	ands	r4, r0
200261d6:	ea01 0602 	and.w	r6, r1, r2
200261da:	4334      	orrs	r4, r6
200261dc:	4423      	add	r3, r4
200261de:	f85c 6c08 	ldr.w	r6, [ip, #-8]
200261e2:	f855 4c08 	ldr.w	r4, [r5, #-8]
200261e6:	4434      	add	r4, r6
200261e8:	ea89 0608 	eor.w	r6, r9, r8
200261ec:	403e      	ands	r6, r7
200261ee:	ea86 0609 	eor.w	r6, r6, r9
200261f2:	4474      	add	r4, lr
200261f4:	4434      	add	r4, r6
200261f6:	ea4f 26f7 	mov.w	r6, r7, ror #11
200261fa:	ea86 16b7 	eor.w	r6, r6, r7, ror #6
200261fe:	ea86 6677 	eor.w	r6, r6, r7, ror #25
20026202:	4434      	add	r4, r6
20026204:	eb00 0e04 	add.w	lr, r0, r4
20026208:	ea4f 3073 	mov.w	r0, r3, ror #13
2002620c:	ea80 00b3 	eor.w	r0, r0, r3, ror #2
20026210:	ea80 50b3 	eor.w	r0, r0, r3, ror #22
20026214:	4420      	add	r0, r4
20026216:	ea42 0403 	orr.w	r4, r2, r3
2002621a:	400c      	ands	r4, r1
2002621c:	ea02 0603 	and.w	r6, r2, r3
20026220:	4334      	orrs	r4, r6
20026222:	1906      	adds	r6, r0, r4
20026224:	f855 0c04 	ldr.w	r0, [r5, #-4]
20026228:	f85c 4c04 	ldr.w	r4, [ip, #-4]
2002622c:	4420      	add	r0, r4
2002622e:	ea88 0407 	eor.w	r4, r8, r7
20026232:	ea04 040e 	and.w	r4, r4, lr
20026236:	4448      	add	r0, r9
20026238:	ea84 0408 	eor.w	r4, r4, r8
2002623c:	4420      	add	r0, r4
2002623e:	ea4f 24fe 	mov.w	r4, lr, ror #11
20026242:	ea84 14be 	eor.w	r4, r4, lr, ror #6
20026246:	ea84 647e 	eor.w	r4, r4, lr, ror #25
2002624a:	4420      	add	r0, r4
2002624c:	eb01 0b00 	add.w	fp, r1, r0
20026250:	ea4f 3176 	mov.w	r1, r6, ror #13
20026254:	ea81 01b6 	eor.w	r1, r1, r6, ror #2
20026258:	ea81 51b6 	eor.w	r1, r1, r6, ror #22
2002625c:	4401      	add	r1, r0
2002625e:	ea43 0006 	orr.w	r0, r3, r6
20026262:	4010      	ands	r0, r2
20026264:	ea03 0406 	and.w	r4, r3, r6
20026268:	4320      	orrs	r0, r4
2002626a:	eb01 0900 	add.w	r9, r1, r0
2002626e:	4905      	ldr	r1, [pc, #20]	@ (20026284 <mbedtls_sha256_process+0x2b0>)
20026270:	42a9      	cmp	r1, r5
20026272:	f47f aee6 	bne.w	20026042 <mbedtls_sha256_process+0x6e>
20026276:	f10a 01c0 	add.w	r1, sl, #192	@ 0xc0
2002627a:	9105      	str	r1, [sp, #20]
2002627c:	e004      	b.n	20026288 <mbedtls_sha256_process+0x2b4>
2002627e:	bf00      	nop
20026280:	2002bdf4 	.word	0x2002bdf4
20026284:	2002be34 	.word	0x2002be34
20026288:	f8da 1038 	ldr.w	r1, [sl, #56]	@ 0x38
2002628c:	f8da 5004 	ldr.w	r5, [sl, #4]
20026290:	ea4f 44f1 	mov.w	r4, r1, ror #19
20026294:	ea84 4471 	eor.w	r4, r4, r1, ror #17
20026298:	f8da 0000 	ldr.w	r0, [sl]
2002629c:	ea84 2491 	eor.w	r4, r4, r1, lsr #10
200262a0:	f8da 1024 	ldr.w	r1, [sl, #36]	@ 0x24
200262a4:	f10a 0a20 	add.w	sl, sl, #32
200262a8:	4401      	add	r1, r0
200262aa:	ea4f 40b5 	mov.w	r0, r5, ror #18
200262ae:	ea80 10f5 	eor.w	r0, r0, r5, ror #7
200262b2:	ea80 00d5 	eor.w	r0, r0, r5, lsr #3
200262b6:	4421      	add	r1, r4
200262b8:	4401      	add	r1, r0
200262ba:	9103      	str	r1, [sp, #12]
200262bc:	ea87 000e 	eor.w	r0, r7, lr
200262c0:	9900      	ldr	r1, [sp, #0]
200262c2:	ea4f 24fb 	mov.w	r4, fp, ror #11
200262c6:	ea84 14bb 	eor.w	r4, r4, fp, ror #6
200262ca:	ea00 000b 	and.w	r0, r0, fp
200262ce:	ea84 647b 	eor.w	r4, r4, fp, ror #25
200262d2:	6c09      	ldr	r1, [r1, #64]	@ 0x40
200262d4:	4078      	eors	r0, r7
200262d6:	4420      	add	r0, r4
200262d8:	4401      	add	r1, r0
200262da:	9803      	ldr	r0, [sp, #12]
200262dc:	ea4f 3479 	mov.w	r4, r9, ror #13
200262e0:	4401      	add	r1, r0
200262e2:	4441      	add	r1, r8
200262e4:	eb02 0801 	add.w	r8, r2, r1
200262e8:	ea49 0206 	orr.w	r2, r9, r6
200262ec:	f8ca 0020 	str.w	r0, [sl, #32]
200262f0:	ea84 04b9 	eor.w	r4, r4, r9, ror #2
200262f4:	ea09 0006 	and.w	r0, r9, r6
200262f8:	401a      	ands	r2, r3
200262fa:	4302      	orrs	r2, r0
200262fc:	ea84 54b9 	eor.w	r4, r4, r9, ror #22
20026300:	4414      	add	r4, r2
20026302:	f8da 201c 	ldr.w	r2, [sl, #28]
20026306:	440c      	add	r4, r1
20026308:	ea4f 4cf2 	mov.w	ip, r2, ror #19
2002630c:	ea8c 4c72 	eor.w	ip, ip, r2, ror #17
20026310:	f85a 1c18 	ldr.w	r1, [sl, #-24]
20026314:	ea8c 2c92 	eor.w	ip, ip, r2, lsr #10
20026318:	f8da 2008 	ldr.w	r2, [sl, #8]
2002631c:	18a8      	adds	r0, r5, r2
2002631e:	ea4f 42b1 	mov.w	r2, r1, ror #18
20026322:	ea82 12f1 	eor.w	r2, r2, r1, ror #7
20026326:	ea82 02d1 	eor.w	r2, r2, r1, lsr #3
2002632a:	4460      	add	r0, ip
2002632c:	4410      	add	r0, r2
2002632e:	9a00      	ldr	r2, [sp, #0]
20026330:	ea8b 050e 	eor.w	r5, fp, lr
20026334:	6c52      	ldr	r2, [r2, #68]	@ 0x44
20026336:	ea05 0508 	and.w	r5, r5, r8
2002633a:	443a      	add	r2, r7
2002633c:	4402      	add	r2, r0
2002633e:	ea85 050e 	eor.w	r5, r5, lr
20026342:	4415      	add	r5, r2
20026344:	ea4f 22f8 	mov.w	r2, r8, ror #11
20026348:	ea82 12b8 	eor.w	r2, r2, r8, ror #6
2002634c:	ea82 6278 	eor.w	r2, r2, r8, ror #25
20026350:	442a      	add	r2, r5
20026352:	4413      	add	r3, r2
20026354:	9301      	str	r3, [sp, #4]
20026356:	ea49 0504 	orr.w	r5, r9, r4
2002635a:	ea4f 3374 	mov.w	r3, r4, ror #13
2002635e:	ea09 0704 	and.w	r7, r9, r4
20026362:	ea83 03b4 	eor.w	r3, r3, r4, ror #2
20026366:	4035      	ands	r5, r6
20026368:	433d      	orrs	r5, r7
2002636a:	ea83 53b4 	eor.w	r3, r3, r4, ror #22
2002636e:	442b      	add	r3, r5
20026370:	4413      	add	r3, r2
20026372:	9a03      	ldr	r2, [sp, #12]
20026374:	f85a 5c14 	ldr.w	r5, [sl, #-20]
20026378:	ea4f 4cf2 	mov.w	ip, r2, ror #19
2002637c:	ea8c 4c72 	eor.w	ip, ip, r2, ror #17
20026380:	ea8c 2c92 	eor.w	ip, ip, r2, lsr #10
20026384:	f8da 200c 	ldr.w	r2, [sl, #12]
20026388:	f8ca 0024 	str.w	r0, [sl, #36]	@ 0x24
2002638c:	188f      	adds	r7, r1, r2
2002638e:	ea4f 42b5 	mov.w	r2, r5, ror #18
20026392:	ea82 12f5 	eor.w	r2, r2, r5, ror #7
20026396:	ea82 02d5 	eor.w	r2, r2, r5, lsr #3
2002639a:	4467      	add	r7, ip
2002639c:	4417      	add	r7, r2
2002639e:	9a01      	ldr	r2, [sp, #4]
200263a0:	ea8b 0108 	eor.w	r1, fp, r8
200263a4:	4011      	ands	r1, r2
200263a6:	9a00      	ldr	r2, [sp, #0]
200263a8:	ea81 010b 	eor.w	r1, r1, fp
200263ac:	6c92      	ldr	r2, [r2, #72]	@ 0x48
200263ae:	f8ca 7028 	str.w	r7, [sl, #40]	@ 0x28
200263b2:	4472      	add	r2, lr
200263b4:	443a      	add	r2, r7
200263b6:	eb01 0c02 	add.w	ip, r1, r2
200263ba:	9a01      	ldr	r2, [sp, #4]
200263bc:	9901      	ldr	r1, [sp, #4]
200263be:	ea4f 22f2 	mov.w	r2, r2, ror #11
200263c2:	ea82 12b1 	eor.w	r2, r2, r1, ror #6
200263c6:	ea82 6271 	eor.w	r2, r2, r1, ror #25
200263ca:	4462      	add	r2, ip
200263cc:	18b1      	adds	r1, r6, r2
200263ce:	9102      	str	r1, [sp, #8]
200263d0:	ea44 0603 	orr.w	r6, r4, r3
200263d4:	ea4f 3173 	mov.w	r1, r3, ror #13
200263d8:	ea04 0c03 	and.w	ip, r4, r3
200263dc:	ea81 01b3 	eor.w	r1, r1, r3, ror #2
200263e0:	ea06 0609 	and.w	r6, r6, r9
200263e4:	ea46 060c 	orr.w	r6, r6, ip
200263e8:	ea81 51b3 	eor.w	r1, r1, r3, ror #22
200263ec:	4431      	add	r1, r6
200263ee:	4411      	add	r1, r2
200263f0:	ea4f 42f0 	mov.w	r2, r0, ror #19
200263f4:	ea82 4270 	eor.w	r2, r2, r0, ror #17
200263f8:	f85a 6c10 	ldr.w	r6, [sl, #-16]
200263fc:	ea82 2090 	eor.w	r0, r2, r0, lsr #10
20026400:	f8da 2010 	ldr.w	r2, [sl, #16]
20026404:	ea03 0e01 	and.w	lr, r3, r1
20026408:	4415      	add	r5, r2
2002640a:	ea4f 42b6 	mov.w	r2, r6, ror #18
2002640e:	ea82 12f6 	eor.w	r2, r2, r6, ror #7
20026412:	ea82 02d6 	eor.w	r2, r2, r6, lsr #3
20026416:	4405      	add	r5, r0
20026418:	4415      	add	r5, r2
2002641a:	9a01      	ldr	r2, [sp, #4]
2002641c:	ea88 0002 	eor.w	r0, r8, r2
20026420:	9a02      	ldr	r2, [sp, #8]
20026422:	4010      	ands	r0, r2
20026424:	9a00      	ldr	r2, [sp, #0]
20026426:	ea80 0008 	eor.w	r0, r0, r8
2002642a:	6cd2      	ldr	r2, [r2, #76]	@ 0x4c
2002642c:	f8ca 502c 	str.w	r5, [sl, #44]	@ 0x2c
20026430:	445a      	add	r2, fp
20026432:	442a      	add	r2, r5
20026434:	eb00 0c02 	add.w	ip, r0, r2
20026438:	9a02      	ldr	r2, [sp, #8]
2002643a:	9802      	ldr	r0, [sp, #8]
2002643c:	ea4f 22f2 	mov.w	r2, r2, ror #11
20026440:	ea82 12b0 	eor.w	r2, r2, r0, ror #6
20026444:	ea82 6270 	eor.w	r2, r2, r0, ror #25
20026448:	4462      	add	r2, ip
2002644a:	ea4f 3071 	mov.w	r0, r1, ror #13
2002644e:	ea43 0c01 	orr.w	ip, r3, r1
20026452:	ea80 00b1 	eor.w	r0, r0, r1, ror #2
20026456:	ea0c 0c04 	and.w	ip, ip, r4
2002645a:	ea4c 0c0e 	orr.w	ip, ip, lr
2002645e:	ea80 50b1 	eor.w	r0, r0, r1, ror #22
20026462:	4460      	add	r0, ip
20026464:	4410      	add	r0, r2
20026466:	4491      	add	r9, r2
20026468:	ea4f 42f7 	mov.w	r2, r7, ror #19
2002646c:	ea82 4277 	eor.w	r2, r2, r7, ror #17
20026470:	f85a cc0c 	ldr.w	ip, [sl, #-12]
20026474:	ea82 2797 	eor.w	r7, r2, r7, lsr #10
20026478:	f8da 2014 	ldr.w	r2, [sl, #20]
2002647c:	ea01 0e00 	and.w	lr, r1, r0
20026480:	4416      	add	r6, r2
20026482:	ea4f 42bc 	mov.w	r2, ip, ror #18
20026486:	ea82 12fc 	eor.w	r2, r2, ip, ror #7
2002648a:	ea82 02dc 	eor.w	r2, r2, ip, lsr #3
2002648e:	443e      	add	r6, r7
20026490:	4416      	add	r6, r2
20026492:	e9dd 2701 	ldrd	r2, r7, [sp, #4]
20026496:	4057      	eors	r7, r2
20026498:	ea07 0709 	and.w	r7, r7, r9
2002649c:	4057      	eors	r7, r2
2002649e:	9a00      	ldr	r2, [sp, #0]
200264a0:	f8ca 6030 	str.w	r6, [sl, #48]	@ 0x30
200264a4:	6d12      	ldr	r2, [r2, #80]	@ 0x50
200264a6:	4432      	add	r2, r6
200264a8:	4442      	add	r2, r8
200264aa:	443a      	add	r2, r7
200264ac:	ea4f 27f9 	mov.w	r7, r9, ror #11
200264b0:	ea87 17b9 	eor.w	r7, r7, r9, ror #6
200264b4:	ea87 6779 	eor.w	r7, r7, r9, ror #25
200264b8:	4417      	add	r7, r2
200264ba:	eb04 0807 	add.w	r8, r4, r7
200264be:	ea4f 3270 	mov.w	r2, r0, ror #13
200264c2:	ea41 0400 	orr.w	r4, r1, r0
200264c6:	ea82 02b0 	eor.w	r2, r2, r0, ror #2
200264ca:	401c      	ands	r4, r3
200264cc:	ea44 040e 	orr.w	r4, r4, lr
200264d0:	ea82 52b0 	eor.w	r2, r2, r0, ror #22
200264d4:	4422      	add	r2, r4
200264d6:	ea4f 44f5 	mov.w	r4, r5, ror #19
200264da:	ea84 4475 	eor.w	r4, r4, r5, ror #17
200264de:	ea84 2495 	eor.w	r4, r4, r5, lsr #10
200264e2:	f8da 5018 	ldr.w	r5, [sl, #24]
200264e6:	f85a ec08 	ldr.w	lr, [sl, #-8]
200264ea:	4465      	add	r5, ip
200264ec:	4425      	add	r5, r4
200264ee:	ea4f 44be 	mov.w	r4, lr, ror #18
200264f2:	ea84 14fe 	eor.w	r4, r4, lr, ror #7
200264f6:	ea84 04de 	eor.w	r4, r4, lr, lsr #3
200264fa:	4425      	add	r5, r4
200264fc:	9c02      	ldr	r4, [sp, #8]
200264fe:	443a      	add	r2, r7
20026500:	ea84 0709 	eor.w	r7, r4, r9
20026504:	ea07 0708 	and.w	r7, r7, r8
20026508:	ea87 0c04 	eor.w	ip, r7, r4
2002650c:	9c00      	ldr	r4, [sp, #0]
2002650e:	9f01      	ldr	r7, [sp, #4]
20026510:	6d64      	ldr	r4, [r4, #84]	@ 0x54
20026512:	ea00 0b02 	and.w	fp, r0, r2
20026516:	442c      	add	r4, r5
20026518:	443c      	add	r4, r7
2002651a:	eb0c 0704 	add.w	r7, ip, r4
2002651e:	ea4f 24f8 	mov.w	r4, r8, ror #11
20026522:	ea84 14b8 	eor.w	r4, r4, r8, ror #6
20026526:	ea84 6478 	eor.w	r4, r4, r8, ror #25
2002652a:	443c      	add	r4, r7
2002652c:	191f      	adds	r7, r3, r4
2002652e:	ea40 0c02 	orr.w	ip, r0, r2
20026532:	ea4f 3372 	mov.w	r3, r2, ror #13
20026536:	ea0c 0c01 	and.w	ip, ip, r1
2002653a:	ea83 03b2 	eor.w	r3, r3, r2, ror #2
2002653e:	ea4c 0c0b 	orr.w	ip, ip, fp
20026542:	ea83 53b2 	eor.w	r3, r3, r2, ror #22
20026546:	4463      	add	r3, ip
20026548:	4423      	add	r3, r4
2002654a:	ea4f 44f6 	mov.w	r4, r6, ror #19
2002654e:	ea84 4476 	eor.w	r4, r4, r6, ror #17
20026552:	ea84 2496 	eor.w	r4, r4, r6, lsr #10
20026556:	f8da 601c 	ldr.w	r6, [sl, #28]
2002655a:	f85a cc04 	ldr.w	ip, [sl, #-4]
2002655e:	4476      	add	r6, lr
20026560:	4426      	add	r6, r4
20026562:	ea4f 44bc 	mov.w	r4, ip, ror #18
20026566:	ea84 14fc 	eor.w	r4, r4, ip, ror #7
2002656a:	ea84 04dc 	eor.w	r4, r4, ip, lsr #3
2002656e:	eb06 0b04 	add.w	fp, r6, r4
20026572:	9c00      	ldr	r4, [sp, #0]
20026574:	9e02      	ldr	r6, [sp, #8]
20026576:	6da4      	ldr	r4, [r4, #88]	@ 0x58
20026578:	ea89 0e08 	eor.w	lr, r9, r8
2002657c:	445c      	add	r4, fp
2002657e:	4434      	add	r4, r6
20026580:	ea0e 0e07 	and.w	lr, lr, r7
20026584:	ea4f 26f7 	mov.w	r6, r7, ror #11
20026588:	ea8e 0e09 	eor.w	lr, lr, r9
2002658c:	ea86 16b7 	eor.w	r6, r6, r7, ror #6
20026590:	4474      	add	r4, lr
20026592:	ea86 6677 	eor.w	r6, r6, r7, ror #25
20026596:	4434      	add	r4, r6
20026598:	eb01 0e04 	add.w	lr, r1, r4
2002659c:	ea42 0603 	orr.w	r6, r2, r3
200265a0:	ea4f 3173 	mov.w	r1, r3, ror #13
200265a4:	f8ca b038 	str.w	fp, [sl, #56]	@ 0x38
200265a8:	4006      	ands	r6, r0
200265aa:	ea02 0b03 	and.w	fp, r2, r3
200265ae:	ea81 01b3 	eor.w	r1, r1, r3, ror #2
200265b2:	ea46 060b 	orr.w	r6, r6, fp
200265b6:	ea81 51b3 	eor.w	r1, r1, r3, ror #22
200265ba:	4431      	add	r1, r6
200265bc:	190e      	adds	r6, r1, r4
200265be:	ea4f 41f5 	mov.w	r1, r5, ror #19
200265c2:	ea81 4175 	eor.w	r1, r1, r5, ror #17
200265c6:	f8ca 5034 	str.w	r5, [sl, #52]	@ 0x34
200265ca:	ea81 2195 	eor.w	r1, r1, r5, lsr #10
200265ce:	9d03      	ldr	r5, [sp, #12]
200265d0:	f8da 4000 	ldr.w	r4, [sl]
200265d4:	4465      	add	r5, ip
200265d6:	4429      	add	r1, r5
200265d8:	ea4f 45b4 	mov.w	r5, r4, ror #18
200265dc:	ea85 15f4 	eor.w	r5, r5, r4, ror #7
200265e0:	ea85 05d4 	eor.w	r5, r5, r4, lsr #3
200265e4:	194c      	adds	r4, r1, r5
200265e6:	9900      	ldr	r1, [sp, #0]
200265e8:	ea88 0507 	eor.w	r5, r8, r7
200265ec:	6dc9      	ldr	r1, [r1, #92]	@ 0x5c
200265ee:	ea05 050e 	and.w	r5, r5, lr
200265f2:	4421      	add	r1, r4
200265f4:	4449      	add	r1, r9
200265f6:	ea85 0508 	eor.w	r5, r5, r8
200265fa:	440d      	add	r5, r1
200265fc:	ea4f 21fe 	mov.w	r1, lr, ror #11
20026600:	ea81 11be 	eor.w	r1, r1, lr, ror #6
20026604:	ea81 617e 	eor.w	r1, r1, lr, ror #25
20026608:	4429      	add	r1, r5
2002660a:	f8ca 403c 	str.w	r4, [sl, #60]	@ 0x3c
2002660e:	eb00 0b01 	add.w	fp, r0, r1
20026612:	ea43 0406 	orr.w	r4, r3, r6
20026616:	ea4f 3076 	mov.w	r0, r6, ror #13
2002661a:	ea80 00b6 	eor.w	r0, r0, r6, ror #2
2002661e:	4014      	ands	r4, r2
20026620:	ea03 0506 	and.w	r5, r3, r6
20026624:	ea80 50b6 	eor.w	r0, r0, r6, ror #22
20026628:	432c      	orrs	r4, r5
2002662a:	4420      	add	r0, r4
2002662c:	eb00 0901 	add.w	r9, r0, r1
20026630:	9900      	ldr	r1, [sp, #0]
20026632:	3120      	adds	r1, #32
20026634:	9100      	str	r1, [sp, #0]
20026636:	9905      	ldr	r1, [sp, #20]
20026638:	4551      	cmp	r1, sl
2002663a:	f47f ae25 	bne.w	20026288 <mbedtls_sha256_process+0x2b4>
2002663e:	9308      	str	r3, [sp, #32]
20026640:	9b04      	ldr	r3, [sp, #16]
20026642:	a906      	add	r1, sp, #24
20026644:	60ca      	str	r2, [r1, #12]
20026646:	f8c1 801c 	str.w	r8, [r1, #28]
2002664a:	1d1a      	adds	r2, r3, #4
2002664c:	618f      	str	r7, [r1, #24]
2002664e:	3324      	adds	r3, #36	@ 0x24
20026650:	f8c1 e014 	str.w	lr, [r1, #20]
20026654:	604e      	str	r6, [r1, #4]
20026656:	f8c1 b010 	str.w	fp, [r1, #16]
2002665a:	f8c1 9000 	str.w	r9, [r1]
2002665e:	f852 0f04 	ldr.w	r0, [r2, #4]!
20026662:	f851 4b04 	ldr.w	r4, [r1], #4
20026666:	4293      	cmp	r3, r2
20026668:	4420      	add	r0, r4
2002666a:	6010      	str	r0, [r2, #0]
2002666c:	d1f7      	bne.n	2002665e <mbedtls_sha256_process+0x68a>
2002666e:	b04f      	add	sp, #316	@ 0x13c
20026670:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

20026674 <mbedtls_sha256_update.part.0>:
20026674:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
20026678:	6803      	ldr	r3, [r0, #0]
2002667a:	4605      	mov	r5, r0
2002667c:	f003 073f 	and.w	r7, r3, #63	@ 0x3f
20026680:	189b      	adds	r3, r3, r2
20026682:	6003      	str	r3, [r0, #0]
20026684:	bf28      	it	cs
20026686:	6843      	ldrcs	r3, [r0, #4]
20026688:	460e      	mov	r6, r1
2002668a:	bf28      	it	cs
2002668c:	3301      	addcs	r3, #1
2002668e:	4614      	mov	r4, r2
20026690:	bf28      	it	cs
20026692:	6043      	strcs	r3, [r0, #4]
20026694:	b197      	cbz	r7, 200266bc <mbedtls_sha256_update.part.0+0x48>
20026696:	f1c7 0940 	rsb	r9, r7, #64	@ 0x40
2002669a:	4591      	cmp	r9, r2
2002669c:	d80e      	bhi.n	200266bc <mbedtls_sha256_update.part.0+0x48>
2002669e:	f100 0828 	add.w	r8, r0, #40	@ 0x28
200266a2:	464a      	mov	r2, r9
200266a4:	eb08 0007 	add.w	r0, r8, r7
200266a8:	f004 f8fa 	bl	2002a8a0 <memcpy>
200266ac:	3c40      	subs	r4, #64	@ 0x40
200266ae:	4641      	mov	r1, r8
200266b0:	4628      	mov	r0, r5
200266b2:	443c      	add	r4, r7
200266b4:	f7ff fc8e 	bl	20025fd4 <mbedtls_sha256_process>
200266b8:	2700      	movs	r7, #0
200266ba:	444e      	add	r6, r9
200266bc:	46a0      	mov	r8, r4
200266be:	eb04 0906 	add.w	r9, r4, r6
200266c2:	e004      	b.n	200266ce <mbedtls_sha256_update.part.0+0x5a>
200266c4:	4628      	mov	r0, r5
200266c6:	f7ff fc85 	bl	20025fd4 <mbedtls_sha256_process>
200266ca:	f1a8 0840 	sub.w	r8, r8, #64	@ 0x40
200266ce:	f1b8 0f3f 	cmp.w	r8, #63	@ 0x3f
200266d2:	eba9 0108 	sub.w	r1, r9, r8
200266d6:	d8f5      	bhi.n	200266c4 <mbedtls_sha256_update.part.0+0x50>
200266d8:	f06f 033f 	mvn.w	r3, #63	@ 0x3f
200266dc:	09a1      	lsrs	r1, r4, #6
200266de:	4359      	muls	r1, r3
200266e0:	1862      	adds	r2, r4, r1
200266e2:	d007      	beq.n	200266f4 <mbedtls_sha256_update.part.0+0x80>
200266e4:	f105 0028 	add.w	r0, r5, #40	@ 0x28
200266e8:	1a71      	subs	r1, r6, r1
200266ea:	4438      	add	r0, r7
200266ec:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
200266f0:	f004 b8d6 	b.w	2002a8a0 <memcpy>
200266f4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

200266f8 <mbedtls_sha256_update>:
200266f8:	b10a      	cbz	r2, 200266fe <mbedtls_sha256_update+0x6>
200266fa:	f7ff bfbb 	b.w	20026674 <mbedtls_sha256_update.part.0>
200266fe:	4770      	bx	lr

20026700 <mbedtls_sha256_finish>:
20026700:	b537      	push	{r0, r1, r2, r4, r5, lr}
20026702:	4604      	mov	r4, r0
20026704:	460d      	mov	r5, r1
20026706:	e9d0 2100 	ldrd	r2, r1, [r0]
2002670a:	0f53      	lsrs	r3, r2, #29
2002670c:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
20026710:	ba1b      	rev	r3, r3
20026712:	9300      	str	r3, [sp, #0]
20026714:	00d3      	lsls	r3, r2, #3
20026716:	f002 023f 	and.w	r2, r2, #63	@ 0x3f
2002671a:	2a37      	cmp	r2, #55	@ 0x37
2002671c:	ba1b      	rev	r3, r3
2002671e:	bf94      	ite	ls
20026720:	f1c2 0238 	rsbls	r2, r2, #56	@ 0x38
20026724:	f1c2 0278 	rsbhi	r2, r2, #120	@ 0x78
20026728:	492b      	ldr	r1, [pc, #172]	@ (200267d8 <mbedtls_sha256_finish+0xd8>)
2002672a:	9301      	str	r3, [sp, #4]
2002672c:	f7ff ffe4 	bl	200266f8 <mbedtls_sha256_update>
20026730:	2208      	movs	r2, #8
20026732:	4669      	mov	r1, sp
20026734:	4620      	mov	r0, r4
20026736:	f7ff ff9d 	bl	20026674 <mbedtls_sha256_update.part.0>
2002673a:	7ae3      	ldrb	r3, [r4, #11]
2002673c:	702b      	strb	r3, [r5, #0]
2002673e:	8963      	ldrh	r3, [r4, #10]
20026740:	706b      	strb	r3, [r5, #1]
20026742:	68a3      	ldr	r3, [r4, #8]
20026744:	0a1b      	lsrs	r3, r3, #8
20026746:	70ab      	strb	r3, [r5, #2]
20026748:	68a3      	ldr	r3, [r4, #8]
2002674a:	70eb      	strb	r3, [r5, #3]
2002674c:	7be3      	ldrb	r3, [r4, #15]
2002674e:	712b      	strb	r3, [r5, #4]
20026750:	89e3      	ldrh	r3, [r4, #14]
20026752:	716b      	strb	r3, [r5, #5]
20026754:	68e3      	ldr	r3, [r4, #12]
20026756:	0a1b      	lsrs	r3, r3, #8
20026758:	71ab      	strb	r3, [r5, #6]
2002675a:	68e3      	ldr	r3, [r4, #12]
2002675c:	71eb      	strb	r3, [r5, #7]
2002675e:	7ce3      	ldrb	r3, [r4, #19]
20026760:	722b      	strb	r3, [r5, #8]
20026762:	8a63      	ldrh	r3, [r4, #18]
20026764:	726b      	strb	r3, [r5, #9]
20026766:	6923      	ldr	r3, [r4, #16]
20026768:	0a1b      	lsrs	r3, r3, #8
2002676a:	72ab      	strb	r3, [r5, #10]
2002676c:	6923      	ldr	r3, [r4, #16]
2002676e:	72eb      	strb	r3, [r5, #11]
20026770:	7de3      	ldrb	r3, [r4, #23]
20026772:	732b      	strb	r3, [r5, #12]
20026774:	8ae3      	ldrh	r3, [r4, #22]
20026776:	736b      	strb	r3, [r5, #13]
20026778:	6963      	ldr	r3, [r4, #20]
2002677a:	0a1b      	lsrs	r3, r3, #8
2002677c:	73ab      	strb	r3, [r5, #14]
2002677e:	6963      	ldr	r3, [r4, #20]
20026780:	73eb      	strb	r3, [r5, #15]
20026782:	7ee3      	ldrb	r3, [r4, #27]
20026784:	742b      	strb	r3, [r5, #16]
20026786:	8b63      	ldrh	r3, [r4, #26]
20026788:	746b      	strb	r3, [r5, #17]
2002678a:	69a3      	ldr	r3, [r4, #24]
2002678c:	0a1b      	lsrs	r3, r3, #8
2002678e:	74ab      	strb	r3, [r5, #18]
20026790:	69a3      	ldr	r3, [r4, #24]
20026792:	74eb      	strb	r3, [r5, #19]
20026794:	7fe3      	ldrb	r3, [r4, #31]
20026796:	752b      	strb	r3, [r5, #20]
20026798:	8be3      	ldrh	r3, [r4, #30]
2002679a:	756b      	strb	r3, [r5, #21]
2002679c:	69e3      	ldr	r3, [r4, #28]
2002679e:	0a1b      	lsrs	r3, r3, #8
200267a0:	75ab      	strb	r3, [r5, #22]
200267a2:	69e3      	ldr	r3, [r4, #28]
200267a4:	75eb      	strb	r3, [r5, #23]
200267a6:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200267aa:	762b      	strb	r3, [r5, #24]
200267ac:	8c63      	ldrh	r3, [r4, #34]	@ 0x22
200267ae:	766b      	strb	r3, [r5, #25]
200267b0:	6a23      	ldr	r3, [r4, #32]
200267b2:	0a1b      	lsrs	r3, r3, #8
200267b4:	76ab      	strb	r3, [r5, #26]
200267b6:	6a23      	ldr	r3, [r4, #32]
200267b8:	76eb      	strb	r3, [r5, #27]
200267ba:	6ea3      	ldr	r3, [r4, #104]	@ 0x68
200267bc:	b94b      	cbnz	r3, 200267d2 <mbedtls_sha256_finish+0xd2>
200267be:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
200267c2:	772b      	strb	r3, [r5, #28]
200267c4:	8ce3      	ldrh	r3, [r4, #38]	@ 0x26
200267c6:	776b      	strb	r3, [r5, #29]
200267c8:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200267ca:	0a1b      	lsrs	r3, r3, #8
200267cc:	77ab      	strb	r3, [r5, #30]
200267ce:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200267d0:	77eb      	strb	r3, [r5, #31]
200267d2:	b003      	add	sp, #12
200267d4:	bd30      	pop	{r4, r5, pc}
200267d6:	bf00      	nop
200267d8:	2002bdb4 	.word	0x2002bdb4

200267dc <mbedtls_sha256>:
200267dc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200267e0:	461d      	mov	r5, r3
200267e2:	b09c      	sub	sp, #112	@ 0x70
200267e4:	4607      	mov	r7, r0
200267e6:	a801      	add	r0, sp, #4
200267e8:	4688      	mov	r8, r1
200267ea:	4616      	mov	r6, r2
200267ec:	f7ff fb97 	bl	20025f1e <mbedtls_sha256_init>
200267f0:	b355      	cbz	r5, 20026848 <mbedtls_sha256+0x6c>
200267f2:	f8df a090 	ldr.w	sl, [pc, #144]	@ 20026884 <mbedtls_sha256+0xa8>
200267f6:	f8df 9090 	ldr.w	r9, [pc, #144]	@ 20026888 <mbedtls_sha256+0xac>
200267fa:	f8df e090 	ldr.w	lr, [pc, #144]	@ 2002688c <mbedtls_sha256+0xb0>
200267fe:	f8df c090 	ldr.w	ip, [pc, #144]	@ 20026890 <mbedtls_sha256+0xb4>
20026802:	4818      	ldr	r0, [pc, #96]	@ (20026864 <mbedtls_sha256+0x88>)
20026804:	4918      	ldr	r1, [pc, #96]	@ (20026868 <mbedtls_sha256+0x8c>)
20026806:	4a19      	ldr	r2, [pc, #100]	@ (2002686c <mbedtls_sha256+0x90>)
20026808:	4b19      	ldr	r3, [pc, #100]	@ (20026870 <mbedtls_sha256+0x94>)
2002680a:	2400      	movs	r4, #0
2002680c:	e9cd 2309 	strd	r2, r3, [sp, #36]	@ 0x24
20026810:	e9cd 0107 	strd	r0, r1, [sp, #28]
20026814:	4642      	mov	r2, r8
20026816:	4639      	mov	r1, r7
20026818:	a801      	add	r0, sp, #4
2002681a:	e9cd ec05 	strd	lr, ip, [sp, #20]
2002681e:	e9cd 4401 	strd	r4, r4, [sp, #4]
20026822:	e9cd a903 	strd	sl, r9, [sp, #12]
20026826:	951b      	str	r5, [sp, #108]	@ 0x6c
20026828:	f7ff ff66 	bl	200266f8 <mbedtls_sha256_update>
2002682c:	4631      	mov	r1, r6
2002682e:	a801      	add	r0, sp, #4
20026830:	f7ff ff66 	bl	20026700 <mbedtls_sha256_finish>
20026834:	4623      	mov	r3, r4
20026836:	4622      	mov	r2, r4
20026838:	a901      	add	r1, sp, #4
2002683a:	54ca      	strb	r2, [r1, r3]
2002683c:	3301      	adds	r3, #1
2002683e:	2b6c      	cmp	r3, #108	@ 0x6c
20026840:	d1fa      	bne.n	20026838 <mbedtls_sha256+0x5c>
20026842:	b01c      	add	sp, #112	@ 0x70
20026844:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
20026848:	f8df a048 	ldr.w	sl, [pc, #72]	@ 20026894 <mbedtls_sha256+0xb8>
2002684c:	f8df 9048 	ldr.w	r9, [pc, #72]	@ 20026898 <mbedtls_sha256+0xbc>
20026850:	f8df e048 	ldr.w	lr, [pc, #72]	@ 2002689c <mbedtls_sha256+0xc0>
20026854:	f8df c048 	ldr.w	ip, [pc, #72]	@ 200268a0 <mbedtls_sha256+0xc4>
20026858:	4806      	ldr	r0, [pc, #24]	@ (20026874 <mbedtls_sha256+0x98>)
2002685a:	4907      	ldr	r1, [pc, #28]	@ (20026878 <mbedtls_sha256+0x9c>)
2002685c:	4a07      	ldr	r2, [pc, #28]	@ (2002687c <mbedtls_sha256+0xa0>)
2002685e:	4b08      	ldr	r3, [pc, #32]	@ (20026880 <mbedtls_sha256+0xa4>)
20026860:	e7d3      	b.n	2002680a <mbedtls_sha256+0x2e>
20026862:	bf00      	nop
20026864:	ffc00b31 	.word	0xffc00b31
20026868:	68581511 	.word	0x68581511
2002686c:	64f98fa7 	.word	0x64f98fa7
20026870:	befa4fa4 	.word	0xbefa4fa4
20026874:	510e527f 	.word	0x510e527f
20026878:	9b05688c 	.word	0x9b05688c
2002687c:	1f83d9ab 	.word	0x1f83d9ab
20026880:	5be0cd19 	.word	0x5be0cd19
20026884:	c1059ed8 	.word	0xc1059ed8
20026888:	367cd507 	.word	0x367cd507
2002688c:	3070dd17 	.word	0x3070dd17
20026890:	f70e5939 	.word	0xf70e5939
20026894:	6a09e667 	.word	0x6a09e667
20026898:	bb67ae85 	.word	0xbb67ae85
2002689c:	3c6ef372 	.word	0x3c6ef372
200268a0:	a54ff53a 	.word	0xa54ff53a

200268a4 <mbedtls_sha512_init>:
200268a4:	22d8      	movs	r2, #216	@ 0xd8
200268a6:	2100      	movs	r1, #0
200268a8:	f003 bfe0 	b.w	2002a86c <memset>

200268ac <mbedtls_sha512_free>:
200268ac:	b138      	cbz	r0, 200268be <mbedtls_sha512_free+0x12>
200268ae:	2100      	movs	r1, #0
200268b0:	f100 03d8 	add.w	r3, r0, #216	@ 0xd8
200268b4:	4602      	mov	r2, r0
200268b6:	3001      	adds	r0, #1
200268b8:	4298      	cmp	r0, r3
200268ba:	7011      	strb	r1, [r2, #0]
200268bc:	d1fa      	bne.n	200268b4 <mbedtls_sha512_free+0x8>
200268be:	4770      	bx	lr

200268c0 <mbedtls_sha512_clone>:
200268c0:	b508      	push	{r3, lr}
200268c2:	22d8      	movs	r2, #216	@ 0xd8
200268c4:	f003 ffec 	bl	2002a8a0 <memcpy>
200268c8:	bd08      	pop	{r3, pc}
200268ca:	0000      	movs	r0, r0
200268cc:	0000      	movs	r0, r0
	...

200268d0 <mbedtls_sha512_starts>:
200268d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200268d4:	b381      	cbz	r1, 20026938 <mbedtls_sha512_starts+0x68>
200268d6:	f20f 0bc8 	addw	fp, pc, #200	@ 0xc8
200268da:	e9db ab00 	ldrd	sl, fp, [fp]
200268de:	f20f 09c8 	addw	r9, pc, #200	@ 0xc8
200268e2:	e9d9 8900 	ldrd	r8, r9, [r9]
200268e6:	a732      	add	r7, pc, #200	@ (adr r7, 200269b0 <mbedtls_sha512_starts+0xe0>)
200268e8:	e9d7 6700 	ldrd	r6, r7, [r7]
200268ec:	a532      	add	r5, pc, #200	@ (adr r5, 200269b8 <mbedtls_sha512_starts+0xe8>)
200268ee:	e9d5 4500 	ldrd	r4, r5, [r5]
200268f2:	a333      	add	r3, pc, #204	@ (adr r3, 200269c0 <mbedtls_sha512_starts+0xf0>)
200268f4:	e9d3 2300 	ldrd	r2, r3, [r3]
200268f8:	ed9f 5b1b 	vldr	d5, [pc, #108]	@ 20026968 <mbedtls_sha512_starts+0x98>
200268fc:	ed9f 6b1c 	vldr	d6, [pc, #112]	@ 20026970 <mbedtls_sha512_starts+0xa0>
20026900:	ed9f 7b1d 	vldr	d7, [pc, #116]	@ 20026978 <mbedtls_sha512_starts+0xa8>
20026904:	ed9f 4b1e 	vldr	d4, [pc, #120]	@ 20026980 <mbedtls_sha512_starts+0xb0>
20026908:	ed80 5b04 	vstr	d5, [r0, #16]
2002690c:	ed80 4b00 	vstr	d4, [r0]
20026910:	ed80 4b02 	vstr	d4, [r0, #8]
20026914:	ed80 6b06 	vstr	d6, [r0, #24]
20026918:	ed80 7b08 	vstr	d7, [r0, #32]
2002691c:	e9c0 ab0a 	strd	sl, fp, [r0, #40]	@ 0x28
20026920:	e9c0 890c 	strd	r8, r9, [r0, #48]	@ 0x30
20026924:	e9c0 670e 	strd	r6, r7, [r0, #56]	@ 0x38
20026928:	e9c0 4510 	strd	r4, r5, [r0, #64]	@ 0x40
2002692c:	e9c0 2312 	strd	r2, r3, [r0, #72]	@ 0x48
20026930:	f8c0 10d0 	str.w	r1, [r0, #208]	@ 0xd0
20026934:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20026938:	ed9f 5b13 	vldr	d5, [pc, #76]	@ 20026988 <mbedtls_sha512_starts+0xb8>
2002693c:	f20f 0b88 	addw	fp, pc, #136	@ 0x88
20026940:	e9db ab00 	ldrd	sl, fp, [fp]
20026944:	f20f 0988 	addw	r9, pc, #136	@ 0x88
20026948:	e9d9 8900 	ldrd	r8, r9, [r9]
2002694c:	a722      	add	r7, pc, #136	@ (adr r7, 200269d8 <mbedtls_sha512_starts+0x108>)
2002694e:	e9d7 6700 	ldrd	r6, r7, [r7]
20026952:	a523      	add	r5, pc, #140	@ (adr r5, 200269e0 <mbedtls_sha512_starts+0x110>)
20026954:	e9d5 4500 	ldrd	r4, r5, [r5]
20026958:	a323      	add	r3, pc, #140	@ (adr r3, 200269e8 <mbedtls_sha512_starts+0x118>)
2002695a:	e9d3 2300 	ldrd	r2, r3, [r3]
2002695e:	ed9f 6b0c 	vldr	d6, [pc, #48]	@ 20026990 <mbedtls_sha512_starts+0xc0>
20026962:	ed9f 7b0d 	vldr	d7, [pc, #52]	@ 20026998 <mbedtls_sha512_starts+0xc8>
20026966:	e7cd      	b.n	20026904 <mbedtls_sha512_starts+0x34>
20026968:	c1059ed8 	.word	0xc1059ed8
2002696c:	cbbb9d5d 	.word	0xcbbb9d5d
20026970:	367cd507 	.word	0x367cd507
20026974:	629a292a 	.word	0x629a292a
20026978:	3070dd17 	.word	0x3070dd17
2002697c:	9159015a 	.word	0x9159015a
	...
20026988:	f3bcc908 	.word	0xf3bcc908
2002698c:	6a09e667 	.word	0x6a09e667
20026990:	84caa73b 	.word	0x84caa73b
20026994:	bb67ae85 	.word	0xbb67ae85
20026998:	fe94f82b 	.word	0xfe94f82b
2002699c:	3c6ef372 	.word	0x3c6ef372
200269a0:	f70e5939 	.word	0xf70e5939
200269a4:	152fecd8 	.word	0x152fecd8
200269a8:	ffc00b31 	.word	0xffc00b31
200269ac:	67332667 	.word	0x67332667
200269b0:	68581511 	.word	0x68581511
200269b4:	8eb44a87 	.word	0x8eb44a87
200269b8:	64f98fa7 	.word	0x64f98fa7
200269bc:	db0c2e0d 	.word	0xdb0c2e0d
200269c0:	befa4fa4 	.word	0xbefa4fa4
200269c4:	47b5481d 	.word	0x47b5481d
200269c8:	5f1d36f1 	.word	0x5f1d36f1
200269cc:	a54ff53a 	.word	0xa54ff53a
200269d0:	ade682d1 	.word	0xade682d1
200269d4:	510e527f 	.word	0x510e527f
200269d8:	2b3e6c1f 	.word	0x2b3e6c1f
200269dc:	9b05688c 	.word	0x9b05688c
200269e0:	fb41bd6b 	.word	0xfb41bd6b
200269e4:	1f83d9ab 	.word	0x1f83d9ab
200269e8:	137e2179 	.word	0x137e2179
200269ec:	5be0cd19 	.word	0x5be0cd19

200269f0 <mbedtls_sha512_process>:
200269f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200269f4:	f5ad 7d3f 	sub.w	sp, sp, #764	@ 0x2fc
200269f8:	4682      	mov	sl, r0
200269fa:	a81e      	add	r0, sp, #120	@ 0x78
200269fc:	4604      	mov	r4, r0
200269fe:	f101 0580 	add.w	r5, r1, #128	@ 0x80
20026a02:	784b      	ldrb	r3, [r1, #1]
20026a04:	780a      	ldrb	r2, [r1, #0]
20026a06:	041b      	lsls	r3, r3, #16
20026a08:	790f      	ldrb	r7, [r1, #4]
20026a0a:	ea43 6302 	orr.w	r3, r3, r2, lsl #24
20026a0e:	79ca      	ldrb	r2, [r1, #7]
20026a10:	788e      	ldrb	r6, [r1, #2]
20026a12:	ea42 6207 	orr.w	r2, r2, r7, lsl #24
20026a16:	794f      	ldrb	r7, [r1, #5]
20026a18:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
20026a1c:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
20026a20:	78ce      	ldrb	r6, [r1, #3]
20026a22:	798f      	ldrb	r7, [r1, #6]
20026a24:	3108      	adds	r1, #8
20026a26:	ea42 2207 	orr.w	r2, r2, r7, lsl #8
20026a2a:	4333      	orrs	r3, r6
20026a2c:	428d      	cmp	r5, r1
20026a2e:	e9c4 2300 	strd	r2, r3, [r4]
20026a32:	f104 0408 	add.w	r4, r4, #8
20026a36:	d1e4      	bne.n	20026a02 <mbedtls_sha512_process+0x12>
20026a38:	4601      	mov	r1, r0
20026a3a:	2610      	movs	r6, #16
20026a3c:	e9d1 4c1c 	ldrd	r4, ip, [r1, #112]	@ 0x70
20026a40:	e9d1 2502 	ldrd	r2, r5, [r1, #8]
20026a44:	468e      	mov	lr, r1
20026a46:	0ce3      	lsrs	r3, r4, #19
20026a48:	ea4f 47dc 	mov.w	r7, ip, lsr #19
20026a4c:	ea4f 09c4 	mov.w	r9, r4, lsl #3
20026a50:	ea4f 08cc 	mov.w	r8, ip, lsl #3
20026a54:	ea48 7854 	orr.w	r8, r8, r4, lsr #29
20026a58:	ea43 334c 	orr.w	r3, r3, ip, lsl #13
20026a5c:	ea47 3744 	orr.w	r7, r7, r4, lsl #13
20026a60:	ea49 795c 	orr.w	r9, r9, ip, lsr #29
20026a64:	09a4      	lsrs	r4, r4, #6
20026a66:	ea87 0708 	eor.w	r7, r7, r8
20026a6a:	ea44 648c 	orr.w	r4, r4, ip, lsl #26
20026a6e:	ea83 0309 	eor.w	r3, r3, r9
20026a72:	4063      	eors	r3, r4
20026a74:	ea87 179c 	eor.w	r7, r7, ip, lsr #6
20026a78:	e9de 4c12 	ldrd	r4, ip, [lr, #72]	@ 0x48
20026a7c:	e9de 8e00 	ldrd	r8, lr, [lr]
20026a80:	eb14 0408 	adds.w	r4, r4, r8
20026a84:	eb4c 0c0e 	adc.w	ip, ip, lr
20026a88:	191b      	adds	r3, r3, r4
20026a8a:	eb47 070c 	adc.w	r7, r7, ip
20026a8e:	0854      	lsrs	r4, r2, #1
20026a90:	ea4f 2812 	mov.w	r8, r2, lsr #8
20026a94:	ea4f 0c55 	mov.w	ip, r5, lsr #1
20026a98:	ea4f 2e15 	mov.w	lr, r5, lsr #8
20026a9c:	ea4c 7cc2 	orr.w	ip, ip, r2, lsl #31
20026aa0:	ea4e 6e02 	orr.w	lr, lr, r2, lsl #24
20026aa4:	ea44 74c5 	orr.w	r4, r4, r5, lsl #31
20026aa8:	ea48 6805 	orr.w	r8, r8, r5, lsl #24
20026aac:	09d2      	lsrs	r2, r2, #7
20026aae:	ea84 0408 	eor.w	r4, r4, r8
20026ab2:	ea42 6245 	orr.w	r2, r2, r5, lsl #25
20026ab6:	4062      	eors	r2, r4
20026ab8:	ea8c 0c0e 	eor.w	ip, ip, lr
20026abc:	189b      	adds	r3, r3, r2
20026abe:	ea8c 14d5 	eor.w	r4, ip, r5, lsr #7
20026ac2:	f106 0601 	add.w	r6, r6, #1
20026ac6:	eb47 0704 	adc.w	r7, r7, r4
20026aca:	3108      	adds	r1, #8
20026acc:	2e50      	cmp	r6, #80	@ 0x50
20026ace:	e9c1 371e 	strd	r3, r7, [r1, #120]	@ 0x78
20026ad2:	d1b3      	bne.n	20026a3c <mbedtls_sha512_process+0x4c>
20026ad4:	f8da 3010 	ldr.w	r3, [sl, #16]
20026ad8:	930e      	str	r3, [sp, #56]	@ 0x38
20026ada:	f8da 3014 	ldr.w	r3, [sl, #20]
20026ade:	930f      	str	r3, [sp, #60]	@ 0x3c
20026ae0:	f8da 3018 	ldr.w	r3, [sl, #24]
20026ae4:	9310      	str	r3, [sp, #64]	@ 0x40
20026ae6:	f8da 301c 	ldr.w	r3, [sl, #28]
20026aea:	9311      	str	r3, [sp, #68]	@ 0x44
20026aec:	f8da 3020 	ldr.w	r3, [sl, #32]
20026af0:	9312      	str	r3, [sp, #72]	@ 0x48
20026af2:	f8da 3024 	ldr.w	r3, [sl, #36]	@ 0x24
20026af6:	9313      	str	r3, [sp, #76]	@ 0x4c
20026af8:	f8da 3028 	ldr.w	r3, [sl, #40]	@ 0x28
20026afc:	9314      	str	r3, [sp, #80]	@ 0x50
20026afe:	f8da 302c 	ldr.w	r3, [sl, #44]	@ 0x2c
20026b02:	9315      	str	r3, [sp, #84]	@ 0x54
20026b04:	f8da 3030 	ldr.w	r3, [sl, #48]	@ 0x30
20026b08:	9316      	str	r3, [sp, #88]	@ 0x58
20026b0a:	f8da 3034 	ldr.w	r3, [sl, #52]	@ 0x34
20026b0e:	9317      	str	r3, [sp, #92]	@ 0x5c
20026b10:	f8da 3038 	ldr.w	r3, [sl, #56]	@ 0x38
20026b14:	9318      	str	r3, [sp, #96]	@ 0x60
20026b16:	f8da 303c 	ldr.w	r3, [sl, #60]	@ 0x3c
20026b1a:	9319      	str	r3, [sp, #100]	@ 0x64
20026b1c:	f8da 3040 	ldr.w	r3, [sl, #64]	@ 0x40
20026b20:	931a      	str	r3, [sp, #104]	@ 0x68
20026b22:	f8da 3044 	ldr.w	r3, [sl, #68]	@ 0x44
20026b26:	931b      	str	r3, [sp, #108]	@ 0x6c
20026b28:	f8da 3048 	ldr.w	r3, [sl, #72]	@ 0x48
20026b2c:	931c      	str	r3, [sp, #112]	@ 0x70
20026b2e:	f8da 304c 	ldr.w	r3, [sl, #76]	@ 0x4c
20026b32:	931d      	str	r3, [sp, #116]	@ 0x74
20026b34:	4b0f      	ldr	r3, [pc, #60]	@ (20026b74 <mbedtls_sha512_process+0x184>)
20026b36:	9300      	str	r3, [sp, #0]
20026b38:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
20026b3a:	f8dd b054 	ldr.w	fp, [sp, #84]	@ 0x54
20026b3e:	930a      	str	r3, [sp, #40]	@ 0x28
20026b40:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
20026b42:	e9dd ce10 	ldrd	ip, lr, [sp, #64]	@ 0x40
20026b46:	930b      	str	r3, [sp, #44]	@ 0x2c
20026b48:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20026b4a:	9308      	str	r3, [sp, #32]
20026b4c:	9b1b      	ldr	r3, [sp, #108]	@ 0x6c
20026b4e:	9309      	str	r3, [sp, #36]	@ 0x24
20026b50:	9b18      	ldr	r3, [sp, #96]	@ 0x60
20026b52:	9306      	str	r3, [sp, #24]
20026b54:	9b19      	ldr	r3, [sp, #100]	@ 0x64
20026b56:	9307      	str	r3, [sp, #28]
20026b58:	9b16      	ldr	r3, [sp, #88]	@ 0x58
20026b5a:	9304      	str	r3, [sp, #16]
20026b5c:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
20026b5e:	9305      	str	r3, [sp, #20]
20026b60:	9b14      	ldr	r3, [sp, #80]	@ 0x50
20026b62:	9303      	str	r3, [sp, #12]
20026b64:	9b12      	ldr	r3, [sp, #72]	@ 0x48
20026b66:	9301      	str	r3, [sp, #4]
20026b68:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
20026b6a:	9302      	str	r3, [sp, #8]
20026b6c:	e9dd 320e 	ldrd	r3, r2, [sp, #56]	@ 0x38
20026b70:	e002      	b.n	20026b78 <mbedtls_sha512_process+0x188>
20026b72:	bf00      	nop
20026b74:	2002bf78 	.word	0x2002bf78
20026b78:	9c04      	ldr	r4, [sp, #16]
20026b7a:	9e04      	ldr	r6, [sp, #16]
20026b7c:	ea4f 3894 	mov.w	r8, r4, lsr #14
20026b80:	9c05      	ldr	r4, [sp, #20]
20026b82:	9900      	ldr	r1, [sp, #0]
20026b84:	ea48 4884 	orr.w	r8, r8, r4, lsl #18
20026b88:	ea4f 3994 	mov.w	r9, r4, lsr #14
20026b8c:	9c04      	ldr	r4, [sp, #16]
20026b8e:	ea49 4984 	orr.w	r9, r9, r4, lsl #18
20026b92:	0ca5      	lsrs	r5, r4, #18
20026b94:	9c05      	ldr	r4, [sp, #20]
20026b96:	ea45 3584 	orr.w	r5, r5, r4, lsl #14
20026b9a:	0ca4      	lsrs	r4, r4, #18
20026b9c:	ea44 3486 	orr.w	r4, r4, r6, lsl #14
20026ba0:	ea89 0904 	eor.w	r9, r9, r4
20026ba4:	9c05      	ldr	r4, [sp, #20]
20026ba6:	ea88 0805 	eor.w	r8, r8, r5
20026baa:	05f5      	lsls	r5, r6, #23
20026bac:	ea45 2554 	orr.w	r5, r5, r4, lsr #9
20026bb0:	05e4      	lsls	r4, r4, #23
20026bb2:	ea44 2456 	orr.w	r4, r4, r6, lsr #9
20026bb6:	ea88 0805 	eor.w	r8, r8, r5
20026bba:	ea89 0904 	eor.w	r9, r9, r4
20026bbe:	e9d1 5700 	ldrd	r5, r7, [r1]
20026bc2:	e9d0 6400 	ldrd	r6, r4, [r0]
20026bc6:	19ad      	adds	r5, r5, r6
20026bc8:	eb47 0404 	adc.w	r4, r7, r4
20026bcc:	9e06      	ldr	r6, [sp, #24]
20026bce:	9f08      	ldr	r7, [sp, #32]
20026bd0:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026bd2:	407e      	eors	r6, r7
20026bd4:	9f07      	ldr	r7, [sp, #28]
20026bd6:	eb18 0505 	adds.w	r5, r8, r5
20026bda:	ea87 0701 	eor.w	r7, r7, r1
20026bde:	9904      	ldr	r1, [sp, #16]
20026be0:	eb49 0404 	adc.w	r4, r9, r4
20026be4:	400e      	ands	r6, r1
20026be6:	9905      	ldr	r1, [sp, #20]
20026be8:	ea4f 7813 	mov.w	r8, r3, lsr #28
20026bec:	400f      	ands	r7, r1
20026bee:	9908      	ldr	r1, [sp, #32]
20026bf0:	ea4f 7983 	mov.w	r9, r3, lsl #30
20026bf4:	404e      	eors	r6, r1
20026bf6:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026bf8:	19ad      	adds	r5, r5, r6
20026bfa:	ea87 0701 	eor.w	r7, r7, r1
20026bfe:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026c00:	eb44 0407 	adc.w	r4, r4, r7
20026c04:	186d      	adds	r5, r5, r1
20026c06:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026c08:	ea4f 7712 	mov.w	r7, r2, lsr #28
20026c0c:	eb41 0404 	adc.w	r4, r1, r4
20026c10:	9903      	ldr	r1, [sp, #12]
20026c12:	0796      	lsls	r6, r2, #30
20026c14:	1949      	adds	r1, r1, r5
20026c16:	ea46 0693 	orr.w	r6, r6, r3, lsr #2
20026c1a:	ea47 1703 	orr.w	r7, r7, r3, lsl #4
20026c1e:	910a      	str	r1, [sp, #40]	@ 0x28
20026c20:	ea87 0706 	eor.w	r7, r7, r6
20026c24:	eb4b 0104 	adc.w	r1, fp, r4
20026c28:	0656      	lsls	r6, r2, #25
20026c2a:	ea49 0992 	orr.w	r9, r9, r2, lsr #2
20026c2e:	ea46 16d3 	orr.w	r6, r6, r3, lsr #7
20026c32:	910b      	str	r1, [sp, #44]	@ 0x2c
20026c34:	ea48 1802 	orr.w	r8, r8, r2, lsl #4
20026c38:	9901      	ldr	r1, [sp, #4]
20026c3a:	ea88 0809 	eor.w	r8, r8, r9
20026c3e:	4077      	eors	r7, r6
20026c40:	ea4f 6943 	mov.w	r9, r3, lsl #25
20026c44:	ea43 060c 	orr.w	r6, r3, ip
20026c48:	ea49 19d2 	orr.w	r9, r9, r2, lsr #7
20026c4c:	400e      	ands	r6, r1
20026c4e:	9902      	ldr	r1, [sp, #8]
20026c50:	ea03 0b0c 	and.w	fp, r3, ip
20026c54:	ea88 0809 	eor.w	r8, r8, r9
20026c58:	ea42 090e 	orr.w	r9, r2, lr
20026c5c:	ea09 0901 	and.w	r9, r9, r1
20026c60:	ea46 060b 	orr.w	r6, r6, fp
20026c64:	ea02 010e 	and.w	r1, r2, lr
20026c68:	eb18 0606 	adds.w	r6, r8, r6
20026c6c:	ea49 0901 	orr.w	r9, r9, r1
20026c70:	eb47 0709 	adc.w	r7, r7, r9
20026c74:	1971      	adds	r1, r6, r5
20026c76:	9103      	str	r1, [sp, #12]
20026c78:	9900      	ldr	r1, [sp, #0]
20026c7a:	eb44 0b07 	adc.w	fp, r4, r7
20026c7e:	e9d0 6702 	ldrd	r6, r7, [r0, #8]
20026c82:	e9d1 4502 	ldrd	r4, r5, [r1, #8]
20026c86:	9908      	ldr	r1, [sp, #32]
20026c88:	19a4      	adds	r4, r4, r6
20026c8a:	eb45 0507 	adc.w	r5, r5, r7
20026c8e:	1864      	adds	r4, r4, r1
20026c90:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026c92:	9e06      	ldr	r6, [sp, #24]
20026c94:	eb41 0505 	adc.w	r5, r1, r5
20026c98:	9904      	ldr	r1, [sp, #16]
20026c9a:	ea81 0706 	eor.w	r7, r1, r6
20026c9e:	9905      	ldr	r1, [sp, #20]
20026ca0:	9e07      	ldr	r6, [sp, #28]
20026ca2:	404e      	eors	r6, r1
20026ca4:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026ca6:	400f      	ands	r7, r1
20026ca8:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026caa:	400e      	ands	r6, r1
20026cac:	9906      	ldr	r1, [sp, #24]
20026cae:	404f      	eors	r7, r1
20026cb0:	9907      	ldr	r1, [sp, #28]
20026cb2:	19e4      	adds	r4, r4, r7
20026cb4:	ea86 0601 	eor.w	r6, r6, r1
20026cb8:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026cba:	eb45 0506 	adc.w	r5, r5, r6
20026cbe:	0b8f      	lsrs	r7, r1, #14
20026cc0:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026cc2:	ea47 4781 	orr.w	r7, r7, r1, lsl #18
20026cc6:	ea4f 3891 	mov.w	r8, r1, lsr #14
20026cca:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026ccc:	ea48 4881 	orr.w	r8, r8, r1, lsl #18
20026cd0:	ea4f 4991 	mov.w	r9, r1, lsr #18
20026cd4:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026cd6:	ea49 3981 	orr.w	r9, r9, r1, lsl #14
20026cda:	0c8e      	lsrs	r6, r1, #18
20026cdc:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026cde:	ea87 0709 	eor.w	r7, r7, r9
20026ce2:	ea46 3681 	orr.w	r6, r6, r1, lsl #14
20026ce6:	ea88 0806 	eor.w	r8, r8, r6
20026cea:	05ce      	lsls	r6, r1, #23
20026cec:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026cee:	ea46 2651 	orr.w	r6, r6, r1, lsr #9
20026cf2:	ea4f 59c1 	mov.w	r9, r1, lsl #23
20026cf6:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026cf8:	407e      	eors	r6, r7
20026cfa:	ea49 2951 	orr.w	r9, r9, r1, lsr #9
20026cfe:	9901      	ldr	r1, [sp, #4]
20026d00:	19a4      	adds	r4, r4, r6
20026d02:	ea88 0809 	eor.w	r8, r8, r9
20026d06:	eb45 0808 	adc.w	r8, r5, r8
20026d0a:	1909      	adds	r1, r1, r4
20026d0c:	9108      	str	r1, [sp, #32]
20026d0e:	9902      	ldr	r1, [sp, #8]
20026d10:	ea4f 761b 	mov.w	r6, fp, lsr #28
20026d14:	eb41 0108 	adc.w	r1, r1, r8
20026d18:	9109      	str	r1, [sp, #36]	@ 0x24
20026d1a:	9903      	ldr	r1, [sp, #12]
20026d1c:	ea4f 758b 	mov.w	r5, fp, lsl #30
20026d20:	ea45 0591 	orr.w	r5, r5, r1, lsr #2
20026d24:	0f0f      	lsrs	r7, r1, #28
20026d26:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026d2a:	ea4f 7981 	mov.w	r9, r1, lsl #30
20026d2e:	ea49 099b 	orr.w	r9, r9, fp, lsr #2
20026d32:	ea47 170b 	orr.w	r7, r7, fp, lsl #4
20026d36:	406e      	eors	r6, r5
20026d38:	ea4f 654b 	mov.w	r5, fp, lsl #25
20026d3c:	ea45 15d1 	orr.w	r5, r5, r1, lsr #7
20026d40:	ea87 0709 	eor.w	r7, r7, r9
20026d44:	ea4f 6941 	mov.w	r9, r1, lsl #25
20026d48:	ea49 19db 	orr.w	r9, r9, fp, lsr #7
20026d4c:	406e      	eors	r6, r5
20026d4e:	ea43 0501 	orr.w	r5, r3, r1
20026d52:	ea87 0709 	eor.w	r7, r7, r9
20026d56:	4019      	ands	r1, r3
20026d58:	ea42 090b 	orr.w	r9, r2, fp
20026d5c:	ea05 050c 	and.w	r5, r5, ip
20026d60:	ea09 090e 	and.w	r9, r9, lr
20026d64:	430d      	orrs	r5, r1
20026d66:	ea02 010b 	and.w	r1, r2, fp
20026d6a:	197d      	adds	r5, r7, r5
20026d6c:	ea49 0901 	orr.w	r9, r9, r1
20026d70:	eb46 0609 	adc.w	r6, r6, r9
20026d74:	1929      	adds	r1, r5, r4
20026d76:	9101      	str	r1, [sp, #4]
20026d78:	eb48 0106 	adc.w	r1, r8, r6
20026d7c:	9102      	str	r1, [sp, #8]
20026d7e:	9900      	ldr	r1, [sp, #0]
20026d80:	e9d0 6704 	ldrd	r6, r7, [r0, #16]
20026d84:	e9d1 4504 	ldrd	r4, r5, [r1, #16]
20026d88:	9906      	ldr	r1, [sp, #24]
20026d8a:	19a4      	adds	r4, r4, r6
20026d8c:	eb45 0507 	adc.w	r5, r5, r7
20026d90:	1864      	adds	r4, r4, r1
20026d92:	9907      	ldr	r1, [sp, #28]
20026d94:	eb41 0505 	adc.w	r5, r1, r5
20026d98:	9904      	ldr	r1, [sp, #16]
20026d9a:	9e0a      	ldr	r6, [sp, #40]	@ 0x28
20026d9c:	ea81 0706 	eor.w	r7, r1, r6
20026da0:	9905      	ldr	r1, [sp, #20]
20026da2:	9e0b      	ldr	r6, [sp, #44]	@ 0x2c
20026da4:	404e      	eors	r6, r1
20026da6:	9908      	ldr	r1, [sp, #32]
20026da8:	400f      	ands	r7, r1
20026daa:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026dac:	400e      	ands	r6, r1
20026dae:	9904      	ldr	r1, [sp, #16]
20026db0:	404f      	eors	r7, r1
20026db2:	9905      	ldr	r1, [sp, #20]
20026db4:	19e4      	adds	r4, r4, r7
20026db6:	ea86 0601 	eor.w	r6, r6, r1
20026dba:	9908      	ldr	r1, [sp, #32]
20026dbc:	eb45 0506 	adc.w	r5, r5, r6
20026dc0:	0b8f      	lsrs	r7, r1, #14
20026dc2:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026dc4:	ea47 4781 	orr.w	r7, r7, r1, lsl #18
20026dc8:	ea4f 3891 	mov.w	r8, r1, lsr #14
20026dcc:	9908      	ldr	r1, [sp, #32]
20026dce:	ea48 4881 	orr.w	r8, r8, r1, lsl #18
20026dd2:	ea4f 4991 	mov.w	r9, r1, lsr #18
20026dd6:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026dd8:	ea49 3981 	orr.w	r9, r9, r1, lsl #14
20026ddc:	0c8e      	lsrs	r6, r1, #18
20026dde:	9908      	ldr	r1, [sp, #32]
20026de0:	ea87 0709 	eor.w	r7, r7, r9
20026de4:	ea46 3681 	orr.w	r6, r6, r1, lsl #14
20026de8:	ea88 0806 	eor.w	r8, r8, r6
20026dec:	05ce      	lsls	r6, r1, #23
20026dee:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026df0:	ea46 2651 	orr.w	r6, r6, r1, lsr #9
20026df4:	ea4f 59c1 	mov.w	r9, r1, lsl #23
20026df8:	9908      	ldr	r1, [sp, #32]
20026dfa:	407e      	eors	r6, r7
20026dfc:	ea49 2951 	orr.w	r9, r9, r1, lsr #9
20026e00:	19a4      	adds	r4, r4, r6
20026e02:	ea88 0809 	eor.w	r8, r8, r9
20026e06:	eb45 0808 	adc.w	r8, r5, r8
20026e0a:	eb1c 0104 	adds.w	r1, ip, r4
20026e0e:	9106      	str	r1, [sp, #24]
20026e10:	eb4e 0108 	adc.w	r1, lr, r8
20026e14:	9107      	str	r1, [sp, #28]
20026e16:	9901      	ldr	r1, [sp, #4]
20026e18:	0f0f      	lsrs	r7, r1, #28
20026e1a:	9902      	ldr	r1, [sp, #8]
20026e1c:	ea47 1701 	orr.w	r7, r7, r1, lsl #4
20026e20:	0f0e      	lsrs	r6, r1, #28
20026e22:	9901      	ldr	r1, [sp, #4]
20026e24:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20026e28:	ea4f 7c81 	mov.w	ip, r1, lsl #30
20026e2c:	9902      	ldr	r1, [sp, #8]
20026e2e:	ea4c 0c91 	orr.w	ip, ip, r1, lsr #2
20026e32:	078d      	lsls	r5, r1, #30
20026e34:	9901      	ldr	r1, [sp, #4]
20026e36:	ea87 070c 	eor.w	r7, r7, ip
20026e3a:	ea45 0591 	orr.w	r5, r5, r1, lsr #2
20026e3e:	ea4f 6c41 	mov.w	ip, r1, lsl #25
20026e42:	9902      	ldr	r1, [sp, #8]
20026e44:	406e      	eors	r6, r5
20026e46:	ea4c 1cd1 	orr.w	ip, ip, r1, lsr #7
20026e4a:	064d      	lsls	r5, r1, #25
20026e4c:	9901      	ldr	r1, [sp, #4]
20026e4e:	ea87 070c 	eor.w	r7, r7, ip
20026e52:	ea45 15d1 	orr.w	r5, r5, r1, lsr #7
20026e56:	406e      	eors	r6, r5
20026e58:	9903      	ldr	r1, [sp, #12]
20026e5a:	9d01      	ldr	r5, [sp, #4]
20026e5c:	430d      	orrs	r5, r1
20026e5e:	9902      	ldr	r1, [sp, #8]
20026e60:	ea4b 0c01 	orr.w	ip, fp, r1
20026e64:	ea05 0103 	and.w	r1, r5, r3
20026e68:	910c      	str	r1, [sp, #48]	@ 0x30
20026e6a:	9d01      	ldr	r5, [sp, #4]
20026e6c:	9903      	ldr	r1, [sp, #12]
20026e6e:	ea0c 0c02 	and.w	ip, ip, r2
20026e72:	ea01 0905 	and.w	r9, r1, r5
20026e76:	9902      	ldr	r1, [sp, #8]
20026e78:	ea0b 0e01 	and.w	lr, fp, r1
20026e7c:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026e7e:	ea4c 0c0e 	orr.w	ip, ip, lr
20026e82:	ea41 0509 	orr.w	r5, r1, r9
20026e86:	9900      	ldr	r1, [sp, #0]
20026e88:	197d      	adds	r5, r7, r5
20026e8a:	eb46 060c 	adc.w	r6, r6, ip
20026e8e:	eb15 0904 	adds.w	r9, r5, r4
20026e92:	e9d1 4506 	ldrd	r4, r5, [r1, #24]
20026e96:	9904      	ldr	r1, [sp, #16]
20026e98:	eb48 0806 	adc.w	r8, r8, r6
20026e9c:	e9d0 6706 	ldrd	r6, r7, [r0, #24]
20026ea0:	19a4      	adds	r4, r4, r6
20026ea2:	eb45 0507 	adc.w	r5, r5, r7
20026ea6:	1864      	adds	r4, r4, r1
20026ea8:	9905      	ldr	r1, [sp, #20]
20026eaa:	9e08      	ldr	r6, [sp, #32]
20026eac:	eb41 0505 	adc.w	r5, r1, r5
20026eb0:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026eb2:	ea81 0706 	eor.w	r7, r1, r6
20026eb6:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026eb8:	9e09      	ldr	r6, [sp, #36]	@ 0x24
20026eba:	404e      	eors	r6, r1
20026ebc:	9906      	ldr	r1, [sp, #24]
20026ebe:	400f      	ands	r7, r1
20026ec0:	9907      	ldr	r1, [sp, #28]
20026ec2:	400e      	ands	r6, r1
20026ec4:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026ec6:	404f      	eors	r7, r1
20026ec8:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026eca:	19e4      	adds	r4, r4, r7
20026ecc:	ea86 0601 	eor.w	r6, r6, r1
20026ed0:	9906      	ldr	r1, [sp, #24]
20026ed2:	eb45 0506 	adc.w	r5, r5, r6
20026ed6:	ea4f 3c91 	mov.w	ip, r1, lsr #14
20026eda:	9907      	ldr	r1, [sp, #28]
20026edc:	ea4c 4c81 	orr.w	ip, ip, r1, lsl #18
20026ee0:	0b8e      	lsrs	r6, r1, #14
20026ee2:	9906      	ldr	r1, [sp, #24]
20026ee4:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20026ee8:	ea4f 4e91 	mov.w	lr, r1, lsr #18
20026eec:	9907      	ldr	r1, [sp, #28]
20026eee:	ea4e 3e81 	orr.w	lr, lr, r1, lsl #14
20026ef2:	0c8f      	lsrs	r7, r1, #18
20026ef4:	9906      	ldr	r1, [sp, #24]
20026ef6:	ea8c 0c0e 	eor.w	ip, ip, lr
20026efa:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20026efe:	407e      	eors	r6, r7
20026f00:	05cf      	lsls	r7, r1, #23
20026f02:	9907      	ldr	r1, [sp, #28]
20026f04:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20026f08:	ea4f 5ec1 	mov.w	lr, r1, lsl #23
20026f0c:	9906      	ldr	r1, [sp, #24]
20026f0e:	ea8c 0707 	eor.w	r7, ip, r7
20026f12:	ea4e 2e51 	orr.w	lr, lr, r1, lsr #9
20026f16:	19e4      	adds	r4, r4, r7
20026f18:	ea86 060e 	eor.w	r6, r6, lr
20026f1c:	eb45 0606 	adc.w	r6, r5, r6
20026f20:	191b      	adds	r3, r3, r4
20026f22:	930c      	str	r3, [sp, #48]	@ 0x30
20026f24:	eb42 0306 	adc.w	r3, r2, r6
20026f28:	930d      	str	r3, [sp, #52]	@ 0x34
20026f2a:	ea4f 7218 	mov.w	r2, r8, lsr #28
20026f2e:	ea4f 7388 	mov.w	r3, r8, lsl #30
20026f32:	ea43 0399 	orr.w	r3, r3, r9, lsr #2
20026f36:	ea4f 7519 	mov.w	r5, r9, lsr #28
20026f3a:	ea42 1209 	orr.w	r2, r2, r9, lsl #4
20026f3e:	ea4f 7789 	mov.w	r7, r9, lsl #30
20026f42:	ea47 0798 	orr.w	r7, r7, r8, lsr #2
20026f46:	ea45 1508 	orr.w	r5, r5, r8, lsl #4
20026f4a:	405a      	eors	r2, r3
20026f4c:	ea4f 6348 	mov.w	r3, r8, lsl #25
20026f50:	9902      	ldr	r1, [sp, #8]
20026f52:	ea43 13d9 	orr.w	r3, r3, r9, lsr #7
20026f56:	407d      	eors	r5, r7
20026f58:	ea4f 6749 	mov.w	r7, r9, lsl #25
20026f5c:	ea47 17d8 	orr.w	r7, r7, r8, lsr #7
20026f60:	405a      	eors	r2, r3
20026f62:	9b01      	ldr	r3, [sp, #4]
20026f64:	407d      	eors	r5, r7
20026f66:	ea41 0708 	orr.w	r7, r1, r8
20026f6a:	9903      	ldr	r1, [sp, #12]
20026f6c:	ea43 0309 	orr.w	r3, r3, r9
20026f70:	400b      	ands	r3, r1
20026f72:	9901      	ldr	r1, [sp, #4]
20026f74:	ea07 070b 	and.w	r7, r7, fp
20026f78:	ea01 0e09 	and.w	lr, r1, r9
20026f7c:	9902      	ldr	r1, [sp, #8]
20026f7e:	ea43 030e 	orr.w	r3, r3, lr
20026f82:	ea01 0c08 	and.w	ip, r1, r8
20026f86:	ea47 070c 	orr.w	r7, r7, ip
20026f8a:	18eb      	adds	r3, r5, r3
20026f8c:	eb42 0207 	adc.w	r2, r2, r7
20026f90:	191b      	adds	r3, r3, r4
20026f92:	9304      	str	r3, [sp, #16]
20026f94:	eb46 0302 	adc.w	r3, r6, r2
20026f98:	9305      	str	r3, [sp, #20]
20026f9a:	9b00      	ldr	r3, [sp, #0]
20026f9c:	6a1b      	ldr	r3, [r3, #32]
20026f9e:	9a00      	ldr	r2, [sp, #0]
20026fa0:	990a      	ldr	r1, [sp, #40]	@ 0x28
20026fa2:	6a52      	ldr	r2, [r2, #36]	@ 0x24
20026fa4:	e9d0 4508 	ldrd	r4, r5, [r0, #32]
20026fa8:	191b      	adds	r3, r3, r4
20026faa:	eb42 0205 	adc.w	r2, r2, r5
20026fae:	185b      	adds	r3, r3, r1
20026fb0:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20026fb2:	9c06      	ldr	r4, [sp, #24]
20026fb4:	eb41 0202 	adc.w	r2, r1, r2
20026fb8:	9908      	ldr	r1, [sp, #32]
20026fba:	ea81 0504 	eor.w	r5, r1, r4
20026fbe:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026fc0:	9c07      	ldr	r4, [sp, #28]
20026fc2:	404c      	eors	r4, r1
20026fc4:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026fc6:	400d      	ands	r5, r1
20026fc8:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026fca:	400c      	ands	r4, r1
20026fcc:	9908      	ldr	r1, [sp, #32]
20026fce:	404d      	eors	r5, r1
20026fd0:	9909      	ldr	r1, [sp, #36]	@ 0x24
20026fd2:	195b      	adds	r3, r3, r5
20026fd4:	ea84 0401 	eor.w	r4, r4, r1
20026fd8:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026fda:	eb42 0204 	adc.w	r2, r2, r4
20026fde:	0b8e      	lsrs	r6, r1, #14
20026fe0:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026fe2:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
20026fe6:	0b8c      	lsrs	r4, r1, #14
20026fe8:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026fea:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
20026fee:	0c8f      	lsrs	r7, r1, #18
20026ff0:	990d      	ldr	r1, [sp, #52]	@ 0x34
20026ff2:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
20026ff6:	0c8d      	lsrs	r5, r1, #18
20026ff8:	990c      	ldr	r1, [sp, #48]	@ 0x30
20026ffa:	407e      	eors	r6, r7
20026ffc:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20027000:	406c      	eors	r4, r5
20027002:	05cd      	lsls	r5, r1, #23
20027004:	990d      	ldr	r1, [sp, #52]	@ 0x34
20027006:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
2002700a:	05cf      	lsls	r7, r1, #23
2002700c:	990c      	ldr	r1, [sp, #48]	@ 0x30
2002700e:	4075      	eors	r5, r6
20027010:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20027014:	9903      	ldr	r1, [sp, #12]
20027016:	195b      	adds	r3, r3, r5
20027018:	ea84 0407 	eor.w	r4, r4, r7
2002701c:	eb42 0204 	adc.w	r2, r2, r4
20027020:	18c9      	adds	r1, r1, r3
20027022:	910a      	str	r1, [sp, #40]	@ 0x28
20027024:	eb4b 0102 	adc.w	r1, fp, r2
20027028:	910b      	str	r1, [sp, #44]	@ 0x2c
2002702a:	9904      	ldr	r1, [sp, #16]
2002702c:	0f0e      	lsrs	r6, r1, #28
2002702e:	9905      	ldr	r1, [sp, #20]
20027030:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20027034:	0f0d      	lsrs	r5, r1, #28
20027036:	9904      	ldr	r1, [sp, #16]
20027038:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
2002703c:	078f      	lsls	r7, r1, #30
2002703e:	9905      	ldr	r1, [sp, #20]
20027040:	ea47 0791 	orr.w	r7, r7, r1, lsr #2
20027044:	078c      	lsls	r4, r1, #30
20027046:	9904      	ldr	r1, [sp, #16]
20027048:	407e      	eors	r6, r7
2002704a:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
2002704e:	064f      	lsls	r7, r1, #25
20027050:	9905      	ldr	r1, [sp, #20]
20027052:	4065      	eors	r5, r4
20027054:	ea47 17d1 	orr.w	r7, r7, r1, lsr #7
20027058:	064c      	lsls	r4, r1, #25
2002705a:	9904      	ldr	r1, [sp, #16]
2002705c:	407e      	eors	r6, r7
2002705e:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
20027062:	4065      	eors	r5, r4
20027064:	ea49 0401 	orr.w	r4, r9, r1
20027068:	9905      	ldr	r1, [sp, #20]
2002706a:	ea48 0701 	orr.w	r7, r8, r1
2002706e:	9901      	ldr	r1, [sp, #4]
20027070:	400c      	ands	r4, r1
20027072:	9902      	ldr	r1, [sp, #8]
20027074:	400f      	ands	r7, r1
20027076:	9904      	ldr	r1, [sp, #16]
20027078:	ea09 0e01 	and.w	lr, r9, r1
2002707c:	9905      	ldr	r1, [sp, #20]
2002707e:	ea44 040e 	orr.w	r4, r4, lr
20027082:	ea08 0c01 	and.w	ip, r8, r1
20027086:	1934      	adds	r4, r6, r4
20027088:	ea47 070c 	orr.w	r7, r7, ip
2002708c:	eb45 0507 	adc.w	r5, r5, r7
20027090:	18e3      	adds	r3, r4, r3
20027092:	9303      	str	r3, [sp, #12]
20027094:	9b00      	ldr	r3, [sp, #0]
20027096:	eb42 0b05 	adc.w	fp, r2, r5
2002709a:	9a00      	ldr	r2, [sp, #0]
2002709c:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
2002709e:	9908      	ldr	r1, [sp, #32]
200270a0:	6ad2      	ldr	r2, [r2, #44]	@ 0x2c
200270a2:	e9d0 450a 	ldrd	r4, r5, [r0, #40]	@ 0x28
200270a6:	191b      	adds	r3, r3, r4
200270a8:	eb42 0205 	adc.w	r2, r2, r5
200270ac:	185b      	adds	r3, r3, r1
200270ae:	9909      	ldr	r1, [sp, #36]	@ 0x24
200270b0:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
200270b2:	eb41 0202 	adc.w	r2, r1, r2
200270b6:	9906      	ldr	r1, [sp, #24]
200270b8:	ea81 0504 	eor.w	r5, r1, r4
200270bc:	9907      	ldr	r1, [sp, #28]
200270be:	9c0d      	ldr	r4, [sp, #52]	@ 0x34
200270c0:	404c      	eors	r4, r1
200270c2:	990a      	ldr	r1, [sp, #40]	@ 0x28
200270c4:	400d      	ands	r5, r1
200270c6:	990b      	ldr	r1, [sp, #44]	@ 0x2c
200270c8:	400c      	ands	r4, r1
200270ca:	9906      	ldr	r1, [sp, #24]
200270cc:	404d      	eors	r5, r1
200270ce:	9907      	ldr	r1, [sp, #28]
200270d0:	195b      	adds	r3, r3, r5
200270d2:	ea84 0401 	eor.w	r4, r4, r1
200270d6:	990a      	ldr	r1, [sp, #40]	@ 0x28
200270d8:	eb42 0204 	adc.w	r2, r2, r4
200270dc:	0b8e      	lsrs	r6, r1, #14
200270de:	990b      	ldr	r1, [sp, #44]	@ 0x2c
200270e0:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
200270e4:	0b8c      	lsrs	r4, r1, #14
200270e6:	990a      	ldr	r1, [sp, #40]	@ 0x28
200270e8:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
200270ec:	0c8f      	lsrs	r7, r1, #18
200270ee:	990b      	ldr	r1, [sp, #44]	@ 0x2c
200270f0:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
200270f4:	0c8d      	lsrs	r5, r1, #18
200270f6:	990a      	ldr	r1, [sp, #40]	@ 0x28
200270f8:	407e      	eors	r6, r7
200270fa:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
200270fe:	406c      	eors	r4, r5
20027100:	05cd      	lsls	r5, r1, #23
20027102:	990b      	ldr	r1, [sp, #44]	@ 0x2c
20027104:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
20027108:	05cf      	lsls	r7, r1, #23
2002710a:	990a      	ldr	r1, [sp, #40]	@ 0x28
2002710c:	4075      	eors	r5, r6
2002710e:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20027112:	9901      	ldr	r1, [sp, #4]
20027114:	195b      	adds	r3, r3, r5
20027116:	ea84 0407 	eor.w	r4, r4, r7
2002711a:	eb42 0204 	adc.w	r2, r2, r4
2002711e:	18c9      	adds	r1, r1, r3
20027120:	9108      	str	r1, [sp, #32]
20027122:	9902      	ldr	r1, [sp, #8]
20027124:	ea4f 751b 	mov.w	r5, fp, lsr #28
20027128:	eb41 0102 	adc.w	r1, r1, r2
2002712c:	9109      	str	r1, [sp, #36]	@ 0x24
2002712e:	9903      	ldr	r1, [sp, #12]
20027130:	ea4f 748b 	mov.w	r4, fp, lsl #30
20027134:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20027138:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
2002713c:	0f0e      	lsrs	r6, r1, #28
2002713e:	078f      	lsls	r7, r1, #30
20027140:	4065      	eors	r5, r4
20027142:	ea4f 644b 	mov.w	r4, fp, lsl #25
20027146:	ea47 079b 	orr.w	r7, r7, fp, lsr #2
2002714a:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
2002714e:	ea46 160b 	orr.w	r6, r6, fp, lsl #4
20027152:	407e      	eors	r6, r7
20027154:	4065      	eors	r5, r4
20027156:	064f      	lsls	r7, r1, #25
20027158:	e9dd 4103 	ldrd	r4, r1, [sp, #12]
2002715c:	430c      	orrs	r4, r1
2002715e:	9905      	ldr	r1, [sp, #20]
20027160:	ea47 17db 	orr.w	r7, r7, fp, lsr #7
20027164:	407e      	eors	r6, r7
20027166:	ea41 070b 	orr.w	r7, r1, fp
2002716a:	ea04 0109 	and.w	r1, r4, r9
2002716e:	9101      	str	r1, [sp, #4]
20027170:	e9dd 4103 	ldrd	r4, r1, [sp, #12]
20027174:	ea01 0e04 	and.w	lr, r1, r4
20027178:	9905      	ldr	r1, [sp, #20]
2002717a:	ea07 0708 	and.w	r7, r7, r8
2002717e:	ea01 0c0b 	and.w	ip, r1, fp
20027182:	9901      	ldr	r1, [sp, #4]
20027184:	ea47 070c 	orr.w	r7, r7, ip
20027188:	ea41 040e 	orr.w	r4, r1, lr
2002718c:	1934      	adds	r4, r6, r4
2002718e:	eb45 0507 	adc.w	r5, r5, r7
20027192:	18e3      	adds	r3, r4, r3
20027194:	9301      	str	r3, [sp, #4]
20027196:	eb42 0305 	adc.w	r3, r2, r5
2002719a:	9302      	str	r3, [sp, #8]
2002719c:	9b00      	ldr	r3, [sp, #0]
2002719e:	9a00      	ldr	r2, [sp, #0]
200271a0:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
200271a2:	9906      	ldr	r1, [sp, #24]
200271a4:	6b52      	ldr	r2, [r2, #52]	@ 0x34
200271a6:	e9d0 450c 	ldrd	r4, r5, [r0, #48]	@ 0x30
200271aa:	191b      	adds	r3, r3, r4
200271ac:	eb42 0205 	adc.w	r2, r2, r5
200271b0:	185b      	adds	r3, r3, r1
200271b2:	9907      	ldr	r1, [sp, #28]
200271b4:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
200271b6:	eb41 0202 	adc.w	r2, r1, r2
200271ba:	990c      	ldr	r1, [sp, #48]	@ 0x30
200271bc:	ea81 0504 	eor.w	r5, r1, r4
200271c0:	990d      	ldr	r1, [sp, #52]	@ 0x34
200271c2:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
200271c4:	404c      	eors	r4, r1
200271c6:	9908      	ldr	r1, [sp, #32]
200271c8:	400d      	ands	r5, r1
200271ca:	9909      	ldr	r1, [sp, #36]	@ 0x24
200271cc:	400c      	ands	r4, r1
200271ce:	990c      	ldr	r1, [sp, #48]	@ 0x30
200271d0:	404d      	eors	r5, r1
200271d2:	990d      	ldr	r1, [sp, #52]	@ 0x34
200271d4:	195b      	adds	r3, r3, r5
200271d6:	ea84 0401 	eor.w	r4, r4, r1
200271da:	9908      	ldr	r1, [sp, #32]
200271dc:	eb42 0204 	adc.w	r2, r2, r4
200271e0:	0b8e      	lsrs	r6, r1, #14
200271e2:	9909      	ldr	r1, [sp, #36]	@ 0x24
200271e4:	ea46 4681 	orr.w	r6, r6, r1, lsl #18
200271e8:	0b8c      	lsrs	r4, r1, #14
200271ea:	9908      	ldr	r1, [sp, #32]
200271ec:	ea44 4481 	orr.w	r4, r4, r1, lsl #18
200271f0:	0c8f      	lsrs	r7, r1, #18
200271f2:	9909      	ldr	r1, [sp, #36]	@ 0x24
200271f4:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
200271f8:	0c8d      	lsrs	r5, r1, #18
200271fa:	9908      	ldr	r1, [sp, #32]
200271fc:	407e      	eors	r6, r7
200271fe:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20027202:	406c      	eors	r4, r5
20027204:	05cd      	lsls	r5, r1, #23
20027206:	9909      	ldr	r1, [sp, #36]	@ 0x24
20027208:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
2002720c:	05cf      	lsls	r7, r1, #23
2002720e:	9908      	ldr	r1, [sp, #32]
20027210:	4075      	eors	r5, r6
20027212:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
20027216:	195b      	adds	r3, r3, r5
20027218:	ea84 0407 	eor.w	r4, r4, r7
2002721c:	eb42 0204 	adc.w	r2, r2, r4
20027220:	eb19 0103 	adds.w	r1, r9, r3
20027224:	9106      	str	r1, [sp, #24]
20027226:	eb48 0102 	adc.w	r1, r8, r2
2002722a:	9107      	str	r1, [sp, #28]
2002722c:	9901      	ldr	r1, [sp, #4]
2002722e:	0f0e      	lsrs	r6, r1, #28
20027230:	9902      	ldr	r1, [sp, #8]
20027232:	ea46 1601 	orr.w	r6, r6, r1, lsl #4
20027236:	0f0d      	lsrs	r5, r1, #28
20027238:	9901      	ldr	r1, [sp, #4]
2002723a:	ea45 1501 	orr.w	r5, r5, r1, lsl #4
2002723e:	078f      	lsls	r7, r1, #30
20027240:	9902      	ldr	r1, [sp, #8]
20027242:	ea47 0791 	orr.w	r7, r7, r1, lsr #2
20027246:	078c      	lsls	r4, r1, #30
20027248:	9901      	ldr	r1, [sp, #4]
2002724a:	407e      	eors	r6, r7
2002724c:	ea44 0491 	orr.w	r4, r4, r1, lsr #2
20027250:	064f      	lsls	r7, r1, #25
20027252:	9902      	ldr	r1, [sp, #8]
20027254:	4065      	eors	r5, r4
20027256:	ea47 17d1 	orr.w	r7, r7, r1, lsr #7
2002725a:	064c      	lsls	r4, r1, #25
2002725c:	9901      	ldr	r1, [sp, #4]
2002725e:	407e      	eors	r6, r7
20027260:	ea44 14d1 	orr.w	r4, r4, r1, lsr #7
20027264:	4065      	eors	r5, r4
20027266:	9903      	ldr	r1, [sp, #12]
20027268:	9c01      	ldr	r4, [sp, #4]
2002726a:	430c      	orrs	r4, r1
2002726c:	9902      	ldr	r1, [sp, #8]
2002726e:	ea4b 0701 	orr.w	r7, fp, r1
20027272:	9904      	ldr	r1, [sp, #16]
20027274:	ea04 0801 	and.w	r8, r4, r1
20027278:	9905      	ldr	r1, [sp, #20]
2002727a:	9c01      	ldr	r4, [sp, #4]
2002727c:	400f      	ands	r7, r1
2002727e:	9903      	ldr	r1, [sp, #12]
20027280:	ea01 0e04 	and.w	lr, r1, r4
20027284:	9902      	ldr	r1, [sp, #8]
20027286:	ea48 040e 	orr.w	r4, r8, lr
2002728a:	ea0b 0c01 	and.w	ip, fp, r1
2002728e:	1934      	adds	r4, r6, r4
20027290:	ea47 070c 	orr.w	r7, r7, ip
20027294:	eb45 0507 	adc.w	r5, r5, r7
20027298:	eb14 0c03 	adds.w	ip, r4, r3
2002729c:	9b00      	ldr	r3, [sp, #0]
2002729e:	eb42 0e05 	adc.w	lr, r2, r5
200272a2:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
200272a4:	9a00      	ldr	r2, [sp, #0]
200272a6:	e9d0 450e 	ldrd	r4, r5, [r0, #56]	@ 0x38
200272aa:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
200272ac:	191c      	adds	r4, r3, r4
200272ae:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
200272b0:	eb42 0205 	adc.w	r2, r2, r5
200272b4:	18e4      	adds	r4, r4, r3
200272b6:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
200272b8:	9908      	ldr	r1, [sp, #32]
200272ba:	eb43 0202 	adc.w	r2, r3, r2
200272be:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
200272c0:	3040      	adds	r0, #64	@ 0x40
200272c2:	ea83 0501 	eor.w	r5, r3, r1
200272c6:	9909      	ldr	r1, [sp, #36]	@ 0x24
200272c8:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
200272ca:	404b      	eors	r3, r1
200272cc:	9906      	ldr	r1, [sp, #24]
200272ce:	400d      	ands	r5, r1
200272d0:	9907      	ldr	r1, [sp, #28]
200272d2:	400b      	ands	r3, r1
200272d4:	990a      	ldr	r1, [sp, #40]	@ 0x28
200272d6:	404d      	eors	r5, r1
200272d8:	990b      	ldr	r1, [sp, #44]	@ 0x2c
200272da:	1964      	adds	r4, r4, r5
200272dc:	ea83 0301 	eor.w	r3, r3, r1
200272e0:	eb42 0203 	adc.w	r2, r2, r3
200272e4:	9b06      	ldr	r3, [sp, #24]
200272e6:	9906      	ldr	r1, [sp, #24]
200272e8:	0b9e      	lsrs	r6, r3, #14
200272ea:	9b07      	ldr	r3, [sp, #28]
200272ec:	0c8f      	lsrs	r7, r1, #18
200272ee:	ea46 4683 	orr.w	r6, r6, r3, lsl #18
200272f2:	0b9b      	lsrs	r3, r3, #14
200272f4:	ea43 4381 	orr.w	r3, r3, r1, lsl #18
200272f8:	9907      	ldr	r1, [sp, #28]
200272fa:	ea47 3781 	orr.w	r7, r7, r1, lsl #14
200272fe:	0c8d      	lsrs	r5, r1, #18
20027300:	9906      	ldr	r1, [sp, #24]
20027302:	407e      	eors	r6, r7
20027304:	ea45 3581 	orr.w	r5, r5, r1, lsl #14
20027308:	406b      	eors	r3, r5
2002730a:	05cd      	lsls	r5, r1, #23
2002730c:	9907      	ldr	r1, [sp, #28]
2002730e:	ea45 2551 	orr.w	r5, r5, r1, lsr #9
20027312:	05cf      	lsls	r7, r1, #23
20027314:	9906      	ldr	r1, [sp, #24]
20027316:	4075      	eors	r5, r6
20027318:	ea47 2751 	orr.w	r7, r7, r1, lsr #9
2002731c:	1964      	adds	r4, r4, r5
2002731e:	ea83 0307 	eor.w	r3, r3, r7
20027322:	eb42 0203 	adc.w	r2, r2, r3
20027326:	9b04      	ldr	r3, [sp, #16]
20027328:	ea4f 751e 	mov.w	r5, lr, lsr #28
2002732c:	191b      	adds	r3, r3, r4
2002732e:	9304      	str	r3, [sp, #16]
20027330:	9b05      	ldr	r3, [sp, #20]
20027332:	ea4f 761c 	mov.w	r6, ip, lsr #28
20027336:	eb43 0302 	adc.w	r3, r3, r2
2002733a:	9305      	str	r3, [sp, #20]
2002733c:	ea4f 738e 	mov.w	r3, lr, lsl #30
20027340:	ea43 039c 	orr.w	r3, r3, ip, lsr #2
20027344:	ea45 150c 	orr.w	r5, r5, ip, lsl #4
20027348:	ea4f 778c 	mov.w	r7, ip, lsl #30
2002734c:	ea47 079e 	orr.w	r7, r7, lr, lsr #2
20027350:	405d      	eors	r5, r3
20027352:	ea46 160e 	orr.w	r6, r6, lr, lsl #4
20027356:	ea4f 634e 	mov.w	r3, lr, lsl #25
2002735a:	9902      	ldr	r1, [sp, #8]
2002735c:	407e      	eors	r6, r7
2002735e:	ea43 13dc 	orr.w	r3, r3, ip, lsr #7
20027362:	ea4f 674c 	mov.w	r7, ip, lsl #25
20027366:	ea47 17de 	orr.w	r7, r7, lr, lsr #7
2002736a:	405d      	eors	r5, r3
2002736c:	9b01      	ldr	r3, [sp, #4]
2002736e:	407e      	eors	r6, r7
20027370:	ea41 070e 	orr.w	r7, r1, lr
20027374:	9903      	ldr	r1, [sp, #12]
20027376:	ea43 030c 	orr.w	r3, r3, ip
2002737a:	400b      	ands	r3, r1
2002737c:	9901      	ldr	r1, [sp, #4]
2002737e:	ea07 070b 	and.w	r7, r7, fp
20027382:	ea01 090c 	and.w	r9, r1, ip
20027386:	9902      	ldr	r1, [sp, #8]
20027388:	ea43 0309 	orr.w	r3, r3, r9
2002738c:	ea01 080e 	and.w	r8, r1, lr
20027390:	9900      	ldr	r1, [sp, #0]
20027392:	18f3      	adds	r3, r6, r3
20027394:	f101 0140 	add.w	r1, r1, #64	@ 0x40
20027398:	9100      	str	r1, [sp, #0]
2002739a:	ea47 0708 	orr.w	r7, r7, r8
2002739e:	eb45 0507 	adc.w	r5, r5, r7
200273a2:	4928      	ldr	r1, [pc, #160]	@ (20027444 <mbedtls_sha512_process+0xa54>)
200273a4:	191b      	adds	r3, r3, r4
200273a6:	9c00      	ldr	r4, [sp, #0]
200273a8:	eb42 0205 	adc.w	r2, r2, r5
200273ac:	42a1      	cmp	r1, r4
200273ae:	f47f abe3 	bne.w	20026b78 <mbedtls_sha512_process+0x188>
200273b2:	990e      	ldr	r1, [sp, #56]	@ 0x38
200273b4:	18cb      	adds	r3, r1, r3
200273b6:	990f      	ldr	r1, [sp, #60]	@ 0x3c
200273b8:	eb42 0201 	adc.w	r2, r2, r1
200273bc:	e9ca 3204 	strd	r3, r2, [sl, #16]
200273c0:	9b10      	ldr	r3, [sp, #64]	@ 0x40
200273c2:	9a11      	ldr	r2, [sp, #68]	@ 0x44
200273c4:	eb13 030c 	adds.w	r3, r3, ip
200273c8:	eb4e 0202 	adc.w	r2, lr, r2
200273cc:	e9ca 3206 	strd	r3, r2, [sl, #24]
200273d0:	9a01      	ldr	r2, [sp, #4]
200273d2:	9b12      	ldr	r3, [sp, #72]	@ 0x48
200273d4:	9913      	ldr	r1, [sp, #76]	@ 0x4c
200273d6:	189b      	adds	r3, r3, r2
200273d8:	9a02      	ldr	r2, [sp, #8]
200273da:	eb42 0201 	adc.w	r2, r2, r1
200273de:	e9ca 3208 	strd	r3, r2, [sl, #32]
200273e2:	9a03      	ldr	r2, [sp, #12]
200273e4:	9b14      	ldr	r3, [sp, #80]	@ 0x50
200273e6:	9917      	ldr	r1, [sp, #92]	@ 0x5c
200273e8:	189b      	adds	r3, r3, r2
200273ea:	9a15      	ldr	r2, [sp, #84]	@ 0x54
200273ec:	eb4b 0202 	adc.w	r2, fp, r2
200273f0:	e9ca 320a 	strd	r3, r2, [sl, #40]	@ 0x28
200273f4:	9a04      	ldr	r2, [sp, #16]
200273f6:	9b16      	ldr	r3, [sp, #88]	@ 0x58
200273f8:	189b      	adds	r3, r3, r2
200273fa:	9a05      	ldr	r2, [sp, #20]
200273fc:	eb42 0201 	adc.w	r2, r2, r1
20027400:	e9ca 320c 	strd	r3, r2, [sl, #48]	@ 0x30
20027404:	9b18      	ldr	r3, [sp, #96]	@ 0x60
20027406:	9a06      	ldr	r2, [sp, #24]
20027408:	9919      	ldr	r1, [sp, #100]	@ 0x64
2002740a:	189a      	adds	r2, r3, r2
2002740c:	9b07      	ldr	r3, [sp, #28]
2002740e:	eb43 0301 	adc.w	r3, r3, r1
20027412:	e9ca 230e 	strd	r2, r3, [sl, #56]	@ 0x38
20027416:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
20027418:	9a08      	ldr	r2, [sp, #32]
2002741a:	991b      	ldr	r1, [sp, #108]	@ 0x6c
2002741c:	189a      	adds	r2, r3, r2
2002741e:	9b09      	ldr	r3, [sp, #36]	@ 0x24
20027420:	eb43 0301 	adc.w	r3, r3, r1
20027424:	e9ca 2310 	strd	r2, r3, [sl, #64]	@ 0x40
20027428:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
2002742a:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
2002742c:	991d      	ldr	r1, [sp, #116]	@ 0x74
2002742e:	189a      	adds	r2, r3, r2
20027430:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
20027432:	eb43 0301 	adc.w	r3, r3, r1
20027436:	e9ca 2312 	strd	r2, r3, [sl, #72]	@ 0x48
2002743a:	f50d 7d3f 	add.w	sp, sp, #764	@ 0x2fc
2002743e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20027442:	bf00      	nop
20027444:	2002c1f8 	.word	0x2002c1f8

20027448 <mbedtls_sha512_update.part.0>:
20027448:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002744c:	4615      	mov	r5, r2
2002744e:	e9d0 3200 	ldrd	r3, r2, [r0]
20027452:	f003 077f 	and.w	r7, r3, #127	@ 0x7f
20027456:	195b      	adds	r3, r3, r5
20027458:	f152 0200 	adcs.w	r2, r2, #0
2002745c:	460e      	mov	r6, r1
2002745e:	f04f 0100 	mov.w	r1, #0
20027462:	bf28      	it	cs
20027464:	2101      	movcs	r1, #1
20027466:	4604      	mov	r4, r0
20027468:	e9c0 3200 	strd	r3, r2, [r0]
2002746c:	b131      	cbz	r1, 2002747c <mbedtls_sha512_update.part.0+0x34>
2002746e:	e9d0 3202 	ldrd	r3, r2, [r0, #8]
20027472:	3301      	adds	r3, #1
20027474:	f142 0200 	adc.w	r2, r2, #0
20027478:	e9c0 3202 	strd	r3, r2, [r0, #8]
2002747c:	b19f      	cbz	r7, 200274a6 <mbedtls_sha512_update.part.0+0x5e>
2002747e:	f1c7 0980 	rsb	r9, r7, #128	@ 0x80
20027482:	45a9      	cmp	r9, r5
20027484:	d80f      	bhi.n	200274a6 <mbedtls_sha512_update.part.0+0x5e>
20027486:	f104 0850 	add.w	r8, r4, #80	@ 0x50
2002748a:	4631      	mov	r1, r6
2002748c:	464a      	mov	r2, r9
2002748e:	eb08 0007 	add.w	r0, r8, r7
20027492:	f003 fa05 	bl	2002a8a0 <memcpy>
20027496:	3d80      	subs	r5, #128	@ 0x80
20027498:	4641      	mov	r1, r8
2002749a:	4620      	mov	r0, r4
2002749c:	443d      	add	r5, r7
2002749e:	f7ff faa7 	bl	200269f0 <mbedtls_sha512_process>
200274a2:	2700      	movs	r7, #0
200274a4:	444e      	add	r6, r9
200274a6:	46a8      	mov	r8, r5
200274a8:	eb05 0906 	add.w	r9, r5, r6
200274ac:	e004      	b.n	200274b8 <mbedtls_sha512_update.part.0+0x70>
200274ae:	4620      	mov	r0, r4
200274b0:	f7ff fa9e 	bl	200269f0 <mbedtls_sha512_process>
200274b4:	f1a8 0880 	sub.w	r8, r8, #128	@ 0x80
200274b8:	f1b8 0f7f 	cmp.w	r8, #127	@ 0x7f
200274bc:	eba9 0108 	sub.w	r1, r9, r8
200274c0:	d8f5      	bhi.n	200274ae <mbedtls_sha512_update.part.0+0x66>
200274c2:	f06f 037f 	mvn.w	r3, #127	@ 0x7f
200274c6:	09e9      	lsrs	r1, r5, #7
200274c8:	4359      	muls	r1, r3
200274ca:	186a      	adds	r2, r5, r1
200274cc:	d007      	beq.n	200274de <mbedtls_sha512_update.part.0+0x96>
200274ce:	f104 0050 	add.w	r0, r4, #80	@ 0x50
200274d2:	1a71      	subs	r1, r6, r1
200274d4:	4438      	add	r0, r7
200274d6:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
200274da:	f003 b9e1 	b.w	2002a8a0 <memcpy>
200274de:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

200274e2 <mbedtls_sha512_update>:
200274e2:	b10a      	cbz	r2, 200274e8 <mbedtls_sha512_update+0x6>
200274e4:	f7ff bfb0 	b.w	20027448 <mbedtls_sha512_update.part.0>
200274e8:	4770      	bx	lr
	...

200274ec <mbedtls_sha512_finish>:
200274ec:	b5f0      	push	{r4, r5, r6, r7, lr}
200274ee:	4604      	mov	r4, r0
200274f0:	e9d0 2300 	ldrd	r2, r3, [r0]
200274f4:	460d      	mov	r5, r1
200274f6:	e9d0 6102 	ldrd	r6, r1, [r0, #8]
200274fa:	00c9      	lsls	r1, r1, #3
200274fc:	ea41 7156 	orr.w	r1, r1, r6, lsr #29
20027500:	b085      	sub	sp, #20
20027502:	0e0f      	lsrs	r7, r1, #24
20027504:	0f58      	lsrs	r0, r3, #29
20027506:	00db      	lsls	r3, r3, #3
20027508:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
2002750c:	f88d 7000 	strb.w	r7, [sp]
20027510:	0c0f      	lsrs	r7, r1, #16
20027512:	f88d 7001 	strb.w	r7, [sp, #1]
20027516:	f88d 1003 	strb.w	r1, [sp, #3]
2002751a:	0a0f      	lsrs	r7, r1, #8
2002751c:	0e19      	lsrs	r1, r3, #24
2002751e:	ea40 00c6 	orr.w	r0, r0, r6, lsl #3
20027522:	f88d 1008 	strb.w	r1, [sp, #8]
20027526:	00d6      	lsls	r6, r2, #3
20027528:	0c19      	lsrs	r1, r3, #16
2002752a:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
2002752e:	2a6f      	cmp	r2, #111	@ 0x6f
20027530:	ba00      	rev	r0, r0
20027532:	f88d 1009 	strb.w	r1, [sp, #9]
20027536:	ea4f 2113 	mov.w	r1, r3, lsr #8
2002753a:	bf94      	ite	ls
2002753c:	f1c2 0270 	rsbls	r2, r2, #112	@ 0x70
20027540:	f1c2 02f0 	rsbhi	r2, r2, #240	@ 0xf0
20027544:	9001      	str	r0, [sp, #4]
20027546:	f88d 100a 	strb.w	r1, [sp, #10]
2002754a:	4620      	mov	r0, r4
2002754c:	4969      	ldr	r1, [pc, #420]	@ (200276f4 <mbedtls_sha512_finish+0x208>)
2002754e:	ba36      	rev	r6, r6
20027550:	f88d 300b 	strb.w	r3, [sp, #11]
20027554:	f88d 7002 	strb.w	r7, [sp, #2]
20027558:	9603      	str	r6, [sp, #12]
2002755a:	f7ff ffc2 	bl	200274e2 <mbedtls_sha512_update>
2002755e:	2210      	movs	r2, #16
20027560:	4669      	mov	r1, sp
20027562:	4620      	mov	r0, r4
20027564:	f7ff ff70 	bl	20027448 <mbedtls_sha512_update.part.0>
20027568:	7de3      	ldrb	r3, [r4, #23]
2002756a:	702b      	strb	r3, [r5, #0]
2002756c:	8ae3      	ldrh	r3, [r4, #22]
2002756e:	706b      	strb	r3, [r5, #1]
20027570:	6963      	ldr	r3, [r4, #20]
20027572:	0a1b      	lsrs	r3, r3, #8
20027574:	70ab      	strb	r3, [r5, #2]
20027576:	6963      	ldr	r3, [r4, #20]
20027578:	70eb      	strb	r3, [r5, #3]
2002757a:	7ce3      	ldrb	r3, [r4, #19]
2002757c:	712b      	strb	r3, [r5, #4]
2002757e:	8a63      	ldrh	r3, [r4, #18]
20027580:	716b      	strb	r3, [r5, #5]
20027582:	6923      	ldr	r3, [r4, #16]
20027584:	0a1b      	lsrs	r3, r3, #8
20027586:	71ab      	strb	r3, [r5, #6]
20027588:	6923      	ldr	r3, [r4, #16]
2002758a:	71eb      	strb	r3, [r5, #7]
2002758c:	7fe3      	ldrb	r3, [r4, #31]
2002758e:	722b      	strb	r3, [r5, #8]
20027590:	8be3      	ldrh	r3, [r4, #30]
20027592:	726b      	strb	r3, [r5, #9]
20027594:	69e3      	ldr	r3, [r4, #28]
20027596:	0a1b      	lsrs	r3, r3, #8
20027598:	72ab      	strb	r3, [r5, #10]
2002759a:	69e3      	ldr	r3, [r4, #28]
2002759c:	72eb      	strb	r3, [r5, #11]
2002759e:	7ee3      	ldrb	r3, [r4, #27]
200275a0:	732b      	strb	r3, [r5, #12]
200275a2:	8b63      	ldrh	r3, [r4, #26]
200275a4:	736b      	strb	r3, [r5, #13]
200275a6:	69a3      	ldr	r3, [r4, #24]
200275a8:	0a1b      	lsrs	r3, r3, #8
200275aa:	73ab      	strb	r3, [r5, #14]
200275ac:	69a3      	ldr	r3, [r4, #24]
200275ae:	73eb      	strb	r3, [r5, #15]
200275b0:	f894 3027 	ldrb.w	r3, [r4, #39]	@ 0x27
200275b4:	742b      	strb	r3, [r5, #16]
200275b6:	8ce3      	ldrh	r3, [r4, #38]	@ 0x26
200275b8:	746b      	strb	r3, [r5, #17]
200275ba:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200275bc:	0a1b      	lsrs	r3, r3, #8
200275be:	74ab      	strb	r3, [r5, #18]
200275c0:	6a63      	ldr	r3, [r4, #36]	@ 0x24
200275c2:	74eb      	strb	r3, [r5, #19]
200275c4:	f894 3023 	ldrb.w	r3, [r4, #35]	@ 0x23
200275c8:	752b      	strb	r3, [r5, #20]
200275ca:	8c63      	ldrh	r3, [r4, #34]	@ 0x22
200275cc:	756b      	strb	r3, [r5, #21]
200275ce:	6a23      	ldr	r3, [r4, #32]
200275d0:	0a1b      	lsrs	r3, r3, #8
200275d2:	75ab      	strb	r3, [r5, #22]
200275d4:	6a23      	ldr	r3, [r4, #32]
200275d6:	75eb      	strb	r3, [r5, #23]
200275d8:	f894 302f 	ldrb.w	r3, [r4, #47]	@ 0x2f
200275dc:	762b      	strb	r3, [r5, #24]
200275de:	8de3      	ldrh	r3, [r4, #46]	@ 0x2e
200275e0:	766b      	strb	r3, [r5, #25]
200275e2:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
200275e4:	0a1b      	lsrs	r3, r3, #8
200275e6:	76ab      	strb	r3, [r5, #26]
200275e8:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
200275ea:	76eb      	strb	r3, [r5, #27]
200275ec:	f894 302b 	ldrb.w	r3, [r4, #43]	@ 0x2b
200275f0:	772b      	strb	r3, [r5, #28]
200275f2:	8d63      	ldrh	r3, [r4, #42]	@ 0x2a
200275f4:	776b      	strb	r3, [r5, #29]
200275f6:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
200275f8:	0a1b      	lsrs	r3, r3, #8
200275fa:	77ab      	strb	r3, [r5, #30]
200275fc:	6aa3      	ldr	r3, [r4, #40]	@ 0x28
200275fe:	77eb      	strb	r3, [r5, #31]
20027600:	f894 3037 	ldrb.w	r3, [r4, #55]	@ 0x37
20027604:	f885 3020 	strb.w	r3, [r5, #32]
20027608:	8ee3      	ldrh	r3, [r4, #54]	@ 0x36
2002760a:	f885 3021 	strb.w	r3, [r5, #33]	@ 0x21
2002760e:	6b63      	ldr	r3, [r4, #52]	@ 0x34
20027610:	0a1b      	lsrs	r3, r3, #8
20027612:	f885 3022 	strb.w	r3, [r5, #34]	@ 0x22
20027616:	6b63      	ldr	r3, [r4, #52]	@ 0x34
20027618:	f885 3023 	strb.w	r3, [r5, #35]	@ 0x23
2002761c:	f894 3033 	ldrb.w	r3, [r4, #51]	@ 0x33
20027620:	f885 3024 	strb.w	r3, [r5, #36]	@ 0x24
20027624:	8e63      	ldrh	r3, [r4, #50]	@ 0x32
20027626:	f885 3025 	strb.w	r3, [r5, #37]	@ 0x25
2002762a:	6b23      	ldr	r3, [r4, #48]	@ 0x30
2002762c:	0a1b      	lsrs	r3, r3, #8
2002762e:	f885 3026 	strb.w	r3, [r5, #38]	@ 0x26
20027632:	6b23      	ldr	r3, [r4, #48]	@ 0x30
20027634:	f885 3027 	strb.w	r3, [r5, #39]	@ 0x27
20027638:	f894 303f 	ldrb.w	r3, [r4, #63]	@ 0x3f
2002763c:	f885 3028 	strb.w	r3, [r5, #40]	@ 0x28
20027640:	8fe3      	ldrh	r3, [r4, #62]	@ 0x3e
20027642:	f885 3029 	strb.w	r3, [r5, #41]	@ 0x29
20027646:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20027648:	0a1b      	lsrs	r3, r3, #8
2002764a:	f885 302a 	strb.w	r3, [r5, #42]	@ 0x2a
2002764e:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
20027650:	f885 302b 	strb.w	r3, [r5, #43]	@ 0x2b
20027654:	f894 303b 	ldrb.w	r3, [r4, #59]	@ 0x3b
20027658:	f885 302c 	strb.w	r3, [r5, #44]	@ 0x2c
2002765c:	8f63      	ldrh	r3, [r4, #58]	@ 0x3a
2002765e:	f885 302d 	strb.w	r3, [r5, #45]	@ 0x2d
20027662:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
20027664:	0a1b      	lsrs	r3, r3, #8
20027666:	f885 302e 	strb.w	r3, [r5, #46]	@ 0x2e
2002766a:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
2002766c:	f885 302f 	strb.w	r3, [r5, #47]	@ 0x2f
20027670:	f8d4 30d0 	ldr.w	r3, [r4, #208]	@ 0xd0
20027674:	2b00      	cmp	r3, #0
20027676:	d13b      	bne.n	200276f0 <mbedtls_sha512_finish+0x204>
20027678:	f894 3047 	ldrb.w	r3, [r4, #71]	@ 0x47
2002767c:	f885 3030 	strb.w	r3, [r5, #48]	@ 0x30
20027680:	f8b4 3046 	ldrh.w	r3, [r4, #70]	@ 0x46
20027684:	f885 3031 	strb.w	r3, [r5, #49]	@ 0x31
20027688:	6c63      	ldr	r3, [r4, #68]	@ 0x44
2002768a:	0a1b      	lsrs	r3, r3, #8
2002768c:	f885 3032 	strb.w	r3, [r5, #50]	@ 0x32
20027690:	6c63      	ldr	r3, [r4, #68]	@ 0x44
20027692:	f885 3033 	strb.w	r3, [r5, #51]	@ 0x33
20027696:	f894 3043 	ldrb.w	r3, [r4, #67]	@ 0x43
2002769a:	f885 3034 	strb.w	r3, [r5, #52]	@ 0x34
2002769e:	f8b4 3042 	ldrh.w	r3, [r4, #66]	@ 0x42
200276a2:	f885 3035 	strb.w	r3, [r5, #53]	@ 0x35
200276a6:	6c23      	ldr	r3, [r4, #64]	@ 0x40
200276a8:	0a1b      	lsrs	r3, r3, #8
200276aa:	f885 3036 	strb.w	r3, [r5, #54]	@ 0x36
200276ae:	6c23      	ldr	r3, [r4, #64]	@ 0x40
200276b0:	f885 3037 	strb.w	r3, [r5, #55]	@ 0x37
200276b4:	f894 304f 	ldrb.w	r3, [r4, #79]	@ 0x4f
200276b8:	f885 3038 	strb.w	r3, [r5, #56]	@ 0x38
200276bc:	f8b4 304e 	ldrh.w	r3, [r4, #78]	@ 0x4e
200276c0:	f885 3039 	strb.w	r3, [r5, #57]	@ 0x39
200276c4:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
200276c6:	0a1b      	lsrs	r3, r3, #8
200276c8:	f885 303a 	strb.w	r3, [r5, #58]	@ 0x3a
200276cc:	6ce3      	ldr	r3, [r4, #76]	@ 0x4c
200276ce:	f885 303b 	strb.w	r3, [r5, #59]	@ 0x3b
200276d2:	f894 304b 	ldrb.w	r3, [r4, #75]	@ 0x4b
200276d6:	f885 303c 	strb.w	r3, [r5, #60]	@ 0x3c
200276da:	f8b4 304a 	ldrh.w	r3, [r4, #74]	@ 0x4a
200276de:	f885 303d 	strb.w	r3, [r5, #61]	@ 0x3d
200276e2:	6ca3      	ldr	r3, [r4, #72]	@ 0x48
200276e4:	0a1b      	lsrs	r3, r3, #8
200276e6:	f885 303e 	strb.w	r3, [r5, #62]	@ 0x3e
200276ea:	6ca3      	ldr	r3, [r4, #72]	@ 0x48
200276ec:	f885 303f 	strb.w	r3, [r5, #63]	@ 0x3f
200276f0:	b005      	add	sp, #20
200276f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
200276f4:	2002bef4 	.word	0x2002bef4

200276f8 <mbedtls_sha512>:
200276f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200276fc:	461c      	mov	r4, r3
200276fe:	b0b7      	sub	sp, #220	@ 0xdc
20027700:	4606      	mov	r6, r0
20027702:	4668      	mov	r0, sp
20027704:	460f      	mov	r7, r1
20027706:	4615      	mov	r5, r2
20027708:	f7ff f8cc 	bl	200268a4 <mbedtls_sha512_init>
2002770c:	2c00      	cmp	r4, #0
2002770e:	d03f      	beq.n	20027790 <mbedtls_sha512+0x98>
20027710:	f20f 0bf4 	addw	fp, pc, #244	@ 0xf4
20027714:	e9db ab00 	ldrd	sl, fp, [fp]
20027718:	f20f 09f4 	addw	r9, pc, #244	@ 0xf4
2002771c:	e9d9 8900 	ldrd	r8, r9, [r9]
20027720:	a13d      	add	r1, pc, #244	@ (adr r1, 20027818 <mbedtls_sha512+0x120>)
20027722:	e9d1 0100 	ldrd	r0, r1, [r1]
20027726:	a33e      	add	r3, pc, #248	@ (adr r3, 20027820 <mbedtls_sha512+0x128>)
20027728:	e9d3 2300 	ldrd	r2, r3, [r3]
2002772c:	ed9f 4b24 	vldr	d4, [pc, #144]	@ 200277c0 <mbedtls_sha512+0xc8>
20027730:	ed9f 5b25 	vldr	d5, [pc, #148]	@ 200277c8 <mbedtls_sha512+0xd0>
20027734:	ed9f 6b26 	vldr	d6, [pc, #152]	@ 200277d0 <mbedtls_sha512+0xd8>
20027738:	ed9f 7b27 	vldr	d7, [pc, #156]	@ 200277d8 <mbedtls_sha512+0xe0>
2002773c:	ed9f 3b28 	vldr	d3, [pc, #160]	@ 200277e0 <mbedtls_sha512+0xe8>
20027740:	e9cd 2312 	strd	r2, r3, [sp, #72]	@ 0x48
20027744:	e9cd 0110 	strd	r0, r1, [sp, #64]	@ 0x40
20027748:	463a      	mov	r2, r7
2002774a:	4631      	mov	r1, r6
2002774c:	4668      	mov	r0, sp
2002774e:	ed8d 3b00 	vstr	d3, [sp]
20027752:	ed8d 3b02 	vstr	d3, [sp, #8]
20027756:	ed8d 4b04 	vstr	d4, [sp, #16]
2002775a:	ed8d 5b06 	vstr	d5, [sp, #24]
2002775e:	ed8d 6b08 	vstr	d6, [sp, #32]
20027762:	ed8d 7b0a 	vstr	d7, [sp, #40]	@ 0x28
20027766:	e9cd ab0c 	strd	sl, fp, [sp, #48]	@ 0x30
2002776a:	e9cd 890e 	strd	r8, r9, [sp, #56]	@ 0x38
2002776e:	9434      	str	r4, [sp, #208]	@ 0xd0
20027770:	f7ff feb7 	bl	200274e2 <mbedtls_sha512_update>
20027774:	4629      	mov	r1, r5
20027776:	4668      	mov	r0, sp
20027778:	f7ff feb8 	bl	200274ec <mbedtls_sha512_finish>
2002777c:	2300      	movs	r3, #0
2002777e:	461a      	mov	r2, r3
20027780:	f80d 2003 	strb.w	r2, [sp, r3]
20027784:	3301      	adds	r3, #1
20027786:	2bd8      	cmp	r3, #216	@ 0xd8
20027788:	d1fa      	bne.n	20027780 <mbedtls_sha512+0x88>
2002778a:	b037      	add	sp, #220	@ 0xdc
2002778c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20027790:	ed9f 4b15 	vldr	d4, [pc, #84]	@ 200277e8 <mbedtls_sha512+0xf0>
20027794:	f20f 0b90 	addw	fp, pc, #144	@ 0x90
20027798:	e9db ab00 	ldrd	sl, fp, [fp]
2002779c:	f20f 0990 	addw	r9, pc, #144	@ 0x90
200277a0:	e9d9 8900 	ldrd	r8, r9, [r9]
200277a4:	a124      	add	r1, pc, #144	@ (adr r1, 20027838 <mbedtls_sha512+0x140>)
200277a6:	e9d1 0100 	ldrd	r0, r1, [r1]
200277aa:	a325      	add	r3, pc, #148	@ (adr r3, 20027840 <mbedtls_sha512+0x148>)
200277ac:	e9d3 2300 	ldrd	r2, r3, [r3]
200277b0:	ed9f 5b0f 	vldr	d5, [pc, #60]	@ 200277f0 <mbedtls_sha512+0xf8>
200277b4:	ed9f 6b10 	vldr	d6, [pc, #64]	@ 200277f8 <mbedtls_sha512+0x100>
200277b8:	ed9f 7b11 	vldr	d7, [pc, #68]	@ 20027800 <mbedtls_sha512+0x108>
200277bc:	e7be      	b.n	2002773c <mbedtls_sha512+0x44>
200277be:	bf00      	nop
200277c0:	c1059ed8 	.word	0xc1059ed8
200277c4:	cbbb9d5d 	.word	0xcbbb9d5d
200277c8:	367cd507 	.word	0x367cd507
200277cc:	629a292a 	.word	0x629a292a
200277d0:	3070dd17 	.word	0x3070dd17
200277d4:	9159015a 	.word	0x9159015a
200277d8:	f70e5939 	.word	0xf70e5939
200277dc:	152fecd8 	.word	0x152fecd8
	...
200277e8:	f3bcc908 	.word	0xf3bcc908
200277ec:	6a09e667 	.word	0x6a09e667
200277f0:	84caa73b 	.word	0x84caa73b
200277f4:	bb67ae85 	.word	0xbb67ae85
200277f8:	fe94f82b 	.word	0xfe94f82b
200277fc:	3c6ef372 	.word	0x3c6ef372
20027800:	5f1d36f1 	.word	0x5f1d36f1
20027804:	a54ff53a 	.word	0xa54ff53a
20027808:	ffc00b31 	.word	0xffc00b31
2002780c:	67332667 	.word	0x67332667
20027810:	68581511 	.word	0x68581511
20027814:	8eb44a87 	.word	0x8eb44a87
20027818:	64f98fa7 	.word	0x64f98fa7
2002781c:	db0c2e0d 	.word	0xdb0c2e0d
20027820:	befa4fa4 	.word	0xbefa4fa4
20027824:	47b5481d 	.word	0x47b5481d
20027828:	ade682d1 	.word	0xade682d1
2002782c:	510e527f 	.word	0x510e527f
20027830:	2b3e6c1f 	.word	0x2b3e6c1f
20027834:	9b05688c 	.word	0x9b05688c
20027838:	fb41bd6b 	.word	0xfb41bd6b
2002783c:	1f83d9ab 	.word	0x1f83d9ab
20027840:	137e2179 	.word	0x137e2179
20027844:	5be0cd19 	.word	0x5be0cd19

20027848 <mbedtls_asn1_get_len>:
20027848:	b570      	push	{r4, r5, r6, lr}
2002784a:	6803      	ldr	r3, [r0, #0]
2002784c:	1acd      	subs	r5, r1, r3
2002784e:	2d00      	cmp	r5, #0
20027850:	dc02      	bgt.n	20027858 <mbedtls_asn1_get_len+0x10>
20027852:	f06f 005f 	mvn.w	r0, #95	@ 0x5f
20027856:	bd70      	pop	{r4, r5, r6, pc}
20027858:	f993 6000 	ldrsb.w	r6, [r3]
2002785c:	781c      	ldrb	r4, [r3, #0]
2002785e:	2e00      	cmp	r6, #0
20027860:	db0a      	blt.n	20027878 <mbedtls_asn1_get_len+0x30>
20027862:	1c5c      	adds	r4, r3, #1
20027864:	6004      	str	r4, [r0, #0]
20027866:	781b      	ldrb	r3, [r3, #0]
20027868:	6013      	str	r3, [r2, #0]
2002786a:	6803      	ldr	r3, [r0, #0]
2002786c:	1ac9      	subs	r1, r1, r3
2002786e:	6813      	ldr	r3, [r2, #0]
20027870:	428b      	cmp	r3, r1
20027872:	d8ee      	bhi.n	20027852 <mbedtls_asn1_get_len+0xa>
20027874:	2000      	movs	r0, #0
20027876:	e7ee      	b.n	20027856 <mbedtls_asn1_get_len+0xe>
20027878:	f004 047f 	and.w	r4, r4, #127	@ 0x7f
2002787c:	3c01      	subs	r4, #1
2002787e:	2c03      	cmp	r4, #3
20027880:	d82b      	bhi.n	200278da <mbedtls_asn1_get_len+0x92>
20027882:	e8df f004 	tbb	[pc, r4]
20027886:	0a02      	.short	0x0a02
20027888:	2114      	.short	0x2114
2002788a:	2d01      	cmp	r5, #1
2002788c:	d0e1      	beq.n	20027852 <mbedtls_asn1_get_len+0xa>
2002788e:	785b      	ldrb	r3, [r3, #1]
20027890:	6013      	str	r3, [r2, #0]
20027892:	6803      	ldr	r3, [r0, #0]
20027894:	3302      	adds	r3, #2
20027896:	6003      	str	r3, [r0, #0]
20027898:	e7e7      	b.n	2002786a <mbedtls_asn1_get_len+0x22>
2002789a:	2d02      	cmp	r5, #2
2002789c:	ddd9      	ble.n	20027852 <mbedtls_asn1_get_len+0xa>
2002789e:	f8b3 3001 	ldrh.w	r3, [r3, #1]
200278a2:	ba5b      	rev16	r3, r3
200278a4:	b29b      	uxth	r3, r3
200278a6:	6013      	str	r3, [r2, #0]
200278a8:	6803      	ldr	r3, [r0, #0]
200278aa:	3303      	adds	r3, #3
200278ac:	e7f3      	b.n	20027896 <mbedtls_asn1_get_len+0x4e>
200278ae:	2d03      	cmp	r5, #3
200278b0:	ddcf      	ble.n	20027852 <mbedtls_asn1_get_len+0xa>
200278b2:	789c      	ldrb	r4, [r3, #2]
200278b4:	785d      	ldrb	r5, [r3, #1]
200278b6:	0224      	lsls	r4, r4, #8
200278b8:	78db      	ldrb	r3, [r3, #3]
200278ba:	ea44 4405 	orr.w	r4, r4, r5, lsl #16
200278be:	4323      	orrs	r3, r4
200278c0:	6013      	str	r3, [r2, #0]
200278c2:	6803      	ldr	r3, [r0, #0]
200278c4:	3304      	adds	r3, #4
200278c6:	e7e6      	b.n	20027896 <mbedtls_asn1_get_len+0x4e>
200278c8:	2d04      	cmp	r5, #4
200278ca:	ddc2      	ble.n	20027852 <mbedtls_asn1_get_len+0xa>
200278cc:	f8d3 3001 	ldr.w	r3, [r3, #1]
200278d0:	ba1b      	rev	r3, r3
200278d2:	6013      	str	r3, [r2, #0]
200278d4:	6803      	ldr	r3, [r0, #0]
200278d6:	3305      	adds	r3, #5
200278d8:	e7dd      	b.n	20027896 <mbedtls_asn1_get_len+0x4e>
200278da:	f06f 0063 	mvn.w	r0, #99	@ 0x63
200278de:	e7ba      	b.n	20027856 <mbedtls_asn1_get_len+0xe>

200278e0 <mbedtls_asn1_get_tag>:
200278e0:	b470      	push	{r4, r5, r6}
200278e2:	6804      	ldr	r4, [r0, #0]
200278e4:	1b0e      	subs	r6, r1, r4
200278e6:	2e00      	cmp	r6, #0
200278e8:	dd07      	ble.n	200278fa <mbedtls_asn1_get_tag+0x1a>
200278ea:	7826      	ldrb	r6, [r4, #0]
200278ec:	429e      	cmp	r6, r3
200278ee:	d108      	bne.n	20027902 <mbedtls_asn1_get_tag+0x22>
200278f0:	3401      	adds	r4, #1
200278f2:	6004      	str	r4, [r0, #0]
200278f4:	bc70      	pop	{r4, r5, r6}
200278f6:	f7ff bfa7 	b.w	20027848 <mbedtls_asn1_get_len>
200278fa:	f06f 005f 	mvn.w	r0, #95	@ 0x5f
200278fe:	bc70      	pop	{r4, r5, r6}
20027900:	4770      	bx	lr
20027902:	f06f 0061 	mvn.w	r0, #97	@ 0x61
20027906:	e7fa      	b.n	200278fe <mbedtls_asn1_get_tag+0x1e>

20027908 <mbedtls_asn1_get_mpi>:
20027908:	b573      	push	{r0, r1, r4, r5, r6, lr}
2002790a:	2302      	movs	r3, #2
2002790c:	4615      	mov	r5, r2
2002790e:	aa01      	add	r2, sp, #4
20027910:	4604      	mov	r4, r0
20027912:	f7ff ffe5 	bl	200278e0 <mbedtls_asn1_get_tag>
20027916:	b940      	cbnz	r0, 2002792a <mbedtls_asn1_get_mpi+0x22>
20027918:	9e01      	ldr	r6, [sp, #4]
2002791a:	4628      	mov	r0, r5
2002791c:	4632      	mov	r2, r6
2002791e:	6821      	ldr	r1, [r4, #0]
20027920:	f000 fad4 	bl	20027ecc <mbedtls_mpi_read_binary>
20027924:	6823      	ldr	r3, [r4, #0]
20027926:	4433      	add	r3, r6
20027928:	6023      	str	r3, [r4, #0]
2002792a:	b002      	add	sp, #8
2002792c:	bd70      	pop	{r4, r5, r6, pc}

2002792e <mbedtls_asn1_get_bitstring_null>:
2002792e:	b538      	push	{r3, r4, r5, lr}
20027930:	2303      	movs	r3, #3
20027932:	4604      	mov	r4, r0
20027934:	4615      	mov	r5, r2
20027936:	f7ff ffd3 	bl	200278e0 <mbedtls_asn1_get_tag>
2002793a:	b958      	cbnz	r0, 20027954 <mbedtls_asn1_get_bitstring_null+0x26>
2002793c:	6813      	ldr	r3, [r2, #0]
2002793e:	1e5a      	subs	r2, r3, #1
20027940:	2b01      	cmp	r3, #1
20027942:	602a      	str	r2, [r5, #0]
20027944:	d904      	bls.n	20027950 <mbedtls_asn1_get_bitstring_null+0x22>
20027946:	6823      	ldr	r3, [r4, #0]
20027948:	1c5a      	adds	r2, r3, #1
2002794a:	6022      	str	r2, [r4, #0]
2002794c:	781b      	ldrb	r3, [r3, #0]
2002794e:	b10b      	cbz	r3, 20027954 <mbedtls_asn1_get_bitstring_null+0x26>
20027950:	f06f 0067 	mvn.w	r0, #103	@ 0x67
20027954:	bd38      	pop	{r3, r4, r5, pc}

20027956 <mbedtls_asn1_get_alg>:
20027956:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
2002795a:	4690      	mov	r8, r2
2002795c:	461e      	mov	r6, r3
2002795e:	aa01      	add	r2, sp, #4
20027960:	2330      	movs	r3, #48	@ 0x30
20027962:	4605      	mov	r5, r0
20027964:	460f      	mov	r7, r1
20027966:	f7ff ffbb 	bl	200278e0 <mbedtls_asn1_get_tag>
2002796a:	4604      	mov	r4, r0
2002796c:	bb10      	cbnz	r0, 200279b4 <mbedtls_asn1_get_alg+0x5e>
2002796e:	682b      	ldr	r3, [r5, #0]
20027970:	1aff      	subs	r7, r7, r3
20027972:	2f00      	cmp	r7, #0
20027974:	dd38      	ble.n	200279e8 <mbedtls_asn1_get_alg+0x92>
20027976:	4642      	mov	r2, r8
20027978:	781b      	ldrb	r3, [r3, #0]
2002797a:	4628      	mov	r0, r5
2002797c:	f842 3b04 	str.w	r3, [r2], #4
20027980:	682f      	ldr	r7, [r5, #0]
20027982:	9b01      	ldr	r3, [sp, #4]
20027984:	441f      	add	r7, r3
20027986:	4639      	mov	r1, r7
20027988:	2306      	movs	r3, #6
2002798a:	f7ff ffa9 	bl	200278e0 <mbedtls_asn1_get_tag>
2002798e:	4604      	mov	r4, r0
20027990:	b980      	cbnz	r0, 200279b4 <mbedtls_asn1_get_alg+0x5e>
20027992:	682b      	ldr	r3, [r5, #0]
20027994:	f8d8 2004 	ldr.w	r2, [r8, #4]
20027998:	f8c8 3008 	str.w	r3, [r8, #8]
2002799c:	1899      	adds	r1, r3, r2
2002799e:	42b9      	cmp	r1, r7
200279a0:	6029      	str	r1, [r5, #0]
200279a2:	d10b      	bne.n	200279bc <mbedtls_asn1_get_alg+0x66>
200279a4:	4601      	mov	r1, r0
200279a6:	f106 030c 	add.w	r3, r6, #12
200279aa:	4632      	mov	r2, r6
200279ac:	3601      	adds	r6, #1
200279ae:	42b3      	cmp	r3, r6
200279b0:	7011      	strb	r1, [r2, #0]
200279b2:	d1fa      	bne.n	200279aa <mbedtls_asn1_get_alg+0x54>
200279b4:	4620      	mov	r0, r4
200279b6:	b002      	add	sp, #8
200279b8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
200279bc:	5c9b      	ldrb	r3, [r3, r2]
200279be:	4632      	mov	r2, r6
200279c0:	f842 3b04 	str.w	r3, [r2], #4
200279c4:	682b      	ldr	r3, [r5, #0]
200279c6:	4639      	mov	r1, r7
200279c8:	3301      	adds	r3, #1
200279ca:	4628      	mov	r0, r5
200279cc:	602b      	str	r3, [r5, #0]
200279ce:	f7ff ff3b 	bl	20027848 <mbedtls_asn1_get_len>
200279d2:	b960      	cbnz	r0, 200279ee <mbedtls_asn1_get_alg+0x98>
200279d4:	682b      	ldr	r3, [r5, #0]
200279d6:	6872      	ldr	r2, [r6, #4]
200279d8:	60b3      	str	r3, [r6, #8]
200279da:	4413      	add	r3, r2
200279dc:	42bb      	cmp	r3, r7
200279de:	bf18      	it	ne
200279e0:	f06f 0465 	mvnne.w	r4, #101	@ 0x65
200279e4:	602b      	str	r3, [r5, #0]
200279e6:	e7e5      	b.n	200279b4 <mbedtls_asn1_get_alg+0x5e>
200279e8:	f06f 045f 	mvn.w	r4, #95	@ 0x5f
200279ec:	e7e2      	b.n	200279b4 <mbedtls_asn1_get_alg+0x5e>
200279ee:	4604      	mov	r4, r0
200279f0:	e7e0      	b.n	200279b4 <mbedtls_asn1_get_alg+0x5e>

200279f2 <mpi_sub_hlp>:
200279f2:	2300      	movs	r3, #0
200279f4:	b5f0      	push	{r4, r5, r6, r7, lr}
200279f6:	461c      	mov	r4, r3
200279f8:	1f16      	subs	r6, r2, #4
200279fa:	4284      	cmp	r4, r0
200279fc:	d103      	bne.n	20027a06 <mpi_sub_hlp+0x14>
200279fe:	eb02 0284 	add.w	r2, r2, r4, lsl #2
20027a02:	b9b3      	cbnz	r3, 20027a32 <mpi_sub_hlp+0x40>
20027a04:	bdf0      	pop	{r4, r5, r6, r7, pc}
20027a06:	f856 cf04 	ldr.w	ip, [r6, #4]!
20027a0a:	ebac 0503 	sub.w	r5, ip, r3
20027a0e:	6035      	str	r5, [r6, #0]
20027a10:	f851 7024 	ldr.w	r7, [r1, r4, lsl #2]
20027a14:	3401      	adds	r4, #1
20027a16:	42bd      	cmp	r5, r7
20027a18:	bf2c      	ite	cs
20027a1a:	f04f 0e00 	movcs.w	lr, #0
20027a1e:	f04f 0e01 	movcc.w	lr, #1
20027a22:	1bed      	subs	r5, r5, r7
20027a24:	459c      	cmp	ip, r3
20027a26:	bf2c      	ite	cs
20027a28:	4673      	movcs	r3, lr
20027a2a:	f10e 0301 	addcc.w	r3, lr, #1
20027a2e:	6035      	str	r5, [r6, #0]
20027a30:	e7e3      	b.n	200279fa <mpi_sub_hlp+0x8>
20027a32:	6811      	ldr	r1, [r2, #0]
20027a34:	1ac8      	subs	r0, r1, r3
20027a36:	4299      	cmp	r1, r3
20027a38:	bf2c      	ite	cs
20027a3a:	2300      	movcs	r3, #0
20027a3c:	2301      	movcc	r3, #1
20027a3e:	f842 0b04 	str.w	r0, [r2], #4
20027a42:	e7de      	b.n	20027a02 <mpi_sub_hlp+0x10>

20027a44 <mpi_mul_hlp>:
20027a44:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20027a48:	4694      	mov	ip, r2
20027a4a:	460e      	mov	r6, r1
20027a4c:	4686      	mov	lr, r0
20027a4e:	2500      	movs	r5, #0
20027a50:	f102 0440 	add.w	r4, r2, #64	@ 0x40
20027a54:	f1be 0f0f 	cmp.w	lr, #15
20027a58:	f854 7c40 	ldr.w	r7, [r4, #-64]
20027a5c:	f106 0640 	add.w	r6, r6, #64	@ 0x40
20027a60:	f104 0440 	add.w	r4, r4, #64	@ 0x40
20027a64:	d87c      	bhi.n	20027b60 <mpi_mul_hlp+0x11c>
20027a66:	f06f 080f 	mvn.w	r8, #15
20027a6a:	0902      	lsrs	r2, r0, #4
20027a6c:	fb08 0002 	mla	r0, r8, r2, r0
20027a70:	2807      	cmp	r0, #7
20027a72:	ea4f 1e82 	mov.w	lr, r2, lsl #6
20027a76:	eb0c 1482 	add.w	r4, ip, r2, lsl #6
20027a7a:	eb01 1682 	add.w	r6, r1, r2, lsl #6
20027a7e:	d95b      	bls.n	20027b38 <mpi_mul_hlp+0xf4>
20027a80:	f851 100e 	ldr.w	r1, [r1, lr]
20027a84:	3808      	subs	r0, #8
20027a86:	fba1 1203 	umull	r1, r2, r1, r3
20027a8a:	1869      	adds	r1, r5, r1
20027a8c:	f142 0200 	adc.w	r2, r2, #0
20027a90:	187f      	adds	r7, r7, r1
20027a92:	f84c 700e 	str.w	r7, [ip, lr]
20027a96:	6871      	ldr	r1, [r6, #4]
20027a98:	f142 0200 	adc.w	r2, r2, #0
20027a9c:	fba1 5103 	umull	r5, r1, r1, r3
20027aa0:	1952      	adds	r2, r2, r5
20027aa2:	6865      	ldr	r5, [r4, #4]
20027aa4:	f141 0100 	adc.w	r1, r1, #0
20027aa8:	1952      	adds	r2, r2, r5
20027aaa:	6062      	str	r2, [r4, #4]
20027aac:	68b2      	ldr	r2, [r6, #8]
20027aae:	f141 0100 	adc.w	r1, r1, #0
20027ab2:	fba2 5203 	umull	r5, r2, r2, r3
20027ab6:	1949      	adds	r1, r1, r5
20027ab8:	68a5      	ldr	r5, [r4, #8]
20027aba:	f142 0200 	adc.w	r2, r2, #0
20027abe:	1949      	adds	r1, r1, r5
20027ac0:	60a1      	str	r1, [r4, #8]
20027ac2:	68f1      	ldr	r1, [r6, #12]
20027ac4:	f142 0200 	adc.w	r2, r2, #0
20027ac8:	fba1 5103 	umull	r5, r1, r1, r3
20027acc:	1952      	adds	r2, r2, r5
20027ace:	68e5      	ldr	r5, [r4, #12]
20027ad0:	f141 0100 	adc.w	r1, r1, #0
20027ad4:	1952      	adds	r2, r2, r5
20027ad6:	60e2      	str	r2, [r4, #12]
20027ad8:	6932      	ldr	r2, [r6, #16]
20027ada:	f141 0100 	adc.w	r1, r1, #0
20027ade:	fba2 5203 	umull	r5, r2, r2, r3
20027ae2:	1949      	adds	r1, r1, r5
20027ae4:	6925      	ldr	r5, [r4, #16]
20027ae6:	f142 0200 	adc.w	r2, r2, #0
20027aea:	1949      	adds	r1, r1, r5
20027aec:	6121      	str	r1, [r4, #16]
20027aee:	6971      	ldr	r1, [r6, #20]
20027af0:	f142 0200 	adc.w	r2, r2, #0
20027af4:	fba1 5103 	umull	r5, r1, r1, r3
20027af8:	1952      	adds	r2, r2, r5
20027afa:	6965      	ldr	r5, [r4, #20]
20027afc:	f141 0100 	adc.w	r1, r1, #0
20027b00:	1952      	adds	r2, r2, r5
20027b02:	6162      	str	r2, [r4, #20]
20027b04:	69b2      	ldr	r2, [r6, #24]
20027b06:	f141 0100 	adc.w	r1, r1, #0
20027b0a:	fba2 5203 	umull	r5, r2, r2, r3
20027b0e:	1949      	adds	r1, r1, r5
20027b10:	69a5      	ldr	r5, [r4, #24]
20027b12:	f142 0200 	adc.w	r2, r2, #0
20027b16:	1949      	adds	r1, r1, r5
20027b18:	61a1      	str	r1, [r4, #24]
20027b1a:	69f1      	ldr	r1, [r6, #28]
20027b1c:	f142 0200 	adc.w	r2, r2, #0
20027b20:	fba1 1503 	umull	r1, r5, r1, r3
20027b24:	1852      	adds	r2, r2, r1
20027b26:	69e1      	ldr	r1, [r4, #28]
20027b28:	f145 0500 	adc.w	r5, r5, #0
20027b2c:	1852      	adds	r2, r2, r1
20027b2e:	61e2      	str	r2, [r4, #28]
20027b30:	f145 0500 	adc.w	r5, r5, #0
20027b34:	3420      	adds	r4, #32
20027b36:	3620      	adds	r6, #32
20027b38:	4627      	mov	r7, r4
20027b3a:	ea4f 0c80 	mov.w	ip, r0, lsl #2
20027b3e:	eb06 0080 	add.w	r0, r6, r0, lsl #2
20027b42:	42b0      	cmp	r0, r6
20027b44:	f857 1b04 	ldr.w	r1, [r7], #4
20027b48:	f040 80eb 	bne.w	20027d22 <mpi_mul_hlp+0x2de>
20027b4c:	4464      	add	r4, ip
20027b4e:	6823      	ldr	r3, [r4, #0]
20027b50:	195b      	adds	r3, r3, r5
20027b52:	f844 3b04 	str.w	r3, [r4], #4
20027b56:	f04f 0501 	mov.w	r5, #1
20027b5a:	d2f8      	bcs.n	20027b4e <mpi_mul_hlp+0x10a>
20027b5c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027b60:	f856 2c40 	ldr.w	r2, [r6, #-64]
20027b64:	f1ae 0e10 	sub.w	lr, lr, #16
20027b68:	fba2 2803 	umull	r2, r8, r2, r3
20027b6c:	18aa      	adds	r2, r5, r2
20027b6e:	f148 0500 	adc.w	r5, r8, #0
20027b72:	18ba      	adds	r2, r7, r2
20027b74:	f844 2c80 	str.w	r2, [r4, #-128]
20027b78:	f856 2c3c 	ldr.w	r2, [r6, #-60]
20027b7c:	f145 0500 	adc.w	r5, r5, #0
20027b80:	fba2 7203 	umull	r7, r2, r2, r3
20027b84:	19ef      	adds	r7, r5, r7
20027b86:	f854 5c7c 	ldr.w	r5, [r4, #-124]
20027b8a:	f142 0200 	adc.w	r2, r2, #0
20027b8e:	19ed      	adds	r5, r5, r7
20027b90:	f844 5c7c 	str.w	r5, [r4, #-124]
20027b94:	f856 5c38 	ldr.w	r5, [r6, #-56]
20027b98:	f142 0200 	adc.w	r2, r2, #0
20027b9c:	fba5 7503 	umull	r7, r5, r5, r3
20027ba0:	19d7      	adds	r7, r2, r7
20027ba2:	f854 2c78 	ldr.w	r2, [r4, #-120]
20027ba6:	f145 0500 	adc.w	r5, r5, #0
20027baa:	19d2      	adds	r2, r2, r7
20027bac:	f844 2c78 	str.w	r2, [r4, #-120]
20027bb0:	f856 2c34 	ldr.w	r2, [r6, #-52]
20027bb4:	f145 0500 	adc.w	r5, r5, #0
20027bb8:	fba2 7203 	umull	r7, r2, r2, r3
20027bbc:	19ef      	adds	r7, r5, r7
20027bbe:	f854 5c74 	ldr.w	r5, [r4, #-116]
20027bc2:	f142 0200 	adc.w	r2, r2, #0
20027bc6:	19ed      	adds	r5, r5, r7
20027bc8:	f844 5c74 	str.w	r5, [r4, #-116]
20027bcc:	f856 5c30 	ldr.w	r5, [r6, #-48]
20027bd0:	f142 0200 	adc.w	r2, r2, #0
20027bd4:	fba5 7503 	umull	r7, r5, r5, r3
20027bd8:	19d7      	adds	r7, r2, r7
20027bda:	f854 2c70 	ldr.w	r2, [r4, #-112]
20027bde:	f145 0500 	adc.w	r5, r5, #0
20027be2:	19d2      	adds	r2, r2, r7
20027be4:	f844 2c70 	str.w	r2, [r4, #-112]
20027be8:	f856 2c2c 	ldr.w	r2, [r6, #-44]
20027bec:	f145 0500 	adc.w	r5, r5, #0
20027bf0:	fba2 7203 	umull	r7, r2, r2, r3
20027bf4:	19ef      	adds	r7, r5, r7
20027bf6:	f854 5c6c 	ldr.w	r5, [r4, #-108]
20027bfa:	f142 0200 	adc.w	r2, r2, #0
20027bfe:	19ed      	adds	r5, r5, r7
20027c00:	f844 5c6c 	str.w	r5, [r4, #-108]
20027c04:	f856 5c28 	ldr.w	r5, [r6, #-40]
20027c08:	f142 0200 	adc.w	r2, r2, #0
20027c0c:	fba5 7503 	umull	r7, r5, r5, r3
20027c10:	19d7      	adds	r7, r2, r7
20027c12:	f854 2c68 	ldr.w	r2, [r4, #-104]
20027c16:	f145 0500 	adc.w	r5, r5, #0
20027c1a:	19d2      	adds	r2, r2, r7
20027c1c:	f844 2c68 	str.w	r2, [r4, #-104]
20027c20:	f856 2c24 	ldr.w	r2, [r6, #-36]
20027c24:	f145 0500 	adc.w	r5, r5, #0
20027c28:	fba2 7203 	umull	r7, r2, r2, r3
20027c2c:	19ef      	adds	r7, r5, r7
20027c2e:	f854 5c64 	ldr.w	r5, [r4, #-100]
20027c32:	f142 0200 	adc.w	r2, r2, #0
20027c36:	19ed      	adds	r5, r5, r7
20027c38:	f844 5c64 	str.w	r5, [r4, #-100]
20027c3c:	f856 5c20 	ldr.w	r5, [r6, #-32]
20027c40:	f142 0200 	adc.w	r2, r2, #0
20027c44:	fba5 7503 	umull	r7, r5, r5, r3
20027c48:	19d7      	adds	r7, r2, r7
20027c4a:	f854 2c60 	ldr.w	r2, [r4, #-96]
20027c4e:	f145 0500 	adc.w	r5, r5, #0
20027c52:	19d2      	adds	r2, r2, r7
20027c54:	f844 2c60 	str.w	r2, [r4, #-96]
20027c58:	f856 2c1c 	ldr.w	r2, [r6, #-28]
20027c5c:	f145 0500 	adc.w	r5, r5, #0
20027c60:	fba2 7203 	umull	r7, r2, r2, r3
20027c64:	19ef      	adds	r7, r5, r7
20027c66:	f854 5c5c 	ldr.w	r5, [r4, #-92]
20027c6a:	f142 0200 	adc.w	r2, r2, #0
20027c6e:	19ed      	adds	r5, r5, r7
20027c70:	f844 5c5c 	str.w	r5, [r4, #-92]
20027c74:	f856 5c18 	ldr.w	r5, [r6, #-24]
20027c78:	f142 0200 	adc.w	r2, r2, #0
20027c7c:	fba5 7503 	umull	r7, r5, r5, r3
20027c80:	19d7      	adds	r7, r2, r7
20027c82:	f854 2c58 	ldr.w	r2, [r4, #-88]
20027c86:	f145 0500 	adc.w	r5, r5, #0
20027c8a:	19d2      	adds	r2, r2, r7
20027c8c:	f844 2c58 	str.w	r2, [r4, #-88]
20027c90:	f856 2c14 	ldr.w	r2, [r6, #-20]
20027c94:	f145 0500 	adc.w	r5, r5, #0
20027c98:	fba2 7203 	umull	r7, r2, r2, r3
20027c9c:	19ef      	adds	r7, r5, r7
20027c9e:	f854 5c54 	ldr.w	r5, [r4, #-84]
20027ca2:	f142 0200 	adc.w	r2, r2, #0
20027ca6:	19ed      	adds	r5, r5, r7
20027ca8:	f844 5c54 	str.w	r5, [r4, #-84]
20027cac:	f856 5c10 	ldr.w	r5, [r6, #-16]
20027cb0:	f142 0200 	adc.w	r2, r2, #0
20027cb4:	fba5 7503 	umull	r7, r5, r5, r3
20027cb8:	19d7      	adds	r7, r2, r7
20027cba:	f854 2c50 	ldr.w	r2, [r4, #-80]
20027cbe:	f145 0500 	adc.w	r5, r5, #0
20027cc2:	19d2      	adds	r2, r2, r7
20027cc4:	f844 2c50 	str.w	r2, [r4, #-80]
20027cc8:	f856 2c0c 	ldr.w	r2, [r6, #-12]
20027ccc:	f145 0500 	adc.w	r5, r5, #0
20027cd0:	fba2 7203 	umull	r7, r2, r2, r3
20027cd4:	19ef      	adds	r7, r5, r7
20027cd6:	f854 5c4c 	ldr.w	r5, [r4, #-76]
20027cda:	f142 0200 	adc.w	r2, r2, #0
20027cde:	19ed      	adds	r5, r5, r7
20027ce0:	f844 5c4c 	str.w	r5, [r4, #-76]
20027ce4:	f856 5c08 	ldr.w	r5, [r6, #-8]
20027ce8:	f142 0200 	adc.w	r2, r2, #0
20027cec:	fba5 5703 	umull	r5, r7, r5, r3
20027cf0:	1955      	adds	r5, r2, r5
20027cf2:	f854 2c48 	ldr.w	r2, [r4, #-72]
20027cf6:	f147 0700 	adc.w	r7, r7, #0
20027cfa:	1952      	adds	r2, r2, r5
20027cfc:	f844 2c48 	str.w	r2, [r4, #-72]
20027d00:	f856 2c04 	ldr.w	r2, [r6, #-4]
20027d04:	f147 0700 	adc.w	r7, r7, #0
20027d08:	fba2 2503 	umull	r2, r5, r2, r3
20027d0c:	18bf      	adds	r7, r7, r2
20027d0e:	f854 2c44 	ldr.w	r2, [r4, #-68]
20027d12:	f145 0500 	adc.w	r5, r5, #0
20027d16:	19d2      	adds	r2, r2, r7
20027d18:	f145 0500 	adc.w	r5, r5, #0
20027d1c:	f844 2c44 	str.w	r2, [r4, #-68]
20027d20:	e698      	b.n	20027a54 <mpi_mul_hlp+0x10>
20027d22:	f856 2b04 	ldr.w	r2, [r6], #4
20027d26:	fba2 2e03 	umull	r2, lr, r2, r3
20027d2a:	18aa      	adds	r2, r5, r2
20027d2c:	f14e 0500 	adc.w	r5, lr, #0
20027d30:	1889      	adds	r1, r1, r2
20027d32:	f145 0500 	adc.w	r5, r5, #0
20027d36:	f847 1c04 	str.w	r1, [r7, #-4]
20027d3a:	e702      	b.n	20027b42 <mpi_mul_hlp+0xfe>

20027d3c <mbedtls_mpi_init>:
20027d3c:	b120      	cbz	r0, 20027d48 <mbedtls_mpi_init+0xc>
20027d3e:	2300      	movs	r3, #0
20027d40:	2201      	movs	r2, #1
20027d42:	e9c0 2300 	strd	r2, r3, [r0]
20027d46:	6083      	str	r3, [r0, #8]
20027d48:	4770      	bx	lr

20027d4a <mbedtls_mpi_free>:
20027d4a:	b510      	push	{r4, lr}
20027d4c:	4604      	mov	r4, r0
20027d4e:	b168      	cbz	r0, 20027d6c <mbedtls_mpi_free+0x22>
20027d50:	6883      	ldr	r3, [r0, #8]
20027d52:	b133      	cbz	r3, 20027d62 <mbedtls_mpi_free+0x18>
20027d54:	2100      	movs	r1, #0
20027d56:	6842      	ldr	r2, [r0, #4]
20027d58:	3a01      	subs	r2, #1
20027d5a:	d208      	bcs.n	20027d6e <mbedtls_mpi_free+0x24>
20027d5c:	68a0      	ldr	r0, [r4, #8]
20027d5e:	f002 fcbf 	bl	2002a6e0 <free>
20027d62:	2300      	movs	r3, #0
20027d64:	2201      	movs	r2, #1
20027d66:	e9c4 2300 	strd	r2, r3, [r4]
20027d6a:	60a3      	str	r3, [r4, #8]
20027d6c:	bd10      	pop	{r4, pc}
20027d6e:	f843 1b04 	str.w	r1, [r3], #4
20027d72:	e7f1      	b.n	20027d58 <mbedtls_mpi_free+0xe>

20027d74 <mbedtls_mpi_grow>:
20027d74:	f242 7310 	movw	r3, #10000	@ 0x2710
20027d78:	4299      	cmp	r1, r3
20027d7a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20027d7e:	4605      	mov	r5, r0
20027d80:	460f      	mov	r7, r1
20027d82:	d903      	bls.n	20027d8c <mbedtls_mpi_grow+0x18>
20027d84:	f06f 000f 	mvn.w	r0, #15
20027d88:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20027d8c:	6846      	ldr	r6, [r0, #4]
20027d8e:	428e      	cmp	r6, r1
20027d90:	d301      	bcc.n	20027d96 <mbedtls_mpi_grow+0x22>
20027d92:	2000      	movs	r0, #0
20027d94:	e7f8      	b.n	20027d88 <mbedtls_mpi_grow+0x14>
20027d96:	2104      	movs	r1, #4
20027d98:	4638      	mov	r0, r7
20027d9a:	f002 fc85 	bl	2002a6a8 <calloc>
20027d9e:	4680      	mov	r8, r0
20027da0:	2800      	cmp	r0, #0
20027da2:	d0ef      	beq.n	20027d84 <mbedtls_mpi_grow+0x10>
20027da4:	68ac      	ldr	r4, [r5, #8]
20027da6:	b15c      	cbz	r4, 20027dc0 <mbedtls_mpi_grow+0x4c>
20027da8:	00b6      	lsls	r6, r6, #2
20027daa:	4632      	mov	r2, r6
20027dac:	4621      	mov	r1, r4
20027dae:	f002 fd77 	bl	2002a8a0 <memcpy>
20027db2:	2300      	movs	r3, #0
20027db4:	4426      	add	r6, r4
20027db6:	42b4      	cmp	r4, r6
20027db8:	d105      	bne.n	20027dc6 <mbedtls_mpi_grow+0x52>
20027dba:	68a8      	ldr	r0, [r5, #8]
20027dbc:	f002 fc90 	bl	2002a6e0 <free>
20027dc0:	e9c5 7801 	strd	r7, r8, [r5, #4]
20027dc4:	e7e5      	b.n	20027d92 <mbedtls_mpi_grow+0x1e>
20027dc6:	f844 3b04 	str.w	r3, [r4], #4
20027dca:	e7f4      	b.n	20027db6 <mbedtls_mpi_grow+0x42>

20027dcc <mbedtls_mpi_copy>:
20027dcc:	4288      	cmp	r0, r1
20027dce:	b570      	push	{r4, r5, r6, lr}
20027dd0:	4605      	mov	r5, r0
20027dd2:	460e      	mov	r6, r1
20027dd4:	d003      	beq.n	20027dde <mbedtls_mpi_copy+0x12>
20027dd6:	688b      	ldr	r3, [r1, #8]
20027dd8:	b91b      	cbnz	r3, 20027de2 <mbedtls_mpi_copy+0x16>
20027dda:	f7ff ffb6 	bl	20027d4a <mbedtls_mpi_free>
20027dde:	2000      	movs	r0, #0
20027de0:	bd70      	pop	{r4, r5, r6, pc}
20027de2:	684a      	ldr	r2, [r1, #4]
20027de4:	3a01      	subs	r2, #1
20027de6:	b11a      	cbz	r2, 20027df0 <mbedtls_mpi_copy+0x24>
20027de8:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
20027dec:	2900      	cmp	r1, #0
20027dee:	d0f9      	beq.n	20027de4 <mbedtls_mpi_copy+0x18>
20027df0:	6833      	ldr	r3, [r6, #0]
20027df2:	1c54      	adds	r4, r2, #1
20027df4:	4621      	mov	r1, r4
20027df6:	4628      	mov	r0, r5
20027df8:	602b      	str	r3, [r5, #0]
20027dfa:	f7ff ffbb 	bl	20027d74 <mbedtls_mpi_grow>
20027dfe:	4601      	mov	r1, r0
20027e00:	b950      	cbnz	r0, 20027e18 <mbedtls_mpi_copy+0x4c>
20027e02:	686a      	ldr	r2, [r5, #4]
20027e04:	68a8      	ldr	r0, [r5, #8]
20027e06:	0092      	lsls	r2, r2, #2
20027e08:	f002 fd30 	bl	2002a86c <memset>
20027e0c:	68b1      	ldr	r1, [r6, #8]
20027e0e:	68a8      	ldr	r0, [r5, #8]
20027e10:	00a2      	lsls	r2, r4, #2
20027e12:	f002 fd45 	bl	2002a8a0 <memcpy>
20027e16:	e7e2      	b.n	20027dde <mbedtls_mpi_copy+0x12>
20027e18:	f06f 000f 	mvn.w	r0, #15
20027e1c:	e7e0      	b.n	20027de0 <mbedtls_mpi_copy+0x14>

20027e1e <mbedtls_mpi_lset>:
20027e1e:	b570      	push	{r4, r5, r6, lr}
20027e20:	460e      	mov	r6, r1
20027e22:	2101      	movs	r1, #1
20027e24:	4604      	mov	r4, r0
20027e26:	f7ff ffa5 	bl	20027d74 <mbedtls_mpi_grow>
20027e2a:	4605      	mov	r5, r0
20027e2c:	b988      	cbnz	r0, 20027e52 <mbedtls_mpi_lset+0x34>
20027e2e:	6862      	ldr	r2, [r4, #4]
20027e30:	4601      	mov	r1, r0
20027e32:	0092      	lsls	r2, r2, #2
20027e34:	68a0      	ldr	r0, [r4, #8]
20027e36:	f002 fd19 	bl	2002a86c <memset>
20027e3a:	68a3      	ldr	r3, [r4, #8]
20027e3c:	ea86 72e6 	eor.w	r2, r6, r6, asr #31
20027e40:	2e00      	cmp	r6, #0
20027e42:	eba2 72e6 	sub.w	r2, r2, r6, asr #31
20027e46:	601a      	str	r2, [r3, #0]
20027e48:	bfac      	ite	ge
20027e4a:	2301      	movge	r3, #1
20027e4c:	f04f 33ff 	movlt.w	r3, #4294967295
20027e50:	6023      	str	r3, [r4, #0]
20027e52:	4628      	mov	r0, r5
20027e54:	bd70      	pop	{r4, r5, r6, pc}

20027e56 <mbedtls_mpi_lsb>:
20027e56:	2300      	movs	r3, #0
20027e58:	4619      	mov	r1, r3
20027e5a:	b570      	push	{r4, r5, r6, lr}
20027e5c:	6844      	ldr	r4, [r0, #4]
20027e5e:	428c      	cmp	r4, r1
20027e60:	d101      	bne.n	20027e66 <mbedtls_mpi_lsb+0x10>
20027e62:	2000      	movs	r0, #0
20027e64:	e008      	b.n	20027e78 <mbedtls_mpi_lsb+0x22>
20027e66:	6882      	ldr	r2, [r0, #8]
20027e68:	f852 5021 	ldr.w	r5, [r2, r1, lsl #2]
20027e6c:	2200      	movs	r2, #0
20027e6e:	fa25 f602 	lsr.w	r6, r5, r2
20027e72:	07f6      	lsls	r6, r6, #31
20027e74:	d501      	bpl.n	20027e7a <mbedtls_mpi_lsb+0x24>
20027e76:	1898      	adds	r0, r3, r2
20027e78:	bd70      	pop	{r4, r5, r6, pc}
20027e7a:	3201      	adds	r2, #1
20027e7c:	2a20      	cmp	r2, #32
20027e7e:	d1f6      	bne.n	20027e6e <mbedtls_mpi_lsb+0x18>
20027e80:	3320      	adds	r3, #32
20027e82:	3101      	adds	r1, #1
20027e84:	e7eb      	b.n	20027e5e <mbedtls_mpi_lsb+0x8>

20027e86 <mbedtls_mpi_bitlen>:
20027e86:	4602      	mov	r2, r0
20027e88:	6840      	ldr	r0, [r0, #4]
20027e8a:	b188      	cbz	r0, 20027eb0 <mbedtls_mpi_bitlen+0x2a>
20027e8c:	6891      	ldr	r1, [r2, #8]
20027e8e:	1e43      	subs	r3, r0, #1
20027e90:	b97b      	cbnz	r3, 20027eb2 <mbedtls_mpi_bitlen+0x2c>
20027e92:	461a      	mov	r2, r3
20027e94:	5889      	ldr	r1, [r1, r2]
20027e96:	2000      	movs	r0, #0
20027e98:	f04f 4200 	mov.w	r2, #2147483648	@ 0x80000000
20027e9c:	4211      	tst	r1, r2
20027e9e:	d104      	bne.n	20027eaa <mbedtls_mpi_bitlen+0x24>
20027ea0:	3001      	adds	r0, #1
20027ea2:	2820      	cmp	r0, #32
20027ea4:	ea4f 0252 	mov.w	r2, r2, lsr #1
20027ea8:	d1f8      	bne.n	20027e9c <mbedtls_mpi_bitlen+0x16>
20027eaa:	3301      	adds	r3, #1
20027eac:	ebc0 1043 	rsb	r0, r0, r3, lsl #5
20027eb0:	4770      	bx	lr
20027eb2:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
20027eb6:	009a      	lsls	r2, r3, #2
20027eb8:	2800      	cmp	r0, #0
20027eba:	d1eb      	bne.n	20027e94 <mbedtls_mpi_bitlen+0xe>
20027ebc:	3b01      	subs	r3, #1
20027ebe:	e7e7      	b.n	20027e90 <mbedtls_mpi_bitlen+0xa>

20027ec0 <mbedtls_mpi_size>:
20027ec0:	b508      	push	{r3, lr}
20027ec2:	f7ff ffe0 	bl	20027e86 <mbedtls_mpi_bitlen>
20027ec6:	3007      	adds	r0, #7
20027ec8:	08c0      	lsrs	r0, r0, #3
20027eca:	bd08      	pop	{r3, pc}

20027ecc <mbedtls_mpi_read_binary>:
20027ecc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027ece:	4607      	mov	r7, r0
20027ed0:	460c      	mov	r4, r1
20027ed2:	4616      	mov	r6, r2
20027ed4:	2500      	movs	r5, #0
20027ed6:	42b5      	cmp	r5, r6
20027ed8:	d001      	beq.n	20027ede <mbedtls_mpi_read_binary+0x12>
20027eda:	5d63      	ldrb	r3, [r4, r5]
20027edc:	b173      	cbz	r3, 20027efc <mbedtls_mpi_read_binary+0x30>
20027ede:	1b71      	subs	r1, r6, r5
20027ee0:	f011 0303 	ands.w	r3, r1, #3
20027ee4:	bf18      	it	ne
20027ee6:	2301      	movne	r3, #1
20027ee8:	4638      	mov	r0, r7
20027eea:	eb03 0191 	add.w	r1, r3, r1, lsr #2
20027eee:	f7ff ff41 	bl	20027d74 <mbedtls_mpi_grow>
20027ef2:	4601      	mov	r1, r0
20027ef4:	b120      	cbz	r0, 20027f00 <mbedtls_mpi_read_binary+0x34>
20027ef6:	f06f 000f 	mvn.w	r0, #15
20027efa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027efc:	3501      	adds	r5, #1
20027efe:	e7ea      	b.n	20027ed6 <mbedtls_mpi_read_binary+0xa>
20027f00:	4638      	mov	r0, r7
20027f02:	f7ff ff8c 	bl	20027e1e <mbedtls_mpi_lset>
20027f06:	2800      	cmp	r0, #0
20027f08:	d1f5      	bne.n	20027ef6 <mbedtls_mpi_read_binary+0x2a>
20027f0a:	4603      	mov	r3, r0
20027f0c:	4434      	add	r4, r6
20027f0e:	1af2      	subs	r2, r6, r3
20027f10:	4295      	cmp	r5, r2
20027f12:	d2f2      	bcs.n	20027efa <mbedtls_mpi_read_binary+0x2e>
20027f14:	f8d7 e008 	ldr.w	lr, [r7, #8]
20027f18:	f814 1d01 	ldrb.w	r1, [r4, #-1]!
20027f1c:	00da      	lsls	r2, r3, #3
20027f1e:	f023 0c03 	bic.w	ip, r3, #3
20027f22:	f002 0218 	and.w	r2, r2, #24
20027f26:	4091      	lsls	r1, r2
20027f28:	f85e 200c 	ldr.w	r2, [lr, ip]
20027f2c:	3301      	adds	r3, #1
20027f2e:	430a      	orrs	r2, r1
20027f30:	f84e 200c 	str.w	r2, [lr, ip]
20027f34:	e7eb      	b.n	20027f0e <mbedtls_mpi_read_binary+0x42>

20027f36 <mbedtls_mpi_write_binary>:
20027f36:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027f38:	4615      	mov	r5, r2
20027f3a:	4607      	mov	r7, r0
20027f3c:	460c      	mov	r4, r1
20027f3e:	f7ff ffbf 	bl	20027ec0 <mbedtls_mpi_size>
20027f42:	42a8      	cmp	r0, r5
20027f44:	4606      	mov	r6, r0
20027f46:	d816      	bhi.n	20027f76 <mbedtls_mpi_write_binary+0x40>
20027f48:	4620      	mov	r0, r4
20027f4a:	462a      	mov	r2, r5
20027f4c:	2100      	movs	r1, #0
20027f4e:	f002 fc8d 	bl	2002a86c <memset>
20027f52:	2300      	movs	r3, #0
20027f54:	442c      	add	r4, r5
20027f56:	42b3      	cmp	r3, r6
20027f58:	d101      	bne.n	20027f5e <mbedtls_mpi_write_binary+0x28>
20027f5a:	2000      	movs	r0, #0
20027f5c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027f5e:	68b8      	ldr	r0, [r7, #8]
20027f60:	f023 0203 	bic.w	r2, r3, #3
20027f64:	5882      	ldr	r2, [r0, r2]
20027f66:	00d9      	lsls	r1, r3, #3
20027f68:	f001 0118 	and.w	r1, r1, #24
20027f6c:	40ca      	lsrs	r2, r1
20027f6e:	f804 2d01 	strb.w	r2, [r4, #-1]!
20027f72:	3301      	adds	r3, #1
20027f74:	e7ef      	b.n	20027f56 <mbedtls_mpi_write_binary+0x20>
20027f76:	f06f 0007 	mvn.w	r0, #7
20027f7a:	e7ef      	b.n	20027f5c <mbedtls_mpi_write_binary+0x26>

20027f7c <mbedtls_mpi_shift_l>:
20027f7c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20027f7e:	4605      	mov	r5, r0
20027f80:	460e      	mov	r6, r1
20027f82:	094c      	lsrs	r4, r1, #5
20027f84:	f001 071f 	and.w	r7, r1, #31
20027f88:	f7ff ff7d 	bl	20027e86 <mbedtls_mpi_bitlen>
20027f8c:	686b      	ldr	r3, [r5, #4]
20027f8e:	4430      	add	r0, r6
20027f90:	ebb0 1f43 	cmp.w	r0, r3, lsl #5
20027f94:	d805      	bhi.n	20027fa2 <mbedtls_mpi_shift_l+0x26>
20027f96:	2e1f      	cmp	r6, #31
20027f98:	d811      	bhi.n	20027fbe <mbedtls_mpi_shift_l+0x42>
20027f9a:	2f00      	cmp	r7, #0
20027f9c:	d143      	bne.n	20028026 <mbedtls_mpi_shift_l+0xaa>
20027f9e:	2000      	movs	r0, #0
20027fa0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20027fa2:	f010 011f 	ands.w	r1, r0, #31
20027fa6:	bf18      	it	ne
20027fa8:	2101      	movne	r1, #1
20027faa:	eb01 1150 	add.w	r1, r1, r0, lsr #5
20027fae:	4628      	mov	r0, r5
20027fb0:	f7ff fee0 	bl	20027d74 <mbedtls_mpi_grow>
20027fb4:	2800      	cmp	r0, #0
20027fb6:	d0ee      	beq.n	20027f96 <mbedtls_mpi_shift_l+0x1a>
20027fb8:	f06f 000f 	mvn.w	r0, #15
20027fbc:	e7f0      	b.n	20027fa0 <mbedtls_mpi_shift_l+0x24>
20027fbe:	f06f 0003 	mvn.w	r0, #3
20027fc2:	686a      	ldr	r2, [r5, #4]
20027fc4:	4360      	muls	r0, r4
20027fc6:	4611      	mov	r1, r2
20027fc8:	0093      	lsls	r3, r2, #2
20027fca:	42a1      	cmp	r1, r4
20027fcc:	f1a3 0304 	sub.w	r3, r3, #4
20027fd0:	d80c      	bhi.n	20027fec <mbedtls_mpi_shift_l+0x70>
20027fd2:	1aa3      	subs	r3, r4, r2
20027fd4:	4294      	cmp	r4, r2
20027fd6:	bf88      	it	hi
20027fd8:	2300      	movhi	r3, #0
20027fda:	4413      	add	r3, r2
20027fdc:	2200      	movs	r2, #0
20027fde:	009b      	lsls	r3, r3, #2
20027fe0:	3b04      	subs	r3, #4
20027fe2:	1d19      	adds	r1, r3, #4
20027fe4:	d0d9      	beq.n	20027f9a <mbedtls_mpi_shift_l+0x1e>
20027fe6:	68a9      	ldr	r1, [r5, #8]
20027fe8:	50ca      	str	r2, [r1, r3]
20027fea:	e7f9      	b.n	20027fe0 <mbedtls_mpi_shift_l+0x64>
20027fec:	68ae      	ldr	r6, [r5, #8]
20027fee:	3901      	subs	r1, #1
20027ff0:	eb06 0c03 	add.w	ip, r6, r3
20027ff4:	f85c c000 	ldr.w	ip, [ip, r0]
20027ff8:	f846 c003 	str.w	ip, [r6, r3]
20027ffc:	e7e5      	b.n	20027fca <mbedtls_mpi_shift_l+0x4e>
20027ffe:	68ab      	ldr	r3, [r5, #8]
20028000:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
20028004:	fa01 f007 	lsl.w	r0, r1, r7
20028008:	f843 0024 	str.w	r0, [r3, r4, lsl #2]
2002800c:	68a8      	ldr	r0, [r5, #8]
2002800e:	f850 3024 	ldr.w	r3, [r0, r4, lsl #2]
20028012:	4313      	orrs	r3, r2
20028014:	f840 3024 	str.w	r3, [r0, r4, lsl #2]
20028018:	fa21 f206 	lsr.w	r2, r1, r6
2002801c:	3401      	adds	r4, #1
2002801e:	686b      	ldr	r3, [r5, #4]
20028020:	42a3      	cmp	r3, r4
20028022:	d8ec      	bhi.n	20027ffe <mbedtls_mpi_shift_l+0x82>
20028024:	e7bb      	b.n	20027f9e <mbedtls_mpi_shift_l+0x22>
20028026:	2200      	movs	r2, #0
20028028:	f1c7 0620 	rsb	r6, r7, #32
2002802c:	e7f7      	b.n	2002801e <mbedtls_mpi_shift_l+0xa2>

2002802e <mbedtls_mpi_shift_r>:
2002802e:	b4f0      	push	{r4, r5, r6, r7}
20028030:	6843      	ldr	r3, [r0, #4]
20028032:	094c      	lsrs	r4, r1, #5
20028034:	42a3      	cmp	r3, r4
20028036:	f001 021f 	and.w	r2, r1, #31
2002803a:	d301      	bcc.n	20028040 <mbedtls_mpi_shift_r+0x12>
2002803c:	d104      	bne.n	20028048 <mbedtls_mpi_shift_r+0x1a>
2002803e:	b392      	cbz	r2, 200280a6 <mbedtls_mpi_shift_r+0x78>
20028040:	bcf0      	pop	{r4, r5, r6, r7}
20028042:	2100      	movs	r1, #0
20028044:	f7ff beeb 	b.w	20027e1e <mbedtls_mpi_lset>
20028048:	291f      	cmp	r1, #31
2002804a:	d82e      	bhi.n	200280aa <mbedtls_mpi_shift_r+0x7c>
2002804c:	b9aa      	cbnz	r2, 2002807a <mbedtls_mpi_shift_r+0x4c>
2002804e:	bcf0      	pop	{r4, r5, r6, r7}
20028050:	2000      	movs	r0, #0
20028052:	4770      	bx	lr
20028054:	6885      	ldr	r5, [r0, #8]
20028056:	586e      	ldr	r6, [r5, r1]
20028058:	3104      	adds	r1, #4
2002805a:	f845 6023 	str.w	r6, [r5, r3, lsl #2]
2002805e:	3301      	adds	r3, #1
20028060:	6845      	ldr	r5, [r0, #4]
20028062:	1b2d      	subs	r5, r5, r4
20028064:	429d      	cmp	r5, r3
20028066:	d8f5      	bhi.n	20028054 <mbedtls_mpi_shift_r+0x26>
20028068:	2400      	movs	r4, #0
2002806a:	6841      	ldr	r1, [r0, #4]
2002806c:	4299      	cmp	r1, r3
2002806e:	d9ed      	bls.n	2002804c <mbedtls_mpi_shift_r+0x1e>
20028070:	6881      	ldr	r1, [r0, #8]
20028072:	f841 4023 	str.w	r4, [r1, r3, lsl #2]
20028076:	3301      	adds	r3, #1
20028078:	e7f7      	b.n	2002806a <mbedtls_mpi_shift_r+0x3c>
2002807a:	2400      	movs	r4, #0
2002807c:	6843      	ldr	r3, [r0, #4]
2002807e:	f1c2 0720 	rsb	r7, r2, #32
20028082:	3b01      	subs	r3, #1
20028084:	d3e3      	bcc.n	2002804e <mbedtls_mpi_shift_r+0x20>
20028086:	6881      	ldr	r1, [r0, #8]
20028088:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
2002808c:	fa25 f602 	lsr.w	r6, r5, r2
20028090:	f841 6023 	str.w	r6, [r1, r3, lsl #2]
20028094:	6886      	ldr	r6, [r0, #8]
20028096:	f856 1023 	ldr.w	r1, [r6, r3, lsl #2]
2002809a:	4321      	orrs	r1, r4
2002809c:	f846 1023 	str.w	r1, [r6, r3, lsl #2]
200280a0:	fa05 f407 	lsl.w	r4, r5, r7
200280a4:	e7ed      	b.n	20028082 <mbedtls_mpi_shift_r+0x54>
200280a6:	291f      	cmp	r1, #31
200280a8:	d9d1      	bls.n	2002804e <mbedtls_mpi_shift_r+0x20>
200280aa:	2300      	movs	r3, #0
200280ac:	00a1      	lsls	r1, r4, #2
200280ae:	e7d7      	b.n	20028060 <mbedtls_mpi_shift_r+0x32>

200280b0 <mbedtls_mpi_cmp_abs>:
200280b0:	b530      	push	{r4, r5, lr}
200280b2:	6842      	ldr	r2, [r0, #4]
200280b4:	b922      	cbnz	r2, 200280c0 <mbedtls_mpi_cmp_abs+0x10>
200280b6:	684b      	ldr	r3, [r1, #4]
200280b8:	b95b      	cbnz	r3, 200280d2 <mbedtls_mpi_cmp_abs+0x22>
200280ba:	b19a      	cbz	r2, 200280e4 <mbedtls_mpi_cmp_abs+0x34>
200280bc:	2001      	movs	r0, #1
200280be:	e015      	b.n	200280ec <mbedtls_mpi_cmp_abs+0x3c>
200280c0:	6883      	ldr	r3, [r0, #8]
200280c2:	eb03 0382 	add.w	r3, r3, r2, lsl #2
200280c6:	f853 3c04 	ldr.w	r3, [r3, #-4]
200280ca:	2b00      	cmp	r3, #0
200280cc:	d1f3      	bne.n	200280b6 <mbedtls_mpi_cmp_abs+0x6>
200280ce:	3a01      	subs	r2, #1
200280d0:	e7f0      	b.n	200280b4 <mbedtls_mpi_cmp_abs+0x4>
200280d2:	688c      	ldr	r4, [r1, #8]
200280d4:	eb04 0583 	add.w	r5, r4, r3, lsl #2
200280d8:	f855 5c04 	ldr.w	r5, [r5, #-4]
200280dc:	b90d      	cbnz	r5, 200280e2 <mbedtls_mpi_cmp_abs+0x32>
200280de:	3b01      	subs	r3, #1
200280e0:	e7ea      	b.n	200280b8 <mbedtls_mpi_cmp_abs+0x8>
200280e2:	b922      	cbnz	r2, 200280ee <mbedtls_mpi_cmp_abs+0x3e>
200280e4:	1e18      	subs	r0, r3, #0
200280e6:	bf18      	it	ne
200280e8:	2001      	movne	r0, #1
200280ea:	4240      	negs	r0, r0
200280ec:	bd30      	pop	{r4, r5, pc}
200280ee:	4293      	cmp	r3, r2
200280f0:	d3e4      	bcc.n	200280bc <mbedtls_mpi_cmp_abs+0xc>
200280f2:	d80e      	bhi.n	20028112 <mbedtls_mpi_cmp_abs+0x62>
200280f4:	3a01      	subs	r2, #1
200280f6:	6883      	ldr	r3, [r0, #8]
200280f8:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
200280fc:	f854 3022 	ldr.w	r3, [r4, r2, lsl #2]
20028100:	4299      	cmp	r1, r3
20028102:	d8db      	bhi.n	200280bc <mbedtls_mpi_cmp_abs+0xc>
20028104:	f102 32ff 	add.w	r2, r2, #4294967295
20028108:	d303      	bcc.n	20028112 <mbedtls_mpi_cmp_abs+0x62>
2002810a:	1c53      	adds	r3, r2, #1
2002810c:	d1f3      	bne.n	200280f6 <mbedtls_mpi_cmp_abs+0x46>
2002810e:	2000      	movs	r0, #0
20028110:	e7ec      	b.n	200280ec <mbedtls_mpi_cmp_abs+0x3c>
20028112:	f04f 30ff 	mov.w	r0, #4294967295
20028116:	e7e9      	b.n	200280ec <mbedtls_mpi_cmp_abs+0x3c>

20028118 <mpi_montmul>:
20028118:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002811c:	4615      	mov	r5, r2
2002811e:	b087      	sub	sp, #28
20028120:	9305      	str	r3, [sp, #20]
20028122:	9b10      	ldr	r3, [sp, #64]	@ 0x40
20028124:	4606      	mov	r6, r0
20028126:	685a      	ldr	r2, [r3, #4]
20028128:	686b      	ldr	r3, [r5, #4]
2002812a:	4689      	mov	r9, r1
2002812c:	3301      	adds	r3, #1
2002812e:	429a      	cmp	r2, r3
20028130:	d359      	bcc.n	200281e6 <mpi_montmul+0xce>
20028132:	9b10      	ldr	r3, [sp, #64]	@ 0x40
20028134:	6898      	ldr	r0, [r3, #8]
20028136:	2800      	cmp	r0, #0
20028138:	d055      	beq.n	200281e6 <mpi_montmul+0xce>
2002813a:	0092      	lsls	r2, r2, #2
2002813c:	2100      	movs	r1, #0
2002813e:	f002 fb95 	bl	2002a86c <memset>
20028142:	9b10      	ldr	r3, [sp, #64]	@ 0x40
20028144:	f8d5 8004 	ldr.w	r8, [r5, #4]
20028148:	f8d3 a008 	ldr.w	sl, [r3, #8]
2002814c:	f8d9 3004 	ldr.w	r3, [r9, #4]
20028150:	46d3      	mov	fp, sl
20028152:	4543      	cmp	r3, r8
20028154:	bf28      	it	cs
20028156:	4643      	movcs	r3, r8
20028158:	2400      	movs	r4, #0
2002815a:	9304      	str	r3, [sp, #16]
2002815c:	f108 0301 	add.w	r3, r8, #1
20028160:	009a      	lsls	r2, r3, #2
20028162:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
20028166:	9202      	str	r2, [sp, #8]
20028168:	9303      	str	r3, [sp, #12]
2002816a:	4544      	cmp	r4, r8
2002816c:	68b0      	ldr	r0, [r6, #8]
2002816e:	d118      	bne.n	200281a2 <mpi_montmul+0x8a>
20028170:	9b02      	ldr	r3, [sp, #8]
20028172:	1f19      	subs	r1, r3, #4
20028174:	461a      	mov	r2, r3
20028176:	4451      	add	r1, sl
20028178:	f002 fb92 	bl	2002a8a0 <memcpy>
2002817c:	4629      	mov	r1, r5
2002817e:	4630      	mov	r0, r6
20028180:	f7ff ff96 	bl	200280b0 <mbedtls_mpi_cmp_abs>
20028184:	3001      	adds	r0, #1
20028186:	68b1      	ldr	r1, [r6, #8]
20028188:	bf0c      	ite	eq
2002818a:	9b10      	ldreq	r3, [sp, #64]	@ 0x40
2002818c:	460a      	movne	r2, r1
2002818e:	4620      	mov	r0, r4
20028190:	bf14      	ite	ne
20028192:	68a9      	ldrne	r1, [r5, #8]
20028194:	689a      	ldreq	r2, [r3, #8]
20028196:	f7ff fc2c 	bl	200279f2 <mpi_sub_hlp>
2002819a:	2000      	movs	r0, #0
2002819c:	b007      	add	sp, #28
2002819e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200281a2:	f850 3024 	ldr.w	r3, [r0, r4, lsl #2]
200281a6:	f8d9 1008 	ldr.w	r1, [r9, #8]
200281aa:	9301      	str	r3, [sp, #4]
200281ac:	9a01      	ldr	r2, [sp, #4]
200281ae:	680b      	ldr	r3, [r1, #0]
200281b0:	f8db 7000 	ldr.w	r7, [fp]
200281b4:	9804      	ldr	r0, [sp, #16]
200281b6:	fb03 7702 	mla	r7, r3, r2, r7
200281ba:	9b05      	ldr	r3, [sp, #20]
200281bc:	3401      	adds	r4, #1
200281be:	435f      	muls	r7, r3
200281c0:	4613      	mov	r3, r2
200281c2:	465a      	mov	r2, fp
200281c4:	f7ff fc3e 	bl	20027a44 <mpi_mul_hlp>
200281c8:	465a      	mov	r2, fp
200281ca:	463b      	mov	r3, r7
200281cc:	4640      	mov	r0, r8
200281ce:	68a9      	ldr	r1, [r5, #8]
200281d0:	f7ff fc38 	bl	20027a44 <mpi_mul_hlp>
200281d4:	2200      	movs	r2, #0
200281d6:	9b01      	ldr	r3, [sp, #4]
200281d8:	f84b 3b04 	str.w	r3, [fp], #4
200281dc:	9b03      	ldr	r3, [sp, #12]
200281de:	f843 2f04 	str.w	r2, [r3, #4]!
200281e2:	9303      	str	r3, [sp, #12]
200281e4:	e7c1      	b.n	2002816a <mpi_montmul+0x52>
200281e6:	f06f 0003 	mvn.w	r0, #3
200281ea:	e7d7      	b.n	2002819c <mpi_montmul+0x84>

200281ec <mbedtls_mpi_cmp_mpi>:
200281ec:	4602      	mov	r2, r0
200281ee:	b530      	push	{r4, r5, lr}
200281f0:	6843      	ldr	r3, [r0, #4]
200281f2:	b923      	cbnz	r3, 200281fe <mbedtls_mpi_cmp_mpi+0x12>
200281f4:	6848      	ldr	r0, [r1, #4]
200281f6:	b958      	cbnz	r0, 20028210 <mbedtls_mpi_cmp_mpi+0x24>
200281f8:	2b00      	cmp	r3, #0
200281fa:	d136      	bne.n	2002826a <mbedtls_mpi_cmp_mpi+0x7e>
200281fc:	e02f      	b.n	2002825e <mbedtls_mpi_cmp_mpi+0x72>
200281fe:	6890      	ldr	r0, [r2, #8]
20028200:	eb00 0083 	add.w	r0, r0, r3, lsl #2
20028204:	f850 0c04 	ldr.w	r0, [r0, #-4]
20028208:	2800      	cmp	r0, #0
2002820a:	d1f3      	bne.n	200281f4 <mbedtls_mpi_cmp_mpi+0x8>
2002820c:	3b01      	subs	r3, #1
2002820e:	e7f0      	b.n	200281f2 <mbedtls_mpi_cmp_mpi+0x6>
20028210:	688c      	ldr	r4, [r1, #8]
20028212:	eb04 0580 	add.w	r5, r4, r0, lsl #2
20028216:	f855 5c04 	ldr.w	r5, [r5, #-4]
2002821a:	bb15      	cbnz	r5, 20028262 <mbedtls_mpi_cmp_mpi+0x76>
2002821c:	3801      	subs	r0, #1
2002821e:	e7ea      	b.n	200281f6 <mbedtls_mpi_cmp_mpi+0xa>
20028220:	680d      	ldr	r5, [r1, #0]
20028222:	d202      	bcs.n	2002822a <mbedtls_mpi_cmp_mpi+0x3e>
20028224:	6808      	ldr	r0, [r1, #0]
20028226:	4240      	negs	r0, r0
20028228:	e020      	b.n	2002826c <mbedtls_mpi_cmp_mpi+0x80>
2002822a:	6810      	ldr	r0, [r2, #0]
2002822c:	2800      	cmp	r0, #0
2002822e:	dd03      	ble.n	20028238 <mbedtls_mpi_cmp_mpi+0x4c>
20028230:	2d00      	cmp	r5, #0
20028232:	da07      	bge.n	20028244 <mbedtls_mpi_cmp_mpi+0x58>
20028234:	2001      	movs	r0, #1
20028236:	e019      	b.n	2002826c <mbedtls_mpi_cmp_mpi+0x80>
20028238:	2d00      	cmp	r5, #0
2002823a:	dd03      	ble.n	20028244 <mbedtls_mpi_cmp_mpi+0x58>
2002823c:	b110      	cbz	r0, 20028244 <mbedtls_mpi_cmp_mpi+0x58>
2002823e:	f04f 30ff 	mov.w	r0, #4294967295
20028242:	e013      	b.n	2002826c <mbedtls_mpi_cmp_mpi+0x80>
20028244:	3b01      	subs	r3, #1
20028246:	6891      	ldr	r1, [r2, #8]
20028248:	f851 5023 	ldr.w	r5, [r1, r3, lsl #2]
2002824c:	f854 1023 	ldr.w	r1, [r4, r3, lsl #2]
20028250:	428d      	cmp	r5, r1
20028252:	d80b      	bhi.n	2002826c <mbedtls_mpi_cmp_mpi+0x80>
20028254:	f103 33ff 	add.w	r3, r3, #4294967295
20028258:	d3e5      	bcc.n	20028226 <mbedtls_mpi_cmp_mpi+0x3a>
2002825a:	1c59      	adds	r1, r3, #1
2002825c:	d1f3      	bne.n	20028246 <mbedtls_mpi_cmp_mpi+0x5a>
2002825e:	2000      	movs	r0, #0
20028260:	e004      	b.n	2002826c <mbedtls_mpi_cmp_mpi+0x80>
20028262:	2b00      	cmp	r3, #0
20028264:	d0de      	beq.n	20028224 <mbedtls_mpi_cmp_mpi+0x38>
20028266:	4283      	cmp	r3, r0
20028268:	d9da      	bls.n	20028220 <mbedtls_mpi_cmp_mpi+0x34>
2002826a:	6810      	ldr	r0, [r2, #0]
2002826c:	bd30      	pop	{r4, r5, pc}

2002826e <mbedtls_mpi_cmp_int>:
2002826e:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20028270:	ea81 73e1 	eor.w	r3, r1, r1, asr #31
20028274:	eba3 73e1 	sub.w	r3, r3, r1, asr #31
20028278:	2900      	cmp	r1, #0
2002827a:	9300      	str	r3, [sp, #0]
2002827c:	bfac      	ite	ge
2002827e:	2301      	movge	r3, #1
20028280:	f04f 33ff 	movlt.w	r3, #4294967295
20028284:	9301      	str	r3, [sp, #4]
20028286:	2301      	movs	r3, #1
20028288:	a901      	add	r1, sp, #4
2002828a:	9302      	str	r3, [sp, #8]
2002828c:	f8cd d00c 	str.w	sp, [sp, #12]
20028290:	f7ff ffac 	bl	200281ec <mbedtls_mpi_cmp_mpi>
20028294:	b005      	add	sp, #20
20028296:	f85d fb04 	ldr.w	pc, [sp], #4

2002829a <mbedtls_mpi_add_abs>:
2002829a:	4290      	cmp	r0, r2
2002829c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
200282a0:	4606      	mov	r6, r0
200282a2:	460c      	mov	r4, r1
200282a4:	4615      	mov	r5, r2
200282a6:	d002      	beq.n	200282ae <mbedtls_mpi_add_abs+0x14>
200282a8:	4288      	cmp	r0, r1
200282aa:	d12c      	bne.n	20028306 <mbedtls_mpi_add_abs+0x6c>
200282ac:	462c      	mov	r4, r5
200282ae:	2301      	movs	r3, #1
200282b0:	6033      	str	r3, [r6, #0]
200282b2:	6865      	ldr	r5, [r4, #4]
200282b4:	bb85      	cbnz	r5, 20028318 <mbedtls_mpi_add_abs+0x7e>
200282b6:	4629      	mov	r1, r5
200282b8:	4630      	mov	r0, r6
200282ba:	f7ff fd5b 	bl	20027d74 <mbedtls_mpi_grow>
200282be:	4607      	mov	r7, r0
200282c0:	bb28      	cbnz	r0, 2002830e <mbedtls_mpi_add_abs+0x74>
200282c2:	68b3      	ldr	r3, [r6, #8]
200282c4:	68a1      	ldr	r1, [r4, #8]
200282c6:	469c      	mov	ip, r3
200282c8:	4604      	mov	r4, r0
200282ca:	42a8      	cmp	r0, r5
200282cc:	d12d      	bne.n	2002832a <mbedtls_mpi_add_abs+0x90>
200282ce:	eb03 0385 	add.w	r3, r3, r5, lsl #2
200282d2:	b1f4      	cbz	r4, 20028312 <mbedtls_mpi_add_abs+0x78>
200282d4:	6872      	ldr	r2, [r6, #4]
200282d6:	f105 0801 	add.w	r8, r5, #1
200282da:	42aa      	cmp	r2, r5
200282dc:	d807      	bhi.n	200282ee <mbedtls_mpi_add_abs+0x54>
200282de:	4641      	mov	r1, r8
200282e0:	4630      	mov	r0, r6
200282e2:	f7ff fd47 	bl	20027d74 <mbedtls_mpi_grow>
200282e6:	b990      	cbnz	r0, 2002830e <mbedtls_mpi_add_abs+0x74>
200282e8:	68b3      	ldr	r3, [r6, #8]
200282ea:	eb03 0385 	add.w	r3, r3, r5, lsl #2
200282ee:	681a      	ldr	r2, [r3, #0]
200282f0:	4645      	mov	r5, r8
200282f2:	1912      	adds	r2, r2, r4
200282f4:	bf2c      	ite	cs
200282f6:	2401      	movcs	r4, #1
200282f8:	2400      	movcc	r4, #0
200282fa:	3c00      	subs	r4, #0
200282fc:	bf18      	it	ne
200282fe:	2401      	movne	r4, #1
20028300:	f843 2b04 	str.w	r2, [r3], #4
20028304:	e7e5      	b.n	200282d2 <mbedtls_mpi_add_abs+0x38>
20028306:	f7ff fd61 	bl	20027dcc <mbedtls_mpi_copy>
2002830a:	2800      	cmp	r0, #0
2002830c:	d0ce      	beq.n	200282ac <mbedtls_mpi_add_abs+0x12>
2002830e:	f06f 070f 	mvn.w	r7, #15
20028312:	4638      	mov	r0, r7
20028314:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20028318:	68a3      	ldr	r3, [r4, #8]
2002831a:	eb03 0385 	add.w	r3, r3, r5, lsl #2
2002831e:	f853 3c04 	ldr.w	r3, [r3, #-4]
20028322:	2b00      	cmp	r3, #0
20028324:	d1c7      	bne.n	200282b6 <mbedtls_mpi_add_abs+0x1c>
20028326:	3d01      	subs	r5, #1
20028328:	e7c4      	b.n	200282b4 <mbedtls_mpi_add_abs+0x1a>
2002832a:	f8dc 2000 	ldr.w	r2, [ip]
2002832e:	1912      	adds	r2, r2, r4
20028330:	bf2c      	ite	cs
20028332:	f04f 0e01 	movcs.w	lr, #1
20028336:	f04f 0e00 	movcc.w	lr, #0
2002833a:	f851 4020 	ldr.w	r4, [r1, r0, lsl #2]
2002833e:	3001      	adds	r0, #1
20028340:	1912      	adds	r2, r2, r4
20028342:	f84c 2b04 	str.w	r2, [ip], #4
20028346:	f14e 0400 	adc.w	r4, lr, #0
2002834a:	e7be      	b.n	200282ca <mbedtls_mpi_add_abs+0x30>

2002834c <mbedtls_mpi_sub_abs>:
2002834c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
2002834e:	460e      	mov	r6, r1
20028350:	4605      	mov	r5, r0
20028352:	4611      	mov	r1, r2
20028354:	4630      	mov	r0, r6
20028356:	4614      	mov	r4, r2
20028358:	f7ff feaa 	bl	200280b0 <mbedtls_mpi_cmp_abs>
2002835c:	3001      	adds	r0, #1
2002835e:	d02f      	beq.n	200283c0 <mbedtls_mpi_sub_abs+0x74>
20028360:	2300      	movs	r3, #0
20028362:	2201      	movs	r2, #1
20028364:	42ac      	cmp	r4, r5
20028366:	e9cd 2301 	strd	r2, r3, [sp, #4]
2002836a:	9303      	str	r3, [sp, #12]
2002836c:	d10d      	bne.n	2002838a <mbedtls_mpi_sub_abs+0x3e>
2002836e:	4621      	mov	r1, r4
20028370:	a801      	add	r0, sp, #4
20028372:	f7ff fd2b 	bl	20027dcc <mbedtls_mpi_copy>
20028376:	b138      	cbz	r0, 20028388 <mbedtls_mpi_sub_abs+0x3c>
20028378:	f06f 040f 	mvn.w	r4, #15
2002837c:	a801      	add	r0, sp, #4
2002837e:	f7ff fce4 	bl	20027d4a <mbedtls_mpi_free>
20028382:	4620      	mov	r0, r4
20028384:	b004      	add	sp, #16
20028386:	bd70      	pop	{r4, r5, r6, pc}
20028388:	ac01      	add	r4, sp, #4
2002838a:	42ae      	cmp	r6, r5
2002838c:	d109      	bne.n	200283a2 <mbedtls_mpi_sub_abs+0x56>
2002838e:	2301      	movs	r3, #1
20028390:	602b      	str	r3, [r5, #0]
20028392:	e9d4 0101 	ldrd	r0, r1, [r4, #4]
20028396:	b958      	cbnz	r0, 200283b0 <mbedtls_mpi_sub_abs+0x64>
20028398:	68aa      	ldr	r2, [r5, #8]
2002839a:	f7ff fb2a 	bl	200279f2 <mpi_sub_hlp>
2002839e:	2400      	movs	r4, #0
200283a0:	e7ec      	b.n	2002837c <mbedtls_mpi_sub_abs+0x30>
200283a2:	4631      	mov	r1, r6
200283a4:	4628      	mov	r0, r5
200283a6:	f7ff fd11 	bl	20027dcc <mbedtls_mpi_copy>
200283aa:	2800      	cmp	r0, #0
200283ac:	d0ef      	beq.n	2002838e <mbedtls_mpi_sub_abs+0x42>
200283ae:	e7e3      	b.n	20028378 <mbedtls_mpi_sub_abs+0x2c>
200283b0:	eb01 0380 	add.w	r3, r1, r0, lsl #2
200283b4:	f853 3c04 	ldr.w	r3, [r3, #-4]
200283b8:	2b00      	cmp	r3, #0
200283ba:	d1ed      	bne.n	20028398 <mbedtls_mpi_sub_abs+0x4c>
200283bc:	3801      	subs	r0, #1
200283be:	e7ea      	b.n	20028396 <mbedtls_mpi_sub_abs+0x4a>
200283c0:	f06f 0409 	mvn.w	r4, #9
200283c4:	e7dd      	b.n	20028382 <mbedtls_mpi_sub_abs+0x36>

200283c6 <mbedtls_mpi_add_mpi>:
200283c6:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200283c8:	680d      	ldr	r5, [r1, #0]
200283ca:	6813      	ldr	r3, [r2, #0]
200283cc:	4604      	mov	r4, r0
200283ce:	436b      	muls	r3, r5
200283d0:	460f      	mov	r7, r1
200283d2:	4616      	mov	r6, r2
200283d4:	d516      	bpl.n	20028404 <mbedtls_mpi_add_mpi+0x3e>
200283d6:	4611      	mov	r1, r2
200283d8:	4638      	mov	r0, r7
200283da:	f7ff fe69 	bl	200280b0 <mbedtls_mpi_cmp_abs>
200283de:	3001      	adds	r0, #1
200283e0:	d007      	beq.n	200283f2 <mbedtls_mpi_add_mpi+0x2c>
200283e2:	4632      	mov	r2, r6
200283e4:	4639      	mov	r1, r7
200283e6:	4620      	mov	r0, r4
200283e8:	f7ff ffb0 	bl	2002834c <mbedtls_mpi_sub_abs>
200283ec:	b900      	cbnz	r0, 200283f0 <mbedtls_mpi_add_mpi+0x2a>
200283ee:	6025      	str	r5, [r4, #0]
200283f0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200283f2:	463a      	mov	r2, r7
200283f4:	4631      	mov	r1, r6
200283f6:	4620      	mov	r0, r4
200283f8:	f7ff ffa8 	bl	2002834c <mbedtls_mpi_sub_abs>
200283fc:	2800      	cmp	r0, #0
200283fe:	d1f7      	bne.n	200283f0 <mbedtls_mpi_add_mpi+0x2a>
20028400:	426d      	negs	r5, r5
20028402:	e7f4      	b.n	200283ee <mbedtls_mpi_add_mpi+0x28>
20028404:	f7ff ff49 	bl	2002829a <mbedtls_mpi_add_abs>
20028408:	2800      	cmp	r0, #0
2002840a:	d0f0      	beq.n	200283ee <mbedtls_mpi_add_mpi+0x28>
2002840c:	f06f 000f 	mvn.w	r0, #15
20028410:	e7ee      	b.n	200283f0 <mbedtls_mpi_add_mpi+0x2a>

20028412 <mbedtls_mpi_sub_mpi>:
20028412:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
20028414:	680d      	ldr	r5, [r1, #0]
20028416:	6813      	ldr	r3, [r2, #0]
20028418:	4604      	mov	r4, r0
2002841a:	436b      	muls	r3, r5
2002841c:	2b00      	cmp	r3, #0
2002841e:	460f      	mov	r7, r1
20028420:	4616      	mov	r6, r2
20028422:	dd16      	ble.n	20028452 <mbedtls_mpi_sub_mpi+0x40>
20028424:	4611      	mov	r1, r2
20028426:	4638      	mov	r0, r7
20028428:	f7ff fe42 	bl	200280b0 <mbedtls_mpi_cmp_abs>
2002842c:	3001      	adds	r0, #1
2002842e:	d007      	beq.n	20028440 <mbedtls_mpi_sub_mpi+0x2e>
20028430:	4632      	mov	r2, r6
20028432:	4639      	mov	r1, r7
20028434:	4620      	mov	r0, r4
20028436:	f7ff ff89 	bl	2002834c <mbedtls_mpi_sub_abs>
2002843a:	b900      	cbnz	r0, 2002843e <mbedtls_mpi_sub_mpi+0x2c>
2002843c:	6025      	str	r5, [r4, #0]
2002843e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20028440:	463a      	mov	r2, r7
20028442:	4631      	mov	r1, r6
20028444:	4620      	mov	r0, r4
20028446:	f7ff ff81 	bl	2002834c <mbedtls_mpi_sub_abs>
2002844a:	2800      	cmp	r0, #0
2002844c:	d1f7      	bne.n	2002843e <mbedtls_mpi_sub_mpi+0x2c>
2002844e:	426d      	negs	r5, r5
20028450:	e7f4      	b.n	2002843c <mbedtls_mpi_sub_mpi+0x2a>
20028452:	f7ff ff22 	bl	2002829a <mbedtls_mpi_add_abs>
20028456:	2800      	cmp	r0, #0
20028458:	d0f0      	beq.n	2002843c <mbedtls_mpi_sub_mpi+0x2a>
2002845a:	f06f 000f 	mvn.w	r0, #15
2002845e:	e7ee      	b.n	2002843e <mbedtls_mpi_sub_mpi+0x2c>

20028460 <mbedtls_mpi_sub_int>:
20028460:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20028462:	ea82 73e2 	eor.w	r3, r2, r2, asr #31
20028466:	eba3 73e2 	sub.w	r3, r3, r2, asr #31
2002846a:	2a00      	cmp	r2, #0
2002846c:	9300      	str	r3, [sp, #0]
2002846e:	bfac      	ite	ge
20028470:	2301      	movge	r3, #1
20028472:	f04f 33ff 	movlt.w	r3, #4294967295
20028476:	9301      	str	r3, [sp, #4]
20028478:	2301      	movs	r3, #1
2002847a:	aa01      	add	r2, sp, #4
2002847c:	9302      	str	r3, [sp, #8]
2002847e:	f8cd d00c 	str.w	sp, [sp, #12]
20028482:	f7ff ffc6 	bl	20028412 <mbedtls_mpi_sub_mpi>
20028486:	b005      	add	sp, #20
20028488:	f85d fb04 	ldr.w	pc, [sp], #4

2002848c <mbedtls_mpi_mul_mpi>:
2002848c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
20028490:	2300      	movs	r3, #0
20028492:	4615      	mov	r5, r2
20028494:	2201      	movs	r2, #1
20028496:	b087      	sub	sp, #28
20028498:	4288      	cmp	r0, r1
2002849a:	4607      	mov	r7, r0
2002849c:	460e      	mov	r6, r1
2002849e:	e9cd 2300 	strd	r2, r3, [sp]
200284a2:	e9cd 3202 	strd	r3, r2, [sp, #8]
200284a6:	e9cd 3304 	strd	r3, r3, [sp, #16]
200284aa:	d110      	bne.n	200284ce <mbedtls_mpi_mul_mpi+0x42>
200284ac:	4668      	mov	r0, sp
200284ae:	f7ff fc8d 	bl	20027dcc <mbedtls_mpi_copy>
200284b2:	b158      	cbz	r0, 200284cc <mbedtls_mpi_mul_mpi+0x40>
200284b4:	f06f 090f 	mvn.w	r9, #15
200284b8:	a803      	add	r0, sp, #12
200284ba:	f7ff fc46 	bl	20027d4a <mbedtls_mpi_free>
200284be:	4668      	mov	r0, sp
200284c0:	f7ff fc43 	bl	20027d4a <mbedtls_mpi_free>
200284c4:	4648      	mov	r0, r9
200284c6:	b007      	add	sp, #28
200284c8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
200284cc:	466e      	mov	r6, sp
200284ce:	42af      	cmp	r7, r5
200284d0:	d106      	bne.n	200284e0 <mbedtls_mpi_mul_mpi+0x54>
200284d2:	4639      	mov	r1, r7
200284d4:	a803      	add	r0, sp, #12
200284d6:	f7ff fc79 	bl	20027dcc <mbedtls_mpi_copy>
200284da:	2800      	cmp	r0, #0
200284dc:	d1ea      	bne.n	200284b4 <mbedtls_mpi_mul_mpi+0x28>
200284de:	ad03      	add	r5, sp, #12
200284e0:	f8d6 8004 	ldr.w	r8, [r6, #4]
200284e4:	f1b8 0f00 	cmp.w	r8, #0
200284e8:	d116      	bne.n	20028518 <mbedtls_mpi_mul_mpi+0x8c>
200284ea:	686c      	ldr	r4, [r5, #4]
200284ec:	b9f4      	cbnz	r4, 2002852c <mbedtls_mpi_mul_mpi+0xa0>
200284ee:	eb08 0104 	add.w	r1, r8, r4
200284f2:	4638      	mov	r0, r7
200284f4:	f7ff fc3e 	bl	20027d74 <mbedtls_mpi_grow>
200284f8:	4601      	mov	r1, r0
200284fa:	2800      	cmp	r0, #0
200284fc:	d1da      	bne.n	200284b4 <mbedtls_mpi_mul_mpi+0x28>
200284fe:	4638      	mov	r0, r7
20028500:	f7ff fc8d 	bl	20027e1e <mbedtls_mpi_lset>
20028504:	4681      	mov	r9, r0
20028506:	2800      	cmp	r0, #0
20028508:	d1d4      	bne.n	200284b4 <mbedtls_mpi_mul_mpi+0x28>
2002850a:	3c01      	subs	r4, #1
2002850c:	d217      	bcs.n	2002853e <mbedtls_mpi_mul_mpi+0xb2>
2002850e:	6833      	ldr	r3, [r6, #0]
20028510:	682a      	ldr	r2, [r5, #0]
20028512:	4353      	muls	r3, r2
20028514:	603b      	str	r3, [r7, #0]
20028516:	e7cf      	b.n	200284b8 <mbedtls_mpi_mul_mpi+0x2c>
20028518:	68b3      	ldr	r3, [r6, #8]
2002851a:	eb03 0388 	add.w	r3, r3, r8, lsl #2
2002851e:	f853 3c04 	ldr.w	r3, [r3, #-4]
20028522:	2b00      	cmp	r3, #0
20028524:	d1e1      	bne.n	200284ea <mbedtls_mpi_mul_mpi+0x5e>
20028526:	f108 38ff 	add.w	r8, r8, #4294967295
2002852a:	e7db      	b.n	200284e4 <mbedtls_mpi_mul_mpi+0x58>
2002852c:	68ab      	ldr	r3, [r5, #8]
2002852e:	eb03 0384 	add.w	r3, r3, r4, lsl #2
20028532:	f853 3c04 	ldr.w	r3, [r3, #-4]
20028536:	2b00      	cmp	r3, #0
20028538:	d1d9      	bne.n	200284ee <mbedtls_mpi_mul_mpi+0x62>
2002853a:	3c01      	subs	r4, #1
2002853c:	e7d6      	b.n	200284ec <mbedtls_mpi_mul_mpi+0x60>
2002853e:	68ab      	ldr	r3, [r5, #8]
20028540:	68ba      	ldr	r2, [r7, #8]
20028542:	4640      	mov	r0, r8
20028544:	f853 3024 	ldr.w	r3, [r3, r4, lsl #2]
20028548:	68b1      	ldr	r1, [r6, #8]
2002854a:	eb02 0284 	add.w	r2, r2, r4, lsl #2
2002854e:	f7ff fa79 	bl	20027a44 <mpi_mul_hlp>
20028552:	e7da      	b.n	2002850a <mbedtls_mpi_mul_mpi+0x7e>

20028554 <mbedtls_mpi_mul_int>:
20028554:	b51f      	push	{r0, r1, r2, r3, r4, lr}
20028556:	2301      	movs	r3, #1
20028558:	9200      	str	r2, [sp, #0]
2002855a:	aa01      	add	r2, sp, #4
2002855c:	e9cd 3301 	strd	r3, r3, [sp, #4]
20028560:	f8cd d00c 	str.w	sp, [sp, #12]
20028564:	f7ff ff92 	bl	2002848c <mbedtls_mpi_mul_mpi>
20028568:	b005      	add	sp, #20
2002856a:	f85d fb04 	ldr.w	pc, [sp], #4

2002856e <mbedtls_mpi_div_mpi>:
2002856e:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20028572:	b09f      	sub	sp, #124	@ 0x7c
20028574:	e9cd 1203 	strd	r1, r2, [sp, #12]
20028578:	9005      	str	r0, [sp, #20]
2002857a:	2100      	movs	r1, #0
2002857c:	4618      	mov	r0, r3
2002857e:	9309      	str	r3, [sp, #36]	@ 0x24
20028580:	f7ff fe75 	bl	2002826e <mbedtls_mpi_cmp_int>
20028584:	2800      	cmp	r0, #0
20028586:	f000 81f3 	beq.w	20028970 <mbedtls_mpi_div_mpi+0x402>
2002858a:	2501      	movs	r5, #1
2002858c:	2400      	movs	r4, #0
2002858e:	9909      	ldr	r1, [sp, #36]	@ 0x24
20028590:	9804      	ldr	r0, [sp, #16]
20028592:	e9cd 5418 	strd	r5, r4, [sp, #96]	@ 0x60
20028596:	e9cd 541b 	strd	r5, r4, [sp, #108]	@ 0x6c
2002859a:	950f      	str	r5, [sp, #60]	@ 0x3c
2002859c:	9512      	str	r5, [sp, #72]	@ 0x48
2002859e:	9515      	str	r5, [sp, #84]	@ 0x54
200285a0:	9416      	str	r4, [sp, #88]	@ 0x58
200285a2:	f7ff fd85 	bl	200280b0 <mbedtls_mpi_cmp_abs>
200285a6:	3001      	adds	r0, #1
200285a8:	d11f      	bne.n	200285ea <mbedtls_mpi_div_mpi+0x7c>
200285aa:	9b05      	ldr	r3, [sp, #20]
200285ac:	b933      	cbnz	r3, 200285bc <mbedtls_mpi_div_mpi+0x4e>
200285ae:	9b03      	ldr	r3, [sp, #12]
200285b0:	b9a3      	cbnz	r3, 200285dc <mbedtls_mpi_div_mpi+0x6e>
200285b2:	2100      	movs	r1, #0
200285b4:	4608      	mov	r0, r1
200285b6:	b01f      	add	sp, #124	@ 0x7c
200285b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
200285bc:	4621      	mov	r1, r4
200285be:	9805      	ldr	r0, [sp, #20]
200285c0:	f7ff fc2d 	bl	20027e1e <mbedtls_mpi_lset>
200285c4:	2800      	cmp	r0, #0
200285c6:	d0f2      	beq.n	200285ae <mbedtls_mpi_div_mpi+0x40>
200285c8:	2400      	movs	r4, #0
200285ca:	4625      	mov	r5, r4
200285cc:	46a1      	mov	r9, r4
200285ce:	46a0      	mov	r8, r4
200285d0:	4626      	mov	r6, r4
200285d2:	4627      	mov	r7, r4
200285d4:	9402      	str	r4, [sp, #8]
200285d6:	f06f 010f 	mvn.w	r1, #15
200285da:	e0ef      	b.n	200287bc <mbedtls_mpi_div_mpi+0x24e>
200285dc:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
200285e0:	f7ff fbf4 	bl	20027dcc <mbedtls_mpi_copy>
200285e4:	2800      	cmp	r0, #0
200285e6:	d1ef      	bne.n	200285c8 <mbedtls_mpi_div_mpi+0x5a>
200285e8:	e7e3      	b.n	200285b2 <mbedtls_mpi_div_mpi+0x44>
200285ea:	9904      	ldr	r1, [sp, #16]
200285ec:	a80f      	add	r0, sp, #60	@ 0x3c
200285ee:	e9cd 4410 	strd	r4, r4, [sp, #64]	@ 0x40
200285f2:	f7ff fbeb 	bl	20027dcc <mbedtls_mpi_copy>
200285f6:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
200285fa:	4682      	mov	sl, r0
200285fc:	2800      	cmp	r0, #0
200285fe:	f040 81a9 	bne.w	20028954 <mbedtls_mpi_div_mpi+0x3e6>
20028602:	e9cd 0013 	strd	r0, r0, [sp, #76]	@ 0x4c
20028606:	9909      	ldr	r1, [sp, #36]	@ 0x24
20028608:	a812      	add	r0, sp, #72	@ 0x48
2002860a:	f7ff fbdf 	bl	20027dcc <mbedtls_mpi_copy>
2002860e:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
20028612:	4604      	mov	r4, r0
20028614:	2800      	cmp	r0, #0
20028616:	f040 81a2 	bne.w	2002895e <mbedtls_mpi_div_mpi+0x3f0>
2002861a:	9b04      	ldr	r3, [sp, #16]
2002861c:	9017      	str	r0, [sp, #92]	@ 0x5c
2002861e:	6859      	ldr	r1, [r3, #4]
20028620:	a815      	add	r0, sp, #84	@ 0x54
20028622:	3102      	adds	r1, #2
20028624:	9512      	str	r5, [sp, #72]	@ 0x48
20028626:	950f      	str	r5, [sp, #60]	@ 0x3c
20028628:	f7ff fba4 	bl	20027d74 <mbedtls_mpi_grow>
2002862c:	4605      	mov	r5, r0
2002862e:	b118      	cbz	r0, 20028638 <mbedtls_mpi_div_mpi+0xca>
20028630:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
20028632:	9302      	str	r3, [sp, #8]
20028634:	4625      	mov	r5, r4
20028636:	e7ce      	b.n	200285d6 <mbedtls_mpi_div_mpi+0x68>
20028638:	4601      	mov	r1, r0
2002863a:	a815      	add	r0, sp, #84	@ 0x54
2002863c:	f7ff fbef 	bl	20027e1e <mbedtls_mpi_lset>
20028640:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
20028642:	4604      	mov	r4, r0
20028644:	9302      	str	r3, [sp, #8]
20028646:	2800      	cmp	r0, #0
20028648:	f040 818e 	bne.w	20028968 <mbedtls_mpi_div_mpi+0x3fa>
2002864c:	901a      	str	r0, [sp, #104]	@ 0x68
2002864e:	2102      	movs	r1, #2
20028650:	a818      	add	r0, sp, #96	@ 0x60
20028652:	f7ff fb8f 	bl	20027d74 <mbedtls_mpi_grow>
20028656:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028658:	2800      	cmp	r0, #0
2002865a:	d1bc      	bne.n	200285d6 <mbedtls_mpi_div_mpi+0x68>
2002865c:	901d      	str	r0, [sp, #116]	@ 0x74
2002865e:	2103      	movs	r1, #3
20028660:	a81b      	add	r0, sp, #108	@ 0x6c
20028662:	f7ff fb87 	bl	20027d74 <mbedtls_mpi_grow>
20028666:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
20028668:	4683      	mov	fp, r0
2002866a:	2800      	cmp	r0, #0
2002866c:	d1b3      	bne.n	200285d6 <mbedtls_mpi_div_mpi+0x68>
2002866e:	a812      	add	r0, sp, #72	@ 0x48
20028670:	f7ff fc09 	bl	20027e86 <mbedtls_mpi_bitlen>
20028674:	f000 001f 	and.w	r0, r0, #31
20028678:	281f      	cmp	r0, #31
2002867a:	f000 808a 	beq.w	20028792 <mbedtls_mpi_div_mpi+0x224>
2002867e:	f1c0 031f 	rsb	r3, r0, #31
20028682:	4619      	mov	r1, r3
20028684:	a80f      	add	r0, sp, #60	@ 0x3c
20028686:	9306      	str	r3, [sp, #24]
20028688:	f7ff fc78 	bl	20027f7c <mbedtls_mpi_shift_l>
2002868c:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028690:	2800      	cmp	r0, #0
20028692:	d1a0      	bne.n	200285d6 <mbedtls_mpi_div_mpi+0x68>
20028694:	9906      	ldr	r1, [sp, #24]
20028696:	a812      	add	r0, sp, #72	@ 0x48
20028698:	f7ff fc70 	bl	20027f7c <mbedtls_mpi_shift_l>
2002869c:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
200286a0:	2800      	cmp	r0, #0
200286a2:	d198      	bne.n	200285d6 <mbedtls_mpi_div_mpi+0x68>
200286a4:	46ba      	mov	sl, r7
200286a6:	f8cd 8020 	str.w	r8, [sp, #32]
200286aa:	eba7 0b08 	sub.w	fp, r7, r8
200286ae:	ea4f 134b 	mov.w	r3, fp, lsl #5
200286b2:	4619      	mov	r1, r3
200286b4:	a812      	add	r0, sp, #72	@ 0x48
200286b6:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200286ba:	9301      	str	r3, [sp, #4]
200286bc:	f7ff fc5e 	bl	20027f7c <mbedtls_mpi_shift_l>
200286c0:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
200286c4:	2800      	cmp	r0, #0
200286c6:	d186      	bne.n	200285d6 <mbedtls_mpi_div_mpi+0x68>
200286c8:	ea4f 038b 	mov.w	r3, fp, lsl #2
200286cc:	930b      	str	r3, [sp, #44]	@ 0x2c
200286ce:	9b02      	ldr	r3, [sp, #8]
200286d0:	eb03 0b8b 	add.w	fp, r3, fp, lsl #2
200286d4:	a912      	add	r1, sp, #72	@ 0x48
200286d6:	a80f      	add	r0, sp, #60	@ 0x3c
200286d8:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
200286dc:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200286e0:	f7ff fd84 	bl	200281ec <mbedtls_mpi_cmp_mpi>
200286e4:	2800      	cmp	r0, #0
200286e6:	da5a      	bge.n	2002879e <mbedtls_mpi_div_mpi+0x230>
200286e8:	9901      	ldr	r1, [sp, #4]
200286ea:	a812      	add	r0, sp, #72	@ 0x48
200286ec:	f7ff fc9f 	bl	2002802e <mbedtls_mpi_shift_r>
200286f0:	e9dd 8913 	ldrd	r8, r9, [sp, #76]	@ 0x4c
200286f4:	2800      	cmp	r0, #0
200286f6:	f47f af6e 	bne.w	200285d6 <mbedtls_mpi_div_mpi+0x68>
200286fa:	f10a 33ff 	add.w	r3, sl, #4294967295
200286fe:	9301      	str	r3, [sp, #4]
20028700:	9b08      	ldr	r3, [sp, #32]
20028702:	9a02      	ldr	r2, [sp, #8]
20028704:	3b01      	subs	r3, #1
20028706:	9307      	str	r3, [sp, #28]
20028708:	eb09 0383 	add.w	r3, r9, r3, lsl #2
2002870c:	930a      	str	r3, [sp, #40]	@ 0x28
2002870e:	9b08      	ldr	r3, [sp, #32]
20028710:	f103 4380 	add.w	r3, r3, #1073741824	@ 0x40000000
20028714:	3b02      	subs	r3, #2
20028716:	eb09 0383 	add.w	r3, r9, r3, lsl #2
2002871a:	930c      	str	r3, [sp, #48]	@ 0x30
2002871c:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
2002871e:	4413      	add	r3, r2
20028720:	469a      	mov	sl, r3
20028722:	9b01      	ldr	r3, [sp, #4]
20028724:	9a07      	ldr	r2, [sp, #28]
20028726:	4293      	cmp	r3, r2
20028728:	d862      	bhi.n	200287f0 <mbedtls_mpi_div_mpi+0x282>
2002872a:	9b05      	ldr	r3, [sp, #20]
2002872c:	b16b      	cbz	r3, 2002874a <mbedtls_mpi_div_mpi+0x1dc>
2002872e:	4618      	mov	r0, r3
20028730:	a915      	add	r1, sp, #84	@ 0x54
20028732:	f7ff fb4b 	bl	20027dcc <mbedtls_mpi_copy>
20028736:	2800      	cmp	r0, #0
20028738:	f47f af4d 	bne.w	200285d6 <mbedtls_mpi_div_mpi+0x68>
2002873c:	9b04      	ldr	r3, [sp, #16]
2002873e:	9a09      	ldr	r2, [sp, #36]	@ 0x24
20028740:	681b      	ldr	r3, [r3, #0]
20028742:	6812      	ldr	r2, [r2, #0]
20028744:	4353      	muls	r3, r2
20028746:	9a05      	ldr	r2, [sp, #20]
20028748:	6013      	str	r3, [r2, #0]
2002874a:	9b03      	ldr	r3, [sp, #12]
2002874c:	2b00      	cmp	r3, #0
2002874e:	f000 810d 	beq.w	2002896c <mbedtls_mpi_div_mpi+0x3fe>
20028752:	9906      	ldr	r1, [sp, #24]
20028754:	a80f      	add	r0, sp, #60	@ 0x3c
20028756:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
2002875a:	f7ff fc68 	bl	2002802e <mbedtls_mpi_shift_r>
2002875e:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028762:	2800      	cmp	r0, #0
20028764:	f47f af37 	bne.w	200285d6 <mbedtls_mpi_div_mpi+0x68>
20028768:	9b04      	ldr	r3, [sp, #16]
2002876a:	a90f      	add	r1, sp, #60	@ 0x3c
2002876c:	681b      	ldr	r3, [r3, #0]
2002876e:	9803      	ldr	r0, [sp, #12]
20028770:	930f      	str	r3, [sp, #60]	@ 0x3c
20028772:	f7ff fb2b 	bl	20027dcc <mbedtls_mpi_copy>
20028776:	4601      	mov	r1, r0
20028778:	2800      	cmp	r0, #0
2002877a:	f47f af2c 	bne.w	200285d6 <mbedtls_mpi_div_mpi+0x68>
2002877e:	9001      	str	r0, [sp, #4]
20028780:	9803      	ldr	r0, [sp, #12]
20028782:	f7ff fd74 	bl	2002826e <mbedtls_mpi_cmp_int>
20028786:	9901      	ldr	r1, [sp, #4]
20028788:	b9c0      	cbnz	r0, 200287bc <mbedtls_mpi_div_mpi+0x24e>
2002878a:	2301      	movs	r3, #1
2002878c:	9a03      	ldr	r2, [sp, #12]
2002878e:	6013      	str	r3, [r2, #0]
20028790:	e014      	b.n	200287bc <mbedtls_mpi_div_mpi+0x24e>
20028792:	46ba      	mov	sl, r7
20028794:	f8cd 8020 	str.w	r8, [sp, #32]
20028798:	f8cd b018 	str.w	fp, [sp, #24]
2002879c:	e785      	b.n	200286aa <mbedtls_mpi_div_mpi+0x13c>
2002879e:	f8db 2000 	ldr.w	r2, [fp]
200287a2:	a90f      	add	r1, sp, #60	@ 0x3c
200287a4:	3201      	adds	r2, #1
200287a6:	4608      	mov	r0, r1
200287a8:	f8cb 2000 	str.w	r2, [fp]
200287ac:	aa12      	add	r2, sp, #72	@ 0x48
200287ae:	f7ff fe30 	bl	20028412 <mbedtls_mpi_sub_mpi>
200287b2:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
200287b6:	4601      	mov	r1, r0
200287b8:	2800      	cmp	r0, #0
200287ba:	d08b      	beq.n	200286d4 <mbedtls_mpi_div_mpi+0x166>
200287bc:	a80f      	add	r0, sp, #60	@ 0x3c
200287be:	9101      	str	r1, [sp, #4]
200287c0:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
200287c4:	f7ff fac1 	bl	20027d4a <mbedtls_mpi_free>
200287c8:	a812      	add	r0, sp, #72	@ 0x48
200287ca:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200287ce:	f7ff fabc 	bl	20027d4a <mbedtls_mpi_free>
200287d2:	9b02      	ldr	r3, [sp, #8]
200287d4:	a815      	add	r0, sp, #84	@ 0x54
200287d6:	9317      	str	r3, [sp, #92]	@ 0x5c
200287d8:	f7ff fab7 	bl	20027d4a <mbedtls_mpi_free>
200287dc:	a818      	add	r0, sp, #96	@ 0x60
200287de:	951a      	str	r5, [sp, #104]	@ 0x68
200287e0:	f7ff fab3 	bl	20027d4a <mbedtls_mpi_free>
200287e4:	a81b      	add	r0, sp, #108	@ 0x6c
200287e6:	941d      	str	r4, [sp, #116]	@ 0x74
200287e8:	f7ff faaf 	bl	20027d4a <mbedtls_mpi_free>
200287ec:	9901      	ldr	r1, [sp, #4]
200287ee:	e6e1      	b.n	200285b4 <mbedtls_mpi_div_mpi+0x46>
200287f0:	9b01      	ldr	r3, [sp, #4]
200287f2:	ea4f 0b83 	mov.w	fp, r3, lsl #2
200287f6:	eb06 0383 	add.w	r3, r6, r3, lsl #2
200287fa:	930b      	str	r3, [sp, #44]	@ 0x2c
200287fc:	9b01      	ldr	r3, [sp, #4]
200287fe:	f1ab 0004 	sub.w	r0, fp, #4
20028802:	f856 1023 	ldr.w	r1, [r6, r3, lsl #2]
20028806:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
20028808:	681a      	ldr	r2, [r3, #0]
2002880a:	1833      	adds	r3, r6, r0
2002880c:	4291      	cmp	r1, r2
2002880e:	930d      	str	r3, [sp, #52]	@ 0x34
20028810:	d255      	bcs.n	200288be <mbedtls_mpi_div_mpi+0x350>
20028812:	2300      	movs	r3, #0
20028814:	5830      	ldr	r0, [r6, r0]
20028816:	f001 fd87 	bl	2002a328 <__aeabi_uldivmod>
2002881a:	2900      	cmp	r1, #0
2002881c:	bf14      	ite	ne
2002881e:	f04f 33ff 	movne.w	r3, #4294967295
20028822:	4603      	moveq	r3, r0
20028824:	3301      	adds	r3, #1
20028826:	f1ab 0b08 	sub.w	fp, fp, #8
2002882a:	f84a 3c04 	str.w	r3, [sl, #-4]
2002882e:	44b3      	add	fp, r6
20028830:	f85a 3c04 	ldr.w	r3, [sl, #-4]
20028834:	2100      	movs	r1, #0
20028836:	3b01      	subs	r3, #1
20028838:	f84a 3c04 	str.w	r3, [sl, #-4]
2002883c:	a818      	add	r0, sp, #96	@ 0x60
2002883e:	951a      	str	r5, [sp, #104]	@ 0x68
20028840:	f7ff faed 	bl	20027e1e <mbedtls_mpi_lset>
20028844:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028846:	2800      	cmp	r0, #0
20028848:	f47f aec5 	bne.w	200285d6 <mbedtls_mpi_div_mpi+0x68>
2002884c:	9b07      	ldr	r3, [sp, #28]
2002884e:	2b00      	cmp	r3, #0
20028850:	d038      	beq.n	200288c4 <mbedtls_mpi_div_mpi+0x356>
20028852:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
20028854:	681b      	ldr	r3, [r3, #0]
20028856:	602b      	str	r3, [r5, #0]
20028858:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
2002885a:	a918      	add	r1, sp, #96	@ 0x60
2002885c:	681b      	ldr	r3, [r3, #0]
2002885e:	4608      	mov	r0, r1
20028860:	606b      	str	r3, [r5, #4]
20028862:	f85a 2c04 	ldr.w	r2, [sl, #-4]
20028866:	f7ff fe75 	bl	20028554 <mbedtls_mpi_mul_int>
2002886a:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002886c:	4601      	mov	r1, r0
2002886e:	2800      	cmp	r0, #0
20028870:	f47f aeb1 	bne.w	200285d6 <mbedtls_mpi_div_mpi+0x68>
20028874:	a81b      	add	r0, sp, #108	@ 0x6c
20028876:	941d      	str	r4, [sp, #116]	@ 0x74
20028878:	f7ff fad1 	bl	20027e1e <mbedtls_mpi_lset>
2002887c:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
2002887e:	2800      	cmp	r0, #0
20028880:	f47f aea9 	bne.w	200285d6 <mbedtls_mpi_div_mpi+0x68>
20028884:	9b01      	ldr	r3, [sp, #4]
20028886:	a91b      	add	r1, sp, #108	@ 0x6c
20028888:	2b01      	cmp	r3, #1
2002888a:	bf18      	it	ne
2002888c:	f8db 0000 	ldrne.w	r0, [fp]
20028890:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
20028892:	6020      	str	r0, [r4, #0]
20028894:	681b      	ldr	r3, [r3, #0]
20028896:	a818      	add	r0, sp, #96	@ 0x60
20028898:	6063      	str	r3, [r4, #4]
2002889a:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
2002889c:	681b      	ldr	r3, [r3, #0]
2002889e:	60a3      	str	r3, [r4, #8]
200288a0:	f7ff fca4 	bl	200281ec <mbedtls_mpi_cmp_mpi>
200288a4:	2800      	cmp	r0, #0
200288a6:	dcc3      	bgt.n	20028830 <mbedtls_mpi_div_mpi+0x2c2>
200288a8:	f85a 2c04 	ldr.w	r2, [sl, #-4]
200288ac:	a912      	add	r1, sp, #72	@ 0x48
200288ae:	a818      	add	r0, sp, #96	@ 0x60
200288b0:	e9cd 8913 	strd	r8, r9, [sp, #76]	@ 0x4c
200288b4:	f7ff fe4e 	bl	20028554 <mbedtls_mpi_mul_int>
200288b8:	b130      	cbz	r0, 200288c8 <mbedtls_mpi_div_mpi+0x35a>
200288ba:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200288bc:	e68b      	b.n	200285d6 <mbedtls_mpi_div_mpi+0x68>
200288be:	f04f 33ff 	mov.w	r3, #4294967295
200288c2:	e7af      	b.n	20028824 <mbedtls_mpi_div_mpi+0x2b6>
200288c4:	9b07      	ldr	r3, [sp, #28]
200288c6:	e7c6      	b.n	20028856 <mbedtls_mpi_div_mpi+0x2e8>
200288c8:	f06f 0b1f 	mvn.w	fp, #31
200288cc:	9b08      	ldr	r3, [sp, #32]
200288ce:	a818      	add	r0, sp, #96	@ 0x60
200288d0:	fb0b fb03 	mul.w	fp, fp, r3
200288d4:	9b01      	ldr	r3, [sp, #4]
200288d6:	eb0b 1b43 	add.w	fp, fp, r3, lsl #5
200288da:	4659      	mov	r1, fp
200288dc:	f7ff fb4e 	bl	20027f7c <mbedtls_mpi_shift_l>
200288e0:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200288e2:	2800      	cmp	r0, #0
200288e4:	f47f ae77 	bne.w	200285d6 <mbedtls_mpi_div_mpi+0x68>
200288e8:	a90f      	add	r1, sp, #60	@ 0x3c
200288ea:	4608      	mov	r0, r1
200288ec:	aa18      	add	r2, sp, #96	@ 0x60
200288ee:	e9cd 7610 	strd	r7, r6, [sp, #64]	@ 0x40
200288f2:	f7ff fd8e 	bl	20028412 <mbedtls_mpi_sub_mpi>
200288f6:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
200288fa:	4601      	mov	r1, r0
200288fc:	2800      	cmp	r0, #0
200288fe:	f47f af5d 	bne.w	200287bc <mbedtls_mpi_div_mpi+0x24e>
20028902:	a80f      	add	r0, sp, #60	@ 0x3c
20028904:	f7ff fcb3 	bl	2002826e <mbedtls_mpi_cmp_int>
20028908:	2800      	cmp	r0, #0
2002890a:	da1d      	bge.n	20028948 <mbedtls_mpi_div_mpi+0x3da>
2002890c:	a912      	add	r1, sp, #72	@ 0x48
2002890e:	a818      	add	r0, sp, #96	@ 0x60
20028910:	f7ff fa5c 	bl	20027dcc <mbedtls_mpi_copy>
20028914:	2800      	cmp	r0, #0
20028916:	d1d0      	bne.n	200288ba <mbedtls_mpi_div_mpi+0x34c>
20028918:	4659      	mov	r1, fp
2002891a:	a818      	add	r0, sp, #96	@ 0x60
2002891c:	f7ff fb2e 	bl	20027f7c <mbedtls_mpi_shift_l>
20028920:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20028922:	2800      	cmp	r0, #0
20028924:	f47f ae57 	bne.w	200285d6 <mbedtls_mpi_div_mpi+0x68>
20028928:	a90f      	add	r1, sp, #60	@ 0x3c
2002892a:	4608      	mov	r0, r1
2002892c:	aa18      	add	r2, sp, #96	@ 0x60
2002892e:	f7ff fd4a 	bl	200283c6 <mbedtls_mpi_add_mpi>
20028932:	e9dd 7610 	ldrd	r7, r6, [sp, #64]	@ 0x40
20028936:	4601      	mov	r1, r0
20028938:	2800      	cmp	r0, #0
2002893a:	f47f af3f 	bne.w	200287bc <mbedtls_mpi_div_mpi+0x24e>
2002893e:	f85a 3c04 	ldr.w	r3, [sl, #-4]
20028942:	3b01      	subs	r3, #1
20028944:	f84a 3c04 	str.w	r3, [sl, #-4]
20028948:	9b01      	ldr	r3, [sp, #4]
2002894a:	f1aa 0a04 	sub.w	sl, sl, #4
2002894e:	3b01      	subs	r3, #1
20028950:	9301      	str	r3, [sp, #4]
20028952:	e6e6      	b.n	20028722 <mbedtls_mpi_div_mpi+0x1b4>
20028954:	4625      	mov	r5, r4
20028956:	46a1      	mov	r9, r4
20028958:	46a0      	mov	r8, r4
2002895a:	9402      	str	r4, [sp, #8]
2002895c:	e63b      	b.n	200285d6 <mbedtls_mpi_div_mpi+0x68>
2002895e:	4654      	mov	r4, sl
20028960:	4655      	mov	r5, sl
20028962:	f8cd a008 	str.w	sl, [sp, #8]
20028966:	e636      	b.n	200285d6 <mbedtls_mpi_div_mpi+0x68>
20028968:	462c      	mov	r4, r5
2002896a:	e663      	b.n	20028634 <mbedtls_mpi_div_mpi+0xc6>
2002896c:	9903      	ldr	r1, [sp, #12]
2002896e:	e725      	b.n	200287bc <mbedtls_mpi_div_mpi+0x24e>
20028970:	f06f 010b 	mvn.w	r1, #11
20028974:	e61e      	b.n	200285b4 <mbedtls_mpi_div_mpi+0x46>

20028976 <mbedtls_mpi_mod_mpi>:
20028976:	b570      	push	{r4, r5, r6, lr}
20028978:	4604      	mov	r4, r0
2002897a:	460d      	mov	r5, r1
2002897c:	4610      	mov	r0, r2
2002897e:	2100      	movs	r1, #0
20028980:	4616      	mov	r6, r2
20028982:	f7ff fc74 	bl	2002826e <mbedtls_mpi_cmp_int>
20028986:	2800      	cmp	r0, #0
20028988:	db24      	blt.n	200289d4 <mbedtls_mpi_mod_mpi+0x5e>
2002898a:	462a      	mov	r2, r5
2002898c:	4633      	mov	r3, r6
2002898e:	4621      	mov	r1, r4
20028990:	2000      	movs	r0, #0
20028992:	f7ff fdec 	bl	2002856e <mbedtls_mpi_div_mpi>
20028996:	4605      	mov	r5, r0
20028998:	b138      	cbz	r0, 200289aa <mbedtls_mpi_mod_mpi+0x34>
2002899a:	4628      	mov	r0, r5
2002899c:	bd70      	pop	{r4, r5, r6, pc}
2002899e:	4632      	mov	r2, r6
200289a0:	4621      	mov	r1, r4
200289a2:	4620      	mov	r0, r4
200289a4:	f7ff fd0f 	bl	200283c6 <mbedtls_mpi_add_mpi>
200289a8:	b990      	cbnz	r0, 200289d0 <mbedtls_mpi_mod_mpi+0x5a>
200289aa:	2100      	movs	r1, #0
200289ac:	4620      	mov	r0, r4
200289ae:	f7ff fc5e 	bl	2002826e <mbedtls_mpi_cmp_int>
200289b2:	2800      	cmp	r0, #0
200289b4:	dbf3      	blt.n	2002899e <mbedtls_mpi_mod_mpi+0x28>
200289b6:	4631      	mov	r1, r6
200289b8:	4620      	mov	r0, r4
200289ba:	f7ff fc17 	bl	200281ec <mbedtls_mpi_cmp_mpi>
200289be:	2800      	cmp	r0, #0
200289c0:	dbeb      	blt.n	2002899a <mbedtls_mpi_mod_mpi+0x24>
200289c2:	4632      	mov	r2, r6
200289c4:	4621      	mov	r1, r4
200289c6:	4620      	mov	r0, r4
200289c8:	f7ff fd23 	bl	20028412 <mbedtls_mpi_sub_mpi>
200289cc:	2800      	cmp	r0, #0
200289ce:	d0f2      	beq.n	200289b6 <mbedtls_mpi_mod_mpi+0x40>
200289d0:	4605      	mov	r5, r0
200289d2:	e7e2      	b.n	2002899a <mbedtls_mpi_mod_mpi+0x24>
200289d4:	f06f 0509 	mvn.w	r5, #9
200289d8:	e7df      	b.n	2002899a <mbedtls_mpi_mod_mpi+0x24>

200289da <mbedtls_mpi_exp_mod>:
200289da:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200289de:	4605      	mov	r5, r0
200289e0:	f2ad 6d54 	subw	sp, sp, #1620	@ 0x654
200289e4:	4688      	mov	r8, r1
200289e6:	4618      	mov	r0, r3
200289e8:	2100      	movs	r1, #0
200289ea:	461c      	mov	r4, r3
200289ec:	9203      	str	r2, [sp, #12]
200289ee:	f7ff fc3e 	bl	2002826e <mbedtls_mpi_cmp_int>
200289f2:	2800      	cmp	r0, #0
200289f4:	f2c0 8202 	blt.w	20028dfc <mbedtls_mpi_exp_mod+0x422>
200289f8:	68a3      	ldr	r3, [r4, #8]
200289fa:	681f      	ldr	r7, [r3, #0]
200289fc:	f017 0301 	ands.w	r3, r7, #1
20028a00:	9305      	str	r3, [sp, #20]
20028a02:	f000 81fb 	beq.w	20028dfc <mbedtls_mpi_exp_mod+0x422>
20028a06:	2100      	movs	r1, #0
20028a08:	9803      	ldr	r0, [sp, #12]
20028a0a:	f7ff fc30 	bl	2002826e <mbedtls_mpi_cmp_int>
20028a0e:	2800      	cmp	r0, #0
20028a10:	f2c0 81f4 	blt.w	20028dfc <mbedtls_mpi_exp_mod+0x422>
20028a14:	2100      	movs	r1, #0
20028a16:	2301      	movs	r3, #1
20028a18:	f44f 62c0 	mov.w	r2, #1536	@ 0x600
20028a1c:	a814      	add	r0, sp, #80	@ 0x50
20028a1e:	e9cd 3108 	strd	r3, r1, [sp, #32]
20028a22:	e9cd 130a 	strd	r1, r3, [sp, #40]	@ 0x28
20028a26:	e9cd 110c 	strd	r1, r1, [sp, #48]	@ 0x30
20028a2a:	e9cd 310e 	strd	r3, r1, [sp, #56]	@ 0x38
20028a2e:	9110      	str	r1, [sp, #64]	@ 0x40
20028a30:	f001 ff1c 	bl	2002a86c <memset>
20028a34:	9803      	ldr	r0, [sp, #12]
20028a36:	f7ff fa26 	bl	20027e86 <mbedtls_mpi_bitlen>
20028a3a:	f5b0 7f28 	cmp.w	r0, #672	@ 0x2a0
20028a3e:	d233      	bcs.n	20028aa8 <mbedtls_mpi_exp_mod+0xce>
20028a40:	28ef      	cmp	r0, #239	@ 0xef
20028a42:	d833      	bhi.n	20028aac <mbedtls_mpi_exp_mod+0xd2>
20028a44:	284f      	cmp	r0, #79	@ 0x4f
20028a46:	d833      	bhi.n	20028ab0 <mbedtls_mpi_exp_mod+0xd6>
20028a48:	9b05      	ldr	r3, [sp, #20]
20028a4a:	2818      	cmp	r0, #24
20028a4c:	bf34      	ite	cc
20028a4e:	461e      	movcc	r6, r3
20028a50:	2603      	movcs	r6, #3
20028a52:	6863      	ldr	r3, [r4, #4]
20028a54:	4628      	mov	r0, r5
20028a56:	f103 0901 	add.w	r9, r3, #1
20028a5a:	4649      	mov	r1, r9
20028a5c:	f7ff f98a 	bl	20027d74 <mbedtls_mpi_grow>
20028a60:	b340      	cbz	r0, 20028ab4 <mbedtls_mpi_exp_mod+0xda>
20028a62:	f06f 090f 	mvn.w	r9, #15
20028a66:	2301      	movs	r3, #1
20028a68:	1e74      	subs	r4, r6, #1
20028a6a:	fa03 f506 	lsl.w	r5, r3, r6
20028a6e:	260c      	movs	r6, #12
20028a70:	fa03 f404 	lsl.w	r4, r3, r4
20028a74:	af14      	add	r7, sp, #80	@ 0x50
20028a76:	42a5      	cmp	r5, r4
20028a78:	f200 81ba 	bhi.w	20028df0 <mbedtls_mpi_exp_mod+0x416>
20028a7c:	a817      	add	r0, sp, #92	@ 0x5c
20028a7e:	f7ff f964 	bl	20027d4a <mbedtls_mpi_free>
20028a82:	a80b      	add	r0, sp, #44	@ 0x2c
20028a84:	f7ff f961 	bl	20027d4a <mbedtls_mpi_free>
20028a88:	a80e      	add	r0, sp, #56	@ 0x38
20028a8a:	f7ff f95e 	bl	20027d4a <mbedtls_mpi_free>
20028a8e:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028a92:	b10b      	cbz	r3, 20028a98 <mbedtls_mpi_exp_mod+0xbe>
20028a94:	689b      	ldr	r3, [r3, #8]
20028a96:	b913      	cbnz	r3, 20028a9e <mbedtls_mpi_exp_mod+0xc4>
20028a98:	a808      	add	r0, sp, #32
20028a9a:	f7ff f956 	bl	20027d4a <mbedtls_mpi_free>
20028a9e:	4648      	mov	r0, r9
20028aa0:	f20d 6d54 	addw	sp, sp, #1620	@ 0x654
20028aa4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20028aa8:	2606      	movs	r6, #6
20028aaa:	e7d2      	b.n	20028a52 <mbedtls_mpi_exp_mod+0x78>
20028aac:	2605      	movs	r6, #5
20028aae:	e7d0      	b.n	20028a52 <mbedtls_mpi_exp_mod+0x78>
20028ab0:	2604      	movs	r6, #4
20028ab2:	e7ce      	b.n	20028a52 <mbedtls_mpi_exp_mod+0x78>
20028ab4:	4649      	mov	r1, r9
20028ab6:	a817      	add	r0, sp, #92	@ 0x5c
20028ab8:	f7ff f95c 	bl	20027d74 <mbedtls_mpi_grow>
20028abc:	2800      	cmp	r0, #0
20028abe:	d1d0      	bne.n	20028a62 <mbedtls_mpi_exp_mod+0x88>
20028ac0:	ea4f 0149 	mov.w	r1, r9, lsl #1
20028ac4:	a80b      	add	r0, sp, #44	@ 0x2c
20028ac6:	f7ff f955 	bl	20027d74 <mbedtls_mpi_grow>
20028aca:	2800      	cmp	r0, #0
20028acc:	d1c9      	bne.n	20028a62 <mbedtls_mpi_exp_mod+0x88>
20028ace:	f8d8 3000 	ldr.w	r3, [r8]
20028ad2:	9304      	str	r3, [sp, #16]
20028ad4:	3301      	adds	r3, #1
20028ad6:	d109      	bne.n	20028aec <mbedtls_mpi_exp_mod+0x112>
20028ad8:	4641      	mov	r1, r8
20028ada:	a80e      	add	r0, sp, #56	@ 0x38
20028adc:	f7ff f976 	bl	20027dcc <mbedtls_mpi_copy>
20028ae0:	2800      	cmp	r0, #0
20028ae2:	d1be      	bne.n	20028a62 <mbedtls_mpi_exp_mod+0x88>
20028ae4:	2301      	movs	r3, #1
20028ae6:	f10d 0838 	add.w	r8, sp, #56	@ 0x38
20028aea:	930e      	str	r3, [sp, #56]	@ 0x38
20028aec:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028af0:	b11b      	cbz	r3, 20028afa <mbedtls_mpi_exp_mod+0x120>
20028af2:	689b      	ldr	r3, [r3, #8]
20028af4:	2b00      	cmp	r3, #0
20028af6:	f040 80ab 	bne.w	20028c50 <mbedtls_mpi_exp_mod+0x276>
20028afa:	2101      	movs	r1, #1
20028afc:	a808      	add	r0, sp, #32
20028afe:	f7ff f98e 	bl	20027e1e <mbedtls_mpi_lset>
20028b02:	2800      	cmp	r0, #0
20028b04:	d1ad      	bne.n	20028a62 <mbedtls_mpi_exp_mod+0x88>
20028b06:	6861      	ldr	r1, [r4, #4]
20028b08:	a808      	add	r0, sp, #32
20028b0a:	0189      	lsls	r1, r1, #6
20028b0c:	f7ff fa36 	bl	20027f7c <mbedtls_mpi_shift_l>
20028b10:	2800      	cmp	r0, #0
20028b12:	d1a6      	bne.n	20028a62 <mbedtls_mpi_exp_mod+0x88>
20028b14:	a908      	add	r1, sp, #32
20028b16:	4622      	mov	r2, r4
20028b18:	4608      	mov	r0, r1
20028b1a:	f7ff ff2c 	bl	20028976 <mbedtls_mpi_mod_mpi>
20028b1e:	4681      	mov	r9, r0
20028b20:	2800      	cmp	r0, #0
20028b22:	d1a0      	bne.n	20028a66 <mbedtls_mpi_exp_mod+0x8c>
20028b24:	f8dd 3678 	ldr.w	r3, [sp, #1656]	@ 0x678
20028b28:	b13b      	cbz	r3, 20028b3a <mbedtls_mpi_exp_mod+0x160>
20028b2a:	f8dd 2678 	ldr.w	r2, [sp, #1656]	@ 0x678
20028b2e:	ab08      	add	r3, sp, #32
20028b30:	cb03      	ldmia	r3!, {r0, r1}
20028b32:	6010      	str	r0, [r2, #0]
20028b34:	6818      	ldr	r0, [r3, #0]
20028b36:	6051      	str	r1, [r2, #4]
20028b38:	6090      	str	r0, [r2, #8]
20028b3a:	4621      	mov	r1, r4
20028b3c:	4640      	mov	r0, r8
20028b3e:	f7ff fb55 	bl	200281ec <mbedtls_mpi_cmp_mpi>
20028b42:	2800      	cmp	r0, #0
20028b44:	f2c0 808d 	blt.w	20028c62 <mbedtls_mpi_exp_mod+0x288>
20028b48:	4622      	mov	r2, r4
20028b4a:	4641      	mov	r1, r8
20028b4c:	a817      	add	r0, sp, #92	@ 0x5c
20028b4e:	f7ff ff12 	bl	20028976 <mbedtls_mpi_mod_mpi>
20028b52:	4681      	mov	r9, r0
20028b54:	2800      	cmp	r0, #0
20028b56:	d186      	bne.n	20028a66 <mbedtls_mpi_exp_mod+0x8c>
20028b58:	1cba      	adds	r2, r7, #2
20028b5a:	0052      	lsls	r2, r2, #1
20028b5c:	f002 0208 	and.w	r2, r2, #8
20028b60:	443a      	add	r2, r7
20028b62:	fb02 f307 	mul.w	r3, r2, r7
20028b66:	f1c3 0302 	rsb	r3, r3, #2
20028b6a:	4353      	muls	r3, r2
20028b6c:	fb03 f207 	mul.w	r2, r3, r7
20028b70:	f1c2 0202 	rsb	r2, r2, #2
20028b74:	4353      	muls	r3, r2
20028b76:	435f      	muls	r7, r3
20028b78:	3f02      	subs	r7, #2
20028b7a:	437b      	muls	r3, r7
20028b7c:	f10d 0b2c 	add.w	fp, sp, #44	@ 0x2c
20028b80:	4622      	mov	r2, r4
20028b82:	f8cd b000 	str.w	fp, [sp]
20028b86:	a908      	add	r1, sp, #32
20028b88:	a817      	add	r0, sp, #92	@ 0x5c
20028b8a:	9302      	str	r3, [sp, #8]
20028b8c:	f7ff fac4 	bl	20028118 <mpi_montmul>
20028b90:	2800      	cmp	r0, #0
20028b92:	f040 80e4 	bne.w	20028d5e <mbedtls_mpi_exp_mod+0x384>
20028b96:	4628      	mov	r0, r5
20028b98:	a908      	add	r1, sp, #32
20028b9a:	f7ff f917 	bl	20027dcc <mbedtls_mpi_copy>
20028b9e:	2800      	cmp	r0, #0
20028ba0:	f47f af5f 	bne.w	20028a62 <mbedtls_mpi_exp_mod+0x88>
20028ba4:	2301      	movs	r3, #1
20028ba6:	aa07      	add	r2, sp, #28
20028ba8:	e9cd 3311 	strd	r3, r3, [sp, #68]	@ 0x44
20028bac:	9307      	str	r3, [sp, #28]
20028bae:	9213      	str	r2, [sp, #76]	@ 0x4c
20028bb0:	4628      	mov	r0, r5
20028bb2:	4622      	mov	r2, r4
20028bb4:	9b02      	ldr	r3, [sp, #8]
20028bb6:	f8cd b000 	str.w	fp, [sp]
20028bba:	a911      	add	r1, sp, #68	@ 0x44
20028bbc:	f7ff faac 	bl	20028118 <mpi_montmul>
20028bc0:	2800      	cmp	r0, #0
20028bc2:	f040 80cc 	bne.w	20028d5e <mbedtls_mpi_exp_mod+0x384>
20028bc6:	2e01      	cmp	r6, #1
20028bc8:	d153      	bne.n	20028c72 <mbedtls_mpi_exp_mod+0x298>
20028bca:	f04f 0900 	mov.w	r9, #0
20028bce:	464f      	mov	r7, r9
20028bd0:	46ca      	mov	sl, r9
20028bd2:	46c8      	mov	r8, r9
20028bd4:	9b03      	ldr	r3, [sp, #12]
20028bd6:	f8d3 b004 	ldr.w	fp, [r3, #4]
20028bda:	f1ba 0f00 	cmp.w	sl, #0
20028bde:	f040 80a1 	bne.w	20028d24 <mbedtls_mpi_exp_mod+0x34a>
20028be2:	f1bb 0f00 	cmp.w	fp, #0
20028be6:	f040 8099 	bne.w	20028d1c <mbedtls_mpi_exp_mod+0x342>
20028bea:	f04f 0a01 	mov.w	sl, #1
20028bee:	f10d 092c 	add.w	r9, sp, #44	@ 0x2c
20028bf2:	fa0a fa06 	lsl.w	sl, sl, r6
20028bf6:	45bb      	cmp	fp, r7
20028bf8:	f040 80dd 	bne.w	20028db6 <mbedtls_mpi_exp_mod+0x3dc>
20028bfc:	2301      	movs	r3, #1
20028bfe:	aa07      	add	r2, sp, #28
20028c00:	e9cd 3311 	strd	r3, r3, [sp, #68]	@ 0x44
20028c04:	9307      	str	r3, [sp, #28]
20028c06:	9213      	str	r2, [sp, #76]	@ 0x4c
20028c08:	f8cd 9000 	str.w	r9, [sp]
20028c0c:	4622      	mov	r2, r4
20028c0e:	4628      	mov	r0, r5
20028c10:	9b02      	ldr	r3, [sp, #8]
20028c12:	a911      	add	r1, sp, #68	@ 0x44
20028c14:	f7ff fa80 	bl	20028118 <mpi_montmul>
20028c18:	4681      	mov	r9, r0
20028c1a:	2800      	cmp	r0, #0
20028c1c:	f040 809f 	bne.w	20028d5e <mbedtls_mpi_exp_mod+0x384>
20028c20:	9b04      	ldr	r3, [sp, #16]
20028c22:	3301      	adds	r3, #1
20028c24:	f47f af1f 	bne.w	20028a66 <mbedtls_mpi_exp_mod+0x8c>
20028c28:	9b03      	ldr	r3, [sp, #12]
20028c2a:	685b      	ldr	r3, [r3, #4]
20028c2c:	2b00      	cmp	r3, #0
20028c2e:	f43f af1a 	beq.w	20028a66 <mbedtls_mpi_exp_mod+0x8c>
20028c32:	9b03      	ldr	r3, [sp, #12]
20028c34:	689b      	ldr	r3, [r3, #8]
20028c36:	681b      	ldr	r3, [r3, #0]
20028c38:	07db      	lsls	r3, r3, #31
20028c3a:	f57f af14 	bpl.w	20028a66 <mbedtls_mpi_exp_mod+0x8c>
20028c3e:	9b04      	ldr	r3, [sp, #16]
20028c40:	462a      	mov	r2, r5
20028c42:	4621      	mov	r1, r4
20028c44:	4628      	mov	r0, r5
20028c46:	602b      	str	r3, [r5, #0]
20028c48:	f7ff fbbd 	bl	200283c6 <mbedtls_mpi_add_mpi>
20028c4c:	4681      	mov	r9, r0
20028c4e:	e70a      	b.n	20028a66 <mbedtls_mpi_exp_mod+0x8c>
20028c50:	f8dd 2678 	ldr.w	r2, [sp, #1656]	@ 0x678
20028c54:	ab08      	add	r3, sp, #32
20028c56:	6810      	ldr	r0, [r2, #0]
20028c58:	6851      	ldr	r1, [r2, #4]
20028c5a:	c303      	stmia	r3!, {r0, r1}
20028c5c:	6890      	ldr	r0, [r2, #8]
20028c5e:	6018      	str	r0, [r3, #0]
20028c60:	e76b      	b.n	20028b3a <mbedtls_mpi_exp_mod+0x160>
20028c62:	4641      	mov	r1, r8
20028c64:	a817      	add	r0, sp, #92	@ 0x5c
20028c66:	f7ff f8b1 	bl	20027dcc <mbedtls_mpi_copy>
20028c6a:	2800      	cmp	r0, #0
20028c6c:	f43f af74 	beq.w	20028b58 <mbedtls_mpi_exp_mod+0x17e>
20028c70:	e6f7      	b.n	20028a62 <mbedtls_mpi_exp_mod+0x88>
20028c72:	f04f 0a0c 	mov.w	sl, #12
20028c76:	1e77      	subs	r7, r6, #1
20028c78:	6861      	ldr	r1, [r4, #4]
20028c7a:	fa0a fa07 	lsl.w	sl, sl, r7
20028c7e:	f10d 0950 	add.w	r9, sp, #80	@ 0x50
20028c82:	44d1      	add	r9, sl
20028c84:	4648      	mov	r0, r9
20028c86:	3101      	adds	r1, #1
20028c88:	f7ff f874 	bl	20027d74 <mbedtls_mpi_grow>
20028c8c:	2800      	cmp	r0, #0
20028c8e:	f47f aee8 	bne.w	20028a62 <mbedtls_mpi_exp_mod+0x88>
20028c92:	4648      	mov	r0, r9
20028c94:	a917      	add	r1, sp, #92	@ 0x5c
20028c96:	f7ff f899 	bl	20027dcc <mbedtls_mpi_copy>
20028c9a:	2800      	cmp	r0, #0
20028c9c:	f47f aee1 	bne.w	20028a62 <mbedtls_mpi_exp_mod+0x88>
20028ca0:	4680      	mov	r8, r0
20028ca2:	4622      	mov	r2, r4
20028ca4:	4649      	mov	r1, r9
20028ca6:	4648      	mov	r0, r9
20028ca8:	9b02      	ldr	r3, [sp, #8]
20028caa:	f8cd b000 	str.w	fp, [sp]
20028cae:	f7ff fa33 	bl	20028118 <mpi_montmul>
20028cb2:	2800      	cmp	r0, #0
20028cb4:	d153      	bne.n	20028d5e <mbedtls_mpi_exp_mod+0x384>
20028cb6:	f108 0801 	add.w	r8, r8, #1
20028cba:	45b8      	cmp	r8, r7
20028cbc:	d3f1      	bcc.n	20028ca2 <mbedtls_mpi_exp_mod+0x2c8>
20028cbe:	f04f 0801 	mov.w	r8, #1
20028cc2:	f10d 0b50 	add.w	fp, sp, #80	@ 0x50
20028cc6:	fa08 f707 	lsl.w	r7, r8, r7
20028cca:	4447      	add	r7, r8
20028ccc:	44d3      	add	fp, sl
20028cce:	fa08 f806 	lsl.w	r8, r8, r6
20028cd2:	f10d 0a2c 	add.w	sl, sp, #44	@ 0x2c
20028cd6:	45b8      	cmp	r8, r7
20028cd8:	f67f af77 	bls.w	20028bca <mbedtls_mpi_exp_mod+0x1f0>
20028cdc:	6861      	ldr	r1, [r4, #4]
20028cde:	f10b 090c 	add.w	r9, fp, #12
20028ce2:	4648      	mov	r0, r9
20028ce4:	3101      	adds	r1, #1
20028ce6:	f7ff f845 	bl	20027d74 <mbedtls_mpi_grow>
20028cea:	2800      	cmp	r0, #0
20028cec:	f47f aeb9 	bne.w	20028a62 <mbedtls_mpi_exp_mod+0x88>
20028cf0:	4659      	mov	r1, fp
20028cf2:	4648      	mov	r0, r9
20028cf4:	f7ff f86a 	bl	20027dcc <mbedtls_mpi_copy>
20028cf8:	2800      	cmp	r0, #0
20028cfa:	f47f aeb2 	bne.w	20028a62 <mbedtls_mpi_exp_mod+0x88>
20028cfe:	4622      	mov	r2, r4
20028d00:	4648      	mov	r0, r9
20028d02:	9b02      	ldr	r3, [sp, #8]
20028d04:	f8cd a000 	str.w	sl, [sp]
20028d08:	a917      	add	r1, sp, #92	@ 0x5c
20028d0a:	f7ff fa05 	bl	20028118 <mpi_montmul>
20028d0e:	bb30      	cbnz	r0, 20028d5e <mbedtls_mpi_exp_mod+0x384>
20028d10:	46cb      	mov	fp, r9
20028d12:	3701      	adds	r7, #1
20028d14:	e7df      	b.n	20028cd6 <mbedtls_mpi_exp_mod+0x2fc>
20028d16:	f04f 0902 	mov.w	r9, #2
20028d1a:	e75e      	b.n	20028bda <mbedtls_mpi_exp_mod+0x200>
20028d1c:	f04f 0a20 	mov.w	sl, #32
20028d20:	f10b 3bff 	add.w	fp, fp, #4294967295
20028d24:	9b03      	ldr	r3, [sp, #12]
20028d26:	f10a 3aff 	add.w	sl, sl, #4294967295
20028d2a:	689b      	ldr	r3, [r3, #8]
20028d2c:	f853 302b 	ldr.w	r3, [r3, fp, lsl #2]
20028d30:	fa23 f30a 	lsr.w	r3, r3, sl
20028d34:	f013 0301 	ands.w	r3, r3, #1
20028d38:	d114      	bne.n	20028d64 <mbedtls_mpi_exp_mod+0x38a>
20028d3a:	f1b9 0f00 	cmp.w	r9, #0
20028d3e:	f43f af4c 	beq.w	20028bda <mbedtls_mpi_exp_mod+0x200>
20028d42:	f1b9 0f01 	cmp.w	r9, #1
20028d46:	d10d      	bne.n	20028d64 <mbedtls_mpi_exp_mod+0x38a>
20028d48:	ab0b      	add	r3, sp, #44	@ 0x2c
20028d4a:	9300      	str	r3, [sp, #0]
20028d4c:	4622      	mov	r2, r4
20028d4e:	4629      	mov	r1, r5
20028d50:	4628      	mov	r0, r5
20028d52:	9b02      	ldr	r3, [sp, #8]
20028d54:	f7ff f9e0 	bl	20028118 <mpi_montmul>
20028d58:	2800      	cmp	r0, #0
20028d5a:	f43f af3e 	beq.w	20028bda <mbedtls_mpi_exp_mod+0x200>
20028d5e:	f06f 0903 	mvn.w	r9, #3
20028d62:	e680      	b.n	20028a66 <mbedtls_mpi_exp_mod+0x8c>
20028d64:	3701      	adds	r7, #1
20028d66:	1bf2      	subs	r2, r6, r7
20028d68:	4093      	lsls	r3, r2
20028d6a:	42be      	cmp	r6, r7
20028d6c:	ea48 0803 	orr.w	r8, r8, r3
20028d70:	d1d1      	bne.n	20028d16 <mbedtls_mpi_exp_mod+0x33c>
20028d72:	f04f 0900 	mov.w	r9, #0
20028d76:	ab0b      	add	r3, sp, #44	@ 0x2c
20028d78:	9300      	str	r3, [sp, #0]
20028d7a:	4622      	mov	r2, r4
20028d7c:	4629      	mov	r1, r5
20028d7e:	4628      	mov	r0, r5
20028d80:	9b02      	ldr	r3, [sp, #8]
20028d82:	f7ff f9c9 	bl	20028118 <mpi_montmul>
20028d86:	2800      	cmp	r0, #0
20028d88:	d1e9      	bne.n	20028d5e <mbedtls_mpi_exp_mod+0x384>
20028d8a:	f109 0901 	add.w	r9, r9, #1
20028d8e:	454f      	cmp	r7, r9
20028d90:	d8f1      	bhi.n	20028d76 <mbedtls_mpi_exp_mod+0x39c>
20028d92:	200c      	movs	r0, #12
20028d94:	ab0b      	add	r3, sp, #44	@ 0x2c
20028d96:	a914      	add	r1, sp, #80	@ 0x50
20028d98:	fb00 1108 	mla	r1, r0, r8, r1
20028d9c:	9300      	str	r3, [sp, #0]
20028d9e:	4622      	mov	r2, r4
20028da0:	4628      	mov	r0, r5
20028da2:	9b02      	ldr	r3, [sp, #8]
20028da4:	f7ff f9b8 	bl	20028118 <mpi_montmul>
20028da8:	4607      	mov	r7, r0
20028daa:	2800      	cmp	r0, #0
20028dac:	d1d7      	bne.n	20028d5e <mbedtls_mpi_exp_mod+0x384>
20028dae:	4680      	mov	r8, r0
20028db0:	f8dd 9014 	ldr.w	r9, [sp, #20]
20028db4:	e711      	b.n	20028bda <mbedtls_mpi_exp_mod+0x200>
20028db6:	4622      	mov	r2, r4
20028db8:	4629      	mov	r1, r5
20028dba:	4628      	mov	r0, r5
20028dbc:	9b02      	ldr	r3, [sp, #8]
20028dbe:	f8cd 9000 	str.w	r9, [sp]
20028dc2:	f7ff f9a9 	bl	20028118 <mpi_montmul>
20028dc6:	2800      	cmp	r0, #0
20028dc8:	d1c9      	bne.n	20028d5e <mbedtls_mpi_exp_mod+0x384>
20028dca:	ea4f 0848 	mov.w	r8, r8, lsl #1
20028dce:	ea18 0f0a 	tst.w	r8, sl
20028dd2:	d102      	bne.n	20028dda <mbedtls_mpi_exp_mod+0x400>
20028dd4:	f10b 0b01 	add.w	fp, fp, #1
20028dd8:	e70d      	b.n	20028bf6 <mbedtls_mpi_exp_mod+0x21c>
20028dda:	4622      	mov	r2, r4
20028ddc:	4628      	mov	r0, r5
20028dde:	9b02      	ldr	r3, [sp, #8]
20028de0:	f8cd 9000 	str.w	r9, [sp]
20028de4:	a917      	add	r1, sp, #92	@ 0x5c
20028de6:	f7ff f997 	bl	20028118 <mpi_montmul>
20028dea:	2800      	cmp	r0, #0
20028dec:	d0f2      	beq.n	20028dd4 <mbedtls_mpi_exp_mod+0x3fa>
20028dee:	e7b6      	b.n	20028d5e <mbedtls_mpi_exp_mod+0x384>
20028df0:	fb06 7004 	mla	r0, r6, r4, r7
20028df4:	f7fe ffa9 	bl	20027d4a <mbedtls_mpi_free>
20028df8:	3401      	adds	r4, #1
20028dfa:	e63c      	b.n	20028a76 <mbedtls_mpi_exp_mod+0x9c>
20028dfc:	f06f 0903 	mvn.w	r9, #3
20028e00:	e64d      	b.n	20028a9e <mbedtls_mpi_exp_mod+0xc4>

20028e02 <mbedtls_mpi_gcd>:
20028e02:	b570      	push	{r4, r5, r6, lr}
20028e04:	2300      	movs	r3, #0
20028e06:	2401      	movs	r4, #1
20028e08:	b086      	sub	sp, #24
20028e0a:	4606      	mov	r6, r0
20028e0c:	4668      	mov	r0, sp
20028e0e:	4615      	mov	r5, r2
20028e10:	e9cd 4300 	strd	r4, r3, [sp]
20028e14:	e9cd 3402 	strd	r3, r4, [sp, #8]
20028e18:	e9cd 3304 	strd	r3, r3, [sp, #16]
20028e1c:	f7fe ffd6 	bl	20027dcc <mbedtls_mpi_copy>
20028e20:	b150      	cbz	r0, 20028e38 <mbedtls_mpi_gcd+0x36>
20028e22:	f06f 040f 	mvn.w	r4, #15
20028e26:	4668      	mov	r0, sp
20028e28:	f7fe ff8f 	bl	20027d4a <mbedtls_mpi_free>
20028e2c:	a803      	add	r0, sp, #12
20028e2e:	f7fe ff8c 	bl	20027d4a <mbedtls_mpi_free>
20028e32:	4620      	mov	r0, r4
20028e34:	b006      	add	sp, #24
20028e36:	bd70      	pop	{r4, r5, r6, pc}
20028e38:	4629      	mov	r1, r5
20028e3a:	a803      	add	r0, sp, #12
20028e3c:	f7fe ffc6 	bl	20027dcc <mbedtls_mpi_copy>
20028e40:	2800      	cmp	r0, #0
20028e42:	d1ee      	bne.n	20028e22 <mbedtls_mpi_gcd+0x20>
20028e44:	4668      	mov	r0, sp
20028e46:	f7ff f806 	bl	20027e56 <mbedtls_mpi_lsb>
20028e4a:	4605      	mov	r5, r0
20028e4c:	a803      	add	r0, sp, #12
20028e4e:	f7ff f802 	bl	20027e56 <mbedtls_mpi_lsb>
20028e52:	4285      	cmp	r5, r0
20028e54:	bf28      	it	cs
20028e56:	4605      	movcs	r5, r0
20028e58:	4668      	mov	r0, sp
20028e5a:	4629      	mov	r1, r5
20028e5c:	f7ff f8e7 	bl	2002802e <mbedtls_mpi_shift_r>
20028e60:	2800      	cmp	r0, #0
20028e62:	d1de      	bne.n	20028e22 <mbedtls_mpi_gcd+0x20>
20028e64:	4629      	mov	r1, r5
20028e66:	a803      	add	r0, sp, #12
20028e68:	f7ff f8e1 	bl	2002802e <mbedtls_mpi_shift_r>
20028e6c:	2800      	cmp	r0, #0
20028e6e:	d1d8      	bne.n	20028e22 <mbedtls_mpi_gcd+0x20>
20028e70:	9403      	str	r4, [sp, #12]
20028e72:	9400      	str	r4, [sp, #0]
20028e74:	2100      	movs	r1, #0
20028e76:	4668      	mov	r0, sp
20028e78:	f7ff f9f9 	bl	2002826e <mbedtls_mpi_cmp_int>
20028e7c:	b968      	cbnz	r0, 20028e9a <mbedtls_mpi_gcd+0x98>
20028e7e:	4629      	mov	r1, r5
20028e80:	a803      	add	r0, sp, #12
20028e82:	f7ff f87b 	bl	20027f7c <mbedtls_mpi_shift_l>
20028e86:	2800      	cmp	r0, #0
20028e88:	d1cb      	bne.n	20028e22 <mbedtls_mpi_gcd+0x20>
20028e8a:	4630      	mov	r0, r6
20028e8c:	a903      	add	r1, sp, #12
20028e8e:	f7fe ff9d 	bl	20027dcc <mbedtls_mpi_copy>
20028e92:	4604      	mov	r4, r0
20028e94:	2800      	cmp	r0, #0
20028e96:	d0c6      	beq.n	20028e26 <mbedtls_mpi_gcd+0x24>
20028e98:	e7c3      	b.n	20028e22 <mbedtls_mpi_gcd+0x20>
20028e9a:	4668      	mov	r0, sp
20028e9c:	f7fe ffdb 	bl	20027e56 <mbedtls_mpi_lsb>
20028ea0:	4601      	mov	r1, r0
20028ea2:	4668      	mov	r0, sp
20028ea4:	f7ff f8c3 	bl	2002802e <mbedtls_mpi_shift_r>
20028ea8:	2800      	cmp	r0, #0
20028eaa:	d1ba      	bne.n	20028e22 <mbedtls_mpi_gcd+0x20>
20028eac:	a803      	add	r0, sp, #12
20028eae:	f7fe ffd2 	bl	20027e56 <mbedtls_mpi_lsb>
20028eb2:	4601      	mov	r1, r0
20028eb4:	a803      	add	r0, sp, #12
20028eb6:	f7ff f8ba 	bl	2002802e <mbedtls_mpi_shift_r>
20028eba:	2800      	cmp	r0, #0
20028ebc:	d1b1      	bne.n	20028e22 <mbedtls_mpi_gcd+0x20>
20028ebe:	4668      	mov	r0, sp
20028ec0:	a903      	add	r1, sp, #12
20028ec2:	f7ff f993 	bl	200281ec <mbedtls_mpi_cmp_mpi>
20028ec6:	2800      	cmp	r0, #0
20028ec8:	db0e      	blt.n	20028ee8 <mbedtls_mpi_gcd+0xe6>
20028eca:	4669      	mov	r1, sp
20028ecc:	4668      	mov	r0, sp
20028ece:	aa03      	add	r2, sp, #12
20028ed0:	f7ff fa3c 	bl	2002834c <mbedtls_mpi_sub_abs>
20028ed4:	4604      	mov	r4, r0
20028ed6:	2800      	cmp	r0, #0
20028ed8:	d1a5      	bne.n	20028e26 <mbedtls_mpi_gcd+0x24>
20028eda:	2101      	movs	r1, #1
20028edc:	4668      	mov	r0, sp
20028ede:	f7ff f8a6 	bl	2002802e <mbedtls_mpi_shift_r>
20028ee2:	2800      	cmp	r0, #0
20028ee4:	d0c6      	beq.n	20028e74 <mbedtls_mpi_gcd+0x72>
20028ee6:	e79c      	b.n	20028e22 <mbedtls_mpi_gcd+0x20>
20028ee8:	a903      	add	r1, sp, #12
20028eea:	466a      	mov	r2, sp
20028eec:	4608      	mov	r0, r1
20028eee:	f7ff fa2d 	bl	2002834c <mbedtls_mpi_sub_abs>
20028ef2:	4604      	mov	r4, r0
20028ef4:	2800      	cmp	r0, #0
20028ef6:	d196      	bne.n	20028e26 <mbedtls_mpi_gcd+0x24>
20028ef8:	2101      	movs	r1, #1
20028efa:	a803      	add	r0, sp, #12
20028efc:	e7ef      	b.n	20028ede <mbedtls_mpi_gcd+0xdc>

20028efe <mbedtls_mpi_fill_random>:
20028efe:	b570      	push	{r4, r5, r6, lr}
20028f00:	f5b1 6f80 	cmp.w	r1, #1024	@ 0x400
20028f04:	4605      	mov	r5, r0
20028f06:	460c      	mov	r4, r1
20028f08:	4616      	mov	r6, r2
20028f0a:	4618      	mov	r0, r3
20028f0c:	f5ad 6d80 	sub.w	sp, sp, #1024	@ 0x400
20028f10:	d80f      	bhi.n	20028f32 <mbedtls_mpi_fill_random+0x34>
20028f12:	460a      	mov	r2, r1
20028f14:	4669      	mov	r1, sp
20028f16:	47b0      	blx	r6
20028f18:	b940      	cbnz	r0, 20028f2c <mbedtls_mpi_fill_random+0x2e>
20028f1a:	4622      	mov	r2, r4
20028f1c:	4669      	mov	r1, sp
20028f1e:	4628      	mov	r0, r5
20028f20:	f7fe ffd4 	bl	20027ecc <mbedtls_mpi_read_binary>
20028f24:	2800      	cmp	r0, #0
20028f26:	bf18      	it	ne
20028f28:	f06f 000f 	mvnne.w	r0, #15
20028f2c:	f50d 6d80 	add.w	sp, sp, #1024	@ 0x400
20028f30:	bd70      	pop	{r4, r5, r6, pc}
20028f32:	f06f 0003 	mvn.w	r0, #3
20028f36:	e7f9      	b.n	20028f2c <mbedtls_mpi_fill_random+0x2e>

20028f38 <mbedtls_mpi_inv_mod>:
20028f38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20028f3c:	b09f      	sub	sp, #124	@ 0x7c
20028f3e:	9001      	str	r0, [sp, #4]
20028f40:	460f      	mov	r7, r1
20028f42:	4610      	mov	r0, r2
20028f44:	2101      	movs	r1, #1
20028f46:	4692      	mov	sl, r2
20028f48:	f7ff f991 	bl	2002826e <mbedtls_mpi_cmp_int>
20028f4c:	2800      	cmp	r0, #0
20028f4e:	f340 81b5 	ble.w	200292bc <mbedtls_mpi_inv_mod+0x384>
20028f52:	2500      	movs	r5, #0
20028f54:	2601      	movs	r6, #1
20028f56:	4652      	mov	r2, sl
20028f58:	4639      	mov	r1, r7
20028f5a:	a803      	add	r0, sp, #12
20028f5c:	e9cd 6506 	strd	r6, r5, [sp, #24]
20028f60:	e9cd 5608 	strd	r5, r6, [sp, #32]
20028f64:	e9cd 650c 	strd	r6, r5, [sp, #48]	@ 0x30
20028f68:	e9cd 650f 	strd	r6, r5, [sp, #60]	@ 0x3c
20028f6c:	e9cd 6503 	strd	r6, r5, [sp, #12]
20028f70:	e9cd 6512 	strd	r6, r5, [sp, #72]	@ 0x48
20028f74:	e9cd 5614 	strd	r5, r6, [sp, #80]	@ 0x50
20028f78:	e9cd 6518 	strd	r6, r5, [sp, #96]	@ 0x60
20028f7c:	e9cd 651b 	strd	r6, r5, [sp, #108]	@ 0x6c
20028f80:	950a      	str	r5, [sp, #40]	@ 0x28
20028f82:	9505      	str	r5, [sp, #20]
20028f84:	9516      	str	r5, [sp, #88]	@ 0x58
20028f86:	f7ff ff3c 	bl	20028e02 <mbedtls_mpi_gcd>
20028f8a:	4604      	mov	r4, r0
20028f8c:	2800      	cmp	r0, #0
20028f8e:	f040 8182 	bne.w	20029296 <mbedtls_mpi_inv_mod+0x35e>
20028f92:	4631      	mov	r1, r6
20028f94:	a803      	add	r0, sp, #12
20028f96:	f7ff f96a 	bl	2002826e <mbedtls_mpi_cmp_int>
20028f9a:	4605      	mov	r5, r0
20028f9c:	2800      	cmp	r0, #0
20028f9e:	f040 8171 	bne.w	20029284 <mbedtls_mpi_inv_mod+0x34c>
20028fa2:	4652      	mov	r2, sl
20028fa4:	4639      	mov	r1, r7
20028fa6:	a806      	add	r0, sp, #24
20028fa8:	f7ff fce5 	bl	20028976 <mbedtls_mpi_mod_mpi>
20028fac:	4604      	mov	r4, r0
20028fae:	2800      	cmp	r0, #0
20028fb0:	f040 8171 	bne.w	20029296 <mbedtls_mpi_inv_mod+0x35e>
20028fb4:	900b      	str	r0, [sp, #44]	@ 0x2c
20028fb6:	a906      	add	r1, sp, #24
20028fb8:	a809      	add	r0, sp, #36	@ 0x24
20028fba:	f7fe ff07 	bl	20027dcc <mbedtls_mpi_copy>
20028fbe:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20028fc2:	b920      	cbnz	r0, 20028fce <mbedtls_mpi_inv_mod+0x96>
20028fc4:	4651      	mov	r1, sl
20028fc6:	a812      	add	r0, sp, #72	@ 0x48
20028fc8:	f7fe ff00 	bl	20027dcc <mbedtls_mpi_copy>
20028fcc:	b130      	cbz	r0, 20028fdc <mbedtls_mpi_inv_mod+0xa4>
20028fce:	f04f 0b00 	mov.w	fp, #0
20028fd2:	465d      	mov	r5, fp
20028fd4:	46d8      	mov	r8, fp
20028fd6:	465e      	mov	r6, fp
20028fd8:	465f      	mov	r7, fp
20028fda:	e0f5      	b.n	200291c8 <mbedtls_mpi_inv_mod+0x290>
20028fdc:	9017      	str	r0, [sp, #92]	@ 0x5c
20028fde:	4651      	mov	r1, sl
20028fe0:	a815      	add	r0, sp, #84	@ 0x54
20028fe2:	f7fe fef3 	bl	20027dcc <mbedtls_mpi_copy>
20028fe6:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
20028fea:	2800      	cmp	r0, #0
20028fec:	f040 8159 	bne.w	200292a2 <mbedtls_mpi_inv_mod+0x36a>
20028ff0:	4631      	mov	r1, r6
20028ff2:	900e      	str	r0, [sp, #56]	@ 0x38
20028ff4:	a80c      	add	r0, sp, #48	@ 0x30
20028ff6:	f7fe ff12 	bl	20027e1e <mbedtls_mpi_lset>
20028ffa:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20028ffc:	4601      	mov	r1, r0
20028ffe:	2800      	cmp	r0, #0
20029000:	f040 8152 	bne.w	200292a8 <mbedtls_mpi_inv_mod+0x370>
20029004:	9011      	str	r0, [sp, #68]	@ 0x44
20029006:	a80f      	add	r0, sp, #60	@ 0x3c
20029008:	f7fe ff09 	bl	20027e1e <mbedtls_mpi_lset>
2002900c:	9e11      	ldr	r6, [sp, #68]	@ 0x44
2002900e:	4683      	mov	fp, r0
20029010:	2800      	cmp	r0, #0
20029012:	f040 814d 	bne.w	200292b0 <mbedtls_mpi_inv_mod+0x378>
20029016:	4601      	mov	r1, r0
20029018:	901a      	str	r0, [sp, #104]	@ 0x68
2002901a:	a818      	add	r0, sp, #96	@ 0x60
2002901c:	f7fe feff 	bl	20027e1e <mbedtls_mpi_lset>
20029020:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029022:	2800      	cmp	r0, #0
20029024:	f040 8147 	bne.w	200292b6 <mbedtls_mpi_inv_mod+0x37e>
20029028:	2101      	movs	r1, #1
2002902a:	a81b      	add	r0, sp, #108	@ 0x6c
2002902c:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029030:	f7fe fef5 	bl	20027e1e <mbedtls_mpi_lset>
20029034:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
20029038:	2800      	cmp	r0, #0
2002903a:	f040 80c5 	bne.w	200291c8 <mbedtls_mpi_inv_mod+0x290>
2002903e:	f8d9 2000 	ldr.w	r2, [r9]
20029042:	07d0      	lsls	r0, r2, #31
20029044:	d554      	bpl.n	200290f0 <mbedtls_mpi_inv_mod+0x1b8>
20029046:	f8d8 2000 	ldr.w	r2, [r8]
2002904a:	07d3      	lsls	r3, r2, #31
2002904c:	f140 8083 	bpl.w	20029156 <mbedtls_mpi_inv_mod+0x21e>
20029050:	a915      	add	r1, sp, #84	@ 0x54
20029052:	a809      	add	r0, sp, #36	@ 0x24
20029054:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
20029058:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
2002905c:	f7ff f8c6 	bl	200281ec <mbedtls_mpi_cmp_mpi>
20029060:	2800      	cmp	r0, #0
20029062:	f2c0 80b4 	blt.w	200291ce <mbedtls_mpi_inv_mod+0x296>
20029066:	a909      	add	r1, sp, #36	@ 0x24
20029068:	4608      	mov	r0, r1
2002906a:	aa15      	add	r2, sp, #84	@ 0x54
2002906c:	f7ff f9d1 	bl	20028412 <mbedtls_mpi_sub_mpi>
20029070:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20029074:	4604      	mov	r4, r0
20029076:	2800      	cmp	r0, #0
20029078:	f040 80d1 	bne.w	2002921e <mbedtls_mpi_inv_mod+0x2e6>
2002907c:	a90c      	add	r1, sp, #48	@ 0x30
2002907e:	4608      	mov	r0, r1
20029080:	aa18      	add	r2, sp, #96	@ 0x60
20029082:	970e      	str	r7, [sp, #56]	@ 0x38
20029084:	951a      	str	r5, [sp, #104]	@ 0x68
20029086:	f7ff f9c4 	bl	20028412 <mbedtls_mpi_sub_mpi>
2002908a:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
2002908c:	4604      	mov	r4, r0
2002908e:	2800      	cmp	r0, #0
20029090:	f040 80c5 	bne.w	2002921e <mbedtls_mpi_inv_mod+0x2e6>
20029094:	a90f      	add	r1, sp, #60	@ 0x3c
20029096:	4608      	mov	r0, r1
20029098:	aa1b      	add	r2, sp, #108	@ 0x6c
2002909a:	9611      	str	r6, [sp, #68]	@ 0x44
2002909c:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
200290a0:	f7ff f9b7 	bl	20028412 <mbedtls_mpi_sub_mpi>
200290a4:	9e11      	ldr	r6, [sp, #68]	@ 0x44
200290a6:	4604      	mov	r4, r0
200290a8:	2800      	cmp	r0, #0
200290aa:	f040 80b8 	bne.w	2002921e <mbedtls_mpi_inv_mod+0x2e6>
200290ae:	2100      	movs	r1, #0
200290b0:	a809      	add	r0, sp, #36	@ 0x24
200290b2:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
200290b6:	f7ff f8da 	bl	2002826e <mbedtls_mpi_cmp_int>
200290ba:	2800      	cmp	r0, #0
200290bc:	d1bf      	bne.n	2002903e <mbedtls_mpi_inv_mod+0x106>
200290be:	2100      	movs	r1, #0
200290c0:	a818      	add	r0, sp, #96	@ 0x60
200290c2:	951a      	str	r5, [sp, #104]	@ 0x68
200290c4:	f7ff f8d3 	bl	2002826e <mbedtls_mpi_cmp_int>
200290c8:	2800      	cmp	r0, #0
200290ca:	f2c0 809e 	blt.w	2002920a <mbedtls_mpi_inv_mod+0x2d2>
200290ce:	4651      	mov	r1, sl
200290d0:	a818      	add	r0, sp, #96	@ 0x60
200290d2:	951a      	str	r5, [sp, #104]	@ 0x68
200290d4:	f7ff f88a 	bl	200281ec <mbedtls_mpi_cmp_mpi>
200290d8:	2800      	cmp	r0, #0
200290da:	f280 80c8 	bge.w	2002926e <mbedtls_mpi_inv_mod+0x336>
200290de:	9801      	ldr	r0, [sp, #4]
200290e0:	a918      	add	r1, sp, #96	@ 0x60
200290e2:	f7fe fe73 	bl	20027dcc <mbedtls_mpi_copy>
200290e6:	1e04      	subs	r4, r0, #0
200290e8:	bf18      	it	ne
200290ea:	f06f 040f 	mvnne.w	r4, #15
200290ee:	e096      	b.n	2002921e <mbedtls_mpi_inv_mod+0x2e6>
200290f0:	2101      	movs	r1, #1
200290f2:	a809      	add	r0, sp, #36	@ 0x24
200290f4:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
200290f8:	f7fe ff99 	bl	2002802e <mbedtls_mpi_shift_r>
200290fc:	f8dd 902c 	ldr.w	r9, [sp, #44]	@ 0x2c
20029100:	2800      	cmp	r0, #0
20029102:	d161      	bne.n	200291c8 <mbedtls_mpi_inv_mod+0x290>
20029104:	683a      	ldr	r2, [r7, #0]
20029106:	07d3      	lsls	r3, r2, #31
20029108:	d402      	bmi.n	20029110 <mbedtls_mpi_inv_mod+0x1d8>
2002910a:	6832      	ldr	r2, [r6, #0]
2002910c:	07d4      	lsls	r4, r2, #31
2002910e:	d513      	bpl.n	20029138 <mbedtls_mpi_inv_mod+0x200>
20029110:	a90c      	add	r1, sp, #48	@ 0x30
20029112:	4608      	mov	r0, r1
20029114:	aa12      	add	r2, sp, #72	@ 0x48
20029116:	970e      	str	r7, [sp, #56]	@ 0x38
20029118:	f7ff f955 	bl	200283c6 <mbedtls_mpi_add_mpi>
2002911c:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
2002911e:	4604      	mov	r4, r0
20029120:	2800      	cmp	r0, #0
20029122:	d17c      	bne.n	2002921e <mbedtls_mpi_inv_mod+0x2e6>
20029124:	a90f      	add	r1, sp, #60	@ 0x3c
20029126:	4608      	mov	r0, r1
20029128:	aa06      	add	r2, sp, #24
2002912a:	9611      	str	r6, [sp, #68]	@ 0x44
2002912c:	f7ff f971 	bl	20028412 <mbedtls_mpi_sub_mpi>
20029130:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20029132:	4604      	mov	r4, r0
20029134:	2800      	cmp	r0, #0
20029136:	d172      	bne.n	2002921e <mbedtls_mpi_inv_mod+0x2e6>
20029138:	2101      	movs	r1, #1
2002913a:	a80c      	add	r0, sp, #48	@ 0x30
2002913c:	970e      	str	r7, [sp, #56]	@ 0x38
2002913e:	f7fe ff76 	bl	2002802e <mbedtls_mpi_shift_r>
20029142:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
20029144:	2800      	cmp	r0, #0
20029146:	d13f      	bne.n	200291c8 <mbedtls_mpi_inv_mod+0x290>
20029148:	2101      	movs	r1, #1
2002914a:	a80f      	add	r0, sp, #60	@ 0x3c
2002914c:	9611      	str	r6, [sp, #68]	@ 0x44
2002914e:	f7fe ff6e 	bl	2002802e <mbedtls_mpi_shift_r>
20029152:	9e11      	ldr	r6, [sp, #68]	@ 0x44
20029154:	e770      	b.n	20029038 <mbedtls_mpi_inv_mod+0x100>
20029156:	2101      	movs	r1, #1
20029158:	a815      	add	r0, sp, #84	@ 0x54
2002915a:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
2002915e:	f7fe ff66 	bl	2002802e <mbedtls_mpi_shift_r>
20029162:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
20029166:	2800      	cmp	r0, #0
20029168:	d12e      	bne.n	200291c8 <mbedtls_mpi_inv_mod+0x290>
2002916a:	682a      	ldr	r2, [r5, #0]
2002916c:	07d1      	lsls	r1, r2, #31
2002916e:	d403      	bmi.n	20029178 <mbedtls_mpi_inv_mod+0x240>
20029170:	f8db 2000 	ldr.w	r2, [fp]
20029174:	07d2      	lsls	r2, r2, #31
20029176:	d515      	bpl.n	200291a4 <mbedtls_mpi_inv_mod+0x26c>
20029178:	a918      	add	r1, sp, #96	@ 0x60
2002917a:	4608      	mov	r0, r1
2002917c:	aa12      	add	r2, sp, #72	@ 0x48
2002917e:	951a      	str	r5, [sp, #104]	@ 0x68
20029180:	f7ff f921 	bl	200283c6 <mbedtls_mpi_add_mpi>
20029184:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029186:	4604      	mov	r4, r0
20029188:	2800      	cmp	r0, #0
2002918a:	d148      	bne.n	2002921e <mbedtls_mpi_inv_mod+0x2e6>
2002918c:	a91b      	add	r1, sp, #108	@ 0x6c
2002918e:	4608      	mov	r0, r1
20029190:	aa06      	add	r2, sp, #24
20029192:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029196:	f7ff f93c 	bl	20028412 <mbedtls_mpi_sub_mpi>
2002919a:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
2002919e:	4604      	mov	r4, r0
200291a0:	2800      	cmp	r0, #0
200291a2:	d13c      	bne.n	2002921e <mbedtls_mpi_inv_mod+0x2e6>
200291a4:	2101      	movs	r1, #1
200291a6:	a818      	add	r0, sp, #96	@ 0x60
200291a8:	951a      	str	r5, [sp, #104]	@ 0x68
200291aa:	f7fe ff40 	bl	2002802e <mbedtls_mpi_shift_r>
200291ae:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200291b0:	b950      	cbnz	r0, 200291c8 <mbedtls_mpi_inv_mod+0x290>
200291b2:	2101      	movs	r1, #1
200291b4:	a81b      	add	r0, sp, #108	@ 0x6c
200291b6:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
200291ba:	f7fe ff38 	bl	2002802e <mbedtls_mpi_shift_r>
200291be:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
200291c2:	2800      	cmp	r0, #0
200291c4:	f43f af3f 	beq.w	20029046 <mbedtls_mpi_inv_mod+0x10e>
200291c8:	f06f 040f 	mvn.w	r4, #15
200291cc:	e027      	b.n	2002921e <mbedtls_mpi_inv_mod+0x2e6>
200291ce:	a915      	add	r1, sp, #84	@ 0x54
200291d0:	4608      	mov	r0, r1
200291d2:	aa09      	add	r2, sp, #36	@ 0x24
200291d4:	f7ff f91d 	bl	20028412 <mbedtls_mpi_sub_mpi>
200291d8:	f8dd 805c 	ldr.w	r8, [sp, #92]	@ 0x5c
200291dc:	4604      	mov	r4, r0
200291de:	b9f0      	cbnz	r0, 2002921e <mbedtls_mpi_inv_mod+0x2e6>
200291e0:	a918      	add	r1, sp, #96	@ 0x60
200291e2:	4608      	mov	r0, r1
200291e4:	aa0c      	add	r2, sp, #48	@ 0x30
200291e6:	951a      	str	r5, [sp, #104]	@ 0x68
200291e8:	970e      	str	r7, [sp, #56]	@ 0x38
200291ea:	f7ff f912 	bl	20028412 <mbedtls_mpi_sub_mpi>
200291ee:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
200291f0:	4604      	mov	r4, r0
200291f2:	b9a0      	cbnz	r0, 2002921e <mbedtls_mpi_inv_mod+0x2e6>
200291f4:	a91b      	add	r1, sp, #108	@ 0x6c
200291f6:	4608      	mov	r0, r1
200291f8:	aa0f      	add	r2, sp, #60	@ 0x3c
200291fa:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
200291fe:	9611      	str	r6, [sp, #68]	@ 0x44
20029200:	f7ff f907 	bl	20028412 <mbedtls_mpi_sub_mpi>
20029204:	f8dd b074 	ldr.w	fp, [sp, #116]	@ 0x74
20029208:	e74d      	b.n	200290a6 <mbedtls_mpi_inv_mod+0x16e>
2002920a:	a918      	add	r1, sp, #96	@ 0x60
2002920c:	4652      	mov	r2, sl
2002920e:	4608      	mov	r0, r1
20029210:	f7ff f8d9 	bl	200283c6 <mbedtls_mpi_add_mpi>
20029214:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
20029216:	4604      	mov	r4, r0
20029218:	2800      	cmp	r0, #0
2002921a:	f43f af50 	beq.w	200290be <mbedtls_mpi_inv_mod+0x186>
2002921e:	a806      	add	r0, sp, #24
20029220:	f7fe fd93 	bl	20027d4a <mbedtls_mpi_free>
20029224:	a809      	add	r0, sp, #36	@ 0x24
20029226:	f8cd 902c 	str.w	r9, [sp, #44]	@ 0x2c
2002922a:	f7fe fd8e 	bl	20027d4a <mbedtls_mpi_free>
2002922e:	a80c      	add	r0, sp, #48	@ 0x30
20029230:	970e      	str	r7, [sp, #56]	@ 0x38
20029232:	f7fe fd8a 	bl	20027d4a <mbedtls_mpi_free>
20029236:	a80f      	add	r0, sp, #60	@ 0x3c
20029238:	9611      	str	r6, [sp, #68]	@ 0x44
2002923a:	f7fe fd86 	bl	20027d4a <mbedtls_mpi_free>
2002923e:	a803      	add	r0, sp, #12
20029240:	f7fe fd83 	bl	20027d4a <mbedtls_mpi_free>
20029244:	a812      	add	r0, sp, #72	@ 0x48
20029246:	f7fe fd80 	bl	20027d4a <mbedtls_mpi_free>
2002924a:	a815      	add	r0, sp, #84	@ 0x54
2002924c:	f8cd 805c 	str.w	r8, [sp, #92]	@ 0x5c
20029250:	f7fe fd7b 	bl	20027d4a <mbedtls_mpi_free>
20029254:	a818      	add	r0, sp, #96	@ 0x60
20029256:	951a      	str	r5, [sp, #104]	@ 0x68
20029258:	f7fe fd77 	bl	20027d4a <mbedtls_mpi_free>
2002925c:	a81b      	add	r0, sp, #108	@ 0x6c
2002925e:	f8cd b074 	str.w	fp, [sp, #116]	@ 0x74
20029262:	f7fe fd72 	bl	20027d4a <mbedtls_mpi_free>
20029266:	4620      	mov	r0, r4
20029268:	b01f      	add	sp, #124	@ 0x7c
2002926a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002926e:	a918      	add	r1, sp, #96	@ 0x60
20029270:	4652      	mov	r2, sl
20029272:	4608      	mov	r0, r1
20029274:	f7ff f8cd 	bl	20028412 <mbedtls_mpi_sub_mpi>
20029278:	9d1a      	ldr	r5, [sp, #104]	@ 0x68
2002927a:	4604      	mov	r4, r0
2002927c:	2800      	cmp	r0, #0
2002927e:	f43f af26 	beq.w	200290ce <mbedtls_mpi_inv_mod+0x196>
20029282:	e7cc      	b.n	2002921e <mbedtls_mpi_inv_mod+0x2e6>
20029284:	46a3      	mov	fp, r4
20029286:	4625      	mov	r5, r4
20029288:	46a0      	mov	r8, r4
2002928a:	4626      	mov	r6, r4
2002928c:	4627      	mov	r7, r4
2002928e:	46a1      	mov	r9, r4
20029290:	f06f 040d 	mvn.w	r4, #13
20029294:	e7c3      	b.n	2002921e <mbedtls_mpi_inv_mod+0x2e6>
20029296:	46ab      	mov	fp, r5
20029298:	46a8      	mov	r8, r5
2002929a:	462e      	mov	r6, r5
2002929c:	462f      	mov	r7, r5
2002929e:	46a9      	mov	r9, r5
200292a0:	e7bd      	b.n	2002921e <mbedtls_mpi_inv_mod+0x2e6>
200292a2:	46a3      	mov	fp, r4
200292a4:	4625      	mov	r5, r4
200292a6:	e696      	b.n	20028fd6 <mbedtls_mpi_inv_mod+0x9e>
200292a8:	46a3      	mov	fp, r4
200292aa:	4625      	mov	r5, r4
200292ac:	4626      	mov	r6, r4
200292ae:	e78b      	b.n	200291c8 <mbedtls_mpi_inv_mod+0x290>
200292b0:	46a3      	mov	fp, r4
200292b2:	4625      	mov	r5, r4
200292b4:	e788      	b.n	200291c8 <mbedtls_mpi_inv_mod+0x290>
200292b6:	f04f 0b00 	mov.w	fp, #0
200292ba:	e785      	b.n	200291c8 <mbedtls_mpi_inv_mod+0x290>
200292bc:	f06f 0403 	mvn.w	r4, #3
200292c0:	e7d1      	b.n	20029266 <mbedtls_mpi_inv_mod+0x32e>
	...

200292c4 <mbedtls_oid_get_pk_alg>:
200292c4:	b570      	push	{r4, r5, r6, lr}
200292c6:	460e      	mov	r6, r1
200292c8:	4605      	mov	r5, r0
200292ca:	b110      	cbz	r0, 200292d2 <mbedtls_oid_get_pk_alg+0xe>
200292cc:	4c09      	ldr	r4, [pc, #36]	@ (200292f4 <mbedtls_oid_get_pk_alg+0x30>)
200292ce:	6820      	ldr	r0, [r4, #0]
200292d0:	b910      	cbnz	r0, 200292d8 <mbedtls_oid_get_pk_alg+0x14>
200292d2:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
200292d6:	bd70      	pop	{r4, r5, r6, pc}
200292d8:	686b      	ldr	r3, [r5, #4]
200292da:	6862      	ldr	r2, [r4, #4]
200292dc:	429a      	cmp	r2, r3
200292de:	d103      	bne.n	200292e8 <mbedtls_oid_get_pk_alg+0x24>
200292e0:	68a9      	ldr	r1, [r5, #8]
200292e2:	f001 fab3 	bl	2002a84c <memcmp>
200292e6:	b108      	cbz	r0, 200292ec <mbedtls_oid_get_pk_alg+0x28>
200292e8:	3414      	adds	r4, #20
200292ea:	e7f0      	b.n	200292ce <mbedtls_oid_get_pk_alg+0xa>
200292ec:	7c23      	ldrb	r3, [r4, #16]
200292ee:	7033      	strb	r3, [r6, #0]
200292f0:	e7f1      	b.n	200292d6 <mbedtls_oid_get_pk_alg+0x12>
200292f2:	bf00      	nop
200292f4:	2002c25c 	.word	0x2002c25c

200292f8 <mbedtls_oid_get_md_alg>:
200292f8:	b570      	push	{r4, r5, r6, lr}
200292fa:	460e      	mov	r6, r1
200292fc:	4605      	mov	r5, r0
200292fe:	b110      	cbz	r0, 20029306 <mbedtls_oid_get_md_alg+0xe>
20029300:	4c09      	ldr	r4, [pc, #36]	@ (20029328 <mbedtls_oid_get_md_alg+0x30>)
20029302:	6820      	ldr	r0, [r4, #0]
20029304:	b910      	cbnz	r0, 2002930c <mbedtls_oid_get_md_alg+0x14>
20029306:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
2002930a:	bd70      	pop	{r4, r5, r6, pc}
2002930c:	686b      	ldr	r3, [r5, #4]
2002930e:	6862      	ldr	r2, [r4, #4]
20029310:	429a      	cmp	r2, r3
20029312:	d103      	bne.n	2002931c <mbedtls_oid_get_md_alg+0x24>
20029314:	68a9      	ldr	r1, [r5, #8]
20029316:	f001 fa99 	bl	2002a84c <memcmp>
2002931a:	b108      	cbz	r0, 20029320 <mbedtls_oid_get_md_alg+0x28>
2002931c:	3414      	adds	r4, #20
2002931e:	e7f0      	b.n	20029302 <mbedtls_oid_get_md_alg+0xa>
20029320:	7c23      	ldrb	r3, [r4, #16]
20029322:	7033      	strb	r3, [r6, #0]
20029324:	e7f1      	b.n	2002930a <mbedtls_oid_get_md_alg+0x12>
20029326:	bf00      	nop
20029328:	2002c1f8 	.word	0x2002c1f8

2002932c <mbedtls_oid_get_oid_by_md>:
2002932c:	b530      	push	{r4, r5, lr}
2002932e:	4b08      	ldr	r3, [pc, #32]	@ (20029350 <mbedtls_oid_get_oid_by_md+0x24>)
20029330:	681c      	ldr	r4, [r3, #0]
20029332:	b914      	cbnz	r4, 2002933a <mbedtls_oid_get_oid_by_md+0xe>
20029334:	f06f 002d 	mvn.w	r0, #45	@ 0x2d
20029338:	e006      	b.n	20029348 <mbedtls_oid_get_oid_by_md+0x1c>
2002933a:	7c1d      	ldrb	r5, [r3, #16]
2002933c:	4285      	cmp	r5, r0
2002933e:	d104      	bne.n	2002934a <mbedtls_oid_get_oid_by_md+0x1e>
20029340:	2000      	movs	r0, #0
20029342:	600c      	str	r4, [r1, #0]
20029344:	685b      	ldr	r3, [r3, #4]
20029346:	6013      	str	r3, [r2, #0]
20029348:	bd30      	pop	{r4, r5, pc}
2002934a:	3314      	adds	r3, #20
2002934c:	e7f0      	b.n	20029330 <mbedtls_oid_get_oid_by_md+0x4>
2002934e:	bf00      	nop
20029350:	2002c1f8 	.word	0x2002c1f8

20029354 <mbedtls_pk_init>:
20029354:	b110      	cbz	r0, 2002935c <mbedtls_pk_init+0x8>
20029356:	2300      	movs	r3, #0
20029358:	e9c0 3300 	strd	r3, r3, [r0]
2002935c:	4770      	bx	lr

2002935e <mbedtls_pk_free>:
2002935e:	b510      	push	{r4, lr}
20029360:	4604      	mov	r4, r0
20029362:	b160      	cbz	r0, 2002937e <mbedtls_pk_free+0x20>
20029364:	6803      	ldr	r3, [r0, #0]
20029366:	b153      	cbz	r3, 2002937e <mbedtls_pk_free+0x20>
20029368:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
2002936a:	6840      	ldr	r0, [r0, #4]
2002936c:	4798      	blx	r3
2002936e:	2100      	movs	r1, #0
20029370:	f104 0308 	add.w	r3, r4, #8
20029374:	4622      	mov	r2, r4
20029376:	3401      	adds	r4, #1
20029378:	429c      	cmp	r4, r3
2002937a:	7011      	strb	r1, [r2, #0]
2002937c:	d1fa      	bne.n	20029374 <mbedtls_pk_free+0x16>
2002937e:	bd10      	pop	{r4, pc}

20029380 <mbedtls_pk_info_from_type>:
20029380:	2801      	cmp	r0, #1
20029382:	4802      	ldr	r0, [pc, #8]	@ (2002938c <mbedtls_pk_info_from_type+0xc>)
20029384:	bf18      	it	ne
20029386:	2000      	movne	r0, #0
20029388:	4770      	bx	lr
2002938a:	bf00      	nop
2002938c:	2002c2ac 	.word	0x2002c2ac

20029390 <mbedtls_pk_setup>:
20029390:	b570      	push	{r4, r5, r6, lr}
20029392:	460e      	mov	r6, r1
20029394:	4605      	mov	r5, r0
20029396:	b148      	cbz	r0, 200293ac <mbedtls_pk_setup+0x1c>
20029398:	b141      	cbz	r1, 200293ac <mbedtls_pk_setup+0x1c>
2002939a:	6804      	ldr	r4, [r0, #0]
2002939c:	b934      	cbnz	r4, 200293ac <mbedtls_pk_setup+0x1c>
2002939e:	6a4b      	ldr	r3, [r1, #36]	@ 0x24
200293a0:	4798      	blx	r3
200293a2:	6068      	str	r0, [r5, #4]
200293a4:	b120      	cbz	r0, 200293b0 <mbedtls_pk_setup+0x20>
200293a6:	4620      	mov	r0, r4
200293a8:	602e      	str	r6, [r5, #0]
200293aa:	bd70      	pop	{r4, r5, r6, pc}
200293ac:	4801      	ldr	r0, [pc, #4]	@ (200293b4 <mbedtls_pk_setup+0x24>)
200293ae:	e7fc      	b.n	200293aa <mbedtls_pk_setup+0x1a>
200293b0:	4801      	ldr	r0, [pc, #4]	@ (200293b8 <mbedtls_pk_setup+0x28>)
200293b2:	e7fa      	b.n	200293aa <mbedtls_pk_setup+0x1a>
200293b4:	ffffc180 	.word	0xffffc180
200293b8:	ffffc080 	.word	0xffffc080

200293bc <mbedtls_pk_verify>:
200293bc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
200293c0:	460d      	mov	r5, r1
200293c2:	e9dd 8908 	ldrd	r8, r9, [sp, #32]
200293c6:	4616      	mov	r6, r2
200293c8:	4604      	mov	r4, r0
200293ca:	b910      	cbnz	r0, 200293d2 <mbedtls_pk_verify+0x16>
200293cc:	480e      	ldr	r0, [pc, #56]	@ (20029408 <mbedtls_pk_verify+0x4c>)
200293ce:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
200293d2:	6802      	ldr	r2, [r0, #0]
200293d4:	2a00      	cmp	r2, #0
200293d6:	d0f9      	beq.n	200293cc <mbedtls_pk_verify+0x10>
200293d8:	b93b      	cbnz	r3, 200293ea <mbedtls_pk_verify+0x2e>
200293da:	4608      	mov	r0, r1
200293dc:	f7fc fd40 	bl	20025e60 <mbedtls_md_info_from_type>
200293e0:	2800      	cmp	r0, #0
200293e2:	d0f3      	beq.n	200293cc <mbedtls_pk_verify+0x10>
200293e4:	f7fc fd48 	bl	20025e78 <mbedtls_md_get_size>
200293e8:	4603      	mov	r3, r0
200293ea:	6822      	ldr	r2, [r4, #0]
200293ec:	6917      	ldr	r7, [r2, #16]
200293ee:	b147      	cbz	r7, 20029402 <mbedtls_pk_verify+0x46>
200293f0:	e9cd 8908 	strd	r8, r9, [sp, #32]
200293f4:	4632      	mov	r2, r6
200293f6:	4629      	mov	r1, r5
200293f8:	46bc      	mov	ip, r7
200293fa:	6860      	ldr	r0, [r4, #4]
200293fc:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
20029400:	4760      	bx	ip
20029402:	4802      	ldr	r0, [pc, #8]	@ (2002940c <mbedtls_pk_verify+0x50>)
20029404:	e7e3      	b.n	200293ce <mbedtls_pk_verify+0x12>
20029406:	bf00      	nop
20029408:	ffffc180 	.word	0xffffc180
2002940c:	ffffc100 	.word	0xffffc100

20029410 <pk_get_pk_alg>:
20029410:	b530      	push	{r4, r5, lr}
20029412:	4615      	mov	r5, r2
20029414:	2200      	movs	r2, #0
20029416:	b085      	sub	sp, #20
20029418:	e9c3 2200 	strd	r2, r2, [r3]
2002941c:	609a      	str	r2, [r3, #8]
2002941e:	aa01      	add	r2, sp, #4
20029420:	461c      	mov	r4, r3
20029422:	f7fe fa98 	bl	20027956 <mbedtls_asn1_get_alg>
20029426:	b118      	cbz	r0, 20029430 <pk_get_pk_alg+0x20>
20029428:	f5a0 506a 	sub.w	r0, r0, #14976	@ 0x3a80
2002942c:	b005      	add	sp, #20
2002942e:	bd30      	pop	{r4, r5, pc}
20029430:	4629      	mov	r1, r5
20029432:	a801      	add	r0, sp, #4
20029434:	f7ff ff46 	bl	200292c4 <mbedtls_oid_get_pk_alg>
20029438:	b960      	cbnz	r0, 20029454 <pk_get_pk_alg+0x44>
2002943a:	782b      	ldrb	r3, [r5, #0]
2002943c:	2b01      	cmp	r3, #1
2002943e:	d1f5      	bne.n	2002942c <pk_get_pk_alg+0x1c>
20029440:	6823      	ldr	r3, [r4, #0]
20029442:	2b05      	cmp	r3, #5
20029444:	d000      	beq.n	20029448 <pk_get_pk_alg+0x38>
20029446:	b93b      	cbnz	r3, 20029458 <pk_get_pk_alg+0x48>
20029448:	6862      	ldr	r2, [r4, #4]
2002944a:	4b04      	ldr	r3, [pc, #16]	@ (2002945c <pk_get_pk_alg+0x4c>)
2002944c:	2a00      	cmp	r2, #0
2002944e:	bf18      	it	ne
20029450:	4618      	movne	r0, r3
20029452:	e7eb      	b.n	2002942c <pk_get_pk_alg+0x1c>
20029454:	4802      	ldr	r0, [pc, #8]	@ (20029460 <pk_get_pk_alg+0x50>)
20029456:	e7e9      	b.n	2002942c <pk_get_pk_alg+0x1c>
20029458:	4800      	ldr	r0, [pc, #0]	@ (2002945c <pk_get_pk_alg+0x4c>)
2002945a:	e7e7      	b.n	2002942c <pk_get_pk_alg+0x1c>
2002945c:	ffffc580 	.word	0xffffc580
20029460:	ffffc380 	.word	0xffffc380

20029464 <mbedtls_pk_parse_subpubkey>:
20029464:	2300      	movs	r3, #0
20029466:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
2002946a:	b087      	sub	sp, #28
2002946c:	4690      	mov	r8, r2
2002946e:	f88d 3003 	strb.w	r3, [sp, #3]
20029472:	aa01      	add	r2, sp, #4
20029474:	2330      	movs	r3, #48	@ 0x30
20029476:	4606      	mov	r6, r0
20029478:	f7fe fa32 	bl	200278e0 <mbedtls_asn1_get_tag>
2002947c:	b128      	cbz	r0, 2002948a <mbedtls_pk_parse_subpubkey+0x26>
2002947e:	f5a0 5474 	sub.w	r4, r0, #15616	@ 0x3d00
20029482:	4620      	mov	r0, r4
20029484:	b007      	add	sp, #28
20029486:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
2002948a:	9b01      	ldr	r3, [sp, #4]
2002948c:	6837      	ldr	r7, [r6, #0]
2002948e:	4630      	mov	r0, r6
20029490:	441f      	add	r7, r3
20029492:	4639      	mov	r1, r7
20029494:	ab03      	add	r3, sp, #12
20029496:	f10d 0203 	add.w	r2, sp, #3
2002949a:	f7ff ffb9 	bl	20029410 <pk_get_pk_alg>
2002949e:	4604      	mov	r4, r0
200294a0:	2800      	cmp	r0, #0
200294a2:	d1ee      	bne.n	20029482 <mbedtls_pk_parse_subpubkey+0x1e>
200294a4:	4639      	mov	r1, r7
200294a6:	4630      	mov	r0, r6
200294a8:	aa01      	add	r2, sp, #4
200294aa:	f7fe fa40 	bl	2002792e <mbedtls_asn1_get_bitstring_null>
200294ae:	b110      	cbz	r0, 200294b6 <mbedtls_pk_parse_subpubkey+0x52>
200294b0:	f5a0 546c 	sub.w	r4, r0, #15104	@ 0x3b00
200294b4:	e7e5      	b.n	20029482 <mbedtls_pk_parse_subpubkey+0x1e>
200294b6:	6833      	ldr	r3, [r6, #0]
200294b8:	9a01      	ldr	r2, [sp, #4]
200294ba:	4413      	add	r3, r2
200294bc:	429f      	cmp	r7, r3
200294be:	d14b      	bne.n	20029558 <mbedtls_pk_parse_subpubkey+0xf4>
200294c0:	f89d 0003 	ldrb.w	r0, [sp, #3]
200294c4:	f7ff ff5c 	bl	20029380 <mbedtls_pk_info_from_type>
200294c8:	4601      	mov	r1, r0
200294ca:	2800      	cmp	r0, #0
200294cc:	d046      	beq.n	2002955c <mbedtls_pk_parse_subpubkey+0xf8>
200294ce:	4640      	mov	r0, r8
200294d0:	f7ff ff5e 	bl	20029390 <mbedtls_pk_setup>
200294d4:	4604      	mov	r4, r0
200294d6:	2800      	cmp	r0, #0
200294d8:	d1d3      	bne.n	20029482 <mbedtls_pk_parse_subpubkey+0x1e>
200294da:	f89d 3003 	ldrb.w	r3, [sp, #3]
200294de:	2b01      	cmp	r3, #1
200294e0:	d138      	bne.n	20029554 <mbedtls_pk_parse_subpubkey+0xf0>
200294e2:	2330      	movs	r3, #48	@ 0x30
200294e4:	4639      	mov	r1, r7
200294e6:	4630      	mov	r0, r6
200294e8:	aa02      	add	r2, sp, #8
200294ea:	f8d8 5004 	ldr.w	r5, [r8, #4]
200294ee:	f7fe f9f7 	bl	200278e0 <mbedtls_asn1_get_tag>
200294f2:	b138      	cbz	r0, 20029504 <mbedtls_pk_parse_subpubkey+0xa0>
200294f4:	f5a0 556c 	sub.w	r5, r0, #15104	@ 0x3b00
200294f8:	bb3d      	cbnz	r5, 2002954a <mbedtls_pk_parse_subpubkey+0xe6>
200294fa:	6833      	ldr	r3, [r6, #0]
200294fc:	42bb      	cmp	r3, r7
200294fe:	d0c0      	beq.n	20029482 <mbedtls_pk_parse_subpubkey+0x1e>
20029500:	4d17      	ldr	r5, [pc, #92]	@ (20029560 <mbedtls_pk_parse_subpubkey+0xfc>)
20029502:	e022      	b.n	2002954a <mbedtls_pk_parse_subpubkey+0xe6>
20029504:	6833      	ldr	r3, [r6, #0]
20029506:	9a02      	ldr	r2, [sp, #8]
20029508:	4413      	add	r3, r2
2002950a:	429f      	cmp	r7, r3
2002950c:	d1f8      	bne.n	20029500 <mbedtls_pk_parse_subpubkey+0x9c>
2002950e:	f105 0a08 	add.w	sl, r5, #8
20029512:	4652      	mov	r2, sl
20029514:	4639      	mov	r1, r7
20029516:	4630      	mov	r0, r6
20029518:	f7fe f9f6 	bl	20027908 <mbedtls_asn1_get_mpi>
2002951c:	2800      	cmp	r0, #0
2002951e:	d1e9      	bne.n	200294f4 <mbedtls_pk_parse_subpubkey+0x90>
20029520:	4639      	mov	r1, r7
20029522:	4630      	mov	r0, r6
20029524:	f105 0214 	add.w	r2, r5, #20
20029528:	f7fe f9ee 	bl	20027908 <mbedtls_asn1_get_mpi>
2002952c:	2800      	cmp	r0, #0
2002952e:	d1e1      	bne.n	200294f4 <mbedtls_pk_parse_subpubkey+0x90>
20029530:	6833      	ldr	r3, [r6, #0]
20029532:	429f      	cmp	r7, r3
20029534:	d1e4      	bne.n	20029500 <mbedtls_pk_parse_subpubkey+0x9c>
20029536:	4628      	mov	r0, r5
20029538:	f000 f8c2 	bl	200296c0 <mbedtls_rsa_check_pubkey>
2002953c:	b920      	cbnz	r0, 20029548 <mbedtls_pk_parse_subpubkey+0xe4>
2002953e:	4650      	mov	r0, sl
20029540:	f7fe fcbe 	bl	20027ec0 <mbedtls_mpi_size>
20029544:	6068      	str	r0, [r5, #4]
20029546:	e7d8      	b.n	200294fa <mbedtls_pk_parse_subpubkey+0x96>
20029548:	4d06      	ldr	r5, [pc, #24]	@ (20029564 <mbedtls_pk_parse_subpubkey+0x100>)
2002954a:	4640      	mov	r0, r8
2002954c:	f7ff ff07 	bl	2002935e <mbedtls_pk_free>
20029550:	462c      	mov	r4, r5
20029552:	e796      	b.n	20029482 <mbedtls_pk_parse_subpubkey+0x1e>
20029554:	4d04      	ldr	r5, [pc, #16]	@ (20029568 <mbedtls_pk_parse_subpubkey+0x104>)
20029556:	e7f8      	b.n	2002954a <mbedtls_pk_parse_subpubkey+0xe6>
20029558:	4c01      	ldr	r4, [pc, #4]	@ (20029560 <mbedtls_pk_parse_subpubkey+0xfc>)
2002955a:	e792      	b.n	20029482 <mbedtls_pk_parse_subpubkey+0x1e>
2002955c:	4c02      	ldr	r4, [pc, #8]	@ (20029568 <mbedtls_pk_parse_subpubkey+0x104>)
2002955e:	e790      	b.n	20029482 <mbedtls_pk_parse_subpubkey+0x1e>
20029560:	ffffc49a 	.word	0xffffc49a
20029564:	ffffc500 	.word	0xffffc500
20029568:	ffffc380 	.word	0xffffc380

2002956c <mbedtls_pk_parse_public_key>:
2002956c:	4613      	mov	r3, r2
2002956e:	b507      	push	{r0, r1, r2, lr}
20029570:	4602      	mov	r2, r0
20029572:	9101      	str	r1, [sp, #4]
20029574:	a801      	add	r0, sp, #4
20029576:	4419      	add	r1, r3
20029578:	f7ff ff74 	bl	20029464 <mbedtls_pk_parse_subpubkey>
2002957c:	b003      	add	sp, #12
2002957e:	f85d fb04 	ldr.w	pc, [sp], #4

20029582 <rsa_can_do>:
20029582:	2801      	cmp	r0, #1
20029584:	d002      	beq.n	2002958c <rsa_can_do+0xa>
20029586:	1f83      	subs	r3, r0, #6
20029588:	4258      	negs	r0, r3
2002958a:	4158      	adcs	r0, r3
2002958c:	4770      	bx	lr

2002958e <rsa_get_bitlen>:
2002958e:	6840      	ldr	r0, [r0, #4]
20029590:	00c0      	lsls	r0, r0, #3
20029592:	4770      	bx	lr

20029594 <rsa_debug>:
20029594:	2301      	movs	r3, #1
20029596:	4a06      	ldr	r2, [pc, #24]	@ (200295b0 <rsa_debug+0x1c>)
20029598:	700b      	strb	r3, [r1, #0]
2002959a:	730b      	strb	r3, [r1, #12]
2002959c:	4b05      	ldr	r3, [pc, #20]	@ (200295b4 <rsa_debug+0x20>)
2002959e:	604a      	str	r2, [r1, #4]
200295a0:	f100 0208 	add.w	r2, r0, #8
200295a4:	3014      	adds	r0, #20
200295a6:	608a      	str	r2, [r1, #8]
200295a8:	610b      	str	r3, [r1, #16]
200295aa:	6148      	str	r0, [r1, #20]
200295ac:	4770      	bx	lr
200295ae:	bf00      	nop
200295b0:	2002b088 	.word	0x2002b088
200295b4:	2002b08e 	.word	0x2002b08e

200295b8 <rsa_free_wrap>:
200295b8:	b510      	push	{r4, lr}
200295ba:	4604      	mov	r4, r0
200295bc:	f000 fe7c 	bl	2002a2b8 <mbedtls_rsa_free>
200295c0:	4620      	mov	r0, r4
200295c2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
200295c6:	f001 b88b 	b.w	2002a6e0 <free>

200295ca <rsa_alloc_wrap>:
200295ca:	b510      	push	{r4, lr}
200295cc:	21ac      	movs	r1, #172	@ 0xac
200295ce:	2001      	movs	r0, #1
200295d0:	f001 f86a 	bl	2002a6a8 <calloc>
200295d4:	4604      	mov	r4, r0
200295d6:	b118      	cbz	r0, 200295e0 <rsa_alloc_wrap+0x16>
200295d8:	2200      	movs	r2, #0
200295da:	4611      	mov	r1, r2
200295dc:	f000 f862 	bl	200296a4 <mbedtls_rsa_init>
200295e0:	4620      	mov	r0, r4
200295e2:	bd10      	pop	{r4, pc}

200295e4 <rsa_check_pair_wrap>:
200295e4:	f000 b99c 	b.w	20029920 <mbedtls_rsa_check_pub_priv>

200295e8 <rsa_encrypt_wrap>:
200295e8:	b4f0      	push	{r4, r5, r6, r7}
200295ea:	9f04      	ldr	r7, [sp, #16]
200295ec:	6846      	ldr	r6, [r0, #4]
200295ee:	460d      	mov	r5, r1
200295f0:	603e      	str	r6, [r7, #0]
200295f2:	9f05      	ldr	r7, [sp, #20]
200295f4:	4614      	mov	r4, r2
200295f6:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
200295fa:	42be      	cmp	r6, r7
200295fc:	d806      	bhi.n	2002960c <rsa_encrypt_wrap+0x24>
200295fe:	e9cd 5305 	strd	r5, r3, [sp, #20]
20029602:	9404      	str	r4, [sp, #16]
20029604:	2300      	movs	r3, #0
20029606:	bcf0      	pop	{r4, r5, r6, r7}
20029608:	f000 bbe2 	b.w	20029dd0 <mbedtls_rsa_pkcs1_encrypt>
2002960c:	4801      	ldr	r0, [pc, #4]	@ (20029614 <rsa_encrypt_wrap+0x2c>)
2002960e:	bcf0      	pop	{r4, r5, r6, r7}
20029610:	4770      	bx	lr
20029612:	bf00      	nop
20029614:	ffffbc00 	.word	0xffffbc00

20029618 <rsa_decrypt_wrap>:
20029618:	b4f0      	push	{r4, r5, r6, r7}
2002961a:	4616      	mov	r6, r2
2002961c:	6847      	ldr	r7, [r0, #4]
2002961e:	460c      	mov	r4, r1
20029620:	e9dd 5105 	ldrd	r5, r1, [sp, #20]
20029624:	42b7      	cmp	r7, r6
20029626:	9a07      	ldr	r2, [sp, #28]
20029628:	d106      	bne.n	20029638 <rsa_decrypt_wrap+0x20>
2002962a:	e9cd 3506 	strd	r3, r5, [sp, #24]
2002962e:	9405      	str	r4, [sp, #20]
20029630:	2301      	movs	r3, #1
20029632:	bcf0      	pop	{r4, r5, r6, r7}
20029634:	f000 bc6e 	b.w	20029f14 <mbedtls_rsa_pkcs1_decrypt>
20029638:	4801      	ldr	r0, [pc, #4]	@ (20029640 <rsa_decrypt_wrap+0x28>)
2002963a:	bcf0      	pop	{r4, r5, r6, r7}
2002963c:	4770      	bx	lr
2002963e:	bf00      	nop
20029640:	ffffbf80 	.word	0xffffbf80

20029644 <rsa_sign_wrap>:
20029644:	b4f0      	push	{r4, r5, r6, r7}
20029646:	460c      	mov	r4, r1
20029648:	4615      	mov	r5, r2
2002964a:	e9dd 1206 	ldrd	r1, r2, [sp, #24]
2002964e:	6847      	ldr	r7, [r0, #4]
20029650:	9e05      	ldr	r6, [sp, #20]
20029652:	6037      	str	r7, [r6, #0]
20029654:	9e04      	ldr	r6, [sp, #16]
20029656:	e9cd 4304 	strd	r4, r3, [sp, #16]
2002965a:	e9cd 5606 	strd	r5, r6, [sp, #24]
2002965e:	bcf0      	pop	{r4, r5, r6, r7}
20029660:	2301      	movs	r3, #1
20029662:	f000 bd31 	b.w	2002a0c8 <mbedtls_rsa_pkcs1_sign>
	...

20029668 <rsa_verify_wrap>:
20029668:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
2002966a:	9d09      	ldr	r5, [sp, #36]	@ 0x24
2002966c:	6846      	ldr	r6, [r0, #4]
2002966e:	4604      	mov	r4, r0
20029670:	42ae      	cmp	r6, r5
20029672:	d811      	bhi.n	20029698 <rsa_verify_wrap+0x30>
20029674:	e9cd 1300 	strd	r1, r3, [sp]
20029678:	2300      	movs	r3, #0
2002967a:	9e08      	ldr	r6, [sp, #32]
2002967c:	4619      	mov	r1, r3
2002967e:	e9cd 2602 	strd	r2, r6, [sp, #8]
20029682:	461a      	mov	r2, r3
20029684:	f000 fe08 	bl	2002a298 <mbedtls_rsa_pkcs1_verify>
20029688:	b920      	cbnz	r0, 20029694 <rsa_verify_wrap+0x2c>
2002968a:	6862      	ldr	r2, [r4, #4]
2002968c:	4b03      	ldr	r3, [pc, #12]	@ (2002969c <rsa_verify_wrap+0x34>)
2002968e:	42aa      	cmp	r2, r5
20029690:	bf38      	it	cc
20029692:	4618      	movcc	r0, r3
20029694:	b004      	add	sp, #16
20029696:	bd70      	pop	{r4, r5, r6, pc}
20029698:	4801      	ldr	r0, [pc, #4]	@ (200296a0 <rsa_verify_wrap+0x38>)
2002969a:	e7fb      	b.n	20029694 <rsa_verify_wrap+0x2c>
2002969c:	ffffc700 	.word	0xffffc700
200296a0:	ffffbc80 	.word	0xffffbc80

200296a4 <mbedtls_rsa_init>:
200296a4:	b570      	push	{r4, r5, r6, lr}
200296a6:	4604      	mov	r4, r0
200296a8:	460e      	mov	r6, r1
200296aa:	4615      	mov	r5, r2
200296ac:	2100      	movs	r1, #0
200296ae:	22ac      	movs	r2, #172	@ 0xac
200296b0:	f001 f8dc 	bl	2002a86c <memset>
200296b4:	e9c4 6529 	strd	r6, r5, [r4, #164]	@ 0xa4
200296b8:	bd70      	pop	{r4, r5, r6, pc}

200296ba <mbedtls_rsa_set_padding>:
200296ba:	e9c0 1229 	strd	r1, r2, [r0, #164]	@ 0xa4
200296be:	4770      	bx	lr

200296c0 <mbedtls_rsa_check_pubkey>:
200296c0:	b538      	push	{r3, r4, r5, lr}
200296c2:	6902      	ldr	r2, [r0, #16]
200296c4:	4604      	mov	r4, r0
200296c6:	b10a      	cbz	r2, 200296cc <mbedtls_rsa_check_pubkey+0xc>
200296c8:	69c3      	ldr	r3, [r0, #28]
200296ca:	b90b      	cbnz	r3, 200296d0 <mbedtls_rsa_check_pubkey+0x10>
200296cc:	4811      	ldr	r0, [pc, #68]	@ (20029714 <mbedtls_rsa_check_pubkey+0x54>)
200296ce:	bd38      	pop	{r3, r4, r5, pc}
200296d0:	6812      	ldr	r2, [r2, #0]
200296d2:	07d2      	lsls	r2, r2, #31
200296d4:	d5fa      	bpl.n	200296cc <mbedtls_rsa_check_pubkey+0xc>
200296d6:	681b      	ldr	r3, [r3, #0]
200296d8:	07db      	lsls	r3, r3, #31
200296da:	d5f7      	bpl.n	200296cc <mbedtls_rsa_check_pubkey+0xc>
200296dc:	f100 0508 	add.w	r5, r0, #8
200296e0:	4628      	mov	r0, r5
200296e2:	f7fe fbd0 	bl	20027e86 <mbedtls_mpi_bitlen>
200296e6:	287f      	cmp	r0, #127	@ 0x7f
200296e8:	d9f0      	bls.n	200296cc <mbedtls_rsa_check_pubkey+0xc>
200296ea:	4628      	mov	r0, r5
200296ec:	f7fe fbcb 	bl	20027e86 <mbedtls_mpi_bitlen>
200296f0:	f5b0 5f00 	cmp.w	r0, #8192	@ 0x2000
200296f4:	d8ea      	bhi.n	200296cc <mbedtls_rsa_check_pubkey+0xc>
200296f6:	3414      	adds	r4, #20
200296f8:	4620      	mov	r0, r4
200296fa:	f7fe fbc4 	bl	20027e86 <mbedtls_mpi_bitlen>
200296fe:	2801      	cmp	r0, #1
20029700:	d9e4      	bls.n	200296cc <mbedtls_rsa_check_pubkey+0xc>
20029702:	4629      	mov	r1, r5
20029704:	4620      	mov	r0, r4
20029706:	f7fe fd71 	bl	200281ec <mbedtls_mpi_cmp_mpi>
2002970a:	2800      	cmp	r0, #0
2002970c:	dade      	bge.n	200296cc <mbedtls_rsa_check_pubkey+0xc>
2002970e:	2000      	movs	r0, #0
20029710:	e7dd      	b.n	200296ce <mbedtls_rsa_check_pubkey+0xe>
20029712:	bf00      	nop
20029714:	ffffbe00 	.word	0xffffbe00

20029718 <mbedtls_rsa_check_privkey>:
20029718:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
2002971c:	b0a9      	sub	sp, #164	@ 0xa4
2002971e:	4605      	mov	r5, r0
20029720:	f7ff ffce 	bl	200296c0 <mbedtls_rsa_check_pubkey>
20029724:	b120      	cbz	r0, 20029730 <mbedtls_rsa_check_privkey+0x18>
20029726:	4c7d      	ldr	r4, [pc, #500]	@ (2002991c <mbedtls_rsa_check_privkey+0x204>)
20029728:	4620      	mov	r0, r4
2002972a:	b029      	add	sp, #164	@ 0xa4
2002972c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
20029730:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
20029732:	2b00      	cmp	r3, #0
20029734:	d0f7      	beq.n	20029726 <mbedtls_rsa_check_privkey+0xe>
20029736:	6c2b      	ldr	r3, [r5, #64]	@ 0x40
20029738:	2b00      	cmp	r3, #0
2002973a:	d0f4      	beq.n	20029726 <mbedtls_rsa_check_privkey+0xe>
2002973c:	6aab      	ldr	r3, [r5, #40]	@ 0x28
2002973e:	2b00      	cmp	r3, #0
20029740:	d0f1      	beq.n	20029726 <mbedtls_rsa_check_privkey+0xe>
20029742:	a801      	add	r0, sp, #4
20029744:	f7fe fafa 	bl	20027d3c <mbedtls_mpi_init>
20029748:	a804      	add	r0, sp, #16
2002974a:	f7fe faf7 	bl	20027d3c <mbedtls_mpi_init>
2002974e:	a807      	add	r0, sp, #28
20029750:	f7fe faf4 	bl	20027d3c <mbedtls_mpi_init>
20029754:	a80a      	add	r0, sp, #40	@ 0x28
20029756:	f7fe faf1 	bl	20027d3c <mbedtls_mpi_init>
2002975a:	a80d      	add	r0, sp, #52	@ 0x34
2002975c:	f7fe faee 	bl	20027d3c <mbedtls_mpi_init>
20029760:	a810      	add	r0, sp, #64	@ 0x40
20029762:	f7fe faeb 	bl	20027d3c <mbedtls_mpi_init>
20029766:	a813      	add	r0, sp, #76	@ 0x4c
20029768:	f7fe fae8 	bl	20027d3c <mbedtls_mpi_init>
2002976c:	a816      	add	r0, sp, #88	@ 0x58
2002976e:	f7fe fae5 	bl	20027d3c <mbedtls_mpi_init>
20029772:	a819      	add	r0, sp, #100	@ 0x64
20029774:	f7fe fae2 	bl	20027d3c <mbedtls_mpi_init>
20029778:	a81c      	add	r0, sp, #112	@ 0x70
2002977a:	f7fe fadf 	bl	20027d3c <mbedtls_mpi_init>
2002977e:	a81f      	add	r0, sp, #124	@ 0x7c
20029780:	f7fe fadc 	bl	20027d3c <mbedtls_mpi_init>
20029784:	a822      	add	r0, sp, #136	@ 0x88
20029786:	f7fe fad9 	bl	20027d3c <mbedtls_mpi_init>
2002978a:	f105 072c 	add.w	r7, r5, #44	@ 0x2c
2002978e:	a825      	add	r0, sp, #148	@ 0x94
20029790:	f105 0638 	add.w	r6, r5, #56	@ 0x38
20029794:	f7fe fad2 	bl	20027d3c <mbedtls_mpi_init>
20029798:	4632      	mov	r2, r6
2002979a:	4639      	mov	r1, r7
2002979c:	a801      	add	r0, sp, #4
2002979e:	f7fe fe75 	bl	2002848c <mbedtls_mpi_mul_mpi>
200297a2:	4604      	mov	r4, r0
200297a4:	2800      	cmp	r0, #0
200297a6:	d15e      	bne.n	20029866 <mbedtls_rsa_check_privkey+0x14e>
200297a8:	f105 0820 	add.w	r8, r5, #32
200297ac:	f105 0914 	add.w	r9, r5, #20
200297b0:	464a      	mov	r2, r9
200297b2:	4641      	mov	r1, r8
200297b4:	a804      	add	r0, sp, #16
200297b6:	f7fe fe69 	bl	2002848c <mbedtls_mpi_mul_mpi>
200297ba:	4604      	mov	r4, r0
200297bc:	2800      	cmp	r0, #0
200297be:	d152      	bne.n	20029866 <mbedtls_rsa_check_privkey+0x14e>
200297c0:	2201      	movs	r2, #1
200297c2:	4639      	mov	r1, r7
200297c4:	a807      	add	r0, sp, #28
200297c6:	f7fe fe4b 	bl	20028460 <mbedtls_mpi_sub_int>
200297ca:	4604      	mov	r4, r0
200297cc:	2800      	cmp	r0, #0
200297ce:	d14a      	bne.n	20029866 <mbedtls_rsa_check_privkey+0x14e>
200297d0:	2201      	movs	r2, #1
200297d2:	4631      	mov	r1, r6
200297d4:	a80a      	add	r0, sp, #40	@ 0x28
200297d6:	f7fe fe43 	bl	20028460 <mbedtls_mpi_sub_int>
200297da:	4604      	mov	r4, r0
200297dc:	2800      	cmp	r0, #0
200297de:	d142      	bne.n	20029866 <mbedtls_rsa_check_privkey+0x14e>
200297e0:	aa0a      	add	r2, sp, #40	@ 0x28
200297e2:	a907      	add	r1, sp, #28
200297e4:	a80d      	add	r0, sp, #52	@ 0x34
200297e6:	f7fe fe51 	bl	2002848c <mbedtls_mpi_mul_mpi>
200297ea:	4604      	mov	r4, r0
200297ec:	2800      	cmp	r0, #0
200297ee:	d13a      	bne.n	20029866 <mbedtls_rsa_check_privkey+0x14e>
200297f0:	4649      	mov	r1, r9
200297f2:	aa0d      	add	r2, sp, #52	@ 0x34
200297f4:	a813      	add	r0, sp, #76	@ 0x4c
200297f6:	f7ff fb04 	bl	20028e02 <mbedtls_mpi_gcd>
200297fa:	4604      	mov	r4, r0
200297fc:	2800      	cmp	r0, #0
200297fe:	d132      	bne.n	20029866 <mbedtls_rsa_check_privkey+0x14e>
20029800:	aa0a      	add	r2, sp, #40	@ 0x28
20029802:	a907      	add	r1, sp, #28
20029804:	a816      	add	r0, sp, #88	@ 0x58
20029806:	f7ff fafc 	bl	20028e02 <mbedtls_mpi_gcd>
2002980a:	4604      	mov	r4, r0
2002980c:	bb58      	cbnz	r0, 20029866 <mbedtls_rsa_check_privkey+0x14e>
2002980e:	ab16      	add	r3, sp, #88	@ 0x58
20029810:	aa0d      	add	r2, sp, #52	@ 0x34
20029812:	a91c      	add	r1, sp, #112	@ 0x70
20029814:	a819      	add	r0, sp, #100	@ 0x64
20029816:	f7fe feaa 	bl	2002856e <mbedtls_mpi_div_mpi>
2002981a:	4604      	mov	r4, r0
2002981c:	bb18      	cbnz	r0, 20029866 <mbedtls_rsa_check_privkey+0x14e>
2002981e:	aa19      	add	r2, sp, #100	@ 0x64
20029820:	a904      	add	r1, sp, #16
20029822:	a810      	add	r0, sp, #64	@ 0x40
20029824:	f7ff f8a7 	bl	20028976 <mbedtls_mpi_mod_mpi>
20029828:	4604      	mov	r4, r0
2002982a:	b9e0      	cbnz	r0, 20029866 <mbedtls_rsa_check_privkey+0x14e>
2002982c:	4641      	mov	r1, r8
2002982e:	aa07      	add	r2, sp, #28
20029830:	a81f      	add	r0, sp, #124	@ 0x7c
20029832:	f7ff f8a0 	bl	20028976 <mbedtls_mpi_mod_mpi>
20029836:	4604      	mov	r4, r0
20029838:	b9a8      	cbnz	r0, 20029866 <mbedtls_rsa_check_privkey+0x14e>
2002983a:	4641      	mov	r1, r8
2002983c:	aa0a      	add	r2, sp, #40	@ 0x28
2002983e:	a822      	add	r0, sp, #136	@ 0x88
20029840:	f7ff f899 	bl	20028976 <mbedtls_mpi_mod_mpi>
20029844:	4604      	mov	r4, r0
20029846:	b970      	cbnz	r0, 20029866 <mbedtls_rsa_check_privkey+0x14e>
20029848:	463a      	mov	r2, r7
2002984a:	4631      	mov	r1, r6
2002984c:	a825      	add	r0, sp, #148	@ 0x94
2002984e:	f7ff fb73 	bl	20028f38 <mbedtls_mpi_inv_mod>
20029852:	4604      	mov	r4, r0
20029854:	b938      	cbnz	r0, 20029866 <mbedtls_rsa_check_privkey+0x14e>
20029856:	f105 0108 	add.w	r1, r5, #8
2002985a:	a801      	add	r0, sp, #4
2002985c:	f7fe fcc6 	bl	200281ec <mbedtls_mpi_cmp_mpi>
20029860:	2800      	cmp	r0, #0
20029862:	d031      	beq.n	200298c8 <mbedtls_rsa_check_privkey+0x1b0>
20029864:	4c2d      	ldr	r4, [pc, #180]	@ (2002991c <mbedtls_rsa_check_privkey+0x204>)
20029866:	a801      	add	r0, sp, #4
20029868:	f7fe fa6f 	bl	20027d4a <mbedtls_mpi_free>
2002986c:	a804      	add	r0, sp, #16
2002986e:	f7fe fa6c 	bl	20027d4a <mbedtls_mpi_free>
20029872:	a807      	add	r0, sp, #28
20029874:	f7fe fa69 	bl	20027d4a <mbedtls_mpi_free>
20029878:	a80a      	add	r0, sp, #40	@ 0x28
2002987a:	f7fe fa66 	bl	20027d4a <mbedtls_mpi_free>
2002987e:	a80d      	add	r0, sp, #52	@ 0x34
20029880:	f7fe fa63 	bl	20027d4a <mbedtls_mpi_free>
20029884:	a810      	add	r0, sp, #64	@ 0x40
20029886:	f7fe fa60 	bl	20027d4a <mbedtls_mpi_free>
2002988a:	a813      	add	r0, sp, #76	@ 0x4c
2002988c:	f7fe fa5d 	bl	20027d4a <mbedtls_mpi_free>
20029890:	a816      	add	r0, sp, #88	@ 0x58
20029892:	f7fe fa5a 	bl	20027d4a <mbedtls_mpi_free>
20029896:	a819      	add	r0, sp, #100	@ 0x64
20029898:	f7fe fa57 	bl	20027d4a <mbedtls_mpi_free>
2002989c:	a81c      	add	r0, sp, #112	@ 0x70
2002989e:	f7fe fa54 	bl	20027d4a <mbedtls_mpi_free>
200298a2:	a81f      	add	r0, sp, #124	@ 0x7c
200298a4:	f7fe fa51 	bl	20027d4a <mbedtls_mpi_free>
200298a8:	a822      	add	r0, sp, #136	@ 0x88
200298aa:	f7fe fa4e 	bl	20027d4a <mbedtls_mpi_free>
200298ae:	a825      	add	r0, sp, #148	@ 0x94
200298b0:	f7fe fa4b 	bl	20027d4a <mbedtls_mpi_free>
200298b4:	f514 4f84 	cmn.w	r4, #16896	@ 0x4200
200298b8:	f43f af35 	beq.w	20029726 <mbedtls_rsa_check_privkey+0xe>
200298bc:	2c00      	cmp	r4, #0
200298be:	f43f af33 	beq.w	20029728 <mbedtls_rsa_check_privkey+0x10>
200298c2:	f5a4 4484 	sub.w	r4, r4, #16896	@ 0x4200
200298c6:	e72f      	b.n	20029728 <mbedtls_rsa_check_privkey+0x10>
200298c8:	f105 0144 	add.w	r1, r5, #68	@ 0x44
200298cc:	a81f      	add	r0, sp, #124	@ 0x7c
200298ce:	f7fe fc8d 	bl	200281ec <mbedtls_mpi_cmp_mpi>
200298d2:	2800      	cmp	r0, #0
200298d4:	d1c6      	bne.n	20029864 <mbedtls_rsa_check_privkey+0x14c>
200298d6:	f105 0150 	add.w	r1, r5, #80	@ 0x50
200298da:	a822      	add	r0, sp, #136	@ 0x88
200298dc:	f7fe fc86 	bl	200281ec <mbedtls_mpi_cmp_mpi>
200298e0:	2800      	cmp	r0, #0
200298e2:	d1bf      	bne.n	20029864 <mbedtls_rsa_check_privkey+0x14c>
200298e4:	f105 015c 	add.w	r1, r5, #92	@ 0x5c
200298e8:	a825      	add	r0, sp, #148	@ 0x94
200298ea:	f7fe fc7f 	bl	200281ec <mbedtls_mpi_cmp_mpi>
200298ee:	2800      	cmp	r0, #0
200298f0:	d1b8      	bne.n	20029864 <mbedtls_rsa_check_privkey+0x14c>
200298f2:	2100      	movs	r1, #0
200298f4:	a81c      	add	r0, sp, #112	@ 0x70
200298f6:	f7fe fcba 	bl	2002826e <mbedtls_mpi_cmp_int>
200298fa:	2800      	cmp	r0, #0
200298fc:	d1b2      	bne.n	20029864 <mbedtls_rsa_check_privkey+0x14c>
200298fe:	2101      	movs	r1, #1
20029900:	a810      	add	r0, sp, #64	@ 0x40
20029902:	f7fe fcb4 	bl	2002826e <mbedtls_mpi_cmp_int>
20029906:	2800      	cmp	r0, #0
20029908:	d1ac      	bne.n	20029864 <mbedtls_rsa_check_privkey+0x14c>
2002990a:	2101      	movs	r1, #1
2002990c:	a813      	add	r0, sp, #76	@ 0x4c
2002990e:	f7fe fcae 	bl	2002826e <mbedtls_mpi_cmp_int>
20029912:	4604      	mov	r4, r0
20029914:	2800      	cmp	r0, #0
20029916:	d1a5      	bne.n	20029864 <mbedtls_rsa_check_privkey+0x14c>
20029918:	e7a5      	b.n	20029866 <mbedtls_rsa_check_privkey+0x14e>
2002991a:	bf00      	nop
2002991c:	ffffbe00 	.word	0xffffbe00

20029920 <mbedtls_rsa_check_pub_priv>:
20029920:	b538      	push	{r3, r4, r5, lr}
20029922:	4605      	mov	r5, r0
20029924:	460c      	mov	r4, r1
20029926:	f7ff fecb 	bl	200296c0 <mbedtls_rsa_check_pubkey>
2002992a:	b918      	cbnz	r0, 20029934 <mbedtls_rsa_check_pub_priv+0x14>
2002992c:	4620      	mov	r0, r4
2002992e:	f7ff fef3 	bl	20029718 <mbedtls_rsa_check_privkey>
20029932:	b108      	cbz	r0, 20029938 <mbedtls_rsa_check_pub_priv+0x18>
20029934:	4809      	ldr	r0, [pc, #36]	@ (2002995c <mbedtls_rsa_check_pub_priv+0x3c>)
20029936:	bd38      	pop	{r3, r4, r5, pc}
20029938:	f104 0108 	add.w	r1, r4, #8
2002993c:	f105 0008 	add.w	r0, r5, #8
20029940:	f7fe fc54 	bl	200281ec <mbedtls_mpi_cmp_mpi>
20029944:	2800      	cmp	r0, #0
20029946:	d1f5      	bne.n	20029934 <mbedtls_rsa_check_pub_priv+0x14>
20029948:	f104 0114 	add.w	r1, r4, #20
2002994c:	f105 0014 	add.w	r0, r5, #20
20029950:	f7fe fc4c 	bl	200281ec <mbedtls_mpi_cmp_mpi>
20029954:	2800      	cmp	r0, #0
20029956:	d0ee      	beq.n	20029936 <mbedtls_rsa_check_pub_priv+0x16>
20029958:	e7ec      	b.n	20029934 <mbedtls_rsa_check_pub_priv+0x14>
2002995a:	bf00      	nop
2002995c:	ffffbe00 	.word	0xffffbe00

20029960 <mbedtls_rsa_public>:
20029960:	b5f0      	push	{r4, r5, r6, r7, lr}
20029962:	460c      	mov	r4, r1
20029964:	4605      	mov	r5, r0
20029966:	b087      	sub	sp, #28
20029968:	a803      	add	r0, sp, #12
2002996a:	4616      	mov	r6, r2
2002996c:	f7fe f9e6 	bl	20027d3c <mbedtls_mpi_init>
20029970:	4621      	mov	r1, r4
20029972:	686a      	ldr	r2, [r5, #4]
20029974:	a803      	add	r0, sp, #12
20029976:	f7fe faa9 	bl	20027ecc <mbedtls_mpi_read_binary>
2002997a:	4604      	mov	r4, r0
2002997c:	b9d0      	cbnz	r0, 200299b4 <mbedtls_rsa_public+0x54>
2002997e:	f105 0408 	add.w	r4, r5, #8
20029982:	4621      	mov	r1, r4
20029984:	a803      	add	r0, sp, #12
20029986:	f7fe fc31 	bl	200281ec <mbedtls_mpi_cmp_mpi>
2002998a:	2800      	cmp	r0, #0
2002998c:	da1b      	bge.n	200299c6 <mbedtls_rsa_public+0x66>
2002998e:	f105 0368 	add.w	r3, r5, #104	@ 0x68
20029992:	a903      	add	r1, sp, #12
20029994:	686f      	ldr	r7, [r5, #4]
20029996:	4608      	mov	r0, r1
20029998:	9300      	str	r3, [sp, #0]
2002999a:	f105 0214 	add.w	r2, r5, #20
2002999e:	4623      	mov	r3, r4
200299a0:	f7ff f81b 	bl	200289da <mbedtls_mpi_exp_mod>
200299a4:	4604      	mov	r4, r0
200299a6:	b928      	cbnz	r0, 200299b4 <mbedtls_rsa_public+0x54>
200299a8:	463a      	mov	r2, r7
200299aa:	4631      	mov	r1, r6
200299ac:	a803      	add	r0, sp, #12
200299ae:	f7fe fac2 	bl	20027f36 <mbedtls_mpi_write_binary>
200299b2:	4604      	mov	r4, r0
200299b4:	a803      	add	r0, sp, #12
200299b6:	f7fe f9c8 	bl	20027d4a <mbedtls_mpi_free>
200299ba:	b10c      	cbz	r4, 200299c0 <mbedtls_rsa_public+0x60>
200299bc:	f5a4 4485 	sub.w	r4, r4, #17024	@ 0x4280
200299c0:	4620      	mov	r0, r4
200299c2:	b007      	add	sp, #28
200299c4:	bdf0      	pop	{r4, r5, r6, r7, pc}
200299c6:	f06f 0403 	mvn.w	r4, #3
200299ca:	e7f3      	b.n	200299b4 <mbedtls_rsa_public+0x54>

200299cc <mbedtls_rsa_private>:
200299cc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
200299d0:	461e      	mov	r6, r3
200299d2:	6b43      	ldr	r3, [r0, #52]	@ 0x34
200299d4:	4604      	mov	r4, r0
200299d6:	460d      	mov	r5, r1
200299d8:	4617      	mov	r7, r2
200299da:	b09d      	sub	sp, #116	@ 0x74
200299dc:	2b00      	cmp	r3, #0
200299de:	f000 8179 	beq.w	20029cd4 <mbedtls_rsa_private+0x308>
200299e2:	6c03      	ldr	r3, [r0, #64]	@ 0x40
200299e4:	2b00      	cmp	r3, #0
200299e6:	f000 8175 	beq.w	20029cd4 <mbedtls_rsa_private+0x308>
200299ea:	6a83      	ldr	r3, [r0, #40]	@ 0x28
200299ec:	2b00      	cmp	r3, #0
200299ee:	f000 8171 	beq.w	20029cd4 <mbedtls_rsa_private+0x308>
200299f2:	a804      	add	r0, sp, #16
200299f4:	f7fe f9a2 	bl	20027d3c <mbedtls_mpi_init>
200299f8:	a807      	add	r0, sp, #28
200299fa:	f7fe f99f 	bl	20027d3c <mbedtls_mpi_init>
200299fe:	a80a      	add	r0, sp, #40	@ 0x28
20029a00:	f7fe f99c 	bl	20027d3c <mbedtls_mpi_init>
20029a04:	a80d      	add	r0, sp, #52	@ 0x34
20029a06:	f7fe f999 	bl	20027d3c <mbedtls_mpi_init>
20029a0a:	a810      	add	r0, sp, #64	@ 0x40
20029a0c:	f7fe f996 	bl	20027d3c <mbedtls_mpi_init>
20029a10:	a813      	add	r0, sp, #76	@ 0x4c
20029a12:	f7fe f993 	bl	20027d3c <mbedtls_mpi_init>
20029a16:	b12d      	cbz	r5, 20029a24 <mbedtls_rsa_private+0x58>
20029a18:	a816      	add	r0, sp, #88	@ 0x58
20029a1a:	f7fe f98f 	bl	20027d3c <mbedtls_mpi_init>
20029a1e:	a819      	add	r0, sp, #100	@ 0x64
20029a20:	f7fe f98c 	bl	20027d3c <mbedtls_mpi_init>
20029a24:	4631      	mov	r1, r6
20029a26:	6862      	ldr	r2, [r4, #4]
20029a28:	a804      	add	r0, sp, #16
20029a2a:	f7fe fa4f 	bl	20027ecc <mbedtls_mpi_read_binary>
20029a2e:	4603      	mov	r3, r0
20029a30:	2800      	cmp	r0, #0
20029a32:	f040 80e0 	bne.w	20029bf6 <mbedtls_rsa_private+0x22a>
20029a36:	f104 0608 	add.w	r6, r4, #8
20029a3a:	4631      	mov	r1, r6
20029a3c:	a804      	add	r0, sp, #16
20029a3e:	f7fe fbd5 	bl	200281ec <mbedtls_mpi_cmp_mpi>
20029a42:	2800      	cmp	r0, #0
20029a44:	f280 8143 	bge.w	20029cce <mbedtls_rsa_private+0x302>
20029a48:	f104 0a44 	add.w	sl, r4, #68	@ 0x44
20029a4c:	f104 0950 	add.w	r9, r4, #80	@ 0x50
20029a50:	2d00      	cmp	r5, #0
20029a52:	f000 8089 	beq.w	20029b68 <mbedtls_rsa_private+0x19c>
20029a56:	f8d4 30a0 	ldr.w	r3, [r4, #160]	@ 0xa0
20029a5a:	2b00      	cmp	r3, #0
20029a5c:	f000 80f4 	beq.w	20029c48 <mbedtls_rsa_private+0x27c>
20029a60:	f104 088c 	add.w	r8, r4, #140	@ 0x8c
20029a64:	4642      	mov	r2, r8
20029a66:	4641      	mov	r1, r8
20029a68:	4640      	mov	r0, r8
20029a6a:	f7fe fd0f 	bl	2002848c <mbedtls_mpi_mul_mpi>
20029a6e:	4603      	mov	r3, r0
20029a70:	2800      	cmp	r0, #0
20029a72:	f040 80c0 	bne.w	20029bf6 <mbedtls_rsa_private+0x22a>
20029a76:	4632      	mov	r2, r6
20029a78:	4641      	mov	r1, r8
20029a7a:	4640      	mov	r0, r8
20029a7c:	f7fe ff7b 	bl	20028976 <mbedtls_mpi_mod_mpi>
20029a80:	4603      	mov	r3, r0
20029a82:	2800      	cmp	r0, #0
20029a84:	f040 80b7 	bne.w	20029bf6 <mbedtls_rsa_private+0x22a>
20029a88:	f104 0898 	add.w	r8, r4, #152	@ 0x98
20029a8c:	4642      	mov	r2, r8
20029a8e:	4641      	mov	r1, r8
20029a90:	4640      	mov	r0, r8
20029a92:	f7fe fcfb 	bl	2002848c <mbedtls_mpi_mul_mpi>
20029a96:	4603      	mov	r3, r0
20029a98:	2800      	cmp	r0, #0
20029a9a:	f040 80ac 	bne.w	20029bf6 <mbedtls_rsa_private+0x22a>
20029a9e:	4632      	mov	r2, r6
20029aa0:	4641      	mov	r1, r8
20029aa2:	4640      	mov	r0, r8
20029aa4:	f7fe ff67 	bl	20028976 <mbedtls_mpi_mod_mpi>
20029aa8:	4603      	mov	r3, r0
20029aaa:	2800      	cmp	r0, #0
20029aac:	f040 80a3 	bne.w	20029bf6 <mbedtls_rsa_private+0x22a>
20029ab0:	a904      	add	r1, sp, #16
20029ab2:	4608      	mov	r0, r1
20029ab4:	f104 028c 	add.w	r2, r4, #140	@ 0x8c
20029ab8:	f7fe fce8 	bl	2002848c <mbedtls_mpi_mul_mpi>
20029abc:	4603      	mov	r3, r0
20029abe:	2800      	cmp	r0, #0
20029ac0:	f040 8099 	bne.w	20029bf6 <mbedtls_rsa_private+0x22a>
20029ac4:	a904      	add	r1, sp, #16
20029ac6:	4632      	mov	r2, r6
20029ac8:	4608      	mov	r0, r1
20029aca:	f7fe ff54 	bl	20028976 <mbedtls_mpi_mod_mpi>
20029ace:	4603      	mov	r3, r0
20029ad0:	2800      	cmp	r0, #0
20029ad2:	f040 8090 	bne.w	20029bf6 <mbedtls_rsa_private+0x22a>
20029ad6:	2201      	movs	r2, #1
20029ad8:	f104 012c 	add.w	r1, r4, #44	@ 0x2c
20029adc:	a80d      	add	r0, sp, #52	@ 0x34
20029ade:	f7fe fcbf 	bl	20028460 <mbedtls_mpi_sub_int>
20029ae2:	4603      	mov	r3, r0
20029ae4:	2800      	cmp	r0, #0
20029ae6:	f040 8086 	bne.w	20029bf6 <mbedtls_rsa_private+0x22a>
20029aea:	2201      	movs	r2, #1
20029aec:	f104 0138 	add.w	r1, r4, #56	@ 0x38
20029af0:	a810      	add	r0, sp, #64	@ 0x40
20029af2:	f7fe fcb5 	bl	20028460 <mbedtls_mpi_sub_int>
20029af6:	4603      	mov	r3, r0
20029af8:	2800      	cmp	r0, #0
20029afa:	d17c      	bne.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029afc:	463b      	mov	r3, r7
20029afe:	462a      	mov	r2, r5
20029b00:	211c      	movs	r1, #28
20029b02:	a813      	add	r0, sp, #76	@ 0x4c
20029b04:	f7ff f9fb 	bl	20028efe <mbedtls_mpi_fill_random>
20029b08:	4603      	mov	r3, r0
20029b0a:	2800      	cmp	r0, #0
20029b0c:	d173      	bne.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029b0e:	aa13      	add	r2, sp, #76	@ 0x4c
20029b10:	a90d      	add	r1, sp, #52	@ 0x34
20029b12:	a816      	add	r0, sp, #88	@ 0x58
20029b14:	f7fe fcba 	bl	2002848c <mbedtls_mpi_mul_mpi>
20029b18:	4603      	mov	r3, r0
20029b1a:	2800      	cmp	r0, #0
20029b1c:	d16b      	bne.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029b1e:	a916      	add	r1, sp, #88	@ 0x58
20029b20:	4652      	mov	r2, sl
20029b22:	4608      	mov	r0, r1
20029b24:	f7fe fc4f 	bl	200283c6 <mbedtls_mpi_add_mpi>
20029b28:	4603      	mov	r3, r0
20029b2a:	2800      	cmp	r0, #0
20029b2c:	d163      	bne.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029b2e:	463b      	mov	r3, r7
20029b30:	462a      	mov	r2, r5
20029b32:	211c      	movs	r1, #28
20029b34:	a813      	add	r0, sp, #76	@ 0x4c
20029b36:	f7ff f9e2 	bl	20028efe <mbedtls_mpi_fill_random>
20029b3a:	4603      	mov	r3, r0
20029b3c:	2800      	cmp	r0, #0
20029b3e:	d15a      	bne.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029b40:	aa13      	add	r2, sp, #76	@ 0x4c
20029b42:	a910      	add	r1, sp, #64	@ 0x40
20029b44:	a819      	add	r0, sp, #100	@ 0x64
20029b46:	f7fe fca1 	bl	2002848c <mbedtls_mpi_mul_mpi>
20029b4a:	4603      	mov	r3, r0
20029b4c:	2800      	cmp	r0, #0
20029b4e:	d152      	bne.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029b50:	a919      	add	r1, sp, #100	@ 0x64
20029b52:	464a      	mov	r2, r9
20029b54:	4608      	mov	r0, r1
20029b56:	f7fe fc36 	bl	200283c6 <mbedtls_mpi_add_mpi>
20029b5a:	4603      	mov	r3, r0
20029b5c:	2800      	cmp	r0, #0
20029b5e:	d14a      	bne.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029b60:	f10d 0964 	add.w	r9, sp, #100	@ 0x64
20029b64:	f10d 0a58 	add.w	sl, sp, #88	@ 0x58
20029b68:	f104 0374 	add.w	r3, r4, #116	@ 0x74
20029b6c:	f104 082c 	add.w	r8, r4, #44	@ 0x2c
20029b70:	9300      	str	r3, [sp, #0]
20029b72:	4652      	mov	r2, sl
20029b74:	4643      	mov	r3, r8
20029b76:	a904      	add	r1, sp, #16
20029b78:	a807      	add	r0, sp, #28
20029b7a:	f7fe ff2e 	bl	200289da <mbedtls_mpi_exp_mod>
20029b7e:	4603      	mov	r3, r0
20029b80:	2800      	cmp	r0, #0
20029b82:	d138      	bne.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029b84:	f104 0380 	add.w	r3, r4, #128	@ 0x80
20029b88:	f104 0738 	add.w	r7, r4, #56	@ 0x38
20029b8c:	9300      	str	r3, [sp, #0]
20029b8e:	464a      	mov	r2, r9
20029b90:	463b      	mov	r3, r7
20029b92:	a904      	add	r1, sp, #16
20029b94:	a80a      	add	r0, sp, #40	@ 0x28
20029b96:	f7fe ff20 	bl	200289da <mbedtls_mpi_exp_mod>
20029b9a:	4603      	mov	r3, r0
20029b9c:	bb58      	cbnz	r0, 20029bf6 <mbedtls_rsa_private+0x22a>
20029b9e:	aa0a      	add	r2, sp, #40	@ 0x28
20029ba0:	a907      	add	r1, sp, #28
20029ba2:	a804      	add	r0, sp, #16
20029ba4:	f7fe fc35 	bl	20028412 <mbedtls_mpi_sub_mpi>
20029ba8:	4603      	mov	r3, r0
20029baa:	bb20      	cbnz	r0, 20029bf6 <mbedtls_rsa_private+0x22a>
20029bac:	f104 025c 	add.w	r2, r4, #92	@ 0x5c
20029bb0:	a904      	add	r1, sp, #16
20029bb2:	a807      	add	r0, sp, #28
20029bb4:	f7fe fc6a 	bl	2002848c <mbedtls_mpi_mul_mpi>
20029bb8:	4603      	mov	r3, r0
20029bba:	b9e0      	cbnz	r0, 20029bf6 <mbedtls_rsa_private+0x22a>
20029bbc:	4642      	mov	r2, r8
20029bbe:	a907      	add	r1, sp, #28
20029bc0:	a804      	add	r0, sp, #16
20029bc2:	f7fe fed8 	bl	20028976 <mbedtls_mpi_mod_mpi>
20029bc6:	4603      	mov	r3, r0
20029bc8:	b9a8      	cbnz	r0, 20029bf6 <mbedtls_rsa_private+0x22a>
20029bca:	463a      	mov	r2, r7
20029bcc:	a904      	add	r1, sp, #16
20029bce:	a807      	add	r0, sp, #28
20029bd0:	f7fe fc5c 	bl	2002848c <mbedtls_mpi_mul_mpi>
20029bd4:	4603      	mov	r3, r0
20029bd6:	b970      	cbnz	r0, 20029bf6 <mbedtls_rsa_private+0x22a>
20029bd8:	aa07      	add	r2, sp, #28
20029bda:	a90a      	add	r1, sp, #40	@ 0x28
20029bdc:	a804      	add	r0, sp, #16
20029bde:	f7fe fbf2 	bl	200283c6 <mbedtls_mpi_add_mpi>
20029be2:	4603      	mov	r3, r0
20029be4:	b938      	cbnz	r0, 20029bf6 <mbedtls_rsa_private+0x22a>
20029be6:	2d00      	cmp	r5, #0
20029be8:	d15f      	bne.n	20029caa <mbedtls_rsa_private+0x2de>
20029bea:	6862      	ldr	r2, [r4, #4]
20029bec:	9926      	ldr	r1, [sp, #152]	@ 0x98
20029bee:	a804      	add	r0, sp, #16
20029bf0:	f7fe f9a1 	bl	20027f36 <mbedtls_mpi_write_binary>
20029bf4:	4603      	mov	r3, r0
20029bf6:	a804      	add	r0, sp, #16
20029bf8:	9303      	str	r3, [sp, #12]
20029bfa:	f7fe f8a6 	bl	20027d4a <mbedtls_mpi_free>
20029bfe:	a807      	add	r0, sp, #28
20029c00:	f7fe f8a3 	bl	20027d4a <mbedtls_mpi_free>
20029c04:	a80a      	add	r0, sp, #40	@ 0x28
20029c06:	f7fe f8a0 	bl	20027d4a <mbedtls_mpi_free>
20029c0a:	a80d      	add	r0, sp, #52	@ 0x34
20029c0c:	f7fe f89d 	bl	20027d4a <mbedtls_mpi_free>
20029c10:	a810      	add	r0, sp, #64	@ 0x40
20029c12:	f7fe f89a 	bl	20027d4a <mbedtls_mpi_free>
20029c16:	a813      	add	r0, sp, #76	@ 0x4c
20029c18:	f7fe f897 	bl	20027d4a <mbedtls_mpi_free>
20029c1c:	9b03      	ldr	r3, [sp, #12]
20029c1e:	b135      	cbz	r5, 20029c2e <mbedtls_rsa_private+0x262>
20029c20:	a816      	add	r0, sp, #88	@ 0x58
20029c22:	f7fe f892 	bl	20027d4a <mbedtls_mpi_free>
20029c26:	a819      	add	r0, sp, #100	@ 0x64
20029c28:	f7fe f88f 	bl	20027d4a <mbedtls_mpi_free>
20029c2c:	9b03      	ldr	r3, [sp, #12]
20029c2e:	b10b      	cbz	r3, 20029c34 <mbedtls_rsa_private+0x268>
20029c30:	f5a3 4386 	sub.w	r3, r3, #17152	@ 0x4300
20029c34:	4618      	mov	r0, r3
20029c36:	b01d      	add	sp, #116	@ 0x74
20029c38:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029c3c:	9b03      	ldr	r3, [sp, #12]
20029c3e:	3b01      	subs	r3, #1
20029c40:	9303      	str	r3, [sp, #12]
20029c42:	d107      	bne.n	20029c54 <mbedtls_rsa_private+0x288>
20029c44:	4b24      	ldr	r3, [pc, #144]	@ (20029cd8 <mbedtls_rsa_private+0x30c>)
20029c46:	e7d6      	b.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029c48:	230b      	movs	r3, #11
20029c4a:	f104 0b98 	add.w	fp, r4, #152	@ 0x98
20029c4e:	9303      	str	r3, [sp, #12]
20029c50:	f104 088c 	add.w	r8, r4, #140	@ 0x8c
20029c54:	6861      	ldr	r1, [r4, #4]
20029c56:	463b      	mov	r3, r7
20029c58:	462a      	mov	r2, r5
20029c5a:	4658      	mov	r0, fp
20029c5c:	3901      	subs	r1, #1
20029c5e:	f7ff f94e 	bl	20028efe <mbedtls_mpi_fill_random>
20029c62:	4603      	mov	r3, r0
20029c64:	2800      	cmp	r0, #0
20029c66:	d1c6      	bne.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029c68:	4632      	mov	r2, r6
20029c6a:	4659      	mov	r1, fp
20029c6c:	4640      	mov	r0, r8
20029c6e:	f7ff f8c8 	bl	20028e02 <mbedtls_mpi_gcd>
20029c72:	4603      	mov	r3, r0
20029c74:	2800      	cmp	r0, #0
20029c76:	d1be      	bne.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029c78:	2101      	movs	r1, #1
20029c7a:	4640      	mov	r0, r8
20029c7c:	f7fe faf7 	bl	2002826e <mbedtls_mpi_cmp_int>
20029c80:	2800      	cmp	r0, #0
20029c82:	d1db      	bne.n	20029c3c <mbedtls_rsa_private+0x270>
20029c84:	4632      	mov	r2, r6
20029c86:	4659      	mov	r1, fp
20029c88:	4640      	mov	r0, r8
20029c8a:	f7ff f955 	bl	20028f38 <mbedtls_mpi_inv_mod>
20029c8e:	4603      	mov	r3, r0
20029c90:	2800      	cmp	r0, #0
20029c92:	d1b0      	bne.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029c94:	f104 0368 	add.w	r3, r4, #104	@ 0x68
20029c98:	9300      	str	r3, [sp, #0]
20029c9a:	4641      	mov	r1, r8
20029c9c:	4633      	mov	r3, r6
20029c9e:	4640      	mov	r0, r8
20029ca0:	f104 0214 	add.w	r2, r4, #20
20029ca4:	f7fe fe99 	bl	200289da <mbedtls_mpi_exp_mod>
20029ca8:	e6fe      	b.n	20029aa8 <mbedtls_rsa_private+0xdc>
20029caa:	a904      	add	r1, sp, #16
20029cac:	4608      	mov	r0, r1
20029cae:	f104 0298 	add.w	r2, r4, #152	@ 0x98
20029cb2:	f7fe fbeb 	bl	2002848c <mbedtls_mpi_mul_mpi>
20029cb6:	4603      	mov	r3, r0
20029cb8:	2800      	cmp	r0, #0
20029cba:	d19c      	bne.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029cbc:	a904      	add	r1, sp, #16
20029cbe:	4632      	mov	r2, r6
20029cc0:	4608      	mov	r0, r1
20029cc2:	f7fe fe58 	bl	20028976 <mbedtls_mpi_mod_mpi>
20029cc6:	4603      	mov	r3, r0
20029cc8:	2800      	cmp	r0, #0
20029cca:	d08e      	beq.n	20029bea <mbedtls_rsa_private+0x21e>
20029ccc:	e793      	b.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029cce:	f06f 0303 	mvn.w	r3, #3
20029cd2:	e790      	b.n	20029bf6 <mbedtls_rsa_private+0x22a>
20029cd4:	4b01      	ldr	r3, [pc, #4]	@ (20029cdc <mbedtls_rsa_private+0x310>)
20029cd6:	e7ad      	b.n	20029c34 <mbedtls_rsa_private+0x268>
20029cd8:	ffffbb80 	.word	0xffffbb80
20029cdc:	ffffbf80 	.word	0xffffbf80

20029ce0 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt>:
20029ce0:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029ce4:	4698      	mov	r8, r3
20029ce6:	e9dd a30c 	ldrd	sl, r3, [sp, #48]	@ 0x30
20029cea:	f1b8 0f01 	cmp.w	r8, #1
20029cee:	4606      	mov	r6, r0
20029cf0:	460f      	mov	r7, r1
20029cf2:	4691      	mov	r9, r2
20029cf4:	9d0e      	ldr	r5, [sp, #56]	@ 0x38
20029cf6:	d103      	bne.n	20029d00 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x20>
20029cf8:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
20029cfc:	2a00      	cmp	r2, #0
20029cfe:	d162      	bne.n	20029dc6 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029d00:	2f00      	cmp	r7, #0
20029d02:	d060      	beq.n	20029dc6 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029d04:	2b00      	cmp	r3, #0
20029d06:	d05e      	beq.n	20029dc6 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029d08:	2d00      	cmp	r5, #0
20029d0a:	d05c      	beq.n	20029dc6 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029d0c:	f11a 0f0c 	cmn.w	sl, #12
20029d10:	6874      	ldr	r4, [r6, #4]
20029d12:	d858      	bhi.n	20029dc6 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029d14:	f10a 020b 	add.w	r2, sl, #11
20029d18:	42a2      	cmp	r2, r4
20029d1a:	d854      	bhi.n	20029dc6 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xe6>
20029d1c:	4629      	mov	r1, r5
20029d1e:	2200      	movs	r2, #0
20029d20:	eba4 040a 	sub.w	r4, r4, sl
20029d24:	3c03      	subs	r4, #3
20029d26:	f801 2b02 	strb.w	r2, [r1], #2
20029d2a:	f1b8 0f00 	cmp.w	r8, #0
20029d2e:	d131      	bne.n	20029d94 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xb4>
20029d30:	2202      	movs	r2, #2
20029d32:	4414      	add	r4, r2
20029d34:	706a      	strb	r2, [r5, #1]
20029d36:	442c      	add	r4, r5
20029d38:	42a1      	cmp	r1, r4
20029d3a:	d112      	bne.n	20029d62 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x82>
20029d3c:	2200      	movs	r2, #0
20029d3e:	4620      	mov	r0, r4
20029d40:	4619      	mov	r1, r3
20029d42:	f800 2b01 	strb.w	r2, [r0], #1
20029d46:	4652      	mov	r2, sl
20029d48:	f000 fdaa 	bl	2002a8a0 <memcpy>
20029d4c:	f1b8 0f00 	cmp.w	r8, #0
20029d50:	d12f      	bne.n	20029db2 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xd2>
20029d52:	462a      	mov	r2, r5
20029d54:	4629      	mov	r1, r5
20029d56:	4630      	mov	r0, r6
20029d58:	b003      	add	sp, #12
20029d5a:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029d5e:	f7ff bdff 	b.w	20029960 <mbedtls_rsa_public>
20029d62:	f04f 0b64 	mov.w	fp, #100	@ 0x64
20029d66:	2201      	movs	r2, #1
20029d68:	4648      	mov	r0, r9
20029d6a:	9301      	str	r3, [sp, #4]
20029d6c:	9100      	str	r1, [sp, #0]
20029d6e:	47b8      	blx	r7
20029d70:	9900      	ldr	r1, [sp, #0]
20029d72:	9b01      	ldr	r3, [sp, #4]
20029d74:	780a      	ldrb	r2, [r1, #0]
20029d76:	b94a      	cbnz	r2, 20029d8c <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xac>
20029d78:	f1bb 0b01 	subs.w	fp, fp, #1
20029d7c:	d001      	beq.n	20029d82 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa2>
20029d7e:	2800      	cmp	r0, #0
20029d80:	d0f1      	beq.n	20029d66 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x86>
20029d82:	f5a0 4089 	sub.w	r0, r0, #17536	@ 0x4480
20029d86:	b003      	add	sp, #12
20029d88:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029d8c:	2800      	cmp	r0, #0
20029d8e:	d1f8      	bne.n	20029d82 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa2>
20029d90:	3101      	adds	r1, #1
20029d92:	e7d1      	b.n	20029d38 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x58>
20029d94:	2001      	movs	r0, #1
20029d96:	462a      	mov	r2, r5
20029d98:	f04f 0cff 	mov.w	ip, #255	@ 0xff
20029d9c:	f802 0f01 	strb.w	r0, [r2, #1]!
20029da0:	1820      	adds	r0, r4, r0
20029da2:	4428      	add	r0, r5
20029da4:	4282      	cmp	r2, r0
20029da6:	d101      	bne.n	20029dac <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xcc>
20029da8:	440c      	add	r4, r1
20029daa:	e7c7      	b.n	20029d3c <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0x5c>
20029dac:	f802 cf01 	strb.w	ip, [r2, #1]!
20029db0:	e7f8      	b.n	20029da4 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xc4>
20029db2:	462b      	mov	r3, r5
20029db4:	464a      	mov	r2, r9
20029db6:	4639      	mov	r1, r7
20029db8:	4630      	mov	r0, r6
20029dba:	950c      	str	r5, [sp, #48]	@ 0x30
20029dbc:	b003      	add	sp, #12
20029dbe:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029dc2:	f7ff be03 	b.w	200299cc <mbedtls_rsa_private>
20029dc6:	4801      	ldr	r0, [pc, #4]	@ (20029dcc <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xec>)
20029dc8:	e7dd      	b.n	20029d86 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt+0xa6>
20029dca:	bf00      	nop
20029dcc:	ffffbf80 	.word	0xffffbf80

20029dd0 <mbedtls_rsa_pkcs1_encrypt>:
20029dd0:	b410      	push	{r4}
20029dd2:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029dd6:	b91c      	cbnz	r4, 20029de0 <mbedtls_rsa_pkcs1_encrypt+0x10>
20029dd8:	f85d 4b04 	ldr.w	r4, [sp], #4
20029ddc:	f7ff bf80 	b.w	20029ce0 <mbedtls_rsa_rsaes_pkcs1_v15_encrypt>
20029de0:	4801      	ldr	r0, [pc, #4]	@ (20029de8 <mbedtls_rsa_pkcs1_encrypt+0x18>)
20029de2:	f85d 4b04 	ldr.w	r4, [sp], #4
20029de6:	4770      	bx	lr
20029de8:	ffffbf00 	.word	0xffffbf00

20029dec <mbedtls_rsa_rsaes_pkcs1_v15_decrypt>:
20029dec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
20029df0:	4698      	mov	r8, r3
20029df2:	f5ad 6d81 	sub.w	sp, sp, #1032	@ 0x408
20029df6:	f1b8 0f01 	cmp.w	r8, #1
20029dfa:	f8dd 3424 	ldr.w	r3, [sp, #1060]	@ 0x424
20029dfe:	d103      	bne.n	20029e08 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x1c>
20029e00:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029e04:	2c00      	cmp	r4, #0
20029e06:	d17c      	bne.n	20029f02 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x116>
20029e08:	6845      	ldr	r5, [r0, #4]
20029e0a:	f1a5 0410 	sub.w	r4, r5, #16
20029e0e:	f5b4 7f7c 	cmp.w	r4, #1008	@ 0x3f0
20029e12:	d876      	bhi.n	20029f02 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x116>
20029e14:	ae02      	add	r6, sp, #8
20029e16:	f1b8 0f00 	cmp.w	r8, #0
20029e1a:	d153      	bne.n	20029ec4 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xd8>
20029e1c:	4632      	mov	r2, r6
20029e1e:	4619      	mov	r1, r3
20029e20:	f7ff fd9e 	bl	20029960 <mbedtls_rsa_public>
20029e24:	4604      	mov	r4, r0
20029e26:	2800      	cmp	r0, #0
20029e28:	d140      	bne.n	20029eac <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029e2a:	f1b8 0f01 	cmp.w	r8, #1
20029e2e:	7831      	ldrb	r1, [r6, #0]
20029e30:	7872      	ldrb	r2, [r6, #1]
20029e32:	f1a5 0703 	sub.w	r7, r5, #3
20029e36:	d149      	bne.n	20029ecc <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xe0>
20029e38:	f082 0202 	eor.w	r2, r2, #2
20029e3c:	ea41 0302 	orr.w	r3, r1, r2
20029e40:	4684      	mov	ip, r0
20029e42:	4686      	mov	lr, r0
20029e44:	4602      	mov	r2, r0
20029e46:	f10d 0109 	add.w	r1, sp, #9
20029e4a:	f811 0f01 	ldrb.w	r0, [r1, #1]!
20029e4e:	f10e 0e01 	add.w	lr, lr, #1
20029e52:	f1c0 0800 	rsb	r8, r0, #0
20029e56:	ea40 0008 	orr.w	r0, r0, r8
20029e5a:	f3c0 10c0 	ubfx	r0, r0, #7, #1
20029e5e:	f080 0001 	eor.w	r0, r0, #1
20029e62:	ea4c 0c00 	orr.w	ip, ip, r0
20029e66:	f1cc 0000 	rsb	r0, ip, #0
20029e6a:	ea4c 0000 	orr.w	r0, ip, r0
20029e6e:	f3c0 10c0 	ubfx	r0, r0, #7, #1
20029e72:	f080 0001 	eor.w	r0, r0, #1
20029e76:	45be      	cmp	lr, r7
20029e78:	4402      	add	r2, r0
20029e7a:	d3e6      	bcc.n	20029e4a <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x5e>
20029e7c:	f10d 000a 	add.w	r0, sp, #10
20029e80:	1881      	adds	r1, r0, r2
20029e82:	5c80      	ldrb	r0, [r0, r2]
20029e84:	3101      	adds	r1, #1
20029e86:	4303      	orrs	r3, r0
20029e88:	2a07      	cmp	r2, #7
20029e8a:	bf98      	it	ls
20029e8c:	f043 0301 	orrls.w	r3, r3, #1
20029e90:	bb9b      	cbnz	r3, 20029efa <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x10e>
20029e92:	1b8b      	subs	r3, r1, r6
20029e94:	1aea      	subs	r2, r5, r3
20029e96:	f8dd 342c 	ldr.w	r3, [sp, #1068]	@ 0x42c
20029e9a:	429a      	cmp	r2, r3
20029e9c:	d82f      	bhi.n	20029efe <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x112>
20029e9e:	f8dd 3420 	ldr.w	r3, [sp, #1056]	@ 0x420
20029ea2:	f8dd 0428 	ldr.w	r0, [sp, #1064]	@ 0x428
20029ea6:	601a      	str	r2, [r3, #0]
20029ea8:	f000 fcfa 	bl	2002a8a0 <memcpy>
20029eac:	2300      	movs	r3, #0
20029eae:	461a      	mov	r2, r3
20029eb0:	54f2      	strb	r2, [r6, r3]
20029eb2:	3301      	adds	r3, #1
20029eb4:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
20029eb8:	d1fa      	bne.n	20029eb0 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc4>
20029eba:	4620      	mov	r0, r4
20029ebc:	f50d 6d81 	add.w	sp, sp, #1032	@ 0x408
20029ec0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
20029ec4:	9600      	str	r6, [sp, #0]
20029ec6:	f7ff fd81 	bl	200299cc <mbedtls_rsa_private>
20029eca:	e7ab      	b.n	20029e24 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x38>
20029ecc:	f082 0201 	eor.w	r2, r2, #1
20029ed0:	ea41 0302 	orr.w	r3, r1, r2
20029ed4:	4684      	mov	ip, r0
20029ed6:	4602      	mov	r2, r0
20029ed8:	f10d 0109 	add.w	r1, sp, #9
20029edc:	f811 ef01 	ldrb.w	lr, [r1, #1]!
20029ee0:	3001      	adds	r0, #1
20029ee2:	f1be 0fff 	cmp.w	lr, #255	@ 0xff
20029ee6:	bf18      	it	ne
20029ee8:	f04c 0c01 	orrne.w	ip, ip, #1
20029eec:	42b8      	cmp	r0, r7
20029eee:	f08c 0e01 	eor.w	lr, ip, #1
20029ef2:	fa52 f28e 	uxtab	r2, r2, lr
20029ef6:	d3f1      	bcc.n	20029edc <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xf0>
20029ef8:	e7c0      	b.n	20029e7c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x90>
20029efa:	4c03      	ldr	r4, [pc, #12]	@ (20029f08 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x11c>)
20029efc:	e7d6      	b.n	20029eac <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029efe:	4c03      	ldr	r4, [pc, #12]	@ (20029f0c <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x120>)
20029f00:	e7d4      	b.n	20029eac <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xc0>
20029f02:	4c03      	ldr	r4, [pc, #12]	@ (20029f10 <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0x124>)
20029f04:	e7d9      	b.n	20029eba <mbedtls_rsa_rsaes_pkcs1_v15_decrypt+0xce>
20029f06:	bf00      	nop
20029f08:	ffffbf00 	.word	0xffffbf00
20029f0c:	ffffbc00 	.word	0xffffbc00
20029f10:	ffffbf80 	.word	0xffffbf80

20029f14 <mbedtls_rsa_pkcs1_decrypt>:
20029f14:	b410      	push	{r4}
20029f16:	f8d0 40a4 	ldr.w	r4, [r0, #164]	@ 0xa4
20029f1a:	b91c      	cbnz	r4, 20029f24 <mbedtls_rsa_pkcs1_decrypt+0x10>
20029f1c:	f85d 4b04 	ldr.w	r4, [sp], #4
20029f20:	f7ff bf64 	b.w	20029dec <mbedtls_rsa_rsaes_pkcs1_v15_decrypt>
20029f24:	4801      	ldr	r0, [pc, #4]	@ (20029f2c <mbedtls_rsa_pkcs1_decrypt+0x18>)
20029f26:	f85d 4b04 	ldr.w	r4, [sp], #4
20029f2a:	4770      	bx	lr
20029f2c:	ffffbf00 	.word	0xffffbf00

20029f30 <mbedtls_rsa_rsassa_pkcs1_v15_sign>:
20029f30:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
20029f34:	4692      	mov	sl, r2
20029f36:	2200      	movs	r2, #0
20029f38:	b089      	sub	sp, #36	@ 0x24
20029f3a:	2b01      	cmp	r3, #1
20029f3c:	4604      	mov	r4, r0
20029f3e:	461f      	mov	r7, r3
20029f40:	e9cd 2206 	strd	r2, r2, [sp, #24]
20029f44:	f89d 8048 	ldrb.w	r8, [sp, #72]	@ 0x48
20029f48:	f8dd 904c 	ldr.w	r9, [sp, #76]	@ 0x4c
20029f4c:	9e15      	ldr	r6, [sp, #84]	@ 0x54
20029f4e:	9102      	str	r1, [sp, #8]
20029f50:	d107      	bne.n	20029f62 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x32>
20029f52:	f8d0 20a4 	ldr.w	r2, [r0, #164]	@ 0xa4
20029f56:	b122      	cbz	r2, 20029f62 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x32>
20029f58:	4d59      	ldr	r5, [pc, #356]	@ (2002a0c0 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x190>)
20029f5a:	4628      	mov	r0, r5
20029f5c:	b009      	add	sp, #36	@ 0x24
20029f5e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
20029f62:	f8d4 b004 	ldr.w	fp, [r4, #4]
20029f66:	f1ab 0503 	sub.w	r5, fp, #3
20029f6a:	f1b8 0f00 	cmp.w	r8, #0
20029f6e:	d014      	beq.n	20029f9a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x6a>
20029f70:	4640      	mov	r0, r8
20029f72:	f7fb ff75 	bl	20025e60 <mbedtls_md_info_from_type>
20029f76:	4681      	mov	r9, r0
20029f78:	2800      	cmp	r0, #0
20029f7a:	d0ed      	beq.n	20029f58 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029f7c:	4640      	mov	r0, r8
20029f7e:	aa06      	add	r2, sp, #24
20029f80:	a907      	add	r1, sp, #28
20029f82:	f7ff f9d3 	bl	2002932c <mbedtls_oid_get_oid_by_md>
20029f86:	2800      	cmp	r0, #0
20029f88:	d1e6      	bne.n	20029f58 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029f8a:	9a06      	ldr	r2, [sp, #24]
20029f8c:	4648      	mov	r0, r9
20029f8e:	1aaa      	subs	r2, r5, r2
20029f90:	f1a2 050a 	sub.w	r5, r2, #10
20029f94:	f7fb ff70 	bl	20025e78 <mbedtls_md_get_size>
20029f98:	4681      	mov	r9, r0
20029f9a:	eba5 0209 	sub.w	r2, r5, r9
20029f9e:	2a07      	cmp	r2, #7
20029fa0:	d9da      	bls.n	20029f58 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029fa2:	4593      	cmp	fp, r2
20029fa4:	d3d8      	bcc.n	20029f58 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x28>
20029fa6:	46b3      	mov	fp, r6
20029fa8:	2500      	movs	r5, #0
20029faa:	2101      	movs	r1, #1
20029fac:	f80b 5b02 	strb.w	r5, [fp], #2
20029fb0:	4658      	mov	r0, fp
20029fb2:	7071      	strb	r1, [r6, #1]
20029fb4:	21ff      	movs	r1, #255	@ 0xff
20029fb6:	9203      	str	r2, [sp, #12]
20029fb8:	f000 fc58 	bl	2002a86c <memset>
20029fbc:	9a03      	ldr	r2, [sp, #12]
20029fbe:	eb0b 0002 	add.w	r0, fp, r2
20029fc2:	f80b 5002 	strb.w	r5, [fp, r2]
20029fc6:	f1b8 0f00 	cmp.w	r8, #0
20029fca:	d10c      	bne.n	20029fe6 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0xb6>
20029fcc:	464a      	mov	r2, r9
20029fce:	9914      	ldr	r1, [sp, #80]	@ 0x50
20029fd0:	3001      	adds	r0, #1
20029fd2:	f000 fc65 	bl	2002a8a0 <memcpy>
20029fd6:	bb8f      	cbnz	r7, 2002a03c <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x10c>
20029fd8:	4632      	mov	r2, r6
20029fda:	4631      	mov	r1, r6
20029fdc:	4620      	mov	r0, r4
20029fde:	f7ff fcbf 	bl	20029960 <mbedtls_rsa_public>
20029fe2:	4605      	mov	r5, r0
20029fe4:	e7b9      	b.n	20029f5a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
20029fe6:	2130      	movs	r1, #48	@ 0x30
20029fe8:	7041      	strb	r1, [r0, #1]
20029fea:	9a06      	ldr	r2, [sp, #24]
20029fec:	70c1      	strb	r1, [r0, #3]
20029fee:	3208      	adds	r2, #8
20029ff0:	fa52 f289 	uxtab	r2, r2, r9
20029ff4:	7082      	strb	r2, [r0, #2]
20029ff6:	9a06      	ldr	r2, [sp, #24]
20029ff8:	f100 0807 	add.w	r8, r0, #7
20029ffc:	b2d1      	uxtb	r1, r2
20029ffe:	f101 0c04 	add.w	ip, r1, #4
2002a002:	f880 c004 	strb.w	ip, [r0, #4]
2002a006:	f04f 0c06 	mov.w	ip, #6
2002a00a:	7181      	strb	r1, [r0, #6]
2002a00c:	f880 c005 	strb.w	ip, [r0, #5]
2002a010:	9907      	ldr	r1, [sp, #28]
2002a012:	4640      	mov	r0, r8
2002a014:	9203      	str	r2, [sp, #12]
2002a016:	f000 fc43 	bl	2002a8a0 <memcpy>
2002a01a:	2105      	movs	r1, #5
2002a01c:	9a03      	ldr	r2, [sp, #12]
2002a01e:	fa5f fb89 	uxtb.w	fp, r9
2002a022:	eb08 0002 	add.w	r0, r8, r2
2002a026:	f808 1002 	strb.w	r1, [r8, r2]
2002a02a:	2204      	movs	r2, #4
2002a02c:	7045      	strb	r5, [r0, #1]
2002a02e:	7082      	strb	r2, [r0, #2]
2002a030:	f880 b003 	strb.w	fp, [r0, #3]
2002a034:	464a      	mov	r2, r9
2002a036:	9914      	ldr	r1, [sp, #80]	@ 0x50
2002a038:	3004      	adds	r0, #4
2002a03a:	e7ca      	b.n	20029fd2 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0xa2>
2002a03c:	6865      	ldr	r5, [r4, #4]
2002a03e:	2001      	movs	r0, #1
2002a040:	4629      	mov	r1, r5
2002a042:	f000 fb31 	bl	2002a6a8 <calloc>
2002a046:	4607      	mov	r7, r0
2002a048:	b140      	cbz	r0, 2002a05c <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x12c>
2002a04a:	4629      	mov	r1, r5
2002a04c:	2001      	movs	r0, #1
2002a04e:	f000 fb2b 	bl	2002a6a8 <calloc>
2002a052:	4680      	mov	r8, r0
2002a054:	b928      	cbnz	r0, 2002a062 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x132>
2002a056:	4638      	mov	r0, r7
2002a058:	f000 fb42 	bl	2002a6e0 <free>
2002a05c:	f06f 050f 	mvn.w	r5, #15
2002a060:	e77b      	b.n	20029f5a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
2002a062:	4633      	mov	r3, r6
2002a064:	4652      	mov	r2, sl
2002a066:	4620      	mov	r0, r4
2002a068:	9902      	ldr	r1, [sp, #8]
2002a06a:	9700      	str	r7, [sp, #0]
2002a06c:	f7ff fcae 	bl	200299cc <mbedtls_rsa_private>
2002a070:	4605      	mov	r5, r0
2002a072:	b9a0      	cbnz	r0, 2002a09e <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
2002a074:	4642      	mov	r2, r8
2002a076:	4639      	mov	r1, r7
2002a078:	4620      	mov	r0, r4
2002a07a:	f7ff fc71 	bl	20029960 <mbedtls_rsa_public>
2002a07e:	4605      	mov	r5, r0
2002a080:	b968      	cbnz	r0, 2002a09e <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
2002a082:	4601      	mov	r1, r0
2002a084:	4603      	mov	r3, r0
2002a086:	6862      	ldr	r2, [r4, #4]
2002a088:	429a      	cmp	r2, r3
2002a08a:	d10f      	bne.n	2002a0ac <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x17c>
2002a08c:	f88d 1017 	strb.w	r1, [sp, #23]
2002a090:	f89d 3017 	ldrb.w	r3, [sp, #23]
2002a094:	b98b      	cbnz	r3, 2002a0ba <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x18a>
2002a096:	4639      	mov	r1, r7
2002a098:	4630      	mov	r0, r6
2002a09a:	f000 fc01 	bl	2002a8a0 <memcpy>
2002a09e:	4638      	mov	r0, r7
2002a0a0:	f000 fb1e 	bl	2002a6e0 <free>
2002a0a4:	4640      	mov	r0, r8
2002a0a6:	f000 fb1b 	bl	2002a6e0 <free>
2002a0aa:	e756      	b.n	20029f5a <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x2a>
2002a0ac:	f818 0003 	ldrb.w	r0, [r8, r3]
2002a0b0:	5cf4      	ldrb	r4, [r6, r3]
2002a0b2:	3301      	adds	r3, #1
2002a0b4:	4060      	eors	r0, r4
2002a0b6:	4301      	orrs	r1, r0
2002a0b8:	e7e6      	b.n	2002a088 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x158>
2002a0ba:	4d02      	ldr	r5, [pc, #8]	@ (2002a0c4 <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x194>)
2002a0bc:	e7ef      	b.n	2002a09e <mbedtls_rsa_rsassa_pkcs1_v15_sign+0x16e>
2002a0be:	bf00      	nop
2002a0c0:	ffffbf80 	.word	0xffffbf80
2002a0c4:	ffffbd00 	.word	0xffffbd00

2002a0c8 <mbedtls_rsa_pkcs1_sign>:
2002a0c8:	b430      	push	{r4, r5}
2002a0ca:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a0ce:	f89d 4008 	ldrb.w	r4, [sp, #8]
2002a0d2:	b91d      	cbnz	r5, 2002a0dc <mbedtls_rsa_pkcs1_sign+0x14>
2002a0d4:	9402      	str	r4, [sp, #8]
2002a0d6:	bc30      	pop	{r4, r5}
2002a0d8:	f7ff bf2a 	b.w	20029f30 <mbedtls_rsa_rsassa_pkcs1_v15_sign>
2002a0dc:	4801      	ldr	r0, [pc, #4]	@ (2002a0e4 <mbedtls_rsa_pkcs1_sign+0x1c>)
2002a0de:	bc30      	pop	{r4, r5}
2002a0e0:	4770      	bx	lr
2002a0e2:	bf00      	nop
2002a0e4:	ffffbf00 	.word	0xffffbf00

2002a0e8 <mbedtls_rsa_rsassa_pkcs1_v15_verify>:
2002a0e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a0ec:	461c      	mov	r4, r3
2002a0ee:	f2ad 4d2c 	subw	sp, sp, #1068	@ 0x42c
2002a0f2:	f89d 3450 	ldrb.w	r3, [sp, #1104]	@ 0x450
2002a0f6:	2c01      	cmp	r4, #1
2002a0f8:	9303      	str	r3, [sp, #12]
2002a0fa:	f8dd 8454 	ldr.w	r8, [sp, #1108]	@ 0x454
2002a0fe:	f8dd 345c 	ldr.w	r3, [sp, #1116]	@ 0x45c
2002a102:	d108      	bne.n	2002a116 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x2e>
2002a104:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a108:	b12d      	cbz	r5, 2002a116 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x2e>
2002a10a:	4d60      	ldr	r5, [pc, #384]	@ (2002a28c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1a4>)
2002a10c:	4628      	mov	r0, r5
2002a10e:	f20d 4d2c 	addw	sp, sp, #1068	@ 0x42c
2002a112:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a116:	6846      	ldr	r6, [r0, #4]
2002a118:	f1a6 0510 	sub.w	r5, r6, #16
2002a11c:	f5b5 7f7c 	cmp.w	r5, #1008	@ 0x3f0
2002a120:	d8f3      	bhi.n	2002a10a <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x22>
2002a122:	af0a      	add	r7, sp, #40	@ 0x28
2002a124:	b954      	cbnz	r4, 2002a13c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x54>
2002a126:	463a      	mov	r2, r7
2002a128:	4619      	mov	r1, r3
2002a12a:	f7ff fc19 	bl	20029960 <mbedtls_rsa_public>
2002a12e:	4605      	mov	r5, r0
2002a130:	2800      	cmp	r0, #0
2002a132:	d1eb      	bne.n	2002a10c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a134:	783b      	ldrb	r3, [r7, #0]
2002a136:	b12b      	cbz	r3, 2002a144 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x5c>
2002a138:	4d55      	ldr	r5, [pc, #340]	@ (2002a290 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1a8>)
2002a13a:	e7e7      	b.n	2002a10c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a13c:	9700      	str	r7, [sp, #0]
2002a13e:	f7ff fc45 	bl	200299cc <mbedtls_rsa_private>
2002a142:	e7f4      	b.n	2002a12e <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x46>
2002a144:	787b      	ldrb	r3, [r7, #1]
2002a146:	ac06      	add	r4, sp, #24
2002a148:	f10d 002a 	add.w	r0, sp, #42	@ 0x2a
2002a14c:	2b01      	cmp	r3, #1
2002a14e:	6020      	str	r0, [r4, #0]
2002a150:	d1f2      	bne.n	2002a138 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a152:	1e73      	subs	r3, r6, #1
2002a154:	443b      	add	r3, r7
2002a156:	7802      	ldrb	r2, [r0, #0]
2002a158:	b992      	cbnz	r2, 2002a180 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x98>
2002a15a:	3001      	adds	r0, #1
2002a15c:	1bc7      	subs	r7, r0, r7
2002a15e:	2f0a      	cmp	r7, #10
2002a160:	6020      	str	r0, [r4, #0]
2002a162:	dde9      	ble.n	2002a138 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a164:	1bf6      	subs	r6, r6, r7
2002a166:	4546      	cmp	r6, r8
2002a168:	d112      	bne.n	2002a190 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0xa8>
2002a16a:	9b03      	ldr	r3, [sp, #12]
2002a16c:	b983      	cbnz	r3, 2002a190 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0xa8>
2002a16e:	4642      	mov	r2, r8
2002a170:	f8dd 1458 	ldr.w	r1, [sp, #1112]	@ 0x458
2002a174:	f000 fb6a 	bl	2002a84c <memcmp>
2002a178:	2800      	cmp	r0, #0
2002a17a:	d0c7      	beq.n	2002a10c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a17c:	4d45      	ldr	r5, [pc, #276]	@ (2002a294 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x1ac>)
2002a17e:	e7c5      	b.n	2002a10c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a180:	4298      	cmp	r0, r3
2002a182:	d2d9      	bcs.n	2002a138 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a184:	2aff      	cmp	r2, #255	@ 0xff
2002a186:	f100 0001 	add.w	r0, r0, #1
2002a18a:	d1d5      	bne.n	2002a138 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x50>
2002a18c:	6020      	str	r0, [r4, #0]
2002a18e:	e7e2      	b.n	2002a156 <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x6e>
2002a190:	9803      	ldr	r0, [sp, #12]
2002a192:	f7fb fe65 	bl	20025e60 <mbedtls_md_info_from_type>
2002a196:	2800      	cmp	r0, #0
2002a198:	d0b7      	beq.n	2002a10a <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x22>
2002a19a:	f7fb fe6d 	bl	20025e78 <mbedtls_md_get_size>
2002a19e:	f8d4 a000 	ldr.w	sl, [r4]
2002a1a2:	af05      	add	r7, sp, #20
2002a1a4:	eb0a 0806 	add.w	r8, sl, r6
2002a1a8:	4681      	mov	r9, r0
2002a1aa:	2330      	movs	r3, #48	@ 0x30
2002a1ac:	463a      	mov	r2, r7
2002a1ae:	4641      	mov	r1, r8
2002a1b0:	4620      	mov	r0, r4
2002a1b2:	f7fd fb95 	bl	200278e0 <mbedtls_asn1_get_tag>
2002a1b6:	2800      	cmp	r0, #0
2002a1b8:	d1e0      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1ba:	f8d4 b000 	ldr.w	fp, [r4]
2002a1be:	f10a 0a02 	add.w	sl, sl, #2
2002a1c2:	45d3      	cmp	fp, sl
2002a1c4:	d1da      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1c6:	683b      	ldr	r3, [r7, #0]
2002a1c8:	3302      	adds	r3, #2
2002a1ca:	42b3      	cmp	r3, r6
2002a1cc:	d1d6      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1ce:	2330      	movs	r3, #48	@ 0x30
2002a1d0:	463a      	mov	r2, r7
2002a1d2:	4641      	mov	r1, r8
2002a1d4:	4620      	mov	r0, r4
2002a1d6:	f7fd fb83 	bl	200278e0 <mbedtls_asn1_get_tag>
2002a1da:	2800      	cmp	r0, #0
2002a1dc:	d1ce      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1de:	f8d4 a000 	ldr.w	sl, [r4]
2002a1e2:	f10b 0b02 	add.w	fp, fp, #2
2002a1e6:	45da      	cmp	sl, fp
2002a1e8:	d1c8      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1ea:	683b      	ldr	r3, [r7, #0]
2002a1ec:	3306      	adds	r3, #6
2002a1ee:	444b      	add	r3, r9
2002a1f0:	42b3      	cmp	r3, r6
2002a1f2:	d1c3      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a1f4:	2306      	movs	r3, #6
2002a1f6:	4641      	mov	r1, r8
2002a1f8:	4620      	mov	r0, r4
2002a1fa:	aa08      	add	r2, sp, #32
2002a1fc:	ae07      	add	r6, sp, #28
2002a1fe:	f7fd fb6f 	bl	200278e0 <mbedtls_asn1_get_tag>
2002a202:	2800      	cmp	r0, #0
2002a204:	d1ba      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a206:	6823      	ldr	r3, [r4, #0]
2002a208:	f10a 0a02 	add.w	sl, sl, #2
2002a20c:	4553      	cmp	r3, sl
2002a20e:	d1b5      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a210:	9a08      	ldr	r2, [sp, #32]
2002a212:	f10d 0a13 	add.w	sl, sp, #19
2002a216:	9309      	str	r3, [sp, #36]	@ 0x24
2002a218:	4651      	mov	r1, sl
2002a21a:	4413      	add	r3, r2
2002a21c:	4630      	mov	r0, r6
2002a21e:	6023      	str	r3, [r4, #0]
2002a220:	f7ff f86a 	bl	200292f8 <mbedtls_oid_get_md_alg>
2002a224:	2800      	cmp	r0, #0
2002a226:	d1a9      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a228:	f89d 3013 	ldrb.w	r3, [sp, #19]
2002a22c:	9a03      	ldr	r2, [sp, #12]
2002a22e:	4293      	cmp	r3, r2
2002a230:	d1a4      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a232:	2305      	movs	r3, #5
2002a234:	463a      	mov	r2, r7
2002a236:	4641      	mov	r1, r8
2002a238:	4620      	mov	r0, r4
2002a23a:	f8d4 a000 	ldr.w	sl, [r4]
2002a23e:	f7fd fb4f 	bl	200278e0 <mbedtls_asn1_get_tag>
2002a242:	2800      	cmp	r0, #0
2002a244:	d19a      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a246:	6826      	ldr	r6, [r4, #0]
2002a248:	f10a 0a02 	add.w	sl, sl, #2
2002a24c:	4556      	cmp	r6, sl
2002a24e:	d195      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a250:	2304      	movs	r3, #4
2002a252:	463a      	mov	r2, r7
2002a254:	4641      	mov	r1, r8
2002a256:	4620      	mov	r0, r4
2002a258:	f7fd fb42 	bl	200278e0 <mbedtls_asn1_get_tag>
2002a25c:	2800      	cmp	r0, #0
2002a25e:	d18d      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a260:	6824      	ldr	r4, [r4, #0]
2002a262:	3602      	adds	r6, #2
2002a264:	42b4      	cmp	r4, r6
2002a266:	d189      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a268:	683b      	ldr	r3, [r7, #0]
2002a26a:	454b      	cmp	r3, r9
2002a26c:	d186      	bne.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a26e:	464a      	mov	r2, r9
2002a270:	4620      	mov	r0, r4
2002a272:	f8dd 1458 	ldr.w	r1, [sp, #1112]	@ 0x458
2002a276:	f000 fae9 	bl	2002a84c <memcmp>
2002a27a:	2800      	cmp	r0, #0
2002a27c:	f47f af7e 	bne.w	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a280:	444c      	add	r4, r9
2002a282:	45a0      	cmp	r8, r4
2002a284:	f43f af42 	beq.w	2002a10c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x24>
2002a288:	e778      	b.n	2002a17c <mbedtls_rsa_rsassa_pkcs1_v15_verify+0x94>
2002a28a:	bf00      	nop
2002a28c:	ffffbf80 	.word	0xffffbf80
2002a290:	ffffbf00 	.word	0xffffbf00
2002a294:	ffffbc80 	.word	0xffffbc80

2002a298 <mbedtls_rsa_pkcs1_verify>:
2002a298:	b430      	push	{r4, r5}
2002a29a:	f8d0 50a4 	ldr.w	r5, [r0, #164]	@ 0xa4
2002a29e:	f89d 4008 	ldrb.w	r4, [sp, #8]
2002a2a2:	b91d      	cbnz	r5, 2002a2ac <mbedtls_rsa_pkcs1_verify+0x14>
2002a2a4:	9402      	str	r4, [sp, #8]
2002a2a6:	bc30      	pop	{r4, r5}
2002a2a8:	f7ff bf1e 	b.w	2002a0e8 <mbedtls_rsa_rsassa_pkcs1_v15_verify>
2002a2ac:	4801      	ldr	r0, [pc, #4]	@ (2002a2b4 <mbedtls_rsa_pkcs1_verify+0x1c>)
2002a2ae:	bc30      	pop	{r4, r5}
2002a2b0:	4770      	bx	lr
2002a2b2:	bf00      	nop
2002a2b4:	ffffbf00 	.word	0xffffbf00

2002a2b8 <mbedtls_rsa_free>:
2002a2b8:	b510      	push	{r4, lr}
2002a2ba:	4604      	mov	r4, r0
2002a2bc:	308c      	adds	r0, #140	@ 0x8c
2002a2be:	f7fd fd44 	bl	20027d4a <mbedtls_mpi_free>
2002a2c2:	f104 0098 	add.w	r0, r4, #152	@ 0x98
2002a2c6:	f7fd fd40 	bl	20027d4a <mbedtls_mpi_free>
2002a2ca:	f104 0080 	add.w	r0, r4, #128	@ 0x80
2002a2ce:	f7fd fd3c 	bl	20027d4a <mbedtls_mpi_free>
2002a2d2:	f104 0074 	add.w	r0, r4, #116	@ 0x74
2002a2d6:	f7fd fd38 	bl	20027d4a <mbedtls_mpi_free>
2002a2da:	f104 0068 	add.w	r0, r4, #104	@ 0x68
2002a2de:	f7fd fd34 	bl	20027d4a <mbedtls_mpi_free>
2002a2e2:	f104 005c 	add.w	r0, r4, #92	@ 0x5c
2002a2e6:	f7fd fd30 	bl	20027d4a <mbedtls_mpi_free>
2002a2ea:	f104 0050 	add.w	r0, r4, #80	@ 0x50
2002a2ee:	f7fd fd2c 	bl	20027d4a <mbedtls_mpi_free>
2002a2f2:	f104 0044 	add.w	r0, r4, #68	@ 0x44
2002a2f6:	f7fd fd28 	bl	20027d4a <mbedtls_mpi_free>
2002a2fa:	f104 0038 	add.w	r0, r4, #56	@ 0x38
2002a2fe:	f7fd fd24 	bl	20027d4a <mbedtls_mpi_free>
2002a302:	f104 002c 	add.w	r0, r4, #44	@ 0x2c
2002a306:	f7fd fd20 	bl	20027d4a <mbedtls_mpi_free>
2002a30a:	f104 0020 	add.w	r0, r4, #32
2002a30e:	f7fd fd1c 	bl	20027d4a <mbedtls_mpi_free>
2002a312:	f104 0014 	add.w	r0, r4, #20
2002a316:	f7fd fd18 	bl	20027d4a <mbedtls_mpi_free>
2002a31a:	f104 0008 	add.w	r0, r4, #8
2002a31e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
2002a322:	f7fd bd12 	b.w	20027d4a <mbedtls_mpi_free>
	...

2002a328 <__aeabi_uldivmod>:
2002a328:	b953      	cbnz	r3, 2002a340 <__aeabi_uldivmod+0x18>
2002a32a:	b94a      	cbnz	r2, 2002a340 <__aeabi_uldivmod+0x18>
2002a32c:	2900      	cmp	r1, #0
2002a32e:	bf08      	it	eq
2002a330:	2800      	cmpeq	r0, #0
2002a332:	bf1c      	itt	ne
2002a334:	f04f 31ff 	movne.w	r1, #4294967295
2002a338:	f04f 30ff 	movne.w	r0, #4294967295
2002a33c:	f000 b9b2 	b.w	2002a6a4 <__aeabi_idiv0>
2002a340:	f1ad 0c08 	sub.w	ip, sp, #8
2002a344:	e96d ce04 	strd	ip, lr, [sp, #-16]!
2002a348:	f000 f806 	bl	2002a358 <__udivmoddi4>
2002a34c:	f8dd e004 	ldr.w	lr, [sp, #4]
2002a350:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
2002a354:	b004      	add	sp, #16
2002a356:	4770      	bx	lr

2002a358 <__udivmoddi4>:
2002a358:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
2002a35c:	468c      	mov	ip, r1
2002a35e:	9e09      	ldr	r6, [sp, #36]	@ 0x24
2002a360:	4604      	mov	r4, r0
2002a362:	460f      	mov	r7, r1
2002a364:	2b00      	cmp	r3, #0
2002a366:	d148      	bne.n	2002a3fa <__udivmoddi4+0xa2>
2002a368:	428a      	cmp	r2, r1
2002a36a:	4615      	mov	r5, r2
2002a36c:	d95e      	bls.n	2002a42c <__udivmoddi4+0xd4>
2002a36e:	fab2 f382 	clz	r3, r2
2002a372:	b13b      	cbz	r3, 2002a384 <__udivmoddi4+0x2c>
2002a374:	f1c3 0220 	rsb	r2, r3, #32
2002a378:	409f      	lsls	r7, r3
2002a37a:	409d      	lsls	r5, r3
2002a37c:	409c      	lsls	r4, r3
2002a37e:	fa20 f202 	lsr.w	r2, r0, r2
2002a382:	4317      	orrs	r7, r2
2002a384:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a388:	fa1f fc85 	uxth.w	ip, r5
2002a38c:	0c22      	lsrs	r2, r4, #16
2002a38e:	fbb7 f1fe 	udiv	r1, r7, lr
2002a392:	fb0e 7711 	mls	r7, lr, r1, r7
2002a396:	fb01 f00c 	mul.w	r0, r1, ip
2002a39a:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
2002a39e:	4290      	cmp	r0, r2
2002a3a0:	d907      	bls.n	2002a3b2 <__udivmoddi4+0x5a>
2002a3a2:	18aa      	adds	r2, r5, r2
2002a3a4:	f101 37ff 	add.w	r7, r1, #4294967295
2002a3a8:	d202      	bcs.n	2002a3b0 <__udivmoddi4+0x58>
2002a3aa:	4290      	cmp	r0, r2
2002a3ac:	f200 8158 	bhi.w	2002a660 <__udivmoddi4+0x308>
2002a3b0:	4639      	mov	r1, r7
2002a3b2:	1a12      	subs	r2, r2, r0
2002a3b4:	b2a4      	uxth	r4, r4
2002a3b6:	fbb2 f0fe 	udiv	r0, r2, lr
2002a3ba:	fb0e 2210 	mls	r2, lr, r0, r2
2002a3be:	fb00 fc0c 	mul.w	ip, r0, ip
2002a3c2:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
2002a3c6:	45a4      	cmp	ip, r4
2002a3c8:	d90b      	bls.n	2002a3e2 <__udivmoddi4+0x8a>
2002a3ca:	192c      	adds	r4, r5, r4
2002a3cc:	f100 32ff 	add.w	r2, r0, #4294967295
2002a3d0:	bf2c      	ite	cs
2002a3d2:	2701      	movcs	r7, #1
2002a3d4:	2700      	movcc	r7, #0
2002a3d6:	45a4      	cmp	ip, r4
2002a3d8:	d902      	bls.n	2002a3e0 <__udivmoddi4+0x88>
2002a3da:	2f00      	cmp	r7, #0
2002a3dc:	f000 8143 	beq.w	2002a666 <__udivmoddi4+0x30e>
2002a3e0:	4610      	mov	r0, r2
2002a3e2:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
2002a3e6:	eba4 040c 	sub.w	r4, r4, ip
2002a3ea:	2100      	movs	r1, #0
2002a3ec:	b11e      	cbz	r6, 2002a3f6 <__udivmoddi4+0x9e>
2002a3ee:	40dc      	lsrs	r4, r3
2002a3f0:	2300      	movs	r3, #0
2002a3f2:	e9c6 4300 	strd	r4, r3, [r6]
2002a3f6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a3fa:	428b      	cmp	r3, r1
2002a3fc:	d906      	bls.n	2002a40c <__udivmoddi4+0xb4>
2002a3fe:	b10e      	cbz	r6, 2002a404 <__udivmoddi4+0xac>
2002a400:	e9c6 0100 	strd	r0, r1, [r6]
2002a404:	2100      	movs	r1, #0
2002a406:	4608      	mov	r0, r1
2002a408:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
2002a40c:	fab3 f183 	clz	r1, r3
2002a410:	2900      	cmp	r1, #0
2002a412:	d151      	bne.n	2002a4b8 <__udivmoddi4+0x160>
2002a414:	4563      	cmp	r3, ip
2002a416:	f0c0 8116 	bcc.w	2002a646 <__udivmoddi4+0x2ee>
2002a41a:	4282      	cmp	r2, r0
2002a41c:	f240 8113 	bls.w	2002a646 <__udivmoddi4+0x2ee>
2002a420:	4608      	mov	r0, r1
2002a422:	2e00      	cmp	r6, #0
2002a424:	d0e7      	beq.n	2002a3f6 <__udivmoddi4+0x9e>
2002a426:	e9c6 4700 	strd	r4, r7, [r6]
2002a42a:	e7e4      	b.n	2002a3f6 <__udivmoddi4+0x9e>
2002a42c:	2a00      	cmp	r2, #0
2002a42e:	f000 80af 	beq.w	2002a590 <__udivmoddi4+0x238>
2002a432:	fab2 f382 	clz	r3, r2
2002a436:	2b00      	cmp	r3, #0
2002a438:	f040 80c2 	bne.w	2002a5c0 <__udivmoddi4+0x268>
2002a43c:	1a8a      	subs	r2, r1, r2
2002a43e:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a442:	b2af      	uxth	r7, r5
2002a444:	2101      	movs	r1, #1
2002a446:	0c20      	lsrs	r0, r4, #16
2002a448:	fbb2 fcfe 	udiv	ip, r2, lr
2002a44c:	fb0e 221c 	mls	r2, lr, ip, r2
2002a450:	ea40 4202 	orr.w	r2, r0, r2, lsl #16
2002a454:	fb07 f00c 	mul.w	r0, r7, ip
2002a458:	4290      	cmp	r0, r2
2002a45a:	d90e      	bls.n	2002a47a <__udivmoddi4+0x122>
2002a45c:	18aa      	adds	r2, r5, r2
2002a45e:	f10c 38ff 	add.w	r8, ip, #4294967295
2002a462:	bf2c      	ite	cs
2002a464:	f04f 0901 	movcs.w	r9, #1
2002a468:	f04f 0900 	movcc.w	r9, #0
2002a46c:	4290      	cmp	r0, r2
2002a46e:	d903      	bls.n	2002a478 <__udivmoddi4+0x120>
2002a470:	f1b9 0f00 	cmp.w	r9, #0
2002a474:	f000 80f0 	beq.w	2002a658 <__udivmoddi4+0x300>
2002a478:	46c4      	mov	ip, r8
2002a47a:	1a12      	subs	r2, r2, r0
2002a47c:	b2a4      	uxth	r4, r4
2002a47e:	fbb2 f0fe 	udiv	r0, r2, lr
2002a482:	fb0e 2210 	mls	r2, lr, r0, r2
2002a486:	fb00 f707 	mul.w	r7, r0, r7
2002a48a:	ea44 4402 	orr.w	r4, r4, r2, lsl #16
2002a48e:	42a7      	cmp	r7, r4
2002a490:	d90e      	bls.n	2002a4b0 <__udivmoddi4+0x158>
2002a492:	192c      	adds	r4, r5, r4
2002a494:	f100 32ff 	add.w	r2, r0, #4294967295
2002a498:	bf2c      	ite	cs
2002a49a:	f04f 0e01 	movcs.w	lr, #1
2002a49e:	f04f 0e00 	movcc.w	lr, #0
2002a4a2:	42a7      	cmp	r7, r4
2002a4a4:	d903      	bls.n	2002a4ae <__udivmoddi4+0x156>
2002a4a6:	f1be 0f00 	cmp.w	lr, #0
2002a4aa:	f000 80d2 	beq.w	2002a652 <__udivmoddi4+0x2fa>
2002a4ae:	4610      	mov	r0, r2
2002a4b0:	1be4      	subs	r4, r4, r7
2002a4b2:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
2002a4b6:	e799      	b.n	2002a3ec <__udivmoddi4+0x94>
2002a4b8:	f1c1 0520 	rsb	r5, r1, #32
2002a4bc:	408b      	lsls	r3, r1
2002a4be:	fa0c f401 	lsl.w	r4, ip, r1
2002a4c2:	fa00 f901 	lsl.w	r9, r0, r1
2002a4c6:	fa22 f705 	lsr.w	r7, r2, r5
2002a4ca:	fa2c fc05 	lsr.w	ip, ip, r5
2002a4ce:	408a      	lsls	r2, r1
2002a4d0:	431f      	orrs	r7, r3
2002a4d2:	fa20 f305 	lsr.w	r3, r0, r5
2002a4d6:	0c38      	lsrs	r0, r7, #16
2002a4d8:	4323      	orrs	r3, r4
2002a4da:	fa1f fe87 	uxth.w	lr, r7
2002a4de:	0c1c      	lsrs	r4, r3, #16
2002a4e0:	fbbc f8f0 	udiv	r8, ip, r0
2002a4e4:	fb00 cc18 	mls	ip, r0, r8, ip
2002a4e8:	ea44 440c 	orr.w	r4, r4, ip, lsl #16
2002a4ec:	fb08 fc0e 	mul.w	ip, r8, lr
2002a4f0:	45a4      	cmp	ip, r4
2002a4f2:	d90e      	bls.n	2002a512 <__udivmoddi4+0x1ba>
2002a4f4:	193c      	adds	r4, r7, r4
2002a4f6:	f108 3aff 	add.w	sl, r8, #4294967295
2002a4fa:	bf2c      	ite	cs
2002a4fc:	f04f 0b01 	movcs.w	fp, #1
2002a500:	f04f 0b00 	movcc.w	fp, #0
2002a504:	45a4      	cmp	ip, r4
2002a506:	d903      	bls.n	2002a510 <__udivmoddi4+0x1b8>
2002a508:	f1bb 0f00 	cmp.w	fp, #0
2002a50c:	f000 80b8 	beq.w	2002a680 <__udivmoddi4+0x328>
2002a510:	46d0      	mov	r8, sl
2002a512:	eba4 040c 	sub.w	r4, r4, ip
2002a516:	fa1f fc83 	uxth.w	ip, r3
2002a51a:	fbb4 f3f0 	udiv	r3, r4, r0
2002a51e:	fb00 4413 	mls	r4, r0, r3, r4
2002a522:	fb03 fe0e 	mul.w	lr, r3, lr
2002a526:	ea4c 4404 	orr.w	r4, ip, r4, lsl #16
2002a52a:	45a6      	cmp	lr, r4
2002a52c:	d90e      	bls.n	2002a54c <__udivmoddi4+0x1f4>
2002a52e:	193c      	adds	r4, r7, r4
2002a530:	f103 30ff 	add.w	r0, r3, #4294967295
2002a534:	bf2c      	ite	cs
2002a536:	f04f 0c01 	movcs.w	ip, #1
2002a53a:	f04f 0c00 	movcc.w	ip, #0
2002a53e:	45a6      	cmp	lr, r4
2002a540:	d903      	bls.n	2002a54a <__udivmoddi4+0x1f2>
2002a542:	f1bc 0f00 	cmp.w	ip, #0
2002a546:	f000 809f 	beq.w	2002a688 <__udivmoddi4+0x330>
2002a54a:	4603      	mov	r3, r0
2002a54c:	ea43 4008 	orr.w	r0, r3, r8, lsl #16
2002a550:	eba4 040e 	sub.w	r4, r4, lr
2002a554:	fba0 ec02 	umull	lr, ip, r0, r2
2002a558:	4564      	cmp	r4, ip
2002a55a:	4673      	mov	r3, lr
2002a55c:	46e0      	mov	r8, ip
2002a55e:	d302      	bcc.n	2002a566 <__udivmoddi4+0x20e>
2002a560:	d107      	bne.n	2002a572 <__udivmoddi4+0x21a>
2002a562:	45f1      	cmp	r9, lr
2002a564:	d205      	bcs.n	2002a572 <__udivmoddi4+0x21a>
2002a566:	ebbe 0302 	subs.w	r3, lr, r2
2002a56a:	eb6c 0c07 	sbc.w	ip, ip, r7
2002a56e:	3801      	subs	r0, #1
2002a570:	46e0      	mov	r8, ip
2002a572:	b15e      	cbz	r6, 2002a58c <__udivmoddi4+0x234>
2002a574:	ebb9 0203 	subs.w	r2, r9, r3
2002a578:	eb64 0408 	sbc.w	r4, r4, r8
2002a57c:	fa04 f505 	lsl.w	r5, r4, r5
2002a580:	fa22 f301 	lsr.w	r3, r2, r1
2002a584:	40cc      	lsrs	r4, r1
2002a586:	431d      	orrs	r5, r3
2002a588:	e9c6 5400 	strd	r5, r4, [r6]
2002a58c:	2100      	movs	r1, #0
2002a58e:	e732      	b.n	2002a3f6 <__udivmoddi4+0x9e>
2002a590:	0842      	lsrs	r2, r0, #1
2002a592:	462f      	mov	r7, r5
2002a594:	084b      	lsrs	r3, r1, #1
2002a596:	46ac      	mov	ip, r5
2002a598:	ea42 72c1 	orr.w	r2, r2, r1, lsl #31
2002a59c:	46ae      	mov	lr, r5
2002a59e:	07c4      	lsls	r4, r0, #31
2002a5a0:	0c11      	lsrs	r1, r2, #16
2002a5a2:	b292      	uxth	r2, r2
2002a5a4:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
2002a5a8:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
2002a5ac:	fbb1 f1f5 	udiv	r1, r1, r5
2002a5b0:	fbb3 f0f5 	udiv	r0, r3, r5
2002a5b4:	231f      	movs	r3, #31
2002a5b6:	eba2 020c 	sub.w	r2, r2, ip
2002a5ba:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
2002a5be:	e742      	b.n	2002a446 <__udivmoddi4+0xee>
2002a5c0:	409d      	lsls	r5, r3
2002a5c2:	f1c3 0220 	rsb	r2, r3, #32
2002a5c6:	4099      	lsls	r1, r3
2002a5c8:	409c      	lsls	r4, r3
2002a5ca:	fa2c fc02 	lsr.w	ip, ip, r2
2002a5ce:	ea4f 4e15 	mov.w	lr, r5, lsr #16
2002a5d2:	fa20 f202 	lsr.w	r2, r0, r2
2002a5d6:	b2af      	uxth	r7, r5
2002a5d8:	fbbc f8fe 	udiv	r8, ip, lr
2002a5dc:	430a      	orrs	r2, r1
2002a5de:	fb0e cc18 	mls	ip, lr, r8, ip
2002a5e2:	0c11      	lsrs	r1, r2, #16
2002a5e4:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
2002a5e8:	fb08 fc07 	mul.w	ip, r8, r7
2002a5ec:	458c      	cmp	ip, r1
2002a5ee:	d950      	bls.n	2002a692 <__udivmoddi4+0x33a>
2002a5f0:	1869      	adds	r1, r5, r1
2002a5f2:	f108 30ff 	add.w	r0, r8, #4294967295
2002a5f6:	bf2c      	ite	cs
2002a5f8:	f04f 0901 	movcs.w	r9, #1
2002a5fc:	f04f 0900 	movcc.w	r9, #0
2002a600:	458c      	cmp	ip, r1
2002a602:	d902      	bls.n	2002a60a <__udivmoddi4+0x2b2>
2002a604:	f1b9 0f00 	cmp.w	r9, #0
2002a608:	d030      	beq.n	2002a66c <__udivmoddi4+0x314>
2002a60a:	eba1 010c 	sub.w	r1, r1, ip
2002a60e:	fbb1 f8fe 	udiv	r8, r1, lr
2002a612:	fb08 fc07 	mul.w	ip, r8, r7
2002a616:	fb0e 1118 	mls	r1, lr, r8, r1
2002a61a:	b292      	uxth	r2, r2
2002a61c:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
2002a620:	4562      	cmp	r2, ip
2002a622:	d234      	bcs.n	2002a68e <__udivmoddi4+0x336>
2002a624:	18aa      	adds	r2, r5, r2
2002a626:	f108 31ff 	add.w	r1, r8, #4294967295
2002a62a:	bf2c      	ite	cs
2002a62c:	f04f 0901 	movcs.w	r9, #1
2002a630:	f04f 0900 	movcc.w	r9, #0
2002a634:	4562      	cmp	r2, ip
2002a636:	d2be      	bcs.n	2002a5b6 <__udivmoddi4+0x25e>
2002a638:	f1b9 0f00 	cmp.w	r9, #0
2002a63c:	d1bb      	bne.n	2002a5b6 <__udivmoddi4+0x25e>
2002a63e:	f1a8 0102 	sub.w	r1, r8, #2
2002a642:	442a      	add	r2, r5
2002a644:	e7b7      	b.n	2002a5b6 <__udivmoddi4+0x25e>
2002a646:	1a84      	subs	r4, r0, r2
2002a648:	eb6c 0203 	sbc.w	r2, ip, r3
2002a64c:	2001      	movs	r0, #1
2002a64e:	4617      	mov	r7, r2
2002a650:	e6e7      	b.n	2002a422 <__udivmoddi4+0xca>
2002a652:	442c      	add	r4, r5
2002a654:	3802      	subs	r0, #2
2002a656:	e72b      	b.n	2002a4b0 <__udivmoddi4+0x158>
2002a658:	f1ac 0c02 	sub.w	ip, ip, #2
2002a65c:	442a      	add	r2, r5
2002a65e:	e70c      	b.n	2002a47a <__udivmoddi4+0x122>
2002a660:	3902      	subs	r1, #2
2002a662:	442a      	add	r2, r5
2002a664:	e6a5      	b.n	2002a3b2 <__udivmoddi4+0x5a>
2002a666:	442c      	add	r4, r5
2002a668:	3802      	subs	r0, #2
2002a66a:	e6ba      	b.n	2002a3e2 <__udivmoddi4+0x8a>
2002a66c:	eba5 0c0c 	sub.w	ip, r5, ip
2002a670:	f1a8 0002 	sub.w	r0, r8, #2
2002a674:	4461      	add	r1, ip
2002a676:	fbb1 f8fe 	udiv	r8, r1, lr
2002a67a:	fb08 fc07 	mul.w	ip, r8, r7
2002a67e:	e7ca      	b.n	2002a616 <__udivmoddi4+0x2be>
2002a680:	f1a8 0802 	sub.w	r8, r8, #2
2002a684:	443c      	add	r4, r7
2002a686:	e744      	b.n	2002a512 <__udivmoddi4+0x1ba>
2002a688:	3b02      	subs	r3, #2
2002a68a:	443c      	add	r4, r7
2002a68c:	e75e      	b.n	2002a54c <__udivmoddi4+0x1f4>
2002a68e:	4641      	mov	r1, r8
2002a690:	e791      	b.n	2002a5b6 <__udivmoddi4+0x25e>
2002a692:	eba1 010c 	sub.w	r1, r1, ip
2002a696:	4640      	mov	r0, r8
2002a698:	fbb1 f8fe 	udiv	r8, r1, lr
2002a69c:	fb08 fc07 	mul.w	ip, r8, r7
2002a6a0:	e7b9      	b.n	2002a616 <__udivmoddi4+0x2be>
2002a6a2:	bf00      	nop

2002a6a4 <__aeabi_idiv0>:
2002a6a4:	4770      	bx	lr
2002a6a6:	bf00      	nop

2002a6a8 <calloc>:
2002a6a8:	4b02      	ldr	r3, [pc, #8]	@ (2002a6b4 <calloc+0xc>)
2002a6aa:	460a      	mov	r2, r1
2002a6ac:	4601      	mov	r1, r0
2002a6ae:	6818      	ldr	r0, [r3, #0]
2002a6b0:	f000 b802 	b.w	2002a6b8 <_calloc_r>
2002a6b4:	20044908 	.word	0x20044908

2002a6b8 <_calloc_r>:
2002a6b8:	b570      	push	{r4, r5, r6, lr}
2002a6ba:	fba1 5402 	umull	r5, r4, r1, r2
2002a6be:	b934      	cbnz	r4, 2002a6ce <_calloc_r+0x16>
2002a6c0:	4629      	mov	r1, r5
2002a6c2:	f000 f837 	bl	2002a734 <_malloc_r>
2002a6c6:	4606      	mov	r6, r0
2002a6c8:	b928      	cbnz	r0, 2002a6d6 <_calloc_r+0x1e>
2002a6ca:	4630      	mov	r0, r6
2002a6cc:	bd70      	pop	{r4, r5, r6, pc}
2002a6ce:	220c      	movs	r2, #12
2002a6d0:	2600      	movs	r6, #0
2002a6d2:	6002      	str	r2, [r0, #0]
2002a6d4:	e7f9      	b.n	2002a6ca <_calloc_r+0x12>
2002a6d6:	462a      	mov	r2, r5
2002a6d8:	4621      	mov	r1, r4
2002a6da:	f000 f8c7 	bl	2002a86c <memset>
2002a6de:	e7f4      	b.n	2002a6ca <_calloc_r+0x12>

2002a6e0 <free>:
2002a6e0:	4b02      	ldr	r3, [pc, #8]	@ (2002a6ec <free+0xc>)
2002a6e2:	4601      	mov	r1, r0
2002a6e4:	6818      	ldr	r0, [r3, #0]
2002a6e6:	f000 b8e9 	b.w	2002a8bc <_free_r>
2002a6ea:	bf00      	nop
2002a6ec:	20044908 	.word	0x20044908

2002a6f0 <sbrk_aligned>:
2002a6f0:	b570      	push	{r4, r5, r6, lr}
2002a6f2:	4e0f      	ldr	r6, [pc, #60]	@ (2002a730 <sbrk_aligned+0x40>)
2002a6f4:	460c      	mov	r4, r1
2002a6f6:	4605      	mov	r5, r0
2002a6f8:	6831      	ldr	r1, [r6, #0]
2002a6fa:	b911      	cbnz	r1, 2002a702 <sbrk_aligned+0x12>
2002a6fc:	f000 f8be 	bl	2002a87c <_sbrk_r>
2002a700:	6030      	str	r0, [r6, #0]
2002a702:	4621      	mov	r1, r4
2002a704:	4628      	mov	r0, r5
2002a706:	f000 f8b9 	bl	2002a87c <_sbrk_r>
2002a70a:	1c43      	adds	r3, r0, #1
2002a70c:	d103      	bne.n	2002a716 <sbrk_aligned+0x26>
2002a70e:	f04f 34ff 	mov.w	r4, #4294967295
2002a712:	4620      	mov	r0, r4
2002a714:	bd70      	pop	{r4, r5, r6, pc}
2002a716:	1cc4      	adds	r4, r0, #3
2002a718:	f024 0403 	bic.w	r4, r4, #3
2002a71c:	42a0      	cmp	r0, r4
2002a71e:	d0f8      	beq.n	2002a712 <sbrk_aligned+0x22>
2002a720:	1a21      	subs	r1, r4, r0
2002a722:	4628      	mov	r0, r5
2002a724:	f000 f8aa 	bl	2002a87c <_sbrk_r>
2002a728:	3001      	adds	r0, #1
2002a72a:	d1f2      	bne.n	2002a712 <sbrk_aligned+0x22>
2002a72c:	e7ef      	b.n	2002a70e <sbrk_aligned+0x1e>
2002a72e:	bf00      	nop
2002a730:	2004a3b4 	.word	0x2004a3b4

2002a734 <_malloc_r>:
2002a734:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
2002a738:	1ccd      	adds	r5, r1, #3
2002a73a:	4606      	mov	r6, r0
2002a73c:	f025 0503 	bic.w	r5, r5, #3
2002a740:	3508      	adds	r5, #8
2002a742:	2d0c      	cmp	r5, #12
2002a744:	bf38      	it	cc
2002a746:	250c      	movcc	r5, #12
2002a748:	2d00      	cmp	r5, #0
2002a74a:	db01      	blt.n	2002a750 <_malloc_r+0x1c>
2002a74c:	42a9      	cmp	r1, r5
2002a74e:	d904      	bls.n	2002a75a <_malloc_r+0x26>
2002a750:	230c      	movs	r3, #12
2002a752:	6033      	str	r3, [r6, #0]
2002a754:	2000      	movs	r0, #0
2002a756:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
2002a75a:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ 2002a830 <_malloc_r+0xfc>
2002a75e:	f000 f869 	bl	2002a834 <__malloc_lock>
2002a762:	f8d8 3000 	ldr.w	r3, [r8]
2002a766:	461c      	mov	r4, r3
2002a768:	bb44      	cbnz	r4, 2002a7bc <_malloc_r+0x88>
2002a76a:	4629      	mov	r1, r5
2002a76c:	4630      	mov	r0, r6
2002a76e:	f7ff ffbf 	bl	2002a6f0 <sbrk_aligned>
2002a772:	1c43      	adds	r3, r0, #1
2002a774:	4604      	mov	r4, r0
2002a776:	d158      	bne.n	2002a82a <_malloc_r+0xf6>
2002a778:	f8d8 4000 	ldr.w	r4, [r8]
2002a77c:	4627      	mov	r7, r4
2002a77e:	2f00      	cmp	r7, #0
2002a780:	d143      	bne.n	2002a80a <_malloc_r+0xd6>
2002a782:	2c00      	cmp	r4, #0
2002a784:	d04b      	beq.n	2002a81e <_malloc_r+0xea>
2002a786:	6823      	ldr	r3, [r4, #0]
2002a788:	4639      	mov	r1, r7
2002a78a:	4630      	mov	r0, r6
2002a78c:	eb04 0903 	add.w	r9, r4, r3
2002a790:	f000 f874 	bl	2002a87c <_sbrk_r>
2002a794:	4581      	cmp	r9, r0
2002a796:	d142      	bne.n	2002a81e <_malloc_r+0xea>
2002a798:	6821      	ldr	r1, [r4, #0]
2002a79a:	4630      	mov	r0, r6
2002a79c:	1a6d      	subs	r5, r5, r1
2002a79e:	4629      	mov	r1, r5
2002a7a0:	f7ff ffa6 	bl	2002a6f0 <sbrk_aligned>
2002a7a4:	3001      	adds	r0, #1
2002a7a6:	d03a      	beq.n	2002a81e <_malloc_r+0xea>
2002a7a8:	6823      	ldr	r3, [r4, #0]
2002a7aa:	442b      	add	r3, r5
2002a7ac:	6023      	str	r3, [r4, #0]
2002a7ae:	f8d8 3000 	ldr.w	r3, [r8]
2002a7b2:	685a      	ldr	r2, [r3, #4]
2002a7b4:	bb62      	cbnz	r2, 2002a810 <_malloc_r+0xdc>
2002a7b6:	f8c8 7000 	str.w	r7, [r8]
2002a7ba:	e00f      	b.n	2002a7dc <_malloc_r+0xa8>
2002a7bc:	6822      	ldr	r2, [r4, #0]
2002a7be:	1b52      	subs	r2, r2, r5
2002a7c0:	d420      	bmi.n	2002a804 <_malloc_r+0xd0>
2002a7c2:	2a0b      	cmp	r2, #11
2002a7c4:	d917      	bls.n	2002a7f6 <_malloc_r+0xc2>
2002a7c6:	1961      	adds	r1, r4, r5
2002a7c8:	42a3      	cmp	r3, r4
2002a7ca:	6025      	str	r5, [r4, #0]
2002a7cc:	bf18      	it	ne
2002a7ce:	6059      	strne	r1, [r3, #4]
2002a7d0:	6863      	ldr	r3, [r4, #4]
2002a7d2:	bf08      	it	eq
2002a7d4:	f8c8 1000 	streq.w	r1, [r8]
2002a7d8:	5162      	str	r2, [r4, r5]
2002a7da:	604b      	str	r3, [r1, #4]
2002a7dc:	4630      	mov	r0, r6
2002a7de:	f000 f82f 	bl	2002a840 <__malloc_unlock>
2002a7e2:	f104 000b 	add.w	r0, r4, #11
2002a7e6:	1d23      	adds	r3, r4, #4
2002a7e8:	f020 0007 	bic.w	r0, r0, #7
2002a7ec:	1ac2      	subs	r2, r0, r3
2002a7ee:	bf1c      	itt	ne
2002a7f0:	1a1b      	subne	r3, r3, r0
2002a7f2:	50a3      	strne	r3, [r4, r2]
2002a7f4:	e7af      	b.n	2002a756 <_malloc_r+0x22>
2002a7f6:	6862      	ldr	r2, [r4, #4]
2002a7f8:	42a3      	cmp	r3, r4
2002a7fa:	bf0c      	ite	eq
2002a7fc:	f8c8 2000 	streq.w	r2, [r8]
2002a800:	605a      	strne	r2, [r3, #4]
2002a802:	e7eb      	b.n	2002a7dc <_malloc_r+0xa8>
2002a804:	4623      	mov	r3, r4
2002a806:	6864      	ldr	r4, [r4, #4]
2002a808:	e7ae      	b.n	2002a768 <_malloc_r+0x34>
2002a80a:	463c      	mov	r4, r7
2002a80c:	687f      	ldr	r7, [r7, #4]
2002a80e:	e7b6      	b.n	2002a77e <_malloc_r+0x4a>
2002a810:	461a      	mov	r2, r3
2002a812:	685b      	ldr	r3, [r3, #4]
2002a814:	42a3      	cmp	r3, r4
2002a816:	d1fb      	bne.n	2002a810 <_malloc_r+0xdc>
2002a818:	2300      	movs	r3, #0
2002a81a:	6053      	str	r3, [r2, #4]
2002a81c:	e7de      	b.n	2002a7dc <_malloc_r+0xa8>
2002a81e:	230c      	movs	r3, #12
2002a820:	4630      	mov	r0, r6
2002a822:	6033      	str	r3, [r6, #0]
2002a824:	f000 f80c 	bl	2002a840 <__malloc_unlock>
2002a828:	e794      	b.n	2002a754 <_malloc_r+0x20>
2002a82a:	6005      	str	r5, [r0, #0]
2002a82c:	e7d6      	b.n	2002a7dc <_malloc_r+0xa8>
2002a82e:	bf00      	nop
2002a830:	2004a3b8 	.word	0x2004a3b8

2002a834 <__malloc_lock>:
2002a834:	4801      	ldr	r0, [pc, #4]	@ (2002a83c <__malloc_lock+0x8>)
2002a836:	f000 b831 	b.w	2002a89c <__retarget_lock_acquire_recursive>
2002a83a:	bf00      	nop
2002a83c:	2004a4f8 	.word	0x2004a4f8

2002a840 <__malloc_unlock>:
2002a840:	4801      	ldr	r0, [pc, #4]	@ (2002a848 <__malloc_unlock+0x8>)
2002a842:	f000 b82c 	b.w	2002a89e <__retarget_lock_release_recursive>
2002a846:	bf00      	nop
2002a848:	2004a4f8 	.word	0x2004a4f8

2002a84c <memcmp>:
2002a84c:	3901      	subs	r1, #1
2002a84e:	4402      	add	r2, r0
2002a850:	b510      	push	{r4, lr}
2002a852:	4290      	cmp	r0, r2
2002a854:	d101      	bne.n	2002a85a <memcmp+0xe>
2002a856:	2000      	movs	r0, #0
2002a858:	e005      	b.n	2002a866 <memcmp+0x1a>
2002a85a:	7803      	ldrb	r3, [r0, #0]
2002a85c:	f811 4f01 	ldrb.w	r4, [r1, #1]!
2002a860:	42a3      	cmp	r3, r4
2002a862:	d001      	beq.n	2002a868 <memcmp+0x1c>
2002a864:	1b18      	subs	r0, r3, r4
2002a866:	bd10      	pop	{r4, pc}
2002a868:	3001      	adds	r0, #1
2002a86a:	e7f2      	b.n	2002a852 <memcmp+0x6>

2002a86c <memset>:
2002a86c:	4402      	add	r2, r0
2002a86e:	4603      	mov	r3, r0
2002a870:	4293      	cmp	r3, r2
2002a872:	d100      	bne.n	2002a876 <memset+0xa>
2002a874:	4770      	bx	lr
2002a876:	f803 1b01 	strb.w	r1, [r3], #1
2002a87a:	e7f9      	b.n	2002a870 <memset+0x4>

2002a87c <_sbrk_r>:
2002a87c:	b538      	push	{r3, r4, r5, lr}
2002a87e:	2300      	movs	r3, #0
2002a880:	4d05      	ldr	r5, [pc, #20]	@ (2002a898 <_sbrk_r+0x1c>)
2002a882:	4604      	mov	r4, r0
2002a884:	4608      	mov	r0, r1
2002a886:	602b      	str	r3, [r5, #0]
2002a888:	f000 f862 	bl	2002a950 <_sbrk>
2002a88c:	1c43      	adds	r3, r0, #1
2002a88e:	d102      	bne.n	2002a896 <_sbrk_r+0x1a>
2002a890:	682b      	ldr	r3, [r5, #0]
2002a892:	b103      	cbz	r3, 2002a896 <_sbrk_r+0x1a>
2002a894:	6023      	str	r3, [r4, #0]
2002a896:	bd38      	pop	{r3, r4, r5, pc}
2002a898:	2004a4f4 	.word	0x2004a4f4

2002a89c <__retarget_lock_acquire_recursive>:
2002a89c:	4770      	bx	lr

2002a89e <__retarget_lock_release_recursive>:
2002a89e:	4770      	bx	lr

2002a8a0 <memcpy>:
2002a8a0:	440a      	add	r2, r1
2002a8a2:	1e43      	subs	r3, r0, #1
2002a8a4:	4291      	cmp	r1, r2
2002a8a6:	d100      	bne.n	2002a8aa <memcpy+0xa>
2002a8a8:	4770      	bx	lr
2002a8aa:	b510      	push	{r4, lr}
2002a8ac:	f811 4b01 	ldrb.w	r4, [r1], #1
2002a8b0:	4291      	cmp	r1, r2
2002a8b2:	f803 4f01 	strb.w	r4, [r3, #1]!
2002a8b6:	d1f9      	bne.n	2002a8ac <memcpy+0xc>
2002a8b8:	bd10      	pop	{r4, pc}
	...

2002a8bc <_free_r>:
2002a8bc:	b538      	push	{r3, r4, r5, lr}
2002a8be:	4605      	mov	r5, r0
2002a8c0:	2900      	cmp	r1, #0
2002a8c2:	d041      	beq.n	2002a948 <_free_r+0x8c>
2002a8c4:	f851 3c04 	ldr.w	r3, [r1, #-4]
2002a8c8:	1f0c      	subs	r4, r1, #4
2002a8ca:	2b00      	cmp	r3, #0
2002a8cc:	bfb8      	it	lt
2002a8ce:	18e4      	addlt	r4, r4, r3
2002a8d0:	f7ff ffb0 	bl	2002a834 <__malloc_lock>
2002a8d4:	4a1d      	ldr	r2, [pc, #116]	@ (2002a94c <_free_r+0x90>)
2002a8d6:	6813      	ldr	r3, [r2, #0]
2002a8d8:	b933      	cbnz	r3, 2002a8e8 <_free_r+0x2c>
2002a8da:	6063      	str	r3, [r4, #4]
2002a8dc:	6014      	str	r4, [r2, #0]
2002a8de:	4628      	mov	r0, r5
2002a8e0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
2002a8e4:	f7ff bfac 	b.w	2002a840 <__malloc_unlock>
2002a8e8:	42a3      	cmp	r3, r4
2002a8ea:	d908      	bls.n	2002a8fe <_free_r+0x42>
2002a8ec:	6820      	ldr	r0, [r4, #0]
2002a8ee:	1821      	adds	r1, r4, r0
2002a8f0:	428b      	cmp	r3, r1
2002a8f2:	bf01      	itttt	eq
2002a8f4:	6819      	ldreq	r1, [r3, #0]
2002a8f6:	685b      	ldreq	r3, [r3, #4]
2002a8f8:	1809      	addeq	r1, r1, r0
2002a8fa:	6021      	streq	r1, [r4, #0]
2002a8fc:	e7ed      	b.n	2002a8da <_free_r+0x1e>
2002a8fe:	461a      	mov	r2, r3
2002a900:	685b      	ldr	r3, [r3, #4]
2002a902:	b10b      	cbz	r3, 2002a908 <_free_r+0x4c>
2002a904:	42a3      	cmp	r3, r4
2002a906:	d9fa      	bls.n	2002a8fe <_free_r+0x42>
2002a908:	6811      	ldr	r1, [r2, #0]
2002a90a:	1850      	adds	r0, r2, r1
2002a90c:	42a0      	cmp	r0, r4
2002a90e:	d10b      	bne.n	2002a928 <_free_r+0x6c>
2002a910:	6820      	ldr	r0, [r4, #0]
2002a912:	4401      	add	r1, r0
2002a914:	1850      	adds	r0, r2, r1
2002a916:	6011      	str	r1, [r2, #0]
2002a918:	4283      	cmp	r3, r0
2002a91a:	d1e0      	bne.n	2002a8de <_free_r+0x22>
2002a91c:	6818      	ldr	r0, [r3, #0]
2002a91e:	685b      	ldr	r3, [r3, #4]
2002a920:	4408      	add	r0, r1
2002a922:	6053      	str	r3, [r2, #4]
2002a924:	6010      	str	r0, [r2, #0]
2002a926:	e7da      	b.n	2002a8de <_free_r+0x22>
2002a928:	d902      	bls.n	2002a930 <_free_r+0x74>
2002a92a:	230c      	movs	r3, #12
2002a92c:	602b      	str	r3, [r5, #0]
2002a92e:	e7d6      	b.n	2002a8de <_free_r+0x22>
2002a930:	6820      	ldr	r0, [r4, #0]
2002a932:	1821      	adds	r1, r4, r0
2002a934:	428b      	cmp	r3, r1
2002a936:	bf02      	ittt	eq
2002a938:	6819      	ldreq	r1, [r3, #0]
2002a93a:	685b      	ldreq	r3, [r3, #4]
2002a93c:	1809      	addeq	r1, r1, r0
2002a93e:	6063      	str	r3, [r4, #4]
2002a940:	bf08      	it	eq
2002a942:	6021      	streq	r1, [r4, #0]
2002a944:	6054      	str	r4, [r2, #4]
2002a946:	e7ca      	b.n	2002a8de <_free_r+0x22>
2002a948:	bd38      	pop	{r3, r4, r5, pc}
2002a94a:	bf00      	nop
2002a94c:	2004a3b8 	.word	0x2004a3b8

2002a950 <_sbrk>:
2002a950:	4a05      	ldr	r2, [pc, #20]	@ (2002a968 <_sbrk+0x18>)
2002a952:	4603      	mov	r3, r0
2002a954:	6810      	ldr	r0, [r2, #0]
2002a956:	b110      	cbz	r0, 2002a95e <_sbrk+0xe>
2002a958:	4403      	add	r3, r0
2002a95a:	6013      	str	r3, [r2, #0]
2002a95c:	4770      	bx	lr
2002a95e:	4803      	ldr	r0, [pc, #12]	@ (2002a96c <_sbrk+0x1c>)
2002a960:	4403      	add	r3, r0
2002a962:	6013      	str	r3, [r2, #0]
2002a964:	4770      	bx	lr
2002a966:	bf00      	nop
2002a968:	2004a4fc 	.word	0x2004a4fc
2002a96c:	20042000 	.word	0x20042000
2002a970:	50041000 	.word	0x50041000
2002a974:	00000002 	.word	0x00000002
2002a978:	10000000 	.word	0x10000000
2002a97c:	00000004 	.word	0x00000004
2002a980:	00000000 	.word	0x00000000
2002a984:	50081008 	.word	0x50081008
2002a988:	00000000 	.word	0x00000000
2002a98c:	00000032 	.word	0x00000032
2002a990:	00000000 	.word	0x00000000
2002a994:	50042000 	.word	0x50042000
2002a998:	00000002 	.word	0x00000002
2002a99c:	12000000 	.word	0x12000000
2002a9a0:	00000004 	.word	0x00000004
2002a9a4:	00000000 	.word	0x00000000
2002a9a8:	5008101c 	.word	0x5008101c
2002a9ac:	00000000 	.word	0x00000000
2002a9b0:	00000033 	.word	0x00000033
2002a9b4:	00000001 	.word	0x00000001
2002a9b8:	62636573 	.word	0x62636573
2002a9bc:	20746f6f 	.word	0x20746f6f
2002a9c0:	6b676973 	.word	0x6b676973
2002a9c4:	70207965 	.word	0x70207965
2002a9c8:	65206275 	.word	0x65206275
2002a9cc:	00217272 	.word	0x00217272
2002a9d0:	62636573 	.word	0x62636573
2002a9d4:	20746f6f 	.word	0x20746f6f
2002a9d8:	20676d69 	.word	0x20676d69
2002a9dc:	68736168 	.word	0x68736168
2002a9e0:	67697320 	.word	0x67697320
2002a9e4:	72726520 	.word	0x72726520
2002a9e8:	65730021 	.word	0x65730021
2002a9ec:	6f6f6263 	.word	0x6f6f6263
2002a9f0:	78652074 	.word	0x78652074
2002a9f4:	20747063 	.word	0x20747063
2002a9f8:	6c6c756e 	.word	0x6c6c756e
2002a9fc:	41480021 	.word	0x41480021
2002aa00:	535f4853 	.word	0x535f4853
2002aa04:	49545445 	.word	0x49545445
2002aa08:	253d474e 	.word	0x253d474e
2002aa0c:	0a583830 	.word	0x0a583830
2002aa10:	616f4c00 	.word	0x616f4c00
2002aa14:	56492064 	.word	0x56492064
2002aa18:	646e6120 	.word	0x646e6120
2002aa1c:	6e656c20 	.word	0x6e656c20
2002aa20:	20687467 	.word	0x20687467
2002aa24:	48534148 	.word	0x48534148
2002aa28:	5445535f 	.word	0x5445535f
2002aa2c:	474e4954 	.word	0x474e4954
2002aa30:	3830253d 	.word	0x3830253d
2002aa34:	69202c58 	.word	0x69202c58
2002aa38:	656c2076 	.word	0x656c2076
2002aa3c:	6874676e 	.word	0x6874676e
2002aa40:	0a64253d 	.word	0x0a64253d
2002aa44:	73655200 	.word	0x73655200
2002aa48:	20746c75 	.word	0x20746c75
2002aa4c:	3d6e656c 	.word	0x3d6e656c
2002aa50:	000a6425 	.word	0x000a6425
2002aa54:	2070614d 	.word	0x2070614d
2002aa58:	6f727265 	.word	0x6f727265
2002aa5c:	6c203a72 	.word	0x6c203a72
2002aa60:	6369676f 	.word	0x6369676f
2002aa64:	2c642520 	.word	0x2c642520
2002aa68:	79687020 	.word	0x79687020
2002aa6c:	0a642520 	.word	0x0a642520
2002aa70:	52524500 	.word	0x52524500
2002aa74:	2032203a 	.word	0x2032203a
2002aa78:	69676f6c 	.word	0x69676f6c
2002aa7c:	6c622063 	.word	0x6c622063
2002aa80:	736b636f 	.word	0x736b636f
2002aa84:	70616d20 	.word	0x70616d20
2002aa88:	206f7420 	.word	0x206f7420
2002aa8c:	656d6173 	.word	0x656d6173
2002aa90:	6b6c6220 	.word	0x6b6c6220
2002aa94:	6f6c203a 	.word	0x6f6c203a
2002aa98:	30636967 	.word	0x30636967
2002aa9c:	2c642520 	.word	0x2c642520
2002aaa0:	79687020 	.word	0x79687020
2002aaa4:	64252030 	.word	0x64252030
2002aaa8:	6f6c202c 	.word	0x6f6c202c
2002aaac:	31636967 	.word	0x31636967
2002aab0:	2c642520 	.word	0x2c642520
2002aab4:	79687020 	.word	0x79687020
2002aab8:	64252031 	.word	0x64252031
2002aabc:	614d000a 	.word	0x614d000a
2002aac0:	72652070 	.word	0x72652070
2002aac4:	30726f72 	.word	0x30726f72
2002aac8:	6f6c203a 	.word	0x6f6c203a
2002aacc:	20636967 	.word	0x20636967
2002aad0:	202c6425 	.word	0x202c6425
2002aad4:	20796870 	.word	0x20796870
2002aad8:	000a6425 	.word	0x000a6425
2002aadc:	20746547 	.word	0x20746547
2002aae0:	2070616d 	.word	0x2070616d
2002aae4:	636f6c62 	.word	0x636f6c62
2002aae8:	7265206b 	.word	0x7265206b
2002aaec:	20726f72 	.word	0x20726f72
2002aaf0:	2d206425 	.word	0x2d206425
2002aaf4:	25203e2d 	.word	0x25203e2d
2002aaf8:	42000a64 	.word	0x42000a64
2002aafc:	76204d42 	.word	0x76204d42
2002ab00:	69737265 	.word	0x69737265
2002ab04:	6e206e6f 	.word	0x6e206e6f
2002ab08:	6920746f 	.word	0x6920746f
2002ab0c:	6572636e 	.word	0x6572636e
2002ab10:	64657361 	.word	0x64657361
2002ab14:	7270203a 	.word	0x7270203a
2002ab18:	25207665 	.word	0x25207665
2002ab1c:	63202c64 	.word	0x63202c64
2002ab20:	20727275 	.word	0x20727275
2002ab24:	000a6425 	.word	0x000a6425
2002ab28:	41544144 	.word	0x41544144
2002ab2c:	746f6e20 	.word	0x746f6e20
2002ab30:	61657220 	.word	0x61657220
2002ab34:	616e6f73 	.word	0x616e6f73
2002ab38:	20656c62 	.word	0x20656c62
2002ab3c:	42206e69 	.word	0x42206e69
2002ab40:	62204d42 	.word	0x62204d42
2002ab44:	25206b6c 	.word	0x25206b6c
2002ab48:	61702064 	.word	0x61702064
2002ab4c:	25206567 	.word	0x25206567
2002ab50:	30203a64 	.word	0x30203a64
2002ab54:	0a782578 	.word	0x0a782578
2002ab58:	61655200 	.word	0x61655200
2002ab5c:	62622064 	.word	0x62622064
2002ab60:	6c62206d 	.word	0x6c62206d
2002ab64:	6425206b 	.word	0x6425206b
2002ab68:	67617020 	.word	0x67617020
2002ab6c:	64252065 	.word	0x64252065
2002ab70:	69616620 	.word	0x69616620
2002ab74:	49000a6c 	.word	0x49000a6c
2002ab78:	6c61766e 	.word	0x6c61766e
2002ab7c:	42206469 	.word	0x42206469
2002ab80:	49204d42 	.word	0x49204d42
2002ab84:	25205844 	.word	0x25205844
2002ab88:	56000a64 	.word	0x56000a64
2002ab8c:	64252031 	.word	0x64252031
2002ab90:	206e6920 	.word	0x206e6920
2002ab94:	636f6c62 	.word	0x636f6c62
2002ab98:	6425206b 	.word	0x6425206b
2002ab9c:	3256202c 	.word	0x3256202c
2002aba0:	20642520 	.word	0x20642520
2002aba4:	62206e69 	.word	0x62206e69
2002aba8:	6b636f6c 	.word	0x6b636f6c
2002abac:	0a642520 	.word	0x0a642520
2002abb0:	6d615300 	.word	0x6d615300
2002abb4:	69687465 	.word	0x69687465
2002abb8:	6d20676e 	.word	0x6d20676e
2002abbc:	20747375 	.word	0x20747375
2002abc0:	77206562 	.word	0x77206562
2002abc4:	676e6f72 	.word	0x676e6f72
2002abc8:	6567202c 	.word	0x6567202c
2002abcc:	656e2074 	.word	0x656e2074
2002abd0:	65762077 	.word	0x65762077
2002abd4:	6f697372 	.word	0x6f697372
2002abd8:	6425206e 	.word	0x6425206e
2002abdc:	206f6420 	.word	0x206f6420
2002abe0:	20746f6e 	.word	0x20746f6e
2002abe4:	656d6173 	.word	0x656d6173
2002abe8:	206f7420 	.word	0x206f7420
2002abec:	76657270 	.word	0x76657270
2002abf0:	65686320 	.word	0x65686320
2002abf4:	25206b63 	.word	0x25206b63
2002abf8:	43000a64 	.word	0x43000a64
2002abfc:	63204352 	.word	0x63204352
2002ac00:	6b636568 	.word	0x6b636568
2002ac04:	72726520 	.word	0x72726520
2002ac08:	0a20726f 	.word	0x0a20726f
2002ac0c:	61655200 	.word	0x61655200
2002ac10:	62622064 	.word	0x62622064
2002ac14:	6c62206d 	.word	0x6c62206d
2002ac18:	6425206b 	.word	0x6425206b
2002ac1c:	67617020 	.word	0x67617020
2002ac20:	64252065 	.word	0x64252065
2002ac24:	74616420 	.word	0x74616420
2002ac28:	6f6e2061 	.word	0x6f6e2061
2002ac2c:	72772074 	.word	0x72772074
2002ac30:	20657469 	.word	0x20657469
2002ac34:	20726f66 	.word	0x20726f66
2002ac38:	20646e32 	.word	0x20646e32
2002ac3c:	656d6974 	.word	0x656d6974
2002ac40:	6552000a 	.word	0x6552000a
2002ac44:	62206461 	.word	0x62206461
2002ac48:	62206d62 	.word	0x62206d62
2002ac4c:	25206b6c 	.word	0x25206b6c
2002ac50:	61702064 	.word	0x61702064
2002ac54:	25206567 	.word	0x25206567
2002ac58:	61662064 	.word	0x61662064
2002ac5c:	66206c69 	.word	0x66206c69
2002ac60:	3220726f 	.word	0x3220726f
2002ac64:	7420646e 	.word	0x7420646e
2002ac68:	3f656d69 	.word	0x3f656d69
2002ac6c:	614c000a 	.word	0x614c000a
2002ac70:	74736574 	.word	0x74736574
2002ac74:	72657620 	.word	0x72657620
2002ac78:	6e6f6973 	.word	0x6e6f6973
2002ac7c:	0a642520 	.word	0x0a642520
2002ac80:	74654700 	.word	0x74654700
2002ac84:	79687020 	.word	0x79687020
2002ac88:	6b6c6220 	.word	0x6b6c6220
2002ac8c:	726f6620 	.word	0x726f6620
2002ac90:	20642520 	.word	0x20642520
2002ac94:	6c696166 	.word	0x6c696166
2002ac98:	65687720 	.word	0x65687720
2002ac9c:	6572206e 	.word	0x6572206e
2002aca0:	000a6461 	.word	0x000a6461
2002aca4:	636f6c42 	.word	0x636f6c42
2002aca8:	6425206b 	.word	0x6425206b
2002acac:	61726520 	.word	0x61726520
2002acb0:	66206573 	.word	0x66206573
2002acb4:	2c6c6961 	.word	0x2c6c6961
2002acb8:	72616d20 	.word	0x72616d20
2002acbc:	7361206b 	.word	0x7361206b
2002acc0:	64616220 	.word	0x64616220
2002acc4:	6c42000a 	.word	0x6c42000a
2002acc8:	206b636f 	.word	0x206b636f
2002accc:	63206425 	.word	0x63206425
2002acd0:	6b636568 	.word	0x6b636568
2002acd4:	20736120 	.word	0x20736120
2002acd8:	20646162 	.word	0x20646162
2002acdc:	636f6c62 	.word	0x636f6c62
2002ace0:	42000a6b 	.word	0x42000a6b
2002ace4:	6b636f6c 	.word	0x6b636f6c
2002ace8:	20642520 	.word	0x20642520
2002acec:	62207369 	.word	0x62207369
2002acf0:	69206461 	.word	0x69206461
2002acf4:	7375206e 	.word	0x7375206e
2002acf8:	62207265 	.word	0x62207265
2002acfc:	6b636f6c 	.word	0x6b636f6c
2002ad00:	6162000a 	.word	0x6162000a
2002ad04:	64252064 	.word	0x64252064
2002ad08:	6572202c 	.word	0x6572202c
2002ad0c:	63616c70 	.word	0x63616c70
2002ad10:	64252065 	.word	0x64252065
2002ad14:	6f4e000a 	.word	0x6f4e000a
2002ad18:	63616220 	.word	0x63616220
2002ad1c:	2070756b 	.word	0x2070756b
2002ad20:	636f6c62 	.word	0x636f6c62
2002ad24:	6e61206b 	.word	0x6e61206b
2002ad28:	6f6d2079 	.word	0x6f6d2079
2002ad2c:	000a6572 	.word	0x000a6572
2002ad30:	74706d65 	.word	0x74706d65
2002ad34:	61742079 	.word	0x61742079
2002ad38:	20656c62 	.word	0x20656c62
2002ad3c:	6e206425 	.word	0x6e206425
2002ad40:	6520746f 	.word	0x6520746f
2002ad44:	67756f6e 	.word	0x67756f6e
2002ad48:	6f662068 	.word	0x6f662068
2002ad4c:	6e692072 	.word	0x6e692072
2002ad50:	61697469 	.word	0x61697469
2002ad54:	55000a6c 	.word	0x55000a6c
2002ad58:	74616470 	.word	0x74616470
2002ad5c:	61742065 	.word	0x61742065
2002ad60:	20656c62 	.word	0x20656c62
2002ad64:	66206f74 	.word	0x66206f74
2002ad68:	6873616c 	.word	0x6873616c
2002ad6c:	6e6f6420 	.word	0x6e6f6420
2002ad70:	49000a65 	.word	0x49000a65
2002ad74:	6974696e 	.word	0x6974696e
2002ad78:	74206c61 	.word	0x74206c61
2002ad7c:	656c6261 	.word	0x656c6261
2002ad80:	69616620 	.word	0x69616620
2002ad84:	42000a6c 	.word	0x42000a6c
2002ad88:	69204d42 	.word	0x69204d42
2002ad8c:	6974696e 	.word	0x6974696e
2002ad90:	7a696c61 	.word	0x7a696c61
2002ad94:	62206465 	.word	0x62206465
2002ad98:	726f6665 	.word	0x726f6665
2002ad9c:	64202c65 	.word	0x64202c65
2002ada0:	6f6e206f 	.word	0x6f6e206f
2002ada4:	6e692074 	.word	0x6e692074
2002ada8:	61207469 	.word	0x61207469
2002adac:	6d20796e 	.word	0x6d20796e
2002adb0:	0a65726f 	.word	0x0a65726f
2002adb4:	54454400 	.word	0x54454400
2002adb8:	20642520 	.word	0x20642520
2002adbc:	0a646162 	.word	0x0a646162
2002adc0:	4b4c4200 	.word	0x4b4c4200
2002adc4:	20642520 	.word	0x20642520
2002adc8:	64616572 	.word	0x64616572
2002adcc:	69616620 	.word	0x69616620
2002add0:	6d202c6c 	.word	0x6d202c6c
2002add4:	206b7261 	.word	0x206b7261
2002add8:	62207361 	.word	0x62207361
2002addc:	000a6461 	.word	0x000a6461
2002ade0:	20746564 	.word	0x20746564
2002ade4:	206d6262 	.word	0x206d6262
2002ade8:	6c626174 	.word	0x6c626174
2002adec:	69772065 	.word	0x69772065
2002adf0:	25206874 	.word	0x25206874
2002adf4:	25202c64 	.word	0x25202c64
2002adf8:	25202c64 	.word	0x25202c64
2002adfc:	64000a64 	.word	0x64000a64
2002ae00:	63657465 	.word	0x63657465
2002ae04:	65722074 	.word	0x65722074
2002ae08:	746c7573 	.word	0x746c7573
2002ae0c:	0a642520 	.word	0x0a642520
2002ae10:	20317600 	.word	0x20317600
2002ae14:	69206425 	.word	0x69206425
2002ae18:	6c62206e 	.word	0x6c62206e
2002ae1c:	6425206b 	.word	0x6425206b
2002ae20:	3276202c 	.word	0x3276202c
2002ae24:	20642520 	.word	0x20642520
2002ae28:	62206e69 	.word	0x62206e69
2002ae2c:	6b636f6c 	.word	0x6b636f6c
2002ae30:	0a642520 	.word	0x0a642520
2002ae34:	65684300 	.word	0x65684300
2002ae38:	62206b63 	.word	0x62206b63
2002ae3c:	74206d62 	.word	0x74206d62
2002ae40:	656c6261 	.word	0x656c6261
2002ae44:	69616620 	.word	0x69616620
2002ae48:	64000a6c 	.word	0x64000a6c
2002ae4c:	63657465 	.word	0x63657465
2002ae50:	65722074 	.word	0x65722074
2002ae54:	746c7573 	.word	0x746c7573
2002ae58:	20642520 	.word	0x20642520
2002ae5c:	20746f6e 	.word	0x20746f6e
2002ae60:	73616572 	.word	0x73616572
2002ae64:	62616e6f 	.word	0x62616e6f
2002ae68:	000a656c 	.word	0x000a656c
2002ae6c:	204d4242 	.word	0x204d4242
2002ae70:	3a4d454d 	.word	0x3a4d454d
2002ae74:	78746320 	.word	0x78746320
2002ae78:	2c702520 	.word	0x2c702520
2002ae7c:	70616d20 	.word	0x70616d20
2002ae80:	70252031 	.word	0x70252031
2002ae84:	616d202c 	.word	0x616d202c
2002ae88:	25203270 	.word	0x25203270
2002ae8c:	000a2070 	.word	0x000a2070
2002ae90:	5f666973 	.word	0x5f666973
2002ae94:	5f6d6262 	.word	0x5f6d6262
2002ae98:	74696e69 	.word	0x74696e69
2002ae9c:	6e6f6420 	.word	0x6e6f6420
2002aea0:	53000a65 	.word	0x53000a65
2002aea4:	31354148 	.word	0x31354148
2002aea8:	48530032 	.word	0x48530032
2002aeac:	34383341 	.word	0x34383341
2002aeb0:	41485300 	.word	0x41485300
2002aeb4:	00363532 	.word	0x00363532
2002aeb8:	32414853 	.word	0x32414853
2002aebc:	60003432 	.word	0x60003432
2002aec0:	65014886 	.word	0x65014886
2002aec4:	04020403 	.word	0x04020403
2002aec8:	2d646900 	.word	0x2d646900
2002aecc:	32616873 	.word	0x32616873
2002aed0:	60003432 	.word	0x60003432
2002aed4:	65014886 	.word	0x65014886
2002aed8:	01020403 	.word	0x01020403
2002aedc:	2d646900 	.word	0x2d646900
2002aee0:	32616873 	.word	0x32616873
2002aee4:	60003635 	.word	0x60003635
2002aee8:	65014886 	.word	0x65014886
2002aeec:	02020403 	.word	0x02020403
2002aef0:	2d646900 	.word	0x2d646900
2002aef4:	33616873 	.word	0x33616873
2002aef8:	60003438 	.word	0x60003438
2002aefc:	65014886 	.word	0x65014886
2002af00:	03020403 	.word	0x03020403
2002af04:	2d646900 	.word	0x2d646900
2002af08:	35616873 	.word	0x35616873
2002af0c:	2b003231 	.word	0x2b003231
2002af10:	0702030e 	.word	0x0702030e
2002af14:	73656400 	.word	0x73656400
2002af18:	00434243 	.word	0x00434243
2002af1c:	2d534544 	.word	0x2d534544
2002af20:	00434243 	.word	0x00434243
2002af24:	8648862a 	.word	0x8648862a
2002af28:	07030df7 	.word	0x07030df7
2002af2c:	73656400 	.word	0x73656400
2002af30:	6564652d 	.word	0x6564652d
2002af34:	62632d33 	.word	0x62632d33
2002af38:	45440063 	.word	0x45440063
2002af3c:	44452d53 	.word	0x44452d53
2002af40:	432d3345 	.word	0x432d3345
2002af44:	2a004342 	.word	0x2a004342
2002af48:	f7864886 	.word	0xf7864886
2002af4c:	0101010d 	.word	0x0101010d
2002af50:	61737200 	.word	0x61737200
2002af54:	72636e45 	.word	0x72636e45
2002af58:	69747079 	.word	0x69747079
2002af5c:	52006e6f 	.word	0x52006e6f
2002af60:	2a004153 	.word	0x2a004153
2002af64:	3dce4886 	.word	0x3dce4886
2002af68:	69000102 	.word	0x69000102
2002af6c:	63652d64 	.word	0x63652d64
2002af70:	6c627550 	.word	0x6c627550
2002af74:	654b6369 	.word	0x654b6369
2002af78:	65470079 	.word	0x65470079
2002af7c:	6972656e 	.word	0x6972656e
2002af80:	43452063 	.word	0x43452063
2002af84:	79656b20 	.word	0x79656b20
2002af88:	04812b00 	.word	0x04812b00
2002af8c:	69000c01 	.word	0x69000c01
2002af90:	63652d64 	.word	0x63652d64
2002af94:	45004844 	.word	0x45004844
2002af98:	656b2043 	.word	0x656b2043
2002af9c:	6f662079 	.word	0x6f662079
2002afa0:	43452072 	.word	0x43452072
2002afa4:	2a004844 	.word	0x2a004844
2002afa8:	f7864886 	.word	0xf7864886
2002afac:	0e01010d 	.word	0x0e01010d
2002afb0:	61687300 	.word	0x61687300
2002afb4:	57343232 	.word	0x57343232
2002afb8:	52687469 	.word	0x52687469
2002afbc:	6e454153 	.word	0x6e454153
2002afc0:	70797263 	.word	0x70797263
2002afc4:	6e6f6974 	.word	0x6e6f6974
2002afc8:	41535200 	.word	0x41535200
2002afcc:	74697720 	.word	0x74697720
2002afd0:	48532068 	.word	0x48532068
2002afd4:	32322d41 	.word	0x32322d41
2002afd8:	862a0034 	.word	0x862a0034
2002afdc:	0df78648 	.word	0x0df78648
2002afe0:	000b0101 	.word	0x000b0101
2002afe4:	32616873 	.word	0x32616873
2002afe8:	69573635 	.word	0x69573635
2002afec:	53526874 	.word	0x53526874
2002aff0:	636e4541 	.word	0x636e4541
2002aff4:	74707972 	.word	0x74707972
2002aff8:	006e6f69 	.word	0x006e6f69
2002affc:	20415352 	.word	0x20415352
2002b000:	68746977 	.word	0x68746977
2002b004:	41485320 	.word	0x41485320
2002b008:	3635322d 	.word	0x3635322d
2002b00c:	48862a00 	.word	0x48862a00
2002b010:	010df786 	.word	0x010df786
2002b014:	73000c01 	.word	0x73000c01
2002b018:	38336168 	.word	0x38336168
2002b01c:	74695734 	.word	0x74695734
2002b020:	41535268 	.word	0x41535268
2002b024:	72636e45 	.word	0x72636e45
2002b028:	69747079 	.word	0x69747079
2002b02c:	52006e6f 	.word	0x52006e6f
2002b030:	77204153 	.word	0x77204153
2002b034:	20687469 	.word	0x20687469
2002b038:	2d414853 	.word	0x2d414853
2002b03c:	00343833 	.word	0x00343833
2002b040:	8648862a 	.word	0x8648862a
2002b044:	01010df7 	.word	0x01010df7
2002b048:	6873000d 	.word	0x6873000d
2002b04c:	32313561 	.word	0x32313561
2002b050:	68746957 	.word	0x68746957
2002b054:	45415352 	.word	0x45415352
2002b058:	7972636e 	.word	0x7972636e
2002b05c:	6f697470 	.word	0x6f697470
2002b060:	5352006e 	.word	0x5352006e
2002b064:	69772041 	.word	0x69772041
2002b068:	53206874 	.word	0x53206874
2002b06c:	352d4148 	.word	0x352d4148
2002b070:	2a003231 	.word	0x2a003231
2002b074:	f7864886 	.word	0xf7864886
2002b078:	0a01010d 	.word	0x0a01010d
2002b07c:	41535200 	.word	0x41535200
2002b080:	2d415353 	.word	0x2d415353
2002b084:	00535350 	.word	0x00535350
2002b088:	2e617372 	.word	0x2e617372
2002b08c:	7372004e 	.word	0x7372004e
2002b090:	00452e61 	.word	0x00452e61

2002b094 <pin_pad_func_lcpu>:
	...
2002b0b4:	032100b2 00000301 00000000 024b023b     ..!.........;.K.
2002b0c4:	00000237 00000000 00000000 00000000     7...............
2002b0d4:	032200b3 00000302 00000000 024b023c     ..".........<.K.
2002b0e4:	00000238 00000000 00000000 00000000     8...............
2002b0f4:	032300b4 00000303 00000000 024b023d     ..#.........=.K.
2002b104:	0000023a 00000000 00000000 00000000     :...............
2002b114:	032400b5 00000304 00000000 024b023e     ..$.........>.K.
2002b124:	00000239 00000000 00000000 00000000     9...............

2002b134 <pin_pad_func_hcpu>:
	...
2002b154:	000400f2 00000000 000b0000 00000000     ................
	...
2002b174:	000900f3 00000000 00030000 00000000     ................
	...
2002b194:	000a00f4 00000000 000a0000 00000000     ................
	...
2002b1b4:	000b00f5 00000000 000b0000 00000000     ................
	...
2002b1d4:	000c00f6 00000000 00030000 00000000     ................
	...
2002b1f4:	000300f7 000d0000 00000009 00000000     ................
	...
2002b214:	000200f8 000e0000 0000000b 00000000     ................
	...
2002b234:	000100f9 000f0000 0009000a 00000000     ................
	...
2002b254:	000d00fa 00100000 000c0003 00000000     ................
	...
2002b274:	000e00fb 00060000 00010001 00000000     ................
	...
2002b294:	000f00fc 00010000 000c000c 00000000     ................
	...
2002b2b4:	001000fd 00030000 00090000 00000000     ................
	...
2002b2d4:	000500fe 00000006 00000000 00000000     ................
	...
2002b2f4:	01540052 00000000 026302b2 016a0000     R.T.......c...j.
	...
2002b314:	00000053 00000000 026402b3 00000000     S.........d.....
	...
2002b334:	01550054 01c60000 026502b4 016b019a     T.U.......e...k.
2002b344:	023b0000 02270000 00000000 00000000     ..;...'.........
2002b354:	014e0055 01c80000 026602b5 015f0199     U.N.......f..._.
2002b364:	023c0000 02280000 00000000 00000000     ..<...(.........
2002b374:	014f0056 01c70000 026702b6 015e0197     V.O.......g...^.
2002b384:	023d0000 02290000 00000000 00000000     ..=...).........
2002b394:	01500057 01c40000 026802b7 01680195     W.P.......h...h.
2002b3a4:	023e0000 022a0000 00000000 00000000     ..>...*.........
2002b3b4:	01510058 01c50000 026902b8 01690194     X.Q.......i...i.
2002b3c4:	023f0000 022b0000 00000000 00000000     ..?...+.........
2002b3d4:	01520059 01d40000 026a02b9 01600192     Y.R.......j...`.
2002b3e4:	02400000 022c0000 00000000 00000000     ..@...,.........
2002b3f4:	0153005a 01d50000 026b02ba 01610191     Z.S.......k...a.
2002b404:	02410000 0000023a 00000000 00000000     ..A.:...........
2002b414:	0000005b 00000000 026c02bb 00000000     [.........l.....
2002b424:	02420000 00000239 00000000 00000000     ..B.9...........
2002b434:	0000005c 00000000 026d02bc 00000000     \.........m.....
	...
2002b454:	0000005d 00000000 026e02bd 00000000     ].........n.....
2002b464:	01d30000 02210237 00000000 00000000     ....7.!.........
2002b474:	001b005e 000001b7 026f02be 00000000     ^.........o.....
2002b484:	00000000 02220238 00000000 00000000     ....8.".........
2002b494:	0022005f 000001b8 027002bf 00000000     _.".......p.....
2002b4a4:	00000000 02230000 00000000 00000000     ......#.........
2002b4b4:	00230060 000001b2 027102c0 00000000     `.#.......q.....
2002b4c4:	00000000 02240000 00000000 00000000     ......$.........
2002b4d4:	00210061 000001b4 027202c1 00000000     a.!.......r.....
2002b4e4:	00000000 02250000 00000000 00000000     ......%.........
2002b4f4:	00190062 000001b5 027302c2 00000000     b.........s.....
2002b504:	00000000 02260000 00000000 00000000     ......&.........
2002b514:	00240063 000001b6 027402c3 00000000     c.$.......t.....
	...
2002b534:	00000064 0000021a 027502c4 00000000     d.........u.....
	...
2002b554:	00000065 00000219 027602c5 00000000     e.........v.....
	...
2002b574:	00000066 00000000 027702c6 00000000     f.........w.....
2002b584:	024b0000 00000000 00000000 00000000     ..K.............
2002b594:	00000067 00000000 027802c7 00000000     g.........x.....
	...
2002b5b4:	00000068 01d40000 027902c8 00000000     h.........y.....
	...
2002b5d4:	00000069 01d50000 027a02c9 00000000     i.........z.....
	...
2002b5f4:	0000006a 01c60149 027b02ca 00000000     j...I.....{.....
	...
2002b614:	0000006b 01c80148 027c02cb 00000000     k...H.....|.....
	...
2002b634:	0000006c 00000000 027d02cc 00000000     l.........}.....
	...
2002b654:	0000006d 00000000 027e02cd 00000000     m.........~.....
	...
2002b674:	0000006e 01c70146 027f02ce 00000000     n...F...........
	...
2002b694:	0000006f 01c40147 028002cf 00000000     o...G...........
	...
2002b6b4:	00000070 01c50000 028102d0 00000000     p...............
	...
2002b6d4:	00000071 00000000 028202d1 00000000     q...............
2002b6e4:	02430000 00000000 00000000 00000000     ..C.............
2002b6f4:	00000072 00000000 028302d2 00000000     r...............
	...
2002b714:	00000073 00000000 028402d3 00000000     s...............
	...
2002b734:	00000074 00000000 028502d4 00000000     t...............
	...
2002b754:	00000075 00000000 028602d5 00000000     u...............
	...
2002b774:	00000076 00000000 028702d6 00000000     v...............
	...
2002b794:	00000077 0000014d 028802d7 01620000     w...M.........b.
2002b7a4:	02440000 00000000 00000000 00000000     ..D.............
2002b7b4:	00000078 0000014c 028902d8 00000000     x...L...........
	...
2002b7d4:	00000079 0000014a 028a02d9 01630190     y...J.........c.
2002b7e4:	02450000 022f0000 00000000 00000000     ..E.../.........
2002b7f4:	0000007a 0000014b 028b02da 0164018f     z...K.........d.
2002b804:	02460000 02300000 00000000 00000000     ..F...0.........
2002b814:	0000007b 00000000 028c02db 01650193     {.............e.
2002b824:	02470000 02310000 00000000 00000000     ..G...1.........
2002b834:	0000007c 00000000 028d02dc 01660196     |.............f.
2002b844:	02480000 02320000 00000000 00000000     ..H...2.........
2002b854:	0000007d 00000000 028e02dd 01670198     }.............g.
2002b864:	02490000 02330000 00000000 00000000     ..I...3.........
2002b874:	0000007e 00000000 028f02de 00000000     ~...............
2002b884:	024a0000 02340000 00000000 00000000     ..J...4.........

2002b894 <HASH_SIZE>:
2002b894:	20202014 00000000 04030201 00000000     .   ............
2002b8a4:	01060204                                ....

2002b8a8 <CSWTCH.47>:
2002b8a8:	0000003f 00003f00 003f0000              ?....?....?.

2002b8b4 <hpsys_dll2_limit>:
	...
2002b8bc:	112a8800 112a8800                       ..*...*.

2002b8c4 <hpsys_dvfs_config>:
2002b8c4:	000906fb 00100330 000a08fd 00110331     ....0.......1...
2002b8d4:	000d0b00 00130213 000f0d02 00130213     ................

2002b8e4 <crc32tab>:
2002b8e4:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
2002b8f4:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
2002b904:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
2002b914:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
2002b924:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
2002b934:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
2002b944:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
2002b954:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
2002b964:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
2002b974:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
2002b984:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
2002b994:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
2002b9a4:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
2002b9b4:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
2002b9c4:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
2002b9d4:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
2002b9e4:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
2002b9f4:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
2002ba04:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
2002ba14:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
2002ba24:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
2002ba34:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
2002ba44:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
2002ba54:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
2002ba64:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
2002ba74:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
2002ba84:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
2002ba94:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
2002baa4:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
2002bab4:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
2002bac4:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
2002bad4:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
2002bae4:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
2002baf4:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
2002bb04:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
2002bb14:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
2002bb24:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
2002bb34:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
2002bb44:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
2002bb54:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
2002bb64:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
2002bb74:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
2002bb84:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
2002bb94:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
2002bba4:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
2002bbb4:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
2002bbc4:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
2002bbd4:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
2002bbe4:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
2002bbf4:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
2002bc04:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
2002bc14:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
2002bc24:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
2002bc34:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
2002bc44:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
2002bc54:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
2002bc64:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
2002bc74:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
2002bc84:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
2002bc94:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
2002bca4:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
2002bcb4:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
2002bcc4:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
2002bcd4:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

2002bce4 <CSWTCH.5>:
2002bce4:	2002bd84 2002bd54 2002bd24 2002bcf4     ... T.. $.. ... 

2002bcf4 <mbedtls_sha512_info>:
2002bcf4:	00000008 2002aea3 00000040 00000080     ....... @.......
2002bd04:	20025f19 20025f0f 20025f0b 20025f05     ._. ._. ._. ._. 
2002bd14:	20025ee9 20025ed7 20025ed3 20025ecf     .^. .^. .^. .^. 

2002bd24 <mbedtls_sha384_info>:
2002bd24:	00000007 2002aeaa 00000030 00000080     ....... 0.......
2002bd34:	20025f13 20025f0f 20025f0b 20025eff     ._. ._. ._. .^. 
2002bd44:	20025ee9 20025ed7 20025ed3 20025ecf     .^. .^. .^. .^. 

2002bd54 <mbedtls_sha256_info>:
2002bd54:	00000006 2002aeb1 00000020 00000040     .......  ...@...
2002bd64:	20025ec9 20025ebf 20025ebb 20025eb5     .^. .^. .^. .^. 
2002bd74:	20025e99 20025e87 20025e83 20025e7f     .^. .^. .^. .^. 

2002bd84 <mbedtls_sha224_info>:
2002bd84:	00000005 2002aeb8 0000001c 00000040     ....... ....@...
2002bd94:	20025ec3 20025ebf 20025ebb 20025eaf     .^. .^. .^. .^. 
2002bda4:	20025e99 20025e87 20025e83 20025e7f     .^. .^. .^. .^. 

2002bdb4 <sha256_padding>:
2002bdb4:	00000080 00000000 00000000 00000000     ................
	...

2002bdf4 <K>:
2002bdf4:	428a2f98 71374491 b5c0fbcf e9b5dba5     ./.B.D7q........
2002be04:	3956c25b 59f111f1 923f82a4 ab1c5ed5     [.V9...Y..?..^..
2002be14:	d807aa98 12835b01 243185be 550c7dc3     .....[....1$.}.U
2002be24:	72be5d74 80deb1fe 9bdc06a7 c19bf174     t].r........t...
2002be34:	e49b69c1 efbe4786 0fc19dc6 240ca1cc     .i...G.........$
2002be44:	2de92c6f 4a7484aa 5cb0a9dc 76f988da     o,.-..tJ...\...v
2002be54:	983e5152 a831c66d b00327c8 bf597fc7     RQ>.m.1..'....Y.
2002be64:	c6e00bf3 d5a79147 06ca6351 14292967     ....G...Qc..g)).
2002be74:	27b70a85 2e1b2138 4d2c6dfc 53380d13     ...'8!...m,M..8S
2002be84:	650a7354 766a0abb 81c2c92e 92722c85     Ts.e..jv.....,r.
2002be94:	a2bfe8a1 a81a664b c24b8b70 c76c51a3     ....Kf..p.K..Ql.
2002bea4:	d192e819 d6990624 f40e3585 106aa070     ....$....5..p.j.
2002beb4:	19a4c116 1e376c08 2748774c 34b0bcb5     .....l7.LwH'...4
2002bec4:	391c0cb3 4ed8aa4a 5b9cca4f 682e6ff3     ...9J..NO..[.o.h
2002bed4:	748f82ee 78a5636f 84c87814 8cc70208     ...toc.x.x......
2002bee4:	90befffa a4506ceb bef9a3f7 c67178f2     .....lP......xq.

2002bef4 <sha512_padding>:
2002bef4:	00000080 00000000 00000000 00000000     ................
	...

2002bf78 <K>:
2002bf78:	d728ae22 428a2f98 23ef65cd 71374491     ".(../.B.e.#.D7q
2002bf88:	ec4d3b2f b5c0fbcf 8189dbbc e9b5dba5     /;M.............
2002bf98:	f348b538 3956c25b b605d019 59f111f1     8.H.[.V9.......Y
2002bfa8:	af194f9b 923f82a4 da6d8118 ab1c5ed5     .O....?...m..^..
2002bfb8:	a3030242 d807aa98 45706fbe 12835b01     B........opE.[..
2002bfc8:	4ee4b28c 243185be d5ffb4e2 550c7dc3     ...N..1$.....}.U
2002bfd8:	f27b896f 72be5d74 3b1696b1 80deb1fe     o.{.t].r...;....
2002bfe8:	25c71235 9bdc06a7 cf692694 c19bf174     5..%.....&i.t...
2002bff8:	9ef14ad2 e49b69c1 384f25e3 efbe4786     .J...i...%O8.G..
2002c008:	8b8cd5b5 0fc19dc6 77ac9c65 240ca1cc     ........e..w...$
2002c018:	592b0275 2de92c6f 6ea6e483 4a7484aa     u.+Yo,.-...n..tJ
2002c028:	bd41fbd4 5cb0a9dc 831153b5 76f988da     ..A....\.S.....v
2002c038:	ee66dfab 983e5152 2db43210 a831c66d     ..f.RQ>..2.-m.1.
2002c048:	98fb213f b00327c8 beef0ee4 bf597fc7     ?!...'........Y.
2002c058:	3da88fc2 c6e00bf3 930aa725 d5a79147     ...=....%...G...
2002c068:	e003826f 06ca6351 0a0e6e70 14292967     o...Qc..pn..g)).
2002c078:	46d22ffc 27b70a85 5c26c926 2e1b2138     ./.F...'&.&\8!..
2002c088:	5ac42aed 4d2c6dfc 9d95b3df 53380d13     .*.Z.m,M......8S
2002c098:	8baf63de 650a7354 3c77b2a8 766a0abb     .c..Ts.e..w<..jv
2002c0a8:	47edaee6 81c2c92e 1482353b 92722c85     ...G....;5...,r.
2002c0b8:	4cf10364 a2bfe8a1 bc423001 a81a664b     d..L.....0B.Kf..
2002c0c8:	d0f89791 c24b8b70 0654be30 c76c51a3     ....p.K.0.T..Ql.
2002c0d8:	d6ef5218 d192e819 5565a910 d6990624     .R........eU$...
2002c0e8:	5771202a f40e3585 32bbd1b8 106aa070     * qW.5.....2p.j.
2002c0f8:	b8d2d0c8 19a4c116 5141ab53 1e376c08     ........S.AQ.l7.
2002c108:	df8eeb99 2748774c e19b48a8 34b0bcb5     ....LwH'.H.....4
2002c118:	c5c95a63 391c0cb3 e3418acb 4ed8aa4a     cZ.....9..A.J..N
2002c128:	7763e373 5b9cca4f d6b2b8a3 682e6ff3     s.cwO..[.....o.h
2002c138:	5defb2fc 748f82ee 43172f60 78a5636f     ...]...t`/.Coc.x
2002c148:	a1f0ab72 84c87814 1a6439ec 8cc70208     r....x...9d.....
2002c158:	23631e28 90befffa de82bde9 a4506ceb     (.c#.........lP.
2002c168:	b2c67915 bef9a3f7 e372532b c67178f2     .y......+Sr..xq.
2002c178:	ea26619c ca273ece 21c0c207 d186b8c7     .a&..>'....!....
2002c188:	cde0eb1e eada7dd6 ee6ed178 f57d4f7f     .....}..x.n..O}.
2002c198:	72176fba 06f067aa a2c898a6 0a637dc5     .o.r.g.......}c.
2002c1a8:	bef90dae 113f9804 131c471b 1b710b35     ......?..G..5.q.
2002c1b8:	23047d84 28db77f5 40c72493 32caab7b     .}.#.w.(.$.@{..2
2002c1c8:	15c9bebc 3c9ebe0a 9c100d4c 431d67c4     .......<L....g.C
2002c1d8:	cb3e42b6 4cc5d4be fc657e2a 597f299c     .B>....L*~e..).Y
2002c1e8:	3ad6faec 5fcb6fab 4a475817 6c44198c     ...:.o._.XGJ..Dl

2002c1f8 <oid_md_alg>:
2002c1f8:	2002aebf 00000009 2002aec9 2002afd2     ... ....... ... 
2002c208:	00000005 2002aed3 00000009 2002aedd     ....... ....... 
2002c218:	2002b005 00000006 2002aee7 00000009     ... ....... ....
2002c228:	2002aef1 2002b038 00000007 2002aefb     ... 8.. ....... 
2002c238:	00000009 2002af05 2002b06b 00000008     ....... k.. ....
	...

2002c25c <oid_pk_alg>:
2002c25c:	2002af47 00000009 2002af51 2002af5f     G.. ....Q.. _.. 
2002c26c:	00000001 2002af63 00000007 2002af6b     ....c.. ....k.. 
2002c27c:	2002af7a 00000002 2002af89 00000005     z.. ....... ....
2002c28c:	2002af8f 2002af97 00000003 00000000     ... ... ........
	...

2002c2ac <mbedtls_rsa_info>:
2002c2ac:	00000001 2002af5f 2002958f 20029583     ...._.. ... ... 
2002c2bc:	20029669 20029645 20029619 200295e9     i.. E.. ... ... 
2002c2cc:	200295e5 200295cb 200295b9 20029595     ... ... ... ... 

2002c2dc <_init>:
2002c2dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002c2de:	bf00      	nop
2002c2e0:	bcf8      	pop	{r3, r4, r5, r6, r7}
2002c2e2:	bc08      	pop	{r3}
2002c2e4:	469e      	mov	lr, r3
2002c2e6:	4770      	bx	lr

2002c2e8 <_fini>:
2002c2e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2002c2ea:	bf00      	nop
2002c2ec:	bcf8      	pop	{r3, r4, r5, r6, r7}
2002c2ee:	bc08      	pop	{r3}
2002c2f0:	469e      	mov	lr, r3
2002c2f2:	4770      	bx	lr

2002c2f4 <__EH_FRAME_BEGIN__>:
2002c2f4:	0000 0000                                   ....

Disassembly of section .l1_ret_text_HAL_PMU_ConfigPeriLdo:

2002c2f8 <HAL_PMU_ConfigPeriLdo>:
2002c2f8:	b538      	push	{r3, r4, r5, lr}
2002c2fa:	b160      	cbz	r0, 2002c316 <HAL_PMU_ConfigPeriLdo+0x1e>
2002c2fc:	4c11      	ldr	r4, [pc, #68]	@ (2002c344 <HAL_PMU_ConfigPeriLdo+0x4c>)
2002c2fe:	6863      	ldr	r3, [r4, #4]
2002c300:	b2db      	uxtb	r3, r3
2002c302:	2b07      	cmp	r3, #7
2002c304:	d01a      	beq.n	2002c33c <HAL_PMU_ConfigPeriLdo+0x44>
2002c306:	6863      	ldr	r3, [r4, #4]
2002c308:	b2db      	uxtb	r3, r3
2002c30a:	2b0f      	cmp	r3, #15
2002c30c:	d016      	beq.n	2002c33c <HAL_PMU_ConfigPeriLdo+0x44>
2002c30e:	2808      	cmp	r0, #8
2002c310:	d001      	beq.n	2002c316 <HAL_PMU_ConfigPeriLdo+0x1e>
2002c312:	2810      	cmp	r0, #16
2002c314:	d114      	bne.n	2002c340 <HAL_PMU_ConfigPeriLdo+0x48>
2002c316:	2900      	cmp	r1, #0
2002c318:	f04f 0421 	mov.w	r4, #33	@ 0x21
2002c31c:	bf0c      	ite	eq
2002c31e:	2120      	moveq	r1, #32
2002c320:	2101      	movne	r1, #1
2002c322:	4d09      	ldr	r5, [pc, #36]	@ (2002c348 <HAL_PMU_ConfigPeriLdo+0x50>)
2002c324:	4084      	lsls	r4, r0
2002c326:	6deb      	ldr	r3, [r5, #92]	@ 0x5c
2002c328:	4081      	lsls	r1, r0
2002c32a:	ea23 0304 	bic.w	r3, r3, r4
2002c32e:	430b      	orrs	r3, r1
2002c330:	65eb      	str	r3, [r5, #92]	@ 0x5c
2002c332:	b11a      	cbz	r2, 2002c33c <HAL_PMU_ConfigPeriLdo+0x44>
2002c334:	f241 3088 	movw	r0, #5000	@ 0x1388
2002c338:	f7f5 fdf5 	bl	20021f26 <HAL_Delay_us>
2002c33c:	2000      	movs	r0, #0
2002c33e:	bd38      	pop	{r3, r4, r5, pc}
2002c340:	2001      	movs	r0, #1
2002c342:	e7fc      	b.n	2002c33e <HAL_PMU_ConfigPeriLdo+0x46>
2002c344:	5000b000 	.word	0x5000b000
2002c348:	500ca000 	.word	0x500ca000

Disassembly of section .l1_ret_text_HAL_PMU_Reboot:

2002c34c <HAL_PMU_Reboot>:
2002c34c:	b508      	push	{r3, lr}
2002c34e:	f3ef 8310 	mrs	r3, PRIMASK
2002c352:	2501      	movs	r5, #1
2002c354:	f385 8810 	msr	PRIMASK, r5
2002c358:	2002      	movs	r0, #2
2002c35a:	f7f6 fbcf 	bl	20022afc <HAL_HPAON_WakeCore>
2002c35e:	4628      	mov	r0, r5
2002c360:	f7f8 ffac 	bl	200252bc <HAL_RCC_Reset_and_Halt_LCPU>
2002c364:	462a      	mov	r2, r5
2002c366:	2100      	movs	r1, #0
2002c368:	2008      	movs	r0, #8
2002c36a:	f7ff ffc5 	bl	2002c2f8 <HAL_PMU_ConfigPeriLdo>
2002c36e:	f44f 50fa 	mov.w	r0, #8000	@ 0x1f40
2002c372:	f7f5 fd79 	bl	20021e68 <HAL_Delay_us_>
2002c376:	2000      	movs	r0, #0
2002c378:	f7f8 fda0 	bl	20024ebc <HAL_RCC_HCPU_GetClockSrc>
2002c37c:	4604      	mov	r4, r0
2002c37e:	b928      	cbnz	r0, 2002c38c <HAL_PMU_Reboot+0x40>
2002c380:	f7f6 fbe6 	bl	20022b50 <HAL_HPAON_EnableXT48>
2002c384:	4629      	mov	r1, r5
2002c386:	4620      	mov	r0, r4
2002c388:	f7f8 fe60 	bl	2002504c <HAL_RCC_HCPU_ClockSelect>
2002c38c:	f245 0250 	movw	r2, #20560	@ 0x5050
2002c390:	4c09      	ldr	r4, [pc, #36]	@ (2002c3b8 <HAL_PMU_Reboot+0x6c>)
2002c392:	4b0a      	ldr	r3, [pc, #40]	@ (2002c3bc <HAL_PMU_Reboot+0x70>)
2002c394:	6763      	str	r3, [r4, #116]	@ 0x74
2002c396:	4b0a      	ldr	r3, [pc, #40]	@ (2002c3c0 <HAL_PMU_Reboot+0x74>)
2002c398:	631a      	str	r2, [r3, #48]	@ 0x30
2002c39a:	6823      	ldr	r3, [r4, #0]
2002c39c:	075b      	lsls	r3, r3, #29
2002c39e:	d506      	bpl.n	2002c3ae <HAL_PMU_Reboot+0x62>
2002c3a0:	6823      	ldr	r3, [r4, #0]
2002c3a2:	4808      	ldr	r0, [pc, #32]	@ (2002c3c4 <HAL_PMU_Reboot+0x78>)
2002c3a4:	f023 0304 	bic.w	r3, r3, #4
2002c3a8:	6023      	str	r3, [r4, #0]
2002c3aa:	f7f5 fdbc 	bl	20021f26 <HAL_Delay_us>
2002c3ae:	6823      	ldr	r3, [r4, #0]
2002c3b0:	f043 0304 	orr.w	r3, r3, #4
2002c3b4:	6023      	str	r3, [r4, #0]
2002c3b6:	e7fe      	b.n	2002c3b6 <HAL_PMU_Reboot+0x6a>
2002c3b8:	500ca000 	.word	0x500ca000
2002c3bc:	0a50c015 	.word	0x0a50c015
2002c3c0:	500cb000 	.word	0x500cb000
2002c3c4:	000186a0 	.word	0x000186a0

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef:

2002c3c8 <HAL_PMU_GetHpsysVoutRef>:
2002c3c8:	4b04      	ldr	r3, [pc, #16]	@ (2002c3dc <HAL_PMU_GetHpsysVoutRef+0x14>)
2002c3ca:	781a      	ldrb	r2, [r3, #0]
2002c3cc:	b122      	cbz	r2, 2002c3d8 <HAL_PMU_GetHpsysVoutRef+0x10>
2002c3ce:	b118      	cbz	r0, 2002c3d8 <HAL_PMU_GetHpsysVoutRef+0x10>
2002c3d0:	78db      	ldrb	r3, [r3, #3]
2002c3d2:	7003      	strb	r3, [r0, #0]
2002c3d4:	2000      	movs	r0, #0
2002c3d6:	4770      	bx	lr
2002c3d8:	2001      	movs	r0, #1
2002c3da:	4770      	bx	lr
2002c3dc:	20049f64 	.word	0x20049f64

Disassembly of section .l1_ret_text_HAL_PMU_GetHpsysVoutRef2:

2002c3e0 <HAL_PMU_GetHpsysVoutRef2>:
2002c3e0:	4b04      	ldr	r3, [pc, #16]	@ (2002c3f4 <HAL_PMU_GetHpsysVoutRef2+0x14>)
2002c3e2:	781a      	ldrb	r2, [r3, #0]
2002c3e4:	b122      	cbz	r2, 2002c3f0 <HAL_PMU_GetHpsysVoutRef2+0x10>
2002c3e6:	b118      	cbz	r0, 2002c3f0 <HAL_PMU_GetHpsysVoutRef2+0x10>
2002c3e8:	7b5b      	ldrb	r3, [r3, #13]
2002c3ea:	7003      	strb	r3, [r0, #0]
2002c3ec:	2000      	movs	r0, #0
2002c3ee:	4770      	bx	lr
2002c3f0:	2001      	movs	r0, #1
2002c3f2:	4770      	bx	lr
2002c3f4:	20049f64 	.word	0x20049f64
