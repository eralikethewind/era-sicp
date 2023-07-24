#lang sicp
; 1.6
; what happens when trying to use "new-if" to calculate square roots?

; got an out of memory error when running this so it seems to be recursing forever

; I spent about 30 min being very confused and then looked up the answer.
; If I understood correctly, this seems to be the normal-order vs applicative-
; order thing again. So "if" needs to be a special form because it's implemented
; to act like a normal-order evaluation, where it only expands operators and leaves
; the operands untouched until later. But "new-if" is just a regular procedure that
; the interpreter will evaluate in applicative-order. So since sqrt-iter is
; recursive, trying to expand all the operators before evaluating would result in
; infinitely trying to expand sqrt-iter and the "good-enough?" check never gets
; run. Um... I feel like I'm still missing something and not quite getting this
; 100%, I might come back and think about this more later.

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

; copied from book
(define (square x) (* x x))

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)
