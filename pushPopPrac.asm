.model small
.stack 100h
.data

.code
mov ah,1
int 21h
push ax
int 21h
push ax
int 21h
push ax

mov ah,2
mov dx,ax
pop dx
int 21h
mov dx,ax
pop dx
int 21h
mov dx,ax
pop dx
int 21h