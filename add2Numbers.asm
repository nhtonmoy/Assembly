.model small
.stack 100h
.data
    str DB 0AH, 0DH, 'The sum of '
    n1 DB ?
    str2 DB ' and '
    n2 DB ?
    str3 DB ' is '
    ans DB ?
    str4 DB ' $'
    
.code
    main proc
        mov ax,@data
        mov ds,ax   
        
        mov ah,2
        mov dl,3fh
        int 21h
        
                           
        mov ah,1
        int 21h
        mov bl,al
        mov n1, al
        int 21h
        mov n2, al
        
        add bl,al
        sub bl,30h
        mov ans,bl
        
        
        mov ah,9
        lea dx,str
        int 21h
        
        mov ah,4ch
        int 21h
    main endp
end main