(define (cube x) (* x x x))

(define (identity x) x)

(define (inc x) (+ 1 x))

(define (sum-int a b)
  (if(> a b)
     0
     (+ a (sum-int (inc a) b))))

(define (sum-cube a b)
  (if(> a b)
     0
     (+ (cube a) (sum-cube (inc a) b))))

(define (pi-sum a b)
  (if (> a b)
      0
      (+ (/ 1.0 (* a (+ a 2))) (pi-sum (+ a 4) b))))

(define (sum term a next b)
  (if(> a b)
     0
     (+ (term a) (sum term (next a) next b))))

(define (new-sum-int a b)
  (sum identity a inc b))

(define (new-sum-cube a b)
  (sum cube a inc b))

(define (new-pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ 4 x))
  (sum pi-term a pi-next b))