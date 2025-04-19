#lang racket
(provide (all-defined-out))
(define (carta id tipo descripcion accion)(list id tipo descripcion accion))

(define parametroCarta
  (lambda( carta n)
  (list-ref carta n)))

;getters
;funcion para obtener el id de la carta
(define getIdCarta
  (lambda(carta)
    parametroCarta carta 0))
;funcion para obtener el tipo de la carta
(define getTipoCarta
  (lambda(carta)
    parametroCarta carta 1))
;funcion para obtener la descripcion de la carta
(define getDescripcionCarta
  (lambda(carta)
    parametroCarta carta 2))
;funcion para obtener la accion de la carta
(define getAccionCarta
  (lambda(carta)
    parametroCarta carta 3))
; no son necesario hacer setter ya que en teoria las cartas no se modifican