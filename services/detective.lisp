(uiop/package:define-package #:pira/detective (:use)
                             (:export #:apifailure-count #:apiname
                              #:apisuccess-count #:accept-invitation
                              #:accept-invitation-request
                              #:access-denied-exception #:account #:account-id
                              #:account-id-extended-list #:account-id-list
                              #:account-list #:administrator
                              #:administrator-list #:ai-pagination-token
                              #:amazon-detective #:aso
                              #:batch-get-graph-member-datasources
                              #:batch-get-graph-member-datasources-request
                              #:batch-get-graph-member-datasources-response
                              #:batch-get-membership-datasources
                              #:batch-get-membership-datasources-request
                              #:batch-get-membership-datasources-response
                              #:boolean #:byte-value #:conflict-exception
                              #:create-graph #:create-graph-request
                              #:create-graph-response #:create-members
                              #:create-members-request
                              #:create-members-response #:datasource-package
                              #:datasource-package-ingest-detail
                              #:datasource-package-ingest-details
                              #:datasource-package-ingest-history
                              #:datasource-package-ingest-state
                              #:datasource-package-ingest-states
                              #:datasource-package-list
                              #:datasource-package-usage-info #:date-filter
                              #:delete-graph #:delete-graph-request
                              #:delete-members #:delete-members-request
                              #:delete-members-response
                              #:describe-organization-configuration
                              #:describe-organization-configuration-request
                              #:describe-organization-configuration-response
                              #:disable-organization-admin-account
                              #:disassociate-membership
                              #:disassociate-membership-request #:email-address
                              #:email-message
                              #:enable-organization-admin-account
                              #:enable-organization-admin-account-request
                              #:entity-arn #:entity-type #:error-code
                              #:error-code-reason #:error-message #:field
                              #:filter-criteria #:flagged-ip-address-detail
                              #:get-investigation #:get-investigation-request
                              #:get-investigation-response #:get-members
                              #:get-members-request #:get-members-response
                              #:graph #:graph-arn #:graph-arn-list #:graph-list
                              #:hourly-time-delta #:id
                              #:impossible-travel-detail #:indicator
                              #:indicator-detail #:indicator-type #:indicators
                              #:internal-server-exception
                              #:investigation-detail #:investigation-details
                              #:investigation-id #:invitation-type #:ip-address
                              #:is-new-for-entire-account
                              #:last-ingest-state-change-dates
                              #:list-datasource-packages
                              #:list-datasource-packages-request
                              #:list-datasource-packages-response #:list-graphs
                              #:list-graphs-request #:list-graphs-response
                              #:list-indicators #:list-indicators-request
                              #:list-indicators-response #:list-investigations
                              #:list-investigations-request
                              #:list-investigations-response #:list-invitations
                              #:list-invitations-request
                              #:list-invitations-response #:list-members
                              #:list-members-request #:list-members-response
                              #:list-organization-admin-accounts
                              #:list-organization-admin-accounts-request
                              #:list-organization-admin-accounts-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:location
                              #:max-results #:member-detail
                              #:member-detail-list #:member-disabled-reason
                              #:member-results-limit #:member-status
                              #:membership-datasources
                              #:membership-datasources-list #:new-aso-detail
                              #:new-geolocation-detail #:new-user-agent-detail
                              #:pagination-token #:percentage #:procedure
                              #:reason #:reject-invitation
                              #:reject-invitation-request
                              #:related-finding-detail
                              #:related-finding-group-detail #:resource
                              #:resource-list #:resource-not-found-exception
                              #:service-quota-exceeded-exception #:severity
                              #:sort-criteria #:sort-order
                              #:start-investigation
                              #:start-investigation-request
                              #:start-investigation-response
                              #:start-monitoring-member
                              #:start-monitoring-member-request #:state
                              #:status #:string-filter #:ttps-observed-detail
                              #:tactic #:tag-key #:tag-key-list #:tag-map
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value #:technique
                              #:timestamp #:timestamp-for-collection
                              #:too-many-requests-exception #:type
                              #:unprocessed-account #:unprocessed-account-list
                              #:unprocessed-graph #:unprocessed-graph-list
                              #:unprocessed-reason #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response
                              #:update-datasource-packages
                              #:update-datasource-packages-request
                              #:update-investigation-state
                              #:update-investigation-state-request
                              #:update-organization-configuration
                              #:update-organization-configuration-request
                              #:user-agent #:validation-exception #:value
                              #:volume-usage-by-datasource-package))
(common-lisp:in-package #:pira/detective)

(smithy/sdk/service:define-service amazon-detective :shape-name
                                   "AmazonDetective" :version "2018-10-26"
                                   :title "Amazon Detective" :traits
                                   '(("aws.api#service" ("sdkId" . "Detective")
                                      ("arnNamespace" . "detective")
                                      ("cloudFormationName" . "Detective")
                                      ("cloudTrailEventSource"
                                       . "detective.amazonaws.com")
                                      ("endpointPrefix" . "api.detective"))
                                     ("aws.auth#sigv4" ("name" . "detective"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type apifailure-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type apiname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type apisuccess-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input accept-invitation-request common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn"))
                                (:shape-name "AcceptInvitationRequest"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (error-code-reason :target-type
                                  error-code-reason :member-name
                                  "ErrorCodeReason")
                                 (sub-error-code :target-type error-code
                                  :member-name "SubErrorCode")
                                 (sub-error-code-reason :target-type
                                  error-code-reason :member-name
                                  "SubErrorCodeReason"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure account common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "AccountId")
                                     (email-address :target-type email-address
                                      :required common-lisp:t :member-name
                                      "EmailAddress"))
                                    (:shape-name "Account"))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-id-extended-list :member account-id)

(smithy/sdk/shapes:define-list account-id-list :member account-id)

(smithy/sdk/shapes:define-list account-list :member account)

(smithy/sdk/shapes:define-structure administrator common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (graph-arn :target-type graph-arn
                                      :member-name "GraphArn")
                                     (delegation-time :target-type timestamp
                                      :member-name "DelegationTime"))
                                    (:shape-name "Administrator"))

(smithy/sdk/shapes:define-list administrator-list :member administrator)

(smithy/sdk/shapes:define-type ai-pagination-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aso smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input batch-get-graph-member-datasources-request
                                common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn")
                                 (account-ids :target-type
                                  account-id-extended-list :required
                                  common-lisp:t :member-name "AccountIds"))
                                (:shape-name
                                 "BatchGetGraphMemberDatasourcesRequest"))

(smithy/sdk/shapes:define-output batch-get-graph-member-datasources-response
                                 common-lisp:nil
                                 ((member-datasources :target-type
                                   membership-datasources-list :member-name
                                   "MemberDatasources")
                                  (unprocessed-accounts :target-type
                                   unprocessed-account-list :member-name
                                   "UnprocessedAccounts"))
                                 (:shape-name
                                  "BatchGetGraphMemberDatasourcesResponse"))

(smithy/sdk/shapes:define-input batch-get-membership-datasources-request
                                common-lisp:nil
                                ((graph-arns :target-type graph-arn-list
                                  :required common-lisp:t :member-name
                                  "GraphArns"))
                                (:shape-name
                                 "BatchGetMembershipDatasourcesRequest"))

(smithy/sdk/shapes:define-output batch-get-membership-datasources-response
                                 common-lisp:nil
                                 ((membership-datasources :target-type
                                   membership-datasources-list :member-name
                                   "MembershipDatasources")
                                  (unprocessed-graphs :target-type
                                   unprocessed-graph-list :member-name
                                   "UnprocessedGraphs"))
                                 (:shape-name
                                  "BatchGetMembershipDatasourcesResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type byte-value smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-graph-request common-lisp:nil
                                ((tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateGraphRequest"))

(smithy/sdk/shapes:define-output create-graph-response common-lisp:nil
                                 ((graph-arn :target-type graph-arn
                                   :member-name "GraphArn"))
                                 (:shape-name "CreateGraphResponse"))

(smithy/sdk/shapes:define-input create-members-request common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn")
                                 (message :target-type email-message
                                  :member-name "Message")
                                 (disable-email-notification :target-type
                                  boolean :member-name
                                  "DisableEmailNotification")
                                 (accounts :target-type account-list :required
                                  common-lisp:t :member-name "Accounts"))
                                (:shape-name "CreateMembersRequest"))

(smithy/sdk/shapes:define-output create-members-response common-lisp:nil
                                 ((members :target-type member-detail-list
                                   :member-name "Members")
                                  (unprocessed-accounts :target-type
                                   unprocessed-account-list :member-name
                                   "UnprocessedAccounts"))
                                 (:shape-name "CreateMembersResponse"))

(smithy/sdk/shapes:define-enum datasource-package
    common-lisp:nil
  (:detective-core "DETECTIVE_CORE")
  (:eks-audit "EKS_AUDIT")
  (:asff-securityhub-finding "ASFF_SECURITYHUB_FINDING"))

(smithy/sdk/shapes:define-structure datasource-package-ingest-detail
                                    common-lisp:nil
                                    ((datasource-package-ingest-state
                                      :target-type
                                      datasource-package-ingest-state
                                      :member-name
                                      "DatasourcePackageIngestState")
                                     (last-ingest-state-change :target-type
                                      last-ingest-state-change-dates
                                      :member-name "LastIngestStateChange"))
                                    (:shape-name
                                     "DatasourcePackageIngestDetail"))

(smithy/sdk/shapes:define-map datasource-package-ingest-details :key
                              datasource-package :value
                              datasource-package-ingest-detail)

(smithy/sdk/shapes:define-map datasource-package-ingest-history :key
                              datasource-package :value
                              last-ingest-state-change-dates)

(smithy/sdk/shapes:define-enum datasource-package-ingest-state
    common-lisp:nil
  (:started "STARTED")
  (:stopped "STOPPED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-map datasource-package-ingest-states :key
                              datasource-package :value
                              datasource-package-ingest-state)

(smithy/sdk/shapes:define-list datasource-package-list :member
                               datasource-package)

(smithy/sdk/shapes:define-structure datasource-package-usage-info
                                    common-lisp:nil
                                    ((volume-usage-in-bytes :target-type
                                      byte-value :member-name
                                      "VolumeUsageInBytes")
                                     (volume-usage-update-time :target-type
                                      timestamp :member-name
                                      "VolumeUsageUpdateTime"))
                                    (:shape-name "DatasourcePackageUsageInfo"))

(smithy/sdk/shapes:define-structure date-filter common-lisp:nil
                                    ((start-inclusive :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartInclusive")
                                     (end-inclusive :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "EndInclusive"))
                                    (:shape-name "DateFilter"))

(smithy/sdk/shapes:define-input delete-graph-request common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn"))
                                (:shape-name "DeleteGraphRequest"))

(smithy/sdk/shapes:define-input delete-members-request common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn")
                                 (account-ids :target-type account-id-list
                                  :required common-lisp:t :member-name
                                  "AccountIds"))
                                (:shape-name "DeleteMembersRequest"))

(smithy/sdk/shapes:define-output delete-members-response common-lisp:nil
                                 ((account-ids :target-type account-id-list
                                   :member-name "AccountIds")
                                  (unprocessed-accounts :target-type
                                   unprocessed-account-list :member-name
                                   "UnprocessedAccounts"))
                                 (:shape-name "DeleteMembersResponse"))

(smithy/sdk/shapes:define-input describe-organization-configuration-request
                                common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn"))
                                (:shape-name
                                 "DescribeOrganizationConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-organization-configuration-response
                                 common-lisp:nil
                                 ((auto-enable :target-type boolean
                                   :member-name "AutoEnable"))
                                 (:shape-name
                                  "DescribeOrganizationConfigurationResponse"))

(smithy/sdk/shapes:define-input disassociate-membership-request common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn"))
                                (:shape-name "DisassociateMembershipRequest"))

(smithy/sdk/shapes:define-type email-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type email-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input enable-organization-admin-account-request
                                common-lisp:nil
                                ((account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"))
                                (:shape-name
                                 "EnableOrganizationAdminAccountRequest"))

(smithy/sdk/shapes:define-type entity-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum entity-type
    common-lisp:nil
  (:iam-role "IAM_ROLE")
  (:iam-user "IAM_USER"))

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:invalid-graph-arn "INVALID_GRAPH_ARN")
  (:invalid-request-body "INVALID_REQUEST_BODY")
  (:internal-error "INTERNAL_ERROR"))

(smithy/sdk/shapes:define-type error-code-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum field
    common-lisp:nil
  (:severity "SEVERITY")
  (:status "STATUS")
  (:created-time "CREATED_TIME"))

(smithy/sdk/shapes:define-structure filter-criteria common-lisp:nil
                                    ((severity :target-type string-filter
                                      :member-name "Severity")
                                     (status :target-type string-filter
                                      :member-name "Status")
                                     (state :target-type string-filter
                                      :member-name "State")
                                     (entity-arn :target-type string-filter
                                      :member-name "EntityArn")
                                     (created-time :target-type date-filter
                                      :member-name "CreatedTime"))
                                    (:shape-name "FilterCriteria"))

(smithy/sdk/shapes:define-structure flagged-ip-address-detail common-lisp:nil
                                    ((ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (reason :target-type reason :member-name
                                      "Reason"))
                                    (:shape-name "FlaggedIpAddressDetail"))

(smithy/sdk/shapes:define-input get-investigation-request common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn")
                                 (investigation-id :target-type
                                  investigation-id :required common-lisp:t
                                  :member-name "InvestigationId"))
                                (:shape-name "GetInvestigationRequest"))

(smithy/sdk/shapes:define-output get-investigation-response common-lisp:nil
                                 ((graph-arn :target-type graph-arn
                                   :member-name "GraphArn")
                                  (investigation-id :target-type
                                   investigation-id :member-name
                                   "InvestigationId")
                                  (entity-arn :target-type entity-arn
                                   :member-name "EntityArn")
                                  (entity-type :target-type entity-type
                                   :member-name "EntityType")
                                  (created-time :target-type timestamp
                                   :member-name "CreatedTime")
                                  (scope-start-time :target-type timestamp
                                   :member-name "ScopeStartTime")
                                  (scope-end-time :target-type timestamp
                                   :member-name "ScopeEndTime")
                                  (status :target-type status :member-name
                                   "Status")
                                  (severity :target-type severity :member-name
                                   "Severity")
                                  (state :target-type state :member-name
                                   "State"))
                                 (:shape-name "GetInvestigationResponse"))

(smithy/sdk/shapes:define-input get-members-request common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn")
                                 (account-ids :target-type account-id-list
                                  :required common-lisp:t :member-name
                                  "AccountIds"))
                                (:shape-name "GetMembersRequest"))

(smithy/sdk/shapes:define-output get-members-response common-lisp:nil
                                 ((member-details :target-type
                                   member-detail-list :member-name
                                   "MemberDetails")
                                  (unprocessed-accounts :target-type
                                   unprocessed-account-list :member-name
                                   "UnprocessedAccounts"))
                                 (:shape-name "GetMembersResponse"))

(smithy/sdk/shapes:define-structure graph common-lisp:nil
                                    ((arn :target-type graph-arn :member-name
                                      "Arn")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "Graph"))

(smithy/sdk/shapes:define-type graph-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list graph-arn-list :member graph-arn)

(smithy/sdk/shapes:define-list graph-list :member graph)

(smithy/sdk/shapes:define-type hourly-time-delta
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure impossible-travel-detail common-lisp:nil
                                    ((starting-ip-address :target-type
                                      ip-address :member-name
                                      "StartingIpAddress")
                                     (ending-ip-address :target-type ip-address
                                      :member-name "EndingIpAddress")
                                     (starting-location :target-type location
                                      :member-name "StartingLocation")
                                     (ending-location :target-type location
                                      :member-name "EndingLocation")
                                     (hourly-time-delta :target-type
                                      hourly-time-delta :member-name
                                      "HourlyTimeDelta"))
                                    (:shape-name "ImpossibleTravelDetail"))

(smithy/sdk/shapes:define-structure indicator common-lisp:nil
                                    ((indicator-type :target-type
                                      indicator-type :member-name
                                      "IndicatorType")
                                     (indicator-detail :target-type
                                      indicator-detail :member-name
                                      "IndicatorDetail"))
                                    (:shape-name "Indicator"))

(smithy/sdk/shapes:define-structure indicator-detail common-lisp:nil
                                    ((ttps-observed-detail :target-type
                                      ttps-observed-detail :member-name
                                      "TTPsObservedDetail")
                                     (impossible-travel-detail :target-type
                                      impossible-travel-detail :member-name
                                      "ImpossibleTravelDetail")
                                     (flagged-ip-address-detail :target-type
                                      flagged-ip-address-detail :member-name
                                      "FlaggedIpAddressDetail")
                                     (new-geolocation-detail :target-type
                                      new-geolocation-detail :member-name
                                      "NewGeolocationDetail")
                                     (new-aso-detail :target-type
                                      new-aso-detail :member-name
                                      "NewAsoDetail")
                                     (new-user-agent-detail :target-type
                                      new-user-agent-detail :member-name
                                      "NewUserAgentDetail")
                                     (related-finding-detail :target-type
                                      related-finding-detail :member-name
                                      "RelatedFindingDetail")
                                     (related-finding-group-detail :target-type
                                      related-finding-group-detail :member-name
                                      "RelatedFindingGroupDetail"))
                                    (:shape-name "IndicatorDetail"))

(smithy/sdk/shapes:define-enum indicator-type
    common-lisp:nil
  (:ttp-observed "TTP_OBSERVED")
  (:impossible-travel "IMPOSSIBLE_TRAVEL")
  (:flagged-ip-address "FLAGGED_IP_ADDRESS")
  (:new-geolocation "NEW_GEOLOCATION")
  (:new-aso "NEW_ASO")
  (:new-user-agent "NEW_USER_AGENT")
  (:related-finding "RELATED_FINDING")
  (:related-finding-group "RELATED_FINDING_GROUP"))

(smithy/sdk/shapes:define-list indicators :member indicator)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure investigation-detail common-lisp:nil
                                    ((investigation-id :target-type
                                      investigation-id :member-name
                                      "InvestigationId")
                                     (severity :target-type severity
                                      :member-name "Severity")
                                     (status :target-type status :member-name
                                      "Status")
                                     (state :target-type state :member-name
                                      "State")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (entity-arn :target-type entity-arn
                                      :member-name "EntityArn")
                                     (entity-type :target-type entity-type
                                      :member-name "EntityType"))
                                    (:shape-name "InvestigationDetail"))

(smithy/sdk/shapes:define-list investigation-details :member
                               investigation-detail)

(smithy/sdk/shapes:define-type investigation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum invitation-type
    common-lisp:nil
  (:invitation "INVITATION")
  (:organization "ORGANIZATION"))

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type is-new-for-entire-account
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-map last-ingest-state-change-dates :key
                              datasource-package-ingest-state :value
                              timestamp-for-collection)

(smithy/sdk/shapes:define-input list-datasource-packages-request
                                common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type member-results-limit
                                  :member-name "MaxResults"))
                                (:shape-name "ListDatasourcePackagesRequest"))

(smithy/sdk/shapes:define-output list-datasource-packages-response
                                 common-lisp:nil
                                 ((datasource-packages :target-type
                                   datasource-package-ingest-details
                                   :member-name "DatasourcePackages")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDatasourcePackagesResponse"))

(smithy/sdk/shapes:define-input list-graphs-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type member-results-limit
                                  :member-name "MaxResults"))
                                (:shape-name "ListGraphsRequest"))

(smithy/sdk/shapes:define-output list-graphs-response common-lisp:nil
                                 ((graph-list :target-type graph-list
                                   :member-name "GraphList")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListGraphsResponse"))

(smithy/sdk/shapes:define-input list-indicators-request common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn")
                                 (investigation-id :target-type
                                  investigation-id :required common-lisp:t
                                  :member-name "InvestigationId")
                                 (indicator-type :target-type indicator-type
                                  :member-name "IndicatorType")
                                 (next-token :target-type ai-pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListIndicatorsRequest"))

(smithy/sdk/shapes:define-output list-indicators-response common-lisp:nil
                                 ((graph-arn :target-type graph-arn
                                   :member-name "GraphArn")
                                  (investigation-id :target-type
                                   investigation-id :member-name
                                   "InvestigationId")
                                  (next-token :target-type ai-pagination-token
                                   :member-name "NextToken")
                                  (indicators :target-type indicators
                                   :member-name "Indicators"))
                                 (:shape-name "ListIndicatorsResponse"))

(smithy/sdk/shapes:define-input list-investigations-request common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn")
                                 (next-token :target-type ai-pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (filter-criteria :target-type filter-criteria
                                  :member-name "FilterCriteria")
                                 (sort-criteria :target-type sort-criteria
                                  :member-name "SortCriteria"))
                                (:shape-name "ListInvestigationsRequest"))

(smithy/sdk/shapes:define-output list-investigations-response common-lisp:nil
                                 ((investigation-details :target-type
                                   investigation-details :member-name
                                   "InvestigationDetails")
                                  (next-token :target-type ai-pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListInvestigationsResponse"))

(smithy/sdk/shapes:define-input list-invitations-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type member-results-limit
                                  :member-name "MaxResults"))
                                (:shape-name "ListInvitationsRequest"))

(smithy/sdk/shapes:define-output list-invitations-response common-lisp:nil
                                 ((invitations :target-type member-detail-list
                                   :member-name "Invitations")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListInvitationsResponse"))

(smithy/sdk/shapes:define-input list-members-request common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type member-results-limit
                                  :member-name "MaxResults"))
                                (:shape-name "ListMembersRequest"))

(smithy/sdk/shapes:define-output list-members-response common-lisp:nil
                                 ((member-details :target-type
                                   member-detail-list :member-name
                                   "MemberDetails")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListMembersResponse"))

(smithy/sdk/shapes:define-input list-organization-admin-accounts-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type member-results-limit
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListOrganizationAdminAccountsRequest"))

(smithy/sdk/shapes:define-output list-organization-admin-accounts-response
                                 common-lisp:nil
                                 ((administrators :target-type
                                   administrator-list :member-name
                                   "Administrators")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListOrganizationAdminAccountsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure member-detail common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (email-address :target-type email-address
                                      :member-name "EmailAddress")
                                     (graph-arn :target-type graph-arn
                                      :member-name "GraphArn")
                                     (master-id :target-type account-id
                                      :member-name "MasterId")
                                     (administrator-id :target-type account-id
                                      :member-name "AdministratorId")
                                     (status :target-type member-status
                                      :member-name "Status")
                                     (disabled-reason :target-type
                                      member-disabled-reason :member-name
                                      "DisabledReason")
                                     (invited-time :target-type timestamp
                                      :member-name "InvitedTime")
                                     (updated-time :target-type timestamp
                                      :member-name "UpdatedTime")
                                     (volume-usage-in-bytes :target-type
                                      byte-value :member-name
                                      "VolumeUsageInBytes")
                                     (volume-usage-updated-time :target-type
                                      timestamp :member-name
                                      "VolumeUsageUpdatedTime")
                                     (percent-of-graph-utilization :target-type
                                      percentage :member-name
                                      "PercentOfGraphUtilization")
                                     (percent-of-graph-utilization-updated-time
                                      :target-type timestamp :member-name
                                      "PercentOfGraphUtilizationUpdatedTime")
                                     (invitation-type :target-type
                                      invitation-type :member-name
                                      "InvitationType")
                                     (volume-usage-by-datasource-package
                                      :target-type
                                      volume-usage-by-datasource-package
                                      :member-name
                                      "VolumeUsageByDatasourcePackage")
                                     (datasource-package-ingest-states
                                      :target-type
                                      datasource-package-ingest-states
                                      :member-name
                                      "DatasourcePackageIngestStates"))
                                    (:shape-name "MemberDetail"))

(smithy/sdk/shapes:define-list member-detail-list :member member-detail)

(smithy/sdk/shapes:define-enum member-disabled-reason
    common-lisp:nil
  (:volume-too-high "VOLUME_TOO_HIGH")
  (:volume-unknown "VOLUME_UNKNOWN"))

(smithy/sdk/shapes:define-type member-results-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum member-status
    common-lisp:nil
  (:invited "INVITED")
  (:verification-in-progress "VERIFICATION_IN_PROGRESS")
  (:verification-failed "VERIFICATION_FAILED")
  (:enabled "ENABLED")
  (:accepted-but-disabled "ACCEPTED_BUT_DISABLED"))

(smithy/sdk/shapes:define-structure membership-datasources common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (graph-arn :target-type graph-arn
                                      :member-name "GraphArn")
                                     (datasource-package-ingest-history
                                      :target-type
                                      datasource-package-ingest-history
                                      :member-name
                                      "DatasourcePackageIngestHistory"))
                                    (:shape-name "MembershipDatasources"))

(smithy/sdk/shapes:define-list membership-datasources-list :member
                               membership-datasources)

(smithy/sdk/shapes:define-structure new-aso-detail common-lisp:nil
                                    ((aso :target-type aso :member-name "Aso")
                                     (is-new-for-entire-account :target-type
                                      is-new-for-entire-account :member-name
                                      "IsNewForEntireAccount"))
                                    (:shape-name "NewAsoDetail"))

(smithy/sdk/shapes:define-structure new-geolocation-detail common-lisp:nil
                                    ((location :target-type location
                                      :member-name "Location")
                                     (ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (is-new-for-entire-account :target-type
                                      is-new-for-entire-account :member-name
                                      "IsNewForEntireAccount"))
                                    (:shape-name "NewGeolocationDetail"))

(smithy/sdk/shapes:define-structure new-user-agent-detail common-lisp:nil
                                    ((user-agent :target-type user-agent
                                      :member-name "UserAgent")
                                     (is-new-for-entire-account :target-type
                                      is-new-for-entire-account :member-name
                                      "IsNewForEntireAccount"))
                                    (:shape-name "NewUserAgentDetail"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type procedure smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum reason
    common-lisp:nil
  (:aws-threat-intelligence "AWS_THREAT_INTELLIGENCE"))

(smithy/sdk/shapes:define-input reject-invitation-request common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn"))
                                (:shape-name "RejectInvitationRequest"))

(smithy/sdk/shapes:define-structure related-finding-detail common-lisp:nil
                                    ((arn :target-type entity-arn :member-name
                                      "Arn")
                                     (type :target-type type :member-name
                                      "Type")
                                     (ip-address :target-type ip-address
                                      :member-name "IpAddress"))
                                    (:shape-name "RelatedFindingDetail"))

(smithy/sdk/shapes:define-structure related-finding-group-detail
                                    common-lisp:nil
                                    ((id :target-type id :member-name "Id"))
                                    (:shape-name "RelatedFindingGroupDetail"))

(smithy/sdk/shapes:define-type resource smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-list :member resource)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (resources :target-type resource-list
                                  :member-name "Resources"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum severity
    common-lisp:nil
  (:informational "INFORMATIONAL")
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH")
  (:critical "CRITICAL"))

(smithy/sdk/shapes:define-structure sort-criteria common-lisp:nil
                                    ((field :target-type field :member-name
                                      "Field")
                                     (sort-order :target-type sort-order
                                      :member-name "SortOrder"))
                                    (:shape-name "SortCriteria"))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:asc "ASC")
  (:desc "DESC"))

(smithy/sdk/shapes:define-input start-investigation-request common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn")
                                 (entity-arn :target-type entity-arn :required
                                  common-lisp:t :member-name "EntityArn")
                                 (scope-start-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "ScopeStartTime")
                                 (scope-end-time :target-type timestamp
                                  :required common-lisp:t :member-name
                                  "ScopeEndTime"))
                                (:shape-name "StartInvestigationRequest"))

(smithy/sdk/shapes:define-output start-investigation-response common-lisp:nil
                                 ((investigation-id :target-type
                                   investigation-id :member-name
                                   "InvestigationId"))
                                 (:shape-name "StartInvestigationResponse"))

(smithy/sdk/shapes:define-input start-monitoring-member-request common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn")
                                 (account-id :target-type account-id :required
                                  common-lisp:t :member-name "AccountId"))
                                (:shape-name "StartMonitoringMemberRequest"))

(smithy/sdk/shapes:define-enum state
    common-lisp:nil
  (:active "ACTIVE")
  (:archived "ARCHIVED"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:running "RUNNING")
  (:failed "FAILED")
  (:successful "SUCCESSFUL"))

(smithy/sdk/shapes:define-structure string-filter common-lisp:nil
                                    ((value :target-type value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "StringFilter"))

(smithy/sdk/shapes:define-structure ttps-observed-detail common-lisp:nil
                                    ((tactic :target-type tactic :member-name
                                      "Tactic")
                                     (technique :target-type technique
                                      :member-name "Technique")
                                     (procedure :target-type procedure
                                      :member-name "Procedure")
                                     (ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (apiname :target-type apiname :member-name
                                      "APIName")
                                     (apisuccess-count :target-type
                                      apisuccess-count :member-name
                                      "APISuccessCount")
                                     (apifailure-count :target-type
                                      apifailure-count :member-name
                                      "APIFailureCount"))
                                    (:shape-name "TTPsObservedDetail"))

(smithy/sdk/shapes:define-type tactic smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type technique smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure timestamp-for-collection common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "Timestamp"))
                                    (:shape-name "TimestampForCollection"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure unprocessed-account common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (reason :target-type unprocessed-reason
                                      :member-name "Reason"))
                                    (:shape-name "UnprocessedAccount"))

(smithy/sdk/shapes:define-list unprocessed-account-list :member
                               unprocessed-account)

(smithy/sdk/shapes:define-structure unprocessed-graph common-lisp:nil
                                    ((graph-arn :target-type graph-arn
                                      :member-name "GraphArn")
                                     (reason :target-type unprocessed-reason
                                      :member-name "Reason"))
                                    (:shape-name "UnprocessedGraph"))

(smithy/sdk/shapes:define-list unprocessed-graph-list :member unprocessed-graph)

(smithy/sdk/shapes:define-type unprocessed-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-datasource-packages-request
                                common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn")
                                 (datasource-packages :target-type
                                  datasource-package-list :required
                                  common-lisp:t :member-name
                                  "DatasourcePackages"))
                                (:shape-name "UpdateDatasourcePackagesRequest"))

(smithy/sdk/shapes:define-input update-investigation-state-request
                                common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn")
                                 (investigation-id :target-type
                                  investigation-id :required common-lisp:t
                                  :member-name "InvestigationId")
                                 (state :target-type state :required
                                  common-lisp:t :member-name "State"))
                                (:shape-name "UpdateInvestigationStateRequest"))

(smithy/sdk/shapes:define-input update-organization-configuration-request
                                common-lisp:nil
                                ((graph-arn :target-type graph-arn :required
                                  common-lisp:t :member-name "GraphArn")
                                 (auto-enable :target-type boolean :member-name
                                  "AutoEnable"))
                                (:shape-name
                                 "UpdateOrganizationConfigurationRequest"))

(smithy/sdk/shapes:define-type user-agent smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (error-code :target-type error-code
                                  :member-name "ErrorCode")
                                 (error-code-reason :target-type
                                  error-code-reason :member-name
                                  "ErrorCodeReason"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map volume-usage-by-datasource-package :key
                              datasource-package :value
                              datasource-package-usage-info)

(smithy/sdk/operation:define-operation accept-invitation :shape-name
                                       "AcceptInvitation" :input
                                       accept-invitation-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri "/invitation" :code
                                       200)

(smithy/sdk/operation:define-operation batch-get-graph-member-datasources
                                       :shape-name
                                       "BatchGetGraphMemberDatasources" :input
                                       batch-get-graph-member-datasources-request
                                       :output
                                       batch-get-graph-member-datasources-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/graph/datasources/get" :code 200)

(smithy/sdk/operation:define-operation batch-get-membership-datasources
                                       :shape-name
                                       "BatchGetMembershipDatasources" :input
                                       batch-get-membership-datasources-request
                                       :output
                                       batch-get-membership-datasources-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/membership/datasources/get" :code 200)

(smithy/sdk/operation:define-operation create-graph :shape-name "CreateGraph"
                                       :input create-graph-request :output
                                       create-graph-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri "/graph" :code 200)

(smithy/sdk/operation:define-operation create-members :shape-name
                                       "CreateMembers" :input
                                       create-members-request :output
                                       create-members-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/graph/members"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-graph :shape-name "DeleteGraph"
                                       :input delete-graph-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/graph/removal"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-members :shape-name
                                       "DeleteMembers" :input
                                       delete-members-request :output
                                       delete-members-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/graph/members/removal" :code 200)

(smithy/sdk/operation:define-operation describe-organization-configuration
                                       :shape-name
                                       "DescribeOrganizationConfiguration"
                                       :input
                                       describe-organization-configuration-request
                                       :output
                                       describe-organization-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/orgs/describeOrganizationConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation disable-organization-admin-account
                                       :shape-name
                                       "DisableOrganizationAdminAccount" :input
                                       common-lisp:null :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/orgs/disableAdminAccount" :code 200)

(smithy/sdk/operation:define-operation disassociate-membership :shape-name
                                       "DisassociateMembership" :input
                                       disassociate-membership-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/membership/removal" :code 200)

(smithy/sdk/operation:define-operation enable-organization-admin-account
                                       :shape-name
                                       "EnableOrganizationAdminAccount" :input
                                       enable-organization-admin-account-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/orgs/enableAdminAccount" :code 200)

(smithy/sdk/operation:define-operation get-investigation :shape-name
                                       "GetInvestigation" :input
                                       get-investigation-request :output
                                       get-investigation-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/investigations/getInvestigation" :code
                                       200)

(smithy/sdk/operation:define-operation get-members :shape-name "GetMembers"
                                       :input get-members-request :output
                                       get-members-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/graph/members/get"
                                       :code 200)

(smithy/sdk/operation:define-operation list-datasource-packages :shape-name
                                       "ListDatasourcePackages" :input
                                       list-datasource-packages-request :output
                                       list-datasource-packages-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/graph/datasources/list" :code 200)

(smithy/sdk/operation:define-operation list-graphs :shape-name "ListGraphs"
                                       :input list-graphs-request :output
                                       list-graphs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/graphs/list" :code
                                       200)

(smithy/sdk/operation:define-operation list-indicators :shape-name
                                       "ListIndicators" :input
                                       list-indicators-request :output
                                       list-indicators-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/investigations/listIndicators" :code
                                       200)

(smithy/sdk/operation:define-operation list-investigations :shape-name
                                       "ListInvestigations" :input
                                       list-investigations-request :output
                                       list-investigations-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/investigations/listInvestigations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-invitations :shape-name
                                       "ListInvitations" :input
                                       list-invitations-request :output
                                       list-invitations-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/invitations/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-members :shape-name "ListMembers"
                                       :input list-members-request :output
                                       list-members-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/graph/members/list" :code 200)

(smithy/sdk/operation:define-operation list-organization-admin-accounts
                                       :shape-name
                                       "ListOrganizationAdminAccounts" :input
                                       list-organization-admin-accounts-request
                                       :output
                                       list-organization-admin-accounts-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/orgs/adminAccountslist" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation reject-invitation :shape-name
                                       "RejectInvitation" :input
                                       reject-invitation-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/invitation/removal" :code 200)

(smithy/sdk/operation:define-operation start-investigation :shape-name
                                       "StartInvestigation" :input
                                       start-investigation-request :output
                                       start-investigation-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/investigations/startInvestigation"
                                       :code 200)

(smithy/sdk/operation:define-operation start-monitoring-member :shape-name
                                       "StartMonitoringMember" :input
                                       start-monitoring-member-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/graph/member/monitoringstate" :code
                                       200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-datasource-packages :shape-name
                                       "UpdateDatasourcePackages" :input
                                       update-datasource-packages-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/graph/datasources/update" :code 200)

(smithy/sdk/operation:define-operation update-investigation-state :shape-name
                                       "UpdateInvestigationState" :input
                                       update-investigation-state-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/investigations/updateInvestigationState"
                                       :code 200)

(smithy/sdk/operation:define-operation update-organization-configuration
                                       :shape-name
                                       "UpdateOrganizationConfiguration" :input
                                       update-organization-configuration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        too-many-requests-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/orgs/updateOrganizationConfiguration"
                                       :code 200)
