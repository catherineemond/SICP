#lang sicp

; defining a recursive function for testing purposes

(define (p) (p))

; defining a new-if function

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)
; 5
(new-if (= 1 1) 0 5)
; 0

(if (= 2 3) (p) 5)
; 5
(new-if (= 2 3) (p) 5)
; infinite recursion
; new-if being a function, the first thing Lisp does is to evaluate all arguments of a function -> this creates the infinite recursion
; if is a special form, not a function, and does not evaluate its arguments first
