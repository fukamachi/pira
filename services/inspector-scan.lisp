(uiop/package:define-package #:pira/inspector-scan (:use)
                             (:export #:access-denied-exception
                              #:inspector-scan #:internal-server-exception
                              #:internal-server-exception-reason
                              #:output-format #:sbom #:scan-sbom
                              #:scan-sbom-request #:scan-sbom-response
                              #:throttling-exception #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-fields
                              #:validation-exception-reason))
(common-lisp:in-package #:pira/inspector-scan)

(smithy/sdk/service:define-service inspector-scan :shape-name "InspectorScan"
                                   :version "2023-08-08" :title
                                   "Inspector Scan" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Inspector Scan")
                                      ("arnNamespace" . "inspector-scan")
                                      ("cloudTrailEventSource"
                                       . "inspector-scan.amazonaws.com")
                                      ("cloudFormationName" . "InspectorScan"))
                                     ("aws.auth#sigv4"
                                      ("name" . "inspector-scan"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  internal-server-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-enum internal-server-exception-reason
    common-lisp:nil
  (:failed-to-generate-sbom "FAILED_TO_GENERATE_SBOM")
  (:other "OTHER"))

(smithy/sdk/shapes:define-enum output-format
    common-lisp:nil
  (:cyclone-dx-1-5 "CYCLONE_DX_1_5")
  (:inspector "INSPECTOR"))

(smithy/sdk/shapes:define-type sbom smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-input scan-sbom-request common-lisp:nil
                                ((sbom :target-type sbom :required
                                  common-lisp:t :member-name "sbom")
                                 (output-format :target-type output-format
                                  :member-name "outputFormat"))
                                (:shape-name "ScanSbomRequest"))

(smithy/sdk/shapes:define-output scan-sbom-response common-lisp:nil
                                 ((sbom :target-type sbom :member-name "sbom"))
                                 (:shape-name "ScanSbomResponse"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (fields :target-type
                                  validation-exception-fields :member-name
                                  "fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-fields :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "UNKNOWN_OPERATION")
  (:cannot-parse "CANNOT_PARSE")
  (:field-validation-failed "FIELD_VALIDATION_FAILED")
  (:unsupported-sbom-type "UNSUPPORTED_SBOM_TYPE")
  (:other "OTHER"))

(smithy/sdk/operation:define-operation scan-sbom :shape-name "ScanSbom" :input
                                       scan-sbom-request :output
                                       scan-sbom-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/scan/sbom" :code
                                       200)
