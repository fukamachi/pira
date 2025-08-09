(uiop/package:define-package #:pira/mailmanager (:use)
                             (:export #:accept-action #:action-failure-policy
                              #:add-header-action #:addon-instance
                              #:addon-instance-arn #:addon-instance-id
                              #:addon-instance-resource #:addon-instances
                              #:addon-name #:addon-subscription
                              #:addon-subscription-arn #:addon-subscription-id
                              #:addon-subscription-resource
                              #:addon-subscriptions #:address #:address-filter
                              #:address-list #:address-list-arn
                              #:address-list-id #:address-list-name
                              #:address-list-resource #:address-lists
                              #:address-page-size #:address-prefix #:analysis
                              #:analyzer-arn #:archive #:archive-action
                              #:archive-arn #:archive-boolean-email-attribute
                              #:archive-boolean-expression
                              #:archive-boolean-operator
                              #:archive-boolean-to-evaluate
                              #:archive-filter-condition
                              #:archive-filter-conditions #:archive-filters
                              #:archive-id #:archive-id-string
                              #:archive-name-string #:archive-resource
                              #:archive-retention #:archive-state
                              #:archive-string-email-attribute
                              #:archive-string-expression
                              #:archive-string-operator
                              #:archive-string-to-evaluate
                              #:archived-message-id #:archives-list
                              #:create-addon-instance
                              #:create-addon-subscription #:create-address-list
                              #:create-address-list-import-job #:create-archive
                              #:create-ingress-point #:create-relay
                              #:create-rule-set #:create-traffic-policy
                              #:delete-addon-instance
                              #:delete-addon-subscription #:delete-address-list
                              #:delete-archive #:delete-ingress-point
                              #:delete-relay #:delete-rule-set
                              #:delete-traffic-policy
                              #:deliver-to-mailbox-action
                              #:deliver-to-qbusiness-action
                              #:deregister-member-from-address-list
                              #:drop-action #:email-address
                              #:email-received-headers-list #:envelope
                              #:error-message
                              #:export-destination-configuration #:export-id
                              #:export-max-results #:export-state
                              #:export-status #:export-summary
                              #:export-summary-list #:get-addon-instance
                              #:get-addon-subscription #:get-address-list
                              #:get-address-list-import-job #:get-archive
                              #:get-archive-export #:get-archive-message
                              #:get-archive-message-content
                              #:get-archive-search #:get-archive-search-results
                              #:get-ingress-point #:get-member-of-address-list
                              #:get-relay #:get-rule-set #:get-traffic-policy
                              #:header-name #:header-value #:iam-role-arn
                              #:id-or-arn #:idempotency-token
                              #:import-data-format #:import-data-type
                              #:import-job #:import-job-status #:import-jobs
                              #:ingress-address-list-arn-list
                              #:ingress-address-list-email-attribute
                              #:ingress-analysis #:ingress-boolean-expression
                              #:ingress-boolean-operator
                              #:ingress-boolean-to-evaluate
                              #:ingress-ip-operator #:ingress-ip-to-evaluate
                              #:ingress-ipv4attribute #:ingress-ipv4expression
                              #:ingress-ipv6attribute #:ingress-ipv6expression
                              #:ingress-ipv6to-evaluate
                              #:ingress-is-in-address-list #:ingress-point
                              #:ingress-point-arecord #:ingress-point-arn
                              #:ingress-point-auth-configuration
                              #:ingress-point-configuration #:ingress-point-id
                              #:ingress-point-name
                              #:ingress-point-password-configuration
                              #:ingress-point-resource #:ingress-point-status
                              #:ingress-point-status-to-update
                              #:ingress-point-type #:ingress-points-list
                              #:ingress-string-email-attribute
                              #:ingress-string-expression
                              #:ingress-string-operator
                              #:ingress-string-to-evaluate
                              #:ingress-tls-attribute
                              #:ingress-tls-protocol-attribute
                              #:ingress-tls-protocol-expression
                              #:ingress-tls-protocol-operator
                              #:ingress-tls-protocol-to-evaluate #:ip-type
                              #:ipv4cidr #:ipv4cidrs #:ipv6cidr #:ipv6cidrs
                              #:job-id #:job-items-count #:job-name
                              #:kms-key-arn #:kms-key-id #:list-addon-instances
                              #:list-addon-subscriptions
                              #:list-address-list-import-jobs
                              #:list-address-lists #:list-archive-exports
                              #:list-archive-searches #:list-archives
                              #:list-ingress-points
                              #:list-members-of-address-list #:list-relays
                              #:list-rule-sets #:list-tags-for-resource
                              #:list-traffic-policies #:mail-from
                              #:mail-manager-svc #:max-message-size-bytes
                              #:message-body #:metadata #:mime-header-attribute
                              #:name-or-arn #:network-configuration
                              #:no-authentication #:page-size
                              #:pagination-token #:policy-condition
                              #:policy-conditions #:policy-statement
                              #:policy-statement-list #:pre-signed-url
                              #:private-network-configuration
                              #:public-network-configuration
                              #:qbusiness-application-id #:qbusiness-index-id
                              #:recipients #:register-member-to-address-list
                              #:relay #:relay-action #:relay-arn
                              #:relay-authentication #:relay-id #:relay-name
                              #:relay-resource #:relay-server-name
                              #:relay-server-port #:relays
                              #:replace-recipient-action #:result-field
                              #:retention-period #:row #:rows-list #:rule
                              #:rule-action #:rule-actions
                              #:rule-address-list-arn-list
                              #:rule-address-list-email-attribute
                              #:rule-boolean-email-attribute
                              #:rule-boolean-expression #:rule-boolean-operator
                              #:rule-boolean-to-evaluate #:rule-condition
                              #:rule-conditions #:rule-dmarc-expression
                              #:rule-dmarc-operator #:rule-dmarc-policy
                              #:rule-dmarc-value-list #:rule-ip-email-attribute
                              #:rule-ip-expression #:rule-ip-operator
                              #:rule-ip-string-value #:rule-ip-to-evaluate
                              #:rule-ip-value-list #:rule-is-in-address-list
                              #:rule-name #:rule-number-email-attribute
                              #:rule-number-expression #:rule-number-operator
                              #:rule-number-to-evaluate #:rule-set
                              #:rule-set-arn #:rule-set-id #:rule-set-name
                              #:rule-set-resource #:rule-sets
                              #:rule-string-email-attribute
                              #:rule-string-expression #:rule-string-list
                              #:rule-string-operator #:rule-string-to-evaluate
                              #:rule-string-value #:rule-verdict
                              #:rule-verdict-attribute
                              #:rule-verdict-expression #:rule-verdict-operator
                              #:rule-verdict-to-evaluate
                              #:rule-verdict-value-list #:rules #:s3action
                              #:s3bucket #:s3export-destination-configuration
                              #:s3location #:s3prefix #:s3presigned-url
                              #:saved-address #:saved-addresses #:search-id
                              #:search-max-results #:search-state
                              #:search-status #:search-summary
                              #:search-summary-list #:secret-arn #:send-action
                              #:sender-ip-address #:smtp-password #:sns-action
                              #:sns-notification-encoding
                              #:sns-notification-payload-type #:sns-topic-arn
                              #:start-address-list-import-job
                              #:start-archive-export #:start-archive-search
                              #:stop-address-list-import-job
                              #:stop-archive-export #:stop-archive-search
                              #:string-list #:string-value #:string-value-list
                              #:tag #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value
                              #:taggable-resource-arn #:traffic-policy
                              #:traffic-policy-arn #:traffic-policy-id
                              #:traffic-policy-list #:traffic-policy-name
                              #:traffic-policy-resource #:untag-resource
                              #:update-archive #:update-ingress-point
                              #:update-relay #:update-rule-set
                              #:update-traffic-policy #:vpc-endpoint-id))
(common-lisp:in-package #:pira/mailmanager)

(smithy/sdk/service:define-service mail-manager-svc :shape-name
                                   "MailManagerSvc" :version "2023-10-17"
                                   :title "MailManager" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "MailManager")
                                      ("cloudFormationName" . "SES")
                                      ("endpointPrefix" . "mail-manager")
                                      ("arnNamespace" . "ses"))
                                     ("aws.auth#sigv4" ("name" . "ses"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-enum accept-action
    common-lisp:nil
  (:allow "ALLOW")
  (:deny "DENY"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum action-failure-policy
    common-lisp:nil
  (:continue "CONTINUE")
  (:drop "DROP"))

(smithy/sdk/shapes:define-structure add-header-action common-lisp:nil
                                    ((header-name :target-type header-name
                                      :required common-lisp:t :member-name
                                      "HeaderName")
                                     (header-value :target-type header-value
                                      :required common-lisp:t :member-name
                                      "HeaderValue"))
                                    (:shape-name "AddHeaderAction"))

(smithy/sdk/shapes:define-structure addon-instance common-lisp:nil
                                    ((addon-instance-id :target-type
                                      addon-instance-id :member-name
                                      "AddonInstanceId")
                                     (addon-subscription-id :target-type
                                      addon-subscription-id :member-name
                                      "AddonSubscriptionId")
                                     (addon-name :target-type addon-name
                                      :member-name "AddonName")
                                     (addon-instance-arn :target-type
                                      addon-instance-arn :member-name
                                      "AddonInstanceArn")
                                     (created-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedTimestamp"))
                                    (:shape-name "AddonInstance"))

(smithy/sdk/shapes:define-type addon-instance-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type addon-instance-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list addon-instances :member addon-instance)

(smithy/sdk/shapes:define-type addon-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure addon-subscription common-lisp:nil
                                    ((addon-subscription-id :target-type
                                      addon-subscription-id :member-name
                                      "AddonSubscriptionId")
                                     (addon-name :target-type addon-name
                                      :member-name "AddonName")
                                     (addon-subscription-arn :target-type
                                      addon-subscription-arn :member-name
                                      "AddonSubscriptionArn")
                                     (created-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedTimestamp"))
                                    (:shape-name "AddonSubscription"))

(smithy/sdk/shapes:define-type addon-subscription-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type addon-subscription-id
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list addon-subscriptions :member addon-subscription)

(smithy/sdk/shapes:define-type address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure address-filter common-lisp:nil
                                    ((address-prefix :target-type
                                      address-prefix :member-name
                                      "AddressPrefix"))
                                    (:shape-name "AddressFilter"))

(smithy/sdk/shapes:define-structure address-list common-lisp:nil
                                    ((address-list-id :target-type
                                      address-list-id :required common-lisp:t
                                      :member-name "AddressListId")
                                     (address-list-arn :target-type
                                      address-list-arn :required common-lisp:t
                                      :member-name "AddressListArn")
                                     (address-list-name :target-type
                                      address-list-name :required common-lisp:t
                                      :member-name "AddressListName")
                                     (created-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTimestamp")
                                     (last-updated-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdatedTimestamp"))
                                    (:shape-name "AddressList"))

(smithy/sdk/shapes:define-type address-list-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type address-list-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type address-list-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list address-lists :member address-list)

(smithy/sdk/shapes:define-type address-page-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type address-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure analysis common-lisp:nil
                                    ((analyzer :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "Analyzer")
                                     (result-field :target-type result-field
                                      :required common-lisp:t :member-name
                                      "ResultField"))
                                    (:shape-name "Analysis"))

(smithy/sdk/shapes:define-type analyzer-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure archive common-lisp:nil
                                    ((archive-id :target-type archive-id-string
                                      :required common-lisp:t :member-name
                                      "ArchiveId")
                                     (archive-name :target-type
                                      archive-name-string :member-name
                                      "ArchiveName")
                                     (archive-state :target-type archive-state
                                      :member-name "ArchiveState")
                                     (last-updated-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastUpdatedTimestamp"))
                                    (:shape-name "Archive"))

(smithy/sdk/shapes:define-structure archive-action common-lisp:nil
                                    ((action-failure-policy :target-type
                                      action-failure-policy :member-name
                                      "ActionFailurePolicy")
                                     (target-archive :target-type name-or-arn
                                      :required common-lisp:t :member-name
                                      "TargetArchive"))
                                    (:shape-name "ArchiveAction"))

(smithy/sdk/shapes:define-type archive-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum archive-boolean-email-attribute
    common-lisp:nil
  (:has-attachments "HAS_ATTACHMENTS"))

(smithy/sdk/shapes:define-structure archive-boolean-expression common-lisp:nil
                                    ((evaluate :target-type
                                      archive-boolean-to-evaluate :required
                                      common-lisp:t :member-name "Evaluate")
                                     (operator :target-type
                                      archive-boolean-operator :required
                                      common-lisp:t :member-name "Operator"))
                                    (:shape-name "ArchiveBooleanExpression"))

(smithy/sdk/shapes:define-enum archive-boolean-operator
    common-lisp:nil
  (:is-true "IS_TRUE")
  (:is-false "IS_FALSE"))

(smithy/sdk/shapes:define-union archive-boolean-to-evaluate common-lisp:nil
                                ((attribute :target-type
                                  archive-boolean-email-attribute :member-name
                                  "Attribute"))
                                (:shape-name "ArchiveBooleanToEvaluate"))

(smithy/sdk/shapes:define-union archive-filter-condition common-lisp:nil
                                ((string-expression :target-type
                                  archive-string-expression :member-name
                                  "StringExpression")
                                 (boolean-expression :target-type
                                  archive-boolean-expression :member-name
                                  "BooleanExpression"))
                                (:shape-name "ArchiveFilterCondition"))

(smithy/sdk/shapes:define-list archive-filter-conditions :member
                               archive-filter-condition)

(smithy/sdk/shapes:define-structure archive-filters common-lisp:nil
                                    ((include :target-type
                                      archive-filter-conditions :member-name
                                      "Include")
                                     (unless :target-type
                                      archive-filter-conditions :member-name
                                      "Unless"))
                                    (:shape-name "ArchiveFilters"))

(smithy/sdk/shapes:define-type archive-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type archive-id-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type archive-name-string
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-union archive-retention common-lisp:nil
                                ((retention-period :target-type
                                  retention-period :member-name
                                  "RetentionPeriod"))
                                (:shape-name "ArchiveRetention"))

(smithy/sdk/shapes:define-enum archive-state
    common-lisp:nil
  (:active "ACTIVE")
  (:pending-deletion "PENDING_DELETION"))

(smithy/sdk/shapes:define-enum archive-string-email-attribute
    common-lisp:nil
  (:to "TO")
  (:from "FROM")
  (:cc "CC")
  (:subject "SUBJECT")
  (:envelope-to "ENVELOPE_TO")
  (:envelope-from "ENVELOPE_FROM"))

(smithy/sdk/shapes:define-structure archive-string-expression common-lisp:nil
                                    ((evaluate :target-type
                                      archive-string-to-evaluate :required
                                      common-lisp:t :member-name "Evaluate")
                                     (operator :target-type
                                      archive-string-operator :required
                                      common-lisp:t :member-name "Operator")
                                     (values :target-type string-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "ArchiveStringExpression"))

(smithy/sdk/shapes:define-enum archive-string-operator
    common-lisp:nil
  (:contains "CONTAINS"))

(smithy/sdk/shapes:define-union archive-string-to-evaluate common-lisp:nil
                                ((attribute :target-type
                                  archive-string-email-attribute :member-name
                                  "Attribute"))
                                (:shape-name "ArchiveStringToEvaluate"))

(smithy/sdk/shapes:define-type archived-message-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list archives-list :member archive)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-addon-instance-request common-lisp:nil
                                ((client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (addon-subscription-id :target-type
                                  addon-subscription-id :required common-lisp:t
                                  :member-name "AddonSubscriptionId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateAddonInstanceRequest"))

(smithy/sdk/shapes:define-output create-addon-instance-response common-lisp:nil
                                 ((addon-instance-id :target-type
                                   addon-instance-id :required common-lisp:t
                                   :member-name "AddonInstanceId"))
                                 (:shape-name "CreateAddonInstanceResponse"))

(smithy/sdk/shapes:define-input create-addon-subscription-request
                                common-lisp:nil
                                ((client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (addon-name :target-type addon-name :required
                                  common-lisp:t :member-name "AddonName")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateAddonSubscriptionRequest"))

(smithy/sdk/shapes:define-output create-addon-subscription-response
                                 common-lisp:nil
                                 ((addon-subscription-id :target-type
                                   addon-subscription-id :required
                                   common-lisp:t :member-name
                                   "AddonSubscriptionId"))
                                 (:shape-name
                                  "CreateAddonSubscriptionResponse"))

(smithy/sdk/shapes:define-input create-address-list-import-job-request
                                common-lisp:nil
                                ((client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (address-list-id :target-type address-list-id
                                  :required common-lisp:t :member-name
                                  "AddressListId")
                                 (name :target-type job-name :required
                                  common-lisp:t :member-name "Name")
                                 (import-data-format :target-type
                                  import-data-format :required common-lisp:t
                                  :member-name "ImportDataFormat"))
                                (:shape-name
                                 "CreateAddressListImportJobRequest"))

(smithy/sdk/shapes:define-output create-address-list-import-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :required
                                   common-lisp:t :member-name "JobId")
                                  (pre-signed-url :target-type pre-signed-url
                                   :required common-lisp:t :member-name
                                   "PreSignedUrl"))
                                 (:shape-name
                                  "CreateAddressListImportJobResponse"))

(smithy/sdk/shapes:define-input create-address-list-request common-lisp:nil
                                ((client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (address-list-name :target-type
                                  address-list-name :required common-lisp:t
                                  :member-name "AddressListName")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateAddressListRequest"))

(smithy/sdk/shapes:define-output create-address-list-response common-lisp:nil
                                 ((address-list-id :target-type address-list-id
                                   :required common-lisp:t :member-name
                                   "AddressListId"))
                                 (:shape-name "CreateAddressListResponse"))

(smithy/sdk/shapes:define-input create-archive-request common-lisp:nil
                                ((client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (archive-name :target-type archive-name-string
                                  :required common-lisp:t :member-name
                                  "ArchiveName")
                                 (retention :target-type archive-retention
                                  :member-name "Retention")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "KmsKeyArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateArchiveRequest"))

(smithy/sdk/shapes:define-output create-archive-response common-lisp:nil
                                 ((archive-id :target-type archive-id-string
                                   :required common-lisp:t :member-name
                                   "ArchiveId"))
                                 (:shape-name "CreateArchiveResponse"))

(smithy/sdk/shapes:define-input create-ingress-point-request common-lisp:nil
                                ((client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (ingress-point-name :target-type
                                  ingress-point-name :required common-lisp:t
                                  :member-name "IngressPointName")
                                 (type :target-type ingress-point-type
                                  :required common-lisp:t :member-name "Type")
                                 (rule-set-id :target-type rule-set-id
                                  :required common-lisp:t :member-name
                                  "RuleSetId")
                                 (traffic-policy-id :target-type
                                  traffic-policy-id :required common-lisp:t
                                  :member-name "TrafficPolicyId")
                                 (ingress-point-configuration :target-type
                                  ingress-point-configuration :member-name
                                  "IngressPointConfiguration")
                                 (network-configuration :target-type
                                  network-configuration :member-name
                                  "NetworkConfiguration")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateIngressPointRequest"))

(smithy/sdk/shapes:define-output create-ingress-point-response common-lisp:nil
                                 ((ingress-point-id :target-type
                                   ingress-point-id :required common-lisp:t
                                   :member-name "IngressPointId"))
                                 (:shape-name "CreateIngressPointResponse"))

(smithy/sdk/shapes:define-input create-relay-request common-lisp:nil
                                ((client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (relay-name :target-type relay-name :required
                                  common-lisp:t :member-name "RelayName")
                                 (server-name :target-type relay-server-name
                                  :required common-lisp:t :member-name
                                  "ServerName")
                                 (server-port :target-type relay-server-port
                                  :required common-lisp:t :member-name
                                  "ServerPort")
                                 (authentication :target-type
                                  relay-authentication :required common-lisp:t
                                  :member-name "Authentication")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateRelayRequest"))

(smithy/sdk/shapes:define-output create-relay-response common-lisp:nil
                                 ((relay-id :target-type relay-id :required
                                   common-lisp:t :member-name "RelayId"))
                                 (:shape-name "CreateRelayResponse"))

(smithy/sdk/shapes:define-input create-rule-set-request common-lisp:nil
                                ((client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (rule-set-name :target-type rule-set-name
                                  :required common-lisp:t :member-name
                                  "RuleSetName")
                                 (rules :target-type rules :required
                                  common-lisp:t :member-name "Rules")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateRuleSetRequest"))

(smithy/sdk/shapes:define-output create-rule-set-response common-lisp:nil
                                 ((rule-set-id :target-type rule-set-id
                                   :required common-lisp:t :member-name
                                   "RuleSetId"))
                                 (:shape-name "CreateRuleSetResponse"))

(smithy/sdk/shapes:define-input create-traffic-policy-request common-lisp:nil
                                ((client-token :target-type idempotency-token
                                  :member-name "ClientToken")
                                 (traffic-policy-name :target-type
                                  traffic-policy-name :required common-lisp:t
                                  :member-name "TrafficPolicyName")
                                 (policy-statements :target-type
                                  policy-statement-list :required common-lisp:t
                                  :member-name "PolicyStatements")
                                 (default-action :target-type accept-action
                                  :required common-lisp:t :member-name
                                  "DefaultAction")
                                 (max-message-size-bytes :target-type
                                  max-message-size-bytes :member-name
                                  "MaxMessageSizeBytes")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateTrafficPolicyRequest"))

(smithy/sdk/shapes:define-output create-traffic-policy-response common-lisp:nil
                                 ((traffic-policy-id :target-type
                                   traffic-policy-id :required common-lisp:t
                                   :member-name "TrafficPolicyId"))
                                 (:shape-name "CreateTrafficPolicyResponse"))

(smithy/sdk/shapes:define-input delete-addon-instance-request common-lisp:nil
                                ((addon-instance-id :target-type
                                  addon-instance-id :required common-lisp:t
                                  :member-name "AddonInstanceId"))
                                (:shape-name "DeleteAddonInstanceRequest"))

(smithy/sdk/shapes:define-output delete-addon-instance-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAddonInstanceResponse"))

(smithy/sdk/shapes:define-input delete-addon-subscription-request
                                common-lisp:nil
                                ((addon-subscription-id :target-type
                                  addon-subscription-id :required common-lisp:t
                                  :member-name "AddonSubscriptionId"))
                                (:shape-name "DeleteAddonSubscriptionRequest"))

(smithy/sdk/shapes:define-output delete-addon-subscription-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteAddonSubscriptionResponse"))

(smithy/sdk/shapes:define-input delete-address-list-request common-lisp:nil
                                ((address-list-id :target-type address-list-id
                                  :required common-lisp:t :member-name
                                  "AddressListId"))
                                (:shape-name "DeleteAddressListRequest"))

(smithy/sdk/shapes:define-output delete-address-list-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAddressListResponse"))

(smithy/sdk/shapes:define-input delete-archive-request common-lisp:nil
                                ((archive-id :target-type archive-id-string
                                  :required common-lisp:t :member-name
                                  "ArchiveId"))
                                (:shape-name "DeleteArchiveRequest"))

(smithy/sdk/shapes:define-output delete-archive-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteArchiveResponse"))

(smithy/sdk/shapes:define-input delete-ingress-point-request common-lisp:nil
                                ((ingress-point-id :target-type
                                  ingress-point-id :required common-lisp:t
                                  :member-name "IngressPointId"))
                                (:shape-name "DeleteIngressPointRequest"))

(smithy/sdk/shapes:define-output delete-ingress-point-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteIngressPointResponse"))

(smithy/sdk/shapes:define-input delete-relay-request common-lisp:nil
                                ((relay-id :target-type relay-id :required
                                  common-lisp:t :member-name "RelayId"))
                                (:shape-name "DeleteRelayRequest"))

(smithy/sdk/shapes:define-output delete-relay-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteRelayResponse"))

(smithy/sdk/shapes:define-input delete-rule-set-request common-lisp:nil
                                ((rule-set-id :target-type rule-set-id
                                  :required common-lisp:t :member-name
                                  "RuleSetId"))
                                (:shape-name "DeleteRuleSetRequest"))

(smithy/sdk/shapes:define-output delete-rule-set-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteRuleSetResponse"))

(smithy/sdk/shapes:define-input delete-traffic-policy-request common-lisp:nil
                                ((traffic-policy-id :target-type
                                  traffic-policy-id :required common-lisp:t
                                  :member-name "TrafficPolicyId"))
                                (:shape-name "DeleteTrafficPolicyRequest"))

(smithy/sdk/shapes:define-output delete-traffic-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTrafficPolicyResponse"))

(smithy/sdk/shapes:define-structure deliver-to-mailbox-action common-lisp:nil
                                    ((action-failure-policy :target-type
                                      action-failure-policy :member-name
                                      "ActionFailurePolicy")
                                     (mailbox-arn :target-type name-or-arn
                                      :required common-lisp:t :member-name
                                      "MailboxArn")
                                     (role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "RoleArn"))
                                    (:shape-name "DeliverToMailboxAction"))

(smithy/sdk/shapes:define-structure deliver-to-qbusiness-action common-lisp:nil
                                    ((action-failure-policy :target-type
                                      action-failure-policy :member-name
                                      "ActionFailurePolicy")
                                     (application-id :target-type
                                      qbusiness-application-id :required
                                      common-lisp:t :member-name
                                      "ApplicationId")
                                     (index-id :target-type qbusiness-index-id
                                      :required common-lisp:t :member-name
                                      "IndexId")
                                     (role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "RoleArn"))
                                    (:shape-name "DeliverToQBusinessAction"))

(smithy/sdk/shapes:define-input deregister-member-from-address-list-request
                                common-lisp:nil
                                ((address-list-id :target-type address-list-id
                                  :required common-lisp:t :member-name
                                  "AddressListId")
                                 (address :target-type address :required
                                  common-lisp:t :member-name "Address"))
                                (:shape-name
                                 "DeregisterMemberFromAddressListRequest"))

(smithy/sdk/shapes:define-output deregister-member-from-address-list-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeregisterMemberFromAddressListResponse"))

(smithy/sdk/shapes:define-structure drop-action common-lisp:nil common-lisp:nil
                                    (:shape-name "DropAction"))

(smithy/sdk/shapes:define-type email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list email-received-headers-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure envelope common-lisp:nil
                                    ((helo :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Helo")
                                     (from :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "From")
                                     (to :target-type string-list :member-name
                                      "To"))
                                    (:shape-name "Envelope"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union export-destination-configuration
                                common-lisp:nil
                                ((s3 :target-type
                                  s3export-destination-configuration
                                  :member-name "S3"))
                                (:shape-name "ExportDestinationConfiguration"))

(smithy/sdk/shapes:define-type export-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type export-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum export-state
    common-lisp:nil
  (:queued "QUEUED")
  (:preprocessing "PREPROCESSING")
  (:processing "PROCESSING")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-structure export-status common-lisp:nil
                                    ((submission-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "SubmissionTimestamp")
                                     (completion-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CompletionTimestamp")
                                     (state :target-type export-state
                                      :member-name "State")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "ExportStatus"))

(smithy/sdk/shapes:define-structure export-summary common-lisp:nil
                                    ((export-id :target-type export-id
                                      :member-name "ExportId")
                                     (status :target-type export-status
                                      :member-name "Status"))
                                    (:shape-name "ExportSummary"))

(smithy/sdk/shapes:define-list export-summary-list :member export-summary)

(smithy/sdk/shapes:define-input get-addon-instance-request common-lisp:nil
                                ((addon-instance-id :target-type
                                  addon-instance-id :required common-lisp:t
                                  :member-name "AddonInstanceId"))
                                (:shape-name "GetAddonInstanceRequest"))

(smithy/sdk/shapes:define-output get-addon-instance-response common-lisp:nil
                                 ((addon-subscription-id :target-type
                                   addon-subscription-id :member-name
                                   "AddonSubscriptionId")
                                  (addon-name :target-type addon-name
                                   :member-name "AddonName")
                                  (addon-instance-arn :target-type
                                   addon-instance-arn :member-name
                                   "AddonInstanceArn")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "GetAddonInstanceResponse"))

(smithy/sdk/shapes:define-input get-addon-subscription-request common-lisp:nil
                                ((addon-subscription-id :target-type
                                  addon-subscription-id :required common-lisp:t
                                  :member-name "AddonSubscriptionId"))
                                (:shape-name "GetAddonSubscriptionRequest"))

(smithy/sdk/shapes:define-output get-addon-subscription-response
                                 common-lisp:nil
                                 ((addon-name :target-type addon-name
                                   :member-name "AddonName")
                                  (addon-subscription-arn :target-type
                                   addon-subscription-arn :member-name
                                   "AddonSubscriptionArn")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp"))
                                 (:shape-name "GetAddonSubscriptionResponse"))

(smithy/sdk/shapes:define-input get-address-list-import-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "GetAddressListImportJobRequest"))

(smithy/sdk/shapes:define-output get-address-list-import-job-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :required
                                   common-lisp:t :member-name "JobId")
                                  (name :target-type job-name :required
                                   common-lisp:t :member-name "Name")
                                  (status :target-type import-job-status
                                   :required common-lisp:t :member-name
                                   "Status")
                                  (pre-signed-url :target-type pre-signed-url
                                   :required common-lisp:t :member-name
                                   "PreSignedUrl")
                                  (imported-items-count :target-type
                                   job-items-count :member-name
                                   "ImportedItemsCount")
                                  (failed-items-count :target-type
                                   job-items-count :member-name
                                   "FailedItemsCount")
                                  (import-data-format :target-type
                                   import-data-format :required common-lisp:t
                                   :member-name "ImportDataFormat")
                                  (address-list-id :target-type address-list-id
                                   :required common-lisp:t :member-name
                                   "AddressListId")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "CreatedTimestamp")
                                  (start-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "StartTimestamp")
                                  (completed-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CompletedTimestamp")
                                  (error :target-type error-message
                                   :member-name "Error"))
                                 (:shape-name
                                  "GetAddressListImportJobResponse"))

(smithy/sdk/shapes:define-input get-address-list-request common-lisp:nil
                                ((address-list-id :target-type address-list-id
                                  :required common-lisp:t :member-name
                                  "AddressListId"))
                                (:shape-name "GetAddressListRequest"))

(smithy/sdk/shapes:define-output get-address-list-response common-lisp:nil
                                 ((address-list-id :target-type address-list-id
                                   :required common-lisp:t :member-name
                                   "AddressListId")
                                  (address-list-arn :target-type
                                   address-list-arn :required common-lisp:t
                                   :member-name "AddressListArn")
                                  (address-list-name :target-type
                                   address-list-name :required common-lisp:t
                                   :member-name "AddressListName")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "CreatedTimestamp")
                                  (last-updated-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "LastUpdatedTimestamp"))
                                 (:shape-name "GetAddressListResponse"))

(smithy/sdk/shapes:define-input get-archive-export-request common-lisp:nil
                                ((export-id :target-type export-id :required
                                  common-lisp:t :member-name "ExportId"))
                                (:shape-name "GetArchiveExportRequest"))

(smithy/sdk/shapes:define-output get-archive-export-response common-lisp:nil
                                 ((archive-id :target-type archive-id
                                   :member-name "ArchiveId")
                                  (filters :target-type archive-filters
                                   :member-name "Filters")
                                  (from-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "FromTimestamp")
                                  (to-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "ToTimestamp")
                                  (max-results :target-type export-max-results
                                   :member-name "MaxResults")
                                  (export-destination-configuration
                                   :target-type
                                   export-destination-configuration
                                   :member-name
                                   "ExportDestinationConfiguration")
                                  (status :target-type export-status
                                   :member-name "Status"))
                                 (:shape-name "GetArchiveExportResponse"))

(smithy/sdk/shapes:define-input get-archive-message-content-request
                                common-lisp:nil
                                ((archived-message-id :target-type
                                  archived-message-id :required common-lisp:t
                                  :member-name "ArchivedMessageId"))
                                (:shape-name "GetArchiveMessageContentRequest"))

(smithy/sdk/shapes:define-output get-archive-message-content-response
                                 common-lisp:nil
                                 ((body :target-type message-body :member-name
                                   "Body"))
                                 (:shape-name
                                  "GetArchiveMessageContentResponse"))

(smithy/sdk/shapes:define-input get-archive-message-request common-lisp:nil
                                ((archived-message-id :target-type
                                  archived-message-id :required common-lisp:t
                                  :member-name "ArchivedMessageId"))
                                (:shape-name "GetArchiveMessageRequest"))

(smithy/sdk/shapes:define-output get-archive-message-response common-lisp:nil
                                 ((message-download-link :target-type
                                   s3presigned-url :member-name
                                   "MessageDownloadLink")
                                  (metadata :target-type metadata :member-name
                                   "Metadata")
                                  (envelope :target-type envelope :member-name
                                   "Envelope"))
                                 (:shape-name "GetArchiveMessageResponse"))

(smithy/sdk/shapes:define-input get-archive-request common-lisp:nil
                                ((archive-id :target-type archive-id-string
                                  :required common-lisp:t :member-name
                                  "ArchiveId"))
                                (:shape-name "GetArchiveRequest"))

(smithy/sdk/shapes:define-output get-archive-response common-lisp:nil
                                 ((archive-id :target-type archive-id-string
                                   :required common-lisp:t :member-name
                                   "ArchiveId")
                                  (archive-name :target-type
                                   archive-name-string :required common-lisp:t
                                   :member-name "ArchiveName")
                                  (archive-arn :target-type archive-arn
                                   :required common-lisp:t :member-name
                                   "ArchiveArn")
                                  (archive-state :target-type archive-state
                                   :required common-lisp:t :member-name
                                   "ArchiveState")
                                  (retention :target-type archive-retention
                                   :required common-lisp:t :member-name
                                   "Retention")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp")
                                  (last-updated-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastUpdatedTimestamp")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "KmsKeyArn"))
                                 (:shape-name "GetArchiveResponse"))

(smithy/sdk/shapes:define-input get-archive-search-request common-lisp:nil
                                ((search-id :target-type search-id :required
                                  common-lisp:t :member-name "SearchId"))
                                (:shape-name "GetArchiveSearchRequest"))

(smithy/sdk/shapes:define-output get-archive-search-response common-lisp:nil
                                 ((archive-id :target-type archive-id
                                   :member-name "ArchiveId")
                                  (filters :target-type archive-filters
                                   :member-name "Filters")
                                  (from-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "FromTimestamp")
                                  (to-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "ToTimestamp")
                                  (max-results :target-type search-max-results
                                   :member-name "MaxResults")
                                  (status :target-type search-status
                                   :member-name "Status"))
                                 (:shape-name "GetArchiveSearchResponse"))

(smithy/sdk/shapes:define-input get-archive-search-results-request
                                common-lisp:nil
                                ((search-id :target-type search-id :required
                                  common-lisp:t :member-name "SearchId"))
                                (:shape-name "GetArchiveSearchResultsRequest"))

(smithy/sdk/shapes:define-output get-archive-search-results-response
                                 common-lisp:nil
                                 ((rows :target-type rows-list :member-name
                                   "Rows"))
                                 (:shape-name
                                  "GetArchiveSearchResultsResponse"))

(smithy/sdk/shapes:define-input get-ingress-point-request common-lisp:nil
                                ((ingress-point-id :target-type
                                  ingress-point-id :required common-lisp:t
                                  :member-name "IngressPointId"))
                                (:shape-name "GetIngressPointRequest"))

(smithy/sdk/shapes:define-output get-ingress-point-response common-lisp:nil
                                 ((ingress-point-id :target-type
                                   ingress-point-id :required common-lisp:t
                                   :member-name "IngressPointId")
                                  (ingress-point-name :target-type
                                   ingress-point-name :required common-lisp:t
                                   :member-name "IngressPointName")
                                  (ingress-point-arn :target-type
                                   ingress-point-arn :member-name
                                   "IngressPointArn")
                                  (status :target-type ingress-point-status
                                   :member-name "Status")
                                  (type :target-type ingress-point-type
                                   :member-name "Type")
                                  (arecord :target-type ingress-point-arecord
                                   :member-name "ARecord")
                                  (rule-set-id :target-type rule-set-id
                                   :member-name "RuleSetId")
                                  (traffic-policy-id :target-type
                                   traffic-policy-id :member-name
                                   "TrafficPolicyId")
                                  (ingress-point-auth-configuration
                                   :target-type
                                   ingress-point-auth-configuration
                                   :member-name
                                   "IngressPointAuthConfiguration")
                                  (network-configuration :target-type
                                   network-configuration :member-name
                                   "NetworkConfiguration")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp")
                                  (last-updated-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastUpdatedTimestamp"))
                                 (:shape-name "GetIngressPointResponse"))

(smithy/sdk/shapes:define-input get-member-of-address-list-request
                                common-lisp:nil
                                ((address-list-id :target-type address-list-id
                                  :required common-lisp:t :member-name
                                  "AddressListId")
                                 (address :target-type address :required
                                  common-lisp:t :member-name "Address"))
                                (:shape-name "GetMemberOfAddressListRequest"))

(smithy/sdk/shapes:define-output get-member-of-address-list-response
                                 common-lisp:nil
                                 ((address :target-type address :required
                                   common-lisp:t :member-name "Address")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "CreatedTimestamp"))
                                 (:shape-name "GetMemberOfAddressListResponse"))

(smithy/sdk/shapes:define-input get-relay-request common-lisp:nil
                                ((relay-id :target-type relay-id :required
                                  common-lisp:t :member-name "RelayId"))
                                (:shape-name "GetRelayRequest"))

(smithy/sdk/shapes:define-output get-relay-response common-lisp:nil
                                 ((relay-id :target-type relay-id :required
                                   common-lisp:t :member-name "RelayId")
                                  (relay-arn :target-type relay-arn
                                   :member-name "RelayArn")
                                  (relay-name :target-type relay-name
                                   :member-name "RelayName")
                                  (server-name :target-type relay-server-name
                                   :member-name "ServerName")
                                  (server-port :target-type relay-server-port
                                   :member-name "ServerPort")
                                  (authentication :target-type
                                   relay-authentication :member-name
                                   "Authentication")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp")
                                  (last-modified-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastModifiedTimestamp"))
                                 (:shape-name "GetRelayResponse"))

(smithy/sdk/shapes:define-input get-rule-set-request common-lisp:nil
                                ((rule-set-id :target-type rule-set-id
                                  :required common-lisp:t :member-name
                                  "RuleSetId"))
                                (:shape-name "GetRuleSetRequest"))

(smithy/sdk/shapes:define-output get-rule-set-response common-lisp:nil
                                 ((rule-set-id :target-type rule-set-id
                                   :required common-lisp:t :member-name
                                   "RuleSetId")
                                  (rule-set-arn :target-type rule-set-arn
                                   :required common-lisp:t :member-name
                                   "RuleSetArn")
                                  (rule-set-name :target-type rule-set-name
                                   :required common-lisp:t :member-name
                                   "RuleSetName")
                                  (created-date :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreatedDate")
                                  (last-modification-date :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "LastModificationDate")
                                  (rules :target-type rules :required
                                   common-lisp:t :member-name "Rules"))
                                 (:shape-name "GetRuleSetResponse"))

(smithy/sdk/shapes:define-input get-traffic-policy-request common-lisp:nil
                                ((traffic-policy-id :target-type
                                  traffic-policy-id :required common-lisp:t
                                  :member-name "TrafficPolicyId"))
                                (:shape-name "GetTrafficPolicyRequest"))

(smithy/sdk/shapes:define-output get-traffic-policy-response common-lisp:nil
                                 ((traffic-policy-name :target-type
                                   traffic-policy-name :required common-lisp:t
                                   :member-name "TrafficPolicyName")
                                  (traffic-policy-id :target-type
                                   traffic-policy-id :required common-lisp:t
                                   :member-name "TrafficPolicyId")
                                  (traffic-policy-arn :target-type
                                   traffic-policy-arn :member-name
                                   "TrafficPolicyArn")
                                  (policy-statements :target-type
                                   policy-statement-list :member-name
                                   "PolicyStatements")
                                  (max-message-size-bytes :target-type
                                   max-message-size-bytes :member-name
                                   "MaxMessageSizeBytes")
                                  (default-action :target-type accept-action
                                   :member-name "DefaultAction")
                                  (created-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedTimestamp")
                                  (last-updated-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastUpdatedTimestamp"))
                                 (:shape-name "GetTrafficPolicyResponse"))

(smithy/sdk/shapes:define-type header-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id-or-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure import-data-format common-lisp:nil
                                    ((import-data-type :target-type
                                      import-data-type :required common-lisp:t
                                      :member-name "ImportDataType"))
                                    (:shape-name "ImportDataFormat"))

(smithy/sdk/shapes:define-enum import-data-type
    common-lisp:nil
  (:csv "CSV")
  (:json "JSON"))

(smithy/sdk/shapes:define-structure import-job common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "JobId")
                                     (name :target-type job-name :required
                                      common-lisp:t :member-name "Name")
                                     (status :target-type import-job-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (pre-signed-url :target-type
                                      pre-signed-url :required common-lisp:t
                                      :member-name "PreSignedUrl")
                                     (imported-items-count :target-type
                                      job-items-count :member-name
                                      "ImportedItemsCount")
                                     (failed-items-count :target-type
                                      job-items-count :member-name
                                      "FailedItemsCount")
                                     (import-data-format :target-type
                                      import-data-format :required
                                      common-lisp:t :member-name
                                      "ImportDataFormat")
                                     (address-list-id :target-type
                                      address-list-id :required common-lisp:t
                                      :member-name "AddressListId")
                                     (created-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTimestamp")
                                     (start-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "StartTimestamp")
                                     (completed-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CompletedTimestamp")
                                     (error :target-type error-message
                                      :member-name "Error"))
                                    (:shape-name "ImportJob"))

(smithy/sdk/shapes:define-enum import-job-status
    common-lisp:nil
  (:created "CREATED")
  (:processing "PROCESSING")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-list import-jobs :member import-job)

(smithy/sdk/shapes:define-list ingress-address-list-arn-list :member
                               address-list-arn)

(smithy/sdk/shapes:define-enum ingress-address-list-email-attribute
    common-lisp:nil
  (:recipient "RECIPIENT"))

(smithy/sdk/shapes:define-structure ingress-analysis common-lisp:nil
                                    ((analyzer :target-type analyzer-arn
                                      :required common-lisp:t :member-name
                                      "Analyzer")
                                     (result-field :target-type result-field
                                      :required common-lisp:t :member-name
                                      "ResultField"))
                                    (:shape-name "IngressAnalysis"))

(smithy/sdk/shapes:define-structure ingress-boolean-expression common-lisp:nil
                                    ((evaluate :target-type
                                      ingress-boolean-to-evaluate :required
                                      common-lisp:t :member-name "Evaluate")
                                     (operator :target-type
                                      ingress-boolean-operator :required
                                      common-lisp:t :member-name "Operator"))
                                    (:shape-name "IngressBooleanExpression"))

(smithy/sdk/shapes:define-enum ingress-boolean-operator
    common-lisp:nil
  (:is-true "IS_TRUE")
  (:is-false "IS_FALSE"))

(smithy/sdk/shapes:define-union ingress-boolean-to-evaluate common-lisp:nil
                                ((analysis :target-type ingress-analysis
                                  :member-name "Analysis")
                                 (is-in-address-list :target-type
                                  ingress-is-in-address-list :member-name
                                  "IsInAddressList"))
                                (:shape-name "IngressBooleanToEvaluate"))

(smithy/sdk/shapes:define-enum ingress-ip-operator
    common-lisp:nil
  (:cidr-matches "CIDR_MATCHES")
  (:not-cidr-matches "NOT_CIDR_MATCHES"))

(smithy/sdk/shapes:define-union ingress-ip-to-evaluate common-lisp:nil
                                ((attribute :target-type ingress-ipv4attribute
                                  :member-name "Attribute"))
                                (:shape-name "IngressIpToEvaluate"))

(smithy/sdk/shapes:define-enum ingress-ipv4attribute
    common-lisp:nil
  (:sender-ip "SENDER_IP"))

(smithy/sdk/shapes:define-structure ingress-ipv4expression common-lisp:nil
                                    ((evaluate :target-type
                                      ingress-ip-to-evaluate :required
                                      common-lisp:t :member-name "Evaluate")
                                     (operator :target-type ingress-ip-operator
                                      :required common-lisp:t :member-name
                                      "Operator")
                                     (values :target-type ipv4cidrs :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "IngressIpv4Expression"))

(smithy/sdk/shapes:define-enum ingress-ipv6attribute
    common-lisp:nil
  (:sender-ipv6 "SENDER_IPV6"))

(smithy/sdk/shapes:define-structure ingress-ipv6expression common-lisp:nil
                                    ((evaluate :target-type
                                      ingress-ipv6to-evaluate :required
                                      common-lisp:t :member-name "Evaluate")
                                     (operator :target-type ingress-ip-operator
                                      :required common-lisp:t :member-name
                                      "Operator")
                                     (values :target-type ipv6cidrs :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "IngressIpv6Expression"))

(smithy/sdk/shapes:define-union ingress-ipv6to-evaluate common-lisp:nil
                                ((attribute :target-type ingress-ipv6attribute
                                  :member-name "Attribute"))
                                (:shape-name "IngressIpv6ToEvaluate"))

(smithy/sdk/shapes:define-structure ingress-is-in-address-list common-lisp:nil
                                    ((attribute :target-type
                                      ingress-address-list-email-attribute
                                      :required common-lisp:t :member-name
                                      "Attribute")
                                     (address-lists :target-type
                                      ingress-address-list-arn-list :required
                                      common-lisp:t :member-name
                                      "AddressLists"))
                                    (:shape-name "IngressIsInAddressList"))

(smithy/sdk/shapes:define-structure ingress-point common-lisp:nil
                                    ((ingress-point-name :target-type
                                      ingress-point-name :required
                                      common-lisp:t :member-name
                                      "IngressPointName")
                                     (ingress-point-id :target-type
                                      ingress-point-id :required common-lisp:t
                                      :member-name "IngressPointId")
                                     (status :target-type ingress-point-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (type :target-type ingress-point-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (arecord :target-type
                                      ingress-point-arecord :member-name
                                      "ARecord"))
                                    (:shape-name "IngressPoint"))

(smithy/sdk/shapes:define-type ingress-point-arecord
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ingress-point-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ingress-point-auth-configuration
                                    common-lisp:nil
                                    ((ingress-point-password-configuration
                                      :target-type
                                      ingress-point-password-configuration
                                      :member-name
                                      "IngressPointPasswordConfiguration")
                                     (secret-arn :target-type secret-arn
                                      :member-name "SecretArn"))
                                    (:shape-name
                                     "IngressPointAuthConfiguration"))

(smithy/sdk/shapes:define-union ingress-point-configuration common-lisp:nil
                                ((smtp-password :target-type smtp-password
                                  :member-name "SmtpPassword")
                                 (secret-arn :target-type secret-arn
                                  :member-name "SecretArn"))
                                (:shape-name "IngressPointConfiguration"))

(smithy/sdk/shapes:define-type ingress-point-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ingress-point-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ingress-point-password-configuration
                                    common-lisp:nil
                                    ((smtp-password-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SmtpPasswordVersion")
                                     (previous-smtp-password-version
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "PreviousSmtpPasswordVersion")
                                     (previous-smtp-password-expiry-timestamp
                                      :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name
                                      "PreviousSmtpPasswordExpiryTimestamp"))
                                    (:shape-name
                                     "IngressPointPasswordConfiguration"))

common-lisp:nil

(smithy/sdk/shapes:define-enum ingress-point-status
    common-lisp:nil
  (:provisioning "PROVISIONING")
  (:deprovisioning "DEPROVISIONING")
  (:updating "UPDATING")
  (:active "ACTIVE")
  (:closed "CLOSED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum ingress-point-status-to-update
    common-lisp:nil
  (:active "ACTIVE")
  (:closed "CLOSED"))

(smithy/sdk/shapes:define-enum ingress-point-type
    common-lisp:nil
  (:open "OPEN")
  (:auth "AUTH"))

(smithy/sdk/shapes:define-list ingress-points-list :member ingress-point)

(smithy/sdk/shapes:define-enum ingress-string-email-attribute
    common-lisp:nil
  (:recipient "RECIPIENT"))

(smithy/sdk/shapes:define-structure ingress-string-expression common-lisp:nil
                                    ((evaluate :target-type
                                      ingress-string-to-evaluate :required
                                      common-lisp:t :member-name "Evaluate")
                                     (operator :target-type
                                      ingress-string-operator :required
                                      common-lisp:t :member-name "Operator")
                                     (values :target-type string-list :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "IngressStringExpression"))

(smithy/sdk/shapes:define-enum ingress-string-operator
    common-lisp:nil
  (:equals "EQUALS")
  (:not-equals "NOT_EQUALS")
  (:starts-with "STARTS_WITH")
  (:ends-with "ENDS_WITH")
  (:contains "CONTAINS"))

(smithy/sdk/shapes:define-union ingress-string-to-evaluate common-lisp:nil
                                ((attribute :target-type
                                  ingress-string-email-attribute :member-name
                                  "Attribute")
                                 (analysis :target-type ingress-analysis
                                  :member-name "Analysis"))
                                (:shape-name "IngressStringToEvaluate"))

(smithy/sdk/shapes:define-enum ingress-tls-attribute
    common-lisp:nil
  (:tls-protocol "TLS_PROTOCOL"))

(smithy/sdk/shapes:define-enum ingress-tls-protocol-attribute
    common-lisp:nil
  (:tls1-2 "TLS1_2")
  (:tls1-3 "TLS1_3"))

(smithy/sdk/shapes:define-structure ingress-tls-protocol-expression
                                    common-lisp:nil
                                    ((evaluate :target-type
                                      ingress-tls-protocol-to-evaluate
                                      :required common-lisp:t :member-name
                                      "Evaluate")
                                     (operator :target-type
                                      ingress-tls-protocol-operator :required
                                      common-lisp:t :member-name "Operator")
                                     (value :target-type
                                      ingress-tls-protocol-attribute :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name
                                     "IngressTlsProtocolExpression"))

(smithy/sdk/shapes:define-enum ingress-tls-protocol-operator
    common-lisp:nil
  (:minimum-tls-version "MINIMUM_TLS_VERSION")
  (:is "IS"))

(smithy/sdk/shapes:define-union ingress-tls-protocol-to-evaluate
                                common-lisp:nil
                                ((attribute :target-type ingress-tls-attribute
                                  :member-name "Attribute"))
                                (:shape-name "IngressTlsProtocolToEvaluate"))

(smithy/sdk/shapes:define-enum ip-type
    common-lisp:nil
  (:ipv4 "IPV4")
  (:dual-stack "DUAL_STACK"))

(smithy/sdk/shapes:define-type ipv4cidr smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ipv4cidrs :member ipv4cidr)

(smithy/sdk/shapes:define-type ipv6cidr smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ipv6cidrs :member ipv6cidr)

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-items-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type job-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-addon-instances-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "ListAddonInstancesRequest"))

(smithy/sdk/shapes:define-output list-addon-instances-response common-lisp:nil
                                 ((addon-instances :target-type addon-instances
                                   :member-name "AddonInstances")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAddonInstancesResponse"))

(smithy/sdk/shapes:define-input list-addon-subscriptions-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "ListAddonSubscriptionsRequest"))

(smithy/sdk/shapes:define-output list-addon-subscriptions-response
                                 common-lisp:nil
                                 ((addon-subscriptions :target-type
                                   addon-subscriptions :member-name
                                   "AddonSubscriptions")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAddonSubscriptionsResponse"))

(smithy/sdk/shapes:define-input list-address-list-import-jobs-request
                                common-lisp:nil
                                ((address-list-id :target-type address-list-id
                                  :required common-lisp:t :member-name
                                  "AddressListId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name
                                 "ListAddressListImportJobsRequest"))

(smithy/sdk/shapes:define-output list-address-list-import-jobs-response
                                 common-lisp:nil
                                 ((import-jobs :target-type import-jobs
                                   :required common-lisp:t :member-name
                                   "ImportJobs")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListAddressListImportJobsResponse"))

(smithy/sdk/shapes:define-input list-address-lists-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "ListAddressListsRequest"))

(smithy/sdk/shapes:define-output list-address-lists-response common-lisp:nil
                                 ((address-lists :target-type address-lists
                                   :required common-lisp:t :member-name
                                   "AddressLists")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAddressListsResponse"))

(smithy/sdk/shapes:define-input list-archive-exports-request common-lisp:nil
                                ((archive-id :target-type archive-id :required
                                  common-lisp:t :member-name "ArchiveId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "ListArchiveExportsRequest"))

(smithy/sdk/shapes:define-output list-archive-exports-response common-lisp:nil
                                 ((exports :target-type export-summary-list
                                   :member-name "Exports")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListArchiveExportsResponse"))

(smithy/sdk/shapes:define-input list-archive-searches-request common-lisp:nil
                                ((archive-id :target-type archive-id :required
                                  common-lisp:t :member-name "ArchiveId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "ListArchiveSearchesRequest"))

(smithy/sdk/shapes:define-output list-archive-searches-response common-lisp:nil
                                 ((searches :target-type search-summary-list
                                   :member-name "Searches")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListArchiveSearchesResponse"))

(smithy/sdk/shapes:define-input list-archives-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "ListArchivesRequest"))

(smithy/sdk/shapes:define-output list-archives-response common-lisp:nil
                                 ((archives :target-type archives-list
                                   :required common-lisp:t :member-name
                                   "Archives")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListArchivesResponse"))

(smithy/sdk/shapes:define-input list-ingress-points-request common-lisp:nil
                                ((page-size :target-type page-size :member-name
                                  "PageSize")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "ListIngressPointsRequest"))

(smithy/sdk/shapes:define-output list-ingress-points-response common-lisp:nil
                                 ((ingress-points :target-type
                                   ingress-points-list :member-name
                                   "IngressPoints")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListIngressPointsResponse"))

(smithy/sdk/shapes:define-input list-members-of-address-list-request
                                common-lisp:nil
                                ((address-list-id :target-type address-list-id
                                  :required common-lisp:t :member-name
                                  "AddressListId")
                                 (filter :target-type address-filter
                                  :member-name "Filter")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (page-size :target-type address-page-size
                                  :member-name "PageSize"))
                                (:shape-name "ListMembersOfAddressListRequest"))

(smithy/sdk/shapes:define-output list-members-of-address-list-response
                                 common-lisp:nil
                                 ((addresses :target-type saved-addresses
                                   :required common-lisp:t :member-name
                                   "Addresses")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListMembersOfAddressListResponse"))

(smithy/sdk/shapes:define-input list-relays-request common-lisp:nil
                                ((page-size :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "PageSize")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "ListRelaysRequest"))

(smithy/sdk/shapes:define-output list-relays-response common-lisp:nil
                                 ((relays :target-type relays :required
                                   common-lisp:t :member-name "Relays")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRelaysResponse"))

(smithy/sdk/shapes:define-input list-rule-sets-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "ListRuleSetsRequest"))

(smithy/sdk/shapes:define-output list-rule-sets-response common-lisp:nil
                                 ((rule-sets :target-type rule-sets :required
                                   common-lisp:t :member-name "RuleSets")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRuleSetsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :required
                                   common-lisp:t :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-traffic-policies-request common-lisp:nil
                                ((page-size :target-type page-size :member-name
                                  "PageSize")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTrafficPoliciesRequest"))

(smithy/sdk/shapes:define-output list-traffic-policies-response common-lisp:nil
                                 ((traffic-policies :target-type
                                   traffic-policy-list :member-name
                                   "TrafficPolicies")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTrafficPoliciesResponse"))

(smithy/sdk/shapes:define-enum mail-from
    common-lisp:nil
  (:replace "REPLACE")
  (:preserve "PRESERVE"))

(smithy/sdk/shapes:define-type max-message-size-bytes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure message-body common-lisp:nil
                                    ((text :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Text")
                                     (html :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Html")
                                     (message-malformed :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "MessageMalformed"))
                                    (:shape-name "MessageBody"))

(smithy/sdk/shapes:define-structure metadata common-lisp:nil
                                    ((timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "Timestamp")
                                     (ingress-point-id :target-type
                                      ingress-point-id :member-name
                                      "IngressPointId")
                                     (traffic-policy-id :target-type
                                      traffic-policy-id :member-name
                                      "TrafficPolicyId")
                                     (rule-set-id :target-type rule-set-id
                                      :member-name "RuleSetId")
                                     (sender-hostname :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SenderHostname")
                                     (sender-ip-address :target-type
                                      sender-ip-address :member-name
                                      "SenderIpAddress")
                                     (tls-cipher-suite :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "TlsCipherSuite")
                                     (tls-protocol :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "TlsProtocol")
                                     (sending-method :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SendingMethod")
                                     (source-identity :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SourceIdentity")
                                     (sending-pool :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SendingPool")
                                     (configuration-set :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ConfigurationSet")
                                     (source-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SourceArn"))
                                    (:shape-name "Metadata"))

(smithy/sdk/shapes:define-type mime-header-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type name-or-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union network-configuration common-lisp:nil
                                ((public-network-configuration :target-type
                                  public-network-configuration :member-name
                                  "PublicNetworkConfiguration")
                                 (private-network-configuration :target-type
                                  private-network-configuration :member-name
                                  "PrivateNetworkConfiguration"))
                                (:shape-name "NetworkConfiguration"))

(smithy/sdk/shapes:define-structure no-authentication common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "NoAuthentication"))

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union policy-condition common-lisp:nil
                                ((string-expression :target-type
                                  ingress-string-expression :member-name
                                  "StringExpression")
                                 (ip-expression :target-type
                                  ingress-ipv4expression :member-name
                                  "IpExpression")
                                 (ipv6expression :target-type
                                  ingress-ipv6expression :member-name
                                  "Ipv6Expression")
                                 (tls-expression :target-type
                                  ingress-tls-protocol-expression :member-name
                                  "TlsExpression")
                                 (boolean-expression :target-type
                                  ingress-boolean-expression :member-name
                                  "BooleanExpression"))
                                (:shape-name "PolicyCondition"))

(smithy/sdk/shapes:define-list policy-conditions :member policy-condition)

(smithy/sdk/shapes:define-structure policy-statement common-lisp:nil
                                    ((conditions :target-type policy-conditions
                                      :required common-lisp:t :member-name
                                      "Conditions")
                                     (action :target-type accept-action
                                      :required common-lisp:t :member-name
                                      "Action"))
                                    (:shape-name "PolicyStatement"))

(smithy/sdk/shapes:define-list policy-statement-list :member policy-statement)

(smithy/sdk/shapes:define-type pre-signed-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure private-network-configuration
                                    common-lisp:nil
                                    ((vpc-endpoint-id :target-type
                                      vpc-endpoint-id :required common-lisp:t
                                      :member-name "VpcEndpointId"))
                                    (:shape-name "PrivateNetworkConfiguration"))

(smithy/sdk/shapes:define-structure public-network-configuration
                                    common-lisp:nil
                                    ((ip-type :target-type ip-type :required
                                      common-lisp:t :member-name "IpType"))
                                    (:shape-name "PublicNetworkConfiguration"))

(smithy/sdk/shapes:define-type qbusiness-application-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type qbusiness-index-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list recipients :member email-address)

(smithy/sdk/shapes:define-input register-member-to-address-list-request
                                common-lisp:nil
                                ((address-list-id :target-type address-list-id
                                  :required common-lisp:t :member-name
                                  "AddressListId")
                                 (address :target-type address :required
                                  common-lisp:t :member-name "Address"))
                                (:shape-name
                                 "RegisterMemberToAddressListRequest"))

(smithy/sdk/shapes:define-output register-member-to-address-list-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RegisterMemberToAddressListResponse"))

(smithy/sdk/shapes:define-structure relay common-lisp:nil
                                    ((relay-id :target-type relay-id
                                      :member-name "RelayId")
                                     (relay-name :target-type relay-name
                                      :member-name "RelayName")
                                     (last-modified-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastModifiedTimestamp"))
                                    (:shape-name "Relay"))

(smithy/sdk/shapes:define-structure relay-action common-lisp:nil
                                    ((action-failure-policy :target-type
                                      action-failure-policy :member-name
                                      "ActionFailurePolicy")
                                     (relay :target-type id-or-arn :required
                                      common-lisp:t :member-name "Relay")
                                     (mail-from :target-type mail-from
                                      :member-name "MailFrom"))
                                    (:shape-name "RelayAction"))

(smithy/sdk/shapes:define-type relay-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union relay-authentication common-lisp:nil
                                ((secret-arn :target-type secret-arn
                                  :member-name "SecretArn")
                                 (no-authentication :target-type
                                  no-authentication :member-name
                                  "NoAuthentication"))
                                (:shape-name "RelayAuthentication"))

(smithy/sdk/shapes:define-type relay-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type relay-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type relay-server-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type relay-server-port
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list relays :member relay)

(smithy/sdk/shapes:define-structure replace-recipient-action common-lisp:nil
                                    ((replace-with :target-type recipients
                                      :member-name "ReplaceWith"))
                                    (:shape-name "ReplaceRecipientAction"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type result-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum retention-period
    common-lisp:nil
  (:three-months "THREE_MONTHS")
  (:six-months "SIX_MONTHS")
  (:nine-months "NINE_MONTHS")
  (:one-year "ONE_YEAR")
  (:eighteen-months "EIGHTEEN_MONTHS")
  (:two-years "TWO_YEARS")
  (:thirty-months "THIRTY_MONTHS")
  (:three-years "THREE_YEARS")
  (:four-years "FOUR_YEARS")
  (:five-years "FIVE_YEARS")
  (:six-years "SIX_YEARS")
  (:seven-years "SEVEN_YEARS")
  (:eight-years "EIGHT_YEARS")
  (:nine-years "NINE_YEARS")
  (:ten-years "TEN_YEARS")
  (:permanent "PERMANENT"))

(smithy/sdk/shapes:define-structure row common-lisp:nil
                                    ((archived-message-id :target-type
                                      archived-message-id :member-name
                                      "ArchivedMessageId")
                                     (received-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "ReceivedTimestamp")
                                     (date :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Date")
                                     (to :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "To")
                                     (from :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "From")
                                     (cc :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Cc")
                                     (subject :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Subject")
                                     (message-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "MessageId")
                                     (has-attachments :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "HasAttachments")
                                     (received-headers :target-type
                                      email-received-headers-list :member-name
                                      "ReceivedHeaders")
                                     (in-reply-to :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "InReplyTo")
                                     (xmailer :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "XMailer")
                                     (xoriginal-mailer :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "XOriginalMailer")
                                     (xpriority :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "XPriority")
                                     (ingress-point-id :target-type
                                      ingress-point-id :member-name
                                      "IngressPointId")
                                     (sender-hostname :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SenderHostname")
                                     (sender-ip-address :target-type
                                      sender-ip-address :member-name
                                      "SenderIpAddress")
                                     (envelope :target-type envelope
                                      :member-name "Envelope")
                                     (source-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SourceArn"))
                                    (:shape-name "Row"))

(smithy/sdk/shapes:define-list rows-list :member row)

(smithy/sdk/shapes:define-structure rule common-lisp:nil
                                    ((name :target-type rule-name :member-name
                                      "Name")
                                     (conditions :target-type rule-conditions
                                      :member-name "Conditions")
                                     (unless :target-type rule-conditions
                                      :member-name "Unless")
                                     (actions :target-type rule-actions
                                      :required common-lisp:t :member-name
                                      "Actions"))
                                    (:shape-name "Rule"))

(smithy/sdk/shapes:define-union rule-action common-lisp:nil
                                ((drop :target-type drop-action :member-name
                                  "Drop")
                                 (relay :target-type relay-action :member-name
                                  "Relay")
                                 (archive :target-type archive-action
                                  :member-name "Archive")
                                 (write-to-s3 :target-type s3action
                                  :member-name "WriteToS3")
                                 (send :target-type send-action :member-name
                                  "Send")
                                 (add-header :target-type add-header-action
                                  :member-name "AddHeader")
                                 (replace-recipient :target-type
                                  replace-recipient-action :member-name
                                  "ReplaceRecipient")
                                 (deliver-to-mailbox :target-type
                                  deliver-to-mailbox-action :member-name
                                  "DeliverToMailbox")
                                 (deliver-to-qbusiness :target-type
                                  deliver-to-qbusiness-action :member-name
                                  "DeliverToQBusiness")
                                 (publish-to-sns :target-type sns-action
                                  :member-name "PublishToSns"))
                                (:shape-name "RuleAction"))

(smithy/sdk/shapes:define-list rule-actions :member rule-action)

(smithy/sdk/shapes:define-list rule-address-list-arn-list :member
                               address-list-arn)

(smithy/sdk/shapes:define-enum rule-address-list-email-attribute
    common-lisp:nil
  (:recipient "RECIPIENT")
  (:mail-from "MAIL_FROM")
  (:sender "SENDER")
  (:from "FROM")
  (:to "TO")
  (:cc "CC"))

(smithy/sdk/shapes:define-enum rule-boolean-email-attribute
    common-lisp:nil
  (:read-receipt-requested "READ_RECEIPT_REQUESTED")
  (:tls "TLS")
  (:tls-wrapped "TLS_WRAPPED"))

(smithy/sdk/shapes:define-structure rule-boolean-expression common-lisp:nil
                                    ((evaluate :target-type
                                      rule-boolean-to-evaluate :required
                                      common-lisp:t :member-name "Evaluate")
                                     (operator :target-type
                                      rule-boolean-operator :required
                                      common-lisp:t :member-name "Operator"))
                                    (:shape-name "RuleBooleanExpression"))

(smithy/sdk/shapes:define-enum rule-boolean-operator
    common-lisp:nil
  (:is-true "IS_TRUE")
  (:is-false "IS_FALSE"))

(smithy/sdk/shapes:define-union rule-boolean-to-evaluate common-lisp:nil
                                ((attribute :target-type
                                  rule-boolean-email-attribute :member-name
                                  "Attribute")
                                 (analysis :target-type analysis :member-name
                                  "Analysis")
                                 (is-in-address-list :target-type
                                  rule-is-in-address-list :member-name
                                  "IsInAddressList"))
                                (:shape-name "RuleBooleanToEvaluate"))

(smithy/sdk/shapes:define-union rule-condition common-lisp:nil
                                ((boolean-expression :target-type
                                  rule-boolean-expression :member-name
                                  "BooleanExpression")
                                 (string-expression :target-type
                                  rule-string-expression :member-name
                                  "StringExpression")
                                 (number-expression :target-type
                                  rule-number-expression :member-name
                                  "NumberExpression")
                                 (ip-expression :target-type rule-ip-expression
                                  :member-name "IpExpression")
                                 (verdict-expression :target-type
                                  rule-verdict-expression :member-name
                                  "VerdictExpression")
                                 (dmarc-expression :target-type
                                  rule-dmarc-expression :member-name
                                  "DmarcExpression"))
                                (:shape-name "RuleCondition"))

(smithy/sdk/shapes:define-list rule-conditions :member rule-condition)

(smithy/sdk/shapes:define-structure rule-dmarc-expression common-lisp:nil
                                    ((operator :target-type rule-dmarc-operator
                                      :required common-lisp:t :member-name
                                      "Operator")
                                     (values :target-type rule-dmarc-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "RuleDmarcExpression"))

(smithy/sdk/shapes:define-enum rule-dmarc-operator
    common-lisp:nil
  (:equals "EQUALS")
  (:not-equals "NOT_EQUALS"))

(smithy/sdk/shapes:define-enum rule-dmarc-policy
    common-lisp:nil
  (:none "NONE")
  (:quarantine "QUARANTINE")
  (:reject "REJECT"))

(smithy/sdk/shapes:define-list rule-dmarc-value-list :member rule-dmarc-policy)

(smithy/sdk/shapes:define-enum rule-ip-email-attribute
    common-lisp:nil
  (:source-ip "SOURCE_IP"))

(smithy/sdk/shapes:define-structure rule-ip-expression common-lisp:nil
                                    ((evaluate :target-type rule-ip-to-evaluate
                                      :required common-lisp:t :member-name
                                      "Evaluate")
                                     (operator :target-type rule-ip-operator
                                      :required common-lisp:t :member-name
                                      "Operator")
                                     (values :target-type rule-ip-value-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "RuleIpExpression"))

(smithy/sdk/shapes:define-enum rule-ip-operator
    common-lisp:nil
  (:cidr-matches "CIDR_MATCHES")
  (:not-cidr-matches "NOT_CIDR_MATCHES"))

(smithy/sdk/shapes:define-type rule-ip-string-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union rule-ip-to-evaluate common-lisp:nil
                                ((attribute :target-type
                                  rule-ip-email-attribute :member-name
                                  "Attribute"))
                                (:shape-name "RuleIpToEvaluate"))

(smithy/sdk/shapes:define-list rule-ip-value-list :member rule-ip-string-value)

(smithy/sdk/shapes:define-structure rule-is-in-address-list common-lisp:nil
                                    ((attribute :target-type
                                      rule-address-list-email-attribute
                                      :required common-lisp:t :member-name
                                      "Attribute")
                                     (address-lists :target-type
                                      rule-address-list-arn-list :required
                                      common-lisp:t :member-name
                                      "AddressLists"))
                                    (:shape-name "RuleIsInAddressList"))

(smithy/sdk/shapes:define-type rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum rule-number-email-attribute
    common-lisp:nil
  (:message-size "MESSAGE_SIZE"))

(smithy/sdk/shapes:define-structure rule-number-expression common-lisp:nil
                                    ((evaluate :target-type
                                      rule-number-to-evaluate :required
                                      common-lisp:t :member-name "Evaluate")
                                     (operator :target-type
                                      rule-number-operator :required
                                      common-lisp:t :member-name "Operator")
                                     (value :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "RuleNumberExpression"))

(smithy/sdk/shapes:define-enum rule-number-operator
    common-lisp:nil
  (:equals "EQUALS")
  (:not-equals "NOT_EQUALS")
  (:less-than "LESS_THAN")
  (:greater-than "GREATER_THAN")
  (:less-than-or-equal "LESS_THAN_OR_EQUAL")
  (:greater-than-or-equal "GREATER_THAN_OR_EQUAL"))

(smithy/sdk/shapes:define-union rule-number-to-evaluate common-lisp:nil
                                ((attribute :target-type
                                  rule-number-email-attribute :member-name
                                  "Attribute"))
                                (:shape-name "RuleNumberToEvaluate"))

(smithy/sdk/shapes:define-structure rule-set common-lisp:nil
                                    ((rule-set-id :target-type rule-set-id
                                      :member-name "RuleSetId")
                                     (rule-set-name :target-type rule-set-name
                                      :member-name "RuleSetName")
                                     (last-modification-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "LastModificationDate"))
                                    (:shape-name "RuleSet"))

(smithy/sdk/shapes:define-type rule-set-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-set-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-set-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list rule-sets :member rule-set)

(smithy/sdk/shapes:define-enum rule-string-email-attribute
    common-lisp:nil
  (:mail-from "MAIL_FROM")
  (:helo "HELO")
  (:recipient "RECIPIENT")
  (:sender "SENDER")
  (:from "FROM")
  (:subject "SUBJECT")
  (:to "TO")
  (:cc "CC"))

(smithy/sdk/shapes:define-structure rule-string-expression common-lisp:nil
                                    ((evaluate :target-type
                                      rule-string-to-evaluate :required
                                      common-lisp:t :member-name "Evaluate")
                                     (operator :target-type
                                      rule-string-operator :required
                                      common-lisp:t :member-name "Operator")
                                     (values :target-type rule-string-list
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "RuleStringExpression"))

(smithy/sdk/shapes:define-list rule-string-list :member rule-string-value)

(smithy/sdk/shapes:define-enum rule-string-operator
    common-lisp:nil
  (:equals "EQUALS")
  (:not-equals "NOT_EQUALS")
  (:starts-with "STARTS_WITH")
  (:ends-with "ENDS_WITH")
  (:contains "CONTAINS"))

(smithy/sdk/shapes:define-union rule-string-to-evaluate common-lisp:nil
                                ((attribute :target-type
                                  rule-string-email-attribute :member-name
                                  "Attribute")
                                 (mime-header-attribute :target-type
                                  mime-header-attribute :member-name
                                  "MimeHeaderAttribute")
                                 (analysis :target-type analysis :member-name
                                  "Analysis"))
                                (:shape-name "RuleStringToEvaluate"))

(smithy/sdk/shapes:define-type rule-string-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum rule-verdict
    common-lisp:nil
  (:pass "PASS")
  (:fail "FAIL")
  (:gray "GRAY")
  (:processing-failed "PROCESSING_FAILED"))

(smithy/sdk/shapes:define-enum rule-verdict-attribute
    common-lisp:nil
  (:spf "SPF")
  (:dkim "DKIM"))

(smithy/sdk/shapes:define-structure rule-verdict-expression common-lisp:nil
                                    ((evaluate :target-type
                                      rule-verdict-to-evaluate :required
                                      common-lisp:t :member-name "Evaluate")
                                     (operator :target-type
                                      rule-verdict-operator :required
                                      common-lisp:t :member-name "Operator")
                                     (values :target-type
                                      rule-verdict-value-list :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "RuleVerdictExpression"))

(smithy/sdk/shapes:define-enum rule-verdict-operator
    common-lisp:nil
  (:equals "EQUALS")
  (:not-equals "NOT_EQUALS"))

(smithy/sdk/shapes:define-union rule-verdict-to-evaluate common-lisp:nil
                                ((attribute :target-type rule-verdict-attribute
                                  :member-name "Attribute")
                                 (analysis :target-type analysis :member-name
                                  "Analysis"))
                                (:shape-name "RuleVerdictToEvaluate"))

(smithy/sdk/shapes:define-list rule-verdict-value-list :member rule-verdict)

(smithy/sdk/shapes:define-list rules :member rule)

(smithy/sdk/shapes:define-structure s3action common-lisp:nil
                                    ((action-failure-policy :target-type
                                      action-failure-policy :member-name
                                      "ActionFailurePolicy")
                                     (role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "RoleArn")
                                     (s3bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "S3Bucket")
                                     (s3prefix :target-type s3prefix
                                      :member-name "S3Prefix")
                                     (s3sse-kms-key-id :target-type kms-key-id
                                      :member-name "S3SseKmsKeyId"))
                                    (:shape-name "S3Action"))

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3export-destination-configuration
                                    common-lisp:nil
                                    ((s3location :target-type s3location
                                      :member-name "S3Location"))
                                    (:shape-name
                                     "S3ExportDestinationConfiguration"))

(smithy/sdk/shapes:define-type s3location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3presigned-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure saved-address common-lisp:nil
                                    ((address :target-type address :required
                                      common-lisp:t :member-name "Address")
                                     (created-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTimestamp"))
                                    (:shape-name "SavedAddress"))

(smithy/sdk/shapes:define-list saved-addresses :member saved-address)

(smithy/sdk/shapes:define-type search-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type search-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum search-state
    common-lisp:nil
  (:queued "QUEUED")
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-structure search-status common-lisp:nil
                                    ((submission-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "SubmissionTimestamp")
                                     (completion-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CompletionTimestamp")
                                     (state :target-type search-state
                                      :member-name "State")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "SearchStatus"))

(smithy/sdk/shapes:define-structure search-summary common-lisp:nil
                                    ((search-id :target-type search-id
                                      :member-name "SearchId")
                                     (status :target-type search-status
                                      :member-name "Status"))
                                    (:shape-name "SearchSummary"))

(smithy/sdk/shapes:define-list search-summary-list :member search-summary)

(smithy/sdk/shapes:define-type secret-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure send-action common-lisp:nil
                                    ((action-failure-policy :target-type
                                      action-failure-policy :member-name
                                      "ActionFailurePolicy")
                                     (role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "RoleArn"))
                                    (:shape-name "SendAction"))

(smithy/sdk/shapes:define-type sender-ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type smtp-password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sns-action common-lisp:nil
                                    ((action-failure-policy :target-type
                                      action-failure-policy :member-name
                                      "ActionFailurePolicy")
                                     (topic-arn :target-type sns-topic-arn
                                      :required common-lisp:t :member-name
                                      "TopicArn")
                                     (role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "RoleArn")
                                     (encoding :target-type
                                      sns-notification-encoding :member-name
                                      "Encoding")
                                     (payload-type :target-type
                                      sns-notification-payload-type
                                      :member-name "PayloadType"))
                                    (:shape-name "SnsAction"))

(smithy/sdk/shapes:define-enum sns-notification-encoding
    common-lisp:nil
  (:utf-8 "UTF-8")
  (:base64 "BASE64"))

(smithy/sdk/shapes:define-enum sns-notification-payload-type
    common-lisp:nil
  (:headers "HEADERS")
  (:content "CONTENT"))

(smithy/sdk/shapes:define-type sns-topic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-address-list-import-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "StartAddressListImportJobRequest"))

(smithy/sdk/shapes:define-output start-address-list-import-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StartAddressListImportJobResponse"))

(smithy/sdk/shapes:define-input start-archive-export-request common-lisp:nil
                                ((archive-id :target-type archive-id :required
                                  common-lisp:t :member-name "ArchiveId")
                                 (filters :target-type archive-filters
                                  :member-name "Filters")
                                 (from-timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "FromTimestamp")
                                 (to-timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "ToTimestamp")
                                 (max-results :target-type export-max-results
                                  :member-name "MaxResults")
                                 (export-destination-configuration :target-type
                                  export-destination-configuration :required
                                  common-lisp:t :member-name
                                  "ExportDestinationConfiguration")
                                 (include-metadata :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "IncludeMetadata"))
                                (:shape-name "StartArchiveExportRequest"))

(smithy/sdk/shapes:define-output start-archive-export-response common-lisp:nil
                                 ((export-id :target-type export-id
                                   :member-name "ExportId"))
                                 (:shape-name "StartArchiveExportResponse"))

(smithy/sdk/shapes:define-input start-archive-search-request common-lisp:nil
                                ((archive-id :target-type archive-id :required
                                  common-lisp:t :member-name "ArchiveId")
                                 (filters :target-type archive-filters
                                  :member-name "Filters")
                                 (from-timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "FromTimestamp")
                                 (to-timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "ToTimestamp")
                                 (max-results :target-type search-max-results
                                  :required common-lisp:t :member-name
                                  "MaxResults"))
                                (:shape-name "StartArchiveSearchRequest"))

(smithy/sdk/shapes:define-output start-archive-search-response common-lisp:nil
                                 ((search-id :target-type search-id
                                   :member-name "SearchId"))
                                 (:shape-name "StartArchiveSearchResponse"))

(smithy/sdk/shapes:define-input stop-address-list-import-job-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "StopAddressListImportJobRequest"))

(smithy/sdk/shapes:define-output stop-address-list-import-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "StopAddressListImportJobResponse"))

(smithy/sdk/shapes:define-input stop-archive-export-request common-lisp:nil
                                ((export-id :target-type export-id :required
                                  common-lisp:t :member-name "ExportId"))
                                (:shape-name "StopArchiveExportRequest"))

(smithy/sdk/shapes:define-output stop-archive-export-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopArchiveExportResponse"))

(smithy/sdk/shapes:define-input stop-archive-search-request common-lisp:nil
                                ((search-id :target-type search-id :required
                                  common-lisp:t :member-name "SearchId"))
                                (:shape-name "StopArchiveSearchRequest"))

(smithy/sdk/shapes:define-output stop-archive-search-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopArchiveSearchResponse"))

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-value-list :member string-value)

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
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type taggable-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure traffic-policy common-lisp:nil
                                    ((traffic-policy-name :target-type
                                      traffic-policy-name :required
                                      common-lisp:t :member-name
                                      "TrafficPolicyName")
                                     (traffic-policy-id :target-type
                                      traffic-policy-id :required common-lisp:t
                                      :member-name "TrafficPolicyId")
                                     (default-action :target-type accept-action
                                      :required common-lisp:t :member-name
                                      "DefaultAction"))
                                    (:shape-name "TrafficPolicy"))

(smithy/sdk/shapes:define-type traffic-policy-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type traffic-policy-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list traffic-policy-list :member traffic-policy)

(smithy/sdk/shapes:define-type traffic-policy-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  taggable-resource-arn :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-archive-request common-lisp:nil
                                ((archive-id :target-type archive-id-string
                                  :required common-lisp:t :member-name
                                  "ArchiveId")
                                 (archive-name :target-type archive-name-string
                                  :member-name "ArchiveName")
                                 (retention :target-type archive-retention
                                  :member-name "Retention"))
                                (:shape-name "UpdateArchiveRequest"))

(smithy/sdk/shapes:define-output update-archive-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateArchiveResponse"))

(smithy/sdk/shapes:define-input update-ingress-point-request common-lisp:nil
                                ((ingress-point-id :target-type
                                  ingress-point-id :required common-lisp:t
                                  :member-name "IngressPointId")
                                 (ingress-point-name :target-type
                                  ingress-point-name :member-name
                                  "IngressPointName")
                                 (status-to-update :target-type
                                  ingress-point-status-to-update :member-name
                                  "StatusToUpdate")
                                 (rule-set-id :target-type rule-set-id
                                  :member-name "RuleSetId")
                                 (traffic-policy-id :target-type
                                  traffic-policy-id :member-name
                                  "TrafficPolicyId")
                                 (ingress-point-configuration :target-type
                                  ingress-point-configuration :member-name
                                  "IngressPointConfiguration"))
                                (:shape-name "UpdateIngressPointRequest"))

(smithy/sdk/shapes:define-output update-ingress-point-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateIngressPointResponse"))

(smithy/sdk/shapes:define-input update-relay-request common-lisp:nil
                                ((relay-id :target-type relay-id :required
                                  common-lisp:t :member-name "RelayId")
                                 (relay-name :target-type relay-name
                                  :member-name "RelayName")
                                 (server-name :target-type relay-server-name
                                  :member-name "ServerName")
                                 (server-port :target-type relay-server-port
                                  :member-name "ServerPort")
                                 (authentication :target-type
                                  relay-authentication :member-name
                                  "Authentication"))
                                (:shape-name "UpdateRelayRequest"))

(smithy/sdk/shapes:define-output update-relay-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateRelayResponse"))

(smithy/sdk/shapes:define-input update-rule-set-request common-lisp:nil
                                ((rule-set-id :target-type rule-set-id
                                  :required common-lisp:t :member-name
                                  "RuleSetId")
                                 (rule-set-name :target-type rule-set-name
                                  :member-name "RuleSetName")
                                 (rules :target-type rules :member-name
                                  "Rules"))
                                (:shape-name "UpdateRuleSetRequest"))

(smithy/sdk/shapes:define-output update-rule-set-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateRuleSetResponse"))

(smithy/sdk/shapes:define-input update-traffic-policy-request common-lisp:nil
                                ((traffic-policy-id :target-type
                                  traffic-policy-id :required common-lisp:t
                                  :member-name "TrafficPolicyId")
                                 (traffic-policy-name :target-type
                                  traffic-policy-name :member-name
                                  "TrafficPolicyName")
                                 (policy-statements :target-type
                                  policy-statement-list :member-name
                                  "PolicyStatements")
                                 (default-action :target-type accept-action
                                  :member-name "DefaultAction")
                                 (max-message-size-bytes :target-type
                                  max-message-size-bytes :member-name
                                  "MaxMessageSizeBytes"))
                                (:shape-name "UpdateTrafficPolicyRequest"))

(smithy/sdk/shapes:define-output update-traffic-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateTrafficPolicyResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type vpc-endpoint-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-addon-instance :shape-name
                                       "CreateAddonInstance" :input
                                       create-addon-instance-request :output
                                       create-addon-instance-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-addon-subscription :shape-name
                                       "CreateAddonSubscription" :input
                                       create-addon-subscription-request
                                       :output
                                       create-addon-subscription-response
                                       :errors
                                       (conflict-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-address-list :shape-name
                                       "CreateAddressList" :input
                                       create-address-list-request :output
                                       create-address-list-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-address-list-import-job
                                       :shape-name "CreateAddressListImportJob"
                                       :input
                                       create-address-list-import-job-request
                                       :output
                                       create-address-list-import-job-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-archive :shape-name
                                       "CreateArchive" :input
                                       create-archive-request :output
                                       create-archive-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-ingress-point :shape-name
                                       "CreateIngressPoint" :input
                                       create-ingress-point-request :output
                                       create-ingress-point-response :errors
                                       (conflict-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-relay :shape-name "CreateRelay"
                                       :input create-relay-request :output
                                       create-relay-response :errors
                                       (conflict-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-rule-set :shape-name
                                       "CreateRuleSet" :input
                                       create-rule-set-request :output
                                       create-rule-set-response :errors
                                       (conflict-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-traffic-policy :shape-name
                                       "CreateTrafficPolicy" :input
                                       create-traffic-policy-request :output
                                       create-traffic-policy-response :errors
                                       (conflict-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-addon-instance :shape-name
                                       "DeleteAddonInstance" :input
                                       delete-addon-instance-request :output
                                       delete-addon-instance-response :errors
                                       (conflict-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-addon-subscription :shape-name
                                       "DeleteAddonSubscription" :input
                                       delete-addon-subscription-request
                                       :output
                                       delete-addon-subscription-response
                                       :errors
                                       (conflict-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-address-list :shape-name
                                       "DeleteAddressList" :input
                                       delete-address-list-request :output
                                       delete-address-list-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-archive :shape-name
                                       "DeleteArchive" :input
                                       delete-archive-request :output
                                       delete-archive-response :errors
                                       (access-denied-exception
                                        conflict-exception throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-ingress-point :shape-name
                                       "DeleteIngressPoint" :input
                                       delete-ingress-point-request :output
                                       delete-ingress-point-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-relay :shape-name "DeleteRelay"
                                       :input delete-relay-request :output
                                       delete-relay-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-rule-set :shape-name
                                       "DeleteRuleSet" :input
                                       delete-rule-set-request :output
                                       delete-rule-set-response :errors
                                       (conflict-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-traffic-policy :shape-name
                                       "DeleteTrafficPolicy" :input
                                       delete-traffic-policy-request :output
                                       delete-traffic-policy-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation deregister-member-from-address-list
                                       :shape-name
                                       "DeregisterMemberFromAddressList" :input
                                       deregister-member-from-address-list-request
                                       :output
                                       deregister-member-from-address-list-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-addon-instance :shape-name
                                       "GetAddonInstance" :input
                                       get-addon-instance-request :output
                                       get-addon-instance-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-addon-subscription :shape-name
                                       "GetAddonSubscription" :input
                                       get-addon-subscription-request :output
                                       get-addon-subscription-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-address-list :shape-name
                                       "GetAddressList" :input
                                       get-address-list-request :output
                                       get-address-list-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-address-list-import-job :shape-name
                                       "GetAddressListImportJob" :input
                                       get-address-list-import-job-request
                                       :output
                                       get-address-list-import-job-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-archive :shape-name "GetArchive"
                                       :input get-archive-request :output
                                       get-archive-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-archive-export :shape-name
                                       "GetArchiveExport" :input
                                       get-archive-export-request :output
                                       get-archive-export-response :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-archive-message :shape-name
                                       "GetArchiveMessage" :input
                                       get-archive-message-request :output
                                       get-archive-message-response :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-archive-message-content :shape-name
                                       "GetArchiveMessageContent" :input
                                       get-archive-message-content-request
                                       :output
                                       get-archive-message-content-response
                                       :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-archive-search :shape-name
                                       "GetArchiveSearch" :input
                                       get-archive-search-request :output
                                       get-archive-search-response :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-archive-search-results :shape-name
                                       "GetArchiveSearchResults" :input
                                       get-archive-search-results-request
                                       :output
                                       get-archive-search-results-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-ingress-point :shape-name
                                       "GetIngressPoint" :input
                                       get-ingress-point-request :output
                                       get-ingress-point-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-member-of-address-list :shape-name
                                       "GetMemberOfAddressList" :input
                                       get-member-of-address-list-request
                                       :output
                                       get-member-of-address-list-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-relay :shape-name "GetRelay" :input
                                       get-relay-request :output
                                       get-relay-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-rule-set :shape-name "GetRuleSet"
                                       :input get-rule-set-request :output
                                       get-rule-set-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-traffic-policy :shape-name
                                       "GetTrafficPolicy" :input
                                       get-traffic-policy-request :output
                                       get-traffic-policy-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-addon-instances :shape-name
                                       "ListAddonInstances" :input
                                       list-addon-instances-request :output
                                       list-addon-instances-response :errors
                                       (validation-exception))

(smithy/sdk/operation:define-operation list-addon-subscriptions :shape-name
                                       "ListAddonSubscriptions" :input
                                       list-addon-subscriptions-request :output
                                       list-addon-subscriptions-response
                                       :errors (validation-exception))

(smithy/sdk/operation:define-operation list-address-list-import-jobs
                                       :shape-name "ListAddressListImportJobs"
                                       :input
                                       list-address-list-import-jobs-request
                                       :output
                                       list-address-list-import-jobs-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-address-lists :shape-name
                                       "ListAddressLists" :input
                                       list-address-lists-request :output
                                       list-address-lists-response :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-archive-exports :shape-name
                                       "ListArchiveExports" :input
                                       list-archive-exports-request :output
                                       list-archive-exports-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-archive-searches :shape-name
                                       "ListArchiveSearches" :input
                                       list-archive-searches-request :output
                                       list-archive-searches-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-archives :shape-name "ListArchives"
                                       :input list-archives-request :output
                                       list-archives-response :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-ingress-points :shape-name
                                       "ListIngressPoints" :input
                                       list-ingress-points-request :output
                                       list-ingress-points-response :errors
                                       (validation-exception))

(smithy/sdk/operation:define-operation list-members-of-address-list :shape-name
                                       "ListMembersOfAddressList" :input
                                       list-members-of-address-list-request
                                       :output
                                       list-members-of-address-list-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-relays :shape-name "ListRelays"
                                       :input list-relays-request :output
                                       list-relays-response :errors
                                       (validation-exception))

(smithy/sdk/operation:define-operation list-rule-sets :shape-name
                                       "ListRuleSets" :input
                                       list-rule-sets-request :output
                                       list-rule-sets-response :errors
                                       (validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-traffic-policies :shape-name
                                       "ListTrafficPolicies" :input
                                       list-traffic-policies-request :output
                                       list-traffic-policies-response :errors
                                       (validation-exception))

(smithy/sdk/operation:define-operation register-member-to-address-list
                                       :shape-name
                                       "RegisterMemberToAddressList" :input
                                       register-member-to-address-list-request
                                       :output
                                       register-member-to-address-list-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-address-list-import-job
                                       :shape-name "StartAddressListImportJob"
                                       :input
                                       start-address-list-import-job-request
                                       :output
                                       start-address-list-import-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-archive-export :shape-name
                                       "StartArchiveExport" :input
                                       start-archive-export-request :output
                                       start-archive-export-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-archive-search :shape-name
                                       "StartArchiveSearch" :input
                                       start-archive-search-request :output
                                       start-archive-search-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation stop-address-list-import-job :shape-name
                                       "StopAddressListImportJob" :input
                                       stop-address-list-import-job-request
                                       :output
                                       stop-address-list-import-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation stop-archive-export :shape-name
                                       "StopArchiveExport" :input
                                       stop-archive-export-request :output
                                       stop-archive-export-response :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation stop-archive-search :shape-name
                                       "StopArchiveSearch" :input
                                       stop-archive-search-request :output
                                       stop-archive-search-response :errors
                                       (access-denied-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-archive :shape-name
                                       "UpdateArchive" :input
                                       update-archive-request :output
                                       update-archive-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-ingress-point :shape-name
                                       "UpdateIngressPoint" :input
                                       update-ingress-point-request :output
                                       update-ingress-point-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-relay :shape-name "UpdateRelay"
                                       :input update-relay-request :output
                                       update-relay-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-rule-set :shape-name
                                       "UpdateRuleSet" :input
                                       update-rule-set-request :output
                                       update-rule-set-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-traffic-policy :shape-name
                                       "UpdateTrafficPolicy" :input
                                       update-traffic-policy-request :output
                                       update-traffic-policy-response :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        validation-exception))
