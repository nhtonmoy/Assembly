.model small
.stack 100h
.data          
    msg db 'Enter Three Initials: $'
    seven db 10,13,'#######$'
    two1 db 10,13,'##'
    n1 db ?
    n2 db ?
    n3 db ?
    two2 db '##$'
    
    
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,msg
        int 21h
        
        mov ah,1 
        int 21h
        mov bl,al
        mov n1,al
        int 21h
        mov n2,al
        int 21h
        mov n3,al
        
        mov ah,9
        lea dx,seven
        int 21h
        int 21h
        int 21h
        
        lea dx, two1
        int 21h
        
        lea dx,seven
        int 21h
        int 21h
        int 21h
        
        
        mov ah,4ch
        int 21h
    main endp
end main