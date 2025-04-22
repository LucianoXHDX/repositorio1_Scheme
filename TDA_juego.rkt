#lang racket
(provide (all-defined-out))
(require "TDA_jugador.rkt")
;
;Dominio
;jugadores (lista) X tablero (tablero) X dineroBanco (int) X numeroDados (int) X turnoActual (int) X tasaImpuesto (int) X maximoCasas (int) X maximoHoteles (int) X estadoJuego (string)

;
;Ejemplo de uso
;(define partida (juego '() tablero-juego 20000 2 0 10 4 1 "preparacion"))

;;; setter de todo
;;getter de todo para actualiar
(define(juego jugadores tablero dineroBanco numeroDados turnoActual tasaImpuesto maximoCasas maximoHoteles estadoJuego)
  (list jugadores tablero dineroBanco numeroDados turnoActual tasaImpuesto maximoCasas maximoHoteles estadoJuego))
(define parametroJuego
  (lambda (juego n)
    list-ref juego n))

; funcion para obtener el listado de los jugadores
(define (getJugadores)
  (lambda(juego)
  list-ref juego 0))

;funcion para obtener el tablero
(define(getTablero)
  (lambda(juego)
    list-ref juego 1))

;funcion para obtener el dineroBanco
(define(getDineroBanco)
  (lambda (juego)
    list-ref juego 2))
;funcion para obtener el numeroDados
(define(getNumerosDados)
  (lambda(juego)
    list-ref juego 3))
;funcion para obtenr el turnoActual
(define(juego-obtener-jugador-actual)
  (lambda(juego)
  list-ref juego 4))
;funcion para obtener la tasaImpuestos
(define(getTasaImpuestos)
  (lambda(juego)
    list-ref juego 5))

;funcion para obtener el maximoCasas
(define(getMaximoCasas)
  (lambda(juego)
    list-ref juego 6))

;funcion para obteener el maximoHoteles
(define(getMaximoHoteles)
  (lambda(juego)
    list-ref juego 7))
;funcion para obtener el estadoJuego
(define(getEstadoJuego)
  (lambda (juego)
    list-ref juego 8))
;funcion agregar jugador
; tengo que hacer un setter de la funcion pra agregar un jugador y luego poner los 1500
;jugadores (lista) X tablero (tablero) X dineroBanco (int) X numeroDados (int) X turnoActual (int) X tasaImpuesto (int) X maximoCasas (int) X maximoHoteles (int) X estadoJuego (string)
;Dom: id (int) X nombre (string) X dinero (int) X propiedades (list) X posicion (int) X estaEnCarcel (boolean) X totalCartasSalirCarcel (int)

(define (juego-agregar-jugador tablero nuevo-jugador)
   (setDinero nuevo-jugador 1500)
   (getTablero tablero)
   (getDineroBanco tablero)
   (getNumerosDados tablero)
   (getTasaImpuestos tablero)
   (getMaximoCasas tablero)
   (getMaximoHoteles tablero)
  (getEstadoJuego tablero)
  
 )