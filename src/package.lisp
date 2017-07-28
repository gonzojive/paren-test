(defpackage :paren-test
  (:use :common-lisp :parenscript)
  (:export #:run-paren-system
           #:*js-executable*))
  
(in-package :paren-test)

(defvar *suite* nil)