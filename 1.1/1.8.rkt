#lang sicp
; 1.8

(define (cbrt-iter guess x)
  (if (better-good-enough? guess (improve guess x))
      guess
      (cbrt-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (better-good-enough? guess new-guess)
  (<= (abs (- guess new-guess)) (/ guess 1000000)))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(cbrt 8)
