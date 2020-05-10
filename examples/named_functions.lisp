(defun fib (n)
  "Return the nth Fibonacci number."
  (if (< n 2)
    n
    (+ (fib (- n 1))
    (fib (- n 2)))))

(print (fib 30))
(print (fib 3))

(print (funcall #'fib 30))
