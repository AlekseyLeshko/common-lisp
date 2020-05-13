(defgeneric description (object)
  (:documentation "Return a description of an object."))

(defmethod description ((object integer))
  (format nil "The integer ~D" object))

(defmethod description ((object float))
  (format nil "The float ~3,3f" object))

(defmethod description ((object string))
  (format nil "The string ~s" object))

(print (description 10))
(print (description 3.140))
(print (description "string"))
