
(cl:in-package :asdf)

(defsystem "jb_blob_tracker-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "blobList" :depends-on ("_package_blobList"))
    (:file "_package_blobList" :depends-on ("_package"))
    (:file "blob" :depends-on ("_package_blob"))
    (:file "_package_blob" :depends-on ("_package"))
  ))