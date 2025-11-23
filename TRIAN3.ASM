; TRIAN3.ASM
;
; Este modulo ordena 3 valor de menor a mayor.

ideal
dosseg
model small

codeseg
    public ordenar

proc ordenar
    local temp: word = tamVars

    push bp
    mov bp, sp
    sub sp, tamVars
    
    cmp cx, bx
    ja @@camb1
    mov [temp], cx
    mov cx, bx
    mov bx, [temp]
    
    @@camb1:
    cmp cx, ax
    ja @@camb2
    mov [temp], cx
    mov cx, ax
    mov ax, [temp]
    
    @@camb2:
    cmp bx, ax
    ja @@fin
    mov [temp], bx
    mov bx, ax
    mov ax, [temp]
    
    @@fin:
    mov sp, bp
    pop bp
    
    ret
endp ordenar

end