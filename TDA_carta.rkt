#lang racket
(provide (all-defined-out))
(require "TDA_jugador.rkt")
;; ESTA COMENTADA CORRECTAMENTE
; Descripción: Esta funcion es el TDA contrcutor de las cartas
; Dom: id(int)Xtipo(string)Xdescripcion(string)Xaccion(string)
; Rec: una lista con los paraetros del dominio
; Tipo recursión: No aplica.
(define (carta id tipo descripcion accion)(list id tipo descripcion accion))


; Descripción: esta funcion entrega una lista referenciada para poder usar los indices al momento de buscar los parametros
; Dom: carta(list)
; Rec: Lista referenciada de los parametros de la lista carta
; Tipo recursión: No aplica.
(define parametroCarta
  (lambda( carta n)
  (list-ref carta n)))

;getters
;funcion para obtener el id de la carta
; Descripción: Esta funcion sirve para entregar el id de la carta
; Dom: carta(list)
; Rec: ID(int) de la carta
; Tipo recursión: No aplica.
(define getIdCarta
  (lambda(carta)
    parametroCarta carta 0))

;funcion para obtener el tipo de la carta
; Descripción: Esta funcion entrega el tipo de la carta
; Dom: carta(list)
; Rec: tipo de la carta (string)
; Tipo recursión: No aplica.
(define getTipoCarta
  (lambda(carta)
    parametroCarta carta 1))

;funcion para obtener la descripcion de la carta
; Descripción: Esta funciion entrega la descripcion de la lista
; Dom: carta(list)
; Rec: descripcion(string)
; Tipo recursión: No aplica.
(define getDescripcionCarta
  (lambda(carta)
    parametroCarta carta 2))

;funcion para obtener la accion de la carta
; Descripción: esta funcion entrega la funcion de la carta
; Dom: carta(list)
; Rec: accion(string)
; Tipo recursión: No aplica.
(define getAccionCarta
  (lambda(carta)
    parametroCarta carta 3))

;falta comentar de aqui pa abajo
;CARTAS ARCA COMUNAL
; Descripción: Suma $100 al jugador
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define (ganar100 jugador)
  (setDinero jugador(+ 100 (getDineroJugador jugador))))

; Descripción: Suma $10 al jugador
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define (ganar10 jugador)
  (setDinero jugador(+ 10 (getDineroJugador jugador))))


; Descripción: Suma $50 al jugador
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define (ganar50 jugador)
  (setDinero jugador(+ 50 (getDineroJugador jugador))))


; Descripción: Resta $100 al jugador.
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define (perder100 jugador)
  (setDinero jugador(- (getDineroJugador jugador) 100)))

; Descripción: Resta $10 al jugador
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define (perder10 jugador)
  (setDinero jugador(- (getDineroJugador jugador) 10)))


; Descripción: Resta $50 jugador
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define (perder50 jugador)
  (setDinero jugador(- (getDineroJugador jugador) 50)))

; Descripción: Divide por 2 el dinero del jugador
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.

(define(dividirDinero jugador)
  (setDinero jugador (/ (getDineroJugador jugador)2)))
; ; Descripción: Otorga 1 carta para salir de la cárcel al jugador.
; Dom: jugador (list)
; Rec: jugador (list)
; Tipo recursión: No aplica.
(define(salirCarcel jugador)
  (setCartasCarcel jugador (+ (getCartasCarcelJugador jugador) 1)))



; Descripción: Otorga 2 cartas para salir de la cárcel al jugador.
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define(salirCarcelx2 jugador)
  (setCartasCarcel jugador (+ (getCartasCarcelJugador jugador) 2)))
; Descripción: Elimina 1 carta para salir de la cárcel al jugador.
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define(perderCartaCarcel jugador)
  (setCartasCarcel jugador (- (getCartasCarcelJugador jugador) 1)))

; Descripción: Duplica el dinero del jugador.
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define(duplicarDinero jugador)
  (setDinero jugador(* (getDineroJugador jugador )2)))

; Descripción: Mueve al jugador a la casilla de salida (posición 0).
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.

(define (avanzarSalida jugador)
  (setPosicion jugador 0))
; Descripción: Mueve al jugador a la posición 4.
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define (avanzarPosicion4 jugador)
  (setPosicion jugador 4))
;7
; Descripción: Envía al jugador a la cárcel (posición 5).
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.

(define (aLaCarcel jugador)
  (setPosicion jugador 5))

; Descripción: Avanza al jugador 2 casillas desde su posición actual.
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define (avanzaDosCasillas jugador)
  setPosicion jugador(+ (getPosicionJugador jugador)2))
; Descripción: Avanza al jugador 4 casillas desde su posición actual.
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define(avanzaCuatrosCasillas jugador)
  setPosicion jugador(+(getPosicionJugador jugador)4))

; Descripción: Avanza al jugador 1 casilla desde su posición actual.
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.

(define(avanzarCasillaExtra jugador)
  setPosicion jugador(+(getPosicionJugador jugador)1))

; Descripción: Avanza al jugador 10 casillas desde su posición actual.
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define(alArcaComunal jugador)
  setPosicion jugador(+(getPosicionJugador jugador)10))

; Descripción: Duplica la cantidad de cartas para salir de la cárcel que posee el jugador.
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define(duplicarCartasSalirCarcel jugador)
(setCartasCarcel jugador (* (getCartasCarcelJugador jugador) 2)))

; Descripción: Elimina todas las cartas para salir de la cárcel del jugador.
; Dom: jugador(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define(eliminarCartasCarcel jugador)
  (setCartasCarcel jugador (* (getCartasCarcelJugador jugador) 0)))