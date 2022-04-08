;; Auto-generated. Do not edit!


(when (boundp 'counting_character::WordCount)
  (if (not (find-package "COUNTING_CHARACTER"))
    (make-package "COUNTING_CHARACTER"))
  (shadow 'WordCount (find-package "COUNTING_CHARACTER")))
(unless (find-package "COUNTING_CHARACTER::WORDCOUNT")
  (make-package "COUNTING_CHARACTER::WORDCOUNT"))
(unless (find-package "COUNTING_CHARACTER::WORDCOUNTREQUEST")
  (make-package "COUNTING_CHARACTER::WORDCOUNTREQUEST"))
(unless (find-package "COUNTING_CHARACTER::WORDCOUNTRESPONSE")
  (make-package "COUNTING_CHARACTER::WORDCOUNTRESPONSE"))

(in-package "ROS")





(defclass counting_character::WordCountRequest
  :super ros::object
  :slots (_words ))

(defmethod counting_character::WordCountRequest
  (:init
   (&key
    ((:words __words) "")
    )
   (send-super :init)
   (setq _words (string __words))
   self)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:serialization-length
   ()
   (+
    ;; string _words
    4 (length _words)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _words
       (write-long (length _words) s) (princ _words s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _words
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _words (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass counting_character::WordCountResponse
  :super ros::object
  :slots (_count ))

(defmethod counting_character::WordCountResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; uint64 _count
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _count
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _count (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _count) (= (length (_count . bv)) 2)) ;; bignum
              (write-long (ash (elt (_count . bv) 0) 0) s)
              (write-long (ash (elt (_count . bv) 1) -1) s))
             ((and (class _count) (= (length (_count . bv)) 1)) ;; big1
              (write-long (elt (_count . bv) 0) s)
              (write-long (if (>= _count 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _count s)(write-long (if (>= _count 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _count
     
#+(or :alpha :irix6 :x86_64)
      (setf _count (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _count (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass counting_character::WordCount
  :super ros::object
  :slots ())

(setf (get counting_character::WordCount :md5sum-) "63b01e3fa790a7c5a731313a78efa4b8")
(setf (get counting_character::WordCount :datatype-) "counting_character/WordCount")
(setf (get counting_character::WordCount :request) counting_character::WordCountRequest)
(setf (get counting_character::WordCount :response) counting_character::WordCountResponse)

(defmethod counting_character::WordCountRequest
  (:response () (instance counting_character::WordCountResponse :init)))

(setf (get counting_character::WordCountRequest :md5sum-) "63b01e3fa790a7c5a731313a78efa4b8")
(setf (get counting_character::WordCountRequest :datatype-) "counting_character/WordCountRequest")
(setf (get counting_character::WordCountRequest :definition-)
      "string words
---
uint64 count

")

(setf (get counting_character::WordCountResponse :md5sum-) "63b01e3fa790a7c5a731313a78efa4b8")
(setf (get counting_character::WordCountResponse :datatype-) "counting_character/WordCountResponse")
(setf (get counting_character::WordCountResponse :definition-)
      "string words
---
uint64 count

")



(provide :counting_character/WordCount "63b01e3fa790a7c5a731313a78efa4b8")


