;; Auto-generated. Do not edit!


(when (boundp 'waterplus_map_tools::positionMsg)
  (if (not (find-package "WATERPLUS_MAP_TOOLS"))
    (make-package "WATERPLUS_MAP_TOOLS"))
  (shadow 'positionMsg (find-package "WATERPLUS_MAP_TOOLS")))
(unless (find-package "WATERPLUS_MAP_TOOLS::POSITIONMSG")
  (make-package "WATERPLUS_MAP_TOOLS::POSITIONMSG"))

(in-package "ROS")
;;//! \htmlinclude positionMsg.msg.html


(defclass waterplus_map_tools::positionMsg
  :super ros::object
  :slots (_x _y _w ))

(defmethod waterplus_map_tools::positionMsg
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:w __w) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _w (float __w))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _w
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _w
       (sys::poke _w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _w
     (setq _w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get waterplus_map_tools::positionMsg :md5sum-) "fc16a6b45aaa44f2dd9023be467748ee")
(setf (get waterplus_map_tools::positionMsg :datatype-) "waterplus_map_tools/positionMsg")
(setf (get waterplus_map_tools::positionMsg :definition-)
      "float32 x
float32 y
float32 w

")



(provide :waterplus_map_tools/positionMsg "fc16a6b45aaa44f2dd9023be467748ee")


