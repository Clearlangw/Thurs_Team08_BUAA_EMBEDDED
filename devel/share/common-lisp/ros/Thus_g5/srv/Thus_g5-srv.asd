
(cl:in-package :asdf)

(defsystem "Thus_g5-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "create_map" :depends-on ("_package_create_map"))
    (:file "_package_create_map" :depends-on ("_package"))
    (:file "grab_object" :depends-on ("_package_grab_object"))
    (:file "_package_grab_object" :depends-on ("_package"))
    (:file "modify_waypoint" :depends-on ("_package_modify_waypoint"))
    (:file "_package_modify_waypoint" :depends-on ("_package"))
    (:file "nav_goal" :depends-on ("_package_nav_goal"))
    (:file "_package_nav_goal" :depends-on ("_package"))
    (:file "vel_ctrl" :depends-on ("_package_vel_ctrl"))
    (:file "_package_vel_ctrl" :depends-on ("_package"))
    (:file "waypoint" :depends-on ("_package_waypoint"))
    (:file "_package_waypoint" :depends-on ("_package"))
  ))