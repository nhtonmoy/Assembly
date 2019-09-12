.model small
.stack 100h
.data
               
    msg db 'Enter first digit: $' 
    msg2 db 10,13,'Enter second digit: $' 
    msg3 db 10,13,'Sum= $'
    a db 0
    b db 0
    c db 0
    
.code
    main proc
        mov ax,@DATA
        mov ds,ax
        
        mov ah,9
        lea dx,msg
        int 21h
        
        mov ah,1
        int 21h
        mov a,al
        sub al,48
        
        mov ah,9
        lea dx,msg2 
        int 21h
        
        mov ah,1
        int 21h
        mov b,al
        sub al,48
        
        add al,a
        mov ah,0   
        
        aaa
        
        add ah,48
        add al,48
        
        mov bx,ax
        
        mov ah,9
        lea dx, msg3
        int 21h
        
        mov ah,2
        mov dl,bh
        int 21h
        
        mov ah,2
        mov dl,bl
        int 21h
        
        
        
        
        mov ah,4ch
        int 21h
        
                   
     main endp
end main           

  
  
  
  
           