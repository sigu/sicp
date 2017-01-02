(define (cube-iter guess x)
    (if (good-enough? guess x)
      guess
      (cube-iter (improved-guess guess x) x)))

(define (good-enough? guess x)
    (< (abs (- x (cube guess))) (* guess 0.001)))

(define (cube x)
    (* x x x))

(define (improved-guess guess x)
  (/ (+ (/ x (square guess)) (double guess)) 3))
    ; (/ (+ (/ x (square guess )) (* 2 guess)) 3))

(define (double x)
    (* 2 x))

(define (square x)
    (* x x ))

(define (cube-root x)
    (cube-iter 1.0 x))
