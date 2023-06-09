
(cl:in-package :asdf)

(defsystem "waterplus_map_tools-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Waypoint" :depends-on ("_package_Waypoint"))
    (:file "_package_Waypoint" :depends-on ("_package"))
    (:file "pointsNumMsg" :depends-on ("_package_pointsNumMsg"))
    (:file "_package_pointsNumMsg" :depends-on ("_package"))
    (:file "positionMsg" :depends-on ("_package_positionMsg"))
    (:file "_package_positionMsg" :depends-on ("_package"))
  ))