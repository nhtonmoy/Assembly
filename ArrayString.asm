.model small
.stack 100h
.data
    msg DB '##########',10,13,'$'        
    
.code
    main proc
        mov ax,@DATA
        mov ds,ax 
        
        
        lea dx, msg    
        mov ah,9
        int 21h
        int 21h
        int 21h
        int 21h
        int 21h
        int 21h
        int 21h
        int 21h
        int 21h
        int 21h
        
        mov ah,4ch
        int 21h
                   
     main endp
end main