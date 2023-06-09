;; Auto-generated. Do not edit!


(when (boundp 'Thus_g5::grab_object)
  (if (not (find-package "THUS_G5"))
    (make-package "THUS_G5"))
  (shadow 'grab_object (find-package "THUS_G5")))
(unless (find-package "THUS_G5::GRAB_OBJECT")
  (make-package "THUS_G5::GRAB_OBJECT"))
(unless (find-package "THUS_G5::GRAB_OBJECTREQUEST")
  (make-package "THUS_G5::GRAB_OBJECTREQUEST"))
(unless (find-package "THUS_G5::GRAB_OBJECTRESPONSE")
  (make-package "THUS_G5::GRAB_OBJECTRESPONSE"))

(in-package "ROS")





(defclass Thus_g5::grab_objectRequest
  :super ros::object
  :slots (_goal ))

(defmethod Thus_g5::grab_objectRequest
  (:init
   (&key
    ((:goal __goal) "")
    )
   (send-super :init)
   (setq _goal (string __goal))
   self)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:serialization-length
   ()
   (+
    ;; string _goal
    4 (length _goal)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _goal
       (write-long (length _goal) s) (princ _goal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _goal
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _goal (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass Thus_g5::grab_objectResponse
  :super ros::object
  :slots (_flag ))

(defmethod Thus_g5::grab_objectResponse
  (:init
   (&key
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; uint8 _flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _flag
       (write-byte _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass Thus_g5::grab_object
  :super ros::object
  :slots ())

(setf (get Thus_g5::grab_object :md5sum-) "85eb5661a8af1bbedc0539d77068c54e")
(setf (get Thus_g5::grab_object :datatype-) "Thus_g5/grab_object")
(setf (get Thus_g5::grab_object :request) Thus_g5::grab_objectRequest)
(setf (get Thus_g5::grab_object :response) Thus_g5::grab_objectResponse)

(defmethod Thus_g5::grab_objectRequest
  (:response () (instance Thus_g5::grab_objectResponse :init)))

(setf (get Thus_g5::grab_objectRequest :md5sum-) "85eb5661a8af1bbedc0539d77068c54e")
(setf (get Thus_g5::grab_objectRequest :datatype-) "Thus_g5/grab_objectRequest")
(setf (get Thus_g5::grab_objectRequest :definition-)
      "string goal
---
uint8 flag
")

(setf (get Thus_g5::grab_objectResponse :md5sum-) "85eb5661a8af1bbedc0539d77068c54e")
(setf (get Thus_g5::grab_objectResponse :datatype-) "Thus_g5/grab_objectResponse")
(setf (get Thus_g5::grab_objectResponse :definition-)
      "string goal
---
uint8 flag
")



(provide :Thus_g5/grab_object "85eb5661a8af1bbedc0539d77068c54e")


