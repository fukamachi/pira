(uiop/package:define-package #:pira/sns (:use)
                             (:export #:actions-list #:add-permission
                              #:amazon-resource-name
                              #:amazon-simple-notification-service
                              #:batch-result-error-entry
                              #:batch-result-error-entry-list #:binary
                              #:check-if-phone-number-is-opted-out
                              #:confirm-subscription
                              #:create-platform-application
                              #:create-platform-endpoint
                              #:create-smssandbox-phone-number #:create-topic
                              #:delegates-list #:delete-endpoint
                              #:delete-platform-application
                              #:delete-smssandbox-phone-number #:delete-topic
                              #:endpoint #:endpoint2
                              #:get-data-protection-policy
                              #:get-endpoint-attributes
                              #:get-platform-application-attributes
                              #:get-smsattributes
                              #:get-smssandbox-account-status
                              #:get-subscription-attributes
                              #:get-topic-attributes #:iso2country-code
                              #:language-code-string
                              #:list-endpoints-by-platform-application
                              #:list-of-endpoints
                              #:list-of-platform-applications
                              #:list-origination-numbers
                              #:list-phone-numbers-opted-out
                              #:list-platform-applications
                              #:list-smssandbox-phone-numbers #:list-string
                              #:list-subscriptions
                              #:list-subscriptions-by-topic
                              #:list-tags-for-resource #:list-topics
                              #:map-string-to-string #:max-items
                              #:max-items-list-origination-numbers
                              #:message-attribute-map #:message-attribute-value
                              #:number-capability #:number-capability-list
                              #:otpcode #:opt-in-phone-number #:phone-number
                              #:phone-number-information
                              #:phone-number-information-list
                              #:phone-number-list #:phone-number-string
                              #:platform-application #:publish #:publish-batch
                              #:publish-batch-request-entry
                              #:publish-batch-request-entry-list
                              #:publish-batch-result-entry
                              #:publish-batch-result-entry-list
                              #:put-data-protection-policy #:remove-permission
                              #:route-type #:smssandbox-phone-number
                              #:smssandbox-phone-number-list
                              #:smssandbox-phone-number-verification-status
                              #:set-endpoint-attributes
                              #:set-platform-application-attributes
                              #:set-smsattributes #:set-subscription-attributes
                              #:set-topic-attributes #:string #:subscribe
                              #:subscription #:subscription-attributes-map
                              #:subscriptions-list #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:timestamp #:topic
                              #:topic-attributes-map #:topics-list
                              #:unsubscribe #:untag-resource
                              #:verify-smssandbox-phone-number #:account
                              #:action #:attribute-name #:attribute-value
                              #:authenticate-on-unsubscribe #:boolean
                              #:delegate #:label #:message #:message-id
                              #:message-structure #:next-token #:protocol
                              #:subject #:subscription-arn #:token #:topic-arn
                              #:topic-name))
(common-lisp:in-package #:pira/sns)

(smithy/sdk/service:define-service amazon-simple-notification-service
                                   :shape-name
                                   "AmazonSimpleNotificationService" :version
                                   "2010-03-31" :title
                                   "Amazon Simple Notification Service"
                                   :xml-namespace
                                   '(:uri
                                     "http://sns.amazonaws.com/doc/2010-03-31/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "SNS")
                                      ("arnNamespace" . "sns")
                                      ("cloudFormationName" . "SNS")
                                      ("cloudTrailEventSource"
                                       . "sns.amazonaws.com")
                                      ("endpointPrefix" . "sns"))
                                     ("aws.auth#sigv4" ("name" . "sns"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-list actions-list :member action)

(smithy/sdk/shapes:define-input add-permission-input common-lisp:nil
                                ((topic-arn :target-type topic-arn :required
                                  common-lisp:t :member-name "TopicArn")
                                 (label :target-type label :required
                                  common-lisp:t :member-name "Label")
                                 (awsaccount-id :target-type delegates-list
                                  :required common-lisp:t :member-name
                                  "AWSAccountId")
                                 (action-name :target-type actions-list
                                  :required common-lisp:t :member-name
                                  "ActionName"))
                                (:shape-name "AddPermissionInput"))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error authorization-error-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "AuthorizationErrorException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error batch-entry-ids-not-distinct-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "BatchEntryIdsNotDistinctException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error batch-request-too-long-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "BatchRequestTooLongException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure batch-result-error-entry common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (code :target-type string :required
                                      common-lisp:t :member-name "Code")
                                     (message :target-type string :member-name
                                      "Message")
                                     (sender-fault :target-type boolean
                                      :required common-lisp:t :member-name
                                      "SenderFault"))
                                    (:shape-name "BatchResultErrorEntry"))

(smithy/sdk/shapes:define-list batch-result-error-entry-list :member
                               batch-result-error-entry)

(smithy/sdk/shapes:define-type binary smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-input check-if-phone-number-is-opted-out-input
                                common-lisp:nil
                                ((phone-number :target-type phone-number
                                  :required common-lisp:t :member-name
                                  "phoneNumber"))
                                (:shape-name
                                 "CheckIfPhoneNumberIsOptedOutInput"))

(smithy/sdk/shapes:define-output check-if-phone-number-is-opted-out-response
                                 common-lisp:nil
                                 ((is-opted-out :target-type boolean
                                   :member-name "isOptedOut"))
                                 (:shape-name
                                  "CheckIfPhoneNumberIsOptedOutResponse"))

(smithy/sdk/shapes:define-error concurrent-access-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ConcurrentAccessException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input confirm-subscription-input common-lisp:nil
                                ((topic-arn :target-type topic-arn :required
                                  common-lisp:t :member-name "TopicArn")
                                 (token :target-type token :required
                                  common-lisp:t :member-name "Token")
                                 (authenticate-on-unsubscribe :target-type
                                  authenticate-on-unsubscribe :member-name
                                  "AuthenticateOnUnsubscribe"))
                                (:shape-name "ConfirmSubscriptionInput"))

(smithy/sdk/shapes:define-output confirm-subscription-response common-lisp:nil
                                 ((subscription-arn :target-type
                                   subscription-arn :member-name
                                   "SubscriptionArn"))
                                 (:shape-name "ConfirmSubscriptionResponse"))

(smithy/sdk/shapes:define-output create-endpoint-response common-lisp:nil
                                 ((endpoint-arn :target-type string
                                   :member-name "EndpointArn"))
                                 (:shape-name "CreateEndpointResponse"))

(smithy/sdk/shapes:define-input create-platform-application-input
                                common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (platform :target-type string :required
                                  common-lisp:t :member-name "Platform")
                                 (attributes :target-type map-string-to-string
                                  :required common-lisp:t :member-name
                                  "Attributes"))
                                (:shape-name "CreatePlatformApplicationInput"))

(smithy/sdk/shapes:define-output create-platform-application-response
                                 common-lisp:nil
                                 ((platform-application-arn :target-type string
                                   :member-name "PlatformApplicationArn"))
                                 (:shape-name
                                  "CreatePlatformApplicationResponse"))

(smithy/sdk/shapes:define-input create-platform-endpoint-input common-lisp:nil
                                ((platform-application-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "PlatformApplicationArn")
                                 (token :target-type string :required
                                  common-lisp:t :member-name "Token")
                                 (custom-user-data :target-type string
                                  :member-name "CustomUserData")
                                 (attributes :target-type map-string-to-string
                                  :member-name "Attributes"))
                                (:shape-name "CreatePlatformEndpointInput"))

(smithy/sdk/shapes:define-input create-smssandbox-phone-number-input
                                common-lisp:nil
                                ((phone-number :target-type phone-number-string
                                  :required common-lisp:t :member-name
                                  "PhoneNumber")
                                 (language-code :target-type
                                  language-code-string :member-name
                                  "LanguageCode"))
                                (:shape-name
                                 "CreateSMSSandboxPhoneNumberInput"))

(smithy/sdk/shapes:define-output create-smssandbox-phone-number-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateSMSSandboxPhoneNumberResult"))

(smithy/sdk/shapes:define-input create-topic-input common-lisp:nil
                                ((name :target-type topic-name :required
                                  common-lisp:t :member-name "Name")
                                 (attributes :target-type topic-attributes-map
                                  :member-name "Attributes")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (data-protection-policy :target-type
                                  attribute-value :member-name
                                  "DataProtectionPolicy"))
                                (:shape-name "CreateTopicInput"))

(smithy/sdk/shapes:define-output create-topic-response common-lisp:nil
                                 ((topic-arn :target-type topic-arn
                                   :member-name "TopicArn"))
                                 (:shape-name "CreateTopicResponse"))

(smithy/sdk/shapes:define-list delegates-list :member delegate)

(smithy/sdk/shapes:define-input delete-endpoint-input common-lisp:nil
                                ((endpoint-arn :target-type string :required
                                  common-lisp:t :member-name "EndpointArn"))
                                (:shape-name "DeleteEndpointInput"))

(smithy/sdk/shapes:define-input delete-platform-application-input
                                common-lisp:nil
                                ((platform-application-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "PlatformApplicationArn"))
                                (:shape-name "DeletePlatformApplicationInput"))

(smithy/sdk/shapes:define-input delete-smssandbox-phone-number-input
                                common-lisp:nil
                                ((phone-number :target-type phone-number-string
                                  :required common-lisp:t :member-name
                                  "PhoneNumber"))
                                (:shape-name
                                 "DeleteSMSSandboxPhoneNumberInput"))

(smithy/sdk/shapes:define-output delete-smssandbox-phone-number-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteSMSSandboxPhoneNumberResult"))

(smithy/sdk/shapes:define-input delete-topic-input common-lisp:nil
                                ((topic-arn :target-type topic-arn :required
                                  common-lisp:t :member-name "TopicArn"))
                                (:shape-name "DeleteTopicInput"))

(smithy/sdk/shapes:define-error empty-batch-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "EmptyBatchRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((endpoint-arn :target-type string
                                      :member-name "EndpointArn")
                                     (attributes :target-type
                                      map-string-to-string :member-name
                                      "Attributes"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-type endpoint2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error endpoint-disabled-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "EndpointDisabledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error filter-policy-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "FilterPolicyLimitExceededException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input get-data-protection-policy-input
                                common-lisp:nil
                                ((resource-arn :target-type topic-arn :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "GetDataProtectionPolicyInput"))

(smithy/sdk/shapes:define-output get-data-protection-policy-response
                                 common-lisp:nil
                                 ((data-protection-policy :target-type
                                   attribute-value :member-name
                                   "DataProtectionPolicy"))
                                 (:shape-name
                                  "GetDataProtectionPolicyResponse"))

(smithy/sdk/shapes:define-input get-endpoint-attributes-input common-lisp:nil
                                ((endpoint-arn :target-type string :required
                                  common-lisp:t :member-name "EndpointArn"))
                                (:shape-name "GetEndpointAttributesInput"))

(smithy/sdk/shapes:define-output get-endpoint-attributes-response
                                 common-lisp:nil
                                 ((attributes :target-type map-string-to-string
                                   :member-name "Attributes"))
                                 (:shape-name "GetEndpointAttributesResponse"))

(smithy/sdk/shapes:define-input get-platform-application-attributes-input
                                common-lisp:nil
                                ((platform-application-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "PlatformApplicationArn"))
                                (:shape-name
                                 "GetPlatformApplicationAttributesInput"))

(smithy/sdk/shapes:define-output get-platform-application-attributes-response
                                 common-lisp:nil
                                 ((attributes :target-type map-string-to-string
                                   :member-name "Attributes"))
                                 (:shape-name
                                  "GetPlatformApplicationAttributesResponse"))

(smithy/sdk/shapes:define-input get-smsattributes-input common-lisp:nil
                                ((attributes :target-type list-string
                                  :member-name "attributes"))
                                (:shape-name "GetSMSAttributesInput"))

(smithy/sdk/shapes:define-output get-smsattributes-response common-lisp:nil
                                 ((attributes :target-type map-string-to-string
                                   :member-name "attributes"))
                                 (:shape-name "GetSMSAttributesResponse"))

(smithy/sdk/shapes:define-input get-smssandbox-account-status-input
                                common-lisp:nil common-lisp:nil
                                (:shape-name "GetSMSSandboxAccountStatusInput"))

(smithy/sdk/shapes:define-output get-smssandbox-account-status-result
                                 common-lisp:nil
                                 ((is-in-sandbox :target-type boolean :required
                                   common-lisp:t :member-name "IsInSandbox"))
                                 (:shape-name
                                  "GetSMSSandboxAccountStatusResult"))

(smithy/sdk/shapes:define-input get-subscription-attributes-input
                                common-lisp:nil
                                ((subscription-arn :target-type
                                  subscription-arn :required common-lisp:t
                                  :member-name "SubscriptionArn"))
                                (:shape-name "GetSubscriptionAttributesInput"))

(smithy/sdk/shapes:define-output get-subscription-attributes-response
                                 common-lisp:nil
                                 ((attributes :target-type
                                   subscription-attributes-map :member-name
                                   "Attributes"))
                                 (:shape-name
                                  "GetSubscriptionAttributesResponse"))

(smithy/sdk/shapes:define-input get-topic-attributes-input common-lisp:nil
                                ((topic-arn :target-type topic-arn :required
                                  common-lisp:t :member-name "TopicArn"))
                                (:shape-name "GetTopicAttributesInput"))

(smithy/sdk/shapes:define-output get-topic-attributes-response common-lisp:nil
                                 ((attributes :target-type topic-attributes-map
                                   :member-name "Attributes"))
                                 (:shape-name "GetTopicAttributesResponse"))

(smithy/sdk/shapes:define-error internal-error-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InternalErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-batch-entry-id-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidBatchEntryIdException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-security-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidSecurityException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error invalid-state-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type iso2country-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error kmsaccess-denied-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "KMSAccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsdisabled-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "KMSDisabledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsinvalid-state-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "KMSInvalidStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsnot-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "KMSNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kmsopt-in-required common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "KMSOptInRequired")
                                (:error-code 403))

(smithy/sdk/shapes:define-error kmsthrottling-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "KMSThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum language-code-string
    common-lisp:nil
  (:en-us "en-US")
  (:en-gb "en-GB")
  (:es-419 "es-419")
  (:es-es "es-ES")
  (:de-de "de-DE")
  (:fr-ca "fr-CA")
  (:fr-fr "fr-FR")
  (:it-it "it-IT")
  (:jp-jp "ja-JP")
  (:pt-br "pt-BR")
  (:kr-kr "kr-KR")
  (:zh-cn "zh-CN")
  (:zh-tw "zh-TW"))

(smithy/sdk/shapes:define-input list-endpoints-by-platform-application-input
                                common-lisp:nil
                                ((platform-application-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "PlatformApplicationArn")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "ListEndpointsByPlatformApplicationInput"))

(smithy/sdk/shapes:define-output
 list-endpoints-by-platform-application-response common-lisp:nil
 ((endpoints :target-type list-of-endpoints :member-name "Endpoints")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "ListEndpointsByPlatformApplicationResponse"))

(smithy/sdk/shapes:define-list list-of-endpoints :member endpoint)

(smithy/sdk/shapes:define-list list-of-platform-applications :member
                               platform-application)

(smithy/sdk/shapes:define-input list-origination-numbers-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  max-items-list-origination-numbers
                                  :member-name "MaxResults"))
                                (:shape-name "ListOriginationNumbersRequest"))

(smithy/sdk/shapes:define-output list-origination-numbers-result
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (phone-numbers :target-type
                                   phone-number-information-list :member-name
                                   "PhoneNumbers"))
                                 (:shape-name "ListOriginationNumbersResult"))

(smithy/sdk/shapes:define-input list-phone-numbers-opted-out-input
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "nextToken"))
                                (:shape-name "ListPhoneNumbersOptedOutInput"))

(smithy/sdk/shapes:define-output list-phone-numbers-opted-out-response
                                 common-lisp:nil
                                 ((phone-numbers :target-type phone-number-list
                                   :member-name "phoneNumbers")
                                  (next-token :target-type string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListPhoneNumbersOptedOutResponse"))

(smithy/sdk/shapes:define-input list-platform-applications-input
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListPlatformApplicationsInput"))

(smithy/sdk/shapes:define-output list-platform-applications-response
                                 common-lisp:nil
                                 ((platform-applications :target-type
                                   list-of-platform-applications :member-name
                                   "PlatformApplications")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListPlatformApplicationsResponse"))

(smithy/sdk/shapes:define-input list-smssandbox-phone-numbers-input
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-items
                                  :member-name "MaxResults"))
                                (:shape-name "ListSMSSandboxPhoneNumbersInput"))

(smithy/sdk/shapes:define-output list-smssandbox-phone-numbers-result
                                 common-lisp:nil
                                 ((phone-numbers :target-type
                                   smssandbox-phone-number-list :required
                                   common-lisp:t :member-name "PhoneNumbers")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListSMSSandboxPhoneNumbersResult"))

(smithy/sdk/shapes:define-list list-string :member string)

(smithy/sdk/shapes:define-input list-subscriptions-by-topic-input
                                common-lisp:nil
                                ((topic-arn :target-type topic-arn :required
                                  common-lisp:t :member-name "TopicArn")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListSubscriptionsByTopicInput"))

(smithy/sdk/shapes:define-output list-subscriptions-by-topic-response
                                 common-lisp:nil
                                 ((subscriptions :target-type
                                   subscriptions-list :member-name
                                   "Subscriptions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListSubscriptionsByTopicResponse"))

(smithy/sdk/shapes:define-input list-subscriptions-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListSubscriptionsInput"))

(smithy/sdk/shapes:define-output list-subscriptions-response common-lisp:nil
                                 ((subscriptions :target-type
                                   subscriptions-list :member-name
                                   "Subscriptions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListSubscriptionsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-topics-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTopicsInput"))

(smithy/sdk/shapes:define-output list-topics-response common-lisp:nil
                                 ((topics :target-type topics-list :member-name
                                   "Topics")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTopicsResponse"))

(smithy/sdk/shapes:define-map map-string-to-string :key string :value string)

(smithy/sdk/shapes:define-type max-items smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-items-list-origination-numbers
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-map message-attribute-map :key
                              (string :xml-name "Name") :value
                              (message-attribute-value :xml-name "Value"))

(smithy/sdk/shapes:define-structure message-attribute-value common-lisp:nil
                                    ((data-type :target-type string :required
                                      common-lisp:t :member-name "DataType")
                                     (string-value :target-type string
                                      :member-name "StringValue")
                                     (binary-value :target-type binary
                                      :member-name "BinaryValue"))
                                    (:shape-name "MessageAttributeValue"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum number-capability
    common-lisp:nil
  (:sms "SMS")
  (:mms "MMS")
  (:voice "VOICE"))

(smithy/sdk/shapes:define-list number-capability-list :member number-capability)

(smithy/sdk/shapes:define-type otpcode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input opt-in-phone-number-input common-lisp:nil
                                ((phone-number :target-type phone-number
                                  :required common-lisp:t :member-name
                                  "phoneNumber"))
                                (:shape-name "OptInPhoneNumberInput"))

(smithy/sdk/shapes:define-output opt-in-phone-number-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "OptInPhoneNumberResponse"))

(smithy/sdk/shapes:define-error opted-out-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "OptedOutException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type phone-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure phone-number-information common-lisp:nil
                                    ((created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (phone-number :target-type phone-number
                                      :member-name "PhoneNumber")
                                     (status :target-type string :member-name
                                      "Status")
                                     (iso2country-code :target-type
                                      iso2country-code :member-name
                                      "Iso2CountryCode")
                                     (route-type :target-type route-type
                                      :member-name "RouteType")
                                     (number-capabilities :target-type
                                      number-capability-list :member-name
                                      "NumberCapabilities"))
                                    (:shape-name "PhoneNumberInformation"))

(smithy/sdk/shapes:define-list phone-number-information-list :member
                               phone-number-information)

(smithy/sdk/shapes:define-list phone-number-list :member phone-number)

(smithy/sdk/shapes:define-type phone-number-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure platform-application common-lisp:nil
                                    ((platform-application-arn :target-type
                                      string :member-name
                                      "PlatformApplicationArn")
                                     (attributes :target-type
                                      map-string-to-string :member-name
                                      "Attributes"))
                                    (:shape-name "PlatformApplication"))

(smithy/sdk/shapes:define-error platform-application-disabled-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "PlatformApplicationDisabledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input publish-batch-input common-lisp:nil
                                ((topic-arn :target-type topic-arn :required
                                  common-lisp:t :member-name "TopicArn")
                                 (publish-batch-request-entries :target-type
                                  publish-batch-request-entry-list :required
                                  common-lisp:t :member-name
                                  "PublishBatchRequestEntries"))
                                (:shape-name "PublishBatchInput"))

(smithy/sdk/shapes:define-structure publish-batch-request-entry common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (message :target-type message :required
                                      common-lisp:t :member-name "Message")
                                     (subject :target-type subject :member-name
                                      "Subject")
                                     (message-structure :target-type
                                      message-structure :member-name
                                      "MessageStructure")
                                     (message-attributes :target-type
                                      message-attribute-map :member-name
                                      "MessageAttributes")
                                     (message-deduplication-id :target-type
                                      string :member-name
                                      "MessageDeduplicationId")
                                     (message-group-id :target-type string
                                      :member-name "MessageGroupId"))
                                    (:shape-name "PublishBatchRequestEntry"))

(smithy/sdk/shapes:define-list publish-batch-request-entry-list :member
                               publish-batch-request-entry)

(smithy/sdk/shapes:define-output publish-batch-response common-lisp:nil
                                 ((successful :target-type
                                   publish-batch-result-entry-list :member-name
                                   "Successful")
                                  (failed :target-type
                                   batch-result-error-entry-list :member-name
                                   "Failed"))
                                 (:shape-name "PublishBatchResponse"))

(smithy/sdk/shapes:define-structure publish-batch-result-entry common-lisp:nil
                                    ((id :target-type string :member-name "Id")
                                     (message-id :target-type message-id
                                      :member-name "MessageId")
                                     (sequence-number :target-type string
                                      :member-name "SequenceNumber"))
                                    (:shape-name "PublishBatchResultEntry"))

(smithy/sdk/shapes:define-list publish-batch-result-entry-list :member
                               publish-batch-result-entry)

(smithy/sdk/shapes:define-input publish-input common-lisp:nil
                                ((topic-arn :target-type topic-arn :member-name
                                  "TopicArn")
                                 (target-arn :target-type string :member-name
                                  "TargetArn")
                                 (phone-number :target-type phone-number
                                  :member-name "PhoneNumber")
                                 (message :target-type message :required
                                  common-lisp:t :member-name "Message")
                                 (subject :target-type subject :member-name
                                  "Subject")
                                 (message-structure :target-type
                                  message-structure :member-name
                                  "MessageStructure")
                                 (message-attributes :target-type
                                  message-attribute-map :member-name
                                  "MessageAttributes")
                                 (message-deduplication-id :target-type string
                                  :member-name "MessageDeduplicationId")
                                 (message-group-id :target-type string
                                  :member-name "MessageGroupId"))
                                (:shape-name "PublishInput"))

(smithy/sdk/shapes:define-output publish-response common-lisp:nil
                                 ((message-id :target-type message-id
                                   :member-name "MessageId")
                                  (sequence-number :target-type string
                                   :member-name "SequenceNumber"))
                                 (:shape-name "PublishResponse"))

(smithy/sdk/shapes:define-input put-data-protection-policy-input
                                common-lisp:nil
                                ((resource-arn :target-type topic-arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (data-protection-policy :target-type
                                  attribute-value :required common-lisp:t
                                  :member-name "DataProtectionPolicy"))
                                (:shape-name "PutDataProtectionPolicyInput"))

(smithy/sdk/shapes:define-input remove-permission-input common-lisp:nil
                                ((topic-arn :target-type topic-arn :required
                                  common-lisp:t :member-name "TopicArn")
                                 (label :target-type label :required
                                  common-lisp:t :member-name "Label"))
                                (:shape-name "RemovePermissionInput"))

(smithy/sdk/shapes:define-error replay-limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ReplayLimitExceededException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum route-type
    common-lisp:nil
  (:transactional "Transactional")
  (:promotional "Promotional")
  (:premium "Premium"))

(smithy/sdk/shapes:define-structure smssandbox-phone-number common-lisp:nil
                                    ((phone-number :target-type
                                      phone-number-string :member-name
                                      "PhoneNumber")
                                     (status :target-type
                                      smssandbox-phone-number-verification-status
                                      :member-name "Status"))
                                    (:shape-name "SMSSandboxPhoneNumber"))

(smithy/sdk/shapes:define-list smssandbox-phone-number-list :member
                               smssandbox-phone-number)

(smithy/sdk/shapes:define-enum smssandbox-phone-number-verification-status
    common-lisp:nil
  (:pending "Pending")
  (:verified "Verified"))

(smithy/sdk/shapes:define-input set-endpoint-attributes-input common-lisp:nil
                                ((endpoint-arn :target-type string :required
                                  common-lisp:t :member-name "EndpointArn")
                                 (attributes :target-type map-string-to-string
                                  :required common-lisp:t :member-name
                                  "Attributes"))
                                (:shape-name "SetEndpointAttributesInput"))

(smithy/sdk/shapes:define-input set-platform-application-attributes-input
                                common-lisp:nil
                                ((platform-application-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "PlatformApplicationArn")
                                 (attributes :target-type map-string-to-string
                                  :required common-lisp:t :member-name
                                  "Attributes"))
                                (:shape-name
                                 "SetPlatformApplicationAttributesInput"))

(smithy/sdk/shapes:define-input set-smsattributes-input common-lisp:nil
                                ((attributes :target-type map-string-to-string
                                  :required common-lisp:t :member-name
                                  "attributes"))
                                (:shape-name "SetSMSAttributesInput"))

(smithy/sdk/shapes:define-output set-smsattributes-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "SetSMSAttributesResponse"))

(smithy/sdk/shapes:define-input set-subscription-attributes-input
                                common-lisp:nil
                                ((subscription-arn :target-type
                                  subscription-arn :required common-lisp:t
                                  :member-name "SubscriptionArn")
                                 (attribute-name :target-type attribute-name
                                  :required common-lisp:t :member-name
                                  "AttributeName")
                                 (attribute-value :target-type attribute-value
                                  :member-name "AttributeValue"))
                                (:shape-name "SetSubscriptionAttributesInput"))

(smithy/sdk/shapes:define-input set-topic-attributes-input common-lisp:nil
                                ((topic-arn :target-type topic-arn :required
                                  common-lisp:t :member-name "TopicArn")
                                 (attribute-name :target-type attribute-name
                                  :required common-lisp:t :member-name
                                  "AttributeName")
                                 (attribute-value :target-type attribute-value
                                  :member-name "AttributeValue"))
                                (:shape-name "SetTopicAttributesInput"))

(smithy/sdk/shapes:define-error stale-tag-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "StaleTagException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input subscribe-input common-lisp:nil
                                ((topic-arn :target-type topic-arn :required
                                  common-lisp:t :member-name "TopicArn")
                                 (protocol :target-type protocol :required
                                  common-lisp:t :member-name "Protocol")
                                 (endpoint :target-type endpoint2 :member-name
                                  "Endpoint")
                                 (attributes :target-type
                                  subscription-attributes-map :member-name
                                  "Attributes")
                                 (return-subscription-arn :target-type boolean
                                  :member-name "ReturnSubscriptionArn"))
                                (:shape-name "SubscribeInput"))

(smithy/sdk/shapes:define-output subscribe-response common-lisp:nil
                                 ((subscription-arn :target-type
                                   subscription-arn :member-name
                                   "SubscriptionArn"))
                                 (:shape-name "SubscribeResponse"))

(smithy/sdk/shapes:define-structure subscription common-lisp:nil
                                    ((subscription-arn :target-type
                                      subscription-arn :member-name
                                      "SubscriptionArn")
                                     (owner :target-type account :member-name
                                      "Owner")
                                     (protocol :target-type protocol
                                      :member-name "Protocol")
                                     (endpoint :target-type endpoint2
                                      :member-name "Endpoint")
                                     (topic-arn :target-type topic-arn
                                      :member-name "TopicArn"))
                                    (:shape-name "Subscription"))

(smithy/sdk/shapes:define-map subscription-attributes-map :key attribute-name
                              :value attribute-value)

(smithy/sdk/shapes:define-error subscription-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "SubscriptionLimitExceededException")
                                (:error-code 403))

(smithy/sdk/shapes:define-list subscriptions-list :member subscription)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-error tag-limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "TagLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-error tag-policy-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "TagPolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttled-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ThrottledException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-entries-in-batch-request-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "TooManyEntriesInBatchRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure topic common-lisp:nil
                                    ((topic-arn :target-type topic-arn
                                      :member-name "TopicArn"))
                                    (:shape-name "Topic"))

(smithy/sdk/shapes:define-map topic-attributes-map :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-error topic-limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "TopicLimitExceededException")
                                (:error-code 403))

(smithy/sdk/shapes:define-list topics-list :member topic)

(smithy/sdk/shapes:define-input unsubscribe-input common-lisp:nil
                                ((subscription-arn :target-type
                                  subscription-arn :required common-lisp:t
                                  :member-name "SubscriptionArn"))
                                (:shape-name "UnsubscribeInput"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-error user-error-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "UserErrorException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error verification-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (status :target-type string :required
                                  common-lisp:t :member-name "Status"))
                                (:shape-name "VerificationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input verify-smssandbox-phone-number-input
                                common-lisp:nil
                                ((phone-number :target-type phone-number-string
                                  :required common-lisp:t :member-name
                                  "PhoneNumber")
                                 (one-time-password :target-type otpcode
                                  :required common-lisp:t :member-name
                                  "OneTimePassword"))
                                (:shape-name
                                 "VerifySMSSandboxPhoneNumberInput"))

(smithy/sdk/shapes:define-output verify-smssandbox-phone-number-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "VerifySMSSandboxPhoneNumberResult"))

(smithy/sdk/shapes:define-type account smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type authenticate-on-unsubscribe
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type delegate smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-structure smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type protocol smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subject smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subscription-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type topic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type topic-name smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation add-permission :shape-name
                                       "AddPermission" :input
                                       add-permission-input :output
                                       common-lisp:null :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation check-if-phone-number-is-opted-out
                                       :shape-name
                                       "CheckIfPhoneNumberIsOptedOut" :input
                                       check-if-phone-number-is-opted-out-input
                                       :output
                                       check-if-phone-number-is-opted-out-response
                                       :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        throttled-exception))

(smithy/sdk/operation:define-operation confirm-subscription :shape-name
                                       "ConfirmSubscription" :input
                                       confirm-subscription-input :output
                                       confirm-subscription-response :errors
                                       (authorization-error-exception
                                        filter-policy-limit-exceeded-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        replay-limit-exceeded-exception
                                        subscription-limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-platform-application :shape-name
                                       "CreatePlatformApplication" :input
                                       create-platform-application-input
                                       :output
                                       create-platform-application-response
                                       :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception))

(smithy/sdk/operation:define-operation create-platform-endpoint :shape-name
                                       "CreatePlatformEndpoint" :input
                                       create-platform-endpoint-input :output
                                       create-endpoint-response :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation create-smssandbox-phone-number
                                       :shape-name
                                       "CreateSMSSandboxPhoneNumber" :input
                                       create-smssandbox-phone-number-input
                                       :output
                                       create-smssandbox-phone-number-result
                                       :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        opted-out-exception throttled-exception
                                        user-error-exception))

(smithy/sdk/operation:define-operation create-topic :shape-name "CreateTopic"
                                       :input create-topic-input :output
                                       create-topic-response :errors
                                       (authorization-error-exception
                                        concurrent-access-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-security-exception
                                        stale-tag-exception
                                        tag-limit-exceeded-exception
                                        tag-policy-exception
                                        topic-limit-exceeded-exception))

(smithy/sdk/operation:define-operation delete-endpoint :shape-name
                                       "DeleteEndpoint" :input
                                       delete-endpoint-input :output
                                       common-lisp:null :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception))

(smithy/sdk/operation:define-operation delete-platform-application :shape-name
                                       "DeletePlatformApplication" :input
                                       delete-platform-application-input
                                       :output common-lisp:null :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception))

(smithy/sdk/operation:define-operation delete-smssandbox-phone-number
                                       :shape-name
                                       "DeleteSMSSandboxPhoneNumber" :input
                                       delete-smssandbox-phone-number-input
                                       :output
                                       delete-smssandbox-phone-number-result
                                       :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttled-exception
                                        user-error-exception))

(smithy/sdk/operation:define-operation delete-topic :shape-name "DeleteTopic"
                                       :input delete-topic-input :output
                                       common-lisp:null :errors
                                       (authorization-error-exception
                                        concurrent-access-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-state-exception
                                        not-found-exception stale-tag-exception
                                        tag-policy-exception))

(smithy/sdk/operation:define-operation get-data-protection-policy :shape-name
                                       "GetDataProtectionPolicy" :input
                                       get-data-protection-policy-input :output
                                       get-data-protection-policy-response
                                       :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-security-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation get-endpoint-attributes :shape-name
                                       "GetEndpointAttributes" :input
                                       get-endpoint-attributes-input :output
                                       get-endpoint-attributes-response :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation get-platform-application-attributes
                                       :shape-name
                                       "GetPlatformApplicationAttributes"
                                       :input
                                       get-platform-application-attributes-input
                                       :output
                                       get-platform-application-attributes-response
                                       :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation get-smsattributes :shape-name
                                       "GetSMSAttributes" :input
                                       get-smsattributes-input :output
                                       get-smsattributes-response :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        throttled-exception))

(smithy/sdk/operation:define-operation get-smssandbox-account-status
                                       :shape-name "GetSMSSandboxAccountStatus"
                                       :input
                                       get-smssandbox-account-status-input
                                       :output
                                       get-smssandbox-account-status-result
                                       :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        throttled-exception))

(smithy/sdk/operation:define-operation get-subscription-attributes :shape-name
                                       "GetSubscriptionAttributes" :input
                                       get-subscription-attributes-input
                                       :output
                                       get-subscription-attributes-response
                                       :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation get-topic-attributes :shape-name
                                       "GetTopicAttributes" :input
                                       get-topic-attributes-input :output
                                       get-topic-attributes-response :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-security-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation list-endpoints-by-platform-application
                                       :shape-name
                                       "ListEndpointsByPlatformApplication"
                                       :input
                                       list-endpoints-by-platform-application-input
                                       :output
                                       list-endpoints-by-platform-application-response
                                       :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation list-origination-numbers :shape-name
                                       "ListOriginationNumbers" :input
                                       list-origination-numbers-request :output
                                       list-origination-numbers-result :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        throttled-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-phone-numbers-opted-out :shape-name
                                       "ListPhoneNumbersOptedOut" :input
                                       list-phone-numbers-opted-out-input
                                       :output
                                       list-phone-numbers-opted-out-response
                                       :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        throttled-exception))

(smithy/sdk/operation:define-operation list-platform-applications :shape-name
                                       "ListPlatformApplications" :input
                                       list-platform-applications-input :output
                                       list-platform-applications-response
                                       :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception))

(smithy/sdk/operation:define-operation list-smssandbox-phone-numbers
                                       :shape-name "ListSMSSandboxPhoneNumbers"
                                       :input
                                       list-smssandbox-phone-numbers-input
                                       :output
                                       list-smssandbox-phone-numbers-result
                                       :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttled-exception))

(smithy/sdk/operation:define-operation list-subscriptions :shape-name
                                       "ListSubscriptions" :input
                                       list-subscriptions-input :output
                                       list-subscriptions-response :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception))

(smithy/sdk/operation:define-operation list-subscriptions-by-topic :shape-name
                                       "ListSubscriptionsByTopic" :input
                                       list-subscriptions-by-topic-input
                                       :output
                                       list-subscriptions-by-topic-response
                                       :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (authorization-error-exception
                                        concurrent-access-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        tag-policy-exception))

(smithy/sdk/operation:define-operation list-topics :shape-name "ListTopics"
                                       :input list-topics-input :output
                                       list-topics-response :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception))

(smithy/sdk/operation:define-operation opt-in-phone-number :shape-name
                                       "OptInPhoneNumber" :input
                                       opt-in-phone-number-input :output
                                       opt-in-phone-number-response :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        throttled-exception))

(smithy/sdk/operation:define-operation publish :shape-name "Publish" :input
                                       publish-input :output publish-response
                                       :errors
                                       (authorization-error-exception
                                        endpoint-disabled-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        invalid-security-exception
                                        kmsaccess-denied-exception
                                        kmsdisabled-exception
                                        kmsinvalid-state-exception
                                        kmsnot-found-exception
                                        kmsopt-in-required
                                        kmsthrottling-exception
                                        not-found-exception
                                        platform-application-disabled-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation publish-batch :shape-name "PublishBatch"
                                       :input publish-batch-input :output
                                       publish-batch-response :errors
                                       (authorization-error-exception
                                        batch-entry-ids-not-distinct-exception
                                        batch-request-too-long-exception
                                        empty-batch-request-exception
                                        endpoint-disabled-exception
                                        internal-error-exception
                                        invalid-batch-entry-id-exception
                                        invalid-parameter-exception
                                        invalid-parameter-value-exception
                                        invalid-security-exception
                                        kmsaccess-denied-exception
                                        kmsdisabled-exception
                                        kmsinvalid-state-exception
                                        kmsnot-found-exception
                                        kmsopt-in-required
                                        kmsthrottling-exception
                                        not-found-exception
                                        platform-application-disabled-exception
                                        too-many-entries-in-batch-request-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-data-protection-policy :shape-name
                                       "PutDataProtectionPolicy" :input
                                       put-data-protection-policy-input :output
                                       common-lisp:null :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-security-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation remove-permission :shape-name
                                       "RemovePermission" :input
                                       remove-permission-input :output
                                       common-lisp:null :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation set-endpoint-attributes :shape-name
                                       "SetEndpointAttributes" :input
                                       set-endpoint-attributes-input :output
                                       common-lisp:null :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation set-platform-application-attributes
                                       :shape-name
                                       "SetPlatformApplicationAttributes"
                                       :input
                                       set-platform-application-attributes-input
                                       :output common-lisp:null :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation set-smsattributes :shape-name
                                       "SetSMSAttributes" :input
                                       set-smsattributes-input :output
                                       set-smsattributes-response :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        throttled-exception))

(smithy/sdk/operation:define-operation set-subscription-attributes :shape-name
                                       "SetSubscriptionAttributes" :input
                                       set-subscription-attributes-input
                                       :output common-lisp:null :errors
                                       (authorization-error-exception
                                        filter-policy-limit-exceeded-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        not-found-exception
                                        replay-limit-exceeded-exception))

(smithy/sdk/operation:define-operation set-topic-attributes :shape-name
                                       "SetTopicAttributes" :input
                                       set-topic-attributes-input :output
                                       common-lisp:null :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-security-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation subscribe :shape-name "Subscribe" :input
                                       subscribe-input :output
                                       subscribe-response :errors
                                       (authorization-error-exception
                                        filter-policy-limit-exceeded-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-security-exception
                                        not-found-exception
                                        replay-limit-exceeded-exception
                                        subscription-limit-exceeded-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (authorization-error-exception
                                        concurrent-access-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        stale-tag-exception
                                        tag-limit-exceeded-exception
                                        tag-policy-exception))

(smithy/sdk/operation:define-operation unsubscribe :shape-name "Unsubscribe"
                                       :input unsubscribe-input :output
                                       common-lisp:null :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        invalid-security-exception
                                        not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (authorization-error-exception
                                        concurrent-access-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        stale-tag-exception
                                        tag-limit-exceeded-exception
                                        tag-policy-exception))

(smithy/sdk/operation:define-operation verify-smssandbox-phone-number
                                       :shape-name
                                       "VerifySMSSandboxPhoneNumber" :input
                                       verify-smssandbox-phone-number-input
                                       :output
                                       verify-smssandbox-phone-number-result
                                       :errors
                                       (authorization-error-exception
                                        internal-error-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttled-exception
                                        verification-exception))
