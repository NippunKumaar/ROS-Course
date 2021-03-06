;; Auto-generated. Do not edit!


(when (boundp 'timer_action::TimerResult)
  (if (not (find-package "TIMER_ACTION"))
    (make-package "TIMER_ACTION"))
  (shadow 'TimerResult (find-package "TIMER_ACTION")))
(unless (find-package "TIMER_ACTION::TIMERRESULT")
  (make-package "TIMER_ACTION::TIMERRESULT"))

(in-package "ROS")
;;//! \htmlinclude TimerResult.msg.html


(defclass timer_action::TimerResult
  :super ros::object
  :slots (_time_elapsed _updates_sent ))

(defmethod timer_action::TimerResult
  (:init
   (&key
    ((:time_elapsed __time_elapsed) (instance ros::time :init))
    ((:updates_sent __updates_sent) 0)
    )
   (send-super :init)
   (setq _time_elapsed __time_elapsed)
   (setq _updates_sent (round __updates_sent))
   self)
  (:time_elapsed
   (&optional __time_elapsed)
   (if __time_elapsed (setq _time_elapsed __time_elapsed)) _time_elapsed)
  (:updates_sent
   (&optional __updates_sent)
   (if __updates_sent (setq _updates_sent __updates_sent)) _updates_sent)
  (:serialization-length
   ()
   (+
    ;; duration _time_elapsed
    8
    ;; uint32 _updates_sent
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _time_elapsed
       (write-long (send _time_elapsed :sec) s) (write-long (send _time_elapsed :nsec) s)
     ;; uint32 _updates_sent
       (write-long _updates_sent s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _time_elapsed
     (send _time_elapsed :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_elapsed :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _updates_sent
     (setq _updates_sent (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get timer_action::TimerResult :md5sum-) "8227810e22df8077dd49231152c9e200")
(setf (get timer_action::TimerResult :datatype-) "timer_action/TimerResult")
(setf (get timer_action::TimerResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
duration time_elapsed
uint32 updates_sent

")



(provide :timer_action/TimerResult "8227810e22df8077dd49231152c9e200")


