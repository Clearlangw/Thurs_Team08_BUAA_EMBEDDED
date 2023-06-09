;; Auto-generated. Do not edit!


(when (boundp 'Thus_g5::waypoint)
  (if (not (find-package "THUS_G5"))
    (make-package "THUS_G5"))
  (shadow 'waypoint (find-package "THUS_G5")))
(unless (find-package "THUS_G5::WAYPOINT")
  (make-package "THUS_G5::WAYPOINT"))
(unless (find-package "THUS_G5::WAYPOINTREQUEST")
  (make-package "THUS_G5::WAYPOINTREQUEST"))
(unless (find-package "THUS_G5::WAYPOINTRESPONSE")
  (make-package "THUS_G5::WAYPOINTRESPONSE"))

(in-package "ROS")





(defclass Thus_g5::waypointRequest
  :super ros::object
  :slots (_op _name _pos_x _pos_y _ori_z _ori_w ))

(defmethod Thus_g5::waypointRequest
  (:init
   (&key
    ((:op __op) 0)
    ((:name __name) "")
    ((:pos_x __pos_x) 0.0)
    ((:pos_y __pos_y) 0.0)
    ((:ori_z __ori_z) 0.0)
    ((:ori_w __ori_w) 0.0)
    )
   (send-super :init)
   (setq _op (round __op))
   (setq _name (string __name))
   (setq _pos_x (float __pos_x))
   (setq _pos_y (float __pos_y))
   (setq _ori_z (float __ori_z))
   (setq _ori_w (float __ori_w))
   self)
  (:op
   (&optional __op)
   (if __op (setq _op __op)) _op)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:pos_x
   (&optional __pos_x)
   (if __pos_x (setq _pos_x __pos_x)) _pos_x)
  (:pos_y
   (&optional __pos_y)
   (if __pos_y (setq _pos_y __pos_y)) _pos_y)
  (:ori_z
   (&optional __ori_z)
   (if __ori_z (setq _ori_z __ori_z)) _ori_z)
  (:ori_w
   (&optional __ori_w)
   (if __ori_w (setq _ori_w __ori_w)) _ori_w)
  (:serialization-length
   ()
   (+
    ;; uint8 _op
    1
    ;; string _name
    4 (length _name)
    ;; float32 _pos_x
    4
    ;; float32 _pos_y
    4
    ;; float32 _ori_z
    4
    ;; float32 _ori_w
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _op
       (write-byte _op s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _pos_x
       (sys::poke _pos_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pos_y
       (sys::poke _pos_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ori_z
       (sys::poke _ori_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ori_w
       (sys::poke _ori_w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _op
     (setq _op (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _pos_x
     (setq _pos_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pos_y
     (setq _pos_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ori_z
     (setq _ori_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ori_w
     (setq _ori_w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass Thus_g5::waypointResponse
  :super ros::object
  :slots (_flag ))

(defmethod Thus_g5::waypointResponse
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

(defclass Thus_g5::waypoint
  :super ros::object
  :slots ())

(setf (get Thus_g5::waypoint :md5sum-) "bed5daee1b4718b12320576a56e38ad1")
(setf (get Thus_g5::waypoint :datatype-) "Thus_g5/waypoint")
(setf (get Thus_g5::waypoint :request) Thus_g5::waypointRequest)
(setf (get Thus_g5::waypoint :response) Thus_g5::waypointResponse)

(defmethod Thus_g5::waypointRequest
  (:response () (instance Thus_g5::waypointResponse :init)))

(setf (get Thus_g5::waypointRequest :md5sum-) "bed5daee1b4718b12320576a56e38ad1")
(setf (get Thus_g5::waypointRequest :datatype-) "Thus_g5/waypointRequest")
(setf (get Thus_g5::waypointRequest :definition-)
      "uint8 op
string name
float32 pos_x
float32 pos_y
float32 ori_z
float32 ori_w
---
uint8 flag
")

(setf (get Thus_g5::waypointResponse :md5sum-) "bed5daee1b4718b12320576a56e38ad1")
(setf (get Thus_g5::waypointResponse :datatype-) "Thus_g5/waypointResponse")
(setf (get Thus_g5::waypointResponse :definition-)
      "uint8 op
string name
float32 pos_x
float32 pos_y
float32 ori_z
float32 ori_w
---
uint8 flag
")



(provide :Thus_g5/waypoint "bed5daee1b4718b12320576a56e38ad1")


