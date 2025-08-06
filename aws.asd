(defsystem "aws"
  :depends-on ("aws-core"))

(defmacro define-service-system (service)
  `(defsystem ,(format nil "aws/~A" service)
     :depends-on ("smithy/sdk")
     :pathname "services"
     :components
     ((:file ,service))))

(define-service-system "s3")
(define-service-system "sts")
