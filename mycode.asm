.model small
.stack 100h
.data
    msg DB 10,13,'$'   
    
.code
    main proc
        mov ax,@DATA
        mov ds,ax
        
        mov ah,1
        int 21h 
        mov bl,al
        
        mov ah,1
        int 21h
        mov bh,al 
        
        mov ah,1
        int 21h
        mov cl,al
        
        lea DX, msg
        mov ah,9
        int 21h
        
                 
        mov ah,2  
        mov dl,bl
        int 21h
        
        lea DX, msg
        mov ah,9
        int 21h
        
        mov ah,2  
        mov dl,bh
        int 21h
        
        lea DX, msg
        mov ah,9
        int 21h
        
        mov ah,2  
        mov dl,cl
        int 21h
                   
     main endp
end main