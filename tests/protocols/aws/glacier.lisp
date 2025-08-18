(uiop/package:define-package #:pira/tests/protocols/aws/glacier (:use)
                             (:export #:archive-creation-output #:glacier
                              #:stream #:upload-archive #:upload-archive-input
                              #:upload-multipart-part
                              #:upload-multipart-part-input
                              #:upload-multipart-part-output #:string))
(common-lisp:in-package #:pira/tests/protocols/aws/glacier)

(smithy/sdk/service:define-service glacier :shape-name "Glacier" :version
                                   "2012-06-01" :title "Amazon Glacier"
                                   :operations
                                   '(upload-archive upload-multipart-part)
                                   :xml-namespace
                                   '(:uri
                                     "http://glacier.amazonaws.com/doc/2012-06-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Glacier")
                                      ("arnNamespace" . "glacier")
                                      ("cloudFormationName" . "Glacier")
                                      ("cloudTrailEventSource"
                                       . "glacier.amazonaws.com")
                                      ("endpointPrefix" . "glacier"))
                                     ("aws.auth#sigv4" ("name" . "glacier"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure archive-creation-output common-lisp:nil
                                    ((location :target-type string :member-name
                                      "location" :http-header "Location")
                                     (checksum :target-type string :member-name
                                      "checksum" :http-header
                                      "x-amz-sha256-tree-hash")
                                     (archive-id :target-type string
                                      :member-name "archiveId" :http-header
                                      "x-amz-archive-id"))
                                    (:shape-name "ArchiveCreationOutput"))

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((type :target-type string :member-name "type")
                                 (code :target-type string :member-name "code")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error missing-parameter-value-exception
                                common-lisp:nil
                                ((type :target-type string :member-name "type")
                                 (code :target-type string :member-name "code")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "MissingParameterValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error request-timeout-exception common-lisp:nil
                                ((type :target-type string :member-name "type")
                                 (code :target-type string :member-name "code")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "RequestTimeoutException")
                                (:error-code 408))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((type :target-type string :member-name "type")
                                 (code :target-type string :member-name "code")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((type :target-type string :member-name "type")
                                 (code :target-type string :member-name "code")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type stream smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t)

(smithy/sdk/shapes:define-input upload-archive-input common-lisp:nil
                                ((vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (archive-description :target-type string
                                  :member-name "archiveDescription"
                                  :http-header "x-amz-archive-description")
                                 (checksum :target-type string :member-name
                                  "checksum" :http-header
                                  "x-amz-sha256-tree-hash")
                                 (body :target-type stream :member-name "body"
                                  :http-payload common-lisp:t))
                                (:shape-name "UploadArchiveInput"))

(smithy/sdk/shapes:define-input upload-multipart-part-input common-lisp:nil
                                ((account-id :target-type string :required
                                  common-lisp:t :member-name "accountId"
                                  :http-label common-lisp:t)
                                 (vault-name :target-type string :required
                                  common-lisp:t :member-name "vaultName"
                                  :http-label common-lisp:t)
                                 (upload-id :target-type string :required
                                  common-lisp:t :member-name "uploadId"
                                  :http-label common-lisp:t)
                                 (checksum :target-type string :member-name
                                  "checksum" :http-header
                                  "x-amz-sha256-tree-hash")
                                 (range :target-type string :member-name
                                  "range" :http-header "Content-Range")
                                 (body :target-type stream :member-name "body"
                                  :http-payload common-lisp:t))
                                (:shape-name "UploadMultipartPartInput"))

(smithy/sdk/shapes:define-structure upload-multipart-part-output
                                    common-lisp:nil
                                    ((checksum :target-type string :member-name
                                      "checksum" :http-header
                                      "x-amz-sha256-tree-hash"))
                                    (:shape-name "UploadMultipartPartOutput"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation upload-archive :shape-name
                                       "UploadArchive" :input
                                       upload-archive-input :output
                                       archive-creation-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/{accountId}/vaults/{vaultName}/archives"
                                       :code 201 :request-tests
                                       ((:id "GlacierVersionHeader" :protocol
                                         "aws.protocols#restJson1" :method
                                         "POST" :uri "/foo/vaults/bar/archives"
                                         :headers
                                         (("X-Amz-Glacier-Version"
                                           . "2012-06-01"))
                                         :body "" :params
                                         (("accountId" . "foo")
                                          ("vaultName" . "bar"))
                                         :documentation
                                         "Glacier requires that a version header be set on all requests.")
                                        (:id "GlacierChecksums" :protocol
                                         "aws.protocols#restJson1" :method
                                         "POST" :uri "/foo/vaults/bar/archives"
                                         :headers
                                         (("X-Amz-Glacier-Version"
                                           . "2012-06-01")
                                          ("X-Amz-Content-Sha256"
                                           . "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9")
                                          ("X-Amz-Sha256-Tree-Hash"
                                           . "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9"))
                                         :body "hello world" :params
                                         (("accountId" . "foo")
                                          ("vaultName" . "bar")
                                          ("body" . "hello world"))
                                         :documentation
                                         "Glacier requires checksum headers that are cumbersome to provide."
                                         :applies-to "client")
                                        (:id "GlacierAccountId" :protocol
                                         "aws.protocols#restJson1" :method
                                         "POST" :uri "/-/vaults/bar/archives"
                                         :headers
                                         (("X-Amz-Glacier-Version"
                                           . "2012-06-01"))
                                         :body "" :params
                                         (("accountId" . "")
                                          ("vaultName" . "bar"))
                                         :documentation
                                         "Glacier requires that the account id be set, but you can just use a
hyphen (-) to indicate the current account. This should be default
behavior if the customer provides a null or empty string."
                                         :applies-to "client")))

(smithy/sdk/operation:define-operation upload-multipart-part :shape-name
                                       "UploadMultipartPart" :input
                                       upload-multipart-part-input :output
                                       upload-multipart-part-output :errors
                                       (invalid-parameter-value-exception
                                        missing-parameter-value-exception
                                        request-timeout-exception
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}"
                                       :code 204 :request-tests
                                       ((:id "GlacierMultipartChecksums"
                                         :protocol "aws.protocols#restJson1"
                                         :method "PUT" :uri
                                         "/foo/vaults/bar/multipart-uploads/baz"
                                         :headers
                                         (("X-Amz-Glacier-Version"
                                           . "2012-06-01")
                                          ("X-Amz-Content-Sha256"
                                           . "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9")
                                          ("X-Amz-Sha256-Tree-Hash"
                                           . "b94d27b9934d3e08a52e52d7da7dabfac484efe37a5380ee9088f7ace2efcde9"))
                                         :body "hello world" :params
                                         (("accountId" . "foo")
                                          ("vaultName" . "bar")
                                          ("uploadId" . "baz")
                                          ("body" . "hello world"))
                                         :documentation
                                         "Glacier requires checksum headers that are cumbersome to provide."
                                         :applies-to "client")))
