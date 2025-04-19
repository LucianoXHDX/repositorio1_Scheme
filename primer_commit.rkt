#lang racket
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


