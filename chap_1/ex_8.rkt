#lang sicp

(define (cube-root x)
  (cube-root-iter 1.0 x)
)

(define (square x)
  (* x x)
)

; defining a recursive function to get closer and closer to the cube root until the guess is close enough

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-root-iter (improve guess x) x)))

; defining a function to improve the guess according to Newton's formula

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3)
)

(define (good-enough? guess x)
  (= guess (improve guess x)))


(cube-root 27)
