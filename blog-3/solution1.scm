(define is-valid-number
  (lambda (x)
    (or (zero? (modulo x 3))
        (zero? (modulo x 5)))))

(define calculate-sum
  (lambda (values)    
      (cond ((null? values) 
             	0)
            ((is-valid-number (car values)) 
             	(+ (car values) (calculate-sum (cdr values))))
            (else 
              	(calculate-sum (cdr values))))))

(calculate-sum (iota 999 1))