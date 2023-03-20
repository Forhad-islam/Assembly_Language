.model small
.stack 100h
.data 
   a db 'The different $'
   b db 'and $'
   c db ' is:$' 
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    
    mov ah,2
    mov dl,'?'
    int 21h  
    
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h 
    mov bh,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    
    mov ah,9
    lea dx,a
    int 21h 
    
    mov ah,2
    mov dl,bl
    int 21h 
    
        ;againg
    mov ah,9
    lea dx,b
    int 21h 
    
    mov ah,2
    mov dl,bh
    int 21h
    
        ;is
     mov ah,9
    lea dx,c
    int 21h
    
    sub bl,bh
    add bl,48 
    mov ah,2
    mov dl,bl
    int 21h
    
    
    mov ah,4ch 
    int 21h
    main endp
end main