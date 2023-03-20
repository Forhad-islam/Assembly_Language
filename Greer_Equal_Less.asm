.model small
.stack 100h
.data  
    a db 'MIT$'
    b db 'HARVARD$'
    c db 'OXFORD$'
    d db 'CAMBRIDGER$'
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h    ;input 9
    mov bl,al 
    
    mov ah,1        ;input 1
    int 21h 
    mov bh,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    
    ;compare
    
    cmp bl,bh ;if bl is large 
       
    
    
    jg large  ;if bl is lagre 
    jl less  ;if   bl less
    je equal   ;if bl=bh then 
    
    

    
    
    large:
       mov ah,9
       lea dx,a  ;MIT
       int 21h
       
       mov ah,2
       mov dl,10
       int 21h
       mov dl,13
       int 21h 
       
       mov ah,9
       lea dx,c  ;oxford
       int 21h
       
       mov ah,2
       mov dl,10
       int 21h
       mov dl,13
       int 21h 
               
       
       mov ah,9
       lea dx,d  ;cambridge
       int 21h
       
       jmp exit  
       
       
      less: 
       mov ah,9
       lea dx,b  ;harbard
       int 21h
       
       mov ah,2
       mov dl,10
       int 21h
       mov dl,13
       int 21h 
       
       mov ah,9
       lea dx,c  ;oxford
       int 21h
       
       mov ah,2
       mov dl,10
       int 21h
       mov dl,13
       int 21h 
               
       
       mov ah,9
       lea dx,d  ;cambridge
       int 21h
       
       jmp exit
       
       
       
       equal:
       mov ah,9
       lea dx,a  ;MIT
       int 21h
       
       mov ah,2
       mov dl,10
       int 21h
       mov dl,13
       int 21h 
       
       mov ah,9
       lea dx,b  ;harbard
       int 21h
       
       mov ah,2
       mov dl,10
       int 21h
       mov dl,13
       int 21h 
               
       
       mov ah,9
       lea dx,d  ;cambrdge
       int 21h
       
       jmp exit
        
    
      
    
    exit:
    mov ah,4ch 
    int 21h 
    main endp
end main 
                                    