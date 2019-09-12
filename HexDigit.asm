.model small
.stack 100h
.data
    msg DB 10,13,'In decimal:  ','$'        
    
.code
    main proc
        mov ax,@DATA
        mov ds,ax 
        
        
        mov ah,1
        int 21h 
        mov bl,al
        lea dx,msg
        mov ah,9
        int 21h
        
        cmp bl, 'a'
        je choto  
        cmp bl,'b'
        je choto  
        cmp bl,'c'
        je choto  
        cmp bl,'d'
        je choto  
        cmp bl,'e'
        je choto  
        cmp bl,'f'
        je choto  
        jne boro
        
        
        
    choto:
        sub bl,49
        jmp ex
        
        
    boro:    
        sub bl,17
        jmp ex
        
        
        
    ex:         
        mov ah,2  
        mov dl,'1'
        int 21h
        
        
        
        mov ah,2  
        mov dl,bl
        int 21h
        
        mov ah,4ch
        int 21h
                   
     main endp
end main