.Syntax unified
.global main

main:

@ load r1 with the base address of RCC
ldr r1, =0x40021000

@ load r2 with the value of RCC_AHB2ENR
@ (note the #0x4C offset from the RCC base address)
ldr r2, [r1, #0x4C]

@ set bit 1 of this register by doing a logical or with #2
@ think: why does this work?
orr r2, #2
orr r2, #16

@ store the modified result back in RCC_AHB2ENR
str r2, [r1, #0x4C]


ldr r1, =0x48000400 @GPIO

ldr r2, [r1, #0x0]

orr r2, #16

bic r2,  #32


str r2, [r1, #0x0]



ldr r1, =0x48000400 @GPIO

ldr r2, [r1, #0x14]

orr r2, #4


str r2, [r1, #0x14]

@green light

ldr r1, =0x48001000 @GPIO

ldr r2, [r1, #0x0]

orr r2, #65536

bic r2,  #131072


str r2, [r1, #0x0]



ldr r1, =0x48001000 @GPIO

ldr r2, [r1, #0x14]

orr r2, #256


str r2, [r1, #0x14]

