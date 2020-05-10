(print "======")
(print (let ((str "Hello, world"))
  (string-upcase str)))

(print (let ((str "Hello, world")) str))

(print
  (let ((x 1)
        (y 5))
      (+ x y)))

(print
  (let* ((x 3)
    (y (+ x 1)))
  y))

(print (let ((x 1)) x))
