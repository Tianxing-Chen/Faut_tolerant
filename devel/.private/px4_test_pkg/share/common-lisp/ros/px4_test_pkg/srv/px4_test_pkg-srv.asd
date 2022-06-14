
(cl:in-package :asdf)

(defsystem "px4_test_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Mission" :depends-on ("_package_Mission"))
    (:file "_package_Mission" :depends-on ("_package"))
  ))