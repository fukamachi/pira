(uiop/package:define-package #:pira/macie2 (:use)
                             (:export #:accept-invitation
                              #:accept-invitation-request
                              #:accept-invitation-response
                              #:access-control-list #:access-denied-exception
                              #:account-detail #:account-level-permissions
                              #:admin-account #:admin-status
                              #:allow-list-criteria #:allow-list-status
                              #:allow-list-status-code #:allow-list-summary
                              #:allows-unencrypted-object-uploads
                              #:api-call-details #:assumed-role
                              #:auto-enable-mode #:automated-discovery-account
                              #:automated-discovery-account-status
                              #:automated-discovery-account-update
                              #:automated-discovery-account-update-error
                              #:automated-discovery-account-update-error-code
                              #:automated-discovery-monitoring-status
                              #:automated-discovery-status #:availability-code
                              #:aws-account #:aws-service
                              #:batch-get-custom-data-identifier-summary
                              #:batch-get-custom-data-identifiers
                              #:batch-get-custom-data-identifiers-request
                              #:batch-get-custom-data-identifiers-response
                              #:batch-update-automated-discovery-accounts
                              #:batch-update-automated-discovery-accounts-request
                              #:batch-update-automated-discovery-accounts-response
                              #:block-public-access
                              #:bucket-count-by-effective-permission
                              #:bucket-count-by-encryption-type
                              #:bucket-count-by-shared-access-type
                              #:bucket-count-policy-allows-unencrypted-object-uploads
                              #:bucket-criteria
                              #:bucket-criteria-additional-properties
                              #:bucket-level-permissions #:bucket-metadata
                              #:bucket-metadata-error-code
                              #:bucket-permission-configuration #:bucket-policy
                              #:bucket-public-access
                              #:bucket-server-side-encryption
                              #:bucket-sort-criteria
                              #:bucket-statistics-by-sensitivity #:cell #:cells
                              #:classification-details
                              #:classification-export-configuration
                              #:classification-result
                              #:classification-result-status
                              #:classification-scope-id
                              #:classification-scope-name
                              #:classification-scope-summary
                              #:classification-scope-update-operation
                              #:conflict-exception #:create-allow-list
                              #:create-allow-list-request
                              #:create-allow-list-response
                              #:create-classification-job
                              #:create-classification-job-request
                              #:create-classification-job-response
                              #:create-custom-data-identifier
                              #:create-custom-data-identifier-request
                              #:create-custom-data-identifier-response
                              #:create-findings-filter
                              #:create-findings-filter-request
                              #:create-findings-filter-response
                              #:create-invitations #:create-invitations-request
                              #:create-invitations-response #:create-member
                              #:create-member-request #:create-member-response
                              #:create-sample-findings
                              #:create-sample-findings-request
                              #:create-sample-findings-response
                              #:criteria-block-for-job #:criteria-for-job
                              #:criterion #:criterion-additional-properties
                              #:currency #:custom-data-identifier-summary
                              #:custom-data-identifiers #:custom-detection
                              #:custom-detections #:daily-schedule
                              #:data-identifier-severity #:data-identifier-type
                              #:day-of-week #:decline-invitations
                              #:decline-invitations-request
                              #:decline-invitations-response
                              #:default-detection #:default-detections
                              #:delete-allow-list #:delete-allow-list-request
                              #:delete-allow-list-response
                              #:delete-custom-data-identifier
                              #:delete-custom-data-identifier-request
                              #:delete-custom-data-identifier-response
                              #:delete-findings-filter
                              #:delete-findings-filter-request
                              #:delete-findings-filter-response
                              #:delete-invitations #:delete-invitations-request
                              #:delete-invitations-response #:delete-member
                              #:delete-member-request #:delete-member-response
                              #:describe-buckets #:describe-buckets-request
                              #:describe-buckets-response
                              #:describe-classification-job
                              #:describe-classification-job-request
                              #:describe-classification-job-response
                              #:describe-organization-configuration
                              #:describe-organization-configuration-request
                              #:describe-organization-configuration-response
                              #:detected-data-details #:detection
                              #:disable-macie #:disable-macie-request
                              #:disable-macie-response
                              #:disable-organization-admin-account
                              #:disable-organization-admin-account-request
                              #:disable-organization-admin-account-response
                              #:disassociate-from-administrator-account
                              #:disassociate-from-administrator-account-request
                              #:disassociate-from-administrator-account-response
                              #:disassociate-from-master-account
                              #:disassociate-from-master-account-request
                              #:disassociate-from-master-account-response
                              #:disassociate-member
                              #:disassociate-member-request
                              #:disassociate-member-response #:domain-details
                              #:effective-permission #:enable-macie
                              #:enable-macie-request #:enable-macie-response
                              #:enable-organization-admin-account
                              #:enable-organization-admin-account-request
                              #:enable-organization-admin-account-response
                              #:encryption-type #:error-code #:federated-user
                              #:finding #:finding-action #:finding-action-type
                              #:finding-actor #:finding-category
                              #:finding-criteria #:finding-publishing-frequency
                              #:finding-statistics-sort-attribute-name
                              #:finding-statistics-sort-criteria #:finding-type
                              #:findings-filter-action
                              #:findings-filter-list-item
                              #:get-administrator-account
                              #:get-administrator-account-request
                              #:get-administrator-account-response
                              #:get-allow-list #:get-allow-list-request
                              #:get-allow-list-response
                              #:get-automated-discovery-configuration
                              #:get-automated-discovery-configuration-request
                              #:get-automated-discovery-configuration-response
                              #:get-bucket-statistics
                              #:get-bucket-statistics-request
                              #:get-bucket-statistics-response
                              #:get-classification-export-configuration
                              #:get-classification-export-configuration-request
                              #:get-classification-export-configuration-response
                              #:get-classification-scope
                              #:get-classification-scope-request
                              #:get-classification-scope-response
                              #:get-custom-data-identifier
                              #:get-custom-data-identifier-request
                              #:get-custom-data-identifier-response
                              #:get-finding-statistics
                              #:get-finding-statistics-request
                              #:get-finding-statistics-response #:get-findings
                              #:get-findings-filter
                              #:get-findings-filter-request
                              #:get-findings-filter-response
                              #:get-findings-publication-configuration
                              #:get-findings-publication-configuration-request
                              #:get-findings-publication-configuration-response
                              #:get-findings-request #:get-findings-response
                              #:get-invitations-count
                              #:get-invitations-count-request
                              #:get-invitations-count-response
                              #:get-macie-session #:get-macie-session-request
                              #:get-macie-session-response #:get-master-account
                              #:get-master-account-request
                              #:get-master-account-response #:get-member
                              #:get-member-request #:get-member-response
                              #:get-resource-profile
                              #:get-resource-profile-request
                              #:get-resource-profile-response
                              #:get-reveal-configuration
                              #:get-reveal-configuration-request
                              #:get-reveal-configuration-response
                              #:get-sensitive-data-occurrences
                              #:get-sensitive-data-occurrences-availability
                              #:get-sensitive-data-occurrences-availability-request
                              #:get-sensitive-data-occurrences-availability-response
                              #:get-sensitive-data-occurrences-request
                              #:get-sensitive-data-occurrences-response
                              #:get-sensitivity-inspection-template
                              #:get-sensitivity-inspection-template-request
                              #:get-sensitivity-inspection-template-response
                              #:get-usage-statistics
                              #:get-usage-statistics-request
                              #:get-usage-statistics-response
                              #:get-usage-totals #:get-usage-totals-request
                              #:get-usage-totals-response #:group-by
                              #:group-count #:iam-user
                              #:internal-server-exception #:invitation
                              #:ip-address-details #:ip-city #:ip-country
                              #:ip-geo-location #:ip-owner #:is-defined-in-job
                              #:is-monitored-by-job #:job-comparator
                              #:job-details #:job-schedule-frequency
                              #:job-scope-term #:job-scoping-block #:job-status
                              #:job-summary #:job-type #:key-value-pair
                              #:key-value-pair-list #:last-run-error-status
                              #:last-run-error-status-code #:list-allow-lists
                              #:list-allow-lists-request
                              #:list-allow-lists-response
                              #:list-automated-discovery-accounts
                              #:list-automated-discovery-accounts-request
                              #:list-automated-discovery-accounts-response
                              #:list-classification-jobs
                              #:list-classification-jobs-request
                              #:list-classification-jobs-response
                              #:list-classification-scopes
                              #:list-classification-scopes-request
                              #:list-classification-scopes-response
                              #:list-custom-data-identifiers
                              #:list-custom-data-identifiers-request
                              #:list-custom-data-identifiers-response
                              #:list-findings #:list-findings-filters
                              #:list-findings-filters-request
                              #:list-findings-filters-response
                              #:list-findings-request #:list-findings-response
                              #:list-invitations #:list-invitations-request
                              #:list-invitations-response
                              #:list-jobs-filter-criteria
                              #:list-jobs-filter-key #:list-jobs-filter-term
                              #:list-jobs-sort-attribute-name
                              #:list-jobs-sort-criteria
                              #:list-managed-data-identifiers
                              #:list-managed-data-identifiers-request
                              #:list-managed-data-identifiers-response
                              #:list-members #:list-members-request
                              #:list-members-response
                              #:list-organization-admin-accounts
                              #:list-organization-admin-accounts-request
                              #:list-organization-admin-accounts-response
                              #:list-resource-profile-artifacts
                              #:list-resource-profile-artifacts-request
                              #:list-resource-profile-artifacts-response
                              #:list-resource-profile-detections
                              #:list-resource-profile-detections-request
                              #:list-resource-profile-detections-response
                              #:list-sensitivity-inspection-templates
                              #:list-sensitivity-inspection-templates-request
                              #:list-sensitivity-inspection-templates-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:macie2
                              #:macie-status #:managed-data-identifier-selector
                              #:managed-data-identifier-summary
                              #:matching-bucket #:matching-resource
                              #:max-results #:member #:monthly-schedule
                              #:next-token #:object-count-by-encryption-type
                              #:object-level-statistics #:occurrences
                              #:order-by #:origin-type #:page #:pages
                              #:policy-details
                              #:put-classification-export-configuration
                              #:put-classification-export-configuration-request
                              #:put-classification-export-configuration-response
                              #:put-findings-publication-configuration
                              #:put-findings-publication-configuration-request
                              #:put-findings-publication-configuration-response
                              #:range #:ranges #:record #:records
                              #:relationship-status #:replication-details
                              #:resource-not-found-exception
                              #:resource-profile-artifact #:resource-statistics
                              #:resources-affected #:retrieval-configuration
                              #:retrieval-mode #:reveal-configuration
                              #:reveal-request-status #:reveal-status
                              #:s3bucket #:s3bucket-criteria-for-job
                              #:s3bucket-definition-for-job #:s3bucket-name
                              #:s3bucket-owner #:s3classification-scope
                              #:s3classification-scope-exclusion
                              #:s3classification-scope-exclusion-update
                              #:s3classification-scope-update #:s3destination
                              #:s3job-definition #:s3object #:s3words-list
                              #:scope-filter-key #:scoping #:search-resources
                              #:search-resources-bucket-criteria
                              #:search-resources-comparator
                              #:search-resources-criteria
                              #:search-resources-criteria-block
                              #:search-resources-request
                              #:search-resources-response
                              #:search-resources-simple-criterion
                              #:search-resources-simple-criterion-key
                              #:search-resources-sort-attribute-name
                              #:search-resources-sort-criteria
                              #:search-resources-tag-criterion
                              #:search-resources-tag-criterion-pair
                              #:security-hub-configuration #:sensitive-data
                              #:sensitive-data-item
                              #:sensitive-data-item-category
                              #:sensitive-data-occurrences
                              #:sensitivity-aggregations
                              #:sensitivity-inspection-template-excludes
                              #:sensitivity-inspection-template-id
                              #:sensitivity-inspection-template-includes
                              #:sensitivity-inspection-templates-entry
                              #:server-side-encryption #:service-limit
                              #:service-quota-exceeded-exception
                              #:session-context #:session-context-attributes
                              #:session-issuer #:severity
                              #:severity-description #:severity-level
                              #:severity-level-list #:shared-access
                              #:simple-criterion-for-job
                              #:simple-criterion-key-for-job
                              #:simple-scope-term #:sort-criteria #:statistics
                              #:storage-class #:suppress-data-identifier
                              #:tag-criterion-for-job
                              #:tag-criterion-pair-for-job #:tag-map
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-scope-term
                              #:tag-target #:tag-value-pair
                              #:test-custom-data-identifier
                              #:test-custom-data-identifier-request
                              #:test-custom-data-identifier-response
                              #:throttling-exception #:time-range #:timestamp
                              #:type #:unavailability-reason-code #:unit
                              #:unprocessable-entity-exception
                              #:unprocessed-account #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-allow-list
                              #:update-allow-list-request
                              #:update-allow-list-response
                              #:update-automated-discovery-configuration
                              #:update-automated-discovery-configuration-request
                              #:update-automated-discovery-configuration-response
                              #:update-classification-job
                              #:update-classification-job-request
                              #:update-classification-job-response
                              #:update-classification-scope
                              #:update-classification-scope-request
                              #:update-classification-scope-response
                              #:update-findings-filter
                              #:update-findings-filter-request
                              #:update-findings-filter-response
                              #:update-macie-session
                              #:update-macie-session-request
                              #:update-macie-session-response
                              #:update-member-session
                              #:update-member-session-request
                              #:update-member-session-response
                              #:update-organization-configuration
                              #:update-organization-configuration-request
                              #:update-organization-configuration-response
                              #:update-resource-profile
                              #:update-resource-profile-detections
                              #:update-resource-profile-detections-request
                              #:update-resource-profile-detections-response
                              #:update-resource-profile-request
                              #:update-resource-profile-response
                              #:update-retrieval-configuration
                              #:update-reveal-configuration
                              #:update-reveal-configuration-request
                              #:update-reveal-configuration-response
                              #:update-sensitivity-inspection-template
                              #:update-sensitivity-inspection-template-request
                              #:update-sensitivity-inspection-template-response
                              #:usage-by-account #:usage-record
                              #:usage-statistics-filter
                              #:usage-statistics-filter-comparator
                              #:usage-statistics-filter-key
                              #:usage-statistics-sort-by
                              #:usage-statistics-sort-key #:usage-total
                              #:usage-type #:user-identity #:user-identity-root
                              #:user-identity-type #:user-paused-details
                              #:validation-exception #:weekly-schedule
                              #:boolean #:double #:integer
                              #:list-of-admin-account
                              #:list-of-allow-list-summary
                              #:list-of-automated-discovery-account
                              #:list-of-automated-discovery-account-update
                              #:list-of-automated-discovery-account-update-error
                              #:list-of-batch-get-custom-data-identifier-summary
                              #:list-of-bucket-metadata
                              #:list-of-classification-scope-summary
                              #:list-of-criteria-for-job
                              #:list-of-custom-data-identifier-summary
                              #:list-of-detected-data-details
                              #:list-of-detection #:list-of-finding
                              #:list-of-finding-type
                              #:list-of-findings-filter-list-item
                              #:list-of-group-count #:list-of-invitation
                              #:list-of-job-scope-term #:list-of-job-summary
                              #:list-of-key-value-pair
                              #:list-of-list-jobs-filter-term
                              #:list-of-managed-data-identifier-summary
                              #:list-of-matching-resource #:list-of-member
                              #:list-of-resource-profile-artifact
                              #:list-of-s3bucket-definition-for-job
                              #:list-of-s3bucket-name
                              #:list-of-search-resources-criteria
                              #:list-of-search-resources-tag-criterion-pair
                              #:list-of-sensitivity-inspection-templates-entry
                              #:list-of-suppress-data-identifier
                              #:list-of-tag-criterion-pair-for-job
                              #:list-of-tag-value-pair
                              #:list-of-unavailability-reason-code
                              #:list-of-unprocessed-account
                              #:list-of-usage-by-account #:list-of-usage-record
                              #:list-of-usage-statistics-filter
                              #:list-of-usage-total #:list-of-string #:long
                              #:string #:string-min1max1024pattern-ss
                              #:string-min1max128 #:string-min1max128pattern
                              #:string-min1max2048
                              #:string-min1max512pattern-ss
                              #:string-min1max64pattern-w
                              #:string-min22max22pattern-az0922
                              #:string-min3max255pattern-aza-z093255
                              #:string-min71max89pattern-arn-aws-aws-cn-aws-us-gov-macie2az19920d12allow-list-az0922
                              #:timestamp-iso8601))
(common-lisp:in-package #:pira/macie2)

(smithy/sdk/service:define-service macie2 :shape-name "Macie2" :version
                                   "2020-01-01" :title "Amazon Macie 2" :traits
                                   '(("aws.api#service" ("sdkId" . "Macie2")
                                      ("arnNamespace" . "macie2")
                                      ("cloudFormationName" . "Macie2")
                                      ("cloudTrailEventSource"
                                       . "macie2.amazonaws.com")
                                      ("endpointPrefix" . "macie2"))
                                     ("aws.auth#sigv4" ("name" . "macie2"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-input accept-invitation-request common-lisp:nil
                                ((administrator-account-id :target-type string
                                  :member-name "administratorAccountId"
                                  :json-name "administratorAccountId")
                                 (invitation-id :target-type string :required
                                  common-lisp:t :member-name "invitationId"
                                  :json-name "invitationId")
                                 (master-account :target-type string
                                  :member-name "masterAccount" :json-name
                                  "masterAccount"))
                                (:shape-name "AcceptInvitationRequest"))

(smithy/sdk/shapes:define-output accept-invitation-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AcceptInvitationResponse"))

(smithy/sdk/shapes:define-structure access-control-list common-lisp:nil
                                    ((allows-public-read-access :target-type
                                      boolean :member-name
                                      "allowsPublicReadAccess" :json-name
                                      "allowsPublicReadAccess")
                                     (allows-public-write-access :target-type
                                      boolean :member-name
                                      "allowsPublicWriteAccess" :json-name
                                      "allowsPublicWriteAccess"))
                                    (:shape-name "AccessControlList"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message" :json-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure account-detail common-lisp:nil
                                    ((account-id :target-type string :required
                                      common-lisp:t :member-name "accountId"
                                      :json-name "accountId")
                                     (email :target-type string :required
                                      common-lisp:t :member-name "email"
                                      :json-name "email"))
                                    (:shape-name "AccountDetail"))

(smithy/sdk/shapes:define-structure account-level-permissions common-lisp:nil
                                    ((block-public-access :target-type
                                      block-public-access :member-name
                                      "blockPublicAccess" :json-name
                                      "blockPublicAccess"))
                                    (:shape-name "AccountLevelPermissions"))

(smithy/sdk/shapes:define-structure admin-account common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (status :target-type admin-status
                                      :member-name "status" :json-name
                                      "status"))
                                    (:shape-name "AdminAccount"))

(smithy/sdk/shapes:define-enum admin-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabling-in-progress "DISABLING_IN_PROGRESS"))

(smithy/sdk/shapes:define-structure allow-list-criteria common-lisp:nil
                                    ((regex :target-type
                                      string-min1max512pattern-ss :member-name
                                      "regex" :json-name "regex")
                                     (s3words-list :target-type s3words-list
                                      :member-name "s3WordsList" :json-name
                                      "s3WordsList"))
                                    (:shape-name "AllowListCriteria"))

(smithy/sdk/shapes:define-structure allow-list-status common-lisp:nil
                                    ((code :target-type allow-list-status-code
                                      :required common-lisp:t :member-name
                                      "code" :json-name "code")
                                     (description :target-type
                                      string-min1max1024pattern-ss :member-name
                                      "description" :json-name "description"))
                                    (:shape-name "AllowListStatus"))

(smithy/sdk/shapes:define-enum allow-list-status-code
    common-lisp:nil
  (:ok "OK")
  (:s3-object-not-found "S3_OBJECT_NOT_FOUND")
  (:s3-user-access-denied "S3_USER_ACCESS_DENIED")
  (:s3-object-access-denied "S3_OBJECT_ACCESS_DENIED")
  (:s3-throttled "S3_THROTTLED")
  (:s3-object-oversize "S3_OBJECT_OVERSIZE")
  (:s3-object-empty "S3_OBJECT_EMPTY")
  (:unknown-error "UNKNOWN_ERROR"))

(smithy/sdk/shapes:define-structure allow-list-summary common-lisp:nil
                                    ((arn :target-type
                                      string-min71max89pattern-arn-aws-aws-cn-aws-us-gov-macie2az19920d12allow-list-az0922
                                      :member-name "arn" :json-name "arn")
                                     (created-at :target-type timestamp-iso8601
                                      :member-name "createdAt" :json-name
                                      "createdAt")
                                     (description :target-type
                                      string-min1max512pattern-ss :member-name
                                      "description" :json-name "description")
                                     (id :target-type
                                      string-min22max22pattern-az0922
                                      :member-name "id" :json-name "id")
                                     (name :target-type
                                      string-min1max128pattern :member-name
                                      "name" :json-name "name")
                                     (updated-at :target-type timestamp-iso8601
                                      :member-name "updatedAt" :json-name
                                      "updatedAt"))
                                    (:shape-name "AllowListSummary"))

(smithy/sdk/shapes:define-enum allows-unencrypted-object-uploads
    common-lisp:nil
  (:true "TRUE")
  (:false "FALSE")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-structure api-call-details common-lisp:nil
                                    ((api :target-type string :member-name
                                      "api" :json-name "api")
                                     (api-service-name :target-type string
                                      :member-name "apiServiceName" :json-name
                                      "apiServiceName")
                                     (first-seen :target-type timestamp-iso8601
                                      :member-name "firstSeen" :json-name
                                      "firstSeen")
                                     (last-seen :target-type timestamp-iso8601
                                      :member-name "lastSeen" :json-name
                                      "lastSeen"))
                                    (:shape-name "ApiCallDetails"))

(smithy/sdk/shapes:define-structure assumed-role common-lisp:nil
                                    ((access-key-id :target-type string
                                      :member-name "accessKeyId" :json-name
                                      "accessKeyId")
                                     (account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (arn :target-type string :member-name
                                      "arn" :json-name "arn")
                                     (principal-id :target-type string
                                      :member-name "principalId" :json-name
                                      "principalId")
                                     (session-context :target-type
                                      session-context :member-name
                                      "sessionContext" :json-name
                                      "sessionContext"))
                                    (:shape-name "AssumedRole"))

(smithy/sdk/shapes:define-enum auto-enable-mode
    common-lisp:nil
  (:all "ALL")
  (:new "NEW")
  (:none "NONE"))

(smithy/sdk/shapes:define-structure automated-discovery-account common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (status :target-type
                                      automated-discovery-account-status
                                      :member-name "status" :json-name
                                      "status"))
                                    (:shape-name "AutomatedDiscoveryAccount"))

(smithy/sdk/shapes:define-enum automated-discovery-account-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure automated-discovery-account-update
                                    common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (status :target-type
                                      automated-discovery-account-status
                                      :member-name "status" :json-name
                                      "status"))
                                    (:shape-name
                                     "AutomatedDiscoveryAccountUpdate"))

(smithy/sdk/shapes:define-structure automated-discovery-account-update-error
                                    common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (error-code :target-type
                                      automated-discovery-account-update-error-code
                                      :member-name "errorCode" :json-name
                                      "errorCode"))
                                    (:shape-name
                                     "AutomatedDiscoveryAccountUpdateError"))

(smithy/sdk/shapes:define-enum automated-discovery-account-update-error-code
    common-lisp:nil
  (:account-paused "ACCOUNT_PAUSED")
  (:account-not-found "ACCOUNT_NOT_FOUND"))

(smithy/sdk/shapes:define-enum automated-discovery-monitoring-status
    common-lisp:nil
  (:monitored "MONITORED")
  (:not-monitored "NOT_MONITORED"))

(smithy/sdk/shapes:define-enum automated-discovery-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum availability-code
    common-lisp:nil
  (:available "AVAILABLE")
  (:unavailable "UNAVAILABLE"))

(smithy/sdk/shapes:define-structure aws-account common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (principal-id :target-type string
                                      :member-name "principalId" :json-name
                                      "principalId"))
                                    (:shape-name "AwsAccount"))

(smithy/sdk/shapes:define-structure aws-service common-lisp:nil
                                    ((invoked-by :target-type string
                                      :member-name "invokedBy" :json-name
                                      "invokedBy"))
                                    (:shape-name "AwsService"))

(smithy/sdk/shapes:define-structure batch-get-custom-data-identifier-summary
                                    common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "arn" :json-name "arn")
                                     (created-at :target-type timestamp-iso8601
                                      :member-name "createdAt" :json-name
                                      "createdAt")
                                     (deleted :target-type boolean :member-name
                                      "deleted" :json-name "deleted")
                                     (description :target-type string
                                      :member-name "description" :json-name
                                      "description")
                                     (id :target-type string :member-name "id"
                                      :json-name "id")
                                     (name :target-type string :member-name
                                      "name" :json-name "name"))
                                    (:shape-name
                                     "BatchGetCustomDataIdentifierSummary"))

(smithy/sdk/shapes:define-input batch-get-custom-data-identifiers-request
                                common-lisp:nil
                                ((ids :target-type list-of-string :member-name
                                  "ids" :json-name "ids"))
                                (:shape-name
                                 "BatchGetCustomDataIdentifiersRequest"))

(smithy/sdk/shapes:define-output batch-get-custom-data-identifiers-response
                                 common-lisp:nil
                                 ((custom-data-identifiers :target-type
                                   list-of-batch-get-custom-data-identifier-summary
                                   :member-name "customDataIdentifiers"
                                   :json-name "customDataIdentifiers")
                                  (not-found-identifier-ids :target-type
                                   list-of-string :member-name
                                   "notFoundIdentifierIds" :json-name
                                   "notFoundIdentifierIds"))
                                 (:shape-name
                                  "BatchGetCustomDataIdentifiersResponse"))

(smithy/sdk/shapes:define-input
 batch-update-automated-discovery-accounts-request common-lisp:nil
 ((accounts :target-type list-of-automated-discovery-account-update
   :member-name "accounts" :json-name "accounts"))
 (:shape-name "BatchUpdateAutomatedDiscoveryAccountsRequest"))

(smithy/sdk/shapes:define-output
 batch-update-automated-discovery-accounts-response common-lisp:nil
 ((errors :target-type list-of-automated-discovery-account-update-error
   :member-name "errors" :json-name "errors"))
 (:shape-name "BatchUpdateAutomatedDiscoveryAccountsResponse"))

(smithy/sdk/shapes:define-structure block-public-access common-lisp:nil
                                    ((block-public-acls :target-type boolean
                                      :member-name "blockPublicAcls" :json-name
                                      "blockPublicAcls")
                                     (block-public-policy :target-type boolean
                                      :member-name "blockPublicPolicy"
                                      :json-name "blockPublicPolicy")
                                     (ignore-public-acls :target-type boolean
                                      :member-name "ignorePublicAcls"
                                      :json-name "ignorePublicAcls")
                                     (restrict-public-buckets :target-type
                                      boolean :member-name
                                      "restrictPublicBuckets" :json-name
                                      "restrictPublicBuckets"))
                                    (:shape-name "BlockPublicAccess"))

(smithy/sdk/shapes:define-structure bucket-count-by-effective-permission
                                    common-lisp:nil
                                    ((publicly-accessible :target-type long
                                      :member-name "publiclyAccessible"
                                      :json-name "publiclyAccessible")
                                     (publicly-readable :target-type long
                                      :member-name "publiclyReadable"
                                      :json-name "publiclyReadable")
                                     (publicly-writable :target-type long
                                      :member-name "publiclyWritable"
                                      :json-name "publiclyWritable")
                                     (unknown :target-type long :member-name
                                      "unknown" :json-name "unknown"))
                                    (:shape-name
                                     "BucketCountByEffectivePermission"))

(smithy/sdk/shapes:define-structure bucket-count-by-encryption-type
                                    common-lisp:nil
                                    ((kms-managed :target-type long
                                      :member-name "kmsManaged" :json-name
                                      "kmsManaged")
                                     (s3managed :target-type long :member-name
                                      "s3Managed" :json-name "s3Managed")
                                     (unencrypted :target-type long
                                      :member-name "unencrypted" :json-name
                                      "unencrypted")
                                     (unknown :target-type long :member-name
                                      "unknown" :json-name "unknown"))
                                    (:shape-name "BucketCountByEncryptionType"))

(smithy/sdk/shapes:define-structure bucket-count-by-shared-access-type
                                    common-lisp:nil
                                    ((external :target-type long :member-name
                                      "external" :json-name "external")
                                     (internal :target-type long :member-name
                                      "internal" :json-name "internal")
                                     (not-shared :target-type long :member-name
                                      "notShared" :json-name "notShared")
                                     (unknown :target-type long :member-name
                                      "unknown" :json-name "unknown"))
                                    (:shape-name
                                     "BucketCountBySharedAccessType"))

(smithy/sdk/shapes:define-structure
 bucket-count-policy-allows-unencrypted-object-uploads common-lisp:nil
 ((allows-unencrypted-object-uploads :target-type long :member-name
   "allowsUnencryptedObjectUploads" :json-name
   "allowsUnencryptedObjectUploads")
  (denies-unencrypted-object-uploads :target-type long :member-name
   "deniesUnencryptedObjectUploads" :json-name
   "deniesUnencryptedObjectUploads")
  (unknown :target-type long :member-name "unknown" :json-name "unknown"))
 (:shape-name "BucketCountPolicyAllowsUnencryptedObjectUploads"))

(smithy/sdk/shapes:define-map bucket-criteria :key string :value
                              bucket-criteria-additional-properties)

(smithy/sdk/shapes:define-structure bucket-criteria-additional-properties
                                    common-lisp:nil
                                    ((eq :target-type list-of-string
                                      :member-name "eq" :json-name "eq")
                                     (gt :target-type long :member-name "gt"
                                      :json-name "gt")
                                     (gte :target-type long :member-name "gte"
                                      :json-name "gte")
                                     (lt :target-type long :member-name "lt"
                                      :json-name "lt")
                                     (lte :target-type long :member-name "lte"
                                      :json-name "lte")
                                     (neq :target-type list-of-string
                                      :member-name "neq" :json-name "neq")
                                     (prefix :target-type string :member-name
                                      "prefix" :json-name "prefix"))
                                    (:shape-name
                                     "BucketCriteriaAdditionalProperties"))

(smithy/sdk/shapes:define-structure bucket-level-permissions common-lisp:nil
                                    ((access-control-list :target-type
                                      access-control-list :member-name
                                      "accessControlList" :json-name
                                      "accessControlList")
                                     (block-public-access :target-type
                                      block-public-access :member-name
                                      "blockPublicAccess" :json-name
                                      "blockPublicAccess")
                                     (bucket-policy :target-type bucket-policy
                                      :member-name "bucketPolicy" :json-name
                                      "bucketPolicy"))
                                    (:shape-name "BucketLevelPermissions"))

(smithy/sdk/shapes:define-structure bucket-metadata common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (allows-unencrypted-object-uploads
                                      :target-type
                                      allows-unencrypted-object-uploads
                                      :member-name
                                      "allowsUnencryptedObjectUploads"
                                      :json-name
                                      "allowsUnencryptedObjectUploads")
                                     (automated-discovery-monitoring-status
                                      :target-type
                                      automated-discovery-monitoring-status
                                      :member-name
                                      "automatedDiscoveryMonitoringStatus"
                                      :json-name
                                      "automatedDiscoveryMonitoringStatus")
                                     (bucket-arn :target-type string
                                      :member-name "bucketArn" :json-name
                                      "bucketArn")
                                     (bucket-created-at :target-type
                                      timestamp-iso8601 :member-name
                                      "bucketCreatedAt" :json-name
                                      "bucketCreatedAt")
                                     (bucket-name :target-type string
                                      :member-name "bucketName" :json-name
                                      "bucketName")
                                     (classifiable-object-count :target-type
                                      long :member-name
                                      "classifiableObjectCount" :json-name
                                      "classifiableObjectCount")
                                     (classifiable-size-in-bytes :target-type
                                      long :member-name
                                      "classifiableSizeInBytes" :json-name
                                      "classifiableSizeInBytes")
                                     (error-code :target-type
                                      bucket-metadata-error-code :member-name
                                      "errorCode" :json-name "errorCode")
                                     (error-message :target-type string
                                      :member-name "errorMessage" :json-name
                                      "errorMessage")
                                     (job-details :target-type job-details
                                      :member-name "jobDetails" :json-name
                                      "jobDetails")
                                     (last-automated-discovery-time
                                      :target-type timestamp-iso8601
                                      :member-name "lastAutomatedDiscoveryTime"
                                      :json-name "lastAutomatedDiscoveryTime")
                                     (last-updated :target-type
                                      timestamp-iso8601 :member-name
                                      "lastUpdated" :json-name "lastUpdated")
                                     (object-count :target-type long
                                      :member-name "objectCount" :json-name
                                      "objectCount")
                                     (object-count-by-encryption-type
                                      :target-type
                                      object-count-by-encryption-type
                                      :member-name
                                      "objectCountByEncryptionType" :json-name
                                      "objectCountByEncryptionType")
                                     (public-access :target-type
                                      bucket-public-access :member-name
                                      "publicAccess" :json-name "publicAccess")
                                     (region :target-type string :member-name
                                      "region" :json-name "region")
                                     (replication-details :target-type
                                      replication-details :member-name
                                      "replicationDetails" :json-name
                                      "replicationDetails")
                                     (sensitivity-score :target-type integer
                                      :member-name "sensitivityScore"
                                      :json-name "sensitivityScore")
                                     (server-side-encryption :target-type
                                      bucket-server-side-encryption
                                      :member-name "serverSideEncryption"
                                      :json-name "serverSideEncryption")
                                     (shared-access :target-type shared-access
                                      :member-name "sharedAccess" :json-name
                                      "sharedAccess")
                                     (size-in-bytes :target-type long
                                      :member-name "sizeInBytes" :json-name
                                      "sizeInBytes")
                                     (size-in-bytes-compressed :target-type
                                      long :member-name "sizeInBytesCompressed"
                                      :json-name "sizeInBytesCompressed")
                                     (tags :target-type list-of-key-value-pair
                                      :member-name "tags" :json-name "tags")
                                     (unclassifiable-object-count :target-type
                                      object-level-statistics :member-name
                                      "unclassifiableObjectCount" :json-name
                                      "unclassifiableObjectCount")
                                     (unclassifiable-object-size-in-bytes
                                      :target-type object-level-statistics
                                      :member-name
                                      "unclassifiableObjectSizeInBytes"
                                      :json-name
                                      "unclassifiableObjectSizeInBytes")
                                     (versioning :target-type boolean
                                      :member-name "versioning" :json-name
                                      "versioning"))
                                    (:shape-name "BucketMetadata"))

(smithy/sdk/shapes:define-enum bucket-metadata-error-code
    common-lisp:nil
  (:access-denied "ACCESS_DENIED")
  (:bucket-count-exceeds-quota "BUCKET_COUNT_EXCEEDS_QUOTA"))

(smithy/sdk/shapes:define-structure bucket-permission-configuration
                                    common-lisp:nil
                                    ((account-level-permissions :target-type
                                      account-level-permissions :member-name
                                      "accountLevelPermissions" :json-name
                                      "accountLevelPermissions")
                                     (bucket-level-permissions :target-type
                                      bucket-level-permissions :member-name
                                      "bucketLevelPermissions" :json-name
                                      "bucketLevelPermissions"))
                                    (:shape-name
                                     "BucketPermissionConfiguration"))

(smithy/sdk/shapes:define-structure bucket-policy common-lisp:nil
                                    ((allows-public-read-access :target-type
                                      boolean :member-name
                                      "allowsPublicReadAccess" :json-name
                                      "allowsPublicReadAccess")
                                     (allows-public-write-access :target-type
                                      boolean :member-name
                                      "allowsPublicWriteAccess" :json-name
                                      "allowsPublicWriteAccess"))
                                    (:shape-name "BucketPolicy"))

(smithy/sdk/shapes:define-structure bucket-public-access common-lisp:nil
                                    ((effective-permission :target-type
                                      effective-permission :member-name
                                      "effectivePermission" :json-name
                                      "effectivePermission")
                                     (permission-configuration :target-type
                                      bucket-permission-configuration
                                      :member-name "permissionConfiguration"
                                      :json-name "permissionConfiguration"))
                                    (:shape-name "BucketPublicAccess"))

(smithy/sdk/shapes:define-structure bucket-server-side-encryption
                                    common-lisp:nil
                                    ((kms-master-key-id :target-type string
                                      :member-name "kmsMasterKeyId" :json-name
                                      "kmsMasterKeyId")
                                     (type :target-type type :member-name
                                      "type" :json-name "type"))
                                    (:shape-name "BucketServerSideEncryption"))

(smithy/sdk/shapes:define-structure bucket-sort-criteria common-lisp:nil
                                    ((attribute-name :target-type string
                                      :member-name "attributeName" :json-name
                                      "attributeName")
                                     (order-by :target-type order-by
                                      :member-name "orderBy" :json-name
                                      "orderBy"))
                                    (:shape-name "BucketSortCriteria"))

(smithy/sdk/shapes:define-structure bucket-statistics-by-sensitivity
                                    common-lisp:nil
                                    ((classification-error :target-type
                                      sensitivity-aggregations :member-name
                                      "classificationError" :json-name
                                      "classificationError")
                                     (not-classified :target-type
                                      sensitivity-aggregations :member-name
                                      "notClassified" :json-name
                                      "notClassified")
                                     (not-sensitive :target-type
                                      sensitivity-aggregations :member-name
                                      "notSensitive" :json-name "notSensitive")
                                     (sensitive :target-type
                                      sensitivity-aggregations :member-name
                                      "sensitive" :json-name "sensitive"))
                                    (:shape-name
                                     "BucketStatisticsBySensitivity"))

(smithy/sdk/shapes:define-structure cell common-lisp:nil
                                    ((cell-reference :target-type string
                                      :member-name "cellReference" :json-name
                                      "cellReference")
                                     (column :target-type long :member-name
                                      "column" :json-name "column")
                                     (column-name :target-type string
                                      :member-name "columnName" :json-name
                                      "columnName")
                                     (row :target-type long :member-name "row"
                                      :json-name "row"))
                                    (:shape-name "Cell"))

(smithy/sdk/shapes:define-list cells :member cell)

(smithy/sdk/shapes:define-structure classification-details common-lisp:nil
                                    ((detailed-results-location :target-type
                                      string :member-name
                                      "detailedResultsLocation" :json-name
                                      "detailedResultsLocation")
                                     (job-arn :target-type string :member-name
                                      "jobArn" :json-name "jobArn")
                                     (job-id :target-type string :member-name
                                      "jobId" :json-name "jobId")
                                     (origin-type :target-type origin-type
                                      :member-name "originType" :json-name
                                      "originType")
                                     (result :target-type classification-result
                                      :member-name "result" :json-name
                                      "result"))
                                    (:shape-name "ClassificationDetails"))

(smithy/sdk/shapes:define-structure classification-export-configuration
                                    common-lisp:nil
                                    ((s3destination :target-type s3destination
                                      :member-name "s3Destination" :json-name
                                      "s3Destination"))
                                    (:shape-name
                                     "ClassificationExportConfiguration"))

(smithy/sdk/shapes:define-structure classification-result common-lisp:nil
                                    ((additional-occurrences :target-type
                                      boolean :member-name
                                      "additionalOccurrences" :json-name
                                      "additionalOccurrences")
                                     (custom-data-identifiers :target-type
                                      custom-data-identifiers :member-name
                                      "customDataIdentifiers" :json-name
                                      "customDataIdentifiers")
                                     (mime-type :target-type string
                                      :member-name "mimeType" :json-name
                                      "mimeType")
                                     (sensitive-data :target-type
                                      sensitive-data :member-name
                                      "sensitiveData" :json-name
                                      "sensitiveData")
                                     (size-classified :target-type long
                                      :member-name "sizeClassified" :json-name
                                      "sizeClassified")
                                     (status :target-type
                                      classification-result-status :member-name
                                      "status" :json-name "status"))
                                    (:shape-name "ClassificationResult"))

(smithy/sdk/shapes:define-structure classification-result-status
                                    common-lisp:nil
                                    ((code :target-type string :member-name
                                      "code" :json-name "code")
                                     (reason :target-type string :member-name
                                      "reason" :json-name "reason"))
                                    (:shape-name "ClassificationResultStatus"))

(smithy/sdk/shapes:define-type classification-scope-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type classification-scope-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure classification-scope-summary
                                    common-lisp:nil
                                    ((id :target-type classification-scope-id
                                      :member-name "id" :json-name "id")
                                     (name :target-type
                                      classification-scope-name :member-name
                                      "name" :json-name "name"))
                                    (:shape-name "ClassificationScopeSummary"))

(smithy/sdk/shapes:define-enum classification-scope-update-operation
    common-lisp:nil
  (:add "ADD")
  (:replace "REPLACE")
  (:remove "REMOVE"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message" :json-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-allow-list-request common-lisp:nil
                                ((client-token :target-type string :required
                                  common-lisp:t :member-name "clientToken"
                                  :json-name "clientToken")
                                 (criteria :target-type allow-list-criteria
                                  :required common-lisp:t :member-name
                                  "criteria" :json-name "criteria")
                                 (description :target-type
                                  string-min1max512pattern-ss :member-name
                                  "description" :json-name "description")
                                 (name :target-type string-min1max128pattern
                                  :required common-lisp:t :member-name "name"
                                  :json-name "name")
                                 (tags :target-type tag-map :member-name "tags"
                                  :json-name "tags"))
                                (:shape-name "CreateAllowListRequest"))

(smithy/sdk/shapes:define-output create-allow-list-response common-lisp:nil
                                 ((arn :target-type
                                   string-min71max89pattern-arn-aws-aws-cn-aws-us-gov-macie2az19920d12allow-list-az0922
                                   :member-name "arn" :json-name "arn")
                                  (id :target-type
                                   string-min22max22pattern-az0922 :member-name
                                   "id" :json-name "id"))
                                 (:shape-name "CreateAllowListResponse"))

(smithy/sdk/shapes:define-input create-classification-job-request
                                common-lisp:nil
                                ((allow-list-ids :target-type list-of-string
                                  :member-name "allowListIds" :json-name
                                  "allowListIds")
                                 (client-token :target-type string :required
                                  common-lisp:t :member-name "clientToken"
                                  :json-name "clientToken")
                                 (custom-data-identifier-ids :target-type
                                  list-of-string :member-name
                                  "customDataIdentifierIds" :json-name
                                  "customDataIdentifierIds")
                                 (description :target-type string :member-name
                                  "description" :json-name "description")
                                 (initial-run :target-type boolean :member-name
                                  "initialRun" :json-name "initialRun")
                                 (job-type :target-type job-type :required
                                  common-lisp:t :member-name "jobType"
                                  :json-name "jobType")
                                 (managed-data-identifier-ids :target-type
                                  list-of-string :member-name
                                  "managedDataIdentifierIds" :json-name
                                  "managedDataIdentifierIds")
                                 (managed-data-identifier-selector :target-type
                                  managed-data-identifier-selector :member-name
                                  "managedDataIdentifierSelector" :json-name
                                  "managedDataIdentifierSelector")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "name" :json-name
                                  "name")
                                 (s3job-definition :target-type
                                  s3job-definition :required common-lisp:t
                                  :member-name "s3JobDefinition" :json-name
                                  "s3JobDefinition")
                                 (sampling-percentage :target-type integer
                                  :member-name "samplingPercentage" :json-name
                                  "samplingPercentage")
                                 (schedule-frequency :target-type
                                  job-schedule-frequency :member-name
                                  "scheduleFrequency" :json-name
                                  "scheduleFrequency")
                                 (tags :target-type tag-map :member-name "tags"
                                  :json-name "tags"))
                                (:shape-name "CreateClassificationJobRequest"))

(smithy/sdk/shapes:define-output create-classification-job-response
                                 common-lisp:nil
                                 ((job-arn :target-type string :member-name
                                   "jobArn" :json-name "jobArn")
                                  (job-id :target-type string :member-name
                                   "jobId" :json-name "jobId"))
                                 (:shape-name
                                  "CreateClassificationJobResponse"))

(smithy/sdk/shapes:define-input create-custom-data-identifier-request
                                common-lisp:nil
                                ((client-token :target-type string :member-name
                                  "clientToken" :json-name "clientToken")
                                 (description :target-type string :member-name
                                  "description" :json-name "description")
                                 (ignore-words :target-type list-of-string
                                  :member-name "ignoreWords" :json-name
                                  "ignoreWords")
                                 (keywords :target-type list-of-string
                                  :member-name "keywords" :json-name
                                  "keywords")
                                 (maximum-match-distance :target-type integer
                                  :member-name "maximumMatchDistance"
                                  :json-name "maximumMatchDistance")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "name" :json-name
                                  "name")
                                 (regex :target-type string :required
                                  common-lisp:t :member-name "regex" :json-name
                                  "regex")
                                 (severity-levels :target-type
                                  severity-level-list :member-name
                                  "severityLevels" :json-name "severityLevels")
                                 (tags :target-type tag-map :member-name "tags"
                                  :json-name "tags"))
                                (:shape-name
                                 "CreateCustomDataIdentifierRequest"))

(smithy/sdk/shapes:define-output create-custom-data-identifier-response
                                 common-lisp:nil
                                 ((custom-data-identifier-id :target-type
                                   string :member-name "customDataIdentifierId"
                                   :json-name "customDataIdentifierId"))
                                 (:shape-name
                                  "CreateCustomDataIdentifierResponse"))

(smithy/sdk/shapes:define-input create-findings-filter-request common-lisp:nil
                                ((action :target-type findings-filter-action
                                  :required common-lisp:t :member-name "action"
                                  :json-name "action")
                                 (client-token :target-type string :member-name
                                  "clientToken" :json-name "clientToken")
                                 (description :target-type string :member-name
                                  "description" :json-name "description")
                                 (finding-criteria :target-type
                                  finding-criteria :required common-lisp:t
                                  :member-name "findingCriteria" :json-name
                                  "findingCriteria")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "name" :json-name
                                  "name")
                                 (position :target-type integer :member-name
                                  "position" :json-name "position")
                                 (tags :target-type tag-map :member-name "tags"
                                  :json-name "tags"))
                                (:shape-name "CreateFindingsFilterRequest"))

(smithy/sdk/shapes:define-output create-findings-filter-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "arn"
                                   :json-name "arn")
                                  (id :target-type string :member-name "id"
                                   :json-name "id"))
                                 (:shape-name "CreateFindingsFilterResponse"))

(smithy/sdk/shapes:define-input create-invitations-request common-lisp:nil
                                ((account-ids :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "accountIds" :json-name "accountIds")
                                 (disable-email-notification :target-type
                                  boolean :member-name
                                  "disableEmailNotification" :json-name
                                  "disableEmailNotification")
                                 (message :target-type string :member-name
                                  "message" :json-name "message"))
                                (:shape-name "CreateInvitationsRequest"))

(smithy/sdk/shapes:define-output create-invitations-response common-lisp:nil
                                 ((unprocessed-accounts :target-type
                                   list-of-unprocessed-account :member-name
                                   "unprocessedAccounts" :json-name
                                   "unprocessedAccounts"))
                                 (:shape-name "CreateInvitationsResponse"))

(smithy/sdk/shapes:define-input create-member-request common-lisp:nil
                                ((account :target-type account-detail :required
                                  common-lisp:t :member-name "account"
                                  :json-name "account")
                                 (tags :target-type tag-map :member-name "tags"
                                  :json-name "tags"))
                                (:shape-name "CreateMemberRequest"))

(smithy/sdk/shapes:define-output create-member-response common-lisp:nil
                                 ((arn :target-type string :member-name "arn"
                                   :json-name "arn"))
                                 (:shape-name "CreateMemberResponse"))

(smithy/sdk/shapes:define-input create-sample-findings-request common-lisp:nil
                                ((finding-types :target-type
                                  list-of-finding-type :member-name
                                  "findingTypes" :json-name "findingTypes"))
                                (:shape-name "CreateSampleFindingsRequest"))

(smithy/sdk/shapes:define-output create-sample-findings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateSampleFindingsResponse"))

(smithy/sdk/shapes:define-structure criteria-block-for-job common-lisp:nil
                                    ((and :target-type list-of-criteria-for-job
                                      :member-name "and" :json-name "and"))
                                    (:shape-name "CriteriaBlockForJob"))

(smithy/sdk/shapes:define-structure criteria-for-job common-lisp:nil
                                    ((simple-criterion :target-type
                                      simple-criterion-for-job :member-name
                                      "simpleCriterion" :json-name
                                      "simpleCriterion")
                                     (tag-criterion :target-type
                                      tag-criterion-for-job :member-name
                                      "tagCriterion" :json-name
                                      "tagCriterion"))
                                    (:shape-name "CriteriaForJob"))

(smithy/sdk/shapes:define-map criterion :key string :value
                              criterion-additional-properties)

(smithy/sdk/shapes:define-structure criterion-additional-properties
                                    common-lisp:nil
                                    ((eq :target-type list-of-string
                                      :member-name "eq" :json-name "eq")
                                     (eq-exact-match :target-type
                                      list-of-string :member-name
                                      "eqExactMatch" :json-name "eqExactMatch")
                                     (gt :target-type long :member-name "gt"
                                      :json-name "gt")
                                     (gte :target-type long :member-name "gte"
                                      :json-name "gte")
                                     (lt :target-type long :member-name "lt"
                                      :json-name "lt")
                                     (lte :target-type long :member-name "lte"
                                      :json-name "lte")
                                     (neq :target-type list-of-string
                                      :member-name "neq" :json-name "neq"))
                                    (:shape-name
                                     "CriterionAdditionalProperties"))

(smithy/sdk/shapes:define-enum currency
    common-lisp:nil
  (:usd "USD"))

(smithy/sdk/shapes:define-structure custom-data-identifier-summary
                                    common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "arn" :json-name "arn")
                                     (created-at :target-type timestamp-iso8601
                                      :member-name "createdAt" :json-name
                                      "createdAt")
                                     (description :target-type string
                                      :member-name "description" :json-name
                                      "description")
                                     (id :target-type string :member-name "id"
                                      :json-name "id")
                                     (name :target-type string :member-name
                                      "name" :json-name "name"))
                                    (:shape-name "CustomDataIdentifierSummary"))

(smithy/sdk/shapes:define-structure custom-data-identifiers common-lisp:nil
                                    ((detections :target-type custom-detections
                                      :member-name "detections" :json-name
                                      "detections")
                                     (total-count :target-type long
                                      :member-name "totalCount" :json-name
                                      "totalCount"))
                                    (:shape-name "CustomDataIdentifiers"))

(smithy/sdk/shapes:define-structure custom-detection common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "arn" :json-name "arn")
                                     (count :target-type long :member-name
                                      "count" :json-name "count")
                                     (name :target-type string :member-name
                                      "name" :json-name "name")
                                     (occurrences :target-type occurrences
                                      :member-name "occurrences" :json-name
                                      "occurrences"))
                                    (:shape-name "CustomDetection"))

(smithy/sdk/shapes:define-list custom-detections :member custom-detection)

(smithy/sdk/shapes:define-structure daily-schedule common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DailySchedule"))

(smithy/sdk/shapes:define-enum data-identifier-severity
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

(smithy/sdk/shapes:define-enum data-identifier-type
    common-lisp:nil
  (:custom "CUSTOM")
  (:managed "MANAGED"))

(smithy/sdk/shapes:define-enum day-of-week
    common-lisp:nil
  (:sunday "SUNDAY")
  (:monday "MONDAY")
  (:tuesday "TUESDAY")
  (:wednesday "WEDNESDAY")
  (:thursday "THURSDAY")
  (:friday "FRIDAY")
  (:saturday "SATURDAY"))

(smithy/sdk/shapes:define-input decline-invitations-request common-lisp:nil
                                ((account-ids :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "accountIds" :json-name "accountIds"))
                                (:shape-name "DeclineInvitationsRequest"))

(smithy/sdk/shapes:define-output decline-invitations-response common-lisp:nil
                                 ((unprocessed-accounts :target-type
                                   list-of-unprocessed-account :member-name
                                   "unprocessedAccounts" :json-name
                                   "unprocessedAccounts"))
                                 (:shape-name "DeclineInvitationsResponse"))

(smithy/sdk/shapes:define-structure default-detection common-lisp:nil
                                    ((count :target-type long :member-name
                                      "count" :json-name "count")
                                     (occurrences :target-type occurrences
                                      :member-name "occurrences" :json-name
                                      "occurrences")
                                     (type :target-type string :member-name
                                      "type" :json-name "type"))
                                    (:shape-name "DefaultDetection"))

(smithy/sdk/shapes:define-list default-detections :member default-detection)

(smithy/sdk/shapes:define-input delete-allow-list-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (ignore-job-checks :target-type string
                                  :member-name "ignoreJobChecks" :http-query
                                  "ignoreJobChecks"))
                                (:shape-name "DeleteAllowListRequest"))

(smithy/sdk/shapes:define-output delete-allow-list-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAllowListResponse"))

(smithy/sdk/shapes:define-input delete-custom-data-identifier-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteCustomDataIdentifierRequest"))

(smithy/sdk/shapes:define-output delete-custom-data-identifier-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteCustomDataIdentifierResponse"))

(smithy/sdk/shapes:define-input delete-findings-filter-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteFindingsFilterRequest"))

(smithy/sdk/shapes:define-output delete-findings-filter-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteFindingsFilterResponse"))

(smithy/sdk/shapes:define-input delete-invitations-request common-lisp:nil
                                ((account-ids :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "accountIds" :json-name "accountIds"))
                                (:shape-name "DeleteInvitationsRequest"))

(smithy/sdk/shapes:define-output delete-invitations-response common-lisp:nil
                                 ((unprocessed-accounts :target-type
                                   list-of-unprocessed-account :member-name
                                   "unprocessedAccounts" :json-name
                                   "unprocessedAccounts"))
                                 (:shape-name "DeleteInvitationsResponse"))

(smithy/sdk/shapes:define-input delete-member-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteMemberRequest"))

(smithy/sdk/shapes:define-output delete-member-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteMemberResponse"))

(smithy/sdk/shapes:define-input describe-buckets-request common-lisp:nil
                                ((criteria :target-type bucket-criteria
                                  :member-name "criteria" :json-name
                                  "criteria")
                                 (max-results :target-type integer :member-name
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :json-name "nextToken")
                                 (sort-criteria :target-type
                                  bucket-sort-criteria :member-name
                                  "sortCriteria" :json-name "sortCriteria"))
                                (:shape-name "DescribeBucketsRequest"))

(smithy/sdk/shapes:define-output describe-buckets-response common-lisp:nil
                                 ((buckets :target-type list-of-bucket-metadata
                                   :member-name "buckets" :json-name "buckets")
                                  (next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken"))
                                 (:shape-name "DescribeBucketsResponse"))

(smithy/sdk/shapes:define-input describe-classification-job-request
                                common-lisp:nil
                                ((job-id :target-type string :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeClassificationJobRequest"))

(smithy/sdk/shapes:define-output describe-classification-job-response
                                 common-lisp:nil
                                 ((allow-list-ids :target-type list-of-string
                                   :member-name "allowListIds" :json-name
                                   "allowListIds")
                                  (client-token :target-type string
                                   :member-name "clientToken" :json-name
                                   "clientToken")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "createdAt" :json-name
                                   "createdAt")
                                  (custom-data-identifier-ids :target-type
                                   list-of-string :member-name
                                   "customDataIdentifierIds" :json-name
                                   "customDataIdentifierIds")
                                  (description :target-type string :member-name
                                   "description" :json-name "description")
                                  (initial-run :target-type boolean
                                   :member-name "initialRun" :json-name
                                   "initialRun")
                                  (job-arn :target-type string :member-name
                                   "jobArn" :json-name "jobArn")
                                  (job-id :target-type string :member-name
                                   "jobId" :json-name "jobId")
                                  (job-status :target-type job-status
                                   :member-name "jobStatus" :json-name
                                   "jobStatus")
                                  (job-type :target-type job-type :member-name
                                   "jobType" :json-name "jobType")
                                  (last-run-error-status :target-type
                                   last-run-error-status :member-name
                                   "lastRunErrorStatus" :json-name
                                   "lastRunErrorStatus")
                                  (last-run-time :target-type timestamp-iso8601
                                   :member-name "lastRunTime" :json-name
                                   "lastRunTime")
                                  (managed-data-identifier-ids :target-type
                                   list-of-string :member-name
                                   "managedDataIdentifierIds" :json-name
                                   "managedDataIdentifierIds")
                                  (managed-data-identifier-selector
                                   :target-type
                                   managed-data-identifier-selector
                                   :member-name "managedDataIdentifierSelector"
                                   :json-name "managedDataIdentifierSelector")
                                  (name :target-type string :member-name "name"
                                   :json-name "name")
                                  (s3job-definition :target-type
                                   s3job-definition :member-name
                                   "s3JobDefinition" :json-name
                                   "s3JobDefinition")
                                  (sampling-percentage :target-type integer
                                   :member-name "samplingPercentage" :json-name
                                   "samplingPercentage")
                                  (schedule-frequency :target-type
                                   job-schedule-frequency :member-name
                                   "scheduleFrequency" :json-name
                                   "scheduleFrequency")
                                  (statistics :target-type statistics
                                   :member-name "statistics" :json-name
                                   "statistics")
                                  (tags :target-type tag-map :member-name
                                   "tags" :json-name "tags")
                                  (user-paused-details :target-type
                                   user-paused-details :member-name
                                   "userPausedDetails" :json-name
                                   "userPausedDetails"))
                                 (:shape-name
                                  "DescribeClassificationJobResponse"))

(smithy/sdk/shapes:define-input describe-organization-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DescribeOrganizationConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-organization-configuration-response
                                 common-lisp:nil
                                 ((auto-enable :target-type boolean
                                   :member-name "autoEnable" :json-name
                                   "autoEnable")
                                  (max-account-limit-reached :target-type
                                   boolean :member-name
                                   "maxAccountLimitReached" :json-name
                                   "maxAccountLimitReached"))
                                 (:shape-name
                                  "DescribeOrganizationConfigurationResponse"))

(smithy/sdk/shapes:define-structure detected-data-details common-lisp:nil
                                    ((value :target-type string-min1max128
                                      :required common-lisp:t :member-name
                                      "value" :json-name "value"))
                                    (:shape-name "DetectedDataDetails"))

(smithy/sdk/shapes:define-structure detection common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "arn" :json-name "arn")
                                     (count :target-type long :member-name
                                      "count" :json-name "count")
                                     (id :target-type string :member-name "id"
                                      :json-name "id")
                                     (name :target-type string :member-name
                                      "name" :json-name "name")
                                     (suppressed :target-type boolean
                                      :member-name "suppressed" :json-name
                                      "suppressed")
                                     (type :target-type data-identifier-type
                                      :member-name "type" :json-name "type"))
                                    (:shape-name "Detection"))

(smithy/sdk/shapes:define-input disable-macie-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DisableMacieRequest"))

(smithy/sdk/shapes:define-output disable-macie-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisableMacieResponse"))

(smithy/sdk/shapes:define-input disable-organization-admin-account-request
                                common-lisp:nil
                                ((admin-account-id :target-type string
                                  :required common-lisp:t :member-name
                                  "adminAccountId" :http-query
                                  "adminAccountId"))
                                (:shape-name
                                 "DisableOrganizationAdminAccountRequest"))

(smithy/sdk/shapes:define-output disable-organization-admin-account-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisableOrganizationAdminAccountResponse"))

(smithy/sdk/shapes:define-input disassociate-from-administrator-account-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DisassociateFromAdministratorAccountRequest"))

(smithy/sdk/shapes:define-output
 disassociate-from-administrator-account-response common-lisp:nil
 common-lisp:nil (:shape-name "DisassociateFromAdministratorAccountResponse"))

(smithy/sdk/shapes:define-input disassociate-from-master-account-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DisassociateFromMasterAccountRequest"))

(smithy/sdk/shapes:define-output disassociate-from-master-account-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateFromMasterAccountResponse"))

(smithy/sdk/shapes:define-input disassociate-member-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DisassociateMemberRequest"))

(smithy/sdk/shapes:define-output disassociate-member-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisassociateMemberResponse"))

(smithy/sdk/shapes:define-structure domain-details common-lisp:nil
                                    ((domain-name :target-type string
                                      :member-name "domainName" :json-name
                                      "domainName"))
                                    (:shape-name "DomainDetails"))

(smithy/sdk/shapes:define-enum effective-permission
    common-lisp:nil
  (:public "PUBLIC")
  (:not-public "NOT_PUBLIC")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-input enable-macie-request common-lisp:nil
                                ((client-token :target-type string :member-name
                                  "clientToken" :json-name "clientToken")
                                 (finding-publishing-frequency :target-type
                                  finding-publishing-frequency :member-name
                                  "findingPublishingFrequency" :json-name
                                  "findingPublishingFrequency")
                                 (status :target-type macie-status :member-name
                                  "status" :json-name "status"))
                                (:shape-name "EnableMacieRequest"))

(smithy/sdk/shapes:define-output enable-macie-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "EnableMacieResponse"))

(smithy/sdk/shapes:define-input enable-organization-admin-account-request
                                common-lisp:nil
                                ((admin-account-id :target-type string
                                  :required common-lisp:t :member-name
                                  "adminAccountId" :json-name "adminAccountId")
                                 (client-token :target-type string :member-name
                                  "clientToken" :json-name "clientToken"))
                                (:shape-name
                                 "EnableOrganizationAdminAccountRequest"))

(smithy/sdk/shapes:define-output enable-organization-admin-account-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "EnableOrganizationAdminAccountResponse"))

(smithy/sdk/shapes:define-enum encryption-type
    common-lisp:nil
  (:none "NONE")
  (:aes256 "AES256")
  (:aws-kms "aws:kms")
  (:unknown "UNKNOWN")
  (:aws-kms-dsse "aws:kms:dsse"))

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:client-error "ClientError")
  (:internal-error "InternalError"))

(smithy/sdk/shapes:define-structure federated-user common-lisp:nil
                                    ((access-key-id :target-type string
                                      :member-name "accessKeyId" :json-name
                                      "accessKeyId")
                                     (account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (arn :target-type string :member-name
                                      "arn" :json-name "arn")
                                     (principal-id :target-type string
                                      :member-name "principalId" :json-name
                                      "principalId")
                                     (session-context :target-type
                                      session-context :member-name
                                      "sessionContext" :json-name
                                      "sessionContext"))
                                    (:shape-name "FederatedUser"))

(smithy/sdk/shapes:define-structure finding common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (archived :target-type boolean
                                      :member-name "archived" :json-name
                                      "archived")
                                     (category :target-type finding-category
                                      :member-name "category" :json-name
                                      "category")
                                     (classification-details :target-type
                                      classification-details :member-name
                                      "classificationDetails" :json-name
                                      "classificationDetails")
                                     (count :target-type long :member-name
                                      "count" :json-name "count")
                                     (created-at :target-type timestamp-iso8601
                                      :member-name "createdAt" :json-name
                                      "createdAt")
                                     (description :target-type string
                                      :member-name "description" :json-name
                                      "description")
                                     (id :target-type string :member-name "id"
                                      :json-name "id")
                                     (partition :target-type string
                                      :member-name "partition" :json-name
                                      "partition")
                                     (policy-details :target-type
                                      policy-details :member-name
                                      "policyDetails" :json-name
                                      "policyDetails")
                                     (region :target-type string :member-name
                                      "region" :json-name "region")
                                     (resources-affected :target-type
                                      resources-affected :member-name
                                      "resourcesAffected" :json-name
                                      "resourcesAffected")
                                     (sample :target-type boolean :member-name
                                      "sample" :json-name "sample")
                                     (schema-version :target-type string
                                      :member-name "schemaVersion" :json-name
                                      "schemaVersion")
                                     (severity :target-type severity
                                      :member-name "severity" :json-name
                                      "severity")
                                     (title :target-type string :member-name
                                      "title" :json-name "title")
                                     (type :target-type finding-type
                                      :member-name "type" :json-name "type")
                                     (updated-at :target-type timestamp-iso8601
                                      :member-name "updatedAt" :json-name
                                      "updatedAt"))
                                    (:shape-name "Finding"))

(smithy/sdk/shapes:define-structure finding-action common-lisp:nil
                                    ((action-type :target-type
                                      finding-action-type :member-name
                                      "actionType" :json-name "actionType")
                                     (api-call-details :target-type
                                      api-call-details :member-name
                                      "apiCallDetails" :json-name
                                      "apiCallDetails"))
                                    (:shape-name "FindingAction"))

(smithy/sdk/shapes:define-enum finding-action-type
    common-lisp:nil
  (:aws-api-call "AWS_API_CALL"))

(smithy/sdk/shapes:define-structure finding-actor common-lisp:nil
                                    ((domain-details :target-type
                                      domain-details :member-name
                                      "domainDetails" :json-name
                                      "domainDetails")
                                     (ip-address-details :target-type
                                      ip-address-details :member-name
                                      "ipAddressDetails" :json-name
                                      "ipAddressDetails")
                                     (user-identity :target-type user-identity
                                      :member-name "userIdentity" :json-name
                                      "userIdentity"))
                                    (:shape-name "FindingActor"))

(smithy/sdk/shapes:define-enum finding-category
    common-lisp:nil
  (:classification "CLASSIFICATION")
  (:policy "POLICY"))

(smithy/sdk/shapes:define-structure finding-criteria common-lisp:nil
                                    ((criterion :target-type criterion
                                      :member-name "criterion" :json-name
                                      "criterion"))
                                    (:shape-name "FindingCriteria"))

(smithy/sdk/shapes:define-enum finding-publishing-frequency
    common-lisp:nil
  (:fifteen-minutes "FIFTEEN_MINUTES")
  (:one-hour "ONE_HOUR")
  (:six-hours "SIX_HOURS"))

(smithy/sdk/shapes:define-enum finding-statistics-sort-attribute-name
    common-lisp:nil
  (:group-key "groupKey")
  (:count "count"))

(smithy/sdk/shapes:define-structure finding-statistics-sort-criteria
                                    common-lisp:nil
                                    ((attribute-name :target-type
                                      finding-statistics-sort-attribute-name
                                      :member-name "attributeName" :json-name
                                      "attributeName")
                                     (order-by :target-type order-by
                                      :member-name "orderBy" :json-name
                                      "orderBy"))
                                    (:shape-name
                                     "FindingStatisticsSortCriteria"))

(smithy/sdk/shapes:define-enum finding-type
    common-lisp:nil
  (:sensitive-data-s3object-multiple "SensitiveData:S3Object/Multiple")
  (:sensitive-data-s3object-financial "SensitiveData:S3Object/Financial")
  (:sensitive-data-s3object-personal "SensitiveData:S3Object/Personal")
  (:sensitive-data-s3object-credentials "SensitiveData:S3Object/Credentials")
  (:sensitive-data-s3object-custom-identifier
   "SensitiveData:S3Object/CustomIdentifier")
  (:policy-iamuser-s3bucket-public "Policy:IAMUser/S3BucketPublic")
  (:policy-iamuser-s3bucket-shared-externally
   "Policy:IAMUser/S3BucketSharedExternally")
  (:policy-iamuser-s3bucket-replicated-externally
   "Policy:IAMUser/S3BucketReplicatedExternally")
  (:policy-iamuser-s3bucket-encryption-disabled
   "Policy:IAMUser/S3BucketEncryptionDisabled")
  (:policy-iamuser-s3block-public-access-disabled
   "Policy:IAMUser/S3BlockPublicAccessDisabled")
  (:policy-iamuser-s3bucket-shared-with-cloud-front
   "Policy:IAMUser/S3BucketSharedWithCloudFront"))

(smithy/sdk/shapes:define-enum findings-filter-action
    common-lisp:nil
  (:archive "ARCHIVE")
  (:noop "NOOP"))

(smithy/sdk/shapes:define-structure findings-filter-list-item common-lisp:nil
                                    ((action :target-type
                                      findings-filter-action :member-name
                                      "action" :json-name "action")
                                     (arn :target-type string :member-name
                                      "arn" :json-name "arn")
                                     (id :target-type string :member-name "id"
                                      :json-name "id")
                                     (name :target-type string :member-name
                                      "name" :json-name "name")
                                     (tags :target-type tag-map :member-name
                                      "tags" :json-name "tags"))
                                    (:shape-name "FindingsFilterListItem"))

(smithy/sdk/shapes:define-input get-administrator-account-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "GetAdministratorAccountRequest"))

(smithy/sdk/shapes:define-output get-administrator-account-response
                                 common-lisp:nil
                                 ((administrator :target-type invitation
                                   :member-name "administrator" :json-name
                                   "administrator"))
                                 (:shape-name
                                  "GetAdministratorAccountResponse"))

(smithy/sdk/shapes:define-input get-allow-list-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetAllowListRequest"))

(smithy/sdk/shapes:define-output get-allow-list-response common-lisp:nil
                                 ((arn :target-type
                                   string-min71max89pattern-arn-aws-aws-cn-aws-us-gov-macie2az19920d12allow-list-az0922
                                   :member-name "arn" :json-name "arn")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "createdAt" :json-name
                                   "createdAt")
                                  (criteria :target-type allow-list-criteria
                                   :member-name "criteria" :json-name
                                   "criteria")
                                  (description :target-type
                                   string-min1max512pattern-ss :member-name
                                   "description" :json-name "description")
                                  (id :target-type
                                   string-min22max22pattern-az0922 :member-name
                                   "id" :json-name "id")
                                  (name :target-type string-min1max128pattern
                                   :member-name "name" :json-name "name")
                                  (status :target-type allow-list-status
                                   :member-name "status" :json-name "status")
                                  (tags :target-type tag-map :member-name
                                   "tags" :json-name "tags")
                                  (updated-at :target-type timestamp-iso8601
                                   :member-name "updatedAt" :json-name
                                   "updatedAt"))
                                 (:shape-name "GetAllowListResponse"))

(smithy/sdk/shapes:define-input get-automated-discovery-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetAutomatedDiscoveryConfigurationRequest"))

(smithy/sdk/shapes:define-output get-automated-discovery-configuration-response
                                 common-lisp:nil
                                 ((auto-enable-organization-members
                                   :target-type auto-enable-mode :member-name
                                   "autoEnableOrganizationMembers" :json-name
                                   "autoEnableOrganizationMembers")
                                  (classification-scope-id :target-type
                                   classification-scope-id :member-name
                                   "classificationScopeId" :json-name
                                   "classificationScopeId")
                                  (disabled-at :target-type timestamp
                                   :member-name "disabledAt" :json-name
                                   "disabledAt")
                                  (first-enabled-at :target-type timestamp
                                   :member-name "firstEnabledAt" :json-name
                                   "firstEnabledAt")
                                  (last-updated-at :target-type timestamp
                                   :member-name "lastUpdatedAt" :json-name
                                   "lastUpdatedAt")
                                  (sensitivity-inspection-template-id
                                   :target-type
                                   sensitivity-inspection-template-id
                                   :member-name
                                   "sensitivityInspectionTemplateId" :json-name
                                   "sensitivityInspectionTemplateId")
                                  (status :target-type
                                   automated-discovery-status :member-name
                                   "status" :json-name "status"))
                                 (:shape-name
                                  "GetAutomatedDiscoveryConfigurationResponse"))

(smithy/sdk/shapes:define-input get-bucket-statistics-request common-lisp:nil
                                ((account-id :target-type string :member-name
                                  "accountId" :json-name "accountId"))
                                (:shape-name "GetBucketStatisticsRequest"))

(smithy/sdk/shapes:define-output get-bucket-statistics-response common-lisp:nil
                                 ((bucket-count :target-type long :member-name
                                   "bucketCount" :json-name "bucketCount")
                                  (bucket-count-by-effective-permission
                                   :target-type
                                   bucket-count-by-effective-permission
                                   :member-name
                                   "bucketCountByEffectivePermission"
                                   :json-name
                                   "bucketCountByEffectivePermission")
                                  (bucket-count-by-encryption-type :target-type
                                   bucket-count-by-encryption-type :member-name
                                   "bucketCountByEncryptionType" :json-name
                                   "bucketCountByEncryptionType")
                                  (bucket-count-by-object-encryption-requirement
                                   :target-type
                                   bucket-count-policy-allows-unencrypted-object-uploads
                                   :member-name
                                   "bucketCountByObjectEncryptionRequirement"
                                   :json-name
                                   "bucketCountByObjectEncryptionRequirement")
                                  (bucket-count-by-shared-access-type
                                   :target-type
                                   bucket-count-by-shared-access-type
                                   :member-name "bucketCountBySharedAccessType"
                                   :json-name "bucketCountBySharedAccessType")
                                  (bucket-statistics-by-sensitivity
                                   :target-type
                                   bucket-statistics-by-sensitivity
                                   :member-name "bucketStatisticsBySensitivity"
                                   :json-name "bucketStatisticsBySensitivity")
                                  (classifiable-object-count :target-type long
                                   :member-name "classifiableObjectCount"
                                   :json-name "classifiableObjectCount")
                                  (classifiable-size-in-bytes :target-type long
                                   :member-name "classifiableSizeInBytes"
                                   :json-name "classifiableSizeInBytes")
                                  (last-updated :target-type timestamp-iso8601
                                   :member-name "lastUpdated" :json-name
                                   "lastUpdated")
                                  (object-count :target-type long :member-name
                                   "objectCount" :json-name "objectCount")
                                  (size-in-bytes :target-type long :member-name
                                   "sizeInBytes" :json-name "sizeInBytes")
                                  (size-in-bytes-compressed :target-type long
                                   :member-name "sizeInBytesCompressed"
                                   :json-name "sizeInBytesCompressed")
                                  (unclassifiable-object-count :target-type
                                   object-level-statistics :member-name
                                   "unclassifiableObjectCount" :json-name
                                   "unclassifiableObjectCount")
                                  (unclassifiable-object-size-in-bytes
                                   :target-type object-level-statistics
                                   :member-name
                                   "unclassifiableObjectSizeInBytes" :json-name
                                   "unclassifiableObjectSizeInBytes"))
                                 (:shape-name "GetBucketStatisticsResponse"))

(smithy/sdk/shapes:define-input get-classification-export-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetClassificationExportConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-classification-export-configuration-response common-lisp:nil
 ((configuration :target-type classification-export-configuration :member-name
   "configuration" :json-name "configuration"))
 (:shape-name "GetClassificationExportConfigurationResponse"))

(smithy/sdk/shapes:define-input get-classification-scope-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetClassificationScopeRequest"))

(smithy/sdk/shapes:define-output get-classification-scope-response
                                 common-lisp:nil
                                 ((id :target-type classification-scope-id
                                   :member-name "id" :json-name "id")
                                  (name :target-type classification-scope-name
                                   :member-name "name" :json-name "name")
                                  (s3 :target-type s3classification-scope
                                   :member-name "s3" :json-name "s3"))
                                 (:shape-name "GetClassificationScopeResponse"))

(smithy/sdk/shapes:define-input get-custom-data-identifier-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCustomDataIdentifierRequest"))

(smithy/sdk/shapes:define-output get-custom-data-identifier-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "arn"
                                   :json-name "arn")
                                  (created-at :target-type timestamp-iso8601
                                   :member-name "createdAt" :json-name
                                   "createdAt")
                                  (deleted :target-type boolean :member-name
                                   "deleted" :json-name "deleted")
                                  (description :target-type string :member-name
                                   "description" :json-name "description")
                                  (id :target-type string :member-name "id"
                                   :json-name "id")
                                  (ignore-words :target-type list-of-string
                                   :member-name "ignoreWords" :json-name
                                   "ignoreWords")
                                  (keywords :target-type list-of-string
                                   :member-name "keywords" :json-name
                                   "keywords")
                                  (maximum-match-distance :target-type integer
                                   :member-name "maximumMatchDistance"
                                   :json-name "maximumMatchDistance")
                                  (name :target-type string :member-name "name"
                                   :json-name "name")
                                  (regex :target-type string :member-name
                                   "regex" :json-name "regex")
                                  (severity-levels :target-type
                                   severity-level-list :member-name
                                   "severityLevels" :json-name
                                   "severityLevels")
                                  (tags :target-type tag-map :member-name
                                   "tags" :json-name "tags"))
                                 (:shape-name
                                  "GetCustomDataIdentifierResponse"))

(smithy/sdk/shapes:define-input get-finding-statistics-request common-lisp:nil
                                ((finding-criteria :target-type
                                  finding-criteria :member-name
                                  "findingCriteria" :json-name
                                  "findingCriteria")
                                 (group-by :target-type group-by :required
                                  common-lisp:t :member-name "groupBy"
                                  :json-name "groupBy")
                                 (size :target-type integer :member-name "size"
                                  :json-name "size")
                                 (sort-criteria :target-type
                                  finding-statistics-sort-criteria :member-name
                                  "sortCriteria" :json-name "sortCriteria"))
                                (:shape-name "GetFindingStatisticsRequest"))

(smithy/sdk/shapes:define-output get-finding-statistics-response
                                 common-lisp:nil
                                 ((counts-by-group :target-type
                                   list-of-group-count :member-name
                                   "countsByGroup" :json-name "countsByGroup"))
                                 (:shape-name "GetFindingStatisticsResponse"))

(smithy/sdk/shapes:define-input get-findings-filter-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetFindingsFilterRequest"))

(smithy/sdk/shapes:define-output get-findings-filter-response common-lisp:nil
                                 ((action :target-type findings-filter-action
                                   :member-name "action" :json-name "action")
                                  (arn :target-type string :member-name "arn"
                                   :json-name "arn")
                                  (description :target-type string :member-name
                                   "description" :json-name "description")
                                  (finding-criteria :target-type
                                   finding-criteria :member-name
                                   "findingCriteria" :json-name
                                   "findingCriteria")
                                  (id :target-type string :member-name "id"
                                   :json-name "id")
                                  (name :target-type string :member-name "name"
                                   :json-name "name")
                                  (position :target-type integer :member-name
                                   "position" :json-name "position")
                                  (tags :target-type tag-map :member-name
                                   "tags" :json-name "tags"))
                                 (:shape-name "GetFindingsFilterResponse"))

(smithy/sdk/shapes:define-input get-findings-publication-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetFindingsPublicationConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-findings-publication-configuration-response common-lisp:nil
 ((security-hub-configuration :target-type security-hub-configuration
   :member-name "securityHubConfiguration" :json-name
   "securityHubConfiguration"))
 (:shape-name "GetFindingsPublicationConfigurationResponse"))

(smithy/sdk/shapes:define-input get-findings-request common-lisp:nil
                                ((finding-ids :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "findingIds" :json-name "findingIds")
                                 (sort-criteria :target-type sort-criteria
                                  :member-name "sortCriteria" :json-name
                                  "sortCriteria"))
                                (:shape-name "GetFindingsRequest"))

(smithy/sdk/shapes:define-output get-findings-response common-lisp:nil
                                 ((findings :target-type list-of-finding
                                   :member-name "findings" :json-name
                                   "findings"))
                                 (:shape-name "GetFindingsResponse"))

(smithy/sdk/shapes:define-input get-invitations-count-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetInvitationsCountRequest"))

(smithy/sdk/shapes:define-output get-invitations-count-response common-lisp:nil
                                 ((invitations-count :target-type long
                                   :member-name "invitationsCount" :json-name
                                   "invitationsCount"))
                                 (:shape-name "GetInvitationsCountResponse"))

(smithy/sdk/shapes:define-input get-macie-session-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetMacieSessionRequest"))

(smithy/sdk/shapes:define-output get-macie-session-response common-lisp:nil
                                 ((created-at :target-type timestamp-iso8601
                                   :member-name "createdAt" :json-name
                                   "createdAt")
                                  (finding-publishing-frequency :target-type
                                   finding-publishing-frequency :member-name
                                   "findingPublishingFrequency" :json-name
                                   "findingPublishingFrequency")
                                  (service-role :target-type string
                                   :member-name "serviceRole" :json-name
                                   "serviceRole")
                                  (status :target-type macie-status
                                   :member-name "status" :json-name "status")
                                  (updated-at :target-type timestamp-iso8601
                                   :member-name "updatedAt" :json-name
                                   "updatedAt"))
                                 (:shape-name "GetMacieSessionResponse"))

(smithy/sdk/shapes:define-input get-master-account-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetMasterAccountRequest"))

(smithy/sdk/shapes:define-output get-master-account-response common-lisp:nil
                                 ((master :target-type invitation :member-name
                                   "master" :json-name "master"))
                                 (:shape-name "GetMasterAccountResponse"))

(smithy/sdk/shapes:define-input get-member-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetMemberRequest"))

(smithy/sdk/shapes:define-output get-member-response common-lisp:nil
                                 ((account-id :target-type string :member-name
                                   "accountId" :json-name "accountId")
                                  (administrator-account-id :target-type string
                                   :member-name "administratorAccountId"
                                   :json-name "administratorAccountId")
                                  (arn :target-type string :member-name "arn"
                                   :json-name "arn")
                                  (email :target-type string :member-name
                                   "email" :json-name "email")
                                  (invited-at :target-type timestamp-iso8601
                                   :member-name "invitedAt" :json-name
                                   "invitedAt")
                                  (master-account-id :target-type string
                                   :member-name "masterAccountId" :json-name
                                   "masterAccountId")
                                  (relationship-status :target-type
                                   relationship-status :member-name
                                   "relationshipStatus" :json-name
                                   "relationshipStatus")
                                  (tags :target-type tag-map :member-name
                                   "tags" :json-name "tags")
                                  (updated-at :target-type timestamp-iso8601
                                   :member-name "updatedAt" :json-name
                                   "updatedAt"))
                                 (:shape-name "GetMemberResponse"))

(smithy/sdk/shapes:define-input get-resource-profile-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-query "resourceArn"))
                                (:shape-name "GetResourceProfileRequest"))

(smithy/sdk/shapes:define-output get-resource-profile-response common-lisp:nil
                                 ((profile-updated-at :target-type
                                   timestamp-iso8601 :member-name
                                   "profileUpdatedAt" :json-name
                                   "profileUpdatedAt")
                                  (sensitivity-score :target-type integer
                                   :member-name "sensitivityScore" :json-name
                                   "sensitivityScore")
                                  (sensitivity-score-overridden :target-type
                                   boolean :member-name
                                   "sensitivityScoreOverridden" :json-name
                                   "sensitivityScoreOverridden")
                                  (statistics :target-type resource-statistics
                                   :member-name "statistics" :json-name
                                   "statistics"))
                                 (:shape-name "GetResourceProfileResponse"))

(smithy/sdk/shapes:define-input get-reveal-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "GetRevealConfigurationRequest"))

(smithy/sdk/shapes:define-output get-reveal-configuration-response
                                 common-lisp:nil
                                 ((configuration :target-type
                                   reveal-configuration :member-name
                                   "configuration" :json-name "configuration")
                                  (retrieval-configuration :target-type
                                   retrieval-configuration :member-name
                                   "retrievalConfiguration" :json-name
                                   "retrievalConfiguration"))
                                 (:shape-name "GetRevealConfigurationResponse"))

(smithy/sdk/shapes:define-input
 get-sensitive-data-occurrences-availability-request common-lisp:nil
 ((finding-id :target-type string :required common-lisp:t :member-name
   "findingId" :http-label common-lisp:t))
 (:shape-name "GetSensitiveDataOccurrencesAvailabilityRequest"))

(smithy/sdk/shapes:define-output
 get-sensitive-data-occurrences-availability-response common-lisp:nil
 ((code :target-type availability-code :member-name "code" :json-name "code")
  (reasons :target-type list-of-unavailability-reason-code :member-name
   "reasons" :json-name "reasons"))
 (:shape-name "GetSensitiveDataOccurrencesAvailabilityResponse"))

(smithy/sdk/shapes:define-input get-sensitive-data-occurrences-request
                                common-lisp:nil
                                ((finding-id :target-type string :required
                                  common-lisp:t :member-name "findingId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetSensitiveDataOccurrencesRequest"))

(smithy/sdk/shapes:define-output get-sensitive-data-occurrences-response
                                 common-lisp:nil
                                 ((error :target-type string :member-name
                                   "error" :json-name "error")
                                  (sensitive-data-occurrences :target-type
                                   sensitive-data-occurrences :member-name
                                   "sensitiveDataOccurrences" :json-name
                                   "sensitiveDataOccurrences")
                                  (status :target-type reveal-request-status
                                   :member-name "status" :json-name "status"))
                                 (:shape-name
                                  "GetSensitiveDataOccurrencesResponse"))

(smithy/sdk/shapes:define-input get-sensitivity-inspection-template-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetSensitivityInspectionTemplateRequest"))

(smithy/sdk/shapes:define-output get-sensitivity-inspection-template-response
                                 common-lisp:nil
                                 ((description :target-type string :member-name
                                   "description" :json-name "description")
                                  (excludes :target-type
                                   sensitivity-inspection-template-excludes
                                   :member-name "excludes" :json-name
                                   "excludes")
                                  (includes :target-type
                                   sensitivity-inspection-template-includes
                                   :member-name "includes" :json-name
                                   "includes")
                                  (name :target-type string :member-name "name"
                                   :json-name "name")
                                  (sensitivity-inspection-template-id
                                   :target-type
                                   sensitivity-inspection-template-id
                                   :member-name
                                   "sensitivityInspectionTemplateId" :json-name
                                   "sensitivityInspectionTemplateId"))
                                 (:shape-name
                                  "GetSensitivityInspectionTemplateResponse"))

(smithy/sdk/shapes:define-input get-usage-statistics-request common-lisp:nil
                                ((filter-by :target-type
                                  list-of-usage-statistics-filter :member-name
                                  "filterBy" :json-name "filterBy")
                                 (max-results :target-type integer :member-name
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :json-name "nextToken")
                                 (sort-by :target-type usage-statistics-sort-by
                                  :member-name "sortBy" :json-name "sortBy")
                                 (time-range :target-type time-range
                                  :member-name "timeRange" :json-name
                                  "timeRange"))
                                (:shape-name "GetUsageStatisticsRequest"))

(smithy/sdk/shapes:define-output get-usage-statistics-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken")
                                  (records :target-type list-of-usage-record
                                   :member-name "records" :json-name "records")
                                  (time-range :target-type time-range
                                   :member-name "timeRange" :json-name
                                   "timeRange"))
                                 (:shape-name "GetUsageStatisticsResponse"))

(smithy/sdk/shapes:define-input get-usage-totals-request common-lisp:nil
                                ((time-range :target-type string :member-name
                                  "timeRange" :http-query "timeRange"))
                                (:shape-name "GetUsageTotalsRequest"))

(smithy/sdk/shapes:define-output get-usage-totals-response common-lisp:nil
                                 ((time-range :target-type time-range
                                   :member-name "timeRange" :json-name
                                   "timeRange")
                                  (usage-totals :target-type
                                   list-of-usage-total :member-name
                                   "usageTotals" :json-name "usageTotals"))
                                 (:shape-name "GetUsageTotalsResponse"))

(smithy/sdk/shapes:define-enum group-by
    common-lisp:nil
  (:resources-affected-s3bucket-name "resourcesAffected.s3Bucket.name")
  (:type "type")
  (:classification-details-job-id "classificationDetails.jobId")
  (:severity-description "severity.description"))

(smithy/sdk/shapes:define-structure group-count common-lisp:nil
                                    ((count :target-type long :member-name
                                      "count" :json-name "count")
                                     (group-key :target-type string
                                      :member-name "groupKey" :json-name
                                      "groupKey"))
                                    (:shape-name "GroupCount"))

(smithy/sdk/shapes:define-structure iam-user common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (arn :target-type string :member-name
                                      "arn" :json-name "arn")
                                     (principal-id :target-type string
                                      :member-name "principalId" :json-name
                                      "principalId")
                                     (user-name :target-type string
                                      :member-name "userName" :json-name
                                      "userName"))
                                    (:shape-name "IamUser"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message" :json-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure invitation common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (invitation-id :target-type string
                                      :member-name "invitationId" :json-name
                                      "invitationId")
                                     (invited-at :target-type timestamp-iso8601
                                      :member-name "invitedAt" :json-name
                                      "invitedAt")
                                     (relationship-status :target-type
                                      relationship-status :member-name
                                      "relationshipStatus" :json-name
                                      "relationshipStatus"))
                                    (:shape-name "Invitation"))

(smithy/sdk/shapes:define-structure ip-address-details common-lisp:nil
                                    ((ip-address-v4 :target-type string
                                      :member-name "ipAddressV4" :json-name
                                      "ipAddressV4")
                                     (ip-city :target-type ip-city :member-name
                                      "ipCity" :json-name "ipCity")
                                     (ip-country :target-type ip-country
                                      :member-name "ipCountry" :json-name
                                      "ipCountry")
                                     (ip-geo-location :target-type
                                      ip-geo-location :member-name
                                      "ipGeoLocation" :json-name
                                      "ipGeoLocation")
                                     (ip-owner :target-type ip-owner
                                      :member-name "ipOwner" :json-name
                                      "ipOwner"))
                                    (:shape-name "IpAddressDetails"))

(smithy/sdk/shapes:define-structure ip-city common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name" :json-name "name"))
                                    (:shape-name "IpCity"))

(smithy/sdk/shapes:define-structure ip-country common-lisp:nil
                                    ((code :target-type string :member-name
                                      "code" :json-name "code")
                                     (name :target-type string :member-name
                                      "name" :json-name "name"))
                                    (:shape-name "IpCountry"))

(smithy/sdk/shapes:define-structure ip-geo-location common-lisp:nil
                                    ((lat :target-type double :member-name
                                      "lat" :json-name "lat")
                                     (lon :target-type double :member-name
                                      "lon" :json-name "lon"))
                                    (:shape-name "IpGeoLocation"))

(smithy/sdk/shapes:define-structure ip-owner common-lisp:nil
                                    ((asn :target-type string :member-name
                                      "asn" :json-name "asn")
                                     (asn-org :target-type string :member-name
                                      "asnOrg" :json-name "asnOrg")
                                     (isp :target-type string :member-name
                                      "isp" :json-name "isp")
                                     (org :target-type string :member-name
                                      "org" :json-name "org"))
                                    (:shape-name "IpOwner"))

(smithy/sdk/shapes:define-enum is-defined-in-job
    common-lisp:nil
  (:true "TRUE")
  (:false "FALSE")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-enum is-monitored-by-job
    common-lisp:nil
  (:true "TRUE")
  (:false "FALSE")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-enum job-comparator
    common-lisp:nil
  (:eq "EQ")
  (:gt "GT")
  (:gte "GTE")
  (:lt "LT")
  (:lte "LTE")
  (:ne "NE")
  (:contains "CONTAINS")
  (:starts-with "STARTS_WITH"))

(smithy/sdk/shapes:define-structure job-details common-lisp:nil
                                    ((is-defined-in-job :target-type
                                      is-defined-in-job :member-name
                                      "isDefinedInJob" :json-name
                                      "isDefinedInJob")
                                     (is-monitored-by-job :target-type
                                      is-monitored-by-job :member-name
                                      "isMonitoredByJob" :json-name
                                      "isMonitoredByJob")
                                     (last-job-id :target-type string
                                      :member-name "lastJobId" :json-name
                                      "lastJobId")
                                     (last-job-run-time :target-type
                                      timestamp-iso8601 :member-name
                                      "lastJobRunTime" :json-name
                                      "lastJobRunTime"))
                                    (:shape-name "JobDetails"))

(smithy/sdk/shapes:define-structure job-schedule-frequency common-lisp:nil
                                    ((daily-schedule :target-type
                                      daily-schedule :member-name
                                      "dailySchedule" :json-name
                                      "dailySchedule")
                                     (monthly-schedule :target-type
                                      monthly-schedule :member-name
                                      "monthlySchedule" :json-name
                                      "monthlySchedule")
                                     (weekly-schedule :target-type
                                      weekly-schedule :member-name
                                      "weeklySchedule" :json-name
                                      "weeklySchedule"))
                                    (:shape-name "JobScheduleFrequency"))

(smithy/sdk/shapes:define-structure job-scope-term common-lisp:nil
                                    ((simple-scope-term :target-type
                                      simple-scope-term :member-name
                                      "simpleScopeTerm" :json-name
                                      "simpleScopeTerm")
                                     (tag-scope-term :target-type
                                      tag-scope-term :member-name
                                      "tagScopeTerm" :json-name
                                      "tagScopeTerm"))
                                    (:shape-name "JobScopeTerm"))

(smithy/sdk/shapes:define-structure job-scoping-block common-lisp:nil
                                    ((and :target-type list-of-job-scope-term
                                      :member-name "and" :json-name "and"))
                                    (:shape-name "JobScopingBlock"))

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:running "RUNNING")
  (:paused "PAUSED")
  (:cancelled "CANCELLED")
  (:complete "COMPLETE")
  (:idle "IDLE")
  (:user-paused "USER_PAUSED"))

(smithy/sdk/shapes:define-structure job-summary common-lisp:nil
                                    ((bucket-criteria :target-type
                                      s3bucket-criteria-for-job :member-name
                                      "bucketCriteria" :json-name
                                      "bucketCriteria")
                                     (bucket-definitions :target-type
                                      list-of-s3bucket-definition-for-job
                                      :member-name "bucketDefinitions"
                                      :json-name "bucketDefinitions")
                                     (created-at :target-type timestamp-iso8601
                                      :member-name "createdAt" :json-name
                                      "createdAt")
                                     (job-id :target-type string :member-name
                                      "jobId" :json-name "jobId")
                                     (job-status :target-type job-status
                                      :member-name "jobStatus" :json-name
                                      "jobStatus")
                                     (job-type :target-type job-type
                                      :member-name "jobType" :json-name
                                      "jobType")
                                     (last-run-error-status :target-type
                                      last-run-error-status :member-name
                                      "lastRunErrorStatus" :json-name
                                      "lastRunErrorStatus")
                                     (name :target-type string :member-name
                                      "name" :json-name "name")
                                     (user-paused-details :target-type
                                      user-paused-details :member-name
                                      "userPausedDetails" :json-name
                                      "userPausedDetails"))
                                    (:shape-name "JobSummary"))

(smithy/sdk/shapes:define-enum job-type
    common-lisp:nil
  (:one-time "ONE_TIME")
  (:scheduled "SCHEDULED"))

(smithy/sdk/shapes:define-structure key-value-pair common-lisp:nil
                                    ((key :target-type string :member-name
                                      "key" :json-name "key")
                                     (value :target-type string :member-name
                                      "value" :json-name "value"))
                                    (:shape-name "KeyValuePair"))

(smithy/sdk/shapes:define-list key-value-pair-list :member key-value-pair)

(smithy/sdk/shapes:define-structure last-run-error-status common-lisp:nil
                                    ((code :target-type
                                      last-run-error-status-code :member-name
                                      "code" :json-name "code"))
                                    (:shape-name "LastRunErrorStatus"))

(smithy/sdk/shapes:define-enum last-run-error-status-code
    common-lisp:nil
  (:none "NONE")
  (:error "ERROR"))

(smithy/sdk/shapes:define-input list-allow-lists-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListAllowListsRequest"))

(smithy/sdk/shapes:define-output list-allow-lists-response common-lisp:nil
                                 ((allow-lists :target-type
                                   list-of-allow-list-summary :member-name
                                   "allowLists" :json-name "allowLists")
                                  (next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken"))
                                 (:shape-name "ListAllowListsResponse"))

(smithy/sdk/shapes:define-input list-automated-discovery-accounts-request
                                common-lisp:nil
                                ((account-ids :target-type list-of-string
                                  :member-name "accountIds" :http-query
                                  "accountIds")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name
                                 "ListAutomatedDiscoveryAccountsRequest"))

(smithy/sdk/shapes:define-output list-automated-discovery-accounts-response
                                 common-lisp:nil
                                 ((items :target-type
                                   list-of-automated-discovery-account
                                   :member-name "items" :json-name "items")
                                  (next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListAutomatedDiscoveryAccountsResponse"))

(smithy/sdk/shapes:define-input list-classification-jobs-request
                                common-lisp:nil
                                ((filter-criteria :target-type
                                  list-jobs-filter-criteria :member-name
                                  "filterCriteria" :json-name "filterCriteria")
                                 (max-results :target-type integer :member-name
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :json-name "nextToken")
                                 (sort-criteria :target-type
                                  list-jobs-sort-criteria :member-name
                                  "sortCriteria" :json-name "sortCriteria"))
                                (:shape-name "ListClassificationJobsRequest"))

(smithy/sdk/shapes:define-output list-classification-jobs-response
                                 common-lisp:nil
                                 ((items :target-type list-of-job-summary
                                   :member-name "items" :json-name "items")
                                  (next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken"))
                                 (:shape-name "ListClassificationJobsResponse"))

(smithy/sdk/shapes:define-input list-classification-scopes-request
                                common-lisp:nil
                                ((name :target-type string :member-name "name"
                                  :http-query "name")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListClassificationScopesRequest"))

(smithy/sdk/shapes:define-output list-classification-scopes-response
                                 common-lisp:nil
                                 ((classification-scopes :target-type
                                   list-of-classification-scope-summary
                                   :member-name "classificationScopes"
                                   :json-name "classificationScopes")
                                  (next-token :target-type next-token
                                   :member-name "nextToken" :json-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListClassificationScopesResponse"))

(smithy/sdk/shapes:define-input list-custom-data-identifiers-request
                                common-lisp:nil
                                ((max-results :target-type integer :member-name
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :json-name "nextToken"))
                                (:shape-name
                                 "ListCustomDataIdentifiersRequest"))

(smithy/sdk/shapes:define-output list-custom-data-identifiers-response
                                 common-lisp:nil
                                 ((items :target-type
                                   list-of-custom-data-identifier-summary
                                   :member-name "items" :json-name "items")
                                  (next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListCustomDataIdentifiersResponse"))

(smithy/sdk/shapes:define-input list-findings-filters-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListFindingsFiltersRequest"))

(smithy/sdk/shapes:define-output list-findings-filters-response common-lisp:nil
                                 ((findings-filter-list-items :target-type
                                   list-of-findings-filter-list-item
                                   :member-name "findingsFilterListItems"
                                   :json-name "findingsFilterListItems")
                                  (next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken"))
                                 (:shape-name "ListFindingsFiltersResponse"))

(smithy/sdk/shapes:define-input list-findings-request common-lisp:nil
                                ((finding-criteria :target-type
                                  finding-criteria :member-name
                                  "findingCriteria" :json-name
                                  "findingCriteria")
                                 (max-results :target-type integer :member-name
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :json-name "nextToken")
                                 (sort-criteria :target-type sort-criteria
                                  :member-name "sortCriteria" :json-name
                                  "sortCriteria"))
                                (:shape-name "ListFindingsRequest"))

(smithy/sdk/shapes:define-output list-findings-response common-lisp:nil
                                 ((finding-ids :target-type list-of-string
                                   :member-name "findingIds" :json-name
                                   "findingIds")
                                  (next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken"))
                                 (:shape-name "ListFindingsResponse"))

(smithy/sdk/shapes:define-input list-invitations-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListInvitationsRequest"))

(smithy/sdk/shapes:define-output list-invitations-response common-lisp:nil
                                 ((invitations :target-type list-of-invitation
                                   :member-name "invitations" :json-name
                                   "invitations")
                                  (next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken"))
                                 (:shape-name "ListInvitationsResponse"))

(smithy/sdk/shapes:define-structure list-jobs-filter-criteria common-lisp:nil
                                    ((excludes :target-type
                                      list-of-list-jobs-filter-term
                                      :member-name "excludes" :json-name
                                      "excludes")
                                     (includes :target-type
                                      list-of-list-jobs-filter-term
                                      :member-name "includes" :json-name
                                      "includes"))
                                    (:shape-name "ListJobsFilterCriteria"))

(smithy/sdk/shapes:define-enum list-jobs-filter-key
    common-lisp:nil
  (:job-type "jobType")
  (:job-status "jobStatus")
  (:created-at "createdAt")
  (:name "name"))

(smithy/sdk/shapes:define-structure list-jobs-filter-term common-lisp:nil
                                    ((comparator :target-type job-comparator
                                      :member-name "comparator" :json-name
                                      "comparator")
                                     (key :target-type list-jobs-filter-key
                                      :member-name "key" :json-name "key")
                                     (values :target-type list-of-string
                                      :member-name "values" :json-name
                                      "values"))
                                    (:shape-name "ListJobsFilterTerm"))

(smithy/sdk/shapes:define-enum list-jobs-sort-attribute-name
    common-lisp:nil
  (:created-at "createdAt")
  (:job-status "jobStatus")
  (:name "name")
  (:job-type "jobType"))

(smithy/sdk/shapes:define-structure list-jobs-sort-criteria common-lisp:nil
                                    ((attribute-name :target-type
                                      list-jobs-sort-attribute-name
                                      :member-name "attributeName" :json-name
                                      "attributeName")
                                     (order-by :target-type order-by
                                      :member-name "orderBy" :json-name
                                      "orderBy"))
                                    (:shape-name "ListJobsSortCriteria"))

(smithy/sdk/shapes:define-input list-managed-data-identifiers-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "nextToken" :json-name "nextToken"))
                                (:shape-name
                                 "ListManagedDataIdentifiersRequest"))

(smithy/sdk/shapes:define-output list-managed-data-identifiers-response
                                 common-lisp:nil
                                 ((items :target-type
                                   list-of-managed-data-identifier-summary
                                   :member-name "items" :json-name "items")
                                  (next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListManagedDataIdentifiersResponse"))

(smithy/sdk/shapes:define-input list-members-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (only-associated :target-type string
                                  :member-name "onlyAssociated" :http-query
                                  "onlyAssociated"))
                                (:shape-name "ListMembersRequest"))

(smithy/sdk/shapes:define-output list-members-response common-lisp:nil
                                 ((members :target-type list-of-member
                                   :member-name "members" :json-name "members")
                                  (next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken"))
                                 (:shape-name "ListMembersResponse"))

(smithy/sdk/shapes:define-input list-organization-admin-accounts-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name
                                 "ListOrganizationAdminAccountsRequest"))

(smithy/sdk/shapes:define-output list-organization-admin-accounts-response
                                 common-lisp:nil
                                 ((admin-accounts :target-type
                                   list-of-admin-account :member-name
                                   "adminAccounts" :json-name "adminAccounts")
                                  (next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListOrganizationAdminAccountsResponse"))

(smithy/sdk/shapes:define-input list-resource-profile-artifacts-request
                                common-lisp:nil
                                ((next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-query "resourceArn"))
                                (:shape-name
                                 "ListResourceProfileArtifactsRequest"))

(smithy/sdk/shapes:define-output list-resource-profile-artifacts-response
                                 common-lisp:nil
                                 ((artifacts :target-type
                                   list-of-resource-profile-artifact
                                   :member-name "artifacts" :json-name
                                   "artifacts")
                                  (next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListResourceProfileArtifactsResponse"))

(smithy/sdk/shapes:define-input list-resource-profile-detections-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-query "resourceArn"))
                                (:shape-name
                                 "ListResourceProfileDetectionsRequest"))

(smithy/sdk/shapes:define-output list-resource-profile-detections-response
                                 common-lisp:nil
                                 ((detections :target-type list-of-detection
                                   :member-name "detections" :json-name
                                   "detections")
                                  (next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListResourceProfileDetectionsResponse"))

(smithy/sdk/shapes:define-input list-sensitivity-inspection-templates-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name
                                 "ListSensitivityInspectionTemplatesRequest"))

(smithy/sdk/shapes:define-output list-sensitivity-inspection-templates-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken")
                                  (sensitivity-inspection-templates
                                   :target-type
                                   list-of-sensitivity-inspection-templates-entry
                                   :member-name
                                   "sensitivityInspectionTemplates" :json-name
                                   "sensitivityInspectionTemplates"))
                                 (:shape-name
                                  "ListSensitivityInspectionTemplatesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags" :json-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-enum macie-status
    common-lisp:nil
  (:paused "PAUSED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-enum managed-data-identifier-selector
    common-lisp:nil
  (:all "ALL")
  (:exclude "EXCLUDE")
  (:include "INCLUDE")
  (:none "NONE")
  (:recommended "RECOMMENDED"))

(smithy/sdk/shapes:define-structure managed-data-identifier-summary
                                    common-lisp:nil
                                    ((category :target-type
                                      sensitive-data-item-category :member-name
                                      "category" :json-name "category")
                                     (id :target-type string :member-name "id"
                                      :json-name "id"))
                                    (:shape-name
                                     "ManagedDataIdentifierSummary"))

(smithy/sdk/shapes:define-structure matching-bucket common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (automated-discovery-monitoring-status
                                      :target-type
                                      automated-discovery-monitoring-status
                                      :member-name
                                      "automatedDiscoveryMonitoringStatus"
                                      :json-name
                                      "automatedDiscoveryMonitoringStatus")
                                     (bucket-name :target-type string
                                      :member-name "bucketName" :json-name
                                      "bucketName")
                                     (classifiable-object-count :target-type
                                      long :member-name
                                      "classifiableObjectCount" :json-name
                                      "classifiableObjectCount")
                                     (classifiable-size-in-bytes :target-type
                                      long :member-name
                                      "classifiableSizeInBytes" :json-name
                                      "classifiableSizeInBytes")
                                     (error-code :target-type
                                      bucket-metadata-error-code :member-name
                                      "errorCode" :json-name "errorCode")
                                     (error-message :target-type string
                                      :member-name "errorMessage" :json-name
                                      "errorMessage")
                                     (job-details :target-type job-details
                                      :member-name "jobDetails" :json-name
                                      "jobDetails")
                                     (last-automated-discovery-time
                                      :target-type timestamp-iso8601
                                      :member-name "lastAutomatedDiscoveryTime"
                                      :json-name "lastAutomatedDiscoveryTime")
                                     (object-count :target-type long
                                      :member-name "objectCount" :json-name
                                      "objectCount")
                                     (object-count-by-encryption-type
                                      :target-type
                                      object-count-by-encryption-type
                                      :member-name
                                      "objectCountByEncryptionType" :json-name
                                      "objectCountByEncryptionType")
                                     (sensitivity-score :target-type integer
                                      :member-name "sensitivityScore"
                                      :json-name "sensitivityScore")
                                     (size-in-bytes :target-type long
                                      :member-name "sizeInBytes" :json-name
                                      "sizeInBytes")
                                     (size-in-bytes-compressed :target-type
                                      long :member-name "sizeInBytesCompressed"
                                      :json-name "sizeInBytesCompressed")
                                     (unclassifiable-object-count :target-type
                                      object-level-statistics :member-name
                                      "unclassifiableObjectCount" :json-name
                                      "unclassifiableObjectCount")
                                     (unclassifiable-object-size-in-bytes
                                      :target-type object-level-statistics
                                      :member-name
                                      "unclassifiableObjectSizeInBytes"
                                      :json-name
                                      "unclassifiableObjectSizeInBytes"))
                                    (:shape-name "MatchingBucket"))

(smithy/sdk/shapes:define-structure matching-resource common-lisp:nil
                                    ((matching-bucket :target-type
                                      matching-bucket :member-name
                                      "matchingBucket" :json-name
                                      "matchingBucket"))
                                    (:shape-name "MatchingResource"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure member common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (administrator-account-id :target-type
                                      string :member-name
                                      "administratorAccountId" :json-name
                                      "administratorAccountId")
                                     (arn :target-type string :member-name
                                      "arn" :json-name "arn")
                                     (email :target-type string :member-name
                                      "email" :json-name "email")
                                     (invited-at :target-type timestamp-iso8601
                                      :member-name "invitedAt" :json-name
                                      "invitedAt")
                                     (master-account-id :target-type string
                                      :member-name "masterAccountId" :json-name
                                      "masterAccountId")
                                     (relationship-status :target-type
                                      relationship-status :member-name
                                      "relationshipStatus" :json-name
                                      "relationshipStatus")
                                     (tags :target-type tag-map :member-name
                                      "tags" :json-name "tags")
                                     (updated-at :target-type timestamp-iso8601
                                      :member-name "updatedAt" :json-name
                                      "updatedAt"))
                                    (:shape-name "Member"))

(smithy/sdk/shapes:define-structure monthly-schedule common-lisp:nil
                                    ((day-of-month :target-type integer
                                      :member-name "dayOfMonth" :json-name
                                      "dayOfMonth"))
                                    (:shape-name "MonthlySchedule"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure object-count-by-encryption-type
                                    common-lisp:nil
                                    ((customer-managed :target-type long
                                      :member-name "customerManaged" :json-name
                                      "customerManaged")
                                     (kms-managed :target-type long
                                      :member-name "kmsManaged" :json-name
                                      "kmsManaged")
                                     (s3managed :target-type long :member-name
                                      "s3Managed" :json-name "s3Managed")
                                     (unencrypted :target-type long
                                      :member-name "unencrypted" :json-name
                                      "unencrypted")
                                     (unknown :target-type long :member-name
                                      "unknown" :json-name "unknown"))
                                    (:shape-name "ObjectCountByEncryptionType"))

(smithy/sdk/shapes:define-structure object-level-statistics common-lisp:nil
                                    ((file-type :target-type long :member-name
                                      "fileType" :json-name "fileType")
                                     (storage-class :target-type long
                                      :member-name "storageClass" :json-name
                                      "storageClass")
                                     (total :target-type long :member-name
                                      "total" :json-name "total"))
                                    (:shape-name "ObjectLevelStatistics"))

(smithy/sdk/shapes:define-structure occurrences common-lisp:nil
                                    ((cells :target-type cells :member-name
                                      "cells" :json-name "cells")
                                     (line-ranges :target-type ranges
                                      :member-name "lineRanges" :json-name
                                      "lineRanges")
                                     (offset-ranges :target-type ranges
                                      :member-name "offsetRanges" :json-name
                                      "offsetRanges")
                                     (pages :target-type pages :member-name
                                      "pages" :json-name "pages")
                                     (records :target-type records :member-name
                                      "records" :json-name "records"))
                                    (:shape-name "Occurrences"))

(smithy/sdk/shapes:define-enum order-by
    common-lisp:nil
  (:asc "ASC")
  (:desc "DESC"))

(smithy/sdk/shapes:define-enum origin-type
    common-lisp:nil
  (:sensitive-data-discovery-job "SENSITIVE_DATA_DISCOVERY_JOB")
  (:automated-sensitive-data-discovery "AUTOMATED_SENSITIVE_DATA_DISCOVERY"))

(smithy/sdk/shapes:define-structure page common-lisp:nil
                                    ((line-range :target-type range
                                      :member-name "lineRange" :json-name
                                      "lineRange")
                                     (offset-range :target-type range
                                      :member-name "offsetRange" :json-name
                                      "offsetRange")
                                     (page-number :target-type long
                                      :member-name "pageNumber" :json-name
                                      "pageNumber"))
                                    (:shape-name "Page"))

(smithy/sdk/shapes:define-list pages :member page)

(smithy/sdk/shapes:define-structure policy-details common-lisp:nil
                                    ((action :target-type finding-action
                                      :member-name "action" :json-name
                                      "action")
                                     (actor :target-type finding-actor
                                      :member-name "actor" :json-name "actor"))
                                    (:shape-name "PolicyDetails"))

(smithy/sdk/shapes:define-input put-classification-export-configuration-request
                                common-lisp:nil
                                ((configuration :target-type
                                  classification-export-configuration :required
                                  common-lisp:t :member-name "configuration"
                                  :json-name "configuration"))
                                (:shape-name
                                 "PutClassificationExportConfigurationRequest"))

(smithy/sdk/shapes:define-output
 put-classification-export-configuration-response common-lisp:nil
 ((configuration :target-type classification-export-configuration :member-name
   "configuration" :json-name "configuration"))
 (:shape-name "PutClassificationExportConfigurationResponse"))

(smithy/sdk/shapes:define-input put-findings-publication-configuration-request
                                common-lisp:nil
                                ((client-token :target-type string :member-name
                                  "clientToken" :json-name "clientToken")
                                 (security-hub-configuration :target-type
                                  security-hub-configuration :member-name
                                  "securityHubConfiguration" :json-name
                                  "securityHubConfiguration"))
                                (:shape-name
                                 "PutFindingsPublicationConfigurationRequest"))

(smithy/sdk/shapes:define-output
 put-findings-publication-configuration-response common-lisp:nil
 common-lisp:nil (:shape-name "PutFindingsPublicationConfigurationResponse"))

(smithy/sdk/shapes:define-structure range common-lisp:nil
                                    ((end :target-type long :member-name "end"
                                      :json-name "end")
                                     (start :target-type long :member-name
                                      "start" :json-name "start")
                                     (start-column :target-type long
                                      :member-name "startColumn" :json-name
                                      "startColumn"))
                                    (:shape-name "Range"))

(smithy/sdk/shapes:define-list ranges :member range)

(smithy/sdk/shapes:define-structure record common-lisp:nil
                                    ((json-path :target-type string
                                      :member-name "jsonPath" :json-name
                                      "jsonPath")
                                     (record-index :target-type long
                                      :member-name "recordIndex" :json-name
                                      "recordIndex"))
                                    (:shape-name "Record"))

(smithy/sdk/shapes:define-list records :member record)

(smithy/sdk/shapes:define-enum relationship-status
    common-lisp:nil
  (:enabled "Enabled")
  (:paused "Paused")
  (:invited "Invited")
  (:created "Created")
  (:removed "Removed")
  (:resigned "Resigned")
  (:email-verification-in-progress "EmailVerificationInProgress")
  (:email-verification-failed "EmailVerificationFailed")
  (:region-disabled "RegionDisabled")
  (:account-suspended "AccountSuspended"))

(smithy/sdk/shapes:define-structure replication-details common-lisp:nil
                                    ((replicated :target-type boolean
                                      :member-name "replicated" :json-name
                                      "replicated")
                                     (replicated-externally :target-type
                                      boolean :member-name
                                      "replicatedExternally" :json-name
                                      "replicatedExternally")
                                     (replication-accounts :target-type
                                      list-of-string :member-name
                                      "replicationAccounts" :json-name
                                      "replicationAccounts"))
                                    (:shape-name "ReplicationDetails"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message" :json-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-profile-artifact common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "arn"
                                      :json-name "arn")
                                     (classification-result-status :target-type
                                      string :required common-lisp:t
                                      :member-name "classificationResultStatus"
                                      :json-name "classificationResultStatus")
                                     (sensitive :target-type boolean
                                      :member-name "sensitive" :json-name
                                      "sensitive"))
                                    (:shape-name "ResourceProfileArtifact"))

(smithy/sdk/shapes:define-structure resource-statistics common-lisp:nil
                                    ((total-bytes-classified :target-type long
                                      :member-name "totalBytesClassified"
                                      :json-name "totalBytesClassified")
                                     (total-detections :target-type long
                                      :member-name "totalDetections" :json-name
                                      "totalDetections")
                                     (total-detections-suppressed :target-type
                                      long :member-name
                                      "totalDetectionsSuppressed" :json-name
                                      "totalDetectionsSuppressed")
                                     (total-items-classified :target-type long
                                      :member-name "totalItemsClassified"
                                      :json-name "totalItemsClassified")
                                     (total-items-sensitive :target-type long
                                      :member-name "totalItemsSensitive"
                                      :json-name "totalItemsSensitive")
                                     (total-items-skipped :target-type long
                                      :member-name "totalItemsSkipped"
                                      :json-name "totalItemsSkipped")
                                     (total-items-skipped-invalid-encryption
                                      :target-type long :member-name
                                      "totalItemsSkippedInvalidEncryption"
                                      :json-name
                                      "totalItemsSkippedInvalidEncryption")
                                     (total-items-skipped-invalid-kms
                                      :target-type long :member-name
                                      "totalItemsSkippedInvalidKms" :json-name
                                      "totalItemsSkippedInvalidKms")
                                     (total-items-skipped-permission-denied
                                      :target-type long :member-name
                                      "totalItemsSkippedPermissionDenied"
                                      :json-name
                                      "totalItemsSkippedPermissionDenied"))
                                    (:shape-name "ResourceStatistics"))

(smithy/sdk/shapes:define-structure resources-affected common-lisp:nil
                                    ((s3bucket :target-type s3bucket
                                      :member-name "s3Bucket" :json-name
                                      "s3Bucket")
                                     (s3object :target-type s3object
                                      :member-name "s3Object" :json-name
                                      "s3Object"))
                                    (:shape-name "ResourcesAffected"))

(smithy/sdk/shapes:define-structure retrieval-configuration common-lisp:nil
                                    ((external-id :target-type string
                                      :member-name "externalId" :json-name
                                      "externalId")
                                     (retrieval-mode :target-type
                                      retrieval-mode :required common-lisp:t
                                      :member-name "retrievalMode" :json-name
                                      "retrievalMode")
                                     (role-name :target-type
                                      string-min1max64pattern-w :member-name
                                      "roleName" :json-name "roleName"))
                                    (:shape-name "RetrievalConfiguration"))

(smithy/sdk/shapes:define-enum retrieval-mode
    common-lisp:nil
  (:caller-credentials "CALLER_CREDENTIALS")
  (:assume-role "ASSUME_ROLE"))

(smithy/sdk/shapes:define-structure reveal-configuration common-lisp:nil
                                    ((kms-key-id :target-type
                                      string-min1max2048 :member-name
                                      "kmsKeyId" :json-name "kmsKeyId")
                                     (status :target-type reveal-status
                                      :required common-lisp:t :member-name
                                      "status" :json-name "status"))
                                    (:shape-name "RevealConfiguration"))

(smithy/sdk/shapes:define-enum reveal-request-status
    common-lisp:nil
  (:success "SUCCESS")
  (:processing "PROCESSING")
  (:error "ERROR"))

(smithy/sdk/shapes:define-enum reveal-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure s3bucket common-lisp:nil
                                    ((allows-unencrypted-object-uploads
                                      :target-type
                                      allows-unencrypted-object-uploads
                                      :member-name
                                      "allowsUnencryptedObjectUploads"
                                      :json-name
                                      "allowsUnencryptedObjectUploads")
                                     (arn :target-type string :member-name
                                      "arn" :json-name "arn")
                                     (created-at :target-type timestamp-iso8601
                                      :member-name "createdAt" :json-name
                                      "createdAt")
                                     (default-server-side-encryption
                                      :target-type server-side-encryption
                                      :member-name
                                      "defaultServerSideEncryption" :json-name
                                      "defaultServerSideEncryption")
                                     (name :target-type string :member-name
                                      "name" :json-name "name")
                                     (owner :target-type s3bucket-owner
                                      :member-name "owner" :json-name "owner")
                                     (public-access :target-type
                                      bucket-public-access :member-name
                                      "publicAccess" :json-name "publicAccess")
                                     (tags :target-type key-value-pair-list
                                      :member-name "tags" :json-name "tags"))
                                    (:shape-name "S3Bucket"))

(smithy/sdk/shapes:define-structure s3bucket-criteria-for-job common-lisp:nil
                                    ((excludes :target-type
                                      criteria-block-for-job :member-name
                                      "excludes" :json-name "excludes")
                                     (includes :target-type
                                      criteria-block-for-job :member-name
                                      "includes" :json-name "includes"))
                                    (:shape-name "S3BucketCriteriaForJob"))

(smithy/sdk/shapes:define-structure s3bucket-definition-for-job common-lisp:nil
                                    ((account-id :target-type string :required
                                      common-lisp:t :member-name "accountId"
                                      :json-name "accountId")
                                     (buckets :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "buckets" :json-name "buckets"))
                                    (:shape-name "S3BucketDefinitionForJob"))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3bucket-owner common-lisp:nil
                                    ((display-name :target-type string
                                      :member-name "displayName" :json-name
                                      "displayName")
                                     (id :target-type string :member-name "id"
                                      :json-name "id"))
                                    (:shape-name "S3BucketOwner"))

(smithy/sdk/shapes:define-structure s3classification-scope common-lisp:nil
                                    ((excludes :target-type
                                      s3classification-scope-exclusion
                                      :required common-lisp:t :member-name
                                      "excludes" :json-name "excludes"))
                                    (:shape-name "S3ClassificationScope"))

(smithy/sdk/shapes:define-structure s3classification-scope-exclusion
                                    common-lisp:nil
                                    ((bucket-names :target-type
                                      list-of-s3bucket-name :required
                                      common-lisp:t :member-name "bucketNames"
                                      :json-name "bucketNames"))
                                    (:shape-name
                                     "S3ClassificationScopeExclusion"))

(smithy/sdk/shapes:define-structure s3classification-scope-exclusion-update
                                    common-lisp:nil
                                    ((bucket-names :target-type
                                      list-of-s3bucket-name :required
                                      common-lisp:t :member-name "bucketNames"
                                      :json-name "bucketNames")
                                     (operation :target-type
                                      classification-scope-update-operation
                                      :required common-lisp:t :member-name
                                      "operation" :json-name "operation"))
                                    (:shape-name
                                     "S3ClassificationScopeExclusionUpdate"))

(smithy/sdk/shapes:define-structure s3classification-scope-update
                                    common-lisp:nil
                                    ((excludes :target-type
                                      s3classification-scope-exclusion-update
                                      :required common-lisp:t :member-name
                                      "excludes" :json-name "excludes"))
                                    (:shape-name "S3ClassificationScopeUpdate"))

(smithy/sdk/shapes:define-structure s3destination common-lisp:nil
                                    ((bucket-name :target-type string :required
                                      common-lisp:t :member-name "bucketName"
                                      :json-name "bucketName")
                                     (key-prefix :target-type string
                                      :member-name "keyPrefix" :json-name
                                      "keyPrefix")
                                     (kms-key-arn :target-type string :required
                                      common-lisp:t :member-name "kmsKeyArn"
                                      :json-name "kmsKeyArn"))
                                    (:shape-name "S3Destination"))

(smithy/sdk/shapes:define-structure s3job-definition common-lisp:nil
                                    ((bucket-criteria :target-type
                                      s3bucket-criteria-for-job :member-name
                                      "bucketCriteria" :json-name
                                      "bucketCriteria")
                                     (bucket-definitions :target-type
                                      list-of-s3bucket-definition-for-job
                                      :member-name "bucketDefinitions"
                                      :json-name "bucketDefinitions")
                                     (scoping :target-type scoping :member-name
                                      "scoping" :json-name "scoping"))
                                    (:shape-name "S3JobDefinition"))

(smithy/sdk/shapes:define-structure s3object common-lisp:nil
                                    ((bucket-arn :target-type string
                                      :member-name "bucketArn" :json-name
                                      "bucketArn")
                                     (e-tag :target-type string :member-name
                                      "eTag" :json-name "eTag")
                                     (extension :target-type string
                                      :member-name "extension" :json-name
                                      "extension")
                                     (key :target-type string :member-name
                                      "key" :json-name "key")
                                     (last-modified :target-type
                                      timestamp-iso8601 :member-name
                                      "lastModified" :json-name "lastModified")
                                     (path :target-type string :member-name
                                      "path" :json-name "path")
                                     (public-access :target-type boolean
                                      :member-name "publicAccess" :json-name
                                      "publicAccess")
                                     (server-side-encryption :target-type
                                      server-side-encryption :member-name
                                      "serverSideEncryption" :json-name
                                      "serverSideEncryption")
                                     (size :target-type long :member-name
                                      "size" :json-name "size")
                                     (storage-class :target-type storage-class
                                      :member-name "storageClass" :json-name
                                      "storageClass")
                                     (tags :target-type key-value-pair-list
                                      :member-name "tags" :json-name "tags")
                                     (version-id :target-type string
                                      :member-name "versionId" :json-name
                                      "versionId"))
                                    (:shape-name "S3Object"))

(smithy/sdk/shapes:define-structure s3words-list common-lisp:nil
                                    ((bucket-name :target-type
                                      string-min3max255pattern-aza-z093255
                                      :required common-lisp:t :member-name
                                      "bucketName" :json-name "bucketName")
                                     (object-key :target-type
                                      string-min1max1024pattern-ss :required
                                      common-lisp:t :member-name "objectKey"
                                      :json-name "objectKey"))
                                    (:shape-name "S3WordsList"))

(smithy/sdk/shapes:define-enum scope-filter-key
    common-lisp:nil
  (:object-extension "OBJECT_EXTENSION")
  (:object-last-modified-date "OBJECT_LAST_MODIFIED_DATE")
  (:object-size "OBJECT_SIZE")
  (:object-key "OBJECT_KEY"))

(smithy/sdk/shapes:define-structure scoping common-lisp:nil
                                    ((excludes :target-type job-scoping-block
                                      :member-name "excludes" :json-name
                                      "excludes")
                                     (includes :target-type job-scoping-block
                                      :member-name "includes" :json-name
                                      "includes"))
                                    (:shape-name "Scoping"))

(smithy/sdk/shapes:define-structure search-resources-bucket-criteria
                                    common-lisp:nil
                                    ((excludes :target-type
                                      search-resources-criteria-block
                                      :member-name "excludes" :json-name
                                      "excludes")
                                     (includes :target-type
                                      search-resources-criteria-block
                                      :member-name "includes" :json-name
                                      "includes"))
                                    (:shape-name
                                     "SearchResourcesBucketCriteria"))

(smithy/sdk/shapes:define-enum search-resources-comparator
    common-lisp:nil
  (:eq "EQ")
  (:ne "NE"))

(smithy/sdk/shapes:define-structure search-resources-criteria common-lisp:nil
                                    ((simple-criterion :target-type
                                      search-resources-simple-criterion
                                      :member-name "simpleCriterion" :json-name
                                      "simpleCriterion")
                                     (tag-criterion :target-type
                                      search-resources-tag-criterion
                                      :member-name "tagCriterion" :json-name
                                      "tagCriterion"))
                                    (:shape-name "SearchResourcesCriteria"))

(smithy/sdk/shapes:define-structure search-resources-criteria-block
                                    common-lisp:nil
                                    ((and :target-type
                                      list-of-search-resources-criteria
                                      :member-name "and" :json-name "and"))
                                    (:shape-name
                                     "SearchResourcesCriteriaBlock"))

(smithy/sdk/shapes:define-input search-resources-request common-lisp:nil
                                ((bucket-criteria :target-type
                                  search-resources-bucket-criteria :member-name
                                  "bucketCriteria" :json-name "bucketCriteria")
                                 (max-results :target-type integer :member-name
                                  "maxResults" :json-name "maxResults")
                                 (next-token :target-type string :member-name
                                  "nextToken" :json-name "nextToken")
                                 (sort-criteria :target-type
                                  search-resources-sort-criteria :member-name
                                  "sortCriteria" :json-name "sortCriteria"))
                                (:shape-name "SearchResourcesRequest"))

(smithy/sdk/shapes:define-output search-resources-response common-lisp:nil
                                 ((matching-resources :target-type
                                   list-of-matching-resource :member-name
                                   "matchingResources" :json-name
                                   "matchingResources")
                                  (next-token :target-type string :member-name
                                   "nextToken" :json-name "nextToken"))
                                 (:shape-name "SearchResourcesResponse"))

(smithy/sdk/shapes:define-structure search-resources-simple-criterion
                                    common-lisp:nil
                                    ((comparator :target-type
                                      search-resources-comparator :member-name
                                      "comparator" :json-name "comparator")
                                     (key :target-type
                                      search-resources-simple-criterion-key
                                      :member-name "key" :json-name "key")
                                     (values :target-type list-of-string
                                      :member-name "values" :json-name
                                      "values"))
                                    (:shape-name
                                     "SearchResourcesSimpleCriterion"))

(smithy/sdk/shapes:define-enum search-resources-simple-criterion-key
    common-lisp:nil
  (:account-id "ACCOUNT_ID")
  (:s3-bucket-name "S3_BUCKET_NAME")
  (:s3-bucket-effective-permission "S3_BUCKET_EFFECTIVE_PERMISSION")
  (:s3-bucket-shared-access "S3_BUCKET_SHARED_ACCESS")
  (:automated-discovery-monitoring-status
   "AUTOMATED_DISCOVERY_MONITORING_STATUS"))

(smithy/sdk/shapes:define-enum search-resources-sort-attribute-name
    common-lisp:nil
  (:account-id "ACCOUNT_ID")
  (:resource-name "RESOURCE_NAME")
  (:s3-classifiable-object-count "S3_CLASSIFIABLE_OBJECT_COUNT")
  (:s3-classifiable-size-in-bytes "S3_CLASSIFIABLE_SIZE_IN_BYTES"))

(smithy/sdk/shapes:define-structure search-resources-sort-criteria
                                    common-lisp:nil
                                    ((attribute-name :target-type
                                      search-resources-sort-attribute-name
                                      :member-name "attributeName" :json-name
                                      "attributeName")
                                     (order-by :target-type order-by
                                      :member-name "orderBy" :json-name
                                      "orderBy"))
                                    (:shape-name "SearchResourcesSortCriteria"))

(smithy/sdk/shapes:define-structure search-resources-tag-criterion
                                    common-lisp:nil
                                    ((comparator :target-type
                                      search-resources-comparator :member-name
                                      "comparator" :json-name "comparator")
                                     (tag-values :target-type
                                      list-of-search-resources-tag-criterion-pair
                                      :member-name "tagValues" :json-name
                                      "tagValues"))
                                    (:shape-name "SearchResourcesTagCriterion"))

(smithy/sdk/shapes:define-structure search-resources-tag-criterion-pair
                                    common-lisp:nil
                                    ((key :target-type string :member-name
                                      "key" :json-name "key")
                                     (value :target-type string :member-name
                                      "value" :json-name "value"))
                                    (:shape-name
                                     "SearchResourcesTagCriterionPair"))

(smithy/sdk/shapes:define-structure security-hub-configuration common-lisp:nil
                                    ((publish-classification-findings
                                      :target-type boolean :required
                                      common-lisp:t :member-name
                                      "publishClassificationFindings"
                                      :json-name
                                      "publishClassificationFindings")
                                     (publish-policy-findings :target-type
                                      boolean :required common-lisp:t
                                      :member-name "publishPolicyFindings"
                                      :json-name "publishPolicyFindings"))
                                    (:shape-name "SecurityHubConfiguration"))

(smithy/sdk/shapes:define-list sensitive-data :member sensitive-data-item)

(smithy/sdk/shapes:define-structure sensitive-data-item common-lisp:nil
                                    ((category :target-type
                                      sensitive-data-item-category :member-name
                                      "category" :json-name "category")
                                     (detections :target-type
                                      default-detections :member-name
                                      "detections" :json-name "detections")
                                     (total-count :target-type long
                                      :member-name "totalCount" :json-name
                                      "totalCount"))
                                    (:shape-name "SensitiveDataItem"))

(smithy/sdk/shapes:define-enum sensitive-data-item-category
    common-lisp:nil
  (:financial-information "FINANCIAL_INFORMATION")
  (:personal-information "PERSONAL_INFORMATION")
  (:credentials "CREDENTIALS")
  (:custom-identifier "CUSTOM_IDENTIFIER"))

(smithy/sdk/shapes:define-map sensitive-data-occurrences :key string :value
                              list-of-detected-data-details)

(smithy/sdk/shapes:define-structure sensitivity-aggregations common-lisp:nil
                                    ((classifiable-size-in-bytes :target-type
                                      long :member-name
                                      "classifiableSizeInBytes" :json-name
                                      "classifiableSizeInBytes")
                                     (publicly-accessible-count :target-type
                                      long :member-name
                                      "publiclyAccessibleCount" :json-name
                                      "publiclyAccessibleCount")
                                     (total-count :target-type long
                                      :member-name "totalCount" :json-name
                                      "totalCount")
                                     (total-size-in-bytes :target-type long
                                      :member-name "totalSizeInBytes"
                                      :json-name "totalSizeInBytes"))
                                    (:shape-name "SensitivityAggregations"))

(smithy/sdk/shapes:define-structure sensitivity-inspection-template-excludes
                                    common-lisp:nil
                                    ((managed-data-identifier-ids :target-type
                                      list-of-string :member-name
                                      "managedDataIdentifierIds" :json-name
                                      "managedDataIdentifierIds"))
                                    (:shape-name
                                     "SensitivityInspectionTemplateExcludes"))

(smithy/sdk/shapes:define-type sensitivity-inspection-template-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sensitivity-inspection-template-includes
                                    common-lisp:nil
                                    ((allow-list-ids :target-type
                                      list-of-string :member-name
                                      "allowListIds" :json-name "allowListIds")
                                     (custom-data-identifier-ids :target-type
                                      list-of-string :member-name
                                      "customDataIdentifierIds" :json-name
                                      "customDataIdentifierIds")
                                     (managed-data-identifier-ids :target-type
                                      list-of-string :member-name
                                      "managedDataIdentifierIds" :json-name
                                      "managedDataIdentifierIds"))
                                    (:shape-name
                                     "SensitivityInspectionTemplateIncludes"))

(smithy/sdk/shapes:define-structure sensitivity-inspection-templates-entry
                                    common-lisp:nil
                                    ((id :target-type string :member-name "id"
                                      :json-name "id")
                                     (name :target-type string :member-name
                                      "name" :json-name "name"))
                                    (:shape-name
                                     "SensitivityInspectionTemplatesEntry"))

(smithy/sdk/shapes:define-structure server-side-encryption common-lisp:nil
                                    ((encryption-type :target-type
                                      encryption-type :member-name
                                      "encryptionType" :json-name
                                      "encryptionType")
                                     (kms-master-key-id :target-type string
                                      :member-name "kmsMasterKeyId" :json-name
                                      "kmsMasterKeyId"))
                                    (:shape-name "ServerSideEncryption"))

(smithy/sdk/shapes:define-structure service-limit common-lisp:nil
                                    ((is-service-limited :target-type boolean
                                      :member-name "isServiceLimited"
                                      :json-name "isServiceLimited")
                                     (unit :target-type unit :member-name
                                      "unit" :json-name "unit")
                                     (value :target-type long :member-name
                                      "value" :json-name "value"))
                                    (:shape-name "ServiceLimit"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message" :json-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure session-context common-lisp:nil
                                    ((attributes :target-type
                                      session-context-attributes :member-name
                                      "attributes" :json-name "attributes")
                                     (session-issuer :target-type
                                      session-issuer :member-name
                                      "sessionIssuer" :json-name
                                      "sessionIssuer"))
                                    (:shape-name "SessionContext"))

(smithy/sdk/shapes:define-structure session-context-attributes common-lisp:nil
                                    ((creation-date :target-type
                                      timestamp-iso8601 :member-name
                                      "creationDate" :json-name "creationDate")
                                     (mfa-authenticated :target-type boolean
                                      :member-name "mfaAuthenticated"
                                      :json-name "mfaAuthenticated"))
                                    (:shape-name "SessionContextAttributes"))

(smithy/sdk/shapes:define-structure session-issuer common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (arn :target-type string :member-name
                                      "arn" :json-name "arn")
                                     (principal-id :target-type string
                                      :member-name "principalId" :json-name
                                      "principalId")
                                     (type :target-type string :member-name
                                      "type" :json-name "type")
                                     (user-name :target-type string
                                      :member-name "userName" :json-name
                                      "userName"))
                                    (:shape-name "SessionIssuer"))

(smithy/sdk/shapes:define-structure severity common-lisp:nil
                                    ((description :target-type
                                      severity-description :member-name
                                      "description" :json-name "description")
                                     (score :target-type long :member-name
                                      "score" :json-name "score"))
                                    (:shape-name "Severity"))

(smithy/sdk/shapes:define-enum severity-description
    common-lisp:nil
  (:low "Low")
  (:medium "Medium")
  (:high "High"))

(smithy/sdk/shapes:define-structure severity-level common-lisp:nil
                                    ((occurrences-threshold :target-type long
                                      :required common-lisp:t :member-name
                                      "occurrencesThreshold" :json-name
                                      "occurrencesThreshold")
                                     (severity :target-type
                                      data-identifier-severity :required
                                      common-lisp:t :member-name "severity"
                                      :json-name "severity"))
                                    (:shape-name "SeverityLevel"))

(smithy/sdk/shapes:define-list severity-level-list :member severity-level)

(smithy/sdk/shapes:define-enum shared-access
    common-lisp:nil
  (:external "EXTERNAL")
  (:internal "INTERNAL")
  (:not-shared "NOT_SHARED")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-structure simple-criterion-for-job common-lisp:nil
                                    ((comparator :target-type job-comparator
                                      :member-name "comparator" :json-name
                                      "comparator")
                                     (key :target-type
                                      simple-criterion-key-for-job :member-name
                                      "key" :json-name "key")
                                     (values :target-type list-of-string
                                      :member-name "values" :json-name
                                      "values"))
                                    (:shape-name "SimpleCriterionForJob"))

(smithy/sdk/shapes:define-enum simple-criterion-key-for-job
    common-lisp:nil
  (:account-id "ACCOUNT_ID")
  (:s3-bucket-name "S3_BUCKET_NAME")
  (:s3-bucket-effective-permission "S3_BUCKET_EFFECTIVE_PERMISSION")
  (:s3-bucket-shared-access "S3_BUCKET_SHARED_ACCESS"))

(smithy/sdk/shapes:define-structure simple-scope-term common-lisp:nil
                                    ((comparator :target-type job-comparator
                                      :member-name "comparator" :json-name
                                      "comparator")
                                     (key :target-type scope-filter-key
                                      :member-name "key" :json-name "key")
                                     (values :target-type list-of-string
                                      :member-name "values" :json-name
                                      "values"))
                                    (:shape-name "SimpleScopeTerm"))

(smithy/sdk/shapes:define-structure sort-criteria common-lisp:nil
                                    ((attribute-name :target-type string
                                      :member-name "attributeName" :json-name
                                      "attributeName")
                                     (order-by :target-type order-by
                                      :member-name "orderBy" :json-name
                                      "orderBy"))
                                    (:shape-name "SortCriteria"))

(smithy/sdk/shapes:define-structure statistics common-lisp:nil
                                    ((approximate-number-of-objects-to-process
                                      :target-type double :member-name
                                      "approximateNumberOfObjectsToProcess"
                                      :json-name
                                      "approximateNumberOfObjectsToProcess")
                                     (number-of-runs :target-type double
                                      :member-name "numberOfRuns" :json-name
                                      "numberOfRuns"))
                                    (:shape-name "Statistics"))

(smithy/sdk/shapes:define-enum storage-class
    common-lisp:nil
  (:standard "STANDARD")
  (:reduced-redundancy "REDUCED_REDUNDANCY")
  (:standard-ia "STANDARD_IA")
  (:intelligent-tiering "INTELLIGENT_TIERING")
  (:deep-archive "DEEP_ARCHIVE")
  (:onezone-ia "ONEZONE_IA")
  (:glacier "GLACIER")
  (:glacier-ir "GLACIER_IR")
  (:outposts "OUTPOSTS"))

(smithy/sdk/shapes:define-structure suppress-data-identifier common-lisp:nil
                                    ((id :target-type string :member-name "id"
                                      :json-name "id")
                                     (type :target-type data-identifier-type
                                      :member-name "type" :json-name "type"))
                                    (:shape-name "SuppressDataIdentifier"))

(smithy/sdk/shapes:define-structure tag-criterion-for-job common-lisp:nil
                                    ((comparator :target-type job-comparator
                                      :member-name "comparator" :json-name
                                      "comparator")
                                     (tag-values :target-type
                                      list-of-tag-criterion-pair-for-job
                                      :member-name "tagValues" :json-name
                                      "tagValues"))
                                    (:shape-name "TagCriterionForJob"))

(smithy/sdk/shapes:define-structure tag-criterion-pair-for-job common-lisp:nil
                                    ((key :target-type string :member-name
                                      "key" :json-name "key")
                                     (value :target-type string :member-name
                                      "value" :json-name "value"))
                                    (:shape-name "TagCriterionPairForJob"))

(smithy/sdk/shapes:define-map tag-map :key string :value string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags" :json-name
                                  "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-structure tag-scope-term common-lisp:nil
                                    ((comparator :target-type job-comparator
                                      :member-name "comparator" :json-name
                                      "comparator")
                                     (key :target-type string :member-name
                                      "key" :json-name "key")
                                     (tag-values :target-type
                                      list-of-tag-value-pair :member-name
                                      "tagValues" :json-name "tagValues")
                                     (target :target-type tag-target
                                      :member-name "target" :json-name
                                      "target"))
                                    (:shape-name "TagScopeTerm"))

(smithy/sdk/shapes:define-enum tag-target
    common-lisp:nil
  (:s3-object "S3_OBJECT"))

(smithy/sdk/shapes:define-structure tag-value-pair common-lisp:nil
                                    ((key :target-type string :member-name
                                      "key" :json-name "key")
                                     (value :target-type string :member-name
                                      "value" :json-name "value"))
                                    (:shape-name "TagValuePair"))

(smithy/sdk/shapes:define-input test-custom-data-identifier-request
                                common-lisp:nil
                                ((ignore-words :target-type list-of-string
                                  :member-name "ignoreWords" :json-name
                                  "ignoreWords")
                                 (keywords :target-type list-of-string
                                  :member-name "keywords" :json-name
                                  "keywords")
                                 (maximum-match-distance :target-type integer
                                  :member-name "maximumMatchDistance"
                                  :json-name "maximumMatchDistance")
                                 (regex :target-type string :required
                                  common-lisp:t :member-name "regex" :json-name
                                  "regex")
                                 (sample-text :target-type string :required
                                  common-lisp:t :member-name "sampleText"
                                  :json-name "sampleText"))
                                (:shape-name "TestCustomDataIdentifierRequest"))

(smithy/sdk/shapes:define-output test-custom-data-identifier-response
                                 common-lisp:nil
                                 ((match-count :target-type integer
                                   :member-name "matchCount" :json-name
                                   "matchCount"))
                                 (:shape-name
                                  "TestCustomDataIdentifierResponse"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message" :json-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-enum time-range
    common-lisp:nil
  (:month-to-date "MONTH_TO_DATE")
  (:past-30-days "PAST_30_DAYS"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum type
    common-lisp:nil
  (:none "NONE")
  (:aes256 "AES256")
  (:aws-kms "aws:kms")
  (:aws-kms-dsse "aws:kms:dsse"))

(smithy/sdk/shapes:define-enum unavailability-reason-code
    common-lisp:nil
  (:object-exceeds-size-quota "OBJECT_EXCEEDS_SIZE_QUOTA")
  (:unsupported-object-type "UNSUPPORTED_OBJECT_TYPE")
  (:unsupported-finding-type "UNSUPPORTED_FINDING_TYPE")
  (:invalid-classification-result "INVALID_CLASSIFICATION_RESULT")
  (:object-unavailable "OBJECT_UNAVAILABLE")
  (:account-not-in-organization "ACCOUNT_NOT_IN_ORGANIZATION")
  (:missing-get-member-permission "MISSING_GET_MEMBER_PERMISSION")
  (:role-too-permissive "ROLE_TOO_PERMISSIVE")
  (:member-role-too-permissive "MEMBER_ROLE_TOO_PERMISSIVE")
  (:invalid-result-signature "INVALID_RESULT_SIGNATURE")
  (:result-not-signed "RESULT_NOT_SIGNED"))

(smithy/sdk/shapes:define-enum unit
    common-lisp:nil
  (:terabytes "TERABYTES"))

(smithy/sdk/shapes:define-error unprocessable-entity-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"
                                  :json-name "message"))
                                (:shape-name "UnprocessableEntityException")
                                (:error-code 422))

(smithy/sdk/shapes:define-structure unprocessed-account common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (error-code :target-type error-code
                                      :member-name "errorCode" :json-name
                                      "errorCode")
                                     (error-message :target-type string
                                      :member-name "errorMessage" :json-name
                                      "errorMessage"))
                                    (:shape-name "UnprocessedAccount"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "tagKeys" :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-allow-list-request common-lisp:nil
                                ((criteria :target-type allow-list-criteria
                                  :required common-lisp:t :member-name
                                  "criteria" :json-name "criteria")
                                 (description :target-type
                                  string-min1max512pattern-ss :member-name
                                  "description" :json-name "description")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (name :target-type string-min1max128pattern
                                  :required common-lisp:t :member-name "name"
                                  :json-name "name"))
                                (:shape-name "UpdateAllowListRequest"))

(smithy/sdk/shapes:define-output update-allow-list-response common-lisp:nil
                                 ((arn :target-type
                                   string-min71max89pattern-arn-aws-aws-cn-aws-us-gov-macie2az19920d12allow-list-az0922
                                   :member-name "arn" :json-name "arn")
                                  (id :target-type
                                   string-min22max22pattern-az0922 :member-name
                                   "id" :json-name "id"))
                                 (:shape-name "UpdateAllowListResponse"))

(smithy/sdk/shapes:define-input
 update-automated-discovery-configuration-request common-lisp:nil
 ((auto-enable-organization-members :target-type auto-enable-mode :member-name
   "autoEnableOrganizationMembers" :json-name "autoEnableOrganizationMembers")
  (status :target-type automated-discovery-status :required common-lisp:t
   :member-name "status" :json-name "status"))
 (:shape-name "UpdateAutomatedDiscoveryConfigurationRequest"))

(smithy/sdk/shapes:define-output
 update-automated-discovery-configuration-response common-lisp:nil
 common-lisp:nil (:shape-name "UpdateAutomatedDiscoveryConfigurationResponse"))

(smithy/sdk/shapes:define-input update-classification-job-request
                                common-lisp:nil
                                ((job-id :target-type string :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t)
                                 (job-status :target-type job-status :required
                                  common-lisp:t :member-name "jobStatus"
                                  :json-name "jobStatus"))
                                (:shape-name "UpdateClassificationJobRequest"))

(smithy/sdk/shapes:define-output update-classification-job-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateClassificationJobResponse"))

(smithy/sdk/shapes:define-input update-classification-scope-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (s3 :target-type s3classification-scope-update
                                  :member-name "s3" :json-name "s3"))
                                (:shape-name
                                 "UpdateClassificationScopeRequest"))

(smithy/sdk/shapes:define-output update-classification-scope-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateClassificationScopeResponse"))

(smithy/sdk/shapes:define-input update-findings-filter-request common-lisp:nil
                                ((action :target-type findings-filter-action
                                  :member-name "action" :json-name "action")
                                 (client-token :target-type string :member-name
                                  "clientToken" :json-name "clientToken")
                                 (description :target-type string :member-name
                                  "description" :json-name "description")
                                 (finding-criteria :target-type
                                  finding-criteria :member-name
                                  "findingCriteria" :json-name
                                  "findingCriteria")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (name :target-type string :member-name "name"
                                  :json-name "name")
                                 (position :target-type integer :member-name
                                  "position" :json-name "position"))
                                (:shape-name "UpdateFindingsFilterRequest"))

(smithy/sdk/shapes:define-output update-findings-filter-response
                                 common-lisp:nil
                                 ((arn :target-type string :member-name "arn"
                                   :json-name "arn")
                                  (id :target-type string :member-name "id"
                                   :json-name "id"))
                                 (:shape-name "UpdateFindingsFilterResponse"))

(smithy/sdk/shapes:define-input update-macie-session-request common-lisp:nil
                                ((finding-publishing-frequency :target-type
                                  finding-publishing-frequency :member-name
                                  "findingPublishingFrequency" :json-name
                                  "findingPublishingFrequency")
                                 (status :target-type macie-status :member-name
                                  "status" :json-name "status"))
                                (:shape-name "UpdateMacieSessionRequest"))

(smithy/sdk/shapes:define-output update-macie-session-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateMacieSessionResponse"))

(smithy/sdk/shapes:define-input update-member-session-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (status :target-type macie-status :required
                                  common-lisp:t :member-name "status"
                                  :json-name "status"))
                                (:shape-name "UpdateMemberSessionRequest"))

(smithy/sdk/shapes:define-output update-member-session-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateMemberSessionResponse"))

(smithy/sdk/shapes:define-input update-organization-configuration-request
                                common-lisp:nil
                                ((auto-enable :target-type boolean :required
                                  common-lisp:t :member-name "autoEnable"
                                  :json-name "autoEnable"))
                                (:shape-name
                                 "UpdateOrganizationConfigurationRequest"))

(smithy/sdk/shapes:define-output update-organization-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateOrganizationConfigurationResponse"))

(smithy/sdk/shapes:define-input update-resource-profile-detections-request
                                common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-query "resourceArn")
                                 (suppress-data-identifiers :target-type
                                  list-of-suppress-data-identifier :member-name
                                  "suppressDataIdentifiers" :json-name
                                  "suppressDataIdentifiers"))
                                (:shape-name
                                 "UpdateResourceProfileDetectionsRequest"))

(smithy/sdk/shapes:define-output update-resource-profile-detections-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateResourceProfileDetectionsResponse"))

(smithy/sdk/shapes:define-input update-resource-profile-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-query "resourceArn")
                                 (sensitivity-score-override :target-type
                                  integer :member-name
                                  "sensitivityScoreOverride" :json-name
                                  "sensitivityScoreOverride"))
                                (:shape-name "UpdateResourceProfileRequest"))

(smithy/sdk/shapes:define-output update-resource-profile-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateResourceProfileResponse"))

(smithy/sdk/shapes:define-structure update-retrieval-configuration
                                    common-lisp:nil
                                    ((retrieval-mode :target-type
                                      retrieval-mode :required common-lisp:t
                                      :member-name "retrievalMode" :json-name
                                      "retrievalMode")
                                     (role-name :target-type
                                      string-min1max64pattern-w :member-name
                                      "roleName" :json-name "roleName"))
                                    (:shape-name
                                     "UpdateRetrievalConfiguration"))

(smithy/sdk/shapes:define-input update-reveal-configuration-request
                                common-lisp:nil
                                ((configuration :target-type
                                  reveal-configuration :required common-lisp:t
                                  :member-name "configuration" :json-name
                                  "configuration")
                                 (retrieval-configuration :target-type
                                  update-retrieval-configuration :member-name
                                  "retrievalConfiguration" :json-name
                                  "retrievalConfiguration"))
                                (:shape-name
                                 "UpdateRevealConfigurationRequest"))

(smithy/sdk/shapes:define-output update-reveal-configuration-response
                                 common-lisp:nil
                                 ((configuration :target-type
                                   reveal-configuration :member-name
                                   "configuration" :json-name "configuration")
                                  (retrieval-configuration :target-type
                                   retrieval-configuration :member-name
                                   "retrievalConfiguration" :json-name
                                   "retrievalConfiguration"))
                                 (:shape-name
                                  "UpdateRevealConfigurationResponse"))

(smithy/sdk/shapes:define-input update-sensitivity-inspection-template-request
                                common-lisp:nil
                                ((description :target-type string :member-name
                                  "description" :json-name "description")
                                 (excludes :target-type
                                  sensitivity-inspection-template-excludes
                                  :member-name "excludes" :json-name
                                  "excludes")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (includes :target-type
                                  sensitivity-inspection-template-includes
                                  :member-name "includes" :json-name
                                  "includes"))
                                (:shape-name
                                 "UpdateSensitivityInspectionTemplateRequest"))

(smithy/sdk/shapes:define-output
 update-sensitivity-inspection-template-response common-lisp:nil
 common-lisp:nil (:shape-name "UpdateSensitivityInspectionTemplateResponse"))

(smithy/sdk/shapes:define-structure usage-by-account common-lisp:nil
                                    ((currency :target-type currency
                                      :member-name "currency" :json-name
                                      "currency")
                                     (estimated-cost :target-type string
                                      :member-name "estimatedCost" :json-name
                                      "estimatedCost")
                                     (service-limit :target-type service-limit
                                      :member-name "serviceLimit" :json-name
                                      "serviceLimit")
                                     (type :target-type usage-type :member-name
                                      "type" :json-name "type"))
                                    (:shape-name "UsageByAccount"))

(smithy/sdk/shapes:define-structure usage-record common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (automated-discovery-free-trial-start-date
                                      :target-type timestamp-iso8601
                                      :member-name
                                      "automatedDiscoveryFreeTrialStartDate"
                                      :json-name
                                      "automatedDiscoveryFreeTrialStartDate")
                                     (free-trial-start-date :target-type
                                      timestamp-iso8601 :member-name
                                      "freeTrialStartDate" :json-name
                                      "freeTrialStartDate")
                                     (usage :target-type
                                      list-of-usage-by-account :member-name
                                      "usage" :json-name "usage"))
                                    (:shape-name "UsageRecord"))

(smithy/sdk/shapes:define-structure usage-statistics-filter common-lisp:nil
                                    ((comparator :target-type
                                      usage-statistics-filter-comparator
                                      :member-name "comparator" :json-name
                                      "comparator")
                                     (key :target-type
                                      usage-statistics-filter-key :member-name
                                      "key" :json-name "key")
                                     (values :target-type list-of-string
                                      :member-name "values" :json-name
                                      "values"))
                                    (:shape-name "UsageStatisticsFilter"))

(smithy/sdk/shapes:define-enum usage-statistics-filter-comparator
    common-lisp:nil
  (:gt "GT")
  (:gte "GTE")
  (:lt "LT")
  (:lte "LTE")
  (:eq "EQ")
  (:ne "NE")
  (:contains "CONTAINS"))

(smithy/sdk/shapes:define-enum usage-statistics-filter-key
    common-lisp:nil
  (:account-id "accountId")
  (:service-limit "serviceLimit")
  (:free-trial-start-date "freeTrialStartDate")
  (:total "total"))

(smithy/sdk/shapes:define-structure usage-statistics-sort-by common-lisp:nil
                                    ((key :target-type
                                      usage-statistics-sort-key :member-name
                                      "key" :json-name "key")
                                     (order-by :target-type order-by
                                      :member-name "orderBy" :json-name
                                      "orderBy"))
                                    (:shape-name "UsageStatisticsSortBy"))

(smithy/sdk/shapes:define-enum usage-statistics-sort-key
    common-lisp:nil
  (:account-id "accountId")
  (:total "total")
  (:service-limit-value "serviceLimitValue")
  (:free-trial-start-date "freeTrialStartDate"))

(smithy/sdk/shapes:define-structure usage-total common-lisp:nil
                                    ((currency :target-type currency
                                      :member-name "currency" :json-name
                                      "currency")
                                     (estimated-cost :target-type string
                                      :member-name "estimatedCost" :json-name
                                      "estimatedCost")
                                     (type :target-type usage-type :member-name
                                      "type" :json-name "type"))
                                    (:shape-name "UsageTotal"))

(smithy/sdk/shapes:define-enum usage-type
    common-lisp:nil
  (:data-inventory-evaluation "DATA_INVENTORY_EVALUATION")
  (:sensitive-data-discovery "SENSITIVE_DATA_DISCOVERY")
  (:automated-sensitive-data-discovery "AUTOMATED_SENSITIVE_DATA_DISCOVERY")
  (:automated-object-monitoring "AUTOMATED_OBJECT_MONITORING"))

(smithy/sdk/shapes:define-structure user-identity common-lisp:nil
                                    ((assumed-role :target-type assumed-role
                                      :member-name "assumedRole" :json-name
                                      "assumedRole")
                                     (aws-account :target-type aws-account
                                      :member-name "awsAccount" :json-name
                                      "awsAccount")
                                     (aws-service :target-type aws-service
                                      :member-name "awsService" :json-name
                                      "awsService")
                                     (federated-user :target-type
                                      federated-user :member-name
                                      "federatedUser" :json-name
                                      "federatedUser")
                                     (iam-user :target-type iam-user
                                      :member-name "iamUser" :json-name
                                      "iamUser")
                                     (root :target-type user-identity-root
                                      :member-name "root" :json-name "root")
                                     (type :target-type user-identity-type
                                      :member-name "type" :json-name "type"))
                                    (:shape-name "UserIdentity"))

(smithy/sdk/shapes:define-structure user-identity-root common-lisp:nil
                                    ((account-id :target-type string
                                      :member-name "accountId" :json-name
                                      "accountId")
                                     (arn :target-type string :member-name
                                      "arn" :json-name "arn")
                                     (principal-id :target-type string
                                      :member-name "principalId" :json-name
                                      "principalId"))
                                    (:shape-name "UserIdentityRoot"))

(smithy/sdk/shapes:define-enum user-identity-type
    common-lisp:nil
  (:assumed-role "AssumedRole")
  (:iamuser "IAMUser")
  (:federated-user "FederatedUser")
  (:root "Root")
  (:awsaccount "AWSAccount")
  (:awsservice "AWSService"))

(smithy/sdk/shapes:define-structure user-paused-details common-lisp:nil
                                    ((job-expires-at :target-type
                                      timestamp-iso8601 :member-name
                                      "jobExpiresAt" :json-name "jobExpiresAt")
                                     (job-imminent-expiration-health-event-arn
                                      :target-type string :member-name
                                      "jobImminentExpirationHealthEventArn"
                                      :json-name
                                      "jobImminentExpirationHealthEventArn")
                                     (job-paused-at :target-type
                                      timestamp-iso8601 :member-name
                                      "jobPausedAt" :json-name "jobPausedAt"))
                                    (:shape-name "UserPausedDetails"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message" :json-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure weekly-schedule common-lisp:nil
                                    ((day-of-week :target-type day-of-week
                                      :member-name "dayOfWeek" :json-name
                                      "dayOfWeek"))
                                    (:shape-name "WeeklySchedule"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-admin-account :member admin-account)

(smithy/sdk/shapes:define-list list-of-allow-list-summary :member
                               allow-list-summary)

(smithy/sdk/shapes:define-list list-of-automated-discovery-account :member
                               automated-discovery-account)

(smithy/sdk/shapes:define-list list-of-automated-discovery-account-update
                               :member automated-discovery-account-update)

(smithy/sdk/shapes:define-list list-of-automated-discovery-account-update-error
                               :member automated-discovery-account-update-error)

(smithy/sdk/shapes:define-list list-of-batch-get-custom-data-identifier-summary
                               :member batch-get-custom-data-identifier-summary)

(smithy/sdk/shapes:define-list list-of-bucket-metadata :member bucket-metadata)

(smithy/sdk/shapes:define-list list-of-classification-scope-summary :member
                               classification-scope-summary)

(smithy/sdk/shapes:define-list list-of-criteria-for-job :member
                               criteria-for-job)

(smithy/sdk/shapes:define-list list-of-custom-data-identifier-summary :member
                               custom-data-identifier-summary)

(smithy/sdk/shapes:define-list list-of-detected-data-details :member
                               detected-data-details)

(smithy/sdk/shapes:define-list list-of-detection :member detection)

(smithy/sdk/shapes:define-list list-of-finding :member finding)

(smithy/sdk/shapes:define-list list-of-finding-type :member finding-type)

(smithy/sdk/shapes:define-list list-of-findings-filter-list-item :member
                               findings-filter-list-item)

(smithy/sdk/shapes:define-list list-of-group-count :member group-count)

(smithy/sdk/shapes:define-list list-of-invitation :member invitation)

(smithy/sdk/shapes:define-list list-of-job-scope-term :member job-scope-term)

(smithy/sdk/shapes:define-list list-of-job-summary :member job-summary)

(smithy/sdk/shapes:define-list list-of-key-value-pair :member key-value-pair)

(smithy/sdk/shapes:define-list list-of-list-jobs-filter-term :member
                               list-jobs-filter-term)

(smithy/sdk/shapes:define-list list-of-managed-data-identifier-summary :member
                               managed-data-identifier-summary)

(smithy/sdk/shapes:define-list list-of-matching-resource :member
                               matching-resource)

(smithy/sdk/shapes:define-list list-of-member :member member)

(smithy/sdk/shapes:define-list list-of-resource-profile-artifact :member
                               resource-profile-artifact)

(smithy/sdk/shapes:define-list list-of-s3bucket-definition-for-job :member
                               s3bucket-definition-for-job)

(smithy/sdk/shapes:define-list list-of-s3bucket-name :member s3bucket-name)

(smithy/sdk/shapes:define-list list-of-search-resources-criteria :member
                               search-resources-criteria)

(smithy/sdk/shapes:define-list list-of-search-resources-tag-criterion-pair
                               :member search-resources-tag-criterion-pair)

(smithy/sdk/shapes:define-list list-of-sensitivity-inspection-templates-entry
                               :member sensitivity-inspection-templates-entry)

(smithy/sdk/shapes:define-list list-of-suppress-data-identifier :member
                               suppress-data-identifier)

(smithy/sdk/shapes:define-list list-of-tag-criterion-pair-for-job :member
                               tag-criterion-pair-for-job)

(smithy/sdk/shapes:define-list list-of-tag-value-pair :member tag-value-pair)

(smithy/sdk/shapes:define-list list-of-unavailability-reason-code :member
                               unavailability-reason-code)

(smithy/sdk/shapes:define-list list-of-unprocessed-account :member
                               unprocessed-account)

(smithy/sdk/shapes:define-list list-of-usage-by-account :member
                               usage-by-account)

(smithy/sdk/shapes:define-list list-of-usage-record :member usage-record)

(smithy/sdk/shapes:define-list list-of-usage-statistics-filter :member
                               usage-statistics-filter)

(smithy/sdk/shapes:define-list list-of-usage-total :member usage-total)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max1024pattern-ss
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max128 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max128pattern
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max2048
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max512pattern-ss
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max64pattern-w
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min22max22pattern-az0922
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min3max255pattern-aza-z093255
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 string-min71max89pattern-arn-aws-aws-cn-aws-us-gov-macie2az19920d12allow-list-az0922
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp-iso8601
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation accept-invitation :shape-name
                                       "AcceptInvitation" :input
                                       accept-invitation-request :output
                                       accept-invitation-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/invitations/accept" :code 200)

(smithy/sdk/operation:define-operation batch-get-custom-data-identifiers
                                       :shape-name
                                       "BatchGetCustomDataIdentifiers" :input
                                       batch-get-custom-data-identifiers-request
                                       :output
                                       batch-get-custom-data-identifiers-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/custom-data-identifiers/get" :code 200)

(smithy/sdk/operation:define-operation
 batch-update-automated-discovery-accounts :shape-name
 "BatchUpdateAutomatedDiscoveryAccounts" :input
 batch-update-automated-discovery-accounts-request :output
 batch-update-automated-discovery-accounts-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  throttling-exception validation-exception)
 :method "PATCH" :uri "/automated-discovery/accounts" :code 200)

(smithy/sdk/operation:define-operation create-allow-list :shape-name
                                       "CreateAllowList" :input
                                       create-allow-list-request :output
                                       create-allow-list-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/allow-lists" :code
                                       200)

(smithy/sdk/operation:define-operation create-classification-job :shape-name
                                       "CreateClassificationJob" :input
                                       create-classification-job-request
                                       :output
                                       create-classification-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/jobs" :code 200)

(smithy/sdk/operation:define-operation create-custom-data-identifier
                                       :shape-name "CreateCustomDataIdentifier"
                                       :input
                                       create-custom-data-identifier-request
                                       :output
                                       create-custom-data-identifier-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/custom-data-identifiers" :code 200)

(smithy/sdk/operation:define-operation create-findings-filter :shape-name
                                       "CreateFindingsFilter" :input
                                       create-findings-filter-request :output
                                       create-findings-filter-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/findingsfilters"
                                       :code 200)

(smithy/sdk/operation:define-operation create-invitations :shape-name
                                       "CreateInvitations" :input
                                       create-invitations-request :output
                                       create-invitations-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/invitations" :code
                                       200)

(smithy/sdk/operation:define-operation create-member :shape-name "CreateMember"
                                       :input create-member-request :output
                                       create-member-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/members" :code 200)

(smithy/sdk/operation:define-operation create-sample-findings :shape-name
                                       "CreateSampleFindings" :input
                                       create-sample-findings-request :output
                                       create-sample-findings-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/findings/sample"
                                       :code 200)

(smithy/sdk/operation:define-operation decline-invitations :shape-name
                                       "DeclineInvitations" :input
                                       decline-invitations-request :output
                                       decline-invitations-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/invitations/decline" :code 200)

(smithy/sdk/operation:define-operation delete-allow-list :shape-name
                                       "DeleteAllowList" :input
                                       delete-allow-list-request :output
                                       delete-allow-list-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/allow-lists/{id}" :code 200)

(smithy/sdk/operation:define-operation delete-custom-data-identifier
                                       :shape-name "DeleteCustomDataIdentifier"
                                       :input
                                       delete-custom-data-identifier-request
                                       :output
                                       delete-custom-data-identifier-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/custom-data-identifiers/{id}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-findings-filter :shape-name
                                       "DeleteFindingsFilter" :input
                                       delete-findings-filter-request :output
                                       delete-findings-filter-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/findingsfilters/{id}" :code 200)

(smithy/sdk/operation:define-operation delete-invitations :shape-name
                                       "DeleteInvitations" :input
                                       delete-invitations-request :output
                                       delete-invitations-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/invitations/delete" :code 200)

(smithy/sdk/operation:define-operation delete-member :shape-name "DeleteMember"
                                       :input delete-member-request :output
                                       delete-member-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/members/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-buckets :shape-name
                                       "DescribeBuckets" :input
                                       describe-buckets-request :output
                                       describe-buckets-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/datasources/s3"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-classification-job :shape-name
                                       "DescribeClassificationJob" :input
                                       describe-classification-job-request
                                       :output
                                       describe-classification-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/jobs/{jobId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-organization-configuration
                                       :shape-name
                                       "DescribeOrganizationConfiguration"
                                       :input
                                       describe-organization-configuration-request
                                       :output
                                       describe-organization-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/admin/configuration" :code 200)

(smithy/sdk/operation:define-operation disable-macie :shape-name "DisableMacie"
                                       :input disable-macie-request :output
                                       disable-macie-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/macie" :code 200)

(smithy/sdk/operation:define-operation disable-organization-admin-account
                                       :shape-name
                                       "DisableOrganizationAdminAccount" :input
                                       disable-organization-admin-account-request
                                       :output
                                       disable-organization-admin-account-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/admin" :code 200)

(smithy/sdk/operation:define-operation disassociate-from-administrator-account
                                       :shape-name
                                       "DisassociateFromAdministratorAccount"
                                       :input
                                       disassociate-from-administrator-account-request
                                       :output
                                       disassociate-from-administrator-account-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/administrator/disassociate" :code 200)

(smithy/sdk/operation:define-operation disassociate-from-master-account
                                       :shape-name
                                       "DisassociateFromMasterAccount" :input
                                       disassociate-from-master-account-request
                                       :output
                                       disassociate-from-master-account-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/master/disassociate" :code 200)

(smithy/sdk/operation:define-operation disassociate-member :shape-name
                                       "DisassociateMember" :input
                                       disassociate-member-request :output
                                       disassociate-member-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/members/disassociate/{id}" :code 200)

(smithy/sdk/operation:define-operation enable-macie :shape-name "EnableMacie"
                                       :input enable-macie-request :output
                                       enable-macie-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/macie" :code 200)

(smithy/sdk/operation:define-operation enable-organization-admin-account
                                       :shape-name
                                       "EnableOrganizationAdminAccount" :input
                                       enable-organization-admin-account-request
                                       :output
                                       enable-organization-admin-account-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/admin" :code 200)

(smithy/sdk/operation:define-operation get-administrator-account :shape-name
                                       "GetAdministratorAccount" :input
                                       get-administrator-account-request
                                       :output
                                       get-administrator-account-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/administrator"
                                       :code 200)

(smithy/sdk/operation:define-operation get-allow-list :shape-name
                                       "GetAllowList" :input
                                       get-allow-list-request :output
                                       get-allow-list-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/allow-lists/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-automated-discovery-configuration
                                       :shape-name
                                       "GetAutomatedDiscoveryConfiguration"
                                       :input
                                       get-automated-discovery-configuration-request
                                       :output
                                       get-automated-discovery-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/automated-discovery/configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-bucket-statistics :shape-name
                                       "GetBucketStatistics" :input
                                       get-bucket-statistics-request :output
                                       get-bucket-statistics-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/datasources/s3/statistics" :code 200)

(smithy/sdk/operation:define-operation get-classification-export-configuration
                                       :shape-name
                                       "GetClassificationExportConfiguration"
                                       :input
                                       get-classification-export-configuration-request
                                       :output
                                       get-classification-export-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/classification-export-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-classification-scope :shape-name
                                       "GetClassificationScope" :input
                                       get-classification-scope-request :output
                                       get-classification-scope-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/classification-scopes/{id}" :code 200)

(smithy/sdk/operation:define-operation get-custom-data-identifier :shape-name
                                       "GetCustomDataIdentifier" :input
                                       get-custom-data-identifier-request
                                       :output
                                       get-custom-data-identifier-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/custom-data-identifiers/{id}" :code
                                       200)

(smithy/sdk/operation:define-operation get-finding-statistics :shape-name
                                       "GetFindingStatistics" :input
                                       get-finding-statistics-request :output
                                       get-finding-statistics-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/findings/statistics" :code 200)

(smithy/sdk/operation:define-operation get-findings :shape-name "GetFindings"
                                       :input get-findings-request :output
                                       get-findings-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/findings/describe"
                                       :code 200)

(smithy/sdk/operation:define-operation get-findings-filter :shape-name
                                       "GetFindingsFilter" :input
                                       get-findings-filter-request :output
                                       get-findings-filter-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/findingsfilters/{id}" :code 200)

(smithy/sdk/operation:define-operation get-findings-publication-configuration
                                       :shape-name
                                       "GetFindingsPublicationConfiguration"
                                       :input
                                       get-findings-publication-configuration-request
                                       :output
                                       get-findings-publication-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/findings-publication-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-invitations-count :shape-name
                                       "GetInvitationsCount" :input
                                       get-invitations-count-request :output
                                       get-invitations-count-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/invitations/count"
                                       :code 200)

(smithy/sdk/operation:define-operation get-macie-session :shape-name
                                       "GetMacieSession" :input
                                       get-macie-session-request :output
                                       get-macie-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/macie" :code 200)

(smithy/sdk/operation:define-operation get-master-account :shape-name
                                       "GetMasterAccount" :input
                                       get-master-account-request :output
                                       get-master-account-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/master" :code 200)

(smithy/sdk/operation:define-operation get-member :shape-name "GetMember"
                                       :input get-member-request :output
                                       get-member-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/members/{id}" :code
                                       200)

(smithy/sdk/operation:define-operation get-resource-profile :shape-name
                                       "GetResourceProfile" :input
                                       get-resource-profile-request :output
                                       get-resource-profile-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/resource-profiles"
                                       :code 200)

(smithy/sdk/operation:define-operation get-reveal-configuration :shape-name
                                       "GetRevealConfiguration" :input
                                       get-reveal-configuration-request :output
                                       get-reveal-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/reveal-configuration" :code 200)

(smithy/sdk/operation:define-operation get-sensitive-data-occurrences
                                       :shape-name
                                       "GetSensitiveDataOccurrences" :input
                                       get-sensitive-data-occurrences-request
                                       :output
                                       get-sensitive-data-occurrences-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unprocessable-entity-exception)
                                       :method "GET" :uri
                                       "/findings/{findingId}/reveal" :code 200)

(smithy/sdk/operation:define-operation
 get-sensitive-data-occurrences-availability :shape-name
 "GetSensitiveDataOccurrencesAvailability" :input
 get-sensitive-data-occurrences-availability-request :output
 get-sensitive-data-occurrences-availability-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception)
 :method "GET" :uri "/findings/{findingId}/reveal/availability" :code 200)

(smithy/sdk/operation:define-operation get-sensitivity-inspection-template
                                       :shape-name
                                       "GetSensitivityInspectionTemplate"
                                       :input
                                       get-sensitivity-inspection-template-request
                                       :output
                                       get-sensitivity-inspection-template-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/templates/sensitivity-inspections/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-usage-statistics :shape-name
                                       "GetUsageStatistics" :input
                                       get-usage-statistics-request :output
                                       get-usage-statistics-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/usage/statistics"
                                       :code 200)

(smithy/sdk/operation:define-operation get-usage-totals :shape-name
                                       "GetUsageTotals" :input
                                       get-usage-totals-request :output
                                       get-usage-totals-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/usage" :code 200)

(smithy/sdk/operation:define-operation list-allow-lists :shape-name
                                       "ListAllowLists" :input
                                       list-allow-lists-request :output
                                       list-allow-lists-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/allow-lists" :code
                                       200)

(smithy/sdk/operation:define-operation list-automated-discovery-accounts
                                       :shape-name
                                       "ListAutomatedDiscoveryAccounts" :input
                                       list-automated-discovery-accounts-request
                                       :output
                                       list-automated-discovery-accounts-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/automated-discovery/accounts" :code
                                       200)

(smithy/sdk/operation:define-operation list-classification-jobs :shape-name
                                       "ListClassificationJobs" :input
                                       list-classification-jobs-request :output
                                       list-classification-jobs-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/jobs/list" :code
                                       200)

(smithy/sdk/operation:define-operation list-classification-scopes :shape-name
                                       "ListClassificationScopes" :input
                                       list-classification-scopes-request
                                       :output
                                       list-classification-scopes-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/classification-scopes" :code 200)

(smithy/sdk/operation:define-operation list-custom-data-identifiers :shape-name
                                       "ListCustomDataIdentifiers" :input
                                       list-custom-data-identifiers-request
                                       :output
                                       list-custom-data-identifiers-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/custom-data-identifiers/list" :code
                                       200)

(smithy/sdk/operation:define-operation list-findings :shape-name "ListFindings"
                                       :input list-findings-request :output
                                       list-findings-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/findings" :code
                                       200)

(smithy/sdk/operation:define-operation list-findings-filters :shape-name
                                       "ListFindingsFilters" :input
                                       list-findings-filters-request :output
                                       list-findings-filters-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/findingsfilters"
                                       :code 200)

(smithy/sdk/operation:define-operation list-invitations :shape-name
                                       "ListInvitations" :input
                                       list-invitations-request :output
                                       list-invitations-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/invitations" :code
                                       200)

(smithy/sdk/operation:define-operation list-managed-data-identifiers
                                       :shape-name "ListManagedDataIdentifiers"
                                       :input
                                       list-managed-data-identifiers-request
                                       :output
                                       list-managed-data-identifiers-response
                                       :errors common-lisp:nil :method "POST"
                                       :uri "/managed-data-identifiers/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-members :shape-name "ListMembers"
                                       :input list-members-request :output
                                       list-members-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/members" :code 200)

(smithy/sdk/operation:define-operation list-organization-admin-accounts
                                       :shape-name
                                       "ListOrganizationAdminAccounts" :input
                                       list-organization-admin-accounts-request
                                       :output
                                       list-organization-admin-accounts-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/admin" :code 200)

(smithy/sdk/operation:define-operation list-resource-profile-artifacts
                                       :shape-name
                                       "ListResourceProfileArtifacts" :input
                                       list-resource-profile-artifacts-request
                                       :output
                                       list-resource-profile-artifacts-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/resource-profiles/artifacts" :code 200)

(smithy/sdk/operation:define-operation list-resource-profile-detections
                                       :shape-name
                                       "ListResourceProfileDetections" :input
                                       list-resource-profile-detections-request
                                       :output
                                       list-resource-profile-detections-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/resource-profiles/detections" :code
                                       200)

(smithy/sdk/operation:define-operation list-sensitivity-inspection-templates
                                       :shape-name
                                       "ListSensitivityInspectionTemplates"
                                       :input
                                       list-sensitivity-inspection-templates-request
                                       :output
                                       list-sensitivity-inspection-templates-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/templates/sensitivity-inspections"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation put-classification-export-configuration
                                       :shape-name
                                       "PutClassificationExportConfiguration"
                                       :input
                                       put-classification-export-configuration-request
                                       :output
                                       put-classification-export-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/classification-export-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation put-findings-publication-configuration
                                       :shape-name
                                       "PutFindingsPublicationConfiguration"
                                       :input
                                       put-findings-publication-configuration-request
                                       :output
                                       put-findings-publication-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/findings-publication-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation search-resources :shape-name
                                       "SearchResources" :input
                                       search-resources-request :output
                                       search-resources-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/datasources/search-resources" :code
                                       200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/tags/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation test-custom-data-identifier :shape-name
                                       "TestCustomDataIdentifier" :input
                                       test-custom-data-identifier-request
                                       :output
                                       test-custom-data-identifier-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/custom-data-identifiers/test" :code
                                       200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       common-lisp:nil :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-allow-list :shape-name
                                       "UpdateAllowList" :input
                                       update-allow-list-request :output
                                       update-allow-list-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/allow-lists/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-automated-discovery-configuration
                                       :shape-name
                                       "UpdateAutomatedDiscoveryConfiguration"
                                       :input
                                       update-automated-discovery-configuration-request
                                       :output
                                       update-automated-discovery-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/automated-discovery/configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation update-classification-job :shape-name
                                       "UpdateClassificationJob" :input
                                       update-classification-job-request
                                       :output
                                       update-classification-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri "/jobs/{jobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-classification-scope :shape-name
                                       "UpdateClassificationScope" :input
                                       update-classification-scope-request
                                       :output
                                       update-classification-scope-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/classification-scopes/{id}" :code 200)

(smithy/sdk/operation:define-operation update-findings-filter :shape-name
                                       "UpdateFindingsFilter" :input
                                       update-findings-filter-request :output
                                       update-findings-filter-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/findingsfilters/{id}" :code 200)

(smithy/sdk/operation:define-operation update-macie-session :shape-name
                                       "UpdateMacieSession" :input
                                       update-macie-session-request :output
                                       update-macie-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri "/macie" :code 200)

(smithy/sdk/operation:define-operation update-member-session :shape-name
                                       "UpdateMemberSession" :input
                                       update-member-session-request :output
                                       update-member-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/macie/members/{id}" :code 200)

(smithy/sdk/operation:define-operation update-organization-configuration
                                       :shape-name
                                       "UpdateOrganizationConfiguration" :input
                                       update-organization-configuration-request
                                       :output
                                       update-organization-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/admin/configuration" :code 200)

(smithy/sdk/operation:define-operation update-resource-profile :shape-name
                                       "UpdateResourceProfile" :input
                                       update-resource-profile-request :output
                                       update-resource-profile-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/resource-profiles" :code 200)

(smithy/sdk/operation:define-operation update-resource-profile-detections
                                       :shape-name
                                       "UpdateResourceProfileDetections" :input
                                       update-resource-profile-detections-request
                                       :output
                                       update-resource-profile-detections-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/resource-profiles/detections" :code
                                       200)

(smithy/sdk/operation:define-operation update-reveal-configuration :shape-name
                                       "UpdateRevealConfiguration" :input
                                       update-reveal-configuration-request
                                       :output
                                       update-reveal-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/reveal-configuration" :code 200)

(smithy/sdk/operation:define-operation update-sensitivity-inspection-template
                                       :shape-name
                                       "UpdateSensitivityInspectionTemplate"
                                       :input
                                       update-sensitivity-inspection-template-request
                                       :output
                                       update-sensitivity-inspection-template-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/templates/sensitivity-inspections/{id}"
                                       :code 200)
