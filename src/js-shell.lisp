(in-package #:paren-test)

(defvar *js-executable* "js -f"
  "The name of the executable to run in order to execute the generated javascript.")

(defun run-paren-system (name)
  (with-open-file (stream "/tmp/paren.js" :direction :output :if-exists :supersede)
    (paren-files:compile-script-system name :output-stream stream))
  (trivial-shell:shell-command
   (format nil "~A /tmp/paren.js" *js-executable*)))