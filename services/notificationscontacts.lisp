(uiop/package:define-package #:pira/notificationscontacts (:use)
                             (:export #:activate-email-contact
                              #:create-email-contact #:creation-time
                              #:delete-email-contact #:email-contact
                              #:email-contact-address #:email-contact-arn
                              #:email-contact-name #:email-contact-resource
                              #:email-contact-status #:email-contacts
                              #:error-message #:get-email-contact
                              #:list-email-contacts #:list-tags-for-resource
                              #:notifications-contacts #:quota-code
                              #:resource-id #:resource-type
                              #:send-activation-code
                              #:sensitive-email-contact-address #:service-code
                              #:tag-key #:tag-keys #:tag-map #:tag-resource
                              #:tag-value #:token #:untag-resource
                              #:update-time #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason))
(common-lisp:in-package #:pira/notificationscontacts)

(smithy/sdk/service:define-service notifications-contacts :shape-name
                                   "NotificationsContacts" :version
                                   "2018-05-10" :title
                                   "AWS User Notifications Contacts" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "NotificationsContacts")
                                      ("arnNamespace"
                                       . "notifications-contacts")
                                      ("endpointPrefix"
                                       . "notifications-contacts")
                                      ("cloudTrailEventSource"
                                       . "notifications-contacts.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "notifications-contacts"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardPartitionalEndpoints"
                                      ("endpointPatternType"
                                       . "service_region_dnsSuffix"))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input activate-email-contact-request common-lisp:nil
                                ((arn :target-type email-contact-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t)
                                 (code :target-type token :required
                                  common-lisp:t :member-name "code" :http-label
                                  common-lisp:t))
                                (:shape-name "ActivateEmailContactRequest"))

(smithy/sdk/shapes:define-output activate-email-contact-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "ActivateEmailContactResponse"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-email-contact-request common-lisp:nil
                                ((name :target-type email-contact-name
                                  :required common-lisp:t :member-name "name")
                                 (email-address :target-type
                                  email-contact-address :required common-lisp:t
                                  :member-name "emailAddress")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateEmailContactRequest"))

(smithy/sdk/shapes:define-output create-email-contact-response common-lisp:nil
                                 ((arn :target-type email-contact-arn :required
                                   common-lisp:t :member-name "arn"))
                                 (:shape-name "CreateEmailContactResponse"))

(smithy/sdk/shapes:define-type creation-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-email-contact-request common-lisp:nil
                                ((arn :target-type email-contact-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteEmailContactRequest"))

(smithy/sdk/shapes:define-output delete-email-contact-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEmailContactResponse"))

(smithy/sdk/shapes:define-structure email-contact common-lisp:nil
                                    ((arn :target-type email-contact-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (name :target-type email-contact-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (address :target-type
                                      sensitive-email-contact-address :required
                                      common-lisp:t :member-name "address")
                                     (status :target-type email-contact-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (update-time :target-type update-time
                                      :required common-lisp:t :member-name
                                      "updateTime"))
                                    (:shape-name "EmailContact"))

(smithy/sdk/shapes:define-type email-contact-address
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-contact-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-contact-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type email-contact-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list email-contacts :member email-contact)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-email-contact-request common-lisp:nil
                                ((arn :target-type email-contact-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetEmailContactRequest"))

(smithy/sdk/shapes:define-output get-email-contact-response common-lisp:nil
                                 ((email-contact :target-type email-contact
                                   :required common-lisp:t :member-name
                                   "emailContact"))
                                 (:shape-name "GetEmailContactResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-email-contacts-request common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListEmailContactsRequest"))

(smithy/sdk/shapes:define-output list-email-contacts-response common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (email-contacts :target-type email-contacts
                                   :required common-lisp:t :member-name
                                   "emailContacts"))
                                 (:shape-name "ListEmailContactsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((arn :target-type email-contact-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type quota-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input send-activation-code-request common-lisp:nil
                                ((arn :target-type email-contact-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name "SendActivationCodeRequest"))

(smithy/sdk/shapes:define-output send-activation-code-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "SendActivationCodeResponse"))

(smithy/sdk/shapes:define-type sensitive-email-contact-address
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType")
                                 (service-code :target-type service-code
                                  :required common-lisp:t :member-name
                                  "serviceCode")
                                 (quota-code :target-type quota-code :required
                                  common-lisp:t :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((arn :target-type email-contact-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type service-code
                                  :member-name "serviceCode")
                                 (quota-code :target-type quota-code
                                  :member-name "quotaCode")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((arn :target-type email-contact-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-type update-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
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

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:field-validation-failed "fieldValidationFailed")
  (:other "other"))

(smithy/sdk/operation:define-operation activate-email-contact :shape-name
                                       "ActivateEmailContact" :input
                                       activate-email-contact-request :output
                                       activate-email-contact-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/emailcontacts/{arn}/activate/{code}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-email-contact :shape-name
                                       "CreateEmailContact" :input
                                       create-email-contact-request :output
                                       create-email-contact-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2022-09-19/emailcontacts" :code 201)

(smithy/sdk/operation:define-operation delete-email-contact :shape-name
                                       "DeleteEmailContact" :input
                                       delete-email-contact-request :output
                                       delete-email-contact-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/emailcontacts/{arn}" :code 200)

(smithy/sdk/operation:define-operation get-email-contact :shape-name
                                       "GetEmailContact" :input
                                       get-email-contact-request :output
                                       get-email-contact-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/emailcontacts/{arn}" :code 200)

(smithy/sdk/operation:define-operation list-email-contacts :shape-name
                                       "ListEmailContacts" :input
                                       list-email-contacts-request :output
                                       list-email-contacts-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/emailcontacts"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{arn}")

(smithy/sdk/operation:define-operation send-activation-code :shape-name
                                       "SendActivationCode" :input
                                       send-activation-code-request :output
                                       send-activation-code-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2022-10-31/emailcontacts/{arn}/activate/send"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/tags/{arn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/tags/{arn}")
