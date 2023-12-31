#lang sicp
; 1.1
; running in DrRacket

10
; result: 10

(+ 5 3 4)
; result: 12

(- 9 1)
; result: 8

(/ 6 2)
; result: 3

(+ (* 2 4) (- 4 6))
; result: 6

(define a 3)
; no output

(define b (+ a 1))
; no output

(+ a b (* a b))
; 19

(= a b)
; #f

(if (and (> b a) (< b (* a b)))
    b
    a)
; 4

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
; 16

(+ 2 (if (> b a) b a))
; 6

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
; 16
