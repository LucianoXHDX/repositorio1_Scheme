#lang racket
(provide (all-defined-out))

; Descripción: Esta funcion permite crear a los jugadores tomando en cuenta lo solicitado y lo necesario para el juego.
; Dom: id (int) X nombre (string) X dinero (int) X propiedades (list) X posicion (int) X estaEnCarcel (boolean) X totalCartasSalirCarcel (int)// sacado directamente del proyecto
; Rec: devuelve una lista con los datos señalaos arriba
; Tipo recursión: No aplica.
(define (jugador id nombre dinero propiedades posicion estadoCarcel totalCartasCarcel)
  (list id nombre dinero (list propiedades) posicion estadoCarcel totalCartasCarcel ))
;prueba
;; para usar
;(define jugador1 (jugador 82 "luciano" 2888 '() 0 #f 0))



; de aqui en adelante seran los getter de de las cosas que necesito
(define parametroJugador
  (lambda (jugador n)
    (list-ref jugador n)))
;esta funcion sirve para obtener el id del jugdaor
(define getIdJugador
  (lambda(jugador)
    (parametroJugador jugador 0)))
; esta funcion sirve para obtener el nombre del jugador
(define getNombreJugador
  (lambda(jugador)
    (parametroJugador jugador 1)))
;esta funcion sirve para mostrar el dinero
(define getDineroJugador
  (lambda(jugador)
    (parametroJugador jugador 2)))
;esta funcion sirve para mostrar el listado de propiedades
(define getPropiedadesJugador
  (lambda(jugador)
    (parametroJugador jugador 3)))
;esta funcion sirve para mostrar posicion
(define getPosicionJugador
  (lambda(jugador)
    (parametroJugador jugador 4)))

;esta funcion sirve para mostrar el estado de carcel
(define getCarcelJugador
  (lambda(jugador)
    (parametroJugador jugador 5)))

;esta funcion sirve para mostrar el total cartas de carce
(define getCartasCarcelJugador
  (lambda(jugador)
    (parametroJugador jugador 6)))
; ni el id ni el nombre debe ser cambiado por lo que no hare setter

;esta funcion es para modificar el dinero del jugador
(define (setDinero jugador nuevoDinero)
  (list (getIdJugador jugador)
         (getNombreJugador jugador)
         nuevoDinero
         (getPropiedadesJugador jugador)
         (getPosicionJugador jugador)
         (getCarcelJugador jugador)
         (getCartasCarcelJugador jugador)))
;funcion que perimt emodificar propiedades

;funcion que perimte modificar posicion
(define (setPosicion jugador nuevaPosicion)
  (list (getIdJugador jugador)
        (getNombreJugador jugador)
        (getDineroJugador jugador)
        (getPropiedadesJugador jugador)
        nuevaPosicion
        (getCarcelJugador jugador)
        (getCartasCarcelJugador jugador)))
;funcion que perimte modificar estado de carcel
(define (setCarcel jugador nuevaCarcel)
  (list (getIdJugador jugador)
        (getNombreJugador jugador)
        (getDineroJugador jugador)
        (getPropiedadesJugador jugador)
        (getPosicionJugador jugador)
        nuevaCarcel
        (getCartasCarcelJugador jugador)))
;funcion que perimte modificar cartas de carccel
(define (setCartasCarcel jugador nuevaCartaCarcel)
  (list (getIdJugador jugador)
        (getNombreJugador jugador)
        (getDineroJugador jugador)
        (getPropiedadesJugador jugador)
        (getPosicionJugador jugador)
        (getCarcelJugador jugador)
        nuevaCartaCarcel))
