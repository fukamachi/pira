(uiop/package:define-package #:pira/aiops (:use)
                             (:export #:aiops #:chat-configuration-arn
                              #:chat-configuration-arns
                              #:chatbot-notification-channel
                              #:create-investigation-group
                              #:cross-account-configuration
                              #:cross-account-configurations
                              #:delete-investigation-group
                              #:delete-investigation-group-policy
                              #:encryption-configuration
                              #:encryption-configuration-type
                              #:get-investigation-group
                              #:get-investigation-group-policy
                              #:identifier-string-with-pattern-and-length-limits
                              #:investigation-group #:investigation-group-arn
                              #:investigation-group-identifier
                              #:investigation-group-policy
                              #:investigation-group-policy-document
                              #:investigation-groups #:kms-key-id
                              #:list-investigation-groups
                              #:list-investigation-groups-model
                              #:list-tags-for-resource
                              #:put-investigation-group-policy #:retention
                              #:role-arn #:snstopic-arn
                              #:sensitive-string-with-length-limits
                              #:string-with-pattern-and-length-limits #:tag-key
                              #:tag-key-boundaries #:tag-keys #:tag-resource
                              #:tag-value #:tags #:untag-resource
                              #:update-investigation-group))
(common-lisp:in-package #:pira/aiops)

(smithy/sdk/service:define-service aiops :shape-name "AIOps" :version
                                   "2018-05-10" :title "AWS AI Ops" :errors
                                   '(access-denied-exception conflict-exception
                                     forbidden-exception
                                     internal-server-exception
                                     resource-not-found-exception
                                     validation-exception)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "AIOps")
                                      ("arnNamespace" . "aiops")
                                      ("cloudTrailEventSource"
                                       . "aiops.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "aiops"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type chat-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list chat-configuration-arns :member
                               chat-configuration-arn)

(smithy/sdk/shapes:define-map chatbot-notification-channel :key snstopic-arn
                              :value chat-configuration-arns)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-investigation-group-input
                                common-lisp:nil
                                ((name :target-type
                                  string-with-pattern-and-length-limits
                                  :required common-lisp:t :member-name "name")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration")
                                 (retention-in-days :target-type retention
                                  :member-name "retentionInDays")
                                 (tags :target-type tags :member-name "tags")
                                 (tag-key-boundaries :target-type
                                  tag-key-boundaries :member-name
                                  "tagKeyBoundaries")
                                 (chatbot-notification-channel :target-type
                                  chatbot-notification-channel :member-name
                                  "chatbotNotificationChannel")
                                 (is-cloud-trail-event-history-enabled
                                  :target-type smithy/sdk/smithy-types:boolean
                                  :member-name
                                  "isCloudTrailEventHistoryEnabled")
                                 (cross-account-configurations :target-type
                                  cross-account-configurations :member-name
                                  "crossAccountConfigurations"))
                                (:shape-name "CreateInvestigationGroupInput"))

(smithy/sdk/shapes:define-output create-investigation-group-output
                                 common-lisp:nil
                                 ((arn :target-type investigation-group-arn
                                   :member-name "arn"))
                                 (:shape-name "CreateInvestigationGroupOutput"))

(smithy/sdk/shapes:define-structure cross-account-configuration common-lisp:nil
                                    ((source-role-arn :target-type role-arn
                                      :member-name "sourceRoleArn"))
                                    (:shape-name "CrossAccountConfiguration"))

(smithy/sdk/shapes:define-list cross-account-configurations :member
                               cross-account-configuration)

(smithy/sdk/shapes:define-output delete-investigation-group-policy-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteInvestigationGroupPolicyOutput"))

(smithy/sdk/shapes:define-input delete-investigation-group-policy-request
                                common-lisp:nil
                                ((identifier :target-type
                                  investigation-group-identifier :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteInvestigationGroupPolicyRequest"))

(smithy/sdk/shapes:define-input delete-investigation-group-request
                                common-lisp:nil
                                ((identifier :target-type
                                  investigation-group-identifier :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteInvestigationGroupRequest"))

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((type :target-type
                                      encryption-configuration-type
                                      :member-name "type")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "kmsKeyId"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-enum encryption-configuration-type
    common-lisp:nil
  (:aws-owned-key "AWS_OWNED_KEY")
  (:customer-managed-kms-key "CUSTOMER_MANAGED_KMS_KEY"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input get-investigation-group-policy-request
                                common-lisp:nil
                                ((identifier :target-type
                                  investigation-group-identifier :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetInvestigationGroupPolicyRequest"))

(smithy/sdk/shapes:define-output get-investigation-group-policy-response
                                 common-lisp:nil
                                 ((investigation-group-arn :target-type
                                   investigation-group-arn :member-name
                                   "investigationGroupArn")
                                  (policy :target-type
                                   investigation-group-policy-document
                                   :member-name "policy"))
                                 (:shape-name
                                  "GetInvestigationGroupPolicyResponse"))

(smithy/sdk/shapes:define-input get-investigation-group-request common-lisp:nil
                                ((identifier :target-type
                                  investigation-group-identifier :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetInvestigationGroupRequest"))

(smithy/sdk/shapes:define-output get-investigation-group-response
                                 common-lisp:nil
                                 ((created-by :target-type
                                   identifier-string-with-pattern-and-length-limits
                                   :member-name "createdBy")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "createdAt")
                                  (last-modified-by :target-type
                                   identifier-string-with-pattern-and-length-limits
                                   :member-name "lastModifiedBy")
                                  (last-modified-at :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "lastModifiedAt")
                                  (name :target-type
                                   string-with-pattern-and-length-limits
                                   :member-name "name")
                                  (arn :target-type investigation-group-arn
                                   :member-name "arn")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (encryption-configuration :target-type
                                   encryption-configuration :member-name
                                   "encryptionConfiguration")
                                  (retention-in-days :target-type retention
                                   :member-name "retentionInDays")
                                  (chatbot-notification-channel :target-type
                                   chatbot-notification-channel :member-name
                                   "chatbotNotificationChannel")
                                  (tag-key-boundaries :target-type
                                   tag-key-boundaries :member-name
                                   "tagKeyBoundaries")
                                  (is-cloud-trail-event-history-enabled
                                   :target-type smithy/sdk/smithy-types:boolean
                                   :member-name
                                   "isCloudTrailEventHistoryEnabled")
                                  (cross-account-configurations :target-type
                                   cross-account-configurations :member-name
                                   "crossAccountConfigurations"))
                                 (:shape-name "GetInvestigationGroupResponse"))

(smithy/sdk/shapes:define-type identifier-string-with-pattern-and-length-limits
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

common-lisp:nil

(smithy/sdk/shapes:define-type investigation-group-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type investigation-group-identifier
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type investigation-group-policy-document
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list investigation-groups :member
                               list-investigation-groups-model)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-investigation-groups-input common-lisp:nil
                                ((next-token :target-type
                                  sensitive-string-with-length-limits
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListInvestigationGroupsInput"))

(smithy/sdk/shapes:define-structure list-investigation-groups-model
                                    common-lisp:nil
                                    ((arn :target-type investigation-group-arn
                                      :member-name "arn")
                                     (name :target-type
                                      string-with-pattern-and-length-limits
                                      :member-name "name"))
                                    (:shape-name
                                     "ListInvestigationGroupsModel"))

(smithy/sdk/shapes:define-output list-investigation-groups-output
                                 common-lisp:nil
                                 ((next-token :target-type
                                   sensitive-string-with-length-limits
                                   :member-name "nextToken")
                                  (investigation-groups :target-type
                                   investigation-groups :member-name
                                   "investigationGroups"))
                                 (:shape-name "ListInvestigationGroupsOutput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-input put-investigation-group-policy-request
                                common-lisp:nil
                                ((identifier :target-type
                                  investigation-group-identifier :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (policy :target-type
                                  investigation-group-policy-document :required
                                  common-lisp:t :member-name "policy"))
                                (:shape-name
                                 "PutInvestigationGroupPolicyRequest"))

(smithy/sdk/shapes:define-output put-investigation-group-policy-response
                                 common-lisp:nil
                                 ((investigation-group-arn :target-type
                                   investigation-group-arn :member-name
                                   "investigationGroupArn"))
                                 (:shape-name
                                  "PutInvestigationGroupPolicyResponse"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type retention smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snstopic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sensitive-string-with-length-limits
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type string-with-pattern-and-length-limits
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-boundaries :member tag-key)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-output update-investigation-group-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateInvestigationGroupOutput"))

(smithy/sdk/shapes:define-input update-investigation-group-request
                                common-lisp:nil
                                ((identifier :target-type
                                  investigation-group-identifier :required
                                  common-lisp:t :member-name "identifier"
                                  :http-label common-lisp:t)
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "encryptionConfiguration")
                                 (tag-key-boundaries :target-type
                                  tag-key-boundaries :member-name
                                  "tagKeyBoundaries")
                                 (chatbot-notification-channel :target-type
                                  chatbot-notification-channel :member-name
                                  "chatbotNotificationChannel")
                                 (is-cloud-trail-event-history-enabled
                                  :target-type smithy/sdk/smithy-types:boolean
                                  :member-name
                                  "isCloudTrailEventHistoryEnabled")
                                 (cross-account-configurations :target-type
                                  cross-account-configurations :member-name
                                  "crossAccountConfigurations"))
                                (:shape-name "UpdateInvestigationGroupRequest"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-investigation-group :shape-name
                                       "CreateInvestigationGroup" :input
                                       create-investigation-group-input :output
                                       create-investigation-group-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/investigationGroups" :code 201)

(smithy/sdk/operation:define-operation delete-investigation-group :shape-name
                                       "DeleteInvestigationGroup" :input
                                       delete-investigation-group-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/investigationGroups/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-investigation-group-policy
                                       :shape-name
                                       "DeleteInvestigationGroupPolicy" :input
                                       delete-investigation-group-policy-request
                                       :output
                                       delete-investigation-group-policy-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/investigationGroups/{identifier}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-investigation-group :shape-name
                                       "GetInvestigationGroup" :input
                                       get-investigation-group-request :output
                                       get-investigation-group-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/investigationGroups/{identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-investigation-group-policy
                                       :shape-name
                                       "GetInvestigationGroupPolicy" :input
                                       get-investigation-group-policy-request
                                       :output
                                       get-investigation-group-policy-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/investigationGroups/{identifier}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation list-investigation-groups :shape-name
                                       "ListInvestigationGroups" :input
                                       list-investigation-groups-input :output
                                       list-investigation-groups-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/investigationGroups" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation put-investigation-group-policy
                                       :shape-name
                                       "PutInvestigationGroupPolicy" :input
                                       put-investigation-group-policy-request
                                       :output
                                       put-investigation-group-policy-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/investigationGroups/{identifier}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-investigation-group :shape-name
                                       "UpdateInvestigationGroup" :input
                                       update-investigation-group-request
                                       :output
                                       update-investigation-group-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/investigationGroups/{identifier}"
                                       :code 200)
