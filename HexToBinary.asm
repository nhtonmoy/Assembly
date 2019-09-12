.model small
.stack 100h
.data
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov cx,8
    
carryLoop:
    rol bl,1
    jc p1
    jnc p0
p1:
    mov ah,2
    mov dl,'1'
    int 21h
    loop carryLoop
    inc bh
    jmp ex
    
p0:
    mov ah,2
    mov dl,'0'
    int 21h
    loop carryLoop

ex:    
    mov ah,4ch
    int 21h
endp
end main