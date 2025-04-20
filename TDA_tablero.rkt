#lang racket
(provide (all-defined-out))
;; TDA construcctor del juego
(define(tablero propiedades cartas-suerte cartas-comunidad casillas-especiales)
  (list propiedades cartas-suerte cartas-comunidad casillas-especiales))
  
; para que esta funcion sirva debe crear la lista de los parametro que di arriba.

; TDA tablero modifcador para agregar propiedad
;(define (agregarPropiedad lista propiedad posicion))
;(define (agregarPropiedad lista propiedad posicion)
 ; (list(cons propiedad posicion))
 ;)
;falta probar esto"
;(define lista-propiedades (list (cons "prop1" 1) (cons "prop2" 3) (cons "prop3" 6)))

; getters
(define parametroTablero
  (lambda(tablero n)
    list-ref tablero n ))
;getter de la lista de propiedades
(define getListaPropiedadesTablero
  (lambda(tablero)
    list-ref tablero 0))
;getter de la lista de cartas suerte
(define getListaSuerteTablero
  (lambda(tablero)
    list-ref tablero 1))
;getter de la lista de comunidad
(define getListaComunidadTablero
   (lambda(tablero)
     list-ref tablero 2))
;getter de la lista de casillas especiales
(define getListaEspecialesTablero
  (lambda(tablero)
    list-ref tablero 3))
; setter
;usando cons puedo agreager un elemto a la lista
; debo pasarlo asi (cons ELEMTO-A-AGREGAR (Get de la lista de propiedad
;setters necesarios para poder agreagar algo a la lista
;setter para propiedades
(define (tablero-agregar-propiedades nuevaPropiedad)
  (cons nuevaPropiedad (getListaPropiedadesTablero)
        (getListaSuerteTablero)
        (getListaComunidadTablero)
        (getListaEspecialesTablero)))


;Setter para suerte

(define (agregarListaSuerte nuevaSuerte)
  (getListaPropiedadesTablero)
  (cons nuevaSuerte (getListaSuerteTablero))
  (getListaComunidadTablero)
  (getListaEspecialesTablero))

;Setter para comunidad
(define (agregarListaComunidad nuevaComunidad)
  (getListaPropiedadesTablero)
  (getListaSuerteTablero)
  (cons nuevaComunidad (getListaComunidadTablero))
   (getListaEspecialesTablero))

;Setter para especiales
(define(agregarListaEspecial nuevaEspecial)
  (getListaPropiedadesTablero)
  (getListaSuerteTablero)
  (cons nuevaEspecial (getListaEspecialesTablero))
  )