# More Type Safe

More Type Safe is redifine Typed Racket's procedures.
Typed Racket has several procedures that are not type-safe.

For example, the type of the `car` procedure is as follows:

```
(All (a b) (case-> (-> (Pairof a b) a) (-> (Listof a) a)))
```

This `(-> (Listof a) a)` is unsafe. The reason is that there is a danger of applying `car` to an empty list at runtime.

To make this safe, you need to remove the `(-> (Listof a) a)` type as follows:

```
#lang typed/racket
;; Remove (-> (Listof a) a) type.
(: safe-car (All (a b) (-> (Pairof a b) a)))
(define safe-car car)
(provide (rename-out [safe-car car]))
```

This library provides a safe alternative to Typed Racket procedures.

*Note: This library does not provide exhaustive safety procedures at this time.*

# Usage

If you write `(require more-type-safe)`, it will be replaced by a type-safe procedure.

```
#lang typed/racket
(require more-type-safe)
```

# License

The code's license is MIT. See LICENSE file.
