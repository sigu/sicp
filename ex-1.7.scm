;FOR VERY SMALL NUMBERS
; previously using relative tolerance of 0.001 was too large
; finding square-root 0.0001 has an error of close to 200%
; FOR VERY LARGE NUMBERS
;for 10^12 works well on 64 bit processor but 10^13 becomes an infinite loop
;
(define (sqrt-itr guess x)
  (if (good-enough? guess x)
    guess
    ( sqrt-itr (improve-guess guess x) x)))

(define (good-enough? guess x)
  ; improvement made for very large and very small numbers
    (< (abs (- x (square guess))) (* guess 0.001)))
    ; (< (abs (- x (square guess)))  0.001))

(define (square x)
    (* x x))

(define (improve-guess guess x)
    (average guess (/ x guess) ))

(define (average x y)
    (/ (+ x y) 2))

(define (square-root x)
    (sqrt-itr 1.0 x))
