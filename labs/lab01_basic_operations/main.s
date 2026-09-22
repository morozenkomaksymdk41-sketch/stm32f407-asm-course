        .syntax unified
        .cpu cortex-m4
        .thumb

        .section .text
        .global main
        .type main, %function
        .thumb_func

main:
        nop     @Provide your code here

stop:
        nop
        b       stop

.size main, .-main