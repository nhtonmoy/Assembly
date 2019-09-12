.model small
.stack 100h
.data
   a db ?
   b db ? 
    
.code
    main proc
        mov ax,@data
        mov ds,ax
            
        mov ah,1
        int 21h
        mov bl,al
        mov b,al
        int 21h
        mov a,al
        xchg al,bl
        
        mov ah,2
        mov dl,a
        int 21h
        mov dl,b
        int 21h
        
        mov ah,4ch
        int 21h
    main endp
end main