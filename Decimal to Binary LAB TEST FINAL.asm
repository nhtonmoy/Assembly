                 .model small
.stack 100h
.data
    nl db 10,13,'$'
    msg1 db 'Enter a Number in Decimal: $'
    msg2 db 'Number in Binary is: $'
.code
    main proc
        mov ax,@data
        mov ds,ax
        
    input:
        mov ah,9
        lea dx,msg1
        int 21h
        mov ah,1
        int 21h        ;input
        mov bl,al
        mov ah,9
        lea dx,nl
        int 21h
        cmp bl,'N'     ;Check if bl==N
        je endd        ;if yes, goto endd
        mov ah,9
        lea dx,msg2
        int 21h   
        jne continue   ;else, goto continue
    continue: 
        sub bl,48      ;subtract 48 from the ascii value
        mov cx,8       ;initialize cx = 8
    l1:
        cmp cx,0       ;Check if cx ==0
        jne l2         ;if not, goto l2
        mov ah,9
        lea dx,nl
        int 21h
        jmp input      ;goto input
    l2:
        rol bl,1       ;rotate bl by 1 to the left
        dec cx         ;cx--
        jc p1          ;if carry, goto p1
        jnc p0         ;if not carry, goto p0
        
        jmp l1         ;goto l1
        
        
    p1:
        mov ah,2
        mov dl,'1'     ;print 1
        int 21h
        jmp l1
    p0:
        mov ah,2
        mov dl,'0'     ;print 0
        int 21h
        jmp l1
        
        
        
    endd:    
        mov ah,4ch
        int 21h        ;end
    main endp
end main    