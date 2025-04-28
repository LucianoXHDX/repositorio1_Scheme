#lang racket
(provide (all-defined-out))
;COMENTADA CORRECTAMENTE

;; TDA construcctor del juego
; Descripción: Esta funcion TDA constructor del tablero
; Dom: propiedades(list)X cartas-suerte(list)Xcartas-comunidad(list)Xcasillas-especiales(list)
; Rec: lista con los argumentos del dominio 
; Tipo recursión: No aplica.
(define(tablero propiedades cartas-suerte cartas-comunidad casillas-especiales)
  (list propiedades cartas-suerte cartas-comunidad casillas-especiales))
  


; getters
; Descripción: Esta funcion permite referenciar la lista de los argumentos del la lista tablero y asi poder usar las indexaciones mas adelante
; Dom: lista de argumentos de tablero
; Rec: lista referenciada de la lista de tableros
; Tipo recursión: No aplica.
(define parametroTablero
  (lambda(tablero n)
    list-ref tablero n ))

;getter de la lista de propiedades
; Descripción: Esta funcion entrega la lsita de las propiedades del tablero
; Dom: tablero(list)
; Rec: lista de propiedades(list)
; Tipo recursión: No aplica.
(define getListaPropiedadesTablero
  (lambda(tablero)
    list-ref tablero 0))

;getter de la lista de cartas suerte
; Descripción: Esta funcion entrega la lisra de las cartas de tipo suerte del tablero
; Dom: tablero(list)
; Rec: lista de cartas-suerte(list)
; Tipo recursión: No aplica.
(define getListaSuerteTablero
  (lambda(tablero)
    list-ref tablero 1))

;getter de la lista de comunidad

; Descripción: Esta funcion entrega la lista de la las carta del tipo comunidad del tablero
; Dom: tablero(list)
; Rec: lista de cartas-comunidad(list)
; Tipo recursión: No aplica.
(define getListaComunidadTablero
   (lambda(tablero)
     list-ref tablero 2))

; Descripción: Esta funcion entrega la lista de casillas especiales del tablero
; Dom: tablero(list)
; Rec: lista de casillas-especiales(list)
; Tipo recursión: No aplica.
(define getListaEspecialesTablero
  (lambda(tablero)
    list-ref tablero 3))


;setter para propiedades
; Descripción: Esta funcion permite modificar el tablero, se puede agregar propiedades a la lista
; Dom: tablero(list)
; Rec: una lista de tablero con todos los parametros iguales excepto la lista de propiedad.
; Tipo recursión: No aplica.
(define (tablero-agregar-propiedad nuevaPropiedad)
  (tablero
  (cons nuevaPropiedad (getListaPropiedadesTablero)
        (getListaSuerteTablero)
        (getListaComunidadTablero)
        (getListaEspecialesTablero))))


; Descripción: Esta funcion permite agregr una carta de suerte a la lista de cartas de suerte del tablero
; Dom: Tablero(list)
; Rec: una lista de tablero con todos los parametros iguales excepto la lista de las cartas-suerte
; Tipo recursión: No aplica.
(define (agregarListaSuerte nuevaSuerte)
  (getListaPropiedadesTablero)
  (cons nuevaSuerte (getListaSuerteTablero))
  (getListaComunidadTablero)
  (getListaEspecialesTablero))

;Setter para comunidad
; Descripción: Esta funcion permite agregar una carta de comunidad a la lista de cartas de comunidad del tablero
; Dom: tablero(list)
; Rec: una lista de tablero con todos los parametros iguales excepto la lista de las cartas-comunidad
; Tipo recursión: No aplica.
(define (agregarListaComunidad nuevaComunidad)
  (getListaPropiedadesTablero)
  (getListaSuerteTablero)
  (cons nuevaComunidad (getListaComunidadTablero))
   (getListaEspecialesTablero))

;Setter para especiales
; Descripción: Esta cancion permitee agregar una casilla especial a la lista de casillas especiales del tablero
; Dom: tablero(list)
; Rec: una lista de tablero con todos los parametros iguales excepto la lista de las casillas-especiales
; Tipo recursión: No aplica.
(define(agregarListaEspecial nuevaEspecial)
  (getListaPropiedadesTablero)
  (getListaSuerteTablero)
  (cons nuevaEspecial (getListaEspecialesTablero))
  )