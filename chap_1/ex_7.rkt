#lang sicp

; defining a square function to be use later

(define (square x)
  (* x x))

; defining a recursive function to get closer and closer to the square root until the guess is close enough

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

; defining a function to improve the guess

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

; defining a function to determine if a guess is good enough

;(define (good-enough? guess x)
;  (< (abs(- (square guess) x)) 0.001))

; modified good-enough? function (comment out the previous one)

;(define (good-enough? guess x)
;  (< (abs (- (improve guess x) guess))
;     (* guess .001)))

; another interesting solution to the precision problem of the good-enough? function
; based on limited precision inherent to computer arithmetic operations

(define (good-enough? guess x)
  (= guess (improve guess x)))

; defining the function that will get us the square root starting with a guess of 1

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)
(sqrt 10000000000)
(sqrt 1000000000000)
(sqrt 100000000000000)
;; this last one creates infinite recursion (precision problem with big numbers)
(sqrt 0.0009)

(sqrt 100000000000000000000)
;Value: 10000000000.

(sqrt 0.00000000000000000009) 
;Value: .0000000003
