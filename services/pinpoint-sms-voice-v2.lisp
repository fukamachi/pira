(uiop/package:define-package #:pira/pinpoint-sms-voice-v2 (:use)
                             (:export #:access-denied-exception-reason
                              #:account-attribute #:account-attribute-list
                              #:account-attribute-name #:account-limit
                              #:account-limit-list #:account-limit-name
                              #:amazon-resource-name
                              #:associate-origination-identity
                              #:associate-protect-configuration
                              #:attachment-body #:attachment-status
                              #:attachment-upload-error-reason #:attachment-url
                              #:client-token #:cloud-watch-logs-destination
                              #:configuration-set-filter
                              #:configuration-set-filter-list
                              #:configuration-set-filter-name
                              #:configuration-set-information
                              #:configuration-set-information-list
                              #:configuration-set-name
                              #:configuration-set-name-list
                              #:configuration-set-name-or-arn
                              #:conflict-exception-reason #:context-key
                              #:context-map #:context-value
                              #:create-configuration-set
                              #:create-event-destination #:create-opt-out-list
                              #:create-pool #:create-protect-configuration
                              #:create-registration
                              #:create-registration-association
                              #:create-registration-attachment
                              #:create-registration-version
                              #:create-verified-destination-number
                              #:delete-account-default-protect-configuration
                              #:delete-configuration-set
                              #:delete-default-message-type
                              #:delete-default-sender-id
                              #:delete-event-destination #:delete-keyword
                              #:delete-media-message-spend-limit-override
                              #:delete-opt-out-list #:delete-opted-out-number
                              #:delete-pool #:delete-protect-configuration
                              #:delete-protect-configuration-rule-set-number-override
                              #:delete-registration
                              #:delete-registration-attachment
                              #:delete-registration-field-value
                              #:delete-resource-policy
                              #:delete-text-message-spend-limit-override
                              #:delete-verified-destination-number
                              #:delete-voice-message-spend-limit-override
                              #:delivery-stream-arn
                              #:describe-account-attributes
                              #:describe-account-limits
                              #:describe-configuration-sets #:describe-keywords
                              #:describe-opt-out-lists
                              #:describe-opted-out-numbers
                              #:describe-phone-numbers #:describe-pools
                              #:describe-protect-configurations
                              #:describe-registration-attachments
                              #:describe-registration-field-definitions
                              #:describe-registration-field-values
                              #:describe-registration-section-definitions
                              #:describe-registration-type-definitions
                              #:describe-registration-versions
                              #:describe-registrations #:describe-sender-ids
                              #:describe-spend-limits
                              #:describe-verified-destination-numbers
                              #:destination-country-parameter-key
                              #:destination-country-parameter-value
                              #:destination-country-parameters
                              #:destination-phone-number-list
                              #:disassociate-origination-identity
                              #:disassociate-protect-configuration
                              #:discard-registration-version
                              #:event-destination #:event-destination-list
                              #:event-destination-name #:event-type
                              #:event-type-list #:field-path #:field-path-list
                              #:field-requirement #:field-type #:filter-value
                              #:filter-value-list
                              #:get-protect-configuration-country-rule-set
                              #:get-resource-policy #:iam-role-arn
                              #:iso-country-code #:keyword #:keyword-action
                              #:keyword-filter #:keyword-filter-list
                              #:keyword-filter-name #:keyword-information
                              #:keyword-information-list #:keyword-list
                              #:keyword-message #:kinesis-firehose-destination
                              #:language-code
                              #:list-pool-origination-identities
                              #:list-protect-configuration-rule-set-number-override-filter
                              #:list-protect-configuration-rule-set-number-overrides
                              #:list-registration-associations
                              #:list-tags-for-resource #:log-group-arn
                              #:max-price #:max-results
                              #:media-message-origination-identity
                              #:media-url-list #:media-url-value
                              #:message-feedback-status #:message-id
                              #:message-type #:message-type-list
                              #:monthly-limit #:next-token #:non-empty-tag-list
                              #:number-capability #:number-capability-list
                              #:number-status #:number-type
                              #:opt-out-list-information
                              #:opt-out-list-information-list
                              #:opt-out-list-name #:opt-out-list-name-list
                              #:opt-out-list-name-or-arn #:opted-out-filter
                              #:opted-out-filter-list #:opted-out-filter-name
                              #:opted-out-number-information
                              #:opted-out-number-information-list
                              #:opted-out-number-list
                              #:origination-identity-metadata
                              #:origination-identity-metadata-list #:owner
                              #:phone-number #:phone-number-filter
                              #:phone-number-filter-list
                              #:phone-number-filter-name #:phone-number-id-list
                              #:phone-number-id-or-arn
                              #:phone-number-information
                              #:phone-number-information-list
                              #:phone-or-pool-id-or-arn
                              #:phone-or-sender-id-or-arn
                              #:pinpoint-smsvoice-v2 #:pool-filter
                              #:pool-filter-list #:pool-filter-name
                              #:pool-id-list #:pool-id-or-arn
                              #:pool-information #:pool-information-list
                              #:pool-origination-identities-filter
                              #:pool-origination-identities-filter-list
                              #:pool-origination-identities-filter-name
                              #:pool-status #:protect-configuration-arn
                              #:protect-configuration-country-rule-set
                              #:protect-configuration-country-rule-set-information
                              #:protect-configuration-filter
                              #:protect-configuration-filter-list
                              #:protect-configuration-filter-name
                              #:protect-configuration-id
                              #:protect-configuration-id-list
                              #:protect-configuration-id-or-arn
                              #:protect-configuration-information
                              #:protect-configuration-information-list
                              #:protect-configuration-rule-override-action
                              #:protect-configuration-rule-set-number-override
                              #:protect-configuration-rule-set-number-override-filter-item
                              #:protect-configuration-rule-set-number-override-filter-name
                              #:protect-configuration-rule-set-number-override-list
                              #:protect-status #:put-keyword
                              #:put-message-feedback #:put-opted-out-number
                              #:put-protect-configuration-rule-set-number-override
                              #:put-registration-field-value
                              #:put-resource-policy
                              #:registration-association-behavior
                              #:registration-association-filter
                              #:registration-association-filter-list
                              #:registration-association-filter-name
                              #:registration-association-metadata
                              #:registration-association-metadata-list
                              #:registration-attachment-filter
                              #:registration-attachment-filter-list
                              #:registration-attachment-filter-name
                              #:registration-attachment-id-list
                              #:registration-attachment-id-or-arn
                              #:registration-attachments-information
                              #:registration-attachments-information-list
                              #:registration-denied-reason-information
                              #:registration-denied-reason-information-list
                              #:registration-disassociation-behavior
                              #:registration-field-definition
                              #:registration-field-definition-list
                              #:registration-field-display-hints
                              #:registration-field-value-information
                              #:registration-field-value-information-list
                              #:registration-filter #:registration-filter-list
                              #:registration-filter-name #:registration-id-list
                              #:registration-id-or-arn
                              #:registration-information
                              #:registration-information-list
                              #:registration-section-definition
                              #:registration-section-definition-list
                              #:registration-section-display-hints
                              #:registration-status #:registration-type
                              #:registration-type-definition
                              #:registration-type-definition-list
                              #:registration-type-display-hints
                              #:registration-type-filter
                              #:registration-type-filter-list
                              #:registration-type-filter-name
                              #:registration-type-list
                              #:registration-version-filter
                              #:registration-version-filter-list
                              #:registration-version-filter-name
                              #:registration-version-information
                              #:registration-version-information-list
                              #:registration-version-number
                              #:registration-version-number-list
                              #:registration-version-status
                              #:registration-version-status-history
                              #:release-phone-number #:release-sender-id
                              #:request-phone-number #:request-sender-id
                              #:requestable-number-type #:resource-id-or-arn
                              #:resource-policy #:resource-type #:section-path
                              #:section-path-list #:select-choice
                              #:select-choice-list #:select-option-description
                              #:select-option-descriptions-list
                              #:select-validation
                              #:send-destination-number-verification-code
                              #:send-media-message #:send-text-message
                              #:send-voice-message #:sender-id
                              #:sender-id-and-country #:sender-id-filter
                              #:sender-id-filter-list #:sender-id-filter-name
                              #:sender-id-information
                              #:sender-id-information-list #:sender-id-list
                              #:sender-id-or-arn
                              #:service-quota-exceeded-exception-reason
                              #:set-account-default-protect-configuration
                              #:set-default-message-feedback-enabled
                              #:set-default-message-type
                              #:set-default-sender-id
                              #:set-media-message-spend-limit-override
                              #:set-text-message-spend-limit-override
                              #:set-voice-message-spend-limit-override
                              #:sns-destination #:sns-topic-arn #:spend-limit
                              #:spend-limit-list #:spend-limit-name
                              #:string-list #:string-map
                              #:submit-registration-version
                              #:supported-association
                              #:supported-association-list #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:text-message-body
                              #:text-message-origination-identity
                              #:text-validation #:text-value #:time-to-live
                              #:two-way-channel-arn #:untag-resource
                              #:update-event-destination #:update-phone-number
                              #:update-pool #:update-protect-configuration
                              #:update-protect-configuration-country-rule-set
                              #:update-sender-id #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason
                              #:verification-channel #:verification-code
                              #:verification-message-origination-identity
                              #:verification-status
                              #:verified-destination-number-filter
                              #:verified-destination-number-filter-list
                              #:verified-destination-number-filter-name
                              #:verified-destination-number-id-list
                              #:verified-destination-number-id-or-arn
                              #:verified-destination-number-information
                              #:verified-destination-number-information-list
                              #:verify-destination-number #:voice-id
                              #:voice-message-body
                              #:voice-message-body-text-type
                              #:voice-message-origination-identity))
(common-lisp:in-package #:pira/pinpoint-sms-voice-v2)

(smithy/sdk/service:define-service pinpoint-smsvoice-v2 :shape-name
                                   "PinpointSMSVoiceV2" :version "2022-03-31"
                                   :title "Amazon Pinpoint SMS Voice V2"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Pinpoint SMS Voice V2")
                                      ("endpointPrefix" . "sms-voice")
                                      ("arnNamespace" . "sms-voice"))
                                     ("aws.auth#sigv4" ("name" . "sms-voice"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (reason :target-type
                                  access-denied-exception-reason :member-name
                                  "Reason"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type access-denied-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-attribute common-lisp:nil
                                    ((name :target-type account-attribute-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "AccountAttribute"))

(smithy/sdk/shapes:define-list account-attribute-list :member account-attribute)

(smithy/sdk/shapes:define-type account-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-limit common-lisp:nil
                                    ((name :target-type account-limit-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (used :target-type
                                      smithy/shapes/primitive-types:primitive-long
                                      :required common-lisp:t :member-name
                                      "Used")
                                     (max :target-type
                                      smithy/shapes/primitive-types:primitive-long
                                      :required common-lisp:t :member-name
                                      "Max"))
                                    (:shape-name "AccountLimit"))

(smithy/sdk/shapes:define-list account-limit-list :member account-limit)

(smithy/sdk/shapes:define-type account-limit-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-origination-identity-request
                                common-lisp:nil
                                ((pool-id :target-type pool-id-or-arn :required
                                  common-lisp:t :member-name "PoolId")
                                 (origination-identity :target-type
                                  phone-or-sender-id-or-arn :required
                                  common-lisp:t :member-name
                                  "OriginationIdentity")
                                 (iso-country-code :target-type
                                  iso-country-code :required common-lisp:t
                                  :member-name "IsoCountryCode")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "AssociateOriginationIdentityRequest"))

(smithy/sdk/shapes:define-output associate-origination-identity-result
                                 common-lisp:nil
                                 ((pool-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PoolArn")
                                  (pool-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PoolId")
                                  (origination-identity-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OriginationIdentityArn")
                                  (origination-identity :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OriginationIdentity")
                                  (iso-country-code :target-type
                                   iso-country-code :member-name
                                   "IsoCountryCode"))
                                 (:shape-name
                                  "AssociateOriginationIdentityResult"))

(smithy/sdk/shapes:define-input associate-protect-configuration-request
                                common-lisp:nil
                                ((protect-configuration-id :target-type
                                  protect-configuration-id-or-arn :required
                                  common-lisp:t :member-name
                                  "ProtectConfigurationId")
                                 (configuration-set-name :target-type
                                  configuration-set-name-or-arn :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName"))
                                (:shape-name
                                 "AssociateProtectConfigurationRequest"))

(smithy/sdk/shapes:define-output associate-protect-configuration-result
                                 common-lisp:nil
                                 ((configuration-set-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "ConfigurationSetArn")
                                  (configuration-set-name :target-type
                                   configuration-set-name :required
                                   common-lisp:t :member-name
                                   "ConfigurationSetName")
                                  (protect-configuration-arn :target-type
                                   protect-configuration-arn :required
                                   common-lisp:t :member-name
                                   "ProtectConfigurationArn")
                                  (protect-configuration-id :target-type
                                   protect-configuration-id :required
                                   common-lisp:t :member-name
                                   "ProtectConfigurationId"))
                                 (:shape-name
                                  "AssociateProtectConfigurationResult"))

(smithy/sdk/shapes:define-type attachment-body smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type attachment-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attachment-upload-error-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attachment-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-logs-destination
                                    common-lisp:nil
                                    ((iam-role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "IamRoleArn")
                                     (log-group-arn :target-type log-group-arn
                                      :required common-lisp:t :member-name
                                      "LogGroupArn"))
                                    (:shape-name "CloudWatchLogsDestination"))

(smithy/sdk/shapes:define-structure configuration-set-filter common-lisp:nil
                                    ((name :target-type
                                      configuration-set-filter-name :required
                                      common-lisp:t :member-name "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "ConfigurationSetFilter"))

(smithy/sdk/shapes:define-list configuration-set-filter-list :member
                               configuration-set-filter)

(smithy/sdk/shapes:define-type configuration-set-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configuration-set-information
                                    common-lisp:nil
                                    ((configuration-set-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ConfigurationSetArn")
                                     (configuration-set-name :target-type
                                      configuration-set-name :required
                                      common-lisp:t :member-name
                                      "ConfigurationSetName")
                                     (event-destinations :target-type
                                      event-destination-list :required
                                      common-lisp:t :member-name
                                      "EventDestinations")
                                     (default-message-type :target-type
                                      message-type :member-name
                                      "DefaultMessageType")
                                     (default-sender-id :target-type sender-id
                                      :member-name "DefaultSenderId")
                                     (default-message-feedback-enabled
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "DefaultMessageFeedbackEnabled")
                                     (created-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTimestamp")
                                     (protect-configuration-id :target-type
                                      protect-configuration-id-or-arn
                                      :member-name "ProtectConfigurationId"))
                                    (:shape-name "ConfigurationSetInformation"))

(smithy/sdk/shapes:define-list configuration-set-information-list :member
                               configuration-set-information)

(smithy/sdk/shapes:define-type configuration-set-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list configuration-set-name-list :member
                               configuration-set-name-or-arn)

(smithy/sdk/shapes:define-type configuration-set-name-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (reason :target-type conflict-exception-reason
                                  :member-name "Reason")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ResourceId"))
                                (:shape-name "ConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type conflict-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type context-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map context-map :key context-key :value context-value)

(smithy/sdk/shapes:define-type context-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-configuration-set-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateConfigurationSetRequest"))

(smithy/sdk/shapes:define-output create-configuration-set-result
                                 common-lisp:nil
                                 ((configuration-set-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ConfigurationSetArn")
                                  (configuration-set-name :target-type
                                   configuration-set-name :member-name
                                   "ConfigurationSetName")
                                  (tags :target-type tag-list :member-name
                                   "Tags")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "CreateConfigurationSetResult"))

(smithy/sdk/shapes:define-input create-event-destination-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name-or-arn :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName")
                                 (event-destination-name :target-type
                                  event-destination-name :required
                                  common-lisp:t :member-name
                                  "EventDestinationName")
                                 (matching-event-types :target-type
                                  event-type-list :required common-lisp:t
                                  :member-name "MatchingEventTypes")
                                 (cloud-watch-logs-destination :target-type
                                  cloud-watch-logs-destination :member-name
                                  "CloudWatchLogsDestination")
                                 (kinesis-firehose-destination :target-type
                                  kinesis-firehose-destination :member-name
                                  "KinesisFirehoseDestination")
                                 (sns-destination :target-type sns-destination
                                  :member-name "SnsDestination")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateEventDestinationRequest"))

(smithy/sdk/shapes:define-output create-event-destination-result
                                 common-lisp:nil
                                 ((configuration-set-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ConfigurationSetArn")
                                  (configuration-set-name :target-type
                                   configuration-set-name :member-name
                                   "ConfigurationSetName")
                                  (event-destination :target-type
                                   event-destination :member-name
                                   "EventDestination"))
                                 (:shape-name "CreateEventDestinationResult"))

(smithy/sdk/shapes:define-input create-opt-out-list-request common-lisp:nil
                                ((opt-out-list-name :target-type
                                  opt-out-list-name :required common-lisp:t
                                  :member-name "OptOutListName")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateOptOutListRequest"))

(smithy/sdk/shapes:define-output create-opt-out-list-result common-lisp:nil
                                 ((opt-out-list-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OptOutListArn")
                                  (opt-out-list-name :target-type
                                   opt-out-list-name :member-name
                                   "OptOutListName")
                                  (tags :target-type tag-list :member-name
                                   "Tags")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "CreateOptOutListResult"))

(smithy/sdk/shapes:define-input create-pool-request common-lisp:nil
                                ((origination-identity :target-type
                                  phone-or-sender-id-or-arn :required
                                  common-lisp:t :member-name
                                  "OriginationIdentity")
                                 (iso-country-code :target-type
                                  iso-country-code :required common-lisp:t
                                  :member-name "IsoCountryCode")
                                 (message-type :target-type message-type
                                  :required common-lisp:t :member-name
                                  "MessageType")
                                 (deletion-protection-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "DeletionProtectionEnabled")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreatePoolRequest"))

(smithy/sdk/shapes:define-output create-pool-result common-lisp:nil
                                 ((pool-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PoolArn")
                                  (pool-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PoolId")
                                  (status :target-type pool-status :member-name
                                   "Status")
                                  (message-type :target-type message-type
                                   :member-name "MessageType")
                                  (two-way-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "TwoWayEnabled")
                                  (two-way-channel-arn :target-type
                                   two-way-channel-arn :member-name
                                   "TwoWayChannelArn")
                                  (two-way-channel-role :target-type
                                   iam-role-arn :member-name
                                   "TwoWayChannelRole")
                                  (self-managed-opt-outs-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "SelfManagedOptOutsEnabled")
                                  (opt-out-list-name :target-type
                                   opt-out-list-name :member-name
                                   "OptOutListName")
                                  (shared-routes-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "SharedRoutesEnabled")
                                  (deletion-protection-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "DeletionProtectionEnabled")
                                  (tags :target-type tag-list :member-name
                                   "Tags")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "CreatePoolResult"))

(smithy/sdk/shapes:define-input create-protect-configuration-request
                                common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (deletion-protection-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "DeletionProtectionEnabled")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateProtectConfigurationRequest"))

(smithy/sdk/shapes:define-output create-protect-configuration-result
                                 common-lisp:nil
                                 ((protect-configuration-arn :target-type
                                   protect-configuration-arn :required
                                   common-lisp:t :member-name
                                   "ProtectConfigurationArn")
                                  (protect-configuration-id :target-type
                                   protect-configuration-id :required
                                   common-lisp:t :member-name
                                   "ProtectConfigurationId")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "CreatedTimestamp")
                                  (account-default :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :required common-lisp:t :member-name
                                   "AccountDefault")
                                  (deletion-protection-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :required common-lisp:t :member-name
                                   "DeletionProtectionEnabled")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name
                                  "CreateProtectConfigurationResult"))

(smithy/sdk/shapes:define-input create-registration-association-request
                                common-lisp:nil
                                ((registration-id :target-type
                                  registration-id-or-arn :required
                                  common-lisp:t :member-name "RegistrationId")
                                 (resource-id :target-type resource-id-or-arn
                                  :required common-lisp:t :member-name
                                  "ResourceId"))
                                (:shape-name
                                 "CreateRegistrationAssociationRequest"))

(smithy/sdk/shapes:define-output create-registration-association-result
                                 common-lisp:nil
                                 ((registration-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationArn")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "RegistrationId")
                                  (registration-type :target-type
                                   registration-type :required common-lisp:t
                                   :member-name "RegistrationType")
                                  (resource-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "ResourceArn")
                                  (resource-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "ResourceId")
                                  (resource-type :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "ResourceType")
                                  (iso-country-code :target-type
                                   iso-country-code :member-name
                                   "IsoCountryCode")
                                  (phone-number :target-type phone-number
                                   :member-name "PhoneNumber"))
                                 (:shape-name
                                  "CreateRegistrationAssociationResult"))

(smithy/sdk/shapes:define-input create-registration-attachment-request
                                common-lisp:nil
                                ((attachment-body :target-type attachment-body
                                  :member-name "AttachmentBody")
                                 (attachment-url :target-type attachment-url
                                  :member-name "AttachmentUrl")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "CreateRegistrationAttachmentRequest"))

(smithy/sdk/shapes:define-output create-registration-attachment-result
                                 common-lisp:nil
                                 ((registration-attachment-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationAttachmentArn")
                                  (registration-attachment-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationAttachmentId")
                                  (attachment-status :target-type
                                   attachment-status :required common-lisp:t
                                   :member-name "AttachmentStatus")
                                  (tags :target-type tag-list :member-name
                                   "Tags")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "CreatedTimestamp"))
                                 (:shape-name
                                  "CreateRegistrationAttachmentResult"))

(smithy/sdk/shapes:define-input create-registration-request common-lisp:nil
                                ((registration-type :target-type
                                  registration-type :required common-lisp:t
                                  :member-name "RegistrationType")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateRegistrationRequest"))

(smithy/sdk/shapes:define-output create-registration-result common-lisp:nil
                                 ((registration-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationArn")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "RegistrationId")
                                  (registration-type :target-type
                                   registration-type :required common-lisp:t
                                   :member-name "RegistrationType")
                                  (registration-status :target-type
                                   registration-status :required common-lisp:t
                                   :member-name "RegistrationStatus")
                                  (current-version-number :target-type
                                   registration-version-number :required
                                   common-lisp:t :member-name
                                   "CurrentVersionNumber")
                                  (additional-attributes :target-type
                                   string-map :member-name
                                   "AdditionalAttributes")
                                  (tags :target-type tag-list :member-name
                                   "Tags")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "CreatedTimestamp"))
                                 (:shape-name "CreateRegistrationResult"))

(smithy/sdk/shapes:define-input create-registration-version-request
                                common-lisp:nil
                                ((registration-id :target-type
                                  registration-id-or-arn :required
                                  common-lisp:t :member-name "RegistrationId"))
                                (:shape-name
                                 "CreateRegistrationVersionRequest"))

(smithy/sdk/shapes:define-output create-registration-version-result
                                 common-lisp:nil
                                 ((registration-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationArn")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "RegistrationId")
                                  (version-number :target-type
                                   registration-version-number :required
                                   common-lisp:t :member-name "VersionNumber")
                                  (registration-version-status :target-type
                                   registration-version-status :required
                                   common-lisp:t :member-name
                                   "RegistrationVersionStatus")
                                  (registration-version-status-history
                                   :target-type
                                   registration-version-status-history
                                   :required common-lisp:t :member-name
                                   "RegistrationVersionStatusHistory"))
                                 (:shape-name
                                  "CreateRegistrationVersionResult"))

(smithy/sdk/shapes:define-input create-verified-destination-number-request
                                common-lisp:nil
                                ((destination-phone-number :target-type
                                  phone-number :required common-lisp:t
                                  :member-name "DestinationPhoneNumber")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "CreateVerifiedDestinationNumberRequest"))

(smithy/sdk/shapes:define-output create-verified-destination-number-result
                                 common-lisp:nil
                                 ((verified-destination-number-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "VerifiedDestinationNumberArn")
                                  (verified-destination-number-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "VerifiedDestinationNumberId")
                                  (destination-phone-number :target-type
                                   phone-number :required common-lisp:t
                                   :member-name "DestinationPhoneNumber")
                                  (status :target-type verification-status
                                   :required common-lisp:t :member-name
                                   "Status")
                                  (tags :target-type tag-list :member-name
                                   "Tags")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "CreatedTimestamp"))
                                 (:shape-name
                                  "CreateVerifiedDestinationNumberResult"))

(smithy/sdk/shapes:define-input
 delete-account-default-protect-configuration-request common-lisp:nil
 common-lisp:nil
 (:shape-name "DeleteAccountDefaultProtectConfigurationRequest"))

(smithy/sdk/shapes:define-output
 delete-account-default-protect-configuration-result common-lisp:nil
 ((default-protect-configuration-arn :target-type protect-configuration-arn
   :required common-lisp:t :member-name "DefaultProtectConfigurationArn")
  (default-protect-configuration-id :target-type protect-configuration-id
   :required common-lisp:t :member-name "DefaultProtectConfigurationId"))
 (:shape-name "DeleteAccountDefaultProtectConfigurationResult"))

(smithy/sdk/shapes:define-input delete-configuration-set-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name-or-arn :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName"))
                                (:shape-name "DeleteConfigurationSetRequest"))

(smithy/sdk/shapes:define-output delete-configuration-set-result
                                 common-lisp:nil
                                 ((configuration-set-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ConfigurationSetArn")
                                  (configuration-set-name :target-type
                                   configuration-set-name :member-name
                                   "ConfigurationSetName")
                                  (event-destinations :target-type
                                   event-destination-list :member-name
                                   "EventDestinations")
                                  (default-message-type :target-type
                                   message-type :member-name
                                   "DefaultMessageType")
                                  (default-sender-id :target-type sender-id
                                   :member-name "DefaultSenderId")
                                  (default-message-feedback-enabled
                                   :target-type smithy/sdk/smithy-types:boolean
                                   :member-name
                                   "DefaultMessageFeedbackEnabled")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "DeleteConfigurationSetResult"))

(smithy/sdk/shapes:define-input delete-default-message-type-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name-or-arn :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName"))
                                (:shape-name "DeleteDefaultMessageTypeRequest"))

(smithy/sdk/shapes:define-output delete-default-message-type-result
                                 common-lisp:nil
                                 ((configuration-set-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ConfigurationSetArn")
                                  (configuration-set-name :target-type
                                   configuration-set-name :member-name
                                   "ConfigurationSetName")
                                  (message-type :target-type message-type
                                   :member-name "MessageType"))
                                 (:shape-name "DeleteDefaultMessageTypeResult"))

(smithy/sdk/shapes:define-input delete-default-sender-id-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name-or-arn :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName"))
                                (:shape-name "DeleteDefaultSenderIdRequest"))

(smithy/sdk/shapes:define-output delete-default-sender-id-result
                                 common-lisp:nil
                                 ((configuration-set-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ConfigurationSetArn")
                                  (configuration-set-name :target-type
                                   configuration-set-name :member-name
                                   "ConfigurationSetName")
                                  (sender-id :target-type sender-id
                                   :member-name "SenderId"))
                                 (:shape-name "DeleteDefaultSenderIdResult"))

(smithy/sdk/shapes:define-input delete-event-destination-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name-or-arn :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName")
                                 (event-destination-name :target-type
                                  event-destination-name :required
                                  common-lisp:t :member-name
                                  "EventDestinationName"))
                                (:shape-name "DeleteEventDestinationRequest"))

(smithy/sdk/shapes:define-output delete-event-destination-result
                                 common-lisp:nil
                                 ((configuration-set-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ConfigurationSetArn")
                                  (configuration-set-name :target-type
                                   configuration-set-name :member-name
                                   "ConfigurationSetName")
                                  (event-destination :target-type
                                   event-destination :member-name
                                   "EventDestination"))
                                 (:shape-name "DeleteEventDestinationResult"))

(smithy/sdk/shapes:define-input delete-keyword-request common-lisp:nil
                                ((origination-identity :target-type
                                  phone-or-pool-id-or-arn :required
                                  common-lisp:t :member-name
                                  "OriginationIdentity")
                                 (keyword :target-type keyword :required
                                  common-lisp:t :member-name "Keyword"))
                                (:shape-name "DeleteKeywordRequest"))

(smithy/sdk/shapes:define-output delete-keyword-result common-lisp:nil
                                 ((origination-identity-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OriginationIdentityArn")
                                  (origination-identity :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OriginationIdentity")
                                  (keyword :target-type keyword :member-name
                                   "Keyword")
                                  (keyword-message :target-type keyword-message
                                   :member-name "KeywordMessage")
                                  (keyword-action :target-type keyword-action
                                   :member-name "KeywordAction"))
                                 (:shape-name "DeleteKeywordResult"))

(smithy/sdk/shapes:define-input
 delete-media-message-spend-limit-override-request common-lisp:nil
 common-lisp:nil (:shape-name "DeleteMediaMessageSpendLimitOverrideRequest"))

(smithy/sdk/shapes:define-output
 delete-media-message-spend-limit-override-result common-lisp:nil
 ((monthly-limit :target-type monthly-limit :member-name "MonthlyLimit"))
 (:shape-name "DeleteMediaMessageSpendLimitOverrideResult"))

(smithy/sdk/shapes:define-input delete-opt-out-list-request common-lisp:nil
                                ((opt-out-list-name :target-type
                                  opt-out-list-name-or-arn :required
                                  common-lisp:t :member-name "OptOutListName"))
                                (:shape-name "DeleteOptOutListRequest"))

(smithy/sdk/shapes:define-output delete-opt-out-list-result common-lisp:nil
                                 ((opt-out-list-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OptOutListArn")
                                  (opt-out-list-name :target-type
                                   opt-out-list-name :member-name
                                   "OptOutListName")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "DeleteOptOutListResult"))

(smithy/sdk/shapes:define-input delete-opted-out-number-request common-lisp:nil
                                ((opt-out-list-name :target-type
                                  opt-out-list-name-or-arn :required
                                  common-lisp:t :member-name "OptOutListName")
                                 (opted-out-number :target-type phone-number
                                  :required common-lisp:t :member-name
                                  "OptedOutNumber"))
                                (:shape-name "DeleteOptedOutNumberRequest"))

(smithy/sdk/shapes:define-output delete-opted-out-number-result common-lisp:nil
                                 ((opt-out-list-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OptOutListArn")
                                  (opt-out-list-name :target-type
                                   opt-out-list-name :member-name
                                   "OptOutListName")
                                  (opted-out-number :target-type phone-number
                                   :member-name "OptedOutNumber")
                                  (opted-out-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "OptedOutTimestamp")
                                  (end-user-opted-out :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "EndUserOptedOut"))
                                 (:shape-name "DeleteOptedOutNumberResult"))

(smithy/sdk/shapes:define-input delete-pool-request common-lisp:nil
                                ((pool-id :target-type pool-id-or-arn :required
                                  common-lisp:t :member-name "PoolId"))
                                (:shape-name "DeletePoolRequest"))

(smithy/sdk/shapes:define-output delete-pool-result common-lisp:nil
                                 ((pool-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PoolArn")
                                  (pool-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PoolId")
                                  (status :target-type pool-status :member-name
                                   "Status")
                                  (message-type :target-type message-type
                                   :member-name "MessageType")
                                  (two-way-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "TwoWayEnabled")
                                  (two-way-channel-arn :target-type
                                   two-way-channel-arn :member-name
                                   "TwoWayChannelArn")
                                  (two-way-channel-role :target-type
                                   iam-role-arn :member-name
                                   "TwoWayChannelRole")
                                  (self-managed-opt-outs-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "SelfManagedOptOutsEnabled")
                                  (opt-out-list-name :target-type
                                   opt-out-list-name :member-name
                                   "OptOutListName")
                                  (shared-routes-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "SharedRoutesEnabled")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "DeletePoolResult"))

(smithy/sdk/shapes:define-input delete-protect-configuration-request
                                common-lisp:nil
                                ((protect-configuration-id :target-type
                                  protect-configuration-id-or-arn :required
                                  common-lisp:t :member-name
                                  "ProtectConfigurationId"))
                                (:shape-name
                                 "DeleteProtectConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-protect-configuration-result
                                 common-lisp:nil
                                 ((protect-configuration-arn :target-type
                                   protect-configuration-arn :required
                                   common-lisp:t :member-name
                                   "ProtectConfigurationArn")
                                  (protect-configuration-id :target-type
                                   protect-configuration-id :required
                                   common-lisp:t :member-name
                                   "ProtectConfigurationId")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "CreatedTimestamp")
                                  (account-default :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :required common-lisp:t :member-name
                                   "AccountDefault")
                                  (deletion-protection-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :required common-lisp:t :member-name
                                   "DeletionProtectionEnabled"))
                                 (:shape-name
                                  "DeleteProtectConfigurationResult"))

(smithy/sdk/shapes:define-input
 delete-protect-configuration-rule-set-number-override-request common-lisp:nil
 ((protect-configuration-id :target-type protect-configuration-id-or-arn
   :required common-lisp:t :member-name "ProtectConfigurationId")
  (destination-phone-number :target-type phone-number :required common-lisp:t
   :member-name "DestinationPhoneNumber"))
 (:shape-name "DeleteProtectConfigurationRuleSetNumberOverrideRequest"))

(smithy/sdk/shapes:define-output
 delete-protect-configuration-rule-set-number-override-result common-lisp:nil
 ((protect-configuration-arn :target-type protect-configuration-arn :required
   common-lisp:t :member-name "ProtectConfigurationArn")
  (protect-configuration-id :target-type protect-configuration-id :required
   common-lisp:t :member-name "ProtectConfigurationId")
  (destination-phone-number :target-type phone-number :required common-lisp:t
   :member-name "DestinationPhoneNumber")
  (created-timestamp :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "CreatedTimestamp")
  (action :target-type protect-configuration-rule-override-action :required
   common-lisp:t :member-name "Action")
  (iso-country-code :target-type iso-country-code :member-name
   "IsoCountryCode")
  (expiration-timestamp :target-type smithy/sdk/smithy-types:timestamp
   :member-name "ExpirationTimestamp"))
 (:shape-name "DeleteProtectConfigurationRuleSetNumberOverrideResult"))

(smithy/sdk/shapes:define-input delete-registration-attachment-request
                                common-lisp:nil
                                ((registration-attachment-id :target-type
                                  registration-attachment-id-or-arn :required
                                  common-lisp:t :member-name
                                  "RegistrationAttachmentId"))
                                (:shape-name
                                 "DeleteRegistrationAttachmentRequest"))

(smithy/sdk/shapes:define-output delete-registration-attachment-result
                                 common-lisp:nil
                                 ((registration-attachment-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationAttachmentArn")
                                  (registration-attachment-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationAttachmentId")
                                  (attachment-status :target-type
                                   attachment-status :required common-lisp:t
                                   :member-name "AttachmentStatus")
                                  (attachment-upload-error-reason :target-type
                                   attachment-upload-error-reason :member-name
                                   "AttachmentUploadErrorReason")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "CreatedTimestamp"))
                                 (:shape-name
                                  "DeleteRegistrationAttachmentResult"))

(smithy/sdk/shapes:define-input delete-registration-field-value-request
                                common-lisp:nil
                                ((registration-id :target-type
                                  registration-id-or-arn :required
                                  common-lisp:t :member-name "RegistrationId")
                                 (field-path :target-type field-path :required
                                  common-lisp:t :member-name "FieldPath"))
                                (:shape-name
                                 "DeleteRegistrationFieldValueRequest"))

(smithy/sdk/shapes:define-output delete-registration-field-value-result
                                 common-lisp:nil
                                 ((registration-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationArn")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "RegistrationId")
                                  (version-number :target-type
                                   registration-version-number :required
                                   common-lisp:t :member-name "VersionNumber")
                                  (field-path :target-type field-path :required
                                   common-lisp:t :member-name "FieldPath")
                                  (select-choices :target-type
                                   select-choice-list :member-name
                                   "SelectChoices")
                                  (text-value :target-type text-value
                                   :member-name "TextValue")
                                  (registration-attachment-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "RegistrationAttachmentId"))
                                 (:shape-name
                                  "DeleteRegistrationFieldValueResult"))

(smithy/sdk/shapes:define-input delete-registration-request common-lisp:nil
                                ((registration-id :target-type
                                  registration-id-or-arn :required
                                  common-lisp:t :member-name "RegistrationId"))
                                (:shape-name "DeleteRegistrationRequest"))

(smithy/sdk/shapes:define-output delete-registration-result common-lisp:nil
                                 ((registration-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationArn")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "RegistrationId")
                                  (registration-type :target-type
                                   registration-type :required common-lisp:t
                                   :member-name "RegistrationType")
                                  (registration-status :target-type
                                   registration-status :required common-lisp:t
                                   :member-name "RegistrationStatus")
                                  (current-version-number :target-type
                                   registration-version-number :required
                                   common-lisp:t :member-name
                                   "CurrentVersionNumber")
                                  (approved-version-number :target-type
                                   registration-version-number :member-name
                                   "ApprovedVersionNumber")
                                  (latest-denied-version-number :target-type
                                   registration-version-number :member-name
                                   "LatestDeniedVersionNumber")
                                  (additional-attributes :target-type
                                   string-map :member-name
                                   "AdditionalAttributes")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "CreatedTimestamp"))
                                 (:shape-name "DeleteRegistrationResult"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-output delete-resource-policy-result common-lisp:nil
                                 ((resource-arn :target-type
                                   amazon-resource-name :member-name
                                   "ResourceArn")
                                  (policy :target-type resource-policy
                                   :member-name "Policy")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "DeleteResourcePolicyResult"))

(smithy/sdk/shapes:define-input
 delete-text-message-spend-limit-override-request common-lisp:nil
 common-lisp:nil (:shape-name "DeleteTextMessageSpendLimitOverrideRequest"))

(smithy/sdk/shapes:define-output
 delete-text-message-spend-limit-override-result common-lisp:nil
 ((monthly-limit :target-type monthly-limit :member-name "MonthlyLimit"))
 (:shape-name "DeleteTextMessageSpendLimitOverrideResult"))

(smithy/sdk/shapes:define-input delete-verified-destination-number-request
                                common-lisp:nil
                                ((verified-destination-number-id :target-type
                                  verified-destination-number-id-or-arn
                                  :required common-lisp:t :member-name
                                  "VerifiedDestinationNumberId"))
                                (:shape-name
                                 "DeleteVerifiedDestinationNumberRequest"))

(smithy/sdk/shapes:define-output delete-verified-destination-number-result
                                 common-lisp:nil
                                 ((verified-destination-number-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "VerifiedDestinationNumberArn")
                                  (verified-destination-number-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "VerifiedDestinationNumberId")
                                  (destination-phone-number :target-type
                                   phone-number :required common-lisp:t
                                   :member-name "DestinationPhoneNumber")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "CreatedTimestamp"))
                                 (:shape-name
                                  "DeleteVerifiedDestinationNumberResult"))

(smithy/sdk/shapes:define-input
 delete-voice-message-spend-limit-override-request common-lisp:nil
 common-lisp:nil (:shape-name "DeleteVoiceMessageSpendLimitOverrideRequest"))

(smithy/sdk/shapes:define-output
 delete-voice-message-spend-limit-override-result common-lisp:nil
 ((monthly-limit :target-type monthly-limit :member-name "MonthlyLimit"))
 (:shape-name "DeleteVoiceMessageSpendLimitOverrideResult"))

(smithy/sdk/shapes:define-type delivery-stream-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input describe-account-attributes-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "DescribeAccountAttributesRequest"))

(smithy/sdk/shapes:define-output describe-account-attributes-result
                                 common-lisp:nil
                                 ((account-attributes :target-type
                                   account-attribute-list :member-name
                                   "AccountAttributes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeAccountAttributesResult"))

(smithy/sdk/shapes:define-input describe-account-limits-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "DescribeAccountLimitsRequest"))

(smithy/sdk/shapes:define-output describe-account-limits-result common-lisp:nil
                                 ((account-limits :target-type
                                   account-limit-list :member-name
                                   "AccountLimits")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeAccountLimitsResult"))

(smithy/sdk/shapes:define-input describe-configuration-sets-request
                                common-lisp:nil
                                ((configuration-set-names :target-type
                                  configuration-set-name-list :member-name
                                  "ConfigurationSetNames")
                                 (filters :target-type
                                  configuration-set-filter-list :member-name
                                  "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "DescribeConfigurationSetsRequest"))

(smithy/sdk/shapes:define-output describe-configuration-sets-result
                                 common-lisp:nil
                                 ((configuration-sets :target-type
                                   configuration-set-information-list
                                   :member-name "ConfigurationSets")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeConfigurationSetsResult"))

(smithy/sdk/shapes:define-input describe-keywords-request common-lisp:nil
                                ((origination-identity :target-type
                                  phone-or-pool-id-or-arn :required
                                  common-lisp:t :member-name
                                  "OriginationIdentity")
                                 (keywords :target-type keyword-list
                                  :member-name "Keywords")
                                 (filters :target-type keyword-filter-list
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "DescribeKeywordsRequest"))

(smithy/sdk/shapes:define-output describe-keywords-result common-lisp:nil
                                 ((origination-identity-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OriginationIdentityArn")
                                  (origination-identity :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OriginationIdentity")
                                  (keywords :target-type
                                   keyword-information-list :member-name
                                   "Keywords")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeKeywordsResult"))

(smithy/sdk/shapes:define-input describe-opt-out-lists-request common-lisp:nil
                                ((opt-out-list-names :target-type
                                  opt-out-list-name-list :member-name
                                  "OptOutListNames")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (owner :target-type owner :member-name
                                  "Owner"))
                                (:shape-name "DescribeOptOutListsRequest"))

(smithy/sdk/shapes:define-output describe-opt-out-lists-result common-lisp:nil
                                 ((opt-out-lists :target-type
                                   opt-out-list-information-list :member-name
                                   "OptOutLists")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeOptOutListsResult"))

(smithy/sdk/shapes:define-input describe-opted-out-numbers-request
                                common-lisp:nil
                                ((opt-out-list-name :target-type
                                  opt-out-list-name-or-arn :required
                                  common-lisp:t :member-name "OptOutListName")
                                 (opted-out-numbers :target-type
                                  opted-out-number-list :member-name
                                  "OptedOutNumbers")
                                 (filters :target-type opted-out-filter-list
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "DescribeOptedOutNumbersRequest"))

(smithy/sdk/shapes:define-output describe-opted-out-numbers-result
                                 common-lisp:nil
                                 ((opt-out-list-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OptOutListArn")
                                  (opt-out-list-name :target-type
                                   opt-out-list-name :member-name
                                   "OptOutListName")
                                  (opted-out-numbers :target-type
                                   opted-out-number-information-list
                                   :member-name "OptedOutNumbers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeOptedOutNumbersResult"))

(smithy/sdk/shapes:define-input describe-phone-numbers-request common-lisp:nil
                                ((phone-number-ids :target-type
                                  phone-number-id-list :member-name
                                  "PhoneNumberIds")
                                 (filters :target-type phone-number-filter-list
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (owner :target-type owner :member-name
                                  "Owner"))
                                (:shape-name "DescribePhoneNumbersRequest"))

(smithy/sdk/shapes:define-output describe-phone-numbers-result common-lisp:nil
                                 ((phone-numbers :target-type
                                   phone-number-information-list :member-name
                                   "PhoneNumbers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribePhoneNumbersResult"))

(smithy/sdk/shapes:define-input describe-pools-request common-lisp:nil
                                ((pool-ids :target-type pool-id-list
                                  :member-name "PoolIds")
                                 (filters :target-type pool-filter-list
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (owner :target-type owner :member-name
                                  "Owner"))
                                (:shape-name "DescribePoolsRequest"))

(smithy/sdk/shapes:define-output describe-pools-result common-lisp:nil
                                 ((pools :target-type pool-information-list
                                   :member-name "Pools")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribePoolsResult"))

(smithy/sdk/shapes:define-input describe-protect-configurations-request
                                common-lisp:nil
                                ((protect-configuration-ids :target-type
                                  protect-configuration-id-list :member-name
                                  "ProtectConfigurationIds")
                                 (filters :target-type
                                  protect-configuration-filter-list
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "DescribeProtectConfigurationsRequest"))

(smithy/sdk/shapes:define-output describe-protect-configurations-result
                                 common-lisp:nil
                                 ((protect-configurations :target-type
                                   protect-configuration-information-list
                                   :member-name "ProtectConfigurations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeProtectConfigurationsResult"))

(smithy/sdk/shapes:define-input describe-registration-attachments-request
                                common-lisp:nil
                                ((registration-attachment-ids :target-type
                                  registration-attachment-id-list :member-name
                                  "RegistrationAttachmentIds")
                                 (filters :target-type
                                  registration-attachment-filter-list
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "DescribeRegistrationAttachmentsRequest"))

(smithy/sdk/shapes:define-output describe-registration-attachments-result
                                 common-lisp:nil
                                 ((registration-attachments :target-type
                                   registration-attachments-information-list
                                   :required common-lisp:t :member-name
                                   "RegistrationAttachments")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeRegistrationAttachmentsResult"))

(smithy/sdk/shapes:define-input describe-registration-field-definitions-request
                                common-lisp:nil
                                ((registration-type :target-type
                                  registration-type :required common-lisp:t
                                  :member-name "RegistrationType")
                                 (section-path :target-type section-path
                                  :member-name "SectionPath")
                                 (field-paths :target-type field-path-list
                                  :member-name "FieldPaths")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "DescribeRegistrationFieldDefinitionsRequest"))

(smithy/sdk/shapes:define-output describe-registration-field-definitions-result
                                 common-lisp:nil
                                 ((registration-type :target-type
                                   registration-type :required common-lisp:t
                                   :member-name "RegistrationType")
                                  (registration-field-definitions :target-type
                                   registration-field-definition-list :required
                                   common-lisp:t :member-name
                                   "RegistrationFieldDefinitions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeRegistrationFieldDefinitionsResult"))

(smithy/sdk/shapes:define-input describe-registration-field-values-request
                                common-lisp:nil
                                ((registration-id :target-type
                                  registration-id-or-arn :required
                                  common-lisp:t :member-name "RegistrationId")
                                 (version-number :target-type
                                  registration-version-number :member-name
                                  "VersionNumber")
                                 (section-path :target-type section-path
                                  :member-name "SectionPath")
                                 (field-paths :target-type field-path-list
                                  :member-name "FieldPaths")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "DescribeRegistrationFieldValuesRequest"))

(smithy/sdk/shapes:define-output describe-registration-field-values-result
                                 common-lisp:nil
                                 ((registration-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationArn")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "RegistrationId")
                                  (version-number :target-type
                                   registration-version-number :required
                                   common-lisp:t :member-name "VersionNumber")
                                  (registration-field-values :target-type
                                   registration-field-value-information-list
                                   :required common-lisp:t :member-name
                                   "RegistrationFieldValues")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeRegistrationFieldValuesResult"))

(smithy/sdk/shapes:define-input
 describe-registration-section-definitions-request common-lisp:nil
 ((registration-type :target-type registration-type :required common-lisp:t
   :member-name "RegistrationType")
  (section-paths :target-type section-path-list :member-name "SectionPaths")
  (next-token :target-type next-token :member-name "NextToken")
  (max-results :target-type max-results :member-name "MaxResults"))
 (:shape-name "DescribeRegistrationSectionDefinitionsRequest"))

(smithy/sdk/shapes:define-output
 describe-registration-section-definitions-result common-lisp:nil
 ((registration-type :target-type registration-type :required common-lisp:t
   :member-name "RegistrationType")
  (registration-section-definitions :target-type
   registration-section-definition-list :required common-lisp:t :member-name
   "RegistrationSectionDefinitions")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "DescribeRegistrationSectionDefinitionsResult"))

(smithy/sdk/shapes:define-input describe-registration-type-definitions-request
                                common-lisp:nil
                                ((registration-types :target-type
                                  registration-type-list :member-name
                                  "RegistrationTypes")
                                 (filters :target-type
                                  registration-type-filter-list :member-name
                                  "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "DescribeRegistrationTypeDefinitionsRequest"))

(smithy/sdk/shapes:define-output describe-registration-type-definitions-result
                                 common-lisp:nil
                                 ((registration-type-definitions :target-type
                                   registration-type-definition-list :required
                                   common-lisp:t :member-name
                                   "RegistrationTypeDefinitions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeRegistrationTypeDefinitionsResult"))

(smithy/sdk/shapes:define-input describe-registration-versions-request
                                common-lisp:nil
                                ((registration-id :target-type
                                  registration-id-or-arn :required
                                  common-lisp:t :member-name "RegistrationId")
                                 (version-numbers :target-type
                                  registration-version-number-list :member-name
                                  "VersionNumbers")
                                 (filters :target-type
                                  registration-version-filter-list :member-name
                                  "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "DescribeRegistrationVersionsRequest"))

(smithy/sdk/shapes:define-output describe-registration-versions-result
                                 common-lisp:nil
                                 ((registration-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationArn")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "RegistrationId")
                                  (registration-versions :target-type
                                   registration-version-information-list
                                   :required common-lisp:t :member-name
                                   "RegistrationVersions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeRegistrationVersionsResult"))

(smithy/sdk/shapes:define-input describe-registrations-request common-lisp:nil
                                ((registration-ids :target-type
                                  registration-id-list :member-name
                                  "RegistrationIds")
                                 (filters :target-type registration-filter-list
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "DescribeRegistrationsRequest"))

(smithy/sdk/shapes:define-output describe-registrations-result common-lisp:nil
                                 ((registrations :target-type
                                   registration-information-list :required
                                   common-lisp:t :member-name "Registrations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeRegistrationsResult"))

(smithy/sdk/shapes:define-input describe-sender-ids-request common-lisp:nil
                                ((sender-ids :target-type sender-id-list
                                  :member-name "SenderIds")
                                 (filters :target-type sender-id-filter-list
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (owner :target-type owner :member-name
                                  "Owner"))
                                (:shape-name "DescribeSenderIdsRequest"))

(smithy/sdk/shapes:define-output describe-sender-ids-result common-lisp:nil
                                 ((sender-ids :target-type
                                   sender-id-information-list :member-name
                                   "SenderIds")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeSenderIdsResult"))

(smithy/sdk/shapes:define-input describe-spend-limits-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "DescribeSpendLimitsRequest"))

(smithy/sdk/shapes:define-output describe-spend-limits-result common-lisp:nil
                                 ((spend-limits :target-type spend-limit-list
                                   :member-name "SpendLimits")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeSpendLimitsResult"))

(smithy/sdk/shapes:define-input describe-verified-destination-numbers-request
                                common-lisp:nil
                                ((verified-destination-number-ids :target-type
                                  verified-destination-number-id-list
                                  :member-name "VerifiedDestinationNumberIds")
                                 (destination-phone-numbers :target-type
                                  destination-phone-number-list :member-name
                                  "DestinationPhoneNumbers")
                                 (filters :target-type
                                  verified-destination-number-filter-list
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "DescribeVerifiedDestinationNumbersRequest"))

(smithy/sdk/shapes:define-output describe-verified-destination-numbers-result
                                 common-lisp:nil
                                 ((verified-destination-numbers :target-type
                                   verified-destination-number-information-list
                                   :required common-lisp:t :member-name
                                   "VerifiedDestinationNumbers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeVerifiedDestinationNumbersResult"))

(smithy/sdk/shapes:define-type destination-country-parameter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type destination-country-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map destination-country-parameters :key
                              destination-country-parameter-key :value
                              destination-country-parameter-value)

(smithy/sdk/shapes:define-list destination-phone-number-list :member
                               phone-number)

(smithy/sdk/shapes:define-input disassociate-origination-identity-request
                                common-lisp:nil
                                ((pool-id :target-type pool-id-or-arn :required
                                  common-lisp:t :member-name "PoolId")
                                 (origination-identity :target-type
                                  phone-or-sender-id-or-arn :required
                                  common-lisp:t :member-name
                                  "OriginationIdentity")
                                 (iso-country-code :target-type
                                  iso-country-code :required common-lisp:t
                                  :member-name "IsoCountryCode")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "DisassociateOriginationIdentityRequest"))

(smithy/sdk/shapes:define-output disassociate-origination-identity-result
                                 common-lisp:nil
                                 ((pool-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PoolArn")
                                  (pool-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PoolId")
                                  (origination-identity-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OriginationIdentityArn")
                                  (origination-identity :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OriginationIdentity")
                                  (iso-country-code :target-type
                                   iso-country-code :member-name
                                   "IsoCountryCode"))
                                 (:shape-name
                                  "DisassociateOriginationIdentityResult"))

(smithy/sdk/shapes:define-input disassociate-protect-configuration-request
                                common-lisp:nil
                                ((protect-configuration-id :target-type
                                  protect-configuration-id-or-arn :required
                                  common-lisp:t :member-name
                                  "ProtectConfigurationId")
                                 (configuration-set-name :target-type
                                  configuration-set-name-or-arn :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName"))
                                (:shape-name
                                 "DisassociateProtectConfigurationRequest"))

(smithy/sdk/shapes:define-output disassociate-protect-configuration-result
                                 common-lisp:nil
                                 ((configuration-set-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "ConfigurationSetArn")
                                  (configuration-set-name :target-type
                                   configuration-set-name :required
                                   common-lisp:t :member-name
                                   "ConfigurationSetName")
                                  (protect-configuration-arn :target-type
                                   protect-configuration-arn :required
                                   common-lisp:t :member-name
                                   "ProtectConfigurationArn")
                                  (protect-configuration-id :target-type
                                   protect-configuration-id :required
                                   common-lisp:t :member-name
                                   "ProtectConfigurationId"))
                                 (:shape-name
                                  "DisassociateProtectConfigurationResult"))

(smithy/sdk/shapes:define-input discard-registration-version-request
                                common-lisp:nil
                                ((registration-id :target-type
                                  registration-id-or-arn :required
                                  common-lisp:t :member-name "RegistrationId"))
                                (:shape-name
                                 "DiscardRegistrationVersionRequest"))

(smithy/sdk/shapes:define-output discard-registration-version-result
                                 common-lisp:nil
                                 ((registration-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationArn")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "RegistrationId")
                                  (version-number :target-type
                                   registration-version-number :required
                                   common-lisp:t :member-name "VersionNumber")
                                  (registration-version-status :target-type
                                   registration-version-status :required
                                   common-lisp:t :member-name
                                   "RegistrationVersionStatus")
                                  (registration-version-status-history
                                   :target-type
                                   registration-version-status-history
                                   :required common-lisp:t :member-name
                                   "RegistrationVersionStatusHistory"))
                                 (:shape-name
                                  "DiscardRegistrationVersionResult"))

(smithy/sdk/shapes:define-structure event-destination common-lisp:nil
                                    ((event-destination-name :target-type
                                      event-destination-name :required
                                      common-lisp:t :member-name
                                      "EventDestinationName")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (matching-event-types :target-type
                                      event-type-list :required common-lisp:t
                                      :member-name "MatchingEventTypes")
                                     (cloud-watch-logs-destination :target-type
                                      cloud-watch-logs-destination :member-name
                                      "CloudWatchLogsDestination")
                                     (kinesis-firehose-destination :target-type
                                      kinesis-firehose-destination :member-name
                                      "KinesisFirehoseDestination")
                                     (sns-destination :target-type
                                      sns-destination :member-name
                                      "SnsDestination"))
                                    (:shape-name "EventDestination"))

(smithy/sdk/shapes:define-list event-destination-list :member event-destination)

(smithy/sdk/shapes:define-type event-destination-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-type-list :member event-type)

(smithy/sdk/shapes:define-type field-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list field-path-list :member field-path)

(smithy/sdk/shapes:define-type field-requirement smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type field-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-value-list :member filter-value)

(smithy/sdk/shapes:define-input
 get-protect-configuration-country-rule-set-request common-lisp:nil
 ((protect-configuration-id :target-type protect-configuration-id-or-arn
   :required common-lisp:t :member-name "ProtectConfigurationId")
  (number-capability :target-type number-capability :required common-lisp:t
   :member-name "NumberCapability"))
 (:shape-name "GetProtectConfigurationCountryRuleSetRequest"))

(smithy/sdk/shapes:define-output
 get-protect-configuration-country-rule-set-result common-lisp:nil
 ((protect-configuration-arn :target-type protect-configuration-arn :required
   common-lisp:t :member-name "ProtectConfigurationArn")
  (protect-configuration-id :target-type protect-configuration-id :required
   common-lisp:t :member-name "ProtectConfigurationId")
  (number-capability :target-type number-capability :required common-lisp:t
   :member-name "NumberCapability")
  (country-rule-set :target-type protect-configuration-country-rule-set
   :required common-lisp:t :member-name "CountryRuleSet"))
 (:shape-name "GetProtectConfigurationCountryRuleSetResult"))

(smithy/sdk/shapes:define-input get-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn"))
                                (:shape-name "GetResourcePolicyRequest"))

(smithy/sdk/shapes:define-output get-resource-policy-result common-lisp:nil
                                 ((resource-arn :target-type
                                   amazon-resource-name :member-name
                                   "ResourceArn")
                                  (policy :target-type resource-policy
                                   :member-name "Policy")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "GetResourcePolicyResult"))

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (request-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "RequestId"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type iso-country-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type keyword smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type keyword-action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure keyword-filter common-lisp:nil
                                    ((name :target-type keyword-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "KeywordFilter"))

(smithy/sdk/shapes:define-list keyword-filter-list :member keyword-filter)

(smithy/sdk/shapes:define-type keyword-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure keyword-information common-lisp:nil
                                    ((keyword :target-type keyword :required
                                      common-lisp:t :member-name "Keyword")
                                     (keyword-message :target-type
                                      keyword-message :required common-lisp:t
                                      :member-name "KeywordMessage")
                                     (keyword-action :target-type
                                      keyword-action :required common-lisp:t
                                      :member-name "KeywordAction"))
                                    (:shape-name "KeywordInformation"))

(smithy/sdk/shapes:define-list keyword-information-list :member
                               keyword-information)

(smithy/sdk/shapes:define-list keyword-list :member keyword)

(smithy/sdk/shapes:define-type keyword-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kinesis-firehose-destination
                                    common-lisp:nil
                                    ((iam-role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "IamRoleArn")
                                     (delivery-stream-arn :target-type
                                      delivery-stream-arn :required
                                      common-lisp:t :member-name
                                      "DeliveryStreamArn"))
                                    (:shape-name "KinesisFirehoseDestination"))

(smithy/sdk/shapes:define-type language-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-pool-origination-identities-request
                                common-lisp:nil
                                ((pool-id :target-type pool-id-or-arn :required
                                  common-lisp:t :member-name "PoolId")
                                 (filters :target-type
                                  pool-origination-identities-filter-list
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListPoolOriginationIdentitiesRequest"))

(smithy/sdk/shapes:define-output list-pool-origination-identities-result
                                 common-lisp:nil
                                 ((pool-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PoolArn")
                                  (pool-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PoolId")
                                  (origination-identities :target-type
                                   origination-identity-metadata-list
                                   :member-name "OriginationIdentities")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListPoolOriginationIdentitiesResult"))

(smithy/sdk/shapes:define-list
 list-protect-configuration-rule-set-number-override-filter :member
 protect-configuration-rule-set-number-override-filter-item)

(smithy/sdk/shapes:define-input
 list-protect-configuration-rule-set-number-overrides-request common-lisp:nil
 ((protect-configuration-id :target-type protect-configuration-id-or-arn
   :required common-lisp:t :member-name "ProtectConfigurationId")
  (filters :target-type
   list-protect-configuration-rule-set-number-override-filter :member-name
   "Filters")
  (next-token :target-type next-token :member-name "NextToken")
  (max-results :target-type max-results :member-name "MaxResults"))
 (:shape-name "ListProtectConfigurationRuleSetNumberOverridesRequest"))

(smithy/sdk/shapes:define-output
 list-protect-configuration-rule-set-number-overrides-result common-lisp:nil
 ((protect-configuration-arn :target-type protect-configuration-arn :required
   common-lisp:t :member-name "ProtectConfigurationArn")
  (protect-configuration-id :target-type protect-configuration-id :required
   common-lisp:t :member-name "ProtectConfigurationId")
  (rule-set-number-overrides :target-type
   protect-configuration-rule-set-number-override-list :member-name
   "RuleSetNumberOverrides")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListProtectConfigurationRuleSetNumberOverridesResult"))

(smithy/sdk/shapes:define-input list-registration-associations-request
                                common-lisp:nil
                                ((registration-id :target-type
                                  registration-id-or-arn :required
                                  common-lisp:t :member-name "RegistrationId")
                                 (filters :target-type
                                  registration-association-filter-list
                                  :member-name "Filters")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListRegistrationAssociationsRequest"))

(smithy/sdk/shapes:define-output list-registration-associations-result
                                 common-lisp:nil
                                 ((registration-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationArn")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "RegistrationId")
                                  (registration-type :target-type
                                   registration-type :required common-lisp:t
                                   :member-name "RegistrationType")
                                  (registration-associations :target-type
                                   registration-association-metadata-list
                                   :required common-lisp:t :member-name
                                   "RegistrationAssociations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListRegistrationAssociationsResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-result common-lisp:nil
                                 ((resource-arn :target-type
                                   amazon-resource-name :member-name
                                   "ResourceArn")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResult"))

(smithy/sdk/shapes:define-type log-group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-price smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type media-message-origination-identity
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list media-url-list :member media-url-value)

(smithy/sdk/shapes:define-type media-url-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-feedback-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list message-type-list :member message-type)

(smithy/sdk/shapes:define-type monthly-limit smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list non-empty-tag-list :member tag)

(smithy/sdk/shapes:define-type number-capability smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list number-capability-list :member number-capability)

(smithy/sdk/shapes:define-type number-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type number-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure opt-out-list-information common-lisp:nil
                                    ((opt-out-list-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "OptOutListArn")
                                     (opt-out-list-name :target-type
                                      opt-out-list-name :required common-lisp:t
                                      :member-name "OptOutListName")
                                     (created-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTimestamp"))
                                    (:shape-name "OptOutListInformation"))

(smithy/sdk/shapes:define-list opt-out-list-information-list :member
                               opt-out-list-information)

(smithy/sdk/shapes:define-type opt-out-list-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list opt-out-list-name-list :member
                               opt-out-list-name-or-arn)

(smithy/sdk/shapes:define-type opt-out-list-name-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure opted-out-filter common-lisp:nil
                                    ((name :target-type opted-out-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "OptedOutFilter"))

(smithy/sdk/shapes:define-list opted-out-filter-list :member opted-out-filter)

(smithy/sdk/shapes:define-type opted-out-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure opted-out-number-information
                                    common-lisp:nil
                                    ((opted-out-number :target-type
                                      phone-number :required common-lisp:t
                                      :member-name "OptedOutNumber")
                                     (opted-out-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "OptedOutTimestamp")
                                     (end-user-opted-out :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "EndUserOptedOut"))
                                    (:shape-name "OptedOutNumberInformation"))

(smithy/sdk/shapes:define-list opted-out-number-information-list :member
                               opted-out-number-information)

(smithy/sdk/shapes:define-list opted-out-number-list :member phone-number)

(smithy/sdk/shapes:define-structure origination-identity-metadata
                                    common-lisp:nil
                                    ((origination-identity-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "OriginationIdentityArn")
                                     (origination-identity :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "OriginationIdentity")
                                     (iso-country-code :target-type
                                      iso-country-code :required common-lisp:t
                                      :member-name "IsoCountryCode")
                                     (number-capabilities :target-type
                                      number-capability-list :required
                                      common-lisp:t :member-name
                                      "NumberCapabilities")
                                     (phone-number :target-type phone-number
                                      :member-name "PhoneNumber"))
                                    (:shape-name "OriginationIdentityMetadata"))

(smithy/sdk/shapes:define-list origination-identity-metadata-list :member
                               origination-identity-metadata)

(smithy/sdk/shapes:define-type owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type phone-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure phone-number-filter common-lisp:nil
                                    ((name :target-type
                                      phone-number-filter-name :required
                                      common-lisp:t :member-name "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "PhoneNumberFilter"))

(smithy/sdk/shapes:define-list phone-number-filter-list :member
                               phone-number-filter)

(smithy/sdk/shapes:define-type phone-number-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list phone-number-id-list :member
                               phone-number-id-or-arn)

(smithy/sdk/shapes:define-type phone-number-id-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure phone-number-information common-lisp:nil
                                    ((phone-number-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "PhoneNumberArn")
                                     (phone-number-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PhoneNumberId")
                                     (phone-number :target-type phone-number
                                      :required common-lisp:t :member-name
                                      "PhoneNumber")
                                     (status :target-type number-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (iso-country-code :target-type
                                      iso-country-code :required common-lisp:t
                                      :member-name "IsoCountryCode")
                                     (message-type :target-type message-type
                                      :required common-lisp:t :member-name
                                      "MessageType")
                                     (number-capabilities :target-type
                                      number-capability-list :required
                                      common-lisp:t :member-name
                                      "NumberCapabilities")
                                     (number-type :target-type number-type
                                      :required common-lisp:t :member-name
                                      "NumberType")
                                     (monthly-leasing-price :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "MonthlyLeasingPrice")
                                     (two-way-enabled :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "TwoWayEnabled")
                                     (two-way-channel-arn :target-type
                                      two-way-channel-arn :member-name
                                      "TwoWayChannelArn")
                                     (two-way-channel-role :target-type
                                      iam-role-arn :member-name
                                      "TwoWayChannelRole")
                                     (self-managed-opt-outs-enabled
                                      :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "SelfManagedOptOutsEnabled")
                                     (opt-out-list-name :target-type
                                      opt-out-list-name :required common-lisp:t
                                      :member-name "OptOutListName")
                                     (deletion-protection-enabled :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "DeletionProtectionEnabled")
                                     (pool-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "PoolId")
                                     (registration-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "RegistrationId")
                                     (created-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTimestamp"))
                                    (:shape-name "PhoneNumberInformation"))

(smithy/sdk/shapes:define-list phone-number-information-list :member
                               phone-number-information)

(smithy/sdk/shapes:define-type phone-or-pool-id-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type phone-or-sender-id-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pool-filter common-lisp:nil
                                    ((name :target-type pool-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "PoolFilter"))

(smithy/sdk/shapes:define-list pool-filter-list :member pool-filter)

(smithy/sdk/shapes:define-type pool-filter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pool-id-list :member pool-id-or-arn)

(smithy/sdk/shapes:define-type pool-id-or-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pool-information common-lisp:nil
                                    ((pool-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "PoolArn")
                                     (pool-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "PoolId")
                                     (status :target-type pool-status :required
                                      common-lisp:t :member-name "Status")
                                     (message-type :target-type message-type
                                      :required common-lisp:t :member-name
                                      "MessageType")
                                     (two-way-enabled :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "TwoWayEnabled")
                                     (two-way-channel-arn :target-type
                                      two-way-channel-arn :member-name
                                      "TwoWayChannelArn")
                                     (two-way-channel-role :target-type
                                      iam-role-arn :member-name
                                      "TwoWayChannelRole")
                                     (self-managed-opt-outs-enabled
                                      :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "SelfManagedOptOutsEnabled")
                                     (opt-out-list-name :target-type
                                      opt-out-list-name :required common-lisp:t
                                      :member-name "OptOutListName")
                                     (shared-routes-enabled :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "SharedRoutesEnabled")
                                     (deletion-protection-enabled :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "DeletionProtectionEnabled")
                                     (created-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTimestamp"))
                                    (:shape-name "PoolInformation"))

(smithy/sdk/shapes:define-list pool-information-list :member pool-information)

(smithy/sdk/shapes:define-structure pool-origination-identities-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      pool-origination-identities-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name
                                     "PoolOriginationIdentitiesFilter"))

(smithy/sdk/shapes:define-list pool-origination-identities-filter-list :member
                               pool-origination-identities-filter)

(smithy/sdk/shapes:define-type pool-origination-identities-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pool-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type protect-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map protect-configuration-country-rule-set :key
                              iso-country-code :value
                              protect-configuration-country-rule-set-information)

(smithy/sdk/shapes:define-structure
 protect-configuration-country-rule-set-information common-lisp:nil
 ((protect-status :target-type protect-status :required common-lisp:t
   :member-name "ProtectStatus"))
 (:shape-name "ProtectConfigurationCountryRuleSetInformation"))

(smithy/sdk/shapes:define-structure protect-configuration-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      protect-configuration-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "ProtectConfigurationFilter"))

(smithy/sdk/shapes:define-list protect-configuration-filter-list :member
                               protect-configuration-filter)

(smithy/sdk/shapes:define-type protect-configuration-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type protect-configuration-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list protect-configuration-id-list :member
                               protect-configuration-id-or-arn)

(smithy/sdk/shapes:define-type protect-configuration-id-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure protect-configuration-information
                                    common-lisp:nil
                                    ((protect-configuration-arn :target-type
                                      protect-configuration-arn :required
                                      common-lisp:t :member-name
                                      "ProtectConfigurationArn")
                                     (protect-configuration-id :target-type
                                      protect-configuration-id :required
                                      common-lisp:t :member-name
                                      "ProtectConfigurationId")
                                     (created-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTimestamp")
                                     (account-default :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "AccountDefault")
                                     (deletion-protection-enabled :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "DeletionProtectionEnabled"))
                                    (:shape-name
                                     "ProtectConfigurationInformation"))

(smithy/sdk/shapes:define-list protect-configuration-information-list :member
                               protect-configuration-information)

(smithy/sdk/shapes:define-type protect-configuration-rule-override-action
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 protect-configuration-rule-set-number-override common-lisp:nil
 ((destination-phone-number :target-type phone-number :required common-lisp:t
   :member-name "DestinationPhoneNumber")
  (created-timestamp :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "CreatedTimestamp")
  (action :target-type protect-configuration-rule-override-action :required
   common-lisp:t :member-name "Action")
  (iso-country-code :target-type iso-country-code :member-name
   "IsoCountryCode")
  (expiration-timestamp :target-type smithy/sdk/smithy-types:timestamp
   :member-name "ExpirationTimestamp"))
 (:shape-name "ProtectConfigurationRuleSetNumberOverride"))

(smithy/sdk/shapes:define-structure
 protect-configuration-rule-set-number-override-filter-item common-lisp:nil
 ((name :target-type protect-configuration-rule-set-number-override-filter-name
   :required common-lisp:t :member-name "Name")
  (values :target-type filter-value-list :required common-lisp:t :member-name
   "Values"))
 (:shape-name "ProtectConfigurationRuleSetNumberOverrideFilterItem"))

(smithy/sdk/shapes:define-type
 protect-configuration-rule-set-number-override-filter-name
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list
 protect-configuration-rule-set-number-override-list :member
 protect-configuration-rule-set-number-override)

(smithy/sdk/shapes:define-type protect-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-keyword-request common-lisp:nil
                                ((origination-identity :target-type
                                  phone-or-pool-id-or-arn :required
                                  common-lisp:t :member-name
                                  "OriginationIdentity")
                                 (keyword :target-type keyword :required
                                  common-lisp:t :member-name "Keyword")
                                 (keyword-message :target-type keyword-message
                                  :required common-lisp:t :member-name
                                  "KeywordMessage")
                                 (keyword-action :target-type keyword-action
                                  :member-name "KeywordAction"))
                                (:shape-name "PutKeywordRequest"))

(smithy/sdk/shapes:define-output put-keyword-result common-lisp:nil
                                 ((origination-identity-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OriginationIdentityArn")
                                  (origination-identity :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OriginationIdentity")
                                  (keyword :target-type keyword :member-name
                                   "Keyword")
                                  (keyword-message :target-type keyword-message
                                   :member-name "KeywordMessage")
                                  (keyword-action :target-type keyword-action
                                   :member-name "KeywordAction"))
                                 (:shape-name "PutKeywordResult"))

(smithy/sdk/shapes:define-input put-message-feedback-request common-lisp:nil
                                ((message-id :target-type message-id :required
                                  common-lisp:t :member-name "MessageId")
                                 (message-feedback-status :target-type
                                  message-feedback-status :required
                                  common-lisp:t :member-name
                                  "MessageFeedbackStatus"))
                                (:shape-name "PutMessageFeedbackRequest"))

(smithy/sdk/shapes:define-output put-message-feedback-result common-lisp:nil
                                 ((message-id :target-type message-id :required
                                   common-lisp:t :member-name "MessageId")
                                  (message-feedback-status :target-type
                                   message-feedback-status :required
                                   common-lisp:t :member-name
                                   "MessageFeedbackStatus"))
                                 (:shape-name "PutMessageFeedbackResult"))

(smithy/sdk/shapes:define-input put-opted-out-number-request common-lisp:nil
                                ((opt-out-list-name :target-type
                                  opt-out-list-name-or-arn :required
                                  common-lisp:t :member-name "OptOutListName")
                                 (opted-out-number :target-type phone-number
                                  :required common-lisp:t :member-name
                                  "OptedOutNumber"))
                                (:shape-name "PutOptedOutNumberRequest"))

(smithy/sdk/shapes:define-output put-opted-out-number-result common-lisp:nil
                                 ((opt-out-list-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "OptOutListArn")
                                  (opt-out-list-name :target-type
                                   opt-out-list-name :member-name
                                   "OptOutListName")
                                  (opted-out-number :target-type phone-number
                                   :member-name "OptedOutNumber")
                                  (opted-out-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "OptedOutTimestamp")
                                  (end-user-opted-out :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "EndUserOptedOut"))
                                 (:shape-name "PutOptedOutNumberResult"))

(smithy/sdk/shapes:define-input
 put-protect-configuration-rule-set-number-override-request common-lisp:nil
 ((client-token :target-type client-token :member-name "ClientToken")
  (protect-configuration-id :target-type protect-configuration-id-or-arn
   :required common-lisp:t :member-name "ProtectConfigurationId")
  (destination-phone-number :target-type phone-number :required common-lisp:t
   :member-name "DestinationPhoneNumber")
  (action :target-type protect-configuration-rule-override-action :required
   common-lisp:t :member-name "Action")
  (expiration-timestamp :target-type smithy/sdk/smithy-types:timestamp
   :member-name "ExpirationTimestamp"))
 (:shape-name "PutProtectConfigurationRuleSetNumberOverrideRequest"))

(smithy/sdk/shapes:define-output
 put-protect-configuration-rule-set-number-override-result common-lisp:nil
 ((protect-configuration-arn :target-type protect-configuration-arn :required
   common-lisp:t :member-name "ProtectConfigurationArn")
  (protect-configuration-id :target-type protect-configuration-id :required
   common-lisp:t :member-name "ProtectConfigurationId")
  (destination-phone-number :target-type phone-number :required common-lisp:t
   :member-name "DestinationPhoneNumber")
  (created-timestamp :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "CreatedTimestamp")
  (action :target-type protect-configuration-rule-override-action :required
   common-lisp:t :member-name "Action")
  (iso-country-code :target-type iso-country-code :member-name
   "IsoCountryCode")
  (expiration-timestamp :target-type smithy/sdk/smithy-types:timestamp
   :member-name "ExpirationTimestamp"))
 (:shape-name "PutProtectConfigurationRuleSetNumberOverrideResult"))

(smithy/sdk/shapes:define-input put-registration-field-value-request
                                common-lisp:nil
                                ((registration-id :target-type
                                  registration-id-or-arn :required
                                  common-lisp:t :member-name "RegistrationId")
                                 (field-path :target-type field-path :required
                                  common-lisp:t :member-name "FieldPath")
                                 (select-choices :target-type
                                  select-choice-list :member-name
                                  "SelectChoices")
                                 (text-value :target-type text-value
                                  :member-name "TextValue")
                                 (registration-attachment-id :target-type
                                  registration-attachment-id-or-arn
                                  :member-name "RegistrationAttachmentId"))
                                (:shape-name
                                 "PutRegistrationFieldValueRequest"))

(smithy/sdk/shapes:define-output put-registration-field-value-result
                                 common-lisp:nil
                                 ((registration-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationArn")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "RegistrationId")
                                  (version-number :target-type
                                   registration-version-number :required
                                   common-lisp:t :member-name "VersionNumber")
                                  (field-path :target-type field-path :required
                                   common-lisp:t :member-name "FieldPath")
                                  (select-choices :target-type
                                   select-choice-list :member-name
                                   "SelectChoices")
                                  (text-value :target-type text-value
                                   :member-name "TextValue")
                                  (registration-attachment-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "RegistrationAttachmentId"))
                                 (:shape-name
                                  "PutRegistrationFieldValueResult"))

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (policy :target-type resource-policy :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-result common-lisp:nil
                                 ((resource-arn :target-type
                                   amazon-resource-name :member-name
                                   "ResourceArn")
                                  (policy :target-type resource-policy
                                   :member-name "Policy")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "PutResourcePolicyResult"))

(smithy/sdk/shapes:define-type registration-association-behavior
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure registration-association-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      registration-association-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name
                                     "RegistrationAssociationFilter"))

(smithy/sdk/shapes:define-list registration-association-filter-list :member
                               registration-association-filter)

(smithy/sdk/shapes:define-type registration-association-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure registration-association-metadata
                                    common-lisp:nil
                                    ((resource-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (resource-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ResourceId")
                                     (resource-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ResourceType")
                                     (iso-country-code :target-type
                                      iso-country-code :member-name
                                      "IsoCountryCode")
                                     (phone-number :target-type phone-number
                                      :member-name "PhoneNumber"))
                                    (:shape-name
                                     "RegistrationAssociationMetadata"))

(smithy/sdk/shapes:define-list registration-association-metadata-list :member
                               registration-association-metadata)

(smithy/sdk/shapes:define-structure registration-attachment-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      registration-attachment-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name
                                     "RegistrationAttachmentFilter"))

(smithy/sdk/shapes:define-list registration-attachment-filter-list :member
                               registration-attachment-filter)

(smithy/sdk/shapes:define-type registration-attachment-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list registration-attachment-id-list :member
                               registration-id-or-arn)

(smithy/sdk/shapes:define-type registration-attachment-id-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure registration-attachments-information
                                    common-lisp:nil
                                    ((registration-attachment-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RegistrationAttachmentArn")
                                     (registration-attachment-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RegistrationAttachmentId")
                                     (attachment-status :target-type
                                      attachment-status :required common-lisp:t
                                      :member-name "AttachmentStatus")
                                     (attachment-upload-error-reason
                                      :target-type
                                      attachment-upload-error-reason
                                      :member-name
                                      "AttachmentUploadErrorReason")
                                     (created-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTimestamp"))
                                    (:shape-name
                                     "RegistrationAttachmentsInformation"))

(smithy/sdk/shapes:define-list registration-attachments-information-list
                               :member registration-attachments-information)

(smithy/sdk/shapes:define-structure registration-denied-reason-information
                                    common-lisp:nil
                                    ((reason :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Reason")
                                     (short-description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ShortDescription")
                                     (long-description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "LongDescription")
                                     (documentation-title :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DocumentationTitle")
                                     (documentation-link :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DocumentationLink"))
                                    (:shape-name
                                     "RegistrationDeniedReasonInformation"))

(smithy/sdk/shapes:define-list registration-denied-reason-information-list
                               :member registration-denied-reason-information)

(smithy/sdk/shapes:define-type registration-disassociation-behavior
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure registration-field-definition
                                    common-lisp:nil
                                    ((section-path :target-type section-path
                                      :required common-lisp:t :member-name
                                      "SectionPath")
                                     (field-path :target-type field-path
                                      :required common-lisp:t :member-name
                                      "FieldPath")
                                     (field-type :target-type field-type
                                      :required common-lisp:t :member-name
                                      "FieldType")
                                     (field-requirement :target-type
                                      field-requirement :required common-lisp:t
                                      :member-name "FieldRequirement")
                                     (select-validation :target-type
                                      select-validation :member-name
                                      "SelectValidation")
                                     (text-validation :target-type
                                      text-validation :member-name
                                      "TextValidation")
                                     (display-hints :target-type
                                      registration-field-display-hints
                                      :required common-lisp:t :member-name
                                      "DisplayHints"))
                                    (:shape-name "RegistrationFieldDefinition"))

(smithy/sdk/shapes:define-list registration-field-definition-list :member
                               registration-field-definition)

(smithy/sdk/shapes:define-structure registration-field-display-hints
                                    common-lisp:nil
                                    ((title :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Title")
                                     (short-description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ShortDescription")
                                     (long-description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "LongDescription")
                                     (documentation-title :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DocumentationTitle")
                                     (documentation-link :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DocumentationLink")
                                     (select-option-descriptions :target-type
                                      select-option-descriptions-list
                                      :member-name "SelectOptionDescriptions")
                                     (text-validation-description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "TextValidationDescription")
                                     (example-text-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ExampleTextValue"))
                                    (:shape-name
                                     "RegistrationFieldDisplayHints"))

(smithy/sdk/shapes:define-structure registration-field-value-information
                                    common-lisp:nil
                                    ((field-path :target-type field-path
                                      :required common-lisp:t :member-name
                                      "FieldPath")
                                     (select-choices :target-type
                                      select-choice-list :member-name
                                      "SelectChoices")
                                     (text-value :target-type text-value
                                      :member-name "TextValue")
                                     (registration-attachment-id :target-type
                                      registration-attachment-id-or-arn
                                      :member-name "RegistrationAttachmentId")
                                     (denied-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DeniedReason"))
                                    (:shape-name
                                     "RegistrationFieldValueInformation"))

(smithy/sdk/shapes:define-list registration-field-value-information-list
                               :member registration-field-value-information)

(smithy/sdk/shapes:define-structure registration-filter common-lisp:nil
                                    ((name :target-type
                                      registration-filter-name :required
                                      common-lisp:t :member-name "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "RegistrationFilter"))

(smithy/sdk/shapes:define-list registration-filter-list :member
                               registration-filter)

(smithy/sdk/shapes:define-type registration-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list registration-id-list :member
                               registration-id-or-arn)

(smithy/sdk/shapes:define-type registration-id-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure registration-information common-lisp:nil
                                    ((registration-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RegistrationArn")
                                     (registration-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RegistrationId")
                                     (registration-type :target-type
                                      registration-type :required common-lisp:t
                                      :member-name "RegistrationType")
                                     (registration-status :target-type
                                      registration-status :required
                                      common-lisp:t :member-name
                                      "RegistrationStatus")
                                     (current-version-number :target-type
                                      registration-version-number :required
                                      common-lisp:t :member-name
                                      "CurrentVersionNumber")
                                     (approved-version-number :target-type
                                      registration-version-number :member-name
                                      "ApprovedVersionNumber")
                                     (latest-denied-version-number :target-type
                                      registration-version-number :member-name
                                      "LatestDeniedVersionNumber")
                                     (additional-attributes :target-type
                                      string-map :member-name
                                      "AdditionalAttributes")
                                     (created-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTimestamp"))
                                    (:shape-name "RegistrationInformation"))

(smithy/sdk/shapes:define-list registration-information-list :member
                               registration-information)

(smithy/sdk/shapes:define-structure registration-section-definition
                                    common-lisp:nil
                                    ((section-path :target-type section-path
                                      :required common-lisp:t :member-name
                                      "SectionPath")
                                     (display-hints :target-type
                                      registration-section-display-hints
                                      :required common-lisp:t :member-name
                                      "DisplayHints"))
                                    (:shape-name
                                     "RegistrationSectionDefinition"))

(smithy/sdk/shapes:define-list registration-section-definition-list :member
                               registration-section-definition)

(smithy/sdk/shapes:define-structure registration-section-display-hints
                                    common-lisp:nil
                                    ((title :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Title")
                                     (short-description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ShortDescription")
                                     (long-description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "LongDescription")
                                     (documentation-title :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DocumentationTitle")
                                     (documentation-link :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DocumentationLink"))
                                    (:shape-name
                                     "RegistrationSectionDisplayHints"))

(smithy/sdk/shapes:define-type registration-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type registration-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure registration-type-definition
                                    common-lisp:nil
                                    ((registration-type :target-type
                                      registration-type :required common-lisp:t
                                      :member-name "RegistrationType")
                                     (supported-associations :target-type
                                      supported-association-list :member-name
                                      "SupportedAssociations")
                                     (display-hints :target-type
                                      registration-type-display-hints :required
                                      common-lisp:t :member-name
                                      "DisplayHints"))
                                    (:shape-name "RegistrationTypeDefinition"))

(smithy/sdk/shapes:define-list registration-type-definition-list :member
                               registration-type-definition)

(smithy/sdk/shapes:define-structure registration-type-display-hints
                                    common-lisp:nil
                                    ((title :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Title")
                                     (short-description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ShortDescription")
                                     (long-description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "LongDescription")
                                     (documentation-title :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DocumentationTitle")
                                     (documentation-link :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DocumentationLink"))
                                    (:shape-name
                                     "RegistrationTypeDisplayHints"))

(smithy/sdk/shapes:define-structure registration-type-filter common-lisp:nil
                                    ((name :target-type
                                      registration-type-filter-name :required
                                      common-lisp:t :member-name "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "RegistrationTypeFilter"))

(smithy/sdk/shapes:define-list registration-type-filter-list :member
                               registration-type-filter)

(smithy/sdk/shapes:define-type registration-type-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list registration-type-list :member registration-type)

(smithy/sdk/shapes:define-structure registration-version-filter common-lisp:nil
                                    ((name :target-type
                                      registration-version-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "RegistrationVersionFilter"))

(smithy/sdk/shapes:define-list registration-version-filter-list :member
                               registration-version-filter)

(smithy/sdk/shapes:define-type registration-version-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure registration-version-information
                                    common-lisp:nil
                                    ((version-number :target-type
                                      registration-version-number :required
                                      common-lisp:t :member-name
                                      "VersionNumber")
                                     (registration-version-status :target-type
                                      registration-version-status :required
                                      common-lisp:t :member-name
                                      "RegistrationVersionStatus")
                                     (registration-version-status-history
                                      :target-type
                                      registration-version-status-history
                                      :required common-lisp:t :member-name
                                      "RegistrationVersionStatusHistory")
                                     (denied-reasons :target-type
                                      registration-denied-reason-information-list
                                      :member-name "DeniedReasons"))
                                    (:shape-name
                                     "RegistrationVersionInformation"))

(smithy/sdk/shapes:define-list registration-version-information-list :member
                               registration-version-information)

(smithy/sdk/shapes:define-type registration-version-number
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list registration-version-number-list :member
                               registration-version-number)

(smithy/sdk/shapes:define-type registration-version-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure registration-version-status-history
                                    common-lisp:nil
                                    ((draft-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "DraftTimestamp")
                                     (submitted-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "SubmittedTimestamp")
                                     (reviewing-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "ReviewingTimestamp")
                                     (requires-authentication-timestamp
                                      :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name
                                      "RequiresAuthenticationTimestamp")
                                     (approved-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "ApprovedTimestamp")
                                     (discarded-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "DiscardedTimestamp")
                                     (denied-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "DeniedTimestamp")
                                     (revoked-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "RevokedTimestamp")
                                     (archived-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "ArchivedTimestamp"))
                                    (:shape-name
                                     "RegistrationVersionStatusHistory"))

(smithy/sdk/shapes:define-input release-phone-number-request common-lisp:nil
                                ((phone-number-id :target-type
                                  phone-number-id-or-arn :required
                                  common-lisp:t :member-name "PhoneNumberId"))
                                (:shape-name "ReleasePhoneNumberRequest"))

(smithy/sdk/shapes:define-output release-phone-number-result common-lisp:nil
                                 ((phone-number-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PhoneNumberArn")
                                  (phone-number-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PhoneNumberId")
                                  (phone-number :target-type phone-number
                                   :member-name "PhoneNumber")
                                  (status :target-type number-status
                                   :member-name "Status")
                                  (iso-country-code :target-type
                                   iso-country-code :member-name
                                   "IsoCountryCode")
                                  (message-type :target-type message-type
                                   :member-name "MessageType")
                                  (number-capabilities :target-type
                                   number-capability-list :member-name
                                   "NumberCapabilities")
                                  (number-type :target-type number-type
                                   :member-name "NumberType")
                                  (monthly-leasing-price :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "MonthlyLeasingPrice")
                                  (two-way-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "TwoWayEnabled")
                                  (two-way-channel-arn :target-type
                                   two-way-channel-arn :member-name
                                   "TwoWayChannelArn")
                                  (two-way-channel-role :target-type
                                   iam-role-arn :member-name
                                   "TwoWayChannelRole")
                                  (self-managed-opt-outs-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "SelfManagedOptOutsEnabled")
                                  (opt-out-list-name :target-type
                                   opt-out-list-name :member-name
                                   "OptOutListName")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "RegistrationId")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "ReleasePhoneNumberResult"))

(smithy/sdk/shapes:define-input release-sender-id-request common-lisp:nil
                                ((sender-id :target-type sender-id-or-arn
                                  :required common-lisp:t :member-name
                                  "SenderId")
                                 (iso-country-code :target-type
                                  iso-country-code :required common-lisp:t
                                  :member-name "IsoCountryCode"))
                                (:shape-name "ReleaseSenderIdRequest"))

(smithy/sdk/shapes:define-output release-sender-id-result common-lisp:nil
                                 ((sender-id-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "SenderIdArn")
                                  (sender-id :target-type sender-id :required
                                   common-lisp:t :member-name "SenderId")
                                  (iso-country-code :target-type
                                   iso-country-code :required common-lisp:t
                                   :member-name "IsoCountryCode")
                                  (message-types :target-type message-type-list
                                   :required common-lisp:t :member-name
                                   "MessageTypes")
                                  (monthly-leasing-price :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "MonthlyLeasingPrice")
                                  (registered :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :required common-lisp:t :member-name
                                   "Registered")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "RegistrationId"))
                                 (:shape-name "ReleaseSenderIdResult"))

(smithy/sdk/shapes:define-input request-phone-number-request common-lisp:nil
                                ((iso-country-code :target-type
                                  iso-country-code :required common-lisp:t
                                  :member-name "IsoCountryCode")
                                 (message-type :target-type message-type
                                  :required common-lisp:t :member-name
                                  "MessageType")
                                 (number-capabilities :target-type
                                  number-capability-list :required
                                  common-lisp:t :member-name
                                  "NumberCapabilities")
                                 (number-type :target-type
                                  requestable-number-type :required
                                  common-lisp:t :member-name "NumberType")
                                 (opt-out-list-name :target-type
                                  opt-out-list-name-or-arn :member-name
                                  "OptOutListName")
                                 (pool-id :target-type pool-id-or-arn
                                  :member-name "PoolId")
                                 (registration-id :target-type
                                  registration-id-or-arn :member-name
                                  "RegistrationId")
                                 (deletion-protection-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "DeletionProtectionEnabled")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "RequestPhoneNumberRequest"))

(smithy/sdk/shapes:define-output request-phone-number-result common-lisp:nil
                                 ((phone-number-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PhoneNumberArn")
                                  (phone-number-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PhoneNumberId")
                                  (phone-number :target-type phone-number
                                   :member-name "PhoneNumber")
                                  (status :target-type number-status
                                   :member-name "Status")
                                  (iso-country-code :target-type
                                   iso-country-code :member-name
                                   "IsoCountryCode")
                                  (message-type :target-type message-type
                                   :member-name "MessageType")
                                  (number-capabilities :target-type
                                   number-capability-list :member-name
                                   "NumberCapabilities")
                                  (number-type :target-type
                                   requestable-number-type :member-name
                                   "NumberType")
                                  (monthly-leasing-price :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "MonthlyLeasingPrice")
                                  (two-way-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "TwoWayEnabled")
                                  (two-way-channel-arn :target-type
                                   two-way-channel-arn :member-name
                                   "TwoWayChannelArn")
                                  (two-way-channel-role :target-type
                                   iam-role-arn :member-name
                                   "TwoWayChannelRole")
                                  (self-managed-opt-outs-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "SelfManagedOptOutsEnabled")
                                  (opt-out-list-name :target-type
                                   opt-out-list-name :member-name
                                   "OptOutListName")
                                  (deletion-protection-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "DeletionProtectionEnabled")
                                  (pool-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PoolId")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "RegistrationId")
                                  (tags :target-type tag-list :member-name
                                   "Tags")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "RequestPhoneNumberResult"))

(smithy/sdk/shapes:define-input request-sender-id-request common-lisp:nil
                                ((sender-id :target-type sender-id :required
                                  common-lisp:t :member-name "SenderId")
                                 (iso-country-code :target-type
                                  iso-country-code :required common-lisp:t
                                  :member-name "IsoCountryCode")
                                 (message-types :target-type message-type-list
                                  :member-name "MessageTypes")
                                 (deletion-protection-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "DeletionProtectionEnabled")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "RequestSenderIdRequest"))

(smithy/sdk/shapes:define-output request-sender-id-result common-lisp:nil
                                 ((sender-id-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "SenderIdArn")
                                  (sender-id :target-type sender-id :required
                                   common-lisp:t :member-name "SenderId")
                                  (iso-country-code :target-type
                                   iso-country-code :required common-lisp:t
                                   :member-name "IsoCountryCode")
                                  (message-types :target-type message-type-list
                                   :required common-lisp:t :member-name
                                   "MessageTypes")
                                  (monthly-leasing-price :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "MonthlyLeasingPrice")
                                  (deletion-protection-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :required common-lisp:t :member-name
                                   "DeletionProtectionEnabled")
                                  (registered :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :required common-lisp:t :member-name
                                   "Registered")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "RequestSenderIdResult"))

(smithy/sdk/shapes:define-type requestable-number-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ResourceId"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type section-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list section-path-list :member section-path)

(smithy/sdk/shapes:define-type select-choice smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list select-choice-list :member select-choice)

(smithy/sdk/shapes:define-structure select-option-description common-lisp:nil
                                    ((option :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Option")
                                     (title :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Title")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Description"))
                                    (:shape-name "SelectOptionDescription"))

(smithy/sdk/shapes:define-list select-option-descriptions-list :member
                               select-option-description)

(smithy/sdk/shapes:define-structure select-validation common-lisp:nil
                                    ((min-choices :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "MinChoices")
                                     (max-choices :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "MaxChoices")
                                     (options :target-type string-list
                                      :required common-lisp:t :member-name
                                      "Options"))
                                    (:shape-name "SelectValidation"))

(smithy/sdk/shapes:define-input
 send-destination-number-verification-code-request common-lisp:nil
 ((verified-destination-number-id :target-type
   verified-destination-number-id-or-arn :required common-lisp:t :member-name
   "VerifiedDestinationNumberId")
  (verification-channel :target-type verification-channel :required
   common-lisp:t :member-name "VerificationChannel")
  (language-code :target-type language-code :member-name "LanguageCode")
  (origination-identity :target-type verification-message-origination-identity
   :member-name "OriginationIdentity")
  (configuration-set-name :target-type configuration-set-name-or-arn
   :member-name "ConfigurationSetName")
  (context :target-type context-map :member-name "Context")
  (destination-country-parameters :target-type destination-country-parameters
   :member-name "DestinationCountryParameters"))
 (:shape-name "SendDestinationNumberVerificationCodeRequest"))

(smithy/sdk/shapes:define-output
 send-destination-number-verification-code-result common-lisp:nil
 ((message-id :target-type smithy/sdk/smithy-types:string :required
   common-lisp:t :member-name "MessageId"))
 (:shape-name "SendDestinationNumberVerificationCodeResult"))

(smithy/sdk/shapes:define-input send-media-message-request common-lisp:nil
                                ((destination-phone-number :target-type
                                  phone-number :required common-lisp:t
                                  :member-name "DestinationPhoneNumber")
                                 (origination-identity :target-type
                                  media-message-origination-identity :required
                                  common-lisp:t :member-name
                                  "OriginationIdentity")
                                 (message-body :target-type text-message-body
                                  :member-name "MessageBody")
                                 (media-urls :target-type media-url-list
                                  :member-name "MediaUrls")
                                 (configuration-set-name :target-type
                                  configuration-set-name-or-arn :member-name
                                  "ConfigurationSetName")
                                 (max-price :target-type max-price :member-name
                                  "MaxPrice")
                                 (time-to-live :target-type time-to-live
                                  :member-name "TimeToLive")
                                 (context :target-type context-map :member-name
                                  "Context")
                                 (dry-run :target-type
                                  smithy/shapes/primitive-types:primitive-boolean
                                  :member-name "DryRun")
                                 (protect-configuration-id :target-type
                                  protect-configuration-id-or-arn :member-name
                                  "ProtectConfigurationId")
                                 (message-feedback-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "MessageFeedbackEnabled"))
                                (:shape-name "SendMediaMessageRequest"))

(smithy/sdk/shapes:define-output send-media-message-result common-lisp:nil
                                 ((message-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "MessageId"))
                                 (:shape-name "SendMediaMessageResult"))

(smithy/sdk/shapes:define-input send-text-message-request common-lisp:nil
                                ((destination-phone-number :target-type
                                  phone-number :required common-lisp:t
                                  :member-name "DestinationPhoneNumber")
                                 (origination-identity :target-type
                                  text-message-origination-identity
                                  :member-name "OriginationIdentity")
                                 (message-body :target-type text-message-body
                                  :member-name "MessageBody")
                                 (message-type :target-type message-type
                                  :member-name "MessageType")
                                 (keyword :target-type keyword :member-name
                                  "Keyword")
                                 (configuration-set-name :target-type
                                  configuration-set-name-or-arn :member-name
                                  "ConfigurationSetName")
                                 (max-price :target-type max-price :member-name
                                  "MaxPrice")
                                 (time-to-live :target-type time-to-live
                                  :member-name "TimeToLive")
                                 (context :target-type context-map :member-name
                                  "Context")
                                 (destination-country-parameters :target-type
                                  destination-country-parameters :member-name
                                  "DestinationCountryParameters")
                                 (dry-run :target-type
                                  smithy/shapes/primitive-types:primitive-boolean
                                  :member-name "DryRun")
                                 (protect-configuration-id :target-type
                                  protect-configuration-id-or-arn :member-name
                                  "ProtectConfigurationId")
                                 (message-feedback-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "MessageFeedbackEnabled"))
                                (:shape-name "SendTextMessageRequest"))

(smithy/sdk/shapes:define-output send-text-message-result common-lisp:nil
                                 ((message-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "MessageId"))
                                 (:shape-name "SendTextMessageResult"))

(smithy/sdk/shapes:define-input send-voice-message-request common-lisp:nil
                                ((destination-phone-number :target-type
                                  phone-number :required common-lisp:t
                                  :member-name "DestinationPhoneNumber")
                                 (origination-identity :target-type
                                  voice-message-origination-identity :required
                                  common-lisp:t :member-name
                                  "OriginationIdentity")
                                 (message-body :target-type voice-message-body
                                  :member-name "MessageBody")
                                 (message-body-text-type :target-type
                                  voice-message-body-text-type :member-name
                                  "MessageBodyTextType")
                                 (voice-id :target-type voice-id :member-name
                                  "VoiceId")
                                 (configuration-set-name :target-type
                                  configuration-set-name-or-arn :member-name
                                  "ConfigurationSetName")
                                 (max-price-per-minute :target-type max-price
                                  :member-name "MaxPricePerMinute")
                                 (time-to-live :target-type time-to-live
                                  :member-name "TimeToLive")
                                 (context :target-type context-map :member-name
                                  "Context")
                                 (dry-run :target-type
                                  smithy/shapes/primitive-types:primitive-boolean
                                  :member-name "DryRun")
                                 (protect-configuration-id :target-type
                                  protect-configuration-id-or-arn :member-name
                                  "ProtectConfigurationId")
                                 (message-feedback-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "MessageFeedbackEnabled"))
                                (:shape-name "SendVoiceMessageRequest"))

(smithy/sdk/shapes:define-output send-voice-message-result common-lisp:nil
                                 ((message-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "MessageId"))
                                 (:shape-name "SendVoiceMessageResult"))

(smithy/sdk/shapes:define-type sender-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sender-id-and-country common-lisp:nil
                                    ((sender-id :target-type sender-id-or-arn
                                      :required common-lisp:t :member-name
                                      "SenderId")
                                     (iso-country-code :target-type
                                      iso-country-code :required common-lisp:t
                                      :member-name "IsoCountryCode"))
                                    (:shape-name "SenderIdAndCountry"))

(smithy/sdk/shapes:define-structure sender-id-filter common-lisp:nil
                                    ((name :target-type sender-id-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "SenderIdFilter"))

(smithy/sdk/shapes:define-list sender-id-filter-list :member sender-id-filter)

(smithy/sdk/shapes:define-type sender-id-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sender-id-information common-lisp:nil
                                    ((sender-id-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "SenderIdArn")
                                     (sender-id :target-type sender-id
                                      :required common-lisp:t :member-name
                                      "SenderId")
                                     (iso-country-code :target-type
                                      iso-country-code :required common-lisp:t
                                      :member-name "IsoCountryCode")
                                     (message-types :target-type
                                      message-type-list :required common-lisp:t
                                      :member-name "MessageTypes")
                                     (monthly-leasing-price :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "MonthlyLeasingPrice")
                                     (deletion-protection-enabled :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "DeletionProtectionEnabled")
                                     (registered :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "Registered")
                                     (registration-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "RegistrationId"))
                                    (:shape-name "SenderIdInformation"))

(smithy/sdk/shapes:define-list sender-id-information-list :member
                               sender-id-information)

(smithy/sdk/shapes:define-list sender-id-list :member sender-id-and-country)

(smithy/sdk/shapes:define-type sender-id-or-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (reason :target-type
                                  service-quota-exceeded-exception-reason
                                  :member-name "Reason"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type service-quota-exceeded-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 set-account-default-protect-configuration-request common-lisp:nil
 ((protect-configuration-id :target-type protect-configuration-id-or-arn
   :required common-lisp:t :member-name "ProtectConfigurationId"))
 (:shape-name "SetAccountDefaultProtectConfigurationRequest"))

(smithy/sdk/shapes:define-output
 set-account-default-protect-configuration-result common-lisp:nil
 ((default-protect-configuration-arn :target-type protect-configuration-arn
   :required common-lisp:t :member-name "DefaultProtectConfigurationArn")
  (default-protect-configuration-id :target-type protect-configuration-id
   :required common-lisp:t :member-name "DefaultProtectConfigurationId"))
 (:shape-name "SetAccountDefaultProtectConfigurationResult"))

(smithy/sdk/shapes:define-input set-default-message-feedback-enabled-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name-or-arn :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName")
                                 (message-feedback-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :required
                                  common-lisp:t :member-name
                                  "MessageFeedbackEnabled"))
                                (:shape-name
                                 "SetDefaultMessageFeedbackEnabledRequest"))

(smithy/sdk/shapes:define-output set-default-message-feedback-enabled-result
                                 common-lisp:nil
                                 ((configuration-set-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ConfigurationSetArn")
                                  (configuration-set-name :target-type
                                   configuration-set-name :member-name
                                   "ConfigurationSetName")
                                  (message-feedback-enabled :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "MessageFeedbackEnabled"))
                                 (:shape-name
                                  "SetDefaultMessageFeedbackEnabledResult"))

(smithy/sdk/shapes:define-input set-default-message-type-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name-or-arn :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName")
                                 (message-type :target-type message-type
                                  :required common-lisp:t :member-name
                                  "MessageType"))
                                (:shape-name "SetDefaultMessageTypeRequest"))

(smithy/sdk/shapes:define-output set-default-message-type-result
                                 common-lisp:nil
                                 ((configuration-set-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ConfigurationSetArn")
                                  (configuration-set-name :target-type
                                   configuration-set-name :member-name
                                   "ConfigurationSetName")
                                  (message-type :target-type message-type
                                   :member-name "MessageType"))
                                 (:shape-name "SetDefaultMessageTypeResult"))

(smithy/sdk/shapes:define-input set-default-sender-id-request common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name-or-arn :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName")
                                 (sender-id :target-type sender-id :required
                                  common-lisp:t :member-name "SenderId"))
                                (:shape-name "SetDefaultSenderIdRequest"))

(smithy/sdk/shapes:define-output set-default-sender-id-result common-lisp:nil
                                 ((configuration-set-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ConfigurationSetArn")
                                  (configuration-set-name :target-type
                                   configuration-set-name :member-name
                                   "ConfigurationSetName")
                                  (sender-id :target-type sender-id
                                   :member-name "SenderId"))
                                 (:shape-name "SetDefaultSenderIdResult"))

(smithy/sdk/shapes:define-input set-media-message-spend-limit-override-request
                                common-lisp:nil
                                ((monthly-limit :target-type monthly-limit
                                  :required common-lisp:t :member-name
                                  "MonthlyLimit"))
                                (:shape-name
                                 "SetMediaMessageSpendLimitOverrideRequest"))

(smithy/sdk/shapes:define-output set-media-message-spend-limit-override-result
                                 common-lisp:nil
                                 ((monthly-limit :target-type monthly-limit
                                   :member-name "MonthlyLimit"))
                                 (:shape-name
                                  "SetMediaMessageSpendLimitOverrideResult"))

(smithy/sdk/shapes:define-input set-text-message-spend-limit-override-request
                                common-lisp:nil
                                ((monthly-limit :target-type monthly-limit
                                  :required common-lisp:t :member-name
                                  "MonthlyLimit"))
                                (:shape-name
                                 "SetTextMessageSpendLimitOverrideRequest"))

(smithy/sdk/shapes:define-output set-text-message-spend-limit-override-result
                                 common-lisp:nil
                                 ((monthly-limit :target-type monthly-limit
                                   :member-name "MonthlyLimit"))
                                 (:shape-name
                                  "SetTextMessageSpendLimitOverrideResult"))

(smithy/sdk/shapes:define-input set-voice-message-spend-limit-override-request
                                common-lisp:nil
                                ((monthly-limit :target-type monthly-limit
                                  :required common-lisp:t :member-name
                                  "MonthlyLimit"))
                                (:shape-name
                                 "SetVoiceMessageSpendLimitOverrideRequest"))

(smithy/sdk/shapes:define-output set-voice-message-spend-limit-override-result
                                 common-lisp:nil
                                 ((monthly-limit :target-type monthly-limit
                                   :member-name "MonthlyLimit"))
                                 (:shape-name
                                  "SetVoiceMessageSpendLimitOverrideResult"))

(smithy/sdk/shapes:define-structure sns-destination common-lisp:nil
                                    ((topic-arn :target-type sns-topic-arn
                                      :required common-lisp:t :member-name
                                      "TopicArn"))
                                    (:shape-name "SnsDestination"))

(smithy/sdk/shapes:define-type sns-topic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure spend-limit common-lisp:nil
                                    ((name :target-type spend-limit-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (enforced-limit :target-type
                                      smithy/shapes/primitive-types:primitive-long
                                      :required common-lisp:t :member-name
                                      "EnforcedLimit")
                                     (max-limit :target-type
                                      smithy/shapes/primitive-types:primitive-long
                                      :required common-lisp:t :member-name
                                      "MaxLimit")
                                     (overridden :target-type
                                      smithy/shapes/primitive-types:primitive-boolean
                                      :required common-lisp:t :member-name
                                      "Overridden"))
                                    (:shape-name "SpendLimit"))

(smithy/sdk/shapes:define-list spend-limit-list :member spend-limit)

(smithy/sdk/shapes:define-type spend-limit-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map string-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input submit-registration-version-request
                                common-lisp:nil
                                ((registration-id :target-type
                                  registration-id-or-arn :required
                                  common-lisp:t :member-name "RegistrationId"))
                                (:shape-name
                                 "SubmitRegistrationVersionRequest"))

(smithy/sdk/shapes:define-output submit-registration-version-result
                                 common-lisp:nil
                                 ((registration-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "RegistrationArn")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "RegistrationId")
                                  (version-number :target-type
                                   registration-version-number :required
                                   common-lisp:t :member-name "VersionNumber")
                                  (registration-version-status :target-type
                                   registration-version-status :required
                                   common-lisp:t :member-name
                                   "RegistrationVersionStatus")
                                  (registration-version-status-history
                                   :target-type
                                   registration-version-status-history
                                   :required common-lisp:t :member-name
                                   "RegistrationVersionStatusHistory"))
                                 (:shape-name
                                  "SubmitRegistrationVersionResult"))

(smithy/sdk/shapes:define-structure supported-association common-lisp:nil
                                    ((resource-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "ResourceType")
                                     (iso-country-code :target-type
                                      iso-country-code :member-name
                                      "IsoCountryCode")
                                     (association-behavior :target-type
                                      registration-association-behavior
                                      :required common-lisp:t :member-name
                                      "AssociationBehavior")
                                     (disassociation-behavior :target-type
                                      registration-disassociation-behavior
                                      :required common-lisp:t :member-name
                                      "DisassociationBehavior"))
                                    (:shape-name "SupportedAssociation"))

(smithy/sdk/shapes:define-list supported-association-list :member
                               supported-association)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tags :target-type non-empty-tag-list
                                  :required common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResult"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type text-message-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type text-message-origination-identity
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure text-validation common-lisp:nil
                                    ((min-length :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "MinLength")
                                     (max-length :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "MaxLength")
                                     (pattern :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Pattern"))
                                    (:shape-name "TextValidation"))

(smithy/sdk/shapes:define-type text-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type time-to-live smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type two-way-channel-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResult"))

(smithy/sdk/shapes:define-input update-event-destination-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name-or-arn :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName")
                                 (event-destination-name :target-type
                                  event-destination-name :required
                                  common-lisp:t :member-name
                                  "EventDestinationName")
                                 (enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "Enabled")
                                 (matching-event-types :target-type
                                  event-type-list :member-name
                                  "MatchingEventTypes")
                                 (cloud-watch-logs-destination :target-type
                                  cloud-watch-logs-destination :member-name
                                  "CloudWatchLogsDestination")
                                 (kinesis-firehose-destination :target-type
                                  kinesis-firehose-destination :member-name
                                  "KinesisFirehoseDestination")
                                 (sns-destination :target-type sns-destination
                                  :member-name "SnsDestination"))
                                (:shape-name "UpdateEventDestinationRequest"))

(smithy/sdk/shapes:define-output update-event-destination-result
                                 common-lisp:nil
                                 ((configuration-set-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ConfigurationSetArn")
                                  (configuration-set-name :target-type
                                   configuration-set-name :member-name
                                   "ConfigurationSetName")
                                  (event-destination :target-type
                                   event-destination :member-name
                                   "EventDestination"))
                                 (:shape-name "UpdateEventDestinationResult"))

(smithy/sdk/shapes:define-input update-phone-number-request common-lisp:nil
                                ((phone-number-id :target-type
                                  phone-number-id-or-arn :required
                                  common-lisp:t :member-name "PhoneNumberId")
                                 (two-way-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "TwoWayEnabled")
                                 (two-way-channel-arn :target-type
                                  two-way-channel-arn :member-name
                                  "TwoWayChannelArn")
                                 (two-way-channel-role :target-type
                                  iam-role-arn :member-name
                                  "TwoWayChannelRole")
                                 (self-managed-opt-outs-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "SelfManagedOptOutsEnabled")
                                 (opt-out-list-name :target-type
                                  opt-out-list-name-or-arn :member-name
                                  "OptOutListName")
                                 (deletion-protection-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "DeletionProtectionEnabled"))
                                (:shape-name "UpdatePhoneNumberRequest"))

(smithy/sdk/shapes:define-output update-phone-number-result common-lisp:nil
                                 ((phone-number-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PhoneNumberArn")
                                  (phone-number-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PhoneNumberId")
                                  (phone-number :target-type phone-number
                                   :member-name "PhoneNumber")
                                  (status :target-type number-status
                                   :member-name "Status")
                                  (iso-country-code :target-type
                                   iso-country-code :member-name
                                   "IsoCountryCode")
                                  (message-type :target-type message-type
                                   :member-name "MessageType")
                                  (number-capabilities :target-type
                                   number-capability-list :member-name
                                   "NumberCapabilities")
                                  (number-type :target-type number-type
                                   :member-name "NumberType")
                                  (monthly-leasing-price :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "MonthlyLeasingPrice")
                                  (two-way-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "TwoWayEnabled")
                                  (two-way-channel-arn :target-type
                                   two-way-channel-arn :member-name
                                   "TwoWayChannelArn")
                                  (two-way-channel-role :target-type
                                   iam-role-arn :member-name
                                   "TwoWayChannelRole")
                                  (self-managed-opt-outs-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "SelfManagedOptOutsEnabled")
                                  (opt-out-list-name :target-type
                                   opt-out-list-name :member-name
                                   "OptOutListName")
                                  (deletion-protection-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "DeletionProtectionEnabled")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "RegistrationId")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "UpdatePhoneNumberResult"))

(smithy/sdk/shapes:define-input update-pool-request common-lisp:nil
                                ((pool-id :target-type pool-id-or-arn :required
                                  common-lisp:t :member-name "PoolId")
                                 (two-way-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "TwoWayEnabled")
                                 (two-way-channel-arn :target-type
                                  two-way-channel-arn :member-name
                                  "TwoWayChannelArn")
                                 (two-way-channel-role :target-type
                                  iam-role-arn :member-name
                                  "TwoWayChannelRole")
                                 (self-managed-opt-outs-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "SelfManagedOptOutsEnabled")
                                 (opt-out-list-name :target-type
                                  opt-out-list-name-or-arn :member-name
                                  "OptOutListName")
                                 (shared-routes-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "SharedRoutesEnabled")
                                 (deletion-protection-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "DeletionProtectionEnabled"))
                                (:shape-name "UpdatePoolRequest"))

(smithy/sdk/shapes:define-output update-pool-result common-lisp:nil
                                 ((pool-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PoolArn")
                                  (pool-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "PoolId")
                                  (status :target-type pool-status :member-name
                                   "Status")
                                  (message-type :target-type message-type
                                   :member-name "MessageType")
                                  (two-way-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "TwoWayEnabled")
                                  (two-way-channel-arn :target-type
                                   two-way-channel-arn :member-name
                                   "TwoWayChannelArn")
                                  (two-way-channel-role :target-type
                                   iam-role-arn :member-name
                                   "TwoWayChannelRole")
                                  (self-managed-opt-outs-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "SelfManagedOptOutsEnabled")
                                  (opt-out-list-name :target-type
                                   opt-out-list-name :member-name
                                   "OptOutListName")
                                  (shared-routes-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "SharedRoutesEnabled")
                                  (deletion-protection-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :member-name "DeletionProtectionEnabled")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "UpdatePoolResult"))

(smithy/sdk/shapes:define-input
 update-protect-configuration-country-rule-set-request common-lisp:nil
 ((protect-configuration-id :target-type protect-configuration-id-or-arn
   :required common-lisp:t :member-name "ProtectConfigurationId")
  (number-capability :target-type number-capability :required common-lisp:t
   :member-name "NumberCapability")
  (country-rule-set-updates :target-type protect-configuration-country-rule-set
   :required common-lisp:t :member-name "CountryRuleSetUpdates"))
 (:shape-name "UpdateProtectConfigurationCountryRuleSetRequest"))

(smithy/sdk/shapes:define-output
 update-protect-configuration-country-rule-set-result common-lisp:nil
 ((protect-configuration-arn :target-type protect-configuration-arn :required
   common-lisp:t :member-name "ProtectConfigurationArn")
  (protect-configuration-id :target-type protect-configuration-id :required
   common-lisp:t :member-name "ProtectConfigurationId")
  (number-capability :target-type number-capability :required common-lisp:t
   :member-name "NumberCapability")
  (country-rule-set :target-type protect-configuration-country-rule-set
   :required common-lisp:t :member-name "CountryRuleSet"))
 (:shape-name "UpdateProtectConfigurationCountryRuleSetResult"))

(smithy/sdk/shapes:define-input update-protect-configuration-request
                                common-lisp:nil
                                ((protect-configuration-id :target-type
                                  protect-configuration-id-or-arn :required
                                  common-lisp:t :member-name
                                  "ProtectConfigurationId")
                                 (deletion-protection-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "DeletionProtectionEnabled"))
                                (:shape-name
                                 "UpdateProtectConfigurationRequest"))

(smithy/sdk/shapes:define-output update-protect-configuration-result
                                 common-lisp:nil
                                 ((protect-configuration-arn :target-type
                                   protect-configuration-arn :required
                                   common-lisp:t :member-name
                                   "ProtectConfigurationArn")
                                  (protect-configuration-id :target-type
                                   protect-configuration-id :required
                                   common-lisp:t :member-name
                                   "ProtectConfigurationId")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "CreatedTimestamp")
                                  (account-default :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :required common-lisp:t :member-name
                                   "AccountDefault")
                                  (deletion-protection-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :required common-lisp:t :member-name
                                   "DeletionProtectionEnabled"))
                                 (:shape-name
                                  "UpdateProtectConfigurationResult"))

(smithy/sdk/shapes:define-input update-sender-id-request common-lisp:nil
                                ((sender-id :target-type sender-id-or-arn
                                  :required common-lisp:t :member-name
                                  "SenderId")
                                 (iso-country-code :target-type
                                  iso-country-code :required common-lisp:t
                                  :member-name "IsoCountryCode")
                                 (deletion-protection-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "DeletionProtectionEnabled"))
                                (:shape-name "UpdateSenderIdRequest"))

(smithy/sdk/shapes:define-output update-sender-id-result common-lisp:nil
                                 ((sender-id-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "SenderIdArn")
                                  (sender-id :target-type sender-id :required
                                   common-lisp:t :member-name "SenderId")
                                  (iso-country-code :target-type
                                   iso-country-code :required common-lisp:t
                                   :member-name "IsoCountryCode")
                                  (message-types :target-type message-type-list
                                   :required common-lisp:t :member-name
                                   "MessageTypes")
                                  (monthly-leasing-price :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "MonthlyLeasingPrice")
                                  (deletion-protection-enabled :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :required common-lisp:t :member-name
                                   "DeletionProtectionEnabled")
                                  (registered :target-type
                                   smithy/shapes/primitive-types:primitive-boolean
                                   :required common-lisp:t :member-name
                                   "Registered")
                                  (registration-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "RegistrationId"))
                                 (:shape-name "UpdateSenderIdResult"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "Reason")
                                 (fields :target-type
                                  validation-exception-field-list :member-name
                                  "Fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type verification-channel
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type verification-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type verification-message-origination-identity
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type verification-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure verified-destination-number-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      verified-destination-number-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (values :target-type filter-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name
                                     "VerifiedDestinationNumberFilter"))

(smithy/sdk/shapes:define-list verified-destination-number-filter-list :member
                               verified-destination-number-filter)

(smithy/sdk/shapes:define-type verified-destination-number-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list verified-destination-number-id-list :member
                               verified-destination-number-id-or-arn)

(smithy/sdk/shapes:define-type verified-destination-number-id-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure verified-destination-number-information
                                    common-lisp:nil
                                    ((verified-destination-number-arn
                                      :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "VerifiedDestinationNumberArn")
                                     (verified-destination-number-id
                                      :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "VerifiedDestinationNumberId")
                                     (destination-phone-number :target-type
                                      phone-number :required common-lisp:t
                                      :member-name "DestinationPhoneNumber")
                                     (status :target-type verification-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (created-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTimestamp"))
                                    (:shape-name
                                     "VerifiedDestinationNumberInformation"))

(smithy/sdk/shapes:define-list verified-destination-number-information-list
                               :member verified-destination-number-information)

(smithy/sdk/shapes:define-input verify-destination-number-request
                                common-lisp:nil
                                ((verified-destination-number-id :target-type
                                  verified-destination-number-id-or-arn
                                  :required common-lisp:t :member-name
                                  "VerifiedDestinationNumberId")
                                 (verification-code :target-type
                                  verification-code :required common-lisp:t
                                  :member-name "VerificationCode"))
                                (:shape-name "VerifyDestinationNumberRequest"))

(smithy/sdk/shapes:define-output verify-destination-number-result
                                 common-lisp:nil
                                 ((verified-destination-number-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "VerifiedDestinationNumberArn")
                                  (verified-destination-number-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "VerifiedDestinationNumberId")
                                  (destination-phone-number :target-type
                                   phone-number :required common-lisp:t
                                   :member-name "DestinationPhoneNumber")
                                  (status :target-type verification-status
                                   :required common-lisp:t :member-name
                                   "Status")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "CreatedTimestamp"))
                                 (:shape-name "VerifyDestinationNumberResult"))

(smithy/sdk/shapes:define-type voice-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type voice-message-body
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type voice-message-body-text-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type voice-message-origination-identity
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-origination-identity
                                       :shape-name
                                       "AssociateOriginationIdentity" :input
                                       associate-origination-identity-request
                                       :output
                                       associate-origination-identity-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation associate-protect-configuration
                                       :shape-name
                                       "AssociateProtectConfiguration" :input
                                       associate-protect-configuration-request
                                       :output
                                       associate-protect-configuration-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-configuration-set :shape-name
                                       "CreateConfigurationSet" :input
                                       create-configuration-set-request :output
                                       create-configuration-set-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-event-destination :shape-name
                                       "CreateEventDestination" :input
                                       create-event-destination-request :output
                                       create-event-destination-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-opt-out-list :shape-name
                                       "CreateOptOutList" :input
                                       create-opt-out-list-request :output
                                       create-opt-out-list-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-pool :shape-name "CreatePool"
                                       :input create-pool-request :output
                                       create-pool-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-protect-configuration :shape-name
                                       "CreateProtectConfiguration" :input
                                       create-protect-configuration-request
                                       :output
                                       create-protect-configuration-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-registration :shape-name
                                       "CreateRegistration" :input
                                       create-registration-request :output
                                       create-registration-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-registration-association
                                       :shape-name
                                       "CreateRegistrationAssociation" :input
                                       create-registration-association-request
                                       :output
                                       create-registration-association-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-registration-attachment
                                       :shape-name
                                       "CreateRegistrationAttachment" :input
                                       create-registration-attachment-request
                                       :output
                                       create-registration-attachment-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-registration-version :shape-name
                                       "CreateRegistrationVersion" :input
                                       create-registration-version-request
                                       :output
                                       create-registration-version-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-verified-destination-number
                                       :shape-name
                                       "CreateVerifiedDestinationNumber" :input
                                       create-verified-destination-number-request
                                       :output
                                       create-verified-destination-number-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 delete-account-default-protect-configuration :shape-name
 "DeleteAccountDefaultProtectConfiguration" :input
 delete-account-default-protect-configuration-request :output
 delete-account-default-protect-configuration-result :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation delete-configuration-set :shape-name
                                       "DeleteConfigurationSet" :input
                                       delete-configuration-set-request :output
                                       delete-configuration-set-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-default-message-type :shape-name
                                       "DeleteDefaultMessageType" :input
                                       delete-default-message-type-request
                                       :output
                                       delete-default-message-type-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-default-sender-id :shape-name
                                       "DeleteDefaultSenderId" :input
                                       delete-default-sender-id-request :output
                                       delete-default-sender-id-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-event-destination :shape-name
                                       "DeleteEventDestination" :input
                                       delete-event-destination-request :output
                                       delete-event-destination-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-keyword :shape-name
                                       "DeleteKeyword" :input
                                       delete-keyword-request :output
                                       delete-keyword-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 delete-media-message-spend-limit-override :shape-name
 "DeleteMediaMessageSpendLimitOverride" :input
 delete-media-message-spend-limit-override-request :output
 delete-media-message-spend-limit-override-result :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception))

(smithy/sdk/operation:define-operation delete-opt-out-list :shape-name
                                       "DeleteOptOutList" :input
                                       delete-opt-out-list-request :output
                                       delete-opt-out-list-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-opted-out-number :shape-name
                                       "DeleteOptedOutNumber" :input
                                       delete-opted-out-number-request :output
                                       delete-opted-out-number-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-pool :shape-name "DeletePool"
                                       :input delete-pool-request :output
                                       delete-pool-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-protect-configuration :shape-name
                                       "DeleteProtectConfiguration" :input
                                       delete-protect-configuration-request
                                       :output
                                       delete-protect-configuration-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 delete-protect-configuration-rule-set-number-override :shape-name
 "DeleteProtectConfigurationRuleSetNumberOverride" :input
 delete-protect-configuration-rule-set-number-override-request :output
 delete-protect-configuration-rule-set-number-override-result :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation delete-registration :shape-name
                                       "DeleteRegistration" :input
                                       delete-registration-request :output
                                       delete-registration-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-registration-attachment
                                       :shape-name
                                       "DeleteRegistrationAttachment" :input
                                       delete-registration-attachment-request
                                       :output
                                       delete-registration-attachment-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-registration-field-value
                                       :shape-name
                                       "DeleteRegistrationFieldValue" :input
                                       delete-registration-field-value-request
                                       :output
                                       delete-registration-field-value-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-text-message-spend-limit-override
                                       :shape-name
                                       "DeleteTextMessageSpendLimitOverride"
                                       :input
                                       delete-text-message-spend-limit-override-request
                                       :output
                                       delete-text-message-spend-limit-override-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-verified-destination-number
                                       :shape-name
                                       "DeleteVerifiedDestinationNumber" :input
                                       delete-verified-destination-number-request
                                       :output
                                       delete-verified-destination-number-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 delete-voice-message-spend-limit-override :shape-name
 "DeleteVoiceMessageSpendLimitOverride" :input
 delete-voice-message-spend-limit-override-request :output
 delete-voice-message-spend-limit-override-result :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception))

(smithy/sdk/operation:define-operation describe-account-attributes :shape-name
                                       "DescribeAccountAttributes" :input
                                       describe-account-attributes-request
                                       :output
                                       describe-account-attributes-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-account-limits :shape-name
                                       "DescribeAccountLimits" :input
                                       describe-account-limits-request :output
                                       describe-account-limits-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-configuration-sets :shape-name
                                       "DescribeConfigurationSets" :input
                                       describe-configuration-sets-request
                                       :output
                                       describe-configuration-sets-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-keywords :shape-name
                                       "DescribeKeywords" :input
                                       describe-keywords-request :output
                                       describe-keywords-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-opt-out-lists :shape-name
                                       "DescribeOptOutLists" :input
                                       describe-opt-out-lists-request :output
                                       describe-opt-out-lists-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-opted-out-numbers :shape-name
                                       "DescribeOptedOutNumbers" :input
                                       describe-opted-out-numbers-request
                                       :output
                                       describe-opted-out-numbers-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-phone-numbers :shape-name
                                       "DescribePhoneNumbers" :input
                                       describe-phone-numbers-request :output
                                       describe-phone-numbers-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-pools :shape-name
                                       "DescribePools" :input
                                       describe-pools-request :output
                                       describe-pools-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-protect-configurations
                                       :shape-name
                                       "DescribeProtectConfigurations" :input
                                       describe-protect-configurations-request
                                       :output
                                       describe-protect-configurations-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-registration-attachments
                                       :shape-name
                                       "DescribeRegistrationAttachments" :input
                                       describe-registration-attachments-request
                                       :output
                                       describe-registration-attachments-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-registration-field-definitions
                                       :shape-name
                                       "DescribeRegistrationFieldDefinitions"
                                       :input
                                       describe-registration-field-definitions-request
                                       :output
                                       describe-registration-field-definitions-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-registration-field-values
                                       :shape-name
                                       "DescribeRegistrationFieldValues" :input
                                       describe-registration-field-values-request
                                       :output
                                       describe-registration-field-values-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 describe-registration-section-definitions :shape-name
 "DescribeRegistrationSectionDefinitions" :input
 describe-registration-section-definitions-request :output
 describe-registration-section-definitions-result :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception))

(smithy/sdk/operation:define-operation describe-registration-type-definitions
                                       :shape-name
                                       "DescribeRegistrationTypeDefinitions"
                                       :input
                                       describe-registration-type-definitions-request
                                       :output
                                       describe-registration-type-definitions-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-registration-versions
                                       :shape-name
                                       "DescribeRegistrationVersions" :input
                                       describe-registration-versions-request
                                       :output
                                       describe-registration-versions-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-registrations :shape-name
                                       "DescribeRegistrations" :input
                                       describe-registrations-request :output
                                       describe-registrations-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-sender-ids :shape-name
                                       "DescribeSenderIds" :input
                                       describe-sender-ids-request :output
                                       describe-sender-ids-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-spend-limits :shape-name
                                       "DescribeSpendLimits" :input
                                       describe-spend-limits-request :output
                                       describe-spend-limits-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-verified-destination-numbers
                                       :shape-name
                                       "DescribeVerifiedDestinationNumbers"
                                       :input
                                       describe-verified-destination-numbers-request
                                       :output
                                       describe-verified-destination-numbers-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation disassociate-origination-identity
                                       :shape-name
                                       "DisassociateOriginationIdentity" :input
                                       disassociate-origination-identity-request
                                       :output
                                       disassociate-origination-identity-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation disassociate-protect-configuration
                                       :shape-name
                                       "DisassociateProtectConfiguration"
                                       :input
                                       disassociate-protect-configuration-request
                                       :output
                                       disassociate-protect-configuration-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation discard-registration-version :shape-name
                                       "DiscardRegistrationVersion" :input
                                       discard-registration-version-request
                                       :output
                                       discard-registration-version-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 get-protect-configuration-country-rule-set :shape-name
 "GetProtectConfigurationCountryRuleSet" :input
 get-protect-configuration-country-rule-set-request :output
 get-protect-configuration-country-rule-set-result :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-request :output
                                       get-resource-policy-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-pool-origination-identities
                                       :shape-name
                                       "ListPoolOriginationIdentities" :input
                                       list-pool-origination-identities-request
                                       :output
                                       list-pool-origination-identities-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 list-protect-configuration-rule-set-number-overrides :shape-name
 "ListProtectConfigurationRuleSetNumberOverrides" :input
 list-protect-configuration-rule-set-number-overrides-request :output
 list-protect-configuration-rule-set-number-overrides-result :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation list-registration-associations
                                       :shape-name
                                       "ListRegistrationAssociations" :input
                                       list-registration-associations-request
                                       :output
                                       list-registration-associations-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-keyword :shape-name "PutKeyword"
                                       :input put-keyword-request :output
                                       put-keyword-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-message-feedback :shape-name
                                       "PutMessageFeedback" :input
                                       put-message-feedback-request :output
                                       put-message-feedback-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-opted-out-number :shape-name
                                       "PutOptedOutNumber" :input
                                       put-opted-out-number-request :output
                                       put-opted-out-number-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 put-protect-configuration-rule-set-number-override :shape-name
 "PutProtectConfigurationRuleSetNumberOverride" :input
 put-protect-configuration-rule-set-number-override-request :output
 put-protect-configuration-rule-set-number-override-result :errors
 (access-denied-exception conflict-exception internal-server-exception
  service-quota-exceeded-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation put-registration-field-value :shape-name
                                       "PutRegistrationFieldValue" :input
                                       put-registration-field-value-request
                                       :output
                                       put-registration-field-value-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation release-phone-number :shape-name
                                       "ReleasePhoneNumber" :input
                                       release-phone-number-request :output
                                       release-phone-number-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation release-sender-id :shape-name
                                       "ReleaseSenderId" :input
                                       release-sender-id-request :output
                                       release-sender-id-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation request-phone-number :shape-name
                                       "RequestPhoneNumber" :input
                                       request-phone-number-request :output
                                       request-phone-number-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation request-sender-id :shape-name
                                       "RequestSenderId" :input
                                       request-sender-id-request :output
                                       request-sender-id-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 send-destination-number-verification-code :shape-name
 "SendDestinationNumberVerificationCode" :input
 send-destination-number-verification-code-request :output
 send-destination-number-verification-code-result :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception))

(smithy/sdk/operation:define-operation send-media-message :shape-name
                                       "SendMediaMessage" :input
                                       send-media-message-request :output
                                       send-media-message-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation send-text-message :shape-name
                                       "SendTextMessage" :input
                                       send-text-message-request :output
                                       send-text-message-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation send-voice-message :shape-name
                                       "SendVoiceMessage" :input
                                       send-voice-message-request :output
                                       send-voice-message-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 set-account-default-protect-configuration :shape-name
 "SetAccountDefaultProtectConfiguration" :input
 set-account-default-protect-configuration-request :output
 set-account-default-protect-configuration-result :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation set-default-message-feedback-enabled
                                       :shape-name
                                       "SetDefaultMessageFeedbackEnabled"
                                       :input
                                       set-default-message-feedback-enabled-request
                                       :output
                                       set-default-message-feedback-enabled-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation set-default-message-type :shape-name
                                       "SetDefaultMessageType" :input
                                       set-default-message-type-request :output
                                       set-default-message-type-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation set-default-sender-id :shape-name
                                       "SetDefaultSenderId" :input
                                       set-default-sender-id-request :output
                                       set-default-sender-id-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation set-media-message-spend-limit-override
                                       :shape-name
                                       "SetMediaMessageSpendLimitOverride"
                                       :input
                                       set-media-message-spend-limit-override-request
                                       :output
                                       set-media-message-spend-limit-override-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation set-text-message-spend-limit-override
                                       :shape-name
                                       "SetTextMessageSpendLimitOverride"
                                       :input
                                       set-text-message-spend-limit-override-request
                                       :output
                                       set-text-message-spend-limit-override-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation set-voice-message-spend-limit-override
                                       :shape-name
                                       "SetVoiceMessageSpendLimitOverride"
                                       :input
                                       set-voice-message-spend-limit-override-request
                                       :output
                                       set-voice-message-spend-limit-override-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation submit-registration-version :shape-name
                                       "SubmitRegistrationVersion" :input
                                       submit-registration-version-request
                                       :output
                                       submit-registration-version-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-event-destination :shape-name
                                       "UpdateEventDestination" :input
                                       update-event-destination-request :output
                                       update-event-destination-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-phone-number :shape-name
                                       "UpdatePhoneNumber" :input
                                       update-phone-number-request :output
                                       update-phone-number-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-pool :shape-name "UpdatePool"
                                       :input update-pool-request :output
                                       update-pool-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-protect-configuration :shape-name
                                       "UpdateProtectConfiguration" :input
                                       update-protect-configuration-request
                                       :output
                                       update-protect-configuration-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 update-protect-configuration-country-rule-set :shape-name
 "UpdateProtectConfigurationCountryRuleSet" :input
 update-protect-configuration-country-rule-set-request :output
 update-protect-configuration-country-rule-set-result :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation update-sender-id :shape-name
                                       "UpdateSenderId" :input
                                       update-sender-id-request :output
                                       update-sender-id-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation verify-destination-number :shape-name
                                       "VerifyDestinationNumber" :input
                                       verify-destination-number-request
                                       :output verify-destination-number-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
