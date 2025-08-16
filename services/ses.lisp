(uiop/package:define-package #:pira/ses (:use)
                             (:export #:add-header-action #:address
                              #:address-list #:amazon-resource-name
                              #:arrival-date #:behavior-on-mxfailure #:body
                              #:bounce-action #:bounce-message
                              #:bounce-smtp-reply-code #:bounce-status-code
                              #:bounce-type #:bounced-recipient-info
                              #:bounced-recipient-info-list
                              #:bulk-email-destination
                              #:bulk-email-destination-list
                              #:bulk-email-destination-status
                              #:bulk-email-destination-status-list
                              #:bulk-email-status #:charset #:cidr
                              #:clone-receipt-rule-set
                              #:cloud-watch-destination
                              #:cloud-watch-dimension-configuration
                              #:cloud-watch-dimension-configurations
                              #:configuration-set #:configuration-set-attribute
                              #:configuration-set-attribute-list
                              #:configuration-set-name #:configuration-sets
                              #:connect-action #:connect-instance-arn #:content
                              #:counter #:create-configuration-set
                              #:create-configuration-set-event-destination
                              #:create-configuration-set-tracking-options
                              #:create-custom-verification-email-template
                              #:create-receipt-filter #:create-receipt-rule
                              #:create-receipt-rule-set #:create-template
                              #:custom-mail-from-status
                              #:custom-redirect-domain
                              #:custom-verification-email-template
                              #:custom-verification-email-templates
                              #:default-dimension-value
                              #:delete-configuration-set
                              #:delete-configuration-set-event-destination
                              #:delete-configuration-set-tracking-options
                              #:delete-custom-verification-email-template
                              #:delete-identity #:delete-identity-policy
                              #:delete-receipt-filter #:delete-receipt-rule
                              #:delete-receipt-rule-set #:delete-template
                              #:delete-verified-email-address
                              #:delivery-options
                              #:describe-active-receipt-rule-set
                              #:describe-configuration-set
                              #:describe-receipt-rule
                              #:describe-receipt-rule-set #:destination
                              #:diagnostic-code #:dimension-name
                              #:dimension-value-source #:dkim-attributes
                              #:domain #:dsn-action #:dsn-status #:enabled
                              #:error #:error-message #:event-destination
                              #:event-destination-name #:event-destinations
                              #:event-type #:event-types #:explanation
                              #:extension-field #:extension-field-list
                              #:extension-field-name #:extension-field-value
                              #:failure-redirection-url #:from-address
                              #:get-account-sending-enabled
                              #:get-custom-verification-email-template
                              #:get-identity-dkim-attributes
                              #:get-identity-mail-from-domain-attributes
                              #:get-identity-notification-attributes
                              #:get-identity-policies
                              #:get-identity-verification-attributes
                              #:get-send-quota #:get-send-statistics
                              #:get-template #:header-name #:header-value
                              #:html-part #:iamrole-arn #:identity
                              #:identity-dkim-attributes #:identity-list
                              #:identity-mail-from-domain-attributes
                              #:identity-notification-attributes
                              #:identity-type
                              #:identity-verification-attributes
                              #:invocation-type #:kinesis-firehose-destination
                              #:lambda-action #:last-attempt-date
                              #:last-fresh-start #:list-configuration-sets
                              #:list-custom-verification-email-templates
                              #:list-identities #:list-identity-policies
                              #:list-receipt-filters #:list-receipt-rule-sets
                              #:list-templates #:list-verified-email-addresses
                              #:mail-from-domain-attributes
                              #:mail-from-domain-name #:max24hour-send
                              #:max-items #:max-results #:max-send-rate
                              #:message #:message-data #:message-dsn
                              #:message-id #:message-tag #:message-tag-list
                              #:message-tag-name #:message-tag-value
                              #:next-token #:notification-attributes
                              #:notification-topic #:notification-type #:policy
                              #:policy-map #:policy-name #:policy-name-list
                              #:put-configuration-set-delivery-options
                              #:put-identity-policy #:raw-message
                              #:raw-message-data #:receipt-action
                              #:receipt-actions-list #:receipt-filter
                              #:receipt-filter-list #:receipt-filter-name
                              #:receipt-filter-policy #:receipt-ip-filter
                              #:receipt-rule #:receipt-rule-name
                              #:receipt-rule-names-list
                              #:receipt-rule-set-metadata
                              #:receipt-rule-set-name #:receipt-rule-sets-lists
                              #:receipt-rules-list #:recipient
                              #:recipient-dsn-fields #:recipients-list
                              #:remote-mta #:rendered-template
                              #:reorder-receipt-rule-set #:reporting-mta
                              #:reputation-options #:rule-or-rule-set-name
                              #:s3action #:s3bucket-name #:s3key-prefix
                              #:snsaction #:snsaction-encoding #:snsdestination
                              #:send-bounce #:send-bulk-templated-email
                              #:send-custom-verification-email
                              #:send-data-point #:send-data-point-list
                              #:send-email #:send-raw-email
                              #:send-templated-email #:sent-last24hours
                              #:set-active-receipt-rule-set
                              #:set-identity-dkim-enabled
                              #:set-identity-feedback-forwarding-enabled
                              #:set-identity-headers-in-notifications-enabled
                              #:set-identity-mail-from-domain
                              #:set-identity-notification-topic
                              #:set-receipt-rule-position
                              #:simple-email-service #:stop-action #:stop-scope
                              #:subject #:subject-part
                              #:success-redirection-url #:template
                              #:template-content #:template-data
                              #:template-metadata #:template-metadata-list
                              #:template-name #:test-render-template
                              #:text-part #:timestamp #:tls-policy
                              #:tracking-options
                              #:update-account-sending-enabled
                              #:update-configuration-set-event-destination
                              #:update-configuration-set-reputation-metrics-enabled
                              #:update-configuration-set-sending-enabled
                              #:update-configuration-set-tracking-options
                              #:update-custom-verification-email-template
                              #:update-receipt-rule #:update-template
                              #:verification-attributes #:verification-status
                              #:verification-token #:verification-token-list
                              #:verify-domain-dkim #:verify-domain-identity
                              #:verify-email-address #:verify-email-identity
                              #:workmail-action))
(common-lisp:in-package #:pira/ses)

(smithy/sdk/service:define-service simple-email-service :shape-name
                                   "SimpleEmailService" :version "2010-12-01"
                                   :title "Amazon Simple Email Service"
                                   :xml-namespace
                                   '(:uri
                                     "http://ses.amazonaws.com/doc/2010-12-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "SES")
                                      ("arnNamespace" . "ses")
                                      ("cloudFormationName" . "SES")
                                      ("cloudTrailEventSource"
                                       . "ses.amazonaws.com")
                                      ("docId" . "email-2010-12-01")
                                      ("endpointPrefix" . "email"))
                                     ("aws.auth#sigv4" ("name" . "ses"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-error account-sending-paused-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccountSendingPausedException")
                                (:error-name "AccountSendingPausedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure add-header-action common-lisp:nil
                                    ((header-name :target-type header-name
                                      :required common-lisp:t :member-name
                                      "HeaderName")
                                     (header-value :target-type header-value
                                      :required common-lisp:t :member-name
                                      "HeaderValue"))
                                    (:shape-name "AddHeaderAction"))

(smithy/sdk/shapes:define-type address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list address-list :member address)

(smithy/sdk/shapes:define-error already-exists-exception common-lisp:nil
                                ((name :target-type rule-or-rule-set-name
                                  :member-name "Name")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AlreadyExistsException")
                                (:error-name "AlreadyExists") (:error-code 400))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arrival-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum behavior-on-mxfailure
    common-lisp:nil
  (:use-default-value "UseDefaultValue")
  (:reject-message "RejectMessage"))

(smithy/sdk/shapes:define-structure body common-lisp:nil
                                    ((text :target-type content :member-name
                                      "Text")
                                     (html :target-type content :member-name
                                      "Html"))
                                    (:shape-name "Body"))

(smithy/sdk/shapes:define-structure bounce-action common-lisp:nil
                                    ((topic-arn :target-type
                                      amazon-resource-name :member-name
                                      "TopicArn")
                                     (smtp-reply-code :target-type
                                      bounce-smtp-reply-code :required
                                      common-lisp:t :member-name
                                      "SmtpReplyCode")
                                     (status-code :target-type
                                      bounce-status-code :member-name
                                      "StatusCode")
                                     (message :target-type bounce-message
                                      :required common-lisp:t :member-name
                                      "Message")
                                     (sender :target-type address :required
                                      common-lisp:t :member-name "Sender"))
                                    (:shape-name "BounceAction"))

(smithy/sdk/shapes:define-type bounce-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bounce-smtp-reply-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bounce-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum bounce-type
    common-lisp:nil
  (:does-not-exist "DoesNotExist")
  (:message-too-large "MessageTooLarge")
  (:exceeded-quota "ExceededQuota")
  (:content-rejected "ContentRejected")
  (:undefined "Undefined")
  (:temporary-failure "TemporaryFailure"))

(smithy/sdk/shapes:define-structure bounced-recipient-info common-lisp:nil
                                    ((recipient :target-type address :required
                                      common-lisp:t :member-name "Recipient")
                                     (recipient-arn :target-type
                                      amazon-resource-name :member-name
                                      "RecipientArn")
                                     (bounce-type :target-type bounce-type
                                      :member-name "BounceType")
                                     (recipient-dsn-fields :target-type
                                      recipient-dsn-fields :member-name
                                      "RecipientDsnFields"))
                                    (:shape-name "BouncedRecipientInfo"))

(smithy/sdk/shapes:define-list bounced-recipient-info-list :member
                               bounced-recipient-info)

(smithy/sdk/shapes:define-structure bulk-email-destination common-lisp:nil
                                    ((destination :target-type destination
                                      :required common-lisp:t :member-name
                                      "Destination")
                                     (replacement-tags :target-type
                                      message-tag-list :member-name
                                      "ReplacementTags")
                                     (replacement-template-data :target-type
                                      template-data :member-name
                                      "ReplacementTemplateData"))
                                    (:shape-name "BulkEmailDestination"))

(smithy/sdk/shapes:define-list bulk-email-destination-list :member
                               bulk-email-destination)

(smithy/sdk/shapes:define-structure bulk-email-destination-status
                                    common-lisp:nil
                                    ((status :target-type bulk-email-status
                                      :member-name "Status")
                                     (error :target-type error :member-name
                                      "Error")
                                     (message-id :target-type message-id
                                      :member-name "MessageId"))
                                    (:shape-name "BulkEmailDestinationStatus"))

(smithy/sdk/shapes:define-list bulk-email-destination-status-list :member
                               bulk-email-destination-status)

(smithy/sdk/shapes:define-enum bulk-email-status
    common-lisp:nil
  (:success "Success")
  (:message-rejected "MessageRejected")
  (:mail-from-domain-not-verified "MailFromDomainNotVerified")
  (:configuration-set-does-not-exist "ConfigurationSetDoesNotExist")
  (:template-does-not-exist "TemplateDoesNotExist")
  (:account-suspended "AccountSuspended")
  (:account-throttled "AccountThrottled")
  (:account-daily-quota-exceeded "AccountDailyQuotaExceeded")
  (:invalid-sending-pool-name "InvalidSendingPoolName")
  (:account-sending-paused "AccountSendingPaused")
  (:configuration-set-sending-paused "ConfigurationSetSendingPaused")
  (:invalid-parameter-value "InvalidParameterValue")
  (:transient-failure "TransientFailure")
  (:failed "Failed"))

(smithy/sdk/shapes:define-error cannot-delete-exception common-lisp:nil
                                ((name :target-type rule-or-rule-set-name
                                  :member-name "Name")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "CannotDeleteException")
                                (:error-name "CannotDelete") (:error-code 400))

(smithy/sdk/shapes:define-type charset smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cidr smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input clone-receipt-rule-set-request common-lisp:nil
                                ((rule-set-name :target-type
                                  receipt-rule-set-name :required common-lisp:t
                                  :member-name "RuleSetName")
                                 (original-rule-set-name :target-type
                                  receipt-rule-set-name :required common-lisp:t
                                  :member-name "OriginalRuleSetName"))
                                (:shape-name "CloneReceiptRuleSetRequest"))

(smithy/sdk/shapes:define-output clone-receipt-rule-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CloneReceiptRuleSetResponse"))

(smithy/sdk/shapes:define-structure cloud-watch-destination common-lisp:nil
                                    ((dimension-configurations :target-type
                                      cloud-watch-dimension-configurations
                                      :required common-lisp:t :member-name
                                      "DimensionConfigurations"))
                                    (:shape-name "CloudWatchDestination"))

(smithy/sdk/shapes:define-structure cloud-watch-dimension-configuration
                                    common-lisp:nil
                                    ((dimension-name :target-type
                                      dimension-name :required common-lisp:t
                                      :member-name "DimensionName")
                                     (dimension-value-source :target-type
                                      dimension-value-source :required
                                      common-lisp:t :member-name
                                      "DimensionValueSource")
                                     (default-dimension-value :target-type
                                      default-dimension-value :required
                                      common-lisp:t :member-name
                                      "DefaultDimensionValue"))
                                    (:shape-name
                                     "CloudWatchDimensionConfiguration"))

(smithy/sdk/shapes:define-list cloud-watch-dimension-configurations :member
                               cloud-watch-dimension-configuration)

(smithy/sdk/shapes:define-structure configuration-set common-lisp:nil
                                    ((name :target-type configuration-set-name
                                      :required common-lisp:t :member-name
                                      "Name"))
                                    (:shape-name "ConfigurationSet"))

(smithy/sdk/shapes:define-error configuration-set-already-exists-exception
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ConfigurationSetAlreadyExistsException")
                                (:error-name "ConfigurationSetAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum configuration-set-attribute
    common-lisp:nil
  (:event-destinations "eventDestinations")
  (:tracking-options "trackingOptions")
  (:delivery-options "deliveryOptions")
  (:reputation-options "reputationOptions"))

(smithy/sdk/shapes:define-list configuration-set-attribute-list :member
                               configuration-set-attribute)

(smithy/sdk/shapes:define-error configuration-set-does-not-exist-exception
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ConfigurationSetDoesNotExistException")
                                (:error-name "ConfigurationSetDoesNotExist")
                                (:error-code 400))

(smithy/sdk/shapes:define-type configuration-set-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error configuration-set-sending-paused-exception
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ConfigurationSetSendingPausedException")
                                (:error-name
                                 "ConfigurationSetSendingPausedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list configuration-sets :member configuration-set)

(smithy/sdk/shapes:define-structure connect-action common-lisp:nil
                                    ((instance-arn :target-type
                                      connect-instance-arn :required
                                      common-lisp:t :member-name "InstanceARN")
                                     (iamrole-arn :target-type iamrole-arn
                                      :required common-lisp:t :member-name
                                      "IAMRoleARN"))
                                    (:shape-name "ConnectAction"))

(smithy/sdk/shapes:define-type connect-instance-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure content common-lisp:nil
                                    ((data :target-type message-data :required
                                      common-lisp:t :member-name "Data")
                                     (charset :target-type charset :member-name
                                      "Charset"))
                                    (:shape-name "Content"))

(smithy/sdk/shapes:define-type counter smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input
 create-configuration-set-event-destination-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName")
  (event-destination :target-type event-destination :required common-lisp:t
   :member-name "EventDestination"))
 (:shape-name "CreateConfigurationSetEventDestinationRequest"))

(smithy/sdk/shapes:define-output
 create-configuration-set-event-destination-response common-lisp:nil
 common-lisp:nil (:shape-name "CreateConfigurationSetEventDestinationResponse"))

(smithy/sdk/shapes:define-input create-configuration-set-request
                                common-lisp:nil
                                ((configuration-set :target-type
                                  configuration-set :required common-lisp:t
                                  :member-name "ConfigurationSet"))
                                (:shape-name "CreateConfigurationSetRequest"))

(smithy/sdk/shapes:define-output create-configuration-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateConfigurationSetResponse"))

(smithy/sdk/shapes:define-input
 create-configuration-set-tracking-options-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName")
  (tracking-options :target-type tracking-options :required common-lisp:t
   :member-name "TrackingOptions"))
 (:shape-name "CreateConfigurationSetTrackingOptionsRequest"))

(smithy/sdk/shapes:define-output
 create-configuration-set-tracking-options-response common-lisp:nil
 common-lisp:nil (:shape-name "CreateConfigurationSetTrackingOptionsResponse"))

(smithy/sdk/shapes:define-input
 create-custom-verification-email-template-request common-lisp:nil
 ((template-name :target-type template-name :required common-lisp:t
   :member-name "TemplateName")
  (from-email-address :target-type from-address :required common-lisp:t
   :member-name "FromEmailAddress")
  (template-subject :target-type subject :required common-lisp:t :member-name
   "TemplateSubject")
  (template-content :target-type template-content :required common-lisp:t
   :member-name "TemplateContent")
  (success-redirection-url :target-type success-redirection-url :required
   common-lisp:t :member-name "SuccessRedirectionURL")
  (failure-redirection-url :target-type failure-redirection-url :required
   common-lisp:t :member-name "FailureRedirectionURL"))
 (:shape-name "CreateCustomVerificationEmailTemplateRequest"))

(smithy/sdk/shapes:define-input create-receipt-filter-request common-lisp:nil
                                ((filter :target-type receipt-filter :required
                                  common-lisp:t :member-name "Filter"))
                                (:shape-name "CreateReceiptFilterRequest"))

(smithy/sdk/shapes:define-output create-receipt-filter-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateReceiptFilterResponse"))

(smithy/sdk/shapes:define-input create-receipt-rule-request common-lisp:nil
                                ((rule-set-name :target-type
                                  receipt-rule-set-name :required common-lisp:t
                                  :member-name "RuleSetName")
                                 (after :target-type receipt-rule-name
                                  :member-name "After")
                                 (rule :target-type receipt-rule :required
                                  common-lisp:t :member-name "Rule"))
                                (:shape-name "CreateReceiptRuleRequest"))

(smithy/sdk/shapes:define-output create-receipt-rule-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateReceiptRuleResponse"))

(smithy/sdk/shapes:define-input create-receipt-rule-set-request common-lisp:nil
                                ((rule-set-name :target-type
                                  receipt-rule-set-name :required common-lisp:t
                                  :member-name "RuleSetName"))
                                (:shape-name "CreateReceiptRuleSetRequest"))

(smithy/sdk/shapes:define-output create-receipt-rule-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateReceiptRuleSetResponse"))

(smithy/sdk/shapes:define-input create-template-request common-lisp:nil
                                ((template :target-type template :required
                                  common-lisp:t :member-name "Template"))
                                (:shape-name "CreateTemplateRequest"))

(smithy/sdk/shapes:define-output create-template-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateTemplateResponse"))

(smithy/sdk/shapes:define-enum custom-mail-from-status
    common-lisp:nil
  (:pending "Pending")
  (:success "Success")
  (:failed "Failed")
  (:temporary-failure "TemporaryFailure"))

(smithy/sdk/shapes:define-type custom-redirect-domain
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error
 custom-verification-email-invalid-content-exception common-lisp:nil
 ((message :target-type error-message :member-name "message"))
 (:shape-name "CustomVerificationEmailInvalidContentException")
 (:error-name "CustomVerificationEmailInvalidContent") (:error-code 400))

(smithy/sdk/shapes:define-structure custom-verification-email-template
                                    common-lisp:nil
                                    ((template-name :target-type template-name
                                      :member-name "TemplateName")
                                     (from-email-address :target-type
                                      from-address :member-name
                                      "FromEmailAddress")
                                     (template-subject :target-type subject
                                      :member-name "TemplateSubject")
                                     (success-redirection-url :target-type
                                      success-redirection-url :member-name
                                      "SuccessRedirectionURL")
                                     (failure-redirection-url :target-type
                                      failure-redirection-url :member-name
                                      "FailureRedirectionURL"))
                                    (:shape-name
                                     "CustomVerificationEmailTemplate"))

(smithy/sdk/shapes:define-error
 custom-verification-email-template-already-exists-exception common-lisp:nil
 ((custom-verification-email-template-name :target-type template-name
   :member-name "CustomVerificationEmailTemplateName")
  (message :target-type error-message :member-name "message"))
 (:shape-name "CustomVerificationEmailTemplateAlreadyExistsException")
 (:error-name "CustomVerificationEmailTemplateAlreadyExists") (:error-code 400))

(smithy/sdk/shapes:define-error
 custom-verification-email-template-does-not-exist-exception common-lisp:nil
 ((custom-verification-email-template-name :target-type template-name
   :member-name "CustomVerificationEmailTemplateName")
  (message :target-type error-message :member-name "message"))
 (:shape-name "CustomVerificationEmailTemplateDoesNotExistException")
 (:error-name "CustomVerificationEmailTemplateDoesNotExist") (:error-code 400))

(smithy/sdk/shapes:define-list custom-verification-email-templates :member
                               custom-verification-email-template)

(smithy/sdk/shapes:define-type default-dimension-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 delete-configuration-set-event-destination-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName")
  (event-destination-name :target-type event-destination-name :required
   common-lisp:t :member-name "EventDestinationName"))
 (:shape-name "DeleteConfigurationSetEventDestinationRequest"))

(smithy/sdk/shapes:define-output
 delete-configuration-set-event-destination-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteConfigurationSetEventDestinationResponse"))

(smithy/sdk/shapes:define-input delete-configuration-set-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName"))
                                (:shape-name "DeleteConfigurationSetRequest"))

(smithy/sdk/shapes:define-output delete-configuration-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteConfigurationSetResponse"))

(smithy/sdk/shapes:define-input
 delete-configuration-set-tracking-options-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName"))
 (:shape-name "DeleteConfigurationSetTrackingOptionsRequest"))

(smithy/sdk/shapes:define-output
 delete-configuration-set-tracking-options-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteConfigurationSetTrackingOptionsResponse"))

(smithy/sdk/shapes:define-input
 delete-custom-verification-email-template-request common-lisp:nil
 ((template-name :target-type template-name :required common-lisp:t
   :member-name "TemplateName"))
 (:shape-name "DeleteCustomVerificationEmailTemplateRequest"))

(smithy/sdk/shapes:define-input delete-identity-policy-request common-lisp:nil
                                ((identity :target-type identity :required
                                  common-lisp:t :member-name "Identity")
                                 (policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName"))
                                (:shape-name "DeleteIdentityPolicyRequest"))

(smithy/sdk/shapes:define-output delete-identity-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteIdentityPolicyResponse"))

(smithy/sdk/shapes:define-input delete-identity-request common-lisp:nil
                                ((identity :target-type identity :required
                                  common-lisp:t :member-name "Identity"))
                                (:shape-name "DeleteIdentityRequest"))

(smithy/sdk/shapes:define-output delete-identity-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteIdentityResponse"))

(smithy/sdk/shapes:define-input delete-receipt-filter-request common-lisp:nil
                                ((filter-name :target-type receipt-filter-name
                                  :required common-lisp:t :member-name
                                  "FilterName"))
                                (:shape-name "DeleteReceiptFilterRequest"))

(smithy/sdk/shapes:define-output delete-receipt-filter-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteReceiptFilterResponse"))

(smithy/sdk/shapes:define-input delete-receipt-rule-request common-lisp:nil
                                ((rule-set-name :target-type
                                  receipt-rule-set-name :required common-lisp:t
                                  :member-name "RuleSetName")
                                 (rule-name :target-type receipt-rule-name
                                  :required common-lisp:t :member-name
                                  "RuleName"))
                                (:shape-name "DeleteReceiptRuleRequest"))

(smithy/sdk/shapes:define-output delete-receipt-rule-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteReceiptRuleResponse"))

(smithy/sdk/shapes:define-input delete-receipt-rule-set-request common-lisp:nil
                                ((rule-set-name :target-type
                                  receipt-rule-set-name :required common-lisp:t
                                  :member-name "RuleSetName"))
                                (:shape-name "DeleteReceiptRuleSetRequest"))

(smithy/sdk/shapes:define-output delete-receipt-rule-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteReceiptRuleSetResponse"))

(smithy/sdk/shapes:define-input delete-template-request common-lisp:nil
                                ((template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "TemplateName"))
                                (:shape-name "DeleteTemplateRequest"))

(smithy/sdk/shapes:define-output delete-template-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTemplateResponse"))

(smithy/sdk/shapes:define-input delete-verified-email-address-request
                                common-lisp:nil
                                ((email-address :target-type address :required
                                  common-lisp:t :member-name "EmailAddress"))
                                (:shape-name
                                 "DeleteVerifiedEmailAddressRequest"))

(smithy/sdk/shapes:define-structure delivery-options common-lisp:nil
                                    ((tls-policy :target-type tls-policy
                                      :member-name "TlsPolicy"))
                                    (:shape-name "DeliveryOptions"))

(smithy/sdk/shapes:define-input describe-active-receipt-rule-set-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeActiveReceiptRuleSetRequest"))

(smithy/sdk/shapes:define-output describe-active-receipt-rule-set-response
                                 common-lisp:nil
                                 ((metadata :target-type
                                   receipt-rule-set-metadata :member-name
                                   "Metadata")
                                  (rules :target-type receipt-rules-list
                                   :member-name "Rules"))
                                 (:shape-name
                                  "DescribeActiveReceiptRuleSetResponse"))

(smithy/sdk/shapes:define-input describe-configuration-set-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName")
                                 (configuration-set-attribute-names
                                  :target-type configuration-set-attribute-list
                                  :member-name
                                  "ConfigurationSetAttributeNames"))
                                (:shape-name "DescribeConfigurationSetRequest"))

(smithy/sdk/shapes:define-output describe-configuration-set-response
                                 common-lisp:nil
                                 ((configuration-set :target-type
                                   configuration-set :member-name
                                   "ConfigurationSet")
                                  (event-destinations :target-type
                                   event-destinations :member-name
                                   "EventDestinations")
                                  (tracking-options :target-type
                                   tracking-options :member-name
                                   "TrackingOptions")
                                  (delivery-options :target-type
                                   delivery-options :member-name
                                   "DeliveryOptions")
                                  (reputation-options :target-type
                                   reputation-options :member-name
                                   "ReputationOptions"))
                                 (:shape-name
                                  "DescribeConfigurationSetResponse"))

(smithy/sdk/shapes:define-input describe-receipt-rule-request common-lisp:nil
                                ((rule-set-name :target-type
                                  receipt-rule-set-name :required common-lisp:t
                                  :member-name "RuleSetName")
                                 (rule-name :target-type receipt-rule-name
                                  :required common-lisp:t :member-name
                                  "RuleName"))
                                (:shape-name "DescribeReceiptRuleRequest"))

(smithy/sdk/shapes:define-output describe-receipt-rule-response common-lisp:nil
                                 ((rule :target-type receipt-rule :member-name
                                   "Rule"))
                                 (:shape-name "DescribeReceiptRuleResponse"))

(smithy/sdk/shapes:define-input describe-receipt-rule-set-request
                                common-lisp:nil
                                ((rule-set-name :target-type
                                  receipt-rule-set-name :required common-lisp:t
                                  :member-name "RuleSetName"))
                                (:shape-name "DescribeReceiptRuleSetRequest"))

(smithy/sdk/shapes:define-output describe-receipt-rule-set-response
                                 common-lisp:nil
                                 ((metadata :target-type
                                   receipt-rule-set-metadata :member-name
                                   "Metadata")
                                  (rules :target-type receipt-rules-list
                                   :member-name "Rules"))
                                 (:shape-name "DescribeReceiptRuleSetResponse"))

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((to-addresses :target-type address-list
                                      :member-name "ToAddresses")
                                     (cc-addresses :target-type address-list
                                      :member-name "CcAddresses")
                                     (bcc-addresses :target-type address-list
                                      :member-name "BccAddresses"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-type diagnostic-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dimension-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum dimension-value-source
    common-lisp:nil
  (:message-tag "messageTag")
  (:email-header "emailHeader")
  (:link-tag "linkTag"))

(smithy/sdk/shapes:define-map dkim-attributes :key identity :value
                              identity-dkim-attributes)

(smithy/sdk/shapes:define-type domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum dsn-action
    common-lisp:nil
  (:failed "failed")
  (:delayed "delayed")
  (:delivered "delivered")
  (:relayed "relayed")
  (:expanded "expanded"))

(smithy/sdk/shapes:define-type dsn-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type error smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-destination common-lisp:nil
                                    ((name :target-type event-destination-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (enabled :target-type enabled :member-name
                                      "Enabled")
                                     (matching-event-types :target-type
                                      event-types :required common-lisp:t
                                      :member-name "MatchingEventTypes")
                                     (kinesis-firehose-destination :target-type
                                      kinesis-firehose-destination :member-name
                                      "KinesisFirehoseDestination")
                                     (cloud-watch-destination :target-type
                                      cloud-watch-destination :member-name
                                      "CloudWatchDestination")
                                     (snsdestination :target-type
                                      snsdestination :member-name
                                      "SNSDestination"))
                                    (:shape-name "EventDestination"))

(smithy/sdk/shapes:define-error event-destination-already-exists-exception
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName")
                                 (event-destination-name :target-type
                                  event-destination-name :member-name
                                  "EventDestinationName")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "EventDestinationAlreadyExistsException")
                                (:error-name "EventDestinationAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-error event-destination-does-not-exist-exception
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName")
                                 (event-destination-name :target-type
                                  event-destination-name :member-name
                                  "EventDestinationName")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "EventDestinationDoesNotExistException")
                                (:error-name "EventDestinationDoesNotExist")
                                (:error-code 400))

(smithy/sdk/shapes:define-type event-destination-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-destinations :member event-destination)

(smithy/sdk/shapes:define-enum event-type
    common-lisp:nil
  (:send "send")
  (:reject "reject")
  (:bounce "bounce")
  (:complaint "complaint")
  (:delivery "delivery")
  (:open "open")
  (:click "click")
  (:rendering-failure "renderingFailure"))

(smithy/sdk/shapes:define-list event-types :member event-type)

(smithy/sdk/shapes:define-type explanation smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure extension-field common-lisp:nil
                                    ((name :target-type extension-field-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type extension-field-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "ExtensionField"))

(smithy/sdk/shapes:define-list extension-field-list :member extension-field)

(smithy/sdk/shapes:define-type extension-field-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type extension-field-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failure-redirection-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type from-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error from-email-address-not-verified-exception
                                common-lisp:nil
                                ((from-email-address :target-type from-address
                                  :member-name "FromEmailAddress")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "FromEmailAddressNotVerifiedException")
                                (:error-name "FromEmailAddressNotVerified")
                                (:error-code 400))

(smithy/sdk/shapes:define-output get-account-sending-enabled-response
                                 common-lisp:nil
                                 ((enabled :target-type enabled :member-name
                                   "Enabled"))
                                 (:shape-name
                                  "GetAccountSendingEnabledResponse"))

(smithy/sdk/shapes:define-input get-custom-verification-email-template-request
                                common-lisp:nil
                                ((template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "TemplateName"))
                                (:shape-name
                                 "GetCustomVerificationEmailTemplateRequest"))

(smithy/sdk/shapes:define-output
 get-custom-verification-email-template-response common-lisp:nil
 ((template-name :target-type template-name :member-name "TemplateName")
  (from-email-address :target-type from-address :member-name
   "FromEmailAddress")
  (template-subject :target-type subject :member-name "TemplateSubject")
  (template-content :target-type template-content :member-name
   "TemplateContent")
  (success-redirection-url :target-type success-redirection-url :member-name
   "SuccessRedirectionURL")
  (failure-redirection-url :target-type failure-redirection-url :member-name
   "FailureRedirectionURL"))
 (:shape-name "GetCustomVerificationEmailTemplateResponse"))

(smithy/sdk/shapes:define-input get-identity-dkim-attributes-request
                                common-lisp:nil
                                ((identities :target-type identity-list
                                  :required common-lisp:t :member-name
                                  "Identities"))
                                (:shape-name
                                 "GetIdentityDkimAttributesRequest"))

(smithy/sdk/shapes:define-output get-identity-dkim-attributes-response
                                 common-lisp:nil
                                 ((dkim-attributes :target-type dkim-attributes
                                   :required common-lisp:t :member-name
                                   "DkimAttributes"))
                                 (:shape-name
                                  "GetIdentityDkimAttributesResponse"))

(smithy/sdk/shapes:define-input
 get-identity-mail-from-domain-attributes-request common-lisp:nil
 ((identities :target-type identity-list :required common-lisp:t :member-name
   "Identities"))
 (:shape-name "GetIdentityMailFromDomainAttributesRequest"))

(smithy/sdk/shapes:define-output
 get-identity-mail-from-domain-attributes-response common-lisp:nil
 ((mail-from-domain-attributes :target-type mail-from-domain-attributes
   :required common-lisp:t :member-name "MailFromDomainAttributes"))
 (:shape-name "GetIdentityMailFromDomainAttributesResponse"))

(smithy/sdk/shapes:define-input get-identity-notification-attributes-request
                                common-lisp:nil
                                ((identities :target-type identity-list
                                  :required common-lisp:t :member-name
                                  "Identities"))
                                (:shape-name
                                 "GetIdentityNotificationAttributesRequest"))

(smithy/sdk/shapes:define-output get-identity-notification-attributes-response
                                 common-lisp:nil
                                 ((notification-attributes :target-type
                                   notification-attributes :required
                                   common-lisp:t :member-name
                                   "NotificationAttributes"))
                                 (:shape-name
                                  "GetIdentityNotificationAttributesResponse"))

(smithy/sdk/shapes:define-input get-identity-policies-request common-lisp:nil
                                ((identity :target-type identity :required
                                  common-lisp:t :member-name "Identity")
                                 (policy-names :target-type policy-name-list
                                  :required common-lisp:t :member-name
                                  "PolicyNames"))
                                (:shape-name "GetIdentityPoliciesRequest"))

(smithy/sdk/shapes:define-output get-identity-policies-response common-lisp:nil
                                 ((policies :target-type policy-map :required
                                   common-lisp:t :member-name "Policies"))
                                 (:shape-name "GetIdentityPoliciesResponse"))

(smithy/sdk/shapes:define-input get-identity-verification-attributes-request
                                common-lisp:nil
                                ((identities :target-type identity-list
                                  :required common-lisp:t :member-name
                                  "Identities"))
                                (:shape-name
                                 "GetIdentityVerificationAttributesRequest"))

(smithy/sdk/shapes:define-output get-identity-verification-attributes-response
                                 common-lisp:nil
                                 ((verification-attributes :target-type
                                   verification-attributes :required
                                   common-lisp:t :member-name
                                   "VerificationAttributes"))
                                 (:shape-name
                                  "GetIdentityVerificationAttributesResponse"))

(smithy/sdk/shapes:define-output get-send-quota-response common-lisp:nil
                                 ((max24hour-send :target-type max24hour-send
                                   :member-name "Max24HourSend")
                                  (max-send-rate :target-type max-send-rate
                                   :member-name "MaxSendRate")
                                  (sent-last24hours :target-type
                                   sent-last24hours :member-name
                                   "SentLast24Hours"))
                                 (:shape-name "GetSendQuotaResponse"))

(smithy/sdk/shapes:define-output get-send-statistics-response common-lisp:nil
                                 ((send-data-points :target-type
                                   send-data-point-list :member-name
                                   "SendDataPoints"))
                                 (:shape-name "GetSendStatisticsResponse"))

(smithy/sdk/shapes:define-input get-template-request common-lisp:nil
                                ((template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "TemplateName"))
                                (:shape-name "GetTemplateRequest"))

(smithy/sdk/shapes:define-output get-template-response common-lisp:nil
                                 ((template :target-type template :member-name
                                   "Template"))
                                 (:shape-name "GetTemplateResponse"))

(smithy/sdk/shapes:define-type header-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type html-part smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iamrole-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identity-dkim-attributes common-lisp:nil
                                    ((dkim-enabled :target-type enabled
                                      :required common-lisp:t :member-name
                                      "DkimEnabled")
                                     (dkim-verification-status :target-type
                                      verification-status :required
                                      common-lisp:t :member-name
                                      "DkimVerificationStatus")
                                     (dkim-tokens :target-type
                                      verification-token-list :member-name
                                      "DkimTokens"))
                                    (:shape-name "IdentityDkimAttributes"))

(smithy/sdk/shapes:define-list identity-list :member identity)

(smithy/sdk/shapes:define-structure identity-mail-from-domain-attributes
                                    common-lisp:nil
                                    ((mail-from-domain :target-type
                                      mail-from-domain-name :required
                                      common-lisp:t :member-name
                                      "MailFromDomain")
                                     (mail-from-domain-status :target-type
                                      custom-mail-from-status :required
                                      common-lisp:t :member-name
                                      "MailFromDomainStatus")
                                     (behavior-on-mxfailure :target-type
                                      behavior-on-mxfailure :required
                                      common-lisp:t :member-name
                                      "BehaviorOnMXFailure"))
                                    (:shape-name
                                     "IdentityMailFromDomainAttributes"))

(smithy/sdk/shapes:define-structure identity-notification-attributes
                                    common-lisp:nil
                                    ((bounce-topic :target-type
                                      notification-topic :required
                                      common-lisp:t :member-name "BounceTopic")
                                     (complaint-topic :target-type
                                      notification-topic :required
                                      common-lisp:t :member-name
                                      "ComplaintTopic")
                                     (delivery-topic :target-type
                                      notification-topic :required
                                      common-lisp:t :member-name
                                      "DeliveryTopic")
                                     (forwarding-enabled :target-type enabled
                                      :required common-lisp:t :member-name
                                      "ForwardingEnabled")
                                     (headers-in-bounce-notifications-enabled
                                      :target-type enabled :member-name
                                      "HeadersInBounceNotificationsEnabled")
                                     (headers-in-complaint-notifications-enabled
                                      :target-type enabled :member-name
                                      "HeadersInComplaintNotificationsEnabled")
                                     (headers-in-delivery-notifications-enabled
                                      :target-type enabled :member-name
                                      "HeadersInDeliveryNotificationsEnabled"))
                                    (:shape-name
                                     "IdentityNotificationAttributes"))

(smithy/sdk/shapes:define-enum identity-type
    common-lisp:nil
  (:email-address "EmailAddress")
  (:domain "Domain"))

(smithy/sdk/shapes:define-structure identity-verification-attributes
                                    common-lisp:nil
                                    ((verification-status :target-type
                                      verification-status :required
                                      common-lisp:t :member-name
                                      "VerificationStatus")
                                     (verification-token :target-type
                                      verification-token :member-name
                                      "VerificationToken"))
                                    (:shape-name
                                     "IdentityVerificationAttributes"))

(smithy/sdk/shapes:define-error invalid-cloud-watch-destination-exception
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName")
                                 (event-destination-name :target-type
                                  event-destination-name :member-name
                                  "EventDestinationName")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidCloudWatchDestinationException")
                                (:error-name "InvalidCloudWatchDestination")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-configuration-set-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidConfigurationSetException")
                                (:error-name "InvalidConfigurationSet")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-delivery-options-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidDeliveryOptionsException")
                                (:error-name "InvalidDeliveryOptions")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-firehose-destination-exception
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName")
                                 (event-destination-name :target-type
                                  event-destination-name :member-name
                                  "EventDestinationName")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidFirehoseDestinationException")
                                (:error-name "InvalidFirehoseDestination")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-lambda-function-exception
                                common-lisp:nil
                                ((function-arn :target-type
                                  amazon-resource-name :member-name
                                  "FunctionArn")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidLambdaFunctionException")
                                (:error-name "InvalidLambdaFunction")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-policy-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidPolicyException")
                                (:error-name "InvalidPolicy") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-rendering-parameter-exception
                                common-lisp:nil
                                ((template-name :target-type template-name
                                  :member-name "TemplateName")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidRenderingParameterException")
                                (:error-name "InvalidRenderingParameter")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-s3configuration-exception
                                common-lisp:nil
                                ((bucket :target-type s3bucket-name
                                  :member-name "Bucket")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidS3ConfigurationException")
                                (:error-name "InvalidS3Configuration")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-snsdestination-exception
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName")
                                 (event-destination-name :target-type
                                  event-destination-name :member-name
                                  "EventDestinationName")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidSNSDestinationException")
                                (:error-name "InvalidSNSDestination")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-sns-topic-exception common-lisp:nil
                                ((topic :target-type amazon-resource-name
                                  :member-name "Topic")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidSnsTopicException")
                                (:error-name "InvalidSnsTopic")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-template-exception common-lisp:nil
                                ((template-name :target-type template-name
                                  :member-name "TemplateName")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidTemplateException")
                                (:error-name "InvalidTemplate")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-tracking-options-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidTrackingOptionsException")
                                (:error-name "InvalidTrackingOptions")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum invocation-type
    common-lisp:nil
  (:event "Event")
  (:request-response "RequestResponse"))

(smithy/sdk/shapes:define-structure kinesis-firehose-destination
                                    common-lisp:nil
                                    ((iamrole-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "IAMRoleARN")
                                     (delivery-stream-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name
                                      "DeliveryStreamARN"))
                                    (:shape-name "KinesisFirehoseDestination"))

(smithy/sdk/shapes:define-structure lambda-action common-lisp:nil
                                    ((topic-arn :target-type
                                      amazon-resource-name :member-name
                                      "TopicArn")
                                     (function-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "FunctionArn")
                                     (invocation-type :target-type
                                      invocation-type :member-name
                                      "InvocationType"))
                                    (:shape-name "LambdaAction"))

(smithy/sdk/shapes:define-type last-attempt-date
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type last-fresh-start
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-name "LimitExceeded") (:error-code 400))

(smithy/sdk/shapes:define-input list-configuration-sets-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-items :target-type max-items :member-name
                                  "MaxItems"))
                                (:shape-name "ListConfigurationSetsRequest"))

(smithy/sdk/shapes:define-output list-configuration-sets-response
                                 common-lisp:nil
                                 ((configuration-sets :target-type
                                   configuration-sets :member-name
                                   "ConfigurationSets")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListConfigurationSetsResponse"))

(smithy/sdk/shapes:define-input
 list-custom-verification-email-templates-request common-lisp:nil
 ((next-token :target-type next-token :member-name "NextToken")
  (max-results :target-type max-results :member-name "MaxResults"))
 (:shape-name "ListCustomVerificationEmailTemplatesRequest"))

(smithy/sdk/shapes:define-output
 list-custom-verification-email-templates-response common-lisp:nil
 ((custom-verification-email-templates :target-type
   custom-verification-email-templates :member-name
   "CustomVerificationEmailTemplates")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListCustomVerificationEmailTemplatesResponse"))

(smithy/sdk/shapes:define-input list-identities-request common-lisp:nil
                                ((identity-type :target-type identity-type
                                  :member-name "IdentityType")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-items :target-type max-items :member-name
                                  "MaxItems"))
                                (:shape-name "ListIdentitiesRequest"))

(smithy/sdk/shapes:define-output list-identities-response common-lisp:nil
                                 ((identities :target-type identity-list
                                   :required common-lisp:t :member-name
                                   "Identities")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListIdentitiesResponse"))

(smithy/sdk/shapes:define-input list-identity-policies-request common-lisp:nil
                                ((identity :target-type identity :required
                                  common-lisp:t :member-name "Identity"))
                                (:shape-name "ListIdentityPoliciesRequest"))

(smithy/sdk/shapes:define-output list-identity-policies-response
                                 common-lisp:nil
                                 ((policy-names :target-type policy-name-list
                                   :required common-lisp:t :member-name
                                   "PolicyNames"))
                                 (:shape-name "ListIdentityPoliciesResponse"))

(smithy/sdk/shapes:define-input list-receipt-filters-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "ListReceiptFiltersRequest"))

(smithy/sdk/shapes:define-output list-receipt-filters-response common-lisp:nil
                                 ((filters :target-type receipt-filter-list
                                   :member-name "Filters"))
                                 (:shape-name "ListReceiptFiltersResponse"))

(smithy/sdk/shapes:define-input list-receipt-rule-sets-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListReceiptRuleSetsRequest"))

(smithy/sdk/shapes:define-output list-receipt-rule-sets-response
                                 common-lisp:nil
                                 ((rule-sets :target-type
                                   receipt-rule-sets-lists :member-name
                                   "RuleSets")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListReceiptRuleSetsResponse"))

(smithy/sdk/shapes:define-input list-templates-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-items :target-type max-items :member-name
                                  "MaxItems"))
                                (:shape-name "ListTemplatesRequest"))

(smithy/sdk/shapes:define-output list-templates-response common-lisp:nil
                                 ((templates-metadata :target-type
                                   template-metadata-list :member-name
                                   "TemplatesMetadata")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTemplatesResponse"))

(smithy/sdk/shapes:define-output list-verified-email-addresses-response
                                 common-lisp:nil
                                 ((verified-email-addresses :target-type
                                   address-list :member-name
                                   "VerifiedEmailAddresses"))
                                 (:shape-name
                                  "ListVerifiedEmailAddressesResponse"))

(smithy/sdk/shapes:define-map mail-from-domain-attributes :key identity :value
                              identity-mail-from-domain-attributes)

(smithy/sdk/shapes:define-type mail-from-domain-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error mail-from-domain-not-verified-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "MailFromDomainNotVerifiedException")
                                (:error-name
                                 "MailFromDomainNotVerifiedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type max24hour-send smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type max-items smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-send-rate smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure message common-lisp:nil
                                    ((subject :target-type content :required
                                      common-lisp:t :member-name "Subject")
                                     (body :target-type body :required
                                      common-lisp:t :member-name "Body"))
                                    (:shape-name "Message"))

(smithy/sdk/shapes:define-type message-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure message-dsn common-lisp:nil
                                    ((reporting-mta :target-type reporting-mta
                                      :required common-lisp:t :member-name
                                      "ReportingMta")
                                     (arrival-date :target-type arrival-date
                                      :member-name "ArrivalDate")
                                     (extension-fields :target-type
                                      extension-field-list :member-name
                                      "ExtensionFields"))
                                    (:shape-name "MessageDsn"))

(smithy/sdk/shapes:define-type message-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error message-rejected common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "MessageRejected")
                                (:error-name "MessageRejected")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure message-tag common-lisp:nil
                                    ((name :target-type message-tag-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type message-tag-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "MessageTag"))

(smithy/sdk/shapes:define-list message-tag-list :member message-tag)

(smithy/sdk/shapes:define-type message-tag-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error missing-rendering-attribute-exception
                                common-lisp:nil
                                ((template-name :target-type template-name
                                  :member-name "TemplateName")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "MissingRenderingAttributeException")
                                (:error-name "MissingRenderingAttribute")
                                (:error-code 400))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map notification-attributes :key identity :value
                              identity-notification-attributes)

(smithy/sdk/shapes:define-type notification-topic
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum notification-type
    common-lisp:nil
  (:bounce "Bounce")
  (:complaint "Complaint")
  (:delivery "Delivery"))

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map policy-map :key policy-name :value policy)

(smithy/sdk/shapes:define-type policy-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list policy-name-list :member policy-name)

(smithy/sdk/shapes:define-error production-access-not-granted-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ProductionAccessNotGrantedException")
                                (:error-name "ProductionAccessNotGranted")
                                (:error-code 400))

(smithy/sdk/shapes:define-input put-configuration-set-delivery-options-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName")
                                 (delivery-options :target-type
                                  delivery-options :member-name
                                  "DeliveryOptions"))
                                (:shape-name
                                 "PutConfigurationSetDeliveryOptionsRequest"))

(smithy/sdk/shapes:define-output
 put-configuration-set-delivery-options-response common-lisp:nil
 common-lisp:nil (:shape-name "PutConfigurationSetDeliveryOptionsResponse"))

(smithy/sdk/shapes:define-input put-identity-policy-request common-lisp:nil
                                ((identity :target-type identity :required
                                  common-lisp:t :member-name "Identity")
                                 (policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName")
                                 (policy :target-type policy :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name "PutIdentityPolicyRequest"))

(smithy/sdk/shapes:define-output put-identity-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutIdentityPolicyResponse"))

(smithy/sdk/shapes:define-structure raw-message common-lisp:nil
                                    ((data :target-type raw-message-data
                                      :required common-lisp:t :member-name
                                      "Data"))
                                    (:shape-name "RawMessage"))

(smithy/sdk/shapes:define-type raw-message-data smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure receipt-action common-lisp:nil
                                    ((s3action :target-type s3action
                                      :member-name "S3Action")
                                     (bounce-action :target-type bounce-action
                                      :member-name "BounceAction")
                                     (workmail-action :target-type
                                      workmail-action :member-name
                                      "WorkmailAction")
                                     (lambda-action :target-type lambda-action
                                      :member-name "LambdaAction")
                                     (stop-action :target-type stop-action
                                      :member-name "StopAction")
                                     (add-header-action :target-type
                                      add-header-action :member-name
                                      "AddHeaderAction")
                                     (snsaction :target-type snsaction
                                      :member-name "SNSAction")
                                     (connect-action :target-type
                                      connect-action :member-name
                                      "ConnectAction"))
                                    (:shape-name "ReceiptAction"))

(smithy/sdk/shapes:define-list receipt-actions-list :member receipt-action)

(smithy/sdk/shapes:define-structure receipt-filter common-lisp:nil
                                    ((name :target-type receipt-filter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (ip-filter :target-type receipt-ip-filter
                                      :required common-lisp:t :member-name
                                      "IpFilter"))
                                    (:shape-name "ReceiptFilter"))

(smithy/sdk/shapes:define-list receipt-filter-list :member receipt-filter)

(smithy/sdk/shapes:define-type receipt-filter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum receipt-filter-policy
    common-lisp:nil
  (:block "Block")
  (:allow "Allow"))

(smithy/sdk/shapes:define-structure receipt-ip-filter common-lisp:nil
                                    ((policy :target-type receipt-filter-policy
                                      :required common-lisp:t :member-name
                                      "Policy")
                                     (cidr :target-type cidr :required
                                      common-lisp:t :member-name "Cidr"))
                                    (:shape-name "ReceiptIpFilter"))

(smithy/sdk/shapes:define-structure receipt-rule common-lisp:nil
                                    ((name :target-type receipt-rule-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (enabled :target-type enabled :member-name
                                      "Enabled")
                                     (tls-policy :target-type tls-policy
                                      :member-name "TlsPolicy")
                                     (recipients :target-type recipients-list
                                      :member-name "Recipients")
                                     (actions :target-type receipt-actions-list
                                      :member-name "Actions")
                                     (scan-enabled :target-type enabled
                                      :member-name "ScanEnabled"))
                                    (:shape-name "ReceiptRule"))

(smithy/sdk/shapes:define-type receipt-rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list receipt-rule-names-list :member
                               receipt-rule-name)

(smithy/sdk/shapes:define-structure receipt-rule-set-metadata common-lisp:nil
                                    ((name :target-type receipt-rule-set-name
                                      :member-name "Name")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp"))
                                    (:shape-name "ReceiptRuleSetMetadata"))

(smithy/sdk/shapes:define-type receipt-rule-set-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list receipt-rule-sets-lists :member
                               receipt-rule-set-metadata)

(smithy/sdk/shapes:define-list receipt-rules-list :member receipt-rule)

(smithy/sdk/shapes:define-type recipient smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recipient-dsn-fields common-lisp:nil
                                    ((final-recipient :target-type address
                                      :member-name "FinalRecipient")
                                     (action :target-type dsn-action :required
                                      common-lisp:t :member-name "Action")
                                     (remote-mta :target-type remote-mta
                                      :member-name "RemoteMta")
                                     (status :target-type dsn-status :required
                                      common-lisp:t :member-name "Status")
                                     (diagnostic-code :target-type
                                      diagnostic-code :member-name
                                      "DiagnosticCode")
                                     (last-attempt-date :target-type
                                      last-attempt-date :member-name
                                      "LastAttemptDate")
                                     (extension-fields :target-type
                                      extension-field-list :member-name
                                      "ExtensionFields"))
                                    (:shape-name "RecipientDsnFields"))

(smithy/sdk/shapes:define-list recipients-list :member recipient)

(smithy/sdk/shapes:define-type remote-mta smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rendered-template smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input reorder-receipt-rule-set-request
                                common-lisp:nil
                                ((rule-set-name :target-type
                                  receipt-rule-set-name :required common-lisp:t
                                  :member-name "RuleSetName")
                                 (rule-names :target-type
                                  receipt-rule-names-list :required
                                  common-lisp:t :member-name "RuleNames"))
                                (:shape-name "ReorderReceiptRuleSetRequest"))

(smithy/sdk/shapes:define-output reorder-receipt-rule-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "ReorderReceiptRuleSetResponse"))

(smithy/sdk/shapes:define-type reporting-mta smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reputation-options common-lisp:nil
                                    ((sending-enabled :target-type enabled
                                      :member-name "SendingEnabled")
                                     (reputation-metrics-enabled :target-type
                                      enabled :member-name
                                      "ReputationMetricsEnabled")
                                     (last-fresh-start :target-type
                                      last-fresh-start :member-name
                                      "LastFreshStart"))
                                    (:shape-name "ReputationOptions"))

(smithy/sdk/shapes:define-error rule-does-not-exist-exception common-lisp:nil
                                ((name :target-type rule-or-rule-set-name
                                  :member-name "Name")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "RuleDoesNotExistException")
                                (:error-name "RuleDoesNotExist")
                                (:error-code 400))

(smithy/sdk/shapes:define-type rule-or-rule-set-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error rule-set-does-not-exist-exception
                                common-lisp:nil
                                ((name :target-type rule-or-rule-set-name
                                  :member-name "Name")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "RuleSetDoesNotExistException")
                                (:error-name "RuleSetDoesNotExist")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure s3action common-lisp:nil
                                    ((topic-arn :target-type
                                      amazon-resource-name :member-name
                                      "TopicArn")
                                     (bucket-name :target-type s3bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName")
                                     (object-key-prefix :target-type
                                      s3key-prefix :member-name
                                      "ObjectKeyPrefix")
                                     (kms-key-arn :target-type
                                      amazon-resource-name :member-name
                                      "KmsKeyArn")
                                     (iam-role-arn :target-type iamrole-arn
                                      :member-name "IamRoleArn"))
                                    (:shape-name "S3Action"))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure snsaction common-lisp:nil
                                    ((topic-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "TopicArn")
                                     (encoding :target-type snsaction-encoding
                                      :member-name "Encoding"))
                                    (:shape-name "SNSAction"))

(smithy/sdk/shapes:define-enum snsaction-encoding
    common-lisp:nil
  (:utf8 "UTF-8")
  (:base64 "Base64"))

(smithy/sdk/shapes:define-structure snsdestination common-lisp:nil
                                    ((topic-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "TopicARN"))
                                    (:shape-name "SNSDestination"))

(smithy/sdk/shapes:define-input send-bounce-request common-lisp:nil
                                ((original-message-id :target-type message-id
                                  :required common-lisp:t :member-name
                                  "OriginalMessageId")
                                 (bounce-sender :target-type address :required
                                  common-lisp:t :member-name "BounceSender")
                                 (explanation :target-type explanation
                                  :member-name "Explanation")
                                 (message-dsn :target-type message-dsn
                                  :member-name "MessageDsn")
                                 (bounced-recipient-info-list :target-type
                                  bounced-recipient-info-list :required
                                  common-lisp:t :member-name
                                  "BouncedRecipientInfoList")
                                 (bounce-sender-arn :target-type
                                  amazon-resource-name :member-name
                                  "BounceSenderArn"))
                                (:shape-name "SendBounceRequest"))

(smithy/sdk/shapes:define-output send-bounce-response common-lisp:nil
                                 ((message-id :target-type message-id
                                   :member-name "MessageId"))
                                 (:shape-name "SendBounceResponse"))

(smithy/sdk/shapes:define-input send-bulk-templated-email-request
                                common-lisp:nil
                                ((source :target-type address :required
                                  common-lisp:t :member-name "Source")
                                 (source-arn :target-type amazon-resource-name
                                  :member-name "SourceArn")
                                 (reply-to-addresses :target-type address-list
                                  :member-name "ReplyToAddresses")
                                 (return-path :target-type address :member-name
                                  "ReturnPath")
                                 (return-path-arn :target-type
                                  amazon-resource-name :member-name
                                  "ReturnPathArn")
                                 (configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName")
                                 (default-tags :target-type message-tag-list
                                  :member-name "DefaultTags")
                                 (template :target-type template-name :required
                                  common-lisp:t :member-name "Template")
                                 (template-arn :target-type
                                  amazon-resource-name :member-name
                                  "TemplateArn")
                                 (default-template-data :target-type
                                  template-data :required common-lisp:t
                                  :member-name "DefaultTemplateData")
                                 (destinations :target-type
                                  bulk-email-destination-list :required
                                  common-lisp:t :member-name "Destinations"))
                                (:shape-name "SendBulkTemplatedEmailRequest"))

(smithy/sdk/shapes:define-output send-bulk-templated-email-response
                                 common-lisp:nil
                                 ((status :target-type
                                   bulk-email-destination-status-list :required
                                   common-lisp:t :member-name "Status"))
                                 (:shape-name "SendBulkTemplatedEmailResponse"))

(smithy/sdk/shapes:define-input send-custom-verification-email-request
                                common-lisp:nil
                                ((email-address :target-type address :required
                                  common-lisp:t :member-name "EmailAddress")
                                 (template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "TemplateName")
                                 (configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName"))
                                (:shape-name
                                 "SendCustomVerificationEmailRequest"))

(smithy/sdk/shapes:define-output send-custom-verification-email-response
                                 common-lisp:nil
                                 ((message-id :target-type message-id
                                   :member-name "MessageId"))
                                 (:shape-name
                                  "SendCustomVerificationEmailResponse"))

(smithy/sdk/shapes:define-structure send-data-point common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (delivery-attempts :target-type counter
                                      :member-name "DeliveryAttempts")
                                     (bounces :target-type counter :member-name
                                      "Bounces")
                                     (complaints :target-type counter
                                      :member-name "Complaints")
                                     (rejects :target-type counter :member-name
                                      "Rejects"))
                                    (:shape-name "SendDataPoint"))

(smithy/sdk/shapes:define-list send-data-point-list :member send-data-point)

(smithy/sdk/shapes:define-input send-email-request common-lisp:nil
                                ((source :target-type address :required
                                  common-lisp:t :member-name "Source")
                                 (destination :target-type destination
                                  :required common-lisp:t :member-name
                                  "Destination")
                                 (message :target-type message :required
                                  common-lisp:t :member-name "Message")
                                 (reply-to-addresses :target-type address-list
                                  :member-name "ReplyToAddresses")
                                 (return-path :target-type address :member-name
                                  "ReturnPath")
                                 (source-arn :target-type amazon-resource-name
                                  :member-name "SourceArn")
                                 (return-path-arn :target-type
                                  amazon-resource-name :member-name
                                  "ReturnPathArn")
                                 (tags :target-type message-tag-list
                                  :member-name "Tags")
                                 (configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName"))
                                (:shape-name "SendEmailRequest"))

(smithy/sdk/shapes:define-output send-email-response common-lisp:nil
                                 ((message-id :target-type message-id :required
                                   common-lisp:t :member-name "MessageId"))
                                 (:shape-name "SendEmailResponse"))

(smithy/sdk/shapes:define-input send-raw-email-request common-lisp:nil
                                ((source :target-type address :member-name
                                  "Source")
                                 (destinations :target-type address-list
                                  :member-name "Destinations")
                                 (raw-message :target-type raw-message
                                  :required common-lisp:t :member-name
                                  "RawMessage")
                                 (from-arn :target-type amazon-resource-name
                                  :member-name "FromArn")
                                 (source-arn :target-type amazon-resource-name
                                  :member-name "SourceArn")
                                 (return-path-arn :target-type
                                  amazon-resource-name :member-name
                                  "ReturnPathArn")
                                 (tags :target-type message-tag-list
                                  :member-name "Tags")
                                 (configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName"))
                                (:shape-name "SendRawEmailRequest"))

(smithy/sdk/shapes:define-output send-raw-email-response common-lisp:nil
                                 ((message-id :target-type message-id :required
                                   common-lisp:t :member-name "MessageId"))
                                 (:shape-name "SendRawEmailResponse"))

(smithy/sdk/shapes:define-input send-templated-email-request common-lisp:nil
                                ((source :target-type address :required
                                  common-lisp:t :member-name "Source")
                                 (destination :target-type destination
                                  :required common-lisp:t :member-name
                                  "Destination")
                                 (reply-to-addresses :target-type address-list
                                  :member-name "ReplyToAddresses")
                                 (return-path :target-type address :member-name
                                  "ReturnPath")
                                 (source-arn :target-type amazon-resource-name
                                  :member-name "SourceArn")
                                 (return-path-arn :target-type
                                  amazon-resource-name :member-name
                                  "ReturnPathArn")
                                 (tags :target-type message-tag-list
                                  :member-name "Tags")
                                 (configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName")
                                 (template :target-type template-name :required
                                  common-lisp:t :member-name "Template")
                                 (template-arn :target-type
                                  amazon-resource-name :member-name
                                  "TemplateArn")
                                 (template-data :target-type template-data
                                  :required common-lisp:t :member-name
                                  "TemplateData"))
                                (:shape-name "SendTemplatedEmailRequest"))

(smithy/sdk/shapes:define-output send-templated-email-response common-lisp:nil
                                 ((message-id :target-type message-id :required
                                   common-lisp:t :member-name "MessageId"))
                                 (:shape-name "SendTemplatedEmailResponse"))

(smithy/sdk/shapes:define-type sent-last24hours smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-input set-active-receipt-rule-set-request
                                common-lisp:nil
                                ((rule-set-name :target-type
                                  receipt-rule-set-name :member-name
                                  "RuleSetName"))
                                (:shape-name "SetActiveReceiptRuleSetRequest"))

(smithy/sdk/shapes:define-output set-active-receipt-rule-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "SetActiveReceiptRuleSetResponse"))

(smithy/sdk/shapes:define-input set-identity-dkim-enabled-request
                                common-lisp:nil
                                ((identity :target-type identity :required
                                  common-lisp:t :member-name "Identity")
                                 (dkim-enabled :target-type enabled :required
                                  common-lisp:t :member-name "DkimEnabled"))
                                (:shape-name "SetIdentityDkimEnabledRequest"))

(smithy/sdk/shapes:define-output set-identity-dkim-enabled-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "SetIdentityDkimEnabledResponse"))

(smithy/sdk/shapes:define-input
 set-identity-feedback-forwarding-enabled-request common-lisp:nil
 ((identity :target-type identity :required common-lisp:t :member-name
   "Identity")
  (forwarding-enabled :target-type enabled :required common-lisp:t :member-name
   "ForwardingEnabled"))
 (:shape-name "SetIdentityFeedbackForwardingEnabledRequest"))

(smithy/sdk/shapes:define-output
 set-identity-feedback-forwarding-enabled-response common-lisp:nil
 common-lisp:nil (:shape-name "SetIdentityFeedbackForwardingEnabledResponse"))

(smithy/sdk/shapes:define-input
 set-identity-headers-in-notifications-enabled-request common-lisp:nil
 ((identity :target-type identity :required common-lisp:t :member-name
   "Identity")
  (notification-type :target-type notification-type :required common-lisp:t
   :member-name "NotificationType")
  (enabled :target-type enabled :required common-lisp:t :member-name
   "Enabled"))
 (:shape-name "SetIdentityHeadersInNotificationsEnabledRequest"))

(smithy/sdk/shapes:define-output
 set-identity-headers-in-notifications-enabled-response common-lisp:nil
 common-lisp:nil
 (:shape-name "SetIdentityHeadersInNotificationsEnabledResponse"))

(smithy/sdk/shapes:define-input set-identity-mail-from-domain-request
                                common-lisp:nil
                                ((identity :target-type identity :required
                                  common-lisp:t :member-name "Identity")
                                 (mail-from-domain :target-type
                                  mail-from-domain-name :member-name
                                  "MailFromDomain")
                                 (behavior-on-mxfailure :target-type
                                  behavior-on-mxfailure :member-name
                                  "BehaviorOnMXFailure"))
                                (:shape-name
                                 "SetIdentityMailFromDomainRequest"))

(smithy/sdk/shapes:define-output set-identity-mail-from-domain-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "SetIdentityMailFromDomainResponse"))

(smithy/sdk/shapes:define-input set-identity-notification-topic-request
                                common-lisp:nil
                                ((identity :target-type identity :required
                                  common-lisp:t :member-name "Identity")
                                 (notification-type :target-type
                                  notification-type :required common-lisp:t
                                  :member-name "NotificationType")
                                 (sns-topic :target-type notification-topic
                                  :member-name "SnsTopic"))
                                (:shape-name
                                 "SetIdentityNotificationTopicRequest"))

(smithy/sdk/shapes:define-output set-identity-notification-topic-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "SetIdentityNotificationTopicResponse"))

(smithy/sdk/shapes:define-input set-receipt-rule-position-request
                                common-lisp:nil
                                ((rule-set-name :target-type
                                  receipt-rule-set-name :required common-lisp:t
                                  :member-name "RuleSetName")
                                 (rule-name :target-type receipt-rule-name
                                  :required common-lisp:t :member-name
                                  "RuleName")
                                 (after :target-type receipt-rule-name
                                  :member-name "After"))
                                (:shape-name "SetReceiptRulePositionRequest"))

(smithy/sdk/shapes:define-output set-receipt-rule-position-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "SetReceiptRulePositionResponse"))

(smithy/sdk/shapes:define-structure stop-action common-lisp:nil
                                    ((scope :target-type stop-scope :required
                                      common-lisp:t :member-name "Scope")
                                     (topic-arn :target-type
                                      amazon-resource-name :member-name
                                      "TopicArn"))
                                    (:shape-name "StopAction"))

(smithy/sdk/shapes:define-enum stop-scope
    common-lisp:nil
  (:rule-set "RuleSet"))

(smithy/sdk/shapes:define-type subject smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subject-part smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type success-redirection-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure template common-lisp:nil
                                    ((template-name :target-type template-name
                                      :required common-lisp:t :member-name
                                      "TemplateName")
                                     (subject-part :target-type subject-part
                                      :member-name "SubjectPart")
                                     (text-part :target-type text-part
                                      :member-name "TextPart")
                                     (html-part :target-type html-part
                                      :member-name "HtmlPart"))
                                    (:shape-name "Template"))

(smithy/sdk/shapes:define-type template-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error template-does-not-exist-exception
                                common-lisp:nil
                                ((template-name :target-type template-name
                                  :member-name "TemplateName")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TemplateDoesNotExistException")
                                (:error-name "TemplateDoesNotExist")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure template-metadata common-lisp:nil
                                    ((name :target-type template-name
                                      :member-name "Name")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp"))
                                    (:shape-name "TemplateMetadata"))

(smithy/sdk/shapes:define-list template-metadata-list :member template-metadata)

(smithy/sdk/shapes:define-type template-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input test-render-template-request common-lisp:nil
                                ((template-name :target-type template-name
                                  :required common-lisp:t :member-name
                                  "TemplateName")
                                 (template-data :target-type template-data
                                  :required common-lisp:t :member-name
                                  "TemplateData"))
                                (:shape-name "TestRenderTemplateRequest"))

(smithy/sdk/shapes:define-output test-render-template-response common-lisp:nil
                                 ((rendered-template :target-type
                                   rendered-template :member-name
                                   "RenderedTemplate"))
                                 (:shape-name "TestRenderTemplateResponse"))

(smithy/sdk/shapes:define-type text-part smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum tls-policy
    common-lisp:nil
  (:require "Require")
  (:optional "Optional"))

(smithy/sdk/shapes:define-structure tracking-options common-lisp:nil
                                    ((custom-redirect-domain :target-type
                                      custom-redirect-domain :member-name
                                      "CustomRedirectDomain"))
                                    (:shape-name "TrackingOptions"))

(smithy/sdk/shapes:define-error tracking-options-already-exists-exception
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "TrackingOptionsAlreadyExistsException")
                                (:error-name
                                 "TrackingOptionsAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error tracking-options-does-not-exist-exception
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName")
                                 (message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "TrackingOptionsDoesNotExistException")
                                (:error-name
                                 "TrackingOptionsDoesNotExistException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input update-account-sending-enabled-request
                                common-lisp:nil
                                ((enabled :target-type enabled :member-name
                                  "Enabled"))
                                (:shape-name
                                 "UpdateAccountSendingEnabledRequest"))

(smithy/sdk/shapes:define-input
 update-configuration-set-event-destination-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName")
  (event-destination :target-type event-destination :required common-lisp:t
   :member-name "EventDestination"))
 (:shape-name "UpdateConfigurationSetEventDestinationRequest"))

(smithy/sdk/shapes:define-output
 update-configuration-set-event-destination-response common-lisp:nil
 common-lisp:nil (:shape-name "UpdateConfigurationSetEventDestinationResponse"))

(smithy/sdk/shapes:define-input
 update-configuration-set-reputation-metrics-enabled-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName")
  (enabled :target-type enabled :required common-lisp:t :member-name
   "Enabled"))
 (:shape-name "UpdateConfigurationSetReputationMetricsEnabledRequest"))

(smithy/sdk/shapes:define-input
 update-configuration-set-sending-enabled-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName")
  (enabled :target-type enabled :required common-lisp:t :member-name
   "Enabled"))
 (:shape-name "UpdateConfigurationSetSendingEnabledRequest"))

(smithy/sdk/shapes:define-input
 update-configuration-set-tracking-options-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName")
  (tracking-options :target-type tracking-options :required common-lisp:t
   :member-name "TrackingOptions"))
 (:shape-name "UpdateConfigurationSetTrackingOptionsRequest"))

(smithy/sdk/shapes:define-output
 update-configuration-set-tracking-options-response common-lisp:nil
 common-lisp:nil (:shape-name "UpdateConfigurationSetTrackingOptionsResponse"))

(smithy/sdk/shapes:define-input
 update-custom-verification-email-template-request common-lisp:nil
 ((template-name :target-type template-name :required common-lisp:t
   :member-name "TemplateName")
  (from-email-address :target-type from-address :member-name
   "FromEmailAddress")
  (template-subject :target-type subject :member-name "TemplateSubject")
  (template-content :target-type template-content :member-name
   "TemplateContent")
  (success-redirection-url :target-type success-redirection-url :member-name
   "SuccessRedirectionURL")
  (failure-redirection-url :target-type failure-redirection-url :member-name
   "FailureRedirectionURL"))
 (:shape-name "UpdateCustomVerificationEmailTemplateRequest"))

(smithy/sdk/shapes:define-input update-receipt-rule-request common-lisp:nil
                                ((rule-set-name :target-type
                                  receipt-rule-set-name :required common-lisp:t
                                  :member-name "RuleSetName")
                                 (rule :target-type receipt-rule :required
                                  common-lisp:t :member-name "Rule"))
                                (:shape-name "UpdateReceiptRuleRequest"))

(smithy/sdk/shapes:define-output update-receipt-rule-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateReceiptRuleResponse"))

(smithy/sdk/shapes:define-input update-template-request common-lisp:nil
                                ((template :target-type template :required
                                  common-lisp:t :member-name "Template"))
                                (:shape-name "UpdateTemplateRequest"))

(smithy/sdk/shapes:define-output update-template-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateTemplateResponse"))

(smithy/sdk/shapes:define-map verification-attributes :key identity :value
                              identity-verification-attributes)

(smithy/sdk/shapes:define-enum verification-status
    common-lisp:nil
  (:pending "Pending")
  (:success "Success")
  (:failed "Failed")
  (:temporary-failure "TemporaryFailure")
  (:not-started "NotStarted"))

(smithy/sdk/shapes:define-type verification-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list verification-token-list :member
                               verification-token)

(smithy/sdk/shapes:define-input verify-domain-dkim-request common-lisp:nil
                                ((domain :target-type domain :required
                                  common-lisp:t :member-name "Domain"))
                                (:shape-name "VerifyDomainDkimRequest"))

(smithy/sdk/shapes:define-output verify-domain-dkim-response common-lisp:nil
                                 ((dkim-tokens :target-type
                                   verification-token-list :required
                                   common-lisp:t :member-name "DkimTokens"))
                                 (:shape-name "VerifyDomainDkimResponse"))

(smithy/sdk/shapes:define-input verify-domain-identity-request common-lisp:nil
                                ((domain :target-type domain :required
                                  common-lisp:t :member-name "Domain"))
                                (:shape-name "VerifyDomainIdentityRequest"))

(smithy/sdk/shapes:define-output verify-domain-identity-response
                                 common-lisp:nil
                                 ((verification-token :target-type
                                   verification-token :required common-lisp:t
                                   :member-name "VerificationToken"))
                                 (:shape-name "VerifyDomainIdentityResponse"))

(smithy/sdk/shapes:define-input verify-email-address-request common-lisp:nil
                                ((email-address :target-type address :required
                                  common-lisp:t :member-name "EmailAddress"))
                                (:shape-name "VerifyEmailAddressRequest"))

(smithy/sdk/shapes:define-input verify-email-identity-request common-lisp:nil
                                ((email-address :target-type address :required
                                  common-lisp:t :member-name "EmailAddress"))
                                (:shape-name "VerifyEmailIdentityRequest"))

(smithy/sdk/shapes:define-output verify-email-identity-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "VerifyEmailIdentityResponse"))

(smithy/sdk/shapes:define-structure workmail-action common-lisp:nil
                                    ((topic-arn :target-type
                                      amazon-resource-name :member-name
                                      "TopicArn")
                                     (organization-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name
                                      "OrganizationArn"))
                                    (:shape-name "WorkmailAction"))

(smithy/sdk/operation:define-operation clone-receipt-rule-set :shape-name
                                       "CloneReceiptRuleSet" :input
                                       clone-receipt-rule-set-request :output
                                       clone-receipt-rule-set-response :errors
                                       (already-exists-exception
                                        limit-exceeded-exception
                                        rule-set-does-not-exist-exception))

(smithy/sdk/operation:define-operation create-configuration-set :shape-name
                                       "CreateConfigurationSet" :input
                                       create-configuration-set-request :output
                                       create-configuration-set-response
                                       :errors
                                       (configuration-set-already-exists-exception
                                        invalid-configuration-set-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation
 create-configuration-set-event-destination :shape-name
 "CreateConfigurationSetEventDestination" :input
 create-configuration-set-event-destination-request :output
 create-configuration-set-event-destination-response :errors
 (configuration-set-does-not-exist-exception
  event-destination-already-exists-exception
  invalid-cloud-watch-destination-exception
  invalid-firehose-destination-exception invalid-snsdestination-exception
  limit-exceeded-exception))

(smithy/sdk/operation:define-operation
 create-configuration-set-tracking-options :shape-name
 "CreateConfigurationSetTrackingOptions" :input
 create-configuration-set-tracking-options-request :output
 create-configuration-set-tracking-options-response :errors
 (configuration-set-does-not-exist-exception invalid-tracking-options-exception
  tracking-options-already-exists-exception))

(smithy/sdk/operation:define-operation
 create-custom-verification-email-template :shape-name
 "CreateCustomVerificationEmailTemplate" :input
 create-custom-verification-email-template-request :output common-lisp:null
 :errors
 (custom-verification-email-invalid-content-exception
  custom-verification-email-template-already-exists-exception
  from-email-address-not-verified-exception limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-receipt-filter :shape-name
                                       "CreateReceiptFilter" :input
                                       create-receipt-filter-request :output
                                       create-receipt-filter-response :errors
                                       (already-exists-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-receipt-rule :shape-name
                                       "CreateReceiptRule" :input
                                       create-receipt-rule-request :output
                                       create-receipt-rule-response :errors
                                       (already-exists-exception
                                        invalid-lambda-function-exception
                                        invalid-s3configuration-exception
                                        invalid-sns-topic-exception
                                        limit-exceeded-exception
                                        rule-does-not-exist-exception
                                        rule-set-does-not-exist-exception))

(smithy/sdk/operation:define-operation create-receipt-rule-set :shape-name
                                       "CreateReceiptRuleSet" :input
                                       create-receipt-rule-set-request :output
                                       create-receipt-rule-set-response :errors
                                       (already-exists-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-template :shape-name
                                       "CreateTemplate" :input
                                       create-template-request :output
                                       create-template-response :errors
                                       (already-exists-exception
                                        invalid-template-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation delete-configuration-set :shape-name
                                       "DeleteConfigurationSet" :input
                                       delete-configuration-set-request :output
                                       delete-configuration-set-response
                                       :errors
                                       (configuration-set-does-not-exist-exception))

(smithy/sdk/operation:define-operation
 delete-configuration-set-event-destination :shape-name
 "DeleteConfigurationSetEventDestination" :input
 delete-configuration-set-event-destination-request :output
 delete-configuration-set-event-destination-response :errors
 (configuration-set-does-not-exist-exception
  event-destination-does-not-exist-exception))

(smithy/sdk/operation:define-operation
 delete-configuration-set-tracking-options :shape-name
 "DeleteConfigurationSetTrackingOptions" :input
 delete-configuration-set-tracking-options-request :output
 delete-configuration-set-tracking-options-response :errors
 (configuration-set-does-not-exist-exception
  tracking-options-does-not-exist-exception))

(smithy/sdk/operation:define-operation
 delete-custom-verification-email-template :shape-name
 "DeleteCustomVerificationEmailTemplate" :input
 delete-custom-verification-email-template-request :output common-lisp:null
 :errors common-lisp:nil)

(smithy/sdk/operation:define-operation delete-identity :shape-name
                                       "DeleteIdentity" :input
                                       delete-identity-request :output
                                       delete-identity-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation delete-identity-policy :shape-name
                                       "DeleteIdentityPolicy" :input
                                       delete-identity-policy-request :output
                                       delete-identity-policy-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation delete-receipt-filter :shape-name
                                       "DeleteReceiptFilter" :input
                                       delete-receipt-filter-request :output
                                       delete-receipt-filter-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation delete-receipt-rule :shape-name
                                       "DeleteReceiptRule" :input
                                       delete-receipt-rule-request :output
                                       delete-receipt-rule-response :errors
                                       (rule-set-does-not-exist-exception))

(smithy/sdk/operation:define-operation delete-receipt-rule-set :shape-name
                                       "DeleteReceiptRuleSet" :input
                                       delete-receipt-rule-set-request :output
                                       delete-receipt-rule-set-response :errors
                                       (cannot-delete-exception))

(smithy/sdk/operation:define-operation delete-template :shape-name
                                       "DeleteTemplate" :input
                                       delete-template-request :output
                                       delete-template-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation delete-verified-email-address
                                       :shape-name "DeleteVerifiedEmailAddress"
                                       :input
                                       delete-verified-email-address-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-active-receipt-rule-set
                                       :shape-name
                                       "DescribeActiveReceiptRuleSet" :input
                                       describe-active-receipt-rule-set-request
                                       :output
                                       describe-active-receipt-rule-set-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-configuration-set :shape-name
                                       "DescribeConfigurationSet" :input
                                       describe-configuration-set-request
                                       :output
                                       describe-configuration-set-response
                                       :errors
                                       (configuration-set-does-not-exist-exception))

(smithy/sdk/operation:define-operation describe-receipt-rule :shape-name
                                       "DescribeReceiptRule" :input
                                       describe-receipt-rule-request :output
                                       describe-receipt-rule-response :errors
                                       (rule-does-not-exist-exception
                                        rule-set-does-not-exist-exception))

(smithy/sdk/operation:define-operation describe-receipt-rule-set :shape-name
                                       "DescribeReceiptRuleSet" :input
                                       describe-receipt-rule-set-request
                                       :output
                                       describe-receipt-rule-set-response
                                       :errors
                                       (rule-set-does-not-exist-exception))

(smithy/sdk/operation:define-operation get-account-sending-enabled :shape-name
                                       "GetAccountSendingEnabled" :input
                                       common-lisp:null :output
                                       get-account-sending-enabled-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation get-custom-verification-email-template
                                       :shape-name
                                       "GetCustomVerificationEmailTemplate"
                                       :input
                                       get-custom-verification-email-template-request
                                       :output
                                       get-custom-verification-email-template-response
                                       :errors
                                       (custom-verification-email-template-does-not-exist-exception))

(smithy/sdk/operation:define-operation get-identity-dkim-attributes :shape-name
                                       "GetIdentityDkimAttributes" :input
                                       get-identity-dkim-attributes-request
                                       :output
                                       get-identity-dkim-attributes-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation get-identity-mail-from-domain-attributes
                                       :shape-name
                                       "GetIdentityMailFromDomainAttributes"
                                       :input
                                       get-identity-mail-from-domain-attributes-request
                                       :output
                                       get-identity-mail-from-domain-attributes-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation get-identity-notification-attributes
                                       :shape-name
                                       "GetIdentityNotificationAttributes"
                                       :input
                                       get-identity-notification-attributes-request
                                       :output
                                       get-identity-notification-attributes-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation get-identity-policies :shape-name
                                       "GetIdentityPolicies" :input
                                       get-identity-policies-request :output
                                       get-identity-policies-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation get-identity-verification-attributes
                                       :shape-name
                                       "GetIdentityVerificationAttributes"
                                       :input
                                       get-identity-verification-attributes-request
                                       :output
                                       get-identity-verification-attributes-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation get-send-quota :shape-name
                                       "GetSendQuota" :input common-lisp:null
                                       :output get-send-quota-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation get-send-statistics :shape-name
                                       "GetSendStatistics" :input
                                       common-lisp:null :output
                                       get-send-statistics-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation get-template :shape-name "GetTemplate"
                                       :input get-template-request :output
                                       get-template-response :errors
                                       (template-does-not-exist-exception))

(smithy/sdk/operation:define-operation list-configuration-sets :shape-name
                                       "ListConfigurationSets" :input
                                       list-configuration-sets-request :output
                                       list-configuration-sets-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-custom-verification-email-templates
                                       :shape-name
                                       "ListCustomVerificationEmailTemplates"
                                       :input
                                       list-custom-verification-email-templates-request
                                       :output
                                       list-custom-verification-email-templates-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation list-identities :shape-name
                                       "ListIdentities" :input
                                       list-identities-request :output
                                       list-identities-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-identity-policies :shape-name
                                       "ListIdentityPolicies" :input
                                       list-identity-policies-request :output
                                       list-identity-policies-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-receipt-filters :shape-name
                                       "ListReceiptFilters" :input
                                       list-receipt-filters-request :output
                                       list-receipt-filters-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-receipt-rule-sets :shape-name
                                       "ListReceiptRuleSets" :input
                                       list-receipt-rule-sets-request :output
                                       list-receipt-rule-sets-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-templates :shape-name
                                       "ListTemplates" :input
                                       list-templates-request :output
                                       list-templates-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-verified-email-addresses
                                       :shape-name "ListVerifiedEmailAddresses"
                                       :input common-lisp:null :output
                                       list-verified-email-addresses-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation put-configuration-set-delivery-options
                                       :shape-name
                                       "PutConfigurationSetDeliveryOptions"
                                       :input
                                       put-configuration-set-delivery-options-request
                                       :output
                                       put-configuration-set-delivery-options-response
                                       :errors
                                       (configuration-set-does-not-exist-exception
                                        invalid-delivery-options-exception))

(smithy/sdk/operation:define-operation put-identity-policy :shape-name
                                       "PutIdentityPolicy" :input
                                       put-identity-policy-request :output
                                       put-identity-policy-response :errors
                                       (invalid-policy-exception))

(smithy/sdk/operation:define-operation reorder-receipt-rule-set :shape-name
                                       "ReorderReceiptRuleSet" :input
                                       reorder-receipt-rule-set-request :output
                                       reorder-receipt-rule-set-response
                                       :errors
                                       (rule-does-not-exist-exception
                                        rule-set-does-not-exist-exception))

(smithy/sdk/operation:define-operation send-bounce :shape-name "SendBounce"
                                       :input send-bounce-request :output
                                       send-bounce-response :errors
                                       (message-rejected))

(smithy/sdk/operation:define-operation send-bulk-templated-email :shape-name
                                       "SendBulkTemplatedEmail" :input
                                       send-bulk-templated-email-request
                                       :output
                                       send-bulk-templated-email-response
                                       :errors
                                       (account-sending-paused-exception
                                        configuration-set-does-not-exist-exception
                                        configuration-set-sending-paused-exception
                                        mail-from-domain-not-verified-exception
                                        message-rejected
                                        template-does-not-exist-exception))

(smithy/sdk/operation:define-operation send-custom-verification-email
                                       :shape-name
                                       "SendCustomVerificationEmail" :input
                                       send-custom-verification-email-request
                                       :output
                                       send-custom-verification-email-response
                                       :errors
                                       (configuration-set-does-not-exist-exception
                                        custom-verification-email-template-does-not-exist-exception
                                        from-email-address-not-verified-exception
                                        message-rejected
                                        production-access-not-granted-exception))

(smithy/sdk/operation:define-operation send-email :shape-name "SendEmail"
                                       :input send-email-request :output
                                       send-email-response :errors
                                       (account-sending-paused-exception
                                        configuration-set-does-not-exist-exception
                                        configuration-set-sending-paused-exception
                                        mail-from-domain-not-verified-exception
                                        message-rejected))

(smithy/sdk/operation:define-operation send-raw-email :shape-name
                                       "SendRawEmail" :input
                                       send-raw-email-request :output
                                       send-raw-email-response :errors
                                       (account-sending-paused-exception
                                        configuration-set-does-not-exist-exception
                                        configuration-set-sending-paused-exception
                                        mail-from-domain-not-verified-exception
                                        message-rejected))

(smithy/sdk/operation:define-operation send-templated-email :shape-name
                                       "SendTemplatedEmail" :input
                                       send-templated-email-request :output
                                       send-templated-email-response :errors
                                       (account-sending-paused-exception
                                        configuration-set-does-not-exist-exception
                                        configuration-set-sending-paused-exception
                                        mail-from-domain-not-verified-exception
                                        message-rejected
                                        template-does-not-exist-exception))

(smithy/sdk/operation:define-operation set-active-receipt-rule-set :shape-name
                                       "SetActiveReceiptRuleSet" :input
                                       set-active-receipt-rule-set-request
                                       :output
                                       set-active-receipt-rule-set-response
                                       :errors
                                       (rule-set-does-not-exist-exception))

(smithy/sdk/operation:define-operation set-identity-dkim-enabled :shape-name
                                       "SetIdentityDkimEnabled" :input
                                       set-identity-dkim-enabled-request
                                       :output
                                       set-identity-dkim-enabled-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation set-identity-feedback-forwarding-enabled
                                       :shape-name
                                       "SetIdentityFeedbackForwardingEnabled"
                                       :input
                                       set-identity-feedback-forwarding-enabled-request
                                       :output
                                       set-identity-feedback-forwarding-enabled-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation
 set-identity-headers-in-notifications-enabled :shape-name
 "SetIdentityHeadersInNotificationsEnabled" :input
 set-identity-headers-in-notifications-enabled-request :output
 set-identity-headers-in-notifications-enabled-response :errors common-lisp:nil)

(smithy/sdk/operation:define-operation set-identity-mail-from-domain
                                       :shape-name "SetIdentityMailFromDomain"
                                       :input
                                       set-identity-mail-from-domain-request
                                       :output
                                       set-identity-mail-from-domain-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation set-identity-notification-topic
                                       :shape-name
                                       "SetIdentityNotificationTopic" :input
                                       set-identity-notification-topic-request
                                       :output
                                       set-identity-notification-topic-response
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation set-receipt-rule-position :shape-name
                                       "SetReceiptRulePosition" :input
                                       set-receipt-rule-position-request
                                       :output
                                       set-receipt-rule-position-response
                                       :errors
                                       (rule-does-not-exist-exception
                                        rule-set-does-not-exist-exception))

(smithy/sdk/operation:define-operation test-render-template :shape-name
                                       "TestRenderTemplate" :input
                                       test-render-template-request :output
                                       test-render-template-response :errors
                                       (invalid-rendering-parameter-exception
                                        missing-rendering-attribute-exception
                                        template-does-not-exist-exception))

(smithy/sdk/operation:define-operation update-account-sending-enabled
                                       :shape-name
                                       "UpdateAccountSendingEnabled" :input
                                       update-account-sending-enabled-request
                                       :output common-lisp:null :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation
 update-configuration-set-event-destination :shape-name
 "UpdateConfigurationSetEventDestination" :input
 update-configuration-set-event-destination-request :output
 update-configuration-set-event-destination-response :errors
 (configuration-set-does-not-exist-exception
  event-destination-does-not-exist-exception
  invalid-cloud-watch-destination-exception
  invalid-firehose-destination-exception invalid-snsdestination-exception))

(smithy/sdk/operation:define-operation
 update-configuration-set-reputation-metrics-enabled :shape-name
 "UpdateConfigurationSetReputationMetricsEnabled" :input
 update-configuration-set-reputation-metrics-enabled-request :output
 common-lisp:null :errors (configuration-set-does-not-exist-exception))

(smithy/sdk/operation:define-operation update-configuration-set-sending-enabled
                                       :shape-name
                                       "UpdateConfigurationSetSendingEnabled"
                                       :input
                                       update-configuration-set-sending-enabled-request
                                       :output common-lisp:null :errors
                                       (configuration-set-does-not-exist-exception))

(smithy/sdk/operation:define-operation
 update-configuration-set-tracking-options :shape-name
 "UpdateConfigurationSetTrackingOptions" :input
 update-configuration-set-tracking-options-request :output
 update-configuration-set-tracking-options-response :errors
 (configuration-set-does-not-exist-exception invalid-tracking-options-exception
  tracking-options-does-not-exist-exception))

(smithy/sdk/operation:define-operation
 update-custom-verification-email-template :shape-name
 "UpdateCustomVerificationEmailTemplate" :input
 update-custom-verification-email-template-request :output common-lisp:null
 :errors
 (custom-verification-email-invalid-content-exception
  custom-verification-email-template-does-not-exist-exception
  from-email-address-not-verified-exception))

(smithy/sdk/operation:define-operation update-receipt-rule :shape-name
                                       "UpdateReceiptRule" :input
                                       update-receipt-rule-request :output
                                       update-receipt-rule-response :errors
                                       (invalid-lambda-function-exception
                                        invalid-s3configuration-exception
                                        invalid-sns-topic-exception
                                        limit-exceeded-exception
                                        rule-does-not-exist-exception
                                        rule-set-does-not-exist-exception))

(smithy/sdk/operation:define-operation update-template :shape-name
                                       "UpdateTemplate" :input
                                       update-template-request :output
                                       update-template-response :errors
                                       (invalid-template-exception
                                        template-does-not-exist-exception))

(smithy/sdk/operation:define-operation verify-domain-dkim :shape-name
                                       "VerifyDomainDkim" :input
                                       verify-domain-dkim-request :output
                                       verify-domain-dkim-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation verify-domain-identity :shape-name
                                       "VerifyDomainIdentity" :input
                                       verify-domain-identity-request :output
                                       verify-domain-identity-response :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation verify-email-address :shape-name
                                       "VerifyEmailAddress" :input
                                       verify-email-address-request :output
                                       common-lisp:null :errors common-lisp:nil)

(smithy/sdk/operation:define-operation verify-email-identity :shape-name
                                       "VerifyEmailIdentity" :input
                                       verify-email-identity-request :output
                                       verify-email-identity-response :errors
                                       common-lisp:nil)
