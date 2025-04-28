#lang racket

(provide (all-defined-out))
(require "TDA_propiedades.rkt")
(require "TDA_tablero.rkt")
;Esta comentada correctamente

; Descripción: Esta funcion permite crear a los jugadores tomando en cuenta lo solicitado y lo necesario para el juego.
; Dom: id (int) X nombre (string) X dinero (int) X propiedades (list) X posicion (int) X estaEnCarcel (boolean) X totalCartasSalirCarcel (int)// sacado directamente del proyecto
; Rec: devuelve una lista con los datos señalados arriba
; Tipo recursión: No aplica.
(define (jugador id nombre dinero propiedades posicion estadoCarcel totalCartasCarcel)
  (list id nombre dinero propiedades posicion estadoCarcel totalCartasCarcel ))




; de aqui en adelante seran los getter de de las cosas que necesito


; Descripción: Esta funcion define una lista referenciada para poder usar los indices y mas adelante obtener los paramatros que necesito.
; Dom: lista del las propiedades del jugador
; Rec: lista referenciada del las propiedades del elemento.
; Tipo recursión: No aplica.
(define parametroJugador
  (lambda (jugador n)
    (list-ref jugador n)))

;esta funcion sirve para obtener el id del jugdaor
; Descripción: Esta Funcion entrega el ID del jugador consultado
; Dom: jugador consultado (list)
; Rec: ID del jugador consultado (int)
; Tipo recursión: No aplica.
(define getIdJugador
  (lambda(jugador)
    (parametroJugador jugador 0)))

; esta funcion sirve para obtener el nombre del jugador
; Descripción: Esta funcion entrega el nombre del jugador
; Dom: jugador consultado (list)
; Rec: nombre del jugador consutado (string)(indexacion 1)
; Tipo recursión: No aplica.
(define getNombreJugador
  (lambda(jugador)
    (parametroJugador jugador 1)))

;esta funcion sirve para mostrar el dinero
; Descripción: Esta funcion entrega el dinero del jugador
; Dom: jugador consultado (list)
; Rec: dinero del jugado consultado (int)(indexacion 2)
; Tipo recursión: No aplica.
(define getDineroJugador
  (lambda(jugador)
    (parametroJugador jugador 2)))

;esta funcion sirve para mostrar el listado de propiedades
; Descripción: Esta funcion entrega el listado de propiedades del jugador
; Dom: jugador consultado (list)
; Rec: listado de propiedades del jugador (list)(indexacion 3)
; Tipo recursión: No aplica.
(define getPropiedadesJugador
  (lambda(jugador)
    (parametroJugador jugador 3)))

;esta funcion sirve para mostrar posicion
; Descripción: Esta funcion entrega la posicion del jugador
; Dom: jugador consultado (list)
; Rec: posicion del jugador consultado (int)(indexacion 4)
; Tipo recursión: No aplica.
(define getPosicionJugador
  (lambda(jugador)
    (parametroJugador jugador 4)))

;esta funcion sirve para mostrar el estado de carcel
; Descripción: Esta funcion entrega el estado de la carce, true si esta en la carcel, false si no lo esta
; Dom: jugador conslut(ado (list)
; Rec: Estado de carcel (bool)(indexacion 5)
; Tipo recursión: No aplica.
(define getCarcelJugador
  (lambda(jugador)
    (parametroJugador jugador 5)))

;esta funcion sirve para mostrar el total cartas de carce
; Descripción: Esta funcion entrega la cant de cartas que tiene el jugador para salir de la carcel
; Dom: jugador consultado(list)
; Rec: Cant cartas para salir de la carcel (int)(indexacion 6)
; Tipo recursión: No aplica.
(define getCartasCarcelJugador
  (lambda(jugador)
    (parametroJugador jugador 6)))

; ni el id ni el nombre debe ser cambiado por lo que no hare setter

; Descripción: esta funcion sirve para cambiar el dinero a determinado jugador
; Dom: jugador(list)XnuevoDinero(int)
; Rec: una nueva lista del jugador con todos los atributos iguales excepto el dinero(int) que ha sido actualizado
; Tipo recursión: No aplica.
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
; Descripción: Esta Funcion permite modificar la lista de propiedades del jugador
; Dom: juegador(list)
; Rec: propiedades(list)
; Tipo recursión: No aplica.
(define(setPropiedades jugador propiedad)
  (list(getIdJugador jugador)
       (getNombreJugador jugador)
       (getDineroJugador jugador)
       (cons propiedad(getPropiedadesJugador jugador))
       (getPosicionJugador jugador)
       (getCarcelJugador jugador)
       (getCartasCarcelJugador jugador)))

;funcion que perimte modificar posicion
; Descripción: Esta funcion permite cambiar de posicion al jugador
; Dom: jugador(list)XValoresDados(par)Xjuego
; Rec: una nueva lista del jugador con todos los atributos iguales excepto la posicion(int) que ha sido actualizada
; Tipo recursión: No aplica.
(define (jugador-mover jugador dados juego)
  (list (getIdJugador jugador)
        (getNombreJugador jugador)
        (getDineroJugador jugador)
        (getPropiedadesJugador jugador)
       (+ (getPosicionJugador jugador) (car (dados) (cadr(dados))))
        (getCarcelJugador jugador)
        (getCartasCarcelJugador jugador)))
;funcion que perimte modificar estado de carcel
; Descripción: esta funcion permite cambiar el dato de tipo bool del estado de carcerl 
; Dom: jugador(list)XnuevaCarcel(bool)
; Rec: una lista del jugador con todos los atributos iguales excepto el booleano de la carcel que ha sido actualizada
; Tipo recursión: No aplica.
(define (setCarcel jugador nuevaCarcel)
  (list (getIdJugador jugador)
        (getNombreJugador jugador)
        (getDineroJugador jugador)
        (getPropiedadesJugador jugador)
        (getPosicionJugador jugador)
        nuevaCarcel
        (getCartasCarcelJugador jugador)))

;funcion que perimte modificar cartas de carccel
; Descripción: Esta funcion permite modificar la cant de cartas para salir de la carcel del jugador
; Dom: jugador(list)XnuevaCartaCarcel(int)
; Rec: Una lista del jugador con todos los atributos iguales excepto la cant de carta de la carcel que ha sido actualizada
; Tipo recursión: No aplica.
(define (setCartasCarcel jugador nuevaCartaCarcel)
  (list (getIdJugador jugador)
        (getNombreJugador jugador)
        (getDineroJugador jugador)
        (getPropiedadesJugador jugador)
        (getPosicionJugador jugador)
        (getCarcelJugador jugador)
        nuevaCartaCarcel))



; jugador comprar propiedad
; Descripción: Esta funcion permite que el jugador compre la propiedad si este tiene el dinero suficiente
; Dom: jugador(list)Xpropiedad(list)
; Rec: jugador(list)
; Tipo recursión: No aplica.
(define (jugador-comprar-propiedad jugador propiedad)
  (if(>= (getDineroJugador jugador)(getPrecioPropiedad propiedad))
     (setPropiedades
      (setDinero jugador (-(getDineroJugador jugador) (getPrecioPropiedad propiedad)))
      propiedad);si es verdadero va aca
  jugador);si es falso va aca 
  )

;jugador calcular renta
;esta funcion es para ver la posicion que esta el jugador(o sea la propiedad donde esta y devolver el valor de esa renta)
; Descripción: Esta funcion calcula el valor de la renta dependiendo de que  la propiedad que se encunetre este
; Dom: jugador(list)Xjuego(list)
; Rec: ValorRenta(int)
; Tipo recursión: No aplica.
(define (jugador-calcular-renta jugador juego)
  (getRentaPropiedad (buscar-posicion-propiedad (getPosicionJugador jugador) (getListaPropiedadesTablero juego))))

;entrega la propiedad asociada a la posicion
;esto me devuelve la propiedad completa, toda la lista
;usa recursion
; Descripción: hace una recursion para buscar en propiedades(list) la posicion en la cual esta el jugador, mediante el id  de estas propiedades
; Dom: posicion(int)Xpropiedades(list)
; Rec: propiedad(list)
; Tipo recursión: De cola
(define (buscar-posicion-propiedad posicion propiedades)
  (cond
    [(= (getIdPropiedad (car propiedades)) posicion) (car propiedades)]
    [else (buscar-posicion-propiedad posicion (cdr propiedades))]))
; funciones para utlizar las cartas especiales
; Descripción: Esta funcion perimite modificar la posicion del jugador, sirve para utilizar las cartas de comunindad y suerte
; Dom: jugador(list)XnuevaPosicion(int)
; Rec: jugador(list)
; Tipo recursión: No aplica.

(define (setPosicion jugador nuevaPosicion)
  (list (getIdJugador jugador)
        (getNombreJugador jugador)
        (getDineroJugador jugador)
        (getPropiedadesJugador jugador)
        nuevaPosicion
        (getCarcelJugador jugador)
(getCartasCarcelJugador jugador)))