;; Auto-generated. Do not edit!


(when (boundp 'Thus_g5::vel_ctrl)
  (if (not (find-package "THUS_G5"))
    (make-package "THUS_G5"))
  (shadow 'vel_ctrl (find-package "THUS_G5")))
(unless (find-package "THUS_G5::VEL_CTRL")
  (make-package "THUS_G5::VEL_CTRL"))
(unless (find-package "THUS_G5::VEL_CTRLREQUEST")
  (make-package "THUS_G5::VEL_CTRLREQUEST"))
(unless (find-package "THUS_G5::VEL_CTRLRESPONSE")
  (make-package "THUS_G5::VEL_CTRLRESPONSE"))

(in-package "ROS")





(defclass Thus_g5::vel_ctrlRequest
  :super ros::object
  :slots (_dx _dy _dth _flag ))

(defmethod Thus_g5::vel_ctrlRequest
  (:init
   (&key
    ((:dx __dx) 0)
    ((:dy __dy) 0)
    ((:dth __dth) 0)
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _dx (round __dx))
   (setq _dy (round __dy))
   (setq _dth (round __dth))
   (setq _flag (round __flag))
   self)
  (:dx
   (&optional __dx)
   (if __dx (setq _dx __dx)) _dx)
  (:dy
   (&optional __dy)
   (if __dy (setq _dy __dy)) _dy)
  (:dth
   (&optional __dth)
   (if __dth (setq _dth __dth)) _dth)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; int8 _dx
    1
    ;; int8 _dy
    1
    ;; int8 _dth
    1
    ;; int8 _flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _dx
       (write-byte _dx s)
     ;; int8 _dy
       (write-byte _dy s)
     ;; int8 _dth
       (write-byte _dth s)
     ;; int8 _flag
       (write-byte _flag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _dx
     (setq _dx (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _dx 127) (setq _dx (- _dx 256)))
   ;; int8 _dy
     (setq _dy (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _dy 127) (setq _dy (- _dy 256)))
   ;; int8 _dth
     (setq _dth (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _dth 127) (setq _dth (- _dth 256)))
   ;; int8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _flag 127) (setq _flag (- _flag 256)))
   ;;
   self)
  )

(defclass Thus_g5::vel_ctrlResponse
  :super ros::object
  :slots (_vx _vy _w ))

(defmethod Thus_g5::vel_ctrlResponse
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:w __w) 0.0)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _w (float __w))
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; float32 _vx
    4
    ;; float32 _vy
    4
    ;; float32 _w
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _w
       (sys::poke _w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vy
     (setq _vy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _w
     (setq _w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass Thus_g5::vel_ctrl
  :super ros::object
  :slots ())

(setf (get Thus_g5::vel_ctrl :md5sum-) "7d814a1679e0452bdd864dd2c3793820")
(setf (get Thus_g5::vel_ctrl :datatype-) "Thus_g5/vel_ctrl")
(setf (get Thus_g5::vel_ctrl :request) Thus_g5::vel_ctrlRequest)
(setf (get Thus_g5::vel_ctrl :response) Thus_g5::vel_ctrlResponse)

(defmethod Thus_g5::vel_ctrlRequest
  (:response () (instance Thus_g5::vel_ctrlResponse :init)))

(setf (get Thus_g5::vel_ctrlRequest :md5sum-) "7d814a1679e0452bdd864dd2c3793820")
(setf (get Thus_g5::vel_ctrlRequest :datatype-) "Thus_g5/vel_ctrlRequest")
(setf (get Thus_g5::vel_ctrlRequest :definition-)
      "int8 dx
int8 dy
int8 dth
int8 flag
---
float32 vx
float32 vy
float32 w
")

(setf (get Thus_g5::vel_ctrlResponse :md5sum-) "7d814a1679e0452bdd864dd2c3793820")
(setf (get Thus_g5::vel_ctrlResponse :datatype-) "Thus_g5/vel_ctrlResponse")
(setf (get Thus_g5::vel_ctrlResponse :definition-)
      "int8 dx
int8 dy
int8 dth
int8 flag
---
float32 vx
float32 vy
float32 w
")



(provide :Thus_g5/vel_ctrl "7d814a1679e0452bdd864dd2c3793820")


