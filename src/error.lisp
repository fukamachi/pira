(defpackage #:pira/error
  (:use #:cl)
  (:import-from #:alexandria
                #:hash-table-alist
                #:mappend)
  (:export #:aws-error
           #:aws-error-operation-name
           #:aws-error-body
           #:aws-error-headers
           #:aws-error-status))
(in-package #:pira/error)

(define-condition aws-error (error)
  ((operation-name :initarg :%operation-name
                   :reader aws-error-operation-name)
   (body :initarg :%body
         :reader aws-error-body)
   (headers :initarg :%headers
            :reader aws-error-headers)
   (status :initarg :%status
           :reader aws-error-status)))

(defmethod print-object ((error aws-error) stream)
  (format stream "~A: ~A

~{~A: ~A~%~}
=== Headers ===
~S

=== Body ===
~S"
          (aws-error-operation-name error)
          (or (and (consp (aws-error-body error))
                   (cdr (assoc "message" (aws-error-body error) :test 'equalp)))
              (format nil "~A returned for ~A"
                      (class-name (class-of error))
                      (aws-error-operation-name error)))
          (let ((aws-error-slots  (c2mop:class-slots (find-class 'aws-error))))
            (mappend (lambda (slot)
                       (and (slot-boundp error (c2mop:slot-definition-name slot))
                            `(,(c2mop:slot-definition-name slot)
                              ,(slot-value error (c2mop:slot-definition-name slot)))))
                     (remove-if (lambda (slot)
                                  (member (c2mop:slot-definition-name slot) aws-error-slots
                                          :key #'c2mop:slot-definition-name))
                                (c2mop:class-slots (class-of error)))))
          (and (hash-table-p (aws-error-headers error))
               (hash-table-alist (aws-error-headers error)))
          (aws-error-body error)))
