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
  :slots (_a _b ))

(defmethod adding_integers::AddTwoIntRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int32 _a
    4
    ;; int32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _a
       (write-long _a s)
     ;; int32 _b
       (write-long _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _a
     (setq _a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
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

(setf (get adding_integers::AddTwoInt :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get adding_integers::AddTwoInt :datatype-) "adding_integers/AddTwoInt")
(setf (get adding_integers::AddTwoInt :request) adding_integers::AddTwoIntRequest)
(setf (get adding_integers::AddTwoInt :response) adding_integers::AddTwoIntResponse)

(defmethod adding_integers::AddTwoIntRequest
  (:response () (instance adding_integers::AddTwoIntResponse :init)))

(setf (get adding_integers::AddTwoIntRequest :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get adding_integers::AddTwoIntRequest :datatype-) "adding_integers/AddTwoIntRequest")
(setf (get adding_integers::AddTwoIntRequest :definition-)
      "int32 a
int32 b
---
int32 sum
")

(setf (get adding_integers::AddTwoIntResponse :md5sum-) "f0b6d69ea10b0cf210cb349d58d59e8f")
(setf (get adding_integers::AddTwoIntResponse :datatype-) "adding_integers/AddTwoIntResponse")
(setf (get adding_integers::AddTwoIntResponse :definition-)
      "int32 a
int32 b
---
int32 sum
")



(provide :adding_integers/AddTwoInt "f0b6d69ea10b0cf210cb349d58d59e8f")


