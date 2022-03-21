;; Auto-generated. Do not edit!


(when (boundp 'adding_integers::AddTwoInt)
  (if (not (find-package "ADDING_INTEGERS"))
    (make-package "ADDING_INTEGERS"))
  (shadow 'AddTwoInt (find-package "ADDING_INTEGERS")))
(unless (find-package "ADDING_INTEGERS::ADDTWOINT")
  (make-package "ADDING_INTEGERS::ADDTWOINT"))
(unless (find-package "ADDING_INTEGERS::ADDTWOINTREQUEST")
  (make-package "ADDING_INTEGERS::ADDTWOINTREQUEST"))
(unless (find-package "ADDING_INTEGERS::ADDTWOINTRESPONSE")
  (make-package "ADDING_INTEGERS::ADDTWOINTRESPONSE"))

(in-package "ROS")





(defclass adding_integers::AddTwoIntRequest
  :super ros::object
  :slots (_x _y ))

(defmethod adding_integers::AddTwoIntRequest
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass adding_integers::AddTwoIntResponse
  :super ros::object
  :slots (_sum ))

(defmethod adding_integers::AddTwoIntResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass adding_integers::AddTwoInt
  :super ros::object
  :slots ())

(setf (get adding_integers::AddTwoInt :md5sum-) "e8634dfe42c7a993ca5593bb5e316953")
(setf (get adding_integers::AddTwoInt :datatype-) "adding_integers/AddTwoInt")
(setf (get adding_integers::AddTwoInt :request) adding_integers::AddTwoIntRequest)
(setf (get adding_integers::AddTwoInt :response) adding_integers::AddTwoIntResponse)

(defmethod adding_integers::AddTwoIntRequest
  (:response () (instance adding_integers::AddTwoIntResponse :init)))

(setf (get adding_integers::AddTwoIntRequest :md5sum-) "e8634dfe42c7a993ca5593bb5e316953")
(setf (get adding_integers::AddTwoIntRequest :datatype-) "adding_integers/AddTwoIntRequest")
(setf (get adding_integers::AddTwoIntRequest :definition-)
      "int32 x
int32 y
---
int32 sum
")

(setf (get adding_integers::AddTwoIntResponse :md5sum-) "e8634dfe42c7a993ca5593bb5e316953")
(setf (get adding_integers::AddTwoIntResponse :datatype-) "adding_integers/AddTwoIntResponse")
(setf (get adding_integers::AddTwoIntResponse :definition-)
      "int32 x
int32 y
---
int32 sum
")



(provide :adding_integers/AddTwoInt "e8634dfe42c7a993ca5593bb5e316953")


