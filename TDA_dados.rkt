#lang racket
(provide (all-defined-out))
;(define (juego-lanzar-dados)
 ; `()
  ;(display "el valor del primer dado es:")
  ;(display(list-ref (list  1 2 3 4 5 6)(random 6)));aca falta hacer un append para agregar el valor
  ;(newline)
  ;:(display "el valor del segundo dado es:")
  ;(display (list-ref (list  1 2 3 4 5 6)(random 6)));lo mismo aca
 ; (newline)
  ;cuando tenga lista solo debo sumarlos y entrgar el resultado
  ;)
;pirmeor saca el diplay y pon un append, de ahi sabes que la primera posicion es del priemr dado y la segunda es del otro hazlo de esa forma
; usa la funcion let y debes implementar la semilla 
(define (resultado-dados)
  (cons (+ 1 (random 6)) (+ 1 (random 6)))
  )
(define (guardarResultado)
  (resultado-dados))
(define (juego-tirar-dados)
  (let ((resultado (guardarResultado)))
    (display "El resultado del primer dado fue:")
    (newline)
    (display (car resultado))
    (newline)
    (display "El resultado del segundo dado fue")
    (newline)
    (display (cdr resultado))
    (newline)
    resultado))
