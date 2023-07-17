#lang sicp
; 1.2

; (5 + 4 + (2 - (3 - (6 + 4/5)))) / (3 (6 - 2) (2 - 7))

(/ (+ 5
      4
      (- 2
         (- 3
            (+ 6
               (/ 4 5)))))
   (* 3
      (- 6 2)
      (- 2 7)))

; output: -37/150
; changing one of the integers to a float will give decimal output: -0.246
