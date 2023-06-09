;; Auto-generated. Do not edit!


(when (boundp 'Thus_g5::nav_goal)
  (if (not (find-package "THUS_G5"))
    (make-package "THUS_G5"))
  (shadow 'nav_goal (find-package "THUS_G5")))
(unless (find-package "THUS_G5::NAV_GOAL")
  (make-package "THUS_G5::NAV_GOAL"))
(unless (find-package "THUS_G5::NAV_GOALREQUEST")
  (make-package "THUS_G5::NAV_GOALREQUEST"))
(unless (find-package "THUS_G5::NAV_GOALRESPONSE")
  (make-package "THUS_G5::NAV_GOALRESPONSE"))

(in-package "ROS")





(defclass Thus_g5::nav_goalRequest
  :super ros::object
  :slots (_goal ))

(defmethod Thus_g5::nav_goalRequest
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

(defclass Thus_g5::nav_goalResponse
  :super ros::object
  :slots (_flag ))

(defmethod Thus_g5::nav_goalResponse
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

(defclass Thus_g5::nav_goal
  :super ros::object
  :slots ())

(setf (get Thus_g5::nav_goal :md5sum-) "85eb5661a8af1bbedc0539d77068c54e")
(setf (get Thus_g5::nav_goal :datatype-) "Thus_g5/nav_goal")
(setf (get Thus_g5::nav_goal :request) Thus_g5::nav_goalRequest)
(setf (get Thus_g5::nav_goal :response) Thus_g5::nav_goalResponse)

(defmethod Thus_g5::nav_goalRequest
  (:response () (instance Thus_g5::nav_goalResponse :init)))

(setf (get Thus_g5::nav_goalRequest :md5sum-) "85eb5661a8af1bbedc0539d77068c54e")
(setf (get Thus_g5::nav_goalRequest :datatype-) "Thus_g5/nav_goalRequest")
(setf (get Thus_g5::nav_goalRequest :definition-)
      "string goal
---
uint8 flag
")

(setf (get Thus_g5::nav_goalResponse :md5sum-) "85eb5661a8af1bbedc0539d77068c54e")
(setf (get Thus_g5::nav_goalResponse :datatype-) "Thus_g5/nav_goalResponse")
(setf (get Thus_g5::nav_goalResponse :definition-)
      "string goal
---
uint8 flag
")



(provide :Thus_g5/nav_goal "85eb5661a8af1bbedc0539d77068c54e")


