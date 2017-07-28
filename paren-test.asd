(in-package #:asdf-user)

(defsystem paren-test
  :name "paren-test"
  :author "Red Daly <reddaly at gmail>"
  :defsystem-depends-on (:paren-files)
  :depends-on ("parenscript"
               "trivial-shell")
  :serial t
  :pathname "src/"
  :components ((:file "package")
               (:file "js-shell")
               (:module "paren"
                :components ((:parenscript-file "paren-test.paren")))))
