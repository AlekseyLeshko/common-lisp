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
