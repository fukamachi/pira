(uiop/package:define-package #:pira/tests/smithy-validation (:use)
                             (:export #:validation-exception-field
                              #:validation-exception-field-list #:validation-exception))
(common-lisp:in-package #:pira/tests/smithy-validation)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((path :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "path")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)
