org 100h          ; Set origin at 100h for COM file

jmp start         ; Jump past the data declaration to start the code

msg:     db      0dh,0ah,"0-Fin :'S'",0dh,0ah,"1-Addition :'+'",0dh,0ah,"2-Soustraction :'-' ",0dh,0ah,"3-Multiplication :'*'",0dh,0ah,"4-Factoriel :'!'", 0Dh,0Ah,"5-Puisssance :'^'",0dh,0ah,"6-Division :'/'",0dh,0ah,"7-Arrangement :'a'",0dh,0ah,"8-Combinaison :'c'",0dh,0ah,"9-Pgcd :'G'",,0dh,0ah,'$'
msg2:    db      0dh,0ah,"Entrer le premier nombre : $"   ; Message for entering first number
msg3:    db      0dh,0ah,"Entrer le deuxième nombre : $" ; Message for entering second number
msg4:    db      0dh,0ah,"Erreur de choix, veuillez saisir l'un des caractères appropriés : '+', '-', '*', '!', '^', '/', 'a', 'c', 'G' ou un nombre : '1', '2', '3', '4', '5', '6', '7', '8', '9'$" ; Error message for invalid input
msg5:    db      0dh,0ah,"Erreur de type : division par zéro $" ; Error message for division by zero
msg6:    db      0dh,0ah,"Erreur de type : factoriel d'un nombre négatif $" ; Error message for factorial of negative number
res_pos: db      0dh,0ah,"Résultat : $"                    ; Message for displaying positive result
res_neg: db      0dh,0ah,"Résultat : -$"                   ; Message for displaying negative result
mrc:     db      0dh,0ah,"Merci d'utiliser la calculatrice simple ! Appuyez sur n'importe quelle touche pour quitter... ", 0Dh,0Ah, '$' ; Thank you message

; Main code
start:  
        mov ax,0
        mov bx,0
        mov dx,0
        
        mov ah,09h
        mov dx, offset msg                   ; Display main menu message
        int 21h
        mov ah,0                       
        int 16h
        
        cmp al,53h                           ; Check if input is 'S' to exit
        je exit
        cmp al,30h                           ; Check if input is a number
        je exit
                                     
        cmp al,2Bh                          ; Check if input is '+'
        je Addition
        cmp al,31h                           ; Check if input is '1'
        je Addition
        
        ; Similar comparisons for other operations
        
        mov ah,09h
        mov dx, offset msg4
        int 21h
        mov ah,0
        int 16h
          
        jmp start 

; Addition procedure
Addition:   
            ; Input first number
            mov ah,09h 
            mov dx, offset msg2  
            int 21h
            mov cx,0 
            call Lecture_Nombre  
            push dx
            ; Input second number
            mov ah,09h
            mov dx, offset msg3
            int 21h 
            mov cx,0
            call Lecture_Nombre
            pop bx
            add dx,bx                         ; Perform addition
            push dx 
            mov ah,9
            mov dx, offset res_pos
            int 21h
            mov cx,10000
            pop dx
            call Affichage_Nombre
            jmp start 

        ret
