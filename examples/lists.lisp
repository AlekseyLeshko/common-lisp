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
