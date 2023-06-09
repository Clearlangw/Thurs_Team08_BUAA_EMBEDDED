;; Auto-generated. Do not edit!


(when (boundp 'Thus_g5::create_map)
  (if (not (find-package "THUS_G5"))
    (make-package "THUS_G5"))
  (shadow 'create_map (find-package "THUS_G5")))
(unless (find-package "THUS_G5::CREATE_MAP")
  (make-package "THUS_G5::CREATE_MAP"))
(unless (find-package "THUS_G5::CREATE_MAPREQUEST")
  (make-package "THUS_G5::CREATE_MAPREQUEST"))
(unless (find-package "THUS_G5::CREATE_MAPRESPONSE")
  (make-package "THUS_G5::CREATE_MAPRESPONSE"))

(in-package "ROS")





(defclass Thus_g5::create_mapRequest
  :super ros::object
  :slots (_name _file_path _image_path ))

(defmethod Thus_g5::create_mapRequest
  (:init
   (&key
    ((:name __name) "")
    ((:file_path __file_path) "")
    ((:image_path __image_path) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _file_path (string __file_path))
   (setq _image_path (string __image_path))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:file_path
   (&optional __file_path)
   (if __file_path (setq _file_path __file_path)) _file_path)
  (:image_path
   (&optional __image_path)
   (if __image_path (setq _image_path __image_path)) _image_path)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _file_path
    4 (length _file_path)
    ;; string _image_path
    4 (length _image_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _file_path
       (write-long (length _file_path) s) (princ _file_path s)
     ;; string _image_path
       (write-long (length _image_path) s) (princ _image_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _file_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _image_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _image_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass Thus_g5::create_mapResponse
  :super ros::object
  :slots (_flag ))

(defmethod Thus_g5::create_mapResponse
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

(defclass Thus_g5::create_map
  :super ros::object
  :slots ())

(setf (get Thus_g5::create_map :md5sum-) "fdf9d2b99128bd8fc18468084eb93c4f")
(setf (get Thus_g5::create_map :datatype-) "Thus_g5/create_map")
(setf (get Thus_g5::create_map :request) Thus_g5::create_mapRequest)
(setf (get Thus_g5::create_map :response) Thus_g5::create_mapResponse)

(defmethod Thus_g5::create_mapRequest
  (:response () (instance Thus_g5::create_mapResponse :init)))

(setf (get Thus_g5::create_mapRequest :md5sum-) "fdf9d2b99128bd8fc18468084eb93c4f")
(setf (get Thus_g5::create_mapRequest :datatype-) "Thus_g5/create_mapRequest")
(setf (get Thus_g5::create_mapRequest :definition-)
      "string name
string file_path
string image_path
---
uint8 flag

")

(setf (get Thus_g5::create_mapResponse :md5sum-) "fdf9d2b99128bd8fc18468084eb93c4f")
(setf (get Thus_g5::create_mapResponse :datatype-) "Thus_g5/create_mapResponse")
(setf (get Thus_g5::create_mapResponse :definition-)
      "string name
string file_path
string image_path
---
uint8 flag

")



(provide :Thus_g5/create_map "fdf9d2b99128bd8fc18468084eb93c4f")


