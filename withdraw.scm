(define balance 100)
(define (withdraw amount)
  (if (>= balance amount)
      (begin (set! balance (- balance amount))
             balance)
      "Insufficient funds"))


(define (make-withdraw balance)
  (lambda (amount)
    (if (>= balance amount)
        (begin (set! balance( - balance amount))
               balance)
        "Insufficent funds")))


;Here is a procedure that returns a "bank-account object" with a specified initial balance:

(define (make-account balance)
  define (withdraw amount)
  (if (>= balance amount)
      (begin (set! balance (- balance amount))
             balance)
      "Insufficient funds"))
(define (deposit amount)
  (set! balance (+ balance amount)
        balance)
  (define (dispatch m)
    (cond ((eq? m 'withdraw) withdraw)
          ((eq? m 'deposit) deposit)
          (else (error "Unkown request: MAKE-ACCOUNT"
                       m))))
  dispatch)



