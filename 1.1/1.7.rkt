#lang sicp
;1.7

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

;"good-enough?" doesn't work for very small numbers because if you try to get the
; sqrt of a number smaller than the threshold of 0.001, you can pass this test
; with a guess that is very far off.
; ex. sqrt(0.0000000002)
; if the square of your guess is 0.0001, the difference between this and x is
; less than the threshold and good-enough? would return true, even though this is
; orders of magnitude off.

; "good-enough?" doesn't work for very large numbers because computers use a
; limited number of bits to store numbers, which causes rounding errors. With
; very large numbers two consecutive numbers could both not be close enough to
; passing the threshold, so the program would continue forever.
; ex. sqrt(

; alt strat, watch how guess changes from one iteration to the next
; stop when change is a very small fraction of guess

(define (sqrt-iter guess x)
  (if (better-good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x) x)))

(define (better-good-enough? guess new-guess)
  (<= (abs (- guess new-guess)) (/ guess 1000)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)
(sqrt 0.0000000002)
(sqrt 10000000000000)
(sqrt 0)
(sqrt 0.000005)
