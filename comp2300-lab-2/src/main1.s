.syntax unified
.global main

main:
cope:
	.ascii "COPE"

ldr r1, cope
add r2, r1, #5
ror r4, r2, #24
add r5, r4, #14
ror r3, r5, #8







/*main:
	movs r1, #3
	movs r2, #1

	subs r3, r1, r2*/

/*main:
	nop
	.hword 0x2203
	nop
	.hword 0x2201
	nop
	.hword 0x1A8B
	nop
*/









/*.syntax unified
.global main

main:
	movs r1, #0
	movs r2, #2
	movs r3, #2
	adds r1, r2, r3*/
