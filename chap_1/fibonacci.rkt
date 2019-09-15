#lang sicp

; recursive

(define (recursive-fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (recursive-fib (- n 1))
                 (recursive-fib (- n 2))))))

(recursive-fib 5)

; iterative

(define (iterative-fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if  (= count 0)
       b
       (fib-iter (+ a b) a (- count 1))))

(iterative-fib 5)