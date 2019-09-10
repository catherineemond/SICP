#lang sicp

; recursive:

(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))
  )
)

; iterative:

(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))
  )
)

(+ 2 3)

; The easiest way to spot that the first process is recursive (without writing out the substitution) is to note that the "+" procedure calls itself at the end while nested in another expression; the second calls itself, but as the top expression.
