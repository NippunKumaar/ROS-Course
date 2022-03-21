; Auto-generated. Do not edit!


(cl:in-package adding_integers-srv)


;//! \htmlinclude AddTwoInt-request.msg.html

(cl:defclass <AddTwoInt-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass AddTwoInt-request (<AddTwoInt-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTwoInt-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTwoInt-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adding_integers-srv:<AddTwoInt-request> is deprecated: use adding_integers-srv:AddTwoInt-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <AddTwoInt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adding_integers-srv:a-val is deprecated.  Use adding_integers-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <AddTwoInt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adding_integers-srv:b-val is deprecated.  Use adding_integers-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTwoInt-request>) ostream)
  "Serializes a message object of type '<AddTwoInt-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTwoInt-request>) istream)
  "Deserializes a message object of type '<AddTwoInt-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTwoInt-request>)))
  "Returns string type for a service object of type '<AddTwoInt-request>"
  "adding_integers/AddTwoIntRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTwoInt-request)))
  "Returns string type for a service object of type 'AddTwoInt-request"
  "adding_integers/AddTwoIntRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTwoInt-request>)))
  "Returns md5sum for a message object of type '<AddTwoInt-request>"
  "f0b6d69ea10b0cf210cb349d58d59e8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTwoInt-request)))
  "Returns md5sum for a message object of type 'AddTwoInt-request"
  "f0b6d69ea10b0cf210cb349d58d59e8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTwoInt-request>)))
  "Returns full string definition for message of type '<AddTwoInt-request>"
  (cl:format cl:nil "int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTwoInt-request)))
  "Returns full string definition for message of type 'AddTwoInt-request"
  (cl:format cl:nil "int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTwoInt-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTwoInt-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTwoInt-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude AddTwoInt-response.msg.html

(cl:defclass <AddTwoInt-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass AddTwoInt-response (<AddTwoInt-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTwoInt-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTwoInt-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adding_integers-srv:<AddTwoInt-response> is deprecated: use adding_integers-srv:AddTwoInt-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <AddTwoInt-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adding_integers-srv:sum-val is deprecated.  Use adding_integers-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTwoInt-response>) ostream)
  "Serializes a message object of type '<AddTwoInt-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddTwoInt-response>) istream)
  "Deserializes a message object of type '<AddTwoInt-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddTwoInt-response>)))
  "Returns string type for a service object of type '<AddTwoInt-response>"
  "adding_integers/AddTwoIntResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTwoInt-response)))
  "Returns string type for a service object of type 'AddTwoInt-response"
  "adding_integers/AddTwoIntResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddTwoInt-response>)))
  "Returns md5sum for a message object of type '<AddTwoInt-response>"
  "f0b6d69ea10b0cf210cb349d58d59e8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTwoInt-response)))
  "Returns md5sum for a message object of type 'AddTwoInt-response"
  "f0b6d69ea10b0cf210cb349d58d59e8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTwoInt-response>)))
  "Returns full string definition for message of type '<AddTwoInt-response>"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTwoInt-response)))
  "Returns full string definition for message of type 'AddTwoInt-response"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTwoInt-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTwoInt-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTwoInt-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddTwoInt)))
  'AddTwoInt-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddTwoInt)))
  'AddTwoInt-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddTwoInt)))
  "Returns string type for a service object of type '<AddTwoInt>"
  "adding_integers/AddTwoInt")