bits 16
org 0x7c00

xor ax, ax
mov es, ax

mov ah, 13h
mov al, 01h
mov bh, 0
mov bl, 0xa
mov cx, msg_length
mov dh, 0
mov dl, 0
mov bp, msg
int 10h

msg db 'Hello World!'
msg_length equ $-msg

times 510 - ($-$$) db 0
dw 0xaa55
