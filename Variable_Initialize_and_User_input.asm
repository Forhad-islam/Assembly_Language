.MODEL SMALL
.STACK 100H
.DATA
   msg DB 3 
   msg1 DB ?
.CODE
MAIN PROC
    MOV AX,@DATA   ;AX IS A DATA REGISTOR AND WE INITIALIZE DATA IN AX
    MOV DS,AX      ; WE ASSING THE VALUE OF AX INTO DS
    
    MOV AH,2       ; FOR OOUTPUT
    ADD msg,48     ;CZZ THE VALUE OF 3 IN ASCII CODE IS 51 SO WE ADD 48 WITH 3
    MOV DL,msg                                                                
    INT 21H    
    
    
    ;USER INPUT AND STORE IT INTO msg1
    MOV AH,1
    INT 21H
    MOV msg1,AL
    
    
    ;FOR NEW LINE 
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    
    MOV AH,2
    MOV DL,msg1
    INT 21H
    
    
    
    ;EXIT
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

     