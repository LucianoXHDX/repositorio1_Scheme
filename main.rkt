#lang racket
;este sera mi main
(require "TDA_jugador.rkt")
(require "TDA_propiedades.rkt")
(require "TDA_carta.rkt")
(require "TDA_juego.rkt")
(require "TDA_jugador.rkt")
(require "TDA_tablero.rkt")
(require "TDA_dados.rkt")
; de aqui para abajo es prueba de lo de arriba compila
; de aqui para abajo deberia ir en otro script importando y exportando funciones
(define (carta id tipo descripcion accion)(list id tipo descripcion accion))
;funcnion avnzar a la salida
;funcion pague 100
;funcion gano 100
;funcion carta 1
(define (ganar100 jugador)
  setDinero jugador(+ 100 (getDineroJugador jugador)))

;para activarla
;((list-ref carta1 3) jugador1)
;funcion carta 2
(define (perder100 jugador)
  setDinero jugador(- (getDineroJugador jugador) 100))
;funcion carta 3
(define (avanzarSalida jugador)
  (setPosicion jugador 0))
;funcion carta 4
(define(salirCarcel jugador)
  (setCartasCarcel jugador (+ 1 (getCartasCarcelJugador))))


; getter para las cartas
(define getAcciones
  (lambda(carta)
    (list-ref carta 3)))
;creacion de tarjetas
(define carta1 (carta 1 "suerte" "ganaste 100" ganar100))
(define carta2(carta 2 "suerte" "perdiste100" perder100))
(define carta3(carta 3 "suerte" "vas directo a la salida" avanzarSalida))
(define carta4(carta 4 "arca" "conseguiste una carta para salir gratis de la carcel" salirCarcel))

