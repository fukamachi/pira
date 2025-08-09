(defpackage #:pira/codegen
  (:use #:cl)
  (:import-from #:smithy)
  (:export #:codegen))
(in-package #:pira/codegen)

(defun codegen ()
  (let ((*default-pathname-defaults* (asdf:system-source-directory '#:pira)))
    (smithy:codegen #P"assets/aws-models/models/" #P"services/" :prefix "pira/")
    (with-open-file (out #P"pira.asd"
                         :direction :output
                         :if-does-not-exist :create
                         :if-exists :supersede)
      (write-string
       "(defsystem \"pira\"
  :author \"Eitaro Fukamachi\"
  :license \"MIT\"
  :description \"Unofficial AWS SDK for Common Lisp\"
  :version (:read-file-form \"version.sexp\")
  :depends-on (\"pira-core\"))

(defmacro define-service-system (service)
  `(defsystem ,(format nil \"pira/~A\" service)
     :depends-on (\"smithy/sdk\")
     :pathname \"services\"
     :components
     ((:file ,service))))

" out)
      (dolist (service-name
               (mapcar #'pathname-name (uiop:directory-files #P"services/" "*.lisp")))
        (format out "(define-service-system ~S)~%" service-name))))
  (values))
