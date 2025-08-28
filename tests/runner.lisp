(defpackage #:pira/tests/runner
  (:use #:cl
        #:rove)
  (:import-from #:alexandria
                #:mappend
                #:compose
                #:ensure-car
                #:ensure-list
                #:starts-with-subseq)
  (:local-nicknames
   (#:operation #:smithy/sdk/operation)
   (#:shape #:smithy/sdk/shapes)
   (#:type #:smithy/sdk/smithy-types)
   (#:service #:smithy/sdk/service)
   (#:protocol #:smithy/sdk/protocols)
   (#:http #:smithy/sdk/http))
  (:export #:define-service-tests))
(in-package #:pira/tests/runner)

(defun ensure-string (value)
  (typecase value
    (string value)
    (null value)
    (otherwise (princ-to-string value))))

(defun check-headers (headers expected-headers)
  (loop for (name . value) in expected-headers
        for actual = (find (string-downcase name) headers
                           :key (compose #'string-downcase #'car)
                           :test #'string=)
        do (ok actual
               (format nil "Header '~A' exists." name))
           (ok (equal value (ensure-string (cdr actual)))
               (format nil "Header '~A' is '~A'."
                       name value))))

(defun json-normalize (value)
  (when (or (null value)
            (string= value ""))
    (return-from json-normalize ""))
  (let ((data
          (let ((yason:*parse-json-arrays-as-vectors* t)
                (yason:*parse-object-as* :alist)
                (yason:*parse-json-booleans-as-symbols* t))
            (yason:parse value)))
        (yason:*list-encoder* #'yason:encode-alist))
    (yason:with-output-to-string* ()
      (etypecase data
        (null "{}")
        (cons (yason:encode-alist data))
        (string (yason:encode data))))))

(defun xml-normalize (value)
  (ppcre:regex-replace-all ">\\s+(<|$)" value ">\\1"))

(defun make-instance-with-params (class-name params)
  (labels ((deserialize-list (member-type values)
             (map 'list (lambda (v)
                          (deserialize-value member-type v))
                  values))
           (deserialize-map (member-key-type member-value-type value)
             (mapcar (lambda (kv)
                       (cons
                        (deserialize-value member-key-type (car kv))
                        (deserialize-value member-value-type (cdr kv))))
                     value))
           (deserialize-value (member-type value)
             (cond
               ((and (find-class member-type nil)
                     (not (string= (package-name (symbol-package member-type))
                                   "COMMON-LISP")))
                (make-instance-with-params member-type value))
               ((eq (get member-type :smithy-type) 'type:enum)
                (or (shape:enum member-type value)
                    value))
               (t value)))
           (deserialize (slot value)
             (case (ensure-car (shape:member-smithy-type slot))
               (type:list (deserialize-list (second (shape:member-smithy-type slot)) value))
               (type:map
                (destructuring-bind (key-type value-type)
                    (rest (shape:member-smithy-type slot))
                  (deserialize-map key-type value-type value)))
               (otherwise
                (deserialize-value (shape:member-target-type slot) value)))))
    (let* ((class (find-class class-name))
           (slots (ensure-list (shape:interface-slots class))))
      (loop with object = (make-instance class-name)
            for (k . v) in params
            for slot = (find-if (lambda (slot)
                                  (equal (shape:member-name slot)
                                         k))
                                slots)
            do (unless slot
                 (error "Not found ~S in ~A" k class-name))
               (setf (slot-value object (c2mop:slot-definition-name slot))
                     (deserialize slot v))
            finally (return object)))))

(defun run-request-test (operation test)
  (when (operation:operation-input operation)
    (let ((req (protocol:make-request operation
                                      (make-instance-with-params (operation:operation-input operation) (getf test :params))
                                      #+nil
                                      (apply #'make-instance (operation:operation-input operation)
                                             (loop for (k . v) in (getf test :params)
                                                   append
                                                   (list (intern (string-upcase (kebab:to-lisp-case k)) :keyword)
                                                         v))))))
      (when (getf test :method)
        (ok (equal (http:request-method req) (getf test :method))
            (format nil "Method is '~A'." (getf test :method))))
      (when (getf test :uri)
        (ok (equal (http:request-path-info req) (getf test :uri))
            (format nil "Path is '~A'." (getf test :uri))))
      (when (getf test :headers)
        (check-headers (http:request-headers req) (getf test :headers)))
      (when (getf test :forbid-headers)
        (loop for header across (getf test :forbid-headers)
              do (ng (find (string-downcase header) (http:request-headers req) :key (compose #'string-downcase #'car) :test 'string=)
                     (format nil "Headers not include '~A'." header))))
      (when (getf test :require-headers)
        (loop for header across (getf test :require-headers)
              do (ok (find (string-downcase header) (http:request-headers req) :key (compose #'string-downcase #'car) :test 'string=)
                     (format nil "Headers include '~A'." header))))
      (when (getf test :body)
        (let ((content-type (cdr (assoc :content-type (http:request-headers req)))))
          (ok (equal (or (http:request-payload req) "")
                     (cond
                       ((or (equal content-type "application/json")
                            (starts-with-subseq "application/x-amz-json-1." content-type))
                        (json-normalize (getf test :body)))
                       ((member content-type '("application/xml"
                                               "text/xml")
                                :test 'equal)
                        (xml-normalize (getf test :body)))
                       (t (getf test :body))))
              (format nil "Body is '~A'." (getf test :body))))))))

(defun run-response-test (operation test)
  (declare (ignorable operation test)))

(defun run-operation-tests (operation)
  (let* ((operation (etypecase operation
                      (symbol (operation:find-operation operation))
                      (operation:operation operation)))
         (request-tests (remove-if
                         (lambda (test)
                           (equal (getf test :applies-to) "server"))
                         (operation:operation-request-tests operation)))
         (response-tests (remove-if
                          (lambda (test)
                            (equal (getf test :applies-to) "server"))
                          (operation:operation-response-tests operation))))
    (when (or request-tests
              response-tests)
      (testing (string-downcase (operation:operation-name operation))
        (dolist (request-test request-tests)
          (testing (getf request-test :id)
            (diag (getf request-test :documentation))
            (run-request-test operation request-test)))
        (dolist (response-test response-tests)
          (testing (getf response-test :id)
            (diag (getf response-test :documentation))
            (run-response-test operation response-test)))))))

(defun define-service-tests (&optional (package *package*))
  (let* ((package (etypecase package
                    (package package)
                    ((or symbol string) (find-package package))))
         (services
           (service:package-services package))
         (operations
           (mappend #'service:service-operations
                    services)))
    (dolist (op operations)
      (rove/core/test::set-test op
                                (lambda ()
                                  (run-operation-tests op))))
    (values)))
