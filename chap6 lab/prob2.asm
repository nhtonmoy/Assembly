       .model small
.stack 100h

.data
ab db 'enter 1st digit:$'
abc db 'enter second digit:$'
a db 'Sum of two digits : $'
b db '1$' 

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
            
            
    add bl,bh
    mov ah,2
    int 21h
    
    sub bl,58
    
    LEA dx,a 
    mov ah,9
    int 21h
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
     
   
   
         
     
    mov ah,4ch    
     int 21h
    main endp
end main