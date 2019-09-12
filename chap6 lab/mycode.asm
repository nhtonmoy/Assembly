.MODEL SMALL
.STACK 100H

.DATA

A DB ?
B DB ?
C DB ?

.CODE
    MAIN PROC 
        
        MOV AX,@DATA
        MOV DS,AX
         
       MOV AH,1
       INT 21H
       MOV C,AL
       
                
        MOV AH,1
        INT 21H
        MOV A,AL
        
        MOV AH,1
        INT 21H
        MOV B,AL
        

        MOV BL,0
    START:
       
       CMP C,'1'
       je ADDITION 
       
       
       CMP C,'2'
       JE   SUBSTRACTION
       
       
       CMP C,'2'
       JE  MULTIPLICATION 
       
       JMP EX
       
      ADDITION: 
      
     
      ADD BL,B
      ADD BL,A
      
      SUB BL, 48
      MOV AH,2
      MOV DL,BL
      INT 21H
      
      
      
      SUBSTRACTION:
       
       
       MOV AL,A
      SUB AL,B
      MOV A,AL
      ADD A,30H
      
      MOV AH,2
      MOV DL,A
      INT 21H   
      JMP EX
       
       
  
      
  
       
       EX:
           MOV AH,4CH
           INT 21H 
       
       MAIN ENDP
    
    END MAIN



