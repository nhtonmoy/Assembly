.model small
.stack 100h
.data
    n db 10,13,''
    num1 db ?
    n1 db '   '
    num2 db ?
    n2 db '$'
    
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,1
        int 21h
        mov bl,al
        int 21h
        cmp al,bl
        jg check
        mov num1,al
        mov num2,bl
        jmp ex
        
        
    check:
        xchg al,bl
        mov num1,al
        mov num2,bl
        jmp ex
        
     ex:
        mov ah,9
        lea dx,n
        int 21h    
        
        mov ah,4ch
        int 21h
    main endp
end main