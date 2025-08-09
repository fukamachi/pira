(uiop/package:define-package #:pira/sagemaker-featurestore-runtime (:use)
                             (:export #:access-forbidden
                              #:amazon-sage-maker-feature-store-runtime
                              #:batch-get-record #:batch-get-record-error
                              #:batch-get-record-errors
                              #:batch-get-record-identifier
                              #:batch-get-record-identifiers
                              #:batch-get-record-request
                              #:batch-get-record-response
                              #:batch-get-record-result-detail
                              #:batch-get-record-result-details #:delete-record
                              #:delete-record-request #:deletion-mode
                              #:expiration-time-response #:expires-at
                              #:feature-group-name-or-arn #:feature-name
                              #:feature-names #:feature-value #:get-record
                              #:get-record-request #:get-record-response
                              #:internal-failure #:message #:put-record
                              #:put-record-request #:record
                              #:record-identifiers #:resource-not-found
                              #:service-unavailable #:target-store
                              #:target-stores #:ttl-duration
                              #:ttl-duration-unit #:ttl-duration-value
                              #:unprocessed-identifiers #:validation-error
                              #:value-as-string #:value-as-string-list))
(common-lisp:in-package #:pira/sagemaker-featurestore-runtime)

(smithy/sdk/service:define-service amazon-sage-maker-feature-store-runtime
                                   :shape-name
                                   "AmazonSageMakerFeatureStoreRuntime"
                                   :version "2020-07-01" :title
                                   "Amazon SageMaker Feature Store Runtime"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "SageMaker FeatureStore Runtime")
                                      ("arnNamespace" . "sagemaker")
                                      ("cloudFormationName"
                                       . "SageMakerFeatureStoreRuntime")
                                      ("cloudTrailEventSource"
                                       . "sagemakerfeaturestoreruntime.amazonaws.com")
                                      ("endpointPrefix"
                                       . "featurestore-runtime.sagemaker"))
                                     ("aws.auth#sigv4" ("name" . "sagemaker"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-forbidden common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "AccessForbidden")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure batch-get-record-error common-lisp:nil
                                    ((feature-group-name :target-type
                                      value-as-string :required common-lisp:t
                                      :member-name "FeatureGroupName")
                                     (record-identifier-value-as-string
                                      :target-type value-as-string :required
                                      common-lisp:t :member-name
                                      "RecordIdentifierValueAsString")
                                     (error-code :target-type value-as-string
                                      :required common-lisp:t :member-name
                                      "ErrorCode")
                                     (error-message :target-type message
                                      :required common-lisp:t :member-name
                                      "ErrorMessage"))
                                    (:shape-name "BatchGetRecordError"))

(smithy/sdk/shapes:define-list batch-get-record-errors :member
                               batch-get-record-error)

(smithy/sdk/shapes:define-structure batch-get-record-identifier common-lisp:nil
                                    ((feature-group-name :target-type
                                      feature-group-name-or-arn :required
                                      common-lisp:t :member-name
                                      "FeatureGroupName")
                                     (record-identifiers-value-as-string
                                      :target-type record-identifiers :required
                                      common-lisp:t :member-name
                                      "RecordIdentifiersValueAsString")
                                     (feature-names :target-type feature-names
                                      :member-name "FeatureNames"))
                                    (:shape-name "BatchGetRecordIdentifier"))

(smithy/sdk/shapes:define-list batch-get-record-identifiers :member
                               batch-get-record-identifier)

(smithy/sdk/shapes:define-input batch-get-record-request common-lisp:nil
                                ((identifiers :target-type
                                  batch-get-record-identifiers :required
                                  common-lisp:t :member-name "Identifiers")
                                 (expiration-time-response :target-type
                                  expiration-time-response :member-name
                                  "ExpirationTimeResponse"))
                                (:shape-name "BatchGetRecordRequest"))

(smithy/sdk/shapes:define-output batch-get-record-response common-lisp:nil
                                 ((records :target-type
                                   batch-get-record-result-details :required
                                   common-lisp:t :member-name "Records")
                                  (errors :target-type batch-get-record-errors
                                   :required common-lisp:t :member-name
                                   "Errors")
                                  (unprocessed-identifiers :target-type
                                   unprocessed-identifiers :required
                                   common-lisp:t :member-name
                                   "UnprocessedIdentifiers"))
                                 (:shape-name "BatchGetRecordResponse"))

(smithy/sdk/shapes:define-structure batch-get-record-result-detail
                                    common-lisp:nil
                                    ((feature-group-name :target-type
                                      value-as-string :required common-lisp:t
                                      :member-name "FeatureGroupName")
                                     (record-identifier-value-as-string
                                      :target-type value-as-string :required
                                      common-lisp:t :member-name
                                      "RecordIdentifierValueAsString")
                                     (record :target-type record :required
                                      common-lisp:t :member-name "Record")
                                     (expires-at :target-type expires-at
                                      :member-name "ExpiresAt"))
                                    (:shape-name "BatchGetRecordResultDetail"))

(smithy/sdk/shapes:define-list batch-get-record-result-details :member
                               batch-get-record-result-detail)

(smithy/sdk/shapes:define-input delete-record-request common-lisp:nil
                                ((feature-group-name :target-type
                                  feature-group-name-or-arn :required
                                  common-lisp:t :member-name "FeatureGroupName"
                                  :http-label common-lisp:t)
                                 (record-identifier-value-as-string
                                  :target-type value-as-string :required
                                  common-lisp:t :member-name
                                  "RecordIdentifierValueAsString" :http-query
                                  "RecordIdentifierValueAsString")
                                 (event-time :target-type value-as-string
                                  :required common-lisp:t :member-name
                                  "EventTime" :http-query "EventTime")
                                 (target-stores :target-type target-stores
                                  :member-name "TargetStores" :http-query
                                  "TargetStores")
                                 (deletion-mode :target-type deletion-mode
                                  :member-name "DeletionMode" :http-query
                                  "DeletionMode"))
                                (:shape-name "DeleteRecordRequest"))

(smithy/sdk/shapes:define-enum deletion-mode
    common-lisp:nil
  (:soft-delete "SoftDelete")
  (:hard-delete "HardDelete"))

(smithy/sdk/shapes:define-enum expiration-time-response
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type expires-at smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type feature-group-name-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type feature-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list feature-names :member feature-name)

(smithy/sdk/shapes:define-structure feature-value common-lisp:nil
                                    ((feature-name :target-type feature-name
                                      :required common-lisp:t :member-name
                                      "FeatureName")
                                     (value-as-string :target-type
                                      value-as-string :member-name
                                      "ValueAsString")
                                     (value-as-string-list :target-type
                                      value-as-string-list :member-name
                                      "ValueAsStringList"))
                                    (:shape-name "FeatureValue"))

(smithy/sdk/shapes:define-input get-record-request common-lisp:nil
                                ((feature-group-name :target-type
                                  feature-group-name-or-arn :required
                                  common-lisp:t :member-name "FeatureGroupName"
                                  :http-label common-lisp:t)
                                 (record-identifier-value-as-string
                                  :target-type value-as-string :required
                                  common-lisp:t :member-name
                                  "RecordIdentifierValueAsString" :http-query
                                  "RecordIdentifierValueAsString")
                                 (feature-names :target-type feature-names
                                  :member-name "FeatureNames" :http-query
                                  "FeatureName")
                                 (expiration-time-response :target-type
                                  expiration-time-response :member-name
                                  "ExpirationTimeResponse" :http-query
                                  "ExpirationTimeResponse"))
                                (:shape-name "GetRecordRequest"))

(smithy/sdk/shapes:define-output get-record-response common-lisp:nil
                                 ((record :target-type record :member-name
                                   "Record")
                                  (expires-at :target-type expires-at
                                   :member-name "ExpiresAt"))
                                 (:shape-name "GetRecordResponse"))

(smithy/sdk/shapes:define-error internal-failure common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "InternalFailure")
                                (:error-code 500))

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-record-request common-lisp:nil
                                ((feature-group-name :target-type
                                  feature-group-name-or-arn :required
                                  common-lisp:t :member-name "FeatureGroupName"
                                  :http-label common-lisp:t)
                                 (record :target-type record :required
                                  common-lisp:t :member-name "Record")
                                 (target-stores :target-type target-stores
                                  :member-name "TargetStores")
                                 (ttl-duration :target-type ttl-duration
                                  :member-name "TtlDuration"))
                                (:shape-name "PutRecordRequest"))

(smithy/sdk/shapes:define-list record :member feature-value)

(smithy/sdk/shapes:define-list record-identifiers :member value-as-string)

(smithy/sdk/shapes:define-error resource-not-found common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error service-unavailable common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ServiceUnavailable")
                                (:error-code 503))

(smithy/sdk/shapes:define-enum target-store
    common-lisp:nil
  (:online-store "OnlineStore")
  (:offline-store "OfflineStore"))

(smithy/sdk/shapes:define-list target-stores :member target-store)

(smithy/sdk/shapes:define-structure ttl-duration common-lisp:nil
                                    ((unit :target-type ttl-duration-unit
                                      :required common-lisp:t :member-name
                                      "Unit")
                                     (value :target-type ttl-duration-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "TtlDuration"))

(smithy/sdk/shapes:define-enum ttl-duration-unit
    common-lisp:nil
  (:seconds "Seconds")
  (:minutes "Minutes")
  (:hours "Hours")
  (:days "Days")
  (:weeks "Weeks"))

(smithy/sdk/shapes:define-type ttl-duration-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list unprocessed-identifiers :member
                               batch-get-record-identifier)

(smithy/sdk/shapes:define-error validation-error common-lisp:nil
                                ((message :target-type message :member-name
                                  "Message"))
                                (:shape-name "ValidationError")
                                (:error-code 400))

(smithy/sdk/shapes:define-type value-as-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list value-as-string-list :member value-as-string)

(smithy/sdk/operation:define-operation batch-get-record :shape-name
                                       "BatchGetRecord" :input
                                       batch-get-record-request :output
                                       batch-get-record-response :errors
                                       (access-forbidden internal-failure
                                        service-unavailable validation-error)
                                       :method "POST" :uri "/BatchGetRecord"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-record :shape-name "DeleteRecord"
                                       :input delete-record-request :output
                                       common-lisp:null :errors
                                       (access-forbidden internal-failure
                                        service-unavailable validation-error)
                                       :method "DELETE" :uri
                                       "/FeatureGroup/{FeatureGroupName}" :code
                                       200)

(smithy/sdk/operation:define-operation get-record :shape-name "GetRecord"
                                       :input get-record-request :output
                                       get-record-response :errors
                                       (access-forbidden internal-failure
                                        resource-not-found service-unavailable
                                        validation-error)
                                       :method "GET" :uri
                                       "/FeatureGroup/{FeatureGroupName}" :code
                                       200)

(smithy/sdk/operation:define-operation put-record :shape-name "PutRecord"
                                       :input put-record-request :output
                                       common-lisp:null :errors
                                       (access-forbidden internal-failure
                                        service-unavailable validation-error)
                                       :method "PUT" :uri
                                       "/FeatureGroup/{FeatureGroupName}" :code
                                       200)
