.model small
.stack 100h
.data
    m db 'enter first digit: '
    n1 db ?
    mE db '$'
    m1 db 10,13,'enter second digit: '
    n2 db ?
    m2 db '$'
    m3 db 10,13,'the sum is: 1'
    ans db ?
    mEnd db '$'
    
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,m
        int 21h
        
        mov ah,1
        int 21h
        mov bl,al
        mov n1,al
        
        mov ah,9
        lea dx,m1
        int 21h
        
        mov ah,1
        int 21h
        mov n2,al
        
        add al,bl
        sub al,3ah
        mov ans,al
        
        mov ah,9
        lea dx,m3
        int 21h
        
         
        mov ah,4ch
        int 21h
    main endp
end main