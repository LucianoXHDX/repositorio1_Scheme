#lang racket
(provide (all-defined-out))
(require "TDA_jugador.rkt")
(require "TDA_tablero.rkt")
(require "TDA_carta.rkt")
;;; setter de todo
;;getter de todo para actualiar
; Descripción: ESta funcion es un TDA constructor del juego
; Dom: jugadores(lista)Xtablero(tablero)XdineroBanco(int)XnumeroDados(int)XturnoActual(int)XtasaImpuesto(int)XmaximoCasas(int)XmaximoHoteles(int)
; Rec: Una lista con los argumentos del dominio
; Tipo recursión: No aplica.
(define(juego jugadores tablero dineroBanco numeroDados turnoActual tasaImpuesto maximoCasas maximoHoteles)
  (list jugadores tablero dineroBanco numeroDados turnoActual tasaImpuesto maximoCasas maximoHoteles))
; Descripción: Esta funcion referencia los elemtos de la lista del TDA constructor de juego
; Dom: juego(list)
; Rec: Lista referenciada de los parametros de la lista juego
; Tipo recursión: No aplica.
(define parametroJuego
  (lambda (juego n)
    (list-ref juego n)))

; funcion para obtener el listado de los jugadores del juego
; Descripción: Esta funcion entrega la lista de jugadores(list)
; Dom: juego(list)
; Rec: jugadores(list)(indexacion 0)
; Tipo recursión: No aplica.
(define (getJugadores juego)
  (list-ref juego 0))

;funcion para obtener el tablero
; Descripción: Esta funcion entrega el tablero del juego
; Dom: juego(list)
; Rec: tablero(tablero)(indexacion 1)
; Tipo recursión: No aplica.
(define(getTablero juego)
    (list-ref juego 1))

;funcion para obtener el dineroBanco
; Descripción: Esta funcion obtiene el dinero del banco(int) del juego
; Dom: Juego(list)
; Rec: dineroBanco(int)
; Tipo recursión: No aplica.
(define(getDineroBanco juego)
  (list-ref juego 2))

;funcion para obtener el numeroDados
; Descripción: Esta funcion entrega el numero dados del juego
; Dom: juego(list)
; Rec: numeroDados(int)
; Tipo recursión: No aplica.
(define(getNumerosDados juego)
    (list-ref juego 3))


;funcion para obtenr el turnoActual
; Descripción: Esta funcion entrega el turno actual del juego
; Dom: juego(list)
; Rec: turnoActual(int)
; Tipo recursión: No aplica.
(define(juego-obtener-jugador-actual juego)
  (list-ref juego 4))

;funcion para obtener la tasaImpuestos
; Descripción: Esta Funcion entrega la tasa de impuesto del juego
; Dom: juego(list)
; Rec: tasaImpuestos(int)
; Tipo recursión: No aplica.
(define(getTasaImpuestos juego)
  (list-ref juego 5))

;funcion para obtener el maximoCasas
; Descripción: Esta funcion entrega el maximo de casas que permite el juego
; Dom: juego(list)
; Rec: maximoCasas(int)
; Tipo recursión: No aplica.
(define(getMaximoCasas juego)
  (list-ref juego 6))

;funcion para obteener el maximoHoteles
; Descripción: Esta funcion entrega el maximo de hoteles que permite el juego
; Dom: juego(list)
; Rec: maximoHoteles(int)
; Tipo recursión: No aplica.
(define(getMaximoHoteles juego)
  (list-ref juego 7))



;esta funcion agrega un jugador al tablero
; Descripción: Esta funcion agrega un jugador con el capital inicial
; Dom: juego(list)
; Rec: jugadores(list)
; Tipo recursión: No aplica.

(define (juego-agregar-jugador game nuevo-jugador)
  (juego
   (append (getJugadores game) (list (setDinero nuevo-jugador 1500)))
   (getTablero game)
   (getDineroBanco game)
   (getNumerosDados game)
   (juego-obtener-jugador-actual game)
   (getTasaImpuestos game)
   (getMaximoCasas game)
   (getMaximoHoteles game)))
;dados
; Funcion myRandom
(define (myRandom Xn)
  (modulo (+ (* 1103515245 Xn) 12345) 2147483648))
; Funcion getDadoRandom que recibe la semilla y controla los resultados
(define (getDadoRandom seed)                    
  (+ 1 (modulo (myRandom seed) 6)))
;funcion para tirar los dados
; Descripción: lanza los dados usando valores ingresados como semilla y muestra los resultado
; Dom: numero1(int)Xnumero2(int)
; Rec: dados(list)
; Tipo recursión: No aplica.
(define(juego-lanzar-dados numero1 numero2)
 (let ((dados(list (getDadoRandom numero1)(getDadoRandom numero2))))
  (mostrar-dados dados)
  dados))
; Descripción: Muestra el resultado de los valores del los dados
; Dom: dados(list)
; Rec: dados(list)
; Tipo recursión: No aplica.
(define (mostrar-dados dados)
  (display "el primer valor del dado es:")
  (newline)
  (display(car dados))
  (newline)
  (display "El segundo dado es:")
  (newline)
  (display(cadr dados))
  (newline))

; juego extraer carta

(define (juego-extraer-carta juego tipo-mazo)
  (if (string=? tipo-mazo "suerte")
      ;si es del mazo suert
      (getAccionCarta (list-ref(getListaSuerteTablero juego)(random 10))) (juego-obtener-jugador-actual juego))
  
      ;si no es del mazo suerte
  (getAccionCarta (list-ref(getListaComunidadTablero juego)(random 10))) (juego-obtener-jugador-actual juego))