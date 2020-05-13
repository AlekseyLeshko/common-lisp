(defclass vehicle ()
  ((speed :accessor vehicle-speed
          :initarg :speed
          :type real
          :documentation "The vehicle's current speed."))
  (:documentation "The base class of vehicles."))

(defclass bicycle (vehicle)
  ((mass :reader bicycle-mass
         :initarg :mass
         :type real
         :documentation "The bike's mass."))
  (:documentation "A bicycle."))

(defclass canoe (vehicle)
  ((rowers :reader canoe-rowers
           :initarg :rowers
           :initform 0
           :type (integer 0)
           :documentation "The number of rowers."))
  (:documentation "A canoe."))

(defparameter canoe (make-instance 'canoe
                                    :speed 10
                                    :rowers 6))

(print (class-of canoe))
(print (canoe-rowers canoe))
(print (vehicle-speed canoe))
(print (describe 'canoe))
