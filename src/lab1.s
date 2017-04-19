
;
;This program clears the status register and after this, it does loop endlessly. 
;I named the program as lab1 and searched its folders and itself by typing in terminal. 
;Then I changed the extension from.s to .o, next to .elf and to .hex in end.
; Because I needed to call assembly to create the machine code.
;I connected USB to PC, then did listing my USB device and writing my arduino memory.
;After it ran successfully, the light blinked several times.

.equ SREG, 0x3f          ; define the status register label as constant 0x3f
.org 0                   ; the start address when the translating to machine code
main:	ldi r16, 0       ; set r16 to 0 
	    out SREG, r16    ;register r16 for holding data in the microprocessor CPU
mainloop: rjmp mainloop  ;jump to mainloop address( do loop endlessly)
