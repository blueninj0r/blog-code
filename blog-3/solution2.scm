(load "mk.scm")
(load "mkextraforms.scm")
(load "mkprelude.scm")

(define lesso
  (lambda (x y)
    (== (integer? x) #t)
    (== (< x y) #t)))

(run* (q)
      (fresh (a)
            (lesso a 1000)
      		(== q a)))