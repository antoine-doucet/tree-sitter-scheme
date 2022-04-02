===
list
===
(quote)
(sym)
(define x 1)
(if (= 1 1) 1 0)
#(1 2)
#vu8(0 1)

---
(program
  (list (symbol))
  (list (symbol))
  (list
    (symbol)
    (symbol)
    (number))
  (if_expr
    (test
      (list
        (symbol)
        (number)
        (number)))
    (number)
    (number))
  (vector
    (number)
    (number))
  (byte_vector
    (number)
    (number)))

===
Procedure
===
(lambda (x) (+ x 1))

(define (fib n)
  (if (< n 2) 1
      (+ (fib (- n 1))
         (fib (- n 2)))))

---
(program
  (list
    (symbol)
    (list
      (symbol))
    (list
      (symbol)
      (symbol)
      (number)))

  (list
    (symbol)
    (list
      (symbol)
      (symbol))
    (if_expr
      (test
        (list
          (symbol)
          (symbol)
          (number)))
      (number)
      (list
        (symbol)
        (list
          (symbol)
          (list
            (symbol)
            (symbol)
            (number)))
        (list
          (symbol)
          (list
            (symbol)
            (symbol)
            (number)))))))

===
macro
===
(define ~>
  (symtax-rules ()
    [(_ val)
     val]
    [(_ val (f args ...) body ...)
     (~> (f val args ...)
        body ...)]))

---
(program
  (list
    (symbol)
    (symbol)
    (list
      (symbol)
      (list)
      (list
        (list
          (symbol)
          (symbol))
        (symbol))
      (list
        (list
          (symbol)
          (symbol)
          (list
            (symbol)
            (symbol)
            (symbol))
          (symbol)
          (symbol))
        (list
          (symbol)
          (list
            (symbol)
            (symbol)
            (symbol)
            (symbol))
          (symbol)
          (symbol))))))