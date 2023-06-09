
(cl:in-package :asdf)

(defsystem "xfyun_new-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "bridgeToBack" :depends-on ("_package_bridgeToBack"))
    (:file "_package_bridgeToBack" :depends-on ("_package"))
  ))