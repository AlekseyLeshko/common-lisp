(print (list 1 2 3))
(print (first (list 1 2 3)))
(print (second (list 1 2 3)))


(defparameter my-list (list 1 2 3))
(print my-list)

(setf (second my-list) 7)
(print my-list)

(print (nth 1 (list 1 2 3)))
(print (nth 1 my-list))

(setf (nth 1 my-list) 65)
(print my-list)
(setf (second my-list) 70)
(print my-list)

(print (mapcar #'evenp (list 1 2 3 4 5 6)))
(print (mapcar #'string-upcase (list "Hello" "world!")))

(defun my-map (function list)
  (if list
    (cons (funcall function (first list))
          (my-map function  (rest list)))
    nil))

(print (my-map #'string-upcase (list "test" "first")))
(print (my-map #'string-upcase ()))

(print (reduce #'+ (list 1 2 3)))

(print (reduce #'(lambda (a b)(* a b))(list 2 2 4)))

(defparameter result
  (reduce #'(lambda (a b)
      (format t "A: ~A, B: ~A~%" a b)
      (* a b))
  (list 1 2 3 4 5 6)))

(format t "~%~A: ~R" result result)
(print result)


(print (sort (list 9 2 4 7 3 0 8) #'<))
(print (sort (list 9 2 4 7 3 0 8) #'>))
(print (sort (list 9 2 4 7 3 0 8) #'(lambda (a b)
  (format t "~A < ~A = ~A~%" a b (< a b))
  (< a b))))

(defun destructure (list)
  (destructuring-bind (first second &rest others)
    list
    (format t "First: ~A~%" first)
    (format t "Second: ~A~%" second)
    (format t "Rest: ~A~%" others)))

(print (destructure (list 1 2 3 4 5 6)))
