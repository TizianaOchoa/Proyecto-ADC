.MODEL SMALL              ; Define el modelo de memoria: un segmento de c?digo y uno de datos
.STACK 100h               ; Reserva 256 bytes para la pila del programa

.DATA                     ; Inicio del segmento de datos
    fib     DW 10 DUP(?)  ; Reserva espacio para 10 n?meros Fibonacci (palabras de 2 bytes)
    msg     DB 'Fibonacci: $'  ; Mensaje a mostrar, terminado en '$' para la funci?n 09h de DOS

.CODE                     ; Inicio del segmento de c?digo
START:                    ; Punto de entrada del programa

    MOV AX, @DATA          ; Carga en AX la direcci?n del segmento de datos
    MOV DS, AX             ; Copia la direcci?n en DS (registro de segmento de datos)

    ; Inicializar los dos primeros n?meros de la secuencia Fibonacci
    MOV WORD PTR [fib], 0  ; fib[0] = 0
    MOV WORD PTR [fib+2], 1 ; fib[1] = 1 (cada palabra ocupa 2 bytes)

    ; Calcular los 8 n?meros restantes
    MOV CX, 8              ; CX ser? el contador del bucle (ya tenemos 2 n?meros, faltan 8)
    MOV SI, 4              ; SI apunta al tercer elemento (offset 4 bytes en el array)

FIB_LOOP:
    MOV AX, [fib+SI-4]     ; Carga en AX el n?mero fib[n-2]
    ADD AX, [fib+SI-2]     ; Suma el n?mero fib[n-1]
    MOV [fib+SI], AX       ; Guarda el resultado (fib[n]) en el array
    ADD SI, 2              ; Avanza 2 bytes al siguiente elemento (una palabra)
    LOOP FIB_LOOP          ; Decrementa CX y repite mientras CX ? 0

    ; Mostrar mensaje inicial
    MOV AH, 09h            ; Funci?n 09h de la INT 21h: mostrar cadena terminada en '$'
    LEA DX, msg            ; Carga en DX la direcci?n del mensaje 'Fibonacci:'
    INT 21h                ; Llama a DOS para imprimir el mensaje

    ; Mostrar los 10 n?meros generados
    MOV CX, 10             ; Se mostrar?n 10 n?meros
    MOV SI, 0              ; Reinicia el ?ndice al principio del array

DISPLAY:
    MOV AX, [fib+SI]       ; Carga en AX el n?mero Fibonacci actual
    CALL PRINT_NUMBER      ; Llama al procedimiento que convertir? y mostrar? el n?mero
    ADD SI, 2              ; Avanza al siguiente n?mero (2 bytes m?s adelante)
    LOOP DISPLAY           ; Repite hasta mostrar los 10 n?meros

    ; Finalizar el programa
    MOV AH, 4Ch            ; Funci?n 4Ch de DOS: terminar el programa
    INT 21h                ; Llama a DOS para salir correctamente

; --------------------------------------------------------
; Procedimiento para mostrar un n?mero almacenado en AX
; (a?n no implementado)
; --------------------------------------------------------
PRINT_NUMBER PROC
    ; Aqu? se deber?a implementar la conversi?n de n?mero binario
    ; a ASCII y su impresi?n por pantalla
    RET                    ; Retorna al punto donde fue llamado
PRINT_NUMBER ENDP

END START                  ; Fin del programa, indica que START es el punto de inicio
