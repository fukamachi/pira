(defpackage #:pira/codegen
  (:use #:cl)
  (:import-from #:smithy)
  (:import-from #:alexandria
                #:mappend
                #:starts-with-subseq)
  (:import-from #:assoc-utils
                #:aget)
  (:export #:codegen
           #:codegen-tests))
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

(defun codegen-tests ()
  (let* ((*default-pathname-defaults* (asdf:system-source-directory '#:pira))
         (model.json (merge-pathnames #P"assets/smithy-aws-protocol-tests.json"))
         (spec (smithy/json:parse model.json))
         (services (remove-if-not (lambda (shape) (equal (aget (cdr shape) "type") "service"))
                                  (aget spec "shapes")))
         (operations (alexandria:mappend
                      (lambda (service)
                        (map 'list
                             (lambda (op) (aget op "target"))
                             (aget (cdr service) "operations")))
                      services))
         (namespaces (remove-duplicates
                      (mapcar (lambda (name)
                                (nth-value 1 (smithy/utils:parse-shape-id name)))
                              operations)
                      :test 'equal)))
    (dolist (namespace namespaces)
      (let* ((protocol-name (cond
                              ((starts-with-subseq "aws.protocoltests." namespace)
                               (subseq namespace (length "aws.protocoltests.")))
                              ((starts-with-subseq "com.amazonaws." namespace)
                               (format nil "aws/~A" (subseq namespace (length "com.amazonaws."))))
                              (t namespace)))
             (package-name
               (format nil "tests/protocols/~A" protocol-name)))
        (with-open-file (out (format nil "~A.lisp" package-name)
                             :direction :output
                             :if-exists :supersede
                             :if-does-not-exist :create)
          (smithy::codegen-from-json model.json
                                     :package-name (format nil "pira/~A" package-name)
                                     :use '(#:pira/tests/shared-types)
                                     :test (lambda (shape-name)
                                             (equal namespace (nth-value 1 (smithy/utils:parse-shape-id shape-name))))
                                     :output out)
          (format out "~2&(rove:deftest ~(~A~)~%  (pira/tests/runner:run-service-tests))~%"
                  protocol-name)))))
  (values))
