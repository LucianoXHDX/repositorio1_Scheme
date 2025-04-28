#lang racket
(provide (all-defined-out))
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
; no son necesario hacer setter ya que en teoria las cartas no se modifican