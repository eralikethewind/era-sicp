#lang sicp
;1.7

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

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
