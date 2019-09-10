#lang sicp

(define (p) (p))
; (p) will cause infinite recursion, (p) is calling (p) again, etc.

(define (test x y)
  (if (= x 0)
    0
    y
  )
)

(test 0 1)
(test 0 (p)) ; infinite recursion once again

; applicative-order evaluation => what Scheme uses, infinite recursion
; normal-order evaluation => (p) is not evaluated because the predicate of if evaluates to true