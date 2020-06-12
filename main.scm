;;; Exercise 1.2
(/ (+ 5 
      4 
      (- 2 (- 3 (+ 6 0.8)))) 
    (* 3 
       (- 6 2) 
       (- 2 7)))

;;; Exercise 1.3
(define (sq x)
        (* x x))

(define (sumSq x y)
        (+ (sq x) 
           (sq y)))

(define (sumSqLargest x y z)
  (cond ((and (< x y) (< x z) (sumSq y z)))
        ((and (< y x) (< y z) (sumSq x z)))
        ((and (< z x) (< z y) (sumSq x y)))))

(sumSqLargest 2 3 4) ; ans -> 25
