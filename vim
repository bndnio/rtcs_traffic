diff --git a/Debug/STM32F4_Discovery_FreeRTOS_Simple_Demo.list b/Debug/STM32F4_Discovery_FreeRTOS_Simple_Demo.list
index 9025d2c..08799f0 100644
--- a/Debug/STM32F4_Discovery_FreeRTOS_Simple_Demo.list
+++ b/Debug/STM32F4_Discovery_FreeRTOS_Simple_Demo.list
@@ -5,39 +5,41 @@ Sections:
 Idx Name          Size      VMA       LMA       File off  Algn
   0 .isr_vector   00000188  08000000  08000000  00010000  2**0
                   CONTENTS, ALLOC, LOAD, READONLY, DATA
-  1 .text         000031c0  08000190  08000190  00010190  2**4
+  1 .text         00003d70  08000190  08000190  00010190  2**4
                   CONTENTS, ALLOC, LOAD, READONLY, CODE
-  2 .init_array   00000004  08003350  08003350  00013350  2**2
+  2 .init_array   00000004  08003f00  08003f00  00013f00  2**2
                   CONTENTS, ALLOC, LOAD, DATA
-  3 .fini_array   00000004  08003354  08003354  00013354  2**2
+  3 .fini_array   00000004  08003f04  08003f04  00013f04  2**2
                   CONTENTS, ALLOC, LOAD, DATA
-  4 .data         00000018  20000000  08003358  00020000  2**2
+  4 .data         00000080  20000000  08003f08  00020000  2**2
                   CONTENTS, ALLOC, LOAD, DATA
-  5 .ccmram       00000000  10000000  10000000  00020018  2**0
+  5 .ccmram       00000000  10000000  10000000  00020080  2**0
                   CONTENTS
-  6 .bss          00001e40  20000018  20000018  00020018  2**2
+  6 .bss          00001e4c  20000080  20000080  00020080  2**2
                   ALLOC
-  7 ._user_heap_stack 00000400  20001e58  20001e58  00020018  2**0
+  7 ._user_heap_stack 00000400  20001ecc  20001ecc  00020080  2**0
                   ALLOC
-  8 .ARM.attributes 0000002e  00000000  00000000  00020018  2**0
+  8 .ARM.attributes 0000002e  00000000  00000000  00020080  2**0
                   CONTENTS, READONLY
-  9 .debug_info   0000aa72  00000000  00000000  00020046  2**0
+  9 .debug_info   0000df90  00000000  00000000  000200ae  2**0
                   CONTENTS, READONLY, DEBUGGING
- 10 .debug_abbrev 00001bab  00000000  00000000  0002aab8  2**0
+ 10 .debug_abbrev 00002434  00000000  00000000  0002e03e  2**0
                   CONTENTS, READONLY, DEBUGGING
- 11 .debug_aranges 00000978  00000000  00000000  0002c668  2**3
+ 11 .debug_aranges 00000d00  00000000  00000000  00030478  2**3
                   CONTENTS, READONLY, DEBUGGING
- 12 .debug_ranges 00000880  00000000  00000000  0002cfe0  2**3
+ 12 .debug_ranges 00000bb8  00000000  00000000  00031178  2**3
                   CONTENTS, READONLY, DEBUGGING
- 13 .debug_line   000048b9  00000000  00000000  0002d860  2**0
+ 13 .debug_line   00005b22  00000000  00000000  00031d30  2**0
                   CONTENTS, READONLY, DEBUGGING
- 14 .debug_str    000039c5  00000000  00000000  00032119  2**0
+ 14 .debug_str    00004797  00000000  00000000  00037852  2**0
                   CONTENTS, READONLY, DEBUGGING
- 15 .comment      0000007c  00000000  00000000  00035ade  2**0
+ 15 .comment      0000007c  00000000  00000000  0003bfe9  2**0
                   CONTENTS, READONLY
- 16 .debug_frame  00002578  00000000  00000000  00035b5c  2**2
+ 16 .debug_frame  00003714  00000000  00000000  0003c068  2**2
                   CONTENTS, READONLY, DEBUGGING
- 17 .stabstr      0000003f  00000000  00000000  000380d4  2**0
+ 17 .stab         0000003c  00000000  00000000  0003f77c  2**2
+                  CONTENTS, READONLY, DEBUGGING
+ 18 .stabstr      00000084  00000000  00000000  0003f7b8  2**0
                   CONTENTS, READONLY, DEBUGGING
 
 Disassembly of section .text:
@@ -54,9 +56,9 @@ Disassembly of section .text:
  80001a2:	2301      	movs	r3, #1
  80001a4:	7023      	strb	r3, [r4, #0]
  80001a6:	bd10      	pop	{r4, pc}
- 80001a8:	20000018 	.word	0x20000018
+ 80001a8:	20000080 	.word	0x20000080
  80001ac:	00000000 	.word	0x00000000
- 80001b0:	08003338 	.word	0x08003338
+ 80001b0:	08003ee8 	.word	0x08003ee8
 
 080001b4 <frame_dummy>:
  80001b4:	b508      	push	{r3, lr}
@@ -67,8 +69,8 @@ Disassembly of section .text:
  80001be:	f3af 8000 	nop.w
  80001c2:	bd08      	pop	{r3, pc}
  80001c4:	00000000 	.word	0x00000000
- 80001c8:	2000001c 	.word	0x2000001c
- 80001cc:	08003338 	.word	0x08003338
+ 80001c8:	20000084 	.word	0x20000084
+ 80001cc:	08003ee8 	.word	0x08003ee8
 
 080001d0 <vListInitialise>:
 /*-----------------------------------------------------------
@@ -518,7 +520,7 @@ void vPortSVCHandler( void )
  80003fc:	f3af 8000 	nop.w
 
 08000400 <pxCurrentTCBConst2>:
- 8000400:	20001c44 	.word	0x20001c44
+ 8000400:	20001cac 	.word	0x20001cac
 					"	bx r14							\n"
 					"									\n"
 					"	.align 4						\n"
@@ -747,8 +749,8 @@ BaseType_t xPortStartScheduler( void )
  8000520:	410fc271 	.word	0x410fc271
  8000524:	410fc270 	.word	0x410fc270
  8000528:	e000e400 	.word	0xe000e400
- 800052c:	20000034 	.word	0x20000034
- 8000530:	20000038 	.word	0x20000038
+ 800052c:	2000009c 	.word	0x2000009c
+ 8000530:	200000a0 	.word	0x200000a0
  8000534:	e000ed20 	.word	0xe000ed20
  8000538:	20000000 	.word	0x20000000
  800053c:	e000ef34 	.word	0xe000ef34
@@ -882,7 +884,7 @@ void xPortPendSVHandler( void )
  8000614:	f380 8811 	msr	BASEPRI, r0
  8000618:	f3bf 8f4f 	dsb	sy
  800061c:	f3bf 8f6f 	isb	sy
- 8000620:	f001 f9da 	bl	80019d8 <vTaskSwitchContext>
+ 8000620:	f001 f994 	bl	800194c <vTaskSwitchContext>
  8000624:	f04f 0000 	mov.w	r0, #0
  8000628:	f380 8811 	msr	BASEPRI, r0
  800062c:	bc08      	pop	{r3}
@@ -899,7 +901,7 @@ void xPortPendSVHandler( void )
  800064c:	f3af 8000 	nop.w
 
 08000650 <pxCurrentTCBConst>:
- 8000650:	20001c44 	.word	0x20001c44
+ 8000650:	20001cac 	.word	0x20001cac
 	"										\n"
 	"	.align 4							\n"
 	"pxCurrentTCBConst: .word pxCurrentTCB	\n"
@@ -929,7 +931,7 @@ void xPortSysTickHandler( void )
 	{
 		/* Increment the RTOS tick. */
 		if( xTaskIncrementTick() != pdFALSE )
- 8000670:	f001 f8ee 	bl	8001850 <xTaskIncrementTick>
+ 8000670:	f001 f8a8 	bl	80017c4 <xTaskIncrementTick>
  8000674:	4603      	mov	r3, r0
  8000676:	2b00      	cmp	r3, #0
  8000678:	d003      	beq.n	8000682 <SysTick_Handler+0x2a>
@@ -989,7 +991,7 @@ __attribute__(( weak )) void vPortSetupTimerInterrupt( void )
  80006bc:	4770      	bx	lr
  80006be:	bf00      	nop
  80006c0:	e000e014 	.word	0xe000e014
- 80006c4:	20000014 	.word	0x20000014
+ 80006c4:	20000018 	.word	0x20000018
  80006c8:	10624dd3 	.word	0x10624dd3
  80006cc:	e000e010 	.word	0xe000e010
 
@@ -1090,9 +1092,9 @@ static void vPortEnableVFP( void )
  800074c:	4770      	bx	lr
  800074e:	bf00      	nop
  8000750:	e000e3f0 	.word	0xe000e3f0
- 8000754:	20000034 	.word	0x20000034
+ 8000754:	2000009c 	.word	0x2000009c
  8000758:	e000ed0c 	.word	0xe000ed0c
- 800075c:	20000038 	.word	0x20000038
+ 800075c:	200000a0 	.word	0x200000a0
 
 08000760 <pvPortMalloc>:
 static size_t xNextFreeByte = ( size_t ) 0;
@@ -1130,7 +1132,7 @@ static uint8_t *pucAlignedHeap = NULL;
 	#endif
 
 	vTaskSuspendAll();
- 8000780:	f000 ffac 	bl	80016dc <vTaskSuspendAll>
+ 8000780:	f000 ff66 	bl	8001650 <vTaskSuspendAll>
 	{
 		if( pucAlignedHeap == NULL )
  8000784:	4b18      	ldr	r3, [pc, #96]	; (80007e8 <pvPortMalloc+0x88>)
@@ -1188,7 +1190,7 @@ static uint8_t *pucAlignedHeap = NULL;
 		traceMALLOC( pvReturn, xWantedSize );
 	}
 	( void ) xTaskResumeAll();
- 80007d0:	f000 ff92 	bl	80016f8 <xTaskResumeAll>
+ 80007d0:	f000 ff4c 	bl	800166c <xTaskResumeAll>
 
 	#if( configUSE_MALLOC_FAILED_HOOK == 1 )
 	{
@@ -1199,7 +1201,7 @@ static uint8_t *pucAlignedHeap = NULL;
 		{
 			extern void vApplicationMallocFailedHook( void );
 			vApplicationMallocFailedHook();
- 80007da:	f002 fbef 	bl	8002fbc <vApplicationMallocFailedHook>
+ 80007da:	f002 febd 	bl	8003558 <vApplicationMallocFailedHook>
 		}
 	}
 	#endif
@@ -1211,9 +1213,9 @@ static uint8_t *pucAlignedHeap = NULL;
  80007e2:	3710      	adds	r7, #16
  80007e4:	46bd      	mov	sp, r7
  80007e6:	bd80      	pop	{r7, pc}
- 80007e8:	20001c40 	.word	0x20001c40
- 80007ec:	20000044 	.word	0x20000044
- 80007f0:	20001c3c 	.word	0x20001c3c
+ 80007e8:	20001ca8 	.word	0x20001ca8
+ 80007ec:	200000ac 	.word	0x200000ac
+ 80007f0:	20001ca4 	.word	0x20001ca4
 
 080007f4 <vPortFree>:
 /*-----------------------------------------------------------*/
@@ -1266,7 +1268,7 @@ size_t xPortGetFreeHeapSize( void )
  8000834:	46bd      	mov	sp, r7
  8000836:	f85d 7b04 	ldr.w	r7, [sp], #4
  800083a:	4770      	bx	lr
- 800083c:	20001c3c 	.word	0x20001c3c
+ 800083c:	20001ca4 	.word	0x20001ca4
 
 08000840 <xQueueGenericReset>:
 	}														\
@@ -1358,7 +1360,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  80008c6:	68fb      	ldr	r3, [r7, #12]
  80008c8:	3310      	adds	r3, #16
  80008ca:	4618      	mov	r0, r3
- 80008cc:	f001 f952 	bl	8001b74 <xTaskRemoveFromEventList>
+ 80008cc:	f001 f90c 	bl	8001ae8 <xTaskRemoveFromEventList>
  80008d0:	4603      	mov	r3, r0
  80008d2:	2b00      	cmp	r3, #0
  80008d4:	d012      	beq.n	80008fc <xQueueGenericReset+0xbc>
@@ -1635,7 +1637,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
 	#if ( ( INCLUDE_xTaskGetSchedulerState == 1 ) || ( configUSE_TIMERS == 1 ) )
 	{
 		configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
- 8000a48:	f001 fa50 	bl	8001eec <xTaskGetSchedulerState>
+ 8000a48:	f001 fa0a 	bl	8001e60 <xTaskGetSchedulerState>
  8000a4c:	4603      	mov	r3, r0
  8000a4e:	2b00      	cmp	r3, #0
  8000a50:	d102      	bne.n	8000a58 <xQueueGenericSend+0x98>
@@ -1698,7 +1700,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  8000aa0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
  8000aa2:	3324      	adds	r3, #36	; 0x24
  8000aa4:	4618      	mov	r0, r3
- 8000aa6:	f001 f865 	bl	8001b74 <xTaskRemoveFromEventList>
+ 8000aa6:	f001 f81f 	bl	8001ae8 <xTaskRemoveFromEventList>
  8000aaa:	4603      	mov	r3, r0
  8000aac:	2b00      	cmp	r3, #0
  8000aae:	d013      	beq.n	8000ad8 <xQueueGenericSend+0x118>
@@ -1774,7 +1776,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
 					vTaskSetTimeOutState( &xTimeOut );
  8000af4:	f107 0314 	add.w	r3, r7, #20
  8000af8:	4618      	mov	r0, r3
- 8000afa:	f001 f89d 	bl	8001c38 <vTaskSetTimeOutState>
+ 8000afa:	f001 f857 	bl	8001bac <vTaskSetTimeOutState>
 					xEntryTimeSet = pdTRUE;
  8000afe:	2301      	movs	r3, #1
  8000b00:	637b      	str	r3, [r7, #52]	; 0x34
@@ -1790,7 +1792,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
 		now the critical section has been exited. */
 
 		vTaskSuspendAll();
- 8000b06:	f000 fde9 	bl	80016dc <vTaskSuspendAll>
+ 8000b06:	f000 fda3 	bl	8001650 <vTaskSuspendAll>
 		prvLockQueue( pxQueue );
  8000b0a:	f7ff fd19 	bl	8000540 <vPortEnterCritical>
  8000b0e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
@@ -1817,7 +1819,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  8000b40:	f107 0314 	add.w	r3, r7, #20
  8000b44:	4611      	mov	r1, r2
  8000b46:	4618      	mov	r0, r3
- 8000b48:	f001 f89a 	bl	8001c80 <xTaskCheckForTimeOut>
+ 8000b48:	f001 f854 	bl	8001bf4 <xTaskCheckForTimeOut>
  8000b4c:	4603      	mov	r3, r0
  8000b4e:	2b00      	cmp	r3, #0
  8000b50:	d124      	bne.n	8000b9c <xQueueGenericSend+0x1dc>
@@ -1836,7 +1838,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  8000b62:	687a      	ldr	r2, [r7, #4]
  8000b64:	4611      	mov	r1, r2
  8000b66:	4618      	mov	r0, r3
- 8000b68:	f000 ffb6 	bl	8001ad8 <vTaskPlaceOnEventList>
+ 8000b68:	f000 ff70 	bl	8001a4c <vTaskPlaceOnEventList>
 				/* Unlocking the queue means queue events can effect the
 				event list.  It is possible	that interrupts occurring now
 				remove this task from the event	list again - but as the
@@ -1851,7 +1853,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
 				case the yield will not cause a context switch unless there
 				is also a higher priority task in the pending ready list. */
 				if( xTaskResumeAll() == pdFALSE )
- 8000b72:	f000 fdc1 	bl	80016f8 <xTaskResumeAll>
+ 8000b72:	f000 fd7b 	bl	800166c <xTaskResumeAll>
  8000b76:	4603      	mov	r3, r0
  8000b78:	2b00      	cmp	r3, #0
  8000b7a:	f47f af7c 	bne.w	8000a76 <xQueueGenericSend+0xb6>
@@ -1872,7 +1874,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  8000b90:	6b38      	ldr	r0, [r7, #48]	; 0x30
  8000b92:	f000 facf 	bl	8001134 <prvUnlockQueue>
 				( void ) xTaskResumeAll();
- 8000b96:	f000 fdaf 	bl	80016f8 <xTaskResumeAll>
+ 8000b96:	f000 fd69 	bl	800166c <xTaskResumeAll>
  8000b9a:	e76c      	b.n	8000a76 <xQueueGenericSend+0xb6>
 			}
 		}
@@ -1883,7 +1885,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  8000b9c:	6b38      	ldr	r0, [r7, #48]	; 0x30
  8000b9e:	f000 fac9 	bl	8001134 <prvUnlockQueue>
 			( void ) xTaskResumeAll();
- 8000ba2:	f000 fda9 	bl	80016f8 <xTaskResumeAll>
+ 8000ba2:	f000 fd63 	bl	800166c <xTaskResumeAll>
 
 			traceQUEUE_SEND_FAILED( pxQueue );
 			return errQUEUE_FULL;
@@ -2035,7 +2037,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  8000c90:	6b3b      	ldr	r3, [r7, #48]	; 0x30
  8000c92:	3324      	adds	r3, #36	; 0x24
  8000c94:	4618      	mov	r0, r3
- 8000c96:	f000 ff6d 	bl	8001b74 <xTaskRemoveFromEventList>
+ 8000c96:	f000 ff27 	bl	8001ae8 <xTaskRemoveFromEventList>
  8000c9a:	4603      	mov	r3, r0
  8000c9c:	2b00      	cmp	r3, #0
  8000c9e:	d00e      	beq.n	8000cbe <xQueueGenericSendFromISR+0x10a>
@@ -2236,7 +2238,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  8000da2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
  8000da4:	3324      	adds	r3, #36	; 0x24
  8000da6:	4618      	mov	r0, r3
- 8000da8:	f000 fee4 	bl	8001b74 <xTaskRemoveFromEventList>
+ 8000da8:	f000 fe9e 	bl	8001ae8 <xTaskRemoveFromEventList>
  8000dac:	4603      	mov	r3, r0
  8000dae:	2b00      	cmp	r3, #0
  8000db0:	d00e      	beq.n	8000dd0 <xQueueGiveFromISR+0xf4>
@@ -2350,7 +2352,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
 	#if ( ( INCLUDE_xTaskGetSchedulerState == 1 ) || ( configUSE_TIMERS == 1 ) )
 	{
 		configASSERT( !( ( xTaskGetSchedulerState() == taskSCHEDULER_SUSPENDED ) && ( xTicksToWait != 0 ) ) );
- 8000e4c:	f001 f84e 	bl	8001eec <xTaskGetSchedulerState>
+ 8000e4c:	f001 f808 	bl	8001e60 <xTaskGetSchedulerState>
  8000e50:	4603      	mov	r3, r0
  8000e52:	2b00      	cmp	r3, #0
  8000e54:	d102      	bne.n	8000e5c <xQueueGenericReceive+0x6c>
@@ -2425,7 +2427,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
 							/* Record the information required to implement
 							priority inheritance should it become necessary. */
 							pxQueue->pxMutexHolder = ( int8_t * ) pvTaskIncrementMutexHeldCount(); /*lint !e961 Cast is not redundant as TaskHandle_t is a typedef. */
- 8000eae:	f001 f935 	bl	800211c <pvTaskIncrementMutexHeldCount>
+ 8000eae:	f001 f8ef 	bl	8002090 <pvTaskIncrementMutexHeldCount>
  8000eb2:	4602      	mov	r2, r0
  8000eb4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
  8000eb6:	605a      	str	r2, [r3, #4]
@@ -2444,7 +2446,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  8000ec0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
  8000ec2:	3310      	adds	r3, #16
  8000ec4:	4618      	mov	r0, r3
- 8000ec6:	f000 fe55 	bl	8001b74 <xTaskRemoveFromEventList>
+ 8000ec6:	f000 fe0f 	bl	8001ae8 <xTaskRemoveFromEventList>
  8000eca:	4603      	mov	r3, r0
  8000ecc:	2b00      	cmp	r3, #0
  8000ece:	d01f      	beq.n	8000f10 <xQueueGenericReceive+0x120>
@@ -2478,7 +2480,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  8000ef0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
  8000ef2:	3324      	adds	r3, #36	; 0x24
  8000ef4:	4618      	mov	r0, r3
- 8000ef6:	f000 fe3d 	bl	8001b74 <xTaskRemoveFromEventList>
+ 8000ef6:	f000 fdf7 	bl	8001ae8 <xTaskRemoveFromEventList>
  8000efa:	4603      	mov	r3, r0
  8000efc:	2b00      	cmp	r3, #0
  8000efe:	d007      	beq.n	8000f10 <xQueueGenericReceive+0x120>
@@ -2527,7 +2529,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
 					vTaskSetTimeOutState( &xTimeOut );
  8000f2c:	f107 0314 	add.w	r3, r7, #20
  8000f30:	4618      	mov	r0, r3
- 8000f32:	f000 fe81 	bl	8001c38 <vTaskSetTimeOutState>
+ 8000f32:	f000 fe3b 	bl	8001bac <vTaskSetTimeOutState>
 					xEntryTimeSet = pdTRUE;
  8000f36:	2301      	movs	r3, #1
  8000f38:	637b      	str	r3, [r7, #52]	; 0x34
@@ -2543,7 +2545,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
 		now the critical section has been exited. */
 
 		vTaskSuspendAll();
- 8000f3e:	f000 fbcd 	bl	80016dc <vTaskSuspendAll>
+ 8000f3e:	f000 fb87 	bl	8001650 <vTaskSuspendAll>
 		prvLockQueue( pxQueue );
  8000f42:	f7ff fafd 	bl	8000540 <vPortEnterCritical>
  8000f46:	6b3b      	ldr	r3, [r7, #48]	; 0x30
@@ -2570,7 +2572,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  8000f78:	f107 0314 	add.w	r3, r7, #20
  8000f7c:	4611      	mov	r1, r2
  8000f7e:	4618      	mov	r0, r3
- 8000f80:	f000 fe7e 	bl	8001c80 <xTaskCheckForTimeOut>
+ 8000f80:	f000 fe38 	bl	8001bf4 <xTaskCheckForTimeOut>
  8000f84:	4603      	mov	r3, r0
  8000f86:	2b00      	cmp	r3, #0
  8000f88:	d131      	bne.n	8000fee <xQueueGenericReceive+0x1fe>
@@ -2599,7 +2601,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  8000fa2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
  8000fa4:	685b      	ldr	r3, [r3, #4]
  8000fa6:	4618      	mov	r0, r3
- 8000fa8:	f000 ffbe 	bl	8001f28 <vTaskPriorityInherit>
+ 8000fa8:	f000 ff78 	bl	8001e9c <vTaskPriorityInherit>
 						}
 						taskEXIT_CRITICAL();
  8000fac:	f7ff faf6 	bl	800059c <vPortExitCritical>
@@ -2614,12 +2616,12 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  8000fb4:	687a      	ldr	r2, [r7, #4]
  8000fb6:	4611      	mov	r1, r2
  8000fb8:	4618      	mov	r0, r3
- 8000fba:	f000 fd8d 	bl	8001ad8 <vTaskPlaceOnEventList>
+ 8000fba:	f000 fd47 	bl	8001a4c <vTaskPlaceOnEventList>
 				prvUnlockQueue( pxQueue );
  8000fbe:	6b38      	ldr	r0, [r7, #48]	; 0x30
  8000fc0:	f000 f8b8 	bl	8001134 <prvUnlockQueue>
 				if( xTaskResumeAll() == pdFALSE )
- 8000fc4:	f000 fb98 	bl	80016f8 <xTaskResumeAll>
+ 8000fc4:	f000 fb52 	bl	800166c <xTaskResumeAll>
  8000fc8:	4603      	mov	r3, r0
  8000fca:	2b00      	cmp	r3, #0
  8000fcc:	f47f af55 	bne.w	8000e7a <xQueueGenericReceive+0x8a>
@@ -2640,7 +2642,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  8000fe2:	6b38      	ldr	r0, [r7, #48]	; 0x30
  8000fe4:	f000 f8a6 	bl	8001134 <prvUnlockQueue>
 				( void ) xTaskResumeAll();
- 8000fe8:	f000 fb86 	bl	80016f8 <xTaskResumeAll>
+ 8000fe8:	f000 fb40 	bl	800166c <xTaskResumeAll>
  8000fec:	e745      	b.n	8000e7a <xQueueGenericReceive+0x8a>
 			}
 		}
@@ -2650,7 +2652,7 @@ Queue_t * const pxQueue = ( Queue_t * ) xQueue;
  8000fee:	6b38      	ldr	r0, [r7, #48]	; 0x30
  8000ff0:	f000 f8a0 	bl	8001134 <prvUnlockQueue>
 			( void ) xTaskResumeAll();
- 8000ff4:	f000 fb80 	bl	80016f8 <xTaskResumeAll>
+ 8000ff4:	f000 fb3a 	bl	800166c <xTaskResumeAll>
 
 			if( prvIsQueueEmpty( pxQueue ) != pdFALSE )
  8000ff8:	6b38      	ldr	r0, [r7, #48]	; 0x30
@@ -2718,7 +2720,7 @@ UBaseType_t uxMessagesWaiting;
  800103a:	68fb      	ldr	r3, [r7, #12]
  800103c:	685b      	ldr	r3, [r3, #4]
  800103e:	4618      	mov	r0, r3
- 8001040:	f000 ffe8 	bl	8002014 <xTaskPriorityDisinherit>
+ 8001040:	f000 ffa2 	bl	8001f88 <xTaskPriorityDisinherit>
  8001044:	6178      	str	r0, [r7, #20]
 				pxQueue->pxMutexHolder = NULL;
  8001046:	68fb      	ldr	r3, [r7, #12]
@@ -2742,7 +2744,7 @@ UBaseType_t uxMessagesWaiting;
  800105a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
  800105c:	461a      	mov	r2, r3
  800105e:	68b9      	ldr	r1, [r7, #8]
- 8001060:	f002 f930 	bl	80032c4 <memcpy>
+ 8001060:	f002 fdd0 	bl	8003c04 <memcpy>
 		pxQueue->pcWriteTo += pxQueue->uxItemSize;
  8001064:	68fb      	ldr	r3, [r7, #12]
  8001066:	689a      	ldr	r2, [r3, #8]
@@ -2777,7 +2779,7 @@ UBaseType_t uxMessagesWaiting;
  800108e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
  8001090:	461a      	mov	r2, r3
  8001092:	68b9      	ldr	r1, [r7, #8]
- 8001094:	f002 f916 	bl	80032c4 <memcpy>
+ 8001094:	f002 fdb6 	bl	8003c04 <memcpy>
 		pxQueue->u.pcReadFrom -= pxQueue->uxItemSize;
  8001098:	68fb      	ldr	r3, [r7, #12]
  800109a:	68da      	ldr	r2, [r3, #12]
@@ -2895,7 +2897,7 @@ static void prvCopyDataFromQueue( Queue_t * const pxQueue, void * const pvBuffer
  8001122:	6c1b      	ldr	r3, [r3, #64]	; 0x40
  8001124:	461a      	mov	r2, r3
  8001126:	6838      	ldr	r0, [r7, #0]
- 8001128:	f002 f8cc 	bl	80032c4 <memcpy>
+ 8001128:	f002 fd6c 	bl	8003c04 <memcpy>
 	}
 }
  800112c:	bf00      	nop
@@ -2943,7 +2945,7 @@ static void prvUnlockQueue( Queue_t * const pxQueue )
  8001152:	687b      	ldr	r3, [r7, #4]
  8001154:	3324      	adds	r3, #36	; 0x24
  8001156:	4618      	mov	r0, r3
- 8001158:	f000 fd0c 	bl	8001b74 <xTaskRemoveFromEventList>
+ 8001158:	f000 fcc6 	bl	8001ae8 <xTaskRemoveFromEventList>
  800115c:	4603      	mov	r3, r0
  800115e:	2b00      	cmp	r3, #0
  8001160:	d001      	beq.n	8001166 <prvUnlockQueue+0x32>
@@ -2951,7 +2953,7 @@ static void prvUnlockQueue( Queue_t * const pxQueue )
 						/* The task waiting has a higher priority so record that
 						a context switch is required. */
 						vTaskMissedYield();
- 8001162:	f000 fdeb 	bl	8001d3c <vTaskMissedYield>
+ 8001162:	f000 fda5 	bl	8001cb0 <vTaskMissedYield>
 					break;
 				}
 			}
@@ -3001,13 +3003,13 @@ static void prvUnlockQueue( Queue_t * const pxQueue )
  800119c:	687b      	ldr	r3, [r7, #4]
  800119e:	3310      	adds	r3, #16
  80011a0:	4618      	mov	r0, r3
- 80011a2:	f000 fce7 	bl	8001b74 <xTaskRemoveFromEventList>
+ 80011a2:	f000 fca1 	bl	8001ae8 <xTaskRemoveFromEventList>
  80011a6:	4603      	mov	r3, r0
  80011a8:	2b00      	cmp	r3, #0
  80011aa:	d001      	beq.n	80011b0 <prvUnlockQueue+0x7c>
 				{
 					vTaskMissedYield();
- 80011ac:	f000 fdc6 	bl	8001d3c <vTaskMissedYield>
+ 80011ac:	f000 fd80 	bl	8001cb0 <vTaskMissedYield>
 				else
 				{
 					mtCOVERAGE_TEST_MARKER();
@@ -3197,7 +3199,7 @@ BaseType_t xReturn;
  8001278:	46bd      	mov	sp, r7
  800127a:	f85d 7b04 	ldr.w	r7, [sp], #4
  800127e:	4770      	bx	lr
- 8001280:	20001d9c 	.word	0x20001d9c
+ 8001280:	20001e0c 	.word	0x20001e0c
 
 08001284 <vQueueWaitForMessageRestricted>:
 /*-----------------------------------------------------------*/
@@ -3252,7 +3254,7 @@ BaseType_t xReturn;
  80012d4:	687a      	ldr	r2, [r7, #4]
  80012d6:	68b9      	ldr	r1, [r7, #8]
  80012d8:	4618      	mov	r0, r3
- 80012da:	f000 fc21 	bl	8001b20 <vTaskPlaceOnEventListRestricted>
+ 80012da:	f000 fbdb 	bl	8001a94 <vTaskPlaceOnEventListRestricted>
 		}
 		else
 		{
@@ -3408,7 +3410,7 @@ BaseType_t xReturn;
  8001382:	009b      	lsls	r3, r3, #2
  8001384:	461a      	mov	r2, r3
  8001386:	21a5      	movs	r1, #165	; 0xa5
- 8001388:	f001 ffa7 	bl	80032da <memset>
+ 8001388:	f002 fc47 	bl	8003c1a <memset>
 	grows from high memory to low (as per the 80x86) or vice versa.
 	portSTACK_GROWTH is used to make the result positive or negative as required
 	by the port. */
@@ -3648,7 +3650,7 @@ static void prvAddNewTaskToReadyList( TCB_t *pxNewTCB )
 				initialisation required.  We will not recover if this call
 				fails, but we will report the failure. */
 				prvInitialiseTaskLists();
- 80014a8:	f000 fc6e 	bl	8001d88 <prvInitialiseTaskLists>
+ 80014a8:	f000 fc28 	bl	8001cfc <prvInitialiseTaskLists>
  80014ac:	e00d      	b.n	80014ca <prvAddNewTaskToReadyList+0x4e>
 		else
 		{
@@ -3752,5695 +3754,7576 @@ static void prvAddNewTaskToReadyList( TCB_t *pxNewTCB )
  800152e:	3708      	adds	r7, #8
  8001530:	46bd      	mov	sp, r7
  8001532:	bd80      	pop	{r7, pc}
- 8001534:	20001d1c 	.word	0x20001d1c
- 8001538:	20001c44 	.word	0x20001c44
- 800153c:	20001d28 	.word	0x20001d28
- 8001540:	20001d38 	.word	0x20001d38
- 8001544:	20001d24 	.word	0x20001d24
- 8001548:	20001c48 	.word	0x20001c48
+ 8001534:	20001d84 	.word	0x20001d84
+ 8001538:	20001cac 	.word	0x20001cac
+ 800153c:	20001d90 	.word	0x20001d90
+ 8001540:	20001da0 	.word	0x20001da0
+ 8001544:	20001d8c 	.word	0x20001d8c
+ 8001548:	20001cb0 	.word	0x20001cb0
  800154c:	e000ed04 	.word	0xe000ed04
 
-08001550 <vTaskDelayUntil>:
+08001550 <vTaskDelay>:
 /*-----------------------------------------------------------*/
 
-#if ( INCLUDE_vTaskDelayUntil == 1 )
+#if ( INCLUDE_vTaskDelay == 1 )
 
-	void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement )
+	void vTaskDelay( const TickType_t xTicksToDelay )
 	{
  8001550:	b580      	push	{r7, lr}
- 8001552:	b08a      	sub	sp, #40	; 0x28
+ 8001552:	b084      	sub	sp, #16
  8001554:	af00      	add	r7, sp, #0
  8001556:	6078      	str	r0, [r7, #4]
- 8001558:	6039      	str	r1, [r7, #0]
-	TickType_t xTimeToWake;
-	BaseType_t xAlreadyYielded, xShouldDelay = pdFALSE;
- 800155a:	2300      	movs	r3, #0
- 800155c:	627b      	str	r3, [r7, #36]	; 0x24
-
-		configASSERT( pxPreviousWakeTime );
- 800155e:	687b      	ldr	r3, [r7, #4]
- 8001560:	2b00      	cmp	r3, #0
- 8001562:	d109      	bne.n	8001578 <vTaskDelayUntil+0x28>
- 8001564:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8001568:	f383 8811 	msr	BASEPRI, r3
- 800156c:	f3bf 8f6f 	isb	sy
- 8001570:	f3bf 8f4f 	dsb	sy
- 8001574:	617b      	str	r3, [r7, #20]
- 8001576:	e7fe      	b.n	8001576 <vTaskDelayUntil+0x26>
-		configASSERT( ( xTimeIncrement > 0U ) );
- 8001578:	683b      	ldr	r3, [r7, #0]
- 800157a:	2b00      	cmp	r3, #0
- 800157c:	d109      	bne.n	8001592 <vTaskDelayUntil+0x42>
- 800157e:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8001582:	f383 8811 	msr	BASEPRI, r3
- 8001586:	f3bf 8f6f 	isb	sy
- 800158a:	f3bf 8f4f 	dsb	sy
- 800158e:	613b      	str	r3, [r7, #16]
- 8001590:	e7fe      	b.n	8001590 <vTaskDelayUntil+0x40>
-		configASSERT( uxSchedulerSuspended == 0 );
- 8001592:	4b29      	ldr	r3, [pc, #164]	; (8001638 <vTaskDelayUntil+0xe8>)
- 8001594:	681b      	ldr	r3, [r3, #0]
- 8001596:	2b00      	cmp	r3, #0
- 8001598:	d009      	beq.n	80015ae <vTaskDelayUntil+0x5e>
- 800159a:	f04f 0350 	mov.w	r3, #80	; 0x50
- 800159e:	f383 8811 	msr	BASEPRI, r3
- 80015a2:	f3bf 8f6f 	isb	sy
- 80015a6:	f3bf 8f4f 	dsb	sy
- 80015aa:	60fb      	str	r3, [r7, #12]
- 80015ac:	e7fe      	b.n	80015ac <vTaskDelayUntil+0x5c>
-
-		vTaskSuspendAll();
- 80015ae:	f000 f895 	bl	80016dc <vTaskSuspendAll>
+	BaseType_t xAlreadyYielded = pdFALSE;
+ 8001558:	2300      	movs	r3, #0
+ 800155a:	60fb      	str	r3, [r7, #12]
+
+		/* A delay time of zero just forces a reschedule. */
+		if( xTicksToDelay > ( TickType_t ) 0U )
+ 800155c:	687b      	ldr	r3, [r7, #4]
+ 800155e:	2b00      	cmp	r3, #0
+ 8001560:	d016      	beq.n	8001590 <vTaskDelay+0x40>
 		{
-			/* Minor optimisation.  The tick count cannot change in this
-			block. */
-			const TickType_t xConstTickCount = xTickCount;
- 80015b2:	4b22      	ldr	r3, [pc, #136]	; (800163c <vTaskDelayUntil+0xec>)
- 80015b4:	681b      	ldr	r3, [r3, #0]
- 80015b6:	623b      	str	r3, [r7, #32]
-
-			/* Generate the tick time at which the task wants to wake. */
-			xTimeToWake = *pxPreviousWakeTime + xTimeIncrement;
- 80015b8:	687b      	ldr	r3, [r7, #4]
- 80015ba:	681a      	ldr	r2, [r3, #0]
- 80015bc:	683b      	ldr	r3, [r7, #0]
- 80015be:	4413      	add	r3, r2
- 80015c0:	61fb      	str	r3, [r7, #28]
-
-			if( xConstTickCount < *pxPreviousWakeTime )
- 80015c2:	687b      	ldr	r3, [r7, #4]
- 80015c4:	681a      	ldr	r2, [r3, #0]
- 80015c6:	6a3b      	ldr	r3, [r7, #32]
- 80015c8:	429a      	cmp	r2, r3
- 80015ca:	d90b      	bls.n	80015e4 <vTaskDelayUntil+0x94>
-				/* The tick count has overflowed since this function was
-				lasted called.  In this case the only time we should ever
-				actually delay is if the wake time has also	overflowed,
-				and the wake time is greater than the tick time.  When this
-				is the case it is as if neither time had overflowed. */
-				if( ( xTimeToWake < *pxPreviousWakeTime ) && ( xTimeToWake > xConstTickCount ) )
- 80015cc:	687b      	ldr	r3, [r7, #4]
- 80015ce:	681a      	ldr	r2, [r3, #0]
- 80015d0:	69fb      	ldr	r3, [r7, #28]
- 80015d2:	429a      	cmp	r2, r3
- 80015d4:	d911      	bls.n	80015fa <vTaskDelayUntil+0xaa>
- 80015d6:	69fa      	ldr	r2, [r7, #28]
- 80015d8:	6a3b      	ldr	r3, [r7, #32]
- 80015da:	429a      	cmp	r2, r3
- 80015dc:	d90d      	bls.n	80015fa <vTaskDelayUntil+0xaa>
-				{
-					xShouldDelay = pdTRUE;
- 80015de:	2301      	movs	r3, #1
- 80015e0:	627b      	str	r3, [r7, #36]	; 0x24
- 80015e2:	e00a      	b.n	80015fa <vTaskDelayUntil+0xaa>
-			else
-			{
-				/* The tick time has not overflowed.  In this case we will
-				delay if either the wake time has overflowed, and/or the
-				tick time is less than the wake time. */
-				if( ( xTimeToWake < *pxPreviousWakeTime ) || ( xTimeToWake > xConstTickCount ) )
- 80015e4:	687b      	ldr	r3, [r7, #4]
- 80015e6:	681a      	ldr	r2, [r3, #0]
- 80015e8:	69fb      	ldr	r3, [r7, #28]
- 80015ea:	429a      	cmp	r2, r3
- 80015ec:	d803      	bhi.n	80015f6 <vTaskDelayUntil+0xa6>
- 80015ee:	69fa      	ldr	r2, [r7, #28]
- 80015f0:	6a3b      	ldr	r3, [r7, #32]
- 80015f2:	429a      	cmp	r2, r3
- 80015f4:	d901      	bls.n	80015fa <vTaskDelayUntil+0xaa>
-				{
-					xShouldDelay = pdTRUE;
- 80015f6:	2301      	movs	r3, #1
- 80015f8:	627b      	str	r3, [r7, #36]	; 0x24
-					mtCOVERAGE_TEST_MARKER();
-				}
-			}
-
-			/* Update the wake time ready for the next call. */
-			*pxPreviousWakeTime = xTimeToWake;
- 80015fa:	687b      	ldr	r3, [r7, #4]
- 80015fc:	69fa      	ldr	r2, [r7, #28]
- 80015fe:	601a      	str	r2, [r3, #0]
-
-			if( xShouldDelay != pdFALSE )
- 8001600:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 8001602:	2b00      	cmp	r3, #0
- 8001604:	d006      	beq.n	8001614 <vTaskDelayUntil+0xc4>
-			{
-				traceTASK_DELAY_UNTIL( xTimeToWake );
-
-				/* prvAddCurrentTaskToDelayedList() needs the block time, not
-				the time to wake, so subtract the current tick count. */
-				prvAddCurrentTaskToDelayedList( xTimeToWake - xConstTickCount, pdFALSE );
- 8001606:	69fa      	ldr	r2, [r7, #28]
- 8001608:	6a3b      	ldr	r3, [r7, #32]
- 800160a:	1ad3      	subs	r3, r2, r3
- 800160c:	2100      	movs	r1, #0
- 800160e:	4618      	mov	r0, r3
- 8001610:	f000 fd98 	bl	8002144 <prvAddCurrentTaskToDelayedList>
-			else
-			{
-				mtCOVERAGE_TEST_MARKER();
+			configASSERT( uxSchedulerSuspended == 0 );
+ 8001562:	4b13      	ldr	r3, [pc, #76]	; (80015b0 <vTaskDelay+0x60>)
+ 8001564:	681b      	ldr	r3, [r3, #0]
+ 8001566:	2b00      	cmp	r3, #0
+ 8001568:	d009      	beq.n	800157e <vTaskDelay+0x2e>
+ 800156a:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 800156e:	f383 8811 	msr	BASEPRI, r3
+ 8001572:	f3bf 8f6f 	isb	sy
+ 8001576:	f3bf 8f4f 	dsb	sy
+ 800157a:	60bb      	str	r3, [r7, #8]
+ 800157c:	e7fe      	b.n	800157c <vTaskDelay+0x2c>
+			vTaskSuspendAll();
+ 800157e:	f000 f867 	bl	8001650 <vTaskSuspendAll>
+				list or removed from the blocked list until the scheduler
+				is resumed.
+
+				This task cannot be in an event list as it is the currently
+				executing task. */
+				prvAddCurrentTaskToDelayedList( xTicksToDelay, pdFALSE );
+ 8001582:	2100      	movs	r1, #0
+ 8001584:	6878      	ldr	r0, [r7, #4]
+ 8001586:	f000 fd97 	bl	80020b8 <prvAddCurrentTaskToDelayedList>
 			}
+			xAlreadyYielded = xTaskResumeAll();
+ 800158a:	f000 f86f 	bl	800166c <xTaskResumeAll>
+ 800158e:	60f8      	str	r0, [r7, #12]
+			mtCOVERAGE_TEST_MARKER();
 		}
-		xAlreadyYielded = xTaskResumeAll();
- 8001614:	f000 f870 	bl	80016f8 <xTaskResumeAll>
- 8001618:	61b8      	str	r0, [r7, #24]
 
 		/* Force a reschedule if xTaskResumeAll has not already done so, we may
 		have put ourselves to sleep. */
 		if( xAlreadyYielded == pdFALSE )
- 800161a:	69bb      	ldr	r3, [r7, #24]
- 800161c:	2b00      	cmp	r3, #0
- 800161e:	d107      	bne.n	8001630 <vTaskDelayUntil+0xe0>
+ 8001590:	68fb      	ldr	r3, [r7, #12]
+ 8001592:	2b00      	cmp	r3, #0
+ 8001594:	d107      	bne.n	80015a6 <vTaskDelay+0x56>
 		{
 			portYIELD_WITHIN_API();
- 8001620:	4b07      	ldr	r3, [pc, #28]	; (8001640 <vTaskDelayUntil+0xf0>)
- 8001622:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
- 8001626:	601a      	str	r2, [r3, #0]
- 8001628:	f3bf 8f4f 	dsb	sy
- 800162c:	f3bf 8f6f 	isb	sy
+ 8001596:	4b07      	ldr	r3, [pc, #28]	; (80015b4 <vTaskDelay+0x64>)
+ 8001598:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
+ 800159c:	601a      	str	r2, [r3, #0]
+ 800159e:	f3bf 8f4f 	dsb	sy
+ 80015a2:	f3bf 8f6f 	isb	sy
 		}
 		else
 		{
 			mtCOVERAGE_TEST_MARKER();
 		}
 	}
- 8001630:	bf00      	nop
- 8001632:	3728      	adds	r7, #40	; 0x28
- 8001634:	46bd      	mov	sp, r7
- 8001636:	bd80      	pop	{r7, pc}
- 8001638:	20001d44 	.word	0x20001d44
- 800163c:	20001d20 	.word	0x20001d20
- 8001640:	e000ed04 	.word	0xe000ed04
+ 80015a6:	bf00      	nop
+ 80015a8:	3710      	adds	r7, #16
+ 80015aa:	46bd      	mov	sp, r7
+ 80015ac:	bd80      	pop	{r7, pc}
+ 80015ae:	bf00      	nop
+ 80015b0:	20001dac 	.word	0x20001dac
+ 80015b4:	e000ed04 	.word	0xe000ed04
 
-08001644 <vTaskStartScheduler>:
+080015b8 <vTaskStartScheduler>:
 
 #endif /* ( ( INCLUDE_xTaskResumeFromISR == 1 ) && ( INCLUDE_vTaskSuspend == 1 ) ) */
 /*-----------------------------------------------------------*/
 
 void vTaskStartScheduler( void )
 {
- 8001644:	b580      	push	{r7, lr}
- 8001646:	b086      	sub	sp, #24
- 8001648:	af02      	add	r7, sp, #8
+ 80015b8:	b580      	push	{r7, lr}
+ 80015ba:	b086      	sub	sp, #24
+ 80015bc:	af02      	add	r7, sp, #8
 		}
 	}
 	#else
 	{
 		/* The Idle task is being created using dynamically allocated RAM. */
 		xReturn = xTaskCreate(	prvIdleTask,
- 800164a:	4b1e      	ldr	r3, [pc, #120]	; (80016c4 <vTaskStartScheduler+0x80>)
- 800164c:	9301      	str	r3, [sp, #4]
- 800164e:	2300      	movs	r3, #0
- 8001650:	9300      	str	r3, [sp, #0]
- 8001652:	2300      	movs	r3, #0
- 8001654:	2282      	movs	r2, #130	; 0x82
- 8001656:	491c      	ldr	r1, [pc, #112]	; (80016c8 <vTaskStartScheduler+0x84>)
- 8001658:	481c      	ldr	r0, [pc, #112]	; (80016cc <vTaskStartScheduler+0x88>)
- 800165a:	f7ff fe47 	bl	80012ec <xTaskCreate>
- 800165e:	60f8      	str	r0, [r7, #12]
+ 80015be:	4b1e      	ldr	r3, [pc, #120]	; (8001638 <vTaskStartScheduler+0x80>)
+ 80015c0:	9301      	str	r3, [sp, #4]
+ 80015c2:	2300      	movs	r3, #0
+ 80015c4:	9300      	str	r3, [sp, #0]
+ 80015c6:	2300      	movs	r3, #0
+ 80015c8:	2282      	movs	r2, #130	; 0x82
+ 80015ca:	491c      	ldr	r1, [pc, #112]	; (800163c <vTaskStartScheduler+0x84>)
+ 80015cc:	481c      	ldr	r0, [pc, #112]	; (8001640 <vTaskStartScheduler+0x88>)
+ 80015ce:	f7ff fe8d 	bl	80012ec <xTaskCreate>
+ 80015d2:	60f8      	str	r0, [r7, #12]
 	}
 	#endif /* configSUPPORT_STATIC_ALLOCATION */
 
 	#if ( configUSE_TIMERS == 1 )
 	{
 		if( xReturn == pdPASS )
- 8001660:	68fb      	ldr	r3, [r7, #12]
- 8001662:	2b01      	cmp	r3, #1
- 8001664:	d102      	bne.n	800166c <vTaskStartScheduler+0x28>
+ 80015d4:	68fb      	ldr	r3, [r7, #12]
+ 80015d6:	2b01      	cmp	r3, #1
+ 80015d8:	d102      	bne.n	80015e0 <vTaskStartScheduler+0x28>
 		{
 			xReturn = xTimerCreateTimerTask();
- 8001666:	f000 fdd3 	bl	8002210 <xTimerCreateTimerTask>
- 800166a:	60f8      	str	r0, [r7, #12]
+ 80015da:	f000 fdd3 	bl	8002184 <xTimerCreateTimerTask>
+ 80015de:	60f8      	str	r0, [r7, #12]
 			mtCOVERAGE_TEST_MARKER();
 		}
 	}
 	#endif /* configUSE_TIMERS */
 
 	if( xReturn == pdPASS )
- 800166c:	68fb      	ldr	r3, [r7, #12]
- 800166e:	2b01      	cmp	r3, #1
- 8001670:	d115      	bne.n	800169e <vTaskStartScheduler+0x5a>
- 8001672:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8001676:	f383 8811 	msr	BASEPRI, r3
- 800167a:	f3bf 8f6f 	isb	sy
- 800167e:	f3bf 8f4f 	dsb	sy
- 8001682:	60bb      	str	r3, [r7, #8]
+ 80015e0:	68fb      	ldr	r3, [r7, #12]
+ 80015e2:	2b01      	cmp	r3, #1
+ 80015e4:	d115      	bne.n	8001612 <vTaskStartScheduler+0x5a>
+ 80015e6:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 80015ea:	f383 8811 	msr	BASEPRI, r3
+ 80015ee:	f3bf 8f6f 	isb	sy
+ 80015f2:	f3bf 8f4f 	dsb	sy
+ 80015f6:	60bb      	str	r3, [r7, #8]
 			structure specific to the task that will run first. */
 			_impure_ptr = &( pxCurrentTCB->xNewLib_reent );
 		}
 		#endif /* configUSE_NEWLIB_REENTRANT */
 
 		xNextTaskUnblockTime = portMAX_DELAY;
- 8001684:	4b12      	ldr	r3, [pc, #72]	; (80016d0 <vTaskStartScheduler+0x8c>)
- 8001686:	f04f 32ff 	mov.w	r2, #4294967295
- 800168a:	601a      	str	r2, [r3, #0]
+ 80015f8:	4b12      	ldr	r3, [pc, #72]	; (8001644 <vTaskStartScheduler+0x8c>)
+ 80015fa:	f04f 32ff 	mov.w	r2, #4294967295
+ 80015fe:	601a      	str	r2, [r3, #0]
 		xSchedulerRunning = pdTRUE;
- 800168c:	4b11      	ldr	r3, [pc, #68]	; (80016d4 <vTaskStartScheduler+0x90>)
- 800168e:	2201      	movs	r2, #1
- 8001690:	601a      	str	r2, [r3, #0]
+ 8001600:	4b11      	ldr	r3, [pc, #68]	; (8001648 <vTaskStartScheduler+0x90>)
+ 8001602:	2201      	movs	r2, #1
+ 8001604:	601a      	str	r2, [r3, #0]
 		xTickCount = ( TickType_t ) 0U;
- 8001692:	4b11      	ldr	r3, [pc, #68]	; (80016d8 <vTaskStartScheduler+0x94>)
- 8001694:	2200      	movs	r2, #0
- 8001696:	601a      	str	r2, [r3, #0]
+ 8001606:	4b11      	ldr	r3, [pc, #68]	; (800164c <vTaskStartScheduler+0x94>)
+ 8001608:	2200      	movs	r2, #0
+ 800160a:	601a      	str	r2, [r3, #0]
 		the run time counter time base. */
 		portCONFIGURE_TIMER_FOR_RUN_TIME_STATS();
 
 		/* Setting up the timer tick is hardware specific and thus in the
 		portable interface. */
 		if( xPortStartScheduler() != pdFALSE )
- 8001698:	f7fe fec6 	bl	8000428 <xPortStartScheduler>
+ 800160c:	f7fe ff0c 	bl	8000428 <xPortStartScheduler>
 	}
 
 	/* Prevent compiler warnings if INCLUDE_xTaskGetIdleTaskHandle is set to 0,
 	meaning xIdleTaskHandle is not used anywhere else. */
 	( void ) xIdleTaskHandle;
 }
- 800169c:	e00d      	b.n	80016ba <vTaskStartScheduler+0x76>
+ 8001610:	e00d      	b.n	800162e <vTaskStartScheduler+0x76>
 		configASSERT( xReturn != errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY );
- 800169e:	68fb      	ldr	r3, [r7, #12]
- 80016a0:	f1b3 3fff 	cmp.w	r3, #4294967295
- 80016a4:	d109      	bne.n	80016ba <vTaskStartScheduler+0x76>
- 80016a6:	f04f 0350 	mov.w	r3, #80	; 0x50
- 80016aa:	f383 8811 	msr	BASEPRI, r3
- 80016ae:	f3bf 8f6f 	isb	sy
- 80016b2:	f3bf 8f4f 	dsb	sy
- 80016b6:	607b      	str	r3, [r7, #4]
- 80016b8:	e7fe      	b.n	80016b8 <vTaskStartScheduler+0x74>
-}
- 80016ba:	bf00      	nop
- 80016bc:	3710      	adds	r7, #16
- 80016be:	46bd      	mov	sp, r7
- 80016c0:	bd80      	pop	{r7, pc}
- 80016c2:	bf00      	nop
- 80016c4:	20001d40 	.word	0x20001d40
- 80016c8:	080032ec 	.word	0x080032ec
- 80016cc:	08001d55 	.word	0x08001d55
- 80016d0:	20001d3c 	.word	0x20001d3c
- 80016d4:	20001d28 	.word	0x20001d28
- 80016d8:	20001d20 	.word	0x20001d20
-
-080016dc <vTaskSuspendAll>:
+ 8001612:	68fb      	ldr	r3, [r7, #12]
+ 8001614:	f1b3 3fff 	cmp.w	r3, #4294967295
+ 8001618:	d109      	bne.n	800162e <vTaskStartScheduler+0x76>
+ 800161a:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 800161e:	f383 8811 	msr	BASEPRI, r3
+ 8001622:	f3bf 8f6f 	isb	sy
+ 8001626:	f3bf 8f4f 	dsb	sy
+ 800162a:	607b      	str	r3, [r7, #4]
+ 800162c:	e7fe      	b.n	800162c <vTaskStartScheduler+0x74>
+}
+ 800162e:	bf00      	nop
+ 8001630:	3710      	adds	r7, #16
+ 8001632:	46bd      	mov	sp, r7
+ 8001634:	bd80      	pop	{r7, pc}
+ 8001636:	bf00      	nop
+ 8001638:	20001da8 	.word	0x20001da8
+ 800163c:	08003e68 	.word	0x08003e68
+ 8001640:	08001cc9 	.word	0x08001cc9
+ 8001644:	20001da4 	.word	0x20001da4
+ 8001648:	20001d90 	.word	0x20001d90
+ 800164c:	20001d88 	.word	0x20001d88
+
+08001650 <vTaskSuspendAll>:
 	vPortEndScheduler();
 }
 /*----------------------------------------------------------*/
 
 void vTaskSuspendAll( void )
 {
- 80016dc:	b480      	push	{r7}
- 80016de:	af00      	add	r7, sp, #0
+ 8001650:	b480      	push	{r7}
+ 8001652:	af00      	add	r7, sp, #0
 	/* A critical section is not required as the variable is of type
 	BaseType_t.  Please read Richard Barry's reply in the following link to a
 	post in the FreeRTOS support forum before reporting this as a bug! -
 	http://goo.gl/wu4acr */
 	++uxSchedulerSuspended;
- 80016e0:	4b04      	ldr	r3, [pc, #16]	; (80016f4 <vTaskSuspendAll+0x18>)
- 80016e2:	681b      	ldr	r3, [r3, #0]
- 80016e4:	3301      	adds	r3, #1
- 80016e6:	4a03      	ldr	r2, [pc, #12]	; (80016f4 <vTaskSuspendAll+0x18>)
- 80016e8:	6013      	str	r3, [r2, #0]
+ 8001654:	4b04      	ldr	r3, [pc, #16]	; (8001668 <vTaskSuspendAll+0x18>)
+ 8001656:	681b      	ldr	r3, [r3, #0]
+ 8001658:	3301      	adds	r3, #1
+ 800165a:	4a03      	ldr	r2, [pc, #12]	; (8001668 <vTaskSuspendAll+0x18>)
+ 800165c:	6013      	str	r3, [r2, #0]
 }
- 80016ea:	bf00      	nop
- 80016ec:	46bd      	mov	sp, r7
- 80016ee:	f85d 7b04 	ldr.w	r7, [sp], #4
- 80016f2:	4770      	bx	lr
- 80016f4:	20001d44 	.word	0x20001d44
+ 800165e:	bf00      	nop
+ 8001660:	46bd      	mov	sp, r7
+ 8001662:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8001666:	4770      	bx	lr
+ 8001668:	20001dac 	.word	0x20001dac
 
-080016f8 <xTaskResumeAll>:
+0800166c <xTaskResumeAll>:
 
 #endif /* configUSE_TICKLESS_IDLE */
 /*----------------------------------------------------------*/
 
 BaseType_t xTaskResumeAll( void )
 {
- 80016f8:	b580      	push	{r7, lr}
- 80016fa:	b084      	sub	sp, #16
- 80016fc:	af00      	add	r7, sp, #0
+ 800166c:	b580      	push	{r7, lr}
+ 800166e:	b084      	sub	sp, #16
+ 8001670:	af00      	add	r7, sp, #0
 TCB_t *pxTCB = NULL;
- 80016fe:	2300      	movs	r3, #0
- 8001700:	60fb      	str	r3, [r7, #12]
+ 8001672:	2300      	movs	r3, #0
+ 8001674:	60fb      	str	r3, [r7, #12]
 BaseType_t xAlreadyYielded = pdFALSE;
- 8001702:	2300      	movs	r3, #0
- 8001704:	60bb      	str	r3, [r7, #8]
+ 8001676:	2300      	movs	r3, #0
+ 8001678:	60bb      	str	r3, [r7, #8]
 
 	/* If uxSchedulerSuspended is zero then this function does not match a
 	previous call to vTaskSuspendAll(). */
 	configASSERT( uxSchedulerSuspended );
- 8001706:	4b41      	ldr	r3, [pc, #260]	; (800180c <xTaskResumeAll+0x114>)
- 8001708:	681b      	ldr	r3, [r3, #0]
- 800170a:	2b00      	cmp	r3, #0
- 800170c:	d109      	bne.n	8001722 <xTaskResumeAll+0x2a>
- 800170e:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8001712:	f383 8811 	msr	BASEPRI, r3
- 8001716:	f3bf 8f6f 	isb	sy
- 800171a:	f3bf 8f4f 	dsb	sy
- 800171e:	603b      	str	r3, [r7, #0]
- 8001720:	e7fe      	b.n	8001720 <xTaskResumeAll+0x28>
+ 800167a:	4b41      	ldr	r3, [pc, #260]	; (8001780 <xTaskResumeAll+0x114>)
+ 800167c:	681b      	ldr	r3, [r3, #0]
+ 800167e:	2b00      	cmp	r3, #0
+ 8001680:	d109      	bne.n	8001696 <xTaskResumeAll+0x2a>
+ 8001682:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 8001686:	f383 8811 	msr	BASEPRI, r3
+ 800168a:	f3bf 8f6f 	isb	sy
+ 800168e:	f3bf 8f4f 	dsb	sy
+ 8001692:	603b      	str	r3, [r7, #0]
+ 8001694:	e7fe      	b.n	8001694 <xTaskResumeAll+0x28>
 	/* It is possible that an ISR caused a task to be removed from an event
 	list while the scheduler was suspended.  If this was the case then the
 	removed task will have been added to the xPendingReadyList.  Once the
 	scheduler has been resumed it is safe to move all the pending ready
 	tasks from this list into their appropriate ready list. */
 	taskENTER_CRITICAL();
- 8001722:	f7fe ff0d 	bl	8000540 <vPortEnterCritical>
+ 8001696:	f7fe ff53 	bl	8000540 <vPortEnterCritical>
 	{
 		--uxSchedulerSuspended;
- 8001726:	4b39      	ldr	r3, [pc, #228]	; (800180c <xTaskResumeAll+0x114>)
- 8001728:	681b      	ldr	r3, [r3, #0]
- 800172a:	3b01      	subs	r3, #1
- 800172c:	4a37      	ldr	r2, [pc, #220]	; (800180c <xTaskResumeAll+0x114>)
- 800172e:	6013      	str	r3, [r2, #0]
+ 800169a:	4b39      	ldr	r3, [pc, #228]	; (8001780 <xTaskResumeAll+0x114>)
+ 800169c:	681b      	ldr	r3, [r3, #0]
+ 800169e:	3b01      	subs	r3, #1
+ 80016a0:	4a37      	ldr	r2, [pc, #220]	; (8001780 <xTaskResumeAll+0x114>)
+ 80016a2:	6013      	str	r3, [r2, #0]
 
 		if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
- 8001730:	4b36      	ldr	r3, [pc, #216]	; (800180c <xTaskResumeAll+0x114>)
- 8001732:	681b      	ldr	r3, [r3, #0]
- 8001734:	2b00      	cmp	r3, #0
- 8001736:	d161      	bne.n	80017fc <xTaskResumeAll+0x104>
+ 80016a4:	4b36      	ldr	r3, [pc, #216]	; (8001780 <xTaskResumeAll+0x114>)
+ 80016a6:	681b      	ldr	r3, [r3, #0]
+ 80016a8:	2b00      	cmp	r3, #0
+ 80016aa:	d161      	bne.n	8001770 <xTaskResumeAll+0x104>
 		{
 			if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
- 8001738:	4b35      	ldr	r3, [pc, #212]	; (8001810 <xTaskResumeAll+0x118>)
- 800173a:	681b      	ldr	r3, [r3, #0]
- 800173c:	2b00      	cmp	r3, #0
- 800173e:	d05d      	beq.n	80017fc <xTaskResumeAll+0x104>
+ 80016ac:	4b35      	ldr	r3, [pc, #212]	; (8001784 <xTaskResumeAll+0x118>)
+ 80016ae:	681b      	ldr	r3, [r3, #0]
+ 80016b0:	2b00      	cmp	r3, #0
+ 80016b2:	d05d      	beq.n	8001770 <xTaskResumeAll+0x104>
 			{
 				/* Move any readied tasks from the pending list into the
 				appropriate ready list. */
 				while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
- 8001740:	e02e      	b.n	80017a0 <xTaskResumeAll+0xa8>
+ 80016b4:	e02e      	b.n	8001714 <xTaskResumeAll+0xa8>
 				{
 					pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( ( &xPendingReadyList ) );
- 8001742:	4b34      	ldr	r3, [pc, #208]	; (8001814 <xTaskResumeAll+0x11c>)
- 8001744:	68db      	ldr	r3, [r3, #12]
- 8001746:	68db      	ldr	r3, [r3, #12]
- 8001748:	60fb      	str	r3, [r7, #12]
+ 80016b6:	4b34      	ldr	r3, [pc, #208]	; (8001788 <xTaskResumeAll+0x11c>)
+ 80016b8:	68db      	ldr	r3, [r3, #12]
+ 80016ba:	68db      	ldr	r3, [r3, #12]
+ 80016bc:	60fb      	str	r3, [r7, #12]
 					( void ) uxListRemove( &( pxTCB->xEventListItem ) );
- 800174a:	68fb      	ldr	r3, [r7, #12]
- 800174c:	3318      	adds	r3, #24
- 800174e:	4618      	mov	r0, r3
- 8001750:	f7fe fdc8 	bl	80002e4 <uxListRemove>
+ 80016be:	68fb      	ldr	r3, [r7, #12]
+ 80016c0:	3318      	adds	r3, #24
+ 80016c2:	4618      	mov	r0, r3
+ 80016c4:	f7fe fe0e 	bl	80002e4 <uxListRemove>
 					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
- 8001754:	68fb      	ldr	r3, [r7, #12]
- 8001756:	3304      	adds	r3, #4
- 8001758:	4618      	mov	r0, r3
- 800175a:	f7fe fdc3 	bl	80002e4 <uxListRemove>
+ 80016c8:	68fb      	ldr	r3, [r7, #12]
+ 80016ca:	3304      	adds	r3, #4
+ 80016cc:	4618      	mov	r0, r3
+ 80016ce:	f7fe fe09 	bl	80002e4 <uxListRemove>
 					prvAddTaskToReadyList( pxTCB );
- 800175e:	68fb      	ldr	r3, [r7, #12]
- 8001760:	6adb      	ldr	r3, [r3, #44]	; 0x2c
- 8001762:	2201      	movs	r2, #1
- 8001764:	409a      	lsls	r2, r3
- 8001766:	4b2c      	ldr	r3, [pc, #176]	; (8001818 <xTaskResumeAll+0x120>)
- 8001768:	681b      	ldr	r3, [r3, #0]
- 800176a:	4313      	orrs	r3, r2
- 800176c:	4a2a      	ldr	r2, [pc, #168]	; (8001818 <xTaskResumeAll+0x120>)
- 800176e:	6013      	str	r3, [r2, #0]
- 8001770:	68fb      	ldr	r3, [r7, #12]
- 8001772:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 8001774:	4613      	mov	r3, r2
- 8001776:	009b      	lsls	r3, r3, #2
- 8001778:	4413      	add	r3, r2
- 800177a:	009b      	lsls	r3, r3, #2
- 800177c:	4a27      	ldr	r2, [pc, #156]	; (800181c <xTaskResumeAll+0x124>)
- 800177e:	441a      	add	r2, r3
- 8001780:	68fb      	ldr	r3, [r7, #12]
- 8001782:	3304      	adds	r3, #4
- 8001784:	4619      	mov	r1, r3
- 8001786:	4610      	mov	r0, r2
- 8001788:	f7fe fd4f 	bl	800022a <vListInsertEnd>
+ 80016d2:	68fb      	ldr	r3, [r7, #12]
+ 80016d4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 80016d6:	2201      	movs	r2, #1
+ 80016d8:	409a      	lsls	r2, r3
+ 80016da:	4b2c      	ldr	r3, [pc, #176]	; (800178c <xTaskResumeAll+0x120>)
+ 80016dc:	681b      	ldr	r3, [r3, #0]
+ 80016de:	4313      	orrs	r3, r2
+ 80016e0:	4a2a      	ldr	r2, [pc, #168]	; (800178c <xTaskResumeAll+0x120>)
+ 80016e2:	6013      	str	r3, [r2, #0]
+ 80016e4:	68fb      	ldr	r3, [r7, #12]
+ 80016e6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 80016e8:	4613      	mov	r3, r2
+ 80016ea:	009b      	lsls	r3, r3, #2
+ 80016ec:	4413      	add	r3, r2
+ 80016ee:	009b      	lsls	r3, r3, #2
+ 80016f0:	4a27      	ldr	r2, [pc, #156]	; (8001790 <xTaskResumeAll+0x124>)
+ 80016f2:	441a      	add	r2, r3
+ 80016f4:	68fb      	ldr	r3, [r7, #12]
+ 80016f6:	3304      	adds	r3, #4
+ 80016f8:	4619      	mov	r1, r3
+ 80016fa:	4610      	mov	r0, r2
+ 80016fc:	f7fe fd95 	bl	800022a <vListInsertEnd>
 
 					/* If the moved task has a priority higher than the current
 					task then a yield must be performed. */
 					if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
- 800178c:	68fb      	ldr	r3, [r7, #12]
- 800178e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 8001790:	4b23      	ldr	r3, [pc, #140]	; (8001820 <xTaskResumeAll+0x128>)
- 8001792:	681b      	ldr	r3, [r3, #0]
- 8001794:	6adb      	ldr	r3, [r3, #44]	; 0x2c
- 8001796:	429a      	cmp	r2, r3
- 8001798:	d302      	bcc.n	80017a0 <xTaskResumeAll+0xa8>
+ 8001700:	68fb      	ldr	r3, [r7, #12]
+ 8001702:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 8001704:	4b23      	ldr	r3, [pc, #140]	; (8001794 <xTaskResumeAll+0x128>)
+ 8001706:	681b      	ldr	r3, [r3, #0]
+ 8001708:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 800170a:	429a      	cmp	r2, r3
+ 800170c:	d302      	bcc.n	8001714 <xTaskResumeAll+0xa8>
 					{
 						xYieldPending = pdTRUE;
- 800179a:	4b22      	ldr	r3, [pc, #136]	; (8001824 <xTaskResumeAll+0x12c>)
- 800179c:	2201      	movs	r2, #1
- 800179e:	601a      	str	r2, [r3, #0]
+ 800170e:	4b22      	ldr	r3, [pc, #136]	; (8001798 <xTaskResumeAll+0x12c>)
+ 8001710:	2201      	movs	r2, #1
+ 8001712:	601a      	str	r2, [r3, #0]
 				while( listLIST_IS_EMPTY( &xPendingReadyList ) == pdFALSE )
- 80017a0:	4b1c      	ldr	r3, [pc, #112]	; (8001814 <xTaskResumeAll+0x11c>)
- 80017a2:	681b      	ldr	r3, [r3, #0]
- 80017a4:	2b00      	cmp	r3, #0
- 80017a6:	d1cc      	bne.n	8001742 <xTaskResumeAll+0x4a>
+ 8001714:	4b1c      	ldr	r3, [pc, #112]	; (8001788 <xTaskResumeAll+0x11c>)
+ 8001716:	681b      	ldr	r3, [r3, #0]
+ 8001718:	2b00      	cmp	r3, #0
+ 800171a:	d1cc      	bne.n	80016b6 <xTaskResumeAll+0x4a>
 					{
 						mtCOVERAGE_TEST_MARKER();
 					}
 				}
 
 				if( pxTCB != NULL )
- 80017a8:	68fb      	ldr	r3, [r7, #12]
- 80017aa:	2b00      	cmp	r3, #0
- 80017ac:	d001      	beq.n	80017b2 <xTaskResumeAll+0xba>
+ 800171c:	68fb      	ldr	r3, [r7, #12]
+ 800171e:	2b00      	cmp	r3, #0
+ 8001720:	d001      	beq.n	8001726 <xTaskResumeAll+0xba>
 					which may have prevented the next unblock time from being
 					re-calculated, in which case re-calculate it now.  Mainly
 					important for low power tickless implementations, where
 					this can prevent an unnecessary exit from low power
 					state. */
 					prvResetNextTaskUnblockTime();
- 80017ae:	f000 fb77 	bl	8001ea0 <prvResetNextTaskUnblockTime>
+ 8001722:	f000 fb77 	bl	8001e14 <prvResetNextTaskUnblockTime>
 				/* If any ticks occurred while the scheduler was suspended then
 				they should be processed now.  This ensures the tick count does
 				not	slip, and that any delayed tasks are resumed at the correct
 				time. */
 				{
 					UBaseType_t uxPendedCounts = uxPendedTicks; /* Non-volatile copy. */
- 80017b2:	4b1d      	ldr	r3, [pc, #116]	; (8001828 <xTaskResumeAll+0x130>)
- 80017b4:	681b      	ldr	r3, [r3, #0]
- 80017b6:	607b      	str	r3, [r7, #4]
+ 8001726:	4b1d      	ldr	r3, [pc, #116]	; (800179c <xTaskResumeAll+0x130>)
+ 8001728:	681b      	ldr	r3, [r3, #0]
+ 800172a:	607b      	str	r3, [r7, #4]
 
 					if( uxPendedCounts > ( UBaseType_t ) 0U )
- 80017b8:	687b      	ldr	r3, [r7, #4]
- 80017ba:	2b00      	cmp	r3, #0
- 80017bc:	d010      	beq.n	80017e0 <xTaskResumeAll+0xe8>
+ 800172c:	687b      	ldr	r3, [r7, #4]
+ 800172e:	2b00      	cmp	r3, #0
+ 8001730:	d010      	beq.n	8001754 <xTaskResumeAll+0xe8>
 					{
 						do
 						{
 							if( xTaskIncrementTick() != pdFALSE )
- 80017be:	f000 f847 	bl	8001850 <xTaskIncrementTick>
- 80017c2:	4603      	mov	r3, r0
- 80017c4:	2b00      	cmp	r3, #0
- 80017c6:	d002      	beq.n	80017ce <xTaskResumeAll+0xd6>
+ 8001732:	f000 f847 	bl	80017c4 <xTaskIncrementTick>
+ 8001736:	4603      	mov	r3, r0
+ 8001738:	2b00      	cmp	r3, #0
+ 800173a:	d002      	beq.n	8001742 <xTaskResumeAll+0xd6>
 							{
 								xYieldPending = pdTRUE;
- 80017c8:	4b16      	ldr	r3, [pc, #88]	; (8001824 <xTaskResumeAll+0x12c>)
- 80017ca:	2201      	movs	r2, #1
- 80017cc:	601a      	str	r2, [r3, #0]
+ 800173c:	4b16      	ldr	r3, [pc, #88]	; (8001798 <xTaskResumeAll+0x12c>)
+ 800173e:	2201      	movs	r2, #1
+ 8001740:	601a      	str	r2, [r3, #0]
 							}
 							else
 							{
 								mtCOVERAGE_TEST_MARKER();
 							}
 							--uxPendedCounts;
- 80017ce:	687b      	ldr	r3, [r7, #4]
- 80017d0:	3b01      	subs	r3, #1
- 80017d2:	607b      	str	r3, [r7, #4]
+ 8001742:	687b      	ldr	r3, [r7, #4]
+ 8001744:	3b01      	subs	r3, #1
+ 8001746:	607b      	str	r3, [r7, #4]
 						} while( uxPendedCounts > ( UBaseType_t ) 0U );
- 80017d4:	687b      	ldr	r3, [r7, #4]
- 80017d6:	2b00      	cmp	r3, #0
- 80017d8:	d1f1      	bne.n	80017be <xTaskResumeAll+0xc6>
+ 8001748:	687b      	ldr	r3, [r7, #4]
+ 800174a:	2b00      	cmp	r3, #0
+ 800174c:	d1f1      	bne.n	8001732 <xTaskResumeAll+0xc6>
 
 						uxPendedTicks = 0;
- 80017da:	4b13      	ldr	r3, [pc, #76]	; (8001828 <xTaskResumeAll+0x130>)
- 80017dc:	2200      	movs	r2, #0
- 80017de:	601a      	str	r2, [r3, #0]
+ 800174e:	4b13      	ldr	r3, [pc, #76]	; (800179c <xTaskResumeAll+0x130>)
+ 8001750:	2200      	movs	r2, #0
+ 8001752:	601a      	str	r2, [r3, #0]
 					{
 						mtCOVERAGE_TEST_MARKER();
 					}
 				}
 
 				if( xYieldPending != pdFALSE )
- 80017e0:	4b10      	ldr	r3, [pc, #64]	; (8001824 <xTaskResumeAll+0x12c>)
- 80017e2:	681b      	ldr	r3, [r3, #0]
- 80017e4:	2b00      	cmp	r3, #0
- 80017e6:	d009      	beq.n	80017fc <xTaskResumeAll+0x104>
+ 8001754:	4b10      	ldr	r3, [pc, #64]	; (8001798 <xTaskResumeAll+0x12c>)
+ 8001756:	681b      	ldr	r3, [r3, #0]
+ 8001758:	2b00      	cmp	r3, #0
+ 800175a:	d009      	beq.n	8001770 <xTaskResumeAll+0x104>
 				{
 					#if( configUSE_PREEMPTION != 0 )
 					{
 						xAlreadyYielded = pdTRUE;
- 80017e8:	2301      	movs	r3, #1
- 80017ea:	60bb      	str	r3, [r7, #8]
+ 800175c:	2301      	movs	r3, #1
+ 800175e:	60bb      	str	r3, [r7, #8]
 					}
 					#endif
 					taskYIELD_IF_USING_PREEMPTION();
- 80017ec:	4b0f      	ldr	r3, [pc, #60]	; (800182c <xTaskResumeAll+0x134>)
- 80017ee:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
- 80017f2:	601a      	str	r2, [r3, #0]
- 80017f4:	f3bf 8f4f 	dsb	sy
- 80017f8:	f3bf 8f6f 	isb	sy
+ 8001760:	4b0f      	ldr	r3, [pc, #60]	; (80017a0 <xTaskResumeAll+0x134>)
+ 8001762:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
+ 8001766:	601a      	str	r2, [r3, #0]
+ 8001768:	f3bf 8f4f 	dsb	sy
+ 800176c:	f3bf 8f6f 	isb	sy
 		else
 		{
 			mtCOVERAGE_TEST_MARKER();
 		}
 	}
 	taskEXIT_CRITICAL();
- 80017fc:	f7fe fece 	bl	800059c <vPortExitCritical>
+ 8001770:	f7fe ff14 	bl	800059c <vPortExitCritical>
 
 	return xAlreadyYielded;
- 8001800:	68bb      	ldr	r3, [r7, #8]
-}
- 8001802:	4618      	mov	r0, r3
- 8001804:	3710      	adds	r7, #16
- 8001806:	46bd      	mov	sp, r7
- 8001808:	bd80      	pop	{r7, pc}
- 800180a:	bf00      	nop
- 800180c:	20001d44 	.word	0x20001d44
- 8001810:	20001d1c 	.word	0x20001d1c
- 8001814:	20001cdc 	.word	0x20001cdc
- 8001818:	20001d24 	.word	0x20001d24
- 800181c:	20001c48 	.word	0x20001c48
- 8001820:	20001c44 	.word	0x20001c44
- 8001824:	20001d30 	.word	0x20001d30
- 8001828:	20001d2c 	.word	0x20001d2c
- 800182c:	e000ed04 	.word	0xe000ed04
-
-08001830 <xTaskGetTickCount>:
+ 8001774:	68bb      	ldr	r3, [r7, #8]
+}
+ 8001776:	4618      	mov	r0, r3
+ 8001778:	3710      	adds	r7, #16
+ 800177a:	46bd      	mov	sp, r7
+ 800177c:	bd80      	pop	{r7, pc}
+ 800177e:	bf00      	nop
+ 8001780:	20001dac 	.word	0x20001dac
+ 8001784:	20001d84 	.word	0x20001d84
+ 8001788:	20001d44 	.word	0x20001d44
+ 800178c:	20001d8c 	.word	0x20001d8c
+ 8001790:	20001cb0 	.word	0x20001cb0
+ 8001794:	20001cac 	.word	0x20001cac
+ 8001798:	20001d98 	.word	0x20001d98
+ 800179c:	20001d94 	.word	0x20001d94
+ 80017a0:	e000ed04 	.word	0xe000ed04
+
+080017a4 <xTaskGetTickCount>:
 /*-----------------------------------------------------------*/
 
 TickType_t xTaskGetTickCount( void )
 {
- 8001830:	b480      	push	{r7}
- 8001832:	b083      	sub	sp, #12
- 8001834:	af00      	add	r7, sp, #0
+ 80017a4:	b480      	push	{r7}
+ 80017a6:	b083      	sub	sp, #12
+ 80017a8:	af00      	add	r7, sp, #0
 TickType_t xTicks;
 
 	/* Critical section required if running on a 16 bit processor. */
 	portTICK_TYPE_ENTER_CRITICAL();
 	{
 		xTicks = xTickCount;
- 8001836:	4b05      	ldr	r3, [pc, #20]	; (800184c <xTaskGetTickCount+0x1c>)
- 8001838:	681b      	ldr	r3, [r3, #0]
- 800183a:	607b      	str	r3, [r7, #4]
+ 80017aa:	4b05      	ldr	r3, [pc, #20]	; (80017c0 <xTaskGetTickCount+0x1c>)
+ 80017ac:	681b      	ldr	r3, [r3, #0]
+ 80017ae:	607b      	str	r3, [r7, #4]
 	}
 	portTICK_TYPE_EXIT_CRITICAL();
 
 	return xTicks;
- 800183c:	687b      	ldr	r3, [r7, #4]
+ 80017b0:	687b      	ldr	r3, [r7, #4]
 }
- 800183e:	4618      	mov	r0, r3
- 8001840:	370c      	adds	r7, #12
- 8001842:	46bd      	mov	sp, r7
- 8001844:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8001848:	4770      	bx	lr
- 800184a:	bf00      	nop
- 800184c:	20001d20 	.word	0x20001d20
+ 80017b2:	4618      	mov	r0, r3
+ 80017b4:	370c      	adds	r7, #12
+ 80017b6:	46bd      	mov	sp, r7
+ 80017b8:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 80017bc:	4770      	bx	lr
+ 80017be:	bf00      	nop
+ 80017c0:	20001d88 	.word	0x20001d88
 
-08001850 <xTaskIncrementTick>:
+080017c4 <xTaskIncrementTick>:
 
 #endif /* INCLUDE_xTaskAbortDelay */
 /*----------------------------------------------------------*/
 
 BaseType_t xTaskIncrementTick( void )
 {
- 8001850:	b580      	push	{r7, lr}
- 8001852:	b086      	sub	sp, #24
- 8001854:	af00      	add	r7, sp, #0
+ 80017c4:	b580      	push	{r7, lr}
+ 80017c6:	b086      	sub	sp, #24
+ 80017c8:	af00      	add	r7, sp, #0
 TCB_t * pxTCB;
 TickType_t xItemValue;
 BaseType_t xSwitchRequired = pdFALSE;
- 8001856:	2300      	movs	r3, #0
- 8001858:	617b      	str	r3, [r7, #20]
+ 80017ca:	2300      	movs	r3, #0
+ 80017cc:	617b      	str	r3, [r7, #20]
 
 	/* Called by the portable layer each time a tick interrupt occurs.
 	Increments the tick then checks to see if the new tick value will cause any
 	tasks to be unblocked. */
 	traceTASK_INCREMENT_TICK( xTickCount );
 	if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
- 800185a:	4b54      	ldr	r3, [pc, #336]	; (80019ac <xTaskIncrementTick+0x15c>)
- 800185c:	681b      	ldr	r3, [r3, #0]
- 800185e:	2b00      	cmp	r3, #0
- 8001860:	f040 8092 	bne.w	8001988 <xTaskIncrementTick+0x138>
+ 80017ce:	4b54      	ldr	r3, [pc, #336]	; (8001920 <xTaskIncrementTick+0x15c>)
+ 80017d0:	681b      	ldr	r3, [r3, #0]
+ 80017d2:	2b00      	cmp	r3, #0
+ 80017d4:	f040 8092 	bne.w	80018fc <xTaskIncrementTick+0x138>
 	{
 		/* Minor optimisation.  The tick count cannot change in this
 		block. */
 		const TickType_t xConstTickCount = xTickCount + 1;
- 8001864:	4b52      	ldr	r3, [pc, #328]	; (80019b0 <xTaskIncrementTick+0x160>)
- 8001866:	681b      	ldr	r3, [r3, #0]
- 8001868:	3301      	adds	r3, #1
- 800186a:	613b      	str	r3, [r7, #16]
+ 80017d8:	4b52      	ldr	r3, [pc, #328]	; (8001924 <xTaskIncrementTick+0x160>)
+ 80017da:	681b      	ldr	r3, [r3, #0]
+ 80017dc:	3301      	adds	r3, #1
+ 80017de:	613b      	str	r3, [r7, #16]
 
 		/* Increment the RTOS tick, switching the delayed and overflowed
 		delayed lists if it wraps to 0. */
 		xTickCount = xConstTickCount;
- 800186c:	4a50      	ldr	r2, [pc, #320]	; (80019b0 <xTaskIncrementTick+0x160>)
- 800186e:	693b      	ldr	r3, [r7, #16]
- 8001870:	6013      	str	r3, [r2, #0]
+ 80017e0:	4a50      	ldr	r2, [pc, #320]	; (8001924 <xTaskIncrementTick+0x160>)
+ 80017e2:	693b      	ldr	r3, [r7, #16]
+ 80017e4:	6013      	str	r3, [r2, #0]
 
 		if( xConstTickCount == ( TickType_t ) 0U )
- 8001872:	693b      	ldr	r3, [r7, #16]
- 8001874:	2b00      	cmp	r3, #0
- 8001876:	d11f      	bne.n	80018b8 <xTaskIncrementTick+0x68>
+ 80017e6:	693b      	ldr	r3, [r7, #16]
+ 80017e8:	2b00      	cmp	r3, #0
+ 80017ea:	d11f      	bne.n	800182c <xTaskIncrementTick+0x68>
 		{
 			taskSWITCH_DELAYED_LISTS();
- 8001878:	4b4e      	ldr	r3, [pc, #312]	; (80019b4 <xTaskIncrementTick+0x164>)
- 800187a:	681b      	ldr	r3, [r3, #0]
- 800187c:	681b      	ldr	r3, [r3, #0]
- 800187e:	2b00      	cmp	r3, #0
- 8001880:	d009      	beq.n	8001896 <xTaskIncrementTick+0x46>
- 8001882:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8001886:	f383 8811 	msr	BASEPRI, r3
- 800188a:	f3bf 8f6f 	isb	sy
- 800188e:	f3bf 8f4f 	dsb	sy
- 8001892:	603b      	str	r3, [r7, #0]
- 8001894:	e7fe      	b.n	8001894 <xTaskIncrementTick+0x44>
- 8001896:	4b47      	ldr	r3, [pc, #284]	; (80019b4 <xTaskIncrementTick+0x164>)
- 8001898:	681b      	ldr	r3, [r3, #0]
- 800189a:	60fb      	str	r3, [r7, #12]
- 800189c:	4b46      	ldr	r3, [pc, #280]	; (80019b8 <xTaskIncrementTick+0x168>)
- 800189e:	681b      	ldr	r3, [r3, #0]
- 80018a0:	4a44      	ldr	r2, [pc, #272]	; (80019b4 <xTaskIncrementTick+0x164>)
- 80018a2:	6013      	str	r3, [r2, #0]
- 80018a4:	4a44      	ldr	r2, [pc, #272]	; (80019b8 <xTaskIncrementTick+0x168>)
- 80018a6:	68fb      	ldr	r3, [r7, #12]
- 80018a8:	6013      	str	r3, [r2, #0]
- 80018aa:	4b44      	ldr	r3, [pc, #272]	; (80019bc <xTaskIncrementTick+0x16c>)
- 80018ac:	681b      	ldr	r3, [r3, #0]
- 80018ae:	3301      	adds	r3, #1
- 80018b0:	4a42      	ldr	r2, [pc, #264]	; (80019bc <xTaskIncrementTick+0x16c>)
- 80018b2:	6013      	str	r3, [r2, #0]
- 80018b4:	f000 faf4 	bl	8001ea0 <prvResetNextTaskUnblockTime>
+ 80017ec:	4b4e      	ldr	r3, [pc, #312]	; (8001928 <xTaskIncrementTick+0x164>)
+ 80017ee:	681b      	ldr	r3, [r3, #0]
+ 80017f0:	681b      	ldr	r3, [r3, #0]
+ 80017f2:	2b00      	cmp	r3, #0
+ 80017f4:	d009      	beq.n	800180a <xTaskIncrementTick+0x46>
+ 80017f6:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 80017fa:	f383 8811 	msr	BASEPRI, r3
+ 80017fe:	f3bf 8f6f 	isb	sy
+ 8001802:	f3bf 8f4f 	dsb	sy
+ 8001806:	603b      	str	r3, [r7, #0]
+ 8001808:	e7fe      	b.n	8001808 <xTaskIncrementTick+0x44>
+ 800180a:	4b47      	ldr	r3, [pc, #284]	; (8001928 <xTaskIncrementTick+0x164>)
+ 800180c:	681b      	ldr	r3, [r3, #0]
+ 800180e:	60fb      	str	r3, [r7, #12]
+ 8001810:	4b46      	ldr	r3, [pc, #280]	; (800192c <xTaskIncrementTick+0x168>)
+ 8001812:	681b      	ldr	r3, [r3, #0]
+ 8001814:	4a44      	ldr	r2, [pc, #272]	; (8001928 <xTaskIncrementTick+0x164>)
+ 8001816:	6013      	str	r3, [r2, #0]
+ 8001818:	4a44      	ldr	r2, [pc, #272]	; (800192c <xTaskIncrementTick+0x168>)
+ 800181a:	68fb      	ldr	r3, [r7, #12]
+ 800181c:	6013      	str	r3, [r2, #0]
+ 800181e:	4b44      	ldr	r3, [pc, #272]	; (8001930 <xTaskIncrementTick+0x16c>)
+ 8001820:	681b      	ldr	r3, [r3, #0]
+ 8001822:	3301      	adds	r3, #1
+ 8001824:	4a42      	ldr	r2, [pc, #264]	; (8001930 <xTaskIncrementTick+0x16c>)
+ 8001826:	6013      	str	r3, [r2, #0]
+ 8001828:	f000 faf4 	bl	8001e14 <prvResetNextTaskUnblockTime>
 
 		/* See if this tick has made a timeout expire.  Tasks are stored in
 		the	queue in the order of their wake time - meaning once one task
 		has been found whose block time has not expired there is no need to
 		look any further down the list. */
 		if( xConstTickCount >= xNextTaskUnblockTime )
- 80018b8:	4b41      	ldr	r3, [pc, #260]	; (80019c0 <xTaskIncrementTick+0x170>)
- 80018ba:	681b      	ldr	r3, [r3, #0]
- 80018bc:	693a      	ldr	r2, [r7, #16]
- 80018be:	429a      	cmp	r2, r3
- 80018c0:	d34d      	bcc.n	800195e <xTaskIncrementTick+0x10e>
+ 800182c:	4b41      	ldr	r3, [pc, #260]	; (8001934 <xTaskIncrementTick+0x170>)
+ 800182e:	681b      	ldr	r3, [r3, #0]
+ 8001830:	693a      	ldr	r2, [r7, #16]
+ 8001832:	429a      	cmp	r2, r3
+ 8001834:	d34d      	bcc.n	80018d2 <xTaskIncrementTick+0x10e>
 		{
 			for( ;; )
 			{
 				if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
- 80018c2:	4b3c      	ldr	r3, [pc, #240]	; (80019b4 <xTaskIncrementTick+0x164>)
- 80018c4:	681b      	ldr	r3, [r3, #0]
- 80018c6:	681b      	ldr	r3, [r3, #0]
- 80018c8:	2b00      	cmp	r3, #0
- 80018ca:	d101      	bne.n	80018d0 <xTaskIncrementTick+0x80>
- 80018cc:	2301      	movs	r3, #1
- 80018ce:	e000      	b.n	80018d2 <xTaskIncrementTick+0x82>
- 80018d0:	2300      	movs	r3, #0
- 80018d2:	2b00      	cmp	r3, #0
- 80018d4:	d004      	beq.n	80018e0 <xTaskIncrementTick+0x90>
+ 8001836:	4b3c      	ldr	r3, [pc, #240]	; (8001928 <xTaskIncrementTick+0x164>)
+ 8001838:	681b      	ldr	r3, [r3, #0]
+ 800183a:	681b      	ldr	r3, [r3, #0]
+ 800183c:	2b00      	cmp	r3, #0
+ 800183e:	d101      	bne.n	8001844 <xTaskIncrementTick+0x80>
+ 8001840:	2301      	movs	r3, #1
+ 8001842:	e000      	b.n	8001846 <xTaskIncrementTick+0x82>
+ 8001844:	2300      	movs	r3, #0
+ 8001846:	2b00      	cmp	r3, #0
+ 8001848:	d004      	beq.n	8001854 <xTaskIncrementTick+0x90>
 					/* The delayed list is empty.  Set xNextTaskUnblockTime
 					to the maximum possible value so it is extremely
 					unlikely that the
 					if( xTickCount >= xNextTaskUnblockTime ) test will pass
 					next time through. */
 					xNextTaskUnblockTime = portMAX_DELAY; /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
- 80018d6:	4b3a      	ldr	r3, [pc, #232]	; (80019c0 <xTaskIncrementTick+0x170>)
- 80018d8:	f04f 32ff 	mov.w	r2, #4294967295
- 80018dc:	601a      	str	r2, [r3, #0]
+ 800184a:	4b3a      	ldr	r3, [pc, #232]	; (8001934 <xTaskIncrementTick+0x170>)
+ 800184c:	f04f 32ff 	mov.w	r2, #4294967295
+ 8001850:	601a      	str	r2, [r3, #0]
 					break;
- 80018de:	e03e      	b.n	800195e <xTaskIncrementTick+0x10e>
+ 8001852:	e03e      	b.n	80018d2 <xTaskIncrementTick+0x10e>
 				{
 					/* The delayed list is not empty, get the value of the
 					item at the head of the delayed list.  This is the time
 					at which the task at the head of the delayed list must
 					be removed from the Blocked state. */
 					pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList );
- 80018e0:	4b34      	ldr	r3, [pc, #208]	; (80019b4 <xTaskIncrementTick+0x164>)
- 80018e2:	681b      	ldr	r3, [r3, #0]
- 80018e4:	68db      	ldr	r3, [r3, #12]
- 80018e6:	68db      	ldr	r3, [r3, #12]
- 80018e8:	60bb      	str	r3, [r7, #8]
+ 8001854:	4b34      	ldr	r3, [pc, #208]	; (8001928 <xTaskIncrementTick+0x164>)
+ 8001856:	681b      	ldr	r3, [r3, #0]
+ 8001858:	68db      	ldr	r3, [r3, #12]
+ 800185a:	68db      	ldr	r3, [r3, #12]
+ 800185c:	60bb      	str	r3, [r7, #8]
 					xItemValue = listGET_LIST_ITEM_VALUE( &( pxTCB->xStateListItem ) );
- 80018ea:	68bb      	ldr	r3, [r7, #8]
- 80018ec:	685b      	ldr	r3, [r3, #4]
- 80018ee:	607b      	str	r3, [r7, #4]
+ 800185e:	68bb      	ldr	r3, [r7, #8]
+ 8001860:	685b      	ldr	r3, [r3, #4]
+ 8001862:	607b      	str	r3, [r7, #4]
 
 					if( xConstTickCount < xItemValue )
- 80018f0:	693a      	ldr	r2, [r7, #16]
- 80018f2:	687b      	ldr	r3, [r7, #4]
- 80018f4:	429a      	cmp	r2, r3
- 80018f6:	d203      	bcs.n	8001900 <xTaskIncrementTick+0xb0>
+ 8001864:	693a      	ldr	r2, [r7, #16]
+ 8001866:	687b      	ldr	r3, [r7, #4]
+ 8001868:	429a      	cmp	r2, r3
+ 800186a:	d203      	bcs.n	8001874 <xTaskIncrementTick+0xb0>
 						/* It is not time to unblock this item yet, but the
 						item value is the time at which the task at the head
 						of the blocked list must be removed from the Blocked
 						state -	so record the item value in
 						xNextTaskUnblockTime. */
 						xNextTaskUnblockTime = xItemValue;
- 80018f8:	4a31      	ldr	r2, [pc, #196]	; (80019c0 <xTaskIncrementTick+0x170>)
- 80018fa:	687b      	ldr	r3, [r7, #4]
- 80018fc:	6013      	str	r3, [r2, #0]
+ 800186c:	4a31      	ldr	r2, [pc, #196]	; (8001934 <xTaskIncrementTick+0x170>)
+ 800186e:	687b      	ldr	r3, [r7, #4]
+ 8001870:	6013      	str	r3, [r2, #0]
 						break;
- 80018fe:	e02e      	b.n	800195e <xTaskIncrementTick+0x10e>
+ 8001872:	e02e      	b.n	80018d2 <xTaskIncrementTick+0x10e>
 					{
 						mtCOVERAGE_TEST_MARKER();
 					}
 
 					/* It is time to remove the item from the Blocked state. */
 					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
- 8001900:	68bb      	ldr	r3, [r7, #8]
- 8001902:	3304      	adds	r3, #4
- 8001904:	4618      	mov	r0, r3
- 8001906:	f7fe fced 	bl	80002e4 <uxListRemove>
+ 8001874:	68bb      	ldr	r3, [r7, #8]
+ 8001876:	3304      	adds	r3, #4
+ 8001878:	4618      	mov	r0, r3
+ 800187a:	f7fe fd33 	bl	80002e4 <uxListRemove>
 
 					/* Is the task waiting on an event also?  If so remove
 					it from the event list. */
 					if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
- 800190a:	68bb      	ldr	r3, [r7, #8]
- 800190c:	6a9b      	ldr	r3, [r3, #40]	; 0x28
- 800190e:	2b00      	cmp	r3, #0
- 8001910:	d004      	beq.n	800191c <xTaskIncrementTick+0xcc>
+ 800187e:	68bb      	ldr	r3, [r7, #8]
+ 8001880:	6a9b      	ldr	r3, [r3, #40]	; 0x28
+ 8001882:	2b00      	cmp	r3, #0
+ 8001884:	d004      	beq.n	8001890 <xTaskIncrementTick+0xcc>
 					{
 						( void ) uxListRemove( &( pxTCB->xEventListItem ) );
- 8001912:	68bb      	ldr	r3, [r7, #8]
- 8001914:	3318      	adds	r3, #24
- 8001916:	4618      	mov	r0, r3
- 8001918:	f7fe fce4 	bl	80002e4 <uxListRemove>
+ 8001886:	68bb      	ldr	r3, [r7, #8]
+ 8001888:	3318      	adds	r3, #24
+ 800188a:	4618      	mov	r0, r3
+ 800188c:	f7fe fd2a 	bl	80002e4 <uxListRemove>
 						mtCOVERAGE_TEST_MARKER();
 					}
 
 					/* Place the unblocked task into the appropriate ready
 					list. */
 					prvAddTaskToReadyList( pxTCB );
- 800191c:	68bb      	ldr	r3, [r7, #8]
- 800191e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
- 8001920:	2201      	movs	r2, #1
- 8001922:	409a      	lsls	r2, r3
- 8001924:	4b27      	ldr	r3, [pc, #156]	; (80019c4 <xTaskIncrementTick+0x174>)
- 8001926:	681b      	ldr	r3, [r3, #0]
- 8001928:	4313      	orrs	r3, r2
- 800192a:	4a26      	ldr	r2, [pc, #152]	; (80019c4 <xTaskIncrementTick+0x174>)
- 800192c:	6013      	str	r3, [r2, #0]
- 800192e:	68bb      	ldr	r3, [r7, #8]
- 8001930:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 8001932:	4613      	mov	r3, r2
- 8001934:	009b      	lsls	r3, r3, #2
- 8001936:	4413      	add	r3, r2
- 8001938:	009b      	lsls	r3, r3, #2
- 800193a:	4a23      	ldr	r2, [pc, #140]	; (80019c8 <xTaskIncrementTick+0x178>)
- 800193c:	441a      	add	r2, r3
- 800193e:	68bb      	ldr	r3, [r7, #8]
- 8001940:	3304      	adds	r3, #4
- 8001942:	4619      	mov	r1, r3
- 8001944:	4610      	mov	r0, r2
- 8001946:	f7fe fc70 	bl	800022a <vListInsertEnd>
+ 8001890:	68bb      	ldr	r3, [r7, #8]
+ 8001892:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 8001894:	2201      	movs	r2, #1
+ 8001896:	409a      	lsls	r2, r3
+ 8001898:	4b27      	ldr	r3, [pc, #156]	; (8001938 <xTaskIncrementTick+0x174>)
+ 800189a:	681b      	ldr	r3, [r3, #0]
+ 800189c:	4313      	orrs	r3, r2
+ 800189e:	4a26      	ldr	r2, [pc, #152]	; (8001938 <xTaskIncrementTick+0x174>)
+ 80018a0:	6013      	str	r3, [r2, #0]
+ 80018a2:	68bb      	ldr	r3, [r7, #8]
+ 80018a4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 80018a6:	4613      	mov	r3, r2
+ 80018a8:	009b      	lsls	r3, r3, #2
+ 80018aa:	4413      	add	r3, r2
+ 80018ac:	009b      	lsls	r3, r3, #2
+ 80018ae:	4a23      	ldr	r2, [pc, #140]	; (800193c <xTaskIncrementTick+0x178>)
+ 80018b0:	441a      	add	r2, r3
+ 80018b2:	68bb      	ldr	r3, [r7, #8]
+ 80018b4:	3304      	adds	r3, #4
+ 80018b6:	4619      	mov	r1, r3
+ 80018b8:	4610      	mov	r0, r2
+ 80018ba:	f7fe fcb6 	bl	800022a <vListInsertEnd>
 					{
 						/* Preemption is on, but a context switch should
 						only be performed if the unblocked task has a
 						priority that is equal to or higher than the
 						currently executing task. */
 						if( pxTCB->uxPriority >= pxCurrentTCB->uxPriority )
- 800194a:	68bb      	ldr	r3, [r7, #8]
- 800194c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 800194e:	4b1f      	ldr	r3, [pc, #124]	; (80019cc <xTaskIncrementTick+0x17c>)
- 8001950:	681b      	ldr	r3, [r3, #0]
- 8001952:	6adb      	ldr	r3, [r3, #44]	; 0x2c
- 8001954:	429a      	cmp	r2, r3
- 8001956:	d3b4      	bcc.n	80018c2 <xTaskIncrementTick+0x72>
+ 80018be:	68bb      	ldr	r3, [r7, #8]
+ 80018c0:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 80018c2:	4b1f      	ldr	r3, [pc, #124]	; (8001940 <xTaskIncrementTick+0x17c>)
+ 80018c4:	681b      	ldr	r3, [r3, #0]
+ 80018c6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 80018c8:	429a      	cmp	r2, r3
+ 80018ca:	d3b4      	bcc.n	8001836 <xTaskIncrementTick+0x72>
 						{
 							xSwitchRequired = pdTRUE;
- 8001958:	2301      	movs	r3, #1
- 800195a:	617b      	str	r3, [r7, #20]
+ 80018cc:	2301      	movs	r3, #1
+ 80018ce:	617b      	str	r3, [r7, #20]
 				if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
- 800195c:	e7b1      	b.n	80018c2 <xTaskIncrementTick+0x72>
+ 80018d0:	e7b1      	b.n	8001836 <xTaskIncrementTick+0x72>
 		/* Tasks of equal priority to the currently running task will share
 		processing time (time slice) if preemption is on, and the application
 		writer has not explicitly turned time slicing off. */
 		#if ( ( configUSE_PREEMPTION == 1 ) && ( configUSE_TIME_SLICING == 1 ) )
 		{
 			if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ pxCurrentTCB->uxPriority ] ) ) > ( UBaseType_t ) 1 )
- 800195e:	4b1b      	ldr	r3, [pc, #108]	; (80019cc <xTaskIncrementTick+0x17c>)
- 8001960:	681b      	ldr	r3, [r3, #0]
- 8001962:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 8001964:	4918      	ldr	r1, [pc, #96]	; (80019c8 <xTaskIncrementTick+0x178>)
- 8001966:	4613      	mov	r3, r2
- 8001968:	009b      	lsls	r3, r3, #2
- 800196a:	4413      	add	r3, r2
- 800196c:	009b      	lsls	r3, r3, #2
- 800196e:	440b      	add	r3, r1
- 8001970:	681b      	ldr	r3, [r3, #0]
- 8001972:	2b01      	cmp	r3, #1
- 8001974:	d901      	bls.n	800197a <xTaskIncrementTick+0x12a>
+ 80018d2:	4b1b      	ldr	r3, [pc, #108]	; (8001940 <xTaskIncrementTick+0x17c>)
+ 80018d4:	681b      	ldr	r3, [r3, #0]
+ 80018d6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 80018d8:	4918      	ldr	r1, [pc, #96]	; (800193c <xTaskIncrementTick+0x178>)
+ 80018da:	4613      	mov	r3, r2
+ 80018dc:	009b      	lsls	r3, r3, #2
+ 80018de:	4413      	add	r3, r2
+ 80018e0:	009b      	lsls	r3, r3, #2
+ 80018e2:	440b      	add	r3, r1
+ 80018e4:	681b      	ldr	r3, [r3, #0]
+ 80018e6:	2b01      	cmp	r3, #1
+ 80018e8:	d901      	bls.n	80018ee <xTaskIncrementTick+0x12a>
 			{
 				xSwitchRequired = pdTRUE;
- 8001976:	2301      	movs	r3, #1
- 8001978:	617b      	str	r3, [r7, #20]
+ 80018ea:	2301      	movs	r3, #1
+ 80018ec:	617b      	str	r3, [r7, #20]
 
 		#if ( configUSE_TICK_HOOK == 1 )
 		{
 			/* Guard against the tick hook being called when the pended tick
 			count is being unwound (when the scheduler is being unlocked). */
 			if( uxPendedTicks == ( UBaseType_t ) 0U )
- 800197a:	4b15      	ldr	r3, [pc, #84]	; (80019d0 <xTaskIncrementTick+0x180>)
- 800197c:	681b      	ldr	r3, [r3, #0]
- 800197e:	2b00      	cmp	r3, #0
- 8001980:	d109      	bne.n	8001996 <xTaskIncrementTick+0x146>
+ 80018ee:	4b15      	ldr	r3, [pc, #84]	; (8001944 <xTaskIncrementTick+0x180>)
+ 80018f0:	681b      	ldr	r3, [r3, #0]
+ 80018f2:	2b00      	cmp	r3, #0
+ 80018f4:	d109      	bne.n	800190a <xTaskIncrementTick+0x146>
 			{
 				vApplicationTickHook();
- 8001982:	f001 faf9 	bl	8002f78 <vApplicationTickHook>
- 8001986:	e006      	b.n	8001996 <xTaskIncrementTick+0x146>
+ 80018f6:	f001 fe0d 	bl	8003514 <vApplicationTickHook>
+ 80018fa:	e006      	b.n	800190a <xTaskIncrementTick+0x146>
 		}
 		#endif /* configUSE_TICK_HOOK */
 	}
 	else
 	{
 		++uxPendedTicks;
- 8001988:	4b11      	ldr	r3, [pc, #68]	; (80019d0 <xTaskIncrementTick+0x180>)
- 800198a:	681b      	ldr	r3, [r3, #0]
- 800198c:	3301      	adds	r3, #1
- 800198e:	4a10      	ldr	r2, [pc, #64]	; (80019d0 <xTaskIncrementTick+0x180>)
- 8001990:	6013      	str	r3, [r2, #0]
+ 80018fc:	4b11      	ldr	r3, [pc, #68]	; (8001944 <xTaskIncrementTick+0x180>)
+ 80018fe:	681b      	ldr	r3, [r3, #0]
+ 8001900:	3301      	adds	r3, #1
+ 8001902:	4a10      	ldr	r2, [pc, #64]	; (8001944 <xTaskIncrementTick+0x180>)
+ 8001904:	6013      	str	r3, [r2, #0]
 
 		/* The tick hook gets called at regular intervals, even if the
 		scheduler is locked. */
 		#if ( configUSE_TICK_HOOK == 1 )
 		{
 			vApplicationTickHook();
- 8001992:	f001 faf1 	bl	8002f78 <vApplicationTickHook>
+ 8001906:	f001 fe05 	bl	8003514 <vApplicationTickHook>
 		#endif
 	}
 
 	#if ( configUSE_PREEMPTION == 1 )
 	{
 		if( xYieldPending != pdFALSE )
- 8001996:	4b0f      	ldr	r3, [pc, #60]	; (80019d4 <xTaskIncrementTick+0x184>)
- 8001998:	681b      	ldr	r3, [r3, #0]
- 800199a:	2b00      	cmp	r3, #0
- 800199c:	d001      	beq.n	80019a2 <xTaskIncrementTick+0x152>
+ 800190a:	4b0f      	ldr	r3, [pc, #60]	; (8001948 <xTaskIncrementTick+0x184>)
+ 800190c:	681b      	ldr	r3, [r3, #0]
+ 800190e:	2b00      	cmp	r3, #0
+ 8001910:	d001      	beq.n	8001916 <xTaskIncrementTick+0x152>
 		{
 			xSwitchRequired = pdTRUE;
- 800199e:	2301      	movs	r3, #1
- 80019a0:	617b      	str	r3, [r7, #20]
+ 8001912:	2301      	movs	r3, #1
+ 8001914:	617b      	str	r3, [r7, #20]
 			mtCOVERAGE_TEST_MARKER();
 		}
 	}
 	#endif /* configUSE_PREEMPTION */
 
 	return xSwitchRequired;
- 80019a2:	697b      	ldr	r3, [r7, #20]
-}
- 80019a4:	4618      	mov	r0, r3
- 80019a6:	3718      	adds	r7, #24
- 80019a8:	46bd      	mov	sp, r7
- 80019aa:	bd80      	pop	{r7, pc}
- 80019ac:	20001d44 	.word	0x20001d44
- 80019b0:	20001d20 	.word	0x20001d20
- 80019b4:	20001cd4 	.word	0x20001cd4
- 80019b8:	20001cd8 	.word	0x20001cd8
- 80019bc:	20001d34 	.word	0x20001d34
- 80019c0:	20001d3c 	.word	0x20001d3c
- 80019c4:	20001d24 	.word	0x20001d24
- 80019c8:	20001c48 	.word	0x20001c48
- 80019cc:	20001c44 	.word	0x20001c44
- 80019d0:	20001d2c 	.word	0x20001d2c
- 80019d4:	20001d30 	.word	0x20001d30
-
-080019d8 <vTaskSwitchContext>:
+ 8001916:	697b      	ldr	r3, [r7, #20]
+}
+ 8001918:	4618      	mov	r0, r3
+ 800191a:	3718      	adds	r7, #24
+ 800191c:	46bd      	mov	sp, r7
+ 800191e:	bd80      	pop	{r7, pc}
+ 8001920:	20001dac 	.word	0x20001dac
+ 8001924:	20001d88 	.word	0x20001d88
+ 8001928:	20001d3c 	.word	0x20001d3c
+ 800192c:	20001d40 	.word	0x20001d40
+ 8001930:	20001d9c 	.word	0x20001d9c
+ 8001934:	20001da4 	.word	0x20001da4
+ 8001938:	20001d8c 	.word	0x20001d8c
+ 800193c:	20001cb0 	.word	0x20001cb0
+ 8001940:	20001cac 	.word	0x20001cac
+ 8001944:	20001d94 	.word	0x20001d94
+ 8001948:	20001d98 	.word	0x20001d98
+
+0800194c <vTaskSwitchContext>:
 
 #endif /* configUSE_APPLICATION_TASK_TAG */
 /*-----------------------------------------------------------*/
 
 void vTaskSwitchContext( void )
 {
- 80019d8:	b580      	push	{r7, lr}
- 80019da:	b088      	sub	sp, #32
- 80019dc:	af00      	add	r7, sp, #0
+ 800194c:	b580      	push	{r7, lr}
+ 800194e:	b088      	sub	sp, #32
+ 8001950:	af00      	add	r7, sp, #0
 	if( uxSchedulerSuspended != ( UBaseType_t ) pdFALSE )
- 80019de:	4b39      	ldr	r3, [pc, #228]	; (8001ac4 <vTaskSwitchContext+0xec>)
- 80019e0:	681b      	ldr	r3, [r3, #0]
- 80019e2:	2b00      	cmp	r3, #0
- 80019e4:	d003      	beq.n	80019ee <vTaskSwitchContext+0x16>
+ 8001952:	4b39      	ldr	r3, [pc, #228]	; (8001a38 <vTaskSwitchContext+0xec>)
+ 8001954:	681b      	ldr	r3, [r3, #0]
+ 8001956:	2b00      	cmp	r3, #0
+ 8001958:	d003      	beq.n	8001962 <vTaskSwitchContext+0x16>
 	{
 		/* The scheduler is currently suspended - do not allow a context
 		switch. */
 		xYieldPending = pdTRUE;
- 80019e6:	4b38      	ldr	r3, [pc, #224]	; (8001ac8 <vTaskSwitchContext+0xf0>)
- 80019e8:	2201      	movs	r2, #1
- 80019ea:	601a      	str	r2, [r3, #0]
+ 800195a:	4b38      	ldr	r3, [pc, #224]	; (8001a3c <vTaskSwitchContext+0xf0>)
+ 800195c:	2201      	movs	r2, #1
+ 800195e:	601a      	str	r2, [r3, #0]
 			structure specific to this task. */
 			_impure_ptr = &( pxCurrentTCB->xNewLib_reent );
 		}
 		#endif /* configUSE_NEWLIB_REENTRANT */
 	}
 }
- 80019ec:	e065      	b.n	8001aba <vTaskSwitchContext+0xe2>
+ 8001960:	e065      	b.n	8001a2e <vTaskSwitchContext+0xe2>
 		xYieldPending = pdFALSE;
- 80019ee:	4b36      	ldr	r3, [pc, #216]	; (8001ac8 <vTaskSwitchContext+0xf0>)
- 80019f0:	2200      	movs	r2, #0
- 80019f2:	601a      	str	r2, [r3, #0]
+ 8001962:	4b36      	ldr	r3, [pc, #216]	; (8001a3c <vTaskSwitchContext+0xf0>)
+ 8001964:	2200      	movs	r2, #0
+ 8001966:	601a      	str	r2, [r3, #0]
 		taskCHECK_FOR_STACK_OVERFLOW();
- 80019f4:	4b35      	ldr	r3, [pc, #212]	; (8001acc <vTaskSwitchContext+0xf4>)
- 80019f6:	681b      	ldr	r3, [r3, #0]
- 80019f8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
- 80019fa:	61fb      	str	r3, [r7, #28]
- 80019fc:	f04f 33a5 	mov.w	r3, #2779096485	; 0xa5a5a5a5
- 8001a00:	61bb      	str	r3, [r7, #24]
- 8001a02:	69fb      	ldr	r3, [r7, #28]
- 8001a04:	681a      	ldr	r2, [r3, #0]
- 8001a06:	69bb      	ldr	r3, [r7, #24]
- 8001a08:	429a      	cmp	r2, r3
- 8001a0a:	d111      	bne.n	8001a30 <vTaskSwitchContext+0x58>
- 8001a0c:	69fb      	ldr	r3, [r7, #28]
- 8001a0e:	3304      	adds	r3, #4
- 8001a10:	681a      	ldr	r2, [r3, #0]
- 8001a12:	69bb      	ldr	r3, [r7, #24]
- 8001a14:	429a      	cmp	r2, r3
- 8001a16:	d10b      	bne.n	8001a30 <vTaskSwitchContext+0x58>
- 8001a18:	69fb      	ldr	r3, [r7, #28]
- 8001a1a:	3308      	adds	r3, #8
- 8001a1c:	681a      	ldr	r2, [r3, #0]
- 8001a1e:	69bb      	ldr	r3, [r7, #24]
- 8001a20:	429a      	cmp	r2, r3
- 8001a22:	d105      	bne.n	8001a30 <vTaskSwitchContext+0x58>
- 8001a24:	69fb      	ldr	r3, [r7, #28]
- 8001a26:	330c      	adds	r3, #12
- 8001a28:	681a      	ldr	r2, [r3, #0]
- 8001a2a:	69bb      	ldr	r3, [r7, #24]
- 8001a2c:	429a      	cmp	r2, r3
- 8001a2e:	d008      	beq.n	8001a42 <vTaskSwitchContext+0x6a>
- 8001a30:	4b26      	ldr	r3, [pc, #152]	; (8001acc <vTaskSwitchContext+0xf4>)
- 8001a32:	681a      	ldr	r2, [r3, #0]
- 8001a34:	4b25      	ldr	r3, [pc, #148]	; (8001acc <vTaskSwitchContext+0xf4>)
- 8001a36:	681b      	ldr	r3, [r3, #0]
- 8001a38:	3334      	adds	r3, #52	; 0x34
- 8001a3a:	4619      	mov	r1, r3
- 8001a3c:	4610      	mov	r0, r2
- 8001a3e:	f001 fac0 	bl	8002fc2 <vApplicationStackOverflowHook>
+ 8001968:	4b35      	ldr	r3, [pc, #212]	; (8001a40 <vTaskSwitchContext+0xf4>)
+ 800196a:	681b      	ldr	r3, [r3, #0]
+ 800196c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
+ 800196e:	61fb      	str	r3, [r7, #28]
+ 8001970:	f04f 33a5 	mov.w	r3, #2779096485	; 0xa5a5a5a5
+ 8001974:	61bb      	str	r3, [r7, #24]
+ 8001976:	69fb      	ldr	r3, [r7, #28]
+ 8001978:	681a      	ldr	r2, [r3, #0]
+ 800197a:	69bb      	ldr	r3, [r7, #24]
+ 800197c:	429a      	cmp	r2, r3
+ 800197e:	d111      	bne.n	80019a4 <vTaskSwitchContext+0x58>
+ 8001980:	69fb      	ldr	r3, [r7, #28]
+ 8001982:	3304      	adds	r3, #4
+ 8001984:	681a      	ldr	r2, [r3, #0]
+ 8001986:	69bb      	ldr	r3, [r7, #24]
+ 8001988:	429a      	cmp	r2, r3
+ 800198a:	d10b      	bne.n	80019a4 <vTaskSwitchContext+0x58>
+ 800198c:	69fb      	ldr	r3, [r7, #28]
+ 800198e:	3308      	adds	r3, #8
+ 8001990:	681a      	ldr	r2, [r3, #0]
+ 8001992:	69bb      	ldr	r3, [r7, #24]
+ 8001994:	429a      	cmp	r2, r3
+ 8001996:	d105      	bne.n	80019a4 <vTaskSwitchContext+0x58>
+ 8001998:	69fb      	ldr	r3, [r7, #28]
+ 800199a:	330c      	adds	r3, #12
+ 800199c:	681a      	ldr	r2, [r3, #0]
+ 800199e:	69bb      	ldr	r3, [r7, #24]
+ 80019a0:	429a      	cmp	r2, r3
+ 80019a2:	d008      	beq.n	80019b6 <vTaskSwitchContext+0x6a>
+ 80019a4:	4b26      	ldr	r3, [pc, #152]	; (8001a40 <vTaskSwitchContext+0xf4>)
+ 80019a6:	681a      	ldr	r2, [r3, #0]
+ 80019a8:	4b25      	ldr	r3, [pc, #148]	; (8001a40 <vTaskSwitchContext+0xf4>)
+ 80019aa:	681b      	ldr	r3, [r3, #0]
+ 80019ac:	3334      	adds	r3, #52	; 0x34
+ 80019ae:	4619      	mov	r1, r3
+ 80019b0:	4610      	mov	r0, r2
+ 80019b2:	f001 fdd4 	bl	800355e <vApplicationStackOverflowHook>
 		taskSELECT_HIGHEST_PRIORITY_TASK();
- 8001a42:	4b23      	ldr	r3, [pc, #140]	; (8001ad0 <vTaskSwitchContext+0xf8>)
- 8001a44:	681b      	ldr	r3, [r3, #0]
- 8001a46:	60fb      	str	r3, [r7, #12]
+ 80019b6:	4b23      	ldr	r3, [pc, #140]	; (8001a44 <vTaskSwitchContext+0xf8>)
+ 80019b8:	681b      	ldr	r3, [r3, #0]
+ 80019ba:	60fb      	str	r3, [r7, #12]
 		__asm volatile ( "clz %0, %1" : "=r" ( ucReturn ) : "r" ( ulBitmap ) );
- 8001a48:	68fb      	ldr	r3, [r7, #12]
- 8001a4a:	fab3 f383 	clz	r3, r3
- 8001a4e:	72fb      	strb	r3, [r7, #11]
+ 80019bc:	68fb      	ldr	r3, [r7, #12]
+ 80019be:	fab3 f383 	clz	r3, r3
+ 80019c2:	72fb      	strb	r3, [r7, #11]
 		return ucReturn;
- 8001a50:	7afb      	ldrb	r3, [r7, #11]
- 8001a52:	f1c3 031f 	rsb	r3, r3, #31
- 8001a56:	617b      	str	r3, [r7, #20]
- 8001a58:	491e      	ldr	r1, [pc, #120]	; (8001ad4 <vTaskSwitchContext+0xfc>)
- 8001a5a:	697a      	ldr	r2, [r7, #20]
- 8001a5c:	4613      	mov	r3, r2
- 8001a5e:	009b      	lsls	r3, r3, #2
- 8001a60:	4413      	add	r3, r2
- 8001a62:	009b      	lsls	r3, r3, #2
- 8001a64:	440b      	add	r3, r1
- 8001a66:	681b      	ldr	r3, [r3, #0]
- 8001a68:	2b00      	cmp	r3, #0
- 8001a6a:	d109      	bne.n	8001a80 <vTaskSwitchContext+0xa8>
+ 80019c4:	7afb      	ldrb	r3, [r7, #11]
+ 80019c6:	f1c3 031f 	rsb	r3, r3, #31
+ 80019ca:	617b      	str	r3, [r7, #20]
+ 80019cc:	491e      	ldr	r1, [pc, #120]	; (8001a48 <vTaskSwitchContext+0xfc>)
+ 80019ce:	697a      	ldr	r2, [r7, #20]
+ 80019d0:	4613      	mov	r3, r2
+ 80019d2:	009b      	lsls	r3, r3, #2
+ 80019d4:	4413      	add	r3, r2
+ 80019d6:	009b      	lsls	r3, r3, #2
+ 80019d8:	440b      	add	r3, r1
+ 80019da:	681b      	ldr	r3, [r3, #0]
+ 80019dc:	2b00      	cmp	r3, #0
+ 80019de:	d109      	bne.n	80019f4 <vTaskSwitchContext+0xa8>
 	__asm volatile
- 8001a6c:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8001a70:	f383 8811 	msr	BASEPRI, r3
- 8001a74:	f3bf 8f6f 	isb	sy
- 8001a78:	f3bf 8f4f 	dsb	sy
- 8001a7c:	607b      	str	r3, [r7, #4]
- 8001a7e:	e7fe      	b.n	8001a7e <vTaskSwitchContext+0xa6>
- 8001a80:	697a      	ldr	r2, [r7, #20]
- 8001a82:	4613      	mov	r3, r2
- 8001a84:	009b      	lsls	r3, r3, #2
- 8001a86:	4413      	add	r3, r2
- 8001a88:	009b      	lsls	r3, r3, #2
- 8001a8a:	4a12      	ldr	r2, [pc, #72]	; (8001ad4 <vTaskSwitchContext+0xfc>)
- 8001a8c:	4413      	add	r3, r2
- 8001a8e:	613b      	str	r3, [r7, #16]
- 8001a90:	693b      	ldr	r3, [r7, #16]
- 8001a92:	685b      	ldr	r3, [r3, #4]
- 8001a94:	685a      	ldr	r2, [r3, #4]
- 8001a96:	693b      	ldr	r3, [r7, #16]
- 8001a98:	605a      	str	r2, [r3, #4]
- 8001a9a:	693b      	ldr	r3, [r7, #16]
- 8001a9c:	685a      	ldr	r2, [r3, #4]
- 8001a9e:	693b      	ldr	r3, [r7, #16]
- 8001aa0:	3308      	adds	r3, #8
- 8001aa2:	429a      	cmp	r2, r3
- 8001aa4:	d104      	bne.n	8001ab0 <vTaskSwitchContext+0xd8>
- 8001aa6:	693b      	ldr	r3, [r7, #16]
- 8001aa8:	685b      	ldr	r3, [r3, #4]
- 8001aaa:	685a      	ldr	r2, [r3, #4]
- 8001aac:	693b      	ldr	r3, [r7, #16]
- 8001aae:	605a      	str	r2, [r3, #4]
- 8001ab0:	693b      	ldr	r3, [r7, #16]
- 8001ab2:	685b      	ldr	r3, [r3, #4]
- 8001ab4:	68db      	ldr	r3, [r3, #12]
- 8001ab6:	4a05      	ldr	r2, [pc, #20]	; (8001acc <vTaskSwitchContext+0xf4>)
- 8001ab8:	6013      	str	r3, [r2, #0]
-}
- 8001aba:	bf00      	nop
- 8001abc:	3720      	adds	r7, #32
- 8001abe:	46bd      	mov	sp, r7
- 8001ac0:	bd80      	pop	{r7, pc}
- 8001ac2:	bf00      	nop
- 8001ac4:	20001d44 	.word	0x20001d44
- 8001ac8:	20001d30 	.word	0x20001d30
- 8001acc:	20001c44 	.word	0x20001c44
- 8001ad0:	20001d24 	.word	0x20001d24
- 8001ad4:	20001c48 	.word	0x20001c48
-
-08001ad8 <vTaskPlaceOnEventList>:
+ 80019e0:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 80019e4:	f383 8811 	msr	BASEPRI, r3
+ 80019e8:	f3bf 8f6f 	isb	sy
+ 80019ec:	f3bf 8f4f 	dsb	sy
+ 80019f0:	607b      	str	r3, [r7, #4]
+ 80019f2:	e7fe      	b.n	80019f2 <vTaskSwitchContext+0xa6>
+ 80019f4:	697a      	ldr	r2, [r7, #20]
+ 80019f6:	4613      	mov	r3, r2
+ 80019f8:	009b      	lsls	r3, r3, #2
+ 80019fa:	4413      	add	r3, r2
+ 80019fc:	009b      	lsls	r3, r3, #2
+ 80019fe:	4a12      	ldr	r2, [pc, #72]	; (8001a48 <vTaskSwitchContext+0xfc>)
+ 8001a00:	4413      	add	r3, r2
+ 8001a02:	613b      	str	r3, [r7, #16]
+ 8001a04:	693b      	ldr	r3, [r7, #16]
+ 8001a06:	685b      	ldr	r3, [r3, #4]
+ 8001a08:	685a      	ldr	r2, [r3, #4]
+ 8001a0a:	693b      	ldr	r3, [r7, #16]
+ 8001a0c:	605a      	str	r2, [r3, #4]
+ 8001a0e:	693b      	ldr	r3, [r7, #16]
+ 8001a10:	685a      	ldr	r2, [r3, #4]
+ 8001a12:	693b      	ldr	r3, [r7, #16]
+ 8001a14:	3308      	adds	r3, #8
+ 8001a16:	429a      	cmp	r2, r3
+ 8001a18:	d104      	bne.n	8001a24 <vTaskSwitchContext+0xd8>
+ 8001a1a:	693b      	ldr	r3, [r7, #16]
+ 8001a1c:	685b      	ldr	r3, [r3, #4]
+ 8001a1e:	685a      	ldr	r2, [r3, #4]
+ 8001a20:	693b      	ldr	r3, [r7, #16]
+ 8001a22:	605a      	str	r2, [r3, #4]
+ 8001a24:	693b      	ldr	r3, [r7, #16]
+ 8001a26:	685b      	ldr	r3, [r3, #4]
+ 8001a28:	68db      	ldr	r3, [r3, #12]
+ 8001a2a:	4a05      	ldr	r2, [pc, #20]	; (8001a40 <vTaskSwitchContext+0xf4>)
+ 8001a2c:	6013      	str	r3, [r2, #0]
+}
+ 8001a2e:	bf00      	nop
+ 8001a30:	3720      	adds	r7, #32
+ 8001a32:	46bd      	mov	sp, r7
+ 8001a34:	bd80      	pop	{r7, pc}
+ 8001a36:	bf00      	nop
+ 8001a38:	20001dac 	.word	0x20001dac
+ 8001a3c:	20001d98 	.word	0x20001d98
+ 8001a40:	20001cac 	.word	0x20001cac
+ 8001a44:	20001d8c 	.word	0x20001d8c
+ 8001a48:	20001cb0 	.word	0x20001cb0
+
+08001a4c <vTaskPlaceOnEventList>:
 /*-----------------------------------------------------------*/
 
 void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait )
 {
- 8001ad8:	b580      	push	{r7, lr}
- 8001ada:	b084      	sub	sp, #16
- 8001adc:	af00      	add	r7, sp, #0
- 8001ade:	6078      	str	r0, [r7, #4]
- 8001ae0:	6039      	str	r1, [r7, #0]
+ 8001a4c:	b580      	push	{r7, lr}
+ 8001a4e:	b084      	sub	sp, #16
+ 8001a50:	af00      	add	r7, sp, #0
+ 8001a52:	6078      	str	r0, [r7, #4]
+ 8001a54:	6039      	str	r1, [r7, #0]
 	configASSERT( pxEventList );
- 8001ae2:	687b      	ldr	r3, [r7, #4]
- 8001ae4:	2b00      	cmp	r3, #0
- 8001ae6:	d109      	bne.n	8001afc <vTaskPlaceOnEventList+0x24>
- 8001ae8:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8001aec:	f383 8811 	msr	BASEPRI, r3
- 8001af0:	f3bf 8f6f 	isb	sy
- 8001af4:	f3bf 8f4f 	dsb	sy
- 8001af8:	60fb      	str	r3, [r7, #12]
- 8001afa:	e7fe      	b.n	8001afa <vTaskPlaceOnEventList+0x22>
+ 8001a56:	687b      	ldr	r3, [r7, #4]
+ 8001a58:	2b00      	cmp	r3, #0
+ 8001a5a:	d109      	bne.n	8001a70 <vTaskPlaceOnEventList+0x24>
+ 8001a5c:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 8001a60:	f383 8811 	msr	BASEPRI, r3
+ 8001a64:	f3bf 8f6f 	isb	sy
+ 8001a68:	f3bf 8f4f 	dsb	sy
+ 8001a6c:	60fb      	str	r3, [r7, #12]
+ 8001a6e:	e7fe      	b.n	8001a6e <vTaskPlaceOnEventList+0x22>
 
 	/* Place the event list item of the TCB in the appropriate event list.
 	This is placed in the list in priority order so the highest priority task
 	is the first to be woken by the event.  The queue that contains the event
 	list is locked, preventing simultaneous access from interrupts. */
 	vListInsert( pxEventList, &( pxCurrentTCB->xEventListItem ) );
- 8001afc:	4b07      	ldr	r3, [pc, #28]	; (8001b1c <vTaskPlaceOnEventList+0x44>)
- 8001afe:	681b      	ldr	r3, [r3, #0]
- 8001b00:	3318      	adds	r3, #24
- 8001b02:	4619      	mov	r1, r3
- 8001b04:	6878      	ldr	r0, [r7, #4]
- 8001b06:	f7fe fbb4 	bl	8000272 <vListInsert>
+ 8001a70:	4b07      	ldr	r3, [pc, #28]	; (8001a90 <vTaskPlaceOnEventList+0x44>)
+ 8001a72:	681b      	ldr	r3, [r3, #0]
+ 8001a74:	3318      	adds	r3, #24
+ 8001a76:	4619      	mov	r1, r3
+ 8001a78:	6878      	ldr	r0, [r7, #4]
+ 8001a7a:	f7fe fbfa 	bl	8000272 <vListInsert>
 
 	prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
- 8001b0a:	2101      	movs	r1, #1
- 8001b0c:	6838      	ldr	r0, [r7, #0]
- 8001b0e:	f000 fb19 	bl	8002144 <prvAddCurrentTaskToDelayedList>
-}
- 8001b12:	bf00      	nop
- 8001b14:	3710      	adds	r7, #16
- 8001b16:	46bd      	mov	sp, r7
- 8001b18:	bd80      	pop	{r7, pc}
- 8001b1a:	bf00      	nop
- 8001b1c:	20001c44 	.word	0x20001c44
-
-08001b20 <vTaskPlaceOnEventListRestricted>:
+ 8001a7e:	2101      	movs	r1, #1
+ 8001a80:	6838      	ldr	r0, [r7, #0]
+ 8001a82:	f000 fb19 	bl	80020b8 <prvAddCurrentTaskToDelayedList>
+}
+ 8001a86:	bf00      	nop
+ 8001a88:	3710      	adds	r7, #16
+ 8001a8a:	46bd      	mov	sp, r7
+ 8001a8c:	bd80      	pop	{r7, pc}
+ 8001a8e:	bf00      	nop
+ 8001a90:	20001cac 	.word	0x20001cac
+
+08001a94 <vTaskPlaceOnEventListRestricted>:
 /*-----------------------------------------------------------*/
 
 #if( configUSE_TIMERS == 1 )
 
 	void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely )
 	{
- 8001b20:	b580      	push	{r7, lr}
- 8001b22:	b086      	sub	sp, #24
- 8001b24:	af00      	add	r7, sp, #0
- 8001b26:	60f8      	str	r0, [r7, #12]
- 8001b28:	60b9      	str	r1, [r7, #8]
- 8001b2a:	607a      	str	r2, [r7, #4]
+ 8001a94:	b580      	push	{r7, lr}
+ 8001a96:	b086      	sub	sp, #24
+ 8001a98:	af00      	add	r7, sp, #0
+ 8001a9a:	60f8      	str	r0, [r7, #12]
+ 8001a9c:	60b9      	str	r1, [r7, #8]
+ 8001a9e:	607a      	str	r2, [r7, #4]
 		configASSERT( pxEventList );
- 8001b2c:	68fb      	ldr	r3, [r7, #12]
- 8001b2e:	2b00      	cmp	r3, #0
- 8001b30:	d109      	bne.n	8001b46 <vTaskPlaceOnEventListRestricted+0x26>
- 8001b32:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8001b36:	f383 8811 	msr	BASEPRI, r3
- 8001b3a:	f3bf 8f6f 	isb	sy
- 8001b3e:	f3bf 8f4f 	dsb	sy
- 8001b42:	617b      	str	r3, [r7, #20]
- 8001b44:	e7fe      	b.n	8001b44 <vTaskPlaceOnEventListRestricted+0x24>
+ 8001aa0:	68fb      	ldr	r3, [r7, #12]
+ 8001aa2:	2b00      	cmp	r3, #0
+ 8001aa4:	d109      	bne.n	8001aba <vTaskPlaceOnEventListRestricted+0x26>
+ 8001aa6:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 8001aaa:	f383 8811 	msr	BASEPRI, r3
+ 8001aae:	f3bf 8f6f 	isb	sy
+ 8001ab2:	f3bf 8f4f 	dsb	sy
+ 8001ab6:	617b      	str	r3, [r7, #20]
+ 8001ab8:	e7fe      	b.n	8001ab8 <vTaskPlaceOnEventListRestricted+0x24>
 
 		/* Place the event list item of the TCB in the appropriate event list.
 		In this case it is assume that this is the only task that is going to
 		be waiting on this event list, so the faster vListInsertEnd() function
 		can be used in place of vListInsert. */
 		vListInsertEnd( pxEventList, &( pxCurrentTCB->xEventListItem ) );
- 8001b46:	4b0a      	ldr	r3, [pc, #40]	; (8001b70 <vTaskPlaceOnEventListRestricted+0x50>)
- 8001b48:	681b      	ldr	r3, [r3, #0]
- 8001b4a:	3318      	adds	r3, #24
- 8001b4c:	4619      	mov	r1, r3
- 8001b4e:	68f8      	ldr	r0, [r7, #12]
- 8001b50:	f7fe fb6b 	bl	800022a <vListInsertEnd>
+ 8001aba:	4b0a      	ldr	r3, [pc, #40]	; (8001ae4 <vTaskPlaceOnEventListRestricted+0x50>)
+ 8001abc:	681b      	ldr	r3, [r3, #0]
+ 8001abe:	3318      	adds	r3, #24
+ 8001ac0:	4619      	mov	r1, r3
+ 8001ac2:	68f8      	ldr	r0, [r7, #12]
+ 8001ac4:	f7fe fbb1 	bl	800022a <vListInsertEnd>
 
 		/* If the task should block indefinitely then set the block time to a
 		value that will be recognised as an indefinite delay inside the
 		prvAddCurrentTaskToDelayedList() function. */
 		if( xWaitIndefinitely != pdFALSE )
- 8001b54:	687b      	ldr	r3, [r7, #4]
- 8001b56:	2b00      	cmp	r3, #0
- 8001b58:	d002      	beq.n	8001b60 <vTaskPlaceOnEventListRestricted+0x40>
+ 8001ac8:	687b      	ldr	r3, [r7, #4]
+ 8001aca:	2b00      	cmp	r3, #0
+ 8001acc:	d002      	beq.n	8001ad4 <vTaskPlaceOnEventListRestricted+0x40>
 		{
 			xTicksToWait = portMAX_DELAY;
- 8001b5a:	f04f 33ff 	mov.w	r3, #4294967295
- 8001b5e:	60bb      	str	r3, [r7, #8]
+ 8001ace:	f04f 33ff 	mov.w	r3, #4294967295
+ 8001ad2:	60bb      	str	r3, [r7, #8]
 		}
 
 		traceTASK_DELAY_UNTIL( ( xTickCount + xTicksToWait ) );
 		prvAddCurrentTaskToDelayedList( xTicksToWait, xWaitIndefinitely );
- 8001b60:	6879      	ldr	r1, [r7, #4]
- 8001b62:	68b8      	ldr	r0, [r7, #8]
- 8001b64:	f000 faee 	bl	8002144 <prvAddCurrentTaskToDelayedList>
+ 8001ad4:	6879      	ldr	r1, [r7, #4]
+ 8001ad6:	68b8      	ldr	r0, [r7, #8]
+ 8001ad8:	f000 faee 	bl	80020b8 <prvAddCurrentTaskToDelayedList>
 	}
- 8001b68:	bf00      	nop
- 8001b6a:	3718      	adds	r7, #24
- 8001b6c:	46bd      	mov	sp, r7
- 8001b6e:	bd80      	pop	{r7, pc}
- 8001b70:	20001c44 	.word	0x20001c44
+ 8001adc:	bf00      	nop
+ 8001ade:	3718      	adds	r7, #24
+ 8001ae0:	46bd      	mov	sp, r7
+ 8001ae2:	bd80      	pop	{r7, pc}
+ 8001ae4:	20001cac 	.word	0x20001cac
 
-08001b74 <xTaskRemoveFromEventList>:
+08001ae8 <xTaskRemoveFromEventList>:
 
 #endif /* configUSE_TIMERS */
 /*-----------------------------------------------------------*/
 
 BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList )
 {
- 8001b74:	b580      	push	{r7, lr}
- 8001b76:	b086      	sub	sp, #24
- 8001b78:	af00      	add	r7, sp, #0
- 8001b7a:	6078      	str	r0, [r7, #4]
+ 8001ae8:	b580      	push	{r7, lr}
+ 8001aea:	b086      	sub	sp, #24
+ 8001aec:	af00      	add	r7, sp, #0
+ 8001aee:	6078      	str	r0, [r7, #4]
 	get called - the lock count on the queue will get modified instead.  This
 	means exclusive access to the event list is guaranteed here.
 
 	This function assumes that a check has already been made to ensure that
 	pxEventList is not empty. */
 	pxUnblockedTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxEventList );
- 8001b7c:	687b      	ldr	r3, [r7, #4]
- 8001b7e:	68db      	ldr	r3, [r3, #12]
- 8001b80:	68db      	ldr	r3, [r3, #12]
- 8001b82:	613b      	str	r3, [r7, #16]
+ 8001af0:	687b      	ldr	r3, [r7, #4]
+ 8001af2:	68db      	ldr	r3, [r3, #12]
+ 8001af4:	68db      	ldr	r3, [r3, #12]
+ 8001af6:	613b      	str	r3, [r7, #16]
 	configASSERT( pxUnblockedTCB );
- 8001b84:	693b      	ldr	r3, [r7, #16]
- 8001b86:	2b00      	cmp	r3, #0
- 8001b88:	d109      	bne.n	8001b9e <xTaskRemoveFromEventList+0x2a>
- 8001b8a:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8001b8e:	f383 8811 	msr	BASEPRI, r3
- 8001b92:	f3bf 8f6f 	isb	sy
- 8001b96:	f3bf 8f4f 	dsb	sy
- 8001b9a:	60fb      	str	r3, [r7, #12]
- 8001b9c:	e7fe      	b.n	8001b9c <xTaskRemoveFromEventList+0x28>
+ 8001af8:	693b      	ldr	r3, [r7, #16]
+ 8001afa:	2b00      	cmp	r3, #0
+ 8001afc:	d109      	bne.n	8001b12 <xTaskRemoveFromEventList+0x2a>
+ 8001afe:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 8001b02:	f383 8811 	msr	BASEPRI, r3
+ 8001b06:	f3bf 8f6f 	isb	sy
+ 8001b0a:	f3bf 8f4f 	dsb	sy
+ 8001b0e:	60fb      	str	r3, [r7, #12]
+ 8001b10:	e7fe      	b.n	8001b10 <xTaskRemoveFromEventList+0x28>
 	( void ) uxListRemove( &( pxUnblockedTCB->xEventListItem ) );
- 8001b9e:	693b      	ldr	r3, [r7, #16]
- 8001ba0:	3318      	adds	r3, #24
- 8001ba2:	4618      	mov	r0, r3
- 8001ba4:	f7fe fb9e 	bl	80002e4 <uxListRemove>
+ 8001b12:	693b      	ldr	r3, [r7, #16]
+ 8001b14:	3318      	adds	r3, #24
+ 8001b16:	4618      	mov	r0, r3
+ 8001b18:	f7fe fbe4 	bl	80002e4 <uxListRemove>
 
 	if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
- 8001ba8:	4b1d      	ldr	r3, [pc, #116]	; (8001c20 <xTaskRemoveFromEventList+0xac>)
- 8001baa:	681b      	ldr	r3, [r3, #0]
- 8001bac:	2b00      	cmp	r3, #0
- 8001bae:	d11c      	bne.n	8001bea <xTaskRemoveFromEventList+0x76>
+ 8001b1c:	4b1d      	ldr	r3, [pc, #116]	; (8001b94 <xTaskRemoveFromEventList+0xac>)
+ 8001b1e:	681b      	ldr	r3, [r3, #0]
+ 8001b20:	2b00      	cmp	r3, #0
+ 8001b22:	d11c      	bne.n	8001b5e <xTaskRemoveFromEventList+0x76>
 	{
 		( void ) uxListRemove( &( pxUnblockedTCB->xStateListItem ) );
- 8001bb0:	693b      	ldr	r3, [r7, #16]
- 8001bb2:	3304      	adds	r3, #4
- 8001bb4:	4618      	mov	r0, r3
- 8001bb6:	f7fe fb95 	bl	80002e4 <uxListRemove>
+ 8001b24:	693b      	ldr	r3, [r7, #16]
+ 8001b26:	3304      	adds	r3, #4
+ 8001b28:	4618      	mov	r0, r3
+ 8001b2a:	f7fe fbdb 	bl	80002e4 <uxListRemove>
 		prvAddTaskToReadyList( pxUnblockedTCB );
- 8001bba:	693b      	ldr	r3, [r7, #16]
- 8001bbc:	6adb      	ldr	r3, [r3, #44]	; 0x2c
- 8001bbe:	2201      	movs	r2, #1
- 8001bc0:	409a      	lsls	r2, r3
- 8001bc2:	4b18      	ldr	r3, [pc, #96]	; (8001c24 <xTaskRemoveFromEventList+0xb0>)
- 8001bc4:	681b      	ldr	r3, [r3, #0]
- 8001bc6:	4313      	orrs	r3, r2
- 8001bc8:	4a16      	ldr	r2, [pc, #88]	; (8001c24 <xTaskRemoveFromEventList+0xb0>)
- 8001bca:	6013      	str	r3, [r2, #0]
- 8001bcc:	693b      	ldr	r3, [r7, #16]
- 8001bce:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 8001bd0:	4613      	mov	r3, r2
- 8001bd2:	009b      	lsls	r3, r3, #2
- 8001bd4:	4413      	add	r3, r2
- 8001bd6:	009b      	lsls	r3, r3, #2
- 8001bd8:	4a13      	ldr	r2, [pc, #76]	; (8001c28 <xTaskRemoveFromEventList+0xb4>)
- 8001bda:	441a      	add	r2, r3
- 8001bdc:	693b      	ldr	r3, [r7, #16]
- 8001bde:	3304      	adds	r3, #4
- 8001be0:	4619      	mov	r1, r3
- 8001be2:	4610      	mov	r0, r2
- 8001be4:	f7fe fb21 	bl	800022a <vListInsertEnd>
- 8001be8:	e005      	b.n	8001bf6 <xTaskRemoveFromEventList+0x82>
+ 8001b2e:	693b      	ldr	r3, [r7, #16]
+ 8001b30:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 8001b32:	2201      	movs	r2, #1
+ 8001b34:	409a      	lsls	r2, r3
+ 8001b36:	4b18      	ldr	r3, [pc, #96]	; (8001b98 <xTaskRemoveFromEventList+0xb0>)
+ 8001b38:	681b      	ldr	r3, [r3, #0]
+ 8001b3a:	4313      	orrs	r3, r2
+ 8001b3c:	4a16      	ldr	r2, [pc, #88]	; (8001b98 <xTaskRemoveFromEventList+0xb0>)
+ 8001b3e:	6013      	str	r3, [r2, #0]
+ 8001b40:	693b      	ldr	r3, [r7, #16]
+ 8001b42:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 8001b44:	4613      	mov	r3, r2
+ 8001b46:	009b      	lsls	r3, r3, #2
+ 8001b48:	4413      	add	r3, r2
+ 8001b4a:	009b      	lsls	r3, r3, #2
+ 8001b4c:	4a13      	ldr	r2, [pc, #76]	; (8001b9c <xTaskRemoveFromEventList+0xb4>)
+ 8001b4e:	441a      	add	r2, r3
+ 8001b50:	693b      	ldr	r3, [r7, #16]
+ 8001b52:	3304      	adds	r3, #4
+ 8001b54:	4619      	mov	r1, r3
+ 8001b56:	4610      	mov	r0, r2
+ 8001b58:	f7fe fb67 	bl	800022a <vListInsertEnd>
+ 8001b5c:	e005      	b.n	8001b6a <xTaskRemoveFromEventList+0x82>
 	}
 	else
 	{
 		/* The delayed and ready lists cannot be accessed, so hold this task
 		pending until the scheduler is resumed. */
 		vListInsertEnd( &( xPendingReadyList ), &( pxUnblockedTCB->xEventListItem ) );
- 8001bea:	693b      	ldr	r3, [r7, #16]
- 8001bec:	3318      	adds	r3, #24
- 8001bee:	4619      	mov	r1, r3
- 8001bf0:	480e      	ldr	r0, [pc, #56]	; (8001c2c <xTaskRemoveFromEventList+0xb8>)
- 8001bf2:	f7fe fb1a 	bl	800022a <vListInsertEnd>
+ 8001b5e:	693b      	ldr	r3, [r7, #16]
+ 8001b60:	3318      	adds	r3, #24
+ 8001b62:	4619      	mov	r1, r3
+ 8001b64:	480e      	ldr	r0, [pc, #56]	; (8001ba0 <xTaskRemoveFromEventList+0xb8>)
+ 8001b66:	f7fe fb60 	bl	800022a <vListInsertEnd>
 	}
 
 	if( pxUnblockedTCB->uxPriority > pxCurrentTCB->uxPriority )
- 8001bf6:	693b      	ldr	r3, [r7, #16]
- 8001bf8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 8001bfa:	4b0d      	ldr	r3, [pc, #52]	; (8001c30 <xTaskRemoveFromEventList+0xbc>)
- 8001bfc:	681b      	ldr	r3, [r3, #0]
- 8001bfe:	6adb      	ldr	r3, [r3, #44]	; 0x2c
- 8001c00:	429a      	cmp	r2, r3
- 8001c02:	d905      	bls.n	8001c10 <xTaskRemoveFromEventList+0x9c>
+ 8001b6a:	693b      	ldr	r3, [r7, #16]
+ 8001b6c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 8001b6e:	4b0d      	ldr	r3, [pc, #52]	; (8001ba4 <xTaskRemoveFromEventList+0xbc>)
+ 8001b70:	681b      	ldr	r3, [r3, #0]
+ 8001b72:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 8001b74:	429a      	cmp	r2, r3
+ 8001b76:	d905      	bls.n	8001b84 <xTaskRemoveFromEventList+0x9c>
 	{
 		/* Return true if the task removed from the event list has a higher
 		priority than the calling task.  This allows the calling task to know if
 		it should force a context switch now. */
 		xReturn = pdTRUE;
- 8001c04:	2301      	movs	r3, #1
- 8001c06:	617b      	str	r3, [r7, #20]
+ 8001b78:	2301      	movs	r3, #1
+ 8001b7a:	617b      	str	r3, [r7, #20]
 
 		/* Mark that a yield is pending in case the user is not using the
 		"xHigherPriorityTaskWoken" parameter to an ISR safe FreeRTOS function. */
 		xYieldPending = pdTRUE;
- 8001c08:	4b0a      	ldr	r3, [pc, #40]	; (8001c34 <xTaskRemoveFromEventList+0xc0>)
- 8001c0a:	2201      	movs	r2, #1
- 8001c0c:	601a      	str	r2, [r3, #0]
- 8001c0e:	e001      	b.n	8001c14 <xTaskRemoveFromEventList+0xa0>
+ 8001b7c:	4b0a      	ldr	r3, [pc, #40]	; (8001ba8 <xTaskRemoveFromEventList+0xc0>)
+ 8001b7e:	2201      	movs	r2, #1
+ 8001b80:	601a      	str	r2, [r3, #0]
+ 8001b82:	e001      	b.n	8001b88 <xTaskRemoveFromEventList+0xa0>
 	}
 	else
 	{
 		xReturn = pdFALSE;
- 8001c10:	2300      	movs	r3, #0
- 8001c12:	617b      	str	r3, [r7, #20]
+ 8001b84:	2300      	movs	r3, #0
+ 8001b86:	617b      	str	r3, [r7, #20]
 		ensure it is updated at the earliest possible time. */
 		prvResetNextTaskUnblockTime();
 	}
 	#endif
 
 	return xReturn;
- 8001c14:	697b      	ldr	r3, [r7, #20]
-}
- 8001c16:	4618      	mov	r0, r3
- 8001c18:	3718      	adds	r7, #24
- 8001c1a:	46bd      	mov	sp, r7
- 8001c1c:	bd80      	pop	{r7, pc}
- 8001c1e:	bf00      	nop
- 8001c20:	20001d44 	.word	0x20001d44
- 8001c24:	20001d24 	.word	0x20001d24
- 8001c28:	20001c48 	.word	0x20001c48
- 8001c2c:	20001cdc 	.word	0x20001cdc
- 8001c30:	20001c44 	.word	0x20001c44
- 8001c34:	20001d30 	.word	0x20001d30
-
-08001c38 <vTaskSetTimeOutState>:
+ 8001b88:	697b      	ldr	r3, [r7, #20]
+}
+ 8001b8a:	4618      	mov	r0, r3
+ 8001b8c:	3718      	adds	r7, #24
+ 8001b8e:	46bd      	mov	sp, r7
+ 8001b90:	bd80      	pop	{r7, pc}
+ 8001b92:	bf00      	nop
+ 8001b94:	20001dac 	.word	0x20001dac
+ 8001b98:	20001d8c 	.word	0x20001d8c
+ 8001b9c:	20001cb0 	.word	0x20001cb0
+ 8001ba0:	20001d44 	.word	0x20001d44
+ 8001ba4:	20001cac 	.word	0x20001cac
+ 8001ba8:	20001d98 	.word	0x20001d98
+
+08001bac <vTaskSetTimeOutState>:
 	return xReturn;
 }
 /*-----------------------------------------------------------*/
 
 void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut )
 {
- 8001c38:	b480      	push	{r7}
- 8001c3a:	b085      	sub	sp, #20
- 8001c3c:	af00      	add	r7, sp, #0
- 8001c3e:	6078      	str	r0, [r7, #4]
+ 8001bac:	b480      	push	{r7}
+ 8001bae:	b085      	sub	sp, #20
+ 8001bb0:	af00      	add	r7, sp, #0
+ 8001bb2:	6078      	str	r0, [r7, #4]
 	configASSERT( pxTimeOut );
- 8001c40:	687b      	ldr	r3, [r7, #4]
- 8001c42:	2b00      	cmp	r3, #0
- 8001c44:	d109      	bne.n	8001c5a <vTaskSetTimeOutState+0x22>
- 8001c46:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8001c4a:	f383 8811 	msr	BASEPRI, r3
- 8001c4e:	f3bf 8f6f 	isb	sy
- 8001c52:	f3bf 8f4f 	dsb	sy
- 8001c56:	60fb      	str	r3, [r7, #12]
- 8001c58:	e7fe      	b.n	8001c58 <vTaskSetTimeOutState+0x20>
+ 8001bb4:	687b      	ldr	r3, [r7, #4]
+ 8001bb6:	2b00      	cmp	r3, #0
+ 8001bb8:	d109      	bne.n	8001bce <vTaskSetTimeOutState+0x22>
+ 8001bba:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 8001bbe:	f383 8811 	msr	BASEPRI, r3
+ 8001bc2:	f3bf 8f6f 	isb	sy
+ 8001bc6:	f3bf 8f4f 	dsb	sy
+ 8001bca:	60fb      	str	r3, [r7, #12]
+ 8001bcc:	e7fe      	b.n	8001bcc <vTaskSetTimeOutState+0x20>
 	pxTimeOut->xOverflowCount = xNumOfOverflows;
- 8001c5a:	4b07      	ldr	r3, [pc, #28]	; (8001c78 <vTaskSetTimeOutState+0x40>)
- 8001c5c:	681a      	ldr	r2, [r3, #0]
- 8001c5e:	687b      	ldr	r3, [r7, #4]
- 8001c60:	601a      	str	r2, [r3, #0]
+ 8001bce:	4b07      	ldr	r3, [pc, #28]	; (8001bec <vTaskSetTimeOutState+0x40>)
+ 8001bd0:	681a      	ldr	r2, [r3, #0]
+ 8001bd2:	687b      	ldr	r3, [r7, #4]
+ 8001bd4:	601a      	str	r2, [r3, #0]
 	pxTimeOut->xTimeOnEntering = xTickCount;
- 8001c62:	4b06      	ldr	r3, [pc, #24]	; (8001c7c <vTaskSetTimeOutState+0x44>)
- 8001c64:	681a      	ldr	r2, [r3, #0]
- 8001c66:	687b      	ldr	r3, [r7, #4]
- 8001c68:	605a      	str	r2, [r3, #4]
-}
- 8001c6a:	bf00      	nop
- 8001c6c:	3714      	adds	r7, #20
- 8001c6e:	46bd      	mov	sp, r7
- 8001c70:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8001c74:	4770      	bx	lr
- 8001c76:	bf00      	nop
- 8001c78:	20001d34 	.word	0x20001d34
- 8001c7c:	20001d20 	.word	0x20001d20
-
-08001c80 <xTaskCheckForTimeOut>:
+ 8001bd6:	4b06      	ldr	r3, [pc, #24]	; (8001bf0 <vTaskSetTimeOutState+0x44>)
+ 8001bd8:	681a      	ldr	r2, [r3, #0]
+ 8001bda:	687b      	ldr	r3, [r7, #4]
+ 8001bdc:	605a      	str	r2, [r3, #4]
+}
+ 8001bde:	bf00      	nop
+ 8001be0:	3714      	adds	r7, #20
+ 8001be2:	46bd      	mov	sp, r7
+ 8001be4:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8001be8:	4770      	bx	lr
+ 8001bea:	bf00      	nop
+ 8001bec:	20001d9c 	.word	0x20001d9c
+ 8001bf0:	20001d88 	.word	0x20001d88
+
+08001bf4 <xTaskCheckForTimeOut>:
 /*-----------------------------------------------------------*/
 
 BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait )
 {
- 8001c80:	b580      	push	{r7, lr}
- 8001c82:	b086      	sub	sp, #24
- 8001c84:	af00      	add	r7, sp, #0
- 8001c86:	6078      	str	r0, [r7, #4]
- 8001c88:	6039      	str	r1, [r7, #0]
+ 8001bf4:	b580      	push	{r7, lr}
+ 8001bf6:	b086      	sub	sp, #24
+ 8001bf8:	af00      	add	r7, sp, #0
+ 8001bfa:	6078      	str	r0, [r7, #4]
+ 8001bfc:	6039      	str	r1, [r7, #0]
 BaseType_t xReturn;
 
 	configASSERT( pxTimeOut );
- 8001c8a:	687b      	ldr	r3, [r7, #4]
- 8001c8c:	2b00      	cmp	r3, #0
- 8001c8e:	d109      	bne.n	8001ca4 <xTaskCheckForTimeOut+0x24>
- 8001c90:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8001c94:	f383 8811 	msr	BASEPRI, r3
- 8001c98:	f3bf 8f6f 	isb	sy
- 8001c9c:	f3bf 8f4f 	dsb	sy
- 8001ca0:	60fb      	str	r3, [r7, #12]
- 8001ca2:	e7fe      	b.n	8001ca2 <xTaskCheckForTimeOut+0x22>
+ 8001bfe:	687b      	ldr	r3, [r7, #4]
+ 8001c00:	2b00      	cmp	r3, #0
+ 8001c02:	d109      	bne.n	8001c18 <xTaskCheckForTimeOut+0x24>
+ 8001c04:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 8001c08:	f383 8811 	msr	BASEPRI, r3
+ 8001c0c:	f3bf 8f6f 	isb	sy
+ 8001c10:	f3bf 8f4f 	dsb	sy
+ 8001c14:	60fb      	str	r3, [r7, #12]
+ 8001c16:	e7fe      	b.n	8001c16 <xTaskCheckForTimeOut+0x22>
 	configASSERT( pxTicksToWait );
- 8001ca4:	683b      	ldr	r3, [r7, #0]
- 8001ca6:	2b00      	cmp	r3, #0
- 8001ca8:	d109      	bne.n	8001cbe <xTaskCheckForTimeOut+0x3e>
- 8001caa:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8001cae:	f383 8811 	msr	BASEPRI, r3
- 8001cb2:	f3bf 8f6f 	isb	sy
- 8001cb6:	f3bf 8f4f 	dsb	sy
- 8001cba:	60bb      	str	r3, [r7, #8]
- 8001cbc:	e7fe      	b.n	8001cbc <xTaskCheckForTimeOut+0x3c>
+ 8001c18:	683b      	ldr	r3, [r7, #0]
+ 8001c1a:	2b00      	cmp	r3, #0
+ 8001c1c:	d109      	bne.n	8001c32 <xTaskCheckForTimeOut+0x3e>
+ 8001c1e:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 8001c22:	f383 8811 	msr	BASEPRI, r3
+ 8001c26:	f3bf 8f6f 	isb	sy
+ 8001c2a:	f3bf 8f4f 	dsb	sy
+ 8001c2e:	60bb      	str	r3, [r7, #8]
+ 8001c30:	e7fe      	b.n	8001c30 <xTaskCheckForTimeOut+0x3c>
 
 	taskENTER_CRITICAL();
- 8001cbe:	f7fe fc3f 	bl	8000540 <vPortEnterCritical>
+ 8001c32:	f7fe fc85 	bl	8000540 <vPortEnterCritical>
 	{
 		/* Minor optimisation.  The tick count cannot change in this block. */
 		const TickType_t xConstTickCount = xTickCount;
- 8001cc2:	4b1c      	ldr	r3, [pc, #112]	; (8001d34 <xTaskCheckForTimeOut+0xb4>)
- 8001cc4:	681b      	ldr	r3, [r3, #0]
- 8001cc6:	613b      	str	r3, [r7, #16]
+ 8001c36:	4b1c      	ldr	r3, [pc, #112]	; (8001ca8 <xTaskCheckForTimeOut+0xb4>)
+ 8001c38:	681b      	ldr	r3, [r3, #0]
+ 8001c3a:	613b      	str	r3, [r7, #16]
 			}
 			else
 		#endif
 
 		#if ( INCLUDE_vTaskSuspend == 1 )
 			if( *pxTicksToWait == portMAX_DELAY )
- 8001cc8:	683b      	ldr	r3, [r7, #0]
- 8001cca:	681b      	ldr	r3, [r3, #0]
- 8001ccc:	f1b3 3fff 	cmp.w	r3, #4294967295
- 8001cd0:	d102      	bne.n	8001cd8 <xTaskCheckForTimeOut+0x58>
+ 8001c3c:	683b      	ldr	r3, [r7, #0]
+ 8001c3e:	681b      	ldr	r3, [r3, #0]
+ 8001c40:	f1b3 3fff 	cmp.w	r3, #4294967295
+ 8001c44:	d102      	bne.n	8001c4c <xTaskCheckForTimeOut+0x58>
 			{
 				/* If INCLUDE_vTaskSuspend is set to 1 and the block time
 				specified is the maximum block time then the task should block
 				indefinitely, and therefore never time out. */
 				xReturn = pdFALSE;
- 8001cd2:	2300      	movs	r3, #0
- 8001cd4:	617b      	str	r3, [r7, #20]
- 8001cd6:	e026      	b.n	8001d26 <xTaskCheckForTimeOut+0xa6>
+ 8001c46:	2300      	movs	r3, #0
+ 8001c48:	617b      	str	r3, [r7, #20]
+ 8001c4a:	e026      	b.n	8001c9a <xTaskCheckForTimeOut+0xa6>
 			}
 			else
 		#endif
 
 		if( ( xNumOfOverflows != pxTimeOut->xOverflowCount ) && ( xConstTickCount >= pxTimeOut->xTimeOnEntering ) ) /*lint !e525 Indentation preferred as is to make code within pre-processor directives clearer. */
- 8001cd8:	687b      	ldr	r3, [r7, #4]
- 8001cda:	681a      	ldr	r2, [r3, #0]
- 8001cdc:	4b16      	ldr	r3, [pc, #88]	; (8001d38 <xTaskCheckForTimeOut+0xb8>)
- 8001cde:	681b      	ldr	r3, [r3, #0]
- 8001ce0:	429a      	cmp	r2, r3
- 8001ce2:	d007      	beq.n	8001cf4 <xTaskCheckForTimeOut+0x74>
- 8001ce4:	687b      	ldr	r3, [r7, #4]
- 8001ce6:	685a      	ldr	r2, [r3, #4]
- 8001ce8:	693b      	ldr	r3, [r7, #16]
- 8001cea:	429a      	cmp	r2, r3
- 8001cec:	d802      	bhi.n	8001cf4 <xTaskCheckForTimeOut+0x74>
+ 8001c4c:	687b      	ldr	r3, [r7, #4]
+ 8001c4e:	681a      	ldr	r2, [r3, #0]
+ 8001c50:	4b16      	ldr	r3, [pc, #88]	; (8001cac <xTaskCheckForTimeOut+0xb8>)
+ 8001c52:	681b      	ldr	r3, [r3, #0]
+ 8001c54:	429a      	cmp	r2, r3
+ 8001c56:	d007      	beq.n	8001c68 <xTaskCheckForTimeOut+0x74>
+ 8001c58:	687b      	ldr	r3, [r7, #4]
+ 8001c5a:	685a      	ldr	r2, [r3, #4]
+ 8001c5c:	693b      	ldr	r3, [r7, #16]
+ 8001c5e:	429a      	cmp	r2, r3
+ 8001c60:	d802      	bhi.n	8001c68 <xTaskCheckForTimeOut+0x74>
 			/* The tick count is greater than the time at which
 			vTaskSetTimeout() was called, but has also overflowed since
 			vTaskSetTimeOut() was called.  It must have wrapped all the way
 			around and gone past again. This passed since vTaskSetTimeout()
 			was called. */
 			xReturn = pdTRUE;
- 8001cee:	2301      	movs	r3, #1
- 8001cf0:	617b      	str	r3, [r7, #20]
- 8001cf2:	e018      	b.n	8001d26 <xTaskCheckForTimeOut+0xa6>
+ 8001c62:	2301      	movs	r3, #1
+ 8001c64:	617b      	str	r3, [r7, #20]
+ 8001c66:	e018      	b.n	8001c9a <xTaskCheckForTimeOut+0xa6>
 		}
 		else if( ( ( TickType_t ) ( xConstTickCount - pxTimeOut->xTimeOnEntering ) ) < *pxTicksToWait ) /*lint !e961 Explicit casting is only redundant with some compilers, whereas others require it to prevent integer conversion errors. */
- 8001cf4:	687b      	ldr	r3, [r7, #4]
- 8001cf6:	685b      	ldr	r3, [r3, #4]
- 8001cf8:	693a      	ldr	r2, [r7, #16]
- 8001cfa:	1ad2      	subs	r2, r2, r3
- 8001cfc:	683b      	ldr	r3, [r7, #0]
- 8001cfe:	681b      	ldr	r3, [r3, #0]
- 8001d00:	429a      	cmp	r2, r3
- 8001d02:	d20e      	bcs.n	8001d22 <xTaskCheckForTimeOut+0xa2>
+ 8001c68:	687b      	ldr	r3, [r7, #4]
+ 8001c6a:	685b      	ldr	r3, [r3, #4]
+ 8001c6c:	693a      	ldr	r2, [r7, #16]
+ 8001c6e:	1ad2      	subs	r2, r2, r3
+ 8001c70:	683b      	ldr	r3, [r7, #0]
+ 8001c72:	681b      	ldr	r3, [r3, #0]
+ 8001c74:	429a      	cmp	r2, r3
+ 8001c76:	d20e      	bcs.n	8001c96 <xTaskCheckForTimeOut+0xa2>
 		{
 			/* Not a genuine timeout. Adjust parameters for time remaining. */
 			*pxTicksToWait -= ( xConstTickCount - pxTimeOut->xTimeOnEntering );
- 8001d04:	683b      	ldr	r3, [r7, #0]
- 8001d06:	681a      	ldr	r2, [r3, #0]
- 8001d08:	687b      	ldr	r3, [r7, #4]
- 8001d0a:	6859      	ldr	r1, [r3, #4]
- 8001d0c:	693b      	ldr	r3, [r7, #16]
- 8001d0e:	1acb      	subs	r3, r1, r3
- 8001d10:	441a      	add	r2, r3
- 8001d12:	683b      	ldr	r3, [r7, #0]
- 8001d14:	601a      	str	r2, [r3, #0]
+ 8001c78:	683b      	ldr	r3, [r7, #0]
+ 8001c7a:	681a      	ldr	r2, [r3, #0]
+ 8001c7c:	687b      	ldr	r3, [r7, #4]
+ 8001c7e:	6859      	ldr	r1, [r3, #4]
+ 8001c80:	693b      	ldr	r3, [r7, #16]
+ 8001c82:	1acb      	subs	r3, r1, r3
+ 8001c84:	441a      	add	r2, r3
+ 8001c86:	683b      	ldr	r3, [r7, #0]
+ 8001c88:	601a      	str	r2, [r3, #0]
 			vTaskSetTimeOutState( pxTimeOut );
- 8001d16:	6878      	ldr	r0, [r7, #4]
- 8001d18:	f7ff ff8e 	bl	8001c38 <vTaskSetTimeOutState>
+ 8001c8a:	6878      	ldr	r0, [r7, #4]
+ 8001c8c:	f7ff ff8e 	bl	8001bac <vTaskSetTimeOutState>
 			xReturn = pdFALSE;
- 8001d1c:	2300      	movs	r3, #0
- 8001d1e:	617b      	str	r3, [r7, #20]
- 8001d20:	e001      	b.n	8001d26 <xTaskCheckForTimeOut+0xa6>
+ 8001c90:	2300      	movs	r3, #0
+ 8001c92:	617b      	str	r3, [r7, #20]
+ 8001c94:	e001      	b.n	8001c9a <xTaskCheckForTimeOut+0xa6>
 		}
 		else
 		{
 			xReturn = pdTRUE;
- 8001d22:	2301      	movs	r3, #1
- 8001d24:	617b      	str	r3, [r7, #20]
+ 8001c96:	2301      	movs	r3, #1
+ 8001c98:	617b      	str	r3, [r7, #20]
 		}
 	}
 	taskEXIT_CRITICAL();
- 8001d26:	f7fe fc39 	bl	800059c <vPortExitCritical>
+ 8001c9a:	f7fe fc7f 	bl	800059c <vPortExitCritical>
 
 	return xReturn;
- 8001d2a:	697b      	ldr	r3, [r7, #20]
+ 8001c9e:	697b      	ldr	r3, [r7, #20]
 }
- 8001d2c:	4618      	mov	r0, r3
- 8001d2e:	3718      	adds	r7, #24
- 8001d30:	46bd      	mov	sp, r7
- 8001d32:	bd80      	pop	{r7, pc}
- 8001d34:	20001d20 	.word	0x20001d20
- 8001d38:	20001d34 	.word	0x20001d34
-
-08001d3c <vTaskMissedYield>:
+ 8001ca0:	4618      	mov	r0, r3
+ 8001ca2:	3718      	adds	r7, #24
+ 8001ca4:	46bd      	mov	sp, r7
+ 8001ca6:	bd80      	pop	{r7, pc}
+ 8001ca8:	20001d88 	.word	0x20001d88
+ 8001cac:	20001d9c 	.word	0x20001d9c
+
+08001cb0 <vTaskMissedYield>:
 /*-----------------------------------------------------------*/
 
 void vTaskMissedYield( void )
 {
- 8001d3c:	b480      	push	{r7}
- 8001d3e:	af00      	add	r7, sp, #0
+ 8001cb0:	b480      	push	{r7}
+ 8001cb2:	af00      	add	r7, sp, #0
 	xYieldPending = pdTRUE;
- 8001d40:	4b03      	ldr	r3, [pc, #12]	; (8001d50 <vTaskMissedYield+0x14>)
- 8001d42:	2201      	movs	r2, #1
- 8001d44:	601a      	str	r2, [r3, #0]
+ 8001cb4:	4b03      	ldr	r3, [pc, #12]	; (8001cc4 <vTaskMissedYield+0x14>)
+ 8001cb6:	2201      	movs	r2, #1
+ 8001cb8:	601a      	str	r2, [r3, #0]
 }
- 8001d46:	bf00      	nop
- 8001d48:	46bd      	mov	sp, r7
- 8001d4a:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8001d4e:	4770      	bx	lr
- 8001d50:	20001d30 	.word	0x20001d30
+ 8001cba:	bf00      	nop
+ 8001cbc:	46bd      	mov	sp, r7
+ 8001cbe:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8001cc2:	4770      	bx	lr
+ 8001cc4:	20001d98 	.word	0x20001d98
 
-08001d54 <prvIdleTask>:
+08001cc8 <prvIdleTask>:
  *
  * void prvIdleTask( void *pvParameters );
  *
  */
 static portTASK_FUNCTION( prvIdleTask, pvParameters )
 {
- 8001d54:	b580      	push	{r7, lr}
- 8001d56:	b082      	sub	sp, #8
- 8001d58:	af00      	add	r7, sp, #0
- 8001d5a:	6078      	str	r0, [r7, #4]
+ 8001cc8:	b580      	push	{r7, lr}
+ 8001cca:	b082      	sub	sp, #8
+ 8001ccc:	af00      	add	r7, sp, #0
+ 8001cce:	6078      	str	r0, [r7, #4]
 
 	for( ;; )
 	{
 		/* See if any tasks have deleted themselves - if so then the idle task
 		is responsible for freeing the deleted task's TCB and stack. */
 		prvCheckTasksWaitingTermination();
- 8001d5c:	f000 f854 	bl	8001e08 <prvCheckTasksWaitingTermination>
+ 8001cd0:	f000 f854 	bl	8001d7c <prvCheckTasksWaitingTermination>
 
 			A critical region is not required here as we are just reading from
 			the list, and an occasional incorrect value will not matter.  If
 			the ready list at the idle priority contains more than one task
 			then a task other than the idle task is ready to execute. */
 			if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ tskIDLE_PRIORITY ] ) ) > ( UBaseType_t ) 1 )
- 8001d60:	4b07      	ldr	r3, [pc, #28]	; (8001d80 <prvIdleTask+0x2c>)
- 8001d62:	681b      	ldr	r3, [r3, #0]
- 8001d64:	2b01      	cmp	r3, #1
- 8001d66:	d907      	bls.n	8001d78 <prvIdleTask+0x24>
+ 8001cd4:	4b07      	ldr	r3, [pc, #28]	; (8001cf4 <prvIdleTask+0x2c>)
+ 8001cd6:	681b      	ldr	r3, [r3, #0]
+ 8001cd8:	2b01      	cmp	r3, #1
+ 8001cda:	d907      	bls.n	8001cec <prvIdleTask+0x24>
 			{
 				taskYIELD();
- 8001d68:	4b06      	ldr	r3, [pc, #24]	; (8001d84 <prvIdleTask+0x30>)
- 8001d6a:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
- 8001d6e:	601a      	str	r2, [r3, #0]
- 8001d70:	f3bf 8f4f 	dsb	sy
- 8001d74:	f3bf 8f6f 	isb	sy
+ 8001cdc:	4b06      	ldr	r3, [pc, #24]	; (8001cf8 <prvIdleTask+0x30>)
+ 8001cde:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
+ 8001ce2:	601a      	str	r2, [r3, #0]
+ 8001ce4:	f3bf 8f4f 	dsb	sy
+ 8001ce8:	f3bf 8f6f 	isb	sy
 			/* Call the user defined function from within the idle task.  This
 			allows the application designer to add background functionality
 			without the overhead of a separate task.
 			NOTE: vApplicationIdleHook() MUST NOT, UNDER ANY CIRCUMSTANCES,
 			CALL A FUNCTION THAT MIGHT BLOCK. */
 			vApplicationIdleHook();
- 8001d78:	f001 f929 	bl	8002fce <vApplicationIdleHook>
+ 8001cec:	f001 fc3d 	bl	800356a <vApplicationIdleHook>
 		prvCheckTasksWaitingTermination();
- 8001d7c:	e7ee      	b.n	8001d5c <prvIdleTask+0x8>
- 8001d7e:	bf00      	nop
- 8001d80:	20001c48 	.word	0x20001c48
- 8001d84:	e000ed04 	.word	0xe000ed04
+ 8001cf0:	e7ee      	b.n	8001cd0 <prvIdleTask+0x8>
+ 8001cf2:	bf00      	nop
+ 8001cf4:	20001cb0 	.word	0x20001cb0
+ 8001cf8:	e000ed04 	.word	0xe000ed04
 
-08001d88 <prvInitialiseTaskLists>:
+08001cfc <prvInitialiseTaskLists>:
 
 #endif /* portUSING_MPU_WRAPPERS */
 /*-----------------------------------------------------------*/
 
 static void prvInitialiseTaskLists( void )
 {
- 8001d88:	b580      	push	{r7, lr}
- 8001d8a:	b082      	sub	sp, #8
- 8001d8c:	af00      	add	r7, sp, #0
+ 8001cfc:	b580      	push	{r7, lr}
+ 8001cfe:	b082      	sub	sp, #8
+ 8001d00:	af00      	add	r7, sp, #0
 UBaseType_t uxPriority;
 
 	for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
- 8001d8e:	2300      	movs	r3, #0
- 8001d90:	607b      	str	r3, [r7, #4]
- 8001d92:	e00c      	b.n	8001dae <prvInitialiseTaskLists+0x26>
+ 8001d02:	2300      	movs	r3, #0
+ 8001d04:	607b      	str	r3, [r7, #4]
+ 8001d06:	e00c      	b.n	8001d22 <prvInitialiseTaskLists+0x26>
 	{
 		vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
- 8001d94:	687a      	ldr	r2, [r7, #4]
- 8001d96:	4613      	mov	r3, r2
- 8001d98:	009b      	lsls	r3, r3, #2
- 8001d9a:	4413      	add	r3, r2
- 8001d9c:	009b      	lsls	r3, r3, #2
- 8001d9e:	4a12      	ldr	r2, [pc, #72]	; (8001de8 <prvInitialiseTaskLists+0x60>)
- 8001da0:	4413      	add	r3, r2
- 8001da2:	4618      	mov	r0, r3
- 8001da4:	f7fe fa14 	bl	80001d0 <vListInitialise>
+ 8001d08:	687a      	ldr	r2, [r7, #4]
+ 8001d0a:	4613      	mov	r3, r2
+ 8001d0c:	009b      	lsls	r3, r3, #2
+ 8001d0e:	4413      	add	r3, r2
+ 8001d10:	009b      	lsls	r3, r3, #2
+ 8001d12:	4a12      	ldr	r2, [pc, #72]	; (8001d5c <prvInitialiseTaskLists+0x60>)
+ 8001d14:	4413      	add	r3, r2
+ 8001d16:	4618      	mov	r0, r3
+ 8001d18:	f7fe fa5a 	bl	80001d0 <vListInitialise>
 	for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
- 8001da8:	687b      	ldr	r3, [r7, #4]
- 8001daa:	3301      	adds	r3, #1
- 8001dac:	607b      	str	r3, [r7, #4]
- 8001dae:	687b      	ldr	r3, [r7, #4]
- 8001db0:	2b04      	cmp	r3, #4
- 8001db2:	d9ef      	bls.n	8001d94 <prvInitialiseTaskLists+0xc>
+ 8001d1c:	687b      	ldr	r3, [r7, #4]
+ 8001d1e:	3301      	adds	r3, #1
+ 8001d20:	607b      	str	r3, [r7, #4]
+ 8001d22:	687b      	ldr	r3, [r7, #4]
+ 8001d24:	2b04      	cmp	r3, #4
+ 8001d26:	d9ef      	bls.n	8001d08 <prvInitialiseTaskLists+0xc>
 	}
 
 	vListInitialise( &xDelayedTaskList1 );
- 8001db4:	480d      	ldr	r0, [pc, #52]	; (8001dec <prvInitialiseTaskLists+0x64>)
- 8001db6:	f7fe fa0b 	bl	80001d0 <vListInitialise>
+ 8001d28:	480d      	ldr	r0, [pc, #52]	; (8001d60 <prvInitialiseTaskLists+0x64>)
+ 8001d2a:	f7fe fa51 	bl	80001d0 <vListInitialise>
 	vListInitialise( &xDelayedTaskList2 );
- 8001dba:	480d      	ldr	r0, [pc, #52]	; (8001df0 <prvInitialiseTaskLists+0x68>)
- 8001dbc:	f7fe fa08 	bl	80001d0 <vListInitialise>
+ 8001d2e:	480d      	ldr	r0, [pc, #52]	; (8001d64 <prvInitialiseTaskLists+0x68>)
+ 8001d30:	f7fe fa4e 	bl	80001d0 <vListInitialise>
 	vListInitialise( &xPendingReadyList );
- 8001dc0:	480c      	ldr	r0, [pc, #48]	; (8001df4 <prvInitialiseTaskLists+0x6c>)
- 8001dc2:	f7fe fa05 	bl	80001d0 <vListInitialise>
+ 8001d34:	480c      	ldr	r0, [pc, #48]	; (8001d68 <prvInitialiseTaskLists+0x6c>)
+ 8001d36:	f7fe fa4b 	bl	80001d0 <vListInitialise>
 
 	#if ( INCLUDE_vTaskDelete == 1 )
 	{
 		vListInitialise( &xTasksWaitingTermination );
- 8001dc6:	480c      	ldr	r0, [pc, #48]	; (8001df8 <prvInitialiseTaskLists+0x70>)
- 8001dc8:	f7fe fa02 	bl	80001d0 <vListInitialise>
+ 8001d3a:	480c      	ldr	r0, [pc, #48]	; (8001d6c <prvInitialiseTaskLists+0x70>)
+ 8001d3c:	f7fe fa48 	bl	80001d0 <vListInitialise>
 	}
 	#endif /* INCLUDE_vTaskDelete */
 
 	#if ( INCLUDE_vTaskSuspend == 1 )
 	{
 		vListInitialise( &xSuspendedTaskList );
- 8001dcc:	480b      	ldr	r0, [pc, #44]	; (8001dfc <prvInitialiseTaskLists+0x74>)
- 8001dce:	f7fe f9ff 	bl	80001d0 <vListInitialise>
+ 8001d40:	480b      	ldr	r0, [pc, #44]	; (8001d70 <prvInitialiseTaskLists+0x74>)
+ 8001d42:	f7fe fa45 	bl	80001d0 <vListInitialise>
 	}
 	#endif /* INCLUDE_vTaskSuspend */
 
 	/* Start with pxDelayedTaskList using list1 and the pxOverflowDelayedTaskList
 	using list2. */
 	pxDelayedTaskList = &xDelayedTaskList1;
- 8001dd2:	4b0b      	ldr	r3, [pc, #44]	; (8001e00 <prvInitialiseTaskLists+0x78>)
- 8001dd4:	4a05      	ldr	r2, [pc, #20]	; (8001dec <prvInitialiseTaskLists+0x64>)
- 8001dd6:	601a      	str	r2, [r3, #0]
+ 8001d46:	4b0b      	ldr	r3, [pc, #44]	; (8001d74 <prvInitialiseTaskLists+0x78>)
+ 8001d48:	4a05      	ldr	r2, [pc, #20]	; (8001d60 <prvInitialiseTaskLists+0x64>)
+ 8001d4a:	601a      	str	r2, [r3, #0]
 	pxOverflowDelayedTaskList = &xDelayedTaskList2;
- 8001dd8:	4b0a      	ldr	r3, [pc, #40]	; (8001e04 <prvInitialiseTaskLists+0x7c>)
- 8001dda:	4a05      	ldr	r2, [pc, #20]	; (8001df0 <prvInitialiseTaskLists+0x68>)
- 8001ddc:	601a      	str	r2, [r3, #0]
+ 8001d4c:	4b0a      	ldr	r3, [pc, #40]	; (8001d78 <prvInitialiseTaskLists+0x7c>)
+ 8001d4e:	4a05      	ldr	r2, [pc, #20]	; (8001d64 <prvInitialiseTaskLists+0x68>)
+ 8001d50:	601a      	str	r2, [r3, #0]
 }
- 8001dde:	bf00      	nop
- 8001de0:	3708      	adds	r7, #8
- 8001de2:	46bd      	mov	sp, r7
- 8001de4:	bd80      	pop	{r7, pc}
- 8001de6:	bf00      	nop
- 8001de8:	20001c48 	.word	0x20001c48
- 8001dec:	20001cac 	.word	0x20001cac
- 8001df0:	20001cc0 	.word	0x20001cc0
- 8001df4:	20001cdc 	.word	0x20001cdc
- 8001df8:	20001cf0 	.word	0x20001cf0
- 8001dfc:	20001d08 	.word	0x20001d08
- 8001e00:	20001cd4 	.word	0x20001cd4
- 8001e04:	20001cd8 	.word	0x20001cd8
-
-08001e08 <prvCheckTasksWaitingTermination>:
+ 8001d52:	bf00      	nop
+ 8001d54:	3708      	adds	r7, #8
+ 8001d56:	46bd      	mov	sp, r7
+ 8001d58:	bd80      	pop	{r7, pc}
+ 8001d5a:	bf00      	nop
+ 8001d5c:	20001cb0 	.word	0x20001cb0
+ 8001d60:	20001d14 	.word	0x20001d14
+ 8001d64:	20001d28 	.word	0x20001d28
+ 8001d68:	20001d44 	.word	0x20001d44
+ 8001d6c:	20001d58 	.word	0x20001d58
+ 8001d70:	20001d70 	.word	0x20001d70
+ 8001d74:	20001d3c 	.word	0x20001d3c
+ 8001d78:	20001d40 	.word	0x20001d40
+
+08001d7c <prvCheckTasksWaitingTermination>:
 /*-----------------------------------------------------------*/
 
 static void prvCheckTasksWaitingTermination( void )
 {
- 8001e08:	b580      	push	{r7, lr}
- 8001e0a:	b082      	sub	sp, #8
- 8001e0c:	af00      	add	r7, sp, #0
+ 8001d7c:	b580      	push	{r7, lr}
+ 8001d7e:	b082      	sub	sp, #8
+ 8001d80:	af00      	add	r7, sp, #0
 	{
 		BaseType_t xListIsEmpty;
 
 		/* ucTasksDeleted is used to prevent vTaskSuspendAll() being called
 		too often in the idle task. */
 		while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
- 8001e0e:	e028      	b.n	8001e62 <prvCheckTasksWaitingTermination+0x5a>
+ 8001d82:	e028      	b.n	8001dd6 <prvCheckTasksWaitingTermination+0x5a>
 		{
 			vTaskSuspendAll();
- 8001e10:	f7ff fc64 	bl	80016dc <vTaskSuspendAll>
+ 8001d84:	f7ff fc64 	bl	8001650 <vTaskSuspendAll>
 			{
 				xListIsEmpty = listLIST_IS_EMPTY( &xTasksWaitingTermination );
- 8001e14:	4b17      	ldr	r3, [pc, #92]	; (8001e74 <prvCheckTasksWaitingTermination+0x6c>)
- 8001e16:	681b      	ldr	r3, [r3, #0]
- 8001e18:	2b00      	cmp	r3, #0
- 8001e1a:	bf0c      	ite	eq
- 8001e1c:	2301      	moveq	r3, #1
- 8001e1e:	2300      	movne	r3, #0
- 8001e20:	b2db      	uxtb	r3, r3
- 8001e22:	607b      	str	r3, [r7, #4]
+ 8001d88:	4b17      	ldr	r3, [pc, #92]	; (8001de8 <prvCheckTasksWaitingTermination+0x6c>)
+ 8001d8a:	681b      	ldr	r3, [r3, #0]
+ 8001d8c:	2b00      	cmp	r3, #0
+ 8001d8e:	bf0c      	ite	eq
+ 8001d90:	2301      	moveq	r3, #1
+ 8001d92:	2300      	movne	r3, #0
+ 8001d94:	b2db      	uxtb	r3, r3
+ 8001d96:	607b      	str	r3, [r7, #4]
 			}
 			( void ) xTaskResumeAll();
- 8001e24:	f7ff fc68 	bl	80016f8 <xTaskResumeAll>
+ 8001d98:	f7ff fc68 	bl	800166c <xTaskResumeAll>
 
 			if( xListIsEmpty == pdFALSE )
- 8001e28:	687b      	ldr	r3, [r7, #4]
- 8001e2a:	2b00      	cmp	r3, #0
- 8001e2c:	d119      	bne.n	8001e62 <prvCheckTasksWaitingTermination+0x5a>
+ 8001d9c:	687b      	ldr	r3, [r7, #4]
+ 8001d9e:	2b00      	cmp	r3, #0
+ 8001da0:	d119      	bne.n	8001dd6 <prvCheckTasksWaitingTermination+0x5a>
 			{
 				TCB_t *pxTCB;
 
 				taskENTER_CRITICAL();
- 8001e2e:	f7fe fb87 	bl	8000540 <vPortEnterCritical>
+ 8001da2:	f7fe fbcd 	bl	8000540 <vPortEnterCritical>
 				{
 					pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( ( &xTasksWaitingTermination ) );
- 8001e32:	4b10      	ldr	r3, [pc, #64]	; (8001e74 <prvCheckTasksWaitingTermination+0x6c>)
- 8001e34:	68db      	ldr	r3, [r3, #12]
- 8001e36:	68db      	ldr	r3, [r3, #12]
- 8001e38:	603b      	str	r3, [r7, #0]
+ 8001da6:	4b10      	ldr	r3, [pc, #64]	; (8001de8 <prvCheckTasksWaitingTermination+0x6c>)
+ 8001da8:	68db      	ldr	r3, [r3, #12]
+ 8001daa:	68db      	ldr	r3, [r3, #12]
+ 8001dac:	603b      	str	r3, [r7, #0]
 					( void ) uxListRemove( &( pxTCB->xStateListItem ) );
- 8001e3a:	683b      	ldr	r3, [r7, #0]
- 8001e3c:	3304      	adds	r3, #4
- 8001e3e:	4618      	mov	r0, r3
- 8001e40:	f7fe fa50 	bl	80002e4 <uxListRemove>
+ 8001dae:	683b      	ldr	r3, [r7, #0]
+ 8001db0:	3304      	adds	r3, #4
+ 8001db2:	4618      	mov	r0, r3
+ 8001db4:	f7fe fa96 	bl	80002e4 <uxListRemove>
 					--uxCurrentNumberOfTasks;
- 8001e44:	4b0c      	ldr	r3, [pc, #48]	; (8001e78 <prvCheckTasksWaitingTermination+0x70>)
- 8001e46:	681b      	ldr	r3, [r3, #0]
- 8001e48:	3b01      	subs	r3, #1
- 8001e4a:	4a0b      	ldr	r2, [pc, #44]	; (8001e78 <prvCheckTasksWaitingTermination+0x70>)
- 8001e4c:	6013      	str	r3, [r2, #0]
+ 8001db8:	4b0c      	ldr	r3, [pc, #48]	; (8001dec <prvCheckTasksWaitingTermination+0x70>)
+ 8001dba:	681b      	ldr	r3, [r3, #0]
+ 8001dbc:	3b01      	subs	r3, #1
+ 8001dbe:	4a0b      	ldr	r2, [pc, #44]	; (8001dec <prvCheckTasksWaitingTermination+0x70>)
+ 8001dc0:	6013      	str	r3, [r2, #0]
 					--uxDeletedTasksWaitingCleanUp;
- 8001e4e:	4b0b      	ldr	r3, [pc, #44]	; (8001e7c <prvCheckTasksWaitingTermination+0x74>)
- 8001e50:	681b      	ldr	r3, [r3, #0]
- 8001e52:	3b01      	subs	r3, #1
- 8001e54:	4a09      	ldr	r2, [pc, #36]	; (8001e7c <prvCheckTasksWaitingTermination+0x74>)
- 8001e56:	6013      	str	r3, [r2, #0]
+ 8001dc2:	4b0b      	ldr	r3, [pc, #44]	; (8001df0 <prvCheckTasksWaitingTermination+0x74>)
+ 8001dc4:	681b      	ldr	r3, [r3, #0]
+ 8001dc6:	3b01      	subs	r3, #1
+ 8001dc8:	4a09      	ldr	r2, [pc, #36]	; (8001df0 <prvCheckTasksWaitingTermination+0x74>)
+ 8001dca:	6013      	str	r3, [r2, #0]
 				}
 				taskEXIT_CRITICAL();
- 8001e58:	f7fe fba0 	bl	800059c <vPortExitCritical>
+ 8001dcc:	f7fe fbe6 	bl	800059c <vPortExitCritical>
 
 				prvDeleteTCB( pxTCB );
- 8001e5c:	6838      	ldr	r0, [r7, #0]
- 8001e5e:	f000 f80f 	bl	8001e80 <prvDeleteTCB>
+ 8001dd0:	6838      	ldr	r0, [r7, #0]
+ 8001dd2:	f000 f80f 	bl	8001df4 <prvDeleteTCB>
 		while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
- 8001e62:	4b06      	ldr	r3, [pc, #24]	; (8001e7c <prvCheckTasksWaitingTermination+0x74>)
- 8001e64:	681b      	ldr	r3, [r3, #0]
- 8001e66:	2b00      	cmp	r3, #0
- 8001e68:	d1d2      	bne.n	8001e10 <prvCheckTasksWaitingTermination+0x8>
+ 8001dd6:	4b06      	ldr	r3, [pc, #24]	; (8001df0 <prvCheckTasksWaitingTermination+0x74>)
+ 8001dd8:	681b      	ldr	r3, [r3, #0]
+ 8001dda:	2b00      	cmp	r3, #0
+ 8001ddc:	d1d2      	bne.n	8001d84 <prvCheckTasksWaitingTermination+0x8>
 				mtCOVERAGE_TEST_MARKER();
 			}
 		}
 	}
 	#endif /* INCLUDE_vTaskDelete */
 }
- 8001e6a:	bf00      	nop
- 8001e6c:	3708      	adds	r7, #8
- 8001e6e:	46bd      	mov	sp, r7
- 8001e70:	bd80      	pop	{r7, pc}
- 8001e72:	bf00      	nop
- 8001e74:	20001cf0 	.word	0x20001cf0
- 8001e78:	20001d1c 	.word	0x20001d1c
- 8001e7c:	20001d04 	.word	0x20001d04
+ 8001dde:	bf00      	nop
+ 8001de0:	3708      	adds	r7, #8
+ 8001de2:	46bd      	mov	sp, r7
+ 8001de4:	bd80      	pop	{r7, pc}
+ 8001de6:	bf00      	nop
+ 8001de8:	20001d58 	.word	0x20001d58
+ 8001dec:	20001d84 	.word	0x20001d84
+ 8001df0:	20001d6c 	.word	0x20001d6c
 
-08001e80 <prvDeleteTCB>:
+08001df4 <prvDeleteTCB>:
 /*-----------------------------------------------------------*/
 
 #if ( INCLUDE_vTaskDelete == 1 )
 
 	static void prvDeleteTCB( TCB_t *pxTCB )
 	{
- 8001e80:	b580      	push	{r7, lr}
- 8001e82:	b082      	sub	sp, #8
- 8001e84:	af00      	add	r7, sp, #0
- 8001e86:	6078      	str	r0, [r7, #4]
+ 8001df4:	b580      	push	{r7, lr}
+ 8001df6:	b082      	sub	sp, #8
+ 8001df8:	af00      	add	r7, sp, #0
+ 8001dfa:	6078      	str	r0, [r7, #4]
 
 		#if( ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 0 ) && ( portUSING_MPU_WRAPPERS == 0 ) )
 		{
 			/* The task can only have been allocated dynamically - free both
 			the stack and TCB. */
 			vPortFree( pxTCB->pxStack );
- 8001e88:	687b      	ldr	r3, [r7, #4]
- 8001e8a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
- 8001e8c:	4618      	mov	r0, r3
- 8001e8e:	f7fe fcb1 	bl	80007f4 <vPortFree>
+ 8001dfc:	687b      	ldr	r3, [r7, #4]
+ 8001dfe:	6b1b      	ldr	r3, [r3, #48]	; 0x30
+ 8001e00:	4618      	mov	r0, r3
+ 8001e02:	f7fe fcf7 	bl	80007f4 <vPortFree>
 			vPortFree( pxTCB );
- 8001e92:	6878      	ldr	r0, [r7, #4]
- 8001e94:	f7fe fcae 	bl	80007f4 <vPortFree>
+ 8001e06:	6878      	ldr	r0, [r7, #4]
+ 8001e08:	f7fe fcf4 	bl	80007f4 <vPortFree>
 				configASSERT( pxTCB->ucStaticallyAllocated == tskSTATICALLY_ALLOCATED_STACK_AND_TCB	)
 				mtCOVERAGE_TEST_MARKER();
 			}
 		}
 		#endif /* configSUPPORT_DYNAMIC_ALLOCATION */
 	}
- 8001e98:	bf00      	nop
- 8001e9a:	3708      	adds	r7, #8
- 8001e9c:	46bd      	mov	sp, r7
- 8001e9e:	bd80      	pop	{r7, pc}
+ 8001e0c:	bf00      	nop
+ 8001e0e:	3708      	adds	r7, #8
+ 8001e10:	46bd      	mov	sp, r7
+ 8001e12:	bd80      	pop	{r7, pc}
 
-08001ea0 <prvResetNextTaskUnblockTime>:
+08001e14 <prvResetNextTaskUnblockTime>:
 
 #endif /* INCLUDE_vTaskDelete */
 /*-----------------------------------------------------------*/
 
 static void prvResetNextTaskUnblockTime( void )
 {
- 8001ea0:	b480      	push	{r7}
- 8001ea2:	b083      	sub	sp, #12
- 8001ea4:	af00      	add	r7, sp, #0
+ 8001e14:	b480      	push	{r7}
+ 8001e16:	b083      	sub	sp, #12
+ 8001e18:	af00      	add	r7, sp, #0
 TCB_t *pxTCB;
 
 	if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
- 8001ea6:	4b0f      	ldr	r3, [pc, #60]	; (8001ee4 <prvResetNextTaskUnblockTime+0x44>)
- 8001ea8:	681b      	ldr	r3, [r3, #0]
- 8001eaa:	681b      	ldr	r3, [r3, #0]
- 8001eac:	2b00      	cmp	r3, #0
- 8001eae:	d101      	bne.n	8001eb4 <prvResetNextTaskUnblockTime+0x14>
- 8001eb0:	2301      	movs	r3, #1
- 8001eb2:	e000      	b.n	8001eb6 <prvResetNextTaskUnblockTime+0x16>
- 8001eb4:	2300      	movs	r3, #0
- 8001eb6:	2b00      	cmp	r3, #0
- 8001eb8:	d004      	beq.n	8001ec4 <prvResetNextTaskUnblockTime+0x24>
+ 8001e1a:	4b0f      	ldr	r3, [pc, #60]	; (8001e58 <prvResetNextTaskUnblockTime+0x44>)
+ 8001e1c:	681b      	ldr	r3, [r3, #0]
+ 8001e1e:	681b      	ldr	r3, [r3, #0]
+ 8001e20:	2b00      	cmp	r3, #0
+ 8001e22:	d101      	bne.n	8001e28 <prvResetNextTaskUnblockTime+0x14>
+ 8001e24:	2301      	movs	r3, #1
+ 8001e26:	e000      	b.n	8001e2a <prvResetNextTaskUnblockTime+0x16>
+ 8001e28:	2300      	movs	r3, #0
+ 8001e2a:	2b00      	cmp	r3, #0
+ 8001e2c:	d004      	beq.n	8001e38 <prvResetNextTaskUnblockTime+0x24>
 	{
 		/* The new current delayed list is empty.  Set xNextTaskUnblockTime to
 		the maximum possible value so it is	extremely unlikely that the
 		if( xTickCount >= xNextTaskUnblockTime ) test will pass until
 		there is an item in the delayed list. */
 		xNextTaskUnblockTime = portMAX_DELAY;
- 8001eba:	4b0b      	ldr	r3, [pc, #44]	; (8001ee8 <prvResetNextTaskUnblockTime+0x48>)
- 8001ebc:	f04f 32ff 	mov.w	r2, #4294967295
- 8001ec0:	601a      	str	r2, [r3, #0]
+ 8001e2e:	4b0b      	ldr	r3, [pc, #44]	; (8001e5c <prvResetNextTaskUnblockTime+0x48>)
+ 8001e30:	f04f 32ff 	mov.w	r2, #4294967295
+ 8001e34:	601a      	str	r2, [r3, #0]
 		which the task at the head of the delayed list should be removed
 		from the Blocked state. */
 		( pxTCB ) = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList );
 		xNextTaskUnblockTime = listGET_LIST_ITEM_VALUE( &( ( pxTCB )->xStateListItem ) );
 	}
 }
- 8001ec2:	e008      	b.n	8001ed6 <prvResetNextTaskUnblockTime+0x36>
+ 8001e36:	e008      	b.n	8001e4a <prvResetNextTaskUnblockTime+0x36>
 		( pxTCB ) = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList );
- 8001ec4:	4b07      	ldr	r3, [pc, #28]	; (8001ee4 <prvResetNextTaskUnblockTime+0x44>)
- 8001ec6:	681b      	ldr	r3, [r3, #0]
- 8001ec8:	68db      	ldr	r3, [r3, #12]
- 8001eca:	68db      	ldr	r3, [r3, #12]
- 8001ecc:	607b      	str	r3, [r7, #4]
+ 8001e38:	4b07      	ldr	r3, [pc, #28]	; (8001e58 <prvResetNextTaskUnblockTime+0x44>)
+ 8001e3a:	681b      	ldr	r3, [r3, #0]
+ 8001e3c:	68db      	ldr	r3, [r3, #12]
+ 8001e3e:	68db      	ldr	r3, [r3, #12]
+ 8001e40:	607b      	str	r3, [r7, #4]
 		xNextTaskUnblockTime = listGET_LIST_ITEM_VALUE( &( ( pxTCB )->xStateListItem ) );
- 8001ece:	687b      	ldr	r3, [r7, #4]
- 8001ed0:	685b      	ldr	r3, [r3, #4]
- 8001ed2:	4a05      	ldr	r2, [pc, #20]	; (8001ee8 <prvResetNextTaskUnblockTime+0x48>)
- 8001ed4:	6013      	str	r3, [r2, #0]
-}
- 8001ed6:	bf00      	nop
- 8001ed8:	370c      	adds	r7, #12
- 8001eda:	46bd      	mov	sp, r7
- 8001edc:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8001ee0:	4770      	bx	lr
- 8001ee2:	bf00      	nop
- 8001ee4:	20001cd4 	.word	0x20001cd4
- 8001ee8:	20001d3c 	.word	0x20001d3c
-
-08001eec <xTaskGetSchedulerState>:
+ 8001e42:	687b      	ldr	r3, [r7, #4]
+ 8001e44:	685b      	ldr	r3, [r3, #4]
+ 8001e46:	4a05      	ldr	r2, [pc, #20]	; (8001e5c <prvResetNextTaskUnblockTime+0x48>)
+ 8001e48:	6013      	str	r3, [r2, #0]
+}
+ 8001e4a:	bf00      	nop
+ 8001e4c:	370c      	adds	r7, #12
+ 8001e4e:	46bd      	mov	sp, r7
+ 8001e50:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8001e54:	4770      	bx	lr
+ 8001e56:	bf00      	nop
+ 8001e58:	20001d3c 	.word	0x20001d3c
+ 8001e5c:	20001da4 	.word	0x20001da4
+
+08001e60 <xTaskGetSchedulerState>:
 /*-----------------------------------------------------------*/
 
 #if ( ( INCLUDE_xTaskGetSchedulerState == 1 ) || ( configUSE_TIMERS == 1 ) )
 
 	BaseType_t xTaskGetSchedulerState( void )
 	{
- 8001eec:	b480      	push	{r7}
- 8001eee:	b083      	sub	sp, #12
- 8001ef0:	af00      	add	r7, sp, #0
+ 8001e60:	b480      	push	{r7}
+ 8001e62:	b083      	sub	sp, #12
+ 8001e64:	af00      	add	r7, sp, #0
 	BaseType_t xReturn;
 
 		if( xSchedulerRunning == pdFALSE )
- 8001ef2:	4b0b      	ldr	r3, [pc, #44]	; (8001f20 <xTaskGetSchedulerState+0x34>)
- 8001ef4:	681b      	ldr	r3, [r3, #0]
- 8001ef6:	2b00      	cmp	r3, #0
- 8001ef8:	d102      	bne.n	8001f00 <xTaskGetSchedulerState+0x14>
+ 8001e66:	4b0b      	ldr	r3, [pc, #44]	; (8001e94 <xTaskGetSchedulerState+0x34>)
+ 8001e68:	681b      	ldr	r3, [r3, #0]
+ 8001e6a:	2b00      	cmp	r3, #0
+ 8001e6c:	d102      	bne.n	8001e74 <xTaskGetSchedulerState+0x14>
 		{
 			xReturn = taskSCHEDULER_NOT_STARTED;
- 8001efa:	2301      	movs	r3, #1
- 8001efc:	607b      	str	r3, [r7, #4]
- 8001efe:	e008      	b.n	8001f12 <xTaskGetSchedulerState+0x26>
+ 8001e6e:	2301      	movs	r3, #1
+ 8001e70:	607b      	str	r3, [r7, #4]
+ 8001e72:	e008      	b.n	8001e86 <xTaskGetSchedulerState+0x26>
 		}
 		else
 		{
 			if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
- 8001f00:	4b08      	ldr	r3, [pc, #32]	; (8001f24 <xTaskGetSchedulerState+0x38>)
- 8001f02:	681b      	ldr	r3, [r3, #0]
- 8001f04:	2b00      	cmp	r3, #0
- 8001f06:	d102      	bne.n	8001f0e <xTaskGetSchedulerState+0x22>
+ 8001e74:	4b08      	ldr	r3, [pc, #32]	; (8001e98 <xTaskGetSchedulerState+0x38>)
+ 8001e76:	681b      	ldr	r3, [r3, #0]
+ 8001e78:	2b00      	cmp	r3, #0
+ 8001e7a:	d102      	bne.n	8001e82 <xTaskGetSchedulerState+0x22>
 			{
 				xReturn = taskSCHEDULER_RUNNING;
- 8001f08:	2302      	movs	r3, #2
- 8001f0a:	607b      	str	r3, [r7, #4]
- 8001f0c:	e001      	b.n	8001f12 <xTaskGetSchedulerState+0x26>
+ 8001e7c:	2302      	movs	r3, #2
+ 8001e7e:	607b      	str	r3, [r7, #4]
+ 8001e80:	e001      	b.n	8001e86 <xTaskGetSchedulerState+0x26>
 			}
 			else
 			{
 				xReturn = taskSCHEDULER_SUSPENDED;
- 8001f0e:	2300      	movs	r3, #0
- 8001f10:	607b      	str	r3, [r7, #4]
+ 8001e82:	2300      	movs	r3, #0
+ 8001e84:	607b      	str	r3, [r7, #4]
 			}
 		}
 
 		return xReturn;
- 8001f12:	687b      	ldr	r3, [r7, #4]
+ 8001e86:	687b      	ldr	r3, [r7, #4]
 	}
- 8001f14:	4618      	mov	r0, r3
- 8001f16:	370c      	adds	r7, #12
- 8001f18:	46bd      	mov	sp, r7
- 8001f1a:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8001f1e:	4770      	bx	lr
- 8001f20:	20001d28 	.word	0x20001d28
- 8001f24:	20001d44 	.word	0x20001d44
-
-08001f28 <vTaskPriorityInherit>:
+ 8001e88:	4618      	mov	r0, r3
+ 8001e8a:	370c      	adds	r7, #12
+ 8001e8c:	46bd      	mov	sp, r7
+ 8001e8e:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8001e92:	4770      	bx	lr
+ 8001e94:	20001d90 	.word	0x20001d90
+ 8001e98:	20001dac 	.word	0x20001dac
+
+08001e9c <vTaskPriorityInherit>:
 /*-----------------------------------------------------------*/
 
 #if ( configUSE_MUTEXES == 1 )
 
 	void vTaskPriorityInherit( TaskHandle_t const pxMutexHolder )
 	{
- 8001f28:	b580      	push	{r7, lr}
- 8001f2a:	b084      	sub	sp, #16
- 8001f2c:	af00      	add	r7, sp, #0
- 8001f2e:	6078      	str	r0, [r7, #4]
+ 8001e9c:	b580      	push	{r7, lr}
+ 8001e9e:	b084      	sub	sp, #16
+ 8001ea0:	af00      	add	r7, sp, #0
+ 8001ea2:	6078      	str	r0, [r7, #4]
 	TCB_t * const pxTCB = ( TCB_t * ) pxMutexHolder;
- 8001f30:	687b      	ldr	r3, [r7, #4]
- 8001f32:	60fb      	str	r3, [r7, #12]
+ 8001ea4:	687b      	ldr	r3, [r7, #4]
+ 8001ea6:	60fb      	str	r3, [r7, #12]
 
 		/* If the mutex was given back by an interrupt while the queue was
 		locked then the mutex holder might now be NULL. */
 		if( pxMutexHolder != NULL )
- 8001f34:	687b      	ldr	r3, [r7, #4]
- 8001f36:	2b00      	cmp	r3, #0
- 8001f38:	d062      	beq.n	8002000 <vTaskPriorityInherit+0xd8>
+ 8001ea8:	687b      	ldr	r3, [r7, #4]
+ 8001eaa:	2b00      	cmp	r3, #0
+ 8001eac:	d062      	beq.n	8001f74 <vTaskPriorityInherit+0xd8>
 		{
 			/* If the holder of the mutex has a priority below the priority of
 			the task attempting to obtain the mutex then it will temporarily
 			inherit the priority of the task attempting to obtain the mutex. */
 			if( pxTCB->uxPriority < pxCurrentTCB->uxPriority )
- 8001f3a:	68fb      	ldr	r3, [r7, #12]
- 8001f3c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 8001f3e:	4b32      	ldr	r3, [pc, #200]	; (8002008 <vTaskPriorityInherit+0xe0>)
- 8001f40:	681b      	ldr	r3, [r3, #0]
- 8001f42:	6adb      	ldr	r3, [r3, #44]	; 0x2c
- 8001f44:	429a      	cmp	r2, r3
- 8001f46:	d25b      	bcs.n	8002000 <vTaskPriorityInherit+0xd8>
+ 8001eae:	68fb      	ldr	r3, [r7, #12]
+ 8001eb0:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 8001eb2:	4b32      	ldr	r3, [pc, #200]	; (8001f7c <vTaskPriorityInherit+0xe0>)
+ 8001eb4:	681b      	ldr	r3, [r3, #0]
+ 8001eb6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 8001eb8:	429a      	cmp	r2, r3
+ 8001eba:	d25b      	bcs.n	8001f74 <vTaskPriorityInherit+0xd8>
 			{
 				/* Adjust the mutex holder state to account for its new
 				priority.  Only reset the event list item value if the value is
 				not	being used for anything else. */
 				if( ( listGET_LIST_ITEM_VALUE( &( pxTCB->xEventListItem ) ) & taskEVENT_LIST_ITEM_VALUE_IN_USE ) == 0UL )
- 8001f48:	68fb      	ldr	r3, [r7, #12]
- 8001f4a:	699b      	ldr	r3, [r3, #24]
- 8001f4c:	2b00      	cmp	r3, #0
- 8001f4e:	db06      	blt.n	8001f5e <vTaskPriorityInherit+0x36>
+ 8001ebc:	68fb      	ldr	r3, [r7, #12]
+ 8001ebe:	699b      	ldr	r3, [r3, #24]
+ 8001ec0:	2b00      	cmp	r3, #0
+ 8001ec2:	db06      	blt.n	8001ed2 <vTaskPriorityInherit+0x36>
 				{
 					listSET_LIST_ITEM_VALUE( &( pxTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) pxCurrentTCB->uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
- 8001f50:	4b2d      	ldr	r3, [pc, #180]	; (8002008 <vTaskPriorityInherit+0xe0>)
- 8001f52:	681b      	ldr	r3, [r3, #0]
- 8001f54:	6adb      	ldr	r3, [r3, #44]	; 0x2c
- 8001f56:	f1c3 0205 	rsb	r2, r3, #5
- 8001f5a:	68fb      	ldr	r3, [r7, #12]
- 8001f5c:	619a      	str	r2, [r3, #24]
+ 8001ec4:	4b2d      	ldr	r3, [pc, #180]	; (8001f7c <vTaskPriorityInherit+0xe0>)
+ 8001ec6:	681b      	ldr	r3, [r3, #0]
+ 8001ec8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 8001eca:	f1c3 0205 	rsb	r2, r3, #5
+ 8001ece:	68fb      	ldr	r3, [r7, #12]
+ 8001ed0:	619a      	str	r2, [r3, #24]
 					mtCOVERAGE_TEST_MARKER();
 				}
 
 				/* If the task being modified is in the ready state it will need
 				to be moved into a new list. */
 				if( listIS_CONTAINED_WITHIN( &( pxReadyTasksLists[ pxTCB->uxPriority ] ), &( pxTCB->xStateListItem ) ) != pdFALSE )
- 8001f5e:	68fb      	ldr	r3, [r7, #12]
- 8001f60:	6959      	ldr	r1, [r3, #20]
- 8001f62:	68fb      	ldr	r3, [r7, #12]
- 8001f64:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 8001f66:	4613      	mov	r3, r2
- 8001f68:	009b      	lsls	r3, r3, #2
- 8001f6a:	4413      	add	r3, r2
- 8001f6c:	009b      	lsls	r3, r3, #2
- 8001f6e:	4a27      	ldr	r2, [pc, #156]	; (800200c <vTaskPriorityInherit+0xe4>)
- 8001f70:	4413      	add	r3, r2
- 8001f72:	4299      	cmp	r1, r3
- 8001f74:	d101      	bne.n	8001f7a <vTaskPriorityInherit+0x52>
- 8001f76:	2301      	movs	r3, #1
- 8001f78:	e000      	b.n	8001f7c <vTaskPriorityInherit+0x54>
- 8001f7a:	2300      	movs	r3, #0
- 8001f7c:	2b00      	cmp	r3, #0
- 8001f7e:	d03a      	beq.n	8001ff6 <vTaskPriorityInherit+0xce>
+ 8001ed2:	68fb      	ldr	r3, [r7, #12]
+ 8001ed4:	6959      	ldr	r1, [r3, #20]
+ 8001ed6:	68fb      	ldr	r3, [r7, #12]
+ 8001ed8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 8001eda:	4613      	mov	r3, r2
+ 8001edc:	009b      	lsls	r3, r3, #2
+ 8001ede:	4413      	add	r3, r2
+ 8001ee0:	009b      	lsls	r3, r3, #2
+ 8001ee2:	4a27      	ldr	r2, [pc, #156]	; (8001f80 <vTaskPriorityInherit+0xe4>)
+ 8001ee4:	4413      	add	r3, r2
+ 8001ee6:	4299      	cmp	r1, r3
+ 8001ee8:	d101      	bne.n	8001eee <vTaskPriorityInherit+0x52>
+ 8001eea:	2301      	movs	r3, #1
+ 8001eec:	e000      	b.n	8001ef0 <vTaskPriorityInherit+0x54>
+ 8001eee:	2300      	movs	r3, #0
+ 8001ef0:	2b00      	cmp	r3, #0
+ 8001ef2:	d03a      	beq.n	8001f6a <vTaskPriorityInherit+0xce>
 				{
 					if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
- 8001f80:	68fb      	ldr	r3, [r7, #12]
- 8001f82:	3304      	adds	r3, #4
- 8001f84:	4618      	mov	r0, r3
- 8001f86:	f7fe f9ad 	bl	80002e4 <uxListRemove>
- 8001f8a:	4603      	mov	r3, r0
- 8001f8c:	2b00      	cmp	r3, #0
- 8001f8e:	d115      	bne.n	8001fbc <vTaskPriorityInherit+0x94>
+ 8001ef4:	68fb      	ldr	r3, [r7, #12]
+ 8001ef6:	3304      	adds	r3, #4
+ 8001ef8:	4618      	mov	r0, r3
+ 8001efa:	f7fe f9f3 	bl	80002e4 <uxListRemove>
+ 8001efe:	4603      	mov	r3, r0
+ 8001f00:	2b00      	cmp	r3, #0
+ 8001f02:	d115      	bne.n	8001f30 <vTaskPriorityInherit+0x94>
 					{
 						taskRESET_READY_PRIORITY( pxTCB->uxPriority );
- 8001f90:	68fb      	ldr	r3, [r7, #12]
- 8001f92:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 8001f94:	491d      	ldr	r1, [pc, #116]	; (800200c <vTaskPriorityInherit+0xe4>)
- 8001f96:	4613      	mov	r3, r2
- 8001f98:	009b      	lsls	r3, r3, #2
- 8001f9a:	4413      	add	r3, r2
- 8001f9c:	009b      	lsls	r3, r3, #2
- 8001f9e:	440b      	add	r3, r1
- 8001fa0:	681b      	ldr	r3, [r3, #0]
- 8001fa2:	2b00      	cmp	r3, #0
- 8001fa4:	d10a      	bne.n	8001fbc <vTaskPriorityInherit+0x94>
- 8001fa6:	68fb      	ldr	r3, [r7, #12]
- 8001fa8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
- 8001faa:	2201      	movs	r2, #1
- 8001fac:	fa02 f303 	lsl.w	r3, r2, r3
- 8001fb0:	43da      	mvns	r2, r3
- 8001fb2:	4b17      	ldr	r3, [pc, #92]	; (8002010 <vTaskPriorityInherit+0xe8>)
- 8001fb4:	681b      	ldr	r3, [r3, #0]
- 8001fb6:	4013      	ands	r3, r2
- 8001fb8:	4a15      	ldr	r2, [pc, #84]	; (8002010 <vTaskPriorityInherit+0xe8>)
- 8001fba:	6013      	str	r3, [r2, #0]
+ 8001f04:	68fb      	ldr	r3, [r7, #12]
+ 8001f06:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 8001f08:	491d      	ldr	r1, [pc, #116]	; (8001f80 <vTaskPriorityInherit+0xe4>)
+ 8001f0a:	4613      	mov	r3, r2
+ 8001f0c:	009b      	lsls	r3, r3, #2
+ 8001f0e:	4413      	add	r3, r2
+ 8001f10:	009b      	lsls	r3, r3, #2
+ 8001f12:	440b      	add	r3, r1
+ 8001f14:	681b      	ldr	r3, [r3, #0]
+ 8001f16:	2b00      	cmp	r3, #0
+ 8001f18:	d10a      	bne.n	8001f30 <vTaskPriorityInherit+0x94>
+ 8001f1a:	68fb      	ldr	r3, [r7, #12]
+ 8001f1c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 8001f1e:	2201      	movs	r2, #1
+ 8001f20:	fa02 f303 	lsl.w	r3, r2, r3
+ 8001f24:	43da      	mvns	r2, r3
+ 8001f26:	4b17      	ldr	r3, [pc, #92]	; (8001f84 <vTaskPriorityInherit+0xe8>)
+ 8001f28:	681b      	ldr	r3, [r3, #0]
+ 8001f2a:	4013      	ands	r3, r2
+ 8001f2c:	4a15      	ldr	r2, [pc, #84]	; (8001f84 <vTaskPriorityInherit+0xe8>)
+ 8001f2e:	6013      	str	r3, [r2, #0]
 					{
 						mtCOVERAGE_TEST_MARKER();
 					}
 
 					/* Inherit the priority before being moved into the new list. */
 					pxTCB->uxPriority = pxCurrentTCB->uxPriority;
- 8001fbc:	4b12      	ldr	r3, [pc, #72]	; (8002008 <vTaskPriorityInherit+0xe0>)
- 8001fbe:	681b      	ldr	r3, [r3, #0]
- 8001fc0:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 8001fc2:	68fb      	ldr	r3, [r7, #12]
- 8001fc4:	62da      	str	r2, [r3, #44]	; 0x2c
+ 8001f30:	4b12      	ldr	r3, [pc, #72]	; (8001f7c <vTaskPriorityInherit+0xe0>)
+ 8001f32:	681b      	ldr	r3, [r3, #0]
+ 8001f34:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 8001f36:	68fb      	ldr	r3, [r7, #12]
+ 8001f38:	62da      	str	r2, [r3, #44]	; 0x2c
 					prvAddTaskToReadyList( pxTCB );
- 8001fc6:	68fb      	ldr	r3, [r7, #12]
- 8001fc8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
- 8001fca:	2201      	movs	r2, #1
- 8001fcc:	409a      	lsls	r2, r3
- 8001fce:	4b10      	ldr	r3, [pc, #64]	; (8002010 <vTaskPriorityInherit+0xe8>)
- 8001fd0:	681b      	ldr	r3, [r3, #0]
- 8001fd2:	4313      	orrs	r3, r2
- 8001fd4:	4a0e      	ldr	r2, [pc, #56]	; (8002010 <vTaskPriorityInherit+0xe8>)
- 8001fd6:	6013      	str	r3, [r2, #0]
- 8001fd8:	68fb      	ldr	r3, [r7, #12]
- 8001fda:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 8001fdc:	4613      	mov	r3, r2
- 8001fde:	009b      	lsls	r3, r3, #2
- 8001fe0:	4413      	add	r3, r2
- 8001fe2:	009b      	lsls	r3, r3, #2
- 8001fe4:	4a09      	ldr	r2, [pc, #36]	; (800200c <vTaskPriorityInherit+0xe4>)
- 8001fe6:	441a      	add	r2, r3
- 8001fe8:	68fb      	ldr	r3, [r7, #12]
- 8001fea:	3304      	adds	r3, #4
- 8001fec:	4619      	mov	r1, r3
- 8001fee:	4610      	mov	r0, r2
- 8001ff0:	f7fe f91b 	bl	800022a <vListInsertEnd>
+ 8001f3a:	68fb      	ldr	r3, [r7, #12]
+ 8001f3c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 8001f3e:	2201      	movs	r2, #1
+ 8001f40:	409a      	lsls	r2, r3
+ 8001f42:	4b10      	ldr	r3, [pc, #64]	; (8001f84 <vTaskPriorityInherit+0xe8>)
+ 8001f44:	681b      	ldr	r3, [r3, #0]
+ 8001f46:	4313      	orrs	r3, r2
+ 8001f48:	4a0e      	ldr	r2, [pc, #56]	; (8001f84 <vTaskPriorityInherit+0xe8>)
+ 8001f4a:	6013      	str	r3, [r2, #0]
+ 8001f4c:	68fb      	ldr	r3, [r7, #12]
+ 8001f4e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 8001f50:	4613      	mov	r3, r2
+ 8001f52:	009b      	lsls	r3, r3, #2
+ 8001f54:	4413      	add	r3, r2
+ 8001f56:	009b      	lsls	r3, r3, #2
+ 8001f58:	4a09      	ldr	r2, [pc, #36]	; (8001f80 <vTaskPriorityInherit+0xe4>)
+ 8001f5a:	441a      	add	r2, r3
+ 8001f5c:	68fb      	ldr	r3, [r7, #12]
+ 8001f5e:	3304      	adds	r3, #4
+ 8001f60:	4619      	mov	r1, r3
+ 8001f62:	4610      	mov	r0, r2
+ 8001f64:	f7fe f961 	bl	800022a <vListInsertEnd>
 		}
 		else
 		{
 			mtCOVERAGE_TEST_MARKER();
 		}
 	}
- 8001ff4:	e004      	b.n	8002000 <vTaskPriorityInherit+0xd8>
+ 8001f68:	e004      	b.n	8001f74 <vTaskPriorityInherit+0xd8>
 					pxTCB->uxPriority = pxCurrentTCB->uxPriority;
- 8001ff6:	4b04      	ldr	r3, [pc, #16]	; (8002008 <vTaskPriorityInherit+0xe0>)
- 8001ff8:	681b      	ldr	r3, [r3, #0]
- 8001ffa:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 8001ffc:	68fb      	ldr	r3, [r7, #12]
- 8001ffe:	62da      	str	r2, [r3, #44]	; 0x2c
+ 8001f6a:	4b04      	ldr	r3, [pc, #16]	; (8001f7c <vTaskPriorityInherit+0xe0>)
+ 8001f6c:	681b      	ldr	r3, [r3, #0]
+ 8001f6e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 8001f70:	68fb      	ldr	r3, [r7, #12]
+ 8001f72:	62da      	str	r2, [r3, #44]	; 0x2c
 	}
- 8002000:	bf00      	nop
- 8002002:	3710      	adds	r7, #16
- 8002004:	46bd      	mov	sp, r7
- 8002006:	bd80      	pop	{r7, pc}
- 8002008:	20001c44 	.word	0x20001c44
- 800200c:	20001c48 	.word	0x20001c48
- 8002010:	20001d24 	.word	0x20001d24
-
-08002014 <xTaskPriorityDisinherit>:
+ 8001f74:	bf00      	nop
+ 8001f76:	3710      	adds	r7, #16
+ 8001f78:	46bd      	mov	sp, r7
+ 8001f7a:	bd80      	pop	{r7, pc}
+ 8001f7c:	20001cac 	.word	0x20001cac
+ 8001f80:	20001cb0 	.word	0x20001cb0
+ 8001f84:	20001d8c 	.word	0x20001d8c
+
+08001f88 <xTaskPriorityDisinherit>:
 /*-----------------------------------------------------------*/
 
 #if ( configUSE_MUTEXES == 1 )
 
 	BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder )
 	{
- 8002014:	b580      	push	{r7, lr}
- 8002016:	b086      	sub	sp, #24
- 8002018:	af00      	add	r7, sp, #0
- 800201a:	6078      	str	r0, [r7, #4]
+ 8001f88:	b580      	push	{r7, lr}
+ 8001f8a:	b086      	sub	sp, #24
+ 8001f8c:	af00      	add	r7, sp, #0
+ 8001f8e:	6078      	str	r0, [r7, #4]
 	TCB_t * const pxTCB = ( TCB_t * ) pxMutexHolder;
- 800201c:	687b      	ldr	r3, [r7, #4]
- 800201e:	613b      	str	r3, [r7, #16]
+ 8001f90:	687b      	ldr	r3, [r7, #4]
+ 8001f92:	613b      	str	r3, [r7, #16]
 	BaseType_t xReturn = pdFALSE;
- 8002020:	2300      	movs	r3, #0
- 8002022:	617b      	str	r3, [r7, #20]
+ 8001f94:	2300      	movs	r3, #0
+ 8001f96:	617b      	str	r3, [r7, #20]
 
 		if( pxMutexHolder != NULL )
- 8002024:	687b      	ldr	r3, [r7, #4]
- 8002026:	2b00      	cmp	r3, #0
- 8002028:	d06c      	beq.n	8002104 <xTaskPriorityDisinherit+0xf0>
+ 8001f98:	687b      	ldr	r3, [r7, #4]
+ 8001f9a:	2b00      	cmp	r3, #0
+ 8001f9c:	d06c      	beq.n	8002078 <xTaskPriorityDisinherit+0xf0>
 		{
 			/* A task can only have an inherited priority if it holds the mutex.
 			If the mutex is held by a task then it cannot be given from an
 			interrupt, and if a mutex is given by the holding task then it must
 			be the running state task. */
 			configASSERT( pxTCB == pxCurrentTCB );
- 800202a:	4b39      	ldr	r3, [pc, #228]	; (8002110 <xTaskPriorityDisinherit+0xfc>)
- 800202c:	681b      	ldr	r3, [r3, #0]
- 800202e:	693a      	ldr	r2, [r7, #16]
- 8002030:	429a      	cmp	r2, r3
- 8002032:	d009      	beq.n	8002048 <xTaskPriorityDisinherit+0x34>
- 8002034:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8002038:	f383 8811 	msr	BASEPRI, r3
- 800203c:	f3bf 8f6f 	isb	sy
- 8002040:	f3bf 8f4f 	dsb	sy
- 8002044:	60fb      	str	r3, [r7, #12]
- 8002046:	e7fe      	b.n	8002046 <xTaskPriorityDisinherit+0x32>
+ 8001f9e:	4b39      	ldr	r3, [pc, #228]	; (8002084 <xTaskPriorityDisinherit+0xfc>)
+ 8001fa0:	681b      	ldr	r3, [r3, #0]
+ 8001fa2:	693a      	ldr	r2, [r7, #16]
+ 8001fa4:	429a      	cmp	r2, r3
+ 8001fa6:	d009      	beq.n	8001fbc <xTaskPriorityDisinherit+0x34>
+ 8001fa8:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 8001fac:	f383 8811 	msr	BASEPRI, r3
+ 8001fb0:	f3bf 8f6f 	isb	sy
+ 8001fb4:	f3bf 8f4f 	dsb	sy
+ 8001fb8:	60fb      	str	r3, [r7, #12]
+ 8001fba:	e7fe      	b.n	8001fba <xTaskPriorityDisinherit+0x32>
 
 			configASSERT( pxTCB->uxMutexesHeld );
- 8002048:	693b      	ldr	r3, [r7, #16]
- 800204a:	6c5b      	ldr	r3, [r3, #68]	; 0x44
- 800204c:	2b00      	cmp	r3, #0
- 800204e:	d109      	bne.n	8002064 <xTaskPriorityDisinherit+0x50>
- 8002050:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8002054:	f383 8811 	msr	BASEPRI, r3
- 8002058:	f3bf 8f6f 	isb	sy
- 800205c:	f3bf 8f4f 	dsb	sy
- 8002060:	60bb      	str	r3, [r7, #8]
- 8002062:	e7fe      	b.n	8002062 <xTaskPriorityDisinherit+0x4e>
+ 8001fbc:	693b      	ldr	r3, [r7, #16]
+ 8001fbe:	6c5b      	ldr	r3, [r3, #68]	; 0x44
+ 8001fc0:	2b00      	cmp	r3, #0
+ 8001fc2:	d109      	bne.n	8001fd8 <xTaskPriorityDisinherit+0x50>
+ 8001fc4:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 8001fc8:	f383 8811 	msr	BASEPRI, r3
+ 8001fcc:	f3bf 8f6f 	isb	sy
+ 8001fd0:	f3bf 8f4f 	dsb	sy
+ 8001fd4:	60bb      	str	r3, [r7, #8]
+ 8001fd6:	e7fe      	b.n	8001fd6 <xTaskPriorityDisinherit+0x4e>
 			( pxTCB->uxMutexesHeld )--;
- 8002064:	693b      	ldr	r3, [r7, #16]
- 8002066:	6c5b      	ldr	r3, [r3, #68]	; 0x44
- 8002068:	1e5a      	subs	r2, r3, #1
- 800206a:	693b      	ldr	r3, [r7, #16]
- 800206c:	645a      	str	r2, [r3, #68]	; 0x44
+ 8001fd8:	693b      	ldr	r3, [r7, #16]
+ 8001fda:	6c5b      	ldr	r3, [r3, #68]	; 0x44
+ 8001fdc:	1e5a      	subs	r2, r3, #1
+ 8001fde:	693b      	ldr	r3, [r7, #16]
+ 8001fe0:	645a      	str	r2, [r3, #68]	; 0x44
 
 			/* Has the holder of the mutex inherited the priority of another
 			task? */
 			if( pxTCB->uxPriority != pxTCB->uxBasePriority )
- 800206e:	693b      	ldr	r3, [r7, #16]
- 8002070:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 8002072:	693b      	ldr	r3, [r7, #16]
- 8002074:	6c1b      	ldr	r3, [r3, #64]	; 0x40
- 8002076:	429a      	cmp	r2, r3
- 8002078:	d044      	beq.n	8002104 <xTaskPriorityDisinherit+0xf0>
+ 8001fe2:	693b      	ldr	r3, [r7, #16]
+ 8001fe4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 8001fe6:	693b      	ldr	r3, [r7, #16]
+ 8001fe8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
+ 8001fea:	429a      	cmp	r2, r3
+ 8001fec:	d044      	beq.n	8002078 <xTaskPriorityDisinherit+0xf0>
 			{
 				/* Only disinherit if no other mutexes are held. */
 				if( pxTCB->uxMutexesHeld == ( UBaseType_t ) 0 )
- 800207a:	693b      	ldr	r3, [r7, #16]
- 800207c:	6c5b      	ldr	r3, [r3, #68]	; 0x44
- 800207e:	2b00      	cmp	r3, #0
- 8002080:	d140      	bne.n	8002104 <xTaskPriorityDisinherit+0xf0>
+ 8001fee:	693b      	ldr	r3, [r7, #16]
+ 8001ff0:	6c5b      	ldr	r3, [r3, #68]	; 0x44
+ 8001ff2:	2b00      	cmp	r3, #0
+ 8001ff4:	d140      	bne.n	8002078 <xTaskPriorityDisinherit+0xf0>
 					/* A task can only have an inherited priority if it holds
 					the mutex.  If the mutex is held by a task then it cannot be
 					given from an interrupt, and if a mutex is given by the
 					holding	task then it must be the running state task.  Remove
 					the	holding task from the ready	list. */
 					if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
- 8002082:	693b      	ldr	r3, [r7, #16]
- 8002084:	3304      	adds	r3, #4
- 8002086:	4618      	mov	r0, r3
- 8002088:	f7fe f92c 	bl	80002e4 <uxListRemove>
- 800208c:	4603      	mov	r3, r0
- 800208e:	2b00      	cmp	r3, #0
- 8002090:	d115      	bne.n	80020be <xTaskPriorityDisinherit+0xaa>
+ 8001ff6:	693b      	ldr	r3, [r7, #16]
+ 8001ff8:	3304      	adds	r3, #4
+ 8001ffa:	4618      	mov	r0, r3
+ 8001ffc:	f7fe f972 	bl	80002e4 <uxListRemove>
+ 8002000:	4603      	mov	r3, r0
+ 8002002:	2b00      	cmp	r3, #0
+ 8002004:	d115      	bne.n	8002032 <xTaskPriorityDisinherit+0xaa>
 					{
 						taskRESET_READY_PRIORITY( pxTCB->uxPriority );
- 8002092:	693b      	ldr	r3, [r7, #16]
- 8002094:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 8002096:	491f      	ldr	r1, [pc, #124]	; (8002114 <xTaskPriorityDisinherit+0x100>)
- 8002098:	4613      	mov	r3, r2
- 800209a:	009b      	lsls	r3, r3, #2
- 800209c:	4413      	add	r3, r2
- 800209e:	009b      	lsls	r3, r3, #2
- 80020a0:	440b      	add	r3, r1
- 80020a2:	681b      	ldr	r3, [r3, #0]
- 80020a4:	2b00      	cmp	r3, #0
- 80020a6:	d10a      	bne.n	80020be <xTaskPriorityDisinherit+0xaa>
- 80020a8:	693b      	ldr	r3, [r7, #16]
- 80020aa:	6adb      	ldr	r3, [r3, #44]	; 0x2c
- 80020ac:	2201      	movs	r2, #1
- 80020ae:	fa02 f303 	lsl.w	r3, r2, r3
- 80020b2:	43da      	mvns	r2, r3
- 80020b4:	4b18      	ldr	r3, [pc, #96]	; (8002118 <xTaskPriorityDisinherit+0x104>)
- 80020b6:	681b      	ldr	r3, [r3, #0]
- 80020b8:	4013      	ands	r3, r2
- 80020ba:	4a17      	ldr	r2, [pc, #92]	; (8002118 <xTaskPriorityDisinherit+0x104>)
- 80020bc:	6013      	str	r3, [r2, #0]
+ 8002006:	693b      	ldr	r3, [r7, #16]
+ 8002008:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 800200a:	491f      	ldr	r1, [pc, #124]	; (8002088 <xTaskPriorityDisinherit+0x100>)
+ 800200c:	4613      	mov	r3, r2
+ 800200e:	009b      	lsls	r3, r3, #2
+ 8002010:	4413      	add	r3, r2
+ 8002012:	009b      	lsls	r3, r3, #2
+ 8002014:	440b      	add	r3, r1
+ 8002016:	681b      	ldr	r3, [r3, #0]
+ 8002018:	2b00      	cmp	r3, #0
+ 800201a:	d10a      	bne.n	8002032 <xTaskPriorityDisinherit+0xaa>
+ 800201c:	693b      	ldr	r3, [r7, #16]
+ 800201e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 8002020:	2201      	movs	r2, #1
+ 8002022:	fa02 f303 	lsl.w	r3, r2, r3
+ 8002026:	43da      	mvns	r2, r3
+ 8002028:	4b18      	ldr	r3, [pc, #96]	; (800208c <xTaskPriorityDisinherit+0x104>)
+ 800202a:	681b      	ldr	r3, [r3, #0]
+ 800202c:	4013      	ands	r3, r2
+ 800202e:	4a17      	ldr	r2, [pc, #92]	; (800208c <xTaskPriorityDisinherit+0x104>)
+ 8002030:	6013      	str	r3, [r2, #0]
 					}
 
 					/* Disinherit the priority before adding the task into the
 					new	ready list. */
 					traceTASK_PRIORITY_DISINHERIT( pxTCB, pxTCB->uxBasePriority );
 					pxTCB->uxPriority = pxTCB->uxBasePriority;
- 80020be:	693b      	ldr	r3, [r7, #16]
- 80020c0:	6c1a      	ldr	r2, [r3, #64]	; 0x40
- 80020c2:	693b      	ldr	r3, [r7, #16]
- 80020c4:	62da      	str	r2, [r3, #44]	; 0x2c
+ 8002032:	693b      	ldr	r3, [r7, #16]
+ 8002034:	6c1a      	ldr	r2, [r3, #64]	; 0x40
+ 8002036:	693b      	ldr	r3, [r7, #16]
+ 8002038:	62da      	str	r2, [r3, #44]	; 0x2c
 
 					/* Reset the event list item value.  It cannot be in use for
 					any other purpose if this task is running, and it must be
 					running to give back the mutex. */
 					listSET_LIST_ITEM_VALUE( &( pxTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) pxTCB->uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
- 80020c6:	693b      	ldr	r3, [r7, #16]
- 80020c8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
- 80020ca:	f1c3 0205 	rsb	r2, r3, #5
- 80020ce:	693b      	ldr	r3, [r7, #16]
- 80020d0:	619a      	str	r2, [r3, #24]
+ 800203a:	693b      	ldr	r3, [r7, #16]
+ 800203c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 800203e:	f1c3 0205 	rsb	r2, r3, #5
+ 8002042:	693b      	ldr	r3, [r7, #16]
+ 8002044:	619a      	str	r2, [r3, #24]
 					prvAddTaskToReadyList( pxTCB );
- 80020d2:	693b      	ldr	r3, [r7, #16]
- 80020d4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
- 80020d6:	2201      	movs	r2, #1
- 80020d8:	409a      	lsls	r2, r3
- 80020da:	4b0f      	ldr	r3, [pc, #60]	; (8002118 <xTaskPriorityDisinherit+0x104>)
- 80020dc:	681b      	ldr	r3, [r3, #0]
- 80020de:	4313      	orrs	r3, r2
- 80020e0:	4a0d      	ldr	r2, [pc, #52]	; (8002118 <xTaskPriorityDisinherit+0x104>)
- 80020e2:	6013      	str	r3, [r2, #0]
- 80020e4:	693b      	ldr	r3, [r7, #16]
- 80020e6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 80020e8:	4613      	mov	r3, r2
- 80020ea:	009b      	lsls	r3, r3, #2
- 80020ec:	4413      	add	r3, r2
- 80020ee:	009b      	lsls	r3, r3, #2
- 80020f0:	4a08      	ldr	r2, [pc, #32]	; (8002114 <xTaskPriorityDisinherit+0x100>)
- 80020f2:	441a      	add	r2, r3
- 80020f4:	693b      	ldr	r3, [r7, #16]
- 80020f6:	3304      	adds	r3, #4
- 80020f8:	4619      	mov	r1, r3
- 80020fa:	4610      	mov	r0, r2
- 80020fc:	f7fe f895 	bl	800022a <vListInsertEnd>
+ 8002046:	693b      	ldr	r3, [r7, #16]
+ 8002048:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 800204a:	2201      	movs	r2, #1
+ 800204c:	409a      	lsls	r2, r3
+ 800204e:	4b0f      	ldr	r3, [pc, #60]	; (800208c <xTaskPriorityDisinherit+0x104>)
+ 8002050:	681b      	ldr	r3, [r3, #0]
+ 8002052:	4313      	orrs	r3, r2
+ 8002054:	4a0d      	ldr	r2, [pc, #52]	; (800208c <xTaskPriorityDisinherit+0x104>)
+ 8002056:	6013      	str	r3, [r2, #0]
+ 8002058:	693b      	ldr	r3, [r7, #16]
+ 800205a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 800205c:	4613      	mov	r3, r2
+ 800205e:	009b      	lsls	r3, r3, #2
+ 8002060:	4413      	add	r3, r2
+ 8002062:	009b      	lsls	r3, r3, #2
+ 8002064:	4a08      	ldr	r2, [pc, #32]	; (8002088 <xTaskPriorityDisinherit+0x100>)
+ 8002066:	441a      	add	r2, r3
+ 8002068:	693b      	ldr	r3, [r7, #16]
+ 800206a:	3304      	adds	r3, #4
+ 800206c:	4619      	mov	r1, r3
+ 800206e:	4610      	mov	r0, r2
+ 8002070:	f7fe f8db 	bl	800022a <vListInsertEnd>
 					in an order different to that in which they were taken.
 					If a context switch did not occur when the first mutex was
 					returned, even if a task was waiting on it, then a context
 					switch should occur when the last mutex is returned whether
 					a task is waiting on it or not. */
 					xReturn = pdTRUE;
- 8002100:	2301      	movs	r3, #1
- 8002102:	617b      	str	r3, [r7, #20]
+ 8002074:	2301      	movs	r3, #1
+ 8002076:	617b      	str	r3, [r7, #20]
 		else
 		{
 			mtCOVERAGE_TEST_MARKER();
 		}
 
 		return xReturn;
- 8002104:	697b      	ldr	r3, [r7, #20]
+ 8002078:	697b      	ldr	r3, [r7, #20]
 	}
- 8002106:	4618      	mov	r0, r3
- 8002108:	3718      	adds	r7, #24
- 800210a:	46bd      	mov	sp, r7
- 800210c:	bd80      	pop	{r7, pc}
- 800210e:	bf00      	nop
- 8002110:	20001c44 	.word	0x20001c44
- 8002114:	20001c48 	.word	0x20001c48
- 8002118:	20001d24 	.word	0x20001d24
-
-0800211c <pvTaskIncrementMutexHeldCount>:
+ 800207a:	4618      	mov	r0, r3
+ 800207c:	3718      	adds	r7, #24
+ 800207e:	46bd      	mov	sp, r7
+ 8002080:	bd80      	pop	{r7, pc}
+ 8002082:	bf00      	nop
+ 8002084:	20001cac 	.word	0x20001cac
+ 8002088:	20001cb0 	.word	0x20001cb0
+ 800208c:	20001d8c 	.word	0x20001d8c
+
+08002090 <pvTaskIncrementMutexHeldCount>:
 /*-----------------------------------------------------------*/
 
 #if ( configUSE_MUTEXES == 1 )
 
 	void *pvTaskIncrementMutexHeldCount( void )
 	{
- 800211c:	b480      	push	{r7}
- 800211e:	af00      	add	r7, sp, #0
+ 8002090:	b480      	push	{r7}
+ 8002092:	af00      	add	r7, sp, #0
 		/* If xSemaphoreCreateMutex() is called before any tasks have been created
 		then pxCurrentTCB will be NULL. */
 		if( pxCurrentTCB != NULL )
- 8002120:	4b07      	ldr	r3, [pc, #28]	; (8002140 <pvTaskIncrementMutexHeldCount+0x24>)
- 8002122:	681b      	ldr	r3, [r3, #0]
- 8002124:	2b00      	cmp	r3, #0
- 8002126:	d004      	beq.n	8002132 <pvTaskIncrementMutexHeldCount+0x16>
+ 8002094:	4b07      	ldr	r3, [pc, #28]	; (80020b4 <pvTaskIncrementMutexHeldCount+0x24>)
+ 8002096:	681b      	ldr	r3, [r3, #0]
+ 8002098:	2b00      	cmp	r3, #0
+ 800209a:	d004      	beq.n	80020a6 <pvTaskIncrementMutexHeldCount+0x16>
 		{
 			( pxCurrentTCB->uxMutexesHeld )++;
- 8002128:	4b05      	ldr	r3, [pc, #20]	; (8002140 <pvTaskIncrementMutexHeldCount+0x24>)
- 800212a:	681b      	ldr	r3, [r3, #0]
- 800212c:	6c5a      	ldr	r2, [r3, #68]	; 0x44
- 800212e:	3201      	adds	r2, #1
- 8002130:	645a      	str	r2, [r3, #68]	; 0x44
+ 800209c:	4b05      	ldr	r3, [pc, #20]	; (80020b4 <pvTaskIncrementMutexHeldCount+0x24>)
+ 800209e:	681b      	ldr	r3, [r3, #0]
+ 80020a0:	6c5a      	ldr	r2, [r3, #68]	; 0x44
+ 80020a2:	3201      	adds	r2, #1
+ 80020a4:	645a      	str	r2, [r3, #68]	; 0x44
 		}
 
 		return pxCurrentTCB;
- 8002132:	4b03      	ldr	r3, [pc, #12]	; (8002140 <pvTaskIncrementMutexHeldCount+0x24>)
- 8002134:	681b      	ldr	r3, [r3, #0]
+ 80020a6:	4b03      	ldr	r3, [pc, #12]	; (80020b4 <pvTaskIncrementMutexHeldCount+0x24>)
+ 80020a8:	681b      	ldr	r3, [r3, #0]
 	}
- 8002136:	4618      	mov	r0, r3
- 8002138:	46bd      	mov	sp, r7
- 800213a:	f85d 7b04 	ldr.w	r7, [sp], #4
- 800213e:	4770      	bx	lr
- 8002140:	20001c44 	.word	0x20001c44
+ 80020aa:	4618      	mov	r0, r3
+ 80020ac:	46bd      	mov	sp, r7
+ 80020ae:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 80020b2:	4770      	bx	lr
+ 80020b4:	20001cac 	.word	0x20001cac
 
-08002144 <prvAddCurrentTaskToDelayedList>:
+080020b8 <prvAddCurrentTaskToDelayedList>:
 #endif /* configUSE_TASK_NOTIFICATIONS */
 /*-----------------------------------------------------------*/
 
 
 static void prvAddCurrentTaskToDelayedList( TickType_t xTicksToWait, const BaseType_t xCanBlockIndefinitely )
 {
- 8002144:	b580      	push	{r7, lr}
- 8002146:	b084      	sub	sp, #16
- 8002148:	af00      	add	r7, sp, #0
- 800214a:	6078      	str	r0, [r7, #4]
- 800214c:	6039      	str	r1, [r7, #0]
+ 80020b8:	b580      	push	{r7, lr}
+ 80020ba:	b084      	sub	sp, #16
+ 80020bc:	af00      	add	r7, sp, #0
+ 80020be:	6078      	str	r0, [r7, #4]
+ 80020c0:	6039      	str	r1, [r7, #0]
 TickType_t xTimeToWake;
 const TickType_t xConstTickCount = xTickCount;
- 800214e:	4b29      	ldr	r3, [pc, #164]	; (80021f4 <prvAddCurrentTaskToDelayedList+0xb0>)
- 8002150:	681b      	ldr	r3, [r3, #0]
- 8002152:	60fb      	str	r3, [r7, #12]
+ 80020c2:	4b29      	ldr	r3, [pc, #164]	; (8002168 <prvAddCurrentTaskToDelayedList+0xb0>)
+ 80020c4:	681b      	ldr	r3, [r3, #0]
+ 80020c6:	60fb      	str	r3, [r7, #12]
 	}
 	#endif
 
 	/* Remove the task from the ready list before adding it to the blocked list
 	as the same list item is used for both lists. */
 	if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
- 8002154:	4b28      	ldr	r3, [pc, #160]	; (80021f8 <prvAddCurrentTaskToDelayedList+0xb4>)
- 8002156:	681b      	ldr	r3, [r3, #0]
- 8002158:	3304      	adds	r3, #4
- 800215a:	4618      	mov	r0, r3
- 800215c:	f7fe f8c2 	bl	80002e4 <uxListRemove>
- 8002160:	4603      	mov	r3, r0
- 8002162:	2b00      	cmp	r3, #0
- 8002164:	d10b      	bne.n	800217e <prvAddCurrentTaskToDelayedList+0x3a>
+ 80020c8:	4b28      	ldr	r3, [pc, #160]	; (800216c <prvAddCurrentTaskToDelayedList+0xb4>)
+ 80020ca:	681b      	ldr	r3, [r3, #0]
+ 80020cc:	3304      	adds	r3, #4
+ 80020ce:	4618      	mov	r0, r3
+ 80020d0:	f7fe f908 	bl	80002e4 <uxListRemove>
+ 80020d4:	4603      	mov	r3, r0
+ 80020d6:	2b00      	cmp	r3, #0
+ 80020d8:	d10b      	bne.n	80020f2 <prvAddCurrentTaskToDelayedList+0x3a>
 	{
 		/* The current task must be in a ready list, so there is no need to
 		check, and the port reset macro can be called directly. */
 		portRESET_READY_PRIORITY( pxCurrentTCB->uxPriority, uxTopReadyPriority );
- 8002166:	4b24      	ldr	r3, [pc, #144]	; (80021f8 <prvAddCurrentTaskToDelayedList+0xb4>)
- 8002168:	681b      	ldr	r3, [r3, #0]
- 800216a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
- 800216c:	2201      	movs	r2, #1
- 800216e:	fa02 f303 	lsl.w	r3, r2, r3
- 8002172:	43da      	mvns	r2, r3
- 8002174:	4b21      	ldr	r3, [pc, #132]	; (80021fc <prvAddCurrentTaskToDelayedList+0xb8>)
- 8002176:	681b      	ldr	r3, [r3, #0]
- 8002178:	4013      	ands	r3, r2
- 800217a:	4a20      	ldr	r2, [pc, #128]	; (80021fc <prvAddCurrentTaskToDelayedList+0xb8>)
- 800217c:	6013      	str	r3, [r2, #0]
+ 80020da:	4b24      	ldr	r3, [pc, #144]	; (800216c <prvAddCurrentTaskToDelayedList+0xb4>)
+ 80020dc:	681b      	ldr	r3, [r3, #0]
+ 80020de:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 80020e0:	2201      	movs	r2, #1
+ 80020e2:	fa02 f303 	lsl.w	r3, r2, r3
+ 80020e6:	43da      	mvns	r2, r3
+ 80020e8:	4b21      	ldr	r3, [pc, #132]	; (8002170 <prvAddCurrentTaskToDelayedList+0xb8>)
+ 80020ea:	681b      	ldr	r3, [r3, #0]
+ 80020ec:	4013      	ands	r3, r2
+ 80020ee:	4a20      	ldr	r2, [pc, #128]	; (8002170 <prvAddCurrentTaskToDelayedList+0xb8>)
+ 80020f0:	6013      	str	r3, [r2, #0]
 		mtCOVERAGE_TEST_MARKER();
 	}
 
 	#if ( INCLUDE_vTaskSuspend == 1 )
 	{
 		if( ( xTicksToWait == portMAX_DELAY ) && ( xCanBlockIndefinitely != pdFALSE ) )
- 800217e:	687b      	ldr	r3, [r7, #4]
- 8002180:	f1b3 3fff 	cmp.w	r3, #4294967295
- 8002184:	d10a      	bne.n	800219c <prvAddCurrentTaskToDelayedList+0x58>
- 8002186:	683b      	ldr	r3, [r7, #0]
- 8002188:	2b00      	cmp	r3, #0
- 800218a:	d007      	beq.n	800219c <prvAddCurrentTaskToDelayedList+0x58>
+ 80020f2:	687b      	ldr	r3, [r7, #4]
+ 80020f4:	f1b3 3fff 	cmp.w	r3, #4294967295
+ 80020f8:	d10a      	bne.n	8002110 <prvAddCurrentTaskToDelayedList+0x58>
+ 80020fa:	683b      	ldr	r3, [r7, #0]
+ 80020fc:	2b00      	cmp	r3, #0
+ 80020fe:	d007      	beq.n	8002110 <prvAddCurrentTaskToDelayedList+0x58>
 		{
 			/* Add the task to the suspended task list instead of a delayed task
 			list to ensure it is not woken by a timing event.  It will block
 			indefinitely. */
 			vListInsertEnd( &xSuspendedTaskList, &( pxCurrentTCB->xStateListItem ) );
- 800218c:	4b1a      	ldr	r3, [pc, #104]	; (80021f8 <prvAddCurrentTaskToDelayedList+0xb4>)
- 800218e:	681b      	ldr	r3, [r3, #0]
- 8002190:	3304      	adds	r3, #4
- 8002192:	4619      	mov	r1, r3
- 8002194:	481a      	ldr	r0, [pc, #104]	; (8002200 <prvAddCurrentTaskToDelayedList+0xbc>)
- 8002196:	f7fe f848 	bl	800022a <vListInsertEnd>
+ 8002100:	4b1a      	ldr	r3, [pc, #104]	; (800216c <prvAddCurrentTaskToDelayedList+0xb4>)
+ 8002102:	681b      	ldr	r3, [r3, #0]
+ 8002104:	3304      	adds	r3, #4
+ 8002106:	4619      	mov	r1, r3
+ 8002108:	481a      	ldr	r0, [pc, #104]	; (8002174 <prvAddCurrentTaskToDelayedList+0xbc>)
+ 800210a:	f7fe f88e 	bl	800022a <vListInsertEnd>
 
 		/* Avoid compiler warning when INCLUDE_vTaskSuspend is not 1. */
 		( void ) xCanBlockIndefinitely;
 	}
 	#endif /* INCLUDE_vTaskSuspend */
 }
- 800219a:	e026      	b.n	80021ea <prvAddCurrentTaskToDelayedList+0xa6>
+ 800210e:	e026      	b.n	800215e <prvAddCurrentTaskToDelayedList+0xa6>
 			xTimeToWake = xConstTickCount + xTicksToWait;
- 800219c:	68fa      	ldr	r2, [r7, #12]
- 800219e:	687b      	ldr	r3, [r7, #4]
- 80021a0:	4413      	add	r3, r2
- 80021a2:	60bb      	str	r3, [r7, #8]
+ 8002110:	68fa      	ldr	r2, [r7, #12]
+ 8002112:	687b      	ldr	r3, [r7, #4]
+ 8002114:	4413      	add	r3, r2
+ 8002116:	60bb      	str	r3, [r7, #8]
 			listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xStateListItem ), xTimeToWake );
- 80021a4:	4b14      	ldr	r3, [pc, #80]	; (80021f8 <prvAddCurrentTaskToDelayedList+0xb4>)
- 80021a6:	681b      	ldr	r3, [r3, #0]
- 80021a8:	68ba      	ldr	r2, [r7, #8]
- 80021aa:	605a      	str	r2, [r3, #4]
+ 8002118:	4b14      	ldr	r3, [pc, #80]	; (800216c <prvAddCurrentTaskToDelayedList+0xb4>)
+ 800211a:	681b      	ldr	r3, [r3, #0]
+ 800211c:	68ba      	ldr	r2, [r7, #8]
+ 800211e:	605a      	str	r2, [r3, #4]
 			if( xTimeToWake < xConstTickCount )
- 80021ac:	68ba      	ldr	r2, [r7, #8]
- 80021ae:	68fb      	ldr	r3, [r7, #12]
- 80021b0:	429a      	cmp	r2, r3
- 80021b2:	d209      	bcs.n	80021c8 <prvAddCurrentTaskToDelayedList+0x84>
+ 8002120:	68ba      	ldr	r2, [r7, #8]
+ 8002122:	68fb      	ldr	r3, [r7, #12]
+ 8002124:	429a      	cmp	r2, r3
+ 8002126:	d209      	bcs.n	800213c <prvAddCurrentTaskToDelayedList+0x84>
 				vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
- 80021b4:	4b13      	ldr	r3, [pc, #76]	; (8002204 <prvAddCurrentTaskToDelayedList+0xc0>)
- 80021b6:	681a      	ldr	r2, [r3, #0]
- 80021b8:	4b0f      	ldr	r3, [pc, #60]	; (80021f8 <prvAddCurrentTaskToDelayedList+0xb4>)
- 80021ba:	681b      	ldr	r3, [r3, #0]
- 80021bc:	3304      	adds	r3, #4
- 80021be:	4619      	mov	r1, r3
- 80021c0:	4610      	mov	r0, r2
- 80021c2:	f7fe f856 	bl	8000272 <vListInsert>
-}
- 80021c6:	e010      	b.n	80021ea <prvAddCurrentTaskToDelayedList+0xa6>
+ 8002128:	4b13      	ldr	r3, [pc, #76]	; (8002178 <prvAddCurrentTaskToDelayedList+0xc0>)
+ 800212a:	681a      	ldr	r2, [r3, #0]
+ 800212c:	4b0f      	ldr	r3, [pc, #60]	; (800216c <prvAddCurrentTaskToDelayedList+0xb4>)
+ 800212e:	681b      	ldr	r3, [r3, #0]
+ 8002130:	3304      	adds	r3, #4
+ 8002132:	4619      	mov	r1, r3
+ 8002134:	4610      	mov	r0, r2
+ 8002136:	f7fe f89c 	bl	8000272 <vListInsert>
+}
+ 800213a:	e010      	b.n	800215e <prvAddCurrentTaskToDelayedList+0xa6>
 				vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
- 80021c8:	4b0f      	ldr	r3, [pc, #60]	; (8002208 <prvAddCurrentTaskToDelayedList+0xc4>)
- 80021ca:	681a      	ldr	r2, [r3, #0]
- 80021cc:	4b0a      	ldr	r3, [pc, #40]	; (80021f8 <prvAddCurrentTaskToDelayedList+0xb4>)
- 80021ce:	681b      	ldr	r3, [r3, #0]
- 80021d0:	3304      	adds	r3, #4
- 80021d2:	4619      	mov	r1, r3
- 80021d4:	4610      	mov	r0, r2
- 80021d6:	f7fe f84c 	bl	8000272 <vListInsert>
+ 800213c:	4b0f      	ldr	r3, [pc, #60]	; (800217c <prvAddCurrentTaskToDelayedList+0xc4>)
+ 800213e:	681a      	ldr	r2, [r3, #0]
+ 8002140:	4b0a      	ldr	r3, [pc, #40]	; (800216c <prvAddCurrentTaskToDelayedList+0xb4>)
+ 8002142:	681b      	ldr	r3, [r3, #0]
+ 8002144:	3304      	adds	r3, #4
+ 8002146:	4619      	mov	r1, r3
+ 8002148:	4610      	mov	r0, r2
+ 800214a:	f7fe f892 	bl	8000272 <vListInsert>
 				if( xTimeToWake < xNextTaskUnblockTime )
- 80021da:	4b0c      	ldr	r3, [pc, #48]	; (800220c <prvAddCurrentTaskToDelayedList+0xc8>)
- 80021dc:	681b      	ldr	r3, [r3, #0]
- 80021de:	68ba      	ldr	r2, [r7, #8]
- 80021e0:	429a      	cmp	r2, r3
- 80021e2:	d202      	bcs.n	80021ea <prvAddCurrentTaskToDelayedList+0xa6>
+ 800214e:	4b0c      	ldr	r3, [pc, #48]	; (8002180 <prvAddCurrentTaskToDelayedList+0xc8>)
+ 8002150:	681b      	ldr	r3, [r3, #0]
+ 8002152:	68ba      	ldr	r2, [r7, #8]
+ 8002154:	429a      	cmp	r2, r3
+ 8002156:	d202      	bcs.n	800215e <prvAddCurrentTaskToDelayedList+0xa6>
 					xNextTaskUnblockTime = xTimeToWake;
- 80021e4:	4a09      	ldr	r2, [pc, #36]	; (800220c <prvAddCurrentTaskToDelayedList+0xc8>)
- 80021e6:	68bb      	ldr	r3, [r7, #8]
- 80021e8:	6013      	str	r3, [r2, #0]
-}
- 80021ea:	bf00      	nop
- 80021ec:	3710      	adds	r7, #16
- 80021ee:	46bd      	mov	sp, r7
- 80021f0:	bd80      	pop	{r7, pc}
- 80021f2:	bf00      	nop
- 80021f4:	20001d20 	.word	0x20001d20
- 80021f8:	20001c44 	.word	0x20001c44
- 80021fc:	20001d24 	.word	0x20001d24
- 8002200:	20001d08 	.word	0x20001d08
- 8002204:	20001cd8 	.word	0x20001cd8
- 8002208:	20001cd4 	.word	0x20001cd4
- 800220c:	20001d3c 	.word	0x20001d3c
-
-08002210 <xTimerCreateTimerTask>:
+ 8002158:	4a09      	ldr	r2, [pc, #36]	; (8002180 <prvAddCurrentTaskToDelayedList+0xc8>)
+ 800215a:	68bb      	ldr	r3, [r7, #8]
+ 800215c:	6013      	str	r3, [r2, #0]
+}
+ 800215e:	bf00      	nop
+ 8002160:	3710      	adds	r7, #16
+ 8002162:	46bd      	mov	sp, r7
+ 8002164:	bd80      	pop	{r7, pc}
+ 8002166:	bf00      	nop
+ 8002168:	20001d88 	.word	0x20001d88
+ 800216c:	20001cac 	.word	0x20001cac
+ 8002170:	20001d8c 	.word	0x20001d8c
+ 8002174:	20001d70 	.word	0x20001d70
+ 8002178:	20001d40 	.word	0x20001d40
+ 800217c:	20001d3c 	.word	0x20001d3c
+ 8002180:	20001da4 	.word	0x20001da4
+
+08002184 <xTimerCreateTimerTask>:
 									TimerCallbackFunction_t pxCallbackFunction,
 									Timer_t *pxNewTimer ) PRIVILEGED_FUNCTION; /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
 /*-----------------------------------------------------------*/
 
 BaseType_t xTimerCreateTimerTask( void )
 {
- 8002210:	b580      	push	{r7, lr}
- 8002212:	b084      	sub	sp, #16
- 8002214:	af02      	add	r7, sp, #8
+ 8002184:	b580      	push	{r7, lr}
+ 8002186:	b084      	sub	sp, #16
+ 8002188:	af02      	add	r7, sp, #8
 BaseType_t xReturn = pdFAIL;
- 8002216:	2300      	movs	r3, #0
- 8002218:	607b      	str	r3, [r7, #4]
+ 800218a:	2300      	movs	r3, #0
+ 800218c:	607b      	str	r3, [r7, #4]
 
 	/* This function is called when the scheduler is started if
 	configUSE_TIMERS is set to 1.  Check that the infrastructure used by the
 	timer service task has been created/initialised.  If timers have already
 	been created then the initialisation will already have been performed. */
 	prvCheckForValidListAndQueue();
- 800221a:	f000 fadd 	bl	80027d8 <prvCheckForValidListAndQueue>
+ 800218e:	f000 fa8f 	bl	80026b0 <prvCheckForValidListAndQueue>
 
 	if( xTimerQueue != NULL )
- 800221e:	4b11      	ldr	r3, [pc, #68]	; (8002264 <xTimerCreateTimerTask+0x54>)
- 8002220:	681b      	ldr	r3, [r3, #0]
- 8002222:	2b00      	cmp	r3, #0
- 8002224:	d00b      	beq.n	800223e <xTimerCreateTimerTask+0x2e>
+ 8002192:	4b11      	ldr	r3, [pc, #68]	; (80021d8 <xTimerCreateTimerTask+0x54>)
+ 8002194:	681b      	ldr	r3, [r3, #0]
+ 8002196:	2b00      	cmp	r3, #0
+ 8002198:	d00b      	beq.n	80021b2 <xTimerCreateTimerTask+0x2e>
 				xReturn = pdPASS;
 			}
 		}
 		#else
 		{
 			xReturn = xTaskCreate(	prvTimerTask,
- 8002226:	4b10      	ldr	r3, [pc, #64]	; (8002268 <xTimerCreateTimerTask+0x58>)
- 8002228:	9301      	str	r3, [sp, #4]
- 800222a:	2303      	movs	r3, #3
- 800222c:	9300      	str	r3, [sp, #0]
- 800222e:	2300      	movs	r3, #0
- 8002230:	f44f 7282 	mov.w	r2, #260	; 0x104
- 8002234:	490d      	ldr	r1, [pc, #52]	; (800226c <xTimerCreateTimerTask+0x5c>)
- 8002236:	480e      	ldr	r0, [pc, #56]	; (8002270 <xTimerCreateTimerTask+0x60>)
- 8002238:	f7ff f858 	bl	80012ec <xTaskCreate>
- 800223c:	6078      	str	r0, [r7, #4]
+ 800219a:	4b10      	ldr	r3, [pc, #64]	; (80021dc <xTimerCreateTimerTask+0x58>)
+ 800219c:	9301      	str	r3, [sp, #4]
+ 800219e:	2303      	movs	r3, #3
+ 80021a0:	9300      	str	r3, [sp, #0]
+ 80021a2:	2300      	movs	r3, #0
+ 80021a4:	f44f 7282 	mov.w	r2, #260	; 0x104
+ 80021a8:	490d      	ldr	r1, [pc, #52]	; (80021e0 <xTimerCreateTimerTask+0x5c>)
+ 80021aa:	480e      	ldr	r0, [pc, #56]	; (80021e4 <xTimerCreateTimerTask+0x60>)
+ 80021ac:	f7ff f89e 	bl	80012ec <xTaskCreate>
+ 80021b0:	6078      	str	r0, [r7, #4]
 	else
 	{
 		mtCOVERAGE_TEST_MARKER();
 	}
 
 	configASSERT( xReturn );
- 800223e:	687b      	ldr	r3, [r7, #4]
- 8002240:	2b00      	cmp	r3, #0
- 8002242:	d109      	bne.n	8002258 <xTimerCreateTimerTask+0x48>
- 8002244:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8002248:	f383 8811 	msr	BASEPRI, r3
- 800224c:	f3bf 8f6f 	isb	sy
- 8002250:	f3bf 8f4f 	dsb	sy
- 8002254:	603b      	str	r3, [r7, #0]
- 8002256:	e7fe      	b.n	8002256 <xTimerCreateTimerTask+0x46>
+ 80021b2:	687b      	ldr	r3, [r7, #4]
+ 80021b4:	2b00      	cmp	r3, #0
+ 80021b6:	d109      	bne.n	80021cc <xTimerCreateTimerTask+0x48>
+ 80021b8:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 80021bc:	f383 8811 	msr	BASEPRI, r3
+ 80021c0:	f3bf 8f6f 	isb	sy
+ 80021c4:	f3bf 8f4f 	dsb	sy
+ 80021c8:	603b      	str	r3, [r7, #0]
+ 80021ca:	e7fe      	b.n	80021ca <xTimerCreateTimerTask+0x46>
 	return xReturn;
- 8002258:	687b      	ldr	r3, [r7, #4]
-}
- 800225a:	4618      	mov	r0, r3
- 800225c:	3708      	adds	r7, #8
- 800225e:	46bd      	mov	sp, r7
- 8002260:	bd80      	pop	{r7, pc}
- 8002262:	bf00      	nop
- 8002264:	20001d78 	.word	0x20001d78
- 8002268:	20001d7c 	.word	0x20001d7c
- 800226c:	080032f4 	.word	0x080032f4
- 8002270:	08002429 	.word	0x08002429
-
-08002274 <xTimerCreate>:
-	TimerHandle_t xTimerCreate(	const char * const pcTimerName,
-								const TickType_t xTimerPeriodInTicks,
-								const UBaseType_t uxAutoReload,
-								void * const pvTimerID,
-								TimerCallbackFunction_t pxCallbackFunction ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
-	{
- 8002274:	b580      	push	{r7, lr}
- 8002276:	b088      	sub	sp, #32
- 8002278:	af02      	add	r7, sp, #8
- 800227a:	60f8      	str	r0, [r7, #12]
- 800227c:	60b9      	str	r1, [r7, #8]
- 800227e:	607a      	str	r2, [r7, #4]
- 8002280:	603b      	str	r3, [r7, #0]
-	Timer_t *pxNewTimer;
-
-		pxNewTimer = ( Timer_t * ) pvPortMalloc( sizeof( Timer_t ) );
- 8002282:	2028      	movs	r0, #40	; 0x28
- 8002284:	f7fe fa6c 	bl	8000760 <pvPortMalloc>
- 8002288:	6178      	str	r0, [r7, #20]
-
-		if( pxNewTimer != NULL )
- 800228a:	697b      	ldr	r3, [r7, #20]
- 800228c:	2b00      	cmp	r3, #0
- 800228e:	d009      	beq.n	80022a4 <xTimerCreate+0x30>
-		{
-			prvInitialiseNewTimer( pcTimerName, xTimerPeriodInTicks, uxAutoReload, pvTimerID, pxCallbackFunction, pxNewTimer );
- 8002290:	697b      	ldr	r3, [r7, #20]
- 8002292:	9301      	str	r3, [sp, #4]
- 8002294:	6a3b      	ldr	r3, [r7, #32]
- 8002296:	9300      	str	r3, [sp, #0]
- 8002298:	683b      	ldr	r3, [r7, #0]
- 800229a:	687a      	ldr	r2, [r7, #4]
- 800229c:	68b9      	ldr	r1, [r7, #8]
- 800229e:	68f8      	ldr	r0, [r7, #12]
- 80022a0:	f000 f805 	bl	80022ae <prvInitialiseNewTimer>
-				pxNewTimer->ucStaticallyAllocated = pdFALSE;
-			}
-			#endif /* configSUPPORT_STATIC_ALLOCATION */
-		}
-
-		return pxNewTimer;
- 80022a4:	697b      	ldr	r3, [r7, #20]
-	}
- 80022a6:	4618      	mov	r0, r3
- 80022a8:	3718      	adds	r7, #24
- 80022aa:	46bd      	mov	sp, r7
- 80022ac:	bd80      	pop	{r7, pc}
-
-080022ae <prvInitialiseNewTimer>:
-									const TickType_t xTimerPeriodInTicks,
-									const UBaseType_t uxAutoReload,
-									void * const pvTimerID,
-									TimerCallbackFunction_t pxCallbackFunction,
-									Timer_t *pxNewTimer ) /*lint !e971 Unqualified char types are allowed for strings and single characters only. */
-{
- 80022ae:	b580      	push	{r7, lr}
- 80022b0:	b086      	sub	sp, #24
- 80022b2:	af00      	add	r7, sp, #0
- 80022b4:	60f8      	str	r0, [r7, #12]
- 80022b6:	60b9      	str	r1, [r7, #8]
- 80022b8:	607a      	str	r2, [r7, #4]
- 80022ba:	603b      	str	r3, [r7, #0]
-	/* 0 is not a valid value for xTimerPeriodInTicks. */
-	configASSERT( ( xTimerPeriodInTicks > 0 ) );
- 80022bc:	68bb      	ldr	r3, [r7, #8]
- 80022be:	2b00      	cmp	r3, #0
- 80022c0:	d109      	bne.n	80022d6 <prvInitialiseNewTimer+0x28>
- 80022c2:	f04f 0350 	mov.w	r3, #80	; 0x50
- 80022c6:	f383 8811 	msr	BASEPRI, r3
- 80022ca:	f3bf 8f6f 	isb	sy
- 80022ce:	f3bf 8f4f 	dsb	sy
- 80022d2:	617b      	str	r3, [r7, #20]
- 80022d4:	e7fe      	b.n	80022d4 <prvInitialiseNewTimer+0x26>
-
-	if( pxNewTimer != NULL )
- 80022d6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 80022d8:	2b00      	cmp	r3, #0
- 80022da:	d015      	beq.n	8002308 <prvInitialiseNewTimer+0x5a>
-	{
-		/* Ensure the infrastructure used by the timer service task has been
-		created/initialised. */
-		prvCheckForValidListAndQueue();
- 80022dc:	f000 fa7c 	bl	80027d8 <prvCheckForValidListAndQueue>
-
-		/* Initialise the timer structure members using the function
-		parameters. */
-		pxNewTimer->pcTimerName = pcTimerName;
- 80022e0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 80022e2:	68fa      	ldr	r2, [r7, #12]
- 80022e4:	601a      	str	r2, [r3, #0]
-		pxNewTimer->xTimerPeriodInTicks = xTimerPeriodInTicks;
- 80022e6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 80022e8:	68ba      	ldr	r2, [r7, #8]
- 80022ea:	619a      	str	r2, [r3, #24]
-		pxNewTimer->uxAutoReload = uxAutoReload;
- 80022ec:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 80022ee:	687a      	ldr	r2, [r7, #4]
- 80022f0:	61da      	str	r2, [r3, #28]
-		pxNewTimer->pvTimerID = pvTimerID;
- 80022f2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 80022f4:	683a      	ldr	r2, [r7, #0]
- 80022f6:	621a      	str	r2, [r3, #32]
-		pxNewTimer->pxCallbackFunction = pxCallbackFunction;
- 80022f8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 80022fa:	6a3a      	ldr	r2, [r7, #32]
- 80022fc:	625a      	str	r2, [r3, #36]	; 0x24
-		vListInitialiseItem( &( pxNewTimer->xTimerListItem ) );
- 80022fe:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 8002300:	3304      	adds	r3, #4
- 8002302:	4618      	mov	r0, r3
- 8002304:	f7fd ff84 	bl	8000210 <vListInitialiseItem>
-		traceTIMER_CREATE( pxNewTimer );
+ 80021cc:	687b      	ldr	r3, [r7, #4]
+}
+ 80021ce:	4618      	mov	r0, r3
+ 80021d0:	3708      	adds	r7, #8
+ 80021d2:	46bd      	mov	sp, r7
+ 80021d4:	bd80      	pop	{r7, pc}
+ 80021d6:	bf00      	nop
+ 80021d8:	20001de0 	.word	0x20001de0
+ 80021dc:	20001de4 	.word	0x20001de4
+ 80021e0:	08003e70 	.word	0x08003e70
+ 80021e4:	08002301 	.word	0x08002301
+
+080021e8 <xTimerGenericCommand>:
 	}
 }
- 8002308:	bf00      	nop
- 800230a:	3718      	adds	r7, #24
- 800230c:	46bd      	mov	sp, r7
- 800230e:	bd80      	pop	{r7, pc}
-
-08002310 <xTimerGenericCommand>:
 /*-----------------------------------------------------------*/
 
 BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait )
 {
- 8002310:	b580      	push	{r7, lr}
- 8002312:	b08a      	sub	sp, #40	; 0x28
- 8002314:	af00      	add	r7, sp, #0
- 8002316:	60f8      	str	r0, [r7, #12]
- 8002318:	60b9      	str	r1, [r7, #8]
- 800231a:	607a      	str	r2, [r7, #4]
- 800231c:	603b      	str	r3, [r7, #0]
+ 80021e8:	b580      	push	{r7, lr}
+ 80021ea:	b08a      	sub	sp, #40	; 0x28
+ 80021ec:	af00      	add	r7, sp, #0
+ 80021ee:	60f8      	str	r0, [r7, #12]
+ 80021f0:	60b9      	str	r1, [r7, #8]
+ 80021f2:	607a      	str	r2, [r7, #4]
+ 80021f4:	603b      	str	r3, [r7, #0]
 BaseType_t xReturn = pdFAIL;
- 800231e:	2300      	movs	r3, #0
- 8002320:	627b      	str	r3, [r7, #36]	; 0x24
+ 80021f6:	2300      	movs	r3, #0
+ 80021f8:	627b      	str	r3, [r7, #36]	; 0x24
 DaemonTaskMessage_t xMessage;
 
 	configASSERT( xTimer );
- 8002322:	68fb      	ldr	r3, [r7, #12]
- 8002324:	2b00      	cmp	r3, #0
- 8002326:	d109      	bne.n	800233c <xTimerGenericCommand+0x2c>
- 8002328:	f04f 0350 	mov.w	r3, #80	; 0x50
- 800232c:	f383 8811 	msr	BASEPRI, r3
- 8002330:	f3bf 8f6f 	isb	sy
- 8002334:	f3bf 8f4f 	dsb	sy
- 8002338:	623b      	str	r3, [r7, #32]
- 800233a:	e7fe      	b.n	800233a <xTimerGenericCommand+0x2a>
+ 80021fa:	68fb      	ldr	r3, [r7, #12]
+ 80021fc:	2b00      	cmp	r3, #0
+ 80021fe:	d109      	bne.n	8002214 <xTimerGenericCommand+0x2c>
+ 8002200:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 8002204:	f383 8811 	msr	BASEPRI, r3
+ 8002208:	f3bf 8f6f 	isb	sy
+ 800220c:	f3bf 8f4f 	dsb	sy
+ 8002210:	623b      	str	r3, [r7, #32]
+ 8002212:	e7fe      	b.n	8002212 <xTimerGenericCommand+0x2a>
 
 	/* Send a message to the timer service task to perform a particular action
 	on a particular timer definition. */
 	if( xTimerQueue != NULL )
- 800233c:	4b19      	ldr	r3, [pc, #100]	; (80023a4 <xTimerGenericCommand+0x94>)
- 800233e:	681b      	ldr	r3, [r3, #0]
- 8002340:	2b00      	cmp	r3, #0
- 8002342:	d02a      	beq.n	800239a <xTimerGenericCommand+0x8a>
+ 8002214:	4b19      	ldr	r3, [pc, #100]	; (800227c <xTimerGenericCommand+0x94>)
+ 8002216:	681b      	ldr	r3, [r3, #0]
+ 8002218:	2b00      	cmp	r3, #0
+ 800221a:	d02a      	beq.n	8002272 <xTimerGenericCommand+0x8a>
 	{
 		/* Send a command to the timer service task to start the xTimer timer. */
 		xMessage.xMessageID = xCommandID;
- 8002344:	68bb      	ldr	r3, [r7, #8]
- 8002346:	617b      	str	r3, [r7, #20]
+ 800221c:	68bb      	ldr	r3, [r7, #8]
+ 800221e:	617b      	str	r3, [r7, #20]
 		xMessage.u.xTimerParameters.xMessageValue = xOptionalValue;
- 8002348:	687b      	ldr	r3, [r7, #4]
- 800234a:	61bb      	str	r3, [r7, #24]
+ 8002220:	687b      	ldr	r3, [r7, #4]
+ 8002222:	61bb      	str	r3, [r7, #24]
 		xMessage.u.xTimerParameters.pxTimer = ( Timer_t * ) xTimer;
- 800234c:	68fb      	ldr	r3, [r7, #12]
- 800234e:	61fb      	str	r3, [r7, #28]
+ 8002224:	68fb      	ldr	r3, [r7, #12]
+ 8002226:	61fb      	str	r3, [r7, #28]
 
 		if( xCommandID < tmrFIRST_FROM_ISR_COMMAND )
- 8002350:	68bb      	ldr	r3, [r7, #8]
- 8002352:	2b05      	cmp	r3, #5
- 8002354:	dc18      	bgt.n	8002388 <xTimerGenericCommand+0x78>
+ 8002228:	68bb      	ldr	r3, [r7, #8]
+ 800222a:	2b05      	cmp	r3, #5
+ 800222c:	dc18      	bgt.n	8002260 <xTimerGenericCommand+0x78>
 		{
 			if( xTaskGetSchedulerState() == taskSCHEDULER_RUNNING )
- 8002356:	f7ff fdc9 	bl	8001eec <xTaskGetSchedulerState>
- 800235a:	4603      	mov	r3, r0
- 800235c:	2b02      	cmp	r3, #2
- 800235e:	d109      	bne.n	8002374 <xTimerGenericCommand+0x64>
+ 800222e:	f7ff fe17 	bl	8001e60 <xTaskGetSchedulerState>
+ 8002232:	4603      	mov	r3, r0
+ 8002234:	2b02      	cmp	r3, #2
+ 8002236:	d109      	bne.n	800224c <xTimerGenericCommand+0x64>
 			{
 				xReturn = xQueueSendToBack( xTimerQueue, &xMessage, xTicksToWait );
- 8002360:	4b10      	ldr	r3, [pc, #64]	; (80023a4 <xTimerGenericCommand+0x94>)
- 8002362:	6818      	ldr	r0, [r3, #0]
- 8002364:	f107 0114 	add.w	r1, r7, #20
- 8002368:	2300      	movs	r3, #0
- 800236a:	6b3a      	ldr	r2, [r7, #48]	; 0x30
- 800236c:	f7fe fb28 	bl	80009c0 <xQueueGenericSend>
- 8002370:	6278      	str	r0, [r7, #36]	; 0x24
- 8002372:	e012      	b.n	800239a <xTimerGenericCommand+0x8a>
+ 8002238:	4b10      	ldr	r3, [pc, #64]	; (800227c <xTimerGenericCommand+0x94>)
+ 800223a:	6818      	ldr	r0, [r3, #0]
+ 800223c:	f107 0114 	add.w	r1, r7, #20
+ 8002240:	2300      	movs	r3, #0
+ 8002242:	6b3a      	ldr	r2, [r7, #48]	; 0x30
+ 8002244:	f7fe fbbc 	bl	80009c0 <xQueueGenericSend>
+ 8002248:	6278      	str	r0, [r7, #36]	; 0x24
+ 800224a:	e012      	b.n	8002272 <xTimerGenericCommand+0x8a>
 			}
 			else
 			{
 				xReturn = xQueueSendToBack( xTimerQueue, &xMessage, tmrNO_DELAY );
- 8002374:	4b0b      	ldr	r3, [pc, #44]	; (80023a4 <xTimerGenericCommand+0x94>)
- 8002376:	6818      	ldr	r0, [r3, #0]
- 8002378:	f107 0114 	add.w	r1, r7, #20
- 800237c:	2300      	movs	r3, #0
- 800237e:	2200      	movs	r2, #0
- 8002380:	f7fe fb1e 	bl	80009c0 <xQueueGenericSend>
- 8002384:	6278      	str	r0, [r7, #36]	; 0x24
- 8002386:	e008      	b.n	800239a <xTimerGenericCommand+0x8a>
+ 800224c:	4b0b      	ldr	r3, [pc, #44]	; (800227c <xTimerGenericCommand+0x94>)
+ 800224e:	6818      	ldr	r0, [r3, #0]
+ 8002250:	f107 0114 	add.w	r1, r7, #20
+ 8002254:	2300      	movs	r3, #0
+ 8002256:	2200      	movs	r2, #0
+ 8002258:	f7fe fbb2 	bl	80009c0 <xQueueGenericSend>
+ 800225c:	6278      	str	r0, [r7, #36]	; 0x24
+ 800225e:	e008      	b.n	8002272 <xTimerGenericCommand+0x8a>
 			}
 		}
 		else
 		{
 			xReturn = xQueueSendToBackFromISR( xTimerQueue, &xMessage, pxHigherPriorityTaskWoken );
- 8002388:	4b06      	ldr	r3, [pc, #24]	; (80023a4 <xTimerGenericCommand+0x94>)
- 800238a:	6818      	ldr	r0, [r3, #0]
- 800238c:	f107 0114 	add.w	r1, r7, #20
- 8002390:	2300      	movs	r3, #0
- 8002392:	683a      	ldr	r2, [r7, #0]
- 8002394:	f7fe fc0e 	bl	8000bb4 <xQueueGenericSendFromISR>
- 8002398:	6278      	str	r0, [r7, #36]	; 0x24
+ 8002260:	4b06      	ldr	r3, [pc, #24]	; (800227c <xTimerGenericCommand+0x94>)
+ 8002262:	6818      	ldr	r0, [r3, #0]
+ 8002264:	f107 0114 	add.w	r1, r7, #20
+ 8002268:	2300      	movs	r3, #0
+ 800226a:	683a      	ldr	r2, [r7, #0]
+ 800226c:	f7fe fca2 	bl	8000bb4 <xQueueGenericSendFromISR>
+ 8002270:	6278      	str	r0, [r7, #36]	; 0x24
 	else
 	{
 		mtCOVERAGE_TEST_MARKER();
 	}
 
 	return xReturn;
- 800239a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
+ 8002272:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 }
- 800239c:	4618      	mov	r0, r3
- 800239e:	3728      	adds	r7, #40	; 0x28
- 80023a0:	46bd      	mov	sp, r7
- 80023a2:	bd80      	pop	{r7, pc}
- 80023a4:	20001d78 	.word	0x20001d78
+ 8002274:	4618      	mov	r0, r3
+ 8002276:	3728      	adds	r7, #40	; 0x28
+ 8002278:	46bd      	mov	sp, r7
+ 800227a:	bd80      	pop	{r7, pc}
+ 800227c:	20001de0 	.word	0x20001de0
 
-080023a8 <prvProcessExpiredTimer>:
+08002280 <prvProcessExpiredTimer>:
 	return pxTimer->pcTimerName;
 }
 /*-----------------------------------------------------------*/
 
 static void prvProcessExpiredTimer( const TickType_t xNextExpireTime, const TickType_t xTimeNow )
 {
- 80023a8:	b580      	push	{r7, lr}
- 80023aa:	b088      	sub	sp, #32
- 80023ac:	af02      	add	r7, sp, #8
- 80023ae:	6078      	str	r0, [r7, #4]
- 80023b0:	6039      	str	r1, [r7, #0]
+ 8002280:	b580      	push	{r7, lr}
+ 8002282:	b088      	sub	sp, #32
+ 8002284:	af02      	add	r7, sp, #8
+ 8002286:	6078      	str	r0, [r7, #4]
+ 8002288:	6039      	str	r1, [r7, #0]
 BaseType_t xResult;
 Timer_t * const pxTimer = ( Timer_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxCurrentTimerList );
- 80023b2:	4b1c      	ldr	r3, [pc, #112]	; (8002424 <prvProcessExpiredTimer+0x7c>)
- 80023b4:	681b      	ldr	r3, [r3, #0]
- 80023b6:	68db      	ldr	r3, [r3, #12]
- 80023b8:	68db      	ldr	r3, [r3, #12]
- 80023ba:	617b      	str	r3, [r7, #20]
+ 800228a:	4b1c      	ldr	r3, [pc, #112]	; (80022fc <prvProcessExpiredTimer+0x7c>)
+ 800228c:	681b      	ldr	r3, [r3, #0]
+ 800228e:	68db      	ldr	r3, [r3, #12]
+ 8002290:	68db      	ldr	r3, [r3, #12]
+ 8002292:	617b      	str	r3, [r7, #20]
 
 	/* Remove the timer from the list of active timers.  A check has already
 	been performed to ensure the list is not empty. */
 	( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
- 80023bc:	697b      	ldr	r3, [r7, #20]
- 80023be:	3304      	adds	r3, #4
- 80023c0:	4618      	mov	r0, r3
- 80023c2:	f7fd ff8f 	bl	80002e4 <uxListRemove>
+ 8002294:	697b      	ldr	r3, [r7, #20]
+ 8002296:	3304      	adds	r3, #4
+ 8002298:	4618      	mov	r0, r3
+ 800229a:	f7fe f823 	bl	80002e4 <uxListRemove>
 	traceTIMER_EXPIRED( pxTimer );
 
 	/* If the timer is an auto reload timer then calculate the next
 	expiry time and re-insert the timer in the list of active timers. */
 	if( pxTimer->uxAutoReload == ( UBaseType_t ) pdTRUE )
- 80023c6:	697b      	ldr	r3, [r7, #20]
- 80023c8:	69db      	ldr	r3, [r3, #28]
- 80023ca:	2b01      	cmp	r3, #1
- 80023cc:	d121      	bne.n	8002412 <prvProcessExpiredTimer+0x6a>
+ 800229e:	697b      	ldr	r3, [r7, #20]
+ 80022a0:	69db      	ldr	r3, [r3, #28]
+ 80022a2:	2b01      	cmp	r3, #1
+ 80022a4:	d121      	bne.n	80022ea <prvProcessExpiredTimer+0x6a>
 	{
 		/* The timer is inserted into a list using a time relative to anything
 		other than the current time.  It will therefore be inserted into the
 		correct list relative to the time this task thinks it is now. */
 		if( prvInsertTimerInActiveList( pxTimer, ( xNextExpireTime + pxTimer->xTimerPeriodInTicks ), xTimeNow, xNextExpireTime ) != pdFALSE )
- 80023ce:	697b      	ldr	r3, [r7, #20]
- 80023d0:	699a      	ldr	r2, [r3, #24]
- 80023d2:	687b      	ldr	r3, [r7, #4]
- 80023d4:	18d1      	adds	r1, r2, r3
- 80023d6:	687b      	ldr	r3, [r7, #4]
- 80023d8:	683a      	ldr	r2, [r7, #0]
- 80023da:	6978      	ldr	r0, [r7, #20]
- 80023dc:	f000 f8c8 	bl	8002570 <prvInsertTimerInActiveList>
- 80023e0:	4603      	mov	r3, r0
- 80023e2:	2b00      	cmp	r3, #0
- 80023e4:	d015      	beq.n	8002412 <prvProcessExpiredTimer+0x6a>
+ 80022a6:	697b      	ldr	r3, [r7, #20]
+ 80022a8:	699a      	ldr	r2, [r3, #24]
+ 80022aa:	687b      	ldr	r3, [r7, #4]
+ 80022ac:	18d1      	adds	r1, r2, r3
+ 80022ae:	687b      	ldr	r3, [r7, #4]
+ 80022b0:	683a      	ldr	r2, [r7, #0]
+ 80022b2:	6978      	ldr	r0, [r7, #20]
+ 80022b4:	f000 f8c8 	bl	8002448 <prvInsertTimerInActiveList>
+ 80022b8:	4603      	mov	r3, r0
+ 80022ba:	2b00      	cmp	r3, #0
+ 80022bc:	d015      	beq.n	80022ea <prvProcessExpiredTimer+0x6a>
 		{
 			/* The timer expired before it was added to the active timer
 			list.  Reload it now.  */
 			xResult = xTimerGenericCommand( pxTimer, tmrCOMMAND_START_DONT_TRACE, xNextExpireTime, NULL, tmrNO_DELAY );
- 80023e6:	2300      	movs	r3, #0
- 80023e8:	9300      	str	r3, [sp, #0]
- 80023ea:	2300      	movs	r3, #0
- 80023ec:	687a      	ldr	r2, [r7, #4]
- 80023ee:	2100      	movs	r1, #0
- 80023f0:	6978      	ldr	r0, [r7, #20]
- 80023f2:	f7ff ff8d 	bl	8002310 <xTimerGenericCommand>
- 80023f6:	6138      	str	r0, [r7, #16]
+ 80022be:	2300      	movs	r3, #0
+ 80022c0:	9300      	str	r3, [sp, #0]
+ 80022c2:	2300      	movs	r3, #0
+ 80022c4:	687a      	ldr	r2, [r7, #4]
+ 80022c6:	2100      	movs	r1, #0
+ 80022c8:	6978      	ldr	r0, [r7, #20]
+ 80022ca:	f7ff ff8d 	bl	80021e8 <xTimerGenericCommand>
+ 80022ce:	6138      	str	r0, [r7, #16]
 			configASSERT( xResult );
- 80023f8:	693b      	ldr	r3, [r7, #16]
- 80023fa:	2b00      	cmp	r3, #0
- 80023fc:	d109      	bne.n	8002412 <prvProcessExpiredTimer+0x6a>
- 80023fe:	f04f 0350 	mov.w	r3, #80	; 0x50
- 8002402:	f383 8811 	msr	BASEPRI, r3
- 8002406:	f3bf 8f6f 	isb	sy
- 800240a:	f3bf 8f4f 	dsb	sy
- 800240e:	60fb      	str	r3, [r7, #12]
- 8002410:	e7fe      	b.n	8002410 <prvProcessExpiredTimer+0x68>
+ 80022d0:	693b      	ldr	r3, [r7, #16]
+ 80022d2:	2b00      	cmp	r3, #0
+ 80022d4:	d109      	bne.n	80022ea <prvProcessExpiredTimer+0x6a>
+ 80022d6:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 80022da:	f383 8811 	msr	BASEPRI, r3
+ 80022de:	f3bf 8f6f 	isb	sy
+ 80022e2:	f3bf 8f4f 	dsb	sy
+ 80022e6:	60fb      	str	r3, [r7, #12]
+ 80022e8:	e7fe      	b.n	80022e8 <prvProcessExpiredTimer+0x68>
 	{
 		mtCOVERAGE_TEST_MARKER();
 	}
 
 	/* Call the timer callback. */
 	pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
- 8002412:	697b      	ldr	r3, [r7, #20]
- 8002414:	6a5b      	ldr	r3, [r3, #36]	; 0x24
- 8002416:	6978      	ldr	r0, [r7, #20]
- 8002418:	4798      	blx	r3
-}
- 800241a:	bf00      	nop
- 800241c:	3718      	adds	r7, #24
- 800241e:	46bd      	mov	sp, r7
- 8002420:	bd80      	pop	{r7, pc}
- 8002422:	bf00      	nop
- 8002424:	20001d70 	.word	0x20001d70
-
-08002428 <prvTimerTask>:
+ 80022ea:	697b      	ldr	r3, [r7, #20]
+ 80022ec:	6a5b      	ldr	r3, [r3, #36]	; 0x24
+ 80022ee:	6978      	ldr	r0, [r7, #20]
+ 80022f0:	4798      	blx	r3
+}
+ 80022f2:	bf00      	nop
+ 80022f4:	3718      	adds	r7, #24
+ 80022f6:	46bd      	mov	sp, r7
+ 80022f8:	bd80      	pop	{r7, pc}
+ 80022fa:	bf00      	nop
+ 80022fc:	20001dd8 	.word	0x20001dd8
+
+08002300 <prvTimerTask>:
 /*-----------------------------------------------------------*/
 
 static void prvTimerTask( void *pvParameters )
 {
- 8002428:	b580      	push	{r7, lr}
- 800242a:	b084      	sub	sp, #16
- 800242c:	af00      	add	r7, sp, #0
- 800242e:	6078      	str	r0, [r7, #4]
+ 8002300:	b580      	push	{r7, lr}
+ 8002302:	b084      	sub	sp, #16
+ 8002304:	af00      	add	r7, sp, #0
+ 8002306:	6078      	str	r0, [r7, #4]
 
 	for( ;; )
 	{
 		/* Query the timers list to see if it contains any timers, and if so,
 		obtain the time at which the next timer will expire. */
 		xNextExpireTime = prvGetNextExpireTime( &xListWasEmpty );
- 8002430:	f107 0308 	add.w	r3, r7, #8
- 8002434:	4618      	mov	r0, r3
- 8002436:	f000 f857 	bl	80024e8 <prvGetNextExpireTime>
- 800243a:	60f8      	str	r0, [r7, #12]
+ 8002308:	f107 0308 	add.w	r3, r7, #8
+ 800230c:	4618      	mov	r0, r3
+ 800230e:	f000 f857 	bl	80023c0 <prvGetNextExpireTime>
+ 8002312:	60f8      	str	r0, [r7, #12]
 
 		/* If a timer has expired, process it.  Otherwise, block this task
 		until either a timer does expire, or a command is received. */
 		prvProcessTimerOrBlockTask( xNextExpireTime, xListWasEmpty );
- 800243c:	68bb      	ldr	r3, [r7, #8]
- 800243e:	4619      	mov	r1, r3
- 8002440:	68f8      	ldr	r0, [r7, #12]
- 8002442:	f000 f803 	bl	800244c <prvProcessTimerOrBlockTask>
+ 8002314:	68bb      	ldr	r3, [r7, #8]
+ 8002316:	4619      	mov	r1, r3
+ 8002318:	68f8      	ldr	r0, [r7, #12]
+ 800231a:	f000 f803 	bl	8002324 <prvProcessTimerOrBlockTask>
 
 		/* Empty the command queue. */
 		prvProcessReceivedCommands();
- 8002446:	f000 f8d5 	bl	80025f4 <prvProcessReceivedCommands>
+ 800231e:	f000 f8d5 	bl	80024cc <prvProcessReceivedCommands>
 		xNextExpireTime = prvGetNextExpireTime( &xListWasEmpty );
- 800244a:	e7f1      	b.n	8002430 <prvTimerTask+0x8>
+ 8002322:	e7f1      	b.n	8002308 <prvTimerTask+0x8>
 
-0800244c <prvProcessTimerOrBlockTask>:
+08002324 <prvProcessTimerOrBlockTask>:
 	}
 }
 /*-----------------------------------------------------------*/
 
 static void prvProcessTimerOrBlockTask( const TickType_t xNextExpireTime, BaseType_t xListWasEmpty )
 {
- 800244c:	b580      	push	{r7, lr}
- 800244e:	b084      	sub	sp, #16
- 8002450:	af00      	add	r7, sp, #0
- 8002452:	6078      	str	r0, [r7, #4]
- 8002454:	6039      	str	r1, [r7, #0]
+ 8002324:	b580      	push	{r7, lr}
+ 8002326:	b084      	sub	sp, #16
+ 8002328:	af00      	add	r7, sp, #0
+ 800232a:	6078      	str	r0, [r7, #4]
+ 800232c:	6039      	str	r1, [r7, #0]
 TickType_t xTimeNow;
 BaseType_t xTimerListsWereSwitched;
 
 	vTaskSuspendAll();
- 8002456:	f7ff f941 	bl	80016dc <vTaskSuspendAll>
+ 800232e:	f7ff f98f 	bl	8001650 <vTaskSuspendAll>
 		/* Obtain the time now to make an assessment as to whether the timer
 		has expired or not.  If obtaining the time causes the lists to switch
 		then don't process this timer as any timers that remained in the list
 		when the lists were switched will have been processed within the
 		prvSampleTimeNow() function. */
 		xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
- 800245a:	f107 0308 	add.w	r3, r7, #8
- 800245e:	4618      	mov	r0, r3
- 8002460:	f000 f866 	bl	8002530 <prvSampleTimeNow>
- 8002464:	60f8      	str	r0, [r7, #12]
+ 8002332:	f107 0308 	add.w	r3, r7, #8
+ 8002336:	4618      	mov	r0, r3
+ 8002338:	f000 f866 	bl	8002408 <prvSampleTimeNow>
+ 800233c:	60f8      	str	r0, [r7, #12]
 		if( xTimerListsWereSwitched == pdFALSE )
- 8002466:	68bb      	ldr	r3, [r7, #8]
- 8002468:	2b00      	cmp	r3, #0
- 800246a:	d130      	bne.n	80024ce <prvProcessTimerOrBlockTask+0x82>
+ 800233e:	68bb      	ldr	r3, [r7, #8]
+ 8002340:	2b00      	cmp	r3, #0
+ 8002342:	d130      	bne.n	80023a6 <prvProcessTimerOrBlockTask+0x82>
 		{
 			/* The tick count has not overflowed, has the timer expired? */
 			if( ( xListWasEmpty == pdFALSE ) && ( xNextExpireTime <= xTimeNow ) )
- 800246c:	683b      	ldr	r3, [r7, #0]
- 800246e:	2b00      	cmp	r3, #0
- 8002470:	d10a      	bne.n	8002488 <prvProcessTimerOrBlockTask+0x3c>
- 8002472:	687a      	ldr	r2, [r7, #4]
- 8002474:	68fb      	ldr	r3, [r7, #12]
- 8002476:	429a      	cmp	r2, r3
- 8002478:	d806      	bhi.n	8002488 <prvProcessTimerOrBlockTask+0x3c>
+ 8002344:	683b      	ldr	r3, [r7, #0]
+ 8002346:	2b00      	cmp	r3, #0
+ 8002348:	d10a      	bne.n	8002360 <prvProcessTimerOrBlockTask+0x3c>
+ 800234a:	687a      	ldr	r2, [r7, #4]
+ 800234c:	68fb      	ldr	r3, [r7, #12]
+ 800234e:	429a      	cmp	r2, r3
+ 8002350:	d806      	bhi.n	8002360 <prvProcessTimerOrBlockTask+0x3c>
 			{
 				( void ) xTaskResumeAll();
- 800247a:	f7ff f93d 	bl	80016f8 <xTaskResumeAll>
+ 8002352:	f7ff f98b 	bl	800166c <xTaskResumeAll>
 				prvProcessExpiredTimer( xNextExpireTime, xTimeNow );
- 800247e:	68f9      	ldr	r1, [r7, #12]
- 8002480:	6878      	ldr	r0, [r7, #4]
- 8002482:	f7ff ff91 	bl	80023a8 <prvProcessExpiredTimer>
+ 8002356:	68f9      	ldr	r1, [r7, #12]
+ 8002358:	6878      	ldr	r0, [r7, #4]
+ 800235a:	f7ff ff91 	bl	8002280 <prvProcessExpiredTimer>
 		else
 		{
 			( void ) xTaskResumeAll();
 		}
 	}
 }
- 8002486:	e024      	b.n	80024d2 <prvProcessTimerOrBlockTask+0x86>
+ 800235e:	e024      	b.n	80023aa <prvProcessTimerOrBlockTask+0x86>
 				if( xListWasEmpty != pdFALSE )
- 8002488:	683b      	ldr	r3, [r7, #0]
- 800248a:	2b00      	cmp	r3, #0
- 800248c:	d008      	beq.n	80024a0 <prvProcessTimerOrBlockTask+0x54>
+ 8002360:	683b      	ldr	r3, [r7, #0]
+ 8002362:	2b00      	cmp	r3, #0
+ 8002364:	d008      	beq.n	8002378 <prvProcessTimerOrBlockTask+0x54>
 					xListWasEmpty = listLIST_IS_EMPTY( pxOverflowTimerList );
- 800248e:	4b13      	ldr	r3, [pc, #76]	; (80024dc <prvProcessTimerOrBlockTask+0x90>)
- 8002490:	681b      	ldr	r3, [r3, #0]
- 8002492:	681b      	ldr	r3, [r3, #0]
- 8002494:	2b00      	cmp	r3, #0
- 8002496:	bf0c      	ite	eq
- 8002498:	2301      	moveq	r3, #1
- 800249a:	2300      	movne	r3, #0
- 800249c:	b2db      	uxtb	r3, r3
- 800249e:	603b      	str	r3, [r7, #0]
+ 8002366:	4b13      	ldr	r3, [pc, #76]	; (80023b4 <prvProcessTimerOrBlockTask+0x90>)
+ 8002368:	681b      	ldr	r3, [r3, #0]
+ 800236a:	681b      	ldr	r3, [r3, #0]
+ 800236c:	2b00      	cmp	r3, #0
+ 800236e:	bf0c      	ite	eq
+ 8002370:	2301      	moveq	r3, #1
+ 8002372:	2300      	movne	r3, #0
+ 8002374:	b2db      	uxtb	r3, r3
+ 8002376:	603b      	str	r3, [r7, #0]
 				vQueueWaitForMessageRestricted( xTimerQueue, ( xNextExpireTime - xTimeNow ), xListWasEmpty );
- 80024a0:	4b0f      	ldr	r3, [pc, #60]	; (80024e0 <prvProcessTimerOrBlockTask+0x94>)
- 80024a2:	6818      	ldr	r0, [r3, #0]
- 80024a4:	687a      	ldr	r2, [r7, #4]
- 80024a6:	68fb      	ldr	r3, [r7, #12]
- 80024a8:	1ad3      	subs	r3, r2, r3
- 80024aa:	683a      	ldr	r2, [r7, #0]
- 80024ac:	4619      	mov	r1, r3
- 80024ae:	f7fe fee9 	bl	8001284 <vQueueWaitForMessageRestricted>
+ 8002378:	4b0f      	ldr	r3, [pc, #60]	; (80023b8 <prvProcessTimerOrBlockTask+0x94>)
+ 800237a:	6818      	ldr	r0, [r3, #0]
+ 800237c:	687a      	ldr	r2, [r7, #4]
+ 800237e:	68fb      	ldr	r3, [r7, #12]
+ 8002380:	1ad3      	subs	r3, r2, r3
+ 8002382:	683a      	ldr	r2, [r7, #0]
+ 8002384:	4619      	mov	r1, r3
+ 8002386:	f7fe ff7d 	bl	8001284 <vQueueWaitForMessageRestricted>
 				if( xTaskResumeAll() == pdFALSE )
- 80024b2:	f7ff f921 	bl	80016f8 <xTaskResumeAll>
- 80024b6:	4603      	mov	r3, r0
- 80024b8:	2b00      	cmp	r3, #0
- 80024ba:	d10a      	bne.n	80024d2 <prvProcessTimerOrBlockTask+0x86>
+ 800238a:	f7ff f96f 	bl	800166c <xTaskResumeAll>
+ 800238e:	4603      	mov	r3, r0
+ 8002390:	2b00      	cmp	r3, #0
+ 8002392:	d10a      	bne.n	80023aa <prvProcessTimerOrBlockTask+0x86>
 					portYIELD_WITHIN_API();
- 80024bc:	4b09      	ldr	r3, [pc, #36]	; (80024e4 <prvProcessTimerOrBlockTask+0x98>)
- 80024be:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
- 80024c2:	601a      	str	r2, [r3, #0]
- 80024c4:	f3bf 8f4f 	dsb	sy
- 80024c8:	f3bf 8f6f 	isb	sy
+ 8002394:	4b09      	ldr	r3, [pc, #36]	; (80023bc <prvProcessTimerOrBlockTask+0x98>)
+ 8002396:	f04f 5280 	mov.w	r2, #268435456	; 0x10000000
+ 800239a:	601a      	str	r2, [r3, #0]
+ 800239c:	f3bf 8f4f 	dsb	sy
+ 80023a0:	f3bf 8f6f 	isb	sy
 }
- 80024cc:	e001      	b.n	80024d2 <prvProcessTimerOrBlockTask+0x86>
+ 80023a4:	e001      	b.n	80023aa <prvProcessTimerOrBlockTask+0x86>
 			( void ) xTaskResumeAll();
- 80024ce:	f7ff f913 	bl	80016f8 <xTaskResumeAll>
-}
- 80024d2:	bf00      	nop
- 80024d4:	3710      	adds	r7, #16
- 80024d6:	46bd      	mov	sp, r7
- 80024d8:	bd80      	pop	{r7, pc}
- 80024da:	bf00      	nop
- 80024dc:	20001d74 	.word	0x20001d74
- 80024e0:	20001d78 	.word	0x20001d78
- 80024e4:	e000ed04 	.word	0xe000ed04
-
-080024e8 <prvGetNextExpireTime>:
+ 80023a6:	f7ff f961 	bl	800166c <xTaskResumeAll>
+}
+ 80023aa:	bf00      	nop
+ 80023ac:	3710      	adds	r7, #16
+ 80023ae:	46bd      	mov	sp, r7
+ 80023b0:	bd80      	pop	{r7, pc}
+ 80023b2:	bf00      	nop
+ 80023b4:	20001ddc 	.word	0x20001ddc
+ 80023b8:	20001de0 	.word	0x20001de0
+ 80023bc:	e000ed04 	.word	0xe000ed04
+
+080023c0 <prvGetNextExpireTime>:
 /*-----------------------------------------------------------*/
 
 static TickType_t prvGetNextExpireTime( BaseType_t * const pxListWasEmpty )
 {
- 80024e8:	b480      	push	{r7}
- 80024ea:	b085      	sub	sp, #20
- 80024ec:	af00      	add	r7, sp, #0
- 80024ee:	6078      	str	r0, [r7, #4]
+ 80023c0:	b480      	push	{r7}
+ 80023c2:	b085      	sub	sp, #20
+ 80023c4:	af00      	add	r7, sp, #0
+ 80023c6:	6078      	str	r0, [r7, #4]
 	the timer with the nearest expiry time will expire.  If there are no
 	active timers then just set the next expire time to 0.  That will cause
 	this task to unblock when the tick count overflows, at which point the
 	timer lists will be switched and the next expiry time can be
 	re-assessed.  */
 	*pxListWasEmpty = listLIST_IS_EMPTY( pxCurrentTimerList );
- 80024f0:	4b0e      	ldr	r3, [pc, #56]	; (800252c <prvGetNextExpireTime+0x44>)
- 80024f2:	681b      	ldr	r3, [r3, #0]
- 80024f4:	681b      	ldr	r3, [r3, #0]
- 80024f6:	2b00      	cmp	r3, #0
- 80024f8:	bf0c      	ite	eq
- 80024fa:	2301      	moveq	r3, #1
- 80024fc:	2300      	movne	r3, #0
- 80024fe:	b2db      	uxtb	r3, r3
- 8002500:	461a      	mov	r2, r3
- 8002502:	687b      	ldr	r3, [r7, #4]
- 8002504:	601a      	str	r2, [r3, #0]
+ 80023c8:	4b0e      	ldr	r3, [pc, #56]	; (8002404 <prvGetNextExpireTime+0x44>)
+ 80023ca:	681b      	ldr	r3, [r3, #0]
+ 80023cc:	681b      	ldr	r3, [r3, #0]
+ 80023ce:	2b00      	cmp	r3, #0
+ 80023d0:	bf0c      	ite	eq
+ 80023d2:	2301      	moveq	r3, #1
+ 80023d4:	2300      	movne	r3, #0
+ 80023d6:	b2db      	uxtb	r3, r3
+ 80023d8:	461a      	mov	r2, r3
+ 80023da:	687b      	ldr	r3, [r7, #4]
+ 80023dc:	601a      	str	r2, [r3, #0]
 	if( *pxListWasEmpty == pdFALSE )
- 8002506:	687b      	ldr	r3, [r7, #4]
- 8002508:	681b      	ldr	r3, [r3, #0]
- 800250a:	2b00      	cmp	r3, #0
- 800250c:	d105      	bne.n	800251a <prvGetNextExpireTime+0x32>
+ 80023de:	687b      	ldr	r3, [r7, #4]
+ 80023e0:	681b      	ldr	r3, [r3, #0]
+ 80023e2:	2b00      	cmp	r3, #0
+ 80023e4:	d105      	bne.n	80023f2 <prvGetNextExpireTime+0x32>
 	{
 		xNextExpireTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxCurrentTimerList );
- 800250e:	4b07      	ldr	r3, [pc, #28]	; (800252c <prvGetNextExpireTime+0x44>)
- 8002510:	681b      	ldr	r3, [r3, #0]
- 8002512:	68db      	ldr	r3, [r3, #12]
- 8002514:	681b      	ldr	r3, [r3, #0]
- 8002516:	60fb      	str	r3, [r7, #12]
- 8002518:	e001      	b.n	800251e <prvGetNextExpireTime+0x36>
+ 80023e6:	4b07      	ldr	r3, [pc, #28]	; (8002404 <prvGetNextExpireTime+0x44>)
+ 80023e8:	681b      	ldr	r3, [r3, #0]
+ 80023ea:	68db      	ldr	r3, [r3, #12]
+ 80023ec:	681b      	ldr	r3, [r3, #0]
+ 80023ee:	60fb      	str	r3, [r7, #12]
+ 80023f0:	e001      	b.n	80023f6 <prvGetNextExpireTime+0x36>
 	}
 	else
 	{
 		/* Ensure the task unblocks when the tick count rolls over. */
 		xNextExpireTime = ( TickType_t ) 0U;
- 800251a:	2300      	movs	r3, #0
- 800251c:	60fb      	str	r3, [r7, #12]
+ 80023f2:	2300      	movs	r3, #0
+ 80023f4:	60fb      	str	r3, [r7, #12]
 	}
 
 	return xNextExpireTime;
- 800251e:	68fb      	ldr	r3, [r7, #12]
+ 80023f6:	68fb      	ldr	r3, [r7, #12]
 }
- 8002520:	4618      	mov	r0, r3
- 8002522:	3714      	adds	r7, #20
- 8002524:	46bd      	mov	sp, r7
- 8002526:	f85d 7b04 	ldr.w	r7, [sp], #4
- 800252a:	4770      	bx	lr
- 800252c:	20001d70 	.word	0x20001d70
-
-08002530 <prvSampleTimeNow>:
+ 80023f8:	4618      	mov	r0, r3
+ 80023fa:	3714      	adds	r7, #20
+ 80023fc:	46bd      	mov	sp, r7
+ 80023fe:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002402:	4770      	bx	lr
+ 8002404:	20001dd8 	.word	0x20001dd8
+
+08002408 <prvSampleTimeNow>:
 /*-----------------------------------------------------------*/
 
 static TickType_t prvSampleTimeNow( BaseType_t * const pxTimerListsWereSwitched )
 {
- 8002530:	b580      	push	{r7, lr}
- 8002532:	b084      	sub	sp, #16
- 8002534:	af00      	add	r7, sp, #0
- 8002536:	6078      	str	r0, [r7, #4]
+ 8002408:	b580      	push	{r7, lr}
+ 800240a:	b084      	sub	sp, #16
+ 800240c:	af00      	add	r7, sp, #0
+ 800240e:	6078      	str	r0, [r7, #4]
 TickType_t xTimeNow;
 PRIVILEGED_DATA static TickType_t xLastTime = ( TickType_t ) 0U; /*lint !e956 Variable is only accessible to one task. */
 
 	xTimeNow = xTaskGetTickCount();
- 8002538:	f7ff f97a 	bl	8001830 <xTaskGetTickCount>
- 800253c:	60f8      	str	r0, [r7, #12]
+ 8002410:	f7ff f9c8 	bl	80017a4 <xTaskGetTickCount>
+ 8002414:	60f8      	str	r0, [r7, #12]
 
 	if( xTimeNow < xLastTime )
- 800253e:	4b0b      	ldr	r3, [pc, #44]	; (800256c <prvSampleTimeNow+0x3c>)
- 8002540:	681b      	ldr	r3, [r3, #0]
- 8002542:	68fa      	ldr	r2, [r7, #12]
- 8002544:	429a      	cmp	r2, r3
- 8002546:	d205      	bcs.n	8002554 <prvSampleTimeNow+0x24>
+ 8002416:	4b0b      	ldr	r3, [pc, #44]	; (8002444 <prvSampleTimeNow+0x3c>)
+ 8002418:	681b      	ldr	r3, [r3, #0]
+ 800241a:	68fa      	ldr	r2, [r7, #12]
+ 800241c:	429a      	cmp	r2, r3
+ 800241e:	d205      	bcs.n	800242c <prvSampleTimeNow+0x24>
 	{
 		prvSwitchTimerLists();
- 8002548:	f000 f8e6 	bl	8002718 <prvSwitchTimerLists>
+ 8002420:	f000 f8e6 	bl	80025f0 <prvSwitchTimerLists>
 		*pxTimerListsWereSwitched = pdTRUE;
- 800254c:	687b      	ldr	r3, [r7, #4]
- 800254e:	2201      	movs	r2, #1
- 8002550:	601a      	str	r2, [r3, #0]
- 8002552:	e002      	b.n	800255a <prvSampleTimeNow+0x2a>
+ 8002424:	687b      	ldr	r3, [r7, #4]
+ 8002426:	2201      	movs	r2, #1
+ 8002428:	601a      	str	r2, [r3, #0]
+ 800242a:	e002      	b.n	8002432 <prvSampleTimeNow+0x2a>
 	}
 	else
 	{
 		*pxTimerListsWereSwitched = pdFALSE;
- 8002554:	687b      	ldr	r3, [r7, #4]
- 8002556:	2200      	movs	r2, #0
- 8002558:	601a      	str	r2, [r3, #0]
+ 800242c:	687b      	ldr	r3, [r7, #4]
+ 800242e:	2200      	movs	r2, #0
+ 8002430:	601a      	str	r2, [r3, #0]
 	}
 
 	xLastTime = xTimeNow;
- 800255a:	4a04      	ldr	r2, [pc, #16]	; (800256c <prvSampleTimeNow+0x3c>)
- 800255c:	68fb      	ldr	r3, [r7, #12]
- 800255e:	6013      	str	r3, [r2, #0]
+ 8002432:	4a04      	ldr	r2, [pc, #16]	; (8002444 <prvSampleTimeNow+0x3c>)
+ 8002434:	68fb      	ldr	r3, [r7, #12]
+ 8002436:	6013      	str	r3, [r2, #0]
 
 	return xTimeNow;
- 8002560:	68fb      	ldr	r3, [r7, #12]
+ 8002438:	68fb      	ldr	r3, [r7, #12]
 }
- 8002562:	4618      	mov	r0, r3
- 8002564:	3710      	adds	r7, #16
- 8002566:	46bd      	mov	sp, r7
- 8002568:	bd80      	pop	{r7, pc}
- 800256a:	bf00      	nop
- 800256c:	20001d80 	.word	0x20001d80
-
-08002570 <prvInsertTimerInActiveList>:
+ 800243a:	4618      	mov	r0, r3
+ 800243c:	3710      	adds	r7, #16
+ 800243e:	46bd      	mov	sp, r7
+ 8002440:	bd80      	pop	{r7, pc}
+ 8002442:	bf00      	nop
+ 8002444:	20001de8 	.word	0x20001de8
+
+08002448 <prvInsertTimerInActiveList>:
 /*-----------------------------------------------------------*/
 
 static BaseType_t prvInsertTimerInActiveList( Timer_t * const pxTimer, const TickType_t xNextExpiryTime, const TickType_t xTimeNow, const TickType_t xCommandTime )
 {
- 8002570:	b580      	push	{r7, lr}
- 8002572:	b086      	sub	sp, #24
- 8002574:	af00      	add	r7, sp, #0
- 8002576:	60f8      	str	r0, [r7, #12]
- 8002578:	60b9      	str	r1, [r7, #8]
- 800257a:	607a      	str	r2, [r7, #4]
- 800257c:	603b      	str	r3, [r7, #0]
+ 8002448:	b580      	push	{r7, lr}
+ 800244a:	b086      	sub	sp, #24
+ 800244c:	af00      	add	r7, sp, #0
+ 800244e:	60f8      	str	r0, [r7, #12]
+ 8002450:	60b9      	str	r1, [r7, #8]
+ 8002452:	607a      	str	r2, [r7, #4]
+ 8002454:	603b      	str	r3, [r7, #0]
 BaseType_t xProcessTimerNow = pdFALSE;
- 800257e:	2300      	movs	r3, #0
- 8002580:	617b      	str	r3, [r7, #20]
+ 8002456:	2300      	movs	r3, #0
+ 8002458:	617b      	str	r3, [r7, #20]
 
 	listSET_LIST_ITEM_VALUE( &( pxTimer->xTimerListItem ), xNextExpiryTime );
- 8002582:	68fb      	ldr	r3, [r7, #12]
- 8002584:	68ba      	ldr	r2, [r7, #8]
- 8002586:	605a      	str	r2, [r3, #4]
+ 800245a:	68fb      	ldr	r3, [r7, #12]
+ 800245c:	68ba      	ldr	r2, [r7, #8]
+ 800245e:	605a      	str	r2, [r3, #4]
 	listSET_LIST_ITEM_OWNER( &( pxTimer->xTimerListItem ), pxTimer );
- 8002588:	68fb      	ldr	r3, [r7, #12]
- 800258a:	68fa      	ldr	r2, [r7, #12]
- 800258c:	611a      	str	r2, [r3, #16]
+ 8002460:	68fb      	ldr	r3, [r7, #12]
+ 8002462:	68fa      	ldr	r2, [r7, #12]
+ 8002464:	611a      	str	r2, [r3, #16]
 
 	if( xNextExpiryTime <= xTimeNow )
- 800258e:	68ba      	ldr	r2, [r7, #8]
- 8002590:	687b      	ldr	r3, [r7, #4]
- 8002592:	429a      	cmp	r2, r3
- 8002594:	d812      	bhi.n	80025bc <prvInsertTimerInActiveList+0x4c>
+ 8002466:	68ba      	ldr	r2, [r7, #8]
+ 8002468:	687b      	ldr	r3, [r7, #4]
+ 800246a:	429a      	cmp	r2, r3
+ 800246c:	d812      	bhi.n	8002494 <prvInsertTimerInActiveList+0x4c>
 	{
 		/* Has the expiry time elapsed between the command to start/reset a
 		timer was issued, and the time the command was processed? */
 		if( ( ( TickType_t ) ( xTimeNow - xCommandTime ) ) >= pxTimer->xTimerPeriodInTicks ) /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
- 8002596:	687a      	ldr	r2, [r7, #4]
- 8002598:	683b      	ldr	r3, [r7, #0]
- 800259a:	1ad2      	subs	r2, r2, r3
- 800259c:	68fb      	ldr	r3, [r7, #12]
- 800259e:	699b      	ldr	r3, [r3, #24]
- 80025a0:	429a      	cmp	r2, r3
- 80025a2:	d302      	bcc.n	80025aa <prvInsertTimerInActiveList+0x3a>
+ 800246e:	687a      	ldr	r2, [r7, #4]
+ 8002470:	683b      	ldr	r3, [r7, #0]
+ 8002472:	1ad2      	subs	r2, r2, r3
+ 8002474:	68fb      	ldr	r3, [r7, #12]
+ 8002476:	699b      	ldr	r3, [r3, #24]
+ 8002478:	429a      	cmp	r2, r3
+ 800247a:	d302      	bcc.n	8002482 <prvInsertTimerInActiveList+0x3a>
 		{
 			/* The time between a command being issued and the command being
 			processed actually exceeds the timers period.  */
 			xProcessTimerNow = pdTRUE;
- 80025a4:	2301      	movs	r3, #1
- 80025a6:	617b      	str	r3, [r7, #20]
- 80025a8:	e01b      	b.n	80025e2 <prvInsertTimerInActiveList+0x72>
+ 800247c:	2301      	movs	r3, #1
+ 800247e:	617b      	str	r3, [r7, #20]
+ 8002480:	e01b      	b.n	80024ba <prvInsertTimerInActiveList+0x72>
 		}
 		else
 		{
 			vListInsert( pxOverflowTimerList, &( pxTimer->xTimerListItem ) );
- 80025aa:	4b10      	ldr	r3, [pc, #64]	; (80025ec <prvInsertTimerInActiveList+0x7c>)
- 80025ac:	681a      	ldr	r2, [r3, #0]
- 80025ae:	68fb      	ldr	r3, [r7, #12]
- 80025b0:	3304      	adds	r3, #4
- 80025b2:	4619      	mov	r1, r3
- 80025b4:	4610      	mov	r0, r2
- 80025b6:	f7fd fe5c 	bl	8000272 <vListInsert>
- 80025ba:	e012      	b.n	80025e2 <prvInsertTimerInActiveList+0x72>
+ 8002482:	4b10      	ldr	r3, [pc, #64]	; (80024c4 <prvInsertTimerInActiveList+0x7c>)
+ 8002484:	681a      	ldr	r2, [r3, #0]
+ 8002486:	68fb      	ldr	r3, [r7, #12]
+ 8002488:	3304      	adds	r3, #4
+ 800248a:	4619      	mov	r1, r3
+ 800248c:	4610      	mov	r0, r2
+ 800248e:	f7fd fef0 	bl	8000272 <vListInsert>
+ 8002492:	e012      	b.n	80024ba <prvInsertTimerInActiveList+0x72>
 		}
 	}
 	else
 	{
 		if( ( xTimeNow < xCommandTime ) && ( xNextExpiryTime >= xCommandTime ) )
- 80025bc:	687a      	ldr	r2, [r7, #4]
- 80025be:	683b      	ldr	r3, [r7, #0]
- 80025c0:	429a      	cmp	r2, r3
- 80025c2:	d206      	bcs.n	80025d2 <prvInsertTimerInActiveList+0x62>
- 80025c4:	68ba      	ldr	r2, [r7, #8]
- 80025c6:	683b      	ldr	r3, [r7, #0]
- 80025c8:	429a      	cmp	r2, r3
- 80025ca:	d302      	bcc.n	80025d2 <prvInsertTimerInActiveList+0x62>
+ 8002494:	687a      	ldr	r2, [r7, #4]
+ 8002496:	683b      	ldr	r3, [r7, #0]
+ 8002498:	429a      	cmp	r2, r3
+ 800249a:	d206      	bcs.n	80024aa <prvInsertTimerInActiveList+0x62>
+ 800249c:	68ba      	ldr	r2, [r7, #8]
+ 800249e:	683b      	ldr	r3, [r7, #0]
+ 80024a0:	429a      	cmp	r2, r3
+ 80024a2:	d302      	bcc.n	80024aa <prvInsertTimerInActiveList+0x62>
 		{
 			/* If, since the command was issued, the tick count has overflowed
 			but the expiry time has not, then the timer must have already passed
 			its expiry time and should be processed immediately. */
 			xProcessTimerNow = pdTRUE;
- 80025cc:	2301      	movs	r3, #1
- 80025ce:	617b      	str	r3, [r7, #20]
- 80025d0:	e007      	b.n	80025e2 <prvInsertTimerInActiveList+0x72>
+ 80024a4:	2301      	movs	r3, #1
+ 80024a6:	617b      	str	r3, [r7, #20]
+ 80024a8:	e007      	b.n	80024ba <prvInsertTimerInActiveList+0x72>
 		}
 		else
 		{
 			vListInsert( pxCurrentTimerList, &( pxTimer->xTimerListItem ) );
- 80025d2:	4b07      	ldr	r3, [pc, #28]	; (80025f0 <prvInsertTimerInActiveList+0x80>)
- 80025d4:	681a      	ldr	r2, [r3, #0]
- 80025d6:	68fb      	ldr	r3, [r7, #12]
- 80025d8:	3304      	adds	r3, #4
- 80025da:	4619      	mov	r1, r3
- 80025dc:	4610      	mov	r0, r2
- 80025de:	f7fd fe48 	bl	8000272 <vListInsert>
+ 80024aa:	4b07      	ldr	r3, [pc, #28]	; (80024c8 <prvInsertTimerInActiveList+0x80>)
+ 80024ac:	681a      	ldr	r2, [r3, #0]
+ 80024ae:	68fb      	ldr	r3, [r7, #12]
+ 80024b0:	3304      	adds	r3, #4
+ 80024b2:	4619      	mov	r1, r3
+ 80024b4:	4610      	mov	r0, r2
+ 80024b6:	f7fd fedc 	bl	8000272 <vListInsert>
 		}
 	}
 
 	return xProcessTimerNow;
- 80025e2:	697b      	ldr	r3, [r7, #20]
+ 80024ba:	697b      	ldr	r3, [r7, #20]
 }
- 80025e4:	4618      	mov	r0, r3
- 80025e6:	3718      	adds	r7, #24
- 80025e8:	46bd      	mov	sp, r7
- 80025ea:	bd80      	pop	{r7, pc}
- 80025ec:	20001d74 	.word	0x20001d74
- 80025f0:	20001d70 	.word	0x20001d70
-
-080025f4 <prvProcessReceivedCommands>:
+ 80024bc:	4618      	mov	r0, r3
+ 80024be:	3718      	adds	r7, #24
+ 80024c0:	46bd      	mov	sp, r7
+ 80024c2:	bd80      	pop	{r7, pc}
+ 80024c4:	20001ddc 	.word	0x20001ddc
+ 80024c8:	20001dd8 	.word	0x20001dd8
+
+080024cc <prvProcessReceivedCommands>:
 /*-----------------------------------------------------------*/
 
 static void	prvProcessReceivedCommands( void )
 {
- 80025f4:	b580      	push	{r7, lr}
- 80025f6:	b08c      	sub	sp, #48	; 0x30
- 80025f8:	af02      	add	r7, sp, #8
+ 80024cc:	b580      	push	{r7, lr}
+ 80024ce:	b08c      	sub	sp, #48	; 0x30
+ 80024d0:	af02      	add	r7, sp, #8
 DaemonTaskMessage_t xMessage;
 Timer_t *pxTimer;
 BaseType_t xTimerListsWereSwitched, xResult;
 TickType_t xTimeNow;
 
 	while( xQueueReceive( xTimerQueue, &xMessage, tmrNO_DELAY ) != pdFAIL ) /*lint !e603 xMessage does not have to be initialised as it is passed out, not in, and it is not used unless xQueueReceive() returns pdTRUE. */
- 80025fa:	e07a      	b.n	80026f2 <prvProcessReceivedCommands+0xfe>
+ 80024d2:	e07a      	b.n	80025ca <prvProcessReceivedCommands+0xfe>
 		}
 		#endif /* INCLUDE_xTimerPendFunctionCall */
 
 		/* Commands that are positive are timer commands rather than pended
 		function calls. */
 		if( xMessage.xMessageID >= ( BaseType_t ) 0 )
- 80025fc:	68bb      	ldr	r3, [r7, #8]
- 80025fe:	2b00      	cmp	r3, #0
- 8002600:	db77      	blt.n	80026f2 <prvProcessReceivedCommands+0xfe>
+ 80024d4:	68bb      	ldr	r3, [r7, #8]
+ 80024d6:	2b00      	cmp	r3, #0
+ 80024d8:	db77      	blt.n	80025ca <prvProcessReceivedCommands+0xfe>
 		{
 			/* The messages uses the xTimerParameters member to work on a
 			software timer. */
 			pxTimer = xMessage.u.xTimerParameters.pxTimer;
- 8002602:	693b      	ldr	r3, [r7, #16]
- 8002604:	627b      	str	r3, [r7, #36]	; 0x24
+ 80024da:	693b      	ldr	r3, [r7, #16]
+ 80024dc:	627b      	str	r3, [r7, #36]	; 0x24
 
 			if( listIS_CONTAINED_WITHIN( NULL, &( pxTimer->xTimerListItem ) ) == pdFALSE )
- 8002606:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 8002608:	695b      	ldr	r3, [r3, #20]
- 800260a:	2b00      	cmp	r3, #0
- 800260c:	d004      	beq.n	8002618 <prvProcessReceivedCommands+0x24>
+ 80024de:	6a7b      	ldr	r3, [r7, #36]	; 0x24
+ 80024e0:	695b      	ldr	r3, [r3, #20]
+ 80024e2:	2b00      	cmp	r3, #0
+ 80024e4:	d004      	beq.n	80024f0 <prvProcessReceivedCommands+0x24>
 			{
 				/* The timer is in a list, remove it. */
 				( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
- 800260e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 8002610:	3304      	adds	r3, #4
- 8002612:	4618      	mov	r0, r3
- 8002614:	f7fd fe66 	bl	80002e4 <uxListRemove>
+ 80024e6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
+ 80024e8:	3304      	adds	r3, #4
+ 80024ea:	4618      	mov	r0, r3
+ 80024ec:	f7fd fefa 	bl	80002e4 <uxListRemove>
 			it must be present in the function call.  prvSampleTimeNow() must be
 			called after the message is received from xTimerQueue so there is no
 			possibility of a higher priority task adding a message to the message
 			queue with a time that is ahead of the timer daemon task (because it
 			pre-empted the timer daemon task after the xTimeNow value was set). */
 			xTimeNow = prvSampleTimeNow( &xTimerListsWereSwitched );
- 8002618:	1d3b      	adds	r3, r7, #4
- 800261a:	4618      	mov	r0, r3
- 800261c:	f7ff ff88 	bl	8002530 <prvSampleTimeNow>
- 8002620:	6238      	str	r0, [r7, #32]
+ 80024f0:	1d3b      	adds	r3, r7, #4
+ 80024f2:	4618      	mov	r0, r3
+ 80024f4:	f7ff ff88 	bl	8002408 <prvSampleTimeNow>
+ 80024f8:	6238      	str	r0, [r7, #32]
 
 			switch( xMessage.xMessageID )
- 8002622:	68bb      	ldr	r3, [r7, #8]
- 8002624:	2b09      	cmp	r3, #9
- 8002626:	d863      	bhi.n	80026f0 <prvProcessReceivedCommands+0xfc>
- 8002628:	a201      	add	r2, pc, #4	; (adr r2, 8002630 <prvProcessReceivedCommands+0x3c>)
- 800262a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
- 800262e:	bf00      	nop
- 8002630:	08002659 	.word	0x08002659
- 8002634:	08002659 	.word	0x08002659
- 8002638:	08002659 	.word	0x08002659
- 800263c:	080026f3 	.word	0x080026f3
- 8002640:	080026b3 	.word	0x080026b3
- 8002644:	080026e9 	.word	0x080026e9
- 8002648:	08002659 	.word	0x08002659
- 800264c:	08002659 	.word	0x08002659
- 8002650:	080026f3 	.word	0x080026f3
- 8002654:	080026b3 	.word	0x080026b3
+ 80024fa:	68bb      	ldr	r3, [r7, #8]
+ 80024fc:	2b09      	cmp	r3, #9
+ 80024fe:	d863      	bhi.n	80025c8 <prvProcessReceivedCommands+0xfc>
+ 8002500:	a201      	add	r2, pc, #4	; (adr r2, 8002508 <prvProcessReceivedCommands+0x3c>)
+ 8002502:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
+ 8002506:	bf00      	nop
+ 8002508:	08002531 	.word	0x08002531
+ 800250c:	08002531 	.word	0x08002531
+ 8002510:	08002531 	.word	0x08002531
+ 8002514:	080025cb 	.word	0x080025cb
+ 8002518:	0800258b 	.word	0x0800258b
+ 800251c:	080025c1 	.word	0x080025c1
+ 8002520:	08002531 	.word	0x08002531
+ 8002524:	08002531 	.word	0x08002531
+ 8002528:	080025cb 	.word	0x080025cb
+ 800252c:	0800258b 	.word	0x0800258b
 			    case tmrCOMMAND_START_FROM_ISR :
 			    case tmrCOMMAND_RESET :
 			    case tmrCOMMAND_RESET_FROM_ISR :
 				case tmrCOMMAND_START_DONT_TRACE :
 					/* Start or restart a timer. */
 					if( prvInsertTimerInActiveList( pxTimer,  xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, xTimeNow, xMessage.u.xTimerParameters.xMessageValue ) != pdFALSE )
- 8002658:	68fa      	ldr	r2, [r7, #12]
- 800265a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 800265c:	699b      	ldr	r3, [r3, #24]
- 800265e:	18d1      	adds	r1, r2, r3
- 8002660:	68fb      	ldr	r3, [r7, #12]
- 8002662:	6a3a      	ldr	r2, [r7, #32]
- 8002664:	6a78      	ldr	r0, [r7, #36]	; 0x24
- 8002666:	f7ff ff83 	bl	8002570 <prvInsertTimerInActiveList>
- 800266a:	4603      	mov	r3, r0
- 800266c:	2b00      	cmp	r3, #0
- 800266e:	d040      	beq.n	80026f2 <prvProcessReceivedCommands+0xfe>
+ 8002530:	68fa      	ldr	r2, [r7, #12]
+ 8002532:	6a7b      	ldr	r3, [r7, #36]	; 0x24
+ 8002534:	699b      	ldr	r3, [r3, #24]
+ 8002536:	18d1      	adds	r1, r2, r3
+ 8002538:	68fb      	ldr	r3, [r7, #12]
+ 800253a:	6a3a      	ldr	r2, [r7, #32]
+ 800253c:	6a78      	ldr	r0, [r7, #36]	; 0x24
+ 800253e:	f7ff ff83 	bl	8002448 <prvInsertTimerInActiveList>
+ 8002542:	4603      	mov	r3, r0
+ 8002544:	2b00      	cmp	r3, #0
+ 8002546:	d040      	beq.n	80025ca <prvProcessReceivedCommands+0xfe>
 					{
 						/* The timer expired before it was added to the active
 						timer list.  Process it now. */
 						pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
- 8002670:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 8002672:	6a5b      	ldr	r3, [r3, #36]	; 0x24
- 8002674:	6a78      	ldr	r0, [r7, #36]	; 0x24
- 8002676:	4798      	blx	r3
+ 8002548:	6a7b      	ldr	r3, [r7, #36]	; 0x24
+ 800254a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
+ 800254c:	6a78      	ldr	r0, [r7, #36]	; 0x24
+ 800254e:	4798      	blx	r3
 						traceTIMER_EXPIRED( pxTimer );
 
 						if( pxTimer->uxAutoReload == ( UBaseType_t ) pdTRUE )
- 8002678:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 800267a:	69db      	ldr	r3, [r3, #28]
- 800267c:	2b01      	cmp	r3, #1
- 800267e:	d138      	bne.n	80026f2 <prvProcessReceivedCommands+0xfe>
+ 8002550:	6a7b      	ldr	r3, [r7, #36]	; 0x24
+ 8002552:	69db      	ldr	r3, [r3, #28]
+ 8002554:	2b01      	cmp	r3, #1
+ 8002556:	d138      	bne.n	80025ca <prvProcessReceivedCommands+0xfe>
 						{
 							xResult = xTimerGenericCommand( pxTimer, tmrCOMMAND_START_DONT_TRACE, xMessage.u.xTimerParameters.xMessageValue + pxTimer->xTimerPeriodInTicks, NULL, tmrNO_DELAY );
- 8002680:	68fa      	ldr	r2, [r7, #12]
- 8002682:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 8002684:	699b      	ldr	r3, [r3, #24]
- 8002686:	441a      	add	r2, r3
- 8002688:	2300      	movs	r3, #0
- 800268a:	9300      	str	r3, [sp, #0]
- 800268c:	2300      	movs	r3, #0
- 800268e:	2100      	movs	r1, #0
- 8002690:	6a78      	ldr	r0, [r7, #36]	; 0x24
- 8002692:	f7ff fe3d 	bl	8002310 <xTimerGenericCommand>
- 8002696:	61f8      	str	r0, [r7, #28]
+ 8002558:	68fa      	ldr	r2, [r7, #12]
+ 800255a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
+ 800255c:	699b      	ldr	r3, [r3, #24]
+ 800255e:	441a      	add	r2, r3
+ 8002560:	2300      	movs	r3, #0
+ 8002562:	9300      	str	r3, [sp, #0]
+ 8002564:	2300      	movs	r3, #0
+ 8002566:	2100      	movs	r1, #0
+ 8002568:	6a78      	ldr	r0, [r7, #36]	; 0x24
+ 800256a:	f7ff fe3d 	bl	80021e8 <xTimerGenericCommand>
+ 800256e:	61f8      	str	r0, [r7, #28]
 							configASSERT( xResult );
- 8002698:	69fb      	ldr	r3, [r7, #28]
- 800269a:	2b00      	cmp	r3, #0
- 800269c:	d129      	bne.n	80026f2 <prvProcessReceivedCommands+0xfe>
- 800269e:	f04f 0350 	mov.w	r3, #80	; 0x50
- 80026a2:	f383 8811 	msr	BASEPRI, r3
- 80026a6:	f3bf 8f6f 	isb	sy
- 80026aa:	f3bf 8f4f 	dsb	sy
- 80026ae:	61bb      	str	r3, [r7, #24]
- 80026b0:	e7fe      	b.n	80026b0 <prvProcessReceivedCommands+0xbc>
+ 8002570:	69fb      	ldr	r3, [r7, #28]
+ 8002572:	2b00      	cmp	r3, #0
+ 8002574:	d129      	bne.n	80025ca <prvProcessReceivedCommands+0xfe>
+ 8002576:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 800257a:	f383 8811 	msr	BASEPRI, r3
+ 800257e:	f3bf 8f6f 	isb	sy
+ 8002582:	f3bf 8f4f 	dsb	sy
+ 8002586:	61bb      	str	r3, [r7, #24]
+ 8002588:	e7fe      	b.n	8002588 <prvProcessReceivedCommands+0xbc>
 					There is nothing to do here. */
 					break;
 
 				case tmrCOMMAND_CHANGE_PERIOD :
 				case tmrCOMMAND_CHANGE_PERIOD_FROM_ISR :
 					pxTimer->xTimerPeriodInTicks = xMessage.u.xTimerParameters.xMessageValue;
- 80026b2:	68fa      	ldr	r2, [r7, #12]
- 80026b4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 80026b6:	619a      	str	r2, [r3, #24]
+ 800258a:	68fa      	ldr	r2, [r7, #12]
+ 800258c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
+ 800258e:	619a      	str	r2, [r3, #24]
 					configASSERT( ( pxTimer->xTimerPeriodInTicks > 0 ) );
- 80026b8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 80026ba:	699b      	ldr	r3, [r3, #24]
- 80026bc:	2b00      	cmp	r3, #0
- 80026be:	d109      	bne.n	80026d4 <prvProcessReceivedCommands+0xe0>
- 80026c0:	f04f 0350 	mov.w	r3, #80	; 0x50
- 80026c4:	f383 8811 	msr	BASEPRI, r3
- 80026c8:	f3bf 8f6f 	isb	sy
- 80026cc:	f3bf 8f4f 	dsb	sy
- 80026d0:	617b      	str	r3, [r7, #20]
- 80026d2:	e7fe      	b.n	80026d2 <prvProcessReceivedCommands+0xde>
+ 8002590:	6a7b      	ldr	r3, [r7, #36]	; 0x24
+ 8002592:	699b      	ldr	r3, [r3, #24]
+ 8002594:	2b00      	cmp	r3, #0
+ 8002596:	d109      	bne.n	80025ac <prvProcessReceivedCommands+0xe0>
+ 8002598:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 800259c:	f383 8811 	msr	BASEPRI, r3
+ 80025a0:	f3bf 8f6f 	isb	sy
+ 80025a4:	f3bf 8f4f 	dsb	sy
+ 80025a8:	617b      	str	r3, [r7, #20]
+ 80025aa:	e7fe      	b.n	80025aa <prvProcessReceivedCommands+0xde>
 					be longer or shorter than the old one.  The command time is
 					therefore set to the current time, and as the period cannot
 					be zero the next expiry time can only be in the future,
 					meaning (unlike for the xTimerStart() case above) there is
 					no fail case that needs to be handled here. */
 					( void ) prvInsertTimerInActiveList( pxTimer, ( xTimeNow + pxTimer->xTimerPeriodInTicks ), xTimeNow, xTimeNow );
- 80026d4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
- 80026d6:	699a      	ldr	r2, [r3, #24]
- 80026d8:	6a3b      	ldr	r3, [r7, #32]
- 80026da:	18d1      	adds	r1, r2, r3
- 80026dc:	6a3b      	ldr	r3, [r7, #32]
- 80026de:	6a3a      	ldr	r2, [r7, #32]
- 80026e0:	6a78      	ldr	r0, [r7, #36]	; 0x24
- 80026e2:	f7ff ff45 	bl	8002570 <prvInsertTimerInActiveList>
+ 80025ac:	6a7b      	ldr	r3, [r7, #36]	; 0x24
+ 80025ae:	699a      	ldr	r2, [r3, #24]
+ 80025b0:	6a3b      	ldr	r3, [r7, #32]
+ 80025b2:	18d1      	adds	r1, r2, r3
+ 80025b4:	6a3b      	ldr	r3, [r7, #32]
+ 80025b6:	6a3a      	ldr	r2, [r7, #32]
+ 80025b8:	6a78      	ldr	r0, [r7, #36]	; 0x24
+ 80025ba:	f7ff ff45 	bl	8002448 <prvInsertTimerInActiveList>
 					break;
- 80026e6:	e004      	b.n	80026f2 <prvProcessReceivedCommands+0xfe>
+ 80025be:	e004      	b.n	80025ca <prvProcessReceivedCommands+0xfe>
 					allocated. */
 					#if( ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 0 ) )
 					{
 						/* The timer can only have been allocated dynamically -
 						free it again. */
 						vPortFree( pxTimer );
- 80026e8:	6a78      	ldr	r0, [r7, #36]	; 0x24
- 80026ea:	f7fe f883 	bl	80007f4 <vPortFree>
+ 80025c0:	6a78      	ldr	r0, [r7, #36]	; 0x24
+ 80025c2:	f7fe f917 	bl	80007f4 <vPortFree>
 						{
 							mtCOVERAGE_TEST_MARKER();
 						}
 					}
 					#endif /* configSUPPORT_DYNAMIC_ALLOCATION */
 					break;
- 80026ee:	e000      	b.n	80026f2 <prvProcessReceivedCommands+0xfe>
+ 80025c6:	e000      	b.n	80025ca <prvProcessReceivedCommands+0xfe>
 
 				default	:
 					/* Don't expect to get here. */
 					break;
- 80026f0:	bf00      	nop
+ 80025c8:	bf00      	nop
 	while( xQueueReceive( xTimerQueue, &xMessage, tmrNO_DELAY ) != pdFAIL ) /*lint !e603 xMessage does not have to be initialised as it is passed out, not in, and it is not used unless xQueueReceive() returns pdTRUE. */
- 80026f2:	4b08      	ldr	r3, [pc, #32]	; (8002714 <prvProcessReceivedCommands+0x120>)
- 80026f4:	6818      	ldr	r0, [r3, #0]
- 80026f6:	f107 0108 	add.w	r1, r7, #8
- 80026fa:	2300      	movs	r3, #0
- 80026fc:	2200      	movs	r2, #0
- 80026fe:	f7fe fb77 	bl	8000df0 <xQueueGenericReceive>
- 8002702:	4603      	mov	r3, r0
- 8002704:	2b00      	cmp	r3, #0
- 8002706:	f47f af79 	bne.w	80025fc <prvProcessReceivedCommands+0x8>
+ 80025ca:	4b08      	ldr	r3, [pc, #32]	; (80025ec <prvProcessReceivedCommands+0x120>)
+ 80025cc:	6818      	ldr	r0, [r3, #0]
+ 80025ce:	f107 0108 	add.w	r1, r7, #8
+ 80025d2:	2300      	movs	r3, #0
+ 80025d4:	2200      	movs	r2, #0
+ 80025d6:	f7fe fc0b 	bl	8000df0 <xQueueGenericReceive>
+ 80025da:	4603      	mov	r3, r0
+ 80025dc:	2b00      	cmp	r3, #0
+ 80025de:	f47f af79 	bne.w	80024d4 <prvProcessReceivedCommands+0x8>
 			}
 		}
 	}
 }
- 800270a:	bf00      	nop
- 800270c:	3728      	adds	r7, #40	; 0x28
- 800270e:	46bd      	mov	sp, r7
- 8002710:	bd80      	pop	{r7, pc}
- 8002712:	bf00      	nop
- 8002714:	20001d78 	.word	0x20001d78
-
-08002718 <prvSwitchTimerLists>:
+ 80025e2:	bf00      	nop
+ 80025e4:	3728      	adds	r7, #40	; 0x28
+ 80025e6:	46bd      	mov	sp, r7
+ 80025e8:	bd80      	pop	{r7, pc}
+ 80025ea:	bf00      	nop
+ 80025ec:	20001de0 	.word	0x20001de0
+
+080025f0 <prvSwitchTimerLists>:
 /*-----------------------------------------------------------*/
 
 static void prvSwitchTimerLists( void )
 {
- 8002718:	b580      	push	{r7, lr}
- 800271a:	b088      	sub	sp, #32
- 800271c:	af02      	add	r7, sp, #8
+ 80025f0:	b580      	push	{r7, lr}
+ 80025f2:	b088      	sub	sp, #32
+ 80025f4:	af02      	add	r7, sp, #8
 
 	/* The tick count has overflowed.  The timer lists must be switched.
 	If there are any timers still referenced from the current timer list
 	then they must have expired and should be processed before the lists
 	are switched. */
 	while( listLIST_IS_EMPTY( pxCurrentTimerList ) == pdFALSE )
- 800271e:	e044      	b.n	80027aa <prvSwitchTimerLists+0x92>
+ 80025f6:	e044      	b.n	8002682 <prvSwitchTimerLists+0x92>
 	{
 		xNextExpireTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxCurrentTimerList );
- 8002720:	4b2b      	ldr	r3, [pc, #172]	; (80027d0 <prvSwitchTimerLists+0xb8>)
- 8002722:	681b      	ldr	r3, [r3, #0]
- 8002724:	68db      	ldr	r3, [r3, #12]
- 8002726:	681b      	ldr	r3, [r3, #0]
- 8002728:	617b      	str	r3, [r7, #20]
+ 80025f8:	4b2b      	ldr	r3, [pc, #172]	; (80026a8 <prvSwitchTimerLists+0xb8>)
+ 80025fa:	681b      	ldr	r3, [r3, #0]
+ 80025fc:	68db      	ldr	r3, [r3, #12]
+ 80025fe:	681b      	ldr	r3, [r3, #0]
+ 8002600:	617b      	str	r3, [r7, #20]
 
 		/* Remove the timer from the list. */
 		pxTimer = ( Timer_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxCurrentTimerList );
- 800272a:	4b29      	ldr	r3, [pc, #164]	; (80027d0 <prvSwitchTimerLists+0xb8>)
- 800272c:	681b      	ldr	r3, [r3, #0]
- 800272e:	68db      	ldr	r3, [r3, #12]
- 8002730:	68db      	ldr	r3, [r3, #12]
- 8002732:	613b      	str	r3, [r7, #16]
+ 8002602:	4b29      	ldr	r3, [pc, #164]	; (80026a8 <prvSwitchTimerLists+0xb8>)
+ 8002604:	681b      	ldr	r3, [r3, #0]
+ 8002606:	68db      	ldr	r3, [r3, #12]
+ 8002608:	68db      	ldr	r3, [r3, #12]
+ 800260a:	613b      	str	r3, [r7, #16]
 		( void ) uxListRemove( &( pxTimer->xTimerListItem ) );
- 8002734:	693b      	ldr	r3, [r7, #16]
- 8002736:	3304      	adds	r3, #4
- 8002738:	4618      	mov	r0, r3
- 800273a:	f7fd fdd3 	bl	80002e4 <uxListRemove>
+ 800260c:	693b      	ldr	r3, [r7, #16]
+ 800260e:	3304      	adds	r3, #4
+ 8002610:	4618      	mov	r0, r3
+ 8002612:	f7fd fe67 	bl	80002e4 <uxListRemove>
 		traceTIMER_EXPIRED( pxTimer );
 
 		/* Execute its callback, then send a command to restart the timer if
 		it is an auto-reload timer.  It cannot be restarted here as the lists
 		have not yet been switched. */
 		pxTimer->pxCallbackFunction( ( TimerHandle_t ) pxTimer );
- 800273e:	693b      	ldr	r3, [r7, #16]
- 8002740:	6a5b      	ldr	r3, [r3, #36]	; 0x24
- 8002742:	6938      	ldr	r0, [r7, #16]
- 8002744:	4798      	blx	r3
+ 8002616:	693b      	ldr	r3, [r7, #16]
+ 8002618:	6a5b      	ldr	r3, [r3, #36]	; 0x24
+ 800261a:	6938      	ldr	r0, [r7, #16]
+ 800261c:	4798      	blx	r3
 
 		if( pxTimer->uxAutoReload == ( UBaseType_t ) pdTRUE )
- 8002746:	693b      	ldr	r3, [r7, #16]
- 8002748:	69db      	ldr	r3, [r3, #28]
- 800274a:	2b01      	cmp	r3, #1
- 800274c:	d12d      	bne.n	80027aa <prvSwitchTimerLists+0x92>
+ 800261e:	693b      	ldr	r3, [r7, #16]
+ 8002620:	69db      	ldr	r3, [r3, #28]
+ 8002622:	2b01      	cmp	r3, #1
+ 8002624:	d12d      	bne.n	8002682 <prvSwitchTimerLists+0x92>
 			the timer going into the same timer list then it has already expired
 			and the timer should be re-inserted into the current list so it is
 			processed again within this loop.  Otherwise a command should be sent
 			to restart the timer to ensure it is only inserted into a list after
 			the lists have been swapped. */
 			xReloadTime = ( xNextExpireTime + pxTimer->xTimerPeriodInTicks );
- 800274e:	693b      	ldr	r3, [r7, #16]
- 8002750:	699a      	ldr	r2, [r3, #24]
- 8002752:	697b      	ldr	r3, [r7, #20]
- 8002754:	4413      	add	r3, r2
- 8002756:	60fb      	str	r3, [r7, #12]
+ 8002626:	693b      	ldr	r3, [r7, #16]
+ 8002628:	699a      	ldr	r2, [r3, #24]
+ 800262a:	697b      	ldr	r3, [r7, #20]
+ 800262c:	4413      	add	r3, r2
+ 800262e:	60fb      	str	r3, [r7, #12]
 			if( xReloadTime > xNextExpireTime )
- 8002758:	68fa      	ldr	r2, [r7, #12]
- 800275a:	697b      	ldr	r3, [r7, #20]
- 800275c:	429a      	cmp	r2, r3
- 800275e:	d90e      	bls.n	800277e <prvSwitchTimerLists+0x66>
+ 8002630:	68fa      	ldr	r2, [r7, #12]
+ 8002632:	697b      	ldr	r3, [r7, #20]
+ 8002634:	429a      	cmp	r2, r3
+ 8002636:	d90e      	bls.n	8002656 <prvSwitchTimerLists+0x66>
 			{
 				listSET_LIST_ITEM_VALUE( &( pxTimer->xTimerListItem ), xReloadTime );
- 8002760:	693b      	ldr	r3, [r7, #16]
- 8002762:	68fa      	ldr	r2, [r7, #12]
- 8002764:	605a      	str	r2, [r3, #4]
+ 8002638:	693b      	ldr	r3, [r7, #16]
+ 800263a:	68fa      	ldr	r2, [r7, #12]
+ 800263c:	605a      	str	r2, [r3, #4]
 				listSET_LIST_ITEM_OWNER( &( pxTimer->xTimerListItem ), pxTimer );
- 8002766:	693b      	ldr	r3, [r7, #16]
- 8002768:	693a      	ldr	r2, [r7, #16]
- 800276a:	611a      	str	r2, [r3, #16]
+ 800263e:	693b      	ldr	r3, [r7, #16]
+ 8002640:	693a      	ldr	r2, [r7, #16]
+ 8002642:	611a      	str	r2, [r3, #16]
 				vListInsert( pxCurrentTimerList, &( pxTimer->xTimerListItem ) );
- 800276c:	4b18      	ldr	r3, [pc, #96]	; (80027d0 <prvSwitchTimerLists+0xb8>)
- 800276e:	681a      	ldr	r2, [r3, #0]
- 8002770:	693b      	ldr	r3, [r7, #16]
- 8002772:	3304      	adds	r3, #4
- 8002774:	4619      	mov	r1, r3
- 8002776:	4610      	mov	r0, r2
- 8002778:	f7fd fd7b 	bl	8000272 <vListInsert>
- 800277c:	e015      	b.n	80027aa <prvSwitchTimerLists+0x92>
+ 8002644:	4b18      	ldr	r3, [pc, #96]	; (80026a8 <prvSwitchTimerLists+0xb8>)
+ 8002646:	681a      	ldr	r2, [r3, #0]
+ 8002648:	693b      	ldr	r3, [r7, #16]
+ 800264a:	3304      	adds	r3, #4
+ 800264c:	4619      	mov	r1, r3
+ 800264e:	4610      	mov	r0, r2
+ 8002650:	f7fd fe0f 	bl	8000272 <vListInsert>
+ 8002654:	e015      	b.n	8002682 <prvSwitchTimerLists+0x92>
 			}
 			else
 			{
 				xResult = xTimerGenericCommand( pxTimer, tmrCOMMAND_START_DONT_TRACE, xNextExpireTime, NULL, tmrNO_DELAY );
- 800277e:	2300      	movs	r3, #0
- 8002780:	9300      	str	r3, [sp, #0]
- 8002782:	2300      	movs	r3, #0
- 8002784:	697a      	ldr	r2, [r7, #20]
- 8002786:	2100      	movs	r1, #0
- 8002788:	6938      	ldr	r0, [r7, #16]
- 800278a:	f7ff fdc1 	bl	8002310 <xTimerGenericCommand>
- 800278e:	60b8      	str	r0, [r7, #8]
+ 8002656:	2300      	movs	r3, #0
+ 8002658:	9300      	str	r3, [sp, #0]
+ 800265a:	2300      	movs	r3, #0
+ 800265c:	697a      	ldr	r2, [r7, #20]
+ 800265e:	2100      	movs	r1, #0
+ 8002660:	6938      	ldr	r0, [r7, #16]
+ 8002662:	f7ff fdc1 	bl	80021e8 <xTimerGenericCommand>
+ 8002666:	60b8      	str	r0, [r7, #8]
 				configASSERT( xResult );
- 8002790:	68bb      	ldr	r3, [r7, #8]
- 8002792:	2b00      	cmp	r3, #0
- 8002794:	d109      	bne.n	80027aa <prvSwitchTimerLists+0x92>
- 8002796:	f04f 0350 	mov.w	r3, #80	; 0x50
- 800279a:	f383 8811 	msr	BASEPRI, r3
- 800279e:	f3bf 8f6f 	isb	sy
- 80027a2:	f3bf 8f4f 	dsb	sy
- 80027a6:	603b      	str	r3, [r7, #0]
- 80027a8:	e7fe      	b.n	80027a8 <prvSwitchTimerLists+0x90>
+ 8002668:	68bb      	ldr	r3, [r7, #8]
+ 800266a:	2b00      	cmp	r3, #0
+ 800266c:	d109      	bne.n	8002682 <prvSwitchTimerLists+0x92>
+ 800266e:	f04f 0350 	mov.w	r3, #80	; 0x50
+ 8002672:	f383 8811 	msr	BASEPRI, r3
+ 8002676:	f3bf 8f6f 	isb	sy
+ 800267a:	f3bf 8f4f 	dsb	sy
+ 800267e:	603b      	str	r3, [r7, #0]
+ 8002680:	e7fe      	b.n	8002680 <prvSwitchTimerLists+0x90>
 	while( listLIST_IS_EMPTY( pxCurrentTimerList ) == pdFALSE )
- 80027aa:	4b09      	ldr	r3, [pc, #36]	; (80027d0 <prvSwitchTimerLists+0xb8>)
- 80027ac:	681b      	ldr	r3, [r3, #0]
- 80027ae:	681b      	ldr	r3, [r3, #0]
- 80027b0:	2b00      	cmp	r3, #0
- 80027b2:	d1b5      	bne.n	8002720 <prvSwitchTimerLists+0x8>
+ 8002682:	4b09      	ldr	r3, [pc, #36]	; (80026a8 <prvSwitchTimerLists+0xb8>)
+ 8002684:	681b      	ldr	r3, [r3, #0]
+ 8002686:	681b      	ldr	r3, [r3, #0]
+ 8002688:	2b00      	cmp	r3, #0
+ 800268a:	d1b5      	bne.n	80025f8 <prvSwitchTimerLists+0x8>
 		{
 			mtCOVERAGE_TEST_MARKER();
 		}
 	}
 
 	pxTemp = pxCurrentTimerList;
- 80027b4:	4b06      	ldr	r3, [pc, #24]	; (80027d0 <prvSwitchTimerLists+0xb8>)
- 80027b6:	681b      	ldr	r3, [r3, #0]
- 80027b8:	607b      	str	r3, [r7, #4]
+ 800268c:	4b06      	ldr	r3, [pc, #24]	; (80026a8 <prvSwitchTimerLists+0xb8>)
+ 800268e:	681b      	ldr	r3, [r3, #0]
+ 8002690:	607b      	str	r3, [r7, #4]
 	pxCurrentTimerList = pxOverflowTimerList;
- 80027ba:	4b06      	ldr	r3, [pc, #24]	; (80027d4 <prvSwitchTimerLists+0xbc>)
- 80027bc:	681b      	ldr	r3, [r3, #0]
- 80027be:	4a04      	ldr	r2, [pc, #16]	; (80027d0 <prvSwitchTimerLists+0xb8>)
- 80027c0:	6013      	str	r3, [r2, #0]
+ 8002692:	4b06      	ldr	r3, [pc, #24]	; (80026ac <prvSwitchTimerLists+0xbc>)
+ 8002694:	681b      	ldr	r3, [r3, #0]
+ 8002696:	4a04      	ldr	r2, [pc, #16]	; (80026a8 <prvSwitchTimerLists+0xb8>)
+ 8002698:	6013      	str	r3, [r2, #0]
 	pxOverflowTimerList = pxTemp;
- 80027c2:	4a04      	ldr	r2, [pc, #16]	; (80027d4 <prvSwitchTimerLists+0xbc>)
- 80027c4:	687b      	ldr	r3, [r7, #4]
- 80027c6:	6013      	str	r3, [r2, #0]
-}
- 80027c8:	bf00      	nop
- 80027ca:	3718      	adds	r7, #24
- 80027cc:	46bd      	mov	sp, r7
- 80027ce:	bd80      	pop	{r7, pc}
- 80027d0:	20001d70 	.word	0x20001d70
- 80027d4:	20001d74 	.word	0x20001d74
-
-080027d8 <prvCheckForValidListAndQueue>:
+ 800269a:	4a04      	ldr	r2, [pc, #16]	; (80026ac <prvSwitchTimerLists+0xbc>)
+ 800269c:	687b      	ldr	r3, [r7, #4]
+ 800269e:	6013      	str	r3, [r2, #0]
+}
+ 80026a0:	bf00      	nop
+ 80026a2:	3718      	adds	r7, #24
+ 80026a4:	46bd      	mov	sp, r7
+ 80026a6:	bd80      	pop	{r7, pc}
+ 80026a8:	20001dd8 	.word	0x20001dd8
+ 80026ac:	20001ddc 	.word	0x20001ddc
+
+080026b0 <prvCheckForValidListAndQueue>:
 /*-----------------------------------------------------------*/
 
 static void prvCheckForValidListAndQueue( void )
 {
- 80027d8:	b580      	push	{r7, lr}
- 80027da:	af00      	add	r7, sp, #0
+ 80026b0:	b580      	push	{r7, lr}
+ 80026b2:	af00      	add	r7, sp, #0
 	/* Check that the list from which active timers are referenced, and the
 	queue used to communicate with the timer service, have been
 	initialised. */
 	taskENTER_CRITICAL();
- 80027dc:	f7fd feb0 	bl	8000540 <vPortEnterCritical>
+ 80026b4:	f7fd ff44 	bl	8000540 <vPortEnterCritical>
 	{
 		if( xTimerQueue == NULL )
- 80027e0:	4b12      	ldr	r3, [pc, #72]	; (800282c <prvCheckForValidListAndQueue+0x54>)
- 80027e2:	681b      	ldr	r3, [r3, #0]
- 80027e4:	2b00      	cmp	r3, #0
- 80027e6:	d11d      	bne.n	8002824 <prvCheckForValidListAndQueue+0x4c>
+ 80026b8:	4b12      	ldr	r3, [pc, #72]	; (8002704 <prvCheckForValidListAndQueue+0x54>)
+ 80026ba:	681b      	ldr	r3, [r3, #0]
+ 80026bc:	2b00      	cmp	r3, #0
+ 80026be:	d11d      	bne.n	80026fc <prvCheckForValidListAndQueue+0x4c>
 		{
 			vListInitialise( &xActiveTimerList1 );
- 80027e8:	4811      	ldr	r0, [pc, #68]	; (8002830 <prvCheckForValidListAndQueue+0x58>)
- 80027ea:	f7fd fcf1 	bl	80001d0 <vListInitialise>
+ 80026c0:	4811      	ldr	r0, [pc, #68]	; (8002708 <prvCheckForValidListAndQueue+0x58>)
+ 80026c2:	f7fd fd85 	bl	80001d0 <vListInitialise>
 			vListInitialise( &xActiveTimerList2 );
- 80027ee:	4811      	ldr	r0, [pc, #68]	; (8002834 <prvCheckForValidListAndQueue+0x5c>)
- 80027f0:	f7fd fcee 	bl	80001d0 <vListInitialise>
+ 80026c6:	4811      	ldr	r0, [pc, #68]	; (800270c <prvCheckForValidListAndQueue+0x5c>)
+ 80026c8:	f7fd fd82 	bl	80001d0 <vListInitialise>
 			pxCurrentTimerList = &xActiveTimerList1;
- 80027f4:	4b10      	ldr	r3, [pc, #64]	; (8002838 <prvCheckForValidListAndQueue+0x60>)
- 80027f6:	4a0e      	ldr	r2, [pc, #56]	; (8002830 <prvCheckForValidListAndQueue+0x58>)
- 80027f8:	601a      	str	r2, [r3, #0]
+ 80026cc:	4b10      	ldr	r3, [pc, #64]	; (8002710 <prvCheckForValidListAndQueue+0x60>)
+ 80026ce:	4a0e      	ldr	r2, [pc, #56]	; (8002708 <prvCheckForValidListAndQueue+0x58>)
+ 80026d0:	601a      	str	r2, [r3, #0]
 			pxOverflowTimerList = &xActiveTimerList2;
- 80027fa:	4b10      	ldr	r3, [pc, #64]	; (800283c <prvCheckForValidListAndQueue+0x64>)
- 80027fc:	4a0d      	ldr	r2, [pc, #52]	; (8002834 <prvCheckForValidListAndQueue+0x5c>)
- 80027fe:	601a      	str	r2, [r3, #0]
+ 80026d2:	4b10      	ldr	r3, [pc, #64]	; (8002714 <prvCheckForValidListAndQueue+0x64>)
+ 80026d4:	4a0d      	ldr	r2, [pc, #52]	; (800270c <prvCheckForValidListAndQueue+0x5c>)
+ 80026d6:	601a      	str	r2, [r3, #0]
 
 				xTimerQueue = xQueueCreateStatic( ( UBaseType_t ) configTIMER_QUEUE_LENGTH, sizeof( DaemonTaskMessage_t ), &( ucStaticTimerQueueStorage[ 0 ] ), &xStaticTimerQueue );
 			}
 			#else
 			{
 				xTimerQueue = xQueueCreate( ( UBaseType_t ) configTIMER_QUEUE_LENGTH, sizeof( DaemonTaskMessage_t ) );
- 8002800:	2200      	movs	r2, #0
- 8002802:	210c      	movs	r1, #12
- 8002804:	2005      	movs	r0, #5
- 8002806:	f7fe f883 	bl	8000910 <xQueueGenericCreate>
- 800280a:	4602      	mov	r2, r0
- 800280c:	4b07      	ldr	r3, [pc, #28]	; (800282c <prvCheckForValidListAndQueue+0x54>)
- 800280e:	601a      	str	r2, [r3, #0]
+ 80026d8:	2200      	movs	r2, #0
+ 80026da:	210c      	movs	r1, #12
+ 80026dc:	2005      	movs	r0, #5
+ 80026de:	f7fe f917 	bl	8000910 <xQueueGenericCreate>
+ 80026e2:	4602      	mov	r2, r0
+ 80026e4:	4b07      	ldr	r3, [pc, #28]	; (8002704 <prvCheckForValidListAndQueue+0x54>)
+ 80026e6:	601a      	str	r2, [r3, #0]
 			}
 			#endif
 
 			#if ( configQUEUE_REGISTRY_SIZE > 0 )
 			{
 				if( xTimerQueue != NULL )
- 8002810:	4b06      	ldr	r3, [pc, #24]	; (800282c <prvCheckForValidListAndQueue+0x54>)
- 8002812:	681b      	ldr	r3, [r3, #0]
- 8002814:	2b00      	cmp	r3, #0
- 8002816:	d005      	beq.n	8002824 <prvCheckForValidListAndQueue+0x4c>
+ 80026e8:	4b06      	ldr	r3, [pc, #24]	; (8002704 <prvCheckForValidListAndQueue+0x54>)
+ 80026ea:	681b      	ldr	r3, [r3, #0]
+ 80026ec:	2b00      	cmp	r3, #0
+ 80026ee:	d005      	beq.n	80026fc <prvCheckForValidListAndQueue+0x4c>
 				{
 					vQueueAddToRegistry( xTimerQueue, "TmrQ" );
- 8002818:	4b04      	ldr	r3, [pc, #16]	; (800282c <prvCheckForValidListAndQueue+0x54>)
- 800281a:	681b      	ldr	r3, [r3, #0]
- 800281c:	4908      	ldr	r1, [pc, #32]	; (8002840 <prvCheckForValidListAndQueue+0x68>)
- 800281e:	4618      	mov	r0, r3
- 8002820:	f7fe fd08 	bl	8001234 <vQueueAddToRegistry>
+ 80026f0:	4b04      	ldr	r3, [pc, #16]	; (8002704 <prvCheckForValidListAndQueue+0x54>)
+ 80026f2:	681b      	ldr	r3, [r3, #0]
+ 80026f4:	4908      	ldr	r1, [pc, #32]	; (8002718 <prvCheckForValidListAndQueue+0x68>)
+ 80026f6:	4618      	mov	r0, r3
+ 80026f8:	f7fe fd9c 	bl	8001234 <vQueueAddToRegistry>
 		else
 		{
 			mtCOVERAGE_TEST_MARKER();
 		}
 	}
 	taskEXIT_CRITICAL();
- 8002824:	f7fd feba 	bl	800059c <vPortExitCritical>
-}
- 8002828:	bf00      	nop
- 800282a:	bd80      	pop	{r7, pc}
- 800282c:	20001d78 	.word	0x20001d78
- 8002830:	20001d48 	.word	0x20001d48
- 8002834:	20001d5c 	.word	0x20001d5c
- 8002838:	20001d70 	.word	0x20001d70
- 800283c:	20001d74 	.word	0x20001d74
- 8002840:	080032fc 	.word	0x080032fc
-
-08002844 <DAC_SetChannel1Data>:
+ 80026fc:	f7fd ff4e 	bl	800059c <vPortExitCritical>
+}
+ 8002700:	bf00      	nop
+ 8002702:	bd80      	pop	{r7, pc}
+ 8002704:	20001de0 	.word	0x20001de0
+ 8002708:	20001db0 	.word	0x20001db0
+ 800270c:	20001dc4 	.word	0x20001dc4
+ 8002710:	20001dd8 	.word	0x20001dd8
+ 8002714:	20001ddc 	.word	0x20001ddc
+ 8002718:	08003e78 	.word	0x08003e78
+
+0800271c <ADC_DeInit>:
+  *         values.
+  * @param  None
+  * @retval None
+  */
+void ADC_DeInit(void)
+{
+ 800271c:	b580      	push	{r7, lr}
+ 800271e:	af00      	add	r7, sp, #0
+  /* Enable all ADCs reset state */
+  RCC_APB2PeriphResetCmd(RCC_APB2Periph_ADC, ENABLE);
+ 8002720:	2101      	movs	r1, #1
+ 8002722:	f44f 7080 	mov.w	r0, #256	; 0x100
+ 8002726:	f000 fb7d 	bl	8002e24 <RCC_APB2PeriphResetCmd>
+  
+  /* Release all ADCs from reset state */
+  RCC_APB2PeriphResetCmd(RCC_APB2Periph_ADC, DISABLE);
+ 800272a:	2100      	movs	r1, #0
+ 800272c:	f44f 7080 	mov.w	r0, #256	; 0x100
+ 8002730:	f000 fb78 	bl	8002e24 <RCC_APB2PeriphResetCmd>
+}
+ 8002734:	bf00      	nop
+ 8002736:	bd80      	pop	{r7, pc}
+
+08002738 <ADC_Init>:
+  * @param  ADC_InitStruct: pointer to an ADC_InitTypeDef structure that contains
+  *         the configuration information for the specified ADC peripheral.
+  * @retval None
+  */
+void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct)
+{
+ 8002738:	b480      	push	{r7}
+ 800273a:	b085      	sub	sp, #20
+ 800273c:	af00      	add	r7, sp, #0
+ 800273e:	6078      	str	r0, [r7, #4]
+ 8002740:	6039      	str	r1, [r7, #0]
+  uint32_t tmpreg1 = 0;
+ 8002742:	2300      	movs	r3, #0
+ 8002744:	60fb      	str	r3, [r7, #12]
+  uint8_t tmpreg2 = 0;
+ 8002746:	2300      	movs	r3, #0
+ 8002748:	72fb      	strb	r3, [r7, #11]
+  assert_param(IS_ADC_DATA_ALIGN(ADC_InitStruct->ADC_DataAlign)); 
+  assert_param(IS_ADC_REGULAR_LENGTH(ADC_InitStruct->ADC_NbrOfConversion));
+  
+  /*---------------------------- ADCx CR1 Configuration -----------------*/
+  /* Get the ADCx CR1 value */
+  tmpreg1 = ADCx->CR1;
+ 800274a:	687b      	ldr	r3, [r7, #4]
+ 800274c:	685b      	ldr	r3, [r3, #4]
+ 800274e:	60fb      	str	r3, [r7, #12]
+  
+  /* Clear RES and SCAN bits */
+  tmpreg1 &= CR1_CLEAR_MASK;
+ 8002750:	68fb      	ldr	r3, [r7, #12]
+ 8002752:	f023 7340 	bic.w	r3, r3, #50331648	; 0x3000000
+ 8002756:	f423 7380 	bic.w	r3, r3, #256	; 0x100
+ 800275a:	60fb      	str	r3, [r7, #12]
+  
+  /* Configure ADCx: scan conversion mode and resolution */
+  /* Set SCAN bit according to ADC_ScanConvMode value */
+  /* Set RES bit according to ADC_Resolution value */ 
+  tmpreg1 |= (uint32_t)(((uint32_t)ADC_InitStruct->ADC_ScanConvMode << 8) | \
+ 800275c:	683b      	ldr	r3, [r7, #0]
+ 800275e:	791b      	ldrb	r3, [r3, #4]
+ 8002760:	021a      	lsls	r2, r3, #8
+                                   ADC_InitStruct->ADC_Resolution);
+ 8002762:	683b      	ldr	r3, [r7, #0]
+ 8002764:	681b      	ldr	r3, [r3, #0]
+  tmpreg1 |= (uint32_t)(((uint32_t)ADC_InitStruct->ADC_ScanConvMode << 8) | \
+ 8002766:	4313      	orrs	r3, r2
+ 8002768:	68fa      	ldr	r2, [r7, #12]
+ 800276a:	4313      	orrs	r3, r2
+ 800276c:	60fb      	str	r3, [r7, #12]
+  /* Write to ADCx CR1 */
+  ADCx->CR1 = tmpreg1;
+ 800276e:	687b      	ldr	r3, [r7, #4]
+ 8002770:	68fa      	ldr	r2, [r7, #12]
+ 8002772:	605a      	str	r2, [r3, #4]
+  /*---------------------------- ADCx CR2 Configuration -----------------*/
+  /* Get the ADCx CR2 value */
+  tmpreg1 = ADCx->CR2;
+ 8002774:	687b      	ldr	r3, [r7, #4]
+ 8002776:	689b      	ldr	r3, [r3, #8]
+ 8002778:	60fb      	str	r3, [r7, #12]
+  
+  /* Clear CONT, ALIGN, EXTEN and EXTSEL bits */
+  tmpreg1 &= CR2_CLEAR_MASK;
+ 800277a:	68fa      	ldr	r2, [r7, #12]
+ 800277c:	4b18      	ldr	r3, [pc, #96]	; (80027e0 <ADC_Init+0xa8>)
+ 800277e:	4013      	ands	r3, r2
+ 8002780:	60fb      	str	r3, [r7, #12]
+     continuous conversion mode */
+  /* Set ALIGN bit according to ADC_DataAlign value */
+  /* Set EXTEN bits according to ADC_ExternalTrigConvEdge value */ 
+  /* Set EXTSEL bits according to ADC_ExternalTrigConv value */
+  /* Set CONT bit according to ADC_ContinuousConvMode value */
+  tmpreg1 |= (uint32_t)(ADC_InitStruct->ADC_DataAlign | \
+ 8002782:	683b      	ldr	r3, [r7, #0]
+ 8002784:	691a      	ldr	r2, [r3, #16]
+                        ADC_InitStruct->ADC_ExternalTrigConv | 
+ 8002786:	683b      	ldr	r3, [r7, #0]
+ 8002788:	68db      	ldr	r3, [r3, #12]
+  tmpreg1 |= (uint32_t)(ADC_InitStruct->ADC_DataAlign | \
+ 800278a:	431a      	orrs	r2, r3
+                        ADC_InitStruct->ADC_ExternalTrigConvEdge | \
+ 800278c:	683b      	ldr	r3, [r7, #0]
+ 800278e:	689b      	ldr	r3, [r3, #8]
+                        ADC_InitStruct->ADC_ExternalTrigConv | 
+ 8002790:	431a      	orrs	r2, r3
+                        ((uint32_t)ADC_InitStruct->ADC_ContinuousConvMode << 1));
+ 8002792:	683b      	ldr	r3, [r7, #0]
+ 8002794:	795b      	ldrb	r3, [r3, #5]
+ 8002796:	005b      	lsls	r3, r3, #1
+  tmpreg1 |= (uint32_t)(ADC_InitStruct->ADC_DataAlign | \
+ 8002798:	4313      	orrs	r3, r2
+ 800279a:	68fa      	ldr	r2, [r7, #12]
+ 800279c:	4313      	orrs	r3, r2
+ 800279e:	60fb      	str	r3, [r7, #12]
+                        
+  /* Write to ADCx CR2 */
+  ADCx->CR2 = tmpreg1;
+ 80027a0:	687b      	ldr	r3, [r7, #4]
+ 80027a2:	68fa      	ldr	r2, [r7, #12]
+ 80027a4:	609a      	str	r2, [r3, #8]
+  /*---------------------------- ADCx SQR1 Configuration -----------------*/
+  /* Get the ADCx SQR1 value */
+  tmpreg1 = ADCx->SQR1;
+ 80027a6:	687b      	ldr	r3, [r7, #4]
+ 80027a8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 80027aa:	60fb      	str	r3, [r7, #12]
+  
+  /* Clear L bits */
+  tmpreg1 &= SQR1_L_RESET;
+ 80027ac:	68fb      	ldr	r3, [r7, #12]
+ 80027ae:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
+ 80027b2:	60fb      	str	r3, [r7, #12]
+  
+  /* Configure ADCx: regular channel sequence length */
+  /* Set L bits according to ADC_NbrOfConversion value */
+  tmpreg2 |= (uint8_t)(ADC_InitStruct->ADC_NbrOfConversion - (uint8_t)1);
+ 80027b4:	683b      	ldr	r3, [r7, #0]
+ 80027b6:	7d1b      	ldrb	r3, [r3, #20]
+ 80027b8:	3b01      	subs	r3, #1
+ 80027ba:	b2da      	uxtb	r2, r3
+ 80027bc:	7afb      	ldrb	r3, [r7, #11]
+ 80027be:	4313      	orrs	r3, r2
+ 80027c0:	72fb      	strb	r3, [r7, #11]
+  tmpreg1 |= ((uint32_t)tmpreg2 << 20);
+ 80027c2:	7afb      	ldrb	r3, [r7, #11]
+ 80027c4:	051b      	lsls	r3, r3, #20
+ 80027c6:	68fa      	ldr	r2, [r7, #12]
+ 80027c8:	4313      	orrs	r3, r2
+ 80027ca:	60fb      	str	r3, [r7, #12]
+  
+  /* Write to ADCx SQR1 */
+  ADCx->SQR1 = tmpreg1;
+ 80027cc:	687b      	ldr	r3, [r7, #4]
+ 80027ce:	68fa      	ldr	r2, [r7, #12]
+ 80027d0:	62da      	str	r2, [r3, #44]	; 0x2c
+}
+ 80027d2:	bf00      	nop
+ 80027d4:	3714      	adds	r7, #20
+ 80027d6:	46bd      	mov	sp, r7
+ 80027d8:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 80027dc:	4770      	bx	lr
+ 80027de:	bf00      	nop
+ 80027e0:	c0fff7fd 	.word	0xc0fff7fd
+
+080027e4 <ADC_Cmd>:
+  * @param  NewState: new state of the ADCx peripheral. 
+  *          This parameter can be: ENABLE or DISABLE.
+  * @retval None
+  */
+void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState)
+{
+ 80027e4:	b480      	push	{r7}
+ 80027e6:	b083      	sub	sp, #12
+ 80027e8:	af00      	add	r7, sp, #0
+ 80027ea:	6078      	str	r0, [r7, #4]
+ 80027ec:	460b      	mov	r3, r1
+ 80027ee:	70fb      	strb	r3, [r7, #3]
+  /* Check the parameters */
+  assert_param(IS_ADC_ALL_PERIPH(ADCx));
+  assert_param(IS_FUNCTIONAL_STATE(NewState));
+  if (NewState != DISABLE)
+ 80027f0:	78fb      	ldrb	r3, [r7, #3]
+ 80027f2:	2b00      	cmp	r3, #0
+ 80027f4:	d006      	beq.n	8002804 <ADC_Cmd+0x20>
+  {
+    /* Set the ADON bit to wake up the ADC from power down mode */
+    ADCx->CR2 |= (uint32_t)ADC_CR2_ADON;
+ 80027f6:	687b      	ldr	r3, [r7, #4]
+ 80027f8:	689b      	ldr	r3, [r3, #8]
+ 80027fa:	f043 0201 	orr.w	r2, r3, #1
+ 80027fe:	687b      	ldr	r3, [r7, #4]
+ 8002800:	609a      	str	r2, [r3, #8]
+  else
+  {
+    /* Disable the selected ADC peripheral */
+    ADCx->CR2 &= (uint32_t)(~ADC_CR2_ADON);
+  }
+}
+ 8002802:	e005      	b.n	8002810 <ADC_Cmd+0x2c>
+    ADCx->CR2 &= (uint32_t)(~ADC_CR2_ADON);
+ 8002804:	687b      	ldr	r3, [r7, #4]
+ 8002806:	689b      	ldr	r3, [r3, #8]
+ 8002808:	f023 0201 	bic.w	r2, r3, #1
+ 800280c:	687b      	ldr	r3, [r7, #4]
+ 800280e:	609a      	str	r2, [r3, #8]
+}
+ 8002810:	bf00      	nop
+ 8002812:	370c      	adds	r7, #12
+ 8002814:	46bd      	mov	sp, r7
+ 8002816:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 800281a:	4770      	bx	lr
+
+0800281c <ADC_RegularChannelConfig>:
+  *            @arg ADC_SampleTime_144Cycles: Sample time equal to 144 cycles	
+  *            @arg ADC_SampleTime_480Cycles: Sample time equal to 480 cycles	
+  * @retval None
+  */
+void ADC_RegularChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime)
+{
+ 800281c:	b480      	push	{r7}
+ 800281e:	b085      	sub	sp, #20
+ 8002820:	af00      	add	r7, sp, #0
+ 8002822:	6078      	str	r0, [r7, #4]
+ 8002824:	4608      	mov	r0, r1
+ 8002826:	4611      	mov	r1, r2
+ 8002828:	461a      	mov	r2, r3
+ 800282a:	4603      	mov	r3, r0
+ 800282c:	70fb      	strb	r3, [r7, #3]
+ 800282e:	460b      	mov	r3, r1
+ 8002830:	70bb      	strb	r3, [r7, #2]
+ 8002832:	4613      	mov	r3, r2
+ 8002834:	707b      	strb	r3, [r7, #1]
+  uint32_t tmpreg1 = 0, tmpreg2 = 0;
+ 8002836:	2300      	movs	r3, #0
+ 8002838:	60fb      	str	r3, [r7, #12]
+ 800283a:	2300      	movs	r3, #0
+ 800283c:	60bb      	str	r3, [r7, #8]
+  assert_param(IS_ADC_CHANNEL(ADC_Channel));
+  assert_param(IS_ADC_REGULAR_RANK(Rank));
+  assert_param(IS_ADC_SAMPLE_TIME(ADC_SampleTime));
+  
+  /* if ADC_Channel_10 ... ADC_Channel_18 is selected */
+  if (ADC_Channel > ADC_Channel_9)
+ 800283e:	78fb      	ldrb	r3, [r7, #3]
+ 8002840:	2b09      	cmp	r3, #9
+ 8002842:	d923      	bls.n	800288c <ADC_RegularChannelConfig+0x70>
+  {
+    /* Get the old register value */
+    tmpreg1 = ADCx->SMPR1;
+ 8002844:	687b      	ldr	r3, [r7, #4]
+ 8002846:	68db      	ldr	r3, [r3, #12]
+ 8002848:	60fb      	str	r3, [r7, #12]
+    
+    /* Calculate the mask to clear */
+    tmpreg2 = SMPR1_SMP_SET << (3 * (ADC_Channel - 10));
+ 800284a:	78fb      	ldrb	r3, [r7, #3]
+ 800284c:	f1a3 020a 	sub.w	r2, r3, #10
+ 8002850:	4613      	mov	r3, r2
+ 8002852:	005b      	lsls	r3, r3, #1
+ 8002854:	4413      	add	r3, r2
+ 8002856:	2207      	movs	r2, #7
+ 8002858:	fa02 f303 	lsl.w	r3, r2, r3
+ 800285c:	60bb      	str	r3, [r7, #8]
+    
+    /* Clear the old sample time */
+    tmpreg1 &= ~tmpreg2;
+ 800285e:	68bb      	ldr	r3, [r7, #8]
+ 8002860:	43db      	mvns	r3, r3
+ 8002862:	68fa      	ldr	r2, [r7, #12]
+ 8002864:	4013      	ands	r3, r2
+ 8002866:	60fb      	str	r3, [r7, #12]
+    
+    /* Calculate the mask to set */
+    tmpreg2 = (uint32_t)ADC_SampleTime << (3 * (ADC_Channel - 10));
+ 8002868:	7879      	ldrb	r1, [r7, #1]
+ 800286a:	78fb      	ldrb	r3, [r7, #3]
+ 800286c:	f1a3 020a 	sub.w	r2, r3, #10
+ 8002870:	4613      	mov	r3, r2
+ 8002872:	005b      	lsls	r3, r3, #1
+ 8002874:	4413      	add	r3, r2
+ 8002876:	fa01 f303 	lsl.w	r3, r1, r3
+ 800287a:	60bb      	str	r3, [r7, #8]
+    
+    /* Set the new sample time */
+    tmpreg1 |= tmpreg2;
+ 800287c:	68fa      	ldr	r2, [r7, #12]
+ 800287e:	68bb      	ldr	r3, [r7, #8]
+ 8002880:	4313      	orrs	r3, r2
+ 8002882:	60fb      	str	r3, [r7, #12]
+    
+    /* Store the new register value */
+    ADCx->SMPR1 = tmpreg1;
+ 8002884:	687b      	ldr	r3, [r7, #4]
+ 8002886:	68fa      	ldr	r2, [r7, #12]
+ 8002888:	60da      	str	r2, [r3, #12]
+ 800288a:	e01e      	b.n	80028ca <ADC_RegularChannelConfig+0xae>
+  }
+  else /* ADC_Channel include in ADC_Channel_[0..9] */
+  {
+    /* Get the old register value */
+    tmpreg1 = ADCx->SMPR2;
+ 800288c:	687b      	ldr	r3, [r7, #4]
+ 800288e:	691b      	ldr	r3, [r3, #16]
+ 8002890:	60fb      	str	r3, [r7, #12]
+    
+    /* Calculate the mask to clear */
+    tmpreg2 = SMPR2_SMP_SET << (3 * ADC_Channel);
+ 8002892:	78fa      	ldrb	r2, [r7, #3]
+ 8002894:	4613      	mov	r3, r2
+ 8002896:	005b      	lsls	r3, r3, #1
+ 8002898:	4413      	add	r3, r2
+ 800289a:	2207      	movs	r2, #7
+ 800289c:	fa02 f303 	lsl.w	r3, r2, r3
+ 80028a0:	60bb      	str	r3, [r7, #8]
+    
+    /* Clear the old sample time */
+    tmpreg1 &= ~tmpreg2;
+ 80028a2:	68bb      	ldr	r3, [r7, #8]
+ 80028a4:	43db      	mvns	r3, r3
+ 80028a6:	68fa      	ldr	r2, [r7, #12]
+ 80028a8:	4013      	ands	r3, r2
+ 80028aa:	60fb      	str	r3, [r7, #12]
+    
+    /* Calculate the mask to set */
+    tmpreg2 = (uint32_t)ADC_SampleTime << (3 * ADC_Channel);
+ 80028ac:	7879      	ldrb	r1, [r7, #1]
+ 80028ae:	78fa      	ldrb	r2, [r7, #3]
+ 80028b0:	4613      	mov	r3, r2
+ 80028b2:	005b      	lsls	r3, r3, #1
+ 80028b4:	4413      	add	r3, r2
+ 80028b6:	fa01 f303 	lsl.w	r3, r1, r3
+ 80028ba:	60bb      	str	r3, [r7, #8]
+    
+    /* Set the new sample time */
+    tmpreg1 |= tmpreg2;
+ 80028bc:	68fa      	ldr	r2, [r7, #12]
+ 80028be:	68bb      	ldr	r3, [r7, #8]
+ 80028c0:	4313      	orrs	r3, r2
+ 80028c2:	60fb      	str	r3, [r7, #12]
+    
+    /* Store the new register value */
+    ADCx->SMPR2 = tmpreg1;
+ 80028c4:	687b      	ldr	r3, [r7, #4]
+ 80028c6:	68fa      	ldr	r2, [r7, #12]
+ 80028c8:	611a      	str	r2, [r3, #16]
+  }
+  /* For Rank 1 to 6 */
+  if (Rank < 7)
+ 80028ca:	78bb      	ldrb	r3, [r7, #2]
+ 80028cc:	2b06      	cmp	r3, #6
+ 80028ce:	d821      	bhi.n	8002914 <ADC_RegularChannelConfig+0xf8>
+  {
+    /* Get the old register value */
+    tmpreg1 = ADCx->SQR3;
+ 80028d0:	687b      	ldr	r3, [r7, #4]
+ 80028d2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
+ 80028d4:	60fb      	str	r3, [r7, #12]
+    
+    /* Calculate the mask to clear */
+    tmpreg2 = SQR3_SQ_SET << (5 * (Rank - 1));
+ 80028d6:	78bb      	ldrb	r3, [r7, #2]
+ 80028d8:	1e5a      	subs	r2, r3, #1
+ 80028da:	4613      	mov	r3, r2
+ 80028dc:	009b      	lsls	r3, r3, #2
+ 80028de:	4413      	add	r3, r2
+ 80028e0:	221f      	movs	r2, #31
+ 80028e2:	fa02 f303 	lsl.w	r3, r2, r3
+ 80028e6:	60bb      	str	r3, [r7, #8]
+    
+    /* Clear the old SQx bits for the selected rank */
+    tmpreg1 &= ~tmpreg2;
+ 80028e8:	68bb      	ldr	r3, [r7, #8]
+ 80028ea:	43db      	mvns	r3, r3
+ 80028ec:	68fa      	ldr	r2, [r7, #12]
+ 80028ee:	4013      	ands	r3, r2
+ 80028f0:	60fb      	str	r3, [r7, #12]
+    
+    /* Calculate the mask to set */
+    tmpreg2 = (uint32_t)ADC_Channel << (5 * (Rank - 1));
+ 80028f2:	78f9      	ldrb	r1, [r7, #3]
+ 80028f4:	78bb      	ldrb	r3, [r7, #2]
+ 80028f6:	1e5a      	subs	r2, r3, #1
+ 80028f8:	4613      	mov	r3, r2
+ 80028fa:	009b      	lsls	r3, r3, #2
+ 80028fc:	4413      	add	r3, r2
+ 80028fe:	fa01 f303 	lsl.w	r3, r1, r3
+ 8002902:	60bb      	str	r3, [r7, #8]
+    
+    /* Set the SQx bits for the selected rank */
+    tmpreg1 |= tmpreg2;
+ 8002904:	68fa      	ldr	r2, [r7, #12]
+ 8002906:	68bb      	ldr	r3, [r7, #8]
+ 8002908:	4313      	orrs	r3, r2
+ 800290a:	60fb      	str	r3, [r7, #12]
+    
+    /* Store the new register value */
+    ADCx->SQR3 = tmpreg1;
+ 800290c:	687b      	ldr	r3, [r7, #4]
+ 800290e:	68fa      	ldr	r2, [r7, #12]
+ 8002910:	635a      	str	r2, [r3, #52]	; 0x34
+    tmpreg1 |= tmpreg2;
+    
+    /* Store the new register value */
+    ADCx->SQR1 = tmpreg1;
+  }
+}
+ 8002912:	e047      	b.n	80029a4 <ADC_RegularChannelConfig+0x188>
+  else if (Rank < 13)
+ 8002914:	78bb      	ldrb	r3, [r7, #2]
+ 8002916:	2b0c      	cmp	r3, #12
+ 8002918:	d821      	bhi.n	800295e <ADC_RegularChannelConfig+0x142>
+    tmpreg1 = ADCx->SQR2;
+ 800291a:	687b      	ldr	r3, [r7, #4]
+ 800291c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
+ 800291e:	60fb      	str	r3, [r7, #12]
+    tmpreg2 = SQR2_SQ_SET << (5 * (Rank - 7));
+ 8002920:	78bb      	ldrb	r3, [r7, #2]
+ 8002922:	1fda      	subs	r2, r3, #7
+ 8002924:	4613      	mov	r3, r2
+ 8002926:	009b      	lsls	r3, r3, #2
+ 8002928:	4413      	add	r3, r2
+ 800292a:	221f      	movs	r2, #31
+ 800292c:	fa02 f303 	lsl.w	r3, r2, r3
+ 8002930:	60bb      	str	r3, [r7, #8]
+    tmpreg1 &= ~tmpreg2;
+ 8002932:	68bb      	ldr	r3, [r7, #8]
+ 8002934:	43db      	mvns	r3, r3
+ 8002936:	68fa      	ldr	r2, [r7, #12]
+ 8002938:	4013      	ands	r3, r2
+ 800293a:	60fb      	str	r3, [r7, #12]
+    tmpreg2 = (uint32_t)ADC_Channel << (5 * (Rank - 7));
+ 800293c:	78f9      	ldrb	r1, [r7, #3]
+ 800293e:	78bb      	ldrb	r3, [r7, #2]
+ 8002940:	1fda      	subs	r2, r3, #7
+ 8002942:	4613      	mov	r3, r2
+ 8002944:	009b      	lsls	r3, r3, #2
+ 8002946:	4413      	add	r3, r2
+ 8002948:	fa01 f303 	lsl.w	r3, r1, r3
+ 800294c:	60bb      	str	r3, [r7, #8]
+    tmpreg1 |= tmpreg2;
+ 800294e:	68fa      	ldr	r2, [r7, #12]
+ 8002950:	68bb      	ldr	r3, [r7, #8]
+ 8002952:	4313      	orrs	r3, r2
+ 8002954:	60fb      	str	r3, [r7, #12]
+    ADCx->SQR2 = tmpreg1;
+ 8002956:	687b      	ldr	r3, [r7, #4]
+ 8002958:	68fa      	ldr	r2, [r7, #12]
+ 800295a:	631a      	str	r2, [r3, #48]	; 0x30
+}
+ 800295c:	e022      	b.n	80029a4 <ADC_RegularChannelConfig+0x188>
+    tmpreg1 = ADCx->SQR1;
+ 800295e:	687b      	ldr	r3, [r7, #4]
+ 8002960:	6adb      	ldr	r3, [r3, #44]	; 0x2c
+ 8002962:	60fb      	str	r3, [r7, #12]
+    tmpreg2 = SQR1_SQ_SET << (5 * (Rank - 13));
+ 8002964:	78bb      	ldrb	r3, [r7, #2]
+ 8002966:	f1a3 020d 	sub.w	r2, r3, #13
+ 800296a:	4613      	mov	r3, r2
+ 800296c:	009b      	lsls	r3, r3, #2
+ 800296e:	4413      	add	r3, r2
+ 8002970:	221f      	movs	r2, #31
+ 8002972:	fa02 f303 	lsl.w	r3, r2, r3
+ 8002976:	60bb      	str	r3, [r7, #8]
+    tmpreg1 &= ~tmpreg2;
+ 8002978:	68bb      	ldr	r3, [r7, #8]
+ 800297a:	43db      	mvns	r3, r3
+ 800297c:	68fa      	ldr	r2, [r7, #12]
+ 800297e:	4013      	ands	r3, r2
+ 8002980:	60fb      	str	r3, [r7, #12]
+    tmpreg2 = (uint32_t)ADC_Channel << (5 * (Rank - 13));
+ 8002982:	78f9      	ldrb	r1, [r7, #3]
+ 8002984:	78bb      	ldrb	r3, [r7, #2]
+ 8002986:	f1a3 020d 	sub.w	r2, r3, #13
+ 800298a:	4613      	mov	r3, r2
+ 800298c:	009b      	lsls	r3, r3, #2
+ 800298e:	4413      	add	r3, r2
+ 8002990:	fa01 f303 	lsl.w	r3, r1, r3
+ 8002994:	60bb      	str	r3, [r7, #8]
+    tmpreg1 |= tmpreg2;
+ 8002996:	68fa      	ldr	r2, [r7, #12]
+ 8002998:	68bb      	ldr	r3, [r7, #8]
+ 800299a:	4313      	orrs	r3, r2
+ 800299c:	60fb      	str	r3, [r7, #12]
+    ADCx->SQR1 = tmpreg1;
+ 800299e:	687b      	ldr	r3, [r7, #4]
+ 80029a0:	68fa      	ldr	r2, [r7, #12]
+ 80029a2:	62da      	str	r2, [r3, #44]	; 0x2c
+}
+ 80029a4:	bf00      	nop
+ 80029a6:	3714      	adds	r7, #20
+ 80029a8:	46bd      	mov	sp, r7
+ 80029aa:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 80029ae:	4770      	bx	lr
+
+080029b0 <ADC_SoftwareStartConv>:
+  * @brief  Enables the selected ADC software start conversion of the regular channels.
+  * @param  ADCx: where x can be 1, 2 or 3 to select the ADC peripheral.
+  * @retval None
+  */
+void ADC_SoftwareStartConv(ADC_TypeDef* ADCx)
+{
+ 80029b0:	b480      	push	{r7}
+ 80029b2:	b083      	sub	sp, #12
+ 80029b4:	af00      	add	r7, sp, #0
+ 80029b6:	6078      	str	r0, [r7, #4]
+  /* Check the parameters */
+  assert_param(IS_ADC_ALL_PERIPH(ADCx));
+  
+  /* Enable the selected ADC conversion for regular group */
+  ADCx->CR2 |= (uint32_t)ADC_CR2_SWSTART;
+ 80029b8:	687b      	ldr	r3, [r7, #4]
+ 80029ba:	689b      	ldr	r3, [r3, #8]
+ 80029bc:	f043 4280 	orr.w	r2, r3, #1073741824	; 0x40000000
+ 80029c0:	687b      	ldr	r3, [r7, #4]
+ 80029c2:	609a      	str	r2, [r3, #8]
+}
+ 80029c4:	bf00      	nop
+ 80029c6:	370c      	adds	r7, #12
+ 80029c8:	46bd      	mov	sp, r7
+ 80029ca:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 80029ce:	4770      	bx	lr
+
+080029d0 <ADC_GetConversionValue>:
+  * @brief  Returns the last ADCx conversion result data for regular channel.
+  * @param  ADCx: where x can be 1, 2 or 3 to select the ADC peripheral.
+  * @retval The Data conversion value.
+  */
+uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx)
+{
+ 80029d0:	b480      	push	{r7}
+ 80029d2:	b083      	sub	sp, #12
+ 80029d4:	af00      	add	r7, sp, #0
+ 80029d6:	6078      	str	r0, [r7, #4]
+  /* Check the parameters */
+  assert_param(IS_ADC_ALL_PERIPH(ADCx));
+  
+  /* Return the selected ADC conversion value */
+  return (uint16_t) ADCx->DR;
+ 80029d8:	687b      	ldr	r3, [r7, #4]
+ 80029da:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
+ 80029dc:	b29b      	uxth	r3, r3
+}
+ 80029de:	4618      	mov	r0, r3
+ 80029e0:	370c      	adds	r7, #12
+ 80029e2:	46bd      	mov	sp, r7
+ 80029e4:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 80029e8:	4770      	bx	lr
+
+080029ea <ADC_GetFlagStatus>:
+  *            @arg ADC_FLAG_STRT: Start of regular group conversion flag
+  *            @arg ADC_FLAG_OVR: Overrun flag                                                 
+  * @retval The new state of ADC_FLAG (SET or RESET).
+  */
+FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, uint8_t ADC_FLAG)
+{
+ 80029ea:	b480      	push	{r7}
+ 80029ec:	b085      	sub	sp, #20
+ 80029ee:	af00      	add	r7, sp, #0
+ 80029f0:	6078      	str	r0, [r7, #4]
+ 80029f2:	460b      	mov	r3, r1
+ 80029f4:	70fb      	strb	r3, [r7, #3]
+  FlagStatus bitstatus = RESET;
+ 80029f6:	2300      	movs	r3, #0
+ 80029f8:	73fb      	strb	r3, [r7, #15]
+  /* Check the parameters */
+  assert_param(IS_ADC_ALL_PERIPH(ADCx));
+  assert_param(IS_ADC_GET_FLAG(ADC_FLAG));
+
+  /* Check the status of the specified ADC flag */
+  if ((ADCx->SR & ADC_FLAG) != (uint8_t)RESET)
+ 80029fa:	687b      	ldr	r3, [r7, #4]
+ 80029fc:	681a      	ldr	r2, [r3, #0]
+ 80029fe:	78fb      	ldrb	r3, [r7, #3]
+ 8002a00:	4013      	ands	r3, r2
+ 8002a02:	2b00      	cmp	r3, #0
+ 8002a04:	d002      	beq.n	8002a0c <ADC_GetFlagStatus+0x22>
+  {
+    /* ADC_FLAG is set */
+    bitstatus = SET;
+ 8002a06:	2301      	movs	r3, #1
+ 8002a08:	73fb      	strb	r3, [r7, #15]
+ 8002a0a:	e001      	b.n	8002a10 <ADC_GetFlagStatus+0x26>
+  }
+  else
+  {
+    /* ADC_FLAG is reset */
+    bitstatus = RESET;
+ 8002a0c:	2300      	movs	r3, #0
+ 8002a0e:	73fb      	strb	r3, [r7, #15]
+  }
+  /* Return the ADC_FLAG status */
+  return  bitstatus;
+ 8002a10:	7bfb      	ldrb	r3, [r7, #15]
+}
+ 8002a12:	4618      	mov	r0, r3
+ 8002a14:	3714      	adds	r7, #20
+ 8002a16:	46bd      	mov	sp, r7
+ 8002a18:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002a1c:	4770      	bx	lr
+	...
+
+08002a20 <DAC_SetChannel1Data>:
   *            @arg DAC_Align_12b_R: 12bit right data alignment selected
   * @param  Data: Data to be loaded in the selected data holding register.
   * @retval None
   */
 void DAC_SetChannel1Data(uint32_t DAC_Align, uint16_t Data)
 {  
- 8002844:	b480      	push	{r7}
- 8002846:	b085      	sub	sp, #20
- 8002848:	af00      	add	r7, sp, #0
- 800284a:	6078      	str	r0, [r7, #4]
- 800284c:	460b      	mov	r3, r1
- 800284e:	807b      	strh	r3, [r7, #2]
+ 8002a20:	b480      	push	{r7}
+ 8002a22:	b085      	sub	sp, #20
+ 8002a24:	af00      	add	r7, sp, #0
+ 8002a26:	6078      	str	r0, [r7, #4]
+ 8002a28:	460b      	mov	r3, r1
+ 8002a2a:	807b      	strh	r3, [r7, #2]
   __IO uint32_t tmp = 0;
- 8002850:	2300      	movs	r3, #0
- 8002852:	60fb      	str	r3, [r7, #12]
+ 8002a2c:	2300      	movs	r3, #0
+ 8002a2e:	60fb      	str	r3, [r7, #12]
   
   /* Check the parameters */
   assert_param(IS_DAC_ALIGN(DAC_Align));
   assert_param(IS_DAC_DATA(Data));
   
   tmp = (uint32_t)DAC_BASE; 
- 8002854:	4b08      	ldr	r3, [pc, #32]	; (8002878 <DAC_SetChannel1Data+0x34>)
- 8002856:	60fb      	str	r3, [r7, #12]
+ 8002a30:	4b08      	ldr	r3, [pc, #32]	; (8002a54 <DAC_SetChannel1Data+0x34>)
+ 8002a32:	60fb      	str	r3, [r7, #12]
   tmp += DHR12R1_OFFSET + DAC_Align;
- 8002858:	68fa      	ldr	r2, [r7, #12]
- 800285a:	687b      	ldr	r3, [r7, #4]
- 800285c:	4413      	add	r3, r2
- 800285e:	3308      	adds	r3, #8
- 8002860:	60fb      	str	r3, [r7, #12]
+ 8002a34:	68fa      	ldr	r2, [r7, #12]
+ 8002a36:	687b      	ldr	r3, [r7, #4]
+ 8002a38:	4413      	add	r3, r2
+ 8002a3a:	3308      	adds	r3, #8
+ 8002a3c:	60fb      	str	r3, [r7, #12]
 
   /* Set the DAC channel1 selected data holding register */
   *(__IO uint32_t *) tmp = Data;
- 8002862:	68fb      	ldr	r3, [r7, #12]
- 8002864:	461a      	mov	r2, r3
- 8002866:	887b      	ldrh	r3, [r7, #2]
- 8002868:	6013      	str	r3, [r2, #0]
-}
- 800286a:	bf00      	nop
- 800286c:	3714      	adds	r7, #20
- 800286e:	46bd      	mov	sp, r7
- 8002870:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8002874:	4770      	bx	lr
- 8002876:	bf00      	nop
- 8002878:	40007400 	.word	0x40007400
-
-0800287c <DMA_Init>:
+ 8002a3e:	68fb      	ldr	r3, [r7, #12]
+ 8002a40:	461a      	mov	r2, r3
+ 8002a42:	887b      	ldrh	r3, [r7, #2]
+ 8002a44:	6013      	str	r3, [r2, #0]
+}
+ 8002a46:	bf00      	nop
+ 8002a48:	3714      	adds	r7, #20
+ 8002a4a:	46bd      	mov	sp, r7
+ 8002a4c:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002a50:	4770      	bx	lr
+ 8002a52:	bf00      	nop
+ 8002a54:	40007400 	.word	0x40007400
+
+08002a58 <DMA_Init>:
   * @param  DMA_InitStruct: pointer to a DMA_InitTypeDef structure that contains
   *         the configuration information for the specified DMA Stream.  
   * @retval None
   */
 void DMA_Init(DMA_Stream_TypeDef* DMAy_Streamx, DMA_InitTypeDef* DMA_InitStruct)
 {
- 800287c:	b480      	push	{r7}
- 800287e:	b085      	sub	sp, #20
- 8002880:	af00      	add	r7, sp, #0
- 8002882:	6078      	str	r0, [r7, #4]
- 8002884:	6039      	str	r1, [r7, #0]
+ 8002a58:	b480      	push	{r7}
+ 8002a5a:	b085      	sub	sp, #20
+ 8002a5c:	af00      	add	r7, sp, #0
+ 8002a5e:	6078      	str	r0, [r7, #4]
+ 8002a60:	6039      	str	r1, [r7, #0]
   uint32_t tmpreg = 0;
- 8002886:	2300      	movs	r3, #0
- 8002888:	60fb      	str	r3, [r7, #12]
+ 8002a62:	2300      	movs	r3, #0
+ 8002a64:	60fb      	str	r3, [r7, #12]
   assert_param(IS_DMA_MEMORY_BURST(DMA_InitStruct->DMA_MemoryBurst));
   assert_param(IS_DMA_PERIPHERAL_BURST(DMA_InitStruct->DMA_PeripheralBurst));
 
   /*------------------------- DMAy Streamx CR Configuration ------------------*/
   /* Get the DMAy_Streamx CR value */
   tmpreg = DMAy_Streamx->CR;
- 800288a:	687b      	ldr	r3, [r7, #4]
- 800288c:	681b      	ldr	r3, [r3, #0]
- 800288e:	60fb      	str	r3, [r7, #12]
+ 8002a66:	687b      	ldr	r3, [r7, #4]
+ 8002a68:	681b      	ldr	r3, [r3, #0]
+ 8002a6a:	60fb      	str	r3, [r7, #12]
 
   /* Clear CHSEL, MBURST, PBURST, PL, MSIZE, PSIZE, MINC, PINC, CIRC and DIR bits */
   tmpreg &= ((uint32_t)~(DMA_SxCR_CHSEL | DMA_SxCR_MBURST | DMA_SxCR_PBURST | \
- 8002890:	68fa      	ldr	r2, [r7, #12]
- 8002892:	4b25      	ldr	r3, [pc, #148]	; (8002928 <DMA_Init+0xac>)
- 8002894:	4013      	ands	r3, r2
- 8002896:	60fb      	str	r3, [r7, #12]
+ 8002a6c:	68fa      	ldr	r2, [r7, #12]
+ 8002a6e:	4b25      	ldr	r3, [pc, #148]	; (8002b04 <DMA_Init+0xac>)
+ 8002a70:	4013      	ands	r3, r2
+ 8002a72:	60fb      	str	r3, [r7, #12]
   /* Set MSIZE bits according to DMA_MemoryDataSize value */
   /* Set CIRC bit according to DMA_Mode value */
   /* Set PL bits according to DMA_Priority value */
   /* Set MBURST bits according to DMA_MemoryBurst value */
   /* Set PBURST bits according to DMA_PeripheralBurst value */
   tmpreg |= DMA_InitStruct->DMA_Channel | DMA_InitStruct->DMA_DIR |
- 8002898:	683b      	ldr	r3, [r7, #0]
- 800289a:	681a      	ldr	r2, [r3, #0]
- 800289c:	683b      	ldr	r3, [r7, #0]
- 800289e:	68db      	ldr	r3, [r3, #12]
- 80028a0:	431a      	orrs	r2, r3
+ 8002a74:	683b      	ldr	r3, [r7, #0]
+ 8002a76:	681a      	ldr	r2, [r3, #0]
+ 8002a78:	683b      	ldr	r3, [r7, #0]
+ 8002a7a:	68db      	ldr	r3, [r3, #12]
+ 8002a7c:	431a      	orrs	r2, r3
             DMA_InitStruct->DMA_PeripheralInc | DMA_InitStruct->DMA_MemoryInc |
- 80028a2:	683b      	ldr	r3, [r7, #0]
- 80028a4:	695b      	ldr	r3, [r3, #20]
+ 8002a7e:	683b      	ldr	r3, [r7, #0]
+ 8002a80:	695b      	ldr	r3, [r3, #20]
   tmpreg |= DMA_InitStruct->DMA_Channel | DMA_InitStruct->DMA_DIR |
- 80028a6:	431a      	orrs	r2, r3
+ 8002a82:	431a      	orrs	r2, r3
             DMA_InitStruct->DMA_PeripheralInc | DMA_InitStruct->DMA_MemoryInc |
- 80028a8:	683b      	ldr	r3, [r7, #0]
- 80028aa:	699b      	ldr	r3, [r3, #24]
- 80028ac:	431a      	orrs	r2, r3
+ 8002a84:	683b      	ldr	r3, [r7, #0]
+ 8002a86:	699b      	ldr	r3, [r3, #24]
+ 8002a88:	431a      	orrs	r2, r3
             DMA_InitStruct->DMA_PeripheralDataSize | DMA_InitStruct->DMA_MemoryDataSize |
- 80028ae:	683b      	ldr	r3, [r7, #0]
- 80028b0:	69db      	ldr	r3, [r3, #28]
+ 8002a8a:	683b      	ldr	r3, [r7, #0]
+ 8002a8c:	69db      	ldr	r3, [r3, #28]
             DMA_InitStruct->DMA_PeripheralInc | DMA_InitStruct->DMA_MemoryInc |
- 80028b2:	431a      	orrs	r2, r3
+ 8002a8e:	431a      	orrs	r2, r3
             DMA_InitStruct->DMA_PeripheralDataSize | DMA_InitStruct->DMA_MemoryDataSize |
- 80028b4:	683b      	ldr	r3, [r7, #0]
- 80028b6:	6a1b      	ldr	r3, [r3, #32]
- 80028b8:	431a      	orrs	r2, r3
+ 8002a90:	683b      	ldr	r3, [r7, #0]
+ 8002a92:	6a1b      	ldr	r3, [r3, #32]
+ 8002a94:	431a      	orrs	r2, r3
             DMA_InitStruct->DMA_Mode | DMA_InitStruct->DMA_Priority |
- 80028ba:	683b      	ldr	r3, [r7, #0]
- 80028bc:	6a5b      	ldr	r3, [r3, #36]	; 0x24
+ 8002a96:	683b      	ldr	r3, [r7, #0]
+ 8002a98:	6a5b      	ldr	r3, [r3, #36]	; 0x24
             DMA_InitStruct->DMA_PeripheralDataSize | DMA_InitStruct->DMA_MemoryDataSize |
- 80028be:	431a      	orrs	r2, r3
+ 8002a9a:	431a      	orrs	r2, r3
             DMA_InitStruct->DMA_Mode | DMA_InitStruct->DMA_Priority |
- 80028c0:	683b      	ldr	r3, [r7, #0]
- 80028c2:	6a9b      	ldr	r3, [r3, #40]	; 0x28
- 80028c4:	431a      	orrs	r2, r3
+ 8002a9c:	683b      	ldr	r3, [r7, #0]
+ 8002a9e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
+ 8002aa0:	431a      	orrs	r2, r3
             DMA_InitStruct->DMA_MemoryBurst | DMA_InitStruct->DMA_PeripheralBurst;
- 80028c6:	683b      	ldr	r3, [r7, #0]
- 80028c8:	6b5b      	ldr	r3, [r3, #52]	; 0x34
+ 8002aa2:	683b      	ldr	r3, [r7, #0]
+ 8002aa4:	6b5b      	ldr	r3, [r3, #52]	; 0x34
             DMA_InitStruct->DMA_Mode | DMA_InitStruct->DMA_Priority |
- 80028ca:	431a      	orrs	r2, r3
+ 8002aa6:	431a      	orrs	r2, r3
             DMA_InitStruct->DMA_MemoryBurst | DMA_InitStruct->DMA_PeripheralBurst;
- 80028cc:	683b      	ldr	r3, [r7, #0]
- 80028ce:	6b9b      	ldr	r3, [r3, #56]	; 0x38
- 80028d0:	4313      	orrs	r3, r2
+ 8002aa8:	683b      	ldr	r3, [r7, #0]
+ 8002aaa:	6b9b      	ldr	r3, [r3, #56]	; 0x38
+ 8002aac:	4313      	orrs	r3, r2
   tmpreg |= DMA_InitStruct->DMA_Channel | DMA_InitStruct->DMA_DIR |
- 80028d2:	68fa      	ldr	r2, [r7, #12]
- 80028d4:	4313      	orrs	r3, r2
- 80028d6:	60fb      	str	r3, [r7, #12]
+ 8002aae:	68fa      	ldr	r2, [r7, #12]
+ 8002ab0:	4313      	orrs	r3, r2
+ 8002ab2:	60fb      	str	r3, [r7, #12]
 
   /* Write to DMAy Streamx CR register */
   DMAy_Streamx->CR = tmpreg;
- 80028d8:	687b      	ldr	r3, [r7, #4]
- 80028da:	68fa      	ldr	r2, [r7, #12]
- 80028dc:	601a      	str	r2, [r3, #0]
+ 8002ab4:	687b      	ldr	r3, [r7, #4]
+ 8002ab6:	68fa      	ldr	r2, [r7, #12]
+ 8002ab8:	601a      	str	r2, [r3, #0]
 
   /*------------------------- DMAy Streamx FCR Configuration -----------------*/
   /* Get the DMAy_Streamx FCR value */
   tmpreg = DMAy_Streamx->FCR;
- 80028de:	687b      	ldr	r3, [r7, #4]
- 80028e0:	695b      	ldr	r3, [r3, #20]
- 80028e2:	60fb      	str	r3, [r7, #12]
+ 8002aba:	687b      	ldr	r3, [r7, #4]
+ 8002abc:	695b      	ldr	r3, [r3, #20]
+ 8002abe:	60fb      	str	r3, [r7, #12]
 
   /* Clear DMDIS and FTH bits */
   tmpreg &= (uint32_t)~(DMA_SxFCR_DMDIS | DMA_SxFCR_FTH);
- 80028e4:	68fb      	ldr	r3, [r7, #12]
- 80028e6:	f023 0307 	bic.w	r3, r3, #7
- 80028ea:	60fb      	str	r3, [r7, #12]
+ 8002ac0:	68fb      	ldr	r3, [r7, #12]
+ 8002ac2:	f023 0307 	bic.w	r3, r3, #7
+ 8002ac6:	60fb      	str	r3, [r7, #12]
 
   /* Configure DMAy Streamx FIFO: 
     Set DMDIS bits according to DMA_FIFOMode value 
     Set FTH bits according to DMA_FIFOThreshold value */
   tmpreg |= DMA_InitStruct->DMA_FIFOMode | DMA_InitStruct->DMA_FIFOThreshold;
- 80028ec:	683b      	ldr	r3, [r7, #0]
- 80028ee:	6ada      	ldr	r2, [r3, #44]	; 0x2c
- 80028f0:	683b      	ldr	r3, [r7, #0]
- 80028f2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
- 80028f4:	4313      	orrs	r3, r2
- 80028f6:	68fa      	ldr	r2, [r7, #12]
- 80028f8:	4313      	orrs	r3, r2
- 80028fa:	60fb      	str	r3, [r7, #12]
+ 8002ac8:	683b      	ldr	r3, [r7, #0]
+ 8002aca:	6ada      	ldr	r2, [r3, #44]	; 0x2c
+ 8002acc:	683b      	ldr	r3, [r7, #0]
+ 8002ace:	6b1b      	ldr	r3, [r3, #48]	; 0x30
+ 8002ad0:	4313      	orrs	r3, r2
+ 8002ad2:	68fa      	ldr	r2, [r7, #12]
+ 8002ad4:	4313      	orrs	r3, r2
+ 8002ad6:	60fb      	str	r3, [r7, #12]
 
   /* Write to DMAy Streamx CR */
   DMAy_Streamx->FCR = tmpreg;
- 80028fc:	687b      	ldr	r3, [r7, #4]
- 80028fe:	68fa      	ldr	r2, [r7, #12]
- 8002900:	615a      	str	r2, [r3, #20]
+ 8002ad8:	687b      	ldr	r3, [r7, #4]
+ 8002ada:	68fa      	ldr	r2, [r7, #12]
+ 8002adc:	615a      	str	r2, [r3, #20]
 
   /*------------------------- DMAy Streamx NDTR Configuration ----------------*/
   /* Write to DMAy Streamx NDTR register */
   DMAy_Streamx->NDTR = DMA_InitStruct->DMA_BufferSize;
- 8002902:	683b      	ldr	r3, [r7, #0]
- 8002904:	691a      	ldr	r2, [r3, #16]
- 8002906:	687b      	ldr	r3, [r7, #4]
- 8002908:	605a      	str	r2, [r3, #4]
+ 8002ade:	683b      	ldr	r3, [r7, #0]
+ 8002ae0:	691a      	ldr	r2, [r3, #16]
+ 8002ae2:	687b      	ldr	r3, [r7, #4]
+ 8002ae4:	605a      	str	r2, [r3, #4]
 
   /*------------------------- DMAy Streamx PAR Configuration -----------------*/
   /* Write to DMAy Streamx PAR */
   DMAy_Streamx->PAR = DMA_InitStruct->DMA_PeripheralBaseAddr;
- 800290a:	683b      	ldr	r3, [r7, #0]
- 800290c:	685a      	ldr	r2, [r3, #4]
- 800290e:	687b      	ldr	r3, [r7, #4]
- 8002910:	609a      	str	r2, [r3, #8]
+ 8002ae6:	683b      	ldr	r3, [r7, #0]
+ 8002ae8:	685a      	ldr	r2, [r3, #4]
+ 8002aea:	687b      	ldr	r3, [r7, #4]
+ 8002aec:	609a      	str	r2, [r3, #8]
 
   /*------------------------- DMAy Streamx M0AR Configuration ----------------*/
   /* Write to DMAy Streamx M0AR */
   DMAy_Streamx->M0AR = DMA_InitStruct->DMA_Memory0BaseAddr;
- 8002912:	683b      	ldr	r3, [r7, #0]
- 8002914:	689a      	ldr	r2, [r3, #8]
- 8002916:	687b      	ldr	r3, [r7, #4]
- 8002918:	60da      	str	r2, [r3, #12]
-}
- 800291a:	bf00      	nop
- 800291c:	3714      	adds	r7, #20
- 800291e:	46bd      	mov	sp, r7
- 8002920:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8002924:	4770      	bx	lr
- 8002926:	bf00      	nop
- 8002928:	f01c803f 	.word	0xf01c803f
-
-0800292c <DMA_Cmd>:
+ 8002aee:	683b      	ldr	r3, [r7, #0]
+ 8002af0:	689a      	ldr	r2, [r3, #8]
+ 8002af2:	687b      	ldr	r3, [r7, #4]
+ 8002af4:	60da      	str	r2, [r3, #12]
+}
+ 8002af6:	bf00      	nop
+ 8002af8:	3714      	adds	r7, #20
+ 8002afa:	46bd      	mov	sp, r7
+ 8002afc:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002b00:	4770      	bx	lr
+ 8002b02:	bf00      	nop
+ 8002b04:	f01c803f 	.word	0xf01c803f
+
+08002b08 <DMA_Cmd>:
   *        this single data is finished.            
   *    
   * @retval None
   */
 void DMA_Cmd(DMA_Stream_TypeDef* DMAy_Streamx, FunctionalState NewState)
 {
- 800292c:	b480      	push	{r7}
- 800292e:	b083      	sub	sp, #12
- 8002930:	af00      	add	r7, sp, #0
- 8002932:	6078      	str	r0, [r7, #4]
- 8002934:	460b      	mov	r3, r1
- 8002936:	70fb      	strb	r3, [r7, #3]
+ 8002b08:	b480      	push	{r7}
+ 8002b0a:	b083      	sub	sp, #12
+ 8002b0c:	af00      	add	r7, sp, #0
+ 8002b0e:	6078      	str	r0, [r7, #4]
+ 8002b10:	460b      	mov	r3, r1
+ 8002b12:	70fb      	strb	r3, [r7, #3]
   /* Check the parameters */
   assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));
   assert_param(IS_FUNCTIONAL_STATE(NewState));
 
   if (NewState != DISABLE)
- 8002938:	78fb      	ldrb	r3, [r7, #3]
- 800293a:	2b00      	cmp	r3, #0
- 800293c:	d006      	beq.n	800294c <DMA_Cmd+0x20>
+ 8002b14:	78fb      	ldrb	r3, [r7, #3]
+ 8002b16:	2b00      	cmp	r3, #0
+ 8002b18:	d006      	beq.n	8002b28 <DMA_Cmd+0x20>
   {
     /* Enable the selected DMAy Streamx by setting EN bit */
     DMAy_Streamx->CR |= (uint32_t)DMA_SxCR_EN;
- 800293e:	687b      	ldr	r3, [r7, #4]
- 8002940:	681b      	ldr	r3, [r3, #0]
- 8002942:	f043 0201 	orr.w	r2, r3, #1
- 8002946:	687b      	ldr	r3, [r7, #4]
- 8002948:	601a      	str	r2, [r3, #0]
+ 8002b1a:	687b      	ldr	r3, [r7, #4]
+ 8002b1c:	681b      	ldr	r3, [r3, #0]
+ 8002b1e:	f043 0201 	orr.w	r2, r3, #1
+ 8002b22:	687b      	ldr	r3, [r7, #4]
+ 8002b24:	601a      	str	r2, [r3, #0]
   else
   {
     /* Disable the selected DMAy Streamx by clearing EN bit */
     DMAy_Streamx->CR &= ~(uint32_t)DMA_SxCR_EN;
   }
 }
- 800294a:	e005      	b.n	8002958 <DMA_Cmd+0x2c>
+ 8002b26:	e005      	b.n	8002b34 <DMA_Cmd+0x2c>
     DMAy_Streamx->CR &= ~(uint32_t)DMA_SxCR_EN;
- 800294c:	687b      	ldr	r3, [r7, #4]
- 800294e:	681b      	ldr	r3, [r3, #0]
- 8002950:	f023 0201 	bic.w	r2, r3, #1
- 8002954:	687b      	ldr	r3, [r7, #4]
- 8002956:	601a      	str	r2, [r3, #0]
-}
- 8002958:	bf00      	nop
- 800295a:	370c      	adds	r7, #12
- 800295c:	46bd      	mov	sp, r7
- 800295e:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8002962:	4770      	bx	lr
-
-08002964 <DMA_GetCmdStatus>:
+ 8002b28:	687b      	ldr	r3, [r7, #4]
+ 8002b2a:	681b      	ldr	r3, [r3, #0]
+ 8002b2c:	f023 0201 	bic.w	r2, r3, #1
+ 8002b30:	687b      	ldr	r3, [r7, #4]
+ 8002b32:	601a      	str	r2, [r3, #0]
+}
+ 8002b34:	bf00      	nop
+ 8002b36:	370c      	adds	r7, #12
+ 8002b38:	46bd      	mov	sp, r7
+ 8002b3a:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002b3e:	4770      	bx	lr
+
+08002b40 <DMA_GetCmdStatus>:
   *          of this single data is finished.  
   *      
   * @retval Current state of the DMAy Streamx (ENABLE or DISABLE).
   */
 FunctionalState DMA_GetCmdStatus(DMA_Stream_TypeDef* DMAy_Streamx)
 {
- 8002964:	b480      	push	{r7}
- 8002966:	b085      	sub	sp, #20
- 8002968:	af00      	add	r7, sp, #0
- 800296a:	6078      	str	r0, [r7, #4]
+ 8002b40:	b480      	push	{r7}
+ 8002b42:	b085      	sub	sp, #20
+ 8002b44:	af00      	add	r7, sp, #0
+ 8002b46:	6078      	str	r0, [r7, #4]
   FunctionalState state = DISABLE;
- 800296c:	2300      	movs	r3, #0
- 800296e:	73fb      	strb	r3, [r7, #15]
+ 8002b48:	2300      	movs	r3, #0
+ 8002b4a:	73fb      	strb	r3, [r7, #15]
 
   /* Check the parameters */
   assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));
 
   if ((DMAy_Streamx->CR & (uint32_t)DMA_SxCR_EN) != 0)
- 8002970:	687b      	ldr	r3, [r7, #4]
- 8002972:	681b      	ldr	r3, [r3, #0]
- 8002974:	f003 0301 	and.w	r3, r3, #1
- 8002978:	2b00      	cmp	r3, #0
- 800297a:	d002      	beq.n	8002982 <DMA_GetCmdStatus+0x1e>
+ 8002b4c:	687b      	ldr	r3, [r7, #4]
+ 8002b4e:	681b      	ldr	r3, [r3, #0]
+ 8002b50:	f003 0301 	and.w	r3, r3, #1
+ 8002b54:	2b00      	cmp	r3, #0
+ 8002b56:	d002      	beq.n	8002b5e <DMA_GetCmdStatus+0x1e>
   {
     /* The selected DMAy Streamx EN bit is set (DMA is still transferring) */
     state = ENABLE;
- 800297c:	2301      	movs	r3, #1
- 800297e:	73fb      	strb	r3, [r7, #15]
- 8002980:	e001      	b.n	8002986 <DMA_GetCmdStatus+0x22>
+ 8002b58:	2301      	movs	r3, #1
+ 8002b5a:	73fb      	strb	r3, [r7, #15]
+ 8002b5c:	e001      	b.n	8002b62 <DMA_GetCmdStatus+0x22>
   }
   else
   {
     /* The selected DMAy Streamx EN bit is cleared (DMA is disabled and 
         all transfers are complete) */
     state = DISABLE;
- 8002982:	2300      	movs	r3, #0
- 8002984:	73fb      	strb	r3, [r7, #15]
+ 8002b5e:	2300      	movs	r3, #0
+ 8002b60:	73fb      	strb	r3, [r7, #15]
   }
   return state;
- 8002986:	7bfb      	ldrb	r3, [r7, #15]
+ 8002b62:	7bfb      	ldrb	r3, [r7, #15]
 }
- 8002988:	4618      	mov	r0, r3
- 800298a:	3714      	adds	r7, #20
- 800298c:	46bd      	mov	sp, r7
- 800298e:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8002992:	4770      	bx	lr
+ 8002b64:	4618      	mov	r0, r3
+ 8002b66:	3714      	adds	r7, #20
+ 8002b68:	46bd      	mov	sp, r7
+ 8002b6a:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002b6e:	4770      	bx	lr
 
-08002994 <DMA_GetFlagStatus>:
+08002b70 <DMA_GetFlagStatus>:
   *            @arg DMA_FLAG_FEIFx:  Streamx FIFO error flag
   *         Where x can be 0 to 7 to select the DMA Stream.
   * @retval The new state of DMA_FLAG (SET or RESET).
   */
 FlagStatus DMA_GetFlagStatus(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_FLAG)
 {
- 8002994:	b480      	push	{r7}
- 8002996:	b087      	sub	sp, #28
- 8002998:	af00      	add	r7, sp, #0
- 800299a:	6078      	str	r0, [r7, #4]
- 800299c:	6039      	str	r1, [r7, #0]
+ 8002b70:	b480      	push	{r7}
+ 8002b72:	b087      	sub	sp, #28
+ 8002b74:	af00      	add	r7, sp, #0
+ 8002b76:	6078      	str	r0, [r7, #4]
+ 8002b78:	6039      	str	r1, [r7, #0]
   FlagStatus bitstatus = RESET;
- 800299e:	2300      	movs	r3, #0
- 80029a0:	75fb      	strb	r3, [r7, #23]
+ 8002b7a:	2300      	movs	r3, #0
+ 8002b7c:	75fb      	strb	r3, [r7, #23]
   DMA_TypeDef* DMAy;
   uint32_t tmpreg = 0;
- 80029a2:	2300      	movs	r3, #0
- 80029a4:	60fb      	str	r3, [r7, #12]
+ 8002b7e:	2300      	movs	r3, #0
+ 8002b80:	60fb      	str	r3, [r7, #12]
   /* Check the parameters */
   assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));
   assert_param(IS_DMA_GET_FLAG(DMA_FLAG));
 
   /* Determine the DMA to which belongs the stream */
   if (DMAy_Streamx < DMA2_Stream0)
- 80029a6:	687b      	ldr	r3, [r7, #4]
- 80029a8:	4a15      	ldr	r2, [pc, #84]	; (8002a00 <DMA_GetFlagStatus+0x6c>)
- 80029aa:	4293      	cmp	r3, r2
- 80029ac:	d802      	bhi.n	80029b4 <DMA_GetFlagStatus+0x20>
+ 8002b82:	687b      	ldr	r3, [r7, #4]
+ 8002b84:	4a15      	ldr	r2, [pc, #84]	; (8002bdc <DMA_GetFlagStatus+0x6c>)
+ 8002b86:	4293      	cmp	r3, r2
+ 8002b88:	d802      	bhi.n	8002b90 <DMA_GetFlagStatus+0x20>
   {
     /* DMAy_Streamx belongs to DMA1 */
     DMAy = DMA1; 
- 80029ae:	4b15      	ldr	r3, [pc, #84]	; (8002a04 <DMA_GetFlagStatus+0x70>)
- 80029b0:	613b      	str	r3, [r7, #16]
- 80029b2:	e001      	b.n	80029b8 <DMA_GetFlagStatus+0x24>
+ 8002b8a:	4b15      	ldr	r3, [pc, #84]	; (8002be0 <DMA_GetFlagStatus+0x70>)
+ 8002b8c:	613b      	str	r3, [r7, #16]
+ 8002b8e:	e001      	b.n	8002b94 <DMA_GetFlagStatus+0x24>
   } 
   else 
   {
     /* DMAy_Streamx belongs to DMA2 */
     DMAy = DMA2; 
- 80029b4:	4b14      	ldr	r3, [pc, #80]	; (8002a08 <DMA_GetFlagStatus+0x74>)
- 80029b6:	613b      	str	r3, [r7, #16]
+ 8002b90:	4b14      	ldr	r3, [pc, #80]	; (8002be4 <DMA_GetFlagStatus+0x74>)
+ 8002b92:	613b      	str	r3, [r7, #16]
   }
 
   /* Check if the flag is in HISR or LISR */
   if ((DMA_FLAG & HIGH_ISR_MASK) != (uint32_t)RESET)
- 80029b8:	683b      	ldr	r3, [r7, #0]
- 80029ba:	f003 5300 	and.w	r3, r3, #536870912	; 0x20000000
- 80029be:	2b00      	cmp	r3, #0
- 80029c0:	d003      	beq.n	80029ca <DMA_GetFlagStatus+0x36>
+ 8002b94:	683b      	ldr	r3, [r7, #0]
+ 8002b96:	f003 5300 	and.w	r3, r3, #536870912	; 0x20000000
+ 8002b9a:	2b00      	cmp	r3, #0
+ 8002b9c:	d003      	beq.n	8002ba6 <DMA_GetFlagStatus+0x36>
   {
     /* Get DMAy HISR register value */
     tmpreg = DMAy->HISR;
- 80029c2:	693b      	ldr	r3, [r7, #16]
- 80029c4:	685b      	ldr	r3, [r3, #4]
- 80029c6:	60fb      	str	r3, [r7, #12]
- 80029c8:	e002      	b.n	80029d0 <DMA_GetFlagStatus+0x3c>
+ 8002b9e:	693b      	ldr	r3, [r7, #16]
+ 8002ba0:	685b      	ldr	r3, [r3, #4]
+ 8002ba2:	60fb      	str	r3, [r7, #12]
+ 8002ba4:	e002      	b.n	8002bac <DMA_GetFlagStatus+0x3c>
   }
   else
   {
     /* Get DMAy LISR register value */
     tmpreg = DMAy->LISR;
- 80029ca:	693b      	ldr	r3, [r7, #16]
- 80029cc:	681b      	ldr	r3, [r3, #0]
- 80029ce:	60fb      	str	r3, [r7, #12]
+ 8002ba6:	693b      	ldr	r3, [r7, #16]
+ 8002ba8:	681b      	ldr	r3, [r3, #0]
+ 8002baa:	60fb      	str	r3, [r7, #12]
   }   
  
   /* Mask the reserved bits */
   tmpreg &= (uint32_t)RESERVED_MASK;
- 80029d0:	68fb      	ldr	r3, [r7, #12]
- 80029d2:	f023 23f0 	bic.w	r3, r3, #4026593280	; 0xf000f000
- 80029d6:	f023 1382 	bic.w	r3, r3, #8519810	; 0x820082
- 80029da:	60fb      	str	r3, [r7, #12]
+ 8002bac:	68fb      	ldr	r3, [r7, #12]
+ 8002bae:	f023 23f0 	bic.w	r3, r3, #4026593280	; 0xf000f000
+ 8002bb2:	f023 1382 	bic.w	r3, r3, #8519810	; 0x820082
+ 8002bb6:	60fb      	str	r3, [r7, #12]
 
   /* Check the status of the specified DMA flag */
   if ((tmpreg & DMA_FLAG) != (uint32_t)RESET)
- 80029dc:	68fa      	ldr	r2, [r7, #12]
- 80029de:	683b      	ldr	r3, [r7, #0]
- 80029e0:	4013      	ands	r3, r2
- 80029e2:	2b00      	cmp	r3, #0
- 80029e4:	d002      	beq.n	80029ec <DMA_GetFlagStatus+0x58>
+ 8002bb8:	68fa      	ldr	r2, [r7, #12]
+ 8002bba:	683b      	ldr	r3, [r7, #0]
+ 8002bbc:	4013      	ands	r3, r2
+ 8002bbe:	2b00      	cmp	r3, #0
+ 8002bc0:	d002      	beq.n	8002bc8 <DMA_GetFlagStatus+0x58>
   {
     /* DMA_FLAG is set */
     bitstatus = SET;
- 80029e6:	2301      	movs	r3, #1
- 80029e8:	75fb      	strb	r3, [r7, #23]
- 80029ea:	e001      	b.n	80029f0 <DMA_GetFlagStatus+0x5c>
+ 8002bc2:	2301      	movs	r3, #1
+ 8002bc4:	75fb      	strb	r3, [r7, #23]
+ 8002bc6:	e001      	b.n	8002bcc <DMA_GetFlagStatus+0x5c>
   }
   else
   {
     /* DMA_FLAG is reset */
     bitstatus = RESET;
- 80029ec:	2300      	movs	r3, #0
- 80029ee:	75fb      	strb	r3, [r7, #23]
+ 8002bc8:	2300      	movs	r3, #0
+ 8002bca:	75fb      	strb	r3, [r7, #23]
   }
 
   /* Return the DMA_FLAG status */
   return  bitstatus;
- 80029f0:	7dfb      	ldrb	r3, [r7, #23]
-}
- 80029f2:	4618      	mov	r0, r3
- 80029f4:	371c      	adds	r7, #28
- 80029f6:	46bd      	mov	sp, r7
- 80029f8:	f85d 7b04 	ldr.w	r7, [sp], #4
- 80029fc:	4770      	bx	lr
- 80029fe:	bf00      	nop
- 8002a00:	4002640f 	.word	0x4002640f
- 8002a04:	40026000 	.word	0x40026000
- 8002a08:	40026400 	.word	0x40026400
-
-08002a0c <DMA_ClearFlag>:
+ 8002bcc:	7dfb      	ldrb	r3, [r7, #23]
+}
+ 8002bce:	4618      	mov	r0, r3
+ 8002bd0:	371c      	adds	r7, #28
+ 8002bd2:	46bd      	mov	sp, r7
+ 8002bd4:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002bd8:	4770      	bx	lr
+ 8002bda:	bf00      	nop
+ 8002bdc:	4002640f 	.word	0x4002640f
+ 8002be0:	40026000 	.word	0x40026000
+ 8002be4:	40026400 	.word	0x40026400
+
+08002be8 <DMA_ClearFlag>:
   *            @arg DMA_FLAG_FEIFx:  Streamx FIFO error flag
   *         Where x can be 0 to 7 to select the DMA Stream.   
   * @retval None
   */
 void DMA_ClearFlag(DMA_Stream_TypeDef* DMAy_Streamx, uint32_t DMA_FLAG)
 {
- 8002a0c:	b480      	push	{r7}
- 8002a0e:	b085      	sub	sp, #20
- 8002a10:	af00      	add	r7, sp, #0
- 8002a12:	6078      	str	r0, [r7, #4]
- 8002a14:	6039      	str	r1, [r7, #0]
+ 8002be8:	b480      	push	{r7}
+ 8002bea:	b085      	sub	sp, #20
+ 8002bec:	af00      	add	r7, sp, #0
+ 8002bee:	6078      	str	r0, [r7, #4]
+ 8002bf0:	6039      	str	r1, [r7, #0]
   /* Check the parameters */
   assert_param(IS_DMA_ALL_PERIPH(DMAy_Streamx));
   assert_param(IS_DMA_CLEAR_FLAG(DMA_FLAG));
 
   /* Determine the DMA to which belongs the stream */
   if (DMAy_Streamx < DMA2_Stream0)
- 8002a16:	687b      	ldr	r3, [r7, #4]
- 8002a18:	4a10      	ldr	r2, [pc, #64]	; (8002a5c <DMA_ClearFlag+0x50>)
- 8002a1a:	4293      	cmp	r3, r2
- 8002a1c:	d802      	bhi.n	8002a24 <DMA_ClearFlag+0x18>
+ 8002bf2:	687b      	ldr	r3, [r7, #4]
+ 8002bf4:	4a10      	ldr	r2, [pc, #64]	; (8002c38 <DMA_ClearFlag+0x50>)
+ 8002bf6:	4293      	cmp	r3, r2
+ 8002bf8:	d802      	bhi.n	8002c00 <DMA_ClearFlag+0x18>
   {
     /* DMAy_Streamx belongs to DMA1 */
     DMAy = DMA1; 
- 8002a1e:	4b10      	ldr	r3, [pc, #64]	; (8002a60 <DMA_ClearFlag+0x54>)
- 8002a20:	60fb      	str	r3, [r7, #12]
- 8002a22:	e001      	b.n	8002a28 <DMA_ClearFlag+0x1c>
+ 8002bfa:	4b10      	ldr	r3, [pc, #64]	; (8002c3c <DMA_ClearFlag+0x54>)
+ 8002bfc:	60fb      	str	r3, [r7, #12]
+ 8002bfe:	e001      	b.n	8002c04 <DMA_ClearFlag+0x1c>
   } 
   else 
   {
     /* DMAy_Streamx belongs to DMA2 */
     DMAy = DMA2; 
- 8002a24:	4b0f      	ldr	r3, [pc, #60]	; (8002a64 <DMA_ClearFlag+0x58>)
- 8002a26:	60fb      	str	r3, [r7, #12]
+ 8002c00:	4b0f      	ldr	r3, [pc, #60]	; (8002c40 <DMA_ClearFlag+0x58>)
+ 8002c02:	60fb      	str	r3, [r7, #12]
   }
 
   /* Check if LIFCR or HIFCR register is targeted */
   if ((DMA_FLAG & HIGH_ISR_MASK) != (uint32_t)RESET)
- 8002a28:	683b      	ldr	r3, [r7, #0]
- 8002a2a:	f003 5300 	and.w	r3, r3, #536870912	; 0x20000000
- 8002a2e:	2b00      	cmp	r3, #0
- 8002a30:	d007      	beq.n	8002a42 <DMA_ClearFlag+0x36>
+ 8002c04:	683b      	ldr	r3, [r7, #0]
+ 8002c06:	f003 5300 	and.w	r3, r3, #536870912	; 0x20000000
+ 8002c0a:	2b00      	cmp	r3, #0
+ 8002c0c:	d007      	beq.n	8002c1e <DMA_ClearFlag+0x36>
   {
     /* Set DMAy HIFCR register clear flag bits */
     DMAy->HIFCR = (uint32_t)(DMA_FLAG & RESERVED_MASK);
- 8002a32:	683b      	ldr	r3, [r7, #0]
- 8002a34:	f023 23f0 	bic.w	r3, r3, #4026593280	; 0xf000f000
- 8002a38:	f023 1382 	bic.w	r3, r3, #8519810	; 0x820082
- 8002a3c:	68fa      	ldr	r2, [r7, #12]
- 8002a3e:	60d3      	str	r3, [r2, #12]
+ 8002c0e:	683b      	ldr	r3, [r7, #0]
+ 8002c10:	f023 23f0 	bic.w	r3, r3, #4026593280	; 0xf000f000
+ 8002c14:	f023 1382 	bic.w	r3, r3, #8519810	; 0x820082
+ 8002c18:	68fa      	ldr	r2, [r7, #12]
+ 8002c1a:	60d3      	str	r3, [r2, #12]
   else 
   {
     /* Set DMAy LIFCR register clear flag bits */
     DMAy->LIFCR = (uint32_t)(DMA_FLAG & RESERVED_MASK);
   }    
 }
- 8002a40:	e006      	b.n	8002a50 <DMA_ClearFlag+0x44>
+ 8002c1c:	e006      	b.n	8002c2c <DMA_ClearFlag+0x44>
     DMAy->LIFCR = (uint32_t)(DMA_FLAG & RESERVED_MASK);
- 8002a42:	683b      	ldr	r3, [r7, #0]
- 8002a44:	f023 23f0 	bic.w	r3, r3, #4026593280	; 0xf000f000
- 8002a48:	f023 1382 	bic.w	r3, r3, #8519810	; 0x820082
- 8002a4c:	68fa      	ldr	r2, [r7, #12]
- 8002a4e:	6093      	str	r3, [r2, #8]
-}
- 8002a50:	bf00      	nop
- 8002a52:	3714      	adds	r7, #20
- 8002a54:	46bd      	mov	sp, r7
- 8002a56:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8002a5a:	4770      	bx	lr
- 8002a5c:	4002640f 	.word	0x4002640f
- 8002a60:	40026000 	.word	0x40026000
- 8002a64:	40026400 	.word	0x40026400
-
-08002a68 <GPIO_Init>:
+ 8002c1e:	683b      	ldr	r3, [r7, #0]
+ 8002c20:	f023 23f0 	bic.w	r3, r3, #4026593280	; 0xf000f000
+ 8002c24:	f023 1382 	bic.w	r3, r3, #8519810	; 0x820082
+ 8002c28:	68fa      	ldr	r2, [r7, #12]
+ 8002c2a:	6093      	str	r3, [r2, #8]
+}
+ 8002c2c:	bf00      	nop
+ 8002c2e:	3714      	adds	r7, #20
+ 8002c30:	46bd      	mov	sp, r7
+ 8002c32:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002c36:	4770      	bx	lr
+ 8002c38:	4002640f 	.word	0x4002640f
+ 8002c3c:	40026000 	.word	0x40026000
+ 8002c40:	40026400 	.word	0x40026400
+
+08002c44 <GPIO_Init>:
   * @param  GPIO_InitStruct: pointer to a GPIO_InitTypeDef structure that contains
   *         the configuration information for the specified GPIO peripheral.
   * @retval None
   */
 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct)
 {
- 8002a68:	b480      	push	{r7}
- 8002a6a:	b087      	sub	sp, #28
- 8002a6c:	af00      	add	r7, sp, #0
- 8002a6e:	6078      	str	r0, [r7, #4]
- 8002a70:	6039      	str	r1, [r7, #0]
+ 8002c44:	b480      	push	{r7}
+ 8002c46:	b087      	sub	sp, #28
+ 8002c48:	af00      	add	r7, sp, #0
+ 8002c4a:	6078      	str	r0, [r7, #4]
+ 8002c4c:	6039      	str	r1, [r7, #0]
   uint32_t pinpos = 0x00, pos = 0x00 , currentpin = 0x00;
- 8002a72:	2300      	movs	r3, #0
- 8002a74:	617b      	str	r3, [r7, #20]
- 8002a76:	2300      	movs	r3, #0
- 8002a78:	613b      	str	r3, [r7, #16]
- 8002a7a:	2300      	movs	r3, #0
- 8002a7c:	60fb      	str	r3, [r7, #12]
+ 8002c4e:	2300      	movs	r3, #0
+ 8002c50:	617b      	str	r3, [r7, #20]
+ 8002c52:	2300      	movs	r3, #0
+ 8002c54:	613b      	str	r3, [r7, #16]
+ 8002c56:	2300      	movs	r3, #0
+ 8002c58:	60fb      	str	r3, [r7, #12]
   assert_param(IS_GPIO_MODE(GPIO_InitStruct->GPIO_Mode));
   assert_param(IS_GPIO_PUPD(GPIO_InitStruct->GPIO_PuPd));
 
   /* -------------------------Configure the port pins---------------- */
   /*-- GPIO Mode Configuration --*/
   for (pinpos = 0x00; pinpos < 0x10; pinpos++)
- 8002a7e:	2300      	movs	r3, #0
- 8002a80:	617b      	str	r3, [r7, #20]
- 8002a82:	e076      	b.n	8002b72 <GPIO_Init+0x10a>
+ 8002c5a:	2300      	movs	r3, #0
+ 8002c5c:	617b      	str	r3, [r7, #20]
+ 8002c5e:	e076      	b.n	8002d4e <GPIO_Init+0x10a>
   {
     pos = ((uint32_t)0x01) << pinpos;
- 8002a84:	2201      	movs	r2, #1
- 8002a86:	697b      	ldr	r3, [r7, #20]
- 8002a88:	fa02 f303 	lsl.w	r3, r2, r3
- 8002a8c:	613b      	str	r3, [r7, #16]
+ 8002c60:	2201      	movs	r2, #1
+ 8002c62:	697b      	ldr	r3, [r7, #20]
+ 8002c64:	fa02 f303 	lsl.w	r3, r2, r3
+ 8002c68:	613b      	str	r3, [r7, #16]
     /* Get the port pins position */
     currentpin = (GPIO_InitStruct->GPIO_Pin) & pos;
- 8002a8e:	683b      	ldr	r3, [r7, #0]
- 8002a90:	681a      	ldr	r2, [r3, #0]
- 8002a92:	693b      	ldr	r3, [r7, #16]
- 8002a94:	4013      	ands	r3, r2
- 8002a96:	60fb      	str	r3, [r7, #12]
+ 8002c6a:	683b      	ldr	r3, [r7, #0]
+ 8002c6c:	681a      	ldr	r2, [r3, #0]
+ 8002c6e:	693b      	ldr	r3, [r7, #16]
+ 8002c70:	4013      	ands	r3, r2
+ 8002c72:	60fb      	str	r3, [r7, #12]
 
     if (currentpin == pos)
- 8002a98:	68fa      	ldr	r2, [r7, #12]
- 8002a9a:	693b      	ldr	r3, [r7, #16]
- 8002a9c:	429a      	cmp	r2, r3
- 8002a9e:	d165      	bne.n	8002b6c <GPIO_Init+0x104>
+ 8002c74:	68fa      	ldr	r2, [r7, #12]
+ 8002c76:	693b      	ldr	r3, [r7, #16]
+ 8002c78:	429a      	cmp	r2, r3
+ 8002c7a:	d165      	bne.n	8002d48 <GPIO_Init+0x104>
     {
       GPIOx->MODER  &= ~(GPIO_MODER_MODER0 << (pinpos * 2));
- 8002aa0:	687b      	ldr	r3, [r7, #4]
- 8002aa2:	681a      	ldr	r2, [r3, #0]
- 8002aa4:	697b      	ldr	r3, [r7, #20]
- 8002aa6:	005b      	lsls	r3, r3, #1
- 8002aa8:	2103      	movs	r1, #3
- 8002aaa:	fa01 f303 	lsl.w	r3, r1, r3
- 8002aae:	43db      	mvns	r3, r3
- 8002ab0:	401a      	ands	r2, r3
- 8002ab2:	687b      	ldr	r3, [r7, #4]
- 8002ab4:	601a      	str	r2, [r3, #0]
+ 8002c7c:	687b      	ldr	r3, [r7, #4]
+ 8002c7e:	681a      	ldr	r2, [r3, #0]
+ 8002c80:	697b      	ldr	r3, [r7, #20]
+ 8002c82:	005b      	lsls	r3, r3, #1
+ 8002c84:	2103      	movs	r1, #3
+ 8002c86:	fa01 f303 	lsl.w	r3, r1, r3
+ 8002c8a:	43db      	mvns	r3, r3
+ 8002c8c:	401a      	ands	r2, r3
+ 8002c8e:	687b      	ldr	r3, [r7, #4]
+ 8002c90:	601a      	str	r2, [r3, #0]
       GPIOx->MODER |= (((uint32_t)GPIO_InitStruct->GPIO_Mode) << (pinpos * 2));
- 8002ab6:	687b      	ldr	r3, [r7, #4]
- 8002ab8:	681a      	ldr	r2, [r3, #0]
- 8002aba:	683b      	ldr	r3, [r7, #0]
- 8002abc:	791b      	ldrb	r3, [r3, #4]
- 8002abe:	4619      	mov	r1, r3
- 8002ac0:	697b      	ldr	r3, [r7, #20]
- 8002ac2:	005b      	lsls	r3, r3, #1
- 8002ac4:	fa01 f303 	lsl.w	r3, r1, r3
- 8002ac8:	431a      	orrs	r2, r3
- 8002aca:	687b      	ldr	r3, [r7, #4]
- 8002acc:	601a      	str	r2, [r3, #0]
+ 8002c92:	687b      	ldr	r3, [r7, #4]
+ 8002c94:	681a      	ldr	r2, [r3, #0]
+ 8002c96:	683b      	ldr	r3, [r7, #0]
+ 8002c98:	791b      	ldrb	r3, [r3, #4]
+ 8002c9a:	4619      	mov	r1, r3
+ 8002c9c:	697b      	ldr	r3, [r7, #20]
+ 8002c9e:	005b      	lsls	r3, r3, #1
+ 8002ca0:	fa01 f303 	lsl.w	r3, r1, r3
+ 8002ca4:	431a      	orrs	r2, r3
+ 8002ca6:	687b      	ldr	r3, [r7, #4]
+ 8002ca8:	601a      	str	r2, [r3, #0]
 
       if ((GPIO_InitStruct->GPIO_Mode == GPIO_Mode_OUT) || (GPIO_InitStruct->GPIO_Mode == GPIO_Mode_AF))
- 8002ace:	683b      	ldr	r3, [r7, #0]
- 8002ad0:	791b      	ldrb	r3, [r3, #4]
- 8002ad2:	2b01      	cmp	r3, #1
- 8002ad4:	d003      	beq.n	8002ade <GPIO_Init+0x76>
- 8002ad6:	683b      	ldr	r3, [r7, #0]
- 8002ad8:	791b      	ldrb	r3, [r3, #4]
- 8002ada:	2b02      	cmp	r3, #2
- 8002adc:	d12e      	bne.n	8002b3c <GPIO_Init+0xd4>
+ 8002caa:	683b      	ldr	r3, [r7, #0]
+ 8002cac:	791b      	ldrb	r3, [r3, #4]
+ 8002cae:	2b01      	cmp	r3, #1
+ 8002cb0:	d003      	beq.n	8002cba <GPIO_Init+0x76>
+ 8002cb2:	683b      	ldr	r3, [r7, #0]
+ 8002cb4:	791b      	ldrb	r3, [r3, #4]
+ 8002cb6:	2b02      	cmp	r3, #2
+ 8002cb8:	d12e      	bne.n	8002d18 <GPIO_Init+0xd4>
       {
         /* Check Speed mode parameters */
         assert_param(IS_GPIO_SPEED(GPIO_InitStruct->GPIO_Speed));
 
         /* Speed mode configuration */
         GPIOx->OSPEEDR &= ~(GPIO_OSPEEDER_OSPEEDR0 << (pinpos * 2));
- 8002ade:	687b      	ldr	r3, [r7, #4]
- 8002ae0:	689a      	ldr	r2, [r3, #8]
- 8002ae2:	697b      	ldr	r3, [r7, #20]
- 8002ae4:	005b      	lsls	r3, r3, #1
- 8002ae6:	2103      	movs	r1, #3
- 8002ae8:	fa01 f303 	lsl.w	r3, r1, r3
- 8002aec:	43db      	mvns	r3, r3
- 8002aee:	401a      	ands	r2, r3
- 8002af0:	687b      	ldr	r3, [r7, #4]
- 8002af2:	609a      	str	r2, [r3, #8]
+ 8002cba:	687b      	ldr	r3, [r7, #4]
+ 8002cbc:	689a      	ldr	r2, [r3, #8]
+ 8002cbe:	697b      	ldr	r3, [r7, #20]
+ 8002cc0:	005b      	lsls	r3, r3, #1
+ 8002cc2:	2103      	movs	r1, #3
+ 8002cc4:	fa01 f303 	lsl.w	r3, r1, r3
+ 8002cc8:	43db      	mvns	r3, r3
+ 8002cca:	401a      	ands	r2, r3
+ 8002ccc:	687b      	ldr	r3, [r7, #4]
+ 8002cce:	609a      	str	r2, [r3, #8]
         GPIOx->OSPEEDR |= ((uint32_t)(GPIO_InitStruct->GPIO_Speed) << (pinpos * 2));
- 8002af4:	687b      	ldr	r3, [r7, #4]
- 8002af6:	689a      	ldr	r2, [r3, #8]
- 8002af8:	683b      	ldr	r3, [r7, #0]
- 8002afa:	795b      	ldrb	r3, [r3, #5]
- 8002afc:	4619      	mov	r1, r3
- 8002afe:	697b      	ldr	r3, [r7, #20]
- 8002b00:	005b      	lsls	r3, r3, #1
- 8002b02:	fa01 f303 	lsl.w	r3, r1, r3
- 8002b06:	431a      	orrs	r2, r3
- 8002b08:	687b      	ldr	r3, [r7, #4]
- 8002b0a:	609a      	str	r2, [r3, #8]
+ 8002cd0:	687b      	ldr	r3, [r7, #4]
+ 8002cd2:	689a      	ldr	r2, [r3, #8]
+ 8002cd4:	683b      	ldr	r3, [r7, #0]
+ 8002cd6:	795b      	ldrb	r3, [r3, #5]
+ 8002cd8:	4619      	mov	r1, r3
+ 8002cda:	697b      	ldr	r3, [r7, #20]
+ 8002cdc:	005b      	lsls	r3, r3, #1
+ 8002cde:	fa01 f303 	lsl.w	r3, r1, r3
+ 8002ce2:	431a      	orrs	r2, r3
+ 8002ce4:	687b      	ldr	r3, [r7, #4]
+ 8002ce6:	609a      	str	r2, [r3, #8]
 
         /* Check Output mode parameters */
         assert_param(IS_GPIO_OTYPE(GPIO_InitStruct->GPIO_OType));
 
         /* Output mode configuration*/
         GPIOx->OTYPER  &= ~((GPIO_OTYPER_OT_0) << ((uint16_t)pinpos)) ;
- 8002b0c:	687b      	ldr	r3, [r7, #4]
- 8002b0e:	685a      	ldr	r2, [r3, #4]
- 8002b10:	697b      	ldr	r3, [r7, #20]
- 8002b12:	b29b      	uxth	r3, r3
- 8002b14:	4619      	mov	r1, r3
- 8002b16:	2301      	movs	r3, #1
- 8002b18:	408b      	lsls	r3, r1
- 8002b1a:	43db      	mvns	r3, r3
- 8002b1c:	401a      	ands	r2, r3
- 8002b1e:	687b      	ldr	r3, [r7, #4]
- 8002b20:	605a      	str	r2, [r3, #4]
+ 8002ce8:	687b      	ldr	r3, [r7, #4]
+ 8002cea:	685a      	ldr	r2, [r3, #4]
+ 8002cec:	697b      	ldr	r3, [r7, #20]
+ 8002cee:	b29b      	uxth	r3, r3
+ 8002cf0:	4619      	mov	r1, r3
+ 8002cf2:	2301      	movs	r3, #1
+ 8002cf4:	408b      	lsls	r3, r1
+ 8002cf6:	43db      	mvns	r3, r3
+ 8002cf8:	401a      	ands	r2, r3
+ 8002cfa:	687b      	ldr	r3, [r7, #4]
+ 8002cfc:	605a      	str	r2, [r3, #4]
         GPIOx->OTYPER |= (uint16_t)(((uint16_t)GPIO_InitStruct->GPIO_OType) << ((uint16_t)pinpos));
- 8002b22:	687b      	ldr	r3, [r7, #4]
- 8002b24:	685b      	ldr	r3, [r3, #4]
- 8002b26:	683a      	ldr	r2, [r7, #0]
- 8002b28:	7992      	ldrb	r2, [r2, #6]
- 8002b2a:	4611      	mov	r1, r2
- 8002b2c:	697a      	ldr	r2, [r7, #20]
- 8002b2e:	b292      	uxth	r2, r2
- 8002b30:	fa01 f202 	lsl.w	r2, r1, r2
- 8002b34:	b292      	uxth	r2, r2
- 8002b36:	431a      	orrs	r2, r3
- 8002b38:	687b      	ldr	r3, [r7, #4]
- 8002b3a:	605a      	str	r2, [r3, #4]
+ 8002cfe:	687b      	ldr	r3, [r7, #4]
+ 8002d00:	685b      	ldr	r3, [r3, #4]
+ 8002d02:	683a      	ldr	r2, [r7, #0]
+ 8002d04:	7992      	ldrb	r2, [r2, #6]
+ 8002d06:	4611      	mov	r1, r2
+ 8002d08:	697a      	ldr	r2, [r7, #20]
+ 8002d0a:	b292      	uxth	r2, r2
+ 8002d0c:	fa01 f202 	lsl.w	r2, r1, r2
+ 8002d10:	b292      	uxth	r2, r2
+ 8002d12:	431a      	orrs	r2, r3
+ 8002d14:	687b      	ldr	r3, [r7, #4]
+ 8002d16:	605a      	str	r2, [r3, #4]
       }
 
       /* Pull-up Pull down resistor configuration*/
       GPIOx->PUPDR &= ~(GPIO_PUPDR_PUPDR0 << ((uint16_t)pinpos * 2));
- 8002b3c:	687b      	ldr	r3, [r7, #4]
- 8002b3e:	68da      	ldr	r2, [r3, #12]
- 8002b40:	697b      	ldr	r3, [r7, #20]
- 8002b42:	b29b      	uxth	r3, r3
- 8002b44:	005b      	lsls	r3, r3, #1
- 8002b46:	2103      	movs	r1, #3
- 8002b48:	fa01 f303 	lsl.w	r3, r1, r3
- 8002b4c:	43db      	mvns	r3, r3
- 8002b4e:	401a      	ands	r2, r3
- 8002b50:	687b      	ldr	r3, [r7, #4]
- 8002b52:	60da      	str	r2, [r3, #12]
+ 8002d18:	687b      	ldr	r3, [r7, #4]
+ 8002d1a:	68da      	ldr	r2, [r3, #12]
+ 8002d1c:	697b      	ldr	r3, [r7, #20]
+ 8002d1e:	b29b      	uxth	r3, r3
+ 8002d20:	005b      	lsls	r3, r3, #1
+ 8002d22:	2103      	movs	r1, #3
+ 8002d24:	fa01 f303 	lsl.w	r3, r1, r3
+ 8002d28:	43db      	mvns	r3, r3
+ 8002d2a:	401a      	ands	r2, r3
+ 8002d2c:	687b      	ldr	r3, [r7, #4]
+ 8002d2e:	60da      	str	r2, [r3, #12]
       GPIOx->PUPDR |= (((uint32_t)GPIO_InitStruct->GPIO_PuPd) << (pinpos * 2));
- 8002b54:	687b      	ldr	r3, [r7, #4]
- 8002b56:	68da      	ldr	r2, [r3, #12]
- 8002b58:	683b      	ldr	r3, [r7, #0]
- 8002b5a:	79db      	ldrb	r3, [r3, #7]
- 8002b5c:	4619      	mov	r1, r3
- 8002b5e:	697b      	ldr	r3, [r7, #20]
- 8002b60:	005b      	lsls	r3, r3, #1
- 8002b62:	fa01 f303 	lsl.w	r3, r1, r3
- 8002b66:	431a      	orrs	r2, r3
- 8002b68:	687b      	ldr	r3, [r7, #4]
- 8002b6a:	60da      	str	r2, [r3, #12]
+ 8002d30:	687b      	ldr	r3, [r7, #4]
+ 8002d32:	68da      	ldr	r2, [r3, #12]
+ 8002d34:	683b      	ldr	r3, [r7, #0]
+ 8002d36:	79db      	ldrb	r3, [r3, #7]
+ 8002d38:	4619      	mov	r1, r3
+ 8002d3a:	697b      	ldr	r3, [r7, #20]
+ 8002d3c:	005b      	lsls	r3, r3, #1
+ 8002d3e:	fa01 f303 	lsl.w	r3, r1, r3
+ 8002d42:	431a      	orrs	r2, r3
+ 8002d44:	687b      	ldr	r3, [r7, #4]
+ 8002d46:	60da      	str	r2, [r3, #12]
   for (pinpos = 0x00; pinpos < 0x10; pinpos++)
- 8002b6c:	697b      	ldr	r3, [r7, #20]
- 8002b6e:	3301      	adds	r3, #1
- 8002b70:	617b      	str	r3, [r7, #20]
- 8002b72:	697b      	ldr	r3, [r7, #20]
- 8002b74:	2b0f      	cmp	r3, #15
- 8002b76:	d985      	bls.n	8002a84 <GPIO_Init+0x1c>
+ 8002d48:	697b      	ldr	r3, [r7, #20]
+ 8002d4a:	3301      	adds	r3, #1
+ 8002d4c:	617b      	str	r3, [r7, #20]
+ 8002d4e:	697b      	ldr	r3, [r7, #20]
+ 8002d50:	2b0f      	cmp	r3, #15
+ 8002d52:	d985      	bls.n	8002c60 <GPIO_Init+0x1c>
     }
   }
 }
- 8002b78:	bf00      	nop
- 8002b7a:	371c      	adds	r7, #28
- 8002b7c:	46bd      	mov	sp, r7
- 8002b7e:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8002b82:	4770      	bx	lr
+ 8002d54:	bf00      	nop
+ 8002d56:	371c      	adds	r7, #28
+ 8002d58:	46bd      	mov	sp, r7
+ 8002d5a:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002d5e:	4770      	bx	lr
 
-08002b84 <GPIO_Write>:
+08002d60 <GPIO_Write>:
   * @param  GPIOx: where x can be (A..I) to select the GPIO peripheral.
   * @param  PortVal: specifies the value to be written to the port output data register.
   * @retval None
   */
 void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal)
 {
- 8002b84:	b480      	push	{r7}
- 8002b86:	b083      	sub	sp, #12
- 8002b88:	af00      	add	r7, sp, #0
- 8002b8a:	6078      	str	r0, [r7, #4]
- 8002b8c:	460b      	mov	r3, r1
- 8002b8e:	807b      	strh	r3, [r7, #2]
+ 8002d60:	b480      	push	{r7}
+ 8002d62:	b083      	sub	sp, #12
+ 8002d64:	af00      	add	r7, sp, #0
+ 8002d66:	6078      	str	r0, [r7, #4]
+ 8002d68:	460b      	mov	r3, r1
+ 8002d6a:	807b      	strh	r3, [r7, #2]
   /* Check the parameters */
   assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
 
   GPIOx->ODR = PortVal;
- 8002b90:	887a      	ldrh	r2, [r7, #2]
- 8002b92:	687b      	ldr	r3, [r7, #4]
- 8002b94:	615a      	str	r2, [r3, #20]
+ 8002d6c:	887a      	ldrh	r2, [r7, #2]
+ 8002d6e:	687b      	ldr	r3, [r7, #4]
+ 8002d70:	615a      	str	r2, [r3, #20]
+}
+ 8002d72:	bf00      	nop
+ 8002d74:	370c      	adds	r7, #12
+ 8002d76:	46bd      	mov	sp, r7
+ 8002d78:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002d7c:	4770      	bx	lr
+
+08002d7e <GPIO_ToggleBits>:
+  * @param  GPIOx: where x can be (A..I) to select the GPIO peripheral.
+  * @param  GPIO_Pin: Specifies the pins to be toggled.
+  * @retval None
+  */
+void GPIO_ToggleBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
+{
+ 8002d7e:	b480      	push	{r7}
+ 8002d80:	b083      	sub	sp, #12
+ 8002d82:	af00      	add	r7, sp, #0
+ 8002d84:	6078      	str	r0, [r7, #4]
+ 8002d86:	460b      	mov	r3, r1
+ 8002d88:	807b      	strh	r3, [r7, #2]
+  /* Check the parameters */
+  assert_param(IS_GPIO_ALL_PERIPH(GPIOx));
+
+  GPIOx->ODR ^= GPIO_Pin;
+ 8002d8a:	687b      	ldr	r3, [r7, #4]
+ 8002d8c:	695a      	ldr	r2, [r3, #20]
+ 8002d8e:	887b      	ldrh	r3, [r7, #2]
+ 8002d90:	405a      	eors	r2, r3
+ 8002d92:	687b      	ldr	r3, [r7, #4]
+ 8002d94:	615a      	str	r2, [r3, #20]
 }
- 8002b96:	bf00      	nop
- 8002b98:	370c      	adds	r7, #12
- 8002b9a:	46bd      	mov	sp, r7
- 8002b9c:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8002ba0:	4770      	bx	lr
+ 8002d96:	bf00      	nop
+ 8002d98:	370c      	adds	r7, #12
+ 8002d9a:	46bd      	mov	sp, r7
+ 8002d9c:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002da0:	4770      	bx	lr
+	...
+
+08002da4 <RCC_AHB1PeriphClockCmd>:
+  * @param  NewState: new state of the specified peripheral clock.
+  *          This parameter can be: ENABLE or DISABLE.
+  * @retval None
+  */
+void RCC_AHB1PeriphClockCmd(uint32_t RCC_AHB1Periph, FunctionalState NewState)
+{
+ 8002da4:	b480      	push	{r7}
+ 8002da6:	b083      	sub	sp, #12
+ 8002da8:	af00      	add	r7, sp, #0
+ 8002daa:	6078      	str	r0, [r7, #4]
+ 8002dac:	460b      	mov	r3, r1
+ 8002dae:	70fb      	strb	r3, [r7, #3]
+  /* Check the parameters */
+  assert_param(IS_RCC_AHB1_CLOCK_PERIPH(RCC_AHB1Periph));
 
-08002ba2 <SPI_I2S_SendData>:
+  assert_param(IS_FUNCTIONAL_STATE(NewState));
+  if (NewState != DISABLE)
+ 8002db0:	78fb      	ldrb	r3, [r7, #3]
+ 8002db2:	2b00      	cmp	r3, #0
+ 8002db4:	d006      	beq.n	8002dc4 <RCC_AHB1PeriphClockCmd+0x20>
+  {
+    RCC->AHB1ENR |= RCC_AHB1Periph;
+ 8002db6:	490a      	ldr	r1, [pc, #40]	; (8002de0 <RCC_AHB1PeriphClockCmd+0x3c>)
+ 8002db8:	4b09      	ldr	r3, [pc, #36]	; (8002de0 <RCC_AHB1PeriphClockCmd+0x3c>)
+ 8002dba:	6b1a      	ldr	r2, [r3, #48]	; 0x30
+ 8002dbc:	687b      	ldr	r3, [r7, #4]
+ 8002dbe:	4313      	orrs	r3, r2
+ 8002dc0:	630b      	str	r3, [r1, #48]	; 0x30
+  }
+  else
+  {
+    RCC->AHB1ENR &= ~RCC_AHB1Periph;
+  }
+}
+ 8002dc2:	e006      	b.n	8002dd2 <RCC_AHB1PeriphClockCmd+0x2e>
+    RCC->AHB1ENR &= ~RCC_AHB1Periph;
+ 8002dc4:	4906      	ldr	r1, [pc, #24]	; (8002de0 <RCC_AHB1PeriphClockCmd+0x3c>)
+ 8002dc6:	4b06      	ldr	r3, [pc, #24]	; (8002de0 <RCC_AHB1PeriphClockCmd+0x3c>)
+ 8002dc8:	6b1a      	ldr	r2, [r3, #48]	; 0x30
+ 8002dca:	687b      	ldr	r3, [r7, #4]
+ 8002dcc:	43db      	mvns	r3, r3
+ 8002dce:	4013      	ands	r3, r2
+ 8002dd0:	630b      	str	r3, [r1, #48]	; 0x30
+}
+ 8002dd2:	bf00      	nop
+ 8002dd4:	370c      	adds	r7, #12
+ 8002dd6:	46bd      	mov	sp, r7
+ 8002dd8:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002ddc:	4770      	bx	lr
+ 8002dde:	bf00      	nop
+ 8002de0:	40023800 	.word	0x40023800
+
+08002de4 <RCC_APB2PeriphClockCmd>:
+  * @param  NewState: new state of the specified peripheral clock.
+  *          This parameter can be: ENABLE or DISABLE.
+  * @retval None
+  */
+void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState)
+{
+ 8002de4:	b480      	push	{r7}
+ 8002de6:	b083      	sub	sp, #12
+ 8002de8:	af00      	add	r7, sp, #0
+ 8002dea:	6078      	str	r0, [r7, #4]
+ 8002dec:	460b      	mov	r3, r1
+ 8002dee:	70fb      	strb	r3, [r7, #3]
+  /* Check the parameters */
+  assert_param(IS_RCC_APB2_PERIPH(RCC_APB2Periph));
+  assert_param(IS_FUNCTIONAL_STATE(NewState));
+
+  if (NewState != DISABLE)
+ 8002df0:	78fb      	ldrb	r3, [r7, #3]
+ 8002df2:	2b00      	cmp	r3, #0
+ 8002df4:	d006      	beq.n	8002e04 <RCC_APB2PeriphClockCmd+0x20>
+  {
+    RCC->APB2ENR |= RCC_APB2Periph;
+ 8002df6:	490a      	ldr	r1, [pc, #40]	; (8002e20 <RCC_APB2PeriphClockCmd+0x3c>)
+ 8002df8:	4b09      	ldr	r3, [pc, #36]	; (8002e20 <RCC_APB2PeriphClockCmd+0x3c>)
+ 8002dfa:	6c5a      	ldr	r2, [r3, #68]	; 0x44
+ 8002dfc:	687b      	ldr	r3, [r7, #4]
+ 8002dfe:	4313      	orrs	r3, r2
+ 8002e00:	644b      	str	r3, [r1, #68]	; 0x44
+  }
+  else
+  {
+    RCC->APB2ENR &= ~RCC_APB2Periph;
+  }
+}
+ 8002e02:	e006      	b.n	8002e12 <RCC_APB2PeriphClockCmd+0x2e>
+    RCC->APB2ENR &= ~RCC_APB2Periph;
+ 8002e04:	4906      	ldr	r1, [pc, #24]	; (8002e20 <RCC_APB2PeriphClockCmd+0x3c>)
+ 8002e06:	4b06      	ldr	r3, [pc, #24]	; (8002e20 <RCC_APB2PeriphClockCmd+0x3c>)
+ 8002e08:	6c5a      	ldr	r2, [r3, #68]	; 0x44
+ 8002e0a:	687b      	ldr	r3, [r7, #4]
+ 8002e0c:	43db      	mvns	r3, r3
+ 8002e0e:	4013      	ands	r3, r2
+ 8002e10:	644b      	str	r3, [r1, #68]	; 0x44
+}
+ 8002e12:	bf00      	nop
+ 8002e14:	370c      	adds	r7, #12
+ 8002e16:	46bd      	mov	sp, r7
+ 8002e18:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002e1c:	4770      	bx	lr
+ 8002e1e:	bf00      	nop
+ 8002e20:	40023800 	.word	0x40023800
+
+08002e24 <RCC_APB2PeriphResetCmd>:
+  * @param  NewState: new state of the specified peripheral reset.
+  *          This parameter can be: ENABLE or DISABLE.
+  * @retval None
+  */
+void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState)
+{
+ 8002e24:	b480      	push	{r7}
+ 8002e26:	b083      	sub	sp, #12
+ 8002e28:	af00      	add	r7, sp, #0
+ 8002e2a:	6078      	str	r0, [r7, #4]
+ 8002e2c:	460b      	mov	r3, r1
+ 8002e2e:	70fb      	strb	r3, [r7, #3]
+  /* Check the parameters */
+  assert_param(IS_RCC_APB2_RESET_PERIPH(RCC_APB2Periph));
+  assert_param(IS_FUNCTIONAL_STATE(NewState));
+  if (NewState != DISABLE)
+ 8002e30:	78fb      	ldrb	r3, [r7, #3]
+ 8002e32:	2b00      	cmp	r3, #0
+ 8002e34:	d006      	beq.n	8002e44 <RCC_APB2PeriphResetCmd+0x20>
+  {
+    RCC->APB2RSTR |= RCC_APB2Periph;
+ 8002e36:	490a      	ldr	r1, [pc, #40]	; (8002e60 <RCC_APB2PeriphResetCmd+0x3c>)
+ 8002e38:	4b09      	ldr	r3, [pc, #36]	; (8002e60 <RCC_APB2PeriphResetCmd+0x3c>)
+ 8002e3a:	6a5a      	ldr	r2, [r3, #36]	; 0x24
+ 8002e3c:	687b      	ldr	r3, [r7, #4]
+ 8002e3e:	4313      	orrs	r3, r2
+ 8002e40:	624b      	str	r3, [r1, #36]	; 0x24
+  }
+  else
+  {
+    RCC->APB2RSTR &= ~RCC_APB2Periph;
+  }
+}
+ 8002e42:	e006      	b.n	8002e52 <RCC_APB2PeriphResetCmd+0x2e>
+    RCC->APB2RSTR &= ~RCC_APB2Periph;
+ 8002e44:	4906      	ldr	r1, [pc, #24]	; (8002e60 <RCC_APB2PeriphResetCmd+0x3c>)
+ 8002e46:	4b06      	ldr	r3, [pc, #24]	; (8002e60 <RCC_APB2PeriphResetCmd+0x3c>)
+ 8002e48:	6a5a      	ldr	r2, [r3, #36]	; 0x24
+ 8002e4a:	687b      	ldr	r3, [r7, #4]
+ 8002e4c:	43db      	mvns	r3, r3
+ 8002e4e:	4013      	ands	r3, r2
+ 8002e50:	624b      	str	r3, [r1, #36]	; 0x24
+}
+ 8002e52:	bf00      	nop
+ 8002e54:	370c      	adds	r7, #12
+ 8002e56:	46bd      	mov	sp, r7
+ 8002e58:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002e5c:	4770      	bx	lr
+ 8002e5e:	bf00      	nop
+ 8002e60:	40023800 	.word	0x40023800
+
+08002e64 <SPI_I2S_SendData>:
   *         in SPI mode or 2 or 3 in I2S mode or I2Sxext for I2S full duplex mode.     
   * @param  Data: Data to be transmitted.
   * @retval None
   */
 void SPI_I2S_SendData(SPI_TypeDef* SPIx, uint16_t Data)
 {
- 8002ba2:	b480      	push	{r7}
- 8002ba4:	b083      	sub	sp, #12
- 8002ba6:	af00      	add	r7, sp, #0
- 8002ba8:	6078      	str	r0, [r7, #4]
- 8002baa:	460b      	mov	r3, r1
- 8002bac:	807b      	strh	r3, [r7, #2]
+ 8002e64:	b480      	push	{r7}
+ 8002e66:	b083      	sub	sp, #12
+ 8002e68:	af00      	add	r7, sp, #0
+ 8002e6a:	6078      	str	r0, [r7, #4]
+ 8002e6c:	460b      	mov	r3, r1
+ 8002e6e:	807b      	strh	r3, [r7, #2]
   /* Check the parameters */
   assert_param(IS_SPI_ALL_PERIPH_EXT(SPIx));
   
   /* Write in the DR register the data to be sent */
   SPIx->DR = Data;
- 8002bae:	687b      	ldr	r3, [r7, #4]
- 8002bb0:	887a      	ldrh	r2, [r7, #2]
- 8002bb2:	819a      	strh	r2, [r3, #12]
+ 8002e70:	687b      	ldr	r3, [r7, #4]
+ 8002e72:	887a      	ldrh	r2, [r7, #2]
+ 8002e74:	819a      	strh	r2, [r3, #12]
 }
- 8002bb4:	bf00      	nop
- 8002bb6:	370c      	adds	r7, #12
- 8002bb8:	46bd      	mov	sp, r7
- 8002bba:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8002bbe:	4770      	bx	lr
+ 8002e76:	bf00      	nop
+ 8002e78:	370c      	adds	r7, #12
+ 8002e7a:	46bd      	mov	sp, r7
+ 8002e7c:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002e80:	4770      	bx	lr
 
-08002bc0 <SPI_I2S_GetFlagStatus>:
+08002e82 <SPI_I2S_GetFlagStatus>:
   *            @arg I2S_FLAG_UDR: Underrun Error flag.
   *            @arg I2S_FLAG_CHSIDE: Channel Side flag.  
   * @retval The new state of SPI_I2S_FLAG (SET or RESET).
   */
 FlagStatus SPI_I2S_GetFlagStatus(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG)
 {
- 8002bc0:	b480      	push	{r7}
- 8002bc2:	b085      	sub	sp, #20
- 8002bc4:	af00      	add	r7, sp, #0
- 8002bc6:	6078      	str	r0, [r7, #4]
- 8002bc8:	460b      	mov	r3, r1
- 8002bca:	807b      	strh	r3, [r7, #2]
+ 8002e82:	b480      	push	{r7}
+ 8002e84:	b085      	sub	sp, #20
+ 8002e86:	af00      	add	r7, sp, #0
+ 8002e88:	6078      	str	r0, [r7, #4]
+ 8002e8a:	460b      	mov	r3, r1
+ 8002e8c:	807b      	strh	r3, [r7, #2]
   FlagStatus bitstatus = RESET;
- 8002bcc:	2300      	movs	r3, #0
- 8002bce:	73fb      	strb	r3, [r7, #15]
+ 8002e8e:	2300      	movs	r3, #0
+ 8002e90:	73fb      	strb	r3, [r7, #15]
   /* Check the parameters */
   assert_param(IS_SPI_ALL_PERIPH_EXT(SPIx));
   assert_param(IS_SPI_I2S_GET_FLAG(SPI_I2S_FLAG));
   
   /* Check the status of the specified SPI flag */
   if ((SPIx->SR & SPI_I2S_FLAG) != (uint16_t)RESET)
- 8002bd0:	687b      	ldr	r3, [r7, #4]
- 8002bd2:	891b      	ldrh	r3, [r3, #8]
- 8002bd4:	b29a      	uxth	r2, r3
- 8002bd6:	887b      	ldrh	r3, [r7, #2]
- 8002bd8:	4013      	ands	r3, r2
- 8002bda:	b29b      	uxth	r3, r3
- 8002bdc:	2b00      	cmp	r3, #0
- 8002bde:	d002      	beq.n	8002be6 <SPI_I2S_GetFlagStatus+0x26>
+ 8002e92:	687b      	ldr	r3, [r7, #4]
+ 8002e94:	891b      	ldrh	r3, [r3, #8]
+ 8002e96:	b29a      	uxth	r2, r3
+ 8002e98:	887b      	ldrh	r3, [r7, #2]
+ 8002e9a:	4013      	ands	r3, r2
+ 8002e9c:	b29b      	uxth	r3, r3
+ 8002e9e:	2b00      	cmp	r3, #0
+ 8002ea0:	d002      	beq.n	8002ea8 <SPI_I2S_GetFlagStatus+0x26>
   {
     /* SPI_I2S_FLAG is set */
     bitstatus = SET;
- 8002be0:	2301      	movs	r3, #1
- 8002be2:	73fb      	strb	r3, [r7, #15]
- 8002be4:	e001      	b.n	8002bea <SPI_I2S_GetFlagStatus+0x2a>
+ 8002ea2:	2301      	movs	r3, #1
+ 8002ea4:	73fb      	strb	r3, [r7, #15]
+ 8002ea6:	e001      	b.n	8002eac <SPI_I2S_GetFlagStatus+0x2a>
   }
   else
   {
     /* SPI_I2S_FLAG is reset */
     bitstatus = RESET;
- 8002be6:	2300      	movs	r3, #0
- 8002be8:	73fb      	strb	r3, [r7, #15]
+ 8002ea8:	2300      	movs	r3, #0
+ 8002eaa:	73fb      	strb	r3, [r7, #15]
   }
   /* Return the SPI_I2S_FLAG status */
   return  bitstatus;
- 8002bea:	7bfb      	ldrb	r3, [r7, #15]
+ 8002eac:	7bfb      	ldrb	r3, [r7, #15]
 }
- 8002bec:	4618      	mov	r0, r3
- 8002bee:	3714      	adds	r7, #20
- 8002bf0:	46bd      	mov	sp, r7
- 8002bf2:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8002bf6:	4770      	bx	lr
+ 8002eae:	4618      	mov	r0, r3
+ 8002eb0:	3714      	adds	r7, #20
+ 8002eb2:	46bd      	mov	sp, r7
+ 8002eb4:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8002eb8:	4770      	bx	lr
+	...
 
-08002bf8 <Audio_MAL_IRQHandler>:
+08002ebc <Audio_MAL_IRQHandler>:
   * @brief  This function handles main Media layer interrupt. 
   * @param  None
   * @retval 0 if correct communication, else wrong communication
   */
 static void Audio_MAL_IRQHandler(void)
 {    
- 8002bf8:	b580      	push	{r7, lr}
- 8002bfa:	af00      	add	r7, sp, #0
+ 8002ebc:	b580      	push	{r7, lr}
+ 8002ebe:	af00      	add	r7, sp, #0
   uint32_t Size = AudioRemSize;
 #endif /* AUDIO_MAL_MODE_NORMAL */
   
 #ifdef AUDIO_MAL_DMA_IT_TC_EN
   /* Transfer complete interrupt */
   if (DMA_GetFlagStatus(AUDIO_MAL_DMA_STREAM, AUDIO_MAL_DMA_FLAG_TC) != RESET)
- 8002bfc:	4b38      	ldr	r3, [pc, #224]	; (8002ce0 <Audio_MAL_IRQHandler+0xe8>)
- 8002bfe:	681a      	ldr	r2, [r3, #0]
- 8002c00:	4b38      	ldr	r3, [pc, #224]	; (8002ce4 <Audio_MAL_IRQHandler+0xec>)
- 8002c02:	681b      	ldr	r3, [r3, #0]
- 8002c04:	4619      	mov	r1, r3
- 8002c06:	4610      	mov	r0, r2
- 8002c08:	f7ff fec4 	bl	8002994 <DMA_GetFlagStatus>
- 8002c0c:	4603      	mov	r3, r0
- 8002c0e:	2b00      	cmp	r3, #0
- 8002c10:	d064      	beq.n	8002cdc <Audio_MAL_IRQHandler+0xe4>
+ 8002ec0:	4b38      	ldr	r3, [pc, #224]	; (8002fa4 <Audio_MAL_IRQHandler+0xe8>)
+ 8002ec2:	681a      	ldr	r2, [r3, #0]
+ 8002ec4:	4b38      	ldr	r3, [pc, #224]	; (8002fa8 <Audio_MAL_IRQHandler+0xec>)
+ 8002ec6:	681b      	ldr	r3, [r3, #0]
+ 8002ec8:	4619      	mov	r1, r3
+ 8002eca:	4610      	mov	r0, r2
+ 8002ecc:	f7ff fe50 	bl	8002b70 <DMA_GetFlagStatus>
+ 8002ed0:	4603      	mov	r3, r0
+ 8002ed2:	2b00      	cmp	r3, #0
+ 8002ed4:	d064      	beq.n	8002fa0 <Audio_MAL_IRQHandler+0xe4>
   {         
  #ifdef AUDIO_MAL_MODE_NORMAL
     /* Check if the end of file has been reached */
     if (AudioRemSize > 0)
- 8002c12:	4b35      	ldr	r3, [pc, #212]	; (8002ce8 <Audio_MAL_IRQHandler+0xf0>)
- 8002c14:	681b      	ldr	r3, [r3, #0]
- 8002c16:	2b00      	cmp	r3, #0
- 8002c18:	d04c      	beq.n	8002cb4 <Audio_MAL_IRQHandler+0xbc>
+ 8002ed6:	4b35      	ldr	r3, [pc, #212]	; (8002fac <Audio_MAL_IRQHandler+0xf0>)
+ 8002ed8:	681b      	ldr	r3, [r3, #0]
+ 8002eda:	2b00      	cmp	r3, #0
+ 8002edc:	d04c      	beq.n	8002f78 <Audio_MAL_IRQHandler+0xbc>
     {      
       /* Wait the DMA Stream to be effectively disabled */
       while (DMA_GetCmdStatus(AUDIO_MAL_DMA_STREAM) != DISABLE)
- 8002c1a:	bf00      	nop
- 8002c1c:	4b30      	ldr	r3, [pc, #192]	; (8002ce0 <Audio_MAL_IRQHandler+0xe8>)
- 8002c1e:	681b      	ldr	r3, [r3, #0]
- 8002c20:	4618      	mov	r0, r3
- 8002c22:	f7ff fe9f 	bl	8002964 <DMA_GetCmdStatus>
- 8002c26:	4603      	mov	r3, r0
- 8002c28:	2b00      	cmp	r3, #0
- 8002c2a:	d1f7      	bne.n	8002c1c <Audio_MAL_IRQHandler+0x24>
+ 8002ede:	bf00      	nop
+ 8002ee0:	4b30      	ldr	r3, [pc, #192]	; (8002fa4 <Audio_MAL_IRQHandler+0xe8>)
+ 8002ee2:	681b      	ldr	r3, [r3, #0]
+ 8002ee4:	4618      	mov	r0, r3
+ 8002ee6:	f7ff fe2b 	bl	8002b40 <DMA_GetCmdStatus>
+ 8002eea:	4603      	mov	r3, r0
+ 8002eec:	2b00      	cmp	r3, #0
+ 8002eee:	d1f7      	bne.n	8002ee0 <Audio_MAL_IRQHandler+0x24>
       {}
       
       /* Clear the Interrupt flag */
       DMA_ClearFlag(AUDIO_MAL_DMA_STREAM, AUDIO_MAL_DMA_FLAG_TC); 
- 8002c2c:	4b2c      	ldr	r3, [pc, #176]	; (8002ce0 <Audio_MAL_IRQHandler+0xe8>)
- 8002c2e:	681a      	ldr	r2, [r3, #0]
- 8002c30:	4b2c      	ldr	r3, [pc, #176]	; (8002ce4 <Audio_MAL_IRQHandler+0xec>)
- 8002c32:	681b      	ldr	r3, [r3, #0]
- 8002c34:	4619      	mov	r1, r3
- 8002c36:	4610      	mov	r0, r2
- 8002c38:	f7ff fee8 	bl	8002a0c <DMA_ClearFlag>
+ 8002ef0:	4b2c      	ldr	r3, [pc, #176]	; (8002fa4 <Audio_MAL_IRQHandler+0xe8>)
+ 8002ef2:	681a      	ldr	r2, [r3, #0]
+ 8002ef4:	4b2c      	ldr	r3, [pc, #176]	; (8002fa8 <Audio_MAL_IRQHandler+0xec>)
+ 8002ef6:	681b      	ldr	r3, [r3, #0]
+ 8002ef8:	4619      	mov	r1, r3
+ 8002efa:	4610      	mov	r0, r2
+ 8002efc:	f7ff fe74 	bl	8002be8 <DMA_ClearFlag>
            
       /* Re-Configure the buffer address and size */
       DMA_InitStructure.DMA_Memory0BaseAddr = (uint32_t) CurrentPos;
- 8002c3c:	4b2b      	ldr	r3, [pc, #172]	; (8002cec <Audio_MAL_IRQHandler+0xf4>)
- 8002c3e:	681b      	ldr	r3, [r3, #0]
- 8002c40:	461a      	mov	r2, r3
- 8002c42:	4b2b      	ldr	r3, [pc, #172]	; (8002cf0 <Audio_MAL_IRQHandler+0xf8>)
- 8002c44:	609a      	str	r2, [r3, #8]
+ 8002f00:	4b2b      	ldr	r3, [pc, #172]	; (8002fb0 <Audio_MAL_IRQHandler+0xf4>)
+ 8002f02:	681b      	ldr	r3, [r3, #0]
+ 8002f04:	461a      	mov	r2, r3
+ 8002f06:	4b2b      	ldr	r3, [pc, #172]	; (8002fb4 <Audio_MAL_IRQHandler+0xf8>)
+ 8002f08:	609a      	str	r2, [r3, #8]
       DMA_InitStructure.DMA_BufferSize = (uint32_t) (DMA_MAX(AudioRemSize));
- 8002c46:	4b28      	ldr	r3, [pc, #160]	; (8002ce8 <Audio_MAL_IRQHandler+0xf0>)
- 8002c48:	681b      	ldr	r3, [r3, #0]
- 8002c4a:	f64f 72ff 	movw	r2, #65535	; 0xffff
- 8002c4e:	4293      	cmp	r3, r2
- 8002c50:	bf28      	it	cs
- 8002c52:	4613      	movcs	r3, r2
- 8002c54:	4a26      	ldr	r2, [pc, #152]	; (8002cf0 <Audio_MAL_IRQHandler+0xf8>)
- 8002c56:	6113      	str	r3, [r2, #16]
+ 8002f0a:	4b28      	ldr	r3, [pc, #160]	; (8002fac <Audio_MAL_IRQHandler+0xf0>)
+ 8002f0c:	681b      	ldr	r3, [r3, #0]
+ 8002f0e:	f64f 72ff 	movw	r2, #65535	; 0xffff
+ 8002f12:	4293      	cmp	r3, r2
+ 8002f14:	bf28      	it	cs
+ 8002f16:	4613      	movcs	r3, r2
+ 8002f18:	4a26      	ldr	r2, [pc, #152]	; (8002fb4 <Audio_MAL_IRQHandler+0xf8>)
+ 8002f1a:	6113      	str	r3, [r2, #16]
             
       /* Configure the DMA Stream with the new parameters */
       DMA_Init(AUDIO_MAL_DMA_STREAM, &DMA_InitStructure);
- 8002c58:	4b21      	ldr	r3, [pc, #132]	; (8002ce0 <Audio_MAL_IRQHandler+0xe8>)
- 8002c5a:	681b      	ldr	r3, [r3, #0]
- 8002c5c:	4924      	ldr	r1, [pc, #144]	; (8002cf0 <Audio_MAL_IRQHandler+0xf8>)
- 8002c5e:	4618      	mov	r0, r3
- 8002c60:	f7ff fe0c 	bl	800287c <DMA_Init>
+ 8002f1c:	4b21      	ldr	r3, [pc, #132]	; (8002fa4 <Audio_MAL_IRQHandler+0xe8>)
+ 8002f1e:	681b      	ldr	r3, [r3, #0]
+ 8002f20:	4924      	ldr	r1, [pc, #144]	; (8002fb4 <Audio_MAL_IRQHandler+0xf8>)
+ 8002f22:	4618      	mov	r0, r3
+ 8002f24:	f7ff fd98 	bl	8002a58 <DMA_Init>
       
       /* Enable the I2S DMA Stream*/
       DMA_Cmd(AUDIO_MAL_DMA_STREAM, ENABLE);    
- 8002c64:	4b1e      	ldr	r3, [pc, #120]	; (8002ce0 <Audio_MAL_IRQHandler+0xe8>)
- 8002c66:	681b      	ldr	r3, [r3, #0]
- 8002c68:	2101      	movs	r1, #1
- 8002c6a:	4618      	mov	r0, r3
- 8002c6c:	f7ff fe5e 	bl	800292c <DMA_Cmd>
+ 8002f28:	4b1e      	ldr	r3, [pc, #120]	; (8002fa4 <Audio_MAL_IRQHandler+0xe8>)
+ 8002f2a:	681b      	ldr	r3, [r3, #0]
+ 8002f2c:	2101      	movs	r1, #1
+ 8002f2e:	4618      	mov	r0, r3
+ 8002f30:	f7ff fdea 	bl	8002b08 <DMA_Cmd>
       
       /* Update the current pointer position */
       CurrentPos += DMA_MAX(AudioRemSize);        
- 8002c70:	4b1e      	ldr	r3, [pc, #120]	; (8002cec <Audio_MAL_IRQHandler+0xf4>)
- 8002c72:	681a      	ldr	r2, [r3, #0]
- 8002c74:	4b1c      	ldr	r3, [pc, #112]	; (8002ce8 <Audio_MAL_IRQHandler+0xf0>)
- 8002c76:	681b      	ldr	r3, [r3, #0]
- 8002c78:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
- 8002c7c:	d203      	bcs.n	8002c86 <Audio_MAL_IRQHandler+0x8e>
- 8002c7e:	4b1a      	ldr	r3, [pc, #104]	; (8002ce8 <Audio_MAL_IRQHandler+0xf0>)
- 8002c80:	681b      	ldr	r3, [r3, #0]
- 8002c82:	005b      	lsls	r3, r3, #1
- 8002c84:	e000      	b.n	8002c88 <Audio_MAL_IRQHandler+0x90>
- 8002c86:	4b1b      	ldr	r3, [pc, #108]	; (8002cf4 <Audio_MAL_IRQHandler+0xfc>)
- 8002c88:	4413      	add	r3, r2
- 8002c8a:	4a18      	ldr	r2, [pc, #96]	; (8002cec <Audio_MAL_IRQHandler+0xf4>)
- 8002c8c:	6013      	str	r3, [r2, #0]
+ 8002f34:	4b1e      	ldr	r3, [pc, #120]	; (8002fb0 <Audio_MAL_IRQHandler+0xf4>)
+ 8002f36:	681a      	ldr	r2, [r3, #0]
+ 8002f38:	4b1c      	ldr	r3, [pc, #112]	; (8002fac <Audio_MAL_IRQHandler+0xf0>)
+ 8002f3a:	681b      	ldr	r3, [r3, #0]
+ 8002f3c:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
+ 8002f40:	d203      	bcs.n	8002f4a <Audio_MAL_IRQHandler+0x8e>
+ 8002f42:	4b1a      	ldr	r3, [pc, #104]	; (8002fac <Audio_MAL_IRQHandler+0xf0>)
+ 8002f44:	681b      	ldr	r3, [r3, #0]
+ 8002f46:	005b      	lsls	r3, r3, #1
+ 8002f48:	e000      	b.n	8002f4c <Audio_MAL_IRQHandler+0x90>
+ 8002f4a:	4b1b      	ldr	r3, [pc, #108]	; (8002fb8 <Audio_MAL_IRQHandler+0xfc>)
+ 8002f4c:	4413      	add	r3, r2
+ 8002f4e:	4a18      	ldr	r2, [pc, #96]	; (8002fb0 <Audio_MAL_IRQHandler+0xf4>)
+ 8002f50:	6013      	str	r3, [r2, #0]
       
       /* Update the remaining number of data to be played */
       AudioRemSize -= DMA_MAX(AudioRemSize);   
- 8002c8e:	4b16      	ldr	r3, [pc, #88]	; (8002ce8 <Audio_MAL_IRQHandler+0xf0>)
- 8002c90:	681a      	ldr	r2, [r3, #0]
- 8002c92:	4b15      	ldr	r3, [pc, #84]	; (8002ce8 <Audio_MAL_IRQHandler+0xf0>)
- 8002c94:	681b      	ldr	r3, [r3, #0]
- 8002c96:	f64f 71ff 	movw	r1, #65535	; 0xffff
- 8002c9a:	428b      	cmp	r3, r1
- 8002c9c:	bf28      	it	cs
- 8002c9e:	460b      	movcs	r3, r1
- 8002ca0:	1ad3      	subs	r3, r2, r3
- 8002ca2:	4a11      	ldr	r2, [pc, #68]	; (8002ce8 <Audio_MAL_IRQHandler+0xf0>)
- 8002ca4:	6013      	str	r3, [r2, #0]
+ 8002f52:	4b16      	ldr	r3, [pc, #88]	; (8002fac <Audio_MAL_IRQHandler+0xf0>)
+ 8002f54:	681a      	ldr	r2, [r3, #0]
+ 8002f56:	4b15      	ldr	r3, [pc, #84]	; (8002fac <Audio_MAL_IRQHandler+0xf0>)
+ 8002f58:	681b      	ldr	r3, [r3, #0]
+ 8002f5a:	f64f 71ff 	movw	r1, #65535	; 0xffff
+ 8002f5e:	428b      	cmp	r3, r1
+ 8002f60:	bf28      	it	cs
+ 8002f62:	460b      	movcs	r3, r1
+ 8002f64:	1ad3      	subs	r3, r2, r3
+ 8002f66:	4a11      	ldr	r2, [pc, #68]	; (8002fac <Audio_MAL_IRQHandler+0xf0>)
+ 8002f68:	6013      	str	r3, [r2, #0]
         /* Enable the I2S DMA Stream*/
       DMA_Cmd(AUDIO_MAL_DMA_STREAM, ENABLE); 
- 8002ca6:	4b0e      	ldr	r3, [pc, #56]	; (8002ce0 <Audio_MAL_IRQHandler+0xe8>)
- 8002ca8:	681b      	ldr	r3, [r3, #0]
- 8002caa:	2101      	movs	r1, #1
- 8002cac:	4618      	mov	r0, r3
- 8002cae:	f7ff fe3d 	bl	800292c <DMA_Cmd>
+ 8002f6a:	4b0e      	ldr	r3, [pc, #56]	; (8002fa4 <Audio_MAL_IRQHandler+0xe8>)
+ 8002f6c:	681b      	ldr	r3, [r3, #0]
+ 8002f6e:	2101      	movs	r1, #1
+ 8002f70:	4618      	mov	r0, r3
+ 8002f72:	f7ff fdc9 	bl	8002b08 <DMA_Cmd>
     /* Clear the Interrupt flag */
     DMA_ClearFlag(AUDIO_MAL_DMA_STREAM, AUDIO_MAL_DMA_FLAG_TE | AUDIO_MAL_DMA_FLAG_FE | \
                                         AUDIO_MAL_DMA_FLAG_DME);
   }  
 #endif /* AUDIO_MAL_DMA_IT_TE_EN */
 }
- 8002cb2:	e013      	b.n	8002cdc <Audio_MAL_IRQHandler+0xe4>
+ 8002f76:	e013      	b.n	8002fa0 <Audio_MAL_IRQHandler+0xe4>
       DMA_Cmd(AUDIO_MAL_DMA_STREAM, DISABLE);   
- 8002cb4:	4b0a      	ldr	r3, [pc, #40]	; (8002ce0 <Audio_MAL_IRQHandler+0xe8>)
- 8002cb6:	681b      	ldr	r3, [r3, #0]
- 8002cb8:	2100      	movs	r1, #0
- 8002cba:	4618      	mov	r0, r3
- 8002cbc:	f7ff fe36 	bl	800292c <DMA_Cmd>
+ 8002f78:	4b0a      	ldr	r3, [pc, #40]	; (8002fa4 <Audio_MAL_IRQHandler+0xe8>)
+ 8002f7a:	681b      	ldr	r3, [r3, #0]
+ 8002f7c:	2100      	movs	r1, #0
+ 8002f7e:	4618      	mov	r0, r3
+ 8002f80:	f7ff fdc2 	bl	8002b08 <DMA_Cmd>
       DMA_ClearFlag(AUDIO_MAL_DMA_STREAM, AUDIO_MAL_DMA_FLAG_TC);       
- 8002cc0:	4b07      	ldr	r3, [pc, #28]	; (8002ce0 <Audio_MAL_IRQHandler+0xe8>)
- 8002cc2:	681a      	ldr	r2, [r3, #0]
- 8002cc4:	4b07      	ldr	r3, [pc, #28]	; (8002ce4 <Audio_MAL_IRQHandler+0xec>)
- 8002cc6:	681b      	ldr	r3, [r3, #0]
- 8002cc8:	4619      	mov	r1, r3
- 8002cca:	4610      	mov	r0, r2
- 8002ccc:	f7ff fe9e 	bl	8002a0c <DMA_ClearFlag>
+ 8002f84:	4b07      	ldr	r3, [pc, #28]	; (8002fa4 <Audio_MAL_IRQHandler+0xe8>)
+ 8002f86:	681a      	ldr	r2, [r3, #0]
+ 8002f88:	4b07      	ldr	r3, [pc, #28]	; (8002fa8 <Audio_MAL_IRQHandler+0xec>)
+ 8002f8a:	681b      	ldr	r3, [r3, #0]
+ 8002f8c:	4619      	mov	r1, r3
+ 8002f8e:	4610      	mov	r0, r2
+ 8002f90:	f7ff fe2a 	bl	8002be8 <DMA_ClearFlag>
       EVAL_AUDIO_TransferComplete_CallBack((uint32_t)CurrentPos, 0);       
- 8002cd0:	4b06      	ldr	r3, [pc, #24]	; (8002cec <Audio_MAL_IRQHandler+0xf4>)
- 8002cd2:	681b      	ldr	r3, [r3, #0]
- 8002cd4:	2100      	movs	r1, #0
- 8002cd6:	4618      	mov	r0, r3
- 8002cd8:	f000 f83c 	bl	8002d54 <EVAL_AUDIO_TransferComplete_CallBack>
-}
- 8002cdc:	bf00      	nop
- 8002cde:	bd80      	pop	{r7, pc}
- 8002ce0:	2000000c 	.word	0x2000000c
- 8002ce4:	20000010 	.word	0x20000010
- 8002ce8:	20000004 	.word	0x20000004
- 8002cec:	20001ddc 	.word	0x20001ddc
- 8002cf0:	20001e1c 	.word	0x20001e1c
- 8002cf4:	0001fffe 	.word	0x0001fffe
-
-08002cf8 <DMA1_Stream7_IRQHandler>:
+ 8002f94:	4b06      	ldr	r3, [pc, #24]	; (8002fb0 <Audio_MAL_IRQHandler+0xf4>)
+ 8002f96:	681b      	ldr	r3, [r3, #0]
+ 8002f98:	2100      	movs	r1, #0
+ 8002f9a:	4618      	mov	r0, r3
+ 8002f9c:	f000 f83c 	bl	8003018 <EVAL_AUDIO_TransferComplete_CallBack>
+}
+ 8002fa0:	bf00      	nop
+ 8002fa2:	bd80      	pop	{r7, pc}
+ 8002fa4:	2000000c 	.word	0x2000000c
+ 8002fa8:	20000010 	.word	0x20000010
+ 8002fac:	20000004 	.word	0x20000004
+ 8002fb0:	20001e4c 	.word	0x20001e4c
+ 8002fb4:	20001e8c 	.word	0x20001e8c
+ 8002fb8:	0001fffe 	.word	0x0001fffe
+
+08002fbc <DMA1_Stream7_IRQHandler>:
   * @brief  This function handles main I2S interrupt. 
   * @param  None
   * @retval 0 if correct communication, else wrong communication
   */
 void Audio_MAL_I2S_IRQHandler(void)
 { 
- 8002cf8:	b580      	push	{r7, lr}
- 8002cfa:	af00      	add	r7, sp, #0
+ 8002fbc:	b580      	push	{r7, lr}
+ 8002fbe:	af00      	add	r7, sp, #0
   Audio_MAL_IRQHandler();
- 8002cfc:	f7ff ff7c 	bl	8002bf8 <Audio_MAL_IRQHandler>
+ 8002fc0:	f7ff ff7c 	bl	8002ebc <Audio_MAL_IRQHandler>
 }
- 8002d00:	bf00      	nop
- 8002d02:	bd80      	pop	{r7, pc}
+ 8002fc4:	bf00      	nop
+ 8002fc6:	bd80      	pop	{r7, pc}
 
-08002d04 <DMA1_Stream0_IRQHandler>:
+08002fc8 <DMA1_Stream0_IRQHandler>:
   * @brief  This function handles main DAC interrupt. 
   * @param  None
   * @retval 0 if correct communication, else wrong communication
   */
 void Audio_MAL_DAC_IRQHandler(void)
 { 
- 8002d04:	b580      	push	{r7, lr}
- 8002d06:	af00      	add	r7, sp, #0
+ 8002fc8:	b580      	push	{r7, lr}
+ 8002fca:	af00      	add	r7, sp, #0
   Audio_MAL_IRQHandler();
- 8002d08:	f7ff ff76 	bl	8002bf8 <Audio_MAL_IRQHandler>
+ 8002fcc:	f7ff ff76 	bl	8002ebc <Audio_MAL_IRQHandler>
 }
- 8002d0c:	bf00      	nop
- 8002d0e:	bd80      	pop	{r7, pc}
+ 8002fd0:	bf00      	nop
+ 8002fd2:	bd80      	pop	{r7, pc}
 
-08002d10 <SPI3_IRQHandler>:
+08002fd4 <SPI3_IRQHandler>:
   * @brief  I2S interrupt management
   * @param  None
   * @retval None
   */
 void Audio_I2S_IRQHandler(void)
 {
- 8002d10:	b580      	push	{r7, lr}
- 8002d12:	af00      	add	r7, sp, #0
+ 8002fd4:	b580      	push	{r7, lr}
+ 8002fd6:	af00      	add	r7, sp, #0
   /* Check on the I2S TXE flag */  
   if (SPI_I2S_GetFlagStatus(SPI3, SPI_I2S_FLAG_TXE) != RESET)
- 8002d14:	2102      	movs	r1, #2
- 8002d16:	480d      	ldr	r0, [pc, #52]	; (8002d4c <SPI3_IRQHandler+0x3c>)
- 8002d18:	f7ff ff52 	bl	8002bc0 <SPI_I2S_GetFlagStatus>
- 8002d1c:	4603      	mov	r3, r0
- 8002d1e:	2b00      	cmp	r3, #0
- 8002d20:	d011      	beq.n	8002d46 <SPI3_IRQHandler+0x36>
+ 8002fd8:	2102      	movs	r1, #2
+ 8002fda:	480d      	ldr	r0, [pc, #52]	; (8003010 <SPI3_IRQHandler+0x3c>)
+ 8002fdc:	f7ff ff51 	bl	8002e82 <SPI_I2S_GetFlagStatus>
+ 8002fe0:	4603      	mov	r3, r0
+ 8002fe2:	2b00      	cmp	r3, #0
+ 8002fe4:	d011      	beq.n	800300a <SPI3_IRQHandler+0x36>
   { 
     if (CurrAudioInterface == AUDIO_INTERFACE_DAC)
- 8002d22:	4b0b      	ldr	r3, [pc, #44]	; (8002d50 <SPI3_IRQHandler+0x40>)
- 8002d24:	681b      	ldr	r3, [r3, #0]
- 8002d26:	2b02      	cmp	r3, #2
- 8002d28:	d106      	bne.n	8002d38 <SPI3_IRQHandler+0x28>
+ 8002fe6:	4b0b      	ldr	r3, [pc, #44]	; (8003014 <SPI3_IRQHandler+0x40>)
+ 8002fe8:	681b      	ldr	r3, [r3, #0]
+ 8002fea:	2b02      	cmp	r3, #2
+ 8002fec:	d106      	bne.n	8002ffc <SPI3_IRQHandler+0x28>
     {
       /* Wirte data to the DAC interface */
       DAC_SetChannel1Data(DAC_Align_12b_L, EVAL_AUDIO_GetSampleCallBack()); 
- 8002d2a:	f000 f81e 	bl	8002d6a <EVAL_AUDIO_GetSampleCallBack>
- 8002d2e:	4603      	mov	r3, r0
- 8002d30:	4619      	mov	r1, r3
- 8002d32:	2004      	movs	r0, #4
- 8002d34:	f7ff fd86 	bl	8002844 <DAC_SetChannel1Data>
+ 8002fee:	f000 f81e 	bl	800302e <EVAL_AUDIO_GetSampleCallBack>
+ 8002ff2:	4603      	mov	r3, r0
+ 8002ff4:	4619      	mov	r1, r3
+ 8002ff6:	2004      	movs	r0, #4
+ 8002ff8:	f7ff fd12 	bl	8002a20 <DAC_SetChannel1Data>
     }
     
     /* Send dummy data on I2S to avoid the underrun condition */
     SPI_I2S_SendData(CODEC_I2S, EVAL_AUDIO_GetSampleCallBack()); 
- 8002d38:	f000 f817 	bl	8002d6a <EVAL_AUDIO_GetSampleCallBack>
- 8002d3c:	4603      	mov	r3, r0
- 8002d3e:	4619      	mov	r1, r3
- 8002d40:	4802      	ldr	r0, [pc, #8]	; (8002d4c <SPI3_IRQHandler+0x3c>)
- 8002d42:	f7ff ff2e 	bl	8002ba2 <SPI_I2S_SendData>
+ 8002ffc:	f000 f817 	bl	800302e <EVAL_AUDIO_GetSampleCallBack>
+ 8003000:	4603      	mov	r3, r0
+ 8003002:	4619      	mov	r1, r3
+ 8003004:	4802      	ldr	r0, [pc, #8]	; (8003010 <SPI3_IRQHandler+0x3c>)
+ 8003006:	f7ff ff2d 	bl	8002e64 <SPI_I2S_SendData>
   }
 }
- 8002d46:	bf00      	nop
- 8002d48:	bd80      	pop	{r7, pc}
- 8002d4a:	bf00      	nop
- 8002d4c:	40003c00 	.word	0x40003c00
- 8002d50:	20000008 	.word	0x20000008
+ 800300a:	bf00      	nop
+ 800300c:	bd80      	pop	{r7, pc}
+ 800300e:	bf00      	nop
+ 8003010:	40003c00 	.word	0x40003c00
+ 8003014:	20000008 	.word	0x20000008
 
-08002d54 <EVAL_AUDIO_TransferComplete_CallBack>:
+08003018 <EVAL_AUDIO_TransferComplete_CallBack>:
 /*
  * Callback used by stm32f4_discovery_audio_codec.c.
  * Refer to stm32f4_discovery_audio_codec.h for more info.
  */
 __attribute__((weak)) void EVAL_AUDIO_TransferComplete_CallBack(uint32_t pBuffer, uint32_t Size)
 {
- 8002d54:	b480      	push	{r7}
- 8002d56:	b083      	sub	sp, #12
- 8002d58:	af00      	add	r7, sp, #0
- 8002d5a:	6078      	str	r0, [r7, #4]
- 8002d5c:	6039      	str	r1, [r7, #0]
+ 8003018:	b480      	push	{r7}
+ 800301a:	b083      	sub	sp, #12
+ 800301c:	af00      	add	r7, sp, #0
+ 800301e:	6078      	str	r0, [r7, #4]
+ 8003020:	6039      	str	r1, [r7, #0]
   /* TODO, implement your code here */
   return;
- 8002d5e:	bf00      	nop
+ 8003022:	bf00      	nop
 }
- 8002d60:	370c      	adds	r7, #12
- 8002d62:	46bd      	mov	sp, r7
- 8002d64:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8002d68:	4770      	bx	lr
+ 8003024:	370c      	adds	r7, #12
+ 8003026:	46bd      	mov	sp, r7
+ 8003028:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 800302c:	4770      	bx	lr
 
-08002d6a <EVAL_AUDIO_GetSampleCallBack>:
+0800302e <EVAL_AUDIO_GetSampleCallBack>:
 /*
  * Callback used by stm32f4_discovery_audio_codec.c.
  * Refer to stm32f4_discovery_audio_codec.h for more info.
  */
 __attribute__((weak)) uint16_t EVAL_AUDIO_GetSampleCallBack(void)
 {
- 8002d6a:	b480      	push	{r7}
- 8002d6c:	af00      	add	r7, sp, #0
+ 800302e:	b480      	push	{r7}
+ 8003030:	af00      	add	r7, sp, #0
   /* TODO, implement your code here */
   return 0;
- 8002d6e:	2300      	movs	r3, #0
+ 8003032:	2300      	movs	r3, #0
 }
- 8002d70:	4618      	mov	r0, r3
- 8002d72:	46bd      	mov	sp, r7
- 8002d74:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8002d78:	4770      	bx	lr
+ 8003034:	4618      	mov	r0, r3
+ 8003036:	46bd      	mov	sp, r7
+ 8003038:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 800303c:	4770      	bx	lr
 	...
 
-08002d7c <NVIC_SetPriorityGrouping>:
+08003040 <writeBoard>:
+/* #####- writeBoard -#####
+ * Write vehicles and traffic light LEDs based on state
+ * ## params:
+ * boardState - state of LEDs on board
+ */
+void writeBoard(BoardState boardState) {
+ 8003040:	b580      	push	{r7, lr}
+ 8003042:	b084      	sub	sp, #16
+ 8003044:	af00      	add	r7, sp, #0
+ 8003046:	6078      	str	r0, [r7, #4]
+	for(int i = 0; i<32;i++){
+ 8003048:	2300      	movs	r3, #0
+ 800304a:	60fb      	str	r3, [r7, #12]
+ 800304c:	e013      	b.n	8003076 <writeBoard+0x36>
+		uint32_t nextBit = 0x1 & (boardState >> i);
+ 800304e:	687a      	ldr	r2, [r7, #4]
+ 8003050:	68fb      	ldr	r3, [r7, #12]
+ 8003052:	fa22 f303 	lsr.w	r3, r2, r3
+ 8003056:	f003 0301 	and.w	r3, r3, #1
+ 800305a:	60bb      	str	r3, [r7, #8]
+		GPIO_Write(GPIOB, nextBit);
+ 800305c:	68bb      	ldr	r3, [r7, #8]
+ 800305e:	b29b      	uxth	r3, r3
+ 8003060:	4619      	mov	r1, r3
+ 8003062:	4808      	ldr	r0, [pc, #32]	; (8003084 <writeBoard+0x44>)
+ 8003064:	f7ff fe7c 	bl	8002d60 <GPIO_Write>
+
+		GPIO_ToggleBits(GPIOB, GPIO_Pin_1);
+ 8003068:	2102      	movs	r1, #2
+ 800306a:	4806      	ldr	r0, [pc, #24]	; (8003084 <writeBoard+0x44>)
+ 800306c:	f7ff fe87 	bl	8002d7e <GPIO_ToggleBits>
+	for(int i = 0; i<32;i++){
+ 8003070:	68fb      	ldr	r3, [r7, #12]
+ 8003072:	3301      	adds	r3, #1
+ 8003074:	60fb      	str	r3, [r7, #12]
+ 8003076:	68fb      	ldr	r3, [r7, #12]
+ 8003078:	2b1f      	cmp	r3, #31
+ 800307a:	dde8      	ble.n	800304e <writeBoard+0xe>
+	}
+}
+ 800307c:	bf00      	nop
+ 800307e:	3710      	adds	r7, #16
+ 8003080:	46bd      	mov	sp, r7
+ 8003082:	bd80      	pop	{r7, pc}
+ 8003084:	40020400 	.word	0x40020400
+
+08003088 <Get_ADC_Converted_Value>:
+
+/* #####- readFlow -#####
+ * Read in flow value from potentiometer
+ */
+uint16_t Get_ADC_Converted_Value()
+{
+ 8003088:	b580      	push	{r7, lr}
+ 800308a:	af00      	add	r7, sp, #0
+  ADC_SoftwareStartConv(ADC1);
+ 800308c:	4808      	ldr	r0, [pc, #32]	; (80030b0 <Get_ADC_Converted_Value+0x28>)
+ 800308e:	f7ff fc8f 	bl	80029b0 <ADC_SoftwareStartConv>
+  while(ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC))
+ 8003092:	bf00      	nop
+ 8003094:	2102      	movs	r1, #2
+ 8003096:	4806      	ldr	r0, [pc, #24]	; (80030b0 <Get_ADC_Converted_Value+0x28>)
+ 8003098:	f7ff fca7 	bl	80029ea <ADC_GetFlagStatus>
+ 800309c:	4603      	mov	r3, r0
+ 800309e:	2b00      	cmp	r3, #0
+ 80030a0:	d004      	beq.n	80030ac <Get_ADC_Converted_Value+0x24>
+  {
+    return ADC_GetConversionValue(ADC1);
+ 80030a2:	4803      	ldr	r0, [pc, #12]	; (80030b0 <Get_ADC_Converted_Value+0x28>)
+ 80030a4:	f7ff fc94 	bl	80029d0 <ADC_GetConversionValue>
+ 80030a8:	4603      	mov	r3, r0
+ 80030aa:	e7ff      	b.n	80030ac <Get_ADC_Converted_Value+0x24>
+  }
+}
+ 80030ac:	4618      	mov	r0, r3
+ 80030ae:	bd80      	pop	{r7, pc}
+ 80030b0:	40012000 	.word	0x40012000
+
+080030b4 <readFlow>:
+uint16_t readFlow() {
+ 80030b4:	b580      	push	{r7, lr}
+ 80030b6:	b082      	sub	sp, #8
+ 80030b8:	af00      	add	r7, sp, #0
+//	Read value from FLOW_PIN
+	uint16_t ConvertedValue = Get_ADC_Converted_Value();
+ 80030ba:	f7ff ffe5 	bl	8003088 <Get_ADC_Converted_Value>
+ 80030be:	4603      	mov	r3, r0
+ 80030c0:	80fb      	strh	r3, [r7, #6]
+	return ConvertedValue;
+ 80030c2:	88fb      	ldrh	r3, [r7, #6]
+}
+ 80030c4:	4618      	mov	r0, r3
+ 80030c6:	3708      	adds	r7, #8
+ 80030c8:	46bd      	mov	sp, r7
+ 80030ca:	bd80      	pop	{r7, pc}
+
+080030cc <advVehicles>:
+ * incomingVehicle - vehicle entering intersection
+ * boardState - state of lights on board
+ * ## returns:
+ * BoardState - new state of board after advancing vehicles
+ */
+BoardState advVehicles(Vehicle incomingVehicle, BoardState boardState) {
+ 80030cc:	b480      	push	{r7}
+ 80030ce:	b085      	sub	sp, #20
+ 80030d0:	af00      	add	r7, sp, #0
+ 80030d2:	4603      	mov	r3, r0
+ 80030d4:	6039      	str	r1, [r7, #0]
+ 80030d6:	71fb      	strb	r3, [r7, #7]
+	// Build bit for incoming vehicle
+	uint32_t topVeh;
+	if (incomingVehicle == TRUE) {
+ 80030d8:	79fb      	ldrb	r3, [r7, #7]
+ 80030da:	2b01      	cmp	r3, #1
+ 80030dc:	d103      	bne.n	80030e6 <advVehicles+0x1a>
+		topVeh = 0x80000000;
+ 80030de:	f04f 4300 	mov.w	r3, #2147483648	; 0x80000000
+ 80030e2:	60fb      	str	r3, [r7, #12]
+ 80030e4:	e004      	b.n	80030f0 <advVehicles+0x24>
+	} else if (incomingVehicle == FALSE) {
+ 80030e6:	79fb      	ldrb	r3, [r7, #7]
+ 80030e8:	2b00      	cmp	r3, #0
+ 80030ea:	d101      	bne.n	80030f0 <advVehicles+0x24>
+		topVeh = 0x00000000;
+ 80030ec:	2300      	movs	r3, #0
+ 80030ee:	60fb      	str	r3, [r7, #12]
+	}
+
+	// Build new boardState
+	return 0x00000000
+			| (VEHICLE_MASK & (boardState >> 1))
+ 80030f0:	683b      	ldr	r3, [r7, #0]
+ 80030f2:	085a      	lsrs	r2, r3, #1
+ 80030f4:	4b07      	ldr	r3, [pc, #28]	; (8003114 <advVehicles+0x48>)
+ 80030f6:	4013      	ands	r3, r2
+			| (LIGHT_MASK & boardState)
+ 80030f8:	683a      	ldr	r2, [r7, #0]
+ 80030fa:	f402 52e0 	and.w	r2, r2, #7168	; 0x1c00
+ 80030fe:	431a      	orrs	r2, r3
+			| topVeh;
+ 8003100:	68fb      	ldr	r3, [r7, #12]
+ 8003102:	4313      	orrs	r3, r2
+ 8003104:	f043 437f 	orr.w	r3, r3, #4278190080	; 0xff000000
+}
+ 8003108:	4618      	mov	r0, r3
+ 800310a:	3714      	adds	r7, #20
+ 800310c:	46bd      	mov	sp, r7
+ 800310e:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8003112:	4770      	bx	lr
+ 8003114:	00ffe000 	.word	0x00ffe000
+
+08003118 <stickyAdvVehicles>:
+ * incomingVehicle - vehicle entering intersection
+ * boardState - state of lights on board
+ * ## returns:
+ * BoardState - new state of board after advancing vehicles
+ */
+BoardState stickyAdvVehicles(Vehicle incomingVehicle, BoardState boardState) {
+ 8003118:	b480      	push	{r7}
+ 800311a:	b087      	sub	sp, #28
+ 800311c:	af00      	add	r7, sp, #0
+ 800311e:	4603      	mov	r3, r0
+ 8003120:	6039      	str	r1, [r7, #0]
+ 8003122:	71fb      	strb	r3, [r7, #7]
+	// Build bit for incoming vehicle
+	uint32_t topVeh;
+	if (incomingVehicle == TRUE) {
+ 8003124:	79fb      	ldrb	r3, [r7, #7]
+ 8003126:	2b01      	cmp	r3, #1
+ 8003128:	d103      	bne.n	8003132 <stickyAdvVehicles+0x1a>
+		topVeh = 0x80000000;
+ 800312a:	f04f 4300 	mov.w	r3, #2147483648	; 0x80000000
+ 800312e:	617b      	str	r3, [r7, #20]
+ 8003130:	e004      	b.n	800313c <stickyAdvVehicles+0x24>
+	} else if (incomingVehicle == FALSE) {
+ 8003132:	79fb      	ldrb	r3, [r7, #7]
+ 8003134:	2b00      	cmp	r3, #0
+ 8003136:	d101      	bne.n	800313c <stickyAdvVehicles+0x24>
+		topVeh = 0x00000000;
+ 8003138:	2300      	movs	r3, #0
+ 800313a:	617b      	str	r3, [r7, #20]
+	}
+
+	// Find rightmost 0 in vehicles before light
+	uint32_t stopLoc = (boardState | ~QUEUE_MASK);
+ 800313c:	683b      	ldr	r3, [r7, #0]
+ 800313e:	f063 437f 	orn	r3, r3, #4278190080	; 0xff000000
+ 8003142:	60bb      	str	r3, [r7, #8]
+	stopLoc = ~stopLoc & (stopLoc+1);
+ 8003144:	68bb      	ldr	r3, [r7, #8]
+ 8003146:	43da      	mvns	r2, r3
+ 8003148:	68bb      	ldr	r3, [r7, #8]
+ 800314a:	3301      	adds	r3, #1
+ 800314c:	4013      	ands	r3, r2
+ 800314e:	60bb      	str	r3, [r7, #8]
+
+	// Create mask for just those vehicles before the light with room to move ahead
+	uint32_t dynMask = 0x00000000;
+ 8003150:	2300      	movs	r3, #0
+ 8003152:	613b      	str	r3, [r7, #16]
+	for (int i =0; i <= 32-stopLoc; i++) {
+ 8003154:	2300      	movs	r3, #0
+ 8003156:	60fb      	str	r3, [r7, #12]
+ 8003158:	e007      	b.n	800316a <stickyAdvVehicles+0x52>
+		dynMask = ((dynMask >> 1) | 0x80000000);
+ 800315a:	693b      	ldr	r3, [r7, #16]
+ 800315c:	085b      	lsrs	r3, r3, #1
+ 800315e:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
+ 8003162:	613b      	str	r3, [r7, #16]
+	for (int i =0; i <= 32-stopLoc; i++) {
+ 8003164:	68fb      	ldr	r3, [r7, #12]
+ 8003166:	3301      	adds	r3, #1
+ 8003168:	60fb      	str	r3, [r7, #12]
+ 800316a:	68bb      	ldr	r3, [r7, #8]
+ 800316c:	f1c3 0220 	rsb	r2, r3, #32
+ 8003170:	68fb      	ldr	r3, [r7, #12]
+ 8003172:	429a      	cmp	r2, r3
+ 8003174:	d2f1      	bcs.n	800315a <stickyAdvVehicles+0x42>
+	}
+
+	// Build new boardState
+	return 0x00000000
+			| ((dynMask & boardState) >> 1)
+ 8003176:	693a      	ldr	r2, [r7, #16]
+ 8003178:	683b      	ldr	r3, [r7, #0]
+ 800317a:	4013      	ands	r3, r2
+ 800317c:	085a      	lsrs	r2, r3, #1
+			| (~dynMask & QUEUE_MASK & boardState)
+ 800317e:	693b      	ldr	r3, [r7, #16]
+ 8003180:	43d9      	mvns	r1, r3
+ 8003182:	683b      	ldr	r3, [r7, #0]
+ 8003184:	400b      	ands	r3, r1
+ 8003186:	f003 437f 	and.w	r3, r3, #4278190080	; 0xff000000
+ 800318a:	431a      	orrs	r2, r3
+			| (PAST_MASK & ((PAST_MASK & boardState) >> 1))
+ 800318c:	683b      	ldr	r3, [r7, #0]
+ 800318e:	0859      	lsrs	r1, r3, #1
+ 8003190:	4b07      	ldr	r3, [pc, #28]	; (80031b0 <stickyAdvVehicles+0x98>)
+ 8003192:	400b      	ands	r3, r1
+ 8003194:	431a      	orrs	r2, r3
+			| (LIGHT_MASK & boardState)
+ 8003196:	683b      	ldr	r3, [r7, #0]
+ 8003198:	f403 53e0 	and.w	r3, r3, #7168	; 0x1c00
+ 800319c:	431a      	orrs	r2, r3
+			| topVeh;
+ 800319e:	697b      	ldr	r3, [r7, #20]
+ 80031a0:	4313      	orrs	r3, r2
+
+}
+ 80031a2:	4618      	mov	r0, r3
+ 80031a4:	371c      	adds	r7, #28
+ 80031a6:	46bd      	mov	sp, r7
+ 80031a8:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 80031ac:	4770      	bx	lr
+ 80031ae:	bf00      	nop
+ 80031b0:	007fe000 	.word	0x007fe000
+
+080031b4 <changeLightColor>:
+ * lightColor - color of light to change to
+ * boardState - state of lights on board
+ * ## returns:
+ * BoardState - new state of board after changing color of light
+ */
+BoardState changeLightColor(LightColor lightColor, BoardState boardState) {
+ 80031b4:	b480      	push	{r7}
+ 80031b6:	b085      	sub	sp, #20
+ 80031b8:	af00      	add	r7, sp, #0
+ 80031ba:	4603      	mov	r3, r0
+ 80031bc:	6039      	str	r1, [r7, #0]
+ 80031be:	71fb      	strb	r3, [r7, #7]
+	uint32_t nxtLight;
+	if (lightColor == GREEN) {
+ 80031c0:	79fb      	ldrb	r3, [r7, #7]
+ 80031c2:	2b02      	cmp	r3, #2
+ 80031c4:	d103      	bne.n	80031ce <changeLightColor+0x1a>
+		nxtLight = LIGHT_GREEN;
+ 80031c6:	f44f 5380 	mov.w	r3, #4096	; 0x1000
+ 80031ca:	60fb      	str	r3, [r7, #12]
+ 80031cc:	e00c      	b.n	80031e8 <changeLightColor+0x34>
+	} else if (lightColor == YELLOW) {
+ 80031ce:	79fb      	ldrb	r3, [r7, #7]
+ 80031d0:	2b01      	cmp	r3, #1
+ 80031d2:	d103      	bne.n	80031dc <changeLightColor+0x28>
+		nxtLight = LIGHT_YELLOW;
+ 80031d4:	f44f 6300 	mov.w	r3, #2048	; 0x800
+ 80031d8:	60fb      	str	r3, [r7, #12]
+ 80031da:	e005      	b.n	80031e8 <changeLightColor+0x34>
+	} else if (lightColor == RED) {
+ 80031dc:	79fb      	ldrb	r3, [r7, #7]
+ 80031de:	2b00      	cmp	r3, #0
+ 80031e0:	d102      	bne.n	80031e8 <changeLightColor+0x34>
+		nxtLight = LIGHT_RED;
+ 80031e2:	f44f 6380 	mov.w	r3, #1024	; 0x400
+ 80031e6:	60fb      	str	r3, [r7, #12]
+	}
+
+	return 0x00000000
+			| (~LIGHT_MASK & boardState)
+ 80031e8:	683b      	ldr	r3, [r7, #0]
+ 80031ea:	f423 52e0 	bic.w	r2, r3, #7168	; 0x1c00
+			| nxtLight;
+ 80031ee:	68fb      	ldr	r3, [r7, #12]
+ 80031f0:	4313      	orrs	r3, r2
+}
+ 80031f2:	4618      	mov	r0, r3
+ 80031f4:	3714      	adds	r7, #20
+ 80031f6:	46bd      	mov	sp, r7
+ 80031f8:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 80031fc:	4770      	bx	lr
+	...
+
+08003200 <NVIC_SetPriorityGrouping>:
   priority bits (__NVIC_PRIO_BITS) the smallest possible priority group is set.
 
     \param [in]      PriorityGroup  Priority grouping field
  */
 static __INLINE void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
 {
- 8002d7c:	b480      	push	{r7}
- 8002d7e:	b085      	sub	sp, #20
- 8002d80:	af00      	add	r7, sp, #0
- 8002d82:	6078      	str	r0, [r7, #4]
+ 8003200:	b480      	push	{r7}
+ 8003202:	b085      	sub	sp, #20
+ 8003204:	af00      	add	r7, sp, #0
+ 8003206:	6078      	str	r0, [r7, #4]
   uint32_t reg_value;
   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);               /* only values 0..7 are used          */
- 8002d84:	687b      	ldr	r3, [r7, #4]
- 8002d86:	f003 0307 	and.w	r3, r3, #7
- 8002d8a:	60fb      	str	r3, [r7, #12]
+ 8003208:	687b      	ldr	r3, [r7, #4]
+ 800320a:	f003 0307 	and.w	r3, r3, #7
+ 800320e:	60fb      	str	r3, [r7, #12]
 
   reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
- 8002d8c:	4b0c      	ldr	r3, [pc, #48]	; (8002dc0 <NVIC_SetPriorityGrouping+0x44>)
- 8002d8e:	68db      	ldr	r3, [r3, #12]
- 8002d90:	60bb      	str	r3, [r7, #8]
+ 8003210:	4b0c      	ldr	r3, [pc, #48]	; (8003244 <NVIC_SetPriorityGrouping+0x44>)
+ 8003212:	68db      	ldr	r3, [r3, #12]
+ 8003214:	60bb      	str	r3, [r7, #8]
   reg_value &= ~(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk);             /* clear bits to change               */
- 8002d92:	68ba      	ldr	r2, [r7, #8]
- 8002d94:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
- 8002d98:	4013      	ands	r3, r2
- 8002d9a:	60bb      	str	r3, [r7, #8]
+ 8003216:	68ba      	ldr	r2, [r7, #8]
+ 8003218:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
+ 800321c:	4013      	ands	r3, r2
+ 800321e:	60bb      	str	r3, [r7, #8]
   reg_value  =  (reg_value                                 |
                 ((uint32_t)0x5FA << SCB_AIRCR_VECTKEY_Pos) |
                 (PriorityGroupTmp << 8));                                     /* Insert write key and priorty group */
- 8002d9c:	68fb      	ldr	r3, [r7, #12]
- 8002d9e:	021a      	lsls	r2, r3, #8
+ 8003220:	68fb      	ldr	r3, [r7, #12]
+ 8003222:	021a      	lsls	r2, r3, #8
                 ((uint32_t)0x5FA << SCB_AIRCR_VECTKEY_Pos) |
- 8002da0:	68bb      	ldr	r3, [r7, #8]
- 8002da2:	4313      	orrs	r3, r2
+ 8003224:	68bb      	ldr	r3, [r7, #8]
+ 8003226:	4313      	orrs	r3, r2
   reg_value  =  (reg_value                                 |
- 8002da4:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
- 8002da8:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
- 8002dac:	60bb      	str	r3, [r7, #8]
+ 8003228:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
+ 800322c:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
+ 8003230:	60bb      	str	r3, [r7, #8]
   SCB->AIRCR =  reg_value;
- 8002dae:	4a04      	ldr	r2, [pc, #16]	; (8002dc0 <NVIC_SetPriorityGrouping+0x44>)
- 8002db0:	68bb      	ldr	r3, [r7, #8]
- 8002db2:	60d3      	str	r3, [r2, #12]
-}
- 8002db4:	bf00      	nop
- 8002db6:	3714      	adds	r7, #20
- 8002db8:	46bd      	mov	sp, r7
- 8002dba:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8002dbe:	4770      	bx	lr
- 8002dc0:	e000ed00 	.word	0xe000ed00
-
-08002dc4 <main>:
+ 8003232:	4a04      	ldr	r2, [pc, #16]	; (8003244 <NVIC_SetPriorityGrouping+0x44>)
+ 8003234:	68bb      	ldr	r3, [r7, #8]
+ 8003236:	60d3      	str	r3, [r2, #12]
+}
+ 8003238:	bf00      	nop
+ 800323a:	3714      	adds	r7, #20
+ 800323c:	46bd      	mov	sp, r7
+ 800323e:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8003242:	4770      	bx	lr
+ 8003244:	e000ed00 	.word	0xe000ed00
+
+08003248 <main>:
 static volatile uint32_t ulCountOfReceivedSemaphores = 0;
 
 /*-----------------------------------------------------------*/
 
 int main(void)
 {
- 8002dc4:	b580      	push	{r7, lr}
- 8002dc6:	b084      	sub	sp, #16
- 8002dc8:	af02      	add	r7, sp, #8
-xTimerHandle xExampleSoftwareTimer = NULL;
- 8002dca:	2300      	movs	r3, #0
- 8002dcc:	607b      	str	r3, [r7, #4]
+ 8003248:	b580      	push	{r7, lr}
+ 800324a:	b084      	sub	sp, #16
+ 800324c:	af02      	add	r7, sp, #8
+	xTimerHandle xExampleSoftwareTimer = NULL;
+ 800324e:	2300      	movs	r3, #0
+ 8003250:	607b      	str	r3, [r7, #4]
 
 	/* Configure the system ready to run the demo.  The clock configuration
 	can be done here if it was not done before main() was called. */
 	prvSetupHardware();
- 8002dce:	f000 f90b 	bl	8002fe8 <prvSetupHardware>
+ 8003252:	f000 f997 	bl	8003584 <prvSetupHardware>
 
 
 	/* Create the queue used by the queue send and queue receive tasks.
 	http://www.freertos.org/a00116.html */
-	xQueue = xQueueCreate( 	mainQUEUE_LENGTH,		/* The number of items the queue can hold. */
- 8002dd2:	2200      	movs	r2, #0
- 8002dd4:	2104      	movs	r1, #4
- 8002dd6:	2001      	movs	r0, #1
- 8002dd8:	f7fd fd9a 	bl	8000910 <xQueueGenericCreate>
- 8002ddc:	4602      	mov	r2, r0
- 8002dde:	4b2b      	ldr	r3, [pc, #172]	; (8002e8c <main+0xc8>)
- 8002de0:	601a      	str	r2, [r3, #0]
+	xQueue = xQueueCreate( 	1,						/* The number of items the queue can hold. */
+ 8003256:	2200      	movs	r2, #0
+ 8003258:	2104      	movs	r1, #4
+ 800325a:	2001      	movs	r0, #1
+ 800325c:	f7fd fb58 	bl	8000910 <xQueueGenericCreate>
+ 8003260:	4602      	mov	r2, r0
+ 8003262:	4b32      	ldr	r3, [pc, #200]	; (800332c <main+0xe4>)
+ 8003264:	601a      	str	r2, [r3, #0]
 							sizeof( uint32_t ) );	/* The size of each item the queue holds. */
+
+	xFlowQueue = xQueueCreate( 	1,					/* The number of items the queue can hold. */
+ 8003266:	2200      	movs	r2, #0
+ 8003268:	2102      	movs	r1, #2
+ 800326a:	2001      	movs	r0, #1
+ 800326c:	f7fd fb50 	bl	8000910 <xQueueGenericCreate>
+ 8003270:	4602      	mov	r2, r0
+ 8003272:	4b2f      	ldr	r3, [pc, #188]	; (8003330 <main+0xe8>)
+ 8003274:	601a      	str	r2, [r3, #0]
+							sizeof( uint16_t ) );	/* The size of each item the queue holds. */
+
 	/* Add to the registry, for the benefit of kernel aware debugging. */
 	vQueueAddToRegistry( xQueue, "MainQueue" );
- 8002de2:	4b2a      	ldr	r3, [pc, #168]	; (8002e8c <main+0xc8>)
- 8002de4:	681b      	ldr	r3, [r3, #0]
- 8002de6:	492a      	ldr	r1, [pc, #168]	; (8002e90 <main+0xcc>)
- 8002de8:	4618      	mov	r0, r3
- 8002dea:	f7fe fa23 	bl	8001234 <vQueueAddToRegistry>
-
+ 8003276:	4b2d      	ldr	r3, [pc, #180]	; (800332c <main+0xe4>)
+ 8003278:	681b      	ldr	r3, [r3, #0]
+ 800327a:	492e      	ldr	r1, [pc, #184]	; (8003334 <main+0xec>)
+ 800327c:	4618      	mov	r0, r3
+ 800327e:	f7fd ffd9 	bl	8001234 <vQueueAddToRegistry>
+	vQueueAddToRegistry( xFlowQueue, "FlowQueue" );
+ 8003282:	4b2b      	ldr	r3, [pc, #172]	; (8003330 <main+0xe8>)
+ 8003284:	681b      	ldr	r3, [r3, #0]
+ 8003286:	492c      	ldr	r1, [pc, #176]	; (8003338 <main+0xf0>)
+ 8003288:	4618      	mov	r0, r3
+ 800328a:	f7fd ffd3 	bl	8001234 <vQueueAddToRegistry>
 
 	/* Create the semaphore used by the FreeRTOS tick hook function and the
 	event semaphore task. */
 	vSemaphoreCreateBinary( xEventSemaphore );
- 8002dee:	2203      	movs	r2, #3
- 8002df0:	2100      	movs	r1, #0
- 8002df2:	2001      	movs	r0, #1
- 8002df4:	f7fd fd8c 	bl	8000910 <xQueueGenericCreate>
- 8002df8:	4602      	mov	r2, r0
- 8002dfa:	4b26      	ldr	r3, [pc, #152]	; (8002e94 <main+0xd0>)
- 8002dfc:	601a      	str	r2, [r3, #0]
- 8002dfe:	4b25      	ldr	r3, [pc, #148]	; (8002e94 <main+0xd0>)
- 8002e00:	681b      	ldr	r3, [r3, #0]
- 8002e02:	2b00      	cmp	r3, #0
- 8002e04:	d006      	beq.n	8002e14 <main+0x50>
- 8002e06:	4b23      	ldr	r3, [pc, #140]	; (8002e94 <main+0xd0>)
- 8002e08:	6818      	ldr	r0, [r3, #0]
- 8002e0a:	2300      	movs	r3, #0
- 8002e0c:	2200      	movs	r2, #0
- 8002e0e:	2100      	movs	r1, #0
- 8002e10:	f7fd fdd6 	bl	80009c0 <xQueueGenericSend>
+ 800328e:	2203      	movs	r2, #3
+ 8003290:	2100      	movs	r1, #0
+ 8003292:	2001      	movs	r0, #1
+ 8003294:	f7fd fb3c 	bl	8000910 <xQueueGenericCreate>
+ 8003298:	4602      	mov	r2, r0
+ 800329a:	4b28      	ldr	r3, [pc, #160]	; (800333c <main+0xf4>)
+ 800329c:	601a      	str	r2, [r3, #0]
+ 800329e:	4b27      	ldr	r3, [pc, #156]	; (800333c <main+0xf4>)
+ 80032a0:	681b      	ldr	r3, [r3, #0]
+ 80032a2:	2b00      	cmp	r3, #0
+ 80032a4:	d006      	beq.n	80032b4 <main+0x6c>
+ 80032a6:	4b25      	ldr	r3, [pc, #148]	; (800333c <main+0xf4>)
+ 80032a8:	6818      	ldr	r0, [r3, #0]
+ 80032aa:	2300      	movs	r3, #0
+ 80032ac:	2200      	movs	r2, #0
+ 80032ae:	2100      	movs	r1, #0
+ 80032b0:	f7fd fb86 	bl	80009c0 <xQueueGenericSend>
 	/* Add to the registry, for the benefit of kernel aware debugging. */
 	vQueueAddToRegistry( xEventSemaphore, "xEventSemaphore" );
- 8002e14:	4b1f      	ldr	r3, [pc, #124]	; (8002e94 <main+0xd0>)
- 8002e16:	681b      	ldr	r3, [r3, #0]
- 8002e18:	491f      	ldr	r1, [pc, #124]	; (8002e98 <main+0xd4>)
- 8002e1a:	4618      	mov	r0, r3
- 8002e1c:	f7fe fa0a 	bl	8001234 <vQueueAddToRegistry>
+ 80032b4:	4b21      	ldr	r3, [pc, #132]	; (800333c <main+0xf4>)
+ 80032b6:	681b      	ldr	r3, [r3, #0]
+ 80032b8:	4921      	ldr	r1, [pc, #132]	; (8003340 <main+0xf8>)
+ 80032ba:	4618      	mov	r0, r3
+ 80032bc:	f7fd ffba 	bl	8001234 <vQueueAddToRegistry>
 
 
 	/* Create the queue receive task as described in the comments at the top
 	of this	file.  http://www.freertos.org/a00125.html */
-	xTaskCreate( 	prvQueueReceiveTask,			/* The function that implements the task. */
- 8002e20:	2300      	movs	r3, #0
- 8002e22:	9301      	str	r3, [sp, #4]
- 8002e24:	2302      	movs	r3, #2
- 8002e26:	9300      	str	r3, [sp, #0]
- 8002e28:	2300      	movs	r3, #0
- 8002e2a:	2282      	movs	r2, #130	; 0x82
- 8002e2c:	491b      	ldr	r1, [pc, #108]	; (8002e9c <main+0xd8>)
- 8002e2e:	481c      	ldr	r0, [pc, #112]	; (8002ea0 <main+0xdc>)
- 8002e30:	f7fe fa5c 	bl	80012ec <xTaskCreate>
-					NULL );							/* Used to obtain a handle to the created task.  Not used in this simple demo, so set to NULL. */
-
-
-	/* Create the queue send task in exactly the same way.  Again, this is
-	described in the comments at the top of the file. */
-	xTaskCreate( 	prvQueueSendTask,
- 8002e34:	2300      	movs	r3, #0
- 8002e36:	9301      	str	r3, [sp, #4]
- 8002e38:	2301      	movs	r3, #1
- 8002e3a:	9300      	str	r3, [sp, #0]
- 8002e3c:	2300      	movs	r3, #0
- 8002e3e:	2282      	movs	r2, #130	; 0x82
- 8002e40:	4918      	ldr	r1, [pc, #96]	; (8002ea4 <main+0xe0>)
- 8002e42:	4819      	ldr	r0, [pc, #100]	; (8002ea8 <main+0xe4>)
- 8002e44:	f7fe fa52 	bl	80012ec <xTaskCreate>
-					NULL );
-
-
-	/* Create the task that is synchronised with an interrupt using the
-	xEventSemaphore semaphore. */
-	xTaskCreate( 	prvEventSemaphoreTask,
- 8002e48:	2300      	movs	r3, #0
- 8002e4a:	9301      	str	r3, [sp, #4]
- 8002e4c:	2304      	movs	r3, #4
- 8002e4e:	9300      	str	r3, [sp, #0]
- 8002e50:	2300      	movs	r3, #0
- 8002e52:	2282      	movs	r2, #130	; 0x82
- 8002e54:	4915      	ldr	r1, [pc, #84]	; (8002eac <main+0xe8>)
- 8002e56:	4816      	ldr	r0, [pc, #88]	; (8002eb0 <main+0xec>)
- 8002e58:	f7fe fa48 	bl	80012ec <xTaskCreate>
-					NULL );
-
-
-	/* Create the software timer as described in the comments at the top of
-	this file.  http://www.freertos.org/FreeRTOS-timers-xTimerCreate.html. */
-	xExampleSoftwareTimer = xTimerCreate("LEDTimer", /* A text name, purely to help debugging. */
- 8002e5c:	4b15      	ldr	r3, [pc, #84]	; (8002eb4 <main+0xf0>)
- 8002e5e:	9300      	str	r3, [sp, #0]
- 8002e60:	2300      	movs	r3, #0
- 8002e62:	2201      	movs	r2, #1
- 8002e64:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
- 8002e68:	4813      	ldr	r0, [pc, #76]	; (8002eb8 <main+0xf4>)
- 8002e6a:	f7ff fa03 	bl	8002274 <xTimerCreate>
- 8002e6e:	6078      	str	r0, [r7, #4]
+
+	xTaskCreate(prvTrafficFlowAdjustment,			/* The function that implements the task. */
+ 80032c0:	2300      	movs	r3, #0
+ 80032c2:	9301      	str	r3, [sp, #4]
+ 80032c4:	2302      	movs	r3, #2
+ 80032c6:	9300      	str	r3, [sp, #0]
+ 80032c8:	2300      	movs	r3, #0
+ 80032ca:	2282      	movs	r2, #130	; 0x82
+ 80032cc:	491d      	ldr	r1, [pc, #116]	; (8003344 <main+0xfc>)
+ 80032ce:	481e      	ldr	r0, [pc, #120]	; (8003348 <main+0x100>)
+ 80032d0:	f7fe f80c 	bl	80012ec <xTaskCreate>
+				configMINIMAL_STACK_SIZE, 			/* The size (in words) of the stack that should be created for the task. */
+				NULL, 								/* A parameter that can be passed into the task.  Not used in this simple demo. */
+				mainQUEUE_RECEIVE_TASK_PRIORITY,	/* The priority to assign to the task.  tskIDLE_PRIORITY (which is 0) is the lowest priority.  configMAX_PRIORITIES - 1 is the highest priority. */
+				NULL );								/* Used to obtain a handle to the created task.  Not used in this simple demo, so set to NULL. */
+
+	xTaskCreate(prvTrafficCreator,					/* The function that implements the task. */
+ 80032d4:	2300      	movs	r3, #0
+ 80032d6:	9301      	str	r3, [sp, #4]
+ 80032d8:	2302      	movs	r3, #2
+ 80032da:	9300      	str	r3, [sp, #0]
+ 80032dc:	2300      	movs	r3, #0
+ 80032de:	2282      	movs	r2, #130	; 0x82
+ 80032e0:	491a      	ldr	r1, [pc, #104]	; (800334c <main+0x104>)
+ 80032e2:	481b      	ldr	r0, [pc, #108]	; (8003350 <main+0x108>)
+ 80032e4:	f7fe f802 	bl	80012ec <xTaskCreate>
+				configMINIMAL_STACK_SIZE, 			/* The size (in words) of the stack that should be created for the task. */
+				NULL, 								/* A parameter that can be passed into the task.  Not used in this simple demo. */
+				mainQUEUE_RECEIVE_TASK_PRIORITY,	/* The priority to assign to the task.  tskIDLE_PRIORITY (which is 0) is the lowest priority.  configMAX_PRIORITIES - 1 is the highest priority. */
+				NULL );								/* Used to obtain a handle to the created task.  Not used in this simple demo, so set to NULL. */
+
+	xTaskCreate(prvTrafficLight,					/* The function that implements the task. */
+ 80032e8:	2300      	movs	r3, #0
+ 80032ea:	9301      	str	r3, [sp, #4]
+ 80032ec:	2302      	movs	r3, #2
+ 80032ee:	9300      	str	r3, [sp, #0]
+ 80032f0:	2300      	movs	r3, #0
+ 80032f2:	2282      	movs	r2, #130	; 0x82
+ 80032f4:	4917      	ldr	r1, [pc, #92]	; (8003354 <main+0x10c>)
+ 80032f6:	4818      	ldr	r0, [pc, #96]	; (8003358 <main+0x110>)
+ 80032f8:	f7fd fff8 	bl	80012ec <xTaskCreate>
+				configMINIMAL_STACK_SIZE, 			/* The size (in words) of the stack that should be created for the task. */
+				NULL, 								/* A parameter that can be passed into the task.  Not used in this simple demo. */
+				mainQUEUE_RECEIVE_TASK_PRIORITY,	/* The priority to assign to the task.  tskIDLE_PRIORITY (which is 0) is the lowest priority.  configMAX_PRIORITIES - 1 is the highest priority. */
+				NULL );								/* Used to obtain a handle to the created task.  Not used in this simple demo, so set to NULL. */
+
+	xTaskCreate(prvDisplayBoard,					/* The function that implements the task. */
+ 80032fc:	2300      	movs	r3, #0
+ 80032fe:	9301      	str	r3, [sp, #4]
+ 8003300:	2302      	movs	r3, #2
+ 8003302:	9300      	str	r3, [sp, #0]
+ 8003304:	2300      	movs	r3, #0
+ 8003306:	2282      	movs	r2, #130	; 0x82
+ 8003308:	4914      	ldr	r1, [pc, #80]	; (800335c <main+0x114>)
+ 800330a:	4815      	ldr	r0, [pc, #84]	; (8003360 <main+0x118>)
+ 800330c:	f7fd ffee 	bl	80012ec <xTaskCreate>
 
 	/* Start the created timer.  A block time of zero is used as the timer
 	command queue cannot possibly be full here (this is the first timer to
 	be created, and it is not yet running).
 	http://www.freertos.org/FreeRTOS-timers-xTimerStart.html */
 	xTimerStart( xExampleSoftwareTimer, 0 );
- 8002e70:	f7fe fcde 	bl	8001830 <xTaskGetTickCount>
- 8002e74:	4602      	mov	r2, r0
- 8002e76:	2300      	movs	r3, #0
- 8002e78:	9300      	str	r3, [sp, #0]
- 8002e7a:	2300      	movs	r3, #0
- 8002e7c:	2101      	movs	r1, #1
- 8002e7e:	6878      	ldr	r0, [r7, #4]
- 8002e80:	f7ff fa46 	bl	8002310 <xTimerGenericCommand>
+ 8003310:	f7fe fa48 	bl	80017a4 <xTaskGetTickCount>
+ 8003314:	4602      	mov	r2, r0
+ 8003316:	2300      	movs	r3, #0
+ 8003318:	9300      	str	r3, [sp, #0]
+ 800331a:	2300      	movs	r3, #0
+ 800331c:	2101      	movs	r1, #1
+ 800331e:	6878      	ldr	r0, [r7, #4]
+ 8003320:	f7fe ff62 	bl	80021e8 <xTimerGenericCommand>
 
 	/* Start the tasks and timer running. */
 	vTaskStartScheduler();
- 8002e84:	f7fe fbde 	bl	8001644 <vTaskStartScheduler>
+ 8003324:	f7fe f948 	bl	80015b8 <vTaskStartScheduler>
 	/* If all is well, the scheduler will now be running, and the following line
 	will never be reached.  If the following line does execute, then there was
 	insufficient FreeRTOS heap memory available for the idle and/or timer tasks
 	to be created.  See the memory management section on the FreeRTOS web site
 	for more details.  http://www.freertos.org/a00111.html */
 	for( ;; );
- 8002e88:	e7fe      	b.n	8002e88 <main+0xc4>
- 8002e8a:	bf00      	nop
- 8002e8c:	20001d84 	.word	0x20001d84
- 8002e90:	08003304 	.word	0x08003304
- 8002e94:	20001d88 	.word	0x20001d88
- 8002e98:	08003310 	.word	0x08003310
- 8002e9c:	08003320 	.word	0x08003320
- 8002ea0:	08002f19 	.word	0x08002f19
- 8002ea4:	08003324 	.word	0x08003324
- 8002ea8:	08002ee1 	.word	0x08002ee1
- 8002eac:	08003328 	.word	0x08003328
- 8002eb0:	08002f4d 	.word	0x08002f4d
- 8002eb4:	08002ebd 	.word	0x08002ebd
- 8002eb8:	0800332c 	.word	0x0800332c
-
-08002ebc <vExampleTimerCallback>:
+ 8003328:	e7fe      	b.n	8003328 <main+0xe0>
+ 800332a:	bf00      	nop
+ 800332c:	20001df0 	.word	0x20001df0
+ 8003330:	20001df4 	.word	0x20001df4
+ 8003334:	08003e80 	.word	0x08003e80
+ 8003338:	08003e8c 	.word	0x08003e8c
+ 800333c:	20001df8 	.word	0x20001df8
+ 8003340:	08003e98 	.word	0x08003e98
+ 8003344:	08003ea8 	.word	0x08003ea8
+ 8003348:	08003365 	.word	0x08003365
+ 800334c:	08003eb8 	.word	0x08003eb8
+ 8003350:	080033ad 	.word	0x080033ad
+ 8003354:	08003ec8 	.word	0x08003ec8
+ 8003358:	08003459 	.word	0x08003459
+ 800335c:	08003ed8 	.word	0x08003ed8
+ 8003360:	080034d5 	.word	0x080034d5
+
+08003364 <prvTrafficFlowAdjustment>:
 }
 /*-----------------------------------------------------------*/
 
-static void vExampleTimerCallback( xTimerHandle xTimer )
-{
- 8002ebc:	b480      	push	{r7}
- 8002ebe:	b083      	sub	sp, #12
- 8002ec0:	af00      	add	r7, sp, #0
- 8002ec2:	6078      	str	r0, [r7, #4]
-	/* The timer has expired.  Count the number of times this happens.  The
-	timer that calls this function is an auto re-load timer, so it will
-	execute periodically. http://www.freertos.org/RTOS-software-timer.html */
-	ulCountOfTimerCallbackExecutions++;
- 8002ec4:	4b05      	ldr	r3, [pc, #20]	; (8002edc <vExampleTimerCallback+0x20>)
- 8002ec6:	681b      	ldr	r3, [r3, #0]
- 8002ec8:	3301      	adds	r3, #1
- 8002eca:	4a04      	ldr	r2, [pc, #16]	; (8002edc <vExampleTimerCallback+0x20>)
- 8002ecc:	6013      	str	r3, [r2, #0]
-}
- 8002ece:	bf00      	nop
- 8002ed0:	370c      	adds	r7, #12
- 8002ed2:	46bd      	mov	sp, r7
- 8002ed4:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8002ed8:	4770      	bx	lr
- 8002eda:	bf00      	nop
- 8002edc:	20001d8c 	.word	0x20001d8c
-
-08002ee0 <prvQueueSendTask>:
-/*-----------------------------------------------------------*/
-
-static void prvQueueSendTask( void *pvParameters )
-{
- 8002ee0:	b580      	push	{r7, lr}
- 8002ee2:	b084      	sub	sp, #16
- 8002ee4:	af00      	add	r7, sp, #0
- 8002ee6:	6078      	str	r0, [r7, #4]
-portTickType xNextWakeTime;
-const uint32_t ulValueToSend = 100UL;
- 8002ee8:	2364      	movs	r3, #100	; 0x64
- 8002eea:	60bb      	str	r3, [r7, #8]
-
-	/* Initialise xNextWakeTime - this only needs to be done once. */
-	xNextWakeTime = xTaskGetTickCount();
- 8002eec:	f7fe fca0 	bl	8001830 <xTaskGetTickCount>
- 8002ef0:	4603      	mov	r3, r0
- 8002ef2:	60fb      	str	r3, [r7, #12]
-	{
-		/* Place this task in the blocked state until it is time to run again.
-		The block time is specified in ticks, the constant used converts ticks
-		to ms.  While in the Blocked state this task will not consume any CPU
-		time.  http://www.freertos.org/vtaskdelayuntil.html */
-		vTaskDelayUntil( &xNextWakeTime, mainQUEUE_SEND_PERIOD_MS );
- 8002ef4:	f107 030c 	add.w	r3, r7, #12
- 8002ef8:	21c8      	movs	r1, #200	; 0xc8
- 8002efa:	4618      	mov	r0, r3
- 8002efc:	f7fe fb28 	bl	8001550 <vTaskDelayUntil>
-
-		/* Send to the queue - causing the queue receive task to unblock and
-		increment its counter.  0 is used as the block time so the sending
-		operation will not block - it shouldn't need to block as the queue
-		should always be empty at this point in the code. */
-		xQueueSend( xQueue, &ulValueToSend, 0 );
- 8002f00:	4b04      	ldr	r3, [pc, #16]	; (8002f14 <prvQueueSendTask+0x34>)
- 8002f02:	6818      	ldr	r0, [r3, #0]
- 8002f04:	f107 0108 	add.w	r1, r7, #8
- 8002f08:	2300      	movs	r3, #0
- 8002f0a:	2200      	movs	r2, #0
- 8002f0c:	f7fd fd58 	bl	80009c0 <xQueueGenericSend>
-		vTaskDelayUntil( &xNextWakeTime, mainQUEUE_SEND_PERIOD_MS );
- 8002f10:	e7f0      	b.n	8002ef4 <prvQueueSendTask+0x14>
- 8002f12:	bf00      	nop
- 8002f14:	20001d84 	.word	0x20001d84
-
-08002f18 <prvQueueReceiveTask>:
+static void prvTrafficFlowAdjustment(void *pvParameters) {
+ 8003364:	b580      	push	{r7, lr}
+ 8003366:	b084      	sub	sp, #16
+ 8003368:	af00      	add	r7, sp, #0
+ 800336a:	6078      	str	r0, [r7, #4]
+	u_int16_t ulReceivedValue;
+	while (1) {
+		// Run every 250ms
+		vTaskDelay(250);
+ 800336c:	20fa      	movs	r0, #250	; 0xfa
+ 800336e:	f7fe f8ef 	bl	8001550 <vTaskDelay>
+
+		// Get value from flowQueue
+		xQueueReceive( xFlowQueue, &ulReceivedValue, portMAX_DELAY );
+ 8003372:	4b0d      	ldr	r3, [pc, #52]	; (80033a8 <prvTrafficFlowAdjustment+0x44>)
+ 8003374:	6818      	ldr	r0, [r3, #0]
+ 8003376:	f107 010e 	add.w	r1, r7, #14
+ 800337a:	2300      	movs	r3, #0
+ 800337c:	f04f 32ff 	mov.w	r2, #4294967295
+ 8003380:	f7fd fd36 	bl	8000df0 <xQueueGenericReceive>
+		// Put flow into global
+		uint16_t gFlow = readFlow();
+ 8003384:	f7ff fe96 	bl	80030b4 <readFlow>
+ 8003388:	4603      	mov	r3, r0
+ 800338a:	81bb      	strh	r3, [r7, #12]
+		printf(gFlow);
+ 800338c:	89bb      	ldrh	r3, [r7, #12]
+ 800338e:	4618      	mov	r0, r3
+ 8003390:	f000 fbca 	bl	8003b28 <printf>
+
+		// Push value back to queue
+		xQueueSend( xFlowQueue, &gFlow, 0);
+ 8003394:	4b04      	ldr	r3, [pc, #16]	; (80033a8 <prvTrafficFlowAdjustment+0x44>)
+ 8003396:	6818      	ldr	r0, [r3, #0]
+ 8003398:	f107 010c 	add.w	r1, r7, #12
+ 800339c:	2300      	movs	r3, #0
+ 800339e:	2200      	movs	r2, #0
+ 80033a0:	f7fd fb0e 	bl	80009c0 <xQueueGenericSend>
+	while (1) {
+ 80033a4:	e7e2      	b.n	800336c <prvTrafficFlowAdjustment+0x8>
+ 80033a6:	bf00      	nop
+ 80033a8:	20001df4 	.word	0x20001df4
+
+080033ac <prvTrafficCreator>:
 	}
 }
-/*-----------------------------------------------------------*/
 
-static void prvQueueReceiveTask( void *pvParameters )
-{
- 8002f18:	b580      	push	{r7, lr}
- 8002f1a:	b084      	sub	sp, #16
- 8002f1c:	af00      	add	r7, sp, #0
- 8002f1e:	6078      	str	r0, [r7, #4]
-	for( ;; )
-	{
-		/* Wait until something arrives in the queue - this task will block
-		indefinitely provided INCLUDE_vTaskSuspend is set to 1 in
-		FreeRTOSConfig.h.  http://www.freertos.org/a00118.html */
-		xQueueReceive( xQueue, &ulReceivedValue, portMAX_DELAY );
- 8002f20:	4b08      	ldr	r3, [pc, #32]	; (8002f44 <prvQueueReceiveTask+0x2c>)
- 8002f22:	6818      	ldr	r0, [r3, #0]
- 8002f24:	f107 010c 	add.w	r1, r7, #12
- 8002f28:	2300      	movs	r3, #0
- 8002f2a:	f04f 32ff 	mov.w	r2, #4294967295
- 8002f2e:	f7fd ff5f 	bl	8000df0 <xQueueGenericReceive>
-
-		/*  To get here something must have been received from the queue, but
-		is it the expected value?  If it is, increment the counter. */
-		if( ulReceivedValue == 100UL )
- 8002f32:	68fb      	ldr	r3, [r7, #12]
- 8002f34:	2b64      	cmp	r3, #100	; 0x64
- 8002f36:	d1f3      	bne.n	8002f20 <prvQueueReceiveTask+0x8>
-		{
-			/* Count the number of items that have been received correctly. */
-			ulCountOfItemsReceivedOnQueue++;
- 8002f38:	4b03      	ldr	r3, [pc, #12]	; (8002f48 <prvQueueReceiveTask+0x30>)
- 8002f3a:	681b      	ldr	r3, [r3, #0]
- 8002f3c:	3301      	adds	r3, #1
- 8002f3e:	4a02      	ldr	r2, [pc, #8]	; (8002f48 <prvQueueReceiveTask+0x30>)
- 8002f40:	6013      	str	r3, [r2, #0]
-		xQueueReceive( xQueue, &ulReceivedValue, portMAX_DELAY );
- 8002f42:	e7ed      	b.n	8002f20 <prvQueueReceiveTask+0x8>
- 8002f44:	20001d84 	.word	0x20001d84
- 8002f48:	20001d90 	.word	0x20001d90
+static void prvTrafficCreator(void *pvParameters) {
+ 80033ac:	b580      	push	{r7, lr}
+ 80033ae:	b086      	sub	sp, #24
+ 80033b0:	af00      	add	r7, sp, #0
+ 80033b2:	6078      	str	r0, [r7, #4]
+	// Initialize timer
+	time_t t;
+	u_int16_t  gFlow;
+	srand((unsigned) time(&t));
+ 80033b4:	f107 030c 	add.w	r3, r7, #12
+ 80033b8:	4618      	mov	r0, r3
+ 80033ba:	f000 fc99 	bl	8003cf0 <time>
+ 80033be:	4603      	mov	r3, r0
+ 80033c0:	4618      	mov	r0, r3
+ 80033c2:	f000 fc33 	bl	8003c2c <srand>
+
+	while (1) {
+		// Run every 250ms
+		vTaskDelay(250);
+ 80033c6:	20fa      	movs	r0, #250	; 0xfa
+ 80033c8:	f7fe f8c2 	bl	8001550 <vTaskDelay>
+
+		// Get value from flowQueue
+		xQueueReceive( xFlowQueue, &gFlow, portMAX_DELAY );
+ 80033cc:	4b1f      	ldr	r3, [pc, #124]	; (800344c <prvTrafficCreator+0xa0>)
+ 80033ce:	6818      	ldr	r0, [r3, #0]
+ 80033d0:	f107 010a 	add.w	r1, r7, #10
+ 80033d4:	2300      	movs	r3, #0
+ 80033d6:	f04f 32ff 	mov.w	r2, #4294967295
+ 80033da:	f7fd fd09 	bl	8000df0 <xQueueGenericReceive>
+
+		// Get random probability
+		int prob = rand() % MAX_OF_POT;
+ 80033de:	f000 fc4d 	bl	8003c7c <rand>
+ 80033e2:	4602      	mov	r2, r0
+ 80033e4:	f640 73ff 	movw	r3, #4095	; 0xfff
+ 80033e8:	fb92 f1f3 	sdiv	r1, r2, r3
+ 80033ec:	fb03 f301 	mul.w	r3, r3, r1
+ 80033f0:	1ad3      	subs	r3, r2, r3
+ 80033f2:	613b      	str	r3, [r7, #16]
+
+		// Determine if a vehicle arrives
+		Vehicle nextVehicle;
+		if (prob >= gFlow) {
+ 80033f4:	897b      	ldrh	r3, [r7, #10]
+ 80033f6:	461a      	mov	r2, r3
+ 80033f8:	693b      	ldr	r3, [r7, #16]
+ 80033fa:	429a      	cmp	r2, r3
+ 80033fc:	dc02      	bgt.n	8003404 <prvTrafficCreator+0x58>
+			nextVehicle = TRUE;
+ 80033fe:	2301      	movs	r3, #1
+ 8003400:	75fb      	strb	r3, [r7, #23]
+ 8003402:	e001      	b.n	8003408 <prvTrafficCreator+0x5c>
+		} else {
+			nextVehicle = FALSE;
+ 8003404:	2300      	movs	r3, #0
+ 8003406:	75fb      	strb	r3, [r7, #23]
+		}
 
-08002f4c <prvEventSemaphoreTask>:
+		// TODO: Where does logic go for adv vs. stickyAdv
+
+		if (gLightColor == GREEN) {
+ 8003408:	4b11      	ldr	r3, [pc, #68]	; (8003450 <prvTrafficCreator+0xa4>)
+ 800340a:	781b      	ldrb	r3, [r3, #0]
+ 800340c:	2b02      	cmp	r3, #2
+ 800340e:	d10a      	bne.n	8003426 <prvTrafficCreator+0x7a>
+			gBoardState = advVehicles(nextVehicle, gBoardState);
+ 8003410:	4b10      	ldr	r3, [pc, #64]	; (8003454 <prvTrafficCreator+0xa8>)
+ 8003412:	681a      	ldr	r2, [r3, #0]
+ 8003414:	7dfb      	ldrb	r3, [r7, #23]
+ 8003416:	4611      	mov	r1, r2
+ 8003418:	4618      	mov	r0, r3
+ 800341a:	f7ff fe57 	bl	80030cc <advVehicles>
+ 800341e:	4602      	mov	r2, r0
+ 8003420:	4b0c      	ldr	r3, [pc, #48]	; (8003454 <prvTrafficCreator+0xa8>)
+ 8003422:	601a      	str	r2, [r3, #0]
+ 8003424:	e009      	b.n	800343a <prvTrafficCreator+0x8e>
+		} else {
+			gBoardState = stickyAdvVehicles(nextVehicle, gBoardState);
+ 8003426:	4b0b      	ldr	r3, [pc, #44]	; (8003454 <prvTrafficCreator+0xa8>)
+ 8003428:	681a      	ldr	r2, [r3, #0]
+ 800342a:	7dfb      	ldrb	r3, [r7, #23]
+ 800342c:	4611      	mov	r1, r2
+ 800342e:	4618      	mov	r0, r3
+ 8003430:	f7ff fe72 	bl	8003118 <stickyAdvVehicles>
+ 8003434:	4602      	mov	r2, r0
+ 8003436:	4b07      	ldr	r3, [pc, #28]	; (8003454 <prvTrafficCreator+0xa8>)
+ 8003438:	601a      	str	r2, [r3, #0]
+		}
+
+		// Push value back to queue
+		xQueueSend( xFlowQueue, &gFlow, 0);
+ 800343a:	4b04      	ldr	r3, [pc, #16]	; (800344c <prvTrafficCreator+0xa0>)
+ 800343c:	6818      	ldr	r0, [r3, #0]
+ 800343e:	f107 010a 	add.w	r1, r7, #10
+ 8003442:	2300      	movs	r3, #0
+ 8003444:	2200      	movs	r2, #0
+ 8003446:	f7fd fabb 	bl	80009c0 <xQueueGenericSend>
+	while (1) {
+ 800344a:	e7bc      	b.n	80033c6 <prvTrafficCreator+0x1a>
+ 800344c:	20001df4 	.word	0x20001df4
+ 8003450:	20001dec 	.word	0x20001dec
+ 8003454:	20000014 	.word	0x20000014
+
+08003458 <prvTrafficLight>:
 	}
 }
-/*-----------------------------------------------------------*/
 
-static void prvEventSemaphoreTask( void *pvParameters )
-{
- 8002f4c:	b580      	push	{r7, lr}
- 8002f4e:	b082      	sub	sp, #8
- 8002f50:	af00      	add	r7, sp, #0
- 8002f52:	6078      	str	r0, [r7, #4]
-	for( ;; )
-	{
-		/* Block until the semaphore is 'given'. */
-		xSemaphoreTake( xEventSemaphore, portMAX_DELAY );
- 8002f54:	4b06      	ldr	r3, [pc, #24]	; (8002f70 <prvEventSemaphoreTask+0x24>)
- 8002f56:	6818      	ldr	r0, [r3, #0]
- 8002f58:	2300      	movs	r3, #0
- 8002f5a:	f04f 32ff 	mov.w	r2, #4294967295
- 8002f5e:	2100      	movs	r1, #0
- 8002f60:	f7fd ff46 	bl	8000df0 <xQueueGenericReceive>
-
-		/* Count the number of times the semaphore is received. */
-		ulCountOfReceivedSemaphores++;
- 8002f64:	4b03      	ldr	r3, [pc, #12]	; (8002f74 <prvEventSemaphoreTask+0x28>)
- 8002f66:	681b      	ldr	r3, [r3, #0]
- 8002f68:	3301      	adds	r3, #1
- 8002f6a:	4a02      	ldr	r2, [pc, #8]	; (8002f74 <prvEventSemaphoreTask+0x28>)
- 8002f6c:	6013      	str	r3, [r2, #0]
-		xSemaphoreTake( xEventSemaphore, portMAX_DELAY );
- 8002f6e:	e7f1      	b.n	8002f54 <prvEventSemaphoreTask+0x8>
- 8002f70:	20001d88 	.word	0x20001d88
- 8002f74:	20001d94 	.word	0x20001d94
-
-08002f78 <vApplicationTickHook>:
+static void prvTrafficLight(void *pvParameters) {
+ 8003458:	b580      	push	{r7, lr}
+ 800345a:	b082      	sub	sp, #8
+ 800345c:	af00      	add	r7, sp, #0
+ 800345e:	6078      	str	r0, [r7, #4]
+	while(1) {
+		// Run every 250ms
+		vTaskDelay(250);
+ 8003460:	20fa      	movs	r0, #250	; 0xfa
+ 8003462:	f7fe f875 	bl	8001550 <vTaskDelay>
+
+		// TODO: figure out timing
+		// TODO: get mutex rip
+		if (gLightColor == GREEN) {
+ 8003466:	4b19      	ldr	r3, [pc, #100]	; (80034cc <prvTrafficLight+0x74>)
+ 8003468:	781b      	ldrb	r3, [r3, #0]
+ 800346a:	2b02      	cmp	r3, #2
+ 800346c:	d10c      	bne.n	8003488 <prvTrafficLight+0x30>
+			gBoardState = changeLightColor(YELLOW, gBoardState);
+ 800346e:	4b18      	ldr	r3, [pc, #96]	; (80034d0 <prvTrafficLight+0x78>)
+ 8003470:	681b      	ldr	r3, [r3, #0]
+ 8003472:	4619      	mov	r1, r3
+ 8003474:	2001      	movs	r0, #1
+ 8003476:	f7ff fe9d 	bl	80031b4 <changeLightColor>
+ 800347a:	4602      	mov	r2, r0
+ 800347c:	4b14      	ldr	r3, [pc, #80]	; (80034d0 <prvTrafficLight+0x78>)
+ 800347e:	601a      	str	r2, [r3, #0]
+			gLightColor = YELLOW;
+ 8003480:	4b12      	ldr	r3, [pc, #72]	; (80034cc <prvTrafficLight+0x74>)
+ 8003482:	2201      	movs	r2, #1
+ 8003484:	701a      	strb	r2, [r3, #0]
+ 8003486:	e7eb      	b.n	8003460 <prvTrafficLight+0x8>
+		} else if (gLightColor == YELLOW) {
+ 8003488:	4b10      	ldr	r3, [pc, #64]	; (80034cc <prvTrafficLight+0x74>)
+ 800348a:	781b      	ldrb	r3, [r3, #0]
+ 800348c:	2b01      	cmp	r3, #1
+ 800348e:	d10c      	bne.n	80034aa <prvTrafficLight+0x52>
+			gBoardState = changeLightColor(RED, gBoardState);
+ 8003490:	4b0f      	ldr	r3, [pc, #60]	; (80034d0 <prvTrafficLight+0x78>)
+ 8003492:	681b      	ldr	r3, [r3, #0]
+ 8003494:	4619      	mov	r1, r3
+ 8003496:	2000      	movs	r0, #0
+ 8003498:	f7ff fe8c 	bl	80031b4 <changeLightColor>
+ 800349c:	4602      	mov	r2, r0
+ 800349e:	4b0c      	ldr	r3, [pc, #48]	; (80034d0 <prvTrafficLight+0x78>)
+ 80034a0:	601a      	str	r2, [r3, #0]
+			gLightColor = RED;
+ 80034a2:	4b0a      	ldr	r3, [pc, #40]	; (80034cc <prvTrafficLight+0x74>)
+ 80034a4:	2200      	movs	r2, #0
+ 80034a6:	701a      	strb	r2, [r3, #0]
+ 80034a8:	e7da      	b.n	8003460 <prvTrafficLight+0x8>
+		} else if (gLightColor == RED) {
+ 80034aa:	4b08      	ldr	r3, [pc, #32]	; (80034cc <prvTrafficLight+0x74>)
+ 80034ac:	781b      	ldrb	r3, [r3, #0]
+ 80034ae:	2b00      	cmp	r3, #0
+ 80034b0:	d1d6      	bne.n	8003460 <prvTrafficLight+0x8>
+			gBoardState = changeLightColor(GREEN, gBoardState);
+ 80034b2:	4b07      	ldr	r3, [pc, #28]	; (80034d0 <prvTrafficLight+0x78>)
+ 80034b4:	681b      	ldr	r3, [r3, #0]
+ 80034b6:	4619      	mov	r1, r3
+ 80034b8:	2002      	movs	r0, #2
+ 80034ba:	f7ff fe7b 	bl	80031b4 <changeLightColor>
+ 80034be:	4602      	mov	r2, r0
+ 80034c0:	4b03      	ldr	r3, [pc, #12]	; (80034d0 <prvTrafficLight+0x78>)
+ 80034c2:	601a      	str	r2, [r3, #0]
+			gLightColor = RED;
+ 80034c4:	4b01      	ldr	r3, [pc, #4]	; (80034cc <prvTrafficLight+0x74>)
+ 80034c6:	2200      	movs	r2, #0
+ 80034c8:	701a      	strb	r2, [r3, #0]
+		vTaskDelay(250);
+ 80034ca:	e7c9      	b.n	8003460 <prvTrafficLight+0x8>
+ 80034cc:	20001dec 	.word	0x20001dec
+ 80034d0:	20000014 	.word	0x20000014
+
+080034d4 <prvDisplayBoard>:
+		}
+	}
+}
+
+static void prvDisplayBoard(void *pvParameters) {
+ 80034d4:	b580      	push	{r7, lr}
+ 80034d6:	b084      	sub	sp, #16
+ 80034d8:	af00      	add	r7, sp, #0
+ 80034da:	6078      	str	r0, [r7, #4]
+	uint32_t ulReceivedValue;
+
+	while(1) {
+		// Run every 10mx
+		vTaskDelay(10);
+ 80034dc:	200a      	movs	r0, #10
+ 80034de:	f7fe f837 	bl	8001550 <vTaskDelay>
+
+		xQueueReceive( xQueue, &ulReceivedValue, portMAX_DELAY );
+ 80034e2:	4b0b      	ldr	r3, [pc, #44]	; (8003510 <prvDisplayBoard+0x3c>)
+ 80034e4:	6818      	ldr	r0, [r3, #0]
+ 80034e6:	f107 010c 	add.w	r1, r7, #12
+ 80034ea:	2300      	movs	r3, #0
+ 80034ec:	f04f 32ff 	mov.w	r2, #4294967295
+ 80034f0:	f7fd fc7e 	bl	8000df0 <xQueueGenericReceive>
+
+		// Write to board
+		writeBoard(ulReceivedValue);
+ 80034f4:	68fb      	ldr	r3, [r7, #12]
+ 80034f6:	4618      	mov	r0, r3
+ 80034f8:	f7ff fda2 	bl	8003040 <writeBoard>
+
+		xQueueSend( xQueue, &ulReceivedValue, 0);
+ 80034fc:	4b04      	ldr	r3, [pc, #16]	; (8003510 <prvDisplayBoard+0x3c>)
+ 80034fe:	6818      	ldr	r0, [r3, #0]
+ 8003500:	f107 010c 	add.w	r1, r7, #12
+ 8003504:	2300      	movs	r3, #0
+ 8003506:	2200      	movs	r2, #0
+ 8003508:	f7fd fa5a 	bl	80009c0 <xQueueGenericSend>
+		vTaskDelay(10);
+ 800350c:	e7e6      	b.n	80034dc <prvDisplayBoard+0x8>
+ 800350e:	bf00      	nop
+ 8003510:	20001df0 	.word	0x20001df0
+
+08003514 <vApplicationTickHook>:
 	}
 }
 /*-----------------------------------------------------------*/
 
 void vApplicationTickHook( void )
 {
- 8002f78:	b580      	push	{r7, lr}
- 8002f7a:	b082      	sub	sp, #8
- 8002f7c:	af00      	add	r7, sp, #0
+ 8003514:	b580      	push	{r7, lr}
+ 8003516:	b082      	sub	sp, #8
+ 8003518:	af00      	add	r7, sp, #0
 portBASE_TYPE xHigherPriorityTaskWoken = pdFALSE;
- 8002f7e:	2300      	movs	r3, #0
- 8002f80:	607b      	str	r3, [r7, #4]
+ 800351a:	2300      	movs	r3, #0
+ 800351c:	607b      	str	r3, [r7, #4]
 
 	/* The RTOS tick hook function is enabled by setting configUSE_TICK_HOOK to
 	1 in FreeRTOSConfig.h.
 
 	"Give" the semaphore on every 500th tick interrupt. */
 	ulCount++;
- 8002f82:	4b0c      	ldr	r3, [pc, #48]	; (8002fb4 <vApplicationTickHook+0x3c>)
- 8002f84:	681b      	ldr	r3, [r3, #0]
- 8002f86:	3301      	adds	r3, #1
- 8002f88:	4a0a      	ldr	r2, [pc, #40]	; (8002fb4 <vApplicationTickHook+0x3c>)
- 8002f8a:	6013      	str	r3, [r2, #0]
+ 800351e:	4b0c      	ldr	r3, [pc, #48]	; (8003550 <vApplicationTickHook+0x3c>)
+ 8003520:	681b      	ldr	r3, [r3, #0]
+ 8003522:	3301      	adds	r3, #1
+ 8003524:	4a0a      	ldr	r2, [pc, #40]	; (8003550 <vApplicationTickHook+0x3c>)
+ 8003526:	6013      	str	r3, [r2, #0]
 	if( ulCount >= 500UL )
- 8002f8c:	4b09      	ldr	r3, [pc, #36]	; (8002fb4 <vApplicationTickHook+0x3c>)
- 8002f8e:	681b      	ldr	r3, [r3, #0]
- 8002f90:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
- 8002f94:	d309      	bcc.n	8002faa <vApplicationTickHook+0x32>
+ 8003528:	4b09      	ldr	r3, [pc, #36]	; (8003550 <vApplicationTickHook+0x3c>)
+ 800352a:	681b      	ldr	r3, [r3, #0]
+ 800352c:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
+ 8003530:	d309      	bcc.n	8003546 <vApplicationTickHook+0x32>
 
 		xHigherPriorityTaskWoken was initialised to pdFALSE, and will be set to
 		pdTRUE by xSemaphoreGiveFromISR() if giving the semaphore unblocked a
 		task that has equal or higher priority than the interrupted task.
 		http://www.freertos.org/a00124.html */
 		xSemaphoreGiveFromISR( xEventSemaphore, &xHigherPriorityTaskWoken );
- 8002f96:	4b08      	ldr	r3, [pc, #32]	; (8002fb8 <vApplicationTickHook+0x40>)
- 8002f98:	681b      	ldr	r3, [r3, #0]
- 8002f9a:	1d3a      	adds	r2, r7, #4
- 8002f9c:	4611      	mov	r1, r2
- 8002f9e:	4618      	mov	r0, r3
- 8002fa0:	f7fd fe9c 	bl	8000cdc <xQueueGiveFromISR>
+ 8003532:	4b08      	ldr	r3, [pc, #32]	; (8003554 <vApplicationTickHook+0x40>)
+ 8003534:	681b      	ldr	r3, [r3, #0]
+ 8003536:	1d3a      	adds	r2, r7, #4
+ 8003538:	4611      	mov	r1, r2
+ 800353a:	4618      	mov	r0, r3
+ 800353c:	f7fd fbce 	bl	8000cdc <xQueueGiveFromISR>
 		ulCount = 0UL;
- 8002fa4:	4b03      	ldr	r3, [pc, #12]	; (8002fb4 <vApplicationTickHook+0x3c>)
- 8002fa6:	2200      	movs	r2, #0
- 8002fa8:	601a      	str	r2, [r3, #0]
+ 8003540:	4b03      	ldr	r3, [pc, #12]	; (8003550 <vApplicationTickHook+0x3c>)
+ 8003542:	2200      	movs	r2, #0
+ 8003544:	601a      	str	r2, [r3, #0]
 	are using.  http://www.freertos.org/a00090.html
 
 	In this case, the function is running in the context of the tick interrupt,
 	which will automatically check for the higher priority task to run anyway,
 	so no further action is required. */
 }
- 8002faa:	bf00      	nop
- 8002fac:	3708      	adds	r7, #8
- 8002fae:	46bd      	mov	sp, r7
- 8002fb0:	bd80      	pop	{r7, pc}
- 8002fb2:	bf00      	nop
- 8002fb4:	20001d98 	.word	0x20001d98
- 8002fb8:	20001d88 	.word	0x20001d88
-
-08002fbc <vApplicationMallocFailedHook>:
+ 8003546:	bf00      	nop
+ 8003548:	3708      	adds	r7, #8
+ 800354a:	46bd      	mov	sp, r7
+ 800354c:	bd80      	pop	{r7, pc}
+ 800354e:	bf00      	nop
+ 8003550:	20001dfc 	.word	0x20001dfc
+ 8003554:	20001df8 	.word	0x20001df8
+
+08003558 <vApplicationMallocFailedHook>:
 /*-----------------------------------------------------------*/
 
 void vApplicationMallocFailedHook( void )
 {
- 8002fbc:	b480      	push	{r7}
- 8002fbe:	af00      	add	r7, sp, #0
+ 8003558:	b480      	push	{r7}
+ 800355a:	af00      	add	r7, sp, #0
 	Called if a call to pvPortMalloc() fails because there is insufficient
 	free memory available in the FreeRTOS heap.  pvPortMalloc() is called
 	internally by FreeRTOS API functions that create tasks, queues, software 
 	timers, and semaphores.  The size of the FreeRTOS heap is set by the
 	configTOTAL_HEAP_SIZE configuration constant in FreeRTOSConfig.h. */
 	for( ;; );
- 8002fc0:	e7fe      	b.n	8002fc0 <vApplicationMallocFailedHook+0x4>
+ 800355c:	e7fe      	b.n	800355c <vApplicationMallocFailedHook+0x4>
 
-08002fc2 <vApplicationStackOverflowHook>:
+0800355e <vApplicationStackOverflowHook>:
 }
 /*-----------------------------------------------------------*/
 
 void vApplicationStackOverflowHook( xTaskHandle pxTask, signed char *pcTaskName )
 {
- 8002fc2:	b480      	push	{r7}
- 8002fc4:	b083      	sub	sp, #12
- 8002fc6:	af00      	add	r7, sp, #0
- 8002fc8:	6078      	str	r0, [r7, #4]
- 8002fca:	6039      	str	r1, [r7, #0]
+ 800355e:	b480      	push	{r7}
+ 8003560:	b083      	sub	sp, #12
+ 8003562:	af00      	add	r7, sp, #0
+ 8003564:	6078      	str	r0, [r7, #4]
+ 8003566:	6039      	str	r1, [r7, #0]
 	/* Run time stack overflow checking is performed if
 	configconfigCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook
 	function is called if a stack overflow is detected.  pxCurrentTCB can be
 	inspected in the debugger if the task name passed into this function is
 	corrupt. */
 	for( ;; );
- 8002fcc:	e7fe      	b.n	8002fcc <vApplicationStackOverflowHook+0xa>
+ 8003568:	e7fe      	b.n	8003568 <vApplicationStackOverflowHook+0xa>
 
-08002fce <vApplicationIdleHook>:
+0800356a <vApplicationIdleHook>:
 }
 /*-----------------------------------------------------------*/
 
 void vApplicationIdleHook( void )
 {
- 8002fce:	b580      	push	{r7, lr}
- 8002fd0:	b082      	sub	sp, #8
- 8002fd2:	af00      	add	r7, sp, #0
+ 800356a:	b580      	push	{r7, lr}
+ 800356c:	b082      	sub	sp, #8
+ 800356e:	af00      	add	r7, sp, #0
 	FreeRTOSConfig.h.
 
 	This function is called on each cycle of the idle task.  In this case it
 	does nothing useful, other than report the amount of FreeRTOS heap that
 	remains unallocated. */
 	xFreeStackSpace = xPortGetFreeHeapSize();
- 8002fd4:	f7fd fc26 	bl	8000824 <xPortGetFreeHeapSize>
- 8002fd8:	4603      	mov	r3, r0
- 8002fda:	607b      	str	r3, [r7, #4]
+ 8003570:	f7fd f958 	bl	8000824 <xPortGetFreeHeapSize>
+ 8003574:	4603      	mov	r3, r0
+ 8003576:	607b      	str	r3, [r7, #4]
 
 	if( xFreeStackSpace > 100 )
- 8002fdc:	687b      	ldr	r3, [r7, #4]
+ 8003578:	687b      	ldr	r3, [r7, #4]
 		/* By now, the kernel has allocated everything it is going to, so
 		if there is a lot of heap remaining unallocated then
 		the value of configTOTAL_HEAP_SIZE in FreeRTOSConfig.h can be
 		reduced accordingly. */
 	}
 }
- 8002fde:	bf00      	nop
- 8002fe0:	3708      	adds	r7, #8
- 8002fe2:	46bd      	mov	sp, r7
- 8002fe4:	bd80      	pop	{r7, pc}
+ 800357a:	bf00      	nop
+ 800357c:	3708      	adds	r7, #8
+ 800357e:	46bd      	mov	sp, r7
+ 8003580:	bd80      	pop	{r7, pc}
 	...
 
-08002fe8 <prvSetupHardware>:
+08003584 <prvSetupHardware>:
 /*-----------------------------------------------------------*/
 
 static void prvSetupHardware( void )
 {
- 8002fe8:	b580      	push	{r7, lr}
- 8002fea:	b084      	sub	sp, #16
- 8002fec:	af00      	add	r7, sp, #0
+ 8003584:	b580      	push	{r7, lr}
+ 8003586:	b08c      	sub	sp, #48	; 0x30
+ 8003588:	af00      	add	r7, sp, #0
 	/* Ensure all priority bits are assigned as preemption priority bits.
 	http://www.freertos.org/RTOS-Cortex-M3-M4.html */
 	NVIC_SetPriorityGrouping( 0 );
- 8002fee:	2000      	movs	r0, #0
- 8002ff0:	f7ff fec4 	bl	8002d7c <NVIC_SetPriorityGrouping>
-	GPIO_InitTypeDef GPIO_InitStructure;
-	GPIO_InitStructure.GPIO_Pin = 	GPIO_Pin_1;
- 8002ff4:	2302      	movs	r3, #2
- 8002ff6:	603b      	str	r3, [r7, #0]
-	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
- 8002ff8:	2301      	movs	r3, #1
- 8002ffa:	713b      	strb	r3, [r7, #4]
-	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
- 8002ffc:	2300      	movs	r3, #0
- 8002ffe:	71bb      	strb	r3, [r7, #6]
-	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_DOWN;
- 8003000:	2302      	movs	r3, #2
- 8003002:	71fb      	strb	r3, [r7, #7]
-	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
- 8003004:	2303      	movs	r3, #3
- 8003006:	717b      	strb	r3, [r7, #5]
-	GPIO_Init(GPIOB,&GPIO_InitStructure);
- 8003008:	463b      	mov	r3, r7
- 800300a:	4619      	mov	r1, r3
- 800300c:	481f      	ldr	r0, [pc, #124]	; (800308c <prvSetupHardware+0xa4>)
- 800300e:	f7ff fd2b 	bl	8002a68 <GPIO_Init>
-
-
-	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1;
- 8003012:	2302      	movs	r3, #2
- 8003014:	603b      	str	r3, [r7, #0]
-	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
- 8003016:	2301      	movs	r3, #1
- 8003018:	713b      	strb	r3, [r7, #4]
-	GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
- 800301a:	2300      	movs	r3, #0
- 800301c:	71bb      	strb	r3, [r7, #6]
-	GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_DOWN;
- 800301e:	2302      	movs	r3, #2
- 8003020:	71fb      	strb	r3, [r7, #7]
-	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_100MHz;
- 8003022:	2303      	movs	r3, #3
- 8003024:	717b      	strb	r3, [r7, #5]
-	GPIO_Init(GPIOA,&GPIO_InitStructure);
- 8003026:	463b      	mov	r3, r7
- 8003028:	4619      	mov	r1, r3
- 800302a:	4819      	ldr	r0, [pc, #100]	; (8003090 <prvSetupHardware+0xa8>)
- 800302c:	f7ff fd1c 	bl	8002a68 <GPIO_Init>
-
-	for(int i = 0; i<100;i++){
- 8003030:	2300      	movs	r3, #0
- 8003032:	60fb      	str	r3, [r7, #12]
- 8003034:	e022      	b.n	800307c <prvSetupHardware+0x94>
-		if (i % 2 == 0){
- 8003036:	68fb      	ldr	r3, [r7, #12]
- 8003038:	f003 0301 	and.w	r3, r3, #1
- 800303c:	2b00      	cmp	r3, #0
- 800303e:	d104      	bne.n	800304a <prvSetupHardware+0x62>
-			GPIO_Write(GPIOA, 0x0);
- 8003040:	2100      	movs	r1, #0
- 8003042:	4813      	ldr	r0, [pc, #76]	; (8003090 <prvSetupHardware+0xa8>)
- 8003044:	f7ff fd9e 	bl	8002b84 <GPIO_Write>
- 8003048:	e003      	b.n	8003052 <prvSetupHardware+0x6a>
-		}else{
-			GPIO_Write(GPIOA, 0x0);
- 800304a:	2100      	movs	r1, #0
- 800304c:	4810      	ldr	r0, [pc, #64]	; (8003090 <prvSetupHardware+0xa8>)
- 800304e:	f7ff fd99 	bl	8002b84 <GPIO_Write>
-		}
-
-		GPIO_Write(GPIOB, 0x1);
- 8003052:	2101      	movs	r1, #1
- 8003054:	480d      	ldr	r0, [pc, #52]	; (800308c <prvSetupHardware+0xa4>)
- 8003056:	f7ff fd95 	bl	8002b84 <GPIO_Write>
-		GPIO_Write(GPIOB, 0x0);
- 800305a:	2100      	movs	r1, #0
- 800305c:	480b      	ldr	r0, [pc, #44]	; (800308c <prvSetupHardware+0xa4>)
- 800305e:	f7ff fd91 	bl	8002b84 <GPIO_Write>
-		for(int j=0; j< 1000000;j++){
- 8003062:	2300      	movs	r3, #0
- 8003064:	60bb      	str	r3, [r7, #8]
- 8003066:	e002      	b.n	800306e <prvSetupHardware+0x86>
- 8003068:	68bb      	ldr	r3, [r7, #8]
- 800306a:	3301      	adds	r3, #1
- 800306c:	60bb      	str	r3, [r7, #8]
- 800306e:	68bb      	ldr	r3, [r7, #8]
- 8003070:	4a08      	ldr	r2, [pc, #32]	; (8003094 <prvSetupHardware+0xac>)
- 8003072:	4293      	cmp	r3, r2
- 8003074:	ddf8      	ble.n	8003068 <prvSetupHardware+0x80>
-	for(int i = 0; i<100;i++){
- 8003076:	68fb      	ldr	r3, [r7, #12]
- 8003078:	3301      	adds	r3, #1
- 800307a:	60fb      	str	r3, [r7, #12]
- 800307c:	68fb      	ldr	r3, [r7, #12]
- 800307e:	2b63      	cmp	r3, #99	; 0x63
- 8003080:	ddd9      	ble.n	8003036 <prvSetupHardware+0x4e>
-		}
-	}
-
+ 800358a:	2000      	movs	r0, #0
+ 800358c:	f7ff fe38 	bl	8003200 <NVIC_SetPriorityGrouping>
+	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOA, ENABLE);
+ 8003590:	2101      	movs	r1, #1
+ 8003592:	2001      	movs	r0, #1
+ 8003594:	f7ff fc06 	bl	8002da4 <RCC_AHB1PeriphClockCmd>
+	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);
+ 8003598:	2101      	movs	r1, #1
+ 800359a:	2002      	movs	r0, #2
+ 800359c:	f7ff fc02 	bl	8002da4 <RCC_AHB1PeriphClockCmd>
+	/* Setup Port -X-
+	 * Output
+	 * Used to push values to shift register
+	 */
+	GPIO_InitTypeDef GPIO_PortA_InitStructure;
+	GPIO_PortA_InitStructure.GPIO_Pin =  GPIO_Pin_1 | GPIO_Pin_2;
+ 80035a0:	2306      	movs	r3, #6
+ 80035a2:	62bb      	str	r3, [r7, #40]	; 0x28
+	GPIO_PortA_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
+ 80035a4:	2301      	movs	r3, #1
+ 80035a6:	f887 302c 	strb.w	r3, [r7, #44]	; 0x2c
+	GPIO_PortA_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
+ 80035aa:	2301      	movs	r3, #1
+ 80035ac:	f887 302f 	strb.w	r3, [r7, #47]	; 0x2f
+	GPIO_Init(GPIOA,&GPIO_PortA_InitStructure);
+ 80035b0:	f107 0328 	add.w	r3, r7, #40	; 0x28
+ 80035b4:	4619      	mov	r1, r3
+ 80035b6:	4824      	ldr	r0, [pc, #144]	; (8003648 <prvSetupHardware+0xc4>)
+ 80035b8:	f7ff fb44 	bl	8002c44 <GPIO_Init>
+	/* Setup Port -X-
+	 * Input
+	 * Used to read values from potentiometer
+	 */
+	GPIO_InitTypeDef GPIO_PortB_InitStructure;
+	GPIO_PortB_InitStructure.GPIO_Pin =  GPIO_Pin_0 | GPIO_Pin_1;
+ 80035bc:	2303      	movs	r3, #3
+ 80035be:	623b      	str	r3, [r7, #32]
+	GPIO_PortB_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
+ 80035c0:	2301      	movs	r3, #1
+ 80035c2:	f887 3024 	strb.w	r3, [r7, #36]	; 0x24
+	GPIO_PortB_InitStructure.GPIO_PuPd = GPIO_PuPd_DOWN;
+ 80035c6:	2302      	movs	r3, #2
+ 80035c8:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
+	GPIO_Init(GPIOB,&GPIO_PortB_InitStructure);
+ 80035cc:	f107 0320 	add.w	r3, r7, #32
+ 80035d0:	4619      	mov	r1, r3
+ 80035d2:	481e      	ldr	r0, [pc, #120]	; (800364c <prvSetupHardware+0xc8>)
+ 80035d4:	f7ff fb36 	bl	8002c44 <GPIO_Init>
+
+	RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1,ENABLE);//Enable clock for ADC Ports
+ 80035d8:	2101      	movs	r1, #1
+ 80035da:	f44f 7080 	mov.w	r0, #256	; 0x100
+ 80035de:	f7ff fc01 	bl	8002de4 <RCC_APB2PeriphClockCmd>
+	RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOC,ENABLE);//Enable GPIO pin to read analog input
+ 80035e2:	2101      	movs	r1, #1
+ 80035e4:	2004      	movs	r0, #4
+ 80035e6:	f7ff fbdd 	bl	8002da4 <RCC_AHB1PeriphClockCmd>
+
+	GPIO_InitTypeDef GPIO_initStructre;
+	GPIO_initStructre.GPIO_Pin = GPIO_Pin_1; // Provide input to channel 10 of ADC i.e GPIO Pin 0 of Port C
+ 80035ea:	2302      	movs	r3, #2
+ 80035ec:	61bb      	str	r3, [r7, #24]
+	GPIO_initStructre.GPIO_Mode = GPIO_Mode_AN; //GPIO Pin as analog Mode
+ 80035ee:	2303      	movs	r3, #3
+ 80035f0:	773b      	strb	r3, [r7, #28]
+	GPIO_initStructre.GPIO_PuPd = GPIO_PuPd_NOPULL;
+ 80035f2:	2300      	movs	r3, #0
+ 80035f4:	77fb      	strb	r3, [r7, #31]
+	GPIO_Init(GPIOC,&GPIO_initStructre);// GPIO Initialization
+ 80035f6:	f107 0318 	add.w	r3, r7, #24
+ 80035fa:	4619      	mov	r1, r3
+ 80035fc:	4814      	ldr	r0, [pc, #80]	; (8003650 <prvSetupHardware+0xcc>)
+ 80035fe:	f7ff fb21 	bl	8002c44 <GPIO_Init>
+
+	// Analog Mode Deinitialization, Configuration and Initialization
+	ADC_DeInit();
+ 8003602:	f7ff f88b 	bl	800271c <ADC_DeInit>
+	ADC_InitTypeDef ADC_InitStruct;
+	ADC_InitStruct.ADC_ScanConvMode=DISABLE;
+ 8003606:	2300      	movs	r3, #0
+ 8003608:	713b      	strb	r3, [r7, #4]
+	ADC_InitStruct.ADC_Resolution=ADC_Resolution_12b;
+ 800360a:	2300      	movs	r3, #0
+ 800360c:	603b      	str	r3, [r7, #0]
+	ADC_InitStruct.ADC_ContinuousConvMode=ENABLE;
+ 800360e:	2301      	movs	r3, #1
+ 8003610:	717b      	strb	r3, [r7, #5]
+	ADC_InitStruct.ADC_ExternalTrigConv=ADC_ExternalTrigConv_T1_CC1;
+ 8003612:	2300      	movs	r3, #0
+ 8003614:	60fb      	str	r3, [r7, #12]
+	ADC_InitStruct.ADC_ExternalTrigConvEdge=ADC_ExternalTrigConvEdge_None;
+ 8003616:	2300      	movs	r3, #0
+ 8003618:	60bb      	str	r3, [r7, #8]
+	ADC_InitStruct.ADC_DataAlign=ADC_DataAlign_Right;
+ 800361a:	2300      	movs	r3, #0
+ 800361c:	613b      	str	r3, [r7, #16]
+	ADC_InitStruct.ADC_NbrOfConversion=1;
+ 800361e:	2301      	movs	r3, #1
+ 8003620:	753b      	strb	r3, [r7, #20]
+	ADC_Init(ADC1, &ADC_InitStruct);
+ 8003622:	463b      	mov	r3, r7
+ 8003624:	4619      	mov	r1, r3
+ 8003626:	480b      	ldr	r0, [pc, #44]	; (8003654 <prvSetupHardware+0xd0>)
+ 8003628:	f7ff f886 	bl	8002738 <ADC_Init>
+	ADC_Cmd(ADC1, ENABLE);
+ 800362c:	2101      	movs	r1, #1
+ 800362e:	4809      	ldr	r0, [pc, #36]	; (8003654 <prvSetupHardware+0xd0>)
+ 8003630:	f7ff f8d8 	bl	80027e4 <ADC_Cmd>
+	ADC_RegularChannelConfig(ADC1, ADC_Channel_11, 1, ADC_SampleTime_144Cycles);
+ 8003634:	2306      	movs	r3, #6
+ 8003636:	2201      	movs	r2, #1
+ 8003638:	210b      	movs	r1, #11
+ 800363a:	4806      	ldr	r0, [pc, #24]	; (8003654 <prvSetupHardware+0xd0>)
+ 800363c:	f7ff f8ee 	bl	800281c <ADC_RegularChannelConfig>
 	/* TODO: Setup the clocks, etc. here, if they were not configured before
 	main() was called. */
 }
- 8003082:	bf00      	nop
- 8003084:	3710      	adds	r7, #16
- 8003086:	46bd      	mov	sp, r7
- 8003088:	bd80      	pop	{r7, pc}
- 800308a:	bf00      	nop
- 800308c:	40020400 	.word	0x40020400
- 8003090:	40020000 	.word	0x40020000
- 8003094:	000f423f 	.word	0x000f423f
-
-08003098 <Reset_Handler>:
+ 8003640:	bf00      	nop
+ 8003642:	3730      	adds	r7, #48	; 0x30
+ 8003644:	46bd      	mov	sp, r7
+ 8003646:	bd80      	pop	{r7, pc}
+ 8003648:	40020000 	.word	0x40020000
+ 800364c:	40020400 	.word	0x40020400
+ 8003650:	40020800 	.word	0x40020800
+ 8003654:	40012000 	.word	0x40012000
+
+08003658 <Reset_Handler>:
   .weak  Reset_Handler
   .type  Reset_Handler, %function
 Reset_Handler:  
 
 /* Copy the data segment initializers from flash to SRAM */  
   movs  r1, #0
- 8003098:	2100      	movs	r1, #0
+ 8003658:	2100      	movs	r1, #0
   b  LoopCopyDataInit
- 800309a:	e003      	b.n	80030a4 <LoopCopyDataInit>
+ 800365a:	e003      	b.n	8003664 <LoopCopyDataInit>
 
-0800309c <CopyDataInit>:
+0800365c <CopyDataInit>:
 
 CopyDataInit:
   ldr  r3, =_sidata
- 800309c:	4b0b      	ldr	r3, [pc, #44]	; (80030cc <LoopFillZerobss+0x14>)
+ 800365c:	4b0b      	ldr	r3, [pc, #44]	; (800368c <LoopFillZerobss+0x14>)
   ldr  r3, [r3, r1]
- 800309e:	585b      	ldr	r3, [r3, r1]
+ 800365e:	585b      	ldr	r3, [r3, r1]
   str  r3, [r0, r1]
- 80030a0:	5043      	str	r3, [r0, r1]
+ 8003660:	5043      	str	r3, [r0, r1]
   adds  r1, r1, #4
- 80030a2:	3104      	adds	r1, #4
+ 8003662:	3104      	adds	r1, #4
 
-080030a4 <LoopCopyDataInit>:
+08003664 <LoopCopyDataInit>:
     
 LoopCopyDataInit:
   ldr  r0, =_sdata
- 80030a4:	480a      	ldr	r0, [pc, #40]	; (80030d0 <LoopFillZerobss+0x18>)
+ 8003664:	480a      	ldr	r0, [pc, #40]	; (8003690 <LoopFillZerobss+0x18>)
   ldr  r3, =_edata
- 80030a6:	4b0b      	ldr	r3, [pc, #44]	; (80030d4 <LoopFillZerobss+0x1c>)
+ 8003666:	4b0b      	ldr	r3, [pc, #44]	; (8003694 <LoopFillZerobss+0x1c>)
   adds  r2, r0, r1
- 80030a8:	1842      	adds	r2, r0, r1
+ 8003668:	1842      	adds	r2, r0, r1
   cmp  r2, r3
- 80030aa:	429a      	cmp	r2, r3
+ 800366a:	429a      	cmp	r2, r3
   bcc  CopyDataInit
- 80030ac:	d3f6      	bcc.n	800309c <CopyDataInit>
+ 800366c:	d3f6      	bcc.n	800365c <CopyDataInit>
   ldr  r2, =_sbss
- 80030ae:	4a0a      	ldr	r2, [pc, #40]	; (80030d8 <LoopFillZerobss+0x20>)
+ 800366e:	4a0a      	ldr	r2, [pc, #40]	; (8003698 <LoopFillZerobss+0x20>)
   b  LoopFillZerobss
- 80030b0:	e002      	b.n	80030b8 <LoopFillZerobss>
+ 8003670:	e002      	b.n	8003678 <LoopFillZerobss>
 
-080030b2 <FillZerobss>:
+08003672 <FillZerobss>:
 /* Zero fill the bss segment. */  
 FillZerobss:
   movs  r3, #0
- 80030b2:	2300      	movs	r3, #0
+ 8003672:	2300      	movs	r3, #0
   str  r3, [r2], #4
- 80030b4:	f842 3b04 	str.w	r3, [r2], #4
+ 8003674:	f842 3b04 	str.w	r3, [r2], #4
 
-080030b8 <LoopFillZerobss>:
+08003678 <LoopFillZerobss>:
     
 LoopFillZerobss:
   ldr  r3, = _ebss
- 80030b8:	4b08      	ldr	r3, [pc, #32]	; (80030dc <LoopFillZerobss+0x24>)
+ 8003678:	4b08      	ldr	r3, [pc, #32]	; (800369c <LoopFillZerobss+0x24>)
   cmp  r2, r3
- 80030ba:	429a      	cmp	r2, r3
+ 800367a:	429a      	cmp	r2, r3
   bcc  FillZerobss
- 80030bc:	d3f9      	bcc.n	80030b2 <FillZerobss>
+ 800367c:	d3f9      	bcc.n	8003672 <FillZerobss>
 
 /* Call the clock system intitialization function.*/
   bl  SystemInit   
- 80030be:	f000 f82b 	bl	8003118 <SystemInit>
+ 800367e:	f000 f82b 	bl	80036d8 <SystemInit>
 /* Call static constructors */
     bl __libc_init_array
- 80030c2:	f000 f8db 	bl	800327c <__libc_init_array>
+ 8003682:	f000 fa9b 	bl	8003bbc <__libc_init_array>
 /* Call the application's entry point.*/
   bl  main
- 80030c6:	f7ff fe7d 	bl	8002dc4 <main>
+ 8003686:	f7ff fddf 	bl	8003248 <main>
   bx  lr    
- 80030ca:	4770      	bx	lr
+ 800368a:	4770      	bx	lr
   ldr  r3, =_sidata
- 80030cc:	08003358 	.word	0x08003358
+ 800368c:	08003f08 	.word	0x08003f08
   ldr  r0, =_sdata
- 80030d0:	20000000 	.word	0x20000000
+ 8003690:	20000000 	.word	0x20000000
   ldr  r3, =_edata
- 80030d4:	20000018 	.word	0x20000018
+ 8003694:	20000080 	.word	0x20000080
   ldr  r2, =_sbss
- 80030d8:	20000018 	.word	0x20000018
+ 8003698:	20000080 	.word	0x20000080
   ldr  r3, = _ebss
- 80030dc:	20001e58 	.word	0x20001e58
+ 800369c:	20001ecc 	.word	0x20001ecc
 
-080030e0 <ADC_IRQHandler>:
+080036a0 <ADC_IRQHandler>:
  * @retval None       
 */
     .section  .text.Default_Handler,"ax",%progbits
 Default_Handler:
 Infinite_Loop:
   b  Infinite_Loop
- 80030e0:	e7fe      	b.n	80030e0 <ADC_IRQHandler>
+ 80036a0:	e7fe      	b.n	80036a0 <ADC_IRQHandler>
 
-080030e2 <NMI_Handler>:
+080036a2 <NMI_Handler>:
   * @brief   This function handles NMI exception.
   * @param  None
   * @retval None
   */
 void NMI_Handler(void)
 {
- 80030e2:	b480      	push	{r7}
- 80030e4:	af00      	add	r7, sp, #0
+ 80036a2:	b480      	push	{r7}
+ 80036a4:	af00      	add	r7, sp, #0
 }
- 80030e6:	bf00      	nop
- 80030e8:	46bd      	mov	sp, r7
- 80030ea:	f85d 7b04 	ldr.w	r7, [sp], #4
- 80030ee:	4770      	bx	lr
+ 80036a6:	bf00      	nop
+ 80036a8:	46bd      	mov	sp, r7
+ 80036aa:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 80036ae:	4770      	bx	lr
 
-080030f0 <HardFault_Handler>:
+080036b0 <HardFault_Handler>:
   * @brief  This function handles Hard Fault exception.
   * @param  None
   * @retval None
   */
 void HardFault_Handler(void)
 {
- 80030f0:	b480      	push	{r7}
- 80030f2:	af00      	add	r7, sp, #0
+ 80036b0:	b480      	push	{r7}
+ 80036b2:	af00      	add	r7, sp, #0
   /* Go to infinite loop when Hard Fault exception occurs */
   while (1)
- 80030f4:	e7fe      	b.n	80030f4 <HardFault_Handler+0x4>
+ 80036b4:	e7fe      	b.n	80036b4 <HardFault_Handler+0x4>
 
-080030f6 <MemManage_Handler>:
+080036b6 <MemManage_Handler>:
   * @brief  This function handles Memory Manage exception.
   * @param  None
   * @retval None
   */
 void MemManage_Handler(void)
 {
- 80030f6:	b480      	push	{r7}
- 80030f8:	af00      	add	r7, sp, #0
+ 80036b6:	b480      	push	{r7}
+ 80036b8:	af00      	add	r7, sp, #0
   /* Go to infinite loop when Memory Manage exception occurs */
   while (1)
- 80030fa:	e7fe      	b.n	80030fa <MemManage_Handler+0x4>
+ 80036ba:	e7fe      	b.n	80036ba <MemManage_Handler+0x4>
 
-080030fc <BusFault_Handler>:
+080036bc <BusFault_Handler>:
   * @brief  This function handles Bus Fault exception.
   * @param  None
   * @retval None
   */
 void BusFault_Handler(void)
 {
- 80030fc:	b480      	push	{r7}
- 80030fe:	af00      	add	r7, sp, #0
+ 80036bc:	b480      	push	{r7}
+ 80036be:	af00      	add	r7, sp, #0
   /* Go to infinite loop when Bus Fault exception occurs */
   while (1)
- 8003100:	e7fe      	b.n	8003100 <BusFault_Handler+0x4>
+ 80036c0:	e7fe      	b.n	80036c0 <BusFault_Handler+0x4>
 
-08003102 <UsageFault_Handler>:
+080036c2 <UsageFault_Handler>:
   * @brief  This function handles Usage Fault exception.
   * @param  None
   * @retval None
   */
 void UsageFault_Handler(void)
 {
- 8003102:	b480      	push	{r7}
- 8003104:	af00      	add	r7, sp, #0
+ 80036c2:	b480      	push	{r7}
+ 80036c4:	af00      	add	r7, sp, #0
   /* Go to infinite loop when Usage Fault exception occurs */
   while (1)
- 8003106:	e7fe      	b.n	8003106 <UsageFault_Handler+0x4>
+ 80036c6:	e7fe      	b.n	80036c6 <UsageFault_Handler+0x4>
 
-08003108 <DebugMon_Handler>:
+080036c8 <DebugMon_Handler>:
   * @brief  This function handles Debug Monitor exception.
   * @param  None
   * @retval None
   */
 void DebugMon_Handler(void)
 {
- 8003108:	b480      	push	{r7}
- 800310a:	af00      	add	r7, sp, #0
+ 80036c8:	b480      	push	{r7}
+ 80036ca:	af00      	add	r7, sp, #0
 }
- 800310c:	bf00      	nop
- 800310e:	46bd      	mov	sp, r7
- 8003110:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8003114:	4770      	bx	lr
+ 80036cc:	bf00      	nop
+ 80036ce:	46bd      	mov	sp, r7
+ 80036d0:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 80036d4:	4770      	bx	lr
 	...
 
-08003118 <SystemInit>:
+080036d8 <SystemInit>:
   *         SystemFrequency variable.
   * @param  None
   * @retval None
   */
 void SystemInit(void)
 {
- 8003118:	b580      	push	{r7, lr}
- 800311a:	af00      	add	r7, sp, #0
+ 80036d8:	b580      	push	{r7, lr}
+ 80036da:	af00      	add	r7, sp, #0
   /* FPU settings ------------------------------------------------------------*/
   #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
 	SCB->CPACR |= ((3UL << 10*2)|(3UL << 11*2));  /* set CP10 and CP11 Full Access */
- 800311c:	4a16      	ldr	r2, [pc, #88]	; (8003178 <SystemInit+0x60>)
- 800311e:	4b16      	ldr	r3, [pc, #88]	; (8003178 <SystemInit+0x60>)
- 8003120:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
- 8003124:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
- 8003128:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
+ 80036dc:	4a16      	ldr	r2, [pc, #88]	; (8003738 <SystemInit+0x60>)
+ 80036de:	4b16      	ldr	r3, [pc, #88]	; (8003738 <SystemInit+0x60>)
+ 80036e0:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
+ 80036e4:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
+ 80036e8:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
   #endif
 
   /* Reset the RCC clock configuration to the default reset state ------------*/
   /* Set HSION bit */
   RCC->CR |= (uint32_t)0x00000001;
- 800312c:	4a13      	ldr	r2, [pc, #76]	; (800317c <SystemInit+0x64>)
- 800312e:	4b13      	ldr	r3, [pc, #76]	; (800317c <SystemInit+0x64>)
- 8003130:	681b      	ldr	r3, [r3, #0]
- 8003132:	f043 0301 	orr.w	r3, r3, #1
- 8003136:	6013      	str	r3, [r2, #0]
+ 80036ec:	4a13      	ldr	r2, [pc, #76]	; (800373c <SystemInit+0x64>)
+ 80036ee:	4b13      	ldr	r3, [pc, #76]	; (800373c <SystemInit+0x64>)
+ 80036f0:	681b      	ldr	r3, [r3, #0]
+ 80036f2:	f043 0301 	orr.w	r3, r3, #1
+ 80036f6:	6013      	str	r3, [r2, #0]
 
   /* Reset CFGR register */
   RCC->CFGR = 0x00000000;
- 8003138:	4b10      	ldr	r3, [pc, #64]	; (800317c <SystemInit+0x64>)
- 800313a:	2200      	movs	r2, #0
- 800313c:	609a      	str	r2, [r3, #8]
+ 80036f8:	4b10      	ldr	r3, [pc, #64]	; (800373c <SystemInit+0x64>)
+ 80036fa:	2200      	movs	r2, #0
+ 80036fc:	609a      	str	r2, [r3, #8]
 
   /* Reset HSEON, CSSON and PLLON bits */
   RCC->CR &= (uint32_t)0xFEF6FFFF;
- 800313e:	4a0f      	ldr	r2, [pc, #60]	; (800317c <SystemInit+0x64>)
- 8003140:	4b0e      	ldr	r3, [pc, #56]	; (800317c <SystemInit+0x64>)
- 8003142:	681b      	ldr	r3, [r3, #0]
- 8003144:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
- 8003148:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
- 800314c:	6013      	str	r3, [r2, #0]
+ 80036fe:	4a0f      	ldr	r2, [pc, #60]	; (800373c <SystemInit+0x64>)
+ 8003700:	4b0e      	ldr	r3, [pc, #56]	; (800373c <SystemInit+0x64>)
+ 8003702:	681b      	ldr	r3, [r3, #0]
+ 8003704:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
+ 8003708:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
+ 800370c:	6013      	str	r3, [r2, #0]
 
   /* Reset PLLCFGR register */
   RCC->PLLCFGR = 0x24003010;
- 800314e:	4b0b      	ldr	r3, [pc, #44]	; (800317c <SystemInit+0x64>)
- 8003150:	4a0b      	ldr	r2, [pc, #44]	; (8003180 <SystemInit+0x68>)
- 8003152:	605a      	str	r2, [r3, #4]
+ 800370e:	4b0b      	ldr	r3, [pc, #44]	; (800373c <SystemInit+0x64>)
+ 8003710:	4a0b      	ldr	r2, [pc, #44]	; (8003740 <SystemInit+0x68>)
+ 8003712:	605a      	str	r2, [r3, #4]
 
   /* Reset HSEBYP bit */
   RCC->CR &= (uint32_t)0xFFFBFFFF;
- 8003154:	4a09      	ldr	r2, [pc, #36]	; (800317c <SystemInit+0x64>)
- 8003156:	4b09      	ldr	r3, [pc, #36]	; (800317c <SystemInit+0x64>)
- 8003158:	681b      	ldr	r3, [r3, #0]
- 800315a:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
- 800315e:	6013      	str	r3, [r2, #0]
+ 8003714:	4a09      	ldr	r2, [pc, #36]	; (800373c <SystemInit+0x64>)
+ 8003716:	4b09      	ldr	r3, [pc, #36]	; (800373c <SystemInit+0x64>)
+ 8003718:	681b      	ldr	r3, [r3, #0]
+ 800371a:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
+ 800371e:	6013      	str	r3, [r2, #0]
 
   /* Disable all interrupts */
   RCC->CIR = 0x00000000;
- 8003160:	4b06      	ldr	r3, [pc, #24]	; (800317c <SystemInit+0x64>)
- 8003162:	2200      	movs	r2, #0
- 8003164:	60da      	str	r2, [r3, #12]
+ 8003720:	4b06      	ldr	r3, [pc, #24]	; (800373c <SystemInit+0x64>)
+ 8003722:	2200      	movs	r2, #0
+ 8003724:	60da      	str	r2, [r3, #12]
   SystemInit_ExtMemCtl(); 
 #endif /* DATA_IN_ExtSRAM */
          
   /* Configure the System clock source, PLL Multiplier and Divider factors, 
      AHB/APBx prescalers and Flash settings ----------------------------------*/
   SetSysClock();
- 8003166:	f000 f80d 	bl	8003184 <SetSysClock>
+ 8003726:	f000 f80d 	bl	8003744 <SetSysClock>
 
   /* Configure the Vector Table location add offset address ------------------*/
 #ifdef VECT_TAB_SRAM
   SCB->VTOR = SRAM_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM */
 #else
   SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH */
- 800316a:	4b03      	ldr	r3, [pc, #12]	; (8003178 <SystemInit+0x60>)
- 800316c:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
- 8003170:	609a      	str	r2, [r3, #8]
+ 800372a:	4b03      	ldr	r3, [pc, #12]	; (8003738 <SystemInit+0x60>)
+ 800372c:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
+ 8003730:	609a      	str	r2, [r3, #8]
 #endif
 }
- 8003172:	bf00      	nop
- 8003174:	bd80      	pop	{r7, pc}
- 8003176:	bf00      	nop
- 8003178:	e000ed00 	.word	0xe000ed00
- 800317c:	40023800 	.word	0x40023800
- 8003180:	24003010 	.word	0x24003010
-
-08003184 <SetSysClock>:
+ 8003732:	bf00      	nop
+ 8003734:	bd80      	pop	{r7, pc}
+ 8003736:	bf00      	nop
+ 8003738:	e000ed00 	.word	0xe000ed00
+ 800373c:	40023800 	.word	0x40023800
+ 8003740:	24003010 	.word	0x24003010
+
+08003744 <SetSysClock>:
   *         is reset to the default reset state (done in SystemInit() function).   
   * @param  None
   * @retval None
   */
 static void SetSysClock(void)
 {
- 8003184:	b480      	push	{r7}
- 8003186:	b083      	sub	sp, #12
- 8003188:	af00      	add	r7, sp, #0
+ 8003744:	b480      	push	{r7}
+ 8003746:	b083      	sub	sp, #12
+ 8003748:	af00      	add	r7, sp, #0
 /******************************************************************************/
 /*            PLL (clocked by HSE) used as System clock source                */
 /******************************************************************************/
   __IO uint32_t StartUpCounter = 0, HSEStatus = 0;
- 800318a:	2300      	movs	r3, #0
- 800318c:	607b      	str	r3, [r7, #4]
- 800318e:	2300      	movs	r3, #0
- 8003190:	603b      	str	r3, [r7, #0]
+ 800374a:	2300      	movs	r3, #0
+ 800374c:	607b      	str	r3, [r7, #4]
+ 800374e:	2300      	movs	r3, #0
+ 8003750:	603b      	str	r3, [r7, #0]
   
   /* Enable HSE */
   RCC->CR |= ((uint32_t)RCC_CR_HSEON);
- 8003192:	4a36      	ldr	r2, [pc, #216]	; (800326c <SetSysClock+0xe8>)
- 8003194:	4b35      	ldr	r3, [pc, #212]	; (800326c <SetSysClock+0xe8>)
- 8003196:	681b      	ldr	r3, [r3, #0]
- 8003198:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
- 800319c:	6013      	str	r3, [r2, #0]
+ 8003752:	4a36      	ldr	r2, [pc, #216]	; (800382c <SetSysClock+0xe8>)
+ 8003754:	4b35      	ldr	r3, [pc, #212]	; (800382c <SetSysClock+0xe8>)
+ 8003756:	681b      	ldr	r3, [r3, #0]
+ 8003758:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
+ 800375c:	6013      	str	r3, [r2, #0]
  
   /* Wait till HSE is ready and if Time out is reached exit */
   do
   {
     HSEStatus = RCC->CR & RCC_CR_HSERDY;
- 800319e:	4b33      	ldr	r3, [pc, #204]	; (800326c <SetSysClock+0xe8>)
- 80031a0:	681b      	ldr	r3, [r3, #0]
- 80031a2:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
- 80031a6:	603b      	str	r3, [r7, #0]
+ 800375e:	4b33      	ldr	r3, [pc, #204]	; (800382c <SetSysClock+0xe8>)
+ 8003760:	681b      	ldr	r3, [r3, #0]
+ 8003762:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
+ 8003766:	603b      	str	r3, [r7, #0]
     StartUpCounter++;
- 80031a8:	687b      	ldr	r3, [r7, #4]
- 80031aa:	3301      	adds	r3, #1
- 80031ac:	607b      	str	r3, [r7, #4]
+ 8003768:	687b      	ldr	r3, [r7, #4]
+ 800376a:	3301      	adds	r3, #1
+ 800376c:	607b      	str	r3, [r7, #4]
   } while((HSEStatus == 0) && (StartUpCounter != HSE_STARTUP_TIMEOUT));
- 80031ae:	683b      	ldr	r3, [r7, #0]
- 80031b0:	2b00      	cmp	r3, #0
- 80031b2:	d103      	bne.n	80031bc <SetSysClock+0x38>
- 80031b4:	687b      	ldr	r3, [r7, #4]
- 80031b6:	f5b3 6fa0 	cmp.w	r3, #1280	; 0x500
- 80031ba:	d1f0      	bne.n	800319e <SetSysClock+0x1a>
+ 800376e:	683b      	ldr	r3, [r7, #0]
+ 8003770:	2b00      	cmp	r3, #0
+ 8003772:	d103      	bne.n	800377c <SetSysClock+0x38>
+ 8003774:	687b      	ldr	r3, [r7, #4]
+ 8003776:	f5b3 6fa0 	cmp.w	r3, #1280	; 0x500
+ 800377a:	d1f0      	bne.n	800375e <SetSysClock+0x1a>
 
   if ((RCC->CR & RCC_CR_HSERDY) != RESET)
- 80031bc:	4b2b      	ldr	r3, [pc, #172]	; (800326c <SetSysClock+0xe8>)
- 80031be:	681b      	ldr	r3, [r3, #0]
- 80031c0:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
- 80031c4:	2b00      	cmp	r3, #0
- 80031c6:	d002      	beq.n	80031ce <SetSysClock+0x4a>
+ 800377c:	4b2b      	ldr	r3, [pc, #172]	; (800382c <SetSysClock+0xe8>)
+ 800377e:	681b      	ldr	r3, [r3, #0]
+ 8003780:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
+ 8003784:	2b00      	cmp	r3, #0
+ 8003786:	d002      	beq.n	800378e <SetSysClock+0x4a>
   {
     HSEStatus = (uint32_t)0x01;
- 80031c8:	2301      	movs	r3, #1
- 80031ca:	603b      	str	r3, [r7, #0]
- 80031cc:	e001      	b.n	80031d2 <SetSysClock+0x4e>
+ 8003788:	2301      	movs	r3, #1
+ 800378a:	603b      	str	r3, [r7, #0]
+ 800378c:	e001      	b.n	8003792 <SetSysClock+0x4e>
   }
   else
   {
     HSEStatus = (uint32_t)0x00;
- 80031ce:	2300      	movs	r3, #0
- 80031d0:	603b      	str	r3, [r7, #0]
+ 800378e:	2300      	movs	r3, #0
+ 8003790:	603b      	str	r3, [r7, #0]
   }
 
   if (HSEStatus == (uint32_t)0x01)
- 80031d2:	683b      	ldr	r3, [r7, #0]
- 80031d4:	2b01      	cmp	r3, #1
- 80031d6:	d142      	bne.n	800325e <SetSysClock+0xda>
+ 8003792:	683b      	ldr	r3, [r7, #0]
+ 8003794:	2b01      	cmp	r3, #1
+ 8003796:	d142      	bne.n	800381e <SetSysClock+0xda>
   {
     /* Enable high performance mode, System frequency up to 168 MHz */
     RCC->APB1ENR |= RCC_APB1ENR_PWREN;
- 80031d8:	4a24      	ldr	r2, [pc, #144]	; (800326c <SetSysClock+0xe8>)
- 80031da:	4b24      	ldr	r3, [pc, #144]	; (800326c <SetSysClock+0xe8>)
- 80031dc:	6c1b      	ldr	r3, [r3, #64]	; 0x40
- 80031de:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
- 80031e2:	6413      	str	r3, [r2, #64]	; 0x40
+ 8003798:	4a24      	ldr	r2, [pc, #144]	; (800382c <SetSysClock+0xe8>)
+ 800379a:	4b24      	ldr	r3, [pc, #144]	; (800382c <SetSysClock+0xe8>)
+ 800379c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
+ 800379e:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
+ 80037a2:	6413      	str	r3, [r2, #64]	; 0x40
     PWR->CR |= PWR_CR_PMODE;  
- 80031e4:	4a22      	ldr	r2, [pc, #136]	; (8003270 <SetSysClock+0xec>)
- 80031e6:	4b22      	ldr	r3, [pc, #136]	; (8003270 <SetSysClock+0xec>)
- 80031e8:	681b      	ldr	r3, [r3, #0]
- 80031ea:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
- 80031ee:	6013      	str	r3, [r2, #0]
+ 80037a4:	4a22      	ldr	r2, [pc, #136]	; (8003830 <SetSysClock+0xec>)
+ 80037a6:	4b22      	ldr	r3, [pc, #136]	; (8003830 <SetSysClock+0xec>)
+ 80037a8:	681b      	ldr	r3, [r3, #0]
+ 80037aa:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
+ 80037ae:	6013      	str	r3, [r2, #0]
 
     /* HCLK = SYSCLK / 1*/
     RCC->CFGR |= RCC_CFGR_HPRE_DIV1;
- 80031f0:	4a1e      	ldr	r2, [pc, #120]	; (800326c <SetSysClock+0xe8>)
- 80031f2:	4b1e      	ldr	r3, [pc, #120]	; (800326c <SetSysClock+0xe8>)
- 80031f4:	689b      	ldr	r3, [r3, #8]
- 80031f6:	6093      	str	r3, [r2, #8]
+ 80037b0:	4a1e      	ldr	r2, [pc, #120]	; (800382c <SetSysClock+0xe8>)
+ 80037b2:	4b1e      	ldr	r3, [pc, #120]	; (800382c <SetSysClock+0xe8>)
+ 80037b4:	689b      	ldr	r3, [r3, #8]
+ 80037b6:	6093      	str	r3, [r2, #8]
       
     /* PCLK2 = HCLK / 2*/
     RCC->CFGR |= RCC_CFGR_PPRE2_DIV2;
- 80031f8:	4a1c      	ldr	r2, [pc, #112]	; (800326c <SetSysClock+0xe8>)
- 80031fa:	4b1c      	ldr	r3, [pc, #112]	; (800326c <SetSysClock+0xe8>)
- 80031fc:	689b      	ldr	r3, [r3, #8]
- 80031fe:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
- 8003202:	6093      	str	r3, [r2, #8]
+ 80037b8:	4a1c      	ldr	r2, [pc, #112]	; (800382c <SetSysClock+0xe8>)
+ 80037ba:	4b1c      	ldr	r3, [pc, #112]	; (800382c <SetSysClock+0xe8>)
+ 80037bc:	689b      	ldr	r3, [r3, #8]
+ 80037be:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
+ 80037c2:	6093      	str	r3, [r2, #8]
     
     /* PCLK1 = HCLK / 4*/
     RCC->CFGR |= RCC_CFGR_PPRE1_DIV4;
- 8003204:	4a19      	ldr	r2, [pc, #100]	; (800326c <SetSysClock+0xe8>)
- 8003206:	4b19      	ldr	r3, [pc, #100]	; (800326c <SetSysClock+0xe8>)
- 8003208:	689b      	ldr	r3, [r3, #8]
- 800320a:	f443 53a0 	orr.w	r3, r3, #5120	; 0x1400
- 800320e:	6093      	str	r3, [r2, #8]
+ 80037c4:	4a19      	ldr	r2, [pc, #100]	; (800382c <SetSysClock+0xe8>)
+ 80037c6:	4b19      	ldr	r3, [pc, #100]	; (800382c <SetSysClock+0xe8>)
+ 80037c8:	689b      	ldr	r3, [r3, #8]
+ 80037ca:	f443 53a0 	orr.w	r3, r3, #5120	; 0x1400
+ 80037ce:	6093      	str	r3, [r2, #8]
 
     /* Configure the main PLL */
     RCC->PLLCFGR = PLL_M | (PLL_N << 6) | (((PLL_P >> 1) -1) << 16) |
- 8003210:	4b16      	ldr	r3, [pc, #88]	; (800326c <SetSysClock+0xe8>)
- 8003212:	4a18      	ldr	r2, [pc, #96]	; (8003274 <SetSysClock+0xf0>)
- 8003214:	605a      	str	r2, [r3, #4]
+ 80037d0:	4b16      	ldr	r3, [pc, #88]	; (800382c <SetSysClock+0xe8>)
+ 80037d2:	4a18      	ldr	r2, [pc, #96]	; (8003834 <SetSysClock+0xf0>)
+ 80037d4:	605a      	str	r2, [r3, #4]
                    (RCC_PLLCFGR_PLLSRC_HSE) | (PLL_Q << 24);
 
     /* Enable the main PLL */
     RCC->CR |= RCC_CR_PLLON;
- 8003216:	4a15      	ldr	r2, [pc, #84]	; (800326c <SetSysClock+0xe8>)
- 8003218:	4b14      	ldr	r3, [pc, #80]	; (800326c <SetSysClock+0xe8>)
- 800321a:	681b      	ldr	r3, [r3, #0]
- 800321c:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
- 8003220:	6013      	str	r3, [r2, #0]
+ 80037d6:	4a15      	ldr	r2, [pc, #84]	; (800382c <SetSysClock+0xe8>)
+ 80037d8:	4b14      	ldr	r3, [pc, #80]	; (800382c <SetSysClock+0xe8>)
+ 80037da:	681b      	ldr	r3, [r3, #0]
+ 80037dc:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
+ 80037e0:	6013      	str	r3, [r2, #0]
 
     /* Wait till the main PLL is ready */
     while((RCC->CR & RCC_CR_PLLRDY) == 0)
- 8003222:	bf00      	nop
- 8003224:	4b11      	ldr	r3, [pc, #68]	; (800326c <SetSysClock+0xe8>)
- 8003226:	681b      	ldr	r3, [r3, #0]
- 8003228:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
- 800322c:	2b00      	cmp	r3, #0
- 800322e:	d0f9      	beq.n	8003224 <SetSysClock+0xa0>
+ 80037e2:	bf00      	nop
+ 80037e4:	4b11      	ldr	r3, [pc, #68]	; (800382c <SetSysClock+0xe8>)
+ 80037e6:	681b      	ldr	r3, [r3, #0]
+ 80037e8:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
+ 80037ec:	2b00      	cmp	r3, #0
+ 80037ee:	d0f9      	beq.n	80037e4 <SetSysClock+0xa0>
     {
     }
    
     /* Configure Flash prefetch, Instruction cache, Data cache and wait state */
     FLASH->ACR = FLASH_ACR_ICEN |FLASH_ACR_DCEN |FLASH_ACR_LATENCY_5WS;
- 8003230:	4b11      	ldr	r3, [pc, #68]	; (8003278 <SetSysClock+0xf4>)
- 8003232:	f240 6205 	movw	r2, #1541	; 0x605
- 8003236:	601a      	str	r2, [r3, #0]
+ 80037f0:	4b11      	ldr	r3, [pc, #68]	; (8003838 <SetSysClock+0xf4>)
+ 80037f2:	f240 6205 	movw	r2, #1541	; 0x605
+ 80037f6:	601a      	str	r2, [r3, #0]
 
     /* Select the main PLL as system clock source */
     RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_SW));
- 8003238:	4a0c      	ldr	r2, [pc, #48]	; (800326c <SetSysClock+0xe8>)
- 800323a:	4b0c      	ldr	r3, [pc, #48]	; (800326c <SetSysClock+0xe8>)
- 800323c:	689b      	ldr	r3, [r3, #8]
- 800323e:	f023 0303 	bic.w	r3, r3, #3
- 8003242:	6093      	str	r3, [r2, #8]
+ 80037f8:	4a0c      	ldr	r2, [pc, #48]	; (800382c <SetSysClock+0xe8>)
+ 80037fa:	4b0c      	ldr	r3, [pc, #48]	; (800382c <SetSysClock+0xe8>)
+ 80037fc:	689b      	ldr	r3, [r3, #8]
+ 80037fe:	f023 0303 	bic.w	r3, r3, #3
+ 8003802:	6093      	str	r3, [r2, #8]
     RCC->CFGR |= RCC_CFGR_SW_PLL;
- 8003244:	4a09      	ldr	r2, [pc, #36]	; (800326c <SetSysClock+0xe8>)
- 8003246:	4b09      	ldr	r3, [pc, #36]	; (800326c <SetSysClock+0xe8>)
- 8003248:	689b      	ldr	r3, [r3, #8]
- 800324a:	f043 0302 	orr.w	r3, r3, #2
- 800324e:	6093      	str	r3, [r2, #8]
+ 8003804:	4a09      	ldr	r2, [pc, #36]	; (800382c <SetSysClock+0xe8>)
+ 8003806:	4b09      	ldr	r3, [pc, #36]	; (800382c <SetSysClock+0xe8>)
+ 8003808:	689b      	ldr	r3, [r3, #8]
+ 800380a:	f043 0302 	orr.w	r3, r3, #2
+ 800380e:	6093      	str	r3, [r2, #8]
 
     /* Wait till the main PLL is used as system clock source */
     while ((RCC->CFGR & (uint32_t)RCC_CFGR_SWS ) != RCC_CFGR_SWS_PLL)
- 8003250:	bf00      	nop
- 8003252:	4b06      	ldr	r3, [pc, #24]	; (800326c <SetSysClock+0xe8>)
- 8003254:	689b      	ldr	r3, [r3, #8]
- 8003256:	f003 030c 	and.w	r3, r3, #12
- 800325a:	2b08      	cmp	r3, #8
- 800325c:	d1f9      	bne.n	8003252 <SetSysClock+0xce>
+ 8003810:	bf00      	nop
+ 8003812:	4b06      	ldr	r3, [pc, #24]	; (800382c <SetSysClock+0xe8>)
+ 8003814:	689b      	ldr	r3, [r3, #8]
+ 8003816:	f003 030c 	and.w	r3, r3, #12
+ 800381a:	2b08      	cmp	r3, #8
+ 800381c:	d1f9      	bne.n	8003812 <SetSysClock+0xce>
   else
   { /* If HSE fails to start-up, the application will have wrong clock
          configuration. User can add here some code to deal with this error */
   }
 
 }
- 800325e:	bf00      	nop
- 8003260:	370c      	adds	r7, #12
- 8003262:	46bd      	mov	sp, r7
- 8003264:	f85d 7b04 	ldr.w	r7, [sp], #4
- 8003268:	4770      	bx	lr
- 800326a:	bf00      	nop
- 800326c:	40023800 	.word	0x40023800
- 8003270:	40007000 	.word	0x40007000
- 8003274:	07405408 	.word	0x07405408
- 8003278:	40023c00 	.word	0x40023c00
-
-0800327c <__libc_init_array>:
- 800327c:	b570      	push	{r4, r5, r6, lr}
- 800327e:	4e0d      	ldr	r6, [pc, #52]	; (80032b4 <__libc_init_array+0x38>)
- 8003280:	4c0d      	ldr	r4, [pc, #52]	; (80032b8 <__libc_init_array+0x3c>)
- 8003282:	1ba4      	subs	r4, r4, r6
- 8003284:	10a4      	asrs	r4, r4, #2
- 8003286:	2500      	movs	r5, #0
- 8003288:	42a5      	cmp	r5, r4
- 800328a:	d109      	bne.n	80032a0 <__libc_init_array+0x24>
- 800328c:	4e0b      	ldr	r6, [pc, #44]	; (80032bc <__libc_init_array+0x40>)
- 800328e:	4c0c      	ldr	r4, [pc, #48]	; (80032c0 <__libc_init_array+0x44>)
- 8003290:	f000 f852 	bl	8003338 <_init>
- 8003294:	1ba4      	subs	r4, r4, r6
- 8003296:	10a4      	asrs	r4, r4, #2
- 8003298:	2500      	movs	r5, #0
- 800329a:	42a5      	cmp	r5, r4
- 800329c:	d105      	bne.n	80032aa <__libc_init_array+0x2e>
- 800329e:	bd70      	pop	{r4, r5, r6, pc}
- 80032a0:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
- 80032a4:	4798      	blx	r3
- 80032a6:	3501      	adds	r5, #1
- 80032a8:	e7ee      	b.n	8003288 <__libc_init_array+0xc>
- 80032aa:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
- 80032ae:	4798      	blx	r3
- 80032b0:	3501      	adds	r5, #1
- 80032b2:	e7f2      	b.n	800329a <__libc_init_array+0x1e>
- 80032b4:	08003350 	.word	0x08003350
- 80032b8:	08003350 	.word	0x08003350
- 80032bc:	08003350 	.word	0x08003350
- 80032c0:	08003354 	.word	0x08003354
-
-080032c4 <memcpy>:
- 80032c4:	b510      	push	{r4, lr}
- 80032c6:	1e43      	subs	r3, r0, #1
- 80032c8:	440a      	add	r2, r1
- 80032ca:	4291      	cmp	r1, r2
- 80032cc:	d100      	bne.n	80032d0 <memcpy+0xc>
- 80032ce:	bd10      	pop	{r4, pc}
- 80032d0:	f811 4b01 	ldrb.w	r4, [r1], #1
- 80032d4:	f803 4f01 	strb.w	r4, [r3, #1]!
- 80032d8:	e7f7      	b.n	80032ca <memcpy+0x6>
-
-080032da <memset>:
- 80032da:	4402      	add	r2, r0
- 80032dc:	4603      	mov	r3, r0
- 80032de:	4293      	cmp	r3, r2
- 80032e0:	d100      	bne.n	80032e4 <memset+0xa>
- 80032e2:	4770      	bx	lr
- 80032e4:	f803 1b01 	strb.w	r1, [r3], #1
- 80032e8:	e7f9      	b.n	80032de <memset+0x4>
- 80032ea:	0000      	movs	r0, r0
- 80032ec:	454c4449 	.word	0x454c4449
- 80032f0:	00000000 	.word	0x00000000
- 80032f4:	20726d54 	.word	0x20726d54
- 80032f8:	00637653 	.word	0x00637653
- 80032fc:	51726d54 	.word	0x51726d54
- 8003300:	00000000 	.word	0x00000000
- 8003304:	6e69614d 	.word	0x6e69614d
- 8003308:	75657551 	.word	0x75657551
- 800330c:	00000065 	.word	0x00000065
- 8003310:	65764578 	.word	0x65764578
- 8003314:	6553746e 	.word	0x6553746e
- 8003318:	6870616d 	.word	0x6870616d
- 800331c:	0065726f 	.word	0x0065726f
- 8003320:	00007852 	.word	0x00007852
- 8003324:	00005854 	.word	0x00005854
- 8003328:	006d6553 	.word	0x006d6553
- 800332c:	5444454c 	.word	0x5444454c
- 8003330:	72656d69 	.word	0x72656d69
- 8003334:	00000000 	.word	0x00000000
-
-08003338 <_init>:
- 8003338:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
- 800333a:	bf00      	nop
- 800333c:	bcf8      	pop	{r3, r4, r5, r6, r7}
- 800333e:	bc08      	pop	{r3}
- 8003340:	469e      	mov	lr, r3
- 8003342:	4770      	bx	lr
-
-08003344 <_fini>:
- 8003344:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
- 8003346:	bf00      	nop
- 8003348:	bcf8      	pop	{r3, r4, r5, r6, r7}
- 800334a:	bc08      	pop	{r3}
- 800334c:	469e      	mov	lr, r3
- 800334e:	4770      	bx	lr
+ 800381e:	bf00      	nop
+ 8003820:	370c      	adds	r7, #12
+ 8003822:	46bd      	mov	sp, r7
+ 8003824:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8003828:	4770      	bx	lr
+ 800382a:	bf00      	nop
+ 800382c:	40023800 	.word	0x40023800
+ 8003830:	40007000 	.word	0x40007000
+ 8003834:	07405408 	.word	0x07405408
+ 8003838:	40023c00 	.word	0x40023c00
+
+0800383c <ts_itoa>:
+**  Abstract: Convert integer to ascii
+**  Returns:  void
+**---------------------------------------------------------------------------
+*/
+void ts_itoa(char **buf, unsigned int d, int base)
+{
+ 800383c:	b480      	push	{r7}
+ 800383e:	b087      	sub	sp, #28
+ 8003840:	af00      	add	r7, sp, #0
+ 8003842:	60f8      	str	r0, [r7, #12]
+ 8003844:	60b9      	str	r1, [r7, #8]
+ 8003846:	607a      	str	r2, [r7, #4]
+	int div = 1;
+ 8003848:	2301      	movs	r3, #1
+ 800384a:	617b      	str	r3, [r7, #20]
+	while (d/div >= base)
+ 800384c:	e004      	b.n	8003858 <ts_itoa+0x1c>
+		div *= base;
+ 800384e:	697b      	ldr	r3, [r7, #20]
+ 8003850:	687a      	ldr	r2, [r7, #4]
+ 8003852:	fb02 f303 	mul.w	r3, r2, r3
+ 8003856:	617b      	str	r3, [r7, #20]
+	while (d/div >= base)
+ 8003858:	697b      	ldr	r3, [r7, #20]
+ 800385a:	68ba      	ldr	r2, [r7, #8]
+ 800385c:	fbb2 f2f3 	udiv	r2, r2, r3
+ 8003860:	687b      	ldr	r3, [r7, #4]
+ 8003862:	429a      	cmp	r2, r3
+ 8003864:	d2f3      	bcs.n	800384e <ts_itoa+0x12>
+
+	while (div != 0)
+ 8003866:	e029      	b.n	80038bc <ts_itoa+0x80>
+	{
+		int num = d/div;
+ 8003868:	697b      	ldr	r3, [r7, #20]
+ 800386a:	68ba      	ldr	r2, [r7, #8]
+ 800386c:	fbb2 f3f3 	udiv	r3, r2, r3
+ 8003870:	613b      	str	r3, [r7, #16]
+		d = d%div;
+ 8003872:	697a      	ldr	r2, [r7, #20]
+ 8003874:	68bb      	ldr	r3, [r7, #8]
+ 8003876:	fbb3 f1f2 	udiv	r1, r3, r2
+ 800387a:	fb02 f201 	mul.w	r2, r2, r1
+ 800387e:	1a9b      	subs	r3, r3, r2
+ 8003880:	60bb      	str	r3, [r7, #8]
+		div /= base;
+ 8003882:	697a      	ldr	r2, [r7, #20]
+ 8003884:	687b      	ldr	r3, [r7, #4]
+ 8003886:	fb92 f3f3 	sdiv	r3, r2, r3
+ 800388a:	617b      	str	r3, [r7, #20]
+		if (num > 9)
+ 800388c:	693b      	ldr	r3, [r7, #16]
+ 800388e:	2b09      	cmp	r3, #9
+ 8003890:	dd0a      	ble.n	80038a8 <ts_itoa+0x6c>
+			*((*buf)++) = (num-10) + 'A';
+ 8003892:	68fb      	ldr	r3, [r7, #12]
+ 8003894:	681b      	ldr	r3, [r3, #0]
+ 8003896:	1c59      	adds	r1, r3, #1
+ 8003898:	68fa      	ldr	r2, [r7, #12]
+ 800389a:	6011      	str	r1, [r2, #0]
+ 800389c:	693a      	ldr	r2, [r7, #16]
+ 800389e:	b2d2      	uxtb	r2, r2
+ 80038a0:	3237      	adds	r2, #55	; 0x37
+ 80038a2:	b2d2      	uxtb	r2, r2
+ 80038a4:	701a      	strb	r2, [r3, #0]
+ 80038a6:	e009      	b.n	80038bc <ts_itoa+0x80>
+		else
+			*((*buf)++) = num + '0';
+ 80038a8:	68fb      	ldr	r3, [r7, #12]
+ 80038aa:	681b      	ldr	r3, [r3, #0]
+ 80038ac:	1c59      	adds	r1, r3, #1
+ 80038ae:	68fa      	ldr	r2, [r7, #12]
+ 80038b0:	6011      	str	r1, [r2, #0]
+ 80038b2:	693a      	ldr	r2, [r7, #16]
+ 80038b4:	b2d2      	uxtb	r2, r2
+ 80038b6:	3230      	adds	r2, #48	; 0x30
+ 80038b8:	b2d2      	uxtb	r2, r2
+ 80038ba:	701a      	strb	r2, [r3, #0]
+	while (div != 0)
+ 80038bc:	697b      	ldr	r3, [r7, #20]
+ 80038be:	2b00      	cmp	r3, #0
+ 80038c0:	d1d2      	bne.n	8003868 <ts_itoa+0x2c>
+	}
+}
+ 80038c2:	bf00      	nop
+ 80038c4:	371c      	adds	r7, #28
+ 80038c6:	46bd      	mov	sp, r7
+ 80038c8:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 80038cc:	4770      	bx	lr
+
+080038ce <ts_formatstring>:
+**  Abstract: Writes arguments va to buffer buf according to format fmt
+**  Returns:  Length of string
+**---------------------------------------------------------------------------
+*/
+int ts_formatstring(char *buf, const char *fmt, va_list va)
+{
+ 80038ce:	b580      	push	{r7, lr}
+ 80038d0:	b088      	sub	sp, #32
+ 80038d2:	af00      	add	r7, sp, #0
+ 80038d4:	60f8      	str	r0, [r7, #12]
+ 80038d6:	60b9      	str	r1, [r7, #8]
+ 80038d8:	607a      	str	r2, [r7, #4]
+	char *start_buf = buf;
+ 80038da:	68fb      	ldr	r3, [r7, #12]
+ 80038dc:	617b      	str	r3, [r7, #20]
+	while(*fmt)
+ 80038de:	e07d      	b.n	80039dc <ts_formatstring+0x10e>
+	{
+		/* Character needs formating? */
+		if (*fmt == '%')
+ 80038e0:	68bb      	ldr	r3, [r7, #8]
+ 80038e2:	781b      	ldrb	r3, [r3, #0]
+ 80038e4:	2b25      	cmp	r3, #37	; 0x25
+ 80038e6:	d171      	bne.n	80039cc <ts_formatstring+0xfe>
+		{
+			switch (*(++fmt))
+ 80038e8:	68bb      	ldr	r3, [r7, #8]
+ 80038ea:	3301      	adds	r3, #1
+ 80038ec:	60bb      	str	r3, [r7, #8]
+ 80038ee:	68bb      	ldr	r3, [r7, #8]
+ 80038f0:	781b      	ldrb	r3, [r3, #0]
+ 80038f2:	2b64      	cmp	r3, #100	; 0x64
+ 80038f4:	d01e      	beq.n	8003934 <ts_formatstring+0x66>
+ 80038f6:	2b64      	cmp	r3, #100	; 0x64
+ 80038f8:	dc06      	bgt.n	8003908 <ts_formatstring+0x3a>
+ 80038fa:	2b58      	cmp	r3, #88	; 0x58
+ 80038fc:	d050      	beq.n	80039a0 <ts_formatstring+0xd2>
+ 80038fe:	2b63      	cmp	r3, #99	; 0x63
+ 8003900:	d00e      	beq.n	8003920 <ts_formatstring+0x52>
+ 8003902:	2b25      	cmp	r3, #37	; 0x25
+ 8003904:	d058      	beq.n	80039b8 <ts_formatstring+0xea>
+ 8003906:	e05d      	b.n	80039c4 <ts_formatstring+0xf6>
+ 8003908:	2b73      	cmp	r3, #115	; 0x73
+ 800390a:	d02b      	beq.n	8003964 <ts_formatstring+0x96>
+ 800390c:	2b73      	cmp	r3, #115	; 0x73
+ 800390e:	dc02      	bgt.n	8003916 <ts_formatstring+0x48>
+ 8003910:	2b69      	cmp	r3, #105	; 0x69
+ 8003912:	d00f      	beq.n	8003934 <ts_formatstring+0x66>
+ 8003914:	e056      	b.n	80039c4 <ts_formatstring+0xf6>
+ 8003916:	2b75      	cmp	r3, #117	; 0x75
+ 8003918:	d037      	beq.n	800398a <ts_formatstring+0xbc>
+ 800391a:	2b78      	cmp	r3, #120	; 0x78
+ 800391c:	d040      	beq.n	80039a0 <ts_formatstring+0xd2>
+ 800391e:	e051      	b.n	80039c4 <ts_formatstring+0xf6>
+			{
+			  case 'c':
+				*buf++ = va_arg(va, int);
+ 8003920:	68fb      	ldr	r3, [r7, #12]
+ 8003922:	1c5a      	adds	r2, r3, #1
+ 8003924:	60fa      	str	r2, [r7, #12]
+ 8003926:	687a      	ldr	r2, [r7, #4]
+ 8003928:	1d11      	adds	r1, r2, #4
+ 800392a:	6079      	str	r1, [r7, #4]
+ 800392c:	6812      	ldr	r2, [r2, #0]
+ 800392e:	b2d2      	uxtb	r2, r2
+ 8003930:	701a      	strb	r2, [r3, #0]
+				break;
+ 8003932:	e047      	b.n	80039c4 <ts_formatstring+0xf6>
+			  case 'd':
+			  case 'i':
+				{
+					signed int val = va_arg(va, signed int);
+ 8003934:	687b      	ldr	r3, [r7, #4]
+ 8003936:	1d1a      	adds	r2, r3, #4
+ 8003938:	607a      	str	r2, [r7, #4]
+ 800393a:	681b      	ldr	r3, [r3, #0]
+ 800393c:	61fb      	str	r3, [r7, #28]
+					if (val < 0)
+ 800393e:	69fb      	ldr	r3, [r7, #28]
+ 8003940:	2b00      	cmp	r3, #0
+ 8003942:	da07      	bge.n	8003954 <ts_formatstring+0x86>
+					{
+						val *= -1;
+ 8003944:	69fb      	ldr	r3, [r7, #28]
+ 8003946:	425b      	negs	r3, r3
+ 8003948:	61fb      	str	r3, [r7, #28]
+						*buf++ = '-';
+ 800394a:	68fb      	ldr	r3, [r7, #12]
+ 800394c:	1c5a      	adds	r2, r3, #1
+ 800394e:	60fa      	str	r2, [r7, #12]
+ 8003950:	222d      	movs	r2, #45	; 0x2d
+ 8003952:	701a      	strb	r2, [r3, #0]
+					}
+					ts_itoa(&buf, val, 10);
+ 8003954:	69f9      	ldr	r1, [r7, #28]
+ 8003956:	f107 030c 	add.w	r3, r7, #12
+ 800395a:	220a      	movs	r2, #10
+ 800395c:	4618      	mov	r0, r3
+ 800395e:	f7ff ff6d 	bl	800383c <ts_itoa>
+				}
+				break;
+ 8003962:	e02f      	b.n	80039c4 <ts_formatstring+0xf6>
+			  case 's':
+				{
+					char * arg = va_arg(va, char *);
+ 8003964:	687b      	ldr	r3, [r7, #4]
+ 8003966:	1d1a      	adds	r2, r3, #4
+ 8003968:	607a      	str	r2, [r7, #4]
+ 800396a:	681b      	ldr	r3, [r3, #0]
+ 800396c:	61bb      	str	r3, [r7, #24]
+					while (*arg)
+ 800396e:	e007      	b.n	8003980 <ts_formatstring+0xb2>
+					{
+						*buf++ = *arg++;
+ 8003970:	68fb      	ldr	r3, [r7, #12]
+ 8003972:	1c5a      	adds	r2, r3, #1
+ 8003974:	60fa      	str	r2, [r7, #12]
+ 8003976:	69ba      	ldr	r2, [r7, #24]
+ 8003978:	1c51      	adds	r1, r2, #1
+ 800397a:	61b9      	str	r1, [r7, #24]
+ 800397c:	7812      	ldrb	r2, [r2, #0]
+ 800397e:	701a      	strb	r2, [r3, #0]
+					while (*arg)
+ 8003980:	69bb      	ldr	r3, [r7, #24]
+ 8003982:	781b      	ldrb	r3, [r3, #0]
+ 8003984:	2b00      	cmp	r3, #0
+ 8003986:	d1f3      	bne.n	8003970 <ts_formatstring+0xa2>
+					}
+				}
+				break;
+ 8003988:	e01c      	b.n	80039c4 <ts_formatstring+0xf6>
+			  case 'u':
+					ts_itoa(&buf, va_arg(va, unsigned int), 10);
+ 800398a:	687b      	ldr	r3, [r7, #4]
+ 800398c:	1d1a      	adds	r2, r3, #4
+ 800398e:	607a      	str	r2, [r7, #4]
+ 8003990:	6819      	ldr	r1, [r3, #0]
+ 8003992:	f107 030c 	add.w	r3, r7, #12
+ 8003996:	220a      	movs	r2, #10
+ 8003998:	4618      	mov	r0, r3
+ 800399a:	f7ff ff4f 	bl	800383c <ts_itoa>
+				break;
+ 800399e:	e011      	b.n	80039c4 <ts_formatstring+0xf6>
+			  case 'x':
+			  case 'X':
+					ts_itoa(&buf, va_arg(va, int), 16);
+ 80039a0:	687b      	ldr	r3, [r7, #4]
+ 80039a2:	1d1a      	adds	r2, r3, #4
+ 80039a4:	607a      	str	r2, [r7, #4]
+ 80039a6:	681b      	ldr	r3, [r3, #0]
+ 80039a8:	4619      	mov	r1, r3
+ 80039aa:	f107 030c 	add.w	r3, r7, #12
+ 80039ae:	2210      	movs	r2, #16
+ 80039b0:	4618      	mov	r0, r3
+ 80039b2:	f7ff ff43 	bl	800383c <ts_itoa>
+				break;
+ 80039b6:	e005      	b.n	80039c4 <ts_formatstring+0xf6>
+			  case '%':
+				  *buf++ = '%';
+ 80039b8:	68fb      	ldr	r3, [r7, #12]
+ 80039ba:	1c5a      	adds	r2, r3, #1
+ 80039bc:	60fa      	str	r2, [r7, #12]
+ 80039be:	2225      	movs	r2, #37	; 0x25
+ 80039c0:	701a      	strb	r2, [r3, #0]
+				  break;
+ 80039c2:	bf00      	nop
+			}
+			fmt++;
+ 80039c4:	68bb      	ldr	r3, [r7, #8]
+ 80039c6:	3301      	adds	r3, #1
+ 80039c8:	60bb      	str	r3, [r7, #8]
+ 80039ca:	e007      	b.n	80039dc <ts_formatstring+0x10e>
+		}
+		/* Else just copy */
+		else
+		{
+			*buf++ = *fmt++;
+ 80039cc:	68fb      	ldr	r3, [r7, #12]
+ 80039ce:	1c5a      	adds	r2, r3, #1
+ 80039d0:	60fa      	str	r2, [r7, #12]
+ 80039d2:	68ba      	ldr	r2, [r7, #8]
+ 80039d4:	1c51      	adds	r1, r2, #1
+ 80039d6:	60b9      	str	r1, [r7, #8]
+ 80039d8:	7812      	ldrb	r2, [r2, #0]
+ 80039da:	701a      	strb	r2, [r3, #0]
+	while(*fmt)
+ 80039dc:	68bb      	ldr	r3, [r7, #8]
+ 80039de:	781b      	ldrb	r3, [r3, #0]
+ 80039e0:	2b00      	cmp	r3, #0
+ 80039e2:	f47f af7d 	bne.w	80038e0 <ts_formatstring+0x12>
+		}
+	}
+	*buf = 0;
+ 80039e6:	68fb      	ldr	r3, [r7, #12]
+ 80039e8:	2200      	movs	r2, #0
+ 80039ea:	701a      	strb	r2, [r3, #0]
+
+	return (int)(buf - start_buf);
+ 80039ec:	68fb      	ldr	r3, [r7, #12]
+ 80039ee:	461a      	mov	r2, r3
+ 80039f0:	697b      	ldr	r3, [r7, #20]
+ 80039f2:	1ad3      	subs	r3, r2, r3
+}
+ 80039f4:	4618      	mov	r0, r3
+ 80039f6:	3720      	adds	r7, #32
+ 80039f8:	46bd      	mov	sp, r7
+ 80039fa:	bd80      	pop	{r7, pc}
+
+080039fc <ts_formatlength>:
+**            format string and va_list va
+**  Returns:  Maximum length
+**---------------------------------------------------------------------------
+*/
+int ts_formatlength(const char *fmt, va_list va)
+{
+ 80039fc:	b480      	push	{r7}
+ 80039fe:	b085      	sub	sp, #20
+ 8003a00:	af00      	add	r7, sp, #0
+ 8003a02:	6078      	str	r0, [r7, #4]
+ 8003a04:	6039      	str	r1, [r7, #0]
+	int length = 0;
+ 8003a06:	2300      	movs	r3, #0
+ 8003a08:	60fb      	str	r3, [r7, #12]
+	while (*fmt)
+ 8003a0a:	e081      	b.n	8003b10 <ts_formatlength+0x114>
+	{
+		if (*fmt == '%')
+ 8003a0c:	687b      	ldr	r3, [r7, #4]
+ 8003a0e:	781b      	ldrb	r3, [r3, #0]
+ 8003a10:	2b25      	cmp	r3, #37	; 0x25
+ 8003a12:	d177      	bne.n	8003b04 <ts_formatlength+0x108>
+		{
+			++fmt;
+ 8003a14:	687b      	ldr	r3, [r7, #4]
+ 8003a16:	3301      	adds	r3, #1
+ 8003a18:	607b      	str	r3, [r7, #4]
+			switch (*fmt)
+ 8003a1a:	687b      	ldr	r3, [r7, #4]
+ 8003a1c:	781b      	ldrb	r3, [r3, #0]
+ 8003a1e:	3b58      	subs	r3, #88	; 0x58
+ 8003a20:	2b20      	cmp	r3, #32
+ 8003a22:	d86a      	bhi.n	8003afa <ts_formatlength+0xfe>
+ 8003a24:	a201      	add	r2, pc, #4	; (adr r2, 8003a2c <ts_formatlength+0x30>)
+ 8003a26:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
+ 8003a2a:	bf00      	nop
+ 8003a2c:	08003aed 	.word	0x08003aed
+ 8003a30:	08003afb 	.word	0x08003afb
+ 8003a34:	08003afb 	.word	0x08003afb
+ 8003a38:	08003afb 	.word	0x08003afb
+ 8003a3c:	08003afb 	.word	0x08003afb
+ 8003a40:	08003afb 	.word	0x08003afb
+ 8003a44:	08003afb 	.word	0x08003afb
+ 8003a48:	08003afb 	.word	0x08003afb
+ 8003a4c:	08003afb 	.word	0x08003afb
+ 8003a50:	08003afb 	.word	0x08003afb
+ 8003a54:	08003afb 	.word	0x08003afb
+ 8003a58:	08003ab1 	.word	0x08003ab1
+ 8003a5c:	08003abf 	.word	0x08003abf
+ 8003a60:	08003afb 	.word	0x08003afb
+ 8003a64:	08003afb 	.word	0x08003afb
+ 8003a68:	08003afb 	.word	0x08003afb
+ 8003a6c:	08003afb 	.word	0x08003afb
+ 8003a70:	08003abf 	.word	0x08003abf
+ 8003a74:	08003afb 	.word	0x08003afb
+ 8003a78:	08003afb 	.word	0x08003afb
+ 8003a7c:	08003afb 	.word	0x08003afb
+ 8003a80:	08003afb 	.word	0x08003afb
+ 8003a84:	08003afb 	.word	0x08003afb
+ 8003a88:	08003afb 	.word	0x08003afb
+ 8003a8c:	08003afb 	.word	0x08003afb
+ 8003a90:	08003afb 	.word	0x08003afb
+ 8003a94:	08003afb 	.word	0x08003afb
+ 8003a98:	08003acd 	.word	0x08003acd
+ 8003a9c:	08003afb 	.word	0x08003afb
+ 8003aa0:	08003abf 	.word	0x08003abf
+ 8003aa4:	08003afb 	.word	0x08003afb
+ 8003aa8:	08003afb 	.word	0x08003afb
+ 8003aac:	08003aed 	.word	0x08003aed
+			{
+			  case 'c':
+		  		  va_arg(va, int);
+ 8003ab0:	683b      	ldr	r3, [r7, #0]
+ 8003ab2:	3304      	adds	r3, #4
+ 8003ab4:	603b      	str	r3, [r7, #0]
+				  ++length;
+ 8003ab6:	68fb      	ldr	r3, [r7, #12]
+ 8003ab8:	3301      	adds	r3, #1
+ 8003aba:	60fb      	str	r3, [r7, #12]
+				  break;
+ 8003abc:	e025      	b.n	8003b0a <ts_formatlength+0x10e>
+			  case 'd':
+			  case 'i':
+			  case 'u':
+				  /* 32 bits integer is max 11 characters with minus sign */
+				  length += 11;
+ 8003abe:	68fb      	ldr	r3, [r7, #12]
+ 8003ac0:	330b      	adds	r3, #11
+ 8003ac2:	60fb      	str	r3, [r7, #12]
+				  va_arg(va, int);
+ 8003ac4:	683b      	ldr	r3, [r7, #0]
+ 8003ac6:	3304      	adds	r3, #4
+ 8003ac8:	603b      	str	r3, [r7, #0]
+				  break;
+ 8003aca:	e01e      	b.n	8003b0a <ts_formatlength+0x10e>
+			  case 's':
+			  	  {
+			  		  char * str = va_arg(va, char *);
+ 8003acc:	683b      	ldr	r3, [r7, #0]
+ 8003ace:	1d1a      	adds	r2, r3, #4
+ 8003ad0:	603a      	str	r2, [r7, #0]
+ 8003ad2:	681b      	ldr	r3, [r3, #0]
+ 8003ad4:	60bb      	str	r3, [r7, #8]
+			  		  while (*str++)
+ 8003ad6:	e002      	b.n	8003ade <ts_formatlength+0xe2>
+			  			  ++length;
+ 8003ad8:	68fb      	ldr	r3, [r7, #12]
+ 8003ada:	3301      	adds	r3, #1
+ 8003adc:	60fb      	str	r3, [r7, #12]
+			  		  while (*str++)
+ 8003ade:	68bb      	ldr	r3, [r7, #8]
+ 8003ae0:	1c5a      	adds	r2, r3, #1
+ 8003ae2:	60ba      	str	r2, [r7, #8]
+ 8003ae4:	781b      	ldrb	r3, [r3, #0]
+ 8003ae6:	2b00      	cmp	r3, #0
+ 8003ae8:	d1f6      	bne.n	8003ad8 <ts_formatlength+0xdc>
+			  	  }
+				  break;
+ 8003aea:	e00e      	b.n	8003b0a <ts_formatlength+0x10e>
+			  case 'x':
+			  case 'X':
+				  /* 32 bits integer as hex is max 8 characters */
+				  length += 8;
+ 8003aec:	68fb      	ldr	r3, [r7, #12]
+ 8003aee:	3308      	adds	r3, #8
+ 8003af0:	60fb      	str	r3, [r7, #12]
+				  va_arg(va, unsigned int);
+ 8003af2:	683b      	ldr	r3, [r7, #0]
+ 8003af4:	3304      	adds	r3, #4
+ 8003af6:	603b      	str	r3, [r7, #0]
+				  break;
+ 8003af8:	e007      	b.n	8003b0a <ts_formatlength+0x10e>
+			  default:
+				  ++length;
+ 8003afa:	68fb      	ldr	r3, [r7, #12]
+ 8003afc:	3301      	adds	r3, #1
+ 8003afe:	60fb      	str	r3, [r7, #12]
+				  break;
+ 8003b00:	bf00      	nop
+ 8003b02:	e002      	b.n	8003b0a <ts_formatlength+0x10e>
+			}
+		}
+		else
+		{
+			++length;
+ 8003b04:	68fb      	ldr	r3, [r7, #12]
+ 8003b06:	3301      	adds	r3, #1
+ 8003b08:	60fb      	str	r3, [r7, #12]
+		}
+		++fmt;
+ 8003b0a:	687b      	ldr	r3, [r7, #4]
+ 8003b0c:	3301      	adds	r3, #1
+ 8003b0e:	607b      	str	r3, [r7, #4]
+	while (*fmt)
+ 8003b10:	687b      	ldr	r3, [r7, #4]
+ 8003b12:	781b      	ldrb	r3, [r3, #0]
+ 8003b14:	2b00      	cmp	r3, #0
+ 8003b16:	f47f af79 	bne.w	8003a0c <ts_formatlength+0x10>
+	}
+	return length;
+ 8003b1a:	68fb      	ldr	r3, [r7, #12]
+}
+ 8003b1c:	4618      	mov	r0, r3
+ 8003b1e:	3714      	adds	r7, #20
+ 8003b20:	46bd      	mov	sp, r7
+ 8003b22:	f85d 7b04 	ldr.w	r7, [sp], #4
+ 8003b26:	4770      	bx	lr
+
+08003b28 <printf>:
+**  Returns:  Number of bytes written
+**
+**===========================================================================
+*/
+int printf(const char *fmt, ...)
+{
+ 8003b28:	b40f      	push	{r0, r1, r2, r3}
+ 8003b2a:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
+ 8003b2e:	b085      	sub	sp, #20
+ 8003b30:	af00      	add	r7, sp, #0
+	int length = 0;
+ 8003b32:	2300      	movs	r3, #0
+ 8003b34:	60fb      	str	r3, [r7, #12]
+	va_list va;
+	va_start(va, fmt);
+ 8003b36:	f107 0334 	add.w	r3, r7, #52	; 0x34
+ 8003b3a:	603b      	str	r3, [r7, #0]
+	length = ts_formatlength(fmt, va);
+ 8003b3c:	6839      	ldr	r1, [r7, #0]
+ 8003b3e:	6b38      	ldr	r0, [r7, #48]	; 0x30
+ 8003b40:	f7ff ff5c 	bl	80039fc <ts_formatlength>
+ 8003b44:	60f8      	str	r0, [r7, #12]
+	va_end(va);
+	{
+ 8003b46:	466b      	mov	r3, sp
+ 8003b48:	461e      	mov	r6, r3
+		char buf[length];
+ 8003b4a:	68f9      	ldr	r1, [r7, #12]
+ 8003b4c:	1e4b      	subs	r3, r1, #1
+ 8003b4e:	60bb      	str	r3, [r7, #8]
+ 8003b50:	460b      	mov	r3, r1
+ 8003b52:	461a      	mov	r2, r3
+ 8003b54:	f04f 0300 	mov.w	r3, #0
+ 8003b58:	ea4f 09c3 	mov.w	r9, r3, lsl #3
+ 8003b5c:	ea49 7952 	orr.w	r9, r9, r2, lsr #29
+ 8003b60:	ea4f 08c2 	mov.w	r8, r2, lsl #3
+ 8003b64:	460b      	mov	r3, r1
+ 8003b66:	461a      	mov	r2, r3
+ 8003b68:	f04f 0300 	mov.w	r3, #0
+ 8003b6c:	00dd      	lsls	r5, r3, #3
+ 8003b6e:	ea45 7552 	orr.w	r5, r5, r2, lsr #29
+ 8003b72:	00d4      	lsls	r4, r2, #3
+ 8003b74:	460b      	mov	r3, r1
+ 8003b76:	3307      	adds	r3, #7
+ 8003b78:	08db      	lsrs	r3, r3, #3
+ 8003b7a:	00db      	lsls	r3, r3, #3
+ 8003b7c:	ebad 0d03 	sub.w	sp, sp, r3
+ 8003b80:	466b      	mov	r3, sp
+ 8003b82:	3300      	adds	r3, #0
+ 8003b84:	607b      	str	r3, [r7, #4]
+		va_start(va, fmt);
+ 8003b86:	f107 0334 	add.w	r3, r7, #52	; 0x34
+ 8003b8a:	603b      	str	r3, [r7, #0]
+		length = ts_formatstring(buf, fmt, va);
+ 8003b8c:	687b      	ldr	r3, [r7, #4]
+ 8003b8e:	683a      	ldr	r2, [r7, #0]
+ 8003b90:	6b39      	ldr	r1, [r7, #48]	; 0x30
+ 8003b92:	4618      	mov	r0, r3
+ 8003b94:	f7ff fe9b 	bl	80038ce <ts_formatstring>
+ 8003b98:	60f8      	str	r0, [r7, #12]
+		length = _write(1, buf, length);
+ 8003b9a:	687b      	ldr	r3, [r7, #4]
+ 8003b9c:	68fa      	ldr	r2, [r7, #12]
+ 8003b9e:	4619      	mov	r1, r3
+ 8003ba0:	2001      	movs	r0, #1
+ 8003ba2:	f000 f959 	bl	8003e58 <_write>
+ 8003ba6:	60f8      	str	r0, [r7, #12]
+ 8003ba8:	46b5      	mov	sp, r6
+		va_end(va);
+	}
+	return length;
+ 8003baa:	68fb      	ldr	r3, [r7, #12]
+}
+ 8003bac:	4618      	mov	r0, r3
+ 8003bae:	3714      	adds	r7, #20
+ 8003bb0:	46bd      	mov	sp, r7
+ 8003bb2:	e8bd 43f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, lr}
+ 8003bb6:	b004      	add	sp, #16
+ 8003bb8:	4770      	bx	lr
+	...
+
+08003bbc <__libc_init_array>:
+ 8003bbc:	b570      	push	{r4, r5, r6, lr}
+ 8003bbe:	4e0d      	ldr	r6, [pc, #52]	; (8003bf4 <__libc_init_array+0x38>)
+ 8003bc0:	4c0d      	ldr	r4, [pc, #52]	; (8003bf8 <__libc_init_array+0x3c>)
+ 8003bc2:	1ba4      	subs	r4, r4, r6
+ 8003bc4:	10a4      	asrs	r4, r4, #2
+ 8003bc6:	2500      	movs	r5, #0
+ 8003bc8:	42a5      	cmp	r5, r4
+ 8003bca:	d109      	bne.n	8003be0 <__libc_init_array+0x24>
+ 8003bcc:	4e0b      	ldr	r6, [pc, #44]	; (8003bfc <__libc_init_array+0x40>)
+ 8003bce:	4c0c      	ldr	r4, [pc, #48]	; (8003c00 <__libc_init_array+0x44>)
+ 8003bd0:	f000 f98a 	bl	8003ee8 <_init>
+ 8003bd4:	1ba4      	subs	r4, r4, r6
+ 8003bd6:	10a4      	asrs	r4, r4, #2
+ 8003bd8:	2500      	movs	r5, #0
+ 8003bda:	42a5      	cmp	r5, r4
+ 8003bdc:	d105      	bne.n	8003bea <__libc_init_array+0x2e>
+ 8003bde:	bd70      	pop	{r4, r5, r6, pc}
+ 8003be0:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
+ 8003be4:	4798      	blx	r3
+ 8003be6:	3501      	adds	r5, #1
+ 8003be8:	e7ee      	b.n	8003bc8 <__libc_init_array+0xc>
+ 8003bea:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
+ 8003bee:	4798      	blx	r3
+ 8003bf0:	3501      	adds	r5, #1
+ 8003bf2:	e7f2      	b.n	8003bda <__libc_init_array+0x1e>
+ 8003bf4:	08003f00 	.word	0x08003f00
+ 8003bf8:	08003f00 	.word	0x08003f00
+ 8003bfc:	08003f00 	.word	0x08003f00
+ 8003c00:	08003f04 	.word	0x08003f04
+
+08003c04 <memcpy>:
+ 8003c04:	b510      	push	{r4, lr}
+ 8003c06:	1e43      	subs	r3, r0, #1
+ 8003c08:	440a      	add	r2, r1
+ 8003c0a:	4291      	cmp	r1, r2
+ 8003c0c:	d100      	bne.n	8003c10 <memcpy+0xc>
+ 8003c0e:	bd10      	pop	{r4, pc}
+ 8003c10:	f811 4b01 	ldrb.w	r4, [r1], #1
+ 8003c14:	f803 4f01 	strb.w	r4, [r3, #1]!
+ 8003c18:	e7f7      	b.n	8003c0a <memcpy+0x6>
+
+08003c1a <memset>:
+ 8003c1a:	4402      	add	r2, r0
+ 8003c1c:	4603      	mov	r3, r0
+ 8003c1e:	4293      	cmp	r3, r2
+ 8003c20:	d100      	bne.n	8003c24 <memset+0xa>
+ 8003c22:	4770      	bx	lr
+ 8003c24:	f803 1b01 	strb.w	r1, [r3], #1
+ 8003c28:	e7f9      	b.n	8003c1e <memset+0x4>
+	...
+
+08003c2c <srand>:
+ 8003c2c:	b538      	push	{r3, r4, r5, lr}
+ 8003c2e:	4b12      	ldr	r3, [pc, #72]	; (8003c78 <srand+0x4c>)
+ 8003c30:	681c      	ldr	r4, [r3, #0]
+ 8003c32:	6ba3      	ldr	r3, [r4, #56]	; 0x38
+ 8003c34:	4605      	mov	r5, r0
+ 8003c36:	b9d3      	cbnz	r3, 8003c6e <srand+0x42>
+ 8003c38:	2018      	movs	r0, #24
+ 8003c3a:	f000 f87f 	bl	8003d3c <malloc>
+ 8003c3e:	f243 330e 	movw	r3, #13070	; 0x330e
+ 8003c42:	63a0      	str	r0, [r4, #56]	; 0x38
+ 8003c44:	8003      	strh	r3, [r0, #0]
+ 8003c46:	f64a 33cd 	movw	r3, #43981	; 0xabcd
+ 8003c4a:	8043      	strh	r3, [r0, #2]
+ 8003c4c:	f241 2334 	movw	r3, #4660	; 0x1234
+ 8003c50:	8083      	strh	r3, [r0, #4]
+ 8003c52:	f24e 636d 	movw	r3, #58989	; 0xe66d
+ 8003c56:	80c3      	strh	r3, [r0, #6]
+ 8003c58:	f64d 63ec 	movw	r3, #57068	; 0xdeec
+ 8003c5c:	8103      	strh	r3, [r0, #8]
+ 8003c5e:	2305      	movs	r3, #5
+ 8003c60:	8143      	strh	r3, [r0, #10]
+ 8003c62:	230b      	movs	r3, #11
+ 8003c64:	8183      	strh	r3, [r0, #12]
+ 8003c66:	2201      	movs	r2, #1
+ 8003c68:	2300      	movs	r3, #0
+ 8003c6a:	e9c0 2304 	strd	r2, r3, [r0, #16]
+ 8003c6e:	6ba3      	ldr	r3, [r4, #56]	; 0x38
+ 8003c70:	2200      	movs	r2, #0
+ 8003c72:	611d      	str	r5, [r3, #16]
+ 8003c74:	615a      	str	r2, [r3, #20]
+ 8003c76:	bd38      	pop	{r3, r4, r5, pc}
+ 8003c78:	2000001c 	.word	0x2000001c
+
+08003c7c <rand>:
+ 8003c7c:	4b19      	ldr	r3, [pc, #100]	; (8003ce4 <rand+0x68>)
+ 8003c7e:	b510      	push	{r4, lr}
+ 8003c80:	681c      	ldr	r4, [r3, #0]
+ 8003c82:	6ba3      	ldr	r3, [r4, #56]	; 0x38
+ 8003c84:	b9d3      	cbnz	r3, 8003cbc <rand+0x40>
+ 8003c86:	2018      	movs	r0, #24
+ 8003c88:	f000 f858 	bl	8003d3c <malloc>
+ 8003c8c:	f243 330e 	movw	r3, #13070	; 0x330e
+ 8003c90:	63a0      	str	r0, [r4, #56]	; 0x38
+ 8003c92:	8003      	strh	r3, [r0, #0]
+ 8003c94:	f64a 33cd 	movw	r3, #43981	; 0xabcd
+ 8003c98:	8043      	strh	r3, [r0, #2]
+ 8003c9a:	f241 2334 	movw	r3, #4660	; 0x1234
+ 8003c9e:	8083      	strh	r3, [r0, #4]
+ 8003ca0:	f24e 636d 	movw	r3, #58989	; 0xe66d
+ 8003ca4:	80c3      	strh	r3, [r0, #6]
+ 8003ca6:	f64d 63ec 	movw	r3, #57068	; 0xdeec
+ 8003caa:	8103      	strh	r3, [r0, #8]
+ 8003cac:	2305      	movs	r3, #5
+ 8003cae:	8143      	strh	r3, [r0, #10]
+ 8003cb0:	230b      	movs	r3, #11
+ 8003cb2:	8183      	strh	r3, [r0, #12]
+ 8003cb4:	2201      	movs	r2, #1
+ 8003cb6:	2300      	movs	r3, #0
+ 8003cb8:	e9c0 2304 	strd	r2, r3, [r0, #16]
+ 8003cbc:	6ba1      	ldr	r1, [r4, #56]	; 0x38
+ 8003cbe:	480a      	ldr	r0, [pc, #40]	; (8003ce8 <rand+0x6c>)
+ 8003cc0:	690a      	ldr	r2, [r1, #16]
+ 8003cc2:	694b      	ldr	r3, [r1, #20]
+ 8003cc4:	4c09      	ldr	r4, [pc, #36]	; (8003cec <rand+0x70>)
+ 8003cc6:	4350      	muls	r0, r2
+ 8003cc8:	fb04 0003 	mla	r0, r4, r3, r0
+ 8003ccc:	fba2 2304 	umull	r2, r3, r2, r4
+ 8003cd0:	3201      	adds	r2, #1
+ 8003cd2:	4403      	add	r3, r0
+ 8003cd4:	f143 0300 	adc.w	r3, r3, #0
+ 8003cd8:	e9c1 2304 	strd	r2, r3, [r1, #16]
+ 8003cdc:	f023 4000 	bic.w	r0, r3, #2147483648	; 0x80000000
+ 8003ce0:	bd10      	pop	{r4, pc}
+ 8003ce2:	bf00      	nop
+ 8003ce4:	2000001c 	.word	0x2000001c
+ 8003ce8:	5851f42d 	.word	0x5851f42d
+ 8003cec:	4c957f2d 	.word	0x4c957f2d
+
+08003cf0 <time>:
+ 8003cf0:	b513      	push	{r0, r1, r4, lr}
+ 8003cf2:	4b08      	ldr	r3, [pc, #32]	; (8003d14 <time+0x24>)
+ 8003cf4:	4604      	mov	r4, r0
+ 8003cf6:	2200      	movs	r2, #0
+ 8003cf8:	6818      	ldr	r0, [r3, #0]
+ 8003cfa:	4669      	mov	r1, sp
+ 8003cfc:	f000 f80c 	bl	8003d18 <_gettimeofday_r>
+ 8003d00:	2800      	cmp	r0, #0
+ 8003d02:	bfbc      	itt	lt
+ 8003d04:	f04f 33ff 	movlt.w	r3, #4294967295
+ 8003d08:	9300      	strlt	r3, [sp, #0]
+ 8003d0a:	9800      	ldr	r0, [sp, #0]
+ 8003d0c:	b104      	cbz	r4, 8003d10 <time+0x20>
+ 8003d0e:	6020      	str	r0, [r4, #0]
+ 8003d10:	b002      	add	sp, #8
+ 8003d12:	bd10      	pop	{r4, pc}
+ 8003d14:	2000001c 	.word	0x2000001c
+
+08003d18 <_gettimeofday_r>:
+ 8003d18:	b538      	push	{r3, r4, r5, lr}
+ 8003d1a:	4c07      	ldr	r4, [pc, #28]	; (8003d38 <_gettimeofday_r+0x20>)
+ 8003d1c:	2300      	movs	r3, #0
+ 8003d1e:	4605      	mov	r5, r0
+ 8003d20:	4608      	mov	r0, r1
+ 8003d22:	4611      	mov	r1, r2
+ 8003d24:	6023      	str	r3, [r4, #0]
+ 8003d26:	f000 f881 	bl	8003e2c <_gettimeofday>
+ 8003d2a:	1c43      	adds	r3, r0, #1
+ 8003d2c:	d102      	bne.n	8003d34 <_gettimeofday_r+0x1c>
+ 8003d2e:	6823      	ldr	r3, [r4, #0]
+ 8003d30:	b103      	cbz	r3, 8003d34 <_gettimeofday_r+0x1c>
+ 8003d32:	602b      	str	r3, [r5, #0]
+ 8003d34:	bd38      	pop	{r3, r4, r5, pc}
+ 8003d36:	bf00      	nop
+ 8003d38:	20001ec8 	.word	0x20001ec8
+
+08003d3c <malloc>:
+ 8003d3c:	4b02      	ldr	r3, [pc, #8]	; (8003d48 <malloc+0xc>)
+ 8003d3e:	4601      	mov	r1, r0
+ 8003d40:	6818      	ldr	r0, [r3, #0]
+ 8003d42:	f000 b803 	b.w	8003d4c <_malloc_r>
+ 8003d46:	bf00      	nop
+ 8003d48:	2000001c 	.word	0x2000001c
+
+08003d4c <_malloc_r>:
+ 8003d4c:	b570      	push	{r4, r5, r6, lr}
+ 8003d4e:	1ccd      	adds	r5, r1, #3
+ 8003d50:	f025 0503 	bic.w	r5, r5, #3
+ 8003d54:	3508      	adds	r5, #8
+ 8003d56:	2d0c      	cmp	r5, #12
+ 8003d58:	bf38      	it	cc
+ 8003d5a:	250c      	movcc	r5, #12
+ 8003d5c:	2d00      	cmp	r5, #0
+ 8003d5e:	4606      	mov	r6, r0
+ 8003d60:	db01      	blt.n	8003d66 <_malloc_r+0x1a>
+ 8003d62:	42a9      	cmp	r1, r5
+ 8003d64:	d903      	bls.n	8003d6e <_malloc_r+0x22>
+ 8003d66:	230c      	movs	r3, #12
+ 8003d68:	6033      	str	r3, [r6, #0]
+ 8003d6a:	2000      	movs	r0, #0
+ 8003d6c:	bd70      	pop	{r4, r5, r6, pc}
+ 8003d6e:	f000 f85b 	bl	8003e28 <__malloc_lock>
+ 8003d72:	4a23      	ldr	r2, [pc, #140]	; (8003e00 <_malloc_r+0xb4>)
+ 8003d74:	6814      	ldr	r4, [r2, #0]
+ 8003d76:	4621      	mov	r1, r4
+ 8003d78:	b991      	cbnz	r1, 8003da0 <_malloc_r+0x54>
+ 8003d7a:	4c22      	ldr	r4, [pc, #136]	; (8003e04 <_malloc_r+0xb8>)
+ 8003d7c:	6823      	ldr	r3, [r4, #0]
+ 8003d7e:	b91b      	cbnz	r3, 8003d88 <_malloc_r+0x3c>
+ 8003d80:	4630      	mov	r0, r6
+ 8003d82:	f000 f841 	bl	8003e08 <_sbrk_r>
+ 8003d86:	6020      	str	r0, [r4, #0]
+ 8003d88:	4629      	mov	r1, r5
+ 8003d8a:	4630      	mov	r0, r6
+ 8003d8c:	f000 f83c 	bl	8003e08 <_sbrk_r>
+ 8003d90:	1c43      	adds	r3, r0, #1
+ 8003d92:	d126      	bne.n	8003de2 <_malloc_r+0x96>
+ 8003d94:	230c      	movs	r3, #12
+ 8003d96:	6033      	str	r3, [r6, #0]
+ 8003d98:	4630      	mov	r0, r6
+ 8003d9a:	f000 f846 	bl	8003e2a <__malloc_unlock>
+ 8003d9e:	e7e4      	b.n	8003d6a <_malloc_r+0x1e>
+ 8003da0:	680b      	ldr	r3, [r1, #0]
+ 8003da2:	1b5b      	subs	r3, r3, r5
+ 8003da4:	d41a      	bmi.n	8003ddc <_malloc_r+0x90>
+ 8003da6:	2b0b      	cmp	r3, #11
+ 8003da8:	d90f      	bls.n	8003dca <_malloc_r+0x7e>
+ 8003daa:	600b      	str	r3, [r1, #0]
+ 8003dac:	50cd      	str	r5, [r1, r3]
+ 8003dae:	18cc      	adds	r4, r1, r3
+ 8003db0:	4630      	mov	r0, r6
+ 8003db2:	f000 f83a 	bl	8003e2a <__malloc_unlock>
+ 8003db6:	f104 000b 	add.w	r0, r4, #11
+ 8003dba:	1d23      	adds	r3, r4, #4
+ 8003dbc:	f020 0007 	bic.w	r0, r0, #7
+ 8003dc0:	1ac3      	subs	r3, r0, r3
+ 8003dc2:	d01b      	beq.n	8003dfc <_malloc_r+0xb0>
+ 8003dc4:	425a      	negs	r2, r3
+ 8003dc6:	50e2      	str	r2, [r4, r3]
+ 8003dc8:	bd70      	pop	{r4, r5, r6, pc}
+ 8003dca:	428c      	cmp	r4, r1
+ 8003dcc:	bf0d      	iteet	eq
+ 8003dce:	6863      	ldreq	r3, [r4, #4]
+ 8003dd0:	684b      	ldrne	r3, [r1, #4]
+ 8003dd2:	6063      	strne	r3, [r4, #4]
+ 8003dd4:	6013      	streq	r3, [r2, #0]
+ 8003dd6:	bf18      	it	ne
+ 8003dd8:	460c      	movne	r4, r1
+ 8003dda:	e7e9      	b.n	8003db0 <_malloc_r+0x64>
+ 8003ddc:	460c      	mov	r4, r1
+ 8003dde:	6849      	ldr	r1, [r1, #4]
+ 8003de0:	e7ca      	b.n	8003d78 <_malloc_r+0x2c>
+ 8003de2:	1cc4      	adds	r4, r0, #3
+ 8003de4:	f024 0403 	bic.w	r4, r4, #3
+ 8003de8:	42a0      	cmp	r0, r4
+ 8003dea:	d005      	beq.n	8003df8 <_malloc_r+0xac>
+ 8003dec:	1a21      	subs	r1, r4, r0
+ 8003dee:	4630      	mov	r0, r6
+ 8003df0:	f000 f80a 	bl	8003e08 <_sbrk_r>
+ 8003df4:	3001      	adds	r0, #1
+ 8003df6:	d0cd      	beq.n	8003d94 <_malloc_r+0x48>
+ 8003df8:	6025      	str	r5, [r4, #0]
+ 8003dfa:	e7d9      	b.n	8003db0 <_malloc_r+0x64>
+ 8003dfc:	bd70      	pop	{r4, r5, r6, pc}
+ 8003dfe:	bf00      	nop
+ 8003e00:	20001e00 	.word	0x20001e00
+ 8003e04:	20001e04 	.word	0x20001e04
+
+08003e08 <_sbrk_r>:
+ 8003e08:	b538      	push	{r3, r4, r5, lr}
+ 8003e0a:	4c06      	ldr	r4, [pc, #24]	; (8003e24 <_sbrk_r+0x1c>)
+ 8003e0c:	2300      	movs	r3, #0
+ 8003e0e:	4605      	mov	r5, r0
+ 8003e10:	4608      	mov	r0, r1
+ 8003e12:	6023      	str	r3, [r4, #0]
+ 8003e14:	f000 f812 	bl	8003e3c <_sbrk>
+ 8003e18:	1c43      	adds	r3, r0, #1
+ 8003e1a:	d102      	bne.n	8003e22 <_sbrk_r+0x1a>
+ 8003e1c:	6823      	ldr	r3, [r4, #0]
+ 8003e1e:	b103      	cbz	r3, 8003e22 <_sbrk_r+0x1a>
+ 8003e20:	602b      	str	r3, [r5, #0]
+ 8003e22:	bd38      	pop	{r3, r4, r5, pc}
+ 8003e24:	20001ec8 	.word	0x20001ec8
+
+08003e28 <__malloc_lock>:
+ 8003e28:	4770      	bx	lr
+
+08003e2a <__malloc_unlock>:
+ 8003e2a:	4770      	bx	lr
+
+08003e2c <_gettimeofday>:
+ 8003e2c:	4b02      	ldr	r3, [pc, #8]	; (8003e38 <_gettimeofday+0xc>)
+ 8003e2e:	2258      	movs	r2, #88	; 0x58
+ 8003e30:	601a      	str	r2, [r3, #0]
+ 8003e32:	f04f 30ff 	mov.w	r0, #4294967295
+ 8003e36:	4770      	bx	lr
+ 8003e38:	20001ec8 	.word	0x20001ec8
+
+08003e3c <_sbrk>:
+ 8003e3c:	4b04      	ldr	r3, [pc, #16]	; (8003e50 <_sbrk+0x14>)
+ 8003e3e:	6819      	ldr	r1, [r3, #0]
+ 8003e40:	4602      	mov	r2, r0
+ 8003e42:	b909      	cbnz	r1, 8003e48 <_sbrk+0xc>
+ 8003e44:	4903      	ldr	r1, [pc, #12]	; (8003e54 <_sbrk+0x18>)
+ 8003e46:	6019      	str	r1, [r3, #0]
+ 8003e48:	6818      	ldr	r0, [r3, #0]
+ 8003e4a:	4402      	add	r2, r0
+ 8003e4c:	601a      	str	r2, [r3, #0]
+ 8003e4e:	4770      	bx	lr
+ 8003e50:	20001e08 	.word	0x20001e08
+ 8003e54:	20001ecc 	.word	0x20001ecc
+
+08003e58 <_write>:
+ 8003e58:	4b02      	ldr	r3, [pc, #8]	; (8003e64 <_write+0xc>)
+ 8003e5a:	2258      	movs	r2, #88	; 0x58
+ 8003e5c:	601a      	str	r2, [r3, #0]
+ 8003e5e:	f04f 30ff 	mov.w	r0, #4294967295
+ 8003e62:	4770      	bx	lr
+ 8003e64:	20001ec8 	.word	0x20001ec8
+ 8003e68:	454c4449 	.word	0x454c4449
+ 8003e6c:	00000000 	.word	0x00000000
+ 8003e70:	20726d54 	.word	0x20726d54
+ 8003e74:	00637653 	.word	0x00637653
+ 8003e78:	51726d54 	.word	0x51726d54
+ 8003e7c:	00000000 	.word	0x00000000
+ 8003e80:	6e69614d 	.word	0x6e69614d
+ 8003e84:	75657551 	.word	0x75657551
+ 8003e88:	00000065 	.word	0x00000065
+ 8003e8c:	776f6c46 	.word	0x776f6c46
+ 8003e90:	75657551 	.word	0x75657551
+ 8003e94:	00000065 	.word	0x00000065
+ 8003e98:	65764578 	.word	0x65764578
+ 8003e9c:	6553746e 	.word	0x6553746e
+ 8003ea0:	6870616d 	.word	0x6870616d
+ 8003ea4:	0065726f 	.word	0x0065726f
+ 8003ea8:	776f6c46 	.word	0x776f6c46
+ 8003eac:	756a6441 	.word	0x756a6441
+ 8003eb0:	656d7473 	.word	0x656d7473
+ 8003eb4:	0000746e 	.word	0x0000746e
+ 8003eb8:	66617254 	.word	0x66617254
+ 8003ebc:	43636966 	.word	0x43636966
+ 8003ec0:	74616572 	.word	0x74616572
+ 8003ec4:	0000726f 	.word	0x0000726f
+ 8003ec8:	66617254 	.word	0x66617254
+ 8003ecc:	4c636966 	.word	0x4c636966
+ 8003ed0:	74686769 	.word	0x74686769
+ 8003ed4:	00000000 	.word	0x00000000
+ 8003ed8:	70736944 	.word	0x70736944
+ 8003edc:	4279616c 	.word	0x4279616c
+ 8003ee0:	6472616f 	.word	0x6472616f
+ 8003ee4:	00000000 	.word	0x00000000
+
+08003ee8 <_init>:
+ 8003ee8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
+ 8003eea:	bf00      	nop
+ 8003eec:	bcf8      	pop	{r3, r4, r5, r6, r7}
+ 8003eee:	bc08      	pop	{r3}
+ 8003ef0:	469e      	mov	lr, r3
+ 8003ef2:	4770      	bx	lr
+
+08003ef4 <_fini>:
+ 8003ef4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
+ 8003ef6:	bf00      	nop
+ 8003ef8:	bcf8      	pop	{r3, r4, r5, r6, r7}
+ 8003efa:	bc08      	pop	{r3}
+ 8003efc:	469e      	mov	lr, r3
+ 8003efe:	4770      	bx	lr
diff --git a/Debug/STM32F4_Discovery_FreeRTOS_Simple_Demo.map b/Debug/STM32F4_Discovery_FreeRTOS_Simple_Demo.map
index 8bb92c3..1696eef 100644
--- a/Debug/STM32F4_Discovery_FreeRTOS_Simple_Demo.map
+++ b/Debug/STM32F4_Discovery_FreeRTOS_Simple_Demo.map
@@ -6,16 +6,38 @@ c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gc
                               FreeRTOS_Source\queue.o (memcpy)
 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memset.o)
                               FreeRTOS_Source\tasks.o (memset)
+c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-rand.o)
+                              src\main.o (srand)
+c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-time.o)
+                              src\main.o (time)
+c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-gettimeofdayr.o)
+                              c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-time.o) (_gettimeofday_r)
+c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-impure.o)
+                              c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-rand.o) (_impure_ptr)
+c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o)
+                              c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-rand.o) (malloc)
+c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-freer.o)
+                              c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o) (_free_r)
+c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
+                              c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o) (_malloc_r)
+c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
+                              c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-gettimeofdayr.o) (errno)
+c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-sbrkr.o)
+                              c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o) (_sbrk_r)
+c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-mlock.o)
+                              c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-freer.o) (__malloc_lock)
+c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(gettod.o)
+                              c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-gettimeofdayr.o) (_gettimeofday)
+c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(sbrk.o)
+                              c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-sbrkr.o) (_sbrk)
 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
                               src\tiny_printf.o (_write)
-c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(errno.o)
-                              c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o) (errno)
 
 Allocating common symbols
 Common symbol       size              file
 
 CurrentPos          0x4               Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
-errno               0x4               c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(errno.o)
+errno               0x4               c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
 xQueueRegistry      0x40              FreeRTOS_Source\queue.o
 AUDIO_MAL_DMA_InitStructure
                     0x3c              Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
@@ -127,8 +149,8 @@ Discarded input sections
  .bss           0x00000000        0x0 FreeRTOS_Source\tasks.o
  .text.vTaskDelete
                 0x00000000      0x11c FreeRTOS_Source\tasks.o
- .text.vTaskDelay
-                0x00000000       0x68 FreeRTOS_Source\tasks.o
+ .text.vTaskDelayUntil
+                0x00000000       0xf4 FreeRTOS_Source\tasks.o
  .text.uxTaskPriorityGet
                 0x00000000       0x34 FreeRTOS_Source\tasks.o
  .text.uxTaskPriorityGetFromISR
@@ -174,6 +196,10 @@ Discarded input sections
  .text          0x00000000        0x0 FreeRTOS_Source\timers.o
  .data          0x00000000        0x0 FreeRTOS_Source\timers.o
  .bss           0x00000000        0x0 FreeRTOS_Source\timers.o
+ .text.xTimerCreate
+                0x00000000       0x3a FreeRTOS_Source\timers.o
+ .text.prvInitialiseNewTimer
+                0x00000000       0x62 FreeRTOS_Source\timers.o
  .text.xTimerGetTimerDaemonTaskHandle
                 0x00000000       0x38 FreeRTOS_Source\timers.o
  .text.xTimerGetPeriod
@@ -215,17 +241,12 @@ Discarded input sections
  .text          0x00000000        0x0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .data          0x00000000        0x0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .bss           0x00000000        0x0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .text.ADC_DeInit
-                0x00000000       0x1c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .text.ADC_Init
-                0x00000000       0xac Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_StructInit
                 0x00000000       0x3e Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_CommonInit
                 0x00000000       0x50 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_CommonStructInit
                 0x00000000       0x2c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .text.ADC_Cmd  0x00000000       0x38 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_AnalogWatchdogCmd
                 0x00000000       0x3a Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_AnalogWatchdogThresholdsConfig
@@ -236,10 +257,6 @@ Discarded input sections
                 0x00000000       0x3c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_VBATCmd
                 0x00000000       0x3c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .text.ADC_RegularChannelConfig
-                0x00000000      0x194 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .text.ADC_SoftwareStartConv
-                0x00000000       0x20 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_GetSoftwareStartConvStatus
                 0x00000000       0x30 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_EOCOnEachRegularChannelCmd
@@ -250,8 +267,6 @@ Discarded input sections
                 0x00000000       0x44 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_DiscModeCmd
                 0x00000000       0x38 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .text.ADC_GetConversionValue
-                0x00000000       0x1a Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_GetMultiModeConversionValue
                 0x00000000       0x18 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_DMACmd
@@ -282,25 +297,12 @@ Discarded input sections
                 0x00000000       0x30 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_ITConfig
                 0x00000000       0x52 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .text.ADC_GetFlagStatus
-                0x00000000       0x34 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_ClearFlag
                 0x00000000       0x20 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_GetITStatus
                 0x00000000       0x5c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text.ADC_ClearITPendingBit
                 0x00000000       0x2c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .debug_info    0x00000000      0xc4f Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .debug_abbrev  0x00000000      0x1ab Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .debug_aranges
-                0x00000000      0x148 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .debug_ranges  0x00000000      0x138 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .debug_line    0x00000000      0x572 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .debug_str     0x00000000      0x890 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .comment       0x00000000       0x7d Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .debug_frame   0x00000000      0x5ec Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
- .ARM.attributes
-                0x00000000       0x37 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .text          0x00000000        0x0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_can.o
  .data          0x00000000        0x0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_can.o
  .bss           0x00000000        0x0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_can.o
@@ -807,8 +809,6 @@ Discarded input sections
                 0x00000000       0x1e Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
  .text.GPIO_WriteBit
                 0x00000000       0x30 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
- .text.GPIO_ToggleBits
-                0x00000000       0x24 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
  .text.GPIO_PinAFConfig
                 0x00000000       0x92 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
  .text          0x00000000        0x0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_hash.o
@@ -1091,16 +1091,12 @@ Discarded input sections
                 0x00000000       0x20 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
  .text.RCC_I2SCLKConfig
                 0x00000000       0x20 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
- .text.RCC_AHB1PeriphClockCmd
-                0x00000000       0x40 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
  .text.RCC_AHB2PeriphClockCmd
                 0x00000000       0x40 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
  .text.RCC_AHB3PeriphClockCmd
                 0x00000000       0x40 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
  .text.RCC_APB1PeriphClockCmd
                 0x00000000       0x40 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
- .text.RCC_APB2PeriphClockCmd
-                0x00000000       0x40 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
  .text.RCC_AHB1PeriphResetCmd
                 0x00000000       0x40 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
  .text.RCC_AHB2PeriphResetCmd
@@ -1109,8 +1105,6 @@ Discarded input sections
                 0x00000000       0x40 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
  .text.RCC_APB1PeriphResetCmd
                 0x00000000       0x40 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
- .text.RCC_APB2PeriphResetCmd
-                0x00000000       0x40 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
  .text.RCC_AHB1PeriphClockLPModeCmd
                 0x00000000       0x40 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
  .text.RCC_AHB2PeriphClockLPModeCmd
@@ -1131,17 +1125,6 @@ Discarded input sections
                 0x00000000       0x38 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
  .text.RCC_ClearITPendingBit
                 0x00000000       0x20 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
- .debug_info    0x00000000      0xc72 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
- .debug_abbrev  0x00000000      0x1f8 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
- .debug_aranges
-                0x00000000      0x178 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
- .debug_ranges  0x00000000      0x168 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
- .debug_line    0x00000000      0x5ba Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
- .debug_str     0x00000000      0x8dc Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
- .comment       0x00000000       0x7d Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
- .debug_frame   0x00000000      0x6d4 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
- .ARM.attributes
-                0x00000000       0x37 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
  .text          0x00000000        0x0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rng.o
  .data          0x00000000        0x0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rng.o
  .bss           0x00000000        0x0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rng.o
@@ -1926,36 +1909,28 @@ Discarded input sections
  .text          0x00000000        0x0 src\firmware.o
  .data          0x00000000        0x0 src\firmware.o
  .bss           0x00000000        0x0 src\firmware.o
- .text.writeQueue
-                0x00000000       0x14 src\firmware.o
- .text.writeIntersection
-                0x00000000       0x16 src\firmware.o
- .text.writeLight
-                0x00000000       0x16 src\firmware.o
- .text.readFlow
-                0x00000000       0x12 src\firmware.o
- .debug_info    0x00000000      0x122 src\firmware.o
- .debug_abbrev  0x00000000       0xb5 src\firmware.o
- .debug_aranges
-                0x00000000       0x38 src\firmware.o
- .debug_ranges  0x00000000       0x28 src\firmware.o
- .debug_line    0x00000000       0x81 src\firmware.o
- .debug_str     0x00000000      0x1bc src\firmware.o
- .comment       0x00000000       0x7d src\firmware.o
- .debug_frame   0x00000000       0xa8 src\firmware.o
- .ARM.attributes
-                0x00000000       0x37 src\firmware.o
  .text          0x00000000        0x0 src\helpers.o
  .data          0x00000000        0x0 src\helpers.o
  .bss           0x00000000        0x0 src\helpers.o
- .debug_line    0x00000000        0x0 src\helpers.o
- .debug_str     0x00000000      0x116 src\helpers.o
- .comment       0x00000000       0x7d src\helpers.o
- .ARM.attributes
-                0x00000000       0x37 src\helpers.o
  .text          0x00000000        0x0 src\main.o
  .data          0x00000000        0x0 src\main.o
  .bss           0x00000000        0x0 src\main.o
+ .rodata.MAX_OF_POT
+                0x00000000        0x4 src\main.o
+ .bss.ulCountOfTimerCallbackExecutions
+                0x00000000        0x4 src\main.o
+ .bss.ulCountOfItemsReceivedOnQueue
+                0x00000000        0x4 src\main.o
+ .bss.ulCountOfReceivedSemaphores
+                0x00000000        0x4 src\main.o
+ .text.vExampleTimerCallback
+                0x00000000       0x24 src\main.o
+ .text.prvQueueSendTask
+                0x00000000       0x38 src\main.o
+ .text.prvQueueReceiveTask
+                0x00000000       0x34 src\main.o
+ .text.prvEventSemaphoreTask
+                0x00000000       0x2c src\main.o
  .text          0x00000000       0x14 src\startup_stm32f4xx.o
  .data          0x00000000        0x0 src\startup_stm32f4xx.o
  .bss           0x00000000        0x0 src\startup_stm32f4xx.o
@@ -1972,25 +1947,8 @@ Discarded input sections
  .text          0x00000000        0x0 src\tiny_printf.o
  .data          0x00000000        0x0 src\tiny_printf.o
  .bss           0x00000000        0x0 src\tiny_printf.o
- .text.ts_itoa  0x00000000       0x92 src\tiny_printf.o
- .text.ts_formatstring
-                0x00000000      0x12e src\tiny_printf.o
- .text.ts_formatlength
-                0x00000000      0x12c src\tiny_printf.o
  .text.sprintf  0x00000000       0x2c src\tiny_printf.o
  .text.fprintf  0x00000000       0x9a src\tiny_printf.o
- .text.printf   0x00000000       0x92 src\tiny_printf.o
- .debug_info    0x00000000      0xb55 src\tiny_printf.o
- .debug_abbrev  0x00000000      0x214 src\tiny_printf.o
- .debug_aranges
-                0x00000000       0x48 src\tiny_printf.o
- .debug_ranges  0x00000000       0x38 src\tiny_printf.o
- .debug_line    0x00000000      0x279 src\tiny_printf.o
- .debug_str     0x00000000      0x65b src\tiny_printf.o
- .comment       0x00000000       0x7d src\tiny_printf.o
- .debug_frame   0x00000000      0x150 src\tiny_printf.o
- .ARM.attributes
-                0x00000000       0x37 src\tiny_printf.o
  .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-init.o)
  .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-init.o)
  .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-init.o)
@@ -2000,20 +1958,56 @@ Discarded input sections
  .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memset.o)
  .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memset.o)
  .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memset.o)
+ .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-rand.o)
+ .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-rand.o)
+ .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-rand.o)
+ .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-time.o)
+ .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-time.o)
+ .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-time.o)
+ .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-gettimeofdayr.o)
+ .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-gettimeofdayr.o)
+ .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-gettimeofdayr.o)
+ .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-impure.o)
+ .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-impure.o)
+ .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-impure.o)
+ .rodata._global_impure_ptr
+                0x00000000        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-impure.o)
+ .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o)
+ .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o)
+ .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o)
+ .text.free     0x00000000       0x10 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o)
+ .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-freer.o)
+ .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-freer.o)
+ .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-freer.o)
+ .text._free_r  0x00000000       0x9c c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-freer.o)
+ .debug_frame   0x00000000       0x38 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-freer.o)
+ .ARM.attributes
+                0x00000000       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-freer.o)
+ .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
+ .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
+ .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
+ .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
+ .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
+ .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
+ .text.cleanup_glue
+                0x00000000       0x1a c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
+ .text._reclaim_reent
+                0x00000000       0xb8 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
+ .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-sbrkr.o)
+ .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-sbrkr.o)
+ .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-sbrkr.o)
+ .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-mlock.o)
+ .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-mlock.o)
+ .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-mlock.o)
+ .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(gettod.o)
+ .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(gettod.o)
+ .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(gettod.o)
+ .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(sbrk.o)
+ .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(sbrk.o)
+ .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(sbrk.o)
  .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
  .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
  .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
- .stab          0x00000000       0x24 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
- .text._write   0x00000000       0x10 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
- .debug_frame   0x00000000       0x20 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
- .ARM.attributes
-                0x00000000       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
- .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(errno.o)
- .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(errno.o)
- .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(errno.o)
- .ARM.attributes
-                0x00000000       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(errno.o)
- COMMON         0x00000000        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(errno.o)
  .text          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtend.o
  .data          0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtend.o
  .bss           0x00000000        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtend.o
@@ -2120,7 +2114,7 @@ LOAD c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../l
                 0x08000000                g_pfnVectors
                 0x08000188                . = ALIGN (0x4)
 
-.text           0x08000190     0x31c0
+.text           0x08000190     0x3d70
                 0x08000190                . = ALIGN (0x4)
  *(.text)
  .text          0x08000190       0x40 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
@@ -2230,355 +2224,444 @@ LOAD c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../l
  *fill*         0x0800147a        0x2 
  .text.prvAddNewTaskToReadyList
                 0x0800147c       0xd4 FreeRTOS_Source\tasks.o
- .text.vTaskDelayUntil
-                0x08001550       0xf4 FreeRTOS_Source\tasks.o
-                0x08001550                vTaskDelayUntil
+ .text.vTaskDelay
+                0x08001550       0x68 FreeRTOS_Source\tasks.o
+                0x08001550                vTaskDelay
  .text.vTaskStartScheduler
-                0x08001644       0x98 FreeRTOS_Source\tasks.o
-                0x08001644                vTaskStartScheduler
+                0x080015b8       0x98 FreeRTOS_Source\tasks.o
+                0x080015b8                vTaskStartScheduler
  .text.vTaskSuspendAll
-                0x080016dc       0x1c FreeRTOS_Source\tasks.o
-                0x080016dc                vTaskSuspendAll
+                0x08001650       0x1c FreeRTOS_Source\tasks.o
+                0x08001650                vTaskSuspendAll
  .text.xTaskResumeAll
-                0x080016f8      0x138 FreeRTOS_Source\tasks.o
-                0x080016f8                xTaskResumeAll
+                0x0800166c      0x138 FreeRTOS_Source\tasks.o
+                0x0800166c                xTaskResumeAll
  .text.xTaskGetTickCount
-                0x08001830       0x20 FreeRTOS_Source\tasks.o
-                0x08001830                xTaskGetTickCount
+                0x080017a4       0x20 FreeRTOS_Source\tasks.o
+                0x080017a4                xTaskGetTickCount
  .text.xTaskIncrementTick
-                0x08001850      0x188 FreeRTOS_Source\tasks.o
-                0x08001850                xTaskIncrementTick
+                0x080017c4      0x188 FreeRTOS_Source\tasks.o
+                0x080017c4                xTaskIncrementTick
  .text.vTaskSwitchContext
-                0x080019d8      0x100 FreeRTOS_Source\tasks.o
-                0x080019d8                vTaskSwitchContext
+                0x0800194c      0x100 FreeRTOS_Source\tasks.o
+                0x0800194c                vTaskSwitchContext
  .text.vTaskPlaceOnEventList
-                0x08001ad8       0x48 FreeRTOS_Source\tasks.o
-                0x08001ad8                vTaskPlaceOnEventList
+                0x08001a4c       0x48 FreeRTOS_Source\tasks.o
+                0x08001a4c                vTaskPlaceOnEventList
  .text.vTaskPlaceOnEventListRestricted
-                0x08001b20       0x54 FreeRTOS_Source\tasks.o
-                0x08001b20                vTaskPlaceOnEventListRestricted
+                0x08001a94       0x54 FreeRTOS_Source\tasks.o
+                0x08001a94                vTaskPlaceOnEventListRestricted
  .text.xTaskRemoveFromEventList
-                0x08001b74       0xc4 FreeRTOS_Source\tasks.o
-                0x08001b74                xTaskRemoveFromEventList
+                0x08001ae8       0xc4 FreeRTOS_Source\tasks.o
+                0x08001ae8                xTaskRemoveFromEventList
  .text.vTaskSetTimeOutState
-                0x08001c38       0x48 FreeRTOS_Source\tasks.o
-                0x08001c38                vTaskSetTimeOutState
+                0x08001bac       0x48 FreeRTOS_Source\tasks.o
+                0x08001bac                vTaskSetTimeOutState
  .text.xTaskCheckForTimeOut
-                0x08001c80       0xbc FreeRTOS_Source\tasks.o
-                0x08001c80                xTaskCheckForTimeOut
+                0x08001bf4       0xbc FreeRTOS_Source\tasks.o
+                0x08001bf4                xTaskCheckForTimeOut
  .text.vTaskMissedYield
-                0x08001d3c       0x18 FreeRTOS_Source\tasks.o
-                0x08001d3c                vTaskMissedYield
+                0x08001cb0       0x18 FreeRTOS_Source\tasks.o
+                0x08001cb0                vTaskMissedYield
  .text.prvIdleTask
-                0x08001d54       0x34 FreeRTOS_Source\tasks.o
+                0x08001cc8       0x34 FreeRTOS_Source\tasks.o
  .text.prvInitialiseTaskLists
-                0x08001d88       0x80 FreeRTOS_Source\tasks.o
+                0x08001cfc       0x80 FreeRTOS_Source\tasks.o
  .text.prvCheckTasksWaitingTermination
-                0x08001e08       0x78 FreeRTOS_Source\tasks.o
+                0x08001d7c       0x78 FreeRTOS_Source\tasks.o
  .text.prvDeleteTCB
-                0x08001e80       0x20 FreeRTOS_Source\tasks.o
+                0x08001df4       0x20 FreeRTOS_Source\tasks.o
  .text.prvResetNextTaskUnblockTime
-                0x08001ea0       0x4c FreeRTOS_Source\tasks.o
+                0x08001e14       0x4c FreeRTOS_Source\tasks.o
  .text.xTaskGetSchedulerState
-                0x08001eec       0x3c FreeRTOS_Source\tasks.o
-                0x08001eec                xTaskGetSchedulerState
+                0x08001e60       0x3c FreeRTOS_Source\tasks.o
+                0x08001e60                xTaskGetSchedulerState
  .text.vTaskPriorityInherit
-                0x08001f28       0xec FreeRTOS_Source\tasks.o
-                0x08001f28                vTaskPriorityInherit
+                0x08001e9c       0xec FreeRTOS_Source\tasks.o
+                0x08001e9c                vTaskPriorityInherit
  .text.xTaskPriorityDisinherit
-                0x08002014      0x108 FreeRTOS_Source\tasks.o
-                0x08002014                xTaskPriorityDisinherit
+                0x08001f88      0x108 FreeRTOS_Source\tasks.o
+                0x08001f88                xTaskPriorityDisinherit
  .text.pvTaskIncrementMutexHeldCount
-                0x0800211c       0x28 FreeRTOS_Source\tasks.o
-                0x0800211c                pvTaskIncrementMutexHeldCount
+                0x08002090       0x28 FreeRTOS_Source\tasks.o
+                0x08002090                pvTaskIncrementMutexHeldCount
  .text.prvAddCurrentTaskToDelayedList
-                0x08002144       0xcc FreeRTOS_Source\tasks.o
+                0x080020b8       0xcc FreeRTOS_Source\tasks.o
  .text.xTimerCreateTimerTask
-                0x08002210       0x64 FreeRTOS_Source\timers.o
-                0x08002210                xTimerCreateTimerTask
- .text.xTimerCreate
-                0x08002274       0x3a FreeRTOS_Source\timers.o
-                0x08002274                xTimerCreate
- .text.prvInitialiseNewTimer
-                0x080022ae       0x62 FreeRTOS_Source\timers.o
+                0x08002184       0x64 FreeRTOS_Source\timers.o
+                0x08002184                xTimerCreateTimerTask
  .text.xTimerGenericCommand
-                0x08002310       0x98 FreeRTOS_Source\timers.o
-                0x08002310                xTimerGenericCommand
+                0x080021e8       0x98 FreeRTOS_Source\timers.o
+                0x080021e8                xTimerGenericCommand
  .text.prvProcessExpiredTimer
-                0x080023a8       0x80 FreeRTOS_Source\timers.o
+                0x08002280       0x80 FreeRTOS_Source\timers.o
  .text.prvTimerTask
-                0x08002428       0x24 FreeRTOS_Source\timers.o
+                0x08002300       0x24 FreeRTOS_Source\timers.o
  .text.prvProcessTimerOrBlockTask
-                0x0800244c       0x9c FreeRTOS_Source\timers.o
+                0x08002324       0x9c FreeRTOS_Source\timers.o
  .text.prvGetNextExpireTime
-                0x080024e8       0x48 FreeRTOS_Source\timers.o
+                0x080023c0       0x48 FreeRTOS_Source\timers.o
  .text.prvSampleTimeNow
-                0x08002530       0x40 FreeRTOS_Source\timers.o
+                0x08002408       0x40 FreeRTOS_Source\timers.o
  .text.prvInsertTimerInActiveList
-                0x08002570       0x84 FreeRTOS_Source\timers.o
+                0x08002448       0x84 FreeRTOS_Source\timers.o
  .text.prvProcessReceivedCommands
-                0x080025f4      0x124 FreeRTOS_Source\timers.o
+                0x080024cc      0x124 FreeRTOS_Source\timers.o
  .text.prvSwitchTimerLists
-                0x08002718       0xc0 FreeRTOS_Source\timers.o
+                0x080025f0       0xc0 FreeRTOS_Source\timers.o
  .text.prvCheckForValidListAndQueue
-                0x080027d8       0x6c FreeRTOS_Source\timers.o
+                0x080026b0       0x6c FreeRTOS_Source\timers.o
+ .text.ADC_DeInit
+                0x0800271c       0x1c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                0x0800271c                ADC_DeInit
+ .text.ADC_Init
+                0x08002738       0xac Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                0x08002738                ADC_Init
+ .text.ADC_Cmd  0x080027e4       0x38 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                0x080027e4                ADC_Cmd
+ .text.ADC_RegularChannelConfig
+                0x0800281c      0x194 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                0x0800281c                ADC_RegularChannelConfig
+ .text.ADC_SoftwareStartConv
+                0x080029b0       0x20 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                0x080029b0                ADC_SoftwareStartConv
+ .text.ADC_GetConversionValue
+                0x080029d0       0x1a Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                0x080029d0                ADC_GetConversionValue
+ .text.ADC_GetFlagStatus
+                0x080029ea       0x34 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                0x080029ea                ADC_GetFlagStatus
+ *fill*         0x08002a1e        0x2 
  .text.DAC_SetChannel1Data
-                0x08002844       0x38 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
-                0x08002844                DAC_SetChannel1Data
+                0x08002a20       0x38 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
+                0x08002a20                DAC_SetChannel1Data
  .text.DMA_Init
-                0x0800287c       0xb0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
-                0x0800287c                DMA_Init
- .text.DMA_Cmd  0x0800292c       0x38 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
-                0x0800292c                DMA_Cmd
+                0x08002a58       0xb0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+                0x08002a58                DMA_Init
+ .text.DMA_Cmd  0x08002b08       0x38 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+                0x08002b08                DMA_Cmd
  .text.DMA_GetCmdStatus
-                0x08002964       0x30 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
-                0x08002964                DMA_GetCmdStatus
+                0x08002b40       0x30 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+                0x08002b40                DMA_GetCmdStatus
  .text.DMA_GetFlagStatus
-                0x08002994       0x78 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
-                0x08002994                DMA_GetFlagStatus
+                0x08002b70       0x78 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+                0x08002b70                DMA_GetFlagStatus
  .text.DMA_ClearFlag
-                0x08002a0c       0x5c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
-                0x08002a0c                DMA_ClearFlag
+                0x08002be8       0x5c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+                0x08002be8                DMA_ClearFlag
  .text.GPIO_Init
-                0x08002a68      0x11c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
-                0x08002a68                GPIO_Init
+                0x08002c44      0x11c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+                0x08002c44                GPIO_Init
  .text.GPIO_Write
-                0x08002b84       0x1e Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
-                0x08002b84                GPIO_Write
+                0x08002d60       0x1e Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+                0x08002d60                GPIO_Write
+ .text.GPIO_ToggleBits
+                0x08002d7e       0x24 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+                0x08002d7e                GPIO_ToggleBits
+ *fill*         0x08002da2        0x2 
+ .text.RCC_AHB1PeriphClockCmd
+                0x08002da4       0x40 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
+                0x08002da4                RCC_AHB1PeriphClockCmd
+ .text.RCC_APB2PeriphClockCmd
+                0x08002de4       0x40 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
+                0x08002de4                RCC_APB2PeriphClockCmd
+ .text.RCC_APB2PeriphResetCmd
+                0x08002e24       0x40 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
+                0x08002e24                RCC_APB2PeriphResetCmd
  .text.SPI_I2S_SendData
-                0x08002ba2       0x1e Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
-                0x08002ba2                SPI_I2S_SendData
+                0x08002e64       0x1e Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
+                0x08002e64                SPI_I2S_SendData
  .text.SPI_I2S_GetFlagStatus
-                0x08002bc0       0x38 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
-                0x08002bc0                SPI_I2S_GetFlagStatus
+                0x08002e82       0x38 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
+                0x08002e82                SPI_I2S_GetFlagStatus
+ *fill*         0x08002eba        0x2 
  .text.Audio_MAL_IRQHandler
-                0x08002bf8      0x100 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+                0x08002ebc      0x100 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
  .text.DMA1_Stream7_IRQHandler
-                0x08002cf8        0xc Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
-                0x08002cf8                DMA1_Stream7_IRQHandler
+                0x08002fbc        0xc Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+                0x08002fbc                DMA1_Stream7_IRQHandler
  .text.DMA1_Stream0_IRQHandler
-                0x08002d04        0xc Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
-                0x08002d04                DMA1_Stream0_IRQHandler
+                0x08002fc8        0xc Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+                0x08002fc8                DMA1_Stream0_IRQHandler
  .text.SPI3_IRQHandler
-                0x08002d10       0x44 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
-                0x08002d10                SPI3_IRQHandler
+                0x08002fd4       0x44 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+                0x08002fd4                SPI3_IRQHandler
  .text.EVAL_AUDIO_TransferComplete_CallBack
-                0x08002d54       0x16 src\STM32F4-Discovery_callback.o
-                0x08002d54                EVAL_AUDIO_TransferComplete_CallBack
+                0x08003018       0x16 src\STM32F4-Discovery_callback.o
+                0x08003018                EVAL_AUDIO_TransferComplete_CallBack
  .text.EVAL_AUDIO_GetSampleCallBack
-                0x08002d6a       0x10 src\STM32F4-Discovery_callback.o
-                0x08002d6a                EVAL_AUDIO_GetSampleCallBack
- *fill*         0x08002d7a        0x2 
+                0x0800302e       0x10 src\STM32F4-Discovery_callback.o
+                0x0800302e                EVAL_AUDIO_GetSampleCallBack
+ *fill*         0x0800303e        0x2 
+ .text.writeBoard
+                0x08003040       0x48 src\firmware.o
+                0x08003040                writeBoard
+ .text.Get_ADC_Converted_Value
+                0x08003088       0x2c src\firmware.o
+                0x08003088                Get_ADC_Converted_Value
+ .text.readFlow
+                0x080030b4       0x18 src\firmware.o
+                0x080030b4                readFlow
+ .text.advVehicles
+                0x080030cc       0x4c src\helpers.o
+                0x080030cc                advVehicles
+ .text.stickyAdvVehicles
+                0x08003118       0x9c src\helpers.o
+                0x08003118                stickyAdvVehicles
+ .text.changeLightColor
+                0x080031b4       0x4a src\helpers.o
+                0x080031b4                changeLightColor
+ *fill*         0x080031fe        0x2 
  .text.NVIC_SetPriorityGrouping
-                0x08002d7c       0x48 src\main.o
- .text.main     0x08002dc4       0xf8 src\main.o
-                0x08002dc4                main
- .text.vExampleTimerCallback
-                0x08002ebc       0x24 src\main.o
- .text.prvQueueSendTask
-                0x08002ee0       0x38 src\main.o
- .text.prvQueueReceiveTask
-                0x08002f18       0x34 src\main.o
- .text.prvEventSemaphoreTask
-                0x08002f4c       0x2c src\main.o
+                0x08003200       0x48 src\main.o
+ .text.main     0x08003248      0x11c src\main.o
+                0x08003248                main
+ .text.prvTrafficFlowAdjustment
+                0x08003364       0x48 src\main.o
+ .text.prvTrafficCreator
+                0x080033ac       0xac src\main.o
+ .text.prvTrafficLight
+                0x08003458       0x7c src\main.o
+ .text.prvDisplayBoard
+                0x080034d4       0x40 src\main.o
  .text.vApplicationTickHook
-                0x08002f78       0x44 src\main.o
-                0x08002f78                vApplicationTickHook
+                0x08003514       0x44 src\main.o
+                0x08003514                vApplicationTickHook
  .text.vApplicationMallocFailedHook
-                0x08002fbc        0x6 src\main.o
-                0x08002fbc                vApplicationMallocFailedHook
+                0x08003558        0x6 src\main.o
+                0x08003558                vApplicationMallocFailedHook
  .text.vApplicationStackOverflowHook
-                0x08002fc2        0xc src\main.o
-                0x08002fc2                vApplicationStackOverflowHook
+                0x0800355e        0xc src\main.o
+                0x0800355e                vApplicationStackOverflowHook
  .text.vApplicationIdleHook
-                0x08002fce       0x18 src\main.o
-                0x08002fce                vApplicationIdleHook
- *fill*         0x08002fe6        0x2 
+                0x0800356a       0x18 src\main.o
+                0x0800356a                vApplicationIdleHook
+ *fill*         0x08003582        0x2 
  .text.prvSetupHardware
-                0x08002fe8       0xb0 src\main.o
+                0x08003584       0xd4 src\main.o
  .text.Reset_Handler
-                0x08003098       0x48 src\startup_stm32f4xx.o
-                0x08003098                Reset_Handler
+                0x08003658       0x48 src\startup_stm32f4xx.o
+                0x08003658                Reset_Handler
  .text.Default_Handler
-                0x080030e0        0x2 src\startup_stm32f4xx.o
-                0x080030e0                RTC_Alarm_IRQHandler
-                0x080030e0                HASH_RNG_IRQHandler
-                0x080030e0                EXTI2_IRQHandler
-                0x080030e0                TIM8_CC_IRQHandler
-                0x080030e0                TIM1_CC_IRQHandler
-                0x080030e0                DMA2_Stream5_IRQHandler
-                0x080030e0                DMA1_Stream5_IRQHandler
-                0x080030e0                PVD_IRQHandler
-                0x080030e0                SDIO_IRQHandler
-                0x080030e0                TAMP_STAMP_IRQHandler
-                0x080030e0                CAN2_RX1_IRQHandler
-                0x080030e0                EXTI3_IRQHandler
-                0x080030e0                TIM8_TRG_COM_TIM14_IRQHandler
-                0x080030e0                TIM1_UP_TIM10_IRQHandler
-                0x080030e0                TIM8_UP_TIM13_IRQHandler
-                0x080030e0                I2C3_ER_IRQHandler
-                0x080030e0                EXTI0_IRQHandler
-                0x080030e0                I2C2_EV_IRQHandler
-                0x080030e0                DMA1_Stream2_IRQHandler
-                0x080030e0                CAN1_RX0_IRQHandler
-                0x080030e0                FPU_IRQHandler
-                0x080030e0                OTG_HS_WKUP_IRQHandler
-                0x080030e0                CAN2_SCE_IRQHandler
-                0x080030e0                DMA2_Stream2_IRQHandler
-                0x080030e0                SPI1_IRQHandler
-                0x080030e0                TIM6_DAC_IRQHandler
-                0x080030e0                TIM1_BRK_TIM9_IRQHandler
-                0x080030e0                DCMI_IRQHandler
-                0x080030e0                CAN2_RX0_IRQHandler
-                0x080030e0                DMA2_Stream3_IRQHandler
-                0x080030e0                USART6_IRQHandler
-                0x080030e0                USART3_IRQHandler
-                0x080030e0                CRYP_IRQHandler
-                0x080030e0                CAN1_RX1_IRQHandler
-                0x080030e0                UART5_IRQHandler
-                0x080030e0                DMA2_Stream0_IRQHandler
-                0x080030e0                TIM4_IRQHandler
-                0x080030e0                I2C1_EV_IRQHandler
-                0x080030e0                DMA1_Stream6_IRQHandler
-                0x080030e0                DMA1_Stream1_IRQHandler
-                0x080030e0                UART4_IRQHandler
-                0x080030e0                TIM3_IRQHandler
-                0x080030e0                RCC_IRQHandler
-                0x080030e0                TIM8_BRK_TIM12_IRQHandler
-                0x080030e0                Default_Handler
-                0x080030e0                EXTI15_10_IRQHandler
-                0x080030e0                ADC_IRQHandler
-                0x080030e0                TIM7_IRQHandler
-                0x080030e0                CAN2_TX_IRQHandler
-                0x080030e0                TIM5_IRQHandler
-                0x080030e0                DMA2_Stream7_IRQHandler
-                0x080030e0                I2C3_EV_IRQHandler
-                0x080030e0                EXTI9_5_IRQHandler
-                0x080030e0                RTC_WKUP_IRQHandler
-                0x080030e0                ETH_WKUP_IRQHandler
-                0x080030e0                SPI2_IRQHandler
-                0x080030e0                OTG_HS_EP1_IN_IRQHandler
-                0x080030e0                CAN1_TX_IRQHandler
-                0x080030e0                EXTI4_IRQHandler
-                0x080030e0                FSMC_IRQHandler
-                0x080030e0                ETH_IRQHandler
-                0x080030e0                OTG_HS_EP1_OUT_IRQHandler
-                0x080030e0                WWDG_IRQHandler
-                0x080030e0                TIM2_IRQHandler
-                0x080030e0                OTG_FS_WKUP_IRQHandler
-                0x080030e0                TIM1_TRG_COM_TIM11_IRQHandler
-                0x080030e0                OTG_HS_IRQHandler
-                0x080030e0                EXTI1_IRQHandler
-                0x080030e0                USART2_IRQHandler
-                0x080030e0                I2C2_ER_IRQHandler
-                0x080030e0                DMA2_Stream1_IRQHandler
-                0x080030e0                CAN1_SCE_IRQHandler
-                0x080030e0                FLASH_IRQHandler
-                0x080030e0                DMA2_Stream4_IRQHandler
-                0x080030e0                USART1_IRQHandler
-                0x080030e0                OTG_FS_IRQHandler
-                0x080030e0                DMA1_Stream4_IRQHandler
-                0x080030e0                I2C1_ER_IRQHandler
-                0x080030e0                DMA2_Stream6_IRQHandler
-                0x080030e0                DMA1_Stream3_IRQHandler
+                0x080036a0        0x2 src\startup_stm32f4xx.o
+                0x080036a0                RTC_Alarm_IRQHandler
+                0x080036a0                HASH_RNG_IRQHandler
+                0x080036a0                EXTI2_IRQHandler
+                0x080036a0                TIM8_CC_IRQHandler
+                0x080036a0                TIM1_CC_IRQHandler
+                0x080036a0                DMA2_Stream5_IRQHandler
+                0x080036a0                DMA1_Stream5_IRQHandler
+                0x080036a0                PVD_IRQHandler
+                0x080036a0                SDIO_IRQHandler
+                0x080036a0                TAMP_STAMP_IRQHandler
+                0x080036a0                CAN2_RX1_IRQHandler
+                0x080036a0                EXTI3_IRQHandler
+                0x080036a0                TIM8_TRG_COM_TIM14_IRQHandler
+                0x080036a0                TIM1_UP_TIM10_IRQHandler
+                0x080036a0                TIM8_UP_TIM13_IRQHandler
+                0x080036a0                I2C3_ER_IRQHandler
+                0x080036a0                EXTI0_IRQHandler
+                0x080036a0                I2C2_EV_IRQHandler
+                0x080036a0                DMA1_Stream2_IRQHandler
+                0x080036a0                CAN1_RX0_IRQHandler
+                0x080036a0                FPU_IRQHandler
+                0x080036a0                OTG_HS_WKUP_IRQHandler
+                0x080036a0                CAN2_SCE_IRQHandler
+                0x080036a0                DMA2_Stream2_IRQHandler
+                0x080036a0                SPI1_IRQHandler
+                0x080036a0                TIM6_DAC_IRQHandler
+                0x080036a0                TIM1_BRK_TIM9_IRQHandler
+                0x080036a0                DCMI_IRQHandler
+                0x080036a0                CAN2_RX0_IRQHandler
+                0x080036a0                DMA2_Stream3_IRQHandler
+                0x080036a0                USART6_IRQHandler
+                0x080036a0                USART3_IRQHandler
+                0x080036a0                CRYP_IRQHandler
+                0x080036a0                CAN1_RX1_IRQHandler
+                0x080036a0                UART5_IRQHandler
+                0x080036a0                DMA2_Stream0_IRQHandler
+                0x080036a0                TIM4_IRQHandler
+                0x080036a0                I2C1_EV_IRQHandler
+                0x080036a0                DMA1_Stream6_IRQHandler
+                0x080036a0                DMA1_Stream1_IRQHandler
+                0x080036a0                UART4_IRQHandler
+                0x080036a0                TIM3_IRQHandler
+                0x080036a0                RCC_IRQHandler
+                0x080036a0                TIM8_BRK_TIM12_IRQHandler
+                0x080036a0                Default_Handler
+                0x080036a0                EXTI15_10_IRQHandler
+                0x080036a0                ADC_IRQHandler
+                0x080036a0                TIM7_IRQHandler
+                0x080036a0                CAN2_TX_IRQHandler
+                0x080036a0                TIM5_IRQHandler
+                0x080036a0                DMA2_Stream7_IRQHandler
+                0x080036a0                I2C3_EV_IRQHandler
+                0x080036a0                EXTI9_5_IRQHandler
+                0x080036a0                RTC_WKUP_IRQHandler
+                0x080036a0                ETH_WKUP_IRQHandler
+                0x080036a0                SPI2_IRQHandler
+                0x080036a0                OTG_HS_EP1_IN_IRQHandler
+                0x080036a0                CAN1_TX_IRQHandler
+                0x080036a0                EXTI4_IRQHandler
+                0x080036a0                FSMC_IRQHandler
+                0x080036a0                ETH_IRQHandler
+                0x080036a0                OTG_HS_EP1_OUT_IRQHandler
+                0x080036a0                WWDG_IRQHandler
+                0x080036a0                TIM2_IRQHandler
+                0x080036a0                OTG_FS_WKUP_IRQHandler
+                0x080036a0                TIM1_TRG_COM_TIM11_IRQHandler
+                0x080036a0                OTG_HS_IRQHandler
+                0x080036a0                EXTI1_IRQHandler
+                0x080036a0                USART2_IRQHandler
+                0x080036a0                I2C2_ER_IRQHandler
+                0x080036a0                DMA2_Stream1_IRQHandler
+                0x080036a0                CAN1_SCE_IRQHandler
+                0x080036a0                FLASH_IRQHandler
+                0x080036a0                DMA2_Stream4_IRQHandler
+                0x080036a0                USART1_IRQHandler
+                0x080036a0                OTG_FS_IRQHandler
+                0x080036a0                DMA1_Stream4_IRQHandler
+                0x080036a0                I2C1_ER_IRQHandler
+                0x080036a0                DMA2_Stream6_IRQHandler
+                0x080036a0                DMA1_Stream3_IRQHandler
  .text.NMI_Handler
-                0x080030e2        0xe src\stm32f4xx_it.o
-                0x080030e2                NMI_Handler
+                0x080036a2        0xe src\stm32f4xx_it.o
+                0x080036a2                NMI_Handler
  .text.HardFault_Handler
-                0x080030f0        0x6 src\stm32f4xx_it.o
-                0x080030f0                HardFault_Handler
+                0x080036b0        0x6 src\stm32f4xx_it.o
+                0x080036b0                HardFault_Handler
  .text.MemManage_Handler
-                0x080030f6        0x6 src\stm32f4xx_it.o
-                0x080030f6                MemManage_Handler
+                0x080036b6        0x6 src\stm32f4xx_it.o
+                0x080036b6                MemManage_Handler
  .text.BusFault_Handler
-                0x080030fc        0x6 src\stm32f4xx_it.o
-                0x080030fc                BusFault_Handler
+                0x080036bc        0x6 src\stm32f4xx_it.o
+                0x080036bc                BusFault_Handler
  .text.UsageFault_Handler
-                0x08003102        0x6 src\stm32f4xx_it.o
-                0x08003102                UsageFault_Handler
+                0x080036c2        0x6 src\stm32f4xx_it.o
+                0x080036c2                UsageFault_Handler
  .text.DebugMon_Handler
-                0x08003108        0xe src\stm32f4xx_it.o
-                0x08003108                DebugMon_Handler
- *fill*         0x08003116        0x2 
+                0x080036c8        0xe src\stm32f4xx_it.o
+                0x080036c8                DebugMon_Handler
+ *fill*         0x080036d6        0x2 
  .text.SystemInit
-                0x08003118       0x6c src\system_stm32f4xx.o
-                0x08003118                SystemInit
+                0x080036d8       0x6c src\system_stm32f4xx.o
+                0x080036d8                SystemInit
  .text.SetSysClock
-                0x08003184       0xf8 src\system_stm32f4xx.o
+                0x08003744       0xf8 src\system_stm32f4xx.o
+ .text.ts_itoa  0x0800383c       0x92 src\tiny_printf.o
+                0x0800383c                ts_itoa
+ .text.ts_formatstring
+                0x080038ce      0x12e src\tiny_printf.o
+                0x080038ce                ts_formatstring
+ .text.ts_formatlength
+                0x080039fc      0x12c src\tiny_printf.o
+                0x080039fc                ts_formatlength
+ .text.printf   0x08003b28       0x92 src\tiny_printf.o
+                0x08003b28                printf
+ *fill*         0x08003bba        0x2 
  .text.__libc_init_array
-                0x0800327c       0x48 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-init.o)
-                0x0800327c                __libc_init_array
- .text.memcpy   0x080032c4       0x16 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memcpy-stub.o)
-                0x080032c4                memcpy
- .text.memset   0x080032da       0x10 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memset.o)
-                0x080032da                memset
+                0x08003bbc       0x48 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-init.o)
+                0x08003bbc                __libc_init_array
+ .text.memcpy   0x08003c04       0x16 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memcpy-stub.o)
+                0x08003c04                memcpy
+ .text.memset   0x08003c1a       0x10 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memset.o)
+                0x08003c1a                memset
+ *fill*         0x08003c2a        0x2 
+ .text.srand    0x08003c2c       0x50 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-rand.o)
+                0x08003c2c                srand
+ .text.rand     0x08003c7c       0x74 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-rand.o)
+                0x08003c7c                rand
+ .text.time     0x08003cf0       0x28 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-time.o)
+                0x08003cf0                time
+ .text._gettimeofday_r
+                0x08003d18       0x24 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-gettimeofdayr.o)
+                0x08003d18                _gettimeofday_r
+ .text.malloc   0x08003d3c       0x10 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o)
+                0x08003d3c                malloc
+ .text._malloc_r
+                0x08003d4c       0xbc c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
+                0x08003d4c                _malloc_r
+ .text._sbrk_r  0x08003e08       0x20 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-sbrkr.o)
+                0x08003e08                _sbrk_r
+ .text.__malloc_lock
+                0x08003e28        0x2 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-mlock.o)
+                0x08003e28                __malloc_lock
+ .text.__malloc_unlock
+                0x08003e2a        0x2 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-mlock.o)
+                0x08003e2a                __malloc_unlock
+ .text._gettimeofday
+                0x08003e2c       0x10 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(gettod.o)
+                0x08003e2c                _gettimeofday
+ .text._sbrk    0x08003e3c       0x1c c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(sbrk.o)
+                0x08003e3c                _sbrk
+ .text._write   0x08003e58       0x10 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
+                0x08003e58                _write
  *(.rodata)
- *fill*         0x080032ea        0x2 
- .rodata        0x080032ec        0x5 FreeRTOS_Source\tasks.o
- *fill*         0x080032f1        0x3 
- .rodata        0x080032f4        0xd FreeRTOS_Source\timers.o
- *fill*         0x08003301        0x3 
- .rodata        0x08003304       0x31 src\main.o
+ .rodata        0x08003e68        0x5 FreeRTOS_Source\tasks.o
+ *fill*         0x08003e6d        0x3 
+ .rodata        0x08003e70        0xd FreeRTOS_Source\timers.o
+ *fill*         0x08003e7d        0x3 
+ .rodata        0x08003e80       0x65 src\main.o
  *(.rodata*)
  *(.glue_7)
- .glue_7        0x08003335        0x0 linker stubs
+ .glue_7        0x08003ee5        0x0 linker stubs
  *(.glue_7t)
- .glue_7t       0x08003335        0x0 linker stubs
+ .glue_7t       0x08003ee5        0x0 linker stubs
  *(.eh_frame)
- *fill*         0x08003335        0x3 
- .eh_frame      0x08003338        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
+ *fill*         0x08003ee5        0x3 
+ .eh_frame      0x08003ee8        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
  *(.init)
- .init          0x08003338        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crti.o
-                0x08003338                _init
- .init          0x0800333c        0x8 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtn.o
+ .init          0x08003ee8        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crti.o
+                0x08003ee8                _init
+ .init          0x08003eec        0x8 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtn.o
  *(.fini)
- .fini          0x08003344        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crti.o
-                0x08003344                _fini
- .fini          0x08003348        0x8 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtn.o
-                0x08003350                . = ALIGN (0x4)
-                0x08003350                _etext = .
+ .fini          0x08003ef4        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crti.o
+                0x08003ef4                _fini
+ .fini          0x08003ef8        0x8 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtn.o
+                0x08003f00                . = ALIGN (0x4)
+                0x08003f00                _etext = .
 
-.vfp11_veneer   0x08003350        0x0
- .vfp11_veneer  0x08003350        0x0 linker stubs
+.vfp11_veneer   0x08003f00        0x0
+ .vfp11_veneer  0x08003f00        0x0 linker stubs
 
-.v4_bx          0x08003350        0x0
- .v4_bx         0x08003350        0x0 linker stubs
+.v4_bx          0x08003f00        0x0
+ .v4_bx         0x08003f00        0x0 linker stubs
 
-.iplt           0x08003350        0x0
- .iplt          0x08003350        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
+.iplt           0x08003f00        0x0
+ .iplt          0x08003f00        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
 
-.rel.dyn        0x08003350        0x0
- .rel.iplt      0x08003350        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
+.rel.dyn        0x08003f00        0x0
+ .rel.iplt      0x08003f00        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
 
 .ARM.extab
  *(.ARM.extab* .gnu.linkonce.armextab.*)
 
-.ARM            0x08003350        0x0
-                0x08003350                __exidx_start = .
+.ARM            0x08003f00        0x0
+                0x08003f00                __exidx_start = .
  *(.ARM.exidx*)
-                0x08003350                __exidx_end = .
+                0x08003f00                __exidx_end = .
 
-.preinit_array  0x08003350        0x0
-                0x08003350                PROVIDE (__preinit_array_start, .)
+.preinit_array  0x08003f00        0x0
+                0x08003f00                PROVIDE (__preinit_array_start, .)
  *(.preinit_array*)
-                0x08003350                PROVIDE (__preinit_array_end, .)
+                0x08003f00                PROVIDE (__preinit_array_end, .)
 
-.init_array     0x08003350        0x4
-                0x08003350                PROVIDE (__init_array_start, .)
+.init_array     0x08003f00        0x4
+                0x08003f00                PROVIDE (__init_array_start, .)
  *(SORT(.init_array.*))
  *(.init_array*)
- .init_array    0x08003350        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
-                0x08003354                PROVIDE (__init_array_end, .)
+ .init_array    0x08003f00        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
+                0x08003f04                PROVIDE (__init_array_end, .)
 
-.fini_array     0x08003354        0x4
+.fini_array     0x08003f04        0x4
                 [!provide]                PROVIDE (__fini_array_start, .)
  *(SORT(.fini_array.*))
  *(.fini_array*)
- .fini_array    0x08003354        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
+ .fini_array    0x08003f04        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
                 [!provide]                PROVIDE (__fini_array_end, .)
-                0x08003358                _sidata = LOADADDR (.data)
+                0x08003f08                _sidata = LOADADDR (.data)
 
-.data           0x20000000       0x18 load address 0x08003358
+.data           0x20000000       0x80 load address 0x08003f08
                 0x20000000                . = ALIGN (0x4)
                 0x20000000                _sdata = .
  *(.data)
@@ -2597,17 +2680,25 @@ LOAD c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../l
  .data.AUDIO_MAL_DMA_FLAG_TC
                 0x20000010        0x4 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
                 0x20000010                AUDIO_MAL_DMA_FLAG_TC
+ .data.gBoardState
+                0x20000014        0x4 src\main.o
+                0x20000014                gBoardState
  .data.SystemCoreClock
-                0x20000014        0x4 src\system_stm32f4xx.o
-                0x20000014                SystemCoreClock
-                0x20000018                . = ALIGN (0x4)
-                0x20000018                _edata = .
-                0x08003370                _siccmram = LOADADDR (.ccmram)
+                0x20000018        0x4 src\system_stm32f4xx.o
+                0x20000018                SystemCoreClock
+ .data._impure_ptr
+                0x2000001c        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-impure.o)
+                0x2000001c                _impure_ptr
+ .data.impure_data
+                0x20000020       0x60 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-impure.o)
+                0x20000080                . = ALIGN (0x4)
+                0x20000080                _edata = .
+                0x08003f88                _siccmram = LOADADDR (.ccmram)
 
-.igot.plt       0x20000018        0x0 load address 0x08003370
- .igot.plt      0x20000018        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
+.igot.plt       0x20000080        0x0 load address 0x08003f88
+ .igot.plt      0x20000080        0x0 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
 
-.ccmram         0x10000000        0x0 load address 0x08003370
+.ccmram         0x10000000        0x0 load address 0x08003f88
                 0x10000000                . = ALIGN (0x4)
                 0x10000000                _sccmram = .
  *(.ccmram)
@@ -2616,110 +2707,120 @@ LOAD c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../l
                 0x10000000                _eccmram = .
                 0x10000000                . = ALIGN (0x4)
 
-.bss            0x20000018     0x1e40
-                0x20000018                _sbss = .
-                0x20000018                __bss_start__ = _sbss
+.bss            0x20000080     0x1e4c
+                0x20000080                _sbss = .
+                0x20000080                __bss_start__ = _sbss
  *(.bss)
- .bss           0x20000018       0x1c c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
+ .bss           0x20000080       0x1c c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
  *(.bss*)
  .bss.ucMaxSysCallPriority
-                0x20000034        0x1 FreeRTOS_Source\portable\GCC\ARM_CM4F\port.o
- *fill*         0x20000035        0x3 
+                0x2000009c        0x1 FreeRTOS_Source\portable\GCC\ARM_CM4F\port.o
+ *fill*         0x2000009d        0x3 
  .bss.ulMaxPRIGROUPValue
-                0x20000038        0x4 FreeRTOS_Source\portable\GCC\ARM_CM4F\port.o
- .bss.ucHeap    0x2000003c     0x1c00 FreeRTOS_Source\portable\MemMang\heap_1.o
+                0x200000a0        0x4 FreeRTOS_Source\portable\GCC\ARM_CM4F\port.o
+ .bss.ucHeap    0x200000a4     0x1c00 FreeRTOS_Source\portable\MemMang\heap_1.o
  .bss.xNextFreeByte
-                0x20001c3c        0x4 FreeRTOS_Source\portable\MemMang\heap_1.o
+                0x20001ca4        0x4 FreeRTOS_Source\portable\MemMang\heap_1.o
  .bss.pucAlignedHeap.6221
-                0x20001c40        0x4 FreeRTOS_Source\portable\MemMang\heap_1.o
+                0x20001ca8        0x4 FreeRTOS_Source\portable\MemMang\heap_1.o
  .bss.pxCurrentTCB
-                0x20001c44        0x4 FreeRTOS_Source\tasks.o
-                0x20001c44                pxCurrentTCB
+                0x20001cac        0x4 FreeRTOS_Source\tasks.o
+                0x20001cac                pxCurrentTCB
  .bss.pxReadyTasksLists
-                0x20001c48       0x64 FreeRTOS_Source\tasks.o
+                0x20001cb0       0x64 FreeRTOS_Source\tasks.o
  .bss.xDelayedTaskList1
-                0x20001cac       0x14 FreeRTOS_Source\tasks.o
+                0x20001d14       0x14 FreeRTOS_Source\tasks.o
  .bss.xDelayedTaskList2
-                0x20001cc0       0x14 FreeRTOS_Source\tasks.o
+                0x20001d28       0x14 FreeRTOS_Source\tasks.o
  .bss.pxDelayedTaskList
-                0x20001cd4        0x4 FreeRTOS_Source\tasks.o
+                0x20001d3c        0x4 FreeRTOS_Source\tasks.o
  .bss.pxOverflowDelayedTaskList
-                0x20001cd8        0x4 FreeRTOS_Source\tasks.o
+                0x20001d40        0x4 FreeRTOS_Source\tasks.o
  .bss.xPendingReadyList
-                0x20001cdc       0x14 FreeRTOS_Source\tasks.o
+                0x20001d44       0x14 FreeRTOS_Source\tasks.o
  .bss.xTasksWaitingTermination
-                0x20001cf0       0x14 FreeRTOS_Source\tasks.o
+                0x20001d58       0x14 FreeRTOS_Source\tasks.o
  .bss.uxDeletedTasksWaitingCleanUp
-                0x20001d04        0x4 FreeRTOS_Source\tasks.o
+                0x20001d6c        0x4 FreeRTOS_Source\tasks.o
  .bss.xSuspendedTaskList
-                0x20001d08       0x14 FreeRTOS_Source\tasks.o
+                0x20001d70       0x14 FreeRTOS_Source\tasks.o
  .bss.uxCurrentNumberOfTasks
-                0x20001d1c        0x4 FreeRTOS_Source\tasks.o
+                0x20001d84        0x4 FreeRTOS_Source\tasks.o
  .bss.xTickCount
-                0x20001d20        0x4 FreeRTOS_Source\tasks.o
+                0x20001d88        0x4 FreeRTOS_Source\tasks.o
  .bss.uxTopReadyPriority
-                0x20001d24        0x4 FreeRTOS_Source\tasks.o
+                0x20001d8c        0x4 FreeRTOS_Source\tasks.o
  .bss.xSchedulerRunning
-                0x20001d28        0x4 FreeRTOS_Source\tasks.o
+                0x20001d90        0x4 FreeRTOS_Source\tasks.o
  .bss.uxPendedTicks
-                0x20001d2c        0x4 FreeRTOS_Source\tasks.o
+                0x20001d94        0x4 FreeRTOS_Source\tasks.o
  .bss.xYieldPending
-                0x20001d30        0x4 FreeRTOS_Source\tasks.o
+                0x20001d98        0x4 FreeRTOS_Source\tasks.o
  .bss.xNumOfOverflows
-                0x20001d34        0x4 FreeRTOS_Source\tasks.o
+                0x20001d9c        0x4 FreeRTOS_Source\tasks.o
  .bss.uxTaskNumber
-                0x20001d38        0x4 FreeRTOS_Source\tasks.o
+                0x20001da0        0x4 FreeRTOS_Source\tasks.o
  .bss.xNextTaskUnblockTime
-                0x20001d3c        0x4 FreeRTOS_Source\tasks.o
+                0x20001da4        0x4 FreeRTOS_Source\tasks.o
  .bss.xIdleTaskHandle
-                0x20001d40        0x4 FreeRTOS_Source\tasks.o
+                0x20001da8        0x4 FreeRTOS_Source\tasks.o
  .bss.uxSchedulerSuspended
-                0x20001d44        0x4 FreeRTOS_Source\tasks.o
+                0x20001dac        0x4 FreeRTOS_Source\tasks.o
  .bss.xActiveTimerList1
-                0x20001d48       0x14 FreeRTOS_Source\timers.o
+                0x20001db0       0x14 FreeRTOS_Source\timers.o
  .bss.xActiveTimerList2
-                0x20001d5c       0x14 FreeRTOS_Source\timers.o
+                0x20001dc4       0x14 FreeRTOS_Source\timers.o
  .bss.pxCurrentTimerList
-                0x20001d70        0x4 FreeRTOS_Source\timers.o
+                0x20001dd8        0x4 FreeRTOS_Source\timers.o
  .bss.pxOverflowTimerList
-                0x20001d74        0x4 FreeRTOS_Source\timers.o
+                0x20001ddc        0x4 FreeRTOS_Source\timers.o
  .bss.xTimerQueue
-                0x20001d78        0x4 FreeRTOS_Source\timers.o
+                0x20001de0        0x4 FreeRTOS_Source\timers.o
  .bss.xTimerTaskHandle
-                0x20001d7c        0x4 FreeRTOS_Source\timers.o
+                0x20001de4        0x4 FreeRTOS_Source\timers.o
  .bss.xLastTime.6512
-                0x20001d80        0x4 FreeRTOS_Source\timers.o
- .bss.xQueue    0x20001d84        0x4 src\main.o
+                0x20001de8        0x4 FreeRTOS_Source\timers.o
+ .bss.gLightColor
+                0x20001dec        0x1 src\main.o
+                0x20001dec                gLightColor
+ *fill*         0x20001ded        0x3 
+ .bss.xQueue    0x20001df0        0x4 src\main.o
+ .bss.xFlowQueue
+                0x20001df4        0x4 src\main.o
  .bss.xEventSemaphore
-                0x20001d88        0x4 src\main.o
- .bss.ulCountOfTimerCallbackExecutions
-                0x20001d8c        0x4 src\main.o
- .bss.ulCountOfItemsReceivedOnQueue
-                0x20001d90        0x4 src\main.o
- .bss.ulCountOfReceivedSemaphores
-                0x20001d94        0x4 src\main.o
- .bss.ulCount.9444
-                0x20001d98        0x4 src\main.o
+                0x20001df8        0x4 src\main.o
+ .bss.ulCount.10130
+                0x20001dfc        0x4 src\main.o
+ .bss.__malloc_free_list
+                0x20001e00        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
+                0x20001e00                __malloc_free_list
+ .bss.__malloc_sbrk_start
+                0x20001e04        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
+                0x20001e04                __malloc_sbrk_start
+ .bss.heap_end.5239
+                0x20001e08        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(sbrk.o)
  *(COMMON)
- COMMON         0x20001d9c       0x40 FreeRTOS_Source\queue.o
-                0x20001d9c                xQueueRegistry
- COMMON         0x20001ddc       0x7c Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
-                0x20001ddc                CurrentPos
-                0x20001de0                AUDIO_MAL_DMA_InitStructure
-                0x20001e1c                DMA_InitStructure
-                0x20001e58                . = ALIGN (0x4)
-                0x20001e58                _ebss = .
-                0x20001e58                __bss_end__ = _ebss
+ COMMON         0x20001e0c       0x40 FreeRTOS_Source\queue.o
+                0x20001e0c                xQueueRegistry
+ COMMON         0x20001e4c       0x7c Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+                0x20001e4c                CurrentPos
+                0x20001e50                AUDIO_MAL_DMA_InitStructure
+                0x20001e8c                DMA_InitStructure
+ COMMON         0x20001ec8        0x4 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
+                0x20001ec8                errno
+                0x20001ecc                . = ALIGN (0x4)
+                0x20001ecc                _ebss = .
+                0x20001ecc                __bss_end__ = _ebss
 
 ._user_heap_stack
-                0x20001e58      0x400
-                0x20001e58                . = ALIGN (0x4)
-                [!provide]                PROVIDE (end, .)
+                0x20001ecc      0x400
+                0x20001ecc                . = ALIGN (0x4)
+                0x20001ecc                PROVIDE (end, .)
                 [!provide]                PROVIDE (_end, .)
-                0x20001e58                . = (. + _Min_Heap_Size)
-                0x20002258                . = (. + _Min_Stack_Size)
- *fill*         0x20001e58      0x400 
-                0x20002258                . = ALIGN (0x4)
+                0x20001ecc                . = (. + _Min_Heap_Size)
+                0x200022cc                . = (. + _Min_Stack_Size)
+ *fill*         0x20001ecc      0x400 
+                0x200022cc                . = ALIGN (0x4)
 
 .memory_b1_text
  *(.mb1text)
@@ -2752,72 +2853,116 @@ LOAD c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../l
  .ARM.attributes
                 0x00000167       0x37 FreeRTOS_Source\timers.o
  .ARM.attributes
-                0x0000019e       0x37 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
+                0x0000019e       0x37 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+ .ARM.attributes
+                0x000001d5       0x37 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
+ .ARM.attributes
+                0x0000020c       0x37 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+ .ARM.attributes
+                0x00000243       0x37 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+ .ARM.attributes
+                0x0000027a       0x37 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
+ .ARM.attributes
+                0x000002b1       0x37 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
+ .ARM.attributes
+                0x000002e8       0x37 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+ .ARM.attributes
+                0x0000031f       0x37 src\STM32F4-Discovery_callback.o
+ .ARM.attributes
+                0x00000356       0x37 src\firmware.o
+ .ARM.attributes
+                0x0000038d       0x37 src\helpers.o
+ .ARM.attributes
+                0x000003c4       0x37 src\main.o
+ .ARM.attributes
+                0x000003fb       0x21 src\startup_stm32f4xx.o
+ .ARM.attributes
+                0x0000041c       0x37 src\stm32f4xx_it.o
+ .ARM.attributes
+                0x00000453       0x37 src\system_stm32f4xx.o
+ .ARM.attributes
+                0x0000048a       0x37 src\tiny_printf.o
+ .ARM.attributes
+                0x000004c1       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-init.o)
  .ARM.attributes
-                0x000001d5       0x37 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+                0x000004f3       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memcpy-stub.o)
  .ARM.attributes
-                0x0000020c       0x37 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+                0x00000525       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memset.o)
  .ARM.attributes
-                0x00000243       0x37 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
+                0x00000557       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-rand.o)
  .ARM.attributes
-                0x0000027a       0x37 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+                0x00000589       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-time.o)
  .ARM.attributes
-                0x000002b1       0x37 src\STM32F4-Discovery_callback.o
+                0x000005bb       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-gettimeofdayr.o)
  .ARM.attributes
-                0x000002e8       0x37 src\main.o
+                0x000005ed       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-impure.o)
  .ARM.attributes
-                0x0000031f       0x21 src\startup_stm32f4xx.o
+                0x0000061f       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o)
  .ARM.attributes
-                0x00000340       0x37 src\stm32f4xx_it.o
+                0x00000651       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
  .ARM.attributes
-                0x00000377       0x37 src\system_stm32f4xx.o
+                0x00000683       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
  .ARM.attributes
-                0x000003ae       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-init.o)
+                0x000006b5       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-sbrkr.o)
  .ARM.attributes
-                0x000003e0       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memcpy-stub.o)
+                0x000006e7       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-mlock.o)
  .ARM.attributes
-                0x00000412       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memset.o)
+                0x00000719       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(gettod.o)
  .ARM.attributes
-                0x00000444       0x22 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtn.o
+                0x0000074b       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(sbrk.o)
+ .ARM.attributes
+                0x0000077d       0x32 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
+ .ARM.attributes
+                0x000007af       0x22 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtn.o
 OUTPUT(STM32F4_Discovery_FreeRTOS_Simple_Demo.elf elf32-littlearm)
 
-.debug_info     0x00000000     0xaa72
+.debug_info     0x00000000     0xdf90
  .debug_info    0x00000000      0xac3 FreeRTOS_Source\list.o
  .debug_info    0x00000ac3      0x50b FreeRTOS_Source\portable\GCC\ARM_CM4F\port.o
  .debug_info    0x00000fce      0x9e9 FreeRTOS_Source\portable\MemMang\heap_1.o
  .debug_info    0x000019b7     0x1b75 FreeRTOS_Source\queue.o
  .debug_info    0x0000352c     0x2255 FreeRTOS_Source\tasks.o
  .debug_info    0x00005781     0x136a FreeRTOS_Source\timers.o
- .debug_info    0x00006aeb      0x654 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
- .debug_info    0x0000713f      0x74c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
- .debug_info    0x0000788b      0x628 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
- .debug_info    0x00007eb3      0xb1a Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
- .debug_info    0x000089cd     0x108b Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
- .debug_info    0x00009a58      0x12d src\STM32F4-Discovery_callback.o
- .debug_info    0x00009b85      0x781 src\main.o
- .debug_info    0x0000a306       0x7b src\startup_stm32f4xx.o
- .debug_info    0x0000a381      0x121 src\stm32f4xx_it.o
- .debug_info    0x0000a4a2      0x5d0 src\system_stm32f4xx.o
+ .debug_info    0x00006aeb      0xc4f Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+ .debug_info    0x0000773a      0x654 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
+ .debug_info    0x00007d8e      0x74c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+ .debug_info    0x000084da      0x628 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+ .debug_info    0x00008b02      0xc72 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
+ .debug_info    0x00009774      0xb1a Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
+ .debug_info    0x0000a28e     0x108b Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+ .debug_info    0x0000b319      0x12d src\STM32F4-Discovery_callback.o
+ .debug_info    0x0000b446      0x34c src\firmware.o
+ .debug_info    0x0000b792      0x1e8 src\helpers.o
+ .debug_info    0x0000b97a     0x1355 src\main.o
+ .debug_info    0x0000cccf       0x7b src\startup_stm32f4xx.o
+ .debug_info    0x0000cd4a      0x121 src\stm32f4xx_it.o
+ .debug_info    0x0000ce6b      0x5d0 src\system_stm32f4xx.o
+ .debug_info    0x0000d43b      0xb55 src\tiny_printf.o
 
-.debug_abbrev   0x00000000     0x1bab
+.debug_abbrev   0x00000000     0x2434
  .debug_abbrev  0x00000000      0x1c5 FreeRTOS_Source\list.o
  .debug_abbrev  0x000001c5      0x1d5 FreeRTOS_Source\portable\GCC\ARM_CM4F\port.o
  .debug_abbrev  0x0000039a      0x245 FreeRTOS_Source\portable\MemMang\heap_1.o
  .debug_abbrev  0x000005df      0x2d4 FreeRTOS_Source\queue.o
  .debug_abbrev  0x000008b3      0x362 FreeRTOS_Source\tasks.o
  .debug_abbrev  0x00000c15      0x288 FreeRTOS_Source\timers.o
- .debug_abbrev  0x00000e9d      0x191 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
- .debug_abbrev  0x0000102e      0x168 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
- .debug_abbrev  0x00001196      0x1b8 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
- .debug_abbrev  0x0000134e      0x17a Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
- .debug_abbrev  0x000014c8      0x276 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
- .debug_abbrev  0x0000173e       0xa3 src\STM32F4-Discovery_callback.o
- .debug_abbrev  0x000017e1      0x1e8 src\main.o
- .debug_abbrev  0x000019c9       0x12 src\startup_stm32f4xx.o
- .debug_abbrev  0x000019db       0x78 src\stm32f4xx_it.o
- .debug_abbrev  0x00001a53      0x158 src\system_stm32f4xx.o
+ .debug_abbrev  0x00000e9d      0x1ab Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+ .debug_abbrev  0x00001048      0x191 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
+ .debug_abbrev  0x000011d9      0x168 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+ .debug_abbrev  0x00001341      0x1b8 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+ .debug_abbrev  0x000014f9      0x1f8 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
+ .debug_abbrev  0x000016f1      0x17a Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
+ .debug_abbrev  0x0000186b      0x276 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+ .debug_abbrev  0x00001ae1       0xa3 src\STM32F4-Discovery_callback.o
+ .debug_abbrev  0x00001b84      0x12a src\firmware.o
+ .debug_abbrev  0x00001cae       0xc6 src\helpers.o
+ .debug_abbrev  0x00001d74      0x2ca src\main.o
+ .debug_abbrev  0x0000203e       0x12 src\startup_stm32f4xx.o
+ .debug_abbrev  0x00002050       0x78 src\stm32f4xx_it.o
+ .debug_abbrev  0x000020c8      0x158 src\system_stm32f4xx.o
+ .debug_abbrev  0x00002220      0x214 src\tiny_printf.o
 
-.debug_aranges  0x00000000      0x978
+.debug_aranges  0x00000000      0xd00
  .debug_aranges
                 0x00000000       0x40 FreeRTOS_Source\list.o
  .debug_aranges
@@ -2831,63 +2976,83 @@ OUTPUT(STM32F4_Discovery_FreeRTOS_Simple_Demo.elf elf32-littlearm)
  .debug_aranges
                 0x00000398       0xb8 FreeRTOS_Source\timers.o
  .debug_aranges
-                0x00000450       0xa0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
+                0x00000450      0x148 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+ .debug_aranges
+                0x00000598       0xa0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
+ .debug_aranges
+                0x00000638       0xb0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+ .debug_aranges
+                0x000006e8       0x88 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+ .debug_aranges
+                0x00000770      0x178 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
+ .debug_aranges
+                0x000008e8       0xe0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
  .debug_aranges
-                0x000004f0       0xb0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+                0x000009c8      0x130 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
  .debug_aranges
-                0x000005a0       0x88 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+                0x00000af8       0x30 src\STM32F4-Discovery_callback.o
  .debug_aranges
-                0x00000628       0xe0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
+                0x00000b28       0x30 src\firmware.o
  .debug_aranges
-                0x00000708      0x130 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+                0x00000b58       0x30 src\helpers.o
  .debug_aranges
-                0x00000838       0x30 src\STM32F4-Discovery_callback.o
+                0x00000b88       0x90 src\main.o
  .debug_aranges
-                0x00000868       0x70 src\main.o
+                0x00000c18       0x28 src\startup_stm32f4xx.o
  .debug_aranges
-                0x000008d8       0x28 src\startup_stm32f4xx.o
+                0x00000c40       0x48 src\stm32f4xx_it.o
  .debug_aranges
-                0x00000900       0x48 src\stm32f4xx_it.o
+                0x00000c88       0x30 src\system_stm32f4xx.o
  .debug_aranges
-                0x00000948       0x30 src\system_stm32f4xx.o
+                0x00000cb8       0x48 src\tiny_printf.o
 
-.debug_ranges   0x00000000      0x880
+.debug_ranges   0x00000000      0xbb8
  .debug_ranges  0x00000000       0x30 FreeRTOS_Source\list.o
  .debug_ranges  0x00000030       0x70 FreeRTOS_Source\portable\GCC\ARM_CM4F\port.o
  .debug_ranges  0x000000a0       0x28 FreeRTOS_Source\portable\MemMang\heap_1.o
  .debug_ranges  0x000000c8       0xf0 FreeRTOS_Source\queue.o
  .debug_ranges  0x000001b8      0x190 FreeRTOS_Source\tasks.o
  .debug_ranges  0x00000348       0xa8 FreeRTOS_Source\timers.o
- .debug_ranges  0x000003f0       0x90 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
- .debug_ranges  0x00000480       0xa0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
- .debug_ranges  0x00000520       0x78 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
- .debug_ranges  0x00000598       0xd0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
- .debug_ranges  0x00000668      0x120 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
- .debug_ranges  0x00000788       0x20 src\STM32F4-Discovery_callback.o
- .debug_ranges  0x000007a8       0x60 src\main.o
- .debug_ranges  0x00000808       0x20 src\startup_stm32f4xx.o
- .debug_ranges  0x00000828       0x38 src\stm32f4xx_it.o
- .debug_ranges  0x00000860       0x20 src\system_stm32f4xx.o
+ .debug_ranges  0x000003f0      0x138 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+ .debug_ranges  0x00000528       0x90 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
+ .debug_ranges  0x000005b8       0xa0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+ .debug_ranges  0x00000658       0x78 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+ .debug_ranges  0x000006d0      0x168 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
+ .debug_ranges  0x00000838       0xd0 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
+ .debug_ranges  0x00000908      0x120 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+ .debug_ranges  0x00000a28       0x20 src\STM32F4-Discovery_callback.o
+ .debug_ranges  0x00000a48       0x20 src\firmware.o
+ .debug_ranges  0x00000a68       0x20 src\helpers.o
+ .debug_ranges  0x00000a88       0x80 src\main.o
+ .debug_ranges  0x00000b08       0x20 src\startup_stm32f4xx.o
+ .debug_ranges  0x00000b28       0x38 src\stm32f4xx_it.o
+ .debug_ranges  0x00000b60       0x20 src\system_stm32f4xx.o
+ .debug_ranges  0x00000b80       0x38 src\tiny_printf.o
 
-.debug_line     0x00000000     0x48b9
+.debug_line     0x00000000     0x5b22
  .debug_line    0x00000000      0x31c FreeRTOS_Source\list.o
  .debug_line    0x0000031c      0x388 FreeRTOS_Source\portable\GCC\ARM_CM4F\port.o
  .debug_line    0x000006a4      0x2f6 FreeRTOS_Source\portable\MemMang\heap_1.o
  .debug_line    0x0000099a      0xa5b FreeRTOS_Source\queue.o
  .debug_line    0x000013f5      0xda2 FreeRTOS_Source\tasks.o
  .debug_line    0x00002197      0x60e FreeRTOS_Source\timers.o
- .debug_line    0x000027a5      0x367 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
- .debug_line    0x00002b0c      0x43f Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
- .debug_line    0x00002f4b      0x375 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
- .debug_line    0x000032c0      0x46e Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
- .debug_line    0x0000372e      0x70f Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
- .debug_line    0x00003e3d      0x1c4 src\STM32F4-Discovery_callback.o
- .debug_line    0x00004001      0x434 src\main.o
- .debug_line    0x00004435       0x77 src\startup_stm32f4xx.o
- .debug_line    0x000044ac      0x1f4 src\stm32f4xx_it.o
- .debug_line    0x000046a0      0x219 src\system_stm32f4xx.o
+ .debug_line    0x000027a5      0x572 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+ .debug_line    0x00002d17      0x367 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
+ .debug_line    0x0000307e      0x43f Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+ .debug_line    0x000034bd      0x375 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+ .debug_line    0x00003832      0x5ba Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
+ .debug_line    0x00003dec      0x46e Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
+ .debug_line    0x0000425a      0x70f Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+ .debug_line    0x00004969      0x1c4 src\STM32F4-Discovery_callback.o
+ .debug_line    0x00004b2d      0x1e7 src\firmware.o
+ .debug_line    0x00004d14      0x17f src\helpers.o
+ .debug_line    0x00004e93      0x592 src\main.o
+ .debug_line    0x00005425       0x77 src\startup_stm32f4xx.o
+ .debug_line    0x0000549c      0x1f4 src\stm32f4xx_it.o
+ .debug_line    0x00005690      0x219 src\system_stm32f4xx.o
+ .debug_line    0x000058a9      0x279 src\tiny_printf.o
 
-.debug_str      0x00000000     0x39c5
+.debug_str      0x00000000     0x4797
  .debug_str     0x00000000      0x6c1 FreeRTOS_Source\list.o
                                 0x746 (size before relaxing)
  .debug_str     0x000006c1      0x26d FreeRTOS_Source\portable\GCC\ARM_CM4F\port.o
@@ -2900,24 +3065,34 @@ OUTPUT(STM32F4_Discovery_FreeRTOS_Simple_Demo.elf elf32-littlearm)
                                0x11fa (size before relaxing)
  .debug_str     0x00001929      0x41c FreeRTOS_Source\timers.o
                                 0xb84 (size before relaxing)
- .debug_str     0x00001d45      0x2d7 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
+ .debug_str     0x00001d45      0x67d Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                                0x890 (size before relaxing)
+ .debug_str     0x000023c2      0x271 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
                                 0x4df (size before relaxing)
- .debug_str     0x0000201c      0x37e Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+ .debug_str     0x00002633      0x377 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
                                 0x5ce (size before relaxing)
- .debug_str     0x0000239a      0x305 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+ .debug_str     0x000029aa      0x305 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
                                 0x52f (size before relaxing)
- .debug_str     0x0000269f      0x4a9 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
+ .debug_str     0x00002caf      0x66e Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
+                                0x8dc (size before relaxing)
+ .debug_str     0x0000331d      0x3a6 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
                                 0x716 (size before relaxing)
- .debug_str     0x00002b48      0xa90 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+ .debug_str     0x000036c3      0xa88 Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
                                0x10f0 (size before relaxing)
- .debug_str     0x000035d8       0x84 src\STM32F4-Discovery_callback.o
+ .debug_str     0x0000414b       0x84 src\STM32F4-Discovery_callback.o
                                 0x27a (size before relaxing)
- .debug_str     0x0000365c      0x242 src\main.o
-                                0x6ba (size before relaxing)
- .debug_str     0x0000389e       0x7b src\stm32f4xx_it.o
+ .debug_str     0x000041cf       0x60 src\firmware.o
+                                0x2f7 (size before relaxing)
+ .debug_str     0x0000422f       0xa6 src\helpers.o
+                                0x26c (size before relaxing)
+ .debug_str     0x000042d5      0x343 src\main.o
+                                0xd3b (size before relaxing)
+ .debug_str     0x00004618       0x7b src\stm32f4xx_it.o
                                 0x250 (size before relaxing)
- .debug_str     0x00003919       0xac src\system_stm32f4xx.o
+ .debug_str     0x00004693       0x88 src\system_stm32f4xx.o
                                 0x407 (size before relaxing)
+ .debug_str     0x0000471b       0x7c src\tiny_printf.o
+                                0x65b (size before relaxing)
 
 .comment        0x00000000       0x7c
  .comment       0x00000000       0x7c FreeRTOS_Source\list.o
@@ -2927,38 +3102,64 @@ OUTPUT(STM32F4_Discovery_FreeRTOS_Simple_Demo.elf elf32-littlearm)
  .comment       0x0000007c       0x7d FreeRTOS_Source\queue.o
  .comment       0x0000007c       0x7d FreeRTOS_Source\tasks.o
  .comment       0x0000007c       0x7d FreeRTOS_Source\timers.o
+ .comment       0x0000007c       0x7d Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
  .comment       0x0000007c       0x7d Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
  .comment       0x0000007c       0x7d Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
  .comment       0x0000007c       0x7d Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+ .comment       0x0000007c       0x7d Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
  .comment       0x0000007c       0x7d Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
  .comment       0x0000007c       0x7d Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
  .comment       0x0000007c       0x7d src\STM32F4-Discovery_callback.o
+ .comment       0x0000007c       0x7d src\firmware.o
+ .comment       0x0000007c       0x7d src\helpers.o
  .comment       0x0000007c       0x7d src\main.o
  .comment       0x0000007c       0x7d src\stm32f4xx_it.o
  .comment       0x0000007c       0x7d src\system_stm32f4xx.o
+ .comment       0x0000007c       0x7d src\tiny_printf.o
 
-.debug_frame    0x00000000     0x2578
+.debug_frame    0x00000000     0x3714
  .debug_frame   0x00000000       0xd8 FreeRTOS_Source\list.o
  .debug_frame   0x000000d8      0x19c FreeRTOS_Source\portable\GCC\ARM_CM4F\port.o
  .debug_frame   0x00000274       0x9c FreeRTOS_Source\portable\MemMang\heap_1.o
  .debug_frame   0x00000310      0x448 FreeRTOS_Source\queue.o
  .debug_frame   0x00000758      0x700 FreeRTOS_Source\tasks.o
  .debug_frame   0x00000e58      0x2f0 FreeRTOS_Source\timers.o
- .debug_frame   0x00001148      0x2ac Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
- .debug_frame   0x000013f4      0x308 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
- .debug_frame   0x000016fc      0x23c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
- .debug_frame   0x00001938      0x3f4 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
- .debug_frame   0x00001d2c      0x4bc Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
- .debug_frame   0x000021e8       0x70 src\STM32F4-Discovery_callback.o
- .debug_frame   0x00002258      0x180 src\main.o
- .debug_frame   0x000023d8       0xb0 src\stm32f4xx_it.o
- .debug_frame   0x00002488       0x7c src\system_stm32f4xx.o
- .debug_frame   0x00002504       0x2c c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-init.o)
- .debug_frame   0x00002530       0x28 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memcpy-stub.o)
- .debug_frame   0x00002558       0x20 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memset.o)
+ .debug_frame   0x00001148      0x5ec Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+ .debug_frame   0x00001734      0x2ac Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
+ .debug_frame   0x000019e0      0x308 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dma.o
+ .debug_frame   0x00001ce8      0x23c Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+ .debug_frame   0x00001f24      0x6d4 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
+ .debug_frame   0x000025f8      0x3f4 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_spi.o
+ .debug_frame   0x000029ec      0x4bc Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+ .debug_frame   0x00002ea8       0x70 src\STM32F4-Discovery_callback.o
+ .debug_frame   0x00002f18       0x74 src\firmware.o
+ .debug_frame   0x00002f8c       0x88 src\helpers.o
+ .debug_frame   0x00003014      0x200 src\main.o
+ .debug_frame   0x00003214       0xb0 src\stm32f4xx_it.o
+ .debug_frame   0x000032c4       0x7c src\system_stm32f4xx.o
+ .debug_frame   0x00003340      0x150 src\tiny_printf.o
+ .debug_frame   0x00003490       0x2c c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-init.o)
+ .debug_frame   0x000034bc       0x28 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memcpy-stub.o)
+ .debug_frame   0x000034e4       0x20 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memset.o)
+ .debug_frame   0x00003504       0x44 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-rand.o)
+ .debug_frame   0x00003548       0x2c c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-time.o)
+ .debug_frame   0x00003574       0x2c c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-gettimeofdayr.o)
+ .debug_frame   0x000035a0       0x30 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o)
+ .debug_frame   0x000035d0       0x2c c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
+ .debug_frame   0x000035fc       0x5c c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
+ .debug_frame   0x00003658       0x2c c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-sbrkr.o)
+ .debug_frame   0x00003684       0x30 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-mlock.o)
+ .debug_frame   0x000036b4       0x20 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(gettod.o)
+ .debug_frame   0x000036d4       0x20 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(sbrk.o)
+ .debug_frame   0x000036f4       0x20 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
 
-.stabstr        0x00000000       0x3f
- .stabstr       0x00000000       0x3f c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
+.stab           0x00000000       0x3c
+ .stab          0x00000000       0x24 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(gettod.o)
+ .stab          0x00000024       0x18 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
+                                 0x24 (size before relaxing)
+
+.stabstr        0x00000000       0x84
+ .stabstr       0x00000000       0x84 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(gettod.o)
 
 Cross Reference Table
 
@@ -2970,19 +3171,23 @@ ADC_AutoInjectedConvCmd                           Libraries\STM32F4xx_StdPeriph_
 ADC_ClearFlag                                     Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_ClearITPendingBit                             Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_Cmd                                           Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                                                  src\main.o
 ADC_CommonInit                                    Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_CommonStructInit                              Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_ContinuousModeCmd                             Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_DMACmd                                        Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_DMARequestAfterLastTransferCmd                Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_DeInit                                        Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                                                  src\main.o
 ADC_DiscModeChannelCountConfig                    Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_DiscModeCmd                                   Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_EOCOnEachRegularChannelCmd                    Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_ExternalTrigInjectedConvConfig                Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_ExternalTrigInjectedConvEdgeConfig            Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_GetConversionValue                            Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                                                  src\firmware.o
 ADC_GetFlagStatus                                 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                                                  src\firmware.o
 ADC_GetITStatus                                   Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_GetInjectedConversionValue                    Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_GetMultiModeConversionValue                   Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
@@ -2991,13 +3196,16 @@ ADC_GetSoftwareStartInjectedConvCmdStatus         Libraries\STM32F4xx_StdPeriph_
 ADC_IRQHandler                                    src\startup_stm32f4xx.o
 ADC_ITConfig                                      Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_Init                                          Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                                                  src\main.o
 ADC_InjectedChannelConfig                         Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_InjectedDiscModeCmd                           Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_InjectedSequencerLengthConfig                 Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_MultiModeDMARequestAfterLastTransferCmd       Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_RegularChannelConfig                          Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                                                  src\main.o
 ADC_SetInjectedOffset                             Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_SoftwareStartConv                             Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
+                                                  src\firmware.o
 ADC_SoftwareStartInjectedConv                     Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_StructInit                                    Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
 ADC_TempSensorVrefintCmd                          Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_adc.o
@@ -3314,10 +3522,12 @@ GPIO_SetBits                                      Libraries\STM32F4xx_StdPeriph_
                                                   Utilities\STM32F4-Discovery\stm32f4_discovery_lis302dl.o
 GPIO_StructInit                                   Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
 GPIO_ToggleBits                                   Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
+                                                  src\firmware.o
 GPIO_Write                                        Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
-                                                  src\main.o
+                                                  src\firmware.o
 GPIO_WriteBit                                     Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_gpio.o
                                                   Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
+Get_ADC_Converted_Value                           src\firmware.o
 HASH_ClearFlag                                    Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_hash.o
 HASH_ClearITPendingBit                            Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_hash.o
 HASH_DMACmd                                       Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_hash.o
@@ -3432,6 +3642,7 @@ LIS302DL_RebootCmd                                Utilities\STM32F4-Discovery\st
 LIS302DL_TIMEOUT_UserCallback                     src\STM32F4-Discovery_callback.o
                                                   Utilities\STM32F4-Discovery\stm32f4_discovery_lis302dl.o
 LIS302DL_Write                                    Utilities\STM32F4-Discovery\stm32f4_discovery_lis302dl.o
+MAX_OF_POT                                        src\main.o
 MemManage_Handler                                 src\stm32f4xx_it.o
                                                   src\startup_stm32f4xx.o
 NMI_Handler                                       src\stm32f4xx_it.o
@@ -3465,6 +3676,7 @@ PWR_PVDLevelConfig                                Libraries\STM32F4xx_StdPeriph_
 PWR_WakeUpPinCmd                                  Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_pwr.o
 PendSV_Handler                                    FreeRTOS_Source\portable\GCC\ARM_CM4F\port.o
 RCC_AHB1PeriphClockCmd                            Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
+                                                  src\main.o
                                                   Utilities\STM32F4-Discovery\stm32f4_discovery_lis302dl.o
                                                   Utilities\STM32F4-Discovery\stm32f4_discovery_audio_codec.o
                                                   Utilities\STM32F4-Discovery\stm32f4_discovery.o
@@ -3493,6 +3705,7 @@ RCC_APB1PeriphResetCmd                            Libraries\STM32F4xx_StdPeriph_
                                                   Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_dac.o
                                                   Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_can.o
 RCC_APB2PeriphClockCmd                            Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
+                                                  src\main.o
                                                   Utilities\STM32F4-Discovery\stm32f4_discovery_lis302dl.o
                                                   Utilities\STM32F4-Discovery\stm32f4_discovery.o
 RCC_APB2PeriphClockLPModeCmd                      Libraries\STM32F4xx_StdPeriph_Driver\src\stm32f4xx_rcc.o
@@ -3843,26 +4056,72 @@ __init_array_end                                  c:/program files (x86)/atollic
 __init_array_start                                c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-init.o)
 __libc_init_array                                 c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-init.o)
                                                   src\startup_stm32f4xx.o
+__malloc_free_list                                c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-freer.o)
+__malloc_lock                                     c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-mlock.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-freer.o)
+__malloc_sbrk_start                               c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
+__malloc_unlock                                   c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-mlock.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-freer.o)
 __preinit_array_end                               c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-init.o)
 __preinit_array_start                             c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-init.o)
 __register_frame_info                             c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crtbegin.o
+__sf_fake_stderr                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-impure.o)
+__sf_fake_stdin                                   c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-impure.o)
+__sf_fake_stdout                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-impure.o)
 _ebss                                             src\startup_stm32f4xx.o
 _edata                                            src\startup_stm32f4xx.o
 _estack                                           src\startup_stm32f4xx.o
 _fini                                             c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crti.o
+_free_r                                           c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-freer.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o)
+_gettimeofday                                     c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(gettod.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-gettimeofdayr.o)
+_gettimeofday_r                                   c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-gettimeofdayr.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-time.o)
+_global_impure_ptr                                c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-impure.o)
+_impure_ptr                                       c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-impure.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-time.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-rand.o)
 _init                                             c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/armv7e-m/softfp/crti.o
                                                   c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-init.o)
+_malloc_r                                         c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o)
+_reclaim_reent                                    c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
+_sbrk                                             c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(sbrk.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-sbrkr.o)
+_sbrk_r                                           c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-sbrkr.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-nano-mallocr.o)
 _sbss                                             src\startup_stm32f4xx.o
 _sdata                                            src\startup_stm32f4xx.o
 _sidata                                           src\startup_stm32f4xx.o
 _write                                            c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
                                                   src\tiny_printf.o
-errno                                             c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(errno.o)
+advVehicles                                       src\helpers.o
+                                                  src\main.o
+changeLightColor                                  src\helpers.o
+                                                  src\main.o
+cleanup_glue                                      c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
+end                                               c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(sbrk.o)
+errno                                             c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-reent.o)
                                                   c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(write.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libnosys.a(gettod.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-sbrkr.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-gettimeofdayr.o)
 fprintf                                           src\tiny_printf.o
+free                                              c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o)
+gBoardState                                       src\main.o
+gLightColor                                       src\main.o
 g_pfnVectors                                      src\startup_stm32f4xx.o
 main                                              src\main.o
                                                   src\startup_stm32f4xx.o
+malloc                                            c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-malloc.o)
+                                                  c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-rand.o)
 memcpy                                            c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memcpy-stub.o)
                                                   FreeRTOS_Source\queue.o
 memset                                            c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-memset.o)
@@ -3871,6 +4130,7 @@ pcQueueGetName                                    FreeRTOS_Source\queue.o
 pcTaskGetName                                     FreeRTOS_Source\tasks.o
 pcTimerGetName                                    FreeRTOS_Source\timers.o
 printf                                            src\tiny_printf.o
+                                                  src\main.o
 pvPortMalloc                                      FreeRTOS_Source\portable\MemMang\heap_1.o
                                                   FreeRTOS_Source\timers.o
                                                   FreeRTOS_Source\tasks.o
@@ -3883,8 +4143,17 @@ pxCurrentTCB                                      FreeRTOS_Source\tasks.o
                                                   FreeRTOS_Source\portable\GCC\ARM_CM4F\port.o
 pxPortInitialiseStack                             FreeRTOS_Source\portable\GCC\ARM_CM4F\port.o
                                                   FreeRTOS_Source\tasks.o
+rand                                              c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-rand.o)
+                                                  src\main.o
 readFlow                                          src\firmware.o
+                                                  src\main.o
 sprintf                                           src\tiny_printf.o
+srand                                             c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-rand.o)
+                                                  src\main.o
+stickyAdvVehicles                                 src\helpers.o
+                                                  src\main.o
+time                                              c:/program files (x86)/atollic/truestudio for stm32 9.1.0/armtools/bin/../lib/gcc/arm-atollic-eabi/6.3.1/../../../../arm-atollic-eabi/lib/armv7e-m/softfp\libc_nano.a(lib_a-time.o)
+                                                  src\main.o
 ts_formatlength                                   src\tiny_printf.o
 ts_formatstring                                   src\tiny_printf.o
 ts_itoa                                           src\tiny_printf.o
@@ -3954,6 +4223,7 @@ vQueueUnregisterQueue                             FreeRTOS_Source\queue.o
 vQueueWaitForMessageRestricted                    FreeRTOS_Source\queue.o
                                                   FreeRTOS_Source\timers.o
 vTaskDelay                                        FreeRTOS_Source\tasks.o
+                                                  src\main.o
 vTaskDelayUntil                                   FreeRTOS_Source\tasks.o
                                                   src\main.o
 vTaskDelete                                       FreeRTOS_Source\tasks.o
@@ -3984,9 +4254,8 @@ vTaskSuspendAll                                   FreeRTOS_Source\tasks.o
 vTaskSwitchContext                                FreeRTOS_Source\tasks.o
                                                   FreeRTOS_Source\portable\GCC\ARM_CM4F\port.o
 vTimerSetTimerID                                  FreeRTOS_Source\timers.o
-writeIntersection                                 src\firmware.o
-writeLight                                        src\firmware.o
-writeQueue                                        src\firmware.o
+writeBoard                                        src\firmware.o
+                                                  src\main.o
 xEventGroupClearBits                              FreeRTOS_Source\event_groups.o
 xEventGroupCreate                                 FreeRTOS_Source\event_groups.o
 xEventGroupGetBitsFromISR                         FreeRTOS_Source\event_groups.o
@@ -4054,7 +4323,6 @@ xTaskResumeAll                                    FreeRTOS_Source\tasks.o
                                                   FreeRTOS_Source\event_groups.o
 xTaskResumeFromISR                                FreeRTOS_Source\tasks.o
 xTimerCreate                                      FreeRTOS_Source\timers.o
-                                                  src\main.o
 xTimerCreateTimerTask                             FreeRTOS_Source\timers.o
                                                   FreeRTOS_Source\tasks.o
 xTimerGenericCommand                              FreeRTOS_Source\timers.o
diff --git a/src/main.c b/src/main.c
index 4f66691..ec5dcf1 100644
--- a/src/main.c
+++ b/src/main.c
@@ -185,6 +185,14 @@ const int MAX_OF_POT = 4095;
 
 /*-----------------------------------------------------------*/
 
+// Our tasks
+static void prvTrafficFlowAdjustment(void *pvParameters);
+static void prvTrafficCreator(void *pvParameters);
+static void prvTrafficLight(void *pvParameters);
+static void prvDisplayBoard(void *pvParameters);
+
+/*-----------------------------------------------------------*/
+
 /*
  * TODO: Implement this function for any hardware specific clock configuration
  * that was not already performed before main() was called.
@@ -213,6 +221,7 @@ static void prvEventSemaphoreTask( void *pvParameters );
 
 /* The queue used by the queue send and queue receive tasks. */
 static xQueueHandle xQueue = NULL;
+static xQueueHandle xFlowQueue = NULL;
 
 /* The semaphore (in this case binary) that is used by the FreeRTOS tick hook
  * function and the event semaphore task.
@@ -226,9 +235,6 @@ static volatile uint32_t ulCountOfTimerCallbackExecutions = 0;
 static volatile uint32_t ulCountOfItemsReceivedOnQueue = 0;
 static volatile uint32_t ulCountOfReceivedSemaphores = 0;
 
-// Our tasks
-static void vDisplayBoard(void *pvParameters);
-static void vTrafficFlowAdjustment(void *pvParameters);
 /*-----------------------------------------------------------*/
 
 int main(void)
@@ -242,11 +248,12 @@ int main(void)
 
 	/* Create the queue used by the queue send and queue receive tasks.
 	http://www.freertos.org/a00116.html */
-	xQueue = xQueueCreate( 	mainQUEUE_LENGTH,		/* The number of items the queue can hold. */
-							sizeof( uint32_t ) );	/* The size of each item the queue holds. */
-	xFlowQueue = xQueueCreate( 	mainQUEUE_LENGTH,		/* The number of items the queue can hold. */
+	xQueue = xQueueCreate( 	1,						/* The number of items the queue can hold. */
 							sizeof( uint32_t ) );	/* The size of each item the queue holds. */
 
+	xFlowQueue = xQueueCreate( 	1,					/* The number of items the queue can hold. */
+							sizeof( uint16_t ) );	/* The size of each item the queue holds. */
+
 	/* Add to the registry, for the benefit of kernel aware debugging. */
 	vQueueAddToRegistry( xQueue, "MainQueue" );
 	vQueueAddToRegistry( xFlowQueue, "FlowQueue" );
@@ -260,58 +267,34 @@ int main(void)
 
 	/* Create the queue receive task as described in the comments at the top
 	of this	file.  http://www.freertos.org/a00125.html */
-	xTaskCreate( 	prvQueueReceiveTask,			/* The function that implements the task. */
-					"Rx", 		/* Text name for the task, just to help debugging. */
-					configMINIMAL_STACK_SIZE, 		/* The size (in words) of the stack that should be created for the task. */
-					NULL, 							/* A parameter that can be passed into the task.  Not used in this simple demo. */
-					mainQUEUE_RECEIVE_TASK_PRIORITY,/* The priority to assign to the task.  tskIDLE_PRIORITY (which is 0) is the lowest priority.  configMAX_PRIORITIES - 1 is the highest priority. */
-					NULL );							/* Used to obtain a handle to the created task.  Not used in this simple demo, so set to NULL. */
-
-
-	/* Create the queue send task in exactly the same way.  Again, this is
-	described in the comments at the top of the file. */
-	xTaskCreate( 	prvQueueSendTask,
-					"TX",
-					configMINIMAL_STACK_SIZE,
-					NULL,
-					mainQUEUE_SEND_TASK_PRIORITY,
-					NULL );
-
-
-	/* Create the task that is synchronised with an interrupt using the
-	xEventSemaphore semaphore. */
-	xTaskCreate( 	prvEventSemaphoreTask,
-					"Sem",
-					configMINIMAL_STACK_SIZE,
-					NULL,
-					mainEVENT_SEMAPHORE_TASK_PRIORITY,
-					NULL );
-
-
-	/* Create the software timer as described in the comments at the top of
-	this file.  http://www.freertos.org/FreeRTOS-timers-xTimerCreate.html. */
-	xExampleSoftwareTimer = xTimerCreate("LEDTimer", /* A text name, purely to help debugging. */
-								mainSOFTWARE_TIMER_PERIOD_MS,		/* The timer period, in this case 1000ms (1s). */
-								pdTRUE,								/* This is a periodic timer, so xAutoReload is set to pdTRUE. */
-								( void * ) 0,						/* The ID is not used, so can be set to anything. */
-								vExampleTimerCallback				/* The callback function that switches the LED off. */
-							);
-
-	/* Create the queue receive task as described in the comments at the top
-	of this	file.  http://www.freertos.org/a00125.html */
-	xTaskCreate( 	vDisplayBoard,			/* The function that implements the task. */
-					"DisplayBoard", 		/* Text name for the task, just to help debugging. */
-					configMINIMAL_STACK_SIZE, 		/* The size (in words) of the stack that should be created for the task. */
-					NULL, 							/* A parameter that can be passed into the task.  Not used in this simple demo. */
-					mainQUEUE_RECEIVE_TASK_PRIORITY,/* The priority to assign to the task.  tskIDLE_PRIORITY (which is 0) is the lowest priority.  configMAX_PRIORITIES - 1 is the highest priority. */
-					NULL );							/* Used to obtain a handle to the created task.  Not used in this simple demo, so set to NULL. */
-	xTaskCreate( 	vTrafficFlowAdjustment,			/* The function that implements the task. */
-					"FlowAdjustment", 		/* Text name for the task, just to help debugging. */
-					configMINIMAL_STACK_SIZE, 		/* The size (in words) of the stack that should be created for the task. */
-					NULL, 							/* A parameter that can be passed into the task.  Not used in this simple demo. */
-					mainQUEUE_RECEIVE_TASK_PRIORITY,/* The priority to assign to the task.  tskIDLE_PRIORITY (which is 0) is the lowest priority.  configMAX_PRIORITIES - 1 is the highest priority. */
-					NULL );							/* Used to obtain a handle to the created task.  Not used in this simple demo, so set to NULL. */
 
+	xTaskCreate(prvTrafficFlowAdjustment,			/* The function that implements the task. */
+				"FlowAdjustment", 					/* Text name for the task, just to help debugging. */
+				configMINIMAL_STACK_SIZE, 			/* The size (in words) of the stack that should be created for the task. */
+				NULL, 								/* A parameter that can be passed into the task.  Not used in this simple demo. */
+				mainQUEUE_RECEIVE_TASK_PRIORITY,	/* The priority to assign to the task.  tskIDLE_PRIORITY (which is 0) is the lowest priority.  configMAX_PRIORITIES - 1 is the highest priority. */
+				NULL );								/* Used to obtain a handle to the created task.  Not used in this simple demo, so set to NULL. */
+
+	xTaskCreate(prvTrafficCreator,					/* The function that implements the task. */
+				"TrafficCreator", 					/* Text name for the task, just to help debugging. */
+				configMINIMAL_STACK_SIZE, 			/* The size (in words) of the stack that should be created for the task. */
+				NULL, 								/* A parameter that can be passed into the task.  Not used in this simple demo. */
+				mainQUEUE_RECEIVE_TASK_PRIORITY,	/* The priority to assign to the task.  tskIDLE_PRIORITY (which is 0) is the lowest priority.  configMAX_PRIORITIES - 1 is the highest priority. */
+				NULL );								/* Used to obtain a handle to the created task.  Not used in this simple demo, so set to NULL. */
+
+	xTaskCreate(prvTrafficLight,					/* The function that implements the task. */
+				"TrafficLight", 					/* Text name for the task, just to help debugging. */
+				configMINIMAL_STACK_SIZE, 			/* The size (in words) of the stack that should be created for the task. */
+				NULL, 								/* A parameter that can be passed into the task.  Not used in this simple demo. */
+				mainQUEUE_RECEIVE_TASK_PRIORITY,	/* The priority to assign to the task.  tskIDLE_PRIORITY (which is 0) is the lowest priority.  configMAX_PRIORITIES - 1 is the highest priority. */
+				NULL );								/* Used to obtain a handle to the created task.  Not used in this simple demo, so set to NULL. */
+
+	xTaskCreate(prvDisplayBoard,					/* The function that implements the task. */
+				"DisplayBoard", 					/* Text name for the task, just to help debugging. */
+				configMINIMAL_STACK_SIZE, 			/* The size (in words) of the stack that should be created for the task. */
+				NULL, 								/* A parameter that can be passed into the task.  Not used in this simple demo. */
+				mainQUEUE_RECEIVE_TASK_PRIORITY,	/* The priority to assign to the task.  tskIDLE_PRIORITY (which is 0) is the lowest priority.  configMAX_PRIORITIES - 1 is the highest priority. */
+				NULL );								/* Used to obtain a handle to the created task.  Not used in this simple demo, so set to NULL. */
 
 	/* Start the created timer.  A block time of zero is used as the timer
 	command queue cannot possibly be full here (this is the first timer to
@@ -331,7 +314,7 @@ int main(void)
 }
 /*-----------------------------------------------------------*/
 
-static void vTrafficFlowAdjustment(void *pvParameters) {
+static void prvTrafficFlowAdjustment(void *pvParameters) {
 	u_int16_t ulReceivedValue;
 	while (1) {
 		// Run every 250ms
@@ -348,7 +331,7 @@ static void vTrafficFlowAdjustment(void *pvParameters) {
 	}
 }
 
-static void vTrafficCreator(void *pvParameters) {
+static void prvTrafficCreator(void *pvParameters) {
 	// Initialize timer
 	time_t t;
 	u_int16_t  gFlow;
@@ -385,7 +368,7 @@ static void vTrafficCreator(void *pvParameters) {
 	}
 }
 
-static void vTrafficLight(void *pvParameters) {
+static void prvTrafficLight(void *pvParameters) {
 	while(1) {
 		// Run every 250ms
 		vTaskDelay(250);
@@ -405,7 +388,7 @@ static void vTrafficLight(void *pvParameters) {
 	}
 }
 
-static void vDisplayBoard(void *pvParameters) {
+static void prvDisplayBoard(void *pvParameters) {
 	uint32_t ulReceivedValue;
 
 	while(1) {
