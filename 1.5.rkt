#lang sicp
; 1.5

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

; applicative
; (test 0 (p))        applicative substitutes operators and operands before applying the procedure
; (if (= 0 0) 0 (p))  so it expands "test", and also expands "(p)"
; (if (= 0 0) 0 (p))  and then it has to expand (p) again
; (if (= 0 0) 0 (p))  and again
; ... continues substituting (p) forever

; normal
; (test 0 (p))        normal would substitute the operators until it reaches primitives before evaluating any operands
; (if (= 0 0) 0 (p))  so it would expand "test", but not try to evaluate "(p)", and then we have only primitives
; 0                   so then it evaluates the if statement resulting in an answer: 0
