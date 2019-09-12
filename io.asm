org 100h
.model small
.stack 100h
.data
    x db 0
         
     
.code
    mov ah,1      ;input nibe
    int 21h       ;aager line er kaj tuku hobe
    mov x,al      ;value AL e chilo, otake X e niye asha lagse 
    
    ;er aag porjonto input nise    
    
    mov ah,2
    mov dl,0dh    ;carriage return: puro line er prothome niye ashe
    int 21h
    mov dl,0ah    ;line feed
    int 21h
    
    mov ah,2      ;output dibe 
    
    mov dl,x      ;output er jonne DX register laage
    int 21h