; Auto-generated. Do not edit!


(cl:in-package adding_integers-srv)


;//! \htmlinclude AddTwoInt-request.msg.html

(cl:defclass <AddTwoInt-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass AddTwoInt-request (<AddTwoInt-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddTwoInt-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddTwoInt-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adding_integers-srv:<AddTwoInt-request> is deprecated: use adding_integers-srv:AddTwoInt-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <AddTwoInt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adding_integers-srv:x-val is deprecated.  Use adding_integers-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <AddTwoInt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adding_integers-srv:y-val is deprecated.  Use adding_integers-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddTwoInt-request>) ostream)
  "Serializes a message object of type '<AddTwoInt-request>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  "e8634dfe42c7a993ca5593bb5e316953")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTwoInt-request)))
  "Returns md5sum for a message object of type 'AddTwoInt-request"
  "e8634dfe42c7a993ca5593bb5e316953")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddTwoInt-request>)))
  "Returns full string definition for message of type '<AddTwoInt-request>"
  (cl:format cl:nil "int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddTwoInt-request)))
  "Returns full string definition for message of type 'AddTwoInt-request"
  (cl:format cl:nil "int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddTwoInt-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddTwoInt-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddTwoInt-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
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
  "e8634dfe42c7a993ca5593bb5e316953")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddTwoInt-response)))
  "Returns md5sum for a message object of type 'AddTwoInt-response"
  "e8634dfe42c7a993ca5593bb5e316953")
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