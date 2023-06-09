;; Auto-generated. Do not edit!


(when (boundp 'waterplus_map_tools::pointsNumMsg)
  (if (not (find-package "WATERPLUS_MAP_TOOLS"))
    (make-package "WATERPLUS_MAP_TOOLS"))
  (shadow 'pointsNumMsg (find-package "WATERPLUS_MAP_TOOLS")))
(unless (find-package "WATERPLUS_MAP_TOOLS::POINTSNUMMSG")
  (make-package "WATERPLUS_MAP_TOOLS::POINTSNUMMSG"))

(in-package "ROS")
;;//! \htmlinclude pointsNumMsg.msg.html


(defclass waterplus_map_tools::pointsNumMsg
  :super ros::object
  :slots (_wayPointsNum ))

(defmethod waterplus_map_tools::pointsNumMsg
  (:init
   (&key
    ((:wayPointsNum __wayPointsNum) 0)
    )
   (send-super :init)
   (setq _wayPointsNum (round __wayPointsNum))
   self)
  (:wayPointsNum
   (&optional __wayPointsNum)
   (if __wayPointsNum (setq _wayPointsNum __wayPointsNum)) _wayPointsNum)
  (:serialization-length
   ()
   (+
    ;; int32 _wayPointsNum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _wayPointsNum
       (write-long _wayPointsNum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _wayPointsNum
     (setq _wayPointsNum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get waterplus_map_tools::pointsNumMsg :md5sum-) "21963038274a792e85177cbe61934856")
(setf (get waterplus_map_tools::pointsNumMsg :datatype-) "waterplus_map_tools/pointsNumMsg")
(setf (get waterplus_map_tools::pointsNumMsg :definition-)
      "int32 wayPointsNum

")



(provide :waterplus_map_tools/pointsNumMsg "21963038274a792e85177cbe61934856")


