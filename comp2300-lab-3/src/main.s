.syntax unified
.global main

main:

@@@@@@@@@@@@@@@@@@@@@@@
@ your code goes here @
movs r1, #100
movs r2, #10
movs r3, #0x7FFFFFFF
movs r4, #15
movs r5, #9

Negative:
adds r2, #-20
//b End_Case

Overflow:
adds r3, #1


Carry:
adds r4, #0xFF000000
adds r4, #0xFF000000

Zero:
subs r5, r5
b End_Case

End_Case:
nop
@@@@@@@@@@@@@@@@@@@@@@@
@ a simple infinite loop

end_loop:
	adds r1, r1, #50
    b end_loop


