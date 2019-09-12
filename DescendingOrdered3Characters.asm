.model small
.stack 100h
.data
   msg db 10,13,'Desc: '
   n1 db ?
   n2 db ?
   n3 db ?
   eoc db '$'
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,1
        int 21h
        mov bl,al
        int 21h
        mov cl,al
        int 21h
        jmp op
    op:
        cmp al,bl
        jg ex1
        jle com1
    ex1:
        xchg al,bl
        jmp com1
        
    com1:
        cmp bl,cl
        jle exe
        jg ex2
    ex2:
        xchg bl,cl
        jmp op
        
    exe:
        mov n1,al
        mov n2,bl
        mov n3,cl
        
        mov ah,9
        lea dx,msg
        int 21h
    
        
        mov ah,4ch
        int 21h
    main endp
end main