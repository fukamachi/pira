(uiop/package:define-package #:pira/route53-recovery-readiness (:use)
                             (:export #:access-denied-exception #:cell-output
                              #:conflict-exception #:create-cell
                              #:create-cell-request #:create-cell-response
                              #:create-cross-account-authorization
                              #:create-cross-account-authorization-request
                              #:create-cross-account-authorization-response
                              #:create-readiness-check
                              #:create-readiness-check-request
                              #:create-readiness-check-response
                              #:create-recovery-group
                              #:create-recovery-group-request
                              #:create-recovery-group-response
                              #:create-resource-set
                              #:create-resource-set-request
                              #:create-resource-set-response
                              #:cross-account-authorization
                              #:dnstarget-resource #:delete-cell
                              #:delete-cell-request
                              #:delete-cross-account-authorization
                              #:delete-cross-account-authorization-request
                              #:delete-cross-account-authorization-response
                              #:delete-readiness-check
                              #:delete-readiness-check-request
                              #:delete-recovery-group
                              #:delete-recovery-group-request
                              #:delete-resource-set
                              #:delete-resource-set-request
                              #:get-architecture-recommendations
                              #:get-architecture-recommendations-request
                              #:get-architecture-recommendations-response
                              #:get-cell #:get-cell-readiness-summary
                              #:get-cell-readiness-summary-request
                              #:get-cell-readiness-summary-response
                              #:get-cell-request #:get-cell-response
                              #:get-readiness-check
                              #:get-readiness-check-request
                              #:get-readiness-check-resource-status
                              #:get-readiness-check-resource-status-request
                              #:get-readiness-check-resource-status-response
                              #:get-readiness-check-response
                              #:get-readiness-check-status
                              #:get-readiness-check-status-request
                              #:get-readiness-check-status-response
                              #:get-recovery-group
                              #:get-recovery-group-readiness-summary
                              #:get-recovery-group-readiness-summary-request
                              #:get-recovery-group-readiness-summary-response
                              #:get-recovery-group-request
                              #:get-recovery-group-response #:get-resource-set
                              #:get-resource-set-request
                              #:get-resource-set-response
                              #:internal-server-exception
                              #:last-audit-timestamp #:list-cells
                              #:list-cells-request #:list-cells-response
                              #:list-cross-account-authorizations
                              #:list-cross-account-authorizations-request
                              #:list-cross-account-authorizations-response
                              #:list-readiness-checks
                              #:list-readiness-checks-request
                              #:list-readiness-checks-response
                              #:list-recovery-groups
                              #:list-recovery-groups-request
                              #:list-recovery-groups-response
                              #:list-resource-sets #:list-resource-sets-request
                              #:list-resource-sets-response #:list-rules
                              #:list-rules-output #:list-rules-request
                              #:list-rules-response #:list-tags-for-resources
                              #:list-tags-for-resources-request
                              #:list-tags-for-resources-response #:max-results
                              #:message #:nlbresource #:r53resource-record
                              #:readiness #:readiness-check-output
                              #:readiness-check-summary
                              #:readiness-check-timestamp #:recommendation
                              #:recovery-group-output #:resource
                              #:resource-not-found-exception #:resource-result
                              #:resource-set-output #:route53recovery-readiness
                              #:rule-result #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tags #:target-resource #:throttling-exception
                              #:untag-resource #:untag-resource-request
                              #:update-cell #:update-cell-request
                              #:update-cell-response #:update-readiness-check
                              #:update-readiness-check-request
                              #:update-readiness-check-response
                              #:update-recovery-group
                              #:update-recovery-group-request
                              #:update-recovery-group-response
                              #:update-resource-set
                              #:update-resource-set-request
                              #:update-resource-set-response
                              #:validation-exception #:list-of-cell-output
                              #:list-of-cross-account-authorization
                              #:list-of-list-rules-output #:list-of-message
                              #:list-of-readiness-check-output
                              #:list-of-readiness-check-summary
                              #:list-of-recommendation
                              #:list-of-recovery-group-output
                              #:list-of-resource #:list-of-resource-result
                              #:list-of-resource-set-output
                              #:list-of-rule-result #:list-of-string #:string
                              #:string-max256 #:string-max64
                              #:string-max64pattern-aazaz09z
                              #:string-pattern-awsaza-z09aza-z09))
(common-lisp:in-package #:pira/route53-recovery-readiness)

(smithy/sdk/service:define-service route53recovery-readiness :shape-name
                                   "Route53RecoveryReadiness" :version
                                   "2019-12-02" :title
                                   "AWS Route53 Recovery Readiness" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Route53 Recovery Readiness")
                                      ("arnNamespace"
                                       . "route53-recovery-readiness")
                                      ("cloudFormationName"
                                       . "Route53RecoveryReadiness")
                                      ("cloudTrailEventSource"
                                       . "route53-recovery-readiness.amazonaws.com")
                                      ("endpointPrefix"
                                       . "route53-recovery-readiness"))
                                     ("aws.auth#sigv4"
                                      ("name" . "route53-recovery-readiness"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure cell-output common-lisp:nil
                                    ((cell-arn :target-type string-max256
                                      :required common-lisp:t :member-name
                                      "CellArn" :json-name "cellArn")
                                     (cell-name :target-type
                                      string-max64pattern-aazaz09z :required
                                      common-lisp:t :member-name "CellName"
                                      :json-name "cellName")
                                     (cells :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "Cells" :json-name "cells")
                                     (parent-readiness-scopes :target-type
                                      list-of-string :required common-lisp:t
                                      :member-name "ParentReadinessScopes"
                                      :json-name "parentReadinessScopes")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "CellOutput"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-cell-request common-lisp:nil
                                ((cell-name :target-type string :required
                                  common-lisp:t :member-name "CellName"
                                  :json-name "cellName")
                                 (cells :target-type list-of-string
                                  :member-name "Cells" :json-name "cells")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateCellRequest"))

(smithy/sdk/shapes:define-output create-cell-response common-lisp:nil
                                 ((cell-arn :target-type string-max256
                                   :member-name "CellArn" :json-name "cellArn")
                                  (cell-name :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "CellName" :json-name "cellName")
                                  (cells :target-type list-of-string
                                   :member-name "Cells" :json-name "cells")
                                  (parent-readiness-scopes :target-type
                                   list-of-string :member-name
                                   "ParentReadinessScopes" :json-name
                                   "parentReadinessScopes")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "CreateCellResponse"))

(smithy/sdk/shapes:define-input create-cross-account-authorization-request
                                common-lisp:nil
                                ((cross-account-authorization :target-type
                                  cross-account-authorization :required
                                  common-lisp:t :member-name
                                  "CrossAccountAuthorization" :json-name
                                  "crossAccountAuthorization"))
                                (:shape-name
                                 "CreateCrossAccountAuthorizationRequest"))

(smithy/sdk/shapes:define-output create-cross-account-authorization-response
                                 common-lisp:nil
                                 ((cross-account-authorization :target-type
                                   cross-account-authorization :member-name
                                   "CrossAccountAuthorization" :json-name
                                   "crossAccountAuthorization"))
                                 (:shape-name
                                  "CreateCrossAccountAuthorizationResponse"))

(smithy/sdk/shapes:define-input create-readiness-check-request common-lisp:nil
                                ((readiness-check-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ReadinessCheckName" :json-name
                                  "readinessCheckName")
                                 (resource-set-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ResourceSetName" :json-name
                                  "resourceSetName")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateReadinessCheckRequest"))

(smithy/sdk/shapes:define-output create-readiness-check-response
                                 common-lisp:nil
                                 ((readiness-check-arn :target-type
                                   string-max256 :member-name
                                   "ReadinessCheckArn" :json-name
                                   "readinessCheckArn")
                                  (readiness-check-name :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "ReadinessCheckName" :json-name
                                   "readinessCheckName")
                                  (resource-set :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "ResourceSet" :json-name "resourceSet")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "CreateReadinessCheckResponse"))

(smithy/sdk/shapes:define-input create-recovery-group-request common-lisp:nil
                                ((cells :target-type list-of-string
                                  :member-name "Cells" :json-name "cells")
                                 (recovery-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "RecoveryGroupName" :json-name
                                  "recoveryGroupName")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateRecoveryGroupRequest"))

(smithy/sdk/shapes:define-output create-recovery-group-response common-lisp:nil
                                 ((cells :target-type list-of-string
                                   :member-name "Cells" :json-name "cells")
                                  (recovery-group-arn :target-type
                                   string-max256 :member-name
                                   "RecoveryGroupArn" :json-name
                                   "recoveryGroupArn")
                                  (recovery-group-name :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "RecoveryGroupName" :json-name
                                   "recoveryGroupName")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "CreateRecoveryGroupResponse"))

(smithy/sdk/shapes:define-input create-resource-set-request common-lisp:nil
                                ((resource-set-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ResourceSetName" :json-name
                                  "resourceSetName")
                                 (resource-set-type :target-type
                                  string-pattern-awsaza-z09aza-z09 :required
                                  common-lisp:t :member-name "ResourceSetType"
                                  :json-name "resourceSetType")
                                 (resources :target-type list-of-resource
                                  :required common-lisp:t :member-name
                                  "Resources" :json-name "resources")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateResourceSetRequest"))

(smithy/sdk/shapes:define-output create-resource-set-response common-lisp:nil
                                 ((resource-set-arn :target-type string-max256
                                   :member-name "ResourceSetArn" :json-name
                                   "resourceSetArn")
                                  (resource-set-name :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "ResourceSetName" :json-name
                                   "resourceSetName")
                                  (resource-set-type :target-type
                                   string-pattern-awsaza-z09aza-z09
                                   :member-name "ResourceSetType" :json-name
                                   "resourceSetType")
                                  (resources :target-type list-of-resource
                                   :member-name "Resources" :json-name
                                   "resources")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "CreateResourceSetResponse"))

(smithy/sdk/shapes:define-type cross-account-authorization
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dnstarget-resource common-lisp:nil
                                    ((domain-name :target-type string
                                      :member-name "DomainName" :json-name
                                      "domainName")
                                     (hosted-zone-arn :target-type string
                                      :member-name "HostedZoneArn" :json-name
                                      "hostedZoneArn")
                                     (record-set-id :target-type string
                                      :member-name "RecordSetId" :json-name
                                      "recordSetId")
                                     (record-type :target-type string
                                      :member-name "RecordType" :json-name
                                      "recordType")
                                     (target-resource :target-type
                                      target-resource :member-name
                                      "TargetResource" :json-name
                                      "targetResource"))
                                    (:shape-name "DNSTargetResource"))

(smithy/sdk/shapes:define-input delete-cell-request common-lisp:nil
                                ((cell-name :target-type string :required
                                  common-lisp:t :member-name "CellName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteCellRequest"))

(smithy/sdk/shapes:define-input delete-cross-account-authorization-request
                                common-lisp:nil
                                ((cross-account-authorization :target-type
                                  string :required common-lisp:t :member-name
                                  "CrossAccountAuthorization" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteCrossAccountAuthorizationRequest"))

(smithy/sdk/shapes:define-output delete-cross-account-authorization-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteCrossAccountAuthorizationResponse"))

(smithy/sdk/shapes:define-input delete-readiness-check-request common-lisp:nil
                                ((readiness-check-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ReadinessCheckName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteReadinessCheckRequest"))

(smithy/sdk/shapes:define-input delete-recovery-group-request common-lisp:nil
                                ((recovery-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "RecoveryGroupName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteRecoveryGroupRequest"))

(smithy/sdk/shapes:define-input delete-resource-set-request common-lisp:nil
                                ((resource-set-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ResourceSetName" :http-label common-lisp:t))
                                (:shape-name "DeleteResourceSetRequest"))

(smithy/sdk/shapes:define-input get-architecture-recommendations-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (recovery-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "RecoveryGroupName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetArchitectureRecommendationsRequest"))

(smithy/sdk/shapes:define-output get-architecture-recommendations-response
                                 common-lisp:nil
                                 ((last-audit-timestamp :target-type
                                   last-audit-timestamp :member-name
                                   "LastAuditTimestamp" :json-name
                                   "lastAuditTimestamp")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (recommendations :target-type
                                   list-of-recommendation :member-name
                                   "Recommendations" :json-name
                                   "recommendations"))
                                 (:shape-name
                                  "GetArchitectureRecommendationsResponse"))

(smithy/sdk/shapes:define-input get-cell-readiness-summary-request
                                common-lisp:nil
                                ((cell-name :target-type string :required
                                  common-lisp:t :member-name "CellName"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "GetCellReadinessSummaryRequest"))

(smithy/sdk/shapes:define-output get-cell-readiness-summary-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (readiness :target-type readiness
                                   :member-name "Readiness" :json-name
                                   "readiness")
                                  (readiness-checks :target-type
                                   list-of-readiness-check-summary :member-name
                                   "ReadinessChecks" :json-name
                                   "readinessChecks"))
                                 (:shape-name
                                  "GetCellReadinessSummaryResponse"))

(smithy/sdk/shapes:define-input get-cell-request common-lisp:nil
                                ((cell-name :target-type string :required
                                  common-lisp:t :member-name "CellName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetCellRequest"))

(smithy/sdk/shapes:define-output get-cell-response common-lisp:nil
                                 ((cell-arn :target-type string-max256
                                   :member-name "CellArn" :json-name "cellArn")
                                  (cell-name :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "CellName" :json-name "cellName")
                                  (cells :target-type list-of-string
                                   :member-name "Cells" :json-name "cells")
                                  (parent-readiness-scopes :target-type
                                   list-of-string :member-name
                                   "ParentReadinessScopes" :json-name
                                   "parentReadinessScopes")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "GetCellResponse"))

(smithy/sdk/shapes:define-input get-readiness-check-request common-lisp:nil
                                ((readiness-check-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ReadinessCheckName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetReadinessCheckRequest"))

(smithy/sdk/shapes:define-input get-readiness-check-resource-status-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (readiness-check-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ReadinessCheckName" :http-label
                                  common-lisp:t)
                                 (resource-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ResourceIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetReadinessCheckResourceStatusRequest"))

(smithy/sdk/shapes:define-output get-readiness-check-resource-status-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (readiness :target-type readiness
                                   :member-name "Readiness" :json-name
                                   "readiness")
                                  (rules :target-type list-of-rule-result
                                   :member-name "Rules" :json-name "rules"))
                                 (:shape-name
                                  "GetReadinessCheckResourceStatusResponse"))

(smithy/sdk/shapes:define-output get-readiness-check-response common-lisp:nil
                                 ((readiness-check-arn :target-type
                                   string-max256 :member-name
                                   "ReadinessCheckArn" :json-name
                                   "readinessCheckArn")
                                  (readiness-check-name :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "ReadinessCheckName" :json-name
                                   "readinessCheckName")
                                  (resource-set :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "ResourceSet" :json-name "resourceSet")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "GetReadinessCheckResponse"))

(smithy/sdk/shapes:define-input get-readiness-check-status-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (readiness-check-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ReadinessCheckName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetReadinessCheckStatusRequest"))

(smithy/sdk/shapes:define-output get-readiness-check-status-response
                                 common-lisp:nil
                                 ((messages :target-type list-of-message
                                   :member-name "Messages" :json-name
                                   "messages")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (readiness :target-type readiness
                                   :member-name "Readiness" :json-name
                                   "readiness")
                                  (resources :target-type
                                   list-of-resource-result :member-name
                                   "Resources" :json-name "resources"))
                                 (:shape-name
                                  "GetReadinessCheckStatusResponse"))

(smithy/sdk/shapes:define-input get-recovery-group-readiness-summary-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (recovery-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "RecoveryGroupName" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetRecoveryGroupReadinessSummaryRequest"))

(smithy/sdk/shapes:define-output get-recovery-group-readiness-summary-response
                                 common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (readiness :target-type readiness
                                   :member-name "Readiness" :json-name
                                   "readiness")
                                  (readiness-checks :target-type
                                   list-of-readiness-check-summary :member-name
                                   "ReadinessChecks" :json-name
                                   "readinessChecks"))
                                 (:shape-name
                                  "GetRecoveryGroupReadinessSummaryResponse"))

(smithy/sdk/shapes:define-input get-recovery-group-request common-lisp:nil
                                ((recovery-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "RecoveryGroupName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetRecoveryGroupRequest"))

(smithy/sdk/shapes:define-output get-recovery-group-response common-lisp:nil
                                 ((cells :target-type list-of-string
                                   :member-name "Cells" :json-name "cells")
                                  (recovery-group-arn :target-type
                                   string-max256 :member-name
                                   "RecoveryGroupArn" :json-name
                                   "recoveryGroupArn")
                                  (recovery-group-name :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "RecoveryGroupName" :json-name
                                   "recoveryGroupName")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "GetRecoveryGroupResponse"))

(smithy/sdk/shapes:define-input get-resource-set-request common-lisp:nil
                                ((resource-set-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ResourceSetName" :http-label common-lisp:t))
                                (:shape-name "GetResourceSetRequest"))

(smithy/sdk/shapes:define-output get-resource-set-response common-lisp:nil
                                 ((resource-set-arn :target-type string-max256
                                   :member-name "ResourceSetArn" :json-name
                                   "resourceSetArn")
                                  (resource-set-name :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "ResourceSetName" :json-name
                                   "resourceSetName")
                                  (resource-set-type :target-type
                                   string-pattern-awsaza-z09aza-z09
                                   :member-name "ResourceSetType" :json-name
                                   "resourceSetType")
                                  (resources :target-type list-of-resource
                                   :member-name "Resources" :json-name
                                   "resources")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "GetResourceSetResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type last-audit-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input list-cells-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListCellsRequest"))

(smithy/sdk/shapes:define-output list-cells-response common-lisp:nil
                                 ((cells :target-type list-of-cell-output
                                   :member-name "Cells" :json-name "cells")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name "ListCellsResponse"))

(smithy/sdk/shapes:define-input list-cross-account-authorizations-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name
                                 "ListCrossAccountAuthorizationsRequest"))

(smithy/sdk/shapes:define-output list-cross-account-authorizations-response
                                 common-lisp:nil
                                 ((cross-account-authorizations :target-type
                                   list-of-cross-account-authorization
                                   :member-name "CrossAccountAuthorizations"
                                   :json-name "crossAccountAuthorizations")
                                  (next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken"))
                                 (:shape-name
                                  "ListCrossAccountAuthorizationsResponse"))

(smithy/sdk/shapes:define-input list-readiness-checks-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListReadinessChecksRequest"))

(smithy/sdk/shapes:define-output list-readiness-checks-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (readiness-checks :target-type
                                   list-of-readiness-check-output :member-name
                                   "ReadinessChecks" :json-name
                                   "readinessChecks"))
                                 (:shape-name "ListReadinessChecksResponse"))

(smithy/sdk/shapes:define-input list-recovery-groups-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListRecoveryGroupsRequest"))

(smithy/sdk/shapes:define-output list-recovery-groups-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (recovery-groups :target-type
                                   list-of-recovery-group-output :member-name
                                   "RecoveryGroups" :json-name
                                   "recoveryGroups"))
                                 (:shape-name "ListRecoveryGroupsResponse"))

(smithy/sdk/shapes:define-input list-resource-sets-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListResourceSetsRequest"))

(smithy/sdk/shapes:define-output list-resource-sets-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (resource-sets :target-type
                                   list-of-resource-set-output :member-name
                                   "ResourceSets" :json-name "resourceSets"))
                                 (:shape-name "ListResourceSetsResponse"))

(smithy/sdk/shapes:define-structure list-rules-output common-lisp:nil
                                    ((resource-type :target-type string-max64
                                      :required common-lisp:t :member-name
                                      "ResourceType" :json-name "resourceType")
                                     (rule-description :target-type
                                      string-max256 :required common-lisp:t
                                      :member-name "RuleDescription" :json-name
                                      "ruleDescription")
                                     (rule-id :target-type string-max64
                                      :required common-lisp:t :member-name
                                      "RuleId" :json-name "ruleId"))
                                    (:shape-name "ListRulesOutput"))

(smithy/sdk/shapes:define-input list-rules-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (resource-type :target-type string
                                  :member-name "ResourceType" :http-query
                                  "resourceType"))
                                (:shape-name "ListRulesRequest"))

(smithy/sdk/shapes:define-output list-rules-response common-lisp:nil
                                 ((next-token :target-type string :member-name
                                   "NextToken" :json-name "nextToken")
                                  (rules :target-type list-of-list-rules-output
                                   :member-name "Rules" :json-name "rules"))
                                 (:shape-name "ListRulesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resources-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourcesRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resources-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "ListTagsForResourcesResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure message common-lisp:nil
                                    ((message-text :target-type string
                                      :member-name "MessageText" :json-name
                                      "messageText"))
                                    (:shape-name "Message"))

(smithy/sdk/shapes:define-structure nlbresource common-lisp:nil
                                    ((arn :target-type string :member-name
                                      "Arn" :json-name "arn"))
                                    (:shape-name "NLBResource"))

(smithy/sdk/shapes:define-structure r53resource-record common-lisp:nil
                                    ((domain-name :target-type string
                                      :member-name "DomainName" :json-name
                                      "domainName")
                                     (record-set-id :target-type string
                                      :member-name "RecordSetId" :json-name
                                      "recordSetId"))
                                    (:shape-name "R53ResourceRecord"))

(smithy/sdk/shapes:define-enum readiness
    common-lisp:nil
  (:ready "READY")
  (:not-ready "NOT_READY")
  (:unknown "UNKNOWN")
  (:not-authorized "NOT_AUTHORIZED"))

(smithy/sdk/shapes:define-structure readiness-check-output common-lisp:nil
                                    ((readiness-check-arn :target-type
                                      string-max256 :required common-lisp:t
                                      :member-name "ReadinessCheckArn"
                                      :json-name "readinessCheckArn")
                                     (readiness-check-name :target-type
                                      string-max64pattern-aazaz09z :member-name
                                      "ReadinessCheckName" :json-name
                                      "readinessCheckName")
                                     (resource-set :target-type
                                      string-max64pattern-aazaz09z :required
                                      common-lisp:t :member-name "ResourceSet"
                                      :json-name "resourceSet")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "ReadinessCheckOutput"))

(smithy/sdk/shapes:define-structure readiness-check-summary common-lisp:nil
                                    ((readiness :target-type readiness
                                      :member-name "Readiness" :json-name
                                      "readiness")
                                     (readiness-check-name :target-type string
                                      :member-name "ReadinessCheckName"
                                      :json-name "readinessCheckName"))
                                    (:shape-name "ReadinessCheckSummary"))

(smithy/sdk/shapes:define-type readiness-check-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure recommendation common-lisp:nil
                                    ((recommendation-text :target-type string
                                      :required common-lisp:t :member-name
                                      "RecommendationText" :json-name
                                      "recommendationText"))
                                    (:shape-name "Recommendation"))

(smithy/sdk/shapes:define-structure recovery-group-output common-lisp:nil
                                    ((cells :target-type list-of-string
                                      :required common-lisp:t :member-name
                                      "Cells" :json-name "cells")
                                     (recovery-group-arn :target-type
                                      string-max256 :required common-lisp:t
                                      :member-name "RecoveryGroupArn"
                                      :json-name "recoveryGroupArn")
                                     (recovery-group-name :target-type
                                      string-max64pattern-aazaz09z :required
                                      common-lisp:t :member-name
                                      "RecoveryGroupName" :json-name
                                      "recoveryGroupName")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "RecoveryGroupOutput"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((component-id :target-type string
                                      :member-name "ComponentId" :json-name
                                      "componentId")
                                     (dns-target-resource :target-type
                                      dnstarget-resource :member-name
                                      "DnsTargetResource" :json-name
                                      "dnsTargetResource")
                                     (readiness-scopes :target-type
                                      list-of-string :member-name
                                      "ReadinessScopes" :json-name
                                      "readinessScopes")
                                     (resource-arn :target-type string
                                      :member-name "ResourceArn" :json-name
                                      "resourceArn"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-result common-lisp:nil
                                    ((component-id :target-type string
                                      :member-name "ComponentId" :json-name
                                      "componentId")
                                     (last-checked-timestamp :target-type
                                      readiness-check-timestamp :required
                                      common-lisp:t :member-name
                                      "LastCheckedTimestamp" :json-name
                                      "lastCheckedTimestamp")
                                     (readiness :target-type readiness
                                      :required common-lisp:t :member-name
                                      "Readiness" :json-name "readiness")
                                     (resource-arn :target-type string
                                      :member-name "ResourceArn" :json-name
                                      "resourceArn"))
                                    (:shape-name "ResourceResult"))

(smithy/sdk/shapes:define-structure resource-set-output common-lisp:nil
                                    ((resource-set-arn :target-type
                                      string-max256 :required common-lisp:t
                                      :member-name "ResourceSetArn" :json-name
                                      "resourceSetArn")
                                     (resource-set-name :target-type
                                      string-max64pattern-aazaz09z :required
                                      common-lisp:t :member-name
                                      "ResourceSetName" :json-name
                                      "resourceSetName")
                                     (resource-set-type :target-type
                                      string-pattern-awsaza-z09aza-z09
                                      :required common-lisp:t :member-name
                                      "ResourceSetType" :json-name
                                      "resourceSetType")
                                     (resources :target-type list-of-resource
                                      :required common-lisp:t :member-name
                                      "Resources" :json-name "resources")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "ResourceSetOutput"))

(smithy/sdk/shapes:define-structure rule-result common-lisp:nil
                                    ((last-checked-timestamp :target-type
                                      readiness-check-timestamp :required
                                      common-lisp:t :member-name
                                      "LastCheckedTimestamp" :json-name
                                      "lastCheckedTimestamp")
                                     (messages :target-type list-of-message
                                      :required common-lisp:t :member-name
                                      "Messages" :json-name "messages")
                                     (readiness :target-type readiness
                                      :required common-lisp:t :member-name
                                      "Readiness" :json-name "readiness")
                                     (rule-id :target-type string :required
                                      common-lisp:t :member-name "RuleId"
                                      :json-name "ruleId"))
                                    (:shape-name "RuleResult"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags" :json-name
                                  "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-map tags :key string :value string)

(smithy/sdk/shapes:define-structure target-resource common-lisp:nil
                                    ((nlbresource :target-type nlbresource
                                      :member-name "NLBResource" :json-name
                                      "nLBResource")
                                     (r53resource :target-type
                                      r53resource-record :member-name
                                      "R53Resource" :json-name "r53Resource"))
                                    (:shape-name "TargetResource"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "TagKeys" :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-cell-request common-lisp:nil
                                ((cell-name :target-type string :required
                                  common-lisp:t :member-name "CellName"
                                  :http-label common-lisp:t)
                                 (cells :target-type list-of-string :required
                                  common-lisp:t :member-name "Cells" :json-name
                                  "cells"))
                                (:shape-name "UpdateCellRequest"))

(smithy/sdk/shapes:define-output update-cell-response common-lisp:nil
                                 ((cell-arn :target-type string-max256
                                   :member-name "CellArn" :json-name "cellArn")
                                  (cell-name :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "CellName" :json-name "cellName")
                                  (cells :target-type list-of-string
                                   :member-name "Cells" :json-name "cells")
                                  (parent-readiness-scopes :target-type
                                   list-of-string :member-name
                                   "ParentReadinessScopes" :json-name
                                   "parentReadinessScopes")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "UpdateCellResponse"))

(smithy/sdk/shapes:define-input update-readiness-check-request common-lisp:nil
                                ((readiness-check-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ReadinessCheckName" :http-label
                                  common-lisp:t)
                                 (resource-set-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ResourceSetName" :json-name
                                  "resourceSetName"))
                                (:shape-name "UpdateReadinessCheckRequest"))

(smithy/sdk/shapes:define-output update-readiness-check-response
                                 common-lisp:nil
                                 ((readiness-check-arn :target-type
                                   string-max256 :member-name
                                   "ReadinessCheckArn" :json-name
                                   "readinessCheckArn")
                                  (readiness-check-name :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "ReadinessCheckName" :json-name
                                   "readinessCheckName")
                                  (resource-set :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "ResourceSet" :json-name "resourceSet")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "UpdateReadinessCheckResponse"))

(smithy/sdk/shapes:define-input update-recovery-group-request common-lisp:nil
                                ((cells :target-type list-of-string :required
                                  common-lisp:t :member-name "Cells" :json-name
                                  "cells")
                                 (recovery-group-name :target-type string
                                  :required common-lisp:t :member-name
                                  "RecoveryGroupName" :http-label
                                  common-lisp:t))
                                (:shape-name "UpdateRecoveryGroupRequest"))

(smithy/sdk/shapes:define-output update-recovery-group-response common-lisp:nil
                                 ((cells :target-type list-of-string
                                   :member-name "Cells" :json-name "cells")
                                  (recovery-group-arn :target-type
                                   string-max256 :member-name
                                   "RecoveryGroupArn" :json-name
                                   "recoveryGroupArn")
                                  (recovery-group-name :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "RecoveryGroupName" :json-name
                                   "recoveryGroupName")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "UpdateRecoveryGroupResponse"))

(smithy/sdk/shapes:define-input update-resource-set-request common-lisp:nil
                                ((resource-set-name :target-type string
                                  :required common-lisp:t :member-name
                                  "ResourceSetName" :http-label common-lisp:t)
                                 (resource-set-type :target-type
                                  string-pattern-awsaza-z09aza-z09 :required
                                  common-lisp:t :member-name "ResourceSetType"
                                  :json-name "resourceSetType")
                                 (resources :target-type list-of-resource
                                  :required common-lisp:t :member-name
                                  "Resources" :json-name "resources"))
                                (:shape-name "UpdateResourceSetRequest"))

(smithy/sdk/shapes:define-output update-resource-set-response common-lisp:nil
                                 ((resource-set-arn :target-type string-max256
                                   :member-name "ResourceSetArn" :json-name
                                   "resourceSetArn")
                                  (resource-set-name :target-type
                                   string-max64pattern-aazaz09z :member-name
                                   "ResourceSetName" :json-name
                                   "resourceSetName")
                                  (resource-set-type :target-type
                                   string-pattern-awsaza-z09aza-z09
                                   :member-name "ResourceSetType" :json-name
                                   "resourceSetType")
                                  (resources :target-type list-of-resource
                                   :member-name "Resources" :json-name
                                   "resources")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "UpdateResourceSetResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list list-of-cell-output :member cell-output)

(smithy/sdk/shapes:define-list list-of-cross-account-authorization :member
                               cross-account-authorization)

(smithy/sdk/shapes:define-list list-of-list-rules-output :member
                               list-rules-output)

(smithy/sdk/shapes:define-list list-of-message :member message)

(smithy/sdk/shapes:define-list list-of-readiness-check-output :member
                               readiness-check-output)

(smithy/sdk/shapes:define-list list-of-readiness-check-summary :member
                               readiness-check-summary)

(smithy/sdk/shapes:define-list list-of-recommendation :member recommendation)

(smithy/sdk/shapes:define-list list-of-recovery-group-output :member
                               recovery-group-output)

(smithy/sdk/shapes:define-list list-of-resource :member resource)

(smithy/sdk/shapes:define-list list-of-resource-result :member resource-result)

(smithy/sdk/shapes:define-list list-of-resource-set-output :member
                               resource-set-output)

(smithy/sdk/shapes:define-list list-of-rule-result :member rule-result)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max64 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max64pattern-aazaz09z
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-pattern-awsaza-z09aza-z09
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-cell :shape-name "CreateCell"
                                       :input create-cell-request :output
                                       create-cell-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/cells" :code 200)

(smithy/sdk/operation:define-operation create-cross-account-authorization
                                       :shape-name
                                       "CreateCrossAccountAuthorization" :input
                                       create-cross-account-authorization-request
                                       :output
                                       create-cross-account-authorization-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/crossaccountauthorizations" :code 200)

(smithy/sdk/operation:define-operation create-readiness-check :shape-name
                                       "CreateReadinessCheck" :input
                                       create-readiness-check-request :output
                                       create-readiness-check-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/readinesschecks"
                                       :code 200)

(smithy/sdk/operation:define-operation create-recovery-group :shape-name
                                       "CreateRecoveryGroup" :input
                                       create-recovery-group-request :output
                                       create-recovery-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/recoverygroups"
                                       :code 200)

(smithy/sdk/operation:define-operation create-resource-set :shape-name
                                       "CreateResourceSet" :input
                                       create-resource-set-request :output
                                       create-resource-set-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/resourcesets"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-cell :shape-name "DeleteCell"
                                       :input delete-cell-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/cells/{CellName}" :code 204)

(smithy/sdk/operation:define-operation delete-cross-account-authorization
                                       :shape-name
                                       "DeleteCrossAccountAuthorization" :input
                                       delete-cross-account-authorization-request
                                       :output
                                       delete-cross-account-authorization-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/crossaccountauthorizations/{CrossAccountAuthorization}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-readiness-check :shape-name
                                       "DeleteReadinessCheck" :input
                                       delete-readiness-check-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/readinesschecks/{ReadinessCheckName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-recovery-group :shape-name
                                       "DeleteRecoveryGroup" :input
                                       delete-recovery-group-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/recoverygroups/{RecoveryGroupName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-resource-set :shape-name
                                       "DeleteResourceSet" :input
                                       delete-resource-set-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/resourcesets/{ResourceSetName}" :code
                                       204)

(smithy/sdk/operation:define-operation get-architecture-recommendations
                                       :shape-name
                                       "GetArchitectureRecommendations" :input
                                       get-architecture-recommendations-request
                                       :output
                                       get-architecture-recommendations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/recoverygroups/{RecoveryGroupName}/architectureRecommendations"
                                       :code 200)

(smithy/sdk/operation:define-operation get-cell :shape-name "GetCell" :input
                                       get-cell-request :output
                                       get-cell-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/cells/{CellName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-cell-readiness-summary :shape-name
                                       "GetCellReadinessSummary" :input
                                       get-cell-readiness-summary-request
                                       :output
                                       get-cell-readiness-summary-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/cellreadiness/{CellName}" :code 200)

(smithy/sdk/operation:define-operation get-readiness-check :shape-name
                                       "GetReadinessCheck" :input
                                       get-readiness-check-request :output
                                       get-readiness-check-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/readinesschecks/{ReadinessCheckName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-readiness-check-resource-status
                                       :shape-name
                                       "GetReadinessCheckResourceStatus" :input
                                       get-readiness-check-resource-status-request
                                       :output
                                       get-readiness-check-resource-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/readinesschecks/{ReadinessCheckName}/resource/{ResourceIdentifier}/status"
                                       :code 200)

(smithy/sdk/operation:define-operation get-readiness-check-status :shape-name
                                       "GetReadinessCheckStatus" :input
                                       get-readiness-check-status-request
                                       :output
                                       get-readiness-check-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/readinesschecks/{ReadinessCheckName}/status"
                                       :code 200)

(smithy/sdk/operation:define-operation get-recovery-group :shape-name
                                       "GetRecoveryGroup" :input
                                       get-recovery-group-request :output
                                       get-recovery-group-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/recoverygroups/{RecoveryGroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-recovery-group-readiness-summary
                                       :shape-name
                                       "GetRecoveryGroupReadinessSummary"
                                       :input
                                       get-recovery-group-readiness-summary-request
                                       :output
                                       get-recovery-group-readiness-summary-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/recoverygroupreadiness/{RecoveryGroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-set :shape-name
                                       "GetResourceSet" :input
                                       get-resource-set-request :output
                                       get-resource-set-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/resourcesets/{ResourceSetName}" :code
                                       200)

(smithy/sdk/operation:define-operation list-cells :shape-name "ListCells"
                                       :input list-cells-request :output
                                       list-cells-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/cells" :code 200)

(smithy/sdk/operation:define-operation list-cross-account-authorizations
                                       :shape-name
                                       "ListCrossAccountAuthorizations" :input
                                       list-cross-account-authorizations-request
                                       :output
                                       list-cross-account-authorizations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/crossaccountauthorizations" :code 200)

(smithy/sdk/operation:define-operation list-readiness-checks :shape-name
                                       "ListReadinessChecks" :input
                                       list-readiness-checks-request :output
                                       list-readiness-checks-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/readinesschecks"
                                       :code 200)

(smithy/sdk/operation:define-operation list-recovery-groups :shape-name
                                       "ListRecoveryGroups" :input
                                       list-recovery-groups-request :output
                                       list-recovery-groups-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/recoverygroups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-resource-sets :shape-name
                                       "ListResourceSets" :input
                                       list-resource-sets-request :output
                                       list-resource-sets-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/resourcesets" :code
                                       200)

(smithy/sdk/operation:define-operation list-rules :shape-name "ListRules"
                                       :input list-rules-request :output
                                       list-rules-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/rules" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resources :shape-name
                                       "ListTagsForResources" :input
                                       list-tags-for-resources-request :output
                                       list-tags-for-resources-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-cell :shape-name "UpdateCell"
                                       :input update-cell-request :output
                                       update-cell-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/cells/{CellName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-readiness-check :shape-name
                                       "UpdateReadinessCheck" :input
                                       update-readiness-check-request :output
                                       update-readiness-check-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/readinesschecks/{ReadinessCheckName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-recovery-group :shape-name
                                       "UpdateRecoveryGroup" :input
                                       update-recovery-group-request :output
                                       update-recovery-group-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/recoverygroups/{RecoveryGroupName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-resource-set :shape-name
                                       "UpdateResourceSet" :input
                                       update-resource-set-request :output
                                       update-resource-set-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/resourcesets/{ResourceSetName}" :code
                                       200)
