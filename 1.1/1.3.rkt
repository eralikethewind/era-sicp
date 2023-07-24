#lang sicp
; 1.3
; define a procedure that takes three numbers as arguments and returns
; the sum of the squares of the two larger numbers

(define (larger-sum-of-squares x y z)
  (if (> x y)                           ; if x is bigger than y
      (+ (* x x)                        ; square of x plus...
         (if (> y z)                    ; if y is bigger
             (* y y)                    ; use y squared
             (* z z)))                  ; otherwise use z squared
      (+ (* y y)
         (if (> x z)
             (* x x)
             (* z z)))))

(larger-sum-of-squares 5 2 1)

; after looking at the github i feel dumb for this lol
