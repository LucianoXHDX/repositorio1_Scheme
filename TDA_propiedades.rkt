#lang racket
(provide (all-defined-out))
; TDA Propiedades
;id (int) X nombre (string) X precio (int) X renta (int) X dueño (jugador/null) X casas (int) X esHotel (boolean) X estaHipotecada (boolean)
(define (propiedad id nombre precio renta dueño casas esHotel estaHipotecada)
  (list id nombre precio renta dueño casas esHotel estaHipotecada))
; de aqui en adelante seran los getter de de las cosas que necesito
(define parametroPropiedad
  (lambda (propiedad n)
    (list-ref propiedad n)))

(define getIdPropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 0)))
;getter para nombre
(define getNombrePropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 1)))
;getter para precio
(define getPrecioPropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 2)))
;getter para renta
(define getRentaPropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 3)))
;getter para dueño
(define getDueñoPropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 4)))
;getter para casas
(define getCasasPropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 5)))
;getter para esHotel
(define getHotelPropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 6)))
;getter para estaHipotecada
(define getHipotecadaPropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 7)))
; necestiro setter para dueño, casas, hotel, hipoteca,renta
;setter para dueño
(define (setDueño propiedad nuevoDueño)
  (list (getIdPropiedad propiedad)
        (getNombrePropiedad propiedad)
        (getPrecioPropiedad propiedad)
        (getRentaPropiedad propiedad)
        nuevoDueño
        (getCasasPropiedad propiedad)
        (getHotelPropiedad propiedad)
        (getHipotecadaPropiedad propiedad)
        ))
;setter para casas
(define (setCasas propiedad nuevaCasas)
  (list (getIdPropiedad propiedad)
        (getNombrePropiedad propiedad)
        (getPrecioPropiedad propiedad)
        (getRentaPropiedad propiedad)
        (getDueñoPropiedad propiedad)
        nuevaCasas
        (getHotelPropiedad propiedad)
        (getHipotecadaPropiedad propiedad)
        ))
;setter para hotel
(define (setHotel propiedad nuevoHotel)
  (list (getIdPropiedad propiedad)
        (getNombrePropiedad propiedad)
        (getPrecioPropiedad propiedad)
        (getRentaPropiedad propiedad)
        (getDueñoPropiedad propiedad)
        (getCasasPropiedad propiedad)
        nuevoHotel
        (getHipotecadaPropiedad propiedad)
        ))
;setter para hipotecada
(define (setHipotecada propiedad nuevaHipotecada)
  (list (getIdPropiedad propiedad)
        (getNombrePropiedad propiedad)
        (getPrecioPropiedad propiedad)
        (getRentaPropiedad propiedad)
        (getDueñoPropiedad propiedad)
        (getCasasPropiedad propiedad)
        (getHotelPropiedad propiedad)
        nuevaHipotecada
        ))
;setter para renta
(define (setRenta propiedad nuevaRenta)
  (list (getIdPropiedad propiedad)
        (getNombrePropiedad propiedad)
        (getPrecioPropiedad propiedad)
        nuevaRenta
        (getDueñoPropiedad propiedad)
        (getCasasPropiedad propiedad)
        (getHotelPropiedad propiedad)
        (getHipotecadaPropiedad propiedad)
        ))
