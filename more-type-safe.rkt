#lang typed/racket
(provide (rename-out [safe-car car]
                     [safe-cdr cdr]
                     [safe-first first]
                     [safe-rest rest]
                     [safe-second second]
                     [safe-third third]
                     [safe-fourth fourth]
                     [safe-fifth fifth]
                     [safe-sixth sixth]
                     [safe-seventh seventh]
                     [safe-eighth eighth]
                     [safe-ninth ninth]
                     [safe-tenth tenth]
                     [safe-quotient quotient]
                     [safe-modulo modulo]))

(: safe-car (All (a b) (-> (Pairof a b) a)))
(define safe-car car)

(: safe-cdr (All (a b) (-> (Pairof a b) b)))
(define safe-cdr cdr)

(: safe-first (All (a b) (-> (Pairof a (Listof b)) a)))
(define safe-first first)

(: safe-rest (All (a b) (-> (Pairof a (Listof b)) (Listof b))))
(define safe-rest rest)

(: safe-second (All (a r t) (-> (List* a r (Listof t)) r)))
(define safe-second second)

(: safe-third (All (a b r t) (-> (List* a b r (Listof t)) r)))
(define safe-third third)

(: safe-fourth (All (a b c r t) (-> (List* a b c r (Listof t)) r)))
(define safe-fourth fourth)

(: safe-fifth (All (a b c d r t) (-> (List* a b c d r (Listof t)) r)))
(define safe-fifth fifth)

(: safe-sixth (All (a b c d e r t) (-> (List* a b c d e r (Listof t)) r)))
(define safe-sixth sixth)

(: safe-seventh (All (a b c d e f r t) (-> (List* a b c d e f r (Listof t)) r)))
(define safe-seventh seventh)

(: safe-eighth (All (a b c d e f g r t) (-> (List* a b c d e f g r (Listof t)) r)))
(define safe-eighth eighth)

(: safe-ninth (All (a b c d e f g h r t) (-> (List* a b c d e f g h r (Listof t)) r)))
(define safe-ninth ninth)

(: safe-tenth (All (a b c d e f g h i r t) (-> (List* a b c d e f g h i r (Listof t)) r)))
(define safe-tenth tenth)

(: safe-quotient (-> Nonnegative-Integer Positive-Integer Nonnegative-Integer))
(define safe-quotient quotient)

(: safe-modulo (-> Nonnegative-Integer Positive-Integer Nonnegative-Integer))
(define safe-modulo modulo)
