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

(: safe-quotient (case->
                  (-> Zero Positive-Integer Zero)
                  (-> One One One)
                  (-> Positive-Byte One Positive-Byte)
                  (-> Byte One Byte)
                  (-> Positive-Index One Positive-Index)
                  (-> Index One Index)
                  (-> Positive-Fixnum One Positive-Fixnum)
                  (-> Nonnegative-Fixnum One Nonnegative-Fixnum)
                  (-> Negative-Fixnum One Negative-Fixnum)
                  (-> Nonpositive-Fixnum One Nonpositive-Fixnum)
                  (-> Fixnum One Fixnum)
                  (-> Byte Positive-Integer Byte)
                  (-> Byte Positive-Integer Fixnum)
                  (-> Index Positive-Byte Index)
                  (-> Index Positive-Integer Index)
                  (-> Index Positive-Integer Fixnum)
                  (-> Nonnegative-Fixnum Positive-Byte Nonnegative-Fixnum)
                  (-> Nonnegative-Fixnum Positive-Fixnum Nonnegative-Fixnum)
                  (-> Nonnegative-Fixnum Negative-Fixnum Nonpositive-Fixnum)
                  (-> Nonpositive-Fixnum Positive-Fixnum Nonpositive-Fixnum)
                  (-> Nonpositive-Fixnum Negative-Fixnum Nonnegative-Integer)
                  (-> Nonnegative-Fixnum Positive-Integer Nonnegative-Fixnum)
                  (-> Nonnegative-Integer Positive-Byte Nonnegative-Integer)
                  (-> Nonnegative-Integer Positive-Index Nonnegative-Integer)
                  (-> Nonnegative-Integer Positive-Fixnum Nonnegative-Integer)
                  (-> Nonnegative-Integer Positive-Integer Nonnegative-Integer)
                  (-> Nonnegative-Integer Negative-Integer Nonpositive-Integer)
                  (-> Nonpositive-Integer Positive-Integer Nonpositive-Integer)
                  (-> Nonpositive-Integer Negative-Integer Nonnegative-Integer)))
(define safe-quotient quotient)

(: safe-modulo (case->
                (-> One One Zero)
                (-> Integer Positive-Byte Byte)
                (-> Byte Positive-Integer Byte)
                (-> Integer Positive-Index Index)
                (-> Index Positive-Integer Index)
                (-> Integer Positive-Fixnum Nonnegative-Fixnum)
                (-> Nonnegative-Fixnum Positive-Integer Nonnegative-Fixnum)
                (-> Integer Positive-Integer Nonnegative-Integer)
                (-> Nonnegative-Integer Positive-Integer Nonnegative-Integer)
                (-> Integer Negative-Fixnum Nonpositive-Fixnum)
                (-> Integer Negative-Integer Nonpositive-Integer)))
(define safe-modulo modulo)
