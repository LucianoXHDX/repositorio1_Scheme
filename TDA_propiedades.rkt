#lang racket
(provide (all-defined-out))

(require racket/lazy-require)
(lazy-require ["TDA_juego.rkt" (getMaximoCasas getMaximoHotel)])



 
;ESTA COMENTADA

; TDA Propiedades
; Descripción: Esta funcion es el constructor de las propiedades
; Dom: id (int) X nombre (string) X precio (int) X renta (int) X dueño (jugador/null) X casas (int) X esHotel (boolean) X estaHipotecada (boolean) 
; Rec: list con lo argumentos del dominio
; Tipo recursión: No aplica.
(define (propiedad id nombre precio renta dueño casas esHotel estaHipotecada)
  (list id nombre precio renta dueño casas esHotel estaHipotecada))

; de aqui en adelante seran los getter de de las cosas que necesito
; Descripción: esta funcion me permite referencial la lista de los argumentos de la carta, y asi poder usar las indexaciones mas adelante
; Dom: lista de los argumentos de la propiedad
; Rec: lista referenciada de los argumentos de la propiedad
; Tipo recursión: No aplica.
(define parametroPropiedad
  (lambda (propiedad n)
    (list-ref propiedad n)))

;getter para el id
; Descripción: Esta funcion sirve para entregar el Id de la propiedad
; Dom: propiedad(list)
; Rec: ID(int)
; Tipo recursión: No aplica.
(define getIdPropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 0)))

;getter para nombre
; Descripción: Esta funcion entrega el nombre de la prpoiedad
; Dom: propiedad(list)
; Rec: nombre(string)
; Tipo recursión: No aplica.
(define getNombrePropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 1)))

;getter para precio
; Descripción: Esta funcion entrega el precio de la propiedad
; Dom: propiedad(lsit)
; Rec: precio(int)
; Tipo recursión: No aplica.
(define getPrecioPropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 2)))

;getter para renta
; Descripción: Esta funcion entrega la renta de la propiedad
; Dom: propiedad (list)
; Rec: renta(int)
; Tipo recursión: No aplica.
(define getRentaPropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 3)))

;getter para dueño
; Descripción: Esta funcion entrega el dueño de la propiedad
; Dom: propiedad(lsit)
; Rec: dueño(string)
; Tipo recursión: No aplica.
(define getDueñoPropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 4)))

;getter para casas
; Descripción: Esta funcion entrega la cantidad de casas
; Dom: propiedad(list)
; Rec: casas(int)
; Tipo recursión: No aplica.
(define getCasasPropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 5)))
;getter para esHotel
; Descripción: Esta funcion entrega el booleano de si tiene hotel(true) o no(false)
; Dom: propiedad(list)
; Rec: esHotel(boo)
; Tipo recursión: No aplica.
(define getHotelPropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 6)))

;getter para estaHipotecada
; Descripción: Esta funcion entrega el boolenao de si esta hipotecada(true) o no(false)
; Dom: propiedad(list)
; Rec: estaHipotecada(bool)(
; Tipo recursión: No aplica.
(define getHipotecadaPropiedad
  (lambda(propiedad)
    (parametroPropiedad propiedad 7)))
; necestiro setter para dueño, casas, hotel, hipoteca,renta

;setter para dueño
; Descripción: Esta funcion es para modificar el atributo dueño, cuando alguien compra la casa
; Dom: propiedad(list)
; Rec: una nueva list de propiedad con el atributo de dueño(string) modificado
; Tipo recursión: No aplica.
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
; Descripción: Esta funcion permite modificar el atributo de las casas, cuando se agrega una o mas casas(una a la vez).
; Dom: propiedad(list)
; Rec: una nueva lista de la propiedad con el parametro de casas(int) modificado
; Tipo recursión: No aplica.
(define (propiedad-construir-casas propiedad juego)
  (list (getIdPropiedad propiedad)
        (getNombrePropiedad propiedad) 
        (getPrecioPropiedad propiedad)
        (getRentaPropiedad propiedad)
        (getDueñoPropiedad propiedad)
        (if(< (getCasasPropiedad propiedad)(getMaximoCasas juego))
           (+(getCasasPropiedad propiedad) 1);si pasa
           (getCasasPropiedad propiedad));si no pasa
        (getHotelPropiedad propiedad)
        (getHipotecadaPropiedad propiedad)
        ))

;setter para hotel
; Descripción: Esta funcion permite modificar el booleano de que si la propiedad tiene(true) o no hotel(false), si es verdadero elimina las casas
; Dom: propiedad(list)
; Rec: una nueva lista de la propiedad con el booleano de esHotel(bool) modificado
; Tipo recursión: No aplica.
(define (propiedad-construir-hotel propiedad juego)
  (if(= (getCasasPropiedad propiedad)(getMaximoHotel juego))
     (list (getIdPropiedad propiedad)
           (getNombrePropiedad propiedad)
           (getPrecioPropiedad propiedad)
           (getRentaPropiedad propiedad)
           (getDueñoPropiedad)
           0
           #t
           (getHipotecadaPropiedad propiedad))
     
     propiedad))
 
;setter para hipotecada
; Descripción: Esta Funcion permite modificar el booleano de la hipoteca, pasa el bool de false a true(donde si esta hipotecada)
; Dom: propiedad(list)
; Rec: una nueva lista de la propiedad con el booleano esHipotecada(bool) modificado
; Tipo recursión: No aplica.
(define (propiedad-hipotecada propiedad)
  (list (getIdPropiedad propiedad)
        (getNombrePropiedad propiedad)
        (getPrecioPropiedad propiedad)
        (getRentaPropiedad propiedad)
        (getDueñoPropiedad propiedad)
        (getCasasPropiedad propiedad)
        (getHotelPropiedad propiedad)
        #t
        ))

;setter para renta
; Descripción: Esta funcion permite modificar la renta de la propiedad
; Dom: propiedad(list)
; Rec: una nueva lista de la propiedad con la renta(int) modificado
; Tipo recursión: No aplica.
 
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

;calcular renta
; Descripción: Esta Funcion calcula la renta de la propiedad dependiendo de la cant de casas o hoteles que tenga
; Dom: propiedad(list)
; Rec: calucularRenta(int)
; Tipo recursión: No aplica.

(define (propiedad-calcular-renta propiedad juego)
 ( cond
    [(= #t (getHipotecadaPropiedad propiedad)) 0]
    [(= #t (getHotelPropiedad propiedad)) (* (getRentaPropiedad propiedad)(getMaximoCasas juego)1.2 2)]
    [(= 0 (getCasasPropiedad propiedad)) (getRentaPropiedad propiedad)]
    [(< 0 (getCasasPropiedad propiedad)) (* (getRentaPropiedad propiedad) (getCasasPropiedad propiedad) 1.2)]))

