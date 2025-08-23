(defpackage #:pira/tests/runner
  (:use #:cl
        #:rove)
  (:import-from #:alexandria
                #:mappend
                #:compose)
  (:local-nicknames
   (#:operation #:smithy/sdk/operation)
   (#:service #:smithy/sdk/service)
   (#:protocol #:smithy/sdk/protocols)
   (#:http #:smithy/sdk/http))
  (:export #:define-service-tests))
(in-package #:pira/tests/runner)

(defun check-headers (headers expected-headers)
  (loop for (name . value) in expected-headers
        for actual = (find (string-downcase name) headers
                           :key (compose #'string-downcase #'car)
                           :test #'string=)
        do (ok actual
               (format nil "Header '~A' exists." name))
           (ok (equal value (cdr actual))
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

(defun run-request-test (operation test)
  (unless (find-if (lambda (kv)
                     (consp (cdr kv)))
                   (getf test :params)) ;; TODO
    (when (operation:operation-input operation)
      (let ((req (protocol:make-request operation
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
                       (if (equal content-type "application/json")
                           (json-normalize (getf test :body))
                           (getf test :body)))
                (format nil "Body is '~A'." (getf test :body)))))))))

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
