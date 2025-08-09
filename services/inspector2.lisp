(uiop/package:define-package #:pira/inspector2 (:use)
                             (:export #:access-denied-exception #:account
                              #:account-aggregation
                              #:account-aggregation-response #:account-id
                              #:account-id-filter-list #:account-id-set
                              #:account-list #:account-sort-by #:account-state
                              #:account-state-list #:agg-counts
                              #:aggregation-finding-type #:aggregation-request
                              #:aggregation-resource-type
                              #:aggregation-response
                              #:aggregation-response-list #:aggregation-type
                              #:ami-aggregation #:ami-aggregation-response
                              #:ami-id #:ami-sort-by #:architecture
                              #:architecture-list #:arn
                              #:associate-configuration-request
                              #:associate-configuration-request-list
                              #:associate-member #:associate-member-request
                              #:associate-member-response
                              #:association-result-status-code
                              #:association-result-status-message #:atig-data
                              #:authorization-url #:auto-enable
                              #:aws-ec2instance-details
                              #:aws-ecr-container-aggregation
                              #:aws-ecr-container-aggregation-response
                              #:aws-ecr-container-image-details
                              #:aws-ecr-container-sort-by
                              #:aws-ecs-metadata-details
                              #:aws-eks-metadata-details
                              #:aws-eks-workload-info
                              #:aws-eks-workload-info-list
                              #:aws-lambda-function-details
                              #:bad-request-exception
                              #:batch-associate-code-security-scan-configuration
                              #:batch-associate-code-security-scan-configuration-request
                              #:batch-associate-code-security-scan-configuration-response
                              #:batch-disassociate-code-security-scan-configuration
                              #:batch-disassociate-code-security-scan-configuration-request
                              #:batch-disassociate-code-security-scan-configuration-response
                              #:batch-get-account-status
                              #:batch-get-account-status-request
                              #:batch-get-account-status-response
                              #:batch-get-code-snippet
                              #:batch-get-code-snippet-request
                              #:batch-get-code-snippet-response
                              #:batch-get-finding-details
                              #:batch-get-finding-details-request
                              #:batch-get-finding-details-response
                              #:batch-get-free-trial-info
                              #:batch-get-free-trial-info-request
                              #:batch-get-free-trial-info-response
                              #:batch-get-member-ec2deep-inspection-status
                              #:batch-get-member-ec2deep-inspection-status-request
                              #:batch-get-member-ec2deep-inspection-status-response
                              #:batch-update-member-ec2deep-inspection-status
                              #:batch-update-member-ec2deep-inspection-status-request
                              #:batch-update-member-ec2deep-inspection-status-response
                              #:benchmark-profile #:benchmark-version
                              #:cancel-findings-report
                              #:cancel-findings-report-request
                              #:cancel-findings-report-response
                              #:cancel-sbom-export #:cancel-sbom-export-request
                              #:cancel-sbom-export-response #:check-count
                              #:check-id-filter-list #:cis-account-id-list
                              #:cis-check-aggregation
                              #:cis-check-aggregation-list #:cis-date-filter
                              #:cis-finding-arn #:cis-finding-arn-filter-list
                              #:cis-finding-status
                              #:cis-finding-status-comparison
                              #:cis-finding-status-filter
                              #:cis-finding-status-filter-list
                              #:cis-number-filter #:cis-number-filter-list
                              #:cis-owner-id #:cis-report-format
                              #:cis-report-status #:cis-result-status
                              #:cis-result-status-comparison
                              #:cis-result-status-filter
                              #:cis-result-status-filter-list
                              #:cis-rule-details #:cis-rule-status #:cis-scan
                              #:cis-scan-arn #:cis-scan-arn-filter-list
                              #:cis-scan-configuration
                              #:cis-scan-configuration-arn
                              #:cis-scan-configuration-arn-filter-list
                              #:cis-scan-configuration-list
                              #:cis-scan-configurations-sort-by
                              #:cis-scan-date-filter-list #:cis-scan-list
                              #:cis-scan-name #:cis-scan-name-filter-list
                              #:cis-scan-result-details
                              #:cis-scan-result-details-filter-criteria
                              #:cis-scan-result-details-list
                              #:cis-scan-result-details-sort-by
                              #:cis-scan-results-aggregated-by-checks-filter-criteria
                              #:cis-scan-results-aggregated-by-checks-sort-by
                              #:cis-scan-results-aggregated-by-target-resource-filter-criteria
                              #:cis-scan-results-aggregated-by-target-resource-sort-by
                              #:cis-scan-results-max-results #:cis-scan-status
                              #:cis-scan-status-comparison
                              #:cis-scan-status-filter
                              #:cis-scan-status-filter-list
                              #:cis-scheduled-by-filter-list
                              #:cis-security-level
                              #:cis-security-level-comparison
                              #:cis-security-level-filter
                              #:cis-security-level-filter-list
                              #:cis-session-message #:cis-session-messages
                              #:cis-sort-order #:cis-string-comparison
                              #:cis-string-filter #:cis-tag-map
                              #:cis-target-resource-aggregation
                              #:cis-target-resource-aggregation-list
                              #:cis-target-status
                              #:cis-target-status-comparison
                              #:cis-target-status-filter
                              #:cis-target-status-reason
                              #:cis-target-status-reason-filter #:cis-targets
                              #:cisa-action #:cisa-data #:cisa-date-added
                              #:cisa-date-due #:client-token #:cluster-details
                              #:cluster-details-list
                              #:cluster-for-image-filter-criteria
                              #:cluster-information #:cluster-information-list
                              #:cluster-metadata #:code-file-path #:code-line
                              #:code-line-list #:code-repository-aggregation
                              #:code-repository-aggregation-response
                              #:code-repository-details
                              #:code-repository-integration-arn
                              #:code-repository-metadata
                              #:code-repository-on-demand-scan
                              #:code-repository-project-name
                              #:code-repository-provider-type
                              #:code-repository-sort-by #:code-scan-status
                              #:code-security-client-token
                              #:code-security-integration-arn
                              #:code-security-integration-summary
                              #:code-security-resource
                              #:code-security-scan-configuration
                              #:code-security-scan-configuration-association-summaries
                              #:code-security-scan-configuration-association-summary
                              #:code-security-scan-configuration-summaries
                              #:code-security-scan-configuration-summary
                              #:code-security-uuid #:code-snippet-error
                              #:code-snippet-error-code
                              #:code-snippet-error-list #:code-snippet-result
                              #:code-snippet-result-list
                              #:code-vulnerability-details #:commit-id
                              #:component #:component-arn #:component-type
                              #:compute-platform #:configuration-level
                              #:conflict-exception
                              #:continuous-integration-scan-configuration
                              #:continuous-integration-scan-event
                              #:continuous-integration-scan-supported-events
                              #:counts #:counts-list #:coverage-date-filter
                              #:coverage-date-filter-list
                              #:coverage-filter-criteria
                              #:coverage-map-comparison #:coverage-map-filter
                              #:coverage-map-filter-list
                              #:coverage-number-filter
                              #:coverage-number-filter-list
                              #:coverage-resource-type
                              #:coverage-string-comparison
                              #:coverage-string-filter
                              #:coverage-string-filter-list
                              #:coverage-string-input #:covered-resource
                              #:covered-resources
                              #:create-cis-scan-configuration
                              #:create-cis-scan-configuration-request
                              #:create-cis-scan-configuration-response
                              #:create-cis-targets
                              #:create-code-security-integration
                              #:create-code-security-integration-request
                              #:create-code-security-integration-response
                              #:create-code-security-scan-configuration
                              #:create-code-security-scan-configuration-request
                              #:create-code-security-scan-configuration-response
                              #:create-filter #:create-filter-request
                              #:create-filter-response #:create-findings-report
                              #:create-findings-report-request
                              #:create-findings-report-response
                              #:create-git-lab-self-managed-integration-detail
                              #:create-integration-detail #:create-sbom-export
                              #:create-sbom-export-request
                              #:create-sbom-export-response #:currency #:cvss2
                              #:cvss2base-score #:cvss2scoring-vector #:cvss3
                              #:cvss3base-score #:cvss3scoring-vector
                              #:cvss-score #:cvss-score-adjustment
                              #:cvss-score-adjustment-list #:cvss-score-details
                              #:cvss-score-list #:cwe #:cwe-list #:cwes
                              #:daily-schedule #:date-filter #:date-filter-list
                              #:date-time-timestamp #:day #:days-list
                              #:delegated-admin #:delegated-admin-account
                              #:delegated-admin-account-list
                              #:delegated-admin-status
                              #:delete-cis-scan-configuration
                              #:delete-cis-scan-configuration-request
                              #:delete-cis-scan-configuration-response
                              #:delete-code-security-integration
                              #:delete-code-security-integration-request
                              #:delete-code-security-integration-response
                              #:delete-code-security-scan-configuration
                              #:delete-code-security-scan-configuration-request
                              #:delete-code-security-scan-configuration-response
                              #:delete-filter #:delete-filter-request
                              #:delete-filter-response
                              #:describe-organization-configuration
                              #:describe-organization-configuration-request
                              #:describe-organization-configuration-response
                              #:destination #:detection-platforms
                              #:detector-tag-list #:disable
                              #:disable-delegated-admin-account
                              #:disable-delegated-admin-account-request
                              #:disable-delegated-admin-account-response
                              #:disable-request #:disable-resource-type-list
                              #:disable-response
                              #:disassociate-configuration-request
                              #:disassociate-configuration-request-list
                              #:disassociate-member
                              #:disassociate-member-request
                              #:disassociate-member-response #:ec2configuration
                              #:ec2configuration-state
                              #:ec2deep-inspection-status
                              #:ec2instance-aggregation
                              #:ec2instance-aggregation-response
                              #:ec2instance-sort-by #:ec2metadata #:ec2platform
                              #:ec2scan-mode #:ec2scan-mode-state
                              #:ec2scan-mode-status #:ecr-configuration
                              #:ecr-configuration-state
                              #:ecr-container-image-metadata
                              #:ecr-pull-date-rescan-duration
                              #:ecr-pull-date-rescan-mode
                              #:ecr-repository-metadata #:ecr-rescan-duration
                              #:ecr-rescan-duration-state
                              #:ecr-rescan-duration-status #:ecr-scan-frequency
                              #:enable #:enable-delegated-admin-account
                              #:enable-delegated-admin-account-request
                              #:enable-delegated-admin-account-response
                              #:enable-request #:enable-resource-type-list
                              #:enable-response #:epss #:epss-details
                              #:epss-score #:epss-score-value #:error-code
                              #:error-message #:evidence #:evidence-detail
                              #:evidence-list #:evidence-rule
                              #:evidence-severity #:execution-role-arn
                              #:exploit-available #:exploit-observed
                              #:exploitability-details #:external-report-status
                              #:failed-account #:failed-account-list
                              #:failed-association-result
                              #:failed-association-result-list
                              #:failed-member-account-ec2deep-inspection-status-state
                              #:failed-member-account-ec2deep-inspection-status-state-list
                              #:file-path #:filter #:filter-action #:filter-arn
                              #:filter-arn-list #:filter-criteria
                              #:filter-description #:filter-list #:filter-name
                              #:filter-reason #:finding #:finding-arn
                              #:finding-arn-list #:finding-arns
                              #:finding-description #:finding-detail
                              #:finding-details #:finding-details-error
                              #:finding-details-error-code
                              #:finding-details-error-list #:finding-list
                              #:finding-status #:finding-title #:finding-type
                              #:finding-type-aggregation
                              #:finding-type-aggregation-response
                              #:finding-type-sort-by #:first-seen
                              #:fix-available #:free-trial-account-info
                              #:free-trial-account-info-list #:free-trial-info
                              #:free-trial-info-error
                              #:free-trial-info-error-code
                              #:free-trial-info-error-list
                              #:free-trial-info-list #:free-trial-status
                              #:free-trial-type #:frequency-expression
                              #:function-name #:get-cis-scan-report
                              #:get-cis-scan-report-request
                              #:get-cis-scan-report-response
                              #:get-cis-scan-result-details
                              #:get-cis-scan-result-details-max-results
                              #:get-cis-scan-result-details-request
                              #:get-cis-scan-result-details-response
                              #:get-clusters-for-image
                              #:get-clusters-for-image-next-token
                              #:get-clusters-for-image-request
                              #:get-clusters-for-image-response
                              #:get-code-security-integration
                              #:get-code-security-integration-request
                              #:get-code-security-integration-response
                              #:get-code-security-scan
                              #:get-code-security-scan-configuration
                              #:get-code-security-scan-configuration-request
                              #:get-code-security-scan-configuration-response
                              #:get-code-security-scan-request
                              #:get-code-security-scan-response
                              #:get-configuration #:get-configuration-request
                              #:get-configuration-response
                              #:get-delegated-admin-account
                              #:get-delegated-admin-account-request
                              #:get-delegated-admin-account-response
                              #:get-ec2deep-inspection-configuration
                              #:get-ec2deep-inspection-configuration-request
                              #:get-ec2deep-inspection-configuration-response
                              #:get-encryption-key #:get-encryption-key-request
                              #:get-encryption-key-response
                              #:get-findings-report-status
                              #:get-findings-report-status-request
                              #:get-findings-report-status-response
                              #:get-member #:get-member-request
                              #:get-member-response #:get-sbom-export
                              #:get-sbom-export-request
                              #:get-sbom-export-response #:git-hub-auth-code
                              #:git-hub-installation-id #:git-lab-access-token
                              #:git-lab-auth-code #:group-key #:image-hash
                              #:image-layer-aggregation
                              #:image-layer-aggregation-response
                              #:image-layer-sort-by #:image-tag-list
                              #:inspector2 #:inspector-score-details
                              #:instance-url #:integration-name
                              #:integration-status #:integration-summaries
                              #:integration-type #:internal-server-exception
                              #:ip-v4address #:ip-v4address-list #:ip-v6address
                              #:ip-v6address-list #:kms-key-arn
                              #:lambda-function-aggregation
                              #:lambda-function-aggregation-response
                              #:lambda-function-metadata
                              #:lambda-function-sort-by
                              #:lambda-layer-aggregation
                              #:lambda-layer-aggregation-response
                              #:lambda-layer-arn #:lambda-layer-list
                              #:lambda-layer-sort-by #:lambda-vpc-config
                              #:last-seen #:layer-list
                              #:list-account-permissions
                              #:list-account-permissions-max-results
                              #:list-account-permissions-request
                              #:list-account-permissions-response
                              #:list-cis-scan-configurations
                              #:list-cis-scan-configurations-filter-criteria
                              #:list-cis-scan-configurations-max-results
                              #:list-cis-scan-configurations-request
                              #:list-cis-scan-configurations-response
                              #:list-cis-scan-results-aggregated-by-checks
                              #:list-cis-scan-results-aggregated-by-checks-request
                              #:list-cis-scan-results-aggregated-by-checks-response
                              #:list-cis-scan-results-aggregated-by-target-resource
                              #:list-cis-scan-results-aggregated-by-target-resource-request
                              #:list-cis-scan-results-aggregated-by-target-resource-response
                              #:list-cis-scans #:list-cis-scans-detail-level
                              #:list-cis-scans-filter-criteria
                              #:list-cis-scans-max-results
                              #:list-cis-scans-request
                              #:list-cis-scans-response
                              #:list-cis-scans-sort-by
                              #:list-code-security-integrations
                              #:list-code-security-integrations-request
                              #:list-code-security-integrations-response
                              #:list-code-security-scan-configuration-associations
                              #:list-code-security-scan-configuration-associations-request
                              #:list-code-security-scan-configuration-associations-response
                              #:list-code-security-scan-configurations
                              #:list-code-security-scan-configurations-request
                              #:list-code-security-scan-configurations-response
                              #:list-coverage #:list-coverage-max-results
                              #:list-coverage-request #:list-coverage-response
                              #:list-coverage-statistics
                              #:list-coverage-statistics-request
                              #:list-coverage-statistics-response
                              #:list-delegated-admin-accounts
                              #:list-delegated-admin-accounts-request
                              #:list-delegated-admin-accounts-response
                              #:list-delegated-admin-max-results
                              #:list-filter-max-results #:list-filters
                              #:list-filters-request #:list-filters-response
                              #:list-finding-aggregations
                              #:list-finding-aggregations-max-results
                              #:list-finding-aggregations-request
                              #:list-finding-aggregations-response
                              #:list-findings #:list-findings-max-results
                              #:list-findings-request #:list-findings-response
                              #:list-members #:list-members-max-results
                              #:list-members-request #:list-members-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-usage-totals
                              #:list-usage-totals-max-results
                              #:list-usage-totals-next-token
                              #:list-usage-totals-request
                              #:list-usage-totals-response #:map-comparison
                              #:map-filter #:map-filter-list #:map-key
                              #:map-value #:member
                              #:member-account-ec2deep-inspection-status
                              #:member-account-ec2deep-inspection-status-list
                              #:member-account-ec2deep-inspection-status-state
                              #:member-account-ec2deep-inspection-status-state-list
                              #:member-list #:metering-account-id
                              #:metering-account-id-list
                              #:monthly-cost-estimate #:monthly-schedule
                              #:network-path #:network-protocol
                              #:network-reachability-details #:next-token
                              #:non-empty-string #:non-empty-string-list
                              #:number-filter #:number-filter-list
                              #:one-account-id-filter-list #:one-time-schedule
                              #:operation #:owner-id #:package-aggregation
                              #:package-aggregation-response
                              #:package-architecture #:package-epoch
                              #:package-filter #:package-filter-list
                              #:package-manager #:package-name
                              #:package-release #:package-sort-by
                              #:package-type #:package-version
                              #:package-vulnerability-details #:path
                              #:path-list #:periodic-scan-configuration
                              #:periodic-scan-frequency #:permission
                              #:permissions #:platform #:platform-filter-list
                              #:platform-version #:port #:port-range
                              #:port-range-filter #:port-range-filter-list
                              #:product
                              #:project-code-security-scan-configuration
                              #:project-continuous-integration-scan-configuration
                              #:project-continuous-integration-scan-configuration-list
                              #:project-id
                              #:project-periodic-scan-configuration
                              #:project-periodic-scan-configuration-list
                              #:project-selection-scope #:reason
                              #:recommendation #:reference-urls
                              #:related-vulnerabilities #:related-vulnerability
                              #:relationship-status #:remediation
                              #:report-format #:report-id
                              #:report-target-accounts #:reporting-error-code
                              #:repository-aggregation
                              #:repository-aggregation-response
                              #:repository-sort-by #:reset-encryption-key
                              #:reset-encryption-key-request
                              #:reset-encryption-key-response #:resource
                              #:resource-details #:resource-filter-criteria
                              #:resource-id #:resource-id-filter-list
                              #:resource-list #:resource-map-comparison
                              #:resource-map-filter #:resource-map-filter-list
                              #:resource-not-found-exception
                              #:resource-scan-metadata #:resource-scan-type
                              #:resource-state #:resource-status
                              #:resource-string-comparison
                              #:resource-string-filter
                              #:resource-string-filter-list
                              #:resource-string-input
                              #:resource-tag-filter-list #:resource-type
                              #:risk-score #:rule-id #:rule-set-categories
                              #:rule-set-category #:runtime
                              #:sbom-report-format #:scan-configuration-arn
                              #:scan-configuration-name #:scan-mode
                              #:scan-status #:scan-status-code
                              #:scan-status-reason #:scan-type #:schedule
                              #:scope-settings #:search-vulnerabilities
                              #:search-vulnerabilities-filter-criteria
                              #:search-vulnerabilities-request
                              #:search-vulnerabilities-response
                              #:security-group-id #:security-group-id-list
                              #:send-cis-session-health
                              #:send-cis-session-health-request
                              #:send-cis-session-health-response
                              #:send-cis-session-telemetry
                              #:send-cis-session-telemetry-request
                              #:send-cis-session-telemetry-response #:service
                              #:service-quota-exceeded-exception #:severity
                              #:severity-counts #:sort-criteria #:sort-field
                              #:sort-order #:source-layer-hash
                              #:start-cis-session #:start-cis-session-message
                              #:start-cis-session-request
                              #:start-cis-session-response
                              #:start-code-security-scan
                              #:start-code-security-scan-request
                              #:start-code-security-scan-response #:state
                              #:status #:status-counts #:step #:step-list
                              #:stop-cis-message-progress #:stop-cis-session
                              #:stop-cis-session-message
                              #:stop-cis-session-request
                              #:stop-cis-session-response
                              #:stop-cis-session-status #:string-comparison
                              #:string-filter #:string-filter-list
                              #:string-input #:string-list #:subnet-id
                              #:subnet-id-list #:successful-association-result
                              #:successful-association-result-list
                              #:suggested-fix #:suggested-fixes
                              #:tag-comparison #:tag-filter #:tag-key
                              #:tag-key-list #:tag-list #:tag-map
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value-list #:target
                              #:target-account #:target-account-list
                              #:target-resource-tags #:target-resource-tags-key
                              #:target-resource-tags-value
                              #:target-status-filter-list
                              #:target-status-reason-filter-list #:targets
                              #:throttling-exception #:time #:time-of-day
                              #:timezone #:title-aggregation
                              #:title-aggregation-response #:title-filter-list
                              #:title-sort-by #:tool #:tools #:ttp #:ttps
                              #:uuid #:untag-resource #:untag-resource-request
                              #:untag-resource-response
                              #:update-cis-scan-configuration
                              #:update-cis-scan-configuration-request
                              #:update-cis-scan-configuration-response
                              #:update-cis-targets
                              #:update-code-security-integration
                              #:update-code-security-integration-request
                              #:update-code-security-integration-response
                              #:update-code-security-scan-configuration
                              #:update-code-security-scan-configuration-request
                              #:update-code-security-scan-configuration-response
                              #:update-configuration
                              #:update-configuration-request
                              #:update-configuration-response
                              #:update-ec2deep-inspection-configuration
                              #:update-ec2deep-inspection-configuration-request
                              #:update-ec2deep-inspection-configuration-response
                              #:update-encryption-key
                              #:update-encryption-key-request
                              #:update-encryption-key-response #:update-filter
                              #:update-filter-request #:update-filter-response
                              #:update-git-hub-integration-detail
                              #:update-git-lab-self-managed-integration-detail
                              #:update-integration-details
                              #:update-org-ec2deep-inspection-configuration
                              #:update-org-ec2deep-inspection-configuration-request
                              #:update-org-ec2deep-inspection-configuration-response
                              #:update-organization-configuration
                              #:update-organization-configuration-request
                              #:update-organization-configuration-response
                              #:usage #:usage-account-id
                              #:usage-account-id-list #:usage-list
                              #:usage-total #:usage-total-list #:usage-type
                              #:usage-value #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-fields
                              #:validation-exception-reason #:vendor
                              #:vendor-created-at #:vendor-severity
                              #:vendor-updated-at #:version #:vpc-id #:vuln-id
                              #:vuln-id-list #:vulnerabilities #:vulnerability
                              #:vulnerability-description #:vulnerability-id
                              #:vulnerability-id-list
                              #:vulnerability-reference-url
                              #:vulnerability-reference-urls
                              #:vulnerability-source #:vulnerability-source-url
                              #:vulnerable-package #:vulnerable-package-list
                              #:vulnerable-package-remediation
                              #:weekly-schedule))
(common-lisp:in-package #:pira/inspector2)

(smithy/sdk/service:define-service inspector2 :shape-name "Inspector2" :version
                                   "2020-06-08" :title "Inspector2" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Inspector2")
                                      ("arnNamespace" . "inspector2")
                                      ("cloudTrailEventSource"
                                       . "inspector2.amazon.aws")
                                      ("cloudFormationName" . "Inspector2"))
                                     ("aws.auth#sigv4" ("name" . "inspector2"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure account common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "status")
                                     (resource-status :target-type
                                      resource-status :required common-lisp:t
                                      :member-name "resourceStatus"))
                                    (:shape-name "Account"))

(smithy/sdk/shapes:define-structure account-aggregation common-lisp:nil
                                    ((finding-type :target-type
                                      aggregation-finding-type :member-name
                                      "findingType")
                                     (resource-type :target-type
                                      aggregation-resource-type :member-name
                                      "resourceType")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder")
                                     (sort-by :target-type account-sort-by
                                      :member-name "sortBy"))
                                    (:shape-name "AccountAggregation"))

(smithy/sdk/shapes:define-structure account-aggregation-response
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "accountId")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts")
                                     (exploit-available-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "exploitAvailableCount")
                                     (fix-available-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "fixAvailableCount"))
                                    (:shape-name "AccountAggregationResponse"))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-id-filter-list :member cis-string-filter)

(smithy/sdk/shapes:define-list account-id-set :member account-id)

(smithy/sdk/shapes:define-list account-list :member account)

(smithy/sdk/shapes:define-type account-sort-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-state common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId")
                                     (state :target-type state :required
                                      common-lisp:t :member-name "state")
                                     (resource-state :target-type
                                      resource-state :required common-lisp:t
                                      :member-name "resourceState"))
                                    (:shape-name "AccountState"))

(smithy/sdk/shapes:define-list account-state-list :member account-state)

(smithy/sdk/shapes:define-type agg-counts smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type aggregation-finding-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union aggregation-request common-lisp:nil
                                ((account-aggregation :target-type
                                  account-aggregation :member-name
                                  "accountAggregation")
                                 (ami-aggregation :target-type ami-aggregation
                                  :member-name "amiAggregation")
                                 (aws-ecr-container-aggregation :target-type
                                  aws-ecr-container-aggregation :member-name
                                  "awsEcrContainerAggregation")
                                 (ec2instance-aggregation :target-type
                                  ec2instance-aggregation :member-name
                                  "ec2InstanceAggregation")
                                 (finding-type-aggregation :target-type
                                  finding-type-aggregation :member-name
                                  "findingTypeAggregation")
                                 (image-layer-aggregation :target-type
                                  image-layer-aggregation :member-name
                                  "imageLayerAggregation")
                                 (package-aggregation :target-type
                                  package-aggregation :member-name
                                  "packageAggregation")
                                 (repository-aggregation :target-type
                                  repository-aggregation :member-name
                                  "repositoryAggregation")
                                 (title-aggregation :target-type
                                  title-aggregation :member-name
                                  "titleAggregation")
                                 (lambda-layer-aggregation :target-type
                                  lambda-layer-aggregation :member-name
                                  "lambdaLayerAggregation")
                                 (lambda-function-aggregation :target-type
                                  lambda-function-aggregation :member-name
                                  "lambdaFunctionAggregation")
                                 (code-repository-aggregation :target-type
                                  code-repository-aggregation :member-name
                                  "codeRepositoryAggregation"))
                                (:shape-name "AggregationRequest"))

(smithy/sdk/shapes:define-type aggregation-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union aggregation-response common-lisp:nil
                                ((account-aggregation :target-type
                                  account-aggregation-response :member-name
                                  "accountAggregation")
                                 (ami-aggregation :target-type
                                  ami-aggregation-response :member-name
                                  "amiAggregation")
                                 (aws-ecr-container-aggregation :target-type
                                  aws-ecr-container-aggregation-response
                                  :member-name "awsEcrContainerAggregation")
                                 (ec2instance-aggregation :target-type
                                  ec2instance-aggregation-response :member-name
                                  "ec2InstanceAggregation")
                                 (finding-type-aggregation :target-type
                                  finding-type-aggregation-response
                                  :member-name "findingTypeAggregation")
                                 (image-layer-aggregation :target-type
                                  image-layer-aggregation-response :member-name
                                  "imageLayerAggregation")
                                 (package-aggregation :target-type
                                  package-aggregation-response :member-name
                                  "packageAggregation")
                                 (repository-aggregation :target-type
                                  repository-aggregation-response :member-name
                                  "repositoryAggregation")
                                 (title-aggregation :target-type
                                  title-aggregation-response :member-name
                                  "titleAggregation")
                                 (lambda-layer-aggregation :target-type
                                  lambda-layer-aggregation-response
                                  :member-name "lambdaLayerAggregation")
                                 (lambda-function-aggregation :target-type
                                  lambda-function-aggregation-response
                                  :member-name "lambdaFunctionAggregation")
                                 (code-repository-aggregation :target-type
                                  code-repository-aggregation-response
                                  :member-name "codeRepositoryAggregation"))
                                (:shape-name "AggregationResponse"))

(smithy/sdk/shapes:define-list aggregation-response-list :member
                               aggregation-response)

(smithy/sdk/shapes:define-type aggregation-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ami-aggregation common-lisp:nil
                                    ((amis :target-type string-filter-list
                                      :member-name "amis")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder")
                                     (sort-by :target-type ami-sort-by
                                      :member-name "sortBy"))
                                    (:shape-name "AmiAggregation"))

(smithy/sdk/shapes:define-structure ami-aggregation-response common-lisp:nil
                                    ((ami :target-type ami-id :required
                                      common-lisp:t :member-name "ami")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts")
                                     (affected-instances :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "affectedInstances"))
                                    (:shape-name "AmiAggregationResponse"))

(smithy/sdk/shapes:define-type ami-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ami-sort-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type architecture smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list architecture-list :member architecture)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure associate-configuration-request
                                    common-lisp:nil
                                    ((scan-configuration-arn :target-type
                                      scan-configuration-arn :required
                                      common-lisp:t :member-name
                                      "scanConfigurationArn")
                                     (resource :target-type
                                      code-security-resource :required
                                      common-lisp:t :member-name "resource"))
                                    (:shape-name
                                     "AssociateConfigurationRequest"))

(smithy/sdk/shapes:define-list associate-configuration-request-list :member
                               associate-configuration-request)

(smithy/sdk/shapes:define-structure associate-member-request common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId"))
                                    (:shape-name "AssociateMemberRequest"))

(smithy/sdk/shapes:define-structure associate-member-response common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId"))
                                    (:shape-name "AssociateMemberResponse"))

(smithy/sdk/shapes:define-enum association-result-status-code
    common-lisp:nil
  (:internal-error "INTERNAL_ERROR")
  (:access-denied "ACCESS_DENIED")
  (:scan-configuration-not-found "SCAN_CONFIGURATION_NOT_FOUND")
  (:invalid-input "INVALID_INPUT")
  (:resource-not-found "RESOURCE_NOT_FOUND")
  (:quota-exceeded "QUOTA_EXCEEDED"))

(smithy/sdk/shapes:define-type association-result-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure atig-data common-lisp:nil
                                    ((first-seen :target-type first-seen
                                      :member-name "firstSeen")
                                     (last-seen :target-type last-seen
                                      :member-name "lastSeen")
                                     (targets :target-type targets :member-name
                                      "targets")
                                     (ttps :target-type ttps :member-name
                                      "ttps"))
                                    (:shape-name "AtigData"))

(smithy/sdk/shapes:define-type authorization-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure auto-enable common-lisp:nil
                                    ((ec2 :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "ec2")
                                     (ecr :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "ecr")
                                     (lambda :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "lambda")
                                     (lambda-code :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "lambdaCode")
                                     (code-repository :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "codeRepository"))
                                    (:shape-name "AutoEnable"))

(smithy/sdk/shapes:define-structure aws-ec2instance-details common-lisp:nil
                                    ((type :target-type non-empty-string
                                      :member-name "type")
                                     (image-id :target-type non-empty-string
                                      :member-name "imageId")
                                     (ip-v4addresses :target-type
                                      ip-v4address-list :member-name
                                      "ipV4Addresses")
                                     (ip-v6addresses :target-type
                                      ip-v6address-list :member-name
                                      "ipV6Addresses")
                                     (key-name :target-type non-empty-string
                                      :member-name "keyName")
                                     (iam-instance-profile-arn :target-type
                                      non-empty-string :member-name
                                      "iamInstanceProfileArn")
                                     (vpc-id :target-type non-empty-string
                                      :member-name "vpcId")
                                     (subnet-id :target-type non-empty-string
                                      :member-name "subnetId")
                                     (launched-at :target-type
                                      date-time-timestamp :member-name
                                      "launchedAt")
                                     (platform :target-type platform
                                      :member-name "platform"))
                                    (:shape-name "AwsEc2InstanceDetails"))

(smithy/sdk/shapes:define-structure aws-ecr-container-aggregation
                                    common-lisp:nil
                                    ((resource-ids :target-type
                                      string-filter-list :member-name
                                      "resourceIds")
                                     (image-shas :target-type
                                      string-filter-list :member-name
                                      "imageShas")
                                     (repositories :target-type
                                      string-filter-list :member-name
                                      "repositories")
                                     (architectures :target-type
                                      string-filter-list :member-name
                                      "architectures")
                                     (image-tags :target-type
                                      string-filter-list :member-name
                                      "imageTags")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder")
                                     (sort-by :target-type
                                      aws-ecr-container-sort-by :member-name
                                      "sortBy")
                                     (last-in-use-at :target-type
                                      date-filter-list :member-name
                                      "lastInUseAt")
                                     (in-use-count :target-type
                                      number-filter-list :member-name
                                      "inUseCount"))
                                    (:shape-name "AwsEcrContainerAggregation"))

(smithy/sdk/shapes:define-structure aws-ecr-container-aggregation-response
                                    common-lisp:nil
                                    ((resource-id :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "resourceId")
                                     (image-sha :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "imageSha")
                                     (repository :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "repository")
                                     (architecture :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "architecture")
                                     (image-tags :target-type string-list
                                      :member-name "imageTags")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts")
                                     (last-in-use-at :target-type
                                      date-time-timestamp :member-name
                                      "lastInUseAt")
                                     (in-use-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "inUseCount"))
                                    (:shape-name
                                     "AwsEcrContainerAggregationResponse"))

(smithy/sdk/shapes:define-structure aws-ecr-container-image-details
                                    common-lisp:nil
                                    ((repository-name :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "repositoryName")
                                     (image-tags :target-type image-tag-list
                                      :member-name "imageTags")
                                     (pushed-at :target-type
                                      date-time-timestamp :member-name
                                      "pushedAt")
                                     (author :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "author")
                                     (architecture :target-type
                                      non-empty-string :member-name
                                      "architecture")
                                     (image-hash :target-type image-hash
                                      :required common-lisp:t :member-name
                                      "imageHash")
                                     (registry :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "registry")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (last-in-use-at :target-type
                                      date-time-timestamp :member-name
                                      "lastInUseAt")
                                     (in-use-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "inUseCount"))
                                    (:shape-name "AwsEcrContainerImageDetails"))

(smithy/sdk/shapes:define-type aws-ecr-container-sort-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aws-ecs-metadata-details common-lisp:nil
                                    ((details-group :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "detailsGroup")
                                     (task-definition-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "taskDefinitionArn"))
                                    (:shape-name "AwsEcsMetadataDetails"))

(smithy/sdk/shapes:define-structure aws-eks-metadata-details common-lisp:nil
                                    ((namespace :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "namespace")
                                     (workload-info-list :target-type
                                      aws-eks-workload-info-list :member-name
                                      "workloadInfoList"))
                                    (:shape-name "AwsEksMetadataDetails"))

(smithy/sdk/shapes:define-structure aws-eks-workload-info common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "AwsEksWorkloadInfo"))

(smithy/sdk/shapes:define-list aws-eks-workload-info-list :member
                               aws-eks-workload-info)

(smithy/sdk/shapes:define-structure aws-lambda-function-details common-lisp:nil
                                    ((function-name :target-type function-name
                                      :required common-lisp:t :member-name
                                      "functionName")
                                     (runtime :target-type runtime :required
                                      common-lisp:t :member-name "runtime")
                                     (code-sha256 :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "codeSha256")
                                     (version :target-type version :required
                                      common-lisp:t :member-name "version")
                                     (execution-role-arn :target-type
                                      execution-role-arn :required
                                      common-lisp:t :member-name
                                      "executionRoleArn")
                                     (layers :target-type layer-list
                                      :member-name "layers")
                                     (vpc-config :target-type lambda-vpc-config
                                      :member-name "vpcConfig")
                                     (package-type :target-type package-type
                                      :member-name "packageType")
                                     (architectures :target-type
                                      architecture-list :member-name
                                      "architectures")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastModifiedAt"))
                                    (:shape-name "AwsLambdaFunctionDetails"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input
 batch-associate-code-security-scan-configuration-request common-lisp:nil
 ((associate-configuration-requests :target-type
   associate-configuration-request-list :required common-lisp:t :member-name
   "associateConfigurationRequests"))
 (:shape-name "BatchAssociateCodeSecurityScanConfigurationRequest"))

(smithy/sdk/shapes:define-output
 batch-associate-code-security-scan-configuration-response common-lisp:nil
 ((failed-associations :target-type failed-association-result-list :member-name
   "failedAssociations")
  (successful-associations :target-type successful-association-result-list
   :member-name "successfulAssociations"))
 (:shape-name "BatchAssociateCodeSecurityScanConfigurationResponse"))

(smithy/sdk/shapes:define-input
 batch-disassociate-code-security-scan-configuration-request common-lisp:nil
 ((disassociate-configuration-requests :target-type
   disassociate-configuration-request-list :required common-lisp:t :member-name
   "disassociateConfigurationRequests"))
 (:shape-name "BatchDisassociateCodeSecurityScanConfigurationRequest"))

(smithy/sdk/shapes:define-output
 batch-disassociate-code-security-scan-configuration-response common-lisp:nil
 ((failed-associations :target-type failed-association-result-list :member-name
   "failedAssociations")
  (successful-associations :target-type successful-association-result-list
   :member-name "successfulAssociations"))
 (:shape-name "BatchDisassociateCodeSecurityScanConfigurationResponse"))

(smithy/sdk/shapes:define-structure batch-get-account-status-request
                                    common-lisp:nil
                                    ((account-ids :target-type account-id-set
                                      :member-name "accountIds"))
                                    (:shape-name
                                     "BatchGetAccountStatusRequest"))

(smithy/sdk/shapes:define-structure batch-get-account-status-response
                                    common-lisp:nil
                                    ((accounts :target-type account-state-list
                                      :required common-lisp:t :member-name
                                      "accounts")
                                     (failed-accounts :target-type
                                      failed-account-list :member-name
                                      "failedAccounts"))
                                    (:shape-name
                                     "BatchGetAccountStatusResponse"))

(smithy/sdk/shapes:define-input batch-get-code-snippet-request common-lisp:nil
                                ((finding-arns :target-type finding-arns
                                  :required common-lisp:t :member-name
                                  "findingArns"))
                                (:shape-name "BatchGetCodeSnippetRequest"))

(smithy/sdk/shapes:define-output batch-get-code-snippet-response
                                 common-lisp:nil
                                 ((code-snippet-results :target-type
                                   code-snippet-result-list :member-name
                                   "codeSnippetResults")
                                  (errors :target-type code-snippet-error-list
                                   :member-name "errors"))
                                 (:shape-name "BatchGetCodeSnippetResponse"))

(smithy/sdk/shapes:define-input batch-get-finding-details-request
                                common-lisp:nil
                                ((finding-arns :target-type finding-arn-list
                                  :required common-lisp:t :member-name
                                  "findingArns"))
                                (:shape-name "BatchGetFindingDetailsRequest"))

(smithy/sdk/shapes:define-output batch-get-finding-details-response
                                 common-lisp:nil
                                 ((finding-details :target-type finding-details
                                   :member-name "findingDetails")
                                  (errors :target-type
                                   finding-details-error-list :member-name
                                   "errors"))
                                 (:shape-name "BatchGetFindingDetailsResponse"))

(smithy/sdk/shapes:define-structure batch-get-free-trial-info-request
                                    common-lisp:nil
                                    ((account-ids :target-type
                                      metering-account-id-list :required
                                      common-lisp:t :member-name "accountIds"))
                                    (:shape-name
                                     "BatchGetFreeTrialInfoRequest"))

(smithy/sdk/shapes:define-structure batch-get-free-trial-info-response
                                    common-lisp:nil
                                    ((accounts :target-type
                                      free-trial-account-info-list :required
                                      common-lisp:t :member-name "accounts")
                                     (failed-accounts :target-type
                                      free-trial-info-error-list :required
                                      common-lisp:t :member-name
                                      "failedAccounts"))
                                    (:shape-name
                                     "BatchGetFreeTrialInfoResponse"))

(smithy/sdk/shapes:define-input
 batch-get-member-ec2deep-inspection-status-request common-lisp:nil
 ((account-ids :target-type account-id-set :member-name "accountIds"))
 (:shape-name "BatchGetMemberEc2DeepInspectionStatusRequest"))

(smithy/sdk/shapes:define-output
 batch-get-member-ec2deep-inspection-status-response common-lisp:nil
 ((account-ids :target-type member-account-ec2deep-inspection-status-state-list
   :member-name "accountIds")
  (failed-account-ids :target-type
   failed-member-account-ec2deep-inspection-status-state-list :member-name
   "failedAccountIds"))
 (:shape-name "BatchGetMemberEc2DeepInspectionStatusResponse"))

(smithy/sdk/shapes:define-input
 batch-update-member-ec2deep-inspection-status-request common-lisp:nil
 ((account-ids :target-type member-account-ec2deep-inspection-status-list
   :required common-lisp:t :member-name "accountIds"))
 (:shape-name "BatchUpdateMemberEc2DeepInspectionStatusRequest"))

(smithy/sdk/shapes:define-output
 batch-update-member-ec2deep-inspection-status-response common-lisp:nil
 ((account-ids :target-type member-account-ec2deep-inspection-status-state-list
   :member-name "accountIds")
  (failed-account-ids :target-type
   failed-member-account-ec2deep-inspection-status-state-list :member-name
   "failedAccountIds"))
 (:shape-name "BatchUpdateMemberEc2DeepInspectionStatusResponse"))

(smithy/sdk/shapes:define-type benchmark-profile smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type benchmark-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cancel-findings-report-request
                                    common-lisp:nil
                                    ((report-id :target-type report-id
                                      :required common-lisp:t :member-name
                                      "reportId"))
                                    (:shape-name "CancelFindingsReportRequest"))

(smithy/sdk/shapes:define-structure cancel-findings-report-response
                                    common-lisp:nil
                                    ((report-id :target-type report-id
                                      :required common-lisp:t :member-name
                                      "reportId"))
                                    (:shape-name
                                     "CancelFindingsReportResponse"))

(smithy/sdk/shapes:define-input cancel-sbom-export-request common-lisp:nil
                                ((report-id :target-type report-id :required
                                  common-lisp:t :member-name "reportId"))
                                (:shape-name "CancelSbomExportRequest"))

(smithy/sdk/shapes:define-output cancel-sbom-export-response common-lisp:nil
                                 ((report-id :target-type report-id
                                   :member-name "reportId"))
                                 (:shape-name "CancelSbomExportResponse"))

(smithy/sdk/shapes:define-type check-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list check-id-filter-list :member cis-string-filter)

(smithy/sdk/shapes:define-list cis-account-id-list :member account-id)

(smithy/sdk/shapes:define-structure cis-check-aggregation common-lisp:nil
                                    ((scan-arn :target-type cis-scan-arn
                                      :required common-lisp:t :member-name
                                      "scanArn")
                                     (check-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "checkId")
                                     (title :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "title")
                                     (check-description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "checkDescription")
                                     (level :target-type cis-security-level
                                      :member-name "level")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (status-counts :target-type status-counts
                                      :member-name "statusCounts")
                                     (platform :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "platform"))
                                    (:shape-name "CisCheckAggregation"))

(smithy/sdk/shapes:define-list cis-check-aggregation-list :member
                               cis-check-aggregation)

(smithy/sdk/shapes:define-structure cis-date-filter common-lisp:nil
                                    ((earliest-scan-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "earliestScanStartTime")
                                     (latest-scan-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "latestScanStartTime"))
                                    (:shape-name "CisDateFilter"))

(smithy/sdk/shapes:define-type cis-finding-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cis-finding-arn-filter-list :member
                               cis-string-filter)

(smithy/sdk/shapes:define-enum cis-finding-status
    common-lisp:nil
  (:passed "PASSED")
  (:failed "FAILED")
  (:skipped "SKIPPED"))

(smithy/sdk/shapes:define-enum cis-finding-status-comparison
    common-lisp:nil
  (:equals "EQUALS"))

(smithy/sdk/shapes:define-structure cis-finding-status-filter common-lisp:nil
                                    ((comparison :target-type
                                      cis-finding-status-comparison :required
                                      common-lisp:t :member-name "comparison")
                                     (value :target-type cis-finding-status
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "CisFindingStatusFilter"))

(smithy/sdk/shapes:define-list cis-finding-status-filter-list :member
                               cis-finding-status-filter)

(smithy/sdk/shapes:define-structure cis-number-filter common-lisp:nil
                                    ((upper-inclusive :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "upperInclusive")
                                     (lower-inclusive :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "lowerInclusive"))
                                    (:shape-name "CisNumberFilter"))

(smithy/sdk/shapes:define-list cis-number-filter-list :member cis-number-filter)

(smithy/sdk/shapes:define-type cis-owner-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum cis-report-format
    common-lisp:nil
  (:pdf "PDF")
  (:csv "CSV"))

(smithy/sdk/shapes:define-enum cis-report-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:in-progress "IN_PROGRESS"))

(smithy/sdk/shapes:define-enum cis-result-status
    common-lisp:nil
  (:passed "PASSED")
  (:failed "FAILED")
  (:skipped "SKIPPED"))

(smithy/sdk/shapes:define-enum cis-result-status-comparison
    common-lisp:nil
  (:equals "EQUALS"))

(smithy/sdk/shapes:define-structure cis-result-status-filter common-lisp:nil
                                    ((comparison :target-type
                                      cis-result-status-comparison :required
                                      common-lisp:t :member-name "comparison")
                                     (value :target-type cis-result-status
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "CisResultStatusFilter"))

(smithy/sdk/shapes:define-list cis-result-status-filter-list :member
                               cis-result-status-filter)

(smithy/sdk/shapes:define-type cis-rule-details smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-enum cis-rule-status
    common-lisp:nil
  (:failed "FAILED")
  (:passed "PASSED")
  (:not-evaluated "NOT_EVALUATED")
  (:informational "INFORMATIONAL")
  (:unknown "UNKNOWN")
  (:not-applicable "NOT_APPLICABLE")
  (:error "ERROR"))

(smithy/sdk/shapes:define-structure cis-scan common-lisp:nil
                                    ((scan-arn :target-type cis-scan-arn
                                      :required common-lisp:t :member-name
                                      "scanArn")
                                     (scan-configuration-arn :target-type
                                      cis-scan-configuration-arn :required
                                      common-lisp:t :member-name
                                      "scanConfigurationArn")
                                     (status :target-type cis-scan-status
                                      :member-name "status")
                                     (scan-name :target-type cis-scan-name
                                      :member-name "scanName")
                                     (scan-date :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "scanDate")
                                     (failed-checks :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "failedChecks")
                                     (total-checks :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalChecks")
                                     (targets :target-type cis-targets
                                      :member-name "targets")
                                     (scheduled-by :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "scheduledBy")
                                     (security-level :target-type
                                      cis-security-level :member-name
                                      "securityLevel"))
                                    (:shape-name "CisScan"))

(smithy/sdk/shapes:define-type cis-scan-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cis-scan-arn-filter-list :member
                               cis-string-filter)

(smithy/sdk/shapes:define-structure cis-scan-configuration common-lisp:nil
                                    ((scan-configuration-arn :target-type
                                      cis-scan-configuration-arn :required
                                      common-lisp:t :member-name
                                      "scanConfigurationArn")
                                     (owner-id :target-type cis-owner-id
                                      :member-name "ownerId")
                                     (scan-name :target-type cis-scan-name
                                      :member-name "scanName")
                                     (security-level :target-type
                                      cis-security-level :member-name
                                      "securityLevel")
                                     (schedule :target-type schedule
                                      :member-name "schedule")
                                     (targets :target-type cis-targets
                                      :member-name "targets")
                                     (tags :target-type cis-tag-map
                                      :member-name "tags"))
                                    (:shape-name "CisScanConfiguration"))

(smithy/sdk/shapes:define-type cis-scan-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cis-scan-configuration-arn-filter-list :member
                               cis-string-filter)

(smithy/sdk/shapes:define-list cis-scan-configuration-list :member
                               cis-scan-configuration)

(smithy/sdk/shapes:define-enum cis-scan-configurations-sort-by
    common-lisp:nil
  (:scan-name "SCAN_NAME")
  (:scan-configuration-arn "SCAN_CONFIGURATION_ARN"))

(smithy/sdk/shapes:define-list cis-scan-date-filter-list :member
                               cis-date-filter)

(smithy/sdk/shapes:define-list cis-scan-list :member cis-scan)

(smithy/sdk/shapes:define-type cis-scan-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cis-scan-name-filter-list :member
                               cis-string-filter)

(smithy/sdk/shapes:define-structure cis-scan-result-details common-lisp:nil
                                    ((scan-arn :target-type cis-scan-arn
                                      :required common-lisp:t :member-name
                                      "scanArn")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (target-resource-id :target-type
                                      resource-id :member-name
                                      "targetResourceId")
                                     (platform :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "platform")
                                     (status :target-type cis-finding-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (check-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "checkId")
                                     (title :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "title")
                                     (check-description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "checkDescription")
                                     (remediation :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "remediation")
                                     (level :target-type cis-security-level
                                      :member-name "level")
                                     (finding-arn :target-type cis-finding-arn
                                      :member-name "findingArn"))
                                    (:shape-name "CisScanResultDetails"))

(smithy/sdk/shapes:define-structure cis-scan-result-details-filter-criteria
                                    common-lisp:nil
                                    ((finding-status-filters :target-type
                                      cis-finding-status-filter-list
                                      :member-name "findingStatusFilters")
                                     (check-id-filters :target-type
                                      check-id-filter-list :member-name
                                      "checkIdFilters")
                                     (title-filters :target-type
                                      title-filter-list :member-name
                                      "titleFilters")
                                     (security-level-filters :target-type
                                      cis-security-level-filter-list
                                      :member-name "securityLevelFilters")
                                     (finding-arn-filters :target-type
                                      cis-finding-arn-filter-list :member-name
                                      "findingArnFilters"))
                                    (:shape-name
                                     "CisScanResultDetailsFilterCriteria"))

(smithy/sdk/shapes:define-list cis-scan-result-details-list :member
                               cis-scan-result-details)

(smithy/sdk/shapes:define-enum cis-scan-result-details-sort-by
    common-lisp:nil
  (:check-id "CHECK_ID")
  (:status "STATUS"))

(smithy/sdk/shapes:define-structure
 cis-scan-results-aggregated-by-checks-filter-criteria common-lisp:nil
 ((account-id-filters :target-type one-account-id-filter-list :member-name
   "accountIdFilters")
  (check-id-filters :target-type check-id-filter-list :member-name
   "checkIdFilters")
  (title-filters :target-type title-filter-list :member-name "titleFilters")
  (platform-filters :target-type platform-filter-list :member-name
   "platformFilters")
  (failed-resources-filters :target-type cis-number-filter-list :member-name
   "failedResourcesFilters")
  (security-level-filters :target-type cis-security-level-filter-list
   :member-name "securityLevelFilters"))
 (:shape-name "CisScanResultsAggregatedByChecksFilterCriteria"))

(smithy/sdk/shapes:define-enum cis-scan-results-aggregated-by-checks-sort-by
    common-lisp:nil
  (:check-id "CHECK_ID")
  (:title "TITLE")
  (:platform "PLATFORM")
  (:failed-counts "FAILED_COUNTS")
  (:security-level "SECURITY_LEVEL"))

(smithy/sdk/shapes:define-structure
 cis-scan-results-aggregated-by-target-resource-filter-criteria common-lisp:nil
 ((account-id-filters :target-type account-id-filter-list :member-name
   "accountIdFilters")
  (status-filters :target-type cis-result-status-filter-list :member-name
   "statusFilters")
  (check-id-filters :target-type check-id-filter-list :member-name
   "checkIdFilters")
  (target-resource-id-filters :target-type resource-id-filter-list :member-name
   "targetResourceIdFilters")
  (target-resource-tag-filters :target-type resource-tag-filter-list
   :member-name "targetResourceTagFilters")
  (platform-filters :target-type platform-filter-list :member-name
   "platformFilters")
  (target-status-filters :target-type target-status-filter-list :member-name
   "targetStatusFilters")
  (target-status-reason-filters :target-type target-status-reason-filter-list
   :member-name "targetStatusReasonFilters")
  (failed-checks-filters :target-type cis-number-filter-list :member-name
   "failedChecksFilters"))
 (:shape-name "CisScanResultsAggregatedByTargetResourceFilterCriteria"))

(smithy/sdk/shapes:define-enum cis-scan-results-aggregated-by-target-resource-sort-by
    common-lisp:nil
  (:resource-id "RESOURCE_ID")
  (:failed-counts "FAILED_COUNTS")
  (:account-id "ACCOUNT_ID")
  (:platform "PLATFORM")
  (:target-status "TARGET_STATUS")
  (:target-status-reason "TARGET_STATUS_REASON"))

(smithy/sdk/shapes:define-type cis-scan-results-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum cis-scan-status
    common-lisp:nil
  (:failed "FAILED")
  (:completed "COMPLETED")
  (:cancelled "CANCELLED")
  (:in-progress "IN_PROGRESS"))

(smithy/sdk/shapes:define-enum cis-scan-status-comparison
    common-lisp:nil
  (:equals "EQUALS"))

(smithy/sdk/shapes:define-structure cis-scan-status-filter common-lisp:nil
                                    ((comparison :target-type
                                      cis-scan-status-comparison :required
                                      common-lisp:t :member-name "comparison")
                                     (value :target-type cis-scan-status
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "CisScanStatusFilter"))

(smithy/sdk/shapes:define-list cis-scan-status-filter-list :member
                               cis-scan-status-filter)

(smithy/sdk/shapes:define-list cis-scheduled-by-filter-list :member
                               cis-string-filter)

(smithy/sdk/shapes:define-enum cis-security-level
    common-lisp:nil
  (:level-1 "LEVEL_1")
  (:level-2 "LEVEL_2"))

(smithy/sdk/shapes:define-enum cis-security-level-comparison
    common-lisp:nil
  (:equals "EQUALS"))

(smithy/sdk/shapes:define-structure cis-security-level-filter common-lisp:nil
                                    ((comparison :target-type
                                      cis-security-level-comparison :required
                                      common-lisp:t :member-name "comparison")
                                     (value :target-type cis-security-level
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "CisSecurityLevelFilter"))

(smithy/sdk/shapes:define-list cis-security-level-filter-list :member
                               cis-security-level-filter)

(smithy/sdk/shapes:define-structure cis-session-message common-lisp:nil
                                    ((rule-id :target-type rule-id :required
                                      common-lisp:t :member-name "ruleId")
                                     (status :target-type cis-rule-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (cis-rule-details :target-type
                                      cis-rule-details :required common-lisp:t
                                      :member-name "cisRuleDetails"))
                                    (:shape-name "CisSessionMessage"))

(smithy/sdk/shapes:define-list cis-session-messages :member cis-session-message)

(smithy/sdk/shapes:define-enum cis-sort-order
    common-lisp:nil
  (:asc "ASC")
  (:desc "DESC"))

(smithy/sdk/shapes:define-enum cis-string-comparison
    common-lisp:nil
  (:equals "EQUALS")
  (:prefix "PREFIX")
  (:not-equals "NOT_EQUALS"))

(smithy/sdk/shapes:define-structure cis-string-filter common-lisp:nil
                                    ((comparison :target-type
                                      cis-string-comparison :required
                                      common-lisp:t :member-name "comparison")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "CisStringFilter"))

(smithy/sdk/shapes:define-map cis-tag-map :key map-key :value map-value)

(smithy/sdk/shapes:define-structure cis-target-resource-aggregation
                                    common-lisp:nil
                                    ((scan-arn :target-type cis-scan-arn
                                      :required common-lisp:t :member-name
                                      "scanArn")
                                     (target-resource-id :target-type
                                      resource-id :member-name
                                      "targetResourceId")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (target-resource-tags :target-type
                                      target-resource-tags :member-name
                                      "targetResourceTags")
                                     (status-counts :target-type status-counts
                                      :member-name "statusCounts")
                                     (platform :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "platform")
                                     (target-status :target-type
                                      cis-target-status :member-name
                                      "targetStatus")
                                     (target-status-reason :target-type
                                      cis-target-status-reason :member-name
                                      "targetStatusReason"))
                                    (:shape-name
                                     "CisTargetResourceAggregation"))

(smithy/sdk/shapes:define-list cis-target-resource-aggregation-list :member
                               cis-target-resource-aggregation)

(smithy/sdk/shapes:define-enum cis-target-status
    common-lisp:nil
  (:timed-out "TIMED_OUT")
  (:cancelled "CANCELLED")
  (:completed "COMPLETED"))

(smithy/sdk/shapes:define-enum cis-target-status-comparison
    common-lisp:nil
  (:equals "EQUALS"))

(smithy/sdk/shapes:define-structure cis-target-status-filter common-lisp:nil
                                    ((comparison :target-type
                                      cis-target-status-comparison :required
                                      common-lisp:t :member-name "comparison")
                                     (value :target-type cis-target-status
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "CisTargetStatusFilter"))

(smithy/sdk/shapes:define-enum cis-target-status-reason
    common-lisp:nil
  (:scan-in-progress "SCAN_IN_PROGRESS")
  (:unsupported-os "UNSUPPORTED_OS")
  (:ssm-unmanaged "SSM_UNMANAGED"))

(smithy/sdk/shapes:define-structure cis-target-status-reason-filter
                                    common-lisp:nil
                                    ((comparison :target-type
                                      cis-target-status-comparison :required
                                      common-lisp:t :member-name "comparison")
                                     (value :target-type
                                      cis-target-status-reason :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "CisTargetStatusReasonFilter"))

(smithy/sdk/shapes:define-structure cis-targets common-lisp:nil
                                    ((account-ids :target-type
                                      cis-account-id-list :member-name
                                      "accountIds")
                                     (target-resource-tags :target-type
                                      target-resource-tags :member-name
                                      "targetResourceTags"))
                                    (:shape-name "CisTargets"))

(smithy/sdk/shapes:define-type cisa-action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cisa-data common-lisp:nil
                                    ((date-added :target-type cisa-date-added
                                      :member-name "dateAdded")
                                     (date-due :target-type cisa-date-due
                                      :member-name "dateDue")
                                     (action :target-type cisa-action
                                      :member-name "action"))
                                    (:shape-name "CisaData"))

(smithy/sdk/shapes:define-type cisa-date-added
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type cisa-date-due smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cluster-details common-lisp:nil
                                    ((last-in-use :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastInUse")
                                     (running-unit-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "runningUnitCount")
                                     (stopped-unit-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "stoppedUnitCount")
                                     (cluster-metadata :target-type
                                      cluster-metadata :required common-lisp:t
                                      :member-name "clusterMetadata"))
                                    (:shape-name "ClusterDetails"))

(smithy/sdk/shapes:define-list cluster-details-list :member cluster-details)

(smithy/sdk/shapes:define-structure cluster-for-image-filter-criteria
                                    common-lisp:nil
                                    ((resource-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "resourceId"))
                                    (:shape-name
                                     "ClusterForImageFilterCriteria"))

(smithy/sdk/shapes:define-structure cluster-information common-lisp:nil
                                    ((cluster-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "clusterArn")
                                     (cluster-details :target-type
                                      cluster-details-list :member-name
                                      "clusterDetails"))
                                    (:shape-name "ClusterInformation"))

(smithy/sdk/shapes:define-list cluster-information-list :member
                               cluster-information)

(smithy/sdk/shapes:define-union cluster-metadata common-lisp:nil
                                ((aws-ecs-metadata-details :target-type
                                  aws-ecs-metadata-details :member-name
                                  "awsEcsMetadataDetails")
                                 (aws-eks-metadata-details :target-type
                                  aws-eks-metadata-details :member-name
                                  "awsEksMetadataDetails"))
                                (:shape-name "ClusterMetadata"))

(smithy/sdk/shapes:define-structure code-file-path common-lisp:nil
                                    ((file-name :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "fileName")
                                     (file-path :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "filePath")
                                     (start-line :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "startLine")
                                     (end-line :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "endLine"))
                                    (:shape-name "CodeFilePath"))

(smithy/sdk/shapes:define-structure code-line common-lisp:nil
                                    ((content :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "content")
                                     (line-number :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "lineNumber"))
                                    (:shape-name "CodeLine"))

(smithy/sdk/shapes:define-list code-line-list :member code-line)

(smithy/sdk/shapes:define-structure code-repository-aggregation common-lisp:nil
                                    ((project-names :target-type
                                      string-filter-list :member-name
                                      "projectNames")
                                     (provider-types :target-type
                                      string-filter-list :member-name
                                      "providerTypes")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder")
                                     (sort-by :target-type
                                      code-repository-sort-by :member-name
                                      "sortBy")
                                     (resource-ids :target-type
                                      string-filter-list :member-name
                                      "resourceIds"))
                                    (:shape-name "CodeRepositoryAggregation"))

(smithy/sdk/shapes:define-structure code-repository-aggregation-response
                                    common-lisp:nil
                                    ((project-names :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "projectNames")
                                     (provider-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "providerType")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts")
                                     (exploit-available-active-findings-count
                                      :target-type smithy/sdk/smithy-types:long
                                      :member-name
                                      "exploitAvailableActiveFindingsCount")
                                     (fix-available-active-findings-count
                                      :target-type smithy/sdk/smithy-types:long
                                      :member-name
                                      "fixAvailableActiveFindingsCount")
                                     (account-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accountId")
                                     (resource-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resourceId"))
                                    (:shape-name
                                     "CodeRepositoryAggregationResponse"))

(smithy/sdk/shapes:define-structure code-repository-details common-lisp:nil
                                    ((project-name :target-type
                                      code-repository-project-name :member-name
                                      "projectName")
                                     (integration-arn :target-type
                                      code-repository-integration-arn
                                      :member-name "integrationArn")
                                     (provider-type :target-type
                                      code-repository-provider-type
                                      :member-name "providerType"))
                                    (:shape-name "CodeRepositoryDetails"))

(smithy/sdk/shapes:define-type code-repository-integration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure code-repository-metadata common-lisp:nil
                                    ((project-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "projectName")
                                     (integration-arn :target-type
                                      code-repository-integration-arn
                                      :member-name "integrationArn")
                                     (provider-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "providerType")
                                     (provider-type-visibility :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "providerTypeVisibility")
                                     (last-scanned-commit-id :target-type
                                      commit-id :member-name
                                      "lastScannedCommitId")
                                     (scan-configuration :target-type
                                      project-code-security-scan-configuration
                                      :member-name "scanConfiguration")
                                     (on-demand-scan :target-type
                                      code-repository-on-demand-scan
                                      :member-name "onDemandScan"))
                                    (:shape-name "CodeRepositoryMetadata"))

(smithy/sdk/shapes:define-structure code-repository-on-demand-scan
                                    common-lisp:nil
                                    ((last-scanned-commit-id :target-type
                                      commit-id :member-name
                                      "lastScannedCommitId")
                                     (last-scan-at :target-type
                                      date-time-timestamp :member-name
                                      "lastScanAt")
                                     (scan-status :target-type scan-status
                                      :member-name "scanStatus"))
                                    (:shape-name "CodeRepositoryOnDemandScan"))

(smithy/sdk/shapes:define-type code-repository-project-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code-repository-provider-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code-repository-sort-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum code-scan-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:successful "SUCCESSFUL")
  (:failed "FAILED")
  (:skipped "SKIPPED"))

(smithy/sdk/shapes:define-type code-security-client-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code-security-integration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure code-security-integration-summary
                                    common-lisp:nil
                                    ((integration-arn :target-type
                                      code-security-integration-arn :required
                                      common-lisp:t :member-name
                                      "integrationArn")
                                     (name :target-type integration-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (type :target-type integration-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (status :target-type integration-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "statusReason")
                                     (created-on :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdOn")
                                     (last-update-on :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdateOn")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "CodeSecurityIntegrationSummary"))

(smithy/sdk/shapes:define-union code-security-resource common-lisp:nil
                                ((project-id :target-type project-id
                                  :member-name "projectId"))
                                (:shape-name "CodeSecurityResource"))

(smithy/sdk/shapes:define-structure code-security-scan-configuration
                                    common-lisp:nil
                                    ((periodic-scan-configuration :target-type
                                      periodic-scan-configuration :member-name
                                      "periodicScanConfiguration")
                                     (continuous-integration-scan-configuration
                                      :target-type
                                      continuous-integration-scan-configuration
                                      :member-name
                                      "continuousIntegrationScanConfiguration")
                                     (rule-set-categories :target-type
                                      rule-set-categories :required
                                      common-lisp:t :member-name
                                      "ruleSetCategories"))
                                    (:shape-name
                                     "CodeSecurityScanConfiguration"))

(smithy/sdk/shapes:define-list
 code-security-scan-configuration-association-summaries :member
 code-security-scan-configuration-association-summary)

(smithy/sdk/shapes:define-structure
 code-security-scan-configuration-association-summary common-lisp:nil
 ((resource :target-type code-security-resource :member-name "resource"))
 (:shape-name "CodeSecurityScanConfigurationAssociationSummary"))

(smithy/sdk/shapes:define-list code-security-scan-configuration-summaries
                               :member code-security-scan-configuration-summary)

(smithy/sdk/shapes:define-structure code-security-scan-configuration-summary
                                    common-lisp:nil
                                    ((scan-configuration-arn :target-type
                                      scan-configuration-arn :required
                                      common-lisp:t :member-name
                                      "scanConfigurationArn")
                                     (name :target-type scan-configuration-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (owner-account-id :target-type owner-id
                                      :required common-lisp:t :member-name
                                      "ownerAccountId")
                                     (periodic-scan-frequency :target-type
                                      periodic-scan-frequency :member-name
                                      "periodicScanFrequency")
                                     (frequency-expression :target-type
                                      frequency-expression :member-name
                                      "frequencyExpression")
                                     (continuous-integration-scan-supported-events
                                      :target-type
                                      continuous-integration-scan-supported-events
                                      :member-name
                                      "continuousIntegrationScanSupportedEvents")
                                     (rule-set-categories :target-type
                                      rule-set-categories :required
                                      common-lisp:t :member-name
                                      "ruleSetCategories")
                                     (scope-settings :target-type
                                      scope-settings :member-name
                                      "scopeSettings")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "CodeSecurityScanConfigurationSummary"))

(smithy/sdk/shapes:define-type code-security-uuid
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure code-snippet-error common-lisp:nil
                                    ((finding-arn :target-type finding-arn
                                      :required common-lisp:t :member-name
                                      "findingArn")
                                     (error-code :target-type
                                      code-snippet-error-code :required
                                      common-lisp:t :member-name "errorCode")
                                     (error-message :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "errorMessage"))
                                    (:shape-name "CodeSnippetError"))

(smithy/sdk/shapes:define-type code-snippet-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list code-snippet-error-list :member
                               code-snippet-error)

(smithy/sdk/shapes:define-structure code-snippet-result common-lisp:nil
                                    ((finding-arn :target-type finding-arn
                                      :member-name "findingArn")
                                     (start-line :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "startLine")
                                     (end-line :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "endLine")
                                     (code-snippet :target-type code-line-list
                                      :member-name "codeSnippet")
                                     (suggested-fixes :target-type
                                      suggested-fixes :member-name
                                      "suggestedFixes"))
                                    (:shape-name "CodeSnippetResult"))

(smithy/sdk/shapes:define-list code-snippet-result-list :member
                               code-snippet-result)

(smithy/sdk/shapes:define-structure code-vulnerability-details common-lisp:nil
                                    ((file-path :target-type code-file-path
                                      :required common-lisp:t :member-name
                                      "filePath")
                                     (detector-tags :target-type
                                      detector-tag-list :member-name
                                      "detectorTags")
                                     (reference-urls :target-type
                                      reference-urls :member-name
                                      "referenceUrls")
                                     (rule-id :target-type non-empty-string
                                      :member-name "ruleId")
                                     (source-lambda-layer-arn :target-type
                                      lambda-layer-arn :member-name
                                      "sourceLambdaLayerArn")
                                     (detector-id :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "detectorId")
                                     (detector-name :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "detectorName")
                                     (cwes :target-type cwe-list :required
                                      common-lisp:t :member-name "cwes"))
                                    (:shape-name "CodeVulnerabilityDetails"))

(smithy/sdk/shapes:define-type commit-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure compute-platform common-lisp:nil
                                    ((vendor :target-type vendor :member-name
                                      "vendor")
                                     (product :target-type product :member-name
                                      "product")
                                     (version :target-type platform-version
                                      :member-name "version"))
                                    (:shape-name "ComputePlatform"))

(smithy/sdk/shapes:define-enum configuration-level
    common-lisp:nil
  (:organization "ORGANIZATION")
  (:account "ACCOUNT"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure continuous-integration-scan-configuration
                                    common-lisp:nil
                                    ((supported-events :target-type
                                      continuous-integration-scan-supported-events
                                      :required common-lisp:t :member-name
                                      "supportedEvents"))
                                    (:shape-name
                                     "ContinuousIntegrationScanConfiguration"))

(smithy/sdk/shapes:define-enum continuous-integration-scan-event
    common-lisp:nil
  (:pull-request "PULL_REQUEST")
  (:push "PUSH"))

(smithy/sdk/shapes:define-list continuous-integration-scan-supported-events
                               :member continuous-integration-scan-event)

(smithy/sdk/shapes:define-structure counts common-lisp:nil
                                    ((count :target-type agg-counts
                                      :member-name "count")
                                     (group-key :target-type group-key
                                      :member-name "groupKey"))
                                    (:shape-name "Counts"))

(smithy/sdk/shapes:define-list counts-list :member counts)

(smithy/sdk/shapes:define-structure coverage-date-filter common-lisp:nil
                                    ((start-inclusive :target-type
                                      date-time-timestamp :member-name
                                      "startInclusive")
                                     (end-inclusive :target-type
                                      date-time-timestamp :member-name
                                      "endInclusive"))
                                    (:shape-name "CoverageDateFilter"))

(smithy/sdk/shapes:define-list coverage-date-filter-list :member
                               coverage-date-filter)

(smithy/sdk/shapes:define-structure coverage-filter-criteria common-lisp:nil
                                    ((scan-status-code :target-type
                                      coverage-string-filter-list :member-name
                                      "scanStatusCode")
                                     (scan-status-reason :target-type
                                      coverage-string-filter-list :member-name
                                      "scanStatusReason")
                                     (account-id :target-type
                                      coverage-string-filter-list :member-name
                                      "accountId")
                                     (resource-id :target-type
                                      coverage-string-filter-list :member-name
                                      "resourceId")
                                     (resource-type :target-type
                                      coverage-string-filter-list :member-name
                                      "resourceType")
                                     (scan-type :target-type
                                      coverage-string-filter-list :member-name
                                      "scanType")
                                     (ecr-repository-name :target-type
                                      coverage-string-filter-list :member-name
                                      "ecrRepositoryName")
                                     (ecr-image-tags :target-type
                                      coverage-string-filter-list :member-name
                                      "ecrImageTags")
                                     (ec2instance-tags :target-type
                                      coverage-map-filter-list :member-name
                                      "ec2InstanceTags")
                                     (lambda-function-name :target-type
                                      coverage-string-filter-list :member-name
                                      "lambdaFunctionName")
                                     (lambda-function-tags :target-type
                                      coverage-map-filter-list :member-name
                                      "lambdaFunctionTags")
                                     (lambda-function-runtime :target-type
                                      coverage-string-filter-list :member-name
                                      "lambdaFunctionRuntime")
                                     (last-scanned-at :target-type
                                      coverage-date-filter-list :member-name
                                      "lastScannedAt")
                                     (scan-mode :target-type
                                      coverage-string-filter-list :member-name
                                      "scanMode")
                                     (image-pulled-at :target-type
                                      coverage-date-filter-list :member-name
                                      "imagePulledAt")
                                     (ecr-image-last-in-use-at :target-type
                                      coverage-date-filter-list :member-name
                                      "ecrImageLastInUseAt")
                                     (ecr-image-in-use-count :target-type
                                      coverage-number-filter-list :member-name
                                      "ecrImageInUseCount")
                                     (code-repository-project-name :target-type
                                      coverage-string-filter-list :member-name
                                      "codeRepositoryProjectName")
                                     (code-repository-provider-type
                                      :target-type coverage-string-filter-list
                                      :member-name
                                      "codeRepositoryProviderType")
                                     (code-repository-provider-type-visibility
                                      :target-type coverage-string-filter-list
                                      :member-name
                                      "codeRepositoryProviderTypeVisibility")
                                     (last-scanned-commit-id :target-type
                                      coverage-string-filter-list :member-name
                                      "lastScannedCommitId"))
                                    (:shape-name "CoverageFilterCriteria"))

(smithy/sdk/shapes:define-type coverage-map-comparison
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure coverage-map-filter common-lisp:nil
                                    ((comparison :target-type
                                      coverage-map-comparison :required
                                      common-lisp:t :member-name "comparison")
                                     (key :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "key")
                                     (value :target-type non-empty-string
                                      :member-name "value"))
                                    (:shape-name "CoverageMapFilter"))

(smithy/sdk/shapes:define-list coverage-map-filter-list :member
                               coverage-map-filter)

(smithy/sdk/shapes:define-structure coverage-number-filter common-lisp:nil
                                    ((upper-inclusive :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "upperInclusive")
                                     (lower-inclusive :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "lowerInclusive"))
                                    (:shape-name "CoverageNumberFilter"))

(smithy/sdk/shapes:define-list coverage-number-filter-list :member
                               coverage-number-filter)

(smithy/sdk/shapes:define-type coverage-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type coverage-string-comparison
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure coverage-string-filter common-lisp:nil
                                    ((comparison :target-type
                                      coverage-string-comparison :required
                                      common-lisp:t :member-name "comparison")
                                     (value :target-type coverage-string-input
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "CoverageStringFilter"))

(smithy/sdk/shapes:define-list coverage-string-filter-list :member
                               coverage-string-filter)

(smithy/sdk/shapes:define-type coverage-string-input
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure covered-resource common-lisp:nil
                                    ((resource-type :target-type
                                      coverage-resource-type :required
                                      common-lisp:t :member-name
                                      "resourceType")
                                     (resource-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "resourceId")
                                     (account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId")
                                     (scan-type :target-type scan-type
                                      :required common-lisp:t :member-name
                                      "scanType")
                                     (scan-status :target-type scan-status
                                      :member-name "scanStatus")
                                     (resource-metadata :target-type
                                      resource-scan-metadata :member-name
                                      "resourceMetadata")
                                     (last-scanned-at :target-type
                                      date-time-timestamp :member-name
                                      "lastScannedAt")
                                     (scan-mode :target-type scan-mode
                                      :member-name "scanMode"))
                                    (:shape-name "CoveredResource"))

(smithy/sdk/shapes:define-list covered-resources :member covered-resource)

(smithy/sdk/shapes:define-input create-cis-scan-configuration-request
                                common-lisp:nil
                                ((scan-name :target-type cis-scan-name
                                  :required common-lisp:t :member-name
                                  "scanName")
                                 (security-level :target-type
                                  cis-security-level :required common-lisp:t
                                  :member-name "securityLevel")
                                 (schedule :target-type schedule :required
                                  common-lisp:t :member-name "schedule")
                                 (targets :target-type create-cis-targets
                                  :required common-lisp:t :member-name
                                  "targets")
                                 (tags :target-type cis-tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateCisScanConfigurationRequest"))

(smithy/sdk/shapes:define-output create-cis-scan-configuration-response
                                 common-lisp:nil
                                 ((scan-configuration-arn :target-type
                                   cis-scan-configuration-arn :member-name
                                   "scanConfigurationArn"))
                                 (:shape-name
                                  "CreateCisScanConfigurationResponse"))

(smithy/sdk/shapes:define-structure create-cis-targets common-lisp:nil
                                    ((account-ids :target-type
                                      target-account-list :required
                                      common-lisp:t :member-name "accountIds")
                                     (target-resource-tags :target-type
                                      target-resource-tags :required
                                      common-lisp:t :member-name
                                      "targetResourceTags"))
                                    (:shape-name "CreateCisTargets"))

(smithy/sdk/shapes:define-input create-code-security-integration-request
                                common-lisp:nil
                                ((name :target-type integration-name :required
                                  common-lisp:t :member-name "name")
                                 (type :target-type integration-type :required
                                  common-lisp:t :member-name "type")
                                 (details :target-type
                                  create-integration-detail :member-name
                                  "details")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateCodeSecurityIntegrationRequest"))

(smithy/sdk/shapes:define-output create-code-security-integration-response
                                 common-lisp:nil
                                 ((integration-arn :target-type
                                   code-security-integration-arn :required
                                   common-lisp:t :member-name "integrationArn")
                                  (status :target-type integration-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (authorization-url :target-type
                                   authorization-url :member-name
                                   "authorizationUrl"))
                                 (:shape-name
                                  "CreateCodeSecurityIntegrationResponse"))

(smithy/sdk/shapes:define-input create-code-security-scan-configuration-request
                                common-lisp:nil
                                ((name :target-type scan-configuration-name
                                  :required common-lisp:t :member-name "name")
                                 (level :target-type configuration-level
                                  :required common-lisp:t :member-name "level")
                                 (configuration :target-type
                                  code-security-scan-configuration :required
                                  common-lisp:t :member-name "configuration")
                                 (scope-settings :target-type scope-settings
                                  :member-name "scopeSettings")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateCodeSecurityScanConfigurationRequest"))

(smithy/sdk/shapes:define-output
 create-code-security-scan-configuration-response common-lisp:nil
 ((scan-configuration-arn :target-type scan-configuration-arn :required
   common-lisp:t :member-name "scanConfigurationArn"))
 (:shape-name "CreateCodeSecurityScanConfigurationResponse"))

(smithy/sdk/shapes:define-structure create-filter-request common-lisp:nil
                                    ((action :target-type filter-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (description :target-type
                                      filter-description :member-name
                                      "description")
                                     (filter-criteria :target-type
                                      filter-criteria :required common-lisp:t
                                      :member-name "filterCriteria")
                                     (name :target-type filter-name :required
                                      common-lisp:t :member-name "name")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (reason :target-type filter-reason
                                      :member-name "reason"))
                                    (:shape-name "CreateFilterRequest"))

(smithy/sdk/shapes:define-structure create-filter-response common-lisp:nil
                                    ((arn :target-type filter-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "CreateFilterResponse"))

(smithy/sdk/shapes:define-structure create-findings-report-request
                                    common-lisp:nil
                                    ((filter-criteria :target-type
                                      filter-criteria :member-name
                                      "filterCriteria")
                                     (report-format :target-type report-format
                                      :required common-lisp:t :member-name
                                      "reportFormat")
                                     (s3destination :target-type destination
                                      :required common-lisp:t :member-name
                                      "s3Destination"))
                                    (:shape-name "CreateFindingsReportRequest"))

(smithy/sdk/shapes:define-structure create-findings-report-response
                                    common-lisp:nil
                                    ((report-id :target-type report-id
                                      :member-name "reportId"))
                                    (:shape-name
                                     "CreateFindingsReportResponse"))

(smithy/sdk/shapes:define-structure
 create-git-lab-self-managed-integration-detail common-lisp:nil
 ((instance-url :target-type instance-url :required common-lisp:t :member-name
   "instanceUrl")
  (access-token :target-type git-lab-access-token :required common-lisp:t
   :member-name "accessToken"))
 (:shape-name "CreateGitLabSelfManagedIntegrationDetail"))

(smithy/sdk/shapes:define-union create-integration-detail common-lisp:nil
                                ((gitlab-self-managed :target-type
                                  create-git-lab-self-managed-integration-detail
                                  :member-name "gitlabSelfManaged"))
                                (:shape-name "CreateIntegrationDetail"))

(smithy/sdk/shapes:define-input create-sbom-export-request common-lisp:nil
                                ((resource-filter-criteria :target-type
                                  resource-filter-criteria :member-name
                                  "resourceFilterCriteria")
                                 (report-format :target-type sbom-report-format
                                  :required common-lisp:t :member-name
                                  "reportFormat")
                                 (s3destination :target-type destination
                                  :required common-lisp:t :member-name
                                  "s3Destination"))
                                (:shape-name "CreateSbomExportRequest"))

(smithy/sdk/shapes:define-output create-sbom-export-response common-lisp:nil
                                 ((report-id :target-type report-id
                                   :member-name "reportId"))
                                 (:shape-name "CreateSbomExportResponse"))

(smithy/sdk/shapes:define-type currency smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cvss2 common-lisp:nil
                                    ((base-score :target-type cvss2base-score
                                      :member-name "baseScore")
                                     (scoring-vector :target-type
                                      cvss2scoring-vector :member-name
                                      "scoringVector"))
                                    (:shape-name "Cvss2"))

(smithy/sdk/shapes:define-type cvss2base-score smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type cvss2scoring-vector
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cvss3 common-lisp:nil
                                    ((base-score :target-type cvss3base-score
                                      :member-name "baseScore")
                                     (scoring-vector :target-type
                                      cvss3scoring-vector :member-name
                                      "scoringVector"))
                                    (:shape-name "Cvss3"))

(smithy/sdk/shapes:define-type cvss3base-score smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type cvss3scoring-vector
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cvss-score common-lisp:nil
                                    ((base-score :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "baseScore")
                                     (scoring-vector :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "scoringVector")
                                     (version :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "version")
                                     (source :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "source"))
                                    (:shape-name "CvssScore"))

(smithy/sdk/shapes:define-structure cvss-score-adjustment common-lisp:nil
                                    ((metric :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "metric")
                                     (reason :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "reason"))
                                    (:shape-name "CvssScoreAdjustment"))

(smithy/sdk/shapes:define-list cvss-score-adjustment-list :member
                               cvss-score-adjustment)

(smithy/sdk/shapes:define-structure cvss-score-details common-lisp:nil
                                    ((score-source :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "scoreSource")
                                     (cvss-source :target-type non-empty-string
                                      :member-name "cvssSource")
                                     (version :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "version")
                                     (score :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "score")
                                     (scoring-vector :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "scoringVector")
                                     (adjustments :target-type
                                      cvss-score-adjustment-list :member-name
                                      "adjustments"))
                                    (:shape-name "CvssScoreDetails"))

(smithy/sdk/shapes:define-list cvss-score-list :member cvss-score)

(smithy/sdk/shapes:define-type cwe smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cwe-list :member non-empty-string)

(smithy/sdk/shapes:define-list cwes :member cwe)

(smithy/sdk/shapes:define-structure daily-schedule common-lisp:nil
                                    ((start-time :target-type time :required
                                      common-lisp:t :member-name "startTime"))
                                    (:shape-name "DailySchedule"))

(smithy/sdk/shapes:define-structure date-filter common-lisp:nil
                                    ((start-inclusive :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startInclusive")
                                     (end-inclusive :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endInclusive"))
                                    (:shape-name "DateFilter"))

(smithy/sdk/shapes:define-list date-filter-list :member date-filter)

(smithy/sdk/shapes:define-type date-time-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum day
    common-lisp:nil
  (:sun "SUN")
  (:mon "MON")
  (:tue "TUE")
  (:wed "WED")
  (:thu "THU")
  (:fri "FRI")
  (:sat "SAT"))

(smithy/sdk/shapes:define-list days-list :member day)

(smithy/sdk/shapes:define-structure delegated-admin common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "accountId")
                                     (relationship-status :target-type
                                      relationship-status :member-name
                                      "relationshipStatus"))
                                    (:shape-name "DelegatedAdmin"))

(smithy/sdk/shapes:define-structure delegated-admin-account common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "accountId")
                                     (status :target-type
                                      delegated-admin-status :member-name
                                      "status"))
                                    (:shape-name "DelegatedAdminAccount"))

(smithy/sdk/shapes:define-list delegated-admin-account-list :member
                               delegated-admin-account)

(smithy/sdk/shapes:define-type delegated-admin-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-cis-scan-configuration-request
                                common-lisp:nil
                                ((scan-configuration-arn :target-type
                                  cis-scan-configuration-arn :required
                                  common-lisp:t :member-name
                                  "scanConfigurationArn"))
                                (:shape-name
                                 "DeleteCisScanConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-cis-scan-configuration-response
                                 common-lisp:nil
                                 ((scan-configuration-arn :target-type
                                   cis-scan-configuration-arn :required
                                   common-lisp:t :member-name
                                   "scanConfigurationArn"))
                                 (:shape-name
                                  "DeleteCisScanConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-code-security-integration-request
                                common-lisp:nil
                                ((integration-arn :target-type
                                  code-security-integration-arn :required
                                  common-lisp:t :member-name "integrationArn"))
                                (:shape-name
                                 "DeleteCodeSecurityIntegrationRequest"))

(smithy/sdk/shapes:define-output delete-code-security-integration-response
                                 common-lisp:nil
                                 ((integration-arn :target-type
                                   code-security-integration-arn :member-name
                                   "integrationArn"))
                                 (:shape-name
                                  "DeleteCodeSecurityIntegrationResponse"))

(smithy/sdk/shapes:define-input delete-code-security-scan-configuration-request
                                common-lisp:nil
                                ((scan-configuration-arn :target-type
                                  scan-configuration-arn :required
                                  common-lisp:t :member-name
                                  "scanConfigurationArn"))
                                (:shape-name
                                 "DeleteCodeSecurityScanConfigurationRequest"))

(smithy/sdk/shapes:define-output
 delete-code-security-scan-configuration-response common-lisp:nil
 ((scan-configuration-arn :target-type scan-configuration-arn :member-name
   "scanConfigurationArn"))
 (:shape-name "DeleteCodeSecurityScanConfigurationResponse"))

(smithy/sdk/shapes:define-structure delete-filter-request common-lisp:nil
                                    ((arn :target-type filter-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "DeleteFilterRequest"))

(smithy/sdk/shapes:define-structure delete-filter-response common-lisp:nil
                                    ((arn :target-type filter-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "DeleteFilterResponse"))

(smithy/sdk/shapes:define-structure describe-organization-configuration-request
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DescribeOrganizationConfigurationRequest"))

(smithy/sdk/shapes:define-structure
 describe-organization-configuration-response common-lisp:nil
 ((auto-enable :target-type auto-enable :member-name "autoEnable")
  (max-account-limit-reached :target-type smithy/sdk/smithy-types:boolean
   :member-name "maxAccountLimitReached"))
 (:shape-name "DescribeOrganizationConfigurationResponse"))

(smithy/sdk/shapes:define-structure destination common-lisp:nil
                                    ((bucket-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "bucketName")
                                     (key-prefix :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "keyPrefix")
                                     (kms-key-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "kmsKeyArn"))
                                    (:shape-name "Destination"))

(smithy/sdk/shapes:define-list detection-platforms :member non-empty-string)

(smithy/sdk/shapes:define-list detector-tag-list :member non-empty-string)

(smithy/sdk/shapes:define-structure disable-delegated-admin-account-request
                                    common-lisp:nil
                                    ((delegated-admin-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "delegatedAdminAccountId"))
                                    (:shape-name
                                     "DisableDelegatedAdminAccountRequest"))

(smithy/sdk/shapes:define-structure disable-delegated-admin-account-response
                                    common-lisp:nil
                                    ((delegated-admin-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "delegatedAdminAccountId"))
                                    (:shape-name
                                     "DisableDelegatedAdminAccountResponse"))

(smithy/sdk/shapes:define-structure disable-request common-lisp:nil
                                    ((account-ids :target-type account-id-set
                                      :member-name "accountIds")
                                     (resource-types :target-type
                                      disable-resource-type-list :member-name
                                      "resourceTypes"))
                                    (:shape-name "DisableRequest"))

(smithy/sdk/shapes:define-list disable-resource-type-list :member
                               resource-scan-type)

(smithy/sdk/shapes:define-structure disable-response common-lisp:nil
                                    ((accounts :target-type account-list
                                      :required common-lisp:t :member-name
                                      "accounts")
                                     (failed-accounts :target-type
                                      failed-account-list :member-name
                                      "failedAccounts"))
                                    (:shape-name "DisableResponse"))

(smithy/sdk/shapes:define-structure disassociate-configuration-request
                                    common-lisp:nil
                                    ((scan-configuration-arn :target-type
                                      scan-configuration-arn :required
                                      common-lisp:t :member-name
                                      "scanConfigurationArn")
                                     (resource :target-type
                                      code-security-resource :required
                                      common-lisp:t :member-name "resource"))
                                    (:shape-name
                                     "DisassociateConfigurationRequest"))

(smithy/sdk/shapes:define-list disassociate-configuration-request-list :member
                               disassociate-configuration-request)

(smithy/sdk/shapes:define-structure disassociate-member-request common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId"))
                                    (:shape-name "DisassociateMemberRequest"))

(smithy/sdk/shapes:define-structure disassociate-member-response
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId"))
                                    (:shape-name "DisassociateMemberResponse"))

(smithy/sdk/shapes:define-structure ec2configuration common-lisp:nil
                                    ((scan-mode :target-type ec2scan-mode
                                      :required common-lisp:t :member-name
                                      "scanMode"))
                                    (:shape-name "Ec2Configuration"))

(smithy/sdk/shapes:define-structure ec2configuration-state common-lisp:nil
                                    ((scan-mode-state :target-type
                                      ec2scan-mode-state :member-name
                                      "scanModeState"))
                                    (:shape-name "Ec2ConfigurationState"))

(smithy/sdk/shapes:define-type ec2deep-inspection-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ec2instance-aggregation common-lisp:nil
                                    ((amis :target-type string-filter-list
                                      :member-name "amis")
                                     (operating-systems :target-type
                                      string-filter-list :member-name
                                      "operatingSystems")
                                     (instance-ids :target-type
                                      string-filter-list :member-name
                                      "instanceIds")
                                     (instance-tags :target-type
                                      map-filter-list :member-name
                                      "instanceTags")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder")
                                     (sort-by :target-type ec2instance-sort-by
                                      :member-name "sortBy"))
                                    (:shape-name "Ec2InstanceAggregation"))

(smithy/sdk/shapes:define-structure ec2instance-aggregation-response
                                    common-lisp:nil
                                    ((instance-id :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "instanceId")
                                     (ami :target-type ami-id :member-name
                                      "ami")
                                     (operating-system :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "operatingSystem")
                                     (instance-tags :target-type tag-map
                                      :member-name "instanceTags")
                                     (account-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "accountId")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts")
                                     (network-findings :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "networkFindings"))
                                    (:shape-name
                                     "Ec2InstanceAggregationResponse"))

(smithy/sdk/shapes:define-type ec2instance-sort-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ec2metadata common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags")
                                     (ami-id :target-type ami-id :member-name
                                      "amiId")
                                     (platform :target-type ec2platform
                                      :member-name "platform"))
                                    (:shape-name "Ec2Metadata"))

(smithy/sdk/shapes:define-type ec2platform smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ec2scan-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ec2scan-mode-state common-lisp:nil
                                    ((scan-mode :target-type ec2scan-mode
                                      :member-name "scanMode")
                                     (scan-mode-status :target-type
                                      ec2scan-mode-status :member-name
                                      "scanModeStatus"))
                                    (:shape-name "Ec2ScanModeState"))

(smithy/sdk/shapes:define-type ec2scan-mode-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ecr-configuration common-lisp:nil
                                    ((rescan-duration :target-type
                                      ecr-rescan-duration :required
                                      common-lisp:t :member-name
                                      "rescanDuration")
                                     (pull-date-rescan-duration :target-type
                                      ecr-pull-date-rescan-duration
                                      :member-name "pullDateRescanDuration")
                                     (pull-date-rescan-mode :target-type
                                      ecr-pull-date-rescan-mode :member-name
                                      "pullDateRescanMode"))
                                    (:shape-name "EcrConfiguration"))

(smithy/sdk/shapes:define-structure ecr-configuration-state common-lisp:nil
                                    ((rescan-duration-state :target-type
                                      ecr-rescan-duration-state :member-name
                                      "rescanDurationState"))
                                    (:shape-name "EcrConfigurationState"))

(smithy/sdk/shapes:define-structure ecr-container-image-metadata
                                    common-lisp:nil
                                    ((tags :target-type tag-list :member-name
                                      "tags")
                                     (image-pulled-at :target-type
                                      date-time-timestamp :member-name
                                      "imagePulledAt")
                                     (last-in-use-at :target-type
                                      date-time-timestamp :member-name
                                      "lastInUseAt")
                                     (in-use-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "inUseCount"))
                                    (:shape-name "EcrContainerImageMetadata"))

(smithy/sdk/shapes:define-type ecr-pull-date-rescan-duration
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ecr-pull-date-rescan-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ecr-repository-metadata common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (scan-frequency :target-type
                                      ecr-scan-frequency :member-name
                                      "scanFrequency"))
                                    (:shape-name "EcrRepositoryMetadata"))

(smithy/sdk/shapes:define-type ecr-rescan-duration
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ecr-rescan-duration-state common-lisp:nil
                                    ((rescan-duration :target-type
                                      ecr-rescan-duration :member-name
                                      "rescanDuration")
                                     (status :target-type
                                      ecr-rescan-duration-status :member-name
                                      "status")
                                     (updated-at :target-type
                                      date-time-timestamp :member-name
                                      "updatedAt")
                                     (pull-date-rescan-duration :target-type
                                      ecr-pull-date-rescan-duration
                                      :member-name "pullDateRescanDuration")
                                     (pull-date-rescan-mode :target-type
                                      ecr-pull-date-rescan-mode :member-name
                                      "pullDateRescanMode"))
                                    (:shape-name "EcrRescanDurationState"))

(smithy/sdk/shapes:define-type ecr-rescan-duration-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ecr-scan-frequency
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure enable-delegated-admin-account-request
                                    common-lisp:nil
                                    ((delegated-admin-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "delegatedAdminAccountId")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name
                                     "EnableDelegatedAdminAccountRequest"))

(smithy/sdk/shapes:define-structure enable-delegated-admin-account-response
                                    common-lisp:nil
                                    ((delegated-admin-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "delegatedAdminAccountId"))
                                    (:shape-name
                                     "EnableDelegatedAdminAccountResponse"))

(smithy/sdk/shapes:define-structure enable-request common-lisp:nil
                                    ((account-ids :target-type account-id-set
                                      :member-name "accountIds")
                                     (resource-types :target-type
                                      enable-resource-type-list :required
                                      common-lisp:t :member-name
                                      "resourceTypes")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "EnableRequest"))

(smithy/sdk/shapes:define-list enable-resource-type-list :member
                               resource-scan-type)

(smithy/sdk/shapes:define-structure enable-response common-lisp:nil
                                    ((accounts :target-type account-list
                                      :required common-lisp:t :member-name
                                      "accounts")
                                     (failed-accounts :target-type
                                      failed-account-list :member-name
                                      "failedAccounts"))
                                    (:shape-name "EnableResponse"))

(smithy/sdk/shapes:define-structure epss common-lisp:nil
                                    ((score :target-type epss-score
                                      :member-name "score"))
                                    (:shape-name "Epss"))

(smithy/sdk/shapes:define-structure epss-details common-lisp:nil
                                    ((score :target-type epss-score-value
                                      :member-name "score"))
                                    (:shape-name "EpssDetails"))

(smithy/sdk/shapes:define-type epss-score smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type epss-score-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure evidence common-lisp:nil
                                    ((evidence-rule :target-type evidence-rule
                                      :member-name "evidenceRule")
                                     (evidence-detail :target-type
                                      evidence-detail :member-name
                                      "evidenceDetail")
                                     (severity :target-type evidence-severity
                                      :member-name "severity"))
                                    (:shape-name "Evidence"))

(smithy/sdk/shapes:define-type evidence-detail smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list evidence-list :member evidence)

(smithy/sdk/shapes:define-type evidence-rule smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type evidence-severity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type execution-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exploit-available smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure exploit-observed common-lisp:nil
                                    ((last-seen :target-type last-seen
                                      :member-name "lastSeen")
                                     (first-seen :target-type first-seen
                                      :member-name "firstSeen"))
                                    (:shape-name "ExploitObserved"))

(smithy/sdk/shapes:define-structure exploitability-details common-lisp:nil
                                    ((last-known-exploit-at :target-type
                                      date-time-timestamp :member-name
                                      "lastKnownExploitAt"))
                                    (:shape-name "ExploitabilityDetails"))

(smithy/sdk/shapes:define-type external-report-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure failed-account common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId")
                                     (status :target-type status :member-name
                                      "status")
                                     (resource-status :target-type
                                      resource-status :member-name
                                      "resourceStatus")
                                     (error-code :target-type error-code
                                      :required common-lisp:t :member-name
                                      "errorCode")
                                     (error-message :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "errorMessage"))
                                    (:shape-name "FailedAccount"))

(smithy/sdk/shapes:define-list failed-account-list :member failed-account)

(smithy/sdk/shapes:define-structure failed-association-result common-lisp:nil
                                    ((scan-configuration-arn :target-type
                                      scan-configuration-arn :member-name
                                      "scanConfigurationArn")
                                     (resource :target-type
                                      code-security-resource :member-name
                                      "resource")
                                     (status-code :target-type
                                      association-result-status-code
                                      :member-name "statusCode")
                                     (status-message :target-type
                                      association-result-status-message
                                      :member-name "statusMessage"))
                                    (:shape-name "FailedAssociationResult"))

(smithy/sdk/shapes:define-list failed-association-result-list :member
                               failed-association-result)

(smithy/sdk/shapes:define-structure
 failed-member-account-ec2deep-inspection-status-state common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "accountId")
  (ec2scan-status :target-type status :member-name "ec2ScanStatus")
  (error-message :target-type non-empty-string :member-name "errorMessage"))
 (:shape-name "FailedMemberAccountEc2DeepInspectionStatusState"))

(smithy/sdk/shapes:define-list
 failed-member-account-ec2deep-inspection-status-state-list :member
 failed-member-account-ec2deep-inspection-status-state)

(smithy/sdk/shapes:define-type file-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((arn :target-type filter-arn :required
                                      common-lisp:t :member-name "arn")
                                     (owner-id :target-type owner-id :required
                                      common-lisp:t :member-name "ownerId")
                                     (name :target-type filter-name :required
                                      common-lisp:t :member-name "name")
                                     (criteria :target-type filter-criteria
                                      :required common-lisp:t :member-name
                                      "criteria")
                                     (action :target-type filter-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (created-at :target-type
                                      date-time-timestamp :required
                                      common-lisp:t :member-name "createdAt")
                                     (updated-at :target-type
                                      date-time-timestamp :required
                                      common-lisp:t :member-name "updatedAt")
                                     (description :target-type
                                      filter-description :member-name
                                      "description")
                                     (reason :target-type filter-reason
                                      :member-name "reason")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-type filter-action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-arn-list :member filter-arn)

(smithy/sdk/shapes:define-structure filter-criteria common-lisp:nil
                                    ((finding-arn :target-type
                                      string-filter-list :member-name
                                      "findingArn")
                                     (aws-account-id :target-type
                                      string-filter-list :member-name
                                      "awsAccountId")
                                     (finding-type :target-type
                                      string-filter-list :member-name
                                      "findingType")
                                     (severity :target-type string-filter-list
                                      :member-name "severity")
                                     (first-observed-at :target-type
                                      date-filter-list :member-name
                                      "firstObservedAt")
                                     (last-observed-at :target-type
                                      date-filter-list :member-name
                                      "lastObservedAt")
                                     (updated-at :target-type date-filter-list
                                      :member-name "updatedAt")
                                     (finding-status :target-type
                                      string-filter-list :member-name
                                      "findingStatus")
                                     (title :target-type string-filter-list
                                      :member-name "title")
                                     (inspector-score :target-type
                                      number-filter-list :member-name
                                      "inspectorScore")
                                     (resource-type :target-type
                                      string-filter-list :member-name
                                      "resourceType")
                                     (resource-id :target-type
                                      string-filter-list :member-name
                                      "resourceId")
                                     (resource-tags :target-type
                                      map-filter-list :member-name
                                      "resourceTags")
                                     (ec2instance-image-id :target-type
                                      string-filter-list :member-name
                                      "ec2InstanceImageId")
                                     (ec2instance-vpc-id :target-type
                                      string-filter-list :member-name
                                      "ec2InstanceVpcId")
                                     (ec2instance-subnet-id :target-type
                                      string-filter-list :member-name
                                      "ec2InstanceSubnetId")
                                     (ecr-image-pushed-at :target-type
                                      date-filter-list :member-name
                                      "ecrImagePushedAt")
                                     (ecr-image-architecture :target-type
                                      string-filter-list :member-name
                                      "ecrImageArchitecture")
                                     (ecr-image-registry :target-type
                                      string-filter-list :member-name
                                      "ecrImageRegistry")
                                     (ecr-image-repository-name :target-type
                                      string-filter-list :member-name
                                      "ecrImageRepositoryName")
                                     (ecr-image-tags :target-type
                                      string-filter-list :member-name
                                      "ecrImageTags")
                                     (ecr-image-hash :target-type
                                      string-filter-list :member-name
                                      "ecrImageHash")
                                     (ecr-image-last-in-use-at :target-type
                                      date-filter-list :member-name
                                      "ecrImageLastInUseAt")
                                     (ecr-image-in-use-count :target-type
                                      number-filter-list :member-name
                                      "ecrImageInUseCount")
                                     (port-range :target-type
                                      port-range-filter-list :member-name
                                      "portRange")
                                     (network-protocol :target-type
                                      string-filter-list :member-name
                                      "networkProtocol")
                                     (component-id :target-type
                                      string-filter-list :member-name
                                      "componentId")
                                     (component-type :target-type
                                      string-filter-list :member-name
                                      "componentType")
                                     (vulnerability-id :target-type
                                      string-filter-list :member-name
                                      "vulnerabilityId")
                                     (vulnerability-source :target-type
                                      string-filter-list :member-name
                                      "vulnerabilitySource")
                                     (vendor-severity :target-type
                                      string-filter-list :member-name
                                      "vendorSeverity")
                                     (vulnerable-packages :target-type
                                      package-filter-list :member-name
                                      "vulnerablePackages")
                                     (related-vulnerabilities :target-type
                                      string-filter-list :member-name
                                      "relatedVulnerabilities")
                                     (fix-available :target-type
                                      string-filter-list :member-name
                                      "fixAvailable")
                                     (lambda-function-name :target-type
                                      string-filter-list :member-name
                                      "lambdaFunctionName")
                                     (lambda-function-layers :target-type
                                      string-filter-list :member-name
                                      "lambdaFunctionLayers")
                                     (lambda-function-runtime :target-type
                                      string-filter-list :member-name
                                      "lambdaFunctionRuntime")
                                     (lambda-function-last-modified-at
                                      :target-type date-filter-list
                                      :member-name
                                      "lambdaFunctionLastModifiedAt")
                                     (lambda-function-execution-role-arn
                                      :target-type string-filter-list
                                      :member-name
                                      "lambdaFunctionExecutionRoleArn")
                                     (exploit-available :target-type
                                      string-filter-list :member-name
                                      "exploitAvailable")
                                     (code-vulnerability-detector-name
                                      :target-type string-filter-list
                                      :member-name
                                      "codeVulnerabilityDetectorName")
                                     (code-vulnerability-detector-tags
                                      :target-type string-filter-list
                                      :member-name
                                      "codeVulnerabilityDetectorTags")
                                     (code-vulnerability-file-path :target-type
                                      string-filter-list :member-name
                                      "codeVulnerabilityFilePath")
                                     (epss-score :target-type
                                      number-filter-list :member-name
                                      "epssScore")
                                     (code-repository-project-name :target-type
                                      string-filter-list :member-name
                                      "codeRepositoryProjectName")
                                     (code-repository-provider-type
                                      :target-type string-filter-list
                                      :member-name
                                      "codeRepositoryProviderType"))
                                    (:shape-name "FilterCriteria"))

(smithy/sdk/shapes:define-type filter-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-type filter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure finding common-lisp:nil
                                    ((finding-arn :target-type finding-arn
                                      :required common-lisp:t :member-name
                                      "findingArn")
                                     (aws-account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "awsAccountId")
                                     (type :target-type finding-type :required
                                      common-lisp:t :member-name "type")
                                     (description :target-type
                                      finding-description :required
                                      common-lisp:t :member-name "description")
                                     (title :target-type finding-title
                                      :member-name "title")
                                     (remediation :target-type remediation
                                      :required common-lisp:t :member-name
                                      "remediation")
                                     (severity :target-type severity :required
                                      common-lisp:t :member-name "severity")
                                     (first-observed-at :target-type
                                      date-time-timestamp :required
                                      common-lisp:t :member-name
                                      "firstObservedAt")
                                     (last-observed-at :target-type
                                      date-time-timestamp :required
                                      common-lisp:t :member-name
                                      "lastObservedAt")
                                     (updated-at :target-type
                                      date-time-timestamp :member-name
                                      "updatedAt")
                                     (status :target-type finding-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (resources :target-type resource-list
                                      :required common-lisp:t :member-name
                                      "resources")
                                     (inspector-score :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "inspectorScore")
                                     (inspector-score-details :target-type
                                      inspector-score-details :member-name
                                      "inspectorScoreDetails")
                                     (network-reachability-details :target-type
                                      network-reachability-details :member-name
                                      "networkReachabilityDetails")
                                     (package-vulnerability-details
                                      :target-type
                                      package-vulnerability-details
                                      :member-name
                                      "packageVulnerabilityDetails")
                                     (fix-available :target-type fix-available
                                      :member-name "fixAvailable")
                                     (exploit-available :target-type
                                      exploit-available :member-name
                                      "exploitAvailable")
                                     (exploitability-details :target-type
                                      exploitability-details :member-name
                                      "exploitabilityDetails")
                                     (code-vulnerability-details :target-type
                                      code-vulnerability-details :member-name
                                      "codeVulnerabilityDetails")
                                     (epss :target-type epss-details
                                      :member-name "epss"))
                                    (:shape-name "Finding"))

(smithy/sdk/shapes:define-type finding-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list finding-arn-list :member finding-arn)

(smithy/sdk/shapes:define-list finding-arns :member finding-arn)

(smithy/sdk/shapes:define-type finding-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure finding-detail common-lisp:nil
                                    ((finding-arn :target-type finding-arn
                                      :member-name "findingArn")
                                     (cisa-data :target-type cisa-data
                                      :member-name "cisaData")
                                     (risk-score :target-type risk-score
                                      :member-name "riskScore")
                                     (evidences :target-type evidence-list
                                      :member-name "evidences")
                                     (ttps :target-type ttps :member-name
                                      "ttps")
                                     (tools :target-type tools :member-name
                                      "tools")
                                     (exploit-observed :target-type
                                      exploit-observed :member-name
                                      "exploitObserved")
                                     (reference-urls :target-type
                                      vulnerability-reference-urls :member-name
                                      "referenceUrls")
                                     (cwes :target-type cwes :member-name
                                      "cwes")
                                     (epss-score :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "epssScore"))
                                    (:shape-name "FindingDetail"))

(smithy/sdk/shapes:define-list finding-details :member finding-detail)

(smithy/sdk/shapes:define-structure finding-details-error common-lisp:nil
                                    ((finding-arn :target-type finding-arn
                                      :required common-lisp:t :member-name
                                      "findingArn")
                                     (error-code :target-type
                                      finding-details-error-code :required
                                      common-lisp:t :member-name "errorCode")
                                     (error-message :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "errorMessage"))
                                    (:shape-name "FindingDetailsError"))

(smithy/sdk/shapes:define-type finding-details-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list finding-details-error-list :member
                               finding-details-error)

(smithy/sdk/shapes:define-list finding-list :member finding)

(smithy/sdk/shapes:define-type finding-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type finding-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type finding-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure finding-type-aggregation common-lisp:nil
                                    ((finding-type :target-type
                                      aggregation-finding-type :member-name
                                      "findingType")
                                     (resource-type :target-type
                                      aggregation-resource-type :member-name
                                      "resourceType")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder")
                                     (sort-by :target-type finding-type-sort-by
                                      :member-name "sortBy"))
                                    (:shape-name "FindingTypeAggregation"))

(smithy/sdk/shapes:define-structure finding-type-aggregation-response
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "accountId")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts")
                                     (exploit-available-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "exploitAvailableCount")
                                     (fix-available-count :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "fixAvailableCount"))
                                    (:shape-name
                                     "FindingTypeAggregationResponse"))

(smithy/sdk/shapes:define-type finding-type-sort-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type first-seen smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type fix-available smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure free-trial-account-info common-lisp:nil
                                    ((account-id :target-type
                                      metering-account-id :required
                                      common-lisp:t :member-name "accountId")
                                     (free-trial-info :target-type
                                      free-trial-info-list :required
                                      common-lisp:t :member-name
                                      "freeTrialInfo"))
                                    (:shape-name "FreeTrialAccountInfo"))

(smithy/sdk/shapes:define-list free-trial-account-info-list :member
                               free-trial-account-info)

(smithy/sdk/shapes:define-structure free-trial-info common-lisp:nil
                                    ((type :target-type free-trial-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (start :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "start")
                                     (end :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "end")
                                     (status :target-type free-trial-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "FreeTrialInfo"))

(smithy/sdk/shapes:define-structure free-trial-info-error common-lisp:nil
                                    ((account-id :target-type
                                      metering-account-id :required
                                      common-lisp:t :member-name "accountId")
                                     (code :target-type
                                      free-trial-info-error-code :required
                                      common-lisp:t :member-name "code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "FreeTrialInfoError"))

(smithy/sdk/shapes:define-type free-trial-info-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list free-trial-info-error-list :member
                               free-trial-info-error)

(smithy/sdk/shapes:define-list free-trial-info-list :member free-trial-info)

(smithy/sdk/shapes:define-type free-trial-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type free-trial-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type frequency-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type function-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-cis-scan-report-request common-lisp:nil
                                ((scan-arn :target-type cis-scan-arn :required
                                  common-lisp:t :member-name "scanArn")
                                 (target-accounts :target-type
                                  report-target-accounts :member-name
                                  "targetAccounts")
                                 (report-format :target-type cis-report-format
                                  :member-name "reportFormat"))
                                (:shape-name "GetCisScanReportRequest"))

(smithy/sdk/shapes:define-output get-cis-scan-report-response common-lisp:nil
                                 ((url :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "url")
                                  (status :target-type cis-report-status
                                   :member-name "status"))
                                 (:shape-name "GetCisScanReportResponse"))

(smithy/sdk/shapes:define-type get-cis-scan-result-details-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input get-cis-scan-result-details-request
                                common-lisp:nil
                                ((scan-arn :target-type cis-scan-arn :required
                                  common-lisp:t :member-name "scanArn")
                                 (target-resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "targetResourceId")
                                 (account-id :target-type account-id :required
                                  common-lisp:t :member-name "accountId")
                                 (filter-criteria :target-type
                                  cis-scan-result-details-filter-criteria
                                  :member-name "filterCriteria")
                                 (sort-by :target-type
                                  cis-scan-result-details-sort-by :member-name
                                  "sortBy")
                                 (sort-order :target-type cis-sort-order
                                  :member-name "sortOrder")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  get-cis-scan-result-details-max-results
                                  :member-name "maxResults"))
                                (:shape-name "GetCisScanResultDetailsRequest"))

(smithy/sdk/shapes:define-output get-cis-scan-result-details-response
                                 common-lisp:nil
                                 ((scan-result-details :target-type
                                   cis-scan-result-details-list :member-name
                                   "scanResultDetails")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "GetCisScanResultDetailsResponse"))

(smithy/sdk/shapes:define-type get-clusters-for-image-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-clusters-for-image-request common-lisp:nil
                                ((filter :target-type
                                  cluster-for-image-filter-criteria :required
                                  common-lisp:t :member-name "filter")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (next-token :target-type
                                  get-clusters-for-image-next-token
                                  :member-name "nextToken"))
                                (:shape-name "GetClustersForImageRequest"))

(smithy/sdk/shapes:define-output get-clusters-for-image-response
                                 common-lisp:nil
                                 ((cluster :target-type
                                   cluster-information-list :required
                                   common-lisp:t :member-name "cluster")
                                  (next-token :target-type
                                   get-clusters-for-image-next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetClustersForImageResponse"))

(smithy/sdk/shapes:define-input get-code-security-integration-request
                                common-lisp:nil
                                ((integration-arn :target-type
                                  code-security-integration-arn :required
                                  common-lisp:t :member-name "integrationArn")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "GetCodeSecurityIntegrationRequest"))

(smithy/sdk/shapes:define-output get-code-security-integration-response
                                 common-lisp:nil
                                 ((integration-arn :target-type
                                   code-security-integration-arn :required
                                   common-lisp:t :member-name "integrationArn")
                                  (name :target-type integration-name :required
                                   common-lisp:t :member-name "name")
                                  (type :target-type integration-type :required
                                   common-lisp:t :member-name "type")
                                  (status :target-type integration-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "statusReason")
                                  (created-on :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdOn")
                                  (last-update-on :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "lastUpdateOn")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (authorization-url :target-type
                                   authorization-url :member-name
                                   "authorizationUrl"))
                                 (:shape-name
                                  "GetCodeSecurityIntegrationResponse"))

(smithy/sdk/shapes:define-input get-code-security-scan-configuration-request
                                common-lisp:nil
                                ((scan-configuration-arn :target-type
                                  scan-configuration-arn :required
                                  common-lisp:t :member-name
                                  "scanConfigurationArn"))
                                (:shape-name
                                 "GetCodeSecurityScanConfigurationRequest"))

(smithy/sdk/shapes:define-output get-code-security-scan-configuration-response
                                 common-lisp:nil
                                 ((scan-configuration-arn :target-type
                                   scan-configuration-arn :member-name
                                   "scanConfigurationArn")
                                  (name :target-type scan-configuration-name
                                   :member-name "name")
                                  (configuration :target-type
                                   code-security-scan-configuration
                                   :member-name "configuration")
                                  (level :target-type configuration-level
                                   :member-name "level")
                                  (scope-settings :target-type scope-settings
                                   :member-name "scopeSettings")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt")
                                  (last-updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "lastUpdatedAt")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name
                                  "GetCodeSecurityScanConfigurationResponse"))

(smithy/sdk/shapes:define-input get-code-security-scan-request common-lisp:nil
                                ((resource :target-type code-security-resource
                                  :required common-lisp:t :member-name
                                  "resource")
                                 (scan-id :target-type code-security-uuid
                                  :required common-lisp:t :member-name
                                  "scanId"))
                                (:shape-name "GetCodeSecurityScanRequest"))

(smithy/sdk/shapes:define-output get-code-security-scan-response
                                 common-lisp:nil
                                 ((scan-id :target-type code-security-uuid
                                   :member-name "scanId")
                                  (resource :target-type code-security-resource
                                   :member-name "resource")
                                  (account-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "accountId")
                                  (status :target-type code-scan-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updatedAt")
                                  (last-commit-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "lastCommitId"))
                                 (:shape-name "GetCodeSecurityScanResponse"))

(smithy/sdk/shapes:define-structure get-configuration-request common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "GetConfigurationRequest"))

(smithy/sdk/shapes:define-structure get-configuration-response common-lisp:nil
                                    ((ecr-configuration :target-type
                                      ecr-configuration-state :member-name
                                      "ecrConfiguration")
                                     (ec2configuration :target-type
                                      ec2configuration-state :member-name
                                      "ec2Configuration"))
                                    (:shape-name "GetConfigurationResponse"))

(smithy/sdk/shapes:define-structure get-delegated-admin-account-request
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "GetDelegatedAdminAccountRequest"))

(smithy/sdk/shapes:define-structure get-delegated-admin-account-response
                                    common-lisp:nil
                                    ((delegated-admin :target-type
                                      delegated-admin :member-name
                                      "delegatedAdmin"))
                                    (:shape-name
                                     "GetDelegatedAdminAccountResponse"))

(smithy/sdk/shapes:define-input get-ec2deep-inspection-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetEc2DeepInspectionConfigurationRequest"))

(smithy/sdk/shapes:define-output get-ec2deep-inspection-configuration-response
                                 common-lisp:nil
                                 ((package-paths :target-type path-list
                                   :member-name "packagePaths")
                                  (org-package-paths :target-type path-list
                                   :member-name "orgPackagePaths")
                                  (status :target-type
                                   ec2deep-inspection-status :member-name
                                   "status")
                                  (error-message :target-type non-empty-string
                                   :member-name "errorMessage"))
                                 (:shape-name
                                  "GetEc2DeepInspectionConfigurationResponse"))

(smithy/sdk/shapes:define-input get-encryption-key-request common-lisp:nil
                                ((scan-type :target-type scan-type :required
                                  common-lisp:t :member-name "scanType"
                                  :http-query "scanType")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType" :http-query "resourceType"))
                                (:shape-name "GetEncryptionKeyRequest"))

(smithy/sdk/shapes:define-output get-encryption-key-response common-lisp:nil
                                 ((kms-key-id :target-type kms-key-arn
                                   :required common-lisp:t :member-name
                                   "kmsKeyId"))
                                 (:shape-name "GetEncryptionKeyResponse"))

(smithy/sdk/shapes:define-structure get-findings-report-status-request
                                    common-lisp:nil
                                    ((report-id :target-type report-id
                                      :member-name "reportId"))
                                    (:shape-name
                                     "GetFindingsReportStatusRequest"))

(smithy/sdk/shapes:define-structure get-findings-report-status-response
                                    common-lisp:nil
                                    ((report-id :target-type report-id
                                      :member-name "reportId")
                                     (status :target-type
                                      external-report-status :member-name
                                      "status")
                                     (error-code :target-type
                                      reporting-error-code :member-name
                                      "errorCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage")
                                     (destination :target-type destination
                                      :member-name "destination")
                                     (filter-criteria :target-type
                                      filter-criteria :member-name
                                      "filterCriteria"))
                                    (:shape-name
                                     "GetFindingsReportStatusResponse"))

(smithy/sdk/shapes:define-structure get-member-request common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId"))
                                    (:shape-name "GetMemberRequest"))

(smithy/sdk/shapes:define-structure get-member-response common-lisp:nil
                                    ((member :target-type member :member-name
                                      "member"))
                                    (:shape-name "GetMemberResponse"))

(smithy/sdk/shapes:define-input get-sbom-export-request common-lisp:nil
                                ((report-id :target-type report-id :required
                                  common-lisp:t :member-name "reportId"))
                                (:shape-name "GetSbomExportRequest"))

(smithy/sdk/shapes:define-output get-sbom-export-response common-lisp:nil
                                 ((report-id :target-type report-id
                                   :member-name "reportId")
                                  (format :target-type sbom-report-format
                                   :member-name "format")
                                  (status :target-type external-report-status
                                   :member-name "status")
                                  (error-code :target-type reporting-error-code
                                   :member-name "errorCode")
                                  (error-message :target-type non-empty-string
                                   :member-name "errorMessage")
                                  (s3destination :target-type destination
                                   :member-name "s3Destination")
                                  (filter-criteria :target-type
                                   resource-filter-criteria :member-name
                                   "filterCriteria"))
                                 (:shape-name "GetSbomExportResponse"))

(smithy/sdk/shapes:define-type git-hub-auth-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type git-hub-installation-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type git-lab-access-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type git-lab-auth-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type group-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type image-hash smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure image-layer-aggregation common-lisp:nil
                                    ((repositories :target-type
                                      string-filter-list :member-name
                                      "repositories")
                                     (resource-ids :target-type
                                      string-filter-list :member-name
                                      "resourceIds")
                                     (layer-hashes :target-type
                                      string-filter-list :member-name
                                      "layerHashes")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder")
                                     (sort-by :target-type image-layer-sort-by
                                      :member-name "sortBy"))
                                    (:shape-name "ImageLayerAggregation"))

(smithy/sdk/shapes:define-structure image-layer-aggregation-response
                                    common-lisp:nil
                                    ((repository :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "repository")
                                     (resource-id :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "resourceId")
                                     (layer-hash :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "layerHash")
                                     (account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts"))
                                    (:shape-name
                                     "ImageLayerAggregationResponse"))

(smithy/sdk/shapes:define-type image-layer-sort-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list image-tag-list :member non-empty-string)

(smithy/sdk/shapes:define-structure inspector-score-details common-lisp:nil
                                    ((adjusted-cvss :target-type
                                      cvss-score-details :member-name
                                      "adjustedCvss"))
                                    (:shape-name "InspectorScoreDetails"))

(smithy/sdk/shapes:define-type instance-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integration-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum integration-status
    common-lisp:nil
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:disabling "DISABLING"))

(smithy/sdk/shapes:define-list integration-summaries :member
                               code-security-integration-summary)

(smithy/sdk/shapes:define-enum integration-type
    common-lisp:nil
  (:gitlab-self-managed "GITLAB_SELF_MANAGED")
  (:github "GITHUB"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type ip-v4address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ip-v4address-list :member ip-v4address)

(smithy/sdk/shapes:define-type ip-v6address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ip-v6address-list :member ip-v6address)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-function-aggregation common-lisp:nil
                                    ((resource-ids :target-type
                                      string-filter-list :member-name
                                      "resourceIds")
                                     (function-names :target-type
                                      string-filter-list :member-name
                                      "functionNames")
                                     (runtimes :target-type string-filter-list
                                      :member-name "runtimes")
                                     (function-tags :target-type
                                      map-filter-list :member-name
                                      "functionTags")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder")
                                     (sort-by :target-type
                                      lambda-function-sort-by :member-name
                                      "sortBy"))
                                    (:shape-name "LambdaFunctionAggregation"))

(smithy/sdk/shapes:define-structure lambda-function-aggregation-response
                                    common-lisp:nil
                                    ((resource-id :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "resourceId")
                                     (function-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "functionName")
                                     (runtime :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "runtime")
                                     (lambda-tags :target-type tag-map
                                      :member-name "lambdaTags")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts")
                                     (last-modified-at :target-type
                                      date-time-timestamp :member-name
                                      "lastModifiedAt"))
                                    (:shape-name
                                     "LambdaFunctionAggregationResponse"))

(smithy/sdk/shapes:define-structure lambda-function-metadata common-lisp:nil
                                    ((function-tags :target-type tag-map
                                      :member-name "functionTags")
                                     (layers :target-type lambda-layer-list
                                      :member-name "layers")
                                     (function-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "functionName")
                                     (runtime :target-type runtime :member-name
                                      "runtime"))
                                    (:shape-name "LambdaFunctionMetadata"))

(smithy/sdk/shapes:define-type lambda-function-sort-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-layer-aggregation common-lisp:nil
                                    ((function-names :target-type
                                      string-filter-list :member-name
                                      "functionNames")
                                     (resource-ids :target-type
                                      string-filter-list :member-name
                                      "resourceIds")
                                     (layer-arns :target-type
                                      string-filter-list :member-name
                                      "layerArns")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder")
                                     (sort-by :target-type lambda-layer-sort-by
                                      :member-name "sortBy"))
                                    (:shape-name "LambdaLayerAggregation"))

(smithy/sdk/shapes:define-structure lambda-layer-aggregation-response
                                    common-lisp:nil
                                    ((function-name :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "functionName")
                                     (resource-id :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "resourceId")
                                     (layer-arn :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "layerArn")
                                     (account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts"))
                                    (:shape-name
                                     "LambdaLayerAggregationResponse"))

(smithy/sdk/shapes:define-type lambda-layer-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list lambda-layer-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lambda-layer-sort-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-vpc-config common-lisp:nil
                                    ((subnet-ids :target-type subnet-id-list
                                      :member-name "subnetIds")
                                     (security-group-ids :target-type
                                      security-group-id-list :member-name
                                      "securityGroupIds")
                                     (vpc-id :target-type vpc-id :member-name
                                      "vpcId"))
                                    (:shape-name "LambdaVpcConfig"))

(smithy/sdk/shapes:define-type last-seen smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list layer-list :member lambda-layer-arn)

(smithy/sdk/shapes:define-type list-account-permissions-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-account-permissions-request
                                    common-lisp:nil
                                    ((service :target-type service :member-name
                                      "service")
                                     (max-results :target-type
                                      list-account-permissions-max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListAccountPermissionsRequest"))

(smithy/sdk/shapes:define-structure list-account-permissions-response
                                    common-lisp:nil
                                    ((permissions :target-type permissions
                                      :required common-lisp:t :member-name
                                      "permissions")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListAccountPermissionsResponse"))

(smithy/sdk/shapes:define-structure
 list-cis-scan-configurations-filter-criteria common-lisp:nil
 ((scan-name-filters :target-type cis-scan-name-filter-list :member-name
   "scanNameFilters")
  (target-resource-tag-filters :target-type resource-tag-filter-list
   :member-name "targetResourceTagFilters")
  (scan-configuration-arn-filters :target-type
   cis-scan-configuration-arn-filter-list :member-name
   "scanConfigurationArnFilters"))
 (:shape-name "ListCisScanConfigurationsFilterCriteria"))

(smithy/sdk/shapes:define-type list-cis-scan-configurations-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-cis-scan-configurations-request
                                common-lisp:nil
                                ((filter-criteria :target-type
                                  list-cis-scan-configurations-filter-criteria
                                  :member-name "filterCriteria")
                                 (sort-by :target-type
                                  cis-scan-configurations-sort-by :member-name
                                  "sortBy")
                                 (sort-order :target-type cis-sort-order
                                  :member-name "sortOrder")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  list-cis-scan-configurations-max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListCisScanConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-cis-scan-configurations-response
                                 common-lisp:nil
                                 ((scan-configurations :target-type
                                   cis-scan-configuration-list :member-name
                                   "scanConfigurations")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListCisScanConfigurationsResponse"))

(smithy/sdk/shapes:define-input
 list-cis-scan-results-aggregated-by-checks-request common-lisp:nil
 ((scan-arn :target-type cis-scan-arn :required common-lisp:t :member-name
   "scanArn")
  (filter-criteria :target-type
   cis-scan-results-aggregated-by-checks-filter-criteria :member-name
   "filterCriteria")
  (sort-by :target-type cis-scan-results-aggregated-by-checks-sort-by
   :member-name "sortBy")
  (sort-order :target-type cis-sort-order :member-name "sortOrder")
  (next-token :target-type next-token :member-name "nextToken")
  (max-results :target-type cis-scan-results-max-results :member-name
   "maxResults"))
 (:shape-name "ListCisScanResultsAggregatedByChecksRequest"))

(smithy/sdk/shapes:define-output
 list-cis-scan-results-aggregated-by-checks-response common-lisp:nil
 ((check-aggregations :target-type cis-check-aggregation-list :member-name
   "checkAggregations")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListCisScanResultsAggregatedByChecksResponse"))

(smithy/sdk/shapes:define-input
 list-cis-scan-results-aggregated-by-target-resource-request common-lisp:nil
 ((scan-arn :target-type cis-scan-arn :required common-lisp:t :member-name
   "scanArn")
  (filter-criteria :target-type
   cis-scan-results-aggregated-by-target-resource-filter-criteria :member-name
   "filterCriteria")
  (sort-by :target-type cis-scan-results-aggregated-by-target-resource-sort-by
   :member-name "sortBy")
  (sort-order :target-type cis-sort-order :member-name "sortOrder")
  (next-token :target-type next-token :member-name "nextToken")
  (max-results :target-type cis-scan-results-max-results :member-name
   "maxResults"))
 (:shape-name "ListCisScanResultsAggregatedByTargetResourceRequest"))

(smithy/sdk/shapes:define-output
 list-cis-scan-results-aggregated-by-target-resource-response common-lisp:nil
 ((target-resource-aggregations :target-type
   cis-target-resource-aggregation-list :member-name
   "targetResourceAggregations")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListCisScanResultsAggregatedByTargetResourceResponse"))

(smithy/sdk/shapes:define-enum list-cis-scans-detail-level
    common-lisp:nil
  (:organization "ORGANIZATION")
  (:member "MEMBER"))

(smithy/sdk/shapes:define-structure list-cis-scans-filter-criteria
                                    common-lisp:nil
                                    ((scan-name-filters :target-type
                                      cis-scan-name-filter-list :member-name
                                      "scanNameFilters")
                                     (target-resource-tag-filters :target-type
                                      resource-tag-filter-list :member-name
                                      "targetResourceTagFilters")
                                     (target-resource-id-filters :target-type
                                      resource-id-filter-list :member-name
                                      "targetResourceIdFilters")
                                     (scan-status-filters :target-type
                                      cis-scan-status-filter-list :member-name
                                      "scanStatusFilters")
                                     (scan-at-filters :target-type
                                      cis-scan-date-filter-list :member-name
                                      "scanAtFilters")
                                     (scan-configuration-arn-filters
                                      :target-type
                                      cis-scan-configuration-arn-filter-list
                                      :member-name
                                      "scanConfigurationArnFilters")
                                     (scan-arn-filters :target-type
                                      cis-scan-arn-filter-list :member-name
                                      "scanArnFilters")
                                     (scheduled-by-filters :target-type
                                      cis-scheduled-by-filter-list :member-name
                                      "scheduledByFilters")
                                     (failed-checks-filters :target-type
                                      cis-number-filter-list :member-name
                                      "failedChecksFilters")
                                     (target-account-id-filters :target-type
                                      account-id-filter-list :member-name
                                      "targetAccountIdFilters"))
                                    (:shape-name "ListCisScansFilterCriteria"))

(smithy/sdk/shapes:define-type list-cis-scans-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-cis-scans-request common-lisp:nil
                                ((filter-criteria :target-type
                                  list-cis-scans-filter-criteria :member-name
                                  "filterCriteria")
                                 (detail-level :target-type
                                  list-cis-scans-detail-level :member-name
                                  "detailLevel")
                                 (sort-by :target-type list-cis-scans-sort-by
                                  :member-name "sortBy")
                                 (sort-order :target-type cis-sort-order
                                  :member-name "sortOrder")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  list-cis-scans-max-results :member-name
                                  "maxResults"))
                                (:shape-name "ListCisScansRequest"))

(smithy/sdk/shapes:define-output list-cis-scans-response common-lisp:nil
                                 ((scans :target-type cis-scan-list
                                   :member-name "scans")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListCisScansResponse"))

(smithy/sdk/shapes:define-enum list-cis-scans-sort-by
    common-lisp:nil
  (:status "STATUS")
  (:scheduled-by "SCHEDULED_BY")
  (:scan-start-date "SCAN_START_DATE")
  (:failed-checks "FAILED_CHECKS"))

(smithy/sdk/shapes:define-input list-code-security-integrations-request
                                common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name
                                 "ListCodeSecurityIntegrationsRequest"))

(smithy/sdk/shapes:define-output list-code-security-integrations-response
                                 common-lisp:nil
                                 ((integrations :target-type
                                   integration-summaries :member-name
                                   "integrations")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListCodeSecurityIntegrationsResponse"))

(smithy/sdk/shapes:define-input
 list-code-security-scan-configuration-associations-request common-lisp:nil
 ((scan-configuration-arn :target-type scan-configuration-arn :required
   common-lisp:t :member-name "scanConfigurationArn")
  (next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken")
  (max-results :target-type smithy/sdk/smithy-types:integer :member-name
   "maxResults" :http-query "maxResults"))
 (:shape-name "ListCodeSecurityScanConfigurationAssociationsRequest"))

(smithy/sdk/shapes:define-output
 list-code-security-scan-configuration-associations-response common-lisp:nil
 ((associations :target-type
   code-security-scan-configuration-association-summaries :member-name
   "associations")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListCodeSecurityScanConfigurationAssociationsResponse"))

(smithy/sdk/shapes:define-input list-code-security-scan-configurations-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name
                                 "ListCodeSecurityScanConfigurationsRequest"))

(smithy/sdk/shapes:define-output
 list-code-security-scan-configurations-response common-lisp:nil
 ((configurations :target-type code-security-scan-configuration-summaries
   :member-name "configurations")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListCodeSecurityScanConfigurationsResponse"))

(smithy/sdk/shapes:define-type list-coverage-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-coverage-request common-lisp:nil
                                    ((max-results :target-type
                                      list-coverage-max-results :member-name
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (filter-criteria :target-type
                                      coverage-filter-criteria :member-name
                                      "filterCriteria"))
                                    (:shape-name "ListCoverageRequest"))

(smithy/sdk/shapes:define-structure list-coverage-response common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (covered-resources :target-type
                                      covered-resources :member-name
                                      "coveredResources"))
                                    (:shape-name "ListCoverageResponse"))

(smithy/sdk/shapes:define-structure list-coverage-statistics-request
                                    common-lisp:nil
                                    ((filter-criteria :target-type
                                      coverage-filter-criteria :member-name
                                      "filterCriteria")
                                     (group-by :target-type group-key
                                      :member-name "groupBy")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListCoverageStatisticsRequest"))

(smithy/sdk/shapes:define-structure list-coverage-statistics-response
                                    common-lisp:nil
                                    ((counts-by-group :target-type counts-list
                                      :member-name "countsByGroup")
                                     (total-counts :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "totalCounts")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListCoverageStatisticsResponse"))

(smithy/sdk/shapes:define-structure list-delegated-admin-accounts-request
                                    common-lisp:nil
                                    ((max-results :target-type
                                      list-delegated-admin-max-results
                                      :member-name "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListDelegatedAdminAccountsRequest"))

(smithy/sdk/shapes:define-structure list-delegated-admin-accounts-response
                                    common-lisp:nil
                                    ((delegated-admin-accounts :target-type
                                      delegated-admin-account-list :member-name
                                      "delegatedAdminAccounts")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListDelegatedAdminAccountsResponse"))

(smithy/sdk/shapes:define-type list-delegated-admin-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type list-filter-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-filters-request common-lisp:nil
                                    ((arns :target-type filter-arn-list
                                      :member-name "arns")
                                     (action :target-type filter-action
                                      :member-name "action")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      list-filter-max-results :member-name
                                      "maxResults"))
                                    (:shape-name "ListFiltersRequest"))

(smithy/sdk/shapes:define-structure list-filters-response common-lisp:nil
                                    ((filters :target-type filter-list
                                      :required common-lisp:t :member-name
                                      "filters")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListFiltersResponse"))

(smithy/sdk/shapes:define-type list-finding-aggregations-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-finding-aggregations-request
                                    common-lisp:nil
                                    ((aggregation-type :target-type
                                      aggregation-type :required common-lisp:t
                                      :member-name "aggregationType")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type
                                      list-finding-aggregations-max-results
                                      :member-name "maxResults")
                                     (account-ids :target-type
                                      string-filter-list :member-name
                                      "accountIds")
                                     (aggregation-request :target-type
                                      aggregation-request :member-name
                                      "aggregationRequest"))
                                    (:shape-name
                                     "ListFindingAggregationsRequest"))

(smithy/sdk/shapes:define-structure list-finding-aggregations-response
                                    common-lisp:nil
                                    ((aggregation-type :target-type
                                      aggregation-type :required common-lisp:t
                                      :member-name "aggregationType")
                                     (responses :target-type
                                      aggregation-response-list :member-name
                                      "responses")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListFindingAggregationsResponse"))

(smithy/sdk/shapes:define-type list-findings-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-findings-request common-lisp:nil
                                    ((max-results :target-type
                                      list-findings-max-results :member-name
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (filter-criteria :target-type
                                      filter-criteria :member-name
                                      "filterCriteria")
                                     (sort-criteria :target-type sort-criteria
                                      :member-name "sortCriteria"))
                                    (:shape-name "ListFindingsRequest"))

(smithy/sdk/shapes:define-structure list-findings-response common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (findings :target-type finding-list
                                      :member-name "findings"))
                                    (:shape-name "ListFindingsResponse"))

(smithy/sdk/shapes:define-type list-members-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-members-request common-lisp:nil
                                    ((only-associated :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "onlyAssociated")
                                     (max-results :target-type
                                      list-members-max-results :member-name
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListMembersRequest"))

(smithy/sdk/shapes:define-structure list-members-response common-lisp:nil
                                    ((members :target-type member-list
                                      :member-name "members")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListMembersResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type list-usage-totals-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type list-usage-totals-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-usage-totals-request common-lisp:nil
                                    ((max-results :target-type
                                      list-usage-totals-max-results
                                      :member-name "maxResults")
                                     (next-token :target-type
                                      list-usage-totals-next-token :member-name
                                      "nextToken")
                                     (account-ids :target-type
                                      usage-account-id-list :member-name
                                      "accountIds"))
                                    (:shape-name "ListUsageTotalsRequest"))

(smithy/sdk/shapes:define-structure list-usage-totals-response common-lisp:nil
                                    ((next-token :target-type
                                      list-usage-totals-next-token :member-name
                                      "nextToken")
                                     (totals :target-type usage-total-list
                                      :member-name "totals"))
                                    (:shape-name "ListUsageTotalsResponse"))

(smithy/sdk/shapes:define-type map-comparison smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure map-filter common-lisp:nil
                                    ((comparison :target-type map-comparison
                                      :required common-lisp:t :member-name
                                      "comparison")
                                     (key :target-type map-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type map-value :member-name
                                      "value"))
                                    (:shape-name "MapFilter"))

(smithy/sdk/shapes:define-list map-filter-list :member map-filter)

(smithy/sdk/shapes:define-type map-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type map-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure member common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "accountId")
                                     (relationship-status :target-type
                                      relationship-status :member-name
                                      "relationshipStatus")
                                     (delegated-admin-account-id :target-type
                                      account-id :member-name
                                      "delegatedAdminAccountId")
                                     (updated-at :target-type
                                      date-time-timestamp :member-name
                                      "updatedAt"))
                                    (:shape-name "Member"))

(smithy/sdk/shapes:define-structure member-account-ec2deep-inspection-status
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId")
                                     (activate-deep-inspection :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "activateDeepInspection"))
                                    (:shape-name
                                     "MemberAccountEc2DeepInspectionStatus"))

(smithy/sdk/shapes:define-list member-account-ec2deep-inspection-status-list
                               :member member-account-ec2deep-inspection-status)

(smithy/sdk/shapes:define-structure
 member-account-ec2deep-inspection-status-state common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "accountId")
  (status :target-type ec2deep-inspection-status :member-name "status")
  (error-message :target-type non-empty-string :member-name "errorMessage"))
 (:shape-name "MemberAccountEc2DeepInspectionStatusState"))

(smithy/sdk/shapes:define-list
 member-account-ec2deep-inspection-status-state-list :member
 member-account-ec2deep-inspection-status-state)

(smithy/sdk/shapes:define-list member-list :member member)

(smithy/sdk/shapes:define-type metering-account-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list metering-account-id-list :member
                               metering-account-id)

(smithy/sdk/shapes:define-type monthly-cost-estimate
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure monthly-schedule common-lisp:nil
                                    ((start-time :target-type time :required
                                      common-lisp:t :member-name "startTime")
                                     (day :target-type day :required
                                      common-lisp:t :member-name "day"))
                                    (:shape-name "MonthlySchedule"))

(smithy/sdk/shapes:define-structure network-path common-lisp:nil
                                    ((steps :target-type step-list :member-name
                                      "steps"))
                                    (:shape-name "NetworkPath"))

(smithy/sdk/shapes:define-type network-protocol smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-reachability-details
                                    common-lisp:nil
                                    ((open-port-range :target-type port-range
                                      :required common-lisp:t :member-name
                                      "openPortRange")
                                     (protocol :target-type network-protocol
                                      :required common-lisp:t :member-name
                                      "protocol")
                                     (network-path :target-type network-path
                                      :required common-lisp:t :member-name
                                      "networkPath"))
                                    (:shape-name "NetworkReachabilityDetails"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list non-empty-string-list :member non-empty-string)

(smithy/sdk/shapes:define-structure number-filter common-lisp:nil
                                    ((upper-inclusive :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "upperInclusive")
                                     (lower-inclusive :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "lowerInclusive"))
                                    (:shape-name "NumberFilter"))

(smithy/sdk/shapes:define-list number-filter-list :member number-filter)

(smithy/sdk/shapes:define-list one-account-id-filter-list :member
                               cis-string-filter)

(smithy/sdk/shapes:define-structure one-time-schedule common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "OneTimeSchedule"))

(smithy/sdk/shapes:define-type operation smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type owner-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure package-aggregation common-lisp:nil
                                    ((package-names :target-type
                                      string-filter-list :member-name
                                      "packageNames")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder")
                                     (sort-by :target-type package-sort-by
                                      :member-name "sortBy"))
                                    (:shape-name "PackageAggregation"))

(smithy/sdk/shapes:define-structure package-aggregation-response
                                    common-lisp:nil
                                    ((package-name :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "packageName")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts"))
                                    (:shape-name "PackageAggregationResponse"))

(smithy/sdk/shapes:define-type package-architecture
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-epoch smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure package-filter common-lisp:nil
                                    ((name :target-type string-filter
                                      :member-name "name")
                                     (version :target-type string-filter
                                      :member-name "version")
                                     (epoch :target-type number-filter
                                      :member-name "epoch")
                                     (release :target-type string-filter
                                      :member-name "release")
                                     (architecture :target-type string-filter
                                      :member-name "architecture")
                                     (source-layer-hash :target-type
                                      string-filter :member-name
                                      "sourceLayerHash")
                                     (source-lambda-layer-arn :target-type
                                      string-filter :member-name
                                      "sourceLambdaLayerArn")
                                     (file-path :target-type string-filter
                                      :member-name "filePath"))
                                    (:shape-name "PackageFilter"))

(smithy/sdk/shapes:define-list package-filter-list :member package-filter)

(smithy/sdk/shapes:define-type package-manager smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-release smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-sort-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure package-vulnerability-details
                                    common-lisp:nil
                                    ((vulnerability-id :target-type
                                      vulnerability-id :required common-lisp:t
                                      :member-name "vulnerabilityId")
                                     (vulnerable-packages :target-type
                                      vulnerable-package-list :member-name
                                      "vulnerablePackages")
                                     (source :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "source")
                                     (cvss :target-type cvss-score-list
                                      :member-name "cvss")
                                     (related-vulnerabilities :target-type
                                      vulnerability-id-list :member-name
                                      "relatedVulnerabilities")
                                     (source-url :target-type non-empty-string
                                      :member-name "sourceUrl")
                                     (vendor-severity :target-type
                                      non-empty-string :member-name
                                      "vendorSeverity")
                                     (vendor-created-at :target-type
                                      date-time-timestamp :member-name
                                      "vendorCreatedAt")
                                     (vendor-updated-at :target-type
                                      date-time-timestamp :member-name
                                      "vendorUpdatedAt")
                                     (reference-urls :target-type
                                      non-empty-string-list :member-name
                                      "referenceUrls"))
                                    (:shape-name "PackageVulnerabilityDetails"))

(smithy/sdk/shapes:define-type path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list path-list :member path)

(smithy/sdk/shapes:define-structure periodic-scan-configuration common-lisp:nil
                                    ((frequency :target-type
                                      periodic-scan-frequency :member-name
                                      "frequency")
                                     (frequency-expression :target-type
                                      frequency-expression :member-name
                                      "frequencyExpression"))
                                    (:shape-name "PeriodicScanConfiguration"))

(smithy/sdk/shapes:define-enum periodic-scan-frequency
    common-lisp:nil
  (:weekly "WEEKLY")
  (:monthly "MONTHLY")
  (:never "NEVER"))

(smithy/sdk/shapes:define-structure permission common-lisp:nil
                                    ((service :target-type service :required
                                      common-lisp:t :member-name "service")
                                     (operation :target-type operation
                                      :required common-lisp:t :member-name
                                      "operation"))
                                    (:shape-name "Permission"))

(smithy/sdk/shapes:define-list permissions :member permission)

(smithy/sdk/shapes:define-type platform smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list platform-filter-list :member cis-string-filter)

(smithy/sdk/shapes:define-type platform-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure port-range common-lisp:nil
                                    ((begin :target-type port :required
                                      common-lisp:t :member-name "begin")
                                     (end :target-type port :required
                                      common-lisp:t :member-name "end"))
                                    (:shape-name "PortRange"))

(smithy/sdk/shapes:define-structure port-range-filter common-lisp:nil
                                    ((begin-inclusive :target-type port
                                      :member-name "beginInclusive")
                                     (end-inclusive :target-type port
                                      :member-name "endInclusive"))
                                    (:shape-name "PortRangeFilter"))

(smithy/sdk/shapes:define-list port-range-filter-list :member port-range-filter)

(smithy/sdk/shapes:define-type product smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure project-code-security-scan-configuration
                                    common-lisp:nil
                                    ((periodic-scan-configurations :target-type
                                      project-periodic-scan-configuration-list
                                      :member-name
                                      "periodicScanConfigurations")
                                     (continuous-integration-scan-configurations
                                      :target-type
                                      project-continuous-integration-scan-configuration-list
                                      :member-name
                                      "continuousIntegrationScanConfigurations"))
                                    (:shape-name
                                     "ProjectCodeSecurityScanConfiguration"))

(smithy/sdk/shapes:define-structure
 project-continuous-integration-scan-configuration common-lisp:nil
 ((supported-event :target-type continuous-integration-scan-event :member-name
   "supportedEvent")
  (rule-set-categories :target-type rule-set-categories :member-name
   "ruleSetCategories"))
 (:shape-name "ProjectContinuousIntegrationScanConfiguration"))

(smithy/sdk/shapes:define-list
 project-continuous-integration-scan-configuration-list :member
 project-continuous-integration-scan-configuration)

(smithy/sdk/shapes:define-type project-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure project-periodic-scan-configuration
                                    common-lisp:nil
                                    ((frequency-expression :target-type
                                      frequency-expression :member-name
                                      "frequencyExpression")
                                     (rule-set-categories :target-type
                                      rule-set-categories :member-name
                                      "ruleSetCategories"))
                                    (:shape-name
                                     "ProjectPeriodicScanConfiguration"))

(smithy/sdk/shapes:define-list project-periodic-scan-configuration-list :member
                               project-periodic-scan-configuration)

(smithy/sdk/shapes:define-enum project-selection-scope
    common-lisp:nil
  (:all "ALL"))

(smithy/sdk/shapes:define-type reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure recommendation common-lisp:nil
                                    ((text :target-type non-empty-string
                                      :member-name "text")
                                     (url :target-type non-empty-string
                                      :member-name "Url"))
                                    (:shape-name "Recommendation"))

(smithy/sdk/shapes:define-list reference-urls :member non-empty-string)

(smithy/sdk/shapes:define-list related-vulnerabilities :member
                               related-vulnerability)

(smithy/sdk/shapes:define-type related-vulnerability
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type relationship-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure remediation common-lisp:nil
                                    ((recommendation :target-type
                                      recommendation :member-name
                                      "recommendation"))
                                    (:shape-name "Remediation"))

(smithy/sdk/shapes:define-type report-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type report-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list report-target-accounts :member account-id)

(smithy/sdk/shapes:define-type reporting-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure repository-aggregation common-lisp:nil
                                    ((repositories :target-type
                                      string-filter-list :member-name
                                      "repositories")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder")
                                     (sort-by :target-type repository-sort-by
                                      :member-name "sortBy"))
                                    (:shape-name "RepositoryAggregation"))

(smithy/sdk/shapes:define-structure repository-aggregation-response
                                    common-lisp:nil
                                    ((repository :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "repository")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts")
                                     (affected-images :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "affectedImages"))
                                    (:shape-name
                                     "RepositoryAggregationResponse"))

(smithy/sdk/shapes:define-type repository-sort-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input reset-encryption-key-request common-lisp:nil
                                ((scan-type :target-type scan-type :required
                                  common-lisp:t :member-name "scanType")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType"))
                                (:shape-name "ResetEncryptionKeyRequest"))

(smithy/sdk/shapes:define-output reset-encryption-key-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ResetEncryptionKeyResponse"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((type :target-type resource-type :required
                                      common-lisp:t :member-name "type")
                                     (id :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "id")
                                     (partition :target-type non-empty-string
                                      :member-name "partition")
                                     (region :target-type non-empty-string
                                      :member-name "region")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (details :target-type resource-details
                                      :member-name "details"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-structure resource-details common-lisp:nil
                                    ((aws-ec2instance :target-type
                                      aws-ec2instance-details :member-name
                                      "awsEc2Instance")
                                     (aws-ecr-container-image :target-type
                                      aws-ecr-container-image-details
                                      :member-name "awsEcrContainerImage")
                                     (aws-lambda-function :target-type
                                      aws-lambda-function-details :member-name
                                      "awsLambdaFunction")
                                     (code-repository :target-type
                                      code-repository-details :member-name
                                      "codeRepository"))
                                    (:shape-name "ResourceDetails"))

(smithy/sdk/shapes:define-structure resource-filter-criteria common-lisp:nil
                                    ((account-id :target-type
                                      resource-string-filter-list :member-name
                                      "accountId")
                                     (resource-id :target-type
                                      resource-string-filter-list :member-name
                                      "resourceId")
                                     (resource-type :target-type
                                      resource-string-filter-list :member-name
                                      "resourceType")
                                     (ecr-repository-name :target-type
                                      resource-string-filter-list :member-name
                                      "ecrRepositoryName")
                                     (lambda-function-name :target-type
                                      resource-string-filter-list :member-name
                                      "lambdaFunctionName")
                                     (ecr-image-tags :target-type
                                      resource-string-filter-list :member-name
                                      "ecrImageTags")
                                     (ec2instance-tags :target-type
                                      resource-map-filter-list :member-name
                                      "ec2InstanceTags")
                                     (lambda-function-tags :target-type
                                      resource-map-filter-list :member-name
                                      "lambdaFunctionTags"))
                                    (:shape-name "ResourceFilterCriteria"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-id-filter-list :member
                               cis-string-filter)

(smithy/sdk/shapes:define-list resource-list :member resource)

(smithy/sdk/shapes:define-type resource-map-comparison
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-map-filter common-lisp:nil
                                    ((comparison :target-type
                                      resource-map-comparison :required
                                      common-lisp:t :member-name "comparison")
                                     (key :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "key")
                                     (value :target-type non-empty-string
                                      :member-name "value"))
                                    (:shape-name "ResourceMapFilter"))

(smithy/sdk/shapes:define-list resource-map-filter-list :member
                               resource-map-filter)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-scan-metadata common-lisp:nil
                                    ((ecr-repository :target-type
                                      ecr-repository-metadata :member-name
                                      "ecrRepository")
                                     (ecr-image :target-type
                                      ecr-container-image-metadata :member-name
                                      "ecrImage")
                                     (ec2 :target-type ec2metadata :member-name
                                      "ec2")
                                     (lambda-function :target-type
                                      lambda-function-metadata :member-name
                                      "lambdaFunction")
                                     (code-repository :target-type
                                      code-repository-metadata :member-name
                                      "codeRepository"))
                                    (:shape-name "ResourceScanMetadata"))

(smithy/sdk/shapes:define-type resource-scan-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-state common-lisp:nil
                                    ((ec2 :target-type state :required
                                      common-lisp:t :member-name "ec2")
                                     (ecr :target-type state :required
                                      common-lisp:t :member-name "ecr")
                                     (lambda :target-type state :member-name
                                      "lambda")
                                     (lambda-code :target-type state
                                      :member-name "lambdaCode")
                                     (code-repository :target-type state
                                      :member-name "codeRepository"))
                                    (:shape-name "ResourceState"))

(smithy/sdk/shapes:define-structure resource-status common-lisp:nil
                                    ((ec2 :target-type status :required
                                      common-lisp:t :member-name "ec2")
                                     (ecr :target-type status :required
                                      common-lisp:t :member-name "ecr")
                                     (lambda :target-type status :member-name
                                      "lambda")
                                     (lambda-code :target-type status
                                      :member-name "lambdaCode")
                                     (code-repository :target-type status
                                      :member-name "codeRepository"))
                                    (:shape-name "ResourceStatus"))

(smithy/sdk/shapes:define-type resource-string-comparison
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-string-filter common-lisp:nil
                                    ((comparison :target-type
                                      resource-string-comparison :required
                                      common-lisp:t :member-name "comparison")
                                     (value :target-type resource-string-input
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "ResourceStringFilter"))

(smithy/sdk/shapes:define-list resource-string-filter-list :member
                               resource-string-filter)

(smithy/sdk/shapes:define-type resource-string-input
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-tag-filter-list :member tag-filter)

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type risk-score smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type rule-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list rule-set-categories :member rule-set-category)

(smithy/sdk/shapes:define-enum rule-set-category
    common-lisp:nil
  (:sast "SAST")
  (:iac "IAC")
  (:sca "SCA"))

(smithy/sdk/shapes:define-type runtime smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sbom-report-format
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type scan-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type scan-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type scan-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scan-status common-lisp:nil
                                    ((status-code :target-type scan-status-code
                                      :required common-lisp:t :member-name
                                      "statusCode")
                                     (reason :target-type scan-status-reason
                                      :required common-lisp:t :member-name
                                      "reason"))
                                    (:shape-name "ScanStatus"))

(smithy/sdk/shapes:define-type scan-status-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type scan-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type scan-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union schedule common-lisp:nil
                                ((one-time :target-type one-time-schedule
                                  :member-name "oneTime")
                                 (daily :target-type daily-schedule
                                  :member-name "daily")
                                 (weekly :target-type weekly-schedule
                                  :member-name "weekly")
                                 (monthly :target-type monthly-schedule
                                  :member-name "monthly"))
                                (:shape-name "Schedule"))

(smithy/sdk/shapes:define-structure scope-settings common-lisp:nil
                                    ((project-selection-scope :target-type
                                      project-selection-scope :member-name
                                      "projectSelectionScope"))
                                    (:shape-name "ScopeSettings"))

(smithy/sdk/shapes:define-structure search-vulnerabilities-filter-criteria
                                    common-lisp:nil
                                    ((vulnerability-ids :target-type
                                      vuln-id-list :required common-lisp:t
                                      :member-name "vulnerabilityIds"))
                                    (:shape-name
                                     "SearchVulnerabilitiesFilterCriteria"))

(smithy/sdk/shapes:define-input search-vulnerabilities-request common-lisp:nil
                                ((filter-criteria :target-type
                                  search-vulnerabilities-filter-criteria
                                  :required common-lisp:t :member-name
                                  "filterCriteria")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "SearchVulnerabilitiesRequest"))

(smithy/sdk/shapes:define-output search-vulnerabilities-response
                                 common-lisp:nil
                                 ((vulnerabilities :target-type vulnerabilities
                                   :required common-lisp:t :member-name
                                   "vulnerabilities")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "SearchVulnerabilitiesResponse"))

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-id-list :member security-group-id)

(smithy/sdk/shapes:define-input send-cis-session-health-request common-lisp:nil
                                ((scan-job-id :target-type uuid :required
                                  common-lisp:t :member-name "scanJobId")
                                 (session-token :target-type uuid :required
                                  common-lisp:t :member-name "sessionToken"))
                                (:shape-name "SendCisSessionHealthRequest"))

(smithy/sdk/shapes:define-output send-cis-session-health-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "SendCisSessionHealthResponse"))

(smithy/sdk/shapes:define-input send-cis-session-telemetry-request
                                common-lisp:nil
                                ((scan-job-id :target-type uuid :required
                                  common-lisp:t :member-name "scanJobId")
                                 (session-token :target-type uuid :required
                                  common-lisp:t :member-name "sessionToken")
                                 (messages :target-type cis-session-messages
                                  :required common-lisp:t :member-name
                                  "messages"))
                                (:shape-name "SendCisSessionTelemetryRequest"))

(smithy/sdk/shapes:define-output send-cis-session-telemetry-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "SendCisSessionTelemetryResponse"))

(smithy/sdk/shapes:define-type service smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type severity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure severity-counts common-lisp:nil
                                    ((all :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "all")
                                     (medium :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "medium")
                                     (high :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "high")
                                     (critical :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "critical"))
                                    (:shape-name "SeverityCounts"))

(smithy/sdk/shapes:define-structure sort-criteria common-lisp:nil
                                    ((field :target-type sort-field :required
                                      common-lisp:t :member-name "field")
                                     (sort-order :target-type sort-order
                                      :required common-lisp:t :member-name
                                      "sortOrder"))
                                    (:shape-name "SortCriteria"))

(smithy/sdk/shapes:define-type sort-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sort-order smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-layer-hash smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure start-cis-session-message common-lisp:nil
                                    ((session-token :target-type uuid :required
                                      common-lisp:t :member-name
                                      "sessionToken"))
                                    (:shape-name "StartCisSessionMessage"))

(smithy/sdk/shapes:define-input start-cis-session-request common-lisp:nil
                                ((scan-job-id :target-type uuid :required
                                  common-lisp:t :member-name "scanJobId")
                                 (message :target-type
                                  start-cis-session-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "StartCisSessionRequest"))

(smithy/sdk/shapes:define-output start-cis-session-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartCisSessionResponse"))

(smithy/sdk/shapes:define-input start-code-security-scan-request
                                common-lisp:nil
                                ((client-token :target-type
                                  code-security-client-token :member-name
                                  "clientToken")
                                 (resource :target-type code-security-resource
                                  :required common-lisp:t :member-name
                                  "resource"))
                                (:shape-name "StartCodeSecurityScanRequest"))

(smithy/sdk/shapes:define-output start-code-security-scan-response
                                 common-lisp:nil
                                 ((scan-id :target-type code-security-uuid
                                   :member-name "scanId")
                                  (status :target-type code-scan-status
                                   :member-name "status"))
                                 (:shape-name "StartCodeSecurityScanResponse"))

(smithy/sdk/shapes:define-structure state common-lisp:nil
                                    ((status :target-type status :required
                                      common-lisp:t :member-name "status")
                                     (error-code :target-type error-code
                                      :required common-lisp:t :member-name
                                      "errorCode")
                                     (error-message :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "errorMessage"))
                                    (:shape-name "State"))

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure status-counts common-lisp:nil
                                    ((failed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "failed")
                                     (skipped :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "skipped")
                                     (passed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "passed"))
                                    (:shape-name "StatusCounts"))

(smithy/sdk/shapes:define-structure step common-lisp:nil
                                    ((component-id :target-type component
                                      :required common-lisp:t :member-name
                                      "componentId")
                                     (component-type :target-type
                                      component-type :required common-lisp:t
                                      :member-name "componentType")
                                     (component-arn :target-type component-arn
                                      :member-name "componentArn"))
                                    (:shape-name "Step"))

(smithy/sdk/shapes:define-list step-list :member step)

(smithy/sdk/shapes:define-structure stop-cis-message-progress common-lisp:nil
                                    ((total-checks :target-type check-count
                                      :member-name "totalChecks")
                                     (successful-checks :target-type
                                      check-count :member-name
                                      "successfulChecks")
                                     (failed-checks :target-type check-count
                                      :member-name "failedChecks")
                                     (not-evaluated-checks :target-type
                                      check-count :member-name
                                      "notEvaluatedChecks")
                                     (unknown-checks :target-type check-count
                                      :member-name "unknownChecks")
                                     (not-applicable-checks :target-type
                                      check-count :member-name
                                      "notApplicableChecks")
                                     (informational-checks :target-type
                                      check-count :member-name
                                      "informationalChecks")
                                     (error-checks :target-type check-count
                                      :member-name "errorChecks"))
                                    (:shape-name "StopCisMessageProgress"))

(smithy/sdk/shapes:define-structure stop-cis-session-message common-lisp:nil
                                    ((status :target-type
                                      stop-cis-session-status :required
                                      common-lisp:t :member-name "status")
                                     (reason :target-type reason :member-name
                                      "reason")
                                     (progress :target-type
                                      stop-cis-message-progress :required
                                      common-lisp:t :member-name "progress")
                                     (compute-platform :target-type
                                      compute-platform :member-name
                                      "computePlatform")
                                     (benchmark-version :target-type
                                      benchmark-version :member-name
                                      "benchmarkVersion")
                                     (benchmark-profile :target-type
                                      benchmark-profile :member-name
                                      "benchmarkProfile"))
                                    (:shape-name "StopCisSessionMessage"))

(smithy/sdk/shapes:define-input stop-cis-session-request common-lisp:nil
                                ((scan-job-id :target-type uuid :required
                                  common-lisp:t :member-name "scanJobId")
                                 (session-token :target-type uuid :required
                                  common-lisp:t :member-name "sessionToken")
                                 (message :target-type stop-cis-session-message
                                  :required common-lisp:t :member-name
                                  "message"))
                                (:shape-name "StopCisSessionRequest"))

(smithy/sdk/shapes:define-output stop-cis-session-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopCisSessionResponse"))

(smithy/sdk/shapes:define-enum stop-cis-session-status
    common-lisp:nil
  (:success "SUCCESS")
  (:failed "FAILED")
  (:interrupted "INTERRUPTED")
  (:unsupported-os "UNSUPPORTED_OS"))

(smithy/sdk/shapes:define-type string-comparison smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure string-filter common-lisp:nil
                                    ((comparison :target-type string-comparison
                                      :required common-lisp:t :member-name
                                      "comparison")
                                     (value :target-type string-input :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "StringFilter"))

(smithy/sdk/shapes:define-list string-filter-list :member string-filter)

(smithy/sdk/shapes:define-type string-input smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member non-empty-string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-id-list :member subnet-id)

(smithy/sdk/shapes:define-structure successful-association-result
                                    common-lisp:nil
                                    ((scan-configuration-arn :target-type
                                      scan-configuration-arn :member-name
                                      "scanConfigurationArn")
                                     (resource :target-type
                                      code-security-resource :member-name
                                      "resource"))
                                    (:shape-name "SuccessfulAssociationResult"))

(smithy/sdk/shapes:define-list successful-association-result-list :member
                               successful-association-result)

(smithy/sdk/shapes:define-structure suggested-fix common-lisp:nil
                                    ((description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "code"))
                                    (:shape-name "SuggestedFix"))

(smithy/sdk/shapes:define-list suggested-fixes :member suggested-fix)

(smithy/sdk/shapes:define-enum tag-comparison
    common-lisp:nil
  (:equals "EQUALS"))

(smithy/sdk/shapes:define-structure tag-filter common-lisp:nil
                                    ((comparison :target-type tag-comparison
                                      :required common-lisp:t :member-name
                                      "comparison")
                                     (key :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "key")
                                     (value :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "TagFilter"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tag-map :key map-key :value map-value)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-list tag-value-list :member
                               target-resource-tags-value)

(smithy/sdk/shapes:define-type target smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-account smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-account-list :member target-account)

(smithy/sdk/shapes:define-map target-resource-tags :key
                              target-resource-tags-key :value tag-value-list)

(smithy/sdk/shapes:define-type target-resource-tags-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-resource-tags-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-status-filter-list :member
                               cis-target-status-filter)

(smithy/sdk/shapes:define-list target-status-reason-filter-list :member
                               cis-target-status-reason-filter)

(smithy/sdk/shapes:define-list targets :member target)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure time common-lisp:nil
                                    ((time-of-day :target-type time-of-day
                                      :required common-lisp:t :member-name
                                      "timeOfDay")
                                     (timezone :target-type timezone :required
                                      common-lisp:t :member-name "timezone"))
                                    (:shape-name "Time"))

(smithy/sdk/shapes:define-type time-of-day smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timezone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure title-aggregation common-lisp:nil
                                    ((titles :target-type string-filter-list
                                      :member-name "titles")
                                     (vulnerability-ids :target-type
                                      string-filter-list :member-name
                                      "vulnerabilityIds")
                                     (resource-type :target-type
                                      aggregation-resource-type :member-name
                                      "resourceType")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder")
                                     (sort-by :target-type title-sort-by
                                      :member-name "sortBy")
                                     (finding-type :target-type
                                      aggregation-finding-type :member-name
                                      "findingType"))
                                    (:shape-name "TitleAggregation"))

(smithy/sdk/shapes:define-structure title-aggregation-response common-lisp:nil
                                    ((title :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "title")
                                     (vulnerability-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vulnerabilityId")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts"))
                                    (:shape-name "TitleAggregationResponse"))

(smithy/sdk/shapes:define-list title-filter-list :member cis-string-filter)

(smithy/sdk/shapes:define-type title-sort-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tool smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tools :member tool)

(smithy/sdk/shapes:define-type ttp smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ttps :member ttp)

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "tagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-cis-scan-configuration-request
                                common-lisp:nil
                                ((scan-configuration-arn :target-type
                                  cis-scan-configuration-arn :required
                                  common-lisp:t :member-name
                                  "scanConfigurationArn")
                                 (scan-name :target-type cis-scan-name
                                  :member-name "scanName")
                                 (security-level :target-type
                                  cis-security-level :member-name
                                  "securityLevel")
                                 (schedule :target-type schedule :member-name
                                  "schedule")
                                 (targets :target-type update-cis-targets
                                  :member-name "targets"))
                                (:shape-name
                                 "UpdateCisScanConfigurationRequest"))

(smithy/sdk/shapes:define-output update-cis-scan-configuration-response
                                 common-lisp:nil
                                 ((scan-configuration-arn :target-type
                                   cis-scan-configuration-arn :required
                                   common-lisp:t :member-name
                                   "scanConfigurationArn"))
                                 (:shape-name
                                  "UpdateCisScanConfigurationResponse"))

(smithy/sdk/shapes:define-structure update-cis-targets common-lisp:nil
                                    ((account-ids :target-type
                                      target-account-list :member-name
                                      "accountIds")
                                     (target-resource-tags :target-type
                                      target-resource-tags :member-name
                                      "targetResourceTags"))
                                    (:shape-name "UpdateCisTargets"))

(smithy/sdk/shapes:define-input update-code-security-integration-request
                                common-lisp:nil
                                ((integration-arn :target-type
                                  code-security-integration-arn :required
                                  common-lisp:t :member-name "integrationArn")
                                 (details :target-type
                                  update-integration-details :required
                                  common-lisp:t :member-name "details"))
                                (:shape-name
                                 "UpdateCodeSecurityIntegrationRequest"))

(smithy/sdk/shapes:define-output update-code-security-integration-response
                                 common-lisp:nil
                                 ((integration-arn :target-type
                                   code-security-integration-arn :required
                                   common-lisp:t :member-name "integrationArn")
                                  (status :target-type integration-status
                                   :required common-lisp:t :member-name
                                   "status"))
                                 (:shape-name
                                  "UpdateCodeSecurityIntegrationResponse"))

(smithy/sdk/shapes:define-input update-code-security-scan-configuration-request
                                common-lisp:nil
                                ((scan-configuration-arn :target-type
                                  scan-configuration-arn :required
                                  common-lisp:t :member-name
                                  "scanConfigurationArn")
                                 (configuration :target-type
                                  code-security-scan-configuration :required
                                  common-lisp:t :member-name "configuration"))
                                (:shape-name
                                 "UpdateCodeSecurityScanConfigurationRequest"))

(smithy/sdk/shapes:define-output
 update-code-security-scan-configuration-response common-lisp:nil
 ((scan-configuration-arn :target-type scan-configuration-arn :member-name
   "scanConfigurationArn"))
 (:shape-name "UpdateCodeSecurityScanConfigurationResponse"))

(smithy/sdk/shapes:define-structure update-configuration-request
                                    common-lisp:nil
                                    ((ecr-configuration :target-type
                                      ecr-configuration :member-name
                                      "ecrConfiguration")
                                     (ec2configuration :target-type
                                      ec2configuration :member-name
                                      "ec2Configuration"))
                                    (:shape-name "UpdateConfigurationRequest"))

(smithy/sdk/shapes:define-structure update-configuration-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "UpdateConfigurationResponse"))

(smithy/sdk/shapes:define-input update-ec2deep-inspection-configuration-request
                                common-lisp:nil
                                ((activate-deep-inspection :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "activateDeepInspection")
                                 (package-paths :target-type path-list
                                  :member-name "packagePaths"))
                                (:shape-name
                                 "UpdateEc2DeepInspectionConfigurationRequest"))

(smithy/sdk/shapes:define-output
 update-ec2deep-inspection-configuration-response common-lisp:nil
 ((package-paths :target-type path-list :member-name "packagePaths")
  (org-package-paths :target-type path-list :member-name "orgPackagePaths")
  (status :target-type ec2deep-inspection-status :member-name "status")
  (error-message :target-type non-empty-string :member-name "errorMessage"))
 (:shape-name "UpdateEc2DeepInspectionConfigurationResponse"))

(smithy/sdk/shapes:define-input update-encryption-key-request common-lisp:nil
                                ((kms-key-id :target-type kms-key-arn :required
                                  common-lisp:t :member-name "kmsKeyId")
                                 (scan-type :target-type scan-type :required
                                  common-lisp:t :member-name "scanType")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType"))
                                (:shape-name "UpdateEncryptionKeyRequest"))

(smithy/sdk/shapes:define-output update-encryption-key-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateEncryptionKeyResponse"))

(smithy/sdk/shapes:define-structure update-filter-request common-lisp:nil
                                    ((action :target-type filter-action
                                      :member-name "action")
                                     (description :target-type
                                      filter-description :member-name
                                      "description")
                                     (filter-criteria :target-type
                                      filter-criteria :member-name
                                      "filterCriteria")
                                     (name :target-type filter-name
                                      :member-name "name")
                                     (filter-arn :target-type filter-arn
                                      :required common-lisp:t :member-name
                                      "filterArn")
                                     (reason :target-type filter-reason
                                      :member-name "reason"))
                                    (:shape-name "UpdateFilterRequest"))

(smithy/sdk/shapes:define-structure update-filter-response common-lisp:nil
                                    ((arn :target-type filter-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "UpdateFilterResponse"))

(smithy/sdk/shapes:define-structure update-git-hub-integration-detail
                                    common-lisp:nil
                                    ((code :target-type git-hub-auth-code
                                      :required common-lisp:t :member-name
                                      "code")
                                     (installation-id :target-type
                                      git-hub-installation-id :required
                                      common-lisp:t :member-name
                                      "installationId"))
                                    (:shape-name
                                     "UpdateGitHubIntegrationDetail"))

(smithy/sdk/shapes:define-structure
 update-git-lab-self-managed-integration-detail common-lisp:nil
 ((auth-code :target-type git-lab-auth-code :required common-lisp:t
   :member-name "authCode"))
 (:shape-name "UpdateGitLabSelfManagedIntegrationDetail"))

(smithy/sdk/shapes:define-union update-integration-details common-lisp:nil
                                ((gitlab-self-managed :target-type
                                  update-git-lab-self-managed-integration-detail
                                  :member-name "gitlabSelfManaged")
                                 (github :target-type
                                  update-git-hub-integration-detail
                                  :member-name "github"))
                                (:shape-name "UpdateIntegrationDetails"))

(smithy/sdk/shapes:define-input
 update-org-ec2deep-inspection-configuration-request common-lisp:nil
 ((org-package-paths :target-type path-list :required common-lisp:t
   :member-name "orgPackagePaths"))
 (:shape-name "UpdateOrgEc2DeepInspectionConfigurationRequest"))

(smithy/sdk/shapes:define-output
 update-org-ec2deep-inspection-configuration-response common-lisp:nil
 common-lisp:nil
 (:shape-name "UpdateOrgEc2DeepInspectionConfigurationResponse"))

(smithy/sdk/shapes:define-structure update-organization-configuration-request
                                    common-lisp:nil
                                    ((auto-enable :target-type auto-enable
                                      :required common-lisp:t :member-name
                                      "autoEnable"))
                                    (:shape-name
                                     "UpdateOrganizationConfigurationRequest"))

(smithy/sdk/shapes:define-structure update-organization-configuration-response
                                    common-lisp:nil
                                    ((auto-enable :target-type auto-enable
                                      :required common-lisp:t :member-name
                                      "autoEnable"))
                                    (:shape-name
                                     "UpdateOrganizationConfigurationResponse"))

(smithy/sdk/shapes:define-structure usage common-lisp:nil
                                    ((type :target-type usage-type :member-name
                                      "type")
                                     (total :target-type usage-value
                                      :member-name "total")
                                     (estimated-monthly-cost :target-type
                                      monthly-cost-estimate :member-name
                                      "estimatedMonthlyCost")
                                     (currency :target-type currency
                                      :member-name "currency"))
                                    (:shape-name "Usage"))

(smithy/sdk/shapes:define-type usage-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list usage-account-id-list :member usage-account-id)

(smithy/sdk/shapes:define-list usage-list :member usage)

(smithy/sdk/shapes:define-structure usage-total common-lisp:nil
                                    ((account-id :target-type
                                      metering-account-id :member-name
                                      "accountId")
                                     (usage :target-type usage-list
                                      :member-name "usage"))
                                    (:shape-name "UsageTotal"))

(smithy/sdk/shapes:define-list usage-total-list :member usage-total)

(smithy/sdk/shapes:define-type usage-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type usage-value smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (fields :target-type
                                  validation-exception-fields :member-name
                                  "fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-fields :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vendor smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vendor-created-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type vendor-severity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vendor-updated-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vuln-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vuln-id-list :member vuln-id)

(smithy/sdk/shapes:define-list vulnerabilities :member vulnerability)

(smithy/sdk/shapes:define-structure vulnerability common-lisp:nil
                                    ((id :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "id")
                                     (cwes :target-type cwes :member-name
                                      "cwes")
                                     (cisa-data :target-type cisa-data
                                      :member-name "cisaData")
                                     (source :target-type vulnerability-source
                                      :member-name "source")
                                     (description :target-type
                                      vulnerability-description :member-name
                                      "description")
                                     (atig-data :target-type atig-data
                                      :member-name "atigData")
                                     (vendor-severity :target-type
                                      vendor-severity :member-name
                                      "vendorSeverity")
                                     (cvss3 :target-type cvss3 :member-name
                                      "cvss3")
                                     (related-vulnerabilities :target-type
                                      related-vulnerabilities :member-name
                                      "relatedVulnerabilities")
                                     (cvss2 :target-type cvss2 :member-name
                                      "cvss2")
                                     (vendor-created-at :target-type
                                      vendor-created-at :member-name
                                      "vendorCreatedAt")
                                     (vendor-updated-at :target-type
                                      vendor-updated-at :member-name
                                      "vendorUpdatedAt")
                                     (source-url :target-type
                                      vulnerability-source-url :member-name
                                      "sourceUrl")
                                     (reference-urls :target-type
                                      vulnerability-reference-urls :member-name
                                      "referenceUrls")
                                     (exploit-observed :target-type
                                      exploit-observed :member-name
                                      "exploitObserved")
                                     (detection-platforms :target-type
                                      detection-platforms :member-name
                                      "detectionPlatforms")
                                     (epss :target-type epss :member-name
                                      "epss"))
                                    (:shape-name "Vulnerability"))

(smithy/sdk/shapes:define-type vulnerability-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vulnerability-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vulnerability-id-list :member vulnerability-id)

(smithy/sdk/shapes:define-type vulnerability-reference-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vulnerability-reference-urls :member
                               vulnerability-reference-url)

(smithy/sdk/shapes:define-type vulnerability-source
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vulnerability-source-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vulnerable-package common-lisp:nil
                                    ((name :target-type package-name :required
                                      common-lisp:t :member-name "name")
                                     (version :target-type package-version
                                      :required common-lisp:t :member-name
                                      "version")
                                     (source-layer-hash :target-type
                                      source-layer-hash :member-name
                                      "sourceLayerHash")
                                     (epoch :target-type package-epoch
                                      :member-name "epoch")
                                     (release :target-type package-release
                                      :member-name "release")
                                     (arch :target-type package-architecture
                                      :member-name "arch")
                                     (package-manager :target-type
                                      package-manager :member-name
                                      "packageManager")
                                     (file-path :target-type file-path
                                      :member-name "filePath")
                                     (fixed-in-version :target-type
                                      package-version :member-name
                                      "fixedInVersion")
                                     (remediation :target-type
                                      vulnerable-package-remediation
                                      :member-name "remediation")
                                     (source-lambda-layer-arn :target-type
                                      lambda-layer-arn :member-name
                                      "sourceLambdaLayerArn"))
                                    (:shape-name "VulnerablePackage"))

(smithy/sdk/shapes:define-list vulnerable-package-list :member
                               vulnerable-package)

(smithy/sdk/shapes:define-type vulnerable-package-remediation
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure weekly-schedule common-lisp:nil
                                    ((start-time :target-type time :required
                                      common-lisp:t :member-name "startTime")
                                     (days :target-type days-list :required
                                      common-lisp:t :member-name "days"))
                                    (:shape-name "WeeklySchedule"))

(smithy/sdk/operation:define-operation associate-member :shape-name
                                       "AssociateMember" :input
                                       associate-member-request :output
                                       associate-member-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/members/associate"
                                       :code 200)

(smithy/sdk/operation:define-operation
 batch-associate-code-security-scan-configuration :shape-name
 "BatchAssociateCodeSecurityScanConfiguration" :input
 batch-associate-code-security-scan-configuration-request :output
 batch-associate-code-security-scan-configuration-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri "/codesecurity/scan-configuration/batch/associate" :code
 200)

(smithy/sdk/operation:define-operation
 batch-disassociate-code-security-scan-configuration :shape-name
 "BatchDisassociateCodeSecurityScanConfiguration" :input
 batch-disassociate-code-security-scan-configuration-request :output
 batch-disassociate-code-security-scan-configuration-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri "/codesecurity/scan-configuration/batch/disassociate"
 :code 200)

(smithy/sdk/operation:define-operation batch-get-account-status :shape-name
                                       "BatchGetAccountStatus" :input
                                       batch-get-account-status-request :output
                                       batch-get-account-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/status/batch/get"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-get-code-snippet :shape-name
                                       "BatchGetCodeSnippet" :input
                                       batch-get-code-snippet-request :output
                                       batch-get-code-snippet-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/codesnippet/batchget" :code 200)

(smithy/sdk/operation:define-operation batch-get-finding-details :shape-name
                                       "BatchGetFindingDetails" :input
                                       batch-get-finding-details-request
                                       :output
                                       batch-get-finding-details-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/findings/details/batch/get" :code 200)

(smithy/sdk/operation:define-operation batch-get-free-trial-info :shape-name
                                       "BatchGetFreeTrialInfo" :input
                                       batch-get-free-trial-info-request
                                       :output
                                       batch-get-free-trial-info-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/freetrialinfo/batchget" :code 200)

(smithy/sdk/operation:define-operation
 batch-get-member-ec2deep-inspection-status :shape-name
 "BatchGetMemberEc2DeepInspectionStatus" :input
 batch-get-member-ec2deep-inspection-status-request :output
 batch-get-member-ec2deep-inspection-status-response :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception)
 :method "POST" :uri "/ec2deepinspectionstatus/member/batch/get" :code 200)

(smithy/sdk/operation:define-operation
 batch-update-member-ec2deep-inspection-status :shape-name
 "BatchUpdateMemberEc2DeepInspectionStatus" :input
 batch-update-member-ec2deep-inspection-status-request :output
 batch-update-member-ec2deep-inspection-status-response :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception)
 :method "POST" :uri "/ec2deepinspectionstatus/member/batch/update" :code 200)

(smithy/sdk/operation:define-operation cancel-findings-report :shape-name
                                       "CancelFindingsReport" :input
                                       cancel-findings-report-request :output
                                       cancel-findings-report-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/reporting/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-sbom-export :shape-name
                                       "CancelSbomExport" :input
                                       cancel-sbom-export-request :output
                                       cancel-sbom-export-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/sbomexport/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation create-cis-scan-configuration
                                       :shape-name "CreateCisScanConfiguration"
                                       :input
                                       create-cis-scan-configuration-request
                                       :output
                                       create-cis-scan-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/cis/scan-configuration/create" :code
                                       200)

(smithy/sdk/operation:define-operation create-code-security-integration
                                       :shape-name
                                       "CreateCodeSecurityIntegration" :input
                                       create-code-security-integration-request
                                       :output
                                       create-code-security-integration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/codesecurity/integration/create" :code
                                       200)

(smithy/sdk/operation:define-operation create-code-security-scan-configuration
                                       :shape-name
                                       "CreateCodeSecurityScanConfiguration"
                                       :input
                                       create-code-security-scan-configuration-request
                                       :output
                                       create-code-security-scan-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/codesecurity/scan-configuration/create"
                                       :code 200)

(smithy/sdk/operation:define-operation create-filter :shape-name "CreateFilter"
                                       :input create-filter-request :output
                                       create-filter-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/filters/create"
                                       :code 200)

(smithy/sdk/operation:define-operation create-findings-report :shape-name
                                       "CreateFindingsReport" :input
                                       create-findings-report-request :output
                                       create-findings-report-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/reporting/create"
                                       :code 200)

(smithy/sdk/operation:define-operation create-sbom-export :shape-name
                                       "CreateSbomExport" :input
                                       create-sbom-export-request :output
                                       create-sbom-export-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/sbomexport/create"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-cis-scan-configuration
                                       :shape-name "DeleteCisScanConfiguration"
                                       :input
                                       delete-cis-scan-configuration-request
                                       :output
                                       delete-cis-scan-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/cis/scan-configuration/delete" :code
                                       200)

(smithy/sdk/operation:define-operation delete-code-security-integration
                                       :shape-name
                                       "DeleteCodeSecurityIntegration" :input
                                       delete-code-security-integration-request
                                       :output
                                       delete-code-security-integration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/codesecurity/integration/delete" :code
                                       200)

(smithy/sdk/operation:define-operation delete-code-security-scan-configuration
                                       :shape-name
                                       "DeleteCodeSecurityScanConfiguration"
                                       :input
                                       delete-code-security-scan-configuration-request
                                       :output
                                       delete-code-security-scan-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/codesecurity/scan-configuration/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-filter :shape-name "DeleteFilter"
                                       :input delete-filter-request :output
                                       delete-filter-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/filters/delete"
                                       :code 200)

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
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/organizationconfiguration/describe"
                                       :code 200)

(smithy/sdk/operation:define-operation disable :shape-name "Disable" :input
                                       disable-request :output disable-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/disable" :code 200)

(smithy/sdk/operation:define-operation disable-delegated-admin-account
                                       :shape-name
                                       "DisableDelegatedAdminAccount" :input
                                       disable-delegated-admin-account-request
                                       :output
                                       disable-delegated-admin-account-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delegatedadminaccounts/disable" :code
                                       200)

(smithy/sdk/operation:define-operation disassociate-member :shape-name
                                       "DisassociateMember" :input
                                       disassociate-member-request :output
                                       disassociate-member-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/members/disassociate" :code 200)

(smithy/sdk/operation:define-operation enable :shape-name "Enable" :input
                                       enable-request :output enable-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/enable" :code 200)

(smithy/sdk/operation:define-operation enable-delegated-admin-account
                                       :shape-name
                                       "EnableDelegatedAdminAccount" :input
                                       enable-delegated-admin-account-request
                                       :output
                                       enable-delegated-admin-account-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delegatedadminaccounts/enable" :code
                                       200)

(smithy/sdk/operation:define-operation get-cis-scan-report :shape-name
                                       "GetCisScanReport" :input
                                       get-cis-scan-report-request :output
                                       get-cis-scan-report-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/cis/scan/report/get" :code 200)

(smithy/sdk/operation:define-operation get-cis-scan-result-details :shape-name
                                       "GetCisScanResultDetails" :input
                                       get-cis-scan-result-details-request
                                       :output
                                       get-cis-scan-result-details-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/cis/scan-result/details/get" :code 200)

(smithy/sdk/operation:define-operation get-clusters-for-image :shape-name
                                       "GetClustersForImage" :input
                                       get-clusters-for-image-request :output
                                       get-clusters-for-image-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/cluster/get" :code
                                       200)

(smithy/sdk/operation:define-operation get-code-security-integration
                                       :shape-name "GetCodeSecurityIntegration"
                                       :input
                                       get-code-security-integration-request
                                       :output
                                       get-code-security-integration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/codesecurity/integration/get" :code
                                       200)

(smithy/sdk/operation:define-operation get-code-security-scan :shape-name
                                       "GetCodeSecurityScan" :input
                                       get-code-security-scan-request :output
                                       get-code-security-scan-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/codesecurity/scan/get" :code 200)

(smithy/sdk/operation:define-operation get-code-security-scan-configuration
                                       :shape-name
                                       "GetCodeSecurityScanConfiguration"
                                       :input
                                       get-code-security-scan-configuration-request
                                       :output
                                       get-code-security-scan-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/codesecurity/scan-configuration/get"
                                       :code 200)

(smithy/sdk/operation:define-operation get-configuration :shape-name
                                       "GetConfiguration" :input
                                       get-configuration-request :output
                                       get-configuration-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/configuration/get"
                                       :code 200)

(smithy/sdk/operation:define-operation get-delegated-admin-account :shape-name
                                       "GetDelegatedAdminAccount" :input
                                       get-delegated-admin-account-request
                                       :output
                                       get-delegated-admin-account-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delegatedadminaccounts/get" :code 200)

(smithy/sdk/operation:define-operation get-ec2deep-inspection-configuration
                                       :shape-name
                                       "GetEc2DeepInspectionConfiguration"
                                       :input
                                       get-ec2deep-inspection-configuration-request
                                       :output
                                       get-ec2deep-inspection-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/ec2deepinspectionconfiguration/get"
                                       :code 200)

(smithy/sdk/operation:define-operation get-encryption-key :shape-name
                                       "GetEncryptionKey" :input
                                       get-encryption-key-request :output
                                       get-encryption-key-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/encryptionkey/get"
                                       :code 200)

(smithy/sdk/operation:define-operation get-findings-report-status :shape-name
                                       "GetFindingsReportStatus" :input
                                       get-findings-report-status-request
                                       :output
                                       get-findings-report-status-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/reporting/status/get" :code 200)

(smithy/sdk/operation:define-operation get-member :shape-name "GetMember"
                                       :input get-member-request :output
                                       get-member-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/members/get" :code
                                       200)

(smithy/sdk/operation:define-operation get-sbom-export :shape-name
                                       "GetSbomExport" :input
                                       get-sbom-export-request :output
                                       get-sbom-export-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/sbomexport/get"
                                       :code 200)

(smithy/sdk/operation:define-operation list-account-permissions :shape-name
                                       "ListAccountPermissions" :input
                                       list-account-permissions-request :output
                                       list-account-permissions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/accountpermissions/list" :code 200)

(smithy/sdk/operation:define-operation list-cis-scan-configurations :shape-name
                                       "ListCisScanConfigurations" :input
                                       list-cis-scan-configurations-request
                                       :output
                                       list-cis-scan-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/cis/scan-configuration/list" :code 200)

(smithy/sdk/operation:define-operation
 list-cis-scan-results-aggregated-by-checks :shape-name
 "ListCisScanResultsAggregatedByChecks" :input
 list-cis-scan-results-aggregated-by-checks-request :output
 list-cis-scan-results-aggregated-by-checks-response :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception)
 :method "POST" :uri "/cis/scan-result/check/list" :code 200)

(smithy/sdk/operation:define-operation
 list-cis-scan-results-aggregated-by-target-resource :shape-name
 "ListCisScanResultsAggregatedByTargetResource" :input
 list-cis-scan-results-aggregated-by-target-resource-request :output
 list-cis-scan-results-aggregated-by-target-resource-response :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception)
 :method "POST" :uri "/cis/scan-result/resource/list" :code 200)

(smithy/sdk/operation:define-operation list-cis-scans :shape-name
                                       "ListCisScans" :input
                                       list-cis-scans-request :output
                                       list-cis-scans-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/cis/scan/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-code-security-integrations
                                       :shape-name
                                       "ListCodeSecurityIntegrations" :input
                                       list-code-security-integrations-request
                                       :output
                                       list-code-security-integrations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/codesecurity/integration/list" :code
                                       200)

(smithy/sdk/operation:define-operation
 list-code-security-scan-configuration-associations :shape-name
 "ListCodeSecurityScanConfigurationAssociations" :input
 list-code-security-scan-configuration-associations-request :output
 list-code-security-scan-configuration-associations-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri "/codesecurity/scan-configuration/associations/list" :code
 200)

(smithy/sdk/operation:define-operation list-code-security-scan-configurations
                                       :shape-name
                                       "ListCodeSecurityScanConfigurations"
                                       :input
                                       list-code-security-scan-configurations-request
                                       :output
                                       list-code-security-scan-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/codesecurity/scan-configuration/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-coverage :shape-name "ListCoverage"
                                       :input list-coverage-request :output
                                       list-coverage-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/coverage/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-coverage-statistics :shape-name
                                       "ListCoverageStatistics" :input
                                       list-coverage-statistics-request :output
                                       list-coverage-statistics-response
                                       :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/coverage/statistics/list" :code 200)

(smithy/sdk/operation:define-operation list-delegated-admin-accounts
                                       :shape-name "ListDelegatedAdminAccounts"
                                       :input
                                       list-delegated-admin-accounts-request
                                       :output
                                       list-delegated-admin-accounts-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delegatedadminaccounts/list" :code 200)

(smithy/sdk/operation:define-operation list-filters :shape-name "ListFilters"
                                       :input list-filters-request :output
                                       list-filters-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/filters/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-finding-aggregations :shape-name
                                       "ListFindingAggregations" :input
                                       list-finding-aggregations-request
                                       :output
                                       list-finding-aggregations-response
                                       :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/findings/aggregation/list" :code 200)

(smithy/sdk/operation:define-operation list-findings :shape-name "ListFindings"
                                       :input list-findings-request :output
                                       list-findings-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/findings/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-members :shape-name "ListMembers"
                                       :input list-members-request :output
                                       list-members-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/members/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation list-usage-totals :shape-name
                                       "ListUsageTotals" :input
                                       list-usage-totals-request :output
                                       list-usage-totals-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/usage/list" :code
                                       200)

(smithy/sdk/operation:define-operation reset-encryption-key :shape-name
                                       "ResetEncryptionKey" :input
                                       reset-encryption-key-request :output
                                       reset-encryption-key-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/encryptionkey/reset" :code 200)

(smithy/sdk/operation:define-operation search-vulnerabilities :shape-name
                                       "SearchVulnerabilities" :input
                                       search-vulnerabilities-request :output
                                       search-vulnerabilities-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/vulnerabilities/search" :code 200)

(smithy/sdk/operation:define-operation send-cis-session-health :shape-name
                                       "SendCisSessionHealth" :input
                                       send-cis-session-health-request :output
                                       send-cis-session-health-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/cissession/health/send" :code 200)

(smithy/sdk/operation:define-operation send-cis-session-telemetry :shape-name
                                       "SendCisSessionTelemetry" :input
                                       send-cis-session-telemetry-request
                                       :output
                                       send-cis-session-telemetry-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/cissession/telemetry/send" :code 200)

(smithy/sdk/operation:define-operation start-cis-session :shape-name
                                       "StartCisSession" :input
                                       start-cis-session-request :output
                                       start-cis-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/cissession/start"
                                       :code 200)

(smithy/sdk/operation:define-operation start-code-security-scan :shape-name
                                       "StartCodeSecurityScan" :input
                                       start-code-security-scan-request :output
                                       start-code-security-scan-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/codesecurity/scan/start" :code 200)

(smithy/sdk/operation:define-operation stop-cis-session :shape-name
                                       "StopCisSession" :input
                                       stop-cis-session-request :output
                                       stop-cis-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/cissession/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
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
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-cis-scan-configuration
                                       :shape-name "UpdateCisScanConfiguration"
                                       :input
                                       update-cis-scan-configuration-request
                                       :output
                                       update-cis-scan-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/cis/scan-configuration/update" :code
                                       200)

(smithy/sdk/operation:define-operation update-code-security-integration
                                       :shape-name
                                       "UpdateCodeSecurityIntegration" :input
                                       update-code-security-integration-request
                                       :output
                                       update-code-security-integration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/codesecurity/integration/update" :code
                                       200)

(smithy/sdk/operation:define-operation update-code-security-scan-configuration
                                       :shape-name
                                       "UpdateCodeSecurityScanConfiguration"
                                       :input
                                       update-code-security-scan-configuration-request
                                       :output
                                       update-code-security-scan-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/codesecurity/scan-configuration/update"
                                       :code 200)

(smithy/sdk/operation:define-operation update-configuration :shape-name
                                       "UpdateConfiguration" :input
                                       update-configuration-request :output
                                       update-configuration-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/configuration/update" :code 200)

(smithy/sdk/operation:define-operation update-ec2deep-inspection-configuration
                                       :shape-name
                                       "UpdateEc2DeepInspectionConfiguration"
                                       :input
                                       update-ec2deep-inspection-configuration-request
                                       :output
                                       update-ec2deep-inspection-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ec2deepinspectionconfiguration/update"
                                       :code 200)

(smithy/sdk/operation:define-operation update-encryption-key :shape-name
                                       "UpdateEncryptionKey" :input
                                       update-encryption-key-request :output
                                       update-encryption-key-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/encryptionkey/update" :code 200)

(smithy/sdk/operation:define-operation update-filter :shape-name "UpdateFilter"
                                       :input update-filter-request :output
                                       update-filter-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/filters/update"
                                       :code 200)

(smithy/sdk/operation:define-operation
 update-org-ec2deep-inspection-configuration :shape-name
 "UpdateOrgEc2DeepInspectionConfiguration" :input
 update-org-ec2deep-inspection-configuration-request :output
 update-org-ec2deep-inspection-configuration-response :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception)
 :method "POST" :uri "/ec2deepinspectionconfiguration/org/update" :code 200)

(smithy/sdk/operation:define-operation update-organization-configuration
                                       :shape-name
                                       "UpdateOrganizationConfiguration" :input
                                       update-organization-configuration-request
                                       :output
                                       update-organization-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/organizationconfiguration/update"
                                       :code 200)
