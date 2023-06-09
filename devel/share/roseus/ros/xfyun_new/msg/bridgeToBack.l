;; Auto-generated. Do not edit!


(when (boundp 'xfyun_new::bridgeToBack)
  (if (not (find-package "XFYUN_NEW"))
    (make-package "XFYUN_NEW"))
  (shadow 'bridgeToBack (find-package "XFYUN_NEW")))
(unless (find-package "XFYUN_NEW::BRIDGETOBACK")
  (make-package "XFYUN_NEW::BRIDGETOBACK"))

(in-package "ROS")
;;//! \htmlinclude bridgeToBack.msg.html


(defclass xfyun_new::bridgeToBack
  :super ros::object
  :slots (_state _content ))

(defmethod xfyun_new::bridgeToBack
  (:init
   (&key
    ((:state __state) 0)
    ((:content __content) "")
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _content (string __content))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:content
   (&optional __content)
   (if __content (setq _content __content)) _content)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ;; string _content
    4 (length _content)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;; string _content
       (write-long (length _content) s) (princ _content s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _content
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _content (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get xfyun_new::bridgeToBack :md5sum-) "53c8c8d6cb18826e9166d1d2c8b0d1f2")
(setf (get xfyun_new::bridgeToBack :datatype-) "xfyun_new/bridgeToBack")
(setf (get xfyun_new::bridgeToBack :definition-)
      "int32 state
string content


")



(provide :xfyun_new/bridgeToBack "53c8c8d6cb18826e9166d1d2c8b0d1f2")


