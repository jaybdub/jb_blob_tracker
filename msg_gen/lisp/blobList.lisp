; Auto-generated. Do not edit!


(cl:in-package jb_blob_tracker-msg)


;//! \htmlinclude blobList.msg.html

(cl:defclass <blobList> (roslisp-msg-protocol:ros-message)
  ((blobVector
    :reader blobVector
    :initarg :blobVector
    :type (cl:vector jb_blob_tracker-msg:blob)
   :initform (cl:make-array 0 :element-type 'jb_blob_tracker-msg:blob :initial-element (cl:make-instance 'jb_blob_tracker-msg:blob)))
   (length
    :reader length
    :initarg :length
    :type cl:integer
    :initform 0)
   (header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass blobList (<blobList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <blobList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'blobList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jb_blob_tracker-msg:<blobList> is deprecated: use jb_blob_tracker-msg:blobList instead.")))

(cl:ensure-generic-function 'blobVector-val :lambda-list '(m))
(cl:defmethod blobVector-val ((m <blobList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jb_blob_tracker-msg:blobVector-val is deprecated.  Use jb_blob_tracker-msg:blobVector instead.")
  (blobVector m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <blobList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jb_blob_tracker-msg:length-val is deprecated.  Use jb_blob_tracker-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <blobList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jb_blob_tracker-msg:header-val is deprecated.  Use jb_blob_tracker-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <blobList>) ostream)
  "Serializes a message object of type '<blobList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'blobVector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'blobVector))
  (cl:let* ((signed (cl:slot-value msg 'length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <blobList>) istream)
  "Deserializes a message object of type '<blobList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'blobVector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'blobVector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'jb_blob_tracker-msg:blob))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'length) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<blobList>)))
  "Returns string type for a message object of type '<blobList>"
  "jb_blob_tracker/blobList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'blobList)))
  "Returns string type for a message object of type 'blobList"
  "jb_blob_tracker/blobList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<blobList>)))
  "Returns md5sum for a message object of type '<blobList>"
  "8d2a0cc823d382150d040874092aa1f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'blobList)))
  "Returns md5sum for a message object of type 'blobList"
  "8d2a0cc823d382150d040874092aa1f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<blobList>)))
  "Returns full string definition for message of type '<blobList>"
  (cl:format cl:nil "jb_blob_tracker/blob[] blobVector~%int32 length~%Header header~%~%================================================================================~%MSG: jb_blob_tracker/blob~%float32 x~%float32 y~%float32 variance~%float32 size~%int32 ID~%Header header~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'blobList)))
  "Returns full string definition for message of type 'blobList"
  (cl:format cl:nil "jb_blob_tracker/blob[] blobVector~%int32 length~%Header header~%~%================================================================================~%MSG: jb_blob_tracker/blob~%float32 x~%float32 y~%float32 variance~%float32 size~%int32 ID~%Header header~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <blobList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'blobVector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <blobList>))
  "Converts a ROS message object to a list"
  (cl:list 'blobList
    (cl:cons ':blobVector (blobVector msg))
    (cl:cons ':length (length msg))
    (cl:cons ':header (header msg))
))
