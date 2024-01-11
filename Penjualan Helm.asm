.MODEL LARGE
.STACK 1000H
.DATA

;OUTPUT
a1    db 10,13,10,13,'***           Selamat Datang di Planet Helm            ***$'
aa    db 10,13,'        **************************************$'
a2    db 10,13,'        **        1. Helm Full face         **$' 
a3    db 10,13,'        **        2. Helm Modular           **$' 
a4    db 10,13,'        **        3. Helm Motocross         **$'
a5    db 10,13,'        **        4. Helm Open face         **$' 
ab    db 10,13,'        **************************************$' 

xx    db 10,13,10,13,'Masukkan pilihan anda $'

sej   db 10,13,10,13,' $'
   
a6    db 10,13,'Pilih Helm : $'  

ac    db 10,13,10,13,'**pilih helm anda dalam menu**$' 

bb    db 10,13,'****************************************************$' 

bc    db 10,13,'*************************************************************$' 
    
bd    db 10,13,'***************************************************$' 

be    db 10,13,'*****************************************************$' 
   
;helm full face
a7     db 10,13,'**        1. KYT Veron Solid Full Face      600k  **$'
a8     db 10,13,'**        2. KBC VK Full Face               600k  **$'
a9     db 10,13,'**        3. RSV FF300 Full Face            500k  **$'
a10    db 10,13,'**        4. NHK GP-1000 Full Face          600k  **$'
a11    db 10,13,'**        5. Zeus ZS-811 AL6                500k  **$'
    
;helm modular
a12    db 10,13,'**        1. JPX MX 726-R               400k     **$'
a13    db 10,13,'**        2. MDS Pro Rider              400k     **$'
a14    db 10,13,'**        3. INK Adventure Modular      400k     **$'
a15    db 10,13,'**        4. Shoei Neotec 2             700k     **$'
a16    db 10,13,'**        5. AGV Sportmodular           700k     **$' 
                                                        
;helm motocross
a17    db 10,13,'**        1. KYT Cross Pro Avenger                  600k   **$'
a18    db 10,13,'**        2. Helm Cross Oneal 3 Series MERCURY      400k   **$'
a19    db 10,13,'**        3. GM Super Cross                         400k   **$'
a20    db 10,13,'**        4. NHK Cross One Alterfox                 400k   **$'
a21    db 10,13,'**        5. Zeus ZS-951 Cross                      500k   **$' 
    
;helm open face
a22    db 10,13,'**        1. NJS Kairoz                   400k     **$'
a23    db 10,13,'**        2. VRC Centro                   400k     **$'
a24    db 10,13,'**        3. KYT Kyoto                    400k     **$'
a25    db 10,13,'**        4. G2 Centro Optimax            400k     **$'
a26    db 10,13,'**        5. KYT Galaxy Flat R Gorilla    400k     **$' 
    
;invalid
a27    db 10,13,'*** Invalid Entry ***$'
a28    db 10,13,'** Try Again **$'
    
a29    db 10,13,'**        Pilih Orderan :       $'
a30    db 10,13,'**        jumlah        :       $'
a31    db 10,13,'**        Total Harga   :       $'   
    
a32    db 10,13,'** 1. Back to Main Menu **$'
a33    db 10,13,'** 2. Exit **$'
    
.CODE
MAIN PROC
    mov ax,@data
    mov ds,ax 
    
    TOP:
    
    mov ah,9
    lea dx,a1
    int 21h
    
    mov ah,9
    lea dx,sej
    int 21h
    
     
    
    mov ah,9
    lea dx,aa
    int 21h
    
    mov ah,9
    lea dx,a2
    int 21h       
    
    mov ah,9
    lea dx,a3
    int 21h 
    
    mov ah,9
    lea dx,a4
    int 21h
    
    mov ah,9
    lea dx,a5
    int 21h
    
    mov ah,9
    lea dx,ab
    int 21h 
    
    mov ah,9
    lea dx,sej
    int 21h  
    
    
    
    mov ah,9
    lea dx,a6
    int 21h  
         
    mov ah,1
    int 21h
    mov bh,al
    sub bh,48
    
    cmp bh,1
    je FullFace 
    
    cmp bh,2
    je Modular 
    
    cmp bh,3
    je Motocross
    
    cmp bh,4
    je OpenFace 
                
    jmp invalid            

    
    FullFace:
    
    mov ah,9     ;FullFace starts
    lea dx,ac
    int 21h    
    
    mov ah,9
    lea dx,sej
    int 21h      
    
    mov ah,9
    lea dx,bb
    int 21h
    
    
    mov ah,9
    lea dx,a7           ;1
    int 21h
    
    mov ah,9
    lea dx,a8           ;2
    int 21h
    
    mov ah,9            
    lea dx,a9           ;3
    int 21h  
    
    mov ah,9
    lea dx,a10          ;4
    int 21h
    
    mov ah,9
    lea dx,a11          ;5
    int 21h             
              
    mov ah,9
    lea dx,bb
    int 21h
              
   
    mov ah,9
    lea dx,a29
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48  
    
    
    cmp bl,1
    je sixty
    
    cmp bl,2
    je sixty
    
    cmp bl,3
    je fifty
    
    cmp bl,4
    je sixty
    
    cmp bl,5
    je fifty
    
    jmp invalid 
    
    sixty:
    
    mov bl,6 
    mov ah,9
    lea dx,a30
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31 
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    mov dl,'0'
    int 21h 
    
    ; print k
    
    mov dl,107
    int 21h   
    
    
    ; back to menu
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 
    
    fifty: 
    
    mov bl,5
    mov ah,9
    lea dx,a30              
    int 21h 
    
      
    mov ah,1
    int 21h
    sub al,48
     
       
    mul bl 
    aam 
 
    mov cx,ax 
    add ch,48
    add cl,48
    
    mov ah,9
    LEA dx,a31              
    INT 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    mov dl,'0'
    int 21h 
    
    ; print k
    
    mov dl,107
    int 21h
     
    
    ; back to menu
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 
    
    jmp exit
           
    
    
    Modular:
    
    mov ah,9
    lea dx,ac
    int 21h
    
    mov ah,9
    lea dx,sej
    int 21h     
    
    
    mov ah,9
    lea dx,bd
    int 21h
    
    mov ah,9
    lea dx,a12            ;1
    int 21h
    
    mov ah,9
    lea dx,a13            ;2
    int 21h
    
    mov ah,9
    lea dx,a14            ;3
    int 21h
    
    mov ah,9
    lea dx,a15            ;4
    int 21h 
    
    mov ah,9
    lea dx,a16            ;5
    int 21h  
    
    mov ah,9
    lea dx,bd
    int 21h 
    
    mov ah,9
    lea dx,a29
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
    
    cmp bl,1
    je fourty
    
    cmp bl,2
    je fourty
    
    cmp bl,3
    je fourty
    
    cmp bl,4
    je seventy
    
    cmp bl,5
    je seventy 
    
    jmp invalid 
    
    fourty:
    
    mov bl,4 
    mov ah,9
    lea dx,a30 
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48  
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    mov dl,'0'
    int 21h 
    
    ; print k
    
    mov dl,107
    int 21h
    
    ; back to menu 
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 
     
    seventy:
    
    mov bl,7 
    mov ah,9
    lea dx,a30 
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48  
    
    mul bl
    aam
    
    mov cx,ax
    add ch,48
    add cl,48
    
    mov ah,9
    lea dx,a31
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov dl,cl
    int 21h
    
    mov dl,'0'
    int 21h
    
    mov dl,'0'
    int 21h 
    
    ; print k
    
    mov dl,107
    int 21h
    
    ; back to menu 
    
    mov ah,9
    lea dx,a32
    int 21h
    
    mov ah,9
    lea dx,a33
    int 21h
    
    mov ah,9
    lea dx,xx
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    
    
    cmp al,1
    je top
    
    jmp exit 
     
    jmp exit
    
    
     
    
    Motocross:
    
    mov ah,9
    lea dx,ac
    int 21h
    
    mov ah,9
    lea dx,sej
    int 21h 
             
             
    mov ah,9
    lea dx,bc
    int 21h 
     
    mov ah,9
    lea dx,a17            ;1
    int 21h
    
    mov ah,9
    lea dx,a18            ;2
    int 21h
    
    mov ah,9
    lea dx,a19            ;3
    int 21h
    
    mov ah,9
    lea dx,a20            ;4
    int 21h 
    
    mov ah,9
    lea dx,a21            ;5
    int 21h 
    
    mov ah,9
    lea dx,bc
    int 21h
    
    mov ah,9
    lea dx,a29
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48 
   
    cmp bl,1
    je sixty
    
    cmp bl,2
    je fourty
    
    cmp bl,3
    je fourty
    
    cmp bl,4
    je fourty
    
    cmp bl,5
    je fifty
    
    jmp invalid
    
    
    
    OpenFace:
    
    mov ah,9
    lea dx,ac
    int 21h
    
    mov ah,9
    lea dx,sej
    int 21h    
    
    
    mov ah,9
    lea dx,be
    int 21h
    
    mov ah,9
    lea dx,a22            ;1
    int 21h
    
    mov ah,9
    lea dx,a23            ;2
    int 21h
    
    mov ah,9
    lea dx,a24            ;3
    int 21h
    
    mov ah,9
    lea dx,a25            ;4
    int 21h 
    
    mov ah,9
    lea dx,a26            ;5
    int 21h 
    
    mov ah,9
    lea dx,be
    int 21h
    
    mov ah,9
    lea dx,a29
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,48
    
    cmp bl,1
    je fourty
    
    cmp bl,2
    je fourty
    
    cmp bl,3
    je fourty
    
    cmp bl,4
    je fourty
    
    cmp bl,5
    je fourty
    
    jmp invalid 
    
    
    invalid:
        
    mov ah,9    
    lea dx,a27
    int 21h 
    
    
    mov ah,9
    lea dx,a28 
    int 21h 
    
    
    
    jmp exit
    
    
          
    
     exit:
     
     mov ah,4ch
     int 21h
     main endp
END MAIN     