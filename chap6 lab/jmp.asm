.model small
.stack 100h
.data
     a db 'enter input : ', 36
     v db 'the input is vowel$' 
     num db 'the input is number$' 
     con db 'the input is consonant$'
.code
     main proc
        mov ax,@data
        mov ds,ax
        
        lea dx,a
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h 
        mov bl,al
        
        cmp bl,'A'
        je vowel
        cmp bl,'E'
        je vowel
        cmp bl,'I'
        je vowel  
        cmp bl,'O'
        je vowel  
        cmp bl,'U'
        je vowel  
        cmp bl,'a'
        je vowel
        cmp bl,'e'
        je vowel
        cmp bl,'i'
        je vowel  
        cmp bl,'o'
        je vowel  
        cmp bl,'u'
        je vowel
        cmp bl, '0'    
        je n
        cmp bl, '1'    
        je n
        cmp bl, '2'    
        je n
        cmp bl, '3'    
        je n  
        cmp bl, '4'    
        je n
        cmp bl, '5'    
        je n
        cmp bl, '6'    
        je n
        cmp bl, '7'    
        je n
        cmp bl, '8'    
        je n       
        cmp bl, '9'    
        je n      
        jne Consonant
    vowel:
        LEA DX,v
        MOV AH,9
        int 21h
        jmp ex
        
        
    n:
        lea dx,num
        mov ah,9
        int 21h
        jmp ex
    Consonant:
        lea dx, con
        mov ah,9
        int 21h
        jmp ex
        
         
        
    
        
        
        
        
        
        
        
        
    ex:    
        mov ah,4ch
        int 21h
        
     main endp
end main
        
        