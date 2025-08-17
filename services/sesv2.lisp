(uiop/package:define-package #:pira/sesv2 (:use)
                             (:export #:account-details
                              #:additional-contact-email-address
                              #:additional-contact-email-addresses
                              #:admin-email #:amazon-resource-name
                              #:archive-arn #:archiving-options #:attachment
                              #:attachment-content-description
                              #:attachment-content-disposition
                              #:attachment-content-id
                              #:attachment-content-transfer-encoding
                              #:attachment-content-type #:attachment-file-name
                              #:attachment-list #:attributes-data
                              #:batch-get-metric-data
                              #:batch-get-metric-data-queries
                              #:batch-get-metric-data-query
                              #:behavior-on-mx-failure #:blacklist-entries
                              #:blacklist-entry #:blacklist-item-name
                              #:blacklist-item-names #:blacklist-report
                              #:blacklisting-description #:body #:bounce
                              #:bounce-sub-type #:bounce-type
                              #:bulk-email-content #:bulk-email-entry
                              #:bulk-email-entry-list #:bulk-email-entry-result
                              #:bulk-email-entry-result-list
                              #:bulk-email-status #:campaign-id
                              #:cancel-export-job #:case-id #:charset
                              #:cloud-watch-destination
                              #:cloud-watch-dimension-configuration
                              #:cloud-watch-dimension-configurations
                              #:complaint #:complaint-feedback-type
                              #:complaint-sub-type #:configuration-set-name
                              #:configuration-set-name-list #:contact
                              #:contact-language #:contact-list
                              #:contact-list-destination
                              #:contact-list-import-action #:contact-list-name
                              #:content #:counter #:create-configuration-set
                              #:create-configuration-set-event-destination
                              #:create-contact #:create-contact-list
                              #:create-custom-verification-email-template
                              #:create-dedicated-ip-pool
                              #:create-deliverability-test-report
                              #:create-email-identity
                              #:create-email-identity-policy
                              #:create-email-template #:create-export-job
                              #:create-import-job
                              #:create-multi-region-endpoint #:create-tenant
                              #:create-tenant-resource-association
                              #:custom-redirect-domain
                              #:custom-verification-email-template-metadata
                              #:custom-verification-email-templates-list
                              #:daily-volume #:daily-volumes
                              #:dashboard-attributes #:dashboard-options
                              #:data-format #:dedicated-ip #:dedicated-ip-list
                              #:dedicated-ip-pool #:default-dimension-value
                              #:delete-configuration-set
                              #:delete-configuration-set-event-destination
                              #:delete-contact #:delete-contact-list
                              #:delete-custom-verification-email-template
                              #:delete-dedicated-ip-pool
                              #:delete-email-identity
                              #:delete-email-identity-policy
                              #:delete-email-template
                              #:delete-multi-region-endpoint
                              #:delete-suppressed-destination #:delete-tenant
                              #:delete-tenant-resource-association
                              #:deliverability-dashboard-account-status
                              #:deliverability-test-report
                              #:deliverability-test-reports
                              #:deliverability-test-status
                              #:deliverability-test-subject
                              #:delivery-event-type #:delivery-options
                              #:description #:destination #:details
                              #:diagnostic-code #:dimension-name
                              #:dimension-value-source #:dimensions
                              #:display-name #:dkim-attributes
                              #:dkim-signing-attributes
                              #:dkim-signing-attributes-origin
                              #:dkim-signing-key-length #:dkim-status
                              #:dns-token #:dns-token-list #:domain
                              #:domain-deliverability-campaign
                              #:domain-deliverability-campaign-list
                              #:domain-deliverability-tracking-option
                              #:domain-deliverability-tracking-options
                              #:domain-isp-placement #:domain-isp-placements
                              #:email-address #:email-address-filter-list
                              #:email-address-list #:email-content
                              #:email-insights #:email-insights-list
                              #:email-subject #:email-subject-filter-list
                              #:email-template-content #:email-template-data
                              #:email-template-html #:email-template-metadata
                              #:email-template-metadata-list
                              #:email-template-name #:email-template-subject
                              #:email-template-text #:enabled #:enabled-wrapper
                              #:endpoint-id #:endpoint-name
                              #:engagement-event-type #:error-message #:esp
                              #:esps #:event-bridge-destination
                              #:event-destination
                              #:event-destination-definition
                              #:event-destination-name #:event-destinations
                              #:event-details #:event-type #:event-types
                              #:export-data-source #:export-destination
                              #:export-dimension-value #:export-dimensions
                              #:export-job-summary #:export-job-summary-list
                              #:export-metric #:export-metrics
                              #:export-source-type #:export-statistics
                              #:exported-records-count #:failed-records-count
                              #:failed-records-s3url #:failure-info
                              #:failure-redirection-url #:feature-status
                              #:feedback-id #:general-enforcement-status
                              #:get-account #:get-blacklist-reports
                              #:get-configuration-set
                              #:get-configuration-set-event-destinations
                              #:get-contact #:get-contact-list
                              #:get-custom-verification-email-template
                              #:get-dedicated-ip #:get-dedicated-ip-pool
                              #:get-dedicated-ips
                              #:get-deliverability-dashboard-options
                              #:get-deliverability-test-report
                              #:get-domain-deliverability-campaign
                              #:get-domain-statistics-report
                              #:get-email-identity
                              #:get-email-identity-policies
                              #:get-email-template #:get-export-job
                              #:get-import-job #:get-message-insights
                              #:get-multi-region-endpoint
                              #:get-reputation-entity
                              #:get-suppressed-destination #:get-tenant
                              #:guardian-attributes #:guardian-options
                              #:https-policy #:identity #:identity-info
                              #:identity-info-list #:identity-type #:image-url
                              #:import-data-source #:import-destination
                              #:import-destination-type #:import-job-summary
                              #:import-job-summary-list
                              #:inbox-placement-tracking-option
                              #:insights-email-address #:insights-event
                              #:insights-events #:ip #:ip-list #:isp
                              #:isp-filter-list #:isp-name #:isp-name-list
                              #:isp-placement #:isp-placements #:job-id
                              #:job-status #:kinesis-firehose-destination
                              #:last-delivery-event-list
                              #:last-engagement-event-list #:last-fresh-start
                              #:list-configuration-sets #:list-contact-lists
                              #:list-contacts #:list-contacts-filter
                              #:list-custom-verification-email-templates
                              #:list-dedicated-ip-pools
                              #:list-deliverability-test-reports
                              #:list-domain-deliverability-campaigns
                              #:list-email-identities #:list-email-templates
                              #:list-export-jobs #:list-import-jobs
                              #:list-management-options
                              #:list-multi-region-endpoints
                              #:list-of-contact-lists #:list-of-contacts
                              #:list-of-dedicated-ip-pools
                              #:list-recommendation-filter-value
                              #:list-recommendations
                              #:list-recommendations-filter
                              #:list-recommendations-filter-key
                              #:list-reputation-entities
                              #:list-resource-tenants
                              #:list-suppressed-destinations
                              #:list-tags-for-resource #:list-tenant-resources
                              #:list-tenant-resources-filter
                              #:list-tenant-resources-filter-key
                              #:list-tenant-resources-filter-value
                              #:list-tenants #:mail-from-attributes
                              #:mail-from-domain-name #:mail-from-domain-status
                              #:mail-type #:max24hour-send
                              #:max-delivery-seconds #:max-items
                              #:max-send-rate #:message #:message-content
                              #:message-data #:message-header
                              #:message-header-list #:message-header-name
                              #:message-header-value
                              #:message-insights-data-source
                              #:message-insights-export-max-results
                              #:message-insights-filters #:message-tag
                              #:message-tag-list #:message-tag-name
                              #:message-tag-value #:metric #:metric-aggregation
                              #:metric-data-error #:metric-data-error-list
                              #:metric-data-result #:metric-data-result-list
                              #:metric-dimension-name #:metric-dimension-value
                              #:metric-namespace #:metric-value-list
                              #:metrics-data-source #:multi-region-endpoint
                              #:multi-region-endpoints #:next-token
                              #:next-token-v2 #:outbound-message-id
                              #:overall-volume #:page-size-v2 #:percentage
                              #:percentage100wrapper #:pinpoint-destination
                              #:placement-statistics #:policy #:policy-map
                              #:policy-name #:pool-name #:primary-name-server
                              #:private-key #:processed-records-count
                              #:put-account-dedicated-ip-warmup-attributes
                              #:put-account-details
                              #:put-account-sending-attributes
                              #:put-account-suppression-attributes
                              #:put-account-vdm-attributes
                              #:put-configuration-set-archiving-options
                              #:put-configuration-set-delivery-options
                              #:put-configuration-set-reputation-options
                              #:put-configuration-set-sending-options
                              #:put-configuration-set-suppression-options
                              #:put-configuration-set-tracking-options
                              #:put-configuration-set-vdm-options
                              #:put-dedicated-ip-in-pool
                              #:put-dedicated-ip-pool-scaling-attributes
                              #:put-dedicated-ip-warmup-attributes
                              #:put-deliverability-dashboard-option
                              #:put-email-identity-configuration-set-attributes
                              #:put-email-identity-dkim-attributes
                              #:put-email-identity-dkim-signing-attributes
                              #:put-email-identity-feedback-attributes
                              #:put-email-identity-mail-from-attributes
                              #:put-suppressed-destination #:query-error-code
                              #:query-error-message #:query-identifier
                              #:raw-attachment-data #:raw-message
                              #:raw-message-data #:rbl-name #:recommendation
                              #:recommendation-description
                              #:recommendation-impact #:recommendation-status
                              #:recommendation-type #:recommendations-list
                              #:region #:regions #:rendered-email-template
                              #:replacement-email-content
                              #:replacement-template #:report-id #:report-name
                              #:reputation-entities-list #:reputation-entity
                              #:reputation-entity-filter
                              #:reputation-entity-filter-key
                              #:reputation-entity-filter-value
                              #:reputation-entity-reference
                              #:reputation-entity-type #:reputation-options
                              #:resource-tenant-metadata
                              #:resource-tenant-metadata-list #:resource-type
                              #:review-details #:review-status #:route
                              #:route-details #:routes #:routes-details #:s3url
                              #:soarecord #:scaling-mode #:selector
                              #:send-bulk-email
                              #:send-custom-verification-email #:send-email
                              #:send-quota #:sending-options
                              #:sending-pool-name #:sending-status
                              #:sent-last24hours #:serial-number
                              #:simple-email-service-v2 #:sns-destination
                              #:status #:status-cause #:status-record #:subject
                              #:subscription-status #:success-redirection-url
                              #:suppressed-destination
                              #:suppressed-destination-attributes
                              #:suppressed-destination-summaries
                              #:suppressed-destination-summary
                              #:suppression-attributes
                              #:suppression-list-destination
                              #:suppression-list-import-action
                              #:suppression-list-reason
                              #:suppression-list-reasons #:suppression-options
                              #:tag #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:template
                              #:template-content #:tenant #:tenant-id
                              #:tenant-info #:tenant-info-list #:tenant-name
                              #:tenant-resource #:tenant-resource-list
                              #:test-render-email-template #:timestamp
                              #:timestamp-list #:tls-policy #:topic
                              #:topic-filter #:topic-name #:topic-preference
                              #:topic-preference-list #:topics
                              #:tracking-options #:unsubscribe-all
                              #:untag-resource
                              #:update-configuration-set-event-destination
                              #:update-contact #:update-contact-list
                              #:update-custom-verification-email-template
                              #:update-email-identity-policy
                              #:update-email-template
                              #:update-reputation-entity-customer-managed-status
                              #:update-reputation-entity-policy
                              #:use-case-description
                              #:use-default-if-preference-unavailable
                              #:vdm-attributes #:vdm-options
                              #:verification-error #:verification-info
                              #:verification-status #:volume
                              #:volume-statistics #:warmup-status
                              #:website-url))
(common-lisp:in-package #:pira/sesv2)

(smithy/sdk/service:define-service simple-email-service-v2 :shape-name
                                   "SimpleEmailService_v2" :version
                                   "2019-09-27" :title
                                   "Amazon Simple Email Service" :operations
                                   '(batch-get-metric-data cancel-export-job
                                     create-configuration-set
                                     create-configuration-set-event-destination
                                     create-contact create-contact-list
                                     create-custom-verification-email-template
                                     create-dedicated-ip-pool
                                     create-deliverability-test-report
                                     create-email-identity
                                     create-email-identity-policy
                                     create-email-template create-export-job
                                     create-import-job
                                     create-multi-region-endpoint create-tenant
                                     create-tenant-resource-association
                                     delete-configuration-set
                                     delete-configuration-set-event-destination
                                     delete-contact delete-contact-list
                                     delete-custom-verification-email-template
                                     delete-dedicated-ip-pool
                                     delete-email-identity
                                     delete-email-identity-policy
                                     delete-email-template
                                     delete-multi-region-endpoint
                                     delete-suppressed-destination
                                     delete-tenant
                                     delete-tenant-resource-association
                                     get-account get-blacklist-reports
                                     get-configuration-set
                                     get-configuration-set-event-destinations
                                     get-contact get-contact-list
                                     get-custom-verification-email-template
                                     get-dedicated-ip get-dedicated-ip-pool
                                     get-dedicated-ips
                                     get-deliverability-dashboard-options
                                     get-deliverability-test-report
                                     get-domain-deliverability-campaign
                                     get-domain-statistics-report
                                     get-email-identity
                                     get-email-identity-policies
                                     get-email-template get-export-job
                                     get-import-job get-message-insights
                                     get-multi-region-endpoint
                                     get-reputation-entity
                                     get-suppressed-destination get-tenant
                                     list-configuration-sets list-contact-lists
                                     list-contacts
                                     list-custom-verification-email-templates
                                     list-dedicated-ip-pools
                                     list-deliverability-test-reports
                                     list-domain-deliverability-campaigns
                                     list-email-identities list-email-templates
                                     list-export-jobs list-import-jobs
                                     list-multi-region-endpoints
                                     list-recommendations
                                     list-reputation-entities
                                     list-resource-tenants
                                     list-suppressed-destinations
                                     list-tags-for-resource
                                     list-tenant-resources list-tenants
                                     put-account-dedicated-ip-warmup-attributes
                                     put-account-details
                                     put-account-sending-attributes
                                     put-account-suppression-attributes
                                     put-account-vdm-attributes
                                     put-configuration-set-archiving-options
                                     put-configuration-set-delivery-options
                                     put-configuration-set-reputation-options
                                     put-configuration-set-sending-options
                                     put-configuration-set-suppression-options
                                     put-configuration-set-tracking-options
                                     put-configuration-set-vdm-options
                                     put-dedicated-ip-in-pool
                                     put-dedicated-ip-pool-scaling-attributes
                                     put-dedicated-ip-warmup-attributes
                                     put-deliverability-dashboard-option
                                     put-email-identity-configuration-set-attributes
                                     put-email-identity-dkim-attributes
                                     put-email-identity-dkim-signing-attributes
                                     put-email-identity-feedback-attributes
                                     put-email-identity-mail-from-attributes
                                     put-suppressed-destination send-bulk-email
                                     send-custom-verification-email send-email
                                     tag-resource test-render-email-template
                                     untag-resource
                                     update-configuration-set-event-destination
                                     update-contact update-contact-list
                                     update-custom-verification-email-template
                                     update-email-identity-policy
                                     update-email-template
                                     update-reputation-entity-customer-managed-status
                                     update-reputation-entity-policy)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "SESv2")
                                      ("arnNamespace" . "ses")
                                      ("cloudFormationName" . "SESv2")
                                      ("cloudTrailEventSource"
                                       . "sesv2.amazonaws.com")
                                      ("endpointPrefix" . "email"))
                                     ("aws.auth#sigv4" ("name" . "ses"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure account-details common-lisp:nil
                                    ((mail-type :target-type mail-type
                                      :member-name "MailType")
                                     (website-url :target-type website-url
                                      :member-name "WebsiteURL")
                                     (contact-language :target-type
                                      contact-language :member-name
                                      "ContactLanguage")
                                     (use-case-description :target-type
                                      use-case-description :member-name
                                      "UseCaseDescription")
                                     (additional-contact-email-addresses
                                      :target-type
                                      additional-contact-email-addresses
                                      :member-name
                                      "AdditionalContactEmailAddresses")
                                     (review-details :target-type
                                      review-details :member-name
                                      "ReviewDetails"))
                                    (:shape-name "AccountDetails"))

(smithy/sdk/shapes:define-error account-suspended-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccountSuspendedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type additional-contact-email-address
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list additional-contact-email-addresses :member
                               additional-contact-email-address)

(smithy/sdk/shapes:define-type admin-email smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error already-exists-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type archive-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure archiving-options common-lisp:nil
                                    ((archive-arn :target-type archive-arn
                                      :member-name "ArchiveArn"))
                                    (:shape-name "ArchivingOptions"))

(smithy/sdk/shapes:define-structure attachment common-lisp:nil
                                    ((raw-content :target-type
                                      raw-attachment-data :required
                                      common-lisp:t :member-name "RawContent")
                                     (content-disposition :target-type
                                      attachment-content-disposition
                                      :member-name "ContentDisposition")
                                     (file-name :target-type
                                      attachment-file-name :required
                                      common-lisp:t :member-name "FileName")
                                     (content-description :target-type
                                      attachment-content-description
                                      :member-name "ContentDescription")
                                     (content-id :target-type
                                      attachment-content-id :member-name
                                      "ContentId")
                                     (content-transfer-encoding :target-type
                                      attachment-content-transfer-encoding
                                      :member-name "ContentTransferEncoding")
                                     (content-type :target-type
                                      attachment-content-type :member-name
                                      "ContentType"))
                                    (:shape-name "Attachment"))

(smithy/sdk/shapes:define-type attachment-content-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum attachment-content-disposition
    common-lisp:nil
  (:attachment "ATTACHMENT")
  (:inline "INLINE"))

(smithy/sdk/shapes:define-type attachment-content-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum attachment-content-transfer-encoding
    common-lisp:nil
  (:base64 "BASE64")
  (:quoted-printable "QUOTED_PRINTABLE")
  (:seven-bit "SEVEN_BIT"))

(smithy/sdk/shapes:define-type attachment-content-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attachment-file-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attachment-list :member attachment)

(smithy/sdk/shapes:define-type attributes-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list batch-get-metric-data-queries :member
                               batch-get-metric-data-query)

(smithy/sdk/shapes:define-structure batch-get-metric-data-query common-lisp:nil
                                    ((id :target-type query-identifier
                                      :required common-lisp:t :member-name
                                      "Id")
                                     (namespace :target-type metric-namespace
                                      :required common-lisp:t :member-name
                                      "Namespace")
                                     (metric :target-type metric :required
                                      common-lisp:t :member-name "Metric")
                                     (dimensions :target-type dimensions
                                      :member-name "Dimensions")
                                     (start-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartDate")
                                     (end-date :target-type timestamp :required
                                      common-lisp:t :member-name "EndDate"))
                                    (:shape-name "BatchGetMetricDataQuery"))

(smithy/sdk/shapes:define-input batch-get-metric-data-request common-lisp:nil
                                ((queries :target-type
                                  batch-get-metric-data-queries :required
                                  common-lisp:t :member-name "Queries"))
                                (:shape-name "BatchGetMetricDataRequest"))

(smithy/sdk/shapes:define-output batch-get-metric-data-response common-lisp:nil
                                 ((results :target-type metric-data-result-list
                                   :member-name "Results")
                                  (errors :target-type metric-data-error-list
                                   :member-name "Errors"))
                                 (:shape-name "BatchGetMetricDataResponse"))

(smithy/sdk/shapes:define-enum behavior-on-mx-failure
    common-lisp:nil
  (:use-default-value "USE_DEFAULT_VALUE")
  (:reject-message "REJECT_MESSAGE"))

(smithy/sdk/shapes:define-list blacklist-entries :member blacklist-entry)

(smithy/sdk/shapes:define-structure blacklist-entry common-lisp:nil
                                    ((rbl-name :target-type rbl-name
                                      :member-name "RblName")
                                     (listing-time :target-type timestamp
                                      :member-name "ListingTime")
                                     (description :target-type
                                      blacklisting-description :member-name
                                      "Description"))
                                    (:shape-name "BlacklistEntry"))

(smithy/sdk/shapes:define-type blacklist-item-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list blacklist-item-names :member blacklist-item-name)

(smithy/sdk/shapes:define-map blacklist-report :key blacklist-item-name :value
                              blacklist-entries)

(smithy/sdk/shapes:define-type blacklisting-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure body common-lisp:nil
                                    ((text :target-type content :member-name
                                      "Text")
                                     (html :target-type content :member-name
                                      "Html"))
                                    (:shape-name "Body"))

(smithy/sdk/shapes:define-structure bounce common-lisp:nil
                                    ((bounce-type :target-type bounce-type
                                      :member-name "BounceType")
                                     (bounce-sub-type :target-type
                                      bounce-sub-type :member-name
                                      "BounceSubType")
                                     (diagnostic-code :target-type
                                      diagnostic-code :member-name
                                      "DiagnosticCode"))
                                    (:shape-name "Bounce"))

(smithy/sdk/shapes:define-type bounce-sub-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum bounce-type
    common-lisp:nil
  (:undetermined "UNDETERMINED")
  (:transient "TRANSIENT")
  (:permanent "PERMANENT"))

(smithy/sdk/shapes:define-structure bulk-email-content common-lisp:nil
                                    ((template :target-type template
                                      :member-name "Template"))
                                    (:shape-name "BulkEmailContent"))

(smithy/sdk/shapes:define-structure bulk-email-entry common-lisp:nil
                                    ((destination :target-type destination
                                      :required common-lisp:t :member-name
                                      "Destination")
                                     (replacement-tags :target-type
                                      message-tag-list :member-name
                                      "ReplacementTags")
                                     (replacement-email-content :target-type
                                      replacement-email-content :member-name
                                      "ReplacementEmailContent")
                                     (replacement-headers :target-type
                                      message-header-list :member-name
                                      "ReplacementHeaders"))
                                    (:shape-name "BulkEmailEntry"))

(smithy/sdk/shapes:define-list bulk-email-entry-list :member bulk-email-entry)

(smithy/sdk/shapes:define-structure bulk-email-entry-result common-lisp:nil
                                    ((status :target-type bulk-email-status
                                      :member-name "Status")
                                     (error :target-type error-message
                                      :member-name "Error")
                                     (message-id :target-type
                                      outbound-message-id :member-name
                                      "MessageId"))
                                    (:shape-name "BulkEmailEntryResult"))

(smithy/sdk/shapes:define-list bulk-email-entry-result-list :member
                               bulk-email-entry-result)

(smithy/sdk/shapes:define-enum bulk-email-status
    common-lisp:nil
  (:success "SUCCESS")
  (:message-rejected "MESSAGE_REJECTED")
  (:mail-from-domain-not-verified "MAIL_FROM_DOMAIN_NOT_VERIFIED")
  (:configuration-set-not-found "CONFIGURATION_SET_NOT_FOUND")
  (:template-not-found "TEMPLATE_NOT_FOUND")
  (:account-suspended "ACCOUNT_SUSPENDED")
  (:account-throttled "ACCOUNT_THROTTLED")
  (:account-daily-quota-exceeded "ACCOUNT_DAILY_QUOTA_EXCEEDED")
  (:invalid-sending-pool-name "INVALID_SENDING_POOL_NAME")
  (:account-sending-paused "ACCOUNT_SENDING_PAUSED")
  (:configuration-set-sending-paused "CONFIGURATION_SET_SENDING_PAUSED")
  (:invalid-parameter "INVALID_PARAMETER")
  (:transient-failure "TRANSIENT_FAILURE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type campaign-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input cancel-export-job-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "CancelExportJobRequest"))

(smithy/sdk/shapes:define-output cancel-export-job-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelExportJobResponse"))

(smithy/sdk/shapes:define-type case-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type charset smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-structure complaint common-lisp:nil
                                    ((complaint-sub-type :target-type
                                      complaint-sub-type :member-name
                                      "ComplaintSubType")
                                     (complaint-feedback-type :target-type
                                      complaint-feedback-type :member-name
                                      "ComplaintFeedbackType"))
                                    (:shape-name "Complaint"))

(smithy/sdk/shapes:define-type complaint-feedback-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type complaint-sub-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type configuration-set-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list configuration-set-name-list :member
                               configuration-set-name)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure contact common-lisp:nil
                                    ((email-address :target-type email-address
                                      :member-name "EmailAddress")
                                     (topic-preferences :target-type
                                      topic-preference-list :member-name
                                      "TopicPreferences")
                                     (topic-default-preferences :target-type
                                      topic-preference-list :member-name
                                      "TopicDefaultPreferences")
                                     (unsubscribe-all :target-type
                                      unsubscribe-all :member-name
                                      "UnsubscribeAll")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp"))
                                    (:shape-name "Contact"))

(smithy/sdk/shapes:define-enum contact-language
    common-lisp:nil
  (:en "EN")
  (:ja "JA"))

(smithy/sdk/shapes:define-structure contact-list common-lisp:nil
                                    ((contact-list-name :target-type
                                      contact-list-name :member-name
                                      "ContactListName")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp"))
                                    (:shape-name "ContactList"))

(smithy/sdk/shapes:define-structure contact-list-destination common-lisp:nil
                                    ((contact-list-name :target-type
                                      contact-list-name :required common-lisp:t
                                      :member-name "ContactListName")
                                     (contact-list-import-action :target-type
                                      contact-list-import-action :required
                                      common-lisp:t :member-name
                                      "ContactListImportAction"))
                                    (:shape-name "ContactListDestination"))

(smithy/sdk/shapes:define-enum contact-list-import-action
    common-lisp:nil
  (:delete "DELETE")
  (:put "PUT"))

(smithy/sdk/shapes:define-type contact-list-name smithy/sdk/smithy-types:string)

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
   common-lisp:t :member-name "ConfigurationSetName" :http-label common-lisp:t)
  (event-destination-name :target-type event-destination-name :required
   common-lisp:t :member-name "EventDestinationName")
  (event-destination :target-type event-destination-definition :required
   common-lisp:t :member-name "EventDestination"))
 (:shape-name "CreateConfigurationSetEventDestinationRequest"))

(smithy/sdk/shapes:define-output
 create-configuration-set-event-destination-response common-lisp:nil
 common-lisp:nil (:shape-name "CreateConfigurationSetEventDestinationResponse"))

(smithy/sdk/shapes:define-input create-configuration-set-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName")
                                 (tracking-options :target-type
                                  tracking-options :member-name
                                  "TrackingOptions")
                                 (delivery-options :target-type
                                  delivery-options :member-name
                                  "DeliveryOptions")
                                 (reputation-options :target-type
                                  reputation-options :member-name
                                  "ReputationOptions")
                                 (sending-options :target-type sending-options
                                  :member-name "SendingOptions")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (suppression-options :target-type
                                  suppression-options :member-name
                                  "SuppressionOptions")
                                 (vdm-options :target-type vdm-options
                                  :member-name "VdmOptions")
                                 (archiving-options :target-type
                                  archiving-options :member-name
                                  "ArchivingOptions"))
                                (:shape-name "CreateConfigurationSetRequest"))

(smithy/sdk/shapes:define-output create-configuration-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateConfigurationSetResponse"))

(smithy/sdk/shapes:define-input create-contact-list-request common-lisp:nil
                                ((contact-list-name :target-type
                                  contact-list-name :required common-lisp:t
                                  :member-name "ContactListName")
                                 (topics :target-type topics :member-name
                                  "Topics")
                                 (description :target-type description
                                  :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateContactListRequest"))

(smithy/sdk/shapes:define-output create-contact-list-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateContactListResponse"))

(smithy/sdk/shapes:define-input create-contact-request common-lisp:nil
                                ((contact-list-name :target-type
                                  contact-list-name :required common-lisp:t
                                  :member-name "ContactListName" :http-label
                                  common-lisp:t)
                                 (email-address :target-type email-address
                                  :required common-lisp:t :member-name
                                  "EmailAddress")
                                 (topic-preferences :target-type
                                  topic-preference-list :member-name
                                  "TopicPreferences")
                                 (unsubscribe-all :target-type unsubscribe-all
                                  :member-name "UnsubscribeAll")
                                 (attributes-data :target-type attributes-data
                                  :member-name "AttributesData"))
                                (:shape-name "CreateContactRequest"))

(smithy/sdk/shapes:define-output create-contact-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateContactResponse"))

(smithy/sdk/shapes:define-input
 create-custom-verification-email-template-request common-lisp:nil
 ((template-name :target-type email-template-name :required common-lisp:t
   :member-name "TemplateName")
  (from-email-address :target-type email-address :required common-lisp:t
   :member-name "FromEmailAddress")
  (template-subject :target-type email-template-subject :required common-lisp:t
   :member-name "TemplateSubject")
  (template-content :target-type template-content :required common-lisp:t
   :member-name "TemplateContent")
  (success-redirection-url :target-type success-redirection-url :required
   common-lisp:t :member-name "SuccessRedirectionURL")
  (failure-redirection-url :target-type failure-redirection-url :required
   common-lisp:t :member-name "FailureRedirectionURL"))
 (:shape-name "CreateCustomVerificationEmailTemplateRequest"))

(smithy/sdk/shapes:define-output
 create-custom-verification-email-template-response common-lisp:nil
 common-lisp:nil (:shape-name "CreateCustomVerificationEmailTemplateResponse"))

(smithy/sdk/shapes:define-input create-dedicated-ip-pool-request
                                common-lisp:nil
                                ((pool-name :target-type pool-name :required
                                  common-lisp:t :member-name "PoolName")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (scaling-mode :target-type scaling-mode
                                  :member-name "ScalingMode"))
                                (:shape-name "CreateDedicatedIpPoolRequest"))

(smithy/sdk/shapes:define-output create-dedicated-ip-pool-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateDedicatedIpPoolResponse"))

(smithy/sdk/shapes:define-input create-deliverability-test-report-request
                                common-lisp:nil
                                ((report-name :target-type report-name
                                  :member-name "ReportName")
                                 (from-email-address :target-type email-address
                                  :required common-lisp:t :member-name
                                  "FromEmailAddress")
                                 (content :target-type email-content :required
                                  common-lisp:t :member-name "Content")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateDeliverabilityTestReportRequest"))

(smithy/sdk/shapes:define-output create-deliverability-test-report-response
                                 common-lisp:nil
                                 ((report-id :target-type report-id :required
                                   common-lisp:t :member-name "ReportId")
                                  (deliverability-test-status :target-type
                                   deliverability-test-status :required
                                   common-lisp:t :member-name
                                   "DeliverabilityTestStatus"))
                                 (:shape-name
                                  "CreateDeliverabilityTestReportResponse"))

(smithy/sdk/shapes:define-input create-email-identity-policy-request
                                common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity" :http-label common-lisp:t)
                                 (policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName" :http-label common-lisp:t)
                                 (policy :target-type policy :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name
                                 "CreateEmailIdentityPolicyRequest"))

(smithy/sdk/shapes:define-output create-email-identity-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateEmailIdentityPolicyResponse"))

(smithy/sdk/shapes:define-input create-email-identity-request common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (dkim-signing-attributes :target-type
                                  dkim-signing-attributes :member-name
                                  "DkimSigningAttributes")
                                 (configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName"))
                                (:shape-name "CreateEmailIdentityRequest"))

(smithy/sdk/shapes:define-output create-email-identity-response common-lisp:nil
                                 ((identity-type :target-type identity-type
                                   :member-name "IdentityType")
                                  (verified-for-sending-status :target-type
                                   enabled :member-name
                                   "VerifiedForSendingStatus")
                                  (dkim-attributes :target-type dkim-attributes
                                   :member-name "DkimAttributes"))
                                 (:shape-name "CreateEmailIdentityResponse"))

(smithy/sdk/shapes:define-input create-email-template-request common-lisp:nil
                                ((template-name :target-type
                                  email-template-name :required common-lisp:t
                                  :member-name "TemplateName")
                                 (template-content :target-type
                                  email-template-content :required
                                  common-lisp:t :member-name
                                  "TemplateContent"))
                                (:shape-name "CreateEmailTemplateRequest"))

(smithy/sdk/shapes:define-output create-email-template-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateEmailTemplateResponse"))

(smithy/sdk/shapes:define-input create-export-job-request common-lisp:nil
                                ((export-data-source :target-type
                                  export-data-source :required common-lisp:t
                                  :member-name "ExportDataSource")
                                 (export-destination :target-type
                                  export-destination :required common-lisp:t
                                  :member-name "ExportDestination"))
                                (:shape-name "CreateExportJobRequest"))

(smithy/sdk/shapes:define-output create-export-job-response common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "CreateExportJobResponse"))

(smithy/sdk/shapes:define-input create-import-job-request common-lisp:nil
                                ((import-destination :target-type
                                  import-destination :required common-lisp:t
                                  :member-name "ImportDestination")
                                 (import-data-source :target-type
                                  import-data-source :required common-lisp:t
                                  :member-name "ImportDataSource"))
                                (:shape-name "CreateImportJobRequest"))

(smithy/sdk/shapes:define-output create-import-job-response common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "CreateImportJobResponse"))

(smithy/sdk/shapes:define-input create-multi-region-endpoint-request
                                common-lisp:nil
                                ((endpoint-name :target-type endpoint-name
                                  :required common-lisp:t :member-name
                                  "EndpointName")
                                 (details :target-type details :required
                                  common-lisp:t :member-name "Details")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateMultiRegionEndpointRequest"))

(smithy/sdk/shapes:define-output create-multi-region-endpoint-response
                                 common-lisp:nil
                                 ((status :target-type status :member-name
                                   "Status")
                                  (endpoint-id :target-type endpoint-id
                                   :member-name "EndpointId"))
                                 (:shape-name
                                  "CreateMultiRegionEndpointResponse"))

(smithy/sdk/shapes:define-input create-tenant-request common-lisp:nil
                                ((tenant-name :target-type tenant-name
                                  :required common-lisp:t :member-name
                                  "TenantName")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateTenantRequest"))

(smithy/sdk/shapes:define-input create-tenant-resource-association-request
                                common-lisp:nil
                                ((tenant-name :target-type tenant-name
                                  :required common-lisp:t :member-name
                                  "TenantName")
                                 (resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn"))
                                (:shape-name
                                 "CreateTenantResourceAssociationRequest"))

(smithy/sdk/shapes:define-output create-tenant-resource-association-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateTenantResourceAssociationResponse"))

(smithy/sdk/shapes:define-output create-tenant-response common-lisp:nil
                                 ((tenant-name :target-type tenant-name
                                   :member-name "TenantName")
                                  (tenant-id :target-type tenant-id
                                   :member-name "TenantId")
                                  (tenant-arn :target-type amazon-resource-name
                                   :member-name "TenantArn")
                                  (created-timestamp :target-type timestamp
                                   :member-name "CreatedTimestamp")
                                  (tags :target-type tag-list :member-name
                                   "Tags")
                                  (sending-status :target-type sending-status
                                   :member-name "SendingStatus"))
                                 (:shape-name "CreateTenantResponse"))

(smithy/sdk/shapes:define-type custom-redirect-domain
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-verification-email-template-metadata
                                    common-lisp:nil
                                    ((template-name :target-type
                                      email-template-name :member-name
                                      "TemplateName")
                                     (from-email-address :target-type
                                      email-address :member-name
                                      "FromEmailAddress")
                                     (template-subject :target-type
                                      email-template-subject :member-name
                                      "TemplateSubject")
                                     (success-redirection-url :target-type
                                      success-redirection-url :member-name
                                      "SuccessRedirectionURL")
                                     (failure-redirection-url :target-type
                                      failure-redirection-url :member-name
                                      "FailureRedirectionURL"))
                                    (:shape-name
                                     "CustomVerificationEmailTemplateMetadata"))

(smithy/sdk/shapes:define-list custom-verification-email-templates-list :member
                               custom-verification-email-template-metadata)

(smithy/sdk/shapes:define-structure daily-volume common-lisp:nil
                                    ((start-date :target-type timestamp
                                      :member-name "StartDate")
                                     (volume-statistics :target-type
                                      volume-statistics :member-name
                                      "VolumeStatistics")
                                     (domain-isp-placements :target-type
                                      domain-isp-placements :member-name
                                      "DomainIspPlacements"))
                                    (:shape-name "DailyVolume"))

(smithy/sdk/shapes:define-list daily-volumes :member daily-volume)

(smithy/sdk/shapes:define-structure dashboard-attributes common-lisp:nil
                                    ((engagement-metrics :target-type
                                      feature-status :member-name
                                      "EngagementMetrics"))
                                    (:shape-name "DashboardAttributes"))

(smithy/sdk/shapes:define-structure dashboard-options common-lisp:nil
                                    ((engagement-metrics :target-type
                                      feature-status :member-name
                                      "EngagementMetrics"))
                                    (:shape-name "DashboardOptions"))

(smithy/sdk/shapes:define-enum data-format
    common-lisp:nil
  (:csv "CSV")
  (:json "JSON"))

(smithy/sdk/shapes:define-structure dedicated-ip common-lisp:nil
                                    ((ip :target-type ip :required
                                      common-lisp:t :member-name "Ip")
                                     (warmup-status :target-type warmup-status
                                      :required common-lisp:t :member-name
                                      "WarmupStatus")
                                     (warmup-percentage :target-type
                                      percentage100wrapper :required
                                      common-lisp:t :member-name
                                      "WarmupPercentage")
                                     (pool-name :target-type pool-name
                                      :member-name "PoolName"))
                                    (:shape-name "DedicatedIp"))

(smithy/sdk/shapes:define-list dedicated-ip-list :member dedicated-ip)

(smithy/sdk/shapes:define-structure dedicated-ip-pool common-lisp:nil
                                    ((pool-name :target-type pool-name
                                      :required common-lisp:t :member-name
                                      "PoolName")
                                     (scaling-mode :target-type scaling-mode
                                      :required common-lisp:t :member-name
                                      "ScalingMode"))
                                    (:shape-name "DedicatedIpPool"))

(smithy/sdk/shapes:define-type default-dimension-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 delete-configuration-set-event-destination-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName" :http-label common-lisp:t)
  (event-destination-name :target-type event-destination-name :required
   common-lisp:t :member-name "EventDestinationName" :http-label
   common-lisp:t))
 (:shape-name "DeleteConfigurationSetEventDestinationRequest"))

(smithy/sdk/shapes:define-output
 delete-configuration-set-event-destination-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteConfigurationSetEventDestinationResponse"))

(smithy/sdk/shapes:define-input delete-configuration-set-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteConfigurationSetRequest"))

(smithy/sdk/shapes:define-output delete-configuration-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteConfigurationSetResponse"))

(smithy/sdk/shapes:define-input delete-contact-list-request common-lisp:nil
                                ((contact-list-name :target-type
                                  contact-list-name :required common-lisp:t
                                  :member-name "ContactListName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteContactListRequest"))

(smithy/sdk/shapes:define-output delete-contact-list-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteContactListResponse"))

(smithy/sdk/shapes:define-input delete-contact-request common-lisp:nil
                                ((contact-list-name :target-type
                                  contact-list-name :required common-lisp:t
                                  :member-name "ContactListName" :http-label
                                  common-lisp:t)
                                 (email-address :target-type email-address
                                  :required common-lisp:t :member-name
                                  "EmailAddress" :http-label common-lisp:t))
                                (:shape-name "DeleteContactRequest"))

(smithy/sdk/shapes:define-output delete-contact-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteContactResponse"))

(smithy/sdk/shapes:define-input
 delete-custom-verification-email-template-request common-lisp:nil
 ((template-name :target-type email-template-name :required common-lisp:t
   :member-name "TemplateName" :http-label common-lisp:t))
 (:shape-name "DeleteCustomVerificationEmailTemplateRequest"))

(smithy/sdk/shapes:define-output
 delete-custom-verification-email-template-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteCustomVerificationEmailTemplateResponse"))

(smithy/sdk/shapes:define-input delete-dedicated-ip-pool-request
                                common-lisp:nil
                                ((pool-name :target-type pool-name :required
                                  common-lisp:t :member-name "PoolName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDedicatedIpPoolRequest"))

(smithy/sdk/shapes:define-output delete-dedicated-ip-pool-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteDedicatedIpPoolResponse"))

(smithy/sdk/shapes:define-input delete-email-identity-policy-request
                                common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity" :http-label common-lisp:t)
                                 (policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteEmailIdentityPolicyRequest"))

(smithy/sdk/shapes:define-output delete-email-identity-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteEmailIdentityPolicyResponse"))

(smithy/sdk/shapes:define-input delete-email-identity-request common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity" :http-label common-lisp:t))
                                (:shape-name "DeleteEmailIdentityRequest"))

(smithy/sdk/shapes:define-output delete-email-identity-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEmailIdentityResponse"))

(smithy/sdk/shapes:define-input delete-email-template-request common-lisp:nil
                                ((template-name :target-type
                                  email-template-name :required common-lisp:t
                                  :member-name "TemplateName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteEmailTemplateRequest"))

(smithy/sdk/shapes:define-output delete-email-template-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEmailTemplateResponse"))

(smithy/sdk/shapes:define-input delete-multi-region-endpoint-request
                                common-lisp:nil
                                ((endpoint-name :target-type endpoint-name
                                  :required common-lisp:t :member-name
                                  "EndpointName" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteMultiRegionEndpointRequest"))

(smithy/sdk/shapes:define-output delete-multi-region-endpoint-response
                                 common-lisp:nil
                                 ((status :target-type status :member-name
                                   "Status"))
                                 (:shape-name
                                  "DeleteMultiRegionEndpointResponse"))

(smithy/sdk/shapes:define-input delete-suppressed-destination-request
                                common-lisp:nil
                                ((email-address :target-type email-address
                                  :required common-lisp:t :member-name
                                  "EmailAddress" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteSuppressedDestinationRequest"))

(smithy/sdk/shapes:define-output delete-suppressed-destination-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteSuppressedDestinationResponse"))

(smithy/sdk/shapes:define-input delete-tenant-request common-lisp:nil
                                ((tenant-name :target-type tenant-name
                                  :required common-lisp:t :member-name
                                  "TenantName"))
                                (:shape-name "DeleteTenantRequest"))

(smithy/sdk/shapes:define-input delete-tenant-resource-association-request
                                common-lisp:nil
                                ((tenant-name :target-type tenant-name
                                  :required common-lisp:t :member-name
                                  "TenantName")
                                 (resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn"))
                                (:shape-name
                                 "DeleteTenantResourceAssociationRequest"))

(smithy/sdk/shapes:define-output delete-tenant-resource-association-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteTenantResourceAssociationResponse"))

(smithy/sdk/shapes:define-output delete-tenant-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTenantResponse"))

(smithy/sdk/shapes:define-enum deliverability-dashboard-account-status
    common-lisp:nil
  (:active "ACTIVE")
  (:pending-expiration "PENDING_EXPIRATION")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure deliverability-test-report common-lisp:nil
                                    ((report-id :target-type report-id
                                      :member-name "ReportId")
                                     (report-name :target-type report-name
                                      :member-name "ReportName")
                                     (subject :target-type
                                      deliverability-test-subject :member-name
                                      "Subject")
                                     (from-email-address :target-type
                                      email-address :member-name
                                      "FromEmailAddress")
                                     (create-date :target-type timestamp
                                      :member-name "CreateDate")
                                     (deliverability-test-status :target-type
                                      deliverability-test-status :member-name
                                      "DeliverabilityTestStatus"))
                                    (:shape-name "DeliverabilityTestReport"))

(smithy/sdk/shapes:define-list deliverability-test-reports :member
                               deliverability-test-report)

(smithy/sdk/shapes:define-enum deliverability-test-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-type deliverability-test-subject
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum delivery-event-type
    common-lisp:nil
  (:send "SEND")
  (:delivery "DELIVERY")
  (:transient-bounce "TRANSIENT_BOUNCE")
  (:permanent-bounce "PERMANENT_BOUNCE")
  (:undetermined-bounce "UNDETERMINED_BOUNCE")
  (:complaint "COMPLAINT"))

(smithy/sdk/shapes:define-structure delivery-options common-lisp:nil
                                    ((tls-policy :target-type tls-policy
                                      :member-name "TlsPolicy")
                                     (sending-pool-name :target-type pool-name
                                      :member-name "SendingPoolName")
                                     (max-delivery-seconds :target-type
                                      max-delivery-seconds :member-name
                                      "MaxDeliverySeconds"))
                                    (:shape-name "DeliveryOptions"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((to-addresses :target-type
                                      email-address-list :member-name
                                      "ToAddresses")
                                     (cc-addresses :target-type
                                      email-address-list :member-name
                                      "CcAddresses")
                                     (bcc-addresses :target-type
                                      email-address-list :member-name
                                      "BccAddresses"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-structure details common-lisp:nil
                                    ((routes-details :target-type
                                      routes-details :required common-lisp:t
                                      :member-name "RoutesDetails"))
                                    (:shape-name "Details"))

(smithy/sdk/shapes:define-type diagnostic-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dimension-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum dimension-value-source
    common-lisp:nil
  (:message-tag "MESSAGE_TAG")
  (:email-header "EMAIL_HEADER")
  (:link-tag "LINK_TAG"))

(smithy/sdk/shapes:define-map dimensions :key metric-dimension-name :value
                              metric-dimension-value)

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dkim-attributes common-lisp:nil
                                    ((signing-enabled :target-type enabled
                                      :member-name "SigningEnabled")
                                     (status :target-type dkim-status
                                      :member-name "Status")
                                     (tokens :target-type dns-token-list
                                      :member-name "Tokens")
                                     (signing-attributes-origin :target-type
                                      dkim-signing-attributes-origin
                                      :member-name "SigningAttributesOrigin")
                                     (next-signing-key-length :target-type
                                      dkim-signing-key-length :member-name
                                      "NextSigningKeyLength")
                                     (current-signing-key-length :target-type
                                      dkim-signing-key-length :member-name
                                      "CurrentSigningKeyLength")
                                     (last-key-generation-timestamp
                                      :target-type timestamp :member-name
                                      "LastKeyGenerationTimestamp"))
                                    (:shape-name "DkimAttributes"))

(smithy/sdk/shapes:define-structure dkim-signing-attributes common-lisp:nil
                                    ((domain-signing-selector :target-type
                                      selector :member-name
                                      "DomainSigningSelector")
                                     (domain-signing-private-key :target-type
                                      private-key :member-name
                                      "DomainSigningPrivateKey")
                                     (next-signing-key-length :target-type
                                      dkim-signing-key-length :member-name
                                      "NextSigningKeyLength")
                                     (domain-signing-attributes-origin
                                      :target-type
                                      dkim-signing-attributes-origin
                                      :member-name
                                      "DomainSigningAttributesOrigin"))
                                    (:shape-name "DkimSigningAttributes"))

(smithy/sdk/shapes:define-enum dkim-signing-attributes-origin
    common-lisp:nil
  (:aws-ses "AWS_SES")
  (:external "EXTERNAL")
  (:aws-ses-af-south-1 "AWS_SES_AF_SOUTH_1")
  (:aws-ses-eu-north-1 "AWS_SES_EU_NORTH_1")
  (:aws-ses-ap-south-1 "AWS_SES_AP_SOUTH_1")
  (:aws-ses-eu-west-3 "AWS_SES_EU_WEST_3")
  (:aws-ses-eu-west-2 "AWS_SES_EU_WEST_2")
  (:aws-ses-eu-south-1 "AWS_SES_EU_SOUTH_1")
  (:aws-ses-eu-west-1 "AWS_SES_EU_WEST_1")
  (:aws-ses-ap-northeast-3 "AWS_SES_AP_NORTHEAST_3")
  (:aws-ses-ap-northeast-2 "AWS_SES_AP_NORTHEAST_2")
  (:aws-ses-me-south-1 "AWS_SES_ME_SOUTH_1")
  (:aws-ses-ap-northeast-1 "AWS_SES_AP_NORTHEAST_1")
  (:aws-ses-il-central-1 "AWS_SES_IL_CENTRAL_1")
  (:aws-ses-sa-east-1 "AWS_SES_SA_EAST_1")
  (:aws-ses-ca-central-1 "AWS_SES_CA_CENTRAL_1")
  (:aws-ses-ap-southeast-1 "AWS_SES_AP_SOUTHEAST_1")
  (:aws-ses-ap-southeast-2 "AWS_SES_AP_SOUTHEAST_2")
  (:aws-ses-ap-southeast-3 "AWS_SES_AP_SOUTHEAST_3")
  (:aws-ses-eu-central-1 "AWS_SES_EU_CENTRAL_1")
  (:aws-ses-us-east-1 "AWS_SES_US_EAST_1")
  (:aws-ses-us-east-2 "AWS_SES_US_EAST_2")
  (:aws-ses-us-west-1 "AWS_SES_US_WEST_1")
  (:aws-ses-us-west-2 "AWS_SES_US_WEST_2")
  (:aws-ses-me-central-1 "AWS_SES_ME_CENTRAL_1")
  (:aws-ses-ap-south-2 "AWS_SES_AP_SOUTH_2")
  (:aws-ses-eu-central-2 "AWS_SES_EU_CENTRAL_2"))

(smithy/sdk/shapes:define-enum dkim-signing-key-length
    common-lisp:nil
  (:rsa-1024-bit "RSA_1024_BIT")
  (:rsa-2048-bit "RSA_2048_BIT"))

(smithy/sdk/shapes:define-enum dkim-status
    common-lisp:nil
  (:pending "PENDING")
  (:success "SUCCESS")
  (:failed "FAILED")
  (:temporary-failure "TEMPORARY_FAILURE")
  (:not-started "NOT_STARTED"))

(smithy/sdk/shapes:define-type dns-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dns-token-list :member dns-token)

(smithy/sdk/shapes:define-type domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure domain-deliverability-campaign
                                    common-lisp:nil
                                    ((campaign-id :target-type campaign-id
                                      :member-name "CampaignId")
                                     (image-url :target-type image-url
                                      :member-name "ImageUrl")
                                     (subject :target-type subject :member-name
                                      "Subject")
                                     (from-address :target-type identity
                                      :member-name "FromAddress")
                                     (sending-ips :target-type ip-list
                                      :member-name "SendingIps")
                                     (first-seen-date-time :target-type
                                      timestamp :member-name
                                      "FirstSeenDateTime")
                                     (last-seen-date-time :target-type
                                      timestamp :member-name
                                      "LastSeenDateTime")
                                     (inbox-count :target-type volume
                                      :member-name "InboxCount")
                                     (spam-count :target-type volume
                                      :member-name "SpamCount")
                                     (read-rate :target-type percentage
                                      :member-name "ReadRate")
                                     (delete-rate :target-type percentage
                                      :member-name "DeleteRate")
                                     (read-delete-rate :target-type percentage
                                      :member-name "ReadDeleteRate")
                                     (projected-volume :target-type volume
                                      :member-name "ProjectedVolume")
                                     (esps :target-type esps :member-name
                                      "Esps"))
                                    (:shape-name
                                     "DomainDeliverabilityCampaign"))

(smithy/sdk/shapes:define-list domain-deliverability-campaign-list :member
                               domain-deliverability-campaign)

(smithy/sdk/shapes:define-structure domain-deliverability-tracking-option
                                    common-lisp:nil
                                    ((domain :target-type domain :member-name
                                      "Domain")
                                     (subscription-start-date :target-type
                                      timestamp :member-name
                                      "SubscriptionStartDate")
                                     (inbox-placement-tracking-option
                                      :target-type
                                      inbox-placement-tracking-option
                                      :member-name
                                      "InboxPlacementTrackingOption"))
                                    (:shape-name
                                     "DomainDeliverabilityTrackingOption"))

(smithy/sdk/shapes:define-list domain-deliverability-tracking-options :member
                               domain-deliverability-tracking-option)

(smithy/sdk/shapes:define-structure domain-isp-placement common-lisp:nil
                                    ((isp-name :target-type isp-name
                                      :member-name "IspName")
                                     (inbox-raw-count :target-type volume
                                      :member-name "InboxRawCount")
                                     (spam-raw-count :target-type volume
                                      :member-name "SpamRawCount")
                                     (inbox-percentage :target-type percentage
                                      :member-name "InboxPercentage")
                                     (spam-percentage :target-type percentage
                                      :member-name "SpamPercentage"))
                                    (:shape-name "DomainIspPlacement"))

(smithy/sdk/shapes:define-list domain-isp-placements :member
                               domain-isp-placement)

(smithy/sdk/shapes:define-type email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list email-address-filter-list :member
                               insights-email-address)

(smithy/sdk/shapes:define-list email-address-list :member email-address)

(smithy/sdk/shapes:define-structure email-content common-lisp:nil
                                    ((simple :target-type message :member-name
                                      "Simple")
                                     (raw :target-type raw-message :member-name
                                      "Raw")
                                     (template :target-type template
                                      :member-name "Template"))
                                    (:shape-name "EmailContent"))

(smithy/sdk/shapes:define-structure email-insights common-lisp:nil
                                    ((destination :target-type
                                      insights-email-address :member-name
                                      "Destination")
                                     (isp :target-type isp :member-name "Isp")
                                     (events :target-type insights-events
                                      :member-name "Events"))
                                    (:shape-name "EmailInsights"))

(smithy/sdk/shapes:define-list email-insights-list :member email-insights)

(smithy/sdk/shapes:define-type email-subject smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list email-subject-filter-list :member email-subject)

(smithy/sdk/shapes:define-structure email-template-content common-lisp:nil
                                    ((subject :target-type
                                      email-template-subject :member-name
                                      "Subject")
                                     (text :target-type email-template-text
                                      :member-name "Text")
                                     (html :target-type email-template-html
                                      :member-name "Html"))
                                    (:shape-name "EmailTemplateContent"))

(smithy/sdk/shapes:define-type email-template-data
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-template-html
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure email-template-metadata common-lisp:nil
                                    ((template-name :target-type
                                      email-template-name :member-name
                                      "TemplateName")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp"))
                                    (:shape-name "EmailTemplateMetadata"))

(smithy/sdk/shapes:define-list email-template-metadata-list :member
                               email-template-metadata)

(smithy/sdk/shapes:define-type email-template-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-template-subject
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-template-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type enabled-wrapper smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type endpoint-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type endpoint-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum engagement-event-type
    common-lisp:nil
  (:open "OPEN")
  (:click "CLICK"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type esp smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list esps :member esp)

(smithy/sdk/shapes:define-structure event-bridge-destination common-lisp:nil
                                    ((event-bus-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name
                                      "EventBusArn"))
                                    (:shape-name "EventBridgeDestination"))

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
                                     (sns-destination :target-type
                                      sns-destination :member-name
                                      "SnsDestination")
                                     (event-bridge-destination :target-type
                                      event-bridge-destination :member-name
                                      "EventBridgeDestination")
                                     (pinpoint-destination :target-type
                                      pinpoint-destination :member-name
                                      "PinpointDestination"))
                                    (:shape-name "EventDestination"))

(smithy/sdk/shapes:define-structure event-destination-definition
                                    common-lisp:nil
                                    ((enabled :target-type enabled :member-name
                                      "Enabled")
                                     (matching-event-types :target-type
                                      event-types :member-name
                                      "MatchingEventTypes")
                                     (kinesis-firehose-destination :target-type
                                      kinesis-firehose-destination :member-name
                                      "KinesisFirehoseDestination")
                                     (cloud-watch-destination :target-type
                                      cloud-watch-destination :member-name
                                      "CloudWatchDestination")
                                     (sns-destination :target-type
                                      sns-destination :member-name
                                      "SnsDestination")
                                     (event-bridge-destination :target-type
                                      event-bridge-destination :member-name
                                      "EventBridgeDestination")
                                     (pinpoint-destination :target-type
                                      pinpoint-destination :member-name
                                      "PinpointDestination"))
                                    (:shape-name "EventDestinationDefinition"))

(smithy/sdk/shapes:define-type event-destination-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-destinations :member event-destination)

(smithy/sdk/shapes:define-structure event-details common-lisp:nil
                                    ((bounce :target-type bounce :member-name
                                      "Bounce")
                                     (complaint :target-type complaint
                                      :member-name "Complaint"))
                                    (:shape-name "EventDetails"))

(smithy/sdk/shapes:define-enum event-type
    common-lisp:nil
  (:send "SEND")
  (:reject "REJECT")
  (:bounce "BOUNCE")
  (:complaint "COMPLAINT")
  (:delivery "DELIVERY")
  (:open "OPEN")
  (:click "CLICK")
  (:rendering-failure "RENDERING_FAILURE")
  (:delivery-delay "DELIVERY_DELAY")
  (:subscription "SUBSCRIPTION"))

(smithy/sdk/shapes:define-list event-types :member event-type)

(smithy/sdk/shapes:define-structure export-data-source common-lisp:nil
                                    ((metrics-data-source :target-type
                                      metrics-data-source :member-name
                                      "MetricsDataSource")
                                     (message-insights-data-source :target-type
                                      message-insights-data-source :member-name
                                      "MessageInsightsDataSource"))
                                    (:shape-name "ExportDataSource"))

(smithy/sdk/shapes:define-structure export-destination common-lisp:nil
                                    ((data-format :target-type data-format
                                      :required common-lisp:t :member-name
                                      "DataFormat")
                                     (s3url :target-type s3url :member-name
                                      "S3Url"))
                                    (:shape-name "ExportDestination"))

(smithy/sdk/shapes:define-list export-dimension-value :member
                               metric-dimension-value)

(smithy/sdk/shapes:define-map export-dimensions :key metric-dimension-name
                              :value export-dimension-value)

(smithy/sdk/shapes:define-structure export-job-summary common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (export-source-type :target-type
                                      export-source-type :member-name
                                      "ExportSourceType")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (completed-timestamp :target-type
                                      timestamp :member-name
                                      "CompletedTimestamp"))
                                    (:shape-name "ExportJobSummary"))

(smithy/sdk/shapes:define-list export-job-summary-list :member
                               export-job-summary)

(smithy/sdk/shapes:define-structure export-metric common-lisp:nil
                                    ((name :target-type metric :member-name
                                      "Name")
                                     (aggregation :target-type
                                      metric-aggregation :member-name
                                      "Aggregation"))
                                    (:shape-name "ExportMetric"))

(smithy/sdk/shapes:define-list export-metrics :member export-metric)

(smithy/sdk/shapes:define-enum export-source-type
    common-lisp:nil
  (:metrics-data "METRICS_DATA")
  (:message-insights "MESSAGE_INSIGHTS"))

(smithy/sdk/shapes:define-structure export-statistics common-lisp:nil
                                    ((processed-records-count :target-type
                                      processed-records-count :member-name
                                      "ProcessedRecordsCount")
                                     (exported-records-count :target-type
                                      exported-records-count :member-name
                                      "ExportedRecordsCount"))
                                    (:shape-name "ExportStatistics"))

(smithy/sdk/shapes:define-type exported-records-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type failed-records-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type failed-records-s3url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure failure-info common-lisp:nil
                                    ((failed-records-s3url :target-type
                                      failed-records-s3url :member-name
                                      "FailedRecordsS3Url")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "FailureInfo"))

(smithy/sdk/shapes:define-type failure-redirection-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum feature-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type feedback-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type general-enforcement-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-account-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetAccountRequest"))

(smithy/sdk/shapes:define-output get-account-response common-lisp:nil
                                 ((dedicated-ip-auto-warmup-enabled
                                   :target-type enabled :member-name
                                   "DedicatedIpAutoWarmupEnabled")
                                  (enforcement-status :target-type
                                   general-enforcement-status :member-name
                                   "EnforcementStatus")
                                  (production-access-enabled :target-type
                                   enabled :member-name
                                   "ProductionAccessEnabled")
                                  (send-quota :target-type send-quota
                                   :member-name "SendQuota")
                                  (sending-enabled :target-type enabled
                                   :member-name "SendingEnabled")
                                  (suppression-attributes :target-type
                                   suppression-attributes :member-name
                                   "SuppressionAttributes")
                                  (details :target-type account-details
                                   :member-name "Details")
                                  (vdm-attributes :target-type vdm-attributes
                                   :member-name "VdmAttributes"))
                                 (:shape-name "GetAccountResponse"))

(smithy/sdk/shapes:define-input get-blacklist-reports-request common-lisp:nil
                                ((blacklist-item-names :target-type
                                  blacklist-item-names :required common-lisp:t
                                  :member-name "BlacklistItemNames" :http-query
                                  "BlacklistItemNames"))
                                (:shape-name "GetBlacklistReportsRequest"))

(smithy/sdk/shapes:define-output get-blacklist-reports-response common-lisp:nil
                                 ((blacklist-report :target-type
                                   blacklist-report :required common-lisp:t
                                   :member-name "BlacklistReport"))
                                 (:shape-name "GetBlacklistReportsResponse"))

(smithy/sdk/shapes:define-input
 get-configuration-set-event-destinations-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName" :http-label
   common-lisp:t))
 (:shape-name "GetConfigurationSetEventDestinationsRequest"))

(smithy/sdk/shapes:define-output
 get-configuration-set-event-destinations-response common-lisp:nil
 ((event-destinations :target-type event-destinations :member-name
   "EventDestinations"))
 (:shape-name "GetConfigurationSetEventDestinationsResponse"))

(smithy/sdk/shapes:define-input get-configuration-set-request common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetConfigurationSetRequest"))

(smithy/sdk/shapes:define-output get-configuration-set-response common-lisp:nil
                                 ((configuration-set-name :target-type
                                   configuration-set-name :member-name
                                   "ConfigurationSetName")
                                  (tracking-options :target-type
                                   tracking-options :member-name
                                   "TrackingOptions")
                                  (delivery-options :target-type
                                   delivery-options :member-name
                                   "DeliveryOptions")
                                  (reputation-options :target-type
                                   reputation-options :member-name
                                   "ReputationOptions")
                                  (sending-options :target-type sending-options
                                   :member-name "SendingOptions")
                                  (tags :target-type tag-list :member-name
                                   "Tags")
                                  (suppression-options :target-type
                                   suppression-options :member-name
                                   "SuppressionOptions")
                                  (vdm-options :target-type vdm-options
                                   :member-name "VdmOptions")
                                  (archiving-options :target-type
                                   archiving-options :member-name
                                   "ArchivingOptions"))
                                 (:shape-name "GetConfigurationSetResponse"))

(smithy/sdk/shapes:define-input get-contact-list-request common-lisp:nil
                                ((contact-list-name :target-type
                                  contact-list-name :required common-lisp:t
                                  :member-name "ContactListName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetContactListRequest"))

(smithy/sdk/shapes:define-output get-contact-list-response common-lisp:nil
                                 ((contact-list-name :target-type
                                   contact-list-name :member-name
                                   "ContactListName")
                                  (topics :target-type topics :member-name
                                   "Topics")
                                  (description :target-type description
                                   :member-name "Description")
                                  (created-timestamp :target-type timestamp
                                   :member-name "CreatedTimestamp")
                                  (last-updated-timestamp :target-type
                                   timestamp :member-name
                                   "LastUpdatedTimestamp")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "GetContactListResponse"))

(smithy/sdk/shapes:define-input get-contact-request common-lisp:nil
                                ((contact-list-name :target-type
                                  contact-list-name :required common-lisp:t
                                  :member-name "ContactListName" :http-label
                                  common-lisp:t)
                                 (email-address :target-type email-address
                                  :required common-lisp:t :member-name
                                  "EmailAddress" :http-label common-lisp:t))
                                (:shape-name "GetContactRequest"))

(smithy/sdk/shapes:define-output get-contact-response common-lisp:nil
                                 ((contact-list-name :target-type
                                   contact-list-name :member-name
                                   "ContactListName")
                                  (email-address :target-type email-address
                                   :member-name "EmailAddress")
                                  (topic-preferences :target-type
                                   topic-preference-list :member-name
                                   "TopicPreferences")
                                  (topic-default-preferences :target-type
                                   topic-preference-list :member-name
                                   "TopicDefaultPreferences")
                                  (unsubscribe-all :target-type unsubscribe-all
                                   :member-name "UnsubscribeAll")
                                  (attributes-data :target-type attributes-data
                                   :member-name "AttributesData")
                                  (created-timestamp :target-type timestamp
                                   :member-name "CreatedTimestamp")
                                  (last-updated-timestamp :target-type
                                   timestamp :member-name
                                   "LastUpdatedTimestamp"))
                                 (:shape-name "GetContactResponse"))

(smithy/sdk/shapes:define-input get-custom-verification-email-template-request
                                common-lisp:nil
                                ((template-name :target-type
                                  email-template-name :required common-lisp:t
                                  :member-name "TemplateName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetCustomVerificationEmailTemplateRequest"))

(smithy/sdk/shapes:define-output
 get-custom-verification-email-template-response common-lisp:nil
 ((template-name :target-type email-template-name :member-name "TemplateName")
  (from-email-address :target-type email-address :member-name
   "FromEmailAddress")
  (template-subject :target-type email-template-subject :member-name
   "TemplateSubject")
  (template-content :target-type template-content :member-name
   "TemplateContent")
  (success-redirection-url :target-type success-redirection-url :member-name
   "SuccessRedirectionURL")
  (failure-redirection-url :target-type failure-redirection-url :member-name
   "FailureRedirectionURL"))
 (:shape-name "GetCustomVerificationEmailTemplateResponse"))

(smithy/sdk/shapes:define-input get-dedicated-ip-pool-request common-lisp:nil
                                ((pool-name :target-type pool-name :required
                                  common-lisp:t :member-name "PoolName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDedicatedIpPoolRequest"))

(smithy/sdk/shapes:define-output get-dedicated-ip-pool-response common-lisp:nil
                                 ((dedicated-ip-pool :target-type
                                   dedicated-ip-pool :member-name
                                   "DedicatedIpPool"))
                                 (:shape-name "GetDedicatedIpPoolResponse"))

(smithy/sdk/shapes:define-input get-dedicated-ip-request common-lisp:nil
                                ((ip :target-type ip :required common-lisp:t
                                  :member-name "Ip" :http-label common-lisp:t))
                                (:shape-name "GetDedicatedIpRequest"))

(smithy/sdk/shapes:define-output get-dedicated-ip-response common-lisp:nil
                                 ((dedicated-ip :target-type dedicated-ip
                                   :member-name "DedicatedIp"))
                                 (:shape-name "GetDedicatedIpResponse"))

(smithy/sdk/shapes:define-input get-dedicated-ips-request common-lisp:nil
                                ((pool-name :target-type pool-name :member-name
                                  "PoolName" :http-query "PoolName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name "GetDedicatedIpsRequest"))

(smithy/sdk/shapes:define-output get-dedicated-ips-response common-lisp:nil
                                 ((dedicated-ips :target-type dedicated-ip-list
                                   :member-name "DedicatedIps")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetDedicatedIpsResponse"))

(smithy/sdk/shapes:define-input get-deliverability-dashboard-options-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetDeliverabilityDashboardOptionsRequest"))

(smithy/sdk/shapes:define-output get-deliverability-dashboard-options-response
                                 common-lisp:nil
                                 ((dashboard-enabled :target-type enabled
                                   :required common-lisp:t :member-name
                                   "DashboardEnabled")
                                  (subscription-expiry-date :target-type
                                   timestamp :member-name
                                   "SubscriptionExpiryDate")
                                  (account-status :target-type
                                   deliverability-dashboard-account-status
                                   :member-name "AccountStatus")
                                  (active-subscribed-domains :target-type
                                   domain-deliverability-tracking-options
                                   :member-name "ActiveSubscribedDomains")
                                  (pending-expiration-subscribed-domains
                                   :target-type
                                   domain-deliverability-tracking-options
                                   :member-name
                                   "PendingExpirationSubscribedDomains"))
                                 (:shape-name
                                  "GetDeliverabilityDashboardOptionsResponse"))

(smithy/sdk/shapes:define-input get-deliverability-test-report-request
                                common-lisp:nil
                                ((report-id :target-type report-id :required
                                  common-lisp:t :member-name "ReportId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetDeliverabilityTestReportRequest"))

(smithy/sdk/shapes:define-output get-deliverability-test-report-response
                                 common-lisp:nil
                                 ((deliverability-test-report :target-type
                                   deliverability-test-report :required
                                   common-lisp:t :member-name
                                   "DeliverabilityTestReport")
                                  (overall-placement :target-type
                                   placement-statistics :required common-lisp:t
                                   :member-name "OverallPlacement")
                                  (isp-placements :target-type isp-placements
                                   :required common-lisp:t :member-name
                                   "IspPlacements")
                                  (message :target-type message-content
                                   :member-name "Message")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name
                                  "GetDeliverabilityTestReportResponse"))

(smithy/sdk/shapes:define-input get-domain-deliverability-campaign-request
                                common-lisp:nil
                                ((campaign-id :target-type campaign-id
                                  :required common-lisp:t :member-name
                                  "CampaignId" :http-label common-lisp:t))
                                (:shape-name
                                 "GetDomainDeliverabilityCampaignRequest"))

(smithy/sdk/shapes:define-output get-domain-deliverability-campaign-response
                                 common-lisp:nil
                                 ((domain-deliverability-campaign :target-type
                                   domain-deliverability-campaign :required
                                   common-lisp:t :member-name
                                   "DomainDeliverabilityCampaign"))
                                 (:shape-name
                                  "GetDomainDeliverabilityCampaignResponse"))

(smithy/sdk/shapes:define-input get-domain-statistics-report-request
                                common-lisp:nil
                                ((domain :target-type identity :required
                                  common-lisp:t :member-name "Domain"
                                  :http-label common-lisp:t)
                                 (start-date :target-type timestamp :required
                                  common-lisp:t :member-name "StartDate"
                                  :http-query "StartDate")
                                 (end-date :target-type timestamp :required
                                  common-lisp:t :member-name "EndDate"
                                  :http-query "EndDate"))
                                (:shape-name
                                 "GetDomainStatisticsReportRequest"))

(smithy/sdk/shapes:define-output get-domain-statistics-report-response
                                 common-lisp:nil
                                 ((overall-volume :target-type overall-volume
                                   :required common-lisp:t :member-name
                                   "OverallVolume")
                                  (daily-volumes :target-type daily-volumes
                                   :required common-lisp:t :member-name
                                   "DailyVolumes"))
                                 (:shape-name
                                  "GetDomainStatisticsReportResponse"))

(smithy/sdk/shapes:define-input get-email-identity-policies-request
                                common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity" :http-label common-lisp:t))
                                (:shape-name "GetEmailIdentityPoliciesRequest"))

(smithy/sdk/shapes:define-output get-email-identity-policies-response
                                 common-lisp:nil
                                 ((policies :target-type policy-map
                                   :member-name "Policies"))
                                 (:shape-name
                                  "GetEmailIdentityPoliciesResponse"))

(smithy/sdk/shapes:define-input get-email-identity-request common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity" :http-label common-lisp:t))
                                (:shape-name "GetEmailIdentityRequest"))

(smithy/sdk/shapes:define-output get-email-identity-response common-lisp:nil
                                 ((identity-type :target-type identity-type
                                   :member-name "IdentityType")
                                  (feedback-forwarding-status :target-type
                                   enabled :member-name
                                   "FeedbackForwardingStatus")
                                  (verified-for-sending-status :target-type
                                   enabled :member-name
                                   "VerifiedForSendingStatus")
                                  (dkim-attributes :target-type dkim-attributes
                                   :member-name "DkimAttributes")
                                  (mail-from-attributes :target-type
                                   mail-from-attributes :member-name
                                   "MailFromAttributes")
                                  (policies :target-type policy-map
                                   :member-name "Policies")
                                  (tags :target-type tag-list :member-name
                                   "Tags")
                                  (configuration-set-name :target-type
                                   configuration-set-name :member-name
                                   "ConfigurationSetName")
                                  (verification-status :target-type
                                   verification-status :member-name
                                   "VerificationStatus")
                                  (verification-info :target-type
                                   verification-info :member-name
                                   "VerificationInfo"))
                                 (:shape-name "GetEmailIdentityResponse"))

(smithy/sdk/shapes:define-input get-email-template-request common-lisp:nil
                                ((template-name :target-type
                                  email-template-name :required common-lisp:t
                                  :member-name "TemplateName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetEmailTemplateRequest"))

(smithy/sdk/shapes:define-output get-email-template-response common-lisp:nil
                                 ((template-name :target-type
                                   email-template-name :required common-lisp:t
                                   :member-name "TemplateName")
                                  (template-content :target-type
                                   email-template-content :required
                                   common-lisp:t :member-name
                                   "TemplateContent"))
                                 (:shape-name "GetEmailTemplateResponse"))

(smithy/sdk/shapes:define-input get-export-job-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetExportJobRequest"))

(smithy/sdk/shapes:define-output get-export-job-response common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (export-source-type :target-type
                                   export-source-type :member-name
                                   "ExportSourceType")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus")
                                  (export-destination :target-type
                                   export-destination :member-name
                                   "ExportDestination")
                                  (export-data-source :target-type
                                   export-data-source :member-name
                                   "ExportDataSource")
                                  (created-timestamp :target-type timestamp
                                   :member-name "CreatedTimestamp")
                                  (completed-timestamp :target-type timestamp
                                   :member-name "CompletedTimestamp")
                                  (failure-info :target-type failure-info
                                   :member-name "FailureInfo")
                                  (statistics :target-type export-statistics
                                   :member-name "Statistics"))
                                 (:shape-name "GetExportJobResponse"))

(smithy/sdk/shapes:define-input get-import-job-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetImportJobRequest"))

(smithy/sdk/shapes:define-output get-import-job-response common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId")
                                  (import-destination :target-type
                                   import-destination :member-name
                                   "ImportDestination")
                                  (import-data-source :target-type
                                   import-data-source :member-name
                                   "ImportDataSource")
                                  (failure-info :target-type failure-info
                                   :member-name "FailureInfo")
                                  (job-status :target-type job-status
                                   :member-name "JobStatus")
                                  (created-timestamp :target-type timestamp
                                   :member-name "CreatedTimestamp")
                                  (completed-timestamp :target-type timestamp
                                   :member-name "CompletedTimestamp")
                                  (processed-records-count :target-type
                                   processed-records-count :member-name
                                   "ProcessedRecordsCount")
                                  (failed-records-count :target-type
                                   failed-records-count :member-name
                                   "FailedRecordsCount"))
                                 (:shape-name "GetImportJobResponse"))

(smithy/sdk/shapes:define-input get-message-insights-request common-lisp:nil
                                ((message-id :target-type outbound-message-id
                                  :required common-lisp:t :member-name
                                  "MessageId" :http-label common-lisp:t))
                                (:shape-name "GetMessageInsightsRequest"))

(smithy/sdk/shapes:define-output get-message-insights-response common-lisp:nil
                                 ((message-id :target-type outbound-message-id
                                   :member-name "MessageId")
                                  (from-email-address :target-type
                                   insights-email-address :member-name
                                   "FromEmailAddress")
                                  (subject :target-type email-subject
                                   :member-name "Subject")
                                  (email-tags :target-type message-tag-list
                                   :member-name "EmailTags")
                                  (insights :target-type email-insights-list
                                   :member-name "Insights"))
                                 (:shape-name "GetMessageInsightsResponse"))

(smithy/sdk/shapes:define-input get-multi-region-endpoint-request
                                common-lisp:nil
                                ((endpoint-name :target-type endpoint-name
                                  :required common-lisp:t :member-name
                                  "EndpointName" :http-label common-lisp:t))
                                (:shape-name "GetMultiRegionEndpointRequest"))

(smithy/sdk/shapes:define-output get-multi-region-endpoint-response
                                 common-lisp:nil
                                 ((endpoint-name :target-type endpoint-name
                                   :member-name "EndpointName")
                                  (endpoint-id :target-type endpoint-id
                                   :member-name "EndpointId")
                                  (routes :target-type routes :member-name
                                   "Routes")
                                  (status :target-type status :member-name
                                   "Status")
                                  (created-timestamp :target-type timestamp
                                   :member-name "CreatedTimestamp")
                                  (last-updated-timestamp :target-type
                                   timestamp :member-name
                                   "LastUpdatedTimestamp"))
                                 (:shape-name "GetMultiRegionEndpointResponse"))

(smithy/sdk/shapes:define-input get-reputation-entity-request common-lisp:nil
                                ((reputation-entity-reference :target-type
                                  reputation-entity-reference :required
                                  common-lisp:t :member-name
                                  "ReputationEntityReference" :http-label
                                  common-lisp:t)
                                 (reputation-entity-type :target-type
                                  reputation-entity-type :required
                                  common-lisp:t :member-name
                                  "ReputationEntityType" :http-label
                                  common-lisp:t))
                                (:shape-name "GetReputationEntityRequest"))

(smithy/sdk/shapes:define-output get-reputation-entity-response common-lisp:nil
                                 ((reputation-entity :target-type
                                   reputation-entity :member-name
                                   "ReputationEntity"))
                                 (:shape-name "GetReputationEntityResponse"))

(smithy/sdk/shapes:define-input get-suppressed-destination-request
                                common-lisp:nil
                                ((email-address :target-type email-address
                                  :required common-lisp:t :member-name
                                  "EmailAddress" :http-label common-lisp:t))
                                (:shape-name "GetSuppressedDestinationRequest"))

(smithy/sdk/shapes:define-output get-suppressed-destination-response
                                 common-lisp:nil
                                 ((suppressed-destination :target-type
                                   suppressed-destination :required
                                   common-lisp:t :member-name
                                   "SuppressedDestination"))
                                 (:shape-name
                                  "GetSuppressedDestinationResponse"))

(smithy/sdk/shapes:define-input get-tenant-request common-lisp:nil
                                ((tenant-name :target-type tenant-name
                                  :required common-lisp:t :member-name
                                  "TenantName"))
                                (:shape-name "GetTenantRequest"))

(smithy/sdk/shapes:define-output get-tenant-response common-lisp:nil
                                 ((tenant :target-type tenant :member-name
                                   "Tenant"))
                                 (:shape-name "GetTenantResponse"))

(smithy/sdk/shapes:define-structure guardian-attributes common-lisp:nil
                                    ((optimized-shared-delivery :target-type
                                      feature-status :member-name
                                      "OptimizedSharedDelivery"))
                                    (:shape-name "GuardianAttributes"))

(smithy/sdk/shapes:define-structure guardian-options common-lisp:nil
                                    ((optimized-shared-delivery :target-type
                                      feature-status :member-name
                                      "OptimizedSharedDelivery"))
                                    (:shape-name "GuardianOptions"))

(smithy/sdk/shapes:define-enum https-policy
    common-lisp:nil
  (:require "REQUIRE")
  (:require-open-only "REQUIRE_OPEN_ONLY")
  (:optional "OPTIONAL"))

(smithy/sdk/shapes:define-type identity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure identity-info common-lisp:nil
                                    ((identity-type :target-type identity-type
                                      :member-name "IdentityType")
                                     (identity-name :target-type identity
                                      :member-name "IdentityName")
                                     (sending-enabled :target-type enabled
                                      :member-name "SendingEnabled")
                                     (verification-status :target-type
                                      verification-status :member-name
                                      "VerificationStatus"))
                                    (:shape-name "IdentityInfo"))

(smithy/sdk/shapes:define-list identity-info-list :member identity-info)

(smithy/sdk/shapes:define-enum identity-type
    common-lisp:nil
  (:email-address "EMAIL_ADDRESS")
  (:domain "DOMAIN")
  (:managed-domain "MANAGED_DOMAIN"))

(smithy/sdk/shapes:define-type image-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure import-data-source common-lisp:nil
                                    ((s3url :target-type s3url :required
                                      common-lisp:t :member-name "S3Url")
                                     (data-format :target-type data-format
                                      :required common-lisp:t :member-name
                                      "DataFormat"))
                                    (:shape-name "ImportDataSource"))

(smithy/sdk/shapes:define-structure import-destination common-lisp:nil
                                    ((suppression-list-destination :target-type
                                      suppression-list-destination :member-name
                                      "SuppressionListDestination")
                                     (contact-list-destination :target-type
                                      contact-list-destination :member-name
                                      "ContactListDestination"))
                                    (:shape-name "ImportDestination"))

(smithy/sdk/shapes:define-enum import-destination-type
    common-lisp:nil
  (:suppression-list "SUPPRESSION_LIST")
  (:contact-list "CONTACT_LIST"))

(smithy/sdk/shapes:define-structure import-job-summary common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (import-destination :target-type
                                      import-destination :member-name
                                      "ImportDestination")
                                     (job-status :target-type job-status
                                      :member-name "JobStatus")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (processed-records-count :target-type
                                      processed-records-count :member-name
                                      "ProcessedRecordsCount")
                                     (failed-records-count :target-type
                                      failed-records-count :member-name
                                      "FailedRecordsCount"))
                                    (:shape-name "ImportJobSummary"))

(smithy/sdk/shapes:define-list import-job-summary-list :member
                               import-job-summary)

(smithy/sdk/shapes:define-structure inbox-placement-tracking-option
                                    common-lisp:nil
                                    ((global :target-type enabled :member-name
                                      "Global")
                                     (tracked-isps :target-type isp-name-list
                                      :member-name "TrackedIsps"))
                                    (:shape-name
                                     "InboxPlacementTrackingOption"))

(smithy/sdk/shapes:define-type insights-email-address
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure insights-event common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (type :target-type event-type :member-name
                                      "Type")
                                     (details :target-type event-details
                                      :member-name "Details"))
                                    (:shape-name "InsightsEvent"))

(smithy/sdk/shapes:define-list insights-events :member insights-event)

(smithy/sdk/shapes:define-error internal-service-error-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServiceErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ip smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ip-list :member ip)

(smithy/sdk/shapes:define-type isp smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list isp-filter-list :member isp)

(smithy/sdk/shapes:define-type isp-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list isp-name-list :member isp-name)

(smithy/sdk/shapes:define-structure isp-placement common-lisp:nil
                                    ((isp-name :target-type isp-name
                                      :member-name "IspName")
                                     (placement-statistics :target-type
                                      placement-statistics :member-name
                                      "PlacementStatistics"))
                                    (:shape-name "IspPlacement"))

(smithy/sdk/shapes:define-list isp-placements :member isp-placement)

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:created "CREATED")
  (:processing "PROCESSING")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-structure kinesis-firehose-destination
                                    common-lisp:nil
                                    ((iam-role-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "IamRoleArn")
                                     (delivery-stream-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name
                                      "DeliveryStreamArn"))
                                    (:shape-name "KinesisFirehoseDestination"))

(smithy/sdk/shapes:define-list last-delivery-event-list :member
                               delivery-event-type)

(smithy/sdk/shapes:define-list last-engagement-event-list :member
                               engagement-event-type)

(smithy/sdk/shapes:define-type last-fresh-start
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-configuration-sets-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name "ListConfigurationSetsRequest"))

(smithy/sdk/shapes:define-output list-configuration-sets-response
                                 common-lisp:nil
                                 ((configuration-sets :target-type
                                   configuration-set-name-list :member-name
                                   "ConfigurationSets")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListConfigurationSetsResponse"))

(smithy/sdk/shapes:define-input list-contact-lists-request common-lisp:nil
                                ((page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name "ListContactListsRequest"))

(smithy/sdk/shapes:define-output list-contact-lists-response common-lisp:nil
                                 ((contact-lists :target-type
                                   list-of-contact-lists :member-name
                                   "ContactLists")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListContactListsResponse"))

(smithy/sdk/shapes:define-structure list-contacts-filter common-lisp:nil
                                    ((filtered-status :target-type
                                      subscription-status :member-name
                                      "FilteredStatus")
                                     (topic-filter :target-type topic-filter
                                      :member-name "TopicFilter"))
                                    (:shape-name "ListContactsFilter"))

(smithy/sdk/shapes:define-input list-contacts-request common-lisp:nil
                                ((contact-list-name :target-type
                                  contact-list-name :required common-lisp:t
                                  :member-name "ContactListName" :http-label
                                  common-lisp:t)
                                 (filter :target-type list-contacts-filter
                                  :member-name "Filter")
                                 (page-size :target-type max-items :member-name
                                  "PageSize")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListContactsRequest"))

(smithy/sdk/shapes:define-output list-contacts-response common-lisp:nil
                                 ((contacts :target-type list-of-contacts
                                   :member-name "Contacts")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListContactsResponse"))

(smithy/sdk/shapes:define-input
 list-custom-verification-email-templates-request common-lisp:nil
 ((next-token :target-type next-token :member-name "NextToken" :http-query
   "NextToken")
  (page-size :target-type max-items :member-name "PageSize" :http-query
   "PageSize"))
 (:shape-name "ListCustomVerificationEmailTemplatesRequest"))

(smithy/sdk/shapes:define-output
 list-custom-verification-email-templates-response common-lisp:nil
 ((custom-verification-email-templates :target-type
   custom-verification-email-templates-list :member-name
   "CustomVerificationEmailTemplates")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListCustomVerificationEmailTemplatesResponse"))

(smithy/sdk/shapes:define-input list-dedicated-ip-pools-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name "ListDedicatedIpPoolsRequest"))

(smithy/sdk/shapes:define-output list-dedicated-ip-pools-response
                                 common-lisp:nil
                                 ((dedicated-ip-pools :target-type
                                   list-of-dedicated-ip-pools :member-name
                                   "DedicatedIpPools")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDedicatedIpPoolsResponse"))

(smithy/sdk/shapes:define-input list-deliverability-test-reports-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name
                                 "ListDeliverabilityTestReportsRequest"))

(smithy/sdk/shapes:define-output list-deliverability-test-reports-response
                                 common-lisp:nil
                                 ((deliverability-test-reports :target-type
                                   deliverability-test-reports :required
                                   common-lisp:t :member-name
                                   "DeliverabilityTestReports")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListDeliverabilityTestReportsResponse"))

(smithy/sdk/shapes:define-input list-domain-deliverability-campaigns-request
                                common-lisp:nil
                                ((start-date :target-type timestamp :required
                                  common-lisp:t :member-name "StartDate"
                                  :http-query "StartDate")
                                 (end-date :target-type timestamp :required
                                  common-lisp:t :member-name "EndDate"
                                  :http-query "EndDate")
                                 (subscribed-domain :target-type domain
                                  :required common-lisp:t :member-name
                                  "SubscribedDomain" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name
                                 "ListDomainDeliverabilityCampaignsRequest"))

(smithy/sdk/shapes:define-output list-domain-deliverability-campaigns-response
                                 common-lisp:nil
                                 ((domain-deliverability-campaigns :target-type
                                   domain-deliverability-campaign-list
                                   :required common-lisp:t :member-name
                                   "DomainDeliverabilityCampaigns")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListDomainDeliverabilityCampaignsResponse"))

(smithy/sdk/shapes:define-input list-email-identities-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name "ListEmailIdentitiesRequest"))

(smithy/sdk/shapes:define-output list-email-identities-response common-lisp:nil
                                 ((email-identities :target-type
                                   identity-info-list :member-name
                                   "EmailIdentities")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListEmailIdentitiesResponse"))

(smithy/sdk/shapes:define-input list-email-templates-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name "ListEmailTemplatesRequest"))

(smithy/sdk/shapes:define-output list-email-templates-response common-lisp:nil
                                 ((templates-metadata :target-type
                                   email-template-metadata-list :member-name
                                   "TemplatesMetadata")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListEmailTemplatesResponse"))

(smithy/sdk/shapes:define-input list-export-jobs-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize")
                                 (export-source-type :target-type
                                  export-source-type :member-name
                                  "ExportSourceType")
                                 (job-status :target-type job-status
                                  :member-name "JobStatus"))
                                (:shape-name "ListExportJobsRequest"))

(smithy/sdk/shapes:define-output list-export-jobs-response common-lisp:nil
                                 ((export-jobs :target-type
                                   export-job-summary-list :member-name
                                   "ExportJobs")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListExportJobsResponse"))

(smithy/sdk/shapes:define-input list-import-jobs-request common-lisp:nil
                                ((import-destination-type :target-type
                                  import-destination-type :member-name
                                  "ImportDestinationType")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize"))
                                (:shape-name "ListImportJobsRequest"))

(smithy/sdk/shapes:define-output list-import-jobs-response common-lisp:nil
                                 ((import-jobs :target-type
                                   import-job-summary-list :member-name
                                   "ImportJobs")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListImportJobsResponse"))

(smithy/sdk/shapes:define-structure list-management-options common-lisp:nil
                                    ((contact-list-name :target-type
                                      contact-list-name :required common-lisp:t
                                      :member-name "ContactListName")
                                     (topic-name :target-type topic-name
                                      :member-name "TopicName"))
                                    (:shape-name "ListManagementOptions"))

(smithy/sdk/shapes:define-input list-multi-region-endpoints-request
                                common-lisp:nil
                                ((next-token :target-type next-token-v2
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type page-size-v2
                                  :member-name "PageSize" :http-query
                                  "PageSize"))
                                (:shape-name "ListMultiRegionEndpointsRequest"))

(smithy/sdk/shapes:define-output list-multi-region-endpoints-response
                                 common-lisp:nil
                                 ((multi-region-endpoints :target-type
                                   multi-region-endpoints :member-name
                                   "MultiRegionEndpoints")
                                  (next-token :target-type next-token-v2
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListMultiRegionEndpointsResponse"))

(smithy/sdk/shapes:define-list list-of-contact-lists :member contact-list)

(smithy/sdk/shapes:define-list list-of-contacts :member contact)

(smithy/sdk/shapes:define-list list-of-dedicated-ip-pools :member pool-name)

(smithy/sdk/shapes:define-type list-recommendation-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map list-recommendations-filter :key
                              list-recommendations-filter-key :value
                              list-recommendation-filter-value)

(smithy/sdk/shapes:define-enum list-recommendations-filter-key
    common-lisp:nil
  (:type "TYPE")
  (:impact "IMPACT")
  (:status "STATUS")
  (:resource-arn "RESOURCE_ARN"))

(smithy/sdk/shapes:define-input list-recommendations-request common-lisp:nil
                                ((filter :target-type
                                  list-recommendations-filter :member-name
                                  "Filter")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize"))
                                (:shape-name "ListRecommendationsRequest"))

(smithy/sdk/shapes:define-output list-recommendations-response common-lisp:nil
                                 ((recommendations :target-type
                                   recommendations-list :member-name
                                   "Recommendations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRecommendationsResponse"))

(smithy/sdk/shapes:define-input list-reputation-entities-request
                                common-lisp:nil
                                ((filter :target-type reputation-entity-filter
                                  :member-name "Filter")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize"))
                                (:shape-name "ListReputationEntitiesRequest"))

(smithy/sdk/shapes:define-output list-reputation-entities-response
                                 common-lisp:nil
                                 ((reputation-entities :target-type
                                   reputation-entities-list :member-name
                                   "ReputationEntities")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListReputationEntitiesResponse"))

(smithy/sdk/shapes:define-input list-resource-tenants-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (page-size :target-type max-items :member-name
                                  "PageSize")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListResourceTenantsRequest"))

(smithy/sdk/shapes:define-output list-resource-tenants-response common-lisp:nil
                                 ((resource-tenants :target-type
                                   resource-tenant-metadata-list :member-name
                                   "ResourceTenants")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListResourceTenantsResponse"))

(smithy/sdk/shapes:define-input list-suppressed-destinations-request
                                common-lisp:nil
                                ((reasons :target-type suppression-list-reasons
                                  :member-name "Reasons" :http-query "Reason")
                                 (start-date :target-type timestamp
                                  :member-name "StartDate" :http-query
                                  "StartDate")
                                 (end-date :target-type timestamp :member-name
                                  "EndDate" :http-query "EndDate")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize" :http-query "PageSize"))
                                (:shape-name
                                 "ListSuppressedDestinationsRequest"))

(smithy/sdk/shapes:define-output list-suppressed-destinations-response
                                 common-lisp:nil
                                 ((suppressed-destination-summaries
                                   :target-type
                                   suppressed-destination-summaries
                                   :member-name
                                   "SuppressedDestinationSummaries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListSuppressedDestinationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn" :http-query
                                  "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :required
                                   common-lisp:t :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-map list-tenant-resources-filter :key
                              list-tenant-resources-filter-key :value
                              list-tenant-resources-filter-value)

(smithy/sdk/shapes:define-enum list-tenant-resources-filter-key
    common-lisp:nil
  (:resource-type "RESOURCE_TYPE"))

(smithy/sdk/shapes:define-type list-tenant-resources-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-tenant-resources-request common-lisp:nil
                                ((tenant-name :target-type tenant-name
                                  :required common-lisp:t :member-name
                                  "TenantName")
                                 (filter :target-type
                                  list-tenant-resources-filter :member-name
                                  "Filter")
                                 (page-size :target-type max-items :member-name
                                  "PageSize")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTenantResourcesRequest"))

(smithy/sdk/shapes:define-output list-tenant-resources-response common-lisp:nil
                                 ((tenant-resources :target-type
                                   tenant-resource-list :member-name
                                   "TenantResources")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTenantResourcesResponse"))

(smithy/sdk/shapes:define-input list-tenants-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken")
                                 (page-size :target-type max-items :member-name
                                  "PageSize"))
                                (:shape-name "ListTenantsRequest"))

(smithy/sdk/shapes:define-output list-tenants-response common-lisp:nil
                                 ((tenants :target-type tenant-info-list
                                   :member-name "Tenants")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTenantsResponse"))

(smithy/sdk/shapes:define-structure mail-from-attributes common-lisp:nil
                                    ((mail-from-domain :target-type
                                      mail-from-domain-name :required
                                      common-lisp:t :member-name
                                      "MailFromDomain")
                                     (mail-from-domain-status :target-type
                                      mail-from-domain-status :required
                                      common-lisp:t :member-name
                                      "MailFromDomainStatus")
                                     (behavior-on-mx-failure :target-type
                                      behavior-on-mx-failure :required
                                      common-lisp:t :member-name
                                      "BehaviorOnMxFailure"))
                                    (:shape-name "MailFromAttributes"))

(smithy/sdk/shapes:define-type mail-from-domain-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error mail-from-domain-not-verified-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "MailFromDomainNotVerifiedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum mail-from-domain-status
    common-lisp:nil
  (:pending "PENDING")
  (:success "SUCCESS")
  (:failed "FAILED")
  (:temporary-failure "TEMPORARY_FAILURE"))

(smithy/sdk/shapes:define-enum mail-type
    common-lisp:nil
  (:marketing "MARKETING")
  (:transactional "TRANSACTIONAL"))

(smithy/sdk/shapes:define-type max24hour-send smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type max-delivery-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-items smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-send-rate smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure message common-lisp:nil
                                    ((subject :target-type content :required
                                      common-lisp:t :member-name "Subject")
                                     (body :target-type body :required
                                      common-lisp:t :member-name "Body")
                                     (headers :target-type message-header-list
                                      :member-name "Headers")
                                     (attachments :target-type attachment-list
                                      :member-name "Attachments"))
                                    (:shape-name "Message"))

(smithy/sdk/shapes:define-type message-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure message-header common-lisp:nil
                                    ((name :target-type message-header-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type message-header-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "MessageHeader"))

(smithy/sdk/shapes:define-list message-header-list :member message-header)

(smithy/sdk/shapes:define-type message-header-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message-header-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure message-insights-data-source
                                    common-lisp:nil
                                    ((start-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartDate")
                                     (end-date :target-type timestamp :required
                                      common-lisp:t :member-name "EndDate")
                                     (include :target-type
                                      message-insights-filters :member-name
                                      "Include")
                                     (exclude :target-type
                                      message-insights-filters :member-name
                                      "Exclude")
                                     (max-results :target-type
                                      message-insights-export-max-results
                                      :member-name "MaxResults"))
                                    (:shape-name "MessageInsightsDataSource"))

(smithy/sdk/shapes:define-type message-insights-export-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure message-insights-filters common-lisp:nil
                                    ((from-email-address :target-type
                                      email-address-filter-list :member-name
                                      "FromEmailAddress")
                                     (destination :target-type
                                      email-address-filter-list :member-name
                                      "Destination")
                                     (subject :target-type
                                      email-subject-filter-list :member-name
                                      "Subject")
                                     (isp :target-type isp-filter-list
                                      :member-name "Isp")
                                     (last-delivery-event :target-type
                                      last-delivery-event-list :member-name
                                      "LastDeliveryEvent")
                                     (last-engagement-event :target-type
                                      last-engagement-event-list :member-name
                                      "LastEngagementEvent"))
                                    (:shape-name "MessageInsightsFilters"))

(smithy/sdk/shapes:define-error message-rejected common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "MessageRejected")
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

(smithy/sdk/shapes:define-enum metric
    common-lisp:nil
  (:send "SEND")
  (:complaint "COMPLAINT")
  (:permanent-bounce "PERMANENT_BOUNCE")
  (:transient-bounce "TRANSIENT_BOUNCE")
  (:open "OPEN")
  (:click "CLICK")
  (:delivery "DELIVERY")
  (:delivery-open "DELIVERY_OPEN")
  (:delivery-click "DELIVERY_CLICK")
  (:delivery-complaint "DELIVERY_COMPLAINT"))

(smithy/sdk/shapes:define-enum metric-aggregation
    common-lisp:nil
  (:rate "RATE")
  (:volume "VOLUME"))

(smithy/sdk/shapes:define-structure metric-data-error common-lisp:nil
                                    ((id :target-type query-identifier
                                      :member-name "Id")
                                     (code :target-type query-error-code
                                      :member-name "Code")
                                     (message :target-type query-error-message
                                      :member-name "Message"))
                                    (:shape-name "MetricDataError"))

(smithy/sdk/shapes:define-list metric-data-error-list :member metric-data-error)

(smithy/sdk/shapes:define-structure metric-data-result common-lisp:nil
                                    ((id :target-type query-identifier
                                      :member-name "Id")
                                     (timestamps :target-type timestamp-list
                                      :member-name "Timestamps")
                                     (values :target-type metric-value-list
                                      :member-name "Values"))
                                    (:shape-name "MetricDataResult"))

(smithy/sdk/shapes:define-list metric-data-result-list :member
                               metric-data-result)

(smithy/sdk/shapes:define-enum metric-dimension-name
    common-lisp:nil
  (:email-identity "EMAIL_IDENTITY")
  (:configuration-set "CONFIGURATION_SET")
  (:isp "ISP"))

(smithy/sdk/shapes:define-type metric-dimension-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum metric-namespace
    common-lisp:nil
  (:vdm "VDM"))

(smithy/sdk/shapes:define-list metric-value-list :member counter)

(smithy/sdk/shapes:define-structure metrics-data-source common-lisp:nil
                                    ((dimensions :target-type export-dimensions
                                      :required common-lisp:t :member-name
                                      "Dimensions")
                                     (namespace :target-type metric-namespace
                                      :required common-lisp:t :member-name
                                      "Namespace")
                                     (metrics :target-type export-metrics
                                      :required common-lisp:t :member-name
                                      "Metrics")
                                     (start-date :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartDate")
                                     (end-date :target-type timestamp :required
                                      common-lisp:t :member-name "EndDate"))
                                    (:shape-name "MetricsDataSource"))

(smithy/sdk/shapes:define-structure multi-region-endpoint common-lisp:nil
                                    ((endpoint-name :target-type endpoint-name
                                      :member-name "EndpointName")
                                     (status :target-type status :member-name
                                      "Status")
                                     (endpoint-id :target-type endpoint-id
                                      :member-name "EndpointId")
                                     (regions :target-type regions :member-name
                                      "Regions")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp"))
                                    (:shape-name "MultiRegionEndpoint"))

(smithy/sdk/shapes:define-list multi-region-endpoints :member
                               multi-region-endpoint)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token-v2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type outbound-message-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure overall-volume common-lisp:nil
                                    ((volume-statistics :target-type
                                      volume-statistics :member-name
                                      "VolumeStatistics")
                                     (read-rate-percent :target-type percentage
                                      :member-name "ReadRatePercent")
                                     (domain-isp-placements :target-type
                                      domain-isp-placements :member-name
                                      "DomainIspPlacements"))
                                    (:shape-name "OverallVolume"))

(smithy/sdk/shapes:define-type page-size-v2 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type percentage100wrapper
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure pinpoint-destination common-lisp:nil
                                    ((application-arn :target-type
                                      amazon-resource-name :member-name
                                      "ApplicationArn"))
                                    (:shape-name "PinpointDestination"))

(smithy/sdk/shapes:define-structure placement-statistics common-lisp:nil
                                    ((inbox-percentage :target-type percentage
                                      :member-name "InboxPercentage")
                                     (spam-percentage :target-type percentage
                                      :member-name "SpamPercentage")
                                     (missing-percentage :target-type
                                      percentage :member-name
                                      "MissingPercentage")
                                     (spf-percentage :target-type percentage
                                      :member-name "SpfPercentage")
                                     (dkim-percentage :target-type percentage
                                      :member-name "DkimPercentage"))
                                    (:shape-name "PlacementStatistics"))

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map policy-map :key policy-name :value policy)

(smithy/sdk/shapes:define-type policy-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pool-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type primary-name-server
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type private-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type processed-records-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input
 put-account-dedicated-ip-warmup-attributes-request common-lisp:nil
 ((auto-warmup-enabled :target-type enabled :member-name "AutoWarmupEnabled"))
 (:shape-name "PutAccountDedicatedIpWarmupAttributesRequest"))

(smithy/sdk/shapes:define-output
 put-account-dedicated-ip-warmup-attributes-response common-lisp:nil
 common-lisp:nil (:shape-name "PutAccountDedicatedIpWarmupAttributesResponse"))

(smithy/sdk/shapes:define-input put-account-details-request common-lisp:nil
                                ((mail-type :target-type mail-type :required
                                  common-lisp:t :member-name "MailType")
                                 (website-url :target-type website-url
                                  :required common-lisp:t :member-name
                                  "WebsiteURL")
                                 (contact-language :target-type
                                  contact-language :member-name
                                  "ContactLanguage")
                                 (use-case-description :target-type
                                  use-case-description :member-name
                                  "UseCaseDescription")
                                 (additional-contact-email-addresses
                                  :target-type
                                  additional-contact-email-addresses
                                  :member-name
                                  "AdditionalContactEmailAddresses")
                                 (production-access-enabled :target-type
                                  enabled-wrapper :member-name
                                  "ProductionAccessEnabled"))
                                (:shape-name "PutAccountDetailsRequest"))

(smithy/sdk/shapes:define-output put-account-details-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutAccountDetailsResponse"))

(smithy/sdk/shapes:define-input put-account-sending-attributes-request
                                common-lisp:nil
                                ((sending-enabled :target-type enabled
                                  :member-name "SendingEnabled"))
                                (:shape-name
                                 "PutAccountSendingAttributesRequest"))

(smithy/sdk/shapes:define-output put-account-sending-attributes-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutAccountSendingAttributesResponse"))

(smithy/sdk/shapes:define-input put-account-suppression-attributes-request
                                common-lisp:nil
                                ((suppressed-reasons :target-type
                                  suppression-list-reasons :member-name
                                  "SuppressedReasons"))
                                (:shape-name
                                 "PutAccountSuppressionAttributesRequest"))

(smithy/sdk/shapes:define-output put-account-suppression-attributes-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutAccountSuppressionAttributesResponse"))

(smithy/sdk/shapes:define-input put-account-vdm-attributes-request
                                common-lisp:nil
                                ((vdm-attributes :target-type vdm-attributes
                                  :required common-lisp:t :member-name
                                  "VdmAttributes"))
                                (:shape-name "PutAccountVdmAttributesRequest"))

(smithy/sdk/shapes:define-output put-account-vdm-attributes-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutAccountVdmAttributesResponse"))

(smithy/sdk/shapes:define-input put-configuration-set-archiving-options-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName" :http-label
                                  common-lisp:t)
                                 (archive-arn :target-type archive-arn
                                  :member-name "ArchiveArn"))
                                (:shape-name
                                 "PutConfigurationSetArchivingOptionsRequest"))

(smithy/sdk/shapes:define-output
 put-configuration-set-archiving-options-response common-lisp:nil
 common-lisp:nil (:shape-name "PutConfigurationSetArchivingOptionsResponse"))

(smithy/sdk/shapes:define-input put-configuration-set-delivery-options-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName" :http-label
                                  common-lisp:t)
                                 (tls-policy :target-type tls-policy
                                  :member-name "TlsPolicy")
                                 (sending-pool-name :target-type
                                  sending-pool-name :member-name
                                  "SendingPoolName")
                                 (max-delivery-seconds :target-type
                                  max-delivery-seconds :member-name
                                  "MaxDeliverySeconds"))
                                (:shape-name
                                 "PutConfigurationSetDeliveryOptionsRequest"))

(smithy/sdk/shapes:define-output
 put-configuration-set-delivery-options-response common-lisp:nil
 common-lisp:nil (:shape-name "PutConfigurationSetDeliveryOptionsResponse"))

(smithy/sdk/shapes:define-input
 put-configuration-set-reputation-options-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName" :http-label common-lisp:t)
  (reputation-metrics-enabled :target-type enabled :member-name
   "ReputationMetricsEnabled"))
 (:shape-name "PutConfigurationSetReputationOptionsRequest"))

(smithy/sdk/shapes:define-output
 put-configuration-set-reputation-options-response common-lisp:nil
 common-lisp:nil (:shape-name "PutConfigurationSetReputationOptionsResponse"))

(smithy/sdk/shapes:define-input put-configuration-set-sending-options-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName" :http-label
                                  common-lisp:t)
                                 (sending-enabled :target-type enabled
                                  :member-name "SendingEnabled"))
                                (:shape-name
                                 "PutConfigurationSetSendingOptionsRequest"))

(smithy/sdk/shapes:define-output put-configuration-set-sending-options-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutConfigurationSetSendingOptionsResponse"))

(smithy/sdk/shapes:define-input
 put-configuration-set-suppression-options-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName" :http-label common-lisp:t)
  (suppressed-reasons :target-type suppression-list-reasons :member-name
   "SuppressedReasons"))
 (:shape-name "PutConfigurationSetSuppressionOptionsRequest"))

(smithy/sdk/shapes:define-output
 put-configuration-set-suppression-options-response common-lisp:nil
 common-lisp:nil (:shape-name "PutConfigurationSetSuppressionOptionsResponse"))

(smithy/sdk/shapes:define-input put-configuration-set-tracking-options-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName" :http-label
                                  common-lisp:t)
                                 (custom-redirect-domain :target-type
                                  custom-redirect-domain :member-name
                                  "CustomRedirectDomain")
                                 (https-policy :target-type https-policy
                                  :member-name "HttpsPolicy"))
                                (:shape-name
                                 "PutConfigurationSetTrackingOptionsRequest"))

(smithy/sdk/shapes:define-output
 put-configuration-set-tracking-options-response common-lisp:nil
 common-lisp:nil (:shape-name "PutConfigurationSetTrackingOptionsResponse"))

(smithy/sdk/shapes:define-input put-configuration-set-vdm-options-request
                                common-lisp:nil
                                ((configuration-set-name :target-type
                                  configuration-set-name :required
                                  common-lisp:t :member-name
                                  "ConfigurationSetName" :http-label
                                  common-lisp:t)
                                 (vdm-options :target-type vdm-options
                                  :member-name "VdmOptions"))
                                (:shape-name
                                 "PutConfigurationSetVdmOptionsRequest"))

(smithy/sdk/shapes:define-output put-configuration-set-vdm-options-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutConfigurationSetVdmOptionsResponse"))

(smithy/sdk/shapes:define-input put-dedicated-ip-in-pool-request
                                common-lisp:nil
                                ((ip :target-type ip :required common-lisp:t
                                  :member-name "Ip" :http-label common-lisp:t)
                                 (destination-pool-name :target-type pool-name
                                  :required common-lisp:t :member-name
                                  "DestinationPoolName"))
                                (:shape-name "PutDedicatedIpInPoolRequest"))

(smithy/sdk/shapes:define-output put-dedicated-ip-in-pool-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "PutDedicatedIpInPoolResponse"))

(smithy/sdk/shapes:define-input
 put-dedicated-ip-pool-scaling-attributes-request common-lisp:nil
 ((pool-name :target-type pool-name :required common-lisp:t :member-name
   "PoolName" :http-label common-lisp:t)
  (scaling-mode :target-type scaling-mode :required common-lisp:t :member-name
   "ScalingMode"))
 (:shape-name "PutDedicatedIpPoolScalingAttributesRequest"))

(smithy/sdk/shapes:define-output
 put-dedicated-ip-pool-scaling-attributes-response common-lisp:nil
 common-lisp:nil (:shape-name "PutDedicatedIpPoolScalingAttributesResponse"))

(smithy/sdk/shapes:define-input put-dedicated-ip-warmup-attributes-request
                                common-lisp:nil
                                ((ip :target-type ip :required common-lisp:t
                                  :member-name "Ip" :http-label common-lisp:t)
                                 (warmup-percentage :target-type
                                  percentage100wrapper :required common-lisp:t
                                  :member-name "WarmupPercentage"))
                                (:shape-name
                                 "PutDedicatedIpWarmupAttributesRequest"))

(smithy/sdk/shapes:define-output put-dedicated-ip-warmup-attributes-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutDedicatedIpWarmupAttributesResponse"))

(smithy/sdk/shapes:define-input put-deliverability-dashboard-option-request
                                common-lisp:nil
                                ((dashboard-enabled :target-type enabled
                                  :required common-lisp:t :member-name
                                  "DashboardEnabled")
                                 (subscribed-domains :target-type
                                  domain-deliverability-tracking-options
                                  :member-name "SubscribedDomains"))
                                (:shape-name
                                 "PutDeliverabilityDashboardOptionRequest"))

(smithy/sdk/shapes:define-output put-deliverability-dashboard-option-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutDeliverabilityDashboardOptionResponse"))

(smithy/sdk/shapes:define-input
 put-email-identity-configuration-set-attributes-request common-lisp:nil
 ((email-identity :target-type identity :required common-lisp:t :member-name
   "EmailIdentity" :http-label common-lisp:t)
  (configuration-set-name :target-type configuration-set-name :member-name
   "ConfigurationSetName"))
 (:shape-name "PutEmailIdentityConfigurationSetAttributesRequest"))

(smithy/sdk/shapes:define-output
 put-email-identity-configuration-set-attributes-response common-lisp:nil
 common-lisp:nil
 (:shape-name "PutEmailIdentityConfigurationSetAttributesResponse"))

(smithy/sdk/shapes:define-input put-email-identity-dkim-attributes-request
                                common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity" :http-label common-lisp:t)
                                 (signing-enabled :target-type enabled
                                  :member-name "SigningEnabled"))
                                (:shape-name
                                 "PutEmailIdentityDkimAttributesRequest"))

(smithy/sdk/shapes:define-output put-email-identity-dkim-attributes-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutEmailIdentityDkimAttributesResponse"))

(smithy/sdk/shapes:define-input
 put-email-identity-dkim-signing-attributes-request common-lisp:nil
 ((email-identity :target-type identity :required common-lisp:t :member-name
   "EmailIdentity" :http-label common-lisp:t)
  (signing-attributes-origin :target-type dkim-signing-attributes-origin
   :required common-lisp:t :member-name "SigningAttributesOrigin")
  (signing-attributes :target-type dkim-signing-attributes :member-name
   "SigningAttributes"))
 (:shape-name "PutEmailIdentityDkimSigningAttributesRequest"))

(smithy/sdk/shapes:define-output
 put-email-identity-dkim-signing-attributes-response common-lisp:nil
 ((dkim-status :target-type dkim-status :member-name "DkimStatus")
  (dkim-tokens :target-type dns-token-list :member-name "DkimTokens"))
 (:shape-name "PutEmailIdentityDkimSigningAttributesResponse"))

(smithy/sdk/shapes:define-input put-email-identity-feedback-attributes-request
                                common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity" :http-label common-lisp:t)
                                 (email-forwarding-enabled :target-type enabled
                                  :member-name "EmailForwardingEnabled"))
                                (:shape-name
                                 "PutEmailIdentityFeedbackAttributesRequest"))

(smithy/sdk/shapes:define-output
 put-email-identity-feedback-attributes-response common-lisp:nil
 common-lisp:nil (:shape-name "PutEmailIdentityFeedbackAttributesResponse"))

(smithy/sdk/shapes:define-input put-email-identity-mail-from-attributes-request
                                common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity" :http-label common-lisp:t)
                                 (mail-from-domain :target-type
                                  mail-from-domain-name :member-name
                                  "MailFromDomain")
                                 (behavior-on-mx-failure :target-type
                                  behavior-on-mx-failure :member-name
                                  "BehaviorOnMxFailure"))
                                (:shape-name
                                 "PutEmailIdentityMailFromAttributesRequest"))

(smithy/sdk/shapes:define-output
 put-email-identity-mail-from-attributes-response common-lisp:nil
 common-lisp:nil (:shape-name "PutEmailIdentityMailFromAttributesResponse"))

(smithy/sdk/shapes:define-input put-suppressed-destination-request
                                common-lisp:nil
                                ((email-address :target-type email-address
                                  :required common-lisp:t :member-name
                                  "EmailAddress")
                                 (reason :target-type suppression-list-reason
                                  :required common-lisp:t :member-name
                                  "Reason"))
                                (:shape-name "PutSuppressedDestinationRequest"))

(smithy/sdk/shapes:define-output put-suppressed-destination-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "PutSuppressedDestinationResponse"))

(smithy/sdk/shapes:define-enum query-error-code
    common-lisp:nil
  (:internal-failure "INTERNAL_FAILURE")
  (:access-denied "ACCESS_DENIED"))

(smithy/sdk/shapes:define-type query-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type query-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type raw-attachment-data smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure raw-message common-lisp:nil
                                    ((data :target-type raw-message-data
                                      :required common-lisp:t :member-name
                                      "Data"))
                                    (:shape-name "RawMessage"))

(smithy/sdk/shapes:define-type raw-message-data smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type rbl-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recommendation common-lisp:nil
                                    ((resource-arn :target-type
                                      amazon-resource-name :member-name
                                      "ResourceArn")
                                     (type :target-type recommendation-type
                                      :member-name "Type")
                                     (description :target-type
                                      recommendation-description :member-name
                                      "Description")
                                     (status :target-type recommendation-status
                                      :member-name "Status")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp")
                                     (impact :target-type recommendation-impact
                                      :member-name "Impact"))
                                    (:shape-name "Recommendation"))

(smithy/sdk/shapes:define-type recommendation-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum recommendation-impact
    common-lisp:nil
  (:low "LOW")
  (:high "HIGH"))

(smithy/sdk/shapes:define-enum recommendation-status
    common-lisp:nil
  (:open "OPEN")
  (:fixed "FIXED"))

(smithy/sdk/shapes:define-enum recommendation-type
    common-lisp:nil
  (:dkim "DKIM")
  (:dmarc "DMARC")
  (:spf "SPF")
  (:bimi "BIMI")
  (:complaint "COMPLAINT")
  (:bounce "BOUNCE")
  (:feedback-3p "FEEDBACK_3P")
  (:ip-listing "IP_LISTING"))

(smithy/sdk/shapes:define-list recommendations-list :member recommendation)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list regions :member region)

(smithy/sdk/shapes:define-type rendered-email-template
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure replacement-email-content common-lisp:nil
                                    ((replacement-template :target-type
                                      replacement-template :member-name
                                      "ReplacementTemplate"))
                                    (:shape-name "ReplacementEmailContent"))

(smithy/sdk/shapes:define-structure replacement-template common-lisp:nil
                                    ((replacement-template-data :target-type
                                      email-template-data :member-name
                                      "ReplacementTemplateData"))
                                    (:shape-name "ReplacementTemplate"))

(smithy/sdk/shapes:define-type report-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type report-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list reputation-entities-list :member
                               reputation-entity)

(smithy/sdk/shapes:define-structure reputation-entity common-lisp:nil
                                    ((reputation-entity-reference :target-type
                                      reputation-entity-reference :member-name
                                      "ReputationEntityReference")
                                     (reputation-entity-type :target-type
                                      reputation-entity-type :member-name
                                      "ReputationEntityType")
                                     (reputation-management-policy :target-type
                                      amazon-resource-name :member-name
                                      "ReputationManagementPolicy")
                                     (customer-managed-status :target-type
                                      status-record :member-name
                                      "CustomerManagedStatus")
                                     (aws-ses-managed-status :target-type
                                      status-record :member-name
                                      "AwsSesManagedStatus")
                                     (sending-status-aggregate :target-type
                                      sending-status :member-name
                                      "SendingStatusAggregate")
                                     (reputation-impact :target-type
                                      recommendation-impact :member-name
                                      "ReputationImpact"))
                                    (:shape-name "ReputationEntity"))

(smithy/sdk/shapes:define-map reputation-entity-filter :key
                              reputation-entity-filter-key :value
                              reputation-entity-filter-value)

(smithy/sdk/shapes:define-enum reputation-entity-filter-key
    common-lisp:nil
  (:entity-type "ENTITY_TYPE")
  (:reputation-impact "REPUTATION_IMPACT")
  (:status "SENDING_STATUS")
  (:entity-reference-prefix "ENTITY_REFERENCE_PREFIX"))

(smithy/sdk/shapes:define-type reputation-entity-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reputation-entity-reference
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum reputation-entity-type
    common-lisp:nil
  (:resource "RESOURCE"))

(smithy/sdk/shapes:define-structure reputation-options common-lisp:nil
                                    ((reputation-metrics-enabled :target-type
                                      enabled :member-name
                                      "ReputationMetricsEnabled")
                                     (last-fresh-start :target-type
                                      last-fresh-start :member-name
                                      "LastFreshStart"))
                                    (:shape-name "ReputationOptions"))

(smithy/sdk/shapes:define-structure resource-tenant-metadata common-lisp:nil
                                    ((tenant-name :target-type tenant-name
                                      :member-name "TenantName")
                                     (tenant-id :target-type tenant-id
                                      :member-name "TenantId")
                                     (resource-arn :target-type
                                      amazon-resource-name :member-name
                                      "ResourceArn")
                                     (associated-timestamp :target-type
                                      timestamp :member-name
                                      "AssociatedTimestamp"))
                                    (:shape-name "ResourceTenantMetadata"))

(smithy/sdk/shapes:define-list resource-tenant-metadata-list :member
                               resource-tenant-metadata)

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:email-identity "EMAIL_IDENTITY")
  (:configuration-set "CONFIGURATION_SET")
  (:email-template "EMAIL_TEMPLATE"))

(smithy/sdk/shapes:define-structure review-details common-lisp:nil
                                    ((status :target-type review-status
                                      :member-name "Status")
                                     (case-id :target-type case-id :member-name
                                      "CaseId"))
                                    (:shape-name "ReviewDetails"))

(smithy/sdk/shapes:define-enum review-status
    common-lisp:nil
  (:pending "PENDING")
  (:failed "FAILED")
  (:granted "GRANTED")
  (:denied "DENIED"))

(smithy/sdk/shapes:define-structure route common-lisp:nil
                                    ((region :target-type region :required
                                      common-lisp:t :member-name "Region"))
                                    (:shape-name "Route"))

(smithy/sdk/shapes:define-structure route-details common-lisp:nil
                                    ((region :target-type region :required
                                      common-lisp:t :member-name "Region"))
                                    (:shape-name "RouteDetails"))

(smithy/sdk/shapes:define-list routes :member route)

(smithy/sdk/shapes:define-list routes-details :member route-details)

(smithy/sdk/shapes:define-type s3url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure soarecord common-lisp:nil
                                    ((primary-name-server :target-type
                                      primary-name-server :member-name
                                      "PrimaryNameServer")
                                     (admin-email :target-type admin-email
                                      :member-name "AdminEmail")
                                     (serial-number :target-type serial-number
                                      :member-name "SerialNumber"))
                                    (:shape-name "SOARecord"))

(smithy/sdk/shapes:define-enum scaling-mode
    common-lisp:nil
  (:standard "STANDARD")
  (:managed "MANAGED"))

(smithy/sdk/shapes:define-type selector smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input send-bulk-email-request common-lisp:nil
                                ((from-email-address :target-type email-address
                                  :member-name "FromEmailAddress")
                                 (from-email-address-identity-arn :target-type
                                  amazon-resource-name :member-name
                                  "FromEmailAddressIdentityArn")
                                 (reply-to-addresses :target-type
                                  email-address-list :member-name
                                  "ReplyToAddresses")
                                 (feedback-forwarding-email-address
                                  :target-type email-address :member-name
                                  "FeedbackForwardingEmailAddress")
                                 (feedback-forwarding-email-address-identity-arn
                                  :target-type amazon-resource-name
                                  :member-name
                                  "FeedbackForwardingEmailAddressIdentityArn")
                                 (default-email-tags :target-type
                                  message-tag-list :member-name
                                  "DefaultEmailTags")
                                 (default-content :target-type
                                  bulk-email-content :required common-lisp:t
                                  :member-name "DefaultContent")
                                 (bulk-email-entries :target-type
                                  bulk-email-entry-list :required common-lisp:t
                                  :member-name "BulkEmailEntries")
                                 (configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName")
                                 (endpoint-id :target-type endpoint-id
                                  :member-name "EndpointId")
                                 (tenant-name :target-type tenant-name
                                  :member-name "TenantName"))
                                (:shape-name "SendBulkEmailRequest"))

(smithy/sdk/shapes:define-output send-bulk-email-response common-lisp:nil
                                 ((bulk-email-entry-results :target-type
                                   bulk-email-entry-result-list :required
                                   common-lisp:t :member-name
                                   "BulkEmailEntryResults"))
                                 (:shape-name "SendBulkEmailResponse"))

(smithy/sdk/shapes:define-input send-custom-verification-email-request
                                common-lisp:nil
                                ((email-address :target-type email-address
                                  :required common-lisp:t :member-name
                                  "EmailAddress")
                                 (template-name :target-type
                                  email-template-name :required common-lisp:t
                                  :member-name "TemplateName")
                                 (configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName"))
                                (:shape-name
                                 "SendCustomVerificationEmailRequest"))

(smithy/sdk/shapes:define-output send-custom-verification-email-response
                                 common-lisp:nil
                                 ((message-id :target-type outbound-message-id
                                   :member-name "MessageId"))
                                 (:shape-name
                                  "SendCustomVerificationEmailResponse"))

(smithy/sdk/shapes:define-input send-email-request common-lisp:nil
                                ((from-email-address :target-type email-address
                                  :member-name "FromEmailAddress")
                                 (from-email-address-identity-arn :target-type
                                  amazon-resource-name :member-name
                                  "FromEmailAddressIdentityArn")
                                 (destination :target-type destination
                                  :member-name "Destination")
                                 (reply-to-addresses :target-type
                                  email-address-list :member-name
                                  "ReplyToAddresses")
                                 (feedback-forwarding-email-address
                                  :target-type email-address :member-name
                                  "FeedbackForwardingEmailAddress")
                                 (feedback-forwarding-email-address-identity-arn
                                  :target-type amazon-resource-name
                                  :member-name
                                  "FeedbackForwardingEmailAddressIdentityArn")
                                 (content :target-type email-content :required
                                  common-lisp:t :member-name "Content")
                                 (email-tags :target-type message-tag-list
                                  :member-name "EmailTags")
                                 (configuration-set-name :target-type
                                  configuration-set-name :member-name
                                  "ConfigurationSetName")
                                 (endpoint-id :target-type endpoint-id
                                  :member-name "EndpointId")
                                 (tenant-name :target-type tenant-name
                                  :member-name "TenantName")
                                 (list-management-options :target-type
                                  list-management-options :member-name
                                  "ListManagementOptions"))
                                (:shape-name "SendEmailRequest"))

(smithy/sdk/shapes:define-output send-email-response common-lisp:nil
                                 ((message-id :target-type outbound-message-id
                                   :member-name "MessageId"))
                                 (:shape-name "SendEmailResponse"))

(smithy/sdk/shapes:define-structure send-quota common-lisp:nil
                                    ((max24hour-send :target-type
                                      max24hour-send :member-name
                                      "Max24HourSend")
                                     (max-send-rate :target-type max-send-rate
                                      :member-name "MaxSendRate")
                                     (sent-last24hours :target-type
                                      sent-last24hours :member-name
                                      "SentLast24Hours"))
                                    (:shape-name "SendQuota"))

(smithy/sdk/shapes:define-structure sending-options common-lisp:nil
                                    ((sending-enabled :target-type enabled
                                      :member-name "SendingEnabled"))
                                    (:shape-name "SendingOptions"))

(smithy/sdk/shapes:define-error sending-paused-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "SendingPausedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type sending-pool-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sending-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:reinstated "REINSTATED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type sent-last24hours smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type serial-number smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure sns-destination common-lisp:nil
                                    ((topic-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "TopicArn"))
                                    (:shape-name "SnsDestination"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:creating "CREATING")
  (:ready "READY")
  (:failed "FAILED")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-type status-cause smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure status-record common-lisp:nil
                                    ((status :target-type sending-status
                                      :member-name "Status")
                                     (cause :target-type status-cause
                                      :member-name "Cause")
                                     (last-updated-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdatedTimestamp"))
                                    (:shape-name "StatusRecord"))

(smithy/sdk/shapes:define-type subject smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum subscription-status
    common-lisp:nil
  (:opt-in "OPT_IN")
  (:opt-out "OPT_OUT"))

(smithy/sdk/shapes:define-type success-redirection-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure suppressed-destination common-lisp:nil
                                    ((email-address :target-type email-address
                                      :required common-lisp:t :member-name
                                      "EmailAddress")
                                     (reason :target-type
                                      suppression-list-reason :required
                                      common-lisp:t :member-name "Reason")
                                     (last-update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdateTime")
                                     (attributes :target-type
                                      suppressed-destination-attributes
                                      :member-name "Attributes"))
                                    (:shape-name "SuppressedDestination"))

(smithy/sdk/shapes:define-structure suppressed-destination-attributes
                                    common-lisp:nil
                                    ((message-id :target-type
                                      outbound-message-id :member-name
                                      "MessageId")
                                     (feedback-id :target-type feedback-id
                                      :member-name "FeedbackId"))
                                    (:shape-name
                                     "SuppressedDestinationAttributes"))

(smithy/sdk/shapes:define-list suppressed-destination-summaries :member
                               suppressed-destination-summary)

(smithy/sdk/shapes:define-structure suppressed-destination-summary
                                    common-lisp:nil
                                    ((email-address :target-type email-address
                                      :required common-lisp:t :member-name
                                      "EmailAddress")
                                     (reason :target-type
                                      suppression-list-reason :required
                                      common-lisp:t :member-name "Reason")
                                     (last-update-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdateTime"))
                                    (:shape-name
                                     "SuppressedDestinationSummary"))

(smithy/sdk/shapes:define-structure suppression-attributes common-lisp:nil
                                    ((suppressed-reasons :target-type
                                      suppression-list-reasons :member-name
                                      "SuppressedReasons"))
                                    (:shape-name "SuppressionAttributes"))

(smithy/sdk/shapes:define-structure suppression-list-destination
                                    common-lisp:nil
                                    ((suppression-list-import-action
                                      :target-type
                                      suppression-list-import-action :required
                                      common-lisp:t :member-name
                                      "SuppressionListImportAction"))
                                    (:shape-name "SuppressionListDestination"))

(smithy/sdk/shapes:define-enum suppression-list-import-action
    common-lisp:nil
  (:delete "DELETE")
  (:put "PUT"))

(smithy/sdk/shapes:define-enum suppression-list-reason
    common-lisp:nil
  (:bounce "BOUNCE")
  (:complaint "COMPLAINT"))

(smithy/sdk/shapes:define-list suppression-list-reasons :member
                               suppression-list-reason)

(smithy/sdk/shapes:define-structure suppression-options common-lisp:nil
                                    ((suppressed-reasons :target-type
                                      suppression-list-reasons :member-name
                                      "SuppressedReasons"))
                                    (:shape-name "SuppressionOptions"))

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
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure template common-lisp:nil
                                    ((template-name :target-type
                                      email-template-name :member-name
                                      "TemplateName")
                                     (template-arn :target-type
                                      amazon-resource-name :member-name
                                      "TemplateArn")
                                     (template-content :target-type
                                      email-template-content :member-name
                                      "TemplateContent")
                                     (template-data :target-type
                                      email-template-data :member-name
                                      "TemplateData")
                                     (headers :target-type message-header-list
                                      :member-name "Headers")
                                     (attachments :target-type attachment-list
                                      :member-name "Attachments"))
                                    (:shape-name "Template"))

(smithy/sdk/shapes:define-type template-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tenant common-lisp:nil
                                    ((tenant-name :target-type tenant-name
                                      :member-name "TenantName")
                                     (tenant-id :target-type tenant-id
                                      :member-name "TenantId")
                                     (tenant-arn :target-type
                                      amazon-resource-name :member-name
                                      "TenantArn")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (sending-status :target-type
                                      sending-status :member-name
                                      "SendingStatus"))
                                    (:shape-name "Tenant"))

(smithy/sdk/shapes:define-type tenant-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tenant-info common-lisp:nil
                                    ((tenant-name :target-type tenant-name
                                      :member-name "TenantName")
                                     (tenant-id :target-type tenant-id
                                      :member-name "TenantId")
                                     (tenant-arn :target-type
                                      amazon-resource-name :member-name
                                      "TenantArn")
                                     (created-timestamp :target-type timestamp
                                      :member-name "CreatedTimestamp"))
                                    (:shape-name "TenantInfo"))

(smithy/sdk/shapes:define-list tenant-info-list :member tenant-info)

(smithy/sdk/shapes:define-type tenant-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tenant-resource common-lisp:nil
                                    ((resource-type :target-type resource-type
                                      :member-name "ResourceType")
                                     (resource-arn :target-type
                                      amazon-resource-name :member-name
                                      "ResourceArn"))
                                    (:shape-name "TenantResource"))

(smithy/sdk/shapes:define-list tenant-resource-list :member tenant-resource)

(smithy/sdk/shapes:define-input test-render-email-template-request
                                common-lisp:nil
                                ((template-name :target-type
                                  email-template-name :required common-lisp:t
                                  :member-name "TemplateName" :http-label
                                  common-lisp:t)
                                 (template-data :target-type
                                  email-template-data :required common-lisp:t
                                  :member-name "TemplateData"))
                                (:shape-name "TestRenderEmailTemplateRequest"))

(smithy/sdk/shapes:define-output test-render-email-template-response
                                 common-lisp:nil
                                 ((rendered-template :target-type
                                   rendered-email-template :required
                                   common-lisp:t :member-name
                                   "RenderedTemplate"))
                                 (:shape-name
                                  "TestRenderEmailTemplateResponse"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list timestamp-list :member timestamp)

(smithy/sdk/shapes:define-enum tls-policy
    common-lisp:nil
  (:require "REQUIRE")
  (:optional "OPTIONAL"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure topic common-lisp:nil
                                    ((topic-name :target-type topic-name
                                      :required common-lisp:t :member-name
                                      "TopicName")
                                     (display-name :target-type display-name
                                      :required common-lisp:t :member-name
                                      "DisplayName")
                                     (description :target-type description
                                      :member-name "Description")
                                     (default-subscription-status :target-type
                                      subscription-status :required
                                      common-lisp:t :member-name
                                      "DefaultSubscriptionStatus"))
                                    (:shape-name "Topic"))

(smithy/sdk/shapes:define-structure topic-filter common-lisp:nil
                                    ((topic-name :target-type topic-name
                                      :member-name "TopicName")
                                     (use-default-if-preference-unavailable
                                      :target-type
                                      use-default-if-preference-unavailable
                                      :member-name
                                      "UseDefaultIfPreferenceUnavailable"))
                                    (:shape-name "TopicFilter"))

(smithy/sdk/shapes:define-type topic-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure topic-preference common-lisp:nil
                                    ((topic-name :target-type topic-name
                                      :required common-lisp:t :member-name
                                      "TopicName")
                                     (subscription-status :target-type
                                      subscription-status :required
                                      common-lisp:t :member-name
                                      "SubscriptionStatus"))
                                    (:shape-name "TopicPreference"))

(smithy/sdk/shapes:define-list topic-preference-list :member topic-preference)

(smithy/sdk/shapes:define-list topics :member topic)

(smithy/sdk/shapes:define-structure tracking-options common-lisp:nil
                                    ((custom-redirect-domain :target-type
                                      custom-redirect-domain :required
                                      common-lisp:t :member-name
                                      "CustomRedirectDomain")
                                     (https-policy :target-type https-policy
                                      :member-name "HttpsPolicy"))
                                    (:shape-name "TrackingOptions"))

(smithy/sdk/shapes:define-type unsubscribe-all smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn" :http-query
                                  "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input
 update-configuration-set-event-destination-request common-lisp:nil
 ((configuration-set-name :target-type configuration-set-name :required
   common-lisp:t :member-name "ConfigurationSetName" :http-label common-lisp:t)
  (event-destination-name :target-type event-destination-name :required
   common-lisp:t :member-name "EventDestinationName" :http-label common-lisp:t)
  (event-destination :target-type event-destination-definition :required
   common-lisp:t :member-name "EventDestination"))
 (:shape-name "UpdateConfigurationSetEventDestinationRequest"))

(smithy/sdk/shapes:define-output
 update-configuration-set-event-destination-response common-lisp:nil
 common-lisp:nil (:shape-name "UpdateConfigurationSetEventDestinationResponse"))

(smithy/sdk/shapes:define-input update-contact-list-request common-lisp:nil
                                ((contact-list-name :target-type
                                  contact-list-name :required common-lisp:t
                                  :member-name "ContactListName" :http-label
                                  common-lisp:t)
                                 (topics :target-type topics :member-name
                                  "Topics")
                                 (description :target-type description
                                  :member-name "Description"))
                                (:shape-name "UpdateContactListRequest"))

(smithy/sdk/shapes:define-output update-contact-list-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateContactListResponse"))

(smithy/sdk/shapes:define-input update-contact-request common-lisp:nil
                                ((contact-list-name :target-type
                                  contact-list-name :required common-lisp:t
                                  :member-name "ContactListName" :http-label
                                  common-lisp:t)
                                 (email-address :target-type email-address
                                  :required common-lisp:t :member-name
                                  "EmailAddress" :http-label common-lisp:t)
                                 (topic-preferences :target-type
                                  topic-preference-list :member-name
                                  "TopicPreferences")
                                 (unsubscribe-all :target-type unsubscribe-all
                                  :member-name "UnsubscribeAll")
                                 (attributes-data :target-type attributes-data
                                  :member-name "AttributesData"))
                                (:shape-name "UpdateContactRequest"))

(smithy/sdk/shapes:define-output update-contact-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateContactResponse"))

(smithy/sdk/shapes:define-input
 update-custom-verification-email-template-request common-lisp:nil
 ((template-name :target-type email-template-name :required common-lisp:t
   :member-name "TemplateName" :http-label common-lisp:t)
  (from-email-address :target-type email-address :required common-lisp:t
   :member-name "FromEmailAddress")
  (template-subject :target-type email-template-subject :required common-lisp:t
   :member-name "TemplateSubject")
  (template-content :target-type template-content :required common-lisp:t
   :member-name "TemplateContent")
  (success-redirection-url :target-type success-redirection-url :required
   common-lisp:t :member-name "SuccessRedirectionURL")
  (failure-redirection-url :target-type failure-redirection-url :required
   common-lisp:t :member-name "FailureRedirectionURL"))
 (:shape-name "UpdateCustomVerificationEmailTemplateRequest"))

(smithy/sdk/shapes:define-output
 update-custom-verification-email-template-response common-lisp:nil
 common-lisp:nil (:shape-name "UpdateCustomVerificationEmailTemplateResponse"))

(smithy/sdk/shapes:define-input update-email-identity-policy-request
                                common-lisp:nil
                                ((email-identity :target-type identity
                                  :required common-lisp:t :member-name
                                  "EmailIdentity" :http-label common-lisp:t)
                                 (policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName" :http-label common-lisp:t)
                                 (policy :target-type policy :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name
                                 "UpdateEmailIdentityPolicyRequest"))

(smithy/sdk/shapes:define-output update-email-identity-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateEmailIdentityPolicyResponse"))

(smithy/sdk/shapes:define-input update-email-template-request common-lisp:nil
                                ((template-name :target-type
                                  email-template-name :required common-lisp:t
                                  :member-name "TemplateName" :http-label
                                  common-lisp:t)
                                 (template-content :target-type
                                  email-template-content :required
                                  common-lisp:t :member-name
                                  "TemplateContent"))
                                (:shape-name "UpdateEmailTemplateRequest"))

(smithy/sdk/shapes:define-output update-email-template-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateEmailTemplateResponse"))

(smithy/sdk/shapes:define-input
 update-reputation-entity-customer-managed-status-request common-lisp:nil
 ((reputation-entity-type :target-type reputation-entity-type :required
   common-lisp:t :member-name "ReputationEntityType" :http-label common-lisp:t)
  (reputation-entity-reference :target-type reputation-entity-reference
   :required common-lisp:t :member-name "ReputationEntityReference" :http-label
   common-lisp:t)
  (sending-status :target-type sending-status :required common-lisp:t
   :member-name "SendingStatus"))
 (:shape-name "UpdateReputationEntityCustomerManagedStatusRequest"))

(smithy/sdk/shapes:define-output
 update-reputation-entity-customer-managed-status-response common-lisp:nil
 common-lisp:nil
 (:shape-name "UpdateReputationEntityCustomerManagedStatusResponse"))

(smithy/sdk/shapes:define-input update-reputation-entity-policy-request
                                common-lisp:nil
                                ((reputation-entity-type :target-type
                                  reputation-entity-type :required
                                  common-lisp:t :member-name
                                  "ReputationEntityType" :http-label
                                  common-lisp:t)
                                 (reputation-entity-reference :target-type
                                  reputation-entity-reference :required
                                  common-lisp:t :member-name
                                  "ReputationEntityReference" :http-label
                                  common-lisp:t)
                                 (reputation-entity-policy :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ReputationEntityPolicy"))
                                (:shape-name
                                 "UpdateReputationEntityPolicyRequest"))

(smithy/sdk/shapes:define-output update-reputation-entity-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateReputationEntityPolicyResponse"))

(smithy/sdk/shapes:define-type use-case-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type use-default-if-preference-unavailable
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure vdm-attributes common-lisp:nil
                                    ((vdm-enabled :target-type feature-status
                                      :required common-lisp:t :member-name
                                      "VdmEnabled")
                                     (dashboard-attributes :target-type
                                      dashboard-attributes :member-name
                                      "DashboardAttributes")
                                     (guardian-attributes :target-type
                                      guardian-attributes :member-name
                                      "GuardianAttributes"))
                                    (:shape-name "VdmAttributes"))

(smithy/sdk/shapes:define-structure vdm-options common-lisp:nil
                                    ((dashboard-options :target-type
                                      dashboard-options :member-name
                                      "DashboardOptions")
                                     (guardian-options :target-type
                                      guardian-options :member-name
                                      "GuardianOptions"))
                                    (:shape-name "VdmOptions"))

(smithy/sdk/shapes:define-enum verification-error
    common-lisp:nil
  (:service-error "SERVICE_ERROR")
  (:dns-server-error "DNS_SERVER_ERROR")
  (:host-not-found "HOST_NOT_FOUND")
  (:type-not-found "TYPE_NOT_FOUND")
  (:invalid-value "INVALID_VALUE")
  (:replication-access-denied "REPLICATION_ACCESS_DENIED")
  (:replication-primary-not-found "REPLICATION_PRIMARY_NOT_FOUND")
  (:replication-primary-byo-dkim-not-supported
   "REPLICATION_PRIMARY_BYO_DKIM_NOT_SUPPORTED")
  (:replication-replica-as-primary-not-supported
   "REPLICATION_REPLICA_AS_PRIMARY_NOT_SUPPORTED")
  (:replication-primary-invalid-region "REPLICATION_PRIMARY_INVALID_REGION"))

(smithy/sdk/shapes:define-structure verification-info common-lisp:nil
                                    ((last-checked-timestamp :target-type
                                      timestamp :member-name
                                      "LastCheckedTimestamp")
                                     (last-success-timestamp :target-type
                                      timestamp :member-name
                                      "LastSuccessTimestamp")
                                     (error-type :target-type
                                      verification-error :member-name
                                      "ErrorType")
                                     (soarecord :target-type soarecord
                                      :member-name "SOARecord"))
                                    (:shape-name "VerificationInfo"))

(smithy/sdk/shapes:define-enum verification-status
    common-lisp:nil
  (:pending "PENDING")
  (:success "SUCCESS")
  (:failed "FAILED")
  (:temporary-failure "TEMPORARY_FAILURE")
  (:not-started "NOT_STARTED"))

(smithy/sdk/shapes:define-type volume smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure volume-statistics common-lisp:nil
                                    ((inbox-raw-count :target-type volume
                                      :member-name "InboxRawCount")
                                     (spam-raw-count :target-type volume
                                      :member-name "SpamRawCount")
                                     (projected-inbox :target-type volume
                                      :member-name "ProjectedInbox")
                                     (projected-spam :target-type volume
                                      :member-name "ProjectedSpam"))
                                    (:shape-name "VolumeStatistics"))

(smithy/sdk/shapes:define-enum warmup-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:done "DONE")
  (:not-applicable "NOT_APPLICABLE"))

(smithy/sdk/shapes:define-type website-url smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation batch-get-metric-data :shape-name
                                       "BatchGetMetricData" :input
                                       batch-get-metric-data-request :output
                                       batch-get-metric-data-response :errors
                                       (bad-request-exception
                                        internal-service-error-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/metrics/batch" :code 200)

(smithy/sdk/operation:define-operation cancel-export-job :shape-name
                                       "CancelExportJob" :input
                                       cancel-export-job-request :output
                                       cancel-export-job-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/export-jobs/{JobId}/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation create-configuration-set :shape-name
                                       "CreateConfigurationSet" :input
                                       create-configuration-set-request :output
                                       create-configuration-set-response
                                       :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/configuration-sets" :code 200)

(smithy/sdk/operation:define-operation
 create-configuration-set-event-destination :shape-name
 "CreateConfigurationSetEventDestination" :input
 create-configuration-set-event-destination-request :output
 create-configuration-set-event-destination-response :errors
 (already-exists-exception bad-request-exception limit-exceeded-exception
  not-found-exception too-many-requests-exception)
 :method "POST" :uri
 "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations" :code
 200)

(smithy/sdk/operation:define-operation create-contact :shape-name
                                       "CreateContact" :input
                                       create-contact-request :output
                                       create-contact-response :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/contact-lists/{ContactListName}/contacts"
                                       :code 200)

(smithy/sdk/operation:define-operation create-contact-list :shape-name
                                       "CreateContactList" :input
                                       create-contact-list-request :output
                                       create-contact-list-response :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/contact-lists" :code 200)

(smithy/sdk/operation:define-operation
 create-custom-verification-email-template :shape-name
 "CreateCustomVerificationEmailTemplate" :input
 create-custom-verification-email-template-request :output
 create-custom-verification-email-template-response :errors
 (already-exists-exception bad-request-exception limit-exceeded-exception
  not-found-exception too-many-requests-exception)
 :method "POST" :uri "/v2/email/custom-verification-email-templates" :code 200)

(smithy/sdk/operation:define-operation create-dedicated-ip-pool :shape-name
                                       "CreateDedicatedIpPool" :input
                                       create-dedicated-ip-pool-request :output
                                       create-dedicated-ip-pool-response
                                       :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/dedicated-ip-pools" :code 200)

(smithy/sdk/operation:define-operation create-deliverability-test-report
                                       :shape-name
                                       "CreateDeliverabilityTestReport" :input
                                       create-deliverability-test-report-request
                                       :output
                                       create-deliverability-test-report-response
                                       :errors
                                       (account-suspended-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        limit-exceeded-exception
                                        mail-from-domain-not-verified-exception
                                        message-rejected not-found-exception
                                        sending-paused-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/deliverability-dashboard/test"
                                       :code 200)

(smithy/sdk/operation:define-operation create-email-identity :shape-name
                                       "CreateEmailIdentity" :input
                                       create-email-identity-request :output
                                       create-email-identity-response :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/identities" :code 200)

(smithy/sdk/operation:define-operation create-email-identity-policy :shape-name
                                       "CreateEmailIdentityPolicy" :input
                                       create-email-identity-policy-request
                                       :output
                                       create-email-identity-policy-response
                                       :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}"
                                       :code 200)

(smithy/sdk/operation:define-operation create-email-template :shape-name
                                       "CreateEmailTemplate" :input
                                       create-email-template-request :output
                                       create-email-template-response :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/templates" :code 200)

(smithy/sdk/operation:define-operation create-export-job :shape-name
                                       "CreateExportJob" :input
                                       create-export-job-request :output
                                       create-export-job-response :errors
                                       (bad-request-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/export-jobs" :code 200)

(smithy/sdk/operation:define-operation create-import-job :shape-name
                                       "CreateImportJob" :input
                                       create-import-job-request :output
                                       create-import-job-response :errors
                                       (bad-request-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/import-jobs" :code 200)

(smithy/sdk/operation:define-operation create-multi-region-endpoint :shape-name
                                       "CreateMultiRegionEndpoint" :input
                                       create-multi-region-endpoint-request
                                       :output
                                       create-multi-region-endpoint-response
                                       :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/multi-region-endpoints" :code
                                       200)

(smithy/sdk/operation:define-operation create-tenant :shape-name "CreateTenant"
                                       :input create-tenant-request :output
                                       create-tenant-response :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/v2/email/tenants"
                                       :code 200)

(smithy/sdk/operation:define-operation create-tenant-resource-association
                                       :shape-name
                                       "CreateTenantResourceAssociation" :input
                                       create-tenant-resource-association-request
                                       :output
                                       create-tenant-resource-association-response
                                       :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/tenants/resources" :code 200)

(smithy/sdk/operation:define-operation delete-configuration-set :shape-name
                                       "DeleteConfigurationSet" :input
                                       delete-configuration-set-request :output
                                       delete-configuration-set-response
                                       :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/email/configuration-sets/{ConfigurationSetName}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 delete-configuration-set-event-destination :shape-name
 "DeleteConfigurationSetEventDestination" :input
 delete-configuration-set-event-destination-request :output
 delete-configuration-set-event-destination-response :errors
 (bad-request-exception not-found-exception too-many-requests-exception)
 :method "DELETE" :uri
 "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}"
 :code 200)

(smithy/sdk/operation:define-operation delete-contact :shape-name
                                       "DeleteContact" :input
                                       delete-contact-request :output
                                       delete-contact-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-contact-list :shape-name
                                       "DeleteContactList" :input
                                       delete-contact-list-request :output
                                       delete-contact-list-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/email/contact-lists/{ContactListName}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 delete-custom-verification-email-template :shape-name
 "DeleteCustomVerificationEmailTemplate" :input
 delete-custom-verification-email-template-request :output
 delete-custom-verification-email-template-response :errors
 (bad-request-exception not-found-exception too-many-requests-exception)
 :method "DELETE" :uri
 "/v2/email/custom-verification-email-templates/{TemplateName}" :code 200)

(smithy/sdk/operation:define-operation delete-dedicated-ip-pool :shape-name
                                       "DeleteDedicatedIpPool" :input
                                       delete-dedicated-ip-pool-request :output
                                       delete-dedicated-ip-pool-response
                                       :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/email/dedicated-ip-pools/{PoolName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-email-identity :shape-name
                                       "DeleteEmailIdentity" :input
                                       delete-email-identity-request :output
                                       delete-email-identity-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/email/identities/{EmailIdentity}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-email-identity-policy :shape-name
                                       "DeleteEmailIdentityPolicy" :input
                                       delete-email-identity-policy-request
                                       :output
                                       delete-email-identity-policy-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-email-template :shape-name
                                       "DeleteEmailTemplate" :input
                                       delete-email-template-request :output
                                       delete-email-template-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/email/templates/{TemplateName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-multi-region-endpoint :shape-name
                                       "DeleteMultiRegionEndpoint" :input
                                       delete-multi-region-endpoint-request
                                       :output
                                       delete-multi-region-endpoint-response
                                       :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/email/multi-region-endpoints/{EndpointName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-suppressed-destination
                                       :shape-name
                                       "DeleteSuppressedDestination" :input
                                       delete-suppressed-destination-request
                                       :output
                                       delete-suppressed-destination-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/email/suppression/addresses/{EmailAddress}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-tenant :shape-name "DeleteTenant"
                                       :input delete-tenant-request :output
                                       delete-tenant-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/tenants/delete" :code 200)

(smithy/sdk/operation:define-operation delete-tenant-resource-association
                                       :shape-name
                                       "DeleteTenantResourceAssociation" :input
                                       delete-tenant-resource-association-request
                                       :output
                                       delete-tenant-resource-association-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/tenants/resources/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation get-account :shape-name "GetAccount"
                                       :input get-account-request :output
                                       get-account-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v2/email/account"
                                       :code 200)

(smithy/sdk/operation:define-operation get-blacklist-reports :shape-name
                                       "GetBlacklistReports" :input
                                       get-blacklist-reports-request :output
                                       get-blacklist-reports-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/deliverability-dashboard/blacklist-report"
                                       :code 200)

(smithy/sdk/operation:define-operation get-configuration-set :shape-name
                                       "GetConfigurationSet" :input
                                       get-configuration-set-request :output
                                       get-configuration-set-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/configuration-sets/{ConfigurationSetName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-configuration-set-event-destinations
                                       :shape-name
                                       "GetConfigurationSetEventDestinations"
                                       :input
                                       get-configuration-set-event-destinations-request
                                       :output
                                       get-configuration-set-event-destinations-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations"
                                       :code 200)

(smithy/sdk/operation:define-operation get-contact :shape-name "GetContact"
                                       :input get-contact-request :output
                                       get-contact-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-contact-list :shape-name
                                       "GetContactList" :input
                                       get-contact-list-request :output
                                       get-contact-list-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/contact-lists/{ContactListName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-custom-verification-email-template
                                       :shape-name
                                       "GetCustomVerificationEmailTemplate"
                                       :input
                                       get-custom-verification-email-template-request
                                       :output
                                       get-custom-verification-email-template-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/custom-verification-email-templates/{TemplateName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-dedicated-ip :shape-name
                                       "GetDedicatedIp" :input
                                       get-dedicated-ip-request :output
                                       get-dedicated-ip-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/dedicated-ips/{Ip}" :code 200)

(smithy/sdk/operation:define-operation get-dedicated-ip-pool :shape-name
                                       "GetDedicatedIpPool" :input
                                       get-dedicated-ip-pool-request :output
                                       get-dedicated-ip-pool-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/dedicated-ip-pools/{PoolName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-dedicated-ips :shape-name
                                       "GetDedicatedIps" :input
                                       get-dedicated-ips-request :output
                                       get-dedicated-ips-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/dedicated-ips" :code 200)

(smithy/sdk/operation:define-operation get-deliverability-dashboard-options
                                       :shape-name
                                       "GetDeliverabilityDashboardOptions"
                                       :input
                                       get-deliverability-dashboard-options-request
                                       :output
                                       get-deliverability-dashboard-options-response
                                       :errors
                                       (bad-request-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/deliverability-dashboard"
                                       :code 200)

(smithy/sdk/operation:define-operation get-deliverability-test-report
                                       :shape-name
                                       "GetDeliverabilityTestReport" :input
                                       get-deliverability-test-report-request
                                       :output
                                       get-deliverability-test-report-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/deliverability-dashboard/test-reports/{ReportId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-domain-deliverability-campaign
                                       :shape-name
                                       "GetDomainDeliverabilityCampaign" :input
                                       get-domain-deliverability-campaign-request
                                       :output
                                       get-domain-deliverability-campaign-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/deliverability-dashboard/campaigns/{CampaignId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-domain-statistics-report :shape-name
                                       "GetDomainStatisticsReport" :input
                                       get-domain-statistics-report-request
                                       :output
                                       get-domain-statistics-report-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/deliverability-dashboard/statistics-report/{Domain}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-email-identity :shape-name
                                       "GetEmailIdentity" :input
                                       get-email-identity-request :output
                                       get-email-identity-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/identities/{EmailIdentity}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-email-identity-policies :shape-name
                                       "GetEmailIdentityPolicies" :input
                                       get-email-identity-policies-request
                                       :output
                                       get-email-identity-policies-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/identities/{EmailIdentity}/policies"
                                       :code 200)

(smithy/sdk/operation:define-operation get-email-template :shape-name
                                       "GetEmailTemplate" :input
                                       get-email-template-request :output
                                       get-email-template-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/templates/{TemplateName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-export-job :shape-name
                                       "GetExportJob" :input
                                       get-export-job-request :output
                                       get-export-job-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/export-jobs/{JobId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-import-job :shape-name
                                       "GetImportJob" :input
                                       get-import-job-request :output
                                       get-import-job-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/import-jobs/{JobId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-message-insights :shape-name
                                       "GetMessageInsights" :input
                                       get-message-insights-request :output
                                       get-message-insights-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/insights/{MessageId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-multi-region-endpoint :shape-name
                                       "GetMultiRegionEndpoint" :input
                                       get-multi-region-endpoint-request
                                       :output
                                       get-multi-region-endpoint-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/multi-region-endpoints/{EndpointName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-reputation-entity :shape-name
                                       "GetReputationEntity" :input
                                       get-reputation-entity-request :output
                                       get-reputation-entity-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-suppressed-destination :shape-name
                                       "GetSuppressedDestination" :input
                                       get-suppressed-destination-request
                                       :output
                                       get-suppressed-destination-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/suppression/addresses/{EmailAddress}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-tenant :shape-name "GetTenant"
                                       :input get-tenant-request :output
                                       get-tenant-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/tenants/get" :code 200)

(smithy/sdk/operation:define-operation list-configuration-sets :shape-name
                                       "ListConfigurationSets" :input
                                       list-configuration-sets-request :output
                                       list-configuration-sets-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/configuration-sets" :code 200)

(smithy/sdk/operation:define-operation list-contact-lists :shape-name
                                       "ListContactLists" :input
                                       list-contact-lists-request :output
                                       list-contact-lists-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/contact-lists" :code 200)

(smithy/sdk/operation:define-operation list-contacts :shape-name "ListContacts"
                                       :input list-contacts-request :output
                                       list-contacts-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/contact-lists/{ContactListName}/contacts/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-custom-verification-email-templates
                                       :shape-name
                                       "ListCustomVerificationEmailTemplates"
                                       :input
                                       list-custom-verification-email-templates-request
                                       :output
                                       list-custom-verification-email-templates-response
                                       :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/custom-verification-email-templates"
                                       :code 200)

(smithy/sdk/operation:define-operation list-dedicated-ip-pools :shape-name
                                       "ListDedicatedIpPools" :input
                                       list-dedicated-ip-pools-request :output
                                       list-dedicated-ip-pools-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/dedicated-ip-pools" :code 200)

(smithy/sdk/operation:define-operation list-deliverability-test-reports
                                       :shape-name
                                       "ListDeliverabilityTestReports" :input
                                       list-deliverability-test-reports-request
                                       :output
                                       list-deliverability-test-reports-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/deliverability-dashboard/test-reports"
                                       :code 200)

(smithy/sdk/operation:define-operation list-domain-deliverability-campaigns
                                       :shape-name
                                       "ListDomainDeliverabilityCampaigns"
                                       :input
                                       list-domain-deliverability-campaigns-request
                                       :output
                                       list-domain-deliverability-campaigns-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns"
                                       :code 200)

(smithy/sdk/operation:define-operation list-email-identities :shape-name
                                       "ListEmailIdentities" :input
                                       list-email-identities-request :output
                                       list-email-identities-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/identities" :code 200)

(smithy/sdk/operation:define-operation list-email-templates :shape-name
                                       "ListEmailTemplates" :input
                                       list-email-templates-request :output
                                       list-email-templates-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v2/email/templates"
                                       :code 200)

(smithy/sdk/operation:define-operation list-export-jobs :shape-name
                                       "ListExportJobs" :input
                                       list-export-jobs-request :output
                                       list-export-jobs-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/list-export-jobs" :code 200)

(smithy/sdk/operation:define-operation list-import-jobs :shape-name
                                       "ListImportJobs" :input
                                       list-import-jobs-request :output
                                       list-import-jobs-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/import-jobs/list" :code 200)

(smithy/sdk/operation:define-operation list-multi-region-endpoints :shape-name
                                       "ListMultiRegionEndpoints" :input
                                       list-multi-region-endpoints-request
                                       :output
                                       list-multi-region-endpoints-response
                                       :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/multi-region-endpoints" :code
                                       200)

(smithy/sdk/operation:define-operation list-recommendations :shape-name
                                       "ListRecommendations" :input
                                       list-recommendations-request :output
                                       list-recommendations-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/vdm/recommendations" :code
                                       200)

(smithy/sdk/operation:define-operation list-reputation-entities :shape-name
                                       "ListReputationEntities" :input
                                       list-reputation-entities-request :output
                                       list-reputation-entities-response
                                       :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/reputation/entities" :code
                                       200)

(smithy/sdk/operation:define-operation list-resource-tenants :shape-name
                                       "ListResourceTenants" :input
                                       list-resource-tenants-request :output
                                       list-resource-tenants-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/resources/tenants/list" :code
                                       200)

(smithy/sdk/operation:define-operation list-suppressed-destinations :shape-name
                                       "ListSuppressedDestinations" :input
                                       list-suppressed-destinations-request
                                       :output
                                       list-suppressed-destinations-response
                                       :errors
                                       (bad-request-exception
                                        invalid-next-token-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/email/suppression/addresses" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v2/email/tags"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tenant-resources :shape-name
                                       "ListTenantResources" :input
                                       list-tenant-resources-request :output
                                       list-tenant-resources-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/tenants/resources/list" :code
                                       200)

(smithy/sdk/operation:define-operation list-tenants :shape-name "ListTenants"
                                       :input list-tenants-request :output
                                       list-tenants-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/tenants/list" :code 200)

(smithy/sdk/operation:define-operation
 put-account-dedicated-ip-warmup-attributes :shape-name
 "PutAccountDedicatedIpWarmupAttributes" :input
 put-account-dedicated-ip-warmup-attributes-request :output
 put-account-dedicated-ip-warmup-attributes-response :errors
 (bad-request-exception too-many-requests-exception) :method "PUT" :uri
 "/v2/email/account/dedicated-ips/warmup" :code 200)

(smithy/sdk/operation:define-operation put-account-details :shape-name
                                       "PutAccountDetails" :input
                                       put-account-details-request :output
                                       put-account-details-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/account/details" :code 200)

(smithy/sdk/operation:define-operation put-account-sending-attributes
                                       :shape-name
                                       "PutAccountSendingAttributes" :input
                                       put-account-sending-attributes-request
                                       :output
                                       put-account-sending-attributes-response
                                       :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/account/sending" :code 200)

(smithy/sdk/operation:define-operation put-account-suppression-attributes
                                       :shape-name
                                       "PutAccountSuppressionAttributes" :input
                                       put-account-suppression-attributes-request
                                       :output
                                       put-account-suppression-attributes-response
                                       :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/account/suppression" :code
                                       200)

(smithy/sdk/operation:define-operation put-account-vdm-attributes :shape-name
                                       "PutAccountVdmAttributes" :input
                                       put-account-vdm-attributes-request
                                       :output
                                       put-account-vdm-attributes-response
                                       :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/account/vdm" :code 200)

(smithy/sdk/operation:define-operation put-configuration-set-archiving-options
                                       :shape-name
                                       "PutConfigurationSetArchivingOptions"
                                       :input
                                       put-configuration-set-archiving-options-request
                                       :output
                                       put-configuration-set-archiving-options-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/configuration-sets/{ConfigurationSetName}/archiving-options"
                                       :code 200)

(smithy/sdk/operation:define-operation put-configuration-set-delivery-options
                                       :shape-name
                                       "PutConfigurationSetDeliveryOptions"
                                       :input
                                       put-configuration-set-delivery-options-request
                                       :output
                                       put-configuration-set-delivery-options-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/configuration-sets/{ConfigurationSetName}/delivery-options"
                                       :code 200)

(smithy/sdk/operation:define-operation put-configuration-set-reputation-options
                                       :shape-name
                                       "PutConfigurationSetReputationOptions"
                                       :input
                                       put-configuration-set-reputation-options-request
                                       :output
                                       put-configuration-set-reputation-options-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/configuration-sets/{ConfigurationSetName}/reputation-options"
                                       :code 200)

(smithy/sdk/operation:define-operation put-configuration-set-sending-options
                                       :shape-name
                                       "PutConfigurationSetSendingOptions"
                                       :input
                                       put-configuration-set-sending-options-request
                                       :output
                                       put-configuration-set-sending-options-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/configuration-sets/{ConfigurationSetName}/sending"
                                       :code 200)

(smithy/sdk/operation:define-operation
 put-configuration-set-suppression-options :shape-name
 "PutConfigurationSetSuppressionOptions" :input
 put-configuration-set-suppression-options-request :output
 put-configuration-set-suppression-options-response :errors
 (bad-request-exception not-found-exception too-many-requests-exception)
 :method "PUT" :uri
 "/v2/email/configuration-sets/{ConfigurationSetName}/suppression-options"
 :code 200)

(smithy/sdk/operation:define-operation put-configuration-set-tracking-options
                                       :shape-name
                                       "PutConfigurationSetTrackingOptions"
                                       :input
                                       put-configuration-set-tracking-options-request
                                       :output
                                       put-configuration-set-tracking-options-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/configuration-sets/{ConfigurationSetName}/tracking-options"
                                       :code 200)

(smithy/sdk/operation:define-operation put-configuration-set-vdm-options
                                       :shape-name
                                       "PutConfigurationSetVdmOptions" :input
                                       put-configuration-set-vdm-options-request
                                       :output
                                       put-configuration-set-vdm-options-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/configuration-sets/{ConfigurationSetName}/vdm-options"
                                       :code 200)

(smithy/sdk/operation:define-operation put-dedicated-ip-in-pool :shape-name
                                       "PutDedicatedIpInPool" :input
                                       put-dedicated-ip-in-pool-request :output
                                       put-dedicated-ip-in-pool-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/dedicated-ips/{Ip}/pool"
                                       :code 200)

(smithy/sdk/operation:define-operation put-dedicated-ip-pool-scaling-attributes
                                       :shape-name
                                       "PutDedicatedIpPoolScalingAttributes"
                                       :input
                                       put-dedicated-ip-pool-scaling-attributes-request
                                       :output
                                       put-dedicated-ip-pool-scaling-attributes-response
                                       :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/dedicated-ip-pools/{PoolName}/scaling"
                                       :code 200)

(smithy/sdk/operation:define-operation put-dedicated-ip-warmup-attributes
                                       :shape-name
                                       "PutDedicatedIpWarmupAttributes" :input
                                       put-dedicated-ip-warmup-attributes-request
                                       :output
                                       put-dedicated-ip-warmup-attributes-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/dedicated-ips/{Ip}/warmup"
                                       :code 200)

(smithy/sdk/operation:define-operation put-deliverability-dashboard-option
                                       :shape-name
                                       "PutDeliverabilityDashboardOption"
                                       :input
                                       put-deliverability-dashboard-option-request
                                       :output
                                       put-deliverability-dashboard-option-response
                                       :errors
                                       (already-exists-exception
                                        bad-request-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/deliverability-dashboard"
                                       :code 200)

(smithy/sdk/operation:define-operation
 put-email-identity-configuration-set-attributes :shape-name
 "PutEmailIdentityConfigurationSetAttributes" :input
 put-email-identity-configuration-set-attributes-request :output
 put-email-identity-configuration-set-attributes-response :errors
 (bad-request-exception not-found-exception too-many-requests-exception)
 :method "PUT" :uri "/v2/email/identities/{EmailIdentity}/configuration-set"
 :code 200)

(smithy/sdk/operation:define-operation put-email-identity-dkim-attributes
                                       :shape-name
                                       "PutEmailIdentityDkimAttributes" :input
                                       put-email-identity-dkim-attributes-request
                                       :output
                                       put-email-identity-dkim-attributes-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/identities/{EmailIdentity}/dkim"
                                       :code 200)

(smithy/sdk/operation:define-operation
 put-email-identity-dkim-signing-attributes :shape-name
 "PutEmailIdentityDkimSigningAttributes" :input
 put-email-identity-dkim-signing-attributes-request :output
 put-email-identity-dkim-signing-attributes-response :errors
 (bad-request-exception not-found-exception too-many-requests-exception)
 :method "PUT" :uri "/v1/email/identities/{EmailIdentity}/dkim/signing" :code
 200)

(smithy/sdk/operation:define-operation put-email-identity-feedback-attributes
                                       :shape-name
                                       "PutEmailIdentityFeedbackAttributes"
                                       :input
                                       put-email-identity-feedback-attributes-request
                                       :output
                                       put-email-identity-feedback-attributes-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/identities/{EmailIdentity}/feedback"
                                       :code 200)

(smithy/sdk/operation:define-operation put-email-identity-mail-from-attributes
                                       :shape-name
                                       "PutEmailIdentityMailFromAttributes"
                                       :input
                                       put-email-identity-mail-from-attributes-request
                                       :output
                                       put-email-identity-mail-from-attributes-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/identities/{EmailIdentity}/mail-from"
                                       :code 200)

(smithy/sdk/operation:define-operation put-suppressed-destination :shape-name
                                       "PutSuppressedDestination" :input
                                       put-suppressed-destination-request
                                       :output
                                       put-suppressed-destination-response
                                       :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/suppression/addresses" :code
                                       200)

(smithy/sdk/operation:define-operation send-bulk-email :shape-name
                                       "SendBulkEmail" :input
                                       send-bulk-email-request :output
                                       send-bulk-email-response :errors
                                       (account-suspended-exception
                                        bad-request-exception
                                        limit-exceeded-exception
                                        mail-from-domain-not-verified-exception
                                        message-rejected not-found-exception
                                        sending-paused-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/outbound-bulk-emails" :code
                                       200)

(smithy/sdk/operation:define-operation send-custom-verification-email
                                       :shape-name
                                       "SendCustomVerificationEmail" :input
                                       send-custom-verification-email-request
                                       :output
                                       send-custom-verification-email-response
                                       :errors
                                       (bad-request-exception
                                        limit-exceeded-exception
                                        mail-from-domain-not-verified-exception
                                        message-rejected not-found-exception
                                        sending-paused-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/outbound-custom-verification-emails"
                                       :code 200)

(smithy/sdk/operation:define-operation send-email :shape-name "SendEmail"
                                       :input send-email-request :output
                                       send-email-response :errors
                                       (account-suspended-exception
                                        bad-request-exception
                                        limit-exceeded-exception
                                        mail-from-domain-not-verified-exception
                                        message-rejected not-found-exception
                                        sending-paused-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/outbound-emails" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/v2/email/tags"
                                       :code 200)

(smithy/sdk/operation:define-operation test-render-email-template :shape-name
                                       "TestRenderEmailTemplate" :input
                                       test-render-email-template-request
                                       :output
                                       test-render-email-template-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/email/templates/{TemplateName}/render"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri "/v2/email/tags"
                                       :code 200)

(smithy/sdk/operation:define-operation
 update-configuration-set-event-destination :shape-name
 "UpdateConfigurationSetEventDestination" :input
 update-configuration-set-event-destination-request :output
 update-configuration-set-event-destination-response :errors
 (bad-request-exception not-found-exception too-many-requests-exception)
 :method "PUT" :uri
 "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}"
 :code 200)

(smithy/sdk/operation:define-operation update-contact :shape-name
                                       "UpdateContact" :input
                                       update-contact-request :output
                                       update-contact-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-contact-list :shape-name
                                       "UpdateContactList" :input
                                       update-contact-list-request :output
                                       update-contact-list-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/contact-lists/{ContactListName}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 update-custom-verification-email-template :shape-name
 "UpdateCustomVerificationEmailTemplate" :input
 update-custom-verification-email-template-request :output
 update-custom-verification-email-template-response :errors
 (bad-request-exception not-found-exception too-many-requests-exception)
 :method "PUT" :uri
 "/v2/email/custom-verification-email-templates/{TemplateName}" :code 200)

(smithy/sdk/operation:define-operation update-email-identity-policy :shape-name
                                       "UpdateEmailIdentityPolicy" :input
                                       update-email-identity-policy-request
                                       :output
                                       update-email-identity-policy-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-email-template :shape-name
                                       "UpdateEmailTemplate" :input
                                       update-email-template-request :output
                                       update-email-template-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/templates/{TemplateName}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 update-reputation-entity-customer-managed-status :shape-name
 "UpdateReputationEntityCustomerManagedStatus" :input
 update-reputation-entity-customer-managed-status-request :output
 update-reputation-entity-customer-managed-status-response :errors
 (bad-request-exception conflict-exception too-many-requests-exception) :method
 "PUT" :uri
 "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}/customer-managed-status"
 :code 200)

(smithy/sdk/operation:define-operation update-reputation-entity-policy
                                       :shape-name
                                       "UpdateReputationEntityPolicy" :input
                                       update-reputation-entity-policy-request
                                       :output
                                       update-reputation-entity-policy-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}/policy"
                                       :code 200)
