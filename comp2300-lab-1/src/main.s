.syntax unified
.global main

main:
	movs r1, #0

loop:
	add r1, #1
	b loop
