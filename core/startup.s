        .syntax unified
        .cpu cortex-m4
        .thumb

        .section .vectors, "a"
        .word __StackTop
        .word Reset_Handler
        .word Default_Handler
        .word Default_Handler
        .word Default_Handler
        .word Default_Handler
        .word Default_Handler
        .space 16
        .word Default_Handler
        .word Default_Handler
        .space 4
        .word Default_Handler
        .word Default_Handler


        .text

        .global Reset_Handler
        .type Reset_Handler, %function
        .thumb_func
Reset_Handler:
        bl      main

1:
        b       1b

        .size Reset_Handler, .-Reset_Handler


        .global Default_Handler
        .type Default_Handler, %function
        .thumb_func
Default_Handler:
        b       Default_Handler

.size Default_Handler, .-Default_Handler