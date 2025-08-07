(defsystem "pira"
  :author "Eitaro Fukamachi"
  :license "MIT"
  :description "Unofficial AWS SDK for Common Lisp"
  :version (:read-file-form "version.sexp")
  :depends-on ("pira-core"))

(defmacro define-service-system (service)
  `(defsystem ,(format nil "pira/~A" service)
     :depends-on ("smithy/sdk")
     :pathname "services"
     :components
     ((:file ,service))))

(define-service-system "s3")
(define-service-system "sts")
