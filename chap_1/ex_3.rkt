#lang sicp

(define (square x)
  (* x x)
)

(define (square-sum a b)
  (+ (square a) (square b))
)

(define (square-sum-larger a b c)
  (cond ((and (> a c) (> b c)) (square-sum a b))
        ((and (> a b) (> c b)) (square-sum a c))
        ((and (> b a) (> c a)) (square-sum b c))
  )
)

(square-sum-larger 1 2 3)
;13