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
        sub bl,30h
        int 21h
        sub al,30h
        mul bl
        
        add al,30h
        
        mov ah,2
        mov dl,al
        int 21h
        
        mov ah,4ch
        int 21h
    main endp
end main