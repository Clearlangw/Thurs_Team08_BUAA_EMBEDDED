;; Auto-generated. Do not edit!


(when (boundp 'Thus_g5::modify_waypoint)
  (if (not (find-package "THUS_G5"))
    (make-package "THUS_G5"))
  (shadow 'modify_waypoint (find-package "THUS_G5")))
(unless (find-package "THUS_G5::MODIFY_WAYPOINT")
  (make-package "THUS_G5::MODIFY_WAYPOINT"))
(unless (find-package "THUS_G5::MODIFY_WAYPOINTREQUEST")
  (make-package "THUS_G5::MODIFY_WAYPOINTREQUEST"))
(unless (find-package "THUS_G5::MODIFY_WAYPOINTRESPONSE")
  (make-package "THUS_G5::MODIFY_WAYPOINTRESPONSE"))

(in-package "ROS")





(defclass Thus_g5::modify_waypointRequest
  :super ros::object
  :slots (_op _name ))

(defmethod Thus_g5::modify_waypointRequest
  (:init
   (&key
    ((:op __op) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _op (round __op))
   (setq _name (string __name))
   self)
  (:op
   (&optional __op)
   (if __op (setq _op __op)) _op)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; uint8 _op
    1
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _op
       (write-byte _op s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _op
     (setq _op (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass Thus_g5::modify_waypointResponse
  :super ros::object
  :slots (_flag _x _y _th ))

(defmethod Thus_g5::modify_waypointResponse
  (:init
   (&key
    ((:flag __flag) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:th __th) 0.0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _th (float __th))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:th
   (&optional __th)
   (if __th (setq _th __th)) _th)
  (:serialization-length
   ()
   (+
    ;; uint8 _flag
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _th
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _flag
       (write-byte _flag s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _th
       (sys::poke _th (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _th
     (setq _th (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass Thus_g5::modify_waypoint
  :super ros::object
  :slots ())

(setf (get Thus_g5::modify_waypoint :md5sum-) "478c393b4e4234c67c0fc79ff227ecab")
(setf (get Thus_g5::modify_waypoint :datatype-) "Thus_g5/modify_waypoint")
(setf (get Thus_g5::modify_waypoint :request) Thus_g5::modify_waypointRequest)
(setf (get Thus_g5::modify_waypoint :response) Thus_g5::modify_waypointResponse)

(defmethod Thus_g5::modify_waypointRequest
  (:response () (instance Thus_g5::modify_waypointResponse :init)))

(setf (get Thus_g5::modify_waypointRequest :md5sum-) "478c393b4e4234c67c0fc79ff227ecab")
(setf (get Thus_g5::modify_waypointRequest :datatype-) "Thus_g5/modify_waypointRequest")
(setf (get Thus_g5::modify_waypointRequest :definition-)
      "uint8 op
string name
---
uint8 flag
float32 x
float32 y
float32 th
")

(setf (get Thus_g5::modify_waypointResponse :md5sum-) "478c393b4e4234c67c0fc79ff227ecab")
(setf (get Thus_g5::modify_waypointResponse :datatype-) "Thus_g5/modify_waypointResponse")
(setf (get Thus_g5::modify_waypointResponse :definition-)
      "uint8 op
string name
---
uint8 flag
float32 x
float32 y
float32 th
")



(provide :Thus_g5/modify_waypoint "478c393b4e4234c67c0fc79ff227ecab")


