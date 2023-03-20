.model small
.stack 100h
.data
    m1 db 'Forhad$'
    m2 db 'Esha$'
 .code
 main proc 
    
    mov ax,@data
    mov ds,ax
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,m2
    int 21h
    
    
   ;exit
   mov ah,4ch
   int 21h
   main endp
 end main