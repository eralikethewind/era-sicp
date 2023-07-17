#lang sicp
; 1.4
; observe that our model of evaluation allows for combinations whose operators
; are compound expressions. Use this observation to describe the behavior of
; the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 2 3)  ; 5
(a-plus-abs-b 2 -2) ; 4

; a plus abs of b
; this procedure applys a different operator to a and b depending on the outcome of the if statement
; if b > 0, the if statement returns + and the combination becomes (+ a b)
; if b <= 0, the if statement returns - and the combinations becomes (- a b)
