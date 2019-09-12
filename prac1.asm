.model small
.stack 100h
.data
               
      
    
.code
    main proc
        mov ax,@DATA
        mov ds,ax
        
    first:
        mov dl,3
        add dl,48
        mov ah,2
        int 21h
        
        jmp second
                   
    second:
        mov dl,4
        add dl,48
        mov ah,2
        int 21h 
        jmp first
        
        mov ah,4ch
        int 21h
        
                   
     main endp
end main           

  
  
  
  
           