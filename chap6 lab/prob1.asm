.model small
.stack 100h

.data
ab db 'enter 1st digit:$'
abc db 'enter second digit:$'
a db 'after exchange digits will  be : $' 

.code   



main proc
    mov ax, @data
    mov ds,ax
    
    LEA dx,ab 
    mov ah,9
    int 21h
    
    
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    ;mov dl,bl
    ;int 21h 
    
   ;mov bh,bl
    
    
    LEA dx,abc 
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
            
            
    xchg bl,bh
    mov ah,2
    int 21h
    
    LEA dx,a 
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    mov dl,bh
    int 21h
         
     
    mov ah,4ch    
     int 21h
    main endp
end main 
