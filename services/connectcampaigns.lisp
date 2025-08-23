(uiop/package:define-package #:pira/connectcampaigns (:use)
                             (:export #:agentless-dialer-config
                              #:amazon-connect-campaign-service
                              #:answer-machine-detection-config #:arn
                              #:attribute-name #:attribute-value #:attributes
                              #:bandwidth-allocation #:campaign #:campaign-arn
                              #:campaign-filters #:campaign-id
                              #:campaign-id-list #:campaign-name
                              #:campaign-state #:campaign-summary
                              #:campaign-summary-list #:client-token
                              #:contact-flow-id #:create-campaign
                              #:create-campaign-request
                              #:create-campaign-response #:delete-campaign
                              #:delete-campaign-request
                              #:delete-connect-instance-config
                              #:delete-connect-instance-config-request
                              #:delete-instance-onboarding-job
                              #:delete-instance-onboarding-job-request
                              #:describe-campaign #:describe-campaign-request
                              #:describe-campaign-response
                              #:destination-phone-number #:dial-request
                              #:dial-request-id #:dial-request-list
                              #:dialer-config #:dialing-capacity #:enabled
                              #:encryption-config #:encryption-key
                              #:encryption-type
                              #:failed-campaign-state-response
                              #:failed-campaign-state-response-list
                              #:failed-request #:failed-request-list
                              #:failure-code #:get-campaign-state
                              #:get-campaign-state-batch
                              #:get-campaign-state-batch-failure-code
                              #:get-campaign-state-batch-request
                              #:get-campaign-state-batch-response
                              #:get-campaign-state-request
                              #:get-campaign-state-response
                              #:get-connect-instance-config
                              #:get-connect-instance-config-request
                              #:get-connect-instance-config-response
                              #:get-instance-onboarding-job-status
                              #:get-instance-onboarding-job-status-request
                              #:get-instance-onboarding-job-status-response
                              #:instance-config #:instance-id
                              #:instance-id-filter
                              #:instance-id-filter-operator
                              #:instance-onboarding-job-failure-code
                              #:instance-onboarding-job-status
                              #:instance-onboarding-job-status-code
                              #:list-campaigns #:list-campaigns-request
                              #:list-campaigns-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:max-results
                              #:next-token #:outbound-call-config
                              #:pause-campaign #:pause-campaign-request
                              #:predictive-dialer-config
                              #:progressive-dialer-config
                              #:put-dial-request-batch
                              #:put-dial-request-batch-request
                              #:put-dial-request-batch-response #:queue-id
                              #:resume-campaign #:resume-campaign-request
                              #:service-linked-role-arn #:source-phone-number
                              #:start-campaign #:start-campaign-request
                              #:start-instance-onboarding-job
                              #:start-instance-onboarding-job-request
                              #:start-instance-onboarding-job-response
                              #:stop-campaign #:stop-campaign-request
                              #:successful-campaign-state-response
                              #:successful-campaign-state-response-list
                              #:successful-request #:successful-request-list
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-value #:time-stamp
                              #:untag-resource #:untag-resource-request
                              #:update-campaign-dialer-config
                              #:update-campaign-dialer-config-request
                              #:update-campaign-name
                              #:update-campaign-name-request
                              #:update-campaign-outbound-call-config
                              #:update-campaign-outbound-call-config-request
                              #:xamazon-error-type))
(common-lisp:in-package #:pira/connectcampaigns)

(smithy/sdk/service:define-service amazon-connect-campaign-service :shape-name
                                   "AmazonConnectCampaignService" :version
                                   "2021-01-30" :title
                                   "AmazonConnectCampaignService" :operations
                                   '(create-campaign delete-campaign
                                     delete-connect-instance-config
                                     delete-instance-onboarding-job
                                     describe-campaign get-campaign-state
                                     get-campaign-state-batch
                                     get-connect-instance-config
                                     get-instance-onboarding-job-status
                                     list-campaigns list-tags-for-resource
                                     pause-campaign put-dial-request-batch
                                     resume-campaign start-campaign
                                     start-instance-onboarding-job
                                     stop-campaign tag-resource untag-resource
                                     update-campaign-dialer-config
                                     update-campaign-name
                                     update-campaign-outbound-call-config)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ConnectCampaigns")
                                      ("arnNamespace" . "connect-campaigns")
                                      ("cloudTrailEventSource"
                                       . "connect-campaigns.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "connect-campaigns"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure agentless-dialer-config common-lisp:nil
                                    ((dialing-capacity :target-type
                                      dialing-capacity :member-name
                                      "dialingCapacity"))
                                    (:shape-name "AgentlessDialerConfig"))

(smithy/sdk/shapes:define-structure answer-machine-detection-config
                                    common-lisp:nil
                                    ((enable-answer-machine-detection
                                      :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "enableAnswerMachineDetection")
                                     (await-answer-machine-prompt :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "awaitAnswerMachinePrompt"))
                                    (:shape-name
                                     "AnswerMachineDetectionConfig"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map attributes :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-type bandwidth-allocation
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure campaign common-lisp:nil
                                    ((id :target-type campaign-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type campaign-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type campaign-name :required
                                      common-lisp:t :member-name "name")
                                     (connect-instance-id :target-type
                                      instance-id :required common-lisp:t
                                      :member-name "connectInstanceId")
                                     (dialer-config :target-type dialer-config
                                      :required common-lisp:t :member-name
                                      "dialerConfig")
                                     (outbound-call-config :target-type
                                      outbound-call-config :required
                                      common-lisp:t :member-name
                                      "outboundCallConfig")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "Campaign"))

(smithy/sdk/shapes:define-type campaign-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure campaign-filters common-lisp:nil
                                    ((instance-id-filter :target-type
                                      instance-id-filter :member-name
                                      "instanceIdFilter"))
                                    (:shape-name "CampaignFilters"))

(smithy/sdk/shapes:define-type campaign-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list campaign-id-list :member campaign-id)

(smithy/sdk/shapes:define-type campaign-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type campaign-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure campaign-summary common-lisp:nil
                                    ((id :target-type campaign-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type campaign-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type campaign-name :required
                                      common-lisp:t :member-name "name")
                                     (connect-instance-id :target-type
                                      instance-id :required common-lisp:t
                                      :member-name "connectInstanceId"))
                                    (:shape-name "CampaignSummary"))

(smithy/sdk/shapes:define-list campaign-summary-list :member campaign-summary)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type contact-flow-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure create-campaign-request common-lisp:nil
                                    ((name :target-type campaign-name :required
                                      common-lisp:t :member-name "name")
                                     (connect-instance-id :target-type
                                      instance-id :required common-lisp:t
                                      :member-name "connectInstanceId")
                                     (dialer-config :target-type dialer-config
                                      :required common-lisp:t :member-name
                                      "dialerConfig")
                                     (outbound-call-config :target-type
                                      outbound-call-config :required
                                      common-lisp:t :member-name
                                      "outboundCallConfig")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateCampaignRequest"))

(smithy/sdk/shapes:define-structure create-campaign-response common-lisp:nil
                                    ((id :target-type campaign-id :member-name
                                      "id")
                                     (arn :target-type campaign-arn
                                      :member-name "arn")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateCampaignResponse"))

(smithy/sdk/shapes:define-input delete-campaign-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteCampaignRequest"))

(smithy/sdk/shapes:define-input delete-connect-instance-config-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteConnectInstanceConfigRequest"))

(smithy/sdk/shapes:define-input delete-instance-onboarding-job-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteInstanceOnboardingJobRequest"))

(smithy/sdk/shapes:define-input describe-campaign-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeCampaignRequest"))

(smithy/sdk/shapes:define-structure describe-campaign-response common-lisp:nil
                                    ((campaign :target-type campaign
                                      :member-name "campaign"))
                                    (:shape-name "DescribeCampaignResponse"))

(smithy/sdk/shapes:define-type destination-phone-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dial-request common-lisp:nil
                                    ((client-token :target-type client-token
                                      :required common-lisp:t :member-name
                                      "clientToken")
                                     (phone-number :target-type
                                      destination-phone-number :required
                                      common-lisp:t :member-name "phoneNumber")
                                     (expiration-time :target-type time-stamp
                                      :required common-lisp:t :member-name
                                      "expirationTime")
                                     (attributes :target-type attributes
                                      :required common-lisp:t :member-name
                                      "attributes"))
                                    (:shape-name "DialRequest"))

(smithy/sdk/shapes:define-type dial-request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dial-request-list :member dial-request)

(smithy/sdk/shapes:define-union dialer-config common-lisp:nil
                                ((progressive-dialer-config :target-type
                                  progressive-dialer-config :member-name
                                  "progressiveDialerConfig")
                                 (predictive-dialer-config :target-type
                                  predictive-dialer-config :member-name
                                  "predictiveDialerConfig")
                                 (agentless-dialer-config :target-type
                                  agentless-dialer-config :member-name
                                  "agentlessDialerConfig"))
                                (:shape-name "DialerConfig"))

(smithy/sdk/shapes:define-type dialing-capacity smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure encryption-config common-lisp:nil
                                    ((enabled :target-type enabled :required
                                      common-lisp:t :member-name "enabled")
                                     (encryption-type :target-type
                                      encryption-type :member-name
                                      "encryptionType")
                                     (key-arn :target-type encryption-key
                                      :member-name "keyArn"))
                                    (:shape-name "EncryptionConfig"))

(smithy/sdk/shapes:define-type encryption-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type encryption-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure failed-campaign-state-response
                                    common-lisp:nil
                                    ((campaign-id :target-type campaign-id
                                      :member-name "campaignId")
                                     (failure-code :target-type
                                      get-campaign-state-batch-failure-code
                                      :member-name "failureCode"))
                                    (:shape-name "FailedCampaignStateResponse"))

(smithy/sdk/shapes:define-list failed-campaign-state-response-list :member
                               failed-campaign-state-response)

(smithy/sdk/shapes:define-structure failed-request common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (id :target-type dial-request-id
                                      :member-name "id")
                                     (failure-code :target-type failure-code
                                      :member-name "failureCode"))
                                    (:shape-name "FailedRequest"))

(smithy/sdk/shapes:define-list failed-request-list :member failed-request)

(smithy/sdk/shapes:define-type failure-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type get-campaign-state-batch-failure-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure get-campaign-state-batch-request
                                    common-lisp:nil
                                    ((campaign-ids :target-type
                                      campaign-id-list :required common-lisp:t
                                      :member-name "campaignIds"))
                                    (:shape-name
                                     "GetCampaignStateBatchRequest"))

(smithy/sdk/shapes:define-structure get-campaign-state-batch-response
                                    common-lisp:nil
                                    ((successful-requests :target-type
                                      successful-campaign-state-response-list
                                      :member-name "successfulRequests")
                                     (failed-requests :target-type
                                      failed-campaign-state-response-list
                                      :member-name "failedRequests"))
                                    (:shape-name
                                     "GetCampaignStateBatchResponse"))

(smithy/sdk/shapes:define-input get-campaign-state-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCampaignStateRequest"))

(smithy/sdk/shapes:define-structure get-campaign-state-response common-lisp:nil
                                    ((state :target-type campaign-state
                                      :member-name "state"))
                                    (:shape-name "GetCampaignStateResponse"))

(smithy/sdk/shapes:define-input get-connect-instance-config-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetConnectInstanceConfigRequest"))

(smithy/sdk/shapes:define-structure get-connect-instance-config-response
                                    common-lisp:nil
                                    ((connect-instance-config :target-type
                                      instance-config :member-name
                                      "connectInstanceConfig"))
                                    (:shape-name
                                     "GetConnectInstanceConfigResponse"))

(smithy/sdk/shapes:define-input get-instance-onboarding-job-status-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetInstanceOnboardingJobStatusRequest"))

(smithy/sdk/shapes:define-structure get-instance-onboarding-job-status-response
                                    common-lisp:nil
                                    ((connect-instance-onboarding-job-status
                                      :target-type
                                      instance-onboarding-job-status
                                      :member-name
                                      "connectInstanceOnboardingJobStatus"))
                                    (:shape-name
                                     "GetInstanceOnboardingJobStatusResponse"))

(smithy/sdk/shapes:define-structure instance-config common-lisp:nil
                                    ((connect-instance-id :target-type
                                      instance-id :required common-lisp:t
                                      :member-name "connectInstanceId")
                                     (service-linked-role-arn :target-type
                                      service-linked-role-arn :required
                                      common-lisp:t :member-name
                                      "serviceLinkedRoleArn")
                                     (encryption-config :target-type
                                      encryption-config :required common-lisp:t
                                      :member-name "encryptionConfig"))
                                    (:shape-name "InstanceConfig"))

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance-id-filter common-lisp:nil
                                    ((value :target-type instance-id :required
                                      common-lisp:t :member-name "value")
                                     (operator :target-type
                                      instance-id-filter-operator :required
                                      common-lisp:t :member-name "operator"))
                                    (:shape-name "InstanceIdFilter"))

(smithy/sdk/shapes:define-type instance-id-filter-operator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-onboarding-job-failure-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance-onboarding-job-status
                                    common-lisp:nil
                                    ((connect-instance-id :target-type
                                      instance-id :required common-lisp:t
                                      :member-name "connectInstanceId")
                                     (status :target-type
                                      instance-onboarding-job-status-code
                                      :required common-lisp:t :member-name
                                      "status")
                                     (failure-code :target-type
                                      instance-onboarding-job-failure-code
                                      :member-name "failureCode"))
                                    (:shape-name "InstanceOnboardingJobStatus"))

(smithy/sdk/shapes:define-type instance-onboarding-job-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-campaign-state-exception
                                common-lisp:nil
                                ((state :target-type campaign-state :required
                                  common-lisp:t :member-name "state")
                                 (message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "InvalidCampaignStateException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error invalid-state-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "InvalidStateException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure list-campaigns-request common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (filters :target-type campaign-filters
                                      :member-name "filters"))
                                    (:shape-name "ListCampaignsRequest"))

(smithy/sdk/shapes:define-structure list-campaigns-response common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (campaign-summary-list :target-type
                                      campaign-summary-list :member-name
                                      "campaignSummaryList"))
                                    (:shape-name "ListCampaignsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure outbound-call-config common-lisp:nil
                                    ((connect-contact-flow-id :target-type
                                      contact-flow-id :required common-lisp:t
                                      :member-name "connectContactFlowId")
                                     (connect-source-phone-number :target-type
                                      source-phone-number :member-name
                                      "connectSourcePhoneNumber")
                                     (connect-queue-id :target-type queue-id
                                      :member-name "connectQueueId")
                                     (answer-machine-detection-config
                                      :target-type
                                      answer-machine-detection-config
                                      :member-name
                                      "answerMachineDetectionConfig"))
                                    (:shape-name "OutboundCallConfig"))

(smithy/sdk/shapes:define-input pause-campaign-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "PauseCampaignRequest"))

(smithy/sdk/shapes:define-structure predictive-dialer-config common-lisp:nil
                                    ((bandwidth-allocation :target-type
                                      bandwidth-allocation :required
                                      common-lisp:t :member-name
                                      "bandwidthAllocation")
                                     (dialing-capacity :target-type
                                      dialing-capacity :member-name
                                      "dialingCapacity"))
                                    (:shape-name "PredictiveDialerConfig"))

(smithy/sdk/shapes:define-structure progressive-dialer-config common-lisp:nil
                                    ((bandwidth-allocation :target-type
                                      bandwidth-allocation :required
                                      common-lisp:t :member-name
                                      "bandwidthAllocation")
                                     (dialing-capacity :target-type
                                      dialing-capacity :member-name
                                      "dialingCapacity"))
                                    (:shape-name "ProgressiveDialerConfig"))

(smithy/sdk/shapes:define-input put-dial-request-batch-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (dial-requests :target-type dial-request-list
                                  :required common-lisp:t :member-name
                                  "dialRequests"))
                                (:shape-name "PutDialRequestBatchRequest"))

(smithy/sdk/shapes:define-structure put-dial-request-batch-response
                                    common-lisp:nil
                                    ((successful-requests :target-type
                                      successful-request-list :member-name
                                      "successfulRequests")
                                     (failed-requests :target-type
                                      failed-request-list :member-name
                                      "failedRequests"))
                                    (:shape-name "PutDialRequestBatchResponse"))

(smithy/sdk/shapes:define-type queue-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-input resume-campaign-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "ResumeCampaignRequest"))

(smithy/sdk/shapes:define-type service-linked-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type source-phone-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-campaign-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "StartCampaignRequest"))

(smithy/sdk/shapes:define-input start-instance-onboarding-job-request
                                common-lisp:nil
                                ((connect-instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "connectInstanceId" :http-label
                                  common-lisp:t)
                                 (encryption-config :target-type
                                  encryption-config :required common-lisp:t
                                  :member-name "encryptionConfig"))
                                (:shape-name
                                 "StartInstanceOnboardingJobRequest"))

(smithy/sdk/shapes:define-structure start-instance-onboarding-job-response
                                    common-lisp:nil
                                    ((connect-instance-onboarding-job-status
                                      :target-type
                                      instance-onboarding-job-status
                                      :member-name
                                      "connectInstanceOnboardingJobStatus"))
                                    (:shape-name
                                     "StartInstanceOnboardingJobResponse"))

(smithy/sdk/shapes:define-input stop-campaign-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "StopCampaignRequest"))

(smithy/sdk/shapes:define-structure successful-campaign-state-response
                                    common-lisp:nil
                                    ((campaign-id :target-type campaign-id
                                      :member-name "campaignId")
                                     (state :target-type campaign-state
                                      :member-name "state"))
                                    (:shape-name
                                     "SuccessfulCampaignStateResponse"))

(smithy/sdk/shapes:define-list successful-campaign-state-response-list :member
                               successful-campaign-state-response)

(smithy/sdk/shapes:define-structure successful-request common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (id :target-type dial-request-id
                                      :member-name "id"))
                                    (:shape-name "SuccessfulRequest"))

(smithy/sdk/shapes:define-list successful-request-list :member
                               successful-request)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "arn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type time-stamp smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "arn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-campaign-dialer-config-request
                                common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (dialer-config :target-type dialer-config
                                  :required common-lisp:t :member-name
                                  "dialerConfig"))
                                (:shape-name
                                 "UpdateCampaignDialerConfigRequest"))

(smithy/sdk/shapes:define-input update-campaign-name-request common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (name :target-type campaign-name :required
                                  common-lisp:t :member-name "name"))
                                (:shape-name "UpdateCampaignNameRequest"))

(smithy/sdk/shapes:define-input update-campaign-outbound-call-config-request
                                common-lisp:nil
                                ((id :target-type campaign-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (connect-contact-flow-id :target-type
                                  contact-flow-id :member-name
                                  "connectContactFlowId")
                                 (connect-source-phone-number :target-type
                                  source-phone-number :member-name
                                  "connectSourcePhoneNumber")
                                 (answer-machine-detection-config :target-type
                                  answer-machine-detection-config :member-name
                                  "answerMachineDetectionConfig"))
                                (:shape-name
                                 "UpdateCampaignOutboundCallConfigRequest"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (x-amz-error-type :target-type
                                  xamazon-error-type :member-name
                                  "xAmzErrorType" :http-header
                                  "x-amzn-ErrorType"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type xamazon-error-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-campaign :shape-name
                                       "CreateCampaign" :input
                                       create-campaign-request :output
                                       create-campaign-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/campaigns")

(smithy/sdk/operation:define-operation delete-campaign :shape-name
                                       "DeleteCampaign" :input
                                       delete-campaign-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/campaigns/{id}")

(smithy/sdk/operation:define-operation delete-connect-instance-config
                                       :shape-name
                                       "DeleteConnectInstanceConfig" :input
                                       delete-connect-instance-config-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-state-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/connect-instance/{connectInstanceId}/config")

(smithy/sdk/operation:define-operation delete-instance-onboarding-job
                                       :shape-name
                                       "DeleteInstanceOnboardingJob" :input
                                       delete-instance-onboarding-job-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-state-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/connect-instance/{connectInstanceId}/onboarding")

(smithy/sdk/operation:define-operation describe-campaign :shape-name
                                       "DescribeCampaign" :input
                                       describe-campaign-request :output
                                       describe-campaign-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/campaigns/{id}")

(smithy/sdk/operation:define-operation get-campaign-state :shape-name
                                       "GetCampaignState" :input
                                       get-campaign-state-request :output
                                       get-campaign-state-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/campaigns/{id}/state")

(smithy/sdk/operation:define-operation get-campaign-state-batch :shape-name
                                       "GetCampaignStateBatch" :input
                                       get-campaign-state-batch-request :output
                                       get-campaign-state-batch-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/campaigns-state")

(smithy/sdk/operation:define-operation get-connect-instance-config :shape-name
                                       "GetConnectInstanceConfig" :input
                                       get-connect-instance-config-request
                                       :output
                                       get-connect-instance-config-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/connect-instance/{connectInstanceId}/config")

(smithy/sdk/operation:define-operation get-instance-onboarding-job-status
                                       :shape-name
                                       "GetInstanceOnboardingJobStatus" :input
                                       get-instance-onboarding-job-status-request
                                       :output
                                       get-instance-onboarding-job-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/connect-instance/{connectInstanceId}/onboarding")

(smithy/sdk/operation:define-operation list-campaigns :shape-name
                                       "ListCampaigns" :input
                                       list-campaigns-request :output
                                       list-campaigns-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/campaigns-summary")

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

(smithy/sdk/operation:define-operation pause-campaign :shape-name
                                       "PauseCampaign" :input
                                       pause-campaign-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/campaigns/{id}/pause")

(smithy/sdk/operation:define-operation put-dial-request-batch :shape-name
                                       "PutDialRequestBatch" :input
                                       put-dial-request-batch-request :output
                                       put-dial-request-batch-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/campaigns/{id}/dial-requests")

(smithy/sdk/operation:define-operation resume-campaign :shape-name
                                       "ResumeCampaign" :input
                                       resume-campaign-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/campaigns/{id}/resume")

(smithy/sdk/operation:define-operation start-campaign :shape-name
                                       "StartCampaign" :input
                                       start-campaign-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/campaigns/{id}/start")

(smithy/sdk/operation:define-operation start-instance-onboarding-job
                                       :shape-name "StartInstanceOnboardingJob"
                                       :input
                                       start-instance-onboarding-job-request
                                       :output
                                       start-instance-onboarding-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/connect-instance/{connectInstanceId}/onboarding")

(smithy/sdk/operation:define-operation stop-campaign :shape-name "StopCampaign"
                                       :input stop-campaign-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        invalid-campaign-state-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/campaigns/{id}/stop")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/tags/{arn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/tags/{arn}")

(smithy/sdk/operation:define-operation update-campaign-dialer-config
                                       :shape-name "UpdateCampaignDialerConfig"
                                       :input
                                       update-campaign-dialer-config-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/campaigns/{id}/dialer-config")

(smithy/sdk/operation:define-operation update-campaign-name :shape-name
                                       "UpdateCampaignName" :input
                                       update-campaign-name-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/campaigns/{id}/name")

(smithy/sdk/operation:define-operation update-campaign-outbound-call-config
                                       :shape-name
                                       "UpdateCampaignOutboundCallConfig"
                                       :input
                                       update-campaign-outbound-call-config-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/campaigns/{id}/outbound-call-config")
