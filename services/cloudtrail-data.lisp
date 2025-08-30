(uiop/package:define-package #:pira/cloudtrail-data (:use)
                             (:export #:audit-event
                              #:audit-event-result-entries
                              #:audit-event-result-entry #:audit-events
                              #:channel-arn #:channel-insufficient-permission
                              #:channel-not-found #:channel-unsupported-schema
                              #:cloud-trail-data-service
                              #:duplicated-audit-event-id #:error-code
                              #:error-message #:external-id
                              #:invalid-channel-arn #:put-audit-events
                              #:put-audit-events-request
                              #:put-audit-events-response
                              #:result-error-entries #:result-error-entry
                              #:unsupported-operation-exception #:uuid
                              #:cloudtrail-data-error))
(common-lisp:in-package #:pira/cloudtrail-data)

(common-lisp:define-condition cloudtrail-data-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service cloud-trail-data-service :shape-name
                                   "CloudTrailDataService" :version
                                   "2021-08-11" :title
                                   "AWS CloudTrail Data Service" :operations
                                   '(put-audit-events) :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CloudTrail Data")
                                      ("endpointPrefix" . "cloudtrail-data"))
                                     ("aws.auth#sigv4"
                                      ("name" . "cloudtrail-data"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure audit-event common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (event-data :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "eventData")
                                     (event-data-checksum :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "eventDataChecksum"))
                                    (:shape-name "AuditEvent"))

(smithy/sdk/shapes:define-list audit-event-result-entries :member
                               audit-event-result-entry)

(smithy/sdk/shapes:define-structure audit-event-result-entry common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (event-id :target-type uuid :required
                                      common-lisp:t :member-name "eventID"))
                                    (:shape-name "AuditEventResultEntry"))

(smithy/sdk/shapes:define-list audit-events :member audit-event)

(smithy/sdk/shapes:define-type channel-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error channel-insufficient-permission common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ChannelInsufficientPermission")
                                (:error-code 400)
                                (:base-class cloudtrail-data-error))

(smithy/sdk/shapes:define-error channel-not-found common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ChannelNotFound")
                                (:error-code 400)
                                (:base-class cloudtrail-data-error))

(smithy/sdk/shapes:define-error channel-unsupported-schema common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ChannelUnsupportedSchema")
                                (:error-code 400)
                                (:base-class cloudtrail-data-error))

(smithy/sdk/shapes:define-error duplicated-audit-event-id common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "DuplicatedAuditEventId")
                                (:error-code 400)
                                (:base-class cloudtrail-data-error))

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type external-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error invalid-channel-arn common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InvalidChannelARN")
                                (:error-code 400)
                                (:base-class cloudtrail-data-error))

(smithy/sdk/shapes:define-input put-audit-events-request common-lisp:nil
                                ((audit-events :target-type audit-events
                                  :required common-lisp:t :member-name
                                  "auditEvents")
                                 (channel-arn :target-type channel-arn
                                  :required common-lisp:t :member-name
                                  "channelArn" :http-query "channelArn")
                                 (external-id :target-type external-id
                                  :member-name "externalId" :http-query
                                  "externalId"))
                                (:shape-name "PutAuditEventsRequest"))

(smithy/sdk/shapes:define-structure put-audit-events-response common-lisp:nil
                                    ((successful :target-type
                                      audit-event-result-entries :required
                                      common-lisp:t :member-name "successful")
                                     (failed :target-type result-error-entries
                                      :required common-lisp:t :member-name
                                      "failed"))
                                    (:shape-name "PutAuditEventsResponse"))

(smithy/sdk/shapes:define-list result-error-entries :member result-error-entry)

(smithy/sdk/shapes:define-structure result-error-entry common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (error-code :target-type error-code
                                      :required common-lisp:t :member-name
                                      "errorCode")
                                     (error-message :target-type error-message
                                      :required common-lisp:t :member-name
                                      "errorMessage"))
                                    (:shape-name "ResultErrorEntry"))

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-code 400)
                                (:base-class cloudtrail-data-error))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation put-audit-events :shape-name
                                       "PutAuditEvents" :input
                                       put-audit-events-request :output
                                       put-audit-events-response :errors
                                       (channel-insufficient-permission
                                        channel-not-found
                                        channel-unsupported-schema
                                        duplicated-audit-event-id
                                        invalid-channel-arn
                                        unsupported-operation-exception)
                                       :method "POST" :uri "/PutAuditEvents")
