#lang racket
;RF2
(define (player id nombre ficha dinero propiedades posicion estadoCarcel totalCartasCarcel)
  (list id nombre ficha dinero (list propiedades) posicion estadoCarcel totalCartasCarcel ))
;RF3
(define (card id tipo descripcion accion)(list id tipo descripcion accion))
;RF4
(define(juego jugadores tablero dineroBanco numeroDados turnoActual tasaImpuesto maximoCasas maximoHoteles estadoJuego)
  (list jugadores tablero dineroBanco numeroDados turnoActual tasaImpuesto maximoCasas maximoHoteles estadoJuego))
;RF5
(define (property id nombre precio renta dueño casas esHotel estaHipotecada)
  (list id nombre precio renta dueño casas esHotel estaHipotecada))
;RF6
(define(tablero propiedades cartas-suerte cartas-comunidad casillas-especiales)
  (list propiedades cartas-suerte cartas-comunidad casillas-especiales))
;RF7
(define (agregarPropiedad lista propiedad posicion)
  (list(cons propiedad posicion))
  )
;RF10
(define (juego-lanzar-dados)
  
  (display "el valor del primer dado es:")
  (display(append(list-ref (list  1 2 3 4 5 6)(random 6))));aca falta hacer un append para agregar el valor
  (newline)
  (display "el valor del segundo dado es:")
  (display (append(list-ref (list  1 2 3 4 5 6)(random 6))));lo mismo aca
  (newline)
  
  ;cuando tenga lista solo debo sumarlos y entrgar el resultado
  )
;pirmeor saca el diplay y pon un append, de ahi sabes que la primera posicion es del priemr dado y la segunda es del otro hazlo de esa forma
;(define property (lambda(id nombre precio renta dueño casas esHotel estaHipotecada)
;                   (list id nombre precio renta dueño esHotel estaHipotecada)))


