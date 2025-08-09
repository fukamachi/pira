(uiop/package:define-package #:pira/codestar-connections (:use)
                             (:export #:account-id #:amazon-resource-name
                              #:blocker-status #:blocker-type #:branch-name
                              #:code-star-connections-20191201 #:connection
                              #:connection-arn #:connection-list
                              #:connection-name #:connection-status
                              #:create-connection #:create-host
                              #:create-repository-link
                              #:create-sync-configuration #:created-reason
                              #:delete-connection #:delete-host
                              #:delete-repository-link
                              #:delete-sync-configuration
                              #:deployment-file-path #:directory
                              #:error-message #:event #:external-id
                              #:get-connection #:get-host #:get-repository-link
                              #:get-repository-sync-status
                              #:get-resource-sync-status
                              #:get-sync-blocker-summary
                              #:get-sync-configuration #:host #:host-arn
                              #:host-list #:host-name #:host-status
                              #:host-status-message #:iam-role-arn #:id
                              #:kms-key-arn #:latest-sync-blocker-list
                              #:list-connections #:list-hosts
                              #:list-repository-links
                              #:list-repository-sync-definitions
                              #:list-sync-configurations
                              #:list-tags-for-resource #:max-results
                              #:next-token #:owner-id #:parent #:provider-type
                              #:publish-deployment-status #:repository-link-arn
                              #:repository-link-id #:repository-link-info
                              #:repository-link-list #:repository-name
                              #:repository-sync-attempt
                              #:repository-sync-definition
                              #:repository-sync-definition-list
                              #:repository-sync-event
                              #:repository-sync-event-list
                              #:repository-sync-status #:resolved-reason
                              #:resource-name #:resource-sync-attempt
                              #:resource-sync-event #:resource-sync-event-list
                              #:resource-sync-status #:revision #:sha
                              #:security-group-id #:security-group-ids
                              #:sharp-next-token #:subnet-id #:subnet-ids
                              #:sync-blocker #:sync-blocker-context
                              #:sync-blocker-context-key
                              #:sync-blocker-context-list
                              #:sync-blocker-context-value
                              #:sync-blocker-summary #:sync-configuration
                              #:sync-configuration-list
                              #:sync-configuration-type #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:target #:timestamp
                              #:tls-certificate #:trigger-resource-update-on
                              #:type #:untag-resource #:update-host
                              #:update-repository-link #:update-sync-blocker
                              #:update-sync-configuration #:url
                              #:vpc-configuration #:vpc-id))
(common-lisp:in-package #:pira/codestar-connections)

(smithy/sdk/service:define-service code-star-connections-20191201 :shape-name
                                   "CodeStar_connections_20191201" :version
                                   "2019-12-01" :title
                                   "AWS CodeStar connections" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CodeStar connections")
                                      ("arnNamespace" . "codestar-connections")
                                      ("cloudFormationName"
                                       . "CodeStarconnections")
                                      ("cloudTrailEventSource"
                                       . "codestarconnections.amazonaws.com")
                                      ("endpointPrefix"
                                       . "codestar-connections"))
                                     ("aws.auth#sigv4"
                                      ("name" . "codestar-connections"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum blocker-status
    common-lisp:nil
  (:active "ACTIVE")
  (:resolved "RESOLVED"))

(smithy/sdk/shapes:define-enum blocker-type
    common-lisp:nil
  (:automated "AUTOMATED"))

(smithy/sdk/shapes:define-type branch-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error conditional-check-failed-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConditionalCheckFailedException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure connection common-lisp:nil
                                    ((connection-name :target-type
                                      connection-name :member-name
                                      "ConnectionName")
                                     (connection-arn :target-type
                                      connection-arn :member-name
                                      "ConnectionArn")
                                     (provider-type :target-type provider-type
                                      :member-name "ProviderType")
                                     (owner-account-id :target-type account-id
                                      :member-name "OwnerAccountId")
                                     (connection-status :target-type
                                      connection-status :member-name
                                      "ConnectionStatus")
                                     (host-arn :target-type host-arn
                                      :member-name "HostArn"))
                                    (:shape-name "Connection"))

(smithy/sdk/shapes:define-type connection-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connection-list :member connection)

(smithy/sdk/shapes:define-type connection-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum connection-status
    common-lisp:nil
  (:pending "PENDING")
  (:available "AVAILABLE")
  (:error "ERROR"))

(smithy/sdk/shapes:define-input create-connection-input common-lisp:nil
                                ((provider-type :target-type provider-type
                                  :member-name "ProviderType")
                                 (connection-name :target-type connection-name
                                  :required common-lisp:t :member-name
                                  "ConnectionName")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (host-arn :target-type host-arn :member-name
                                  "HostArn"))
                                (:shape-name "CreateConnectionInput"))

(smithy/sdk/shapes:define-output create-connection-output common-lisp:nil
                                 ((connection-arn :target-type connection-arn
                                   :required common-lisp:t :member-name
                                   "ConnectionArn")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "CreateConnectionOutput"))

(smithy/sdk/shapes:define-input create-host-input common-lisp:nil
                                ((name :target-type host-name :required
                                  common-lisp:t :member-name "Name")
                                 (provider-type :target-type provider-type
                                  :required common-lisp:t :member-name
                                  "ProviderType")
                                 (provider-endpoint :target-type url :required
                                  common-lisp:t :member-name
                                  "ProviderEndpoint")
                                 (vpc-configuration :target-type
                                  vpc-configuration :member-name
                                  "VpcConfiguration")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateHostInput"))

(smithy/sdk/shapes:define-output create-host-output common-lisp:nil
                                 ((host-arn :target-type host-arn :member-name
                                   "HostArn")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "CreateHostOutput"))

(smithy/sdk/shapes:define-input create-repository-link-input common-lisp:nil
                                ((connection-arn :target-type connection-arn
                                  :required common-lisp:t :member-name
                                  "ConnectionArn")
                                 (owner-id :target-type owner-id :required
                                  common-lisp:t :member-name "OwnerId")
                                 (repository-name :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "RepositoryName")
                                 (encryption-key-arn :target-type kms-key-arn
                                  :member-name "EncryptionKeyArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateRepositoryLinkInput"))

(smithy/sdk/shapes:define-output create-repository-link-output common-lisp:nil
                                 ((repository-link-info :target-type
                                   repository-link-info :required common-lisp:t
                                   :member-name "RepositoryLinkInfo"))
                                 (:shape-name "CreateRepositoryLinkOutput"))

(smithy/sdk/shapes:define-input create-sync-configuration-input common-lisp:nil
                                ((branch :target-type branch-name :required
                                  common-lisp:t :member-name "Branch")
                                 (config-file :target-type deployment-file-path
                                  :required common-lisp:t :member-name
                                  "ConfigFile")
                                 (repository-link-id :target-type
                                  repository-link-id :required common-lisp:t
                                  :member-name "RepositoryLinkId")
                                 (resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ResourceName")
                                 (role-arn :target-type iam-role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (sync-type :target-type
                                  sync-configuration-type :required
                                  common-lisp:t :member-name "SyncType")
                                 (publish-deployment-status :target-type
                                  publish-deployment-status :member-name
                                  "PublishDeploymentStatus")
                                 (trigger-resource-update-on :target-type
                                  trigger-resource-update-on :member-name
                                  "TriggerResourceUpdateOn"))
                                (:shape-name "CreateSyncConfigurationInput"))

(smithy/sdk/shapes:define-output create-sync-configuration-output
                                 common-lisp:nil
                                 ((sync-configuration :target-type
                                   sync-configuration :required common-lisp:t
                                   :member-name "SyncConfiguration"))
                                 (:shape-name "CreateSyncConfigurationOutput"))

(smithy/sdk/shapes:define-type created-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-connection-input common-lisp:nil
                                ((connection-arn :target-type connection-arn
                                  :required common-lisp:t :member-name
                                  "ConnectionArn"))
                                (:shape-name "DeleteConnectionInput"))

(smithy/sdk/shapes:define-output delete-connection-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteConnectionOutput"))

(smithy/sdk/shapes:define-input delete-host-input common-lisp:nil
                                ((host-arn :target-type host-arn :required
                                  common-lisp:t :member-name "HostArn"))
                                (:shape-name "DeleteHostInput"))

(smithy/sdk/shapes:define-output delete-host-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteHostOutput"))

(smithy/sdk/shapes:define-input delete-repository-link-input common-lisp:nil
                                ((repository-link-id :target-type
                                  repository-link-id :required common-lisp:t
                                  :member-name "RepositoryLinkId"))
                                (:shape-name "DeleteRepositoryLinkInput"))

(smithy/sdk/shapes:define-output delete-repository-link-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteRepositoryLinkOutput"))

(smithy/sdk/shapes:define-input delete-sync-configuration-input common-lisp:nil
                                ((sync-type :target-type
                                  sync-configuration-type :required
                                  common-lisp:t :member-name "SyncType")
                                 (resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ResourceName"))
                                (:shape-name "DeleteSyncConfigurationInput"))

(smithy/sdk/shapes:define-output delete-sync-configuration-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteSyncConfigurationOutput"))

(smithy/sdk/shapes:define-type deployment-file-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type directory smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type external-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-connection-input common-lisp:nil
                                ((connection-arn :target-type connection-arn
                                  :required common-lisp:t :member-name
                                  "ConnectionArn"))
                                (:shape-name "GetConnectionInput"))

(smithy/sdk/shapes:define-output get-connection-output common-lisp:nil
                                 ((connection :target-type connection
                                   :member-name "Connection"))
                                 (:shape-name "GetConnectionOutput"))

(smithy/sdk/shapes:define-input get-host-input common-lisp:nil
                                ((host-arn :target-type host-arn :required
                                  common-lisp:t :member-name "HostArn"))
                                (:shape-name "GetHostInput"))

(smithy/sdk/shapes:define-output get-host-output common-lisp:nil
                                 ((name :target-type host-name :member-name
                                   "Name")
                                  (status :target-type host-status :member-name
                                   "Status")
                                  (provider-type :target-type provider-type
                                   :member-name "ProviderType")
                                  (provider-endpoint :target-type url
                                   :member-name "ProviderEndpoint")
                                  (vpc-configuration :target-type
                                   vpc-configuration :member-name
                                   "VpcConfiguration"))
                                 (:shape-name "GetHostOutput"))

(smithy/sdk/shapes:define-input get-repository-link-input common-lisp:nil
                                ((repository-link-id :target-type
                                  repository-link-id :required common-lisp:t
                                  :member-name "RepositoryLinkId"))
                                (:shape-name "GetRepositoryLinkInput"))

(smithy/sdk/shapes:define-output get-repository-link-output common-lisp:nil
                                 ((repository-link-info :target-type
                                   repository-link-info :required common-lisp:t
                                   :member-name "RepositoryLinkInfo"))
                                 (:shape-name "GetRepositoryLinkOutput"))

(smithy/sdk/shapes:define-input get-repository-sync-status-input
                                common-lisp:nil
                                ((branch :target-type branch-name :required
                                  common-lisp:t :member-name "Branch")
                                 (repository-link-id :target-type
                                  repository-link-id :required common-lisp:t
                                  :member-name "RepositoryLinkId")
                                 (sync-type :target-type
                                  sync-configuration-type :required
                                  common-lisp:t :member-name "SyncType"))
                                (:shape-name "GetRepositorySyncStatusInput"))

(smithy/sdk/shapes:define-output get-repository-sync-status-output
                                 common-lisp:nil
                                 ((latest-sync :target-type
                                   repository-sync-attempt :required
                                   common-lisp:t :member-name "LatestSync"))
                                 (:shape-name "GetRepositorySyncStatusOutput"))

(smithy/sdk/shapes:define-input get-resource-sync-status-input common-lisp:nil
                                ((resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ResourceName")
                                 (sync-type :target-type
                                  sync-configuration-type :required
                                  common-lisp:t :member-name "SyncType"))
                                (:shape-name "GetResourceSyncStatusInput"))

(smithy/sdk/shapes:define-output get-resource-sync-status-output
                                 common-lisp:nil
                                 ((desired-state :target-type revision
                                   :member-name "DesiredState")
                                  (latest-successful-sync :target-type
                                   resource-sync-attempt :member-name
                                   "LatestSuccessfulSync")
                                  (latest-sync :target-type
                                   resource-sync-attempt :required
                                   common-lisp:t :member-name "LatestSync"))
                                 (:shape-name "GetResourceSyncStatusOutput"))

(smithy/sdk/shapes:define-input get-sync-blocker-summary-input common-lisp:nil
                                ((sync-type :target-type
                                  sync-configuration-type :required
                                  common-lisp:t :member-name "SyncType")
                                 (resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ResourceName"))
                                (:shape-name "GetSyncBlockerSummaryInput"))

(smithy/sdk/shapes:define-output get-sync-blocker-summary-output
                                 common-lisp:nil
                                 ((sync-blocker-summary :target-type
                                   sync-blocker-summary :required common-lisp:t
                                   :member-name "SyncBlockerSummary"))
                                 (:shape-name "GetSyncBlockerSummaryOutput"))

(smithy/sdk/shapes:define-input get-sync-configuration-input common-lisp:nil
                                ((sync-type :target-type
                                  sync-configuration-type :required
                                  common-lisp:t :member-name "SyncType")
                                 (resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ResourceName"))
                                (:shape-name "GetSyncConfigurationInput"))

(smithy/sdk/shapes:define-output get-sync-configuration-output common-lisp:nil
                                 ((sync-configuration :target-type
                                   sync-configuration :required common-lisp:t
                                   :member-name "SyncConfiguration"))
                                 (:shape-name "GetSyncConfigurationOutput"))

(smithy/sdk/shapes:define-structure host common-lisp:nil
                                    ((name :target-type host-name :member-name
                                      "Name")
                                     (host-arn :target-type host-arn
                                      :member-name "HostArn")
                                     (provider-type :target-type provider-type
                                      :member-name "ProviderType")
                                     (provider-endpoint :target-type url
                                      :member-name "ProviderEndpoint")
                                     (vpc-configuration :target-type
                                      vpc-configuration :member-name
                                      "VpcConfiguration")
                                     (status :target-type host-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      host-status-message :member-name
                                      "StatusMessage"))
                                    (:shape-name "Host"))

(smithy/sdk/shapes:define-type host-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list host-list :member host)

(smithy/sdk/shapes:define-type host-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type host-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type host-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 503))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list latest-sync-blocker-list :member sync-blocker)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input list-connections-input common-lisp:nil
                                ((provider-type-filter :target-type
                                  provider-type :member-name
                                  "ProviderTypeFilter")
                                 (host-arn-filter :target-type host-arn
                                  :member-name "HostArnFilter")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListConnectionsInput"))

(smithy/sdk/shapes:define-output list-connections-output common-lisp:nil
                                 ((connections :target-type connection-list
                                   :member-name "Connections")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListConnectionsOutput"))

(smithy/sdk/shapes:define-input list-hosts-input common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListHostsInput"))

(smithy/sdk/shapes:define-output list-hosts-output common-lisp:nil
                                 ((hosts :target-type host-list :member-name
                                   "Hosts")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListHostsOutput"))

(smithy/sdk/shapes:define-input list-repository-links-input common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type sharp-next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListRepositoryLinksInput"))

(smithy/sdk/shapes:define-output list-repository-links-output common-lisp:nil
                                 ((repository-links :target-type
                                   repository-link-list :required common-lisp:t
                                   :member-name "RepositoryLinks")
                                  (next-token :target-type sharp-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRepositoryLinksOutput"))

(smithy/sdk/shapes:define-input list-repository-sync-definitions-input
                                common-lisp:nil
                                ((repository-link-id :target-type
                                  repository-link-id :required common-lisp:t
                                  :member-name "RepositoryLinkId")
                                 (sync-type :target-type
                                  sync-configuration-type :required
                                  common-lisp:t :member-name "SyncType"))
                                (:shape-name
                                 "ListRepositorySyncDefinitionsInput"))

(smithy/sdk/shapes:define-output list-repository-sync-definitions-output
                                 common-lisp:nil
                                 ((repository-sync-definitions :target-type
                                   repository-sync-definition-list :required
                                   common-lisp:t :member-name
                                   "RepositorySyncDefinitions")
                                  (next-token :target-type sharp-next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListRepositorySyncDefinitionsOutput"))

(smithy/sdk/shapes:define-input list-sync-configurations-input common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type sharp-next-token
                                  :member-name "NextToken")
                                 (repository-link-id :target-type
                                  repository-link-id :required common-lisp:t
                                  :member-name "RepositoryLinkId")
                                 (sync-type :target-type
                                  sync-configuration-type :required
                                  common-lisp:t :member-name "SyncType"))
                                (:shape-name "ListSyncConfigurationsInput"))

(smithy/sdk/shapes:define-output list-sync-configurations-output
                                 common-lisp:nil
                                 ((sync-configurations :target-type
                                   sync-configuration-list :required
                                   common-lisp:t :member-name
                                   "SyncConfigurations")
                                  (next-token :target-type sharp-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListSyncConfigurationsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type owner-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parent smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum provider-type
    common-lisp:nil
  (:bitbucket "Bitbucket")
  (:github "GitHub")
  (:github-enterprise-server "GitHubEnterpriseServer")
  (:gitlab "GitLab")
  (:gitlab-self-managed "GitLabSelfManaged"))

(smithy/sdk/shapes:define-enum publish-deployment-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type repository-link-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type repository-link-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure repository-link-info common-lisp:nil
                                    ((connection-arn :target-type
                                      connection-arn :required common-lisp:t
                                      :member-name "ConnectionArn")
                                     (encryption-key-arn :target-type
                                      kms-key-arn :member-name
                                      "EncryptionKeyArn")
                                     (owner-id :target-type owner-id :required
                                      common-lisp:t :member-name "OwnerId")
                                     (provider-type :target-type provider-type
                                      :required common-lisp:t :member-name
                                      "ProviderType")
                                     (repository-link-arn :target-type
                                      repository-link-arn :required
                                      common-lisp:t :member-name
                                      "RepositoryLinkArn")
                                     (repository-link-id :target-type
                                      repository-link-id :required
                                      common-lisp:t :member-name
                                      "RepositoryLinkId")
                                     (repository-name :target-type
                                      repository-name :required common-lisp:t
                                      :member-name "RepositoryName"))
                                    (:shape-name "RepositoryLinkInfo"))

(smithy/sdk/shapes:define-list repository-link-list :member
                               repository-link-info)

(smithy/sdk/shapes:define-type repository-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure repository-sync-attempt common-lisp:nil
                                    ((started-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartedAt")
                                     (status :target-type
                                      repository-sync-status :required
                                      common-lisp:t :member-name "Status")
                                     (events :target-type
                                      repository-sync-event-list :required
                                      common-lisp:t :member-name "Events"))
                                    (:shape-name "RepositorySyncAttempt"))

(smithy/sdk/shapes:define-structure repository-sync-definition common-lisp:nil
                                    ((branch :target-type branch-name :required
                                      common-lisp:t :member-name "Branch")
                                     (directory :target-type directory
                                      :required common-lisp:t :member-name
                                      "Directory")
                                     (parent :target-type parent :required
                                      common-lisp:t :member-name "Parent")
                                     (target :target-type target :required
                                      common-lisp:t :member-name "Target"))
                                    (:shape-name "RepositorySyncDefinition"))

(smithy/sdk/shapes:define-list repository-sync-definition-list :member
                               repository-sync-definition)

(smithy/sdk/shapes:define-structure repository-sync-event common-lisp:nil
                                    ((event :target-type event :required
                                      common-lisp:t :member-name "Event")
                                     (external-id :target-type external-id
                                      :member-name "ExternalId")
                                     (time :target-type timestamp :required
                                      common-lisp:t :member-name "Time")
                                     (type :target-type type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "RepositorySyncEvent"))

(smithy/sdk/shapes:define-list repository-sync-event-list :member
                               repository-sync-event)

(smithy/sdk/shapes:define-enum repository-sync-status
    common-lisp:nil
  (:failed "FAILED")
  (:initiated "INITIATED")
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:queued "QUEUED"))

(smithy/sdk/shapes:define-type resolved-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-sync-attempt common-lisp:nil
                                    ((events :target-type
                                      resource-sync-event-list :required
                                      common-lisp:t :member-name "Events")
                                     (initial-revision :target-type revision
                                      :required common-lisp:t :member-name
                                      "InitialRevision")
                                     (started-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartedAt")
                                     (status :target-type resource-sync-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (target-revision :target-type revision
                                      :required common-lisp:t :member-name
                                      "TargetRevision")
                                     (target :target-type target :required
                                      common-lisp:t :member-name "Target"))
                                    (:shape-name "ResourceSyncAttempt"))

(smithy/sdk/shapes:define-structure resource-sync-event common-lisp:nil
                                    ((event :target-type event :required
                                      common-lisp:t :member-name "Event")
                                     (external-id :target-type external-id
                                      :member-name "ExternalId")
                                     (time :target-type timestamp :required
                                      common-lisp:t :member-name "Time")
                                     (type :target-type type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "ResourceSyncEvent"))

(smithy/sdk/shapes:define-list resource-sync-event-list :member
                               resource-sync-event)

(smithy/sdk/shapes:define-enum resource-sync-status
    common-lisp:nil
  (:failed "FAILED")
  (:initiated "INITIATED")
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED"))

(smithy/sdk/shapes:define-error resource-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceUnavailableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error retry-latest-commit-failed-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "RetryLatestCommitFailedException")
                                (:error-code 503))

(smithy/sdk/shapes:define-structure revision common-lisp:nil
                                    ((branch :target-type branch-name :required
                                      common-lisp:t :member-name "Branch")
                                     (directory :target-type directory
                                      :required common-lisp:t :member-name
                                      "Directory")
                                     (owner-id :target-type owner-id :required
                                      common-lisp:t :member-name "OwnerId")
                                     (repository-name :target-type
                                      repository-name :required common-lisp:t
                                      :member-name "RepositoryName")
                                     (provider-type :target-type provider-type
                                      :required common-lisp:t :member-name
                                      "ProviderType")
                                     (sha :target-type sha :required
                                      common-lisp:t :member-name "Sha"))
                                    (:shape-name "Revision"))

(smithy/sdk/shapes:define-type sha smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-type sharp-next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-structure sync-blocker common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "Id")
                                     (type :target-type blocker-type :required
                                      common-lisp:t :member-name "Type")
                                     (status :target-type blocker-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (created-reason :target-type
                                      created-reason :required common-lisp:t
                                      :member-name "CreatedReason")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedAt")
                                     (contexts :target-type
                                      sync-blocker-context-list :member-name
                                      "Contexts")
                                     (resolved-reason :target-type
                                      resolved-reason :member-name
                                      "ResolvedReason")
                                     (resolved-at :target-type timestamp
                                      :member-name "ResolvedAt"))
                                    (:shape-name "SyncBlocker"))

(smithy/sdk/shapes:define-structure sync-blocker-context common-lisp:nil
                                    ((key :target-type sync-blocker-context-key
                                      :required common-lisp:t :member-name
                                      "Key")
                                     (value :target-type
                                      sync-blocker-context-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "SyncBlockerContext"))

(smithy/sdk/shapes:define-type sync-blocker-context-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list sync-blocker-context-list :member
                               sync-blocker-context)

(smithy/sdk/shapes:define-type sync-blocker-context-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error sync-blocker-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "SyncBlockerDoesNotExistException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure sync-blocker-summary common-lisp:nil
                                    ((resource-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ResourceName")
                                     (parent-resource-name :target-type
                                      resource-name :member-name
                                      "ParentResourceName")
                                     (latest-blockers :target-type
                                      latest-sync-blocker-list :member-name
                                      "LatestBlockers"))
                                    (:shape-name "SyncBlockerSummary"))

(smithy/sdk/shapes:define-structure sync-configuration common-lisp:nil
                                    ((branch :target-type branch-name :required
                                      common-lisp:t :member-name "Branch")
                                     (config-file :target-type
                                      deployment-file-path :member-name
                                      "ConfigFile")
                                     (owner-id :target-type owner-id :required
                                      common-lisp:t :member-name "OwnerId")
                                     (provider-type :target-type provider-type
                                      :required common-lisp:t :member-name
                                      "ProviderType")
                                     (repository-link-id :target-type
                                      repository-link-id :required
                                      common-lisp:t :member-name
                                      "RepositoryLinkId")
                                     (repository-name :target-type
                                      repository-name :required common-lisp:t
                                      :member-name "RepositoryName")
                                     (resource-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "ResourceName")
                                     (role-arn :target-type iam-role-arn
                                      :required common-lisp:t :member-name
                                      "RoleArn")
                                     (sync-type :target-type
                                      sync-configuration-type :required
                                      common-lisp:t :member-name "SyncType")
                                     (publish-deployment-status :target-type
                                      publish-deployment-status :member-name
                                      "PublishDeploymentStatus")
                                     (trigger-resource-update-on :target-type
                                      trigger-resource-update-on :member-name
                                      "TriggerResourceUpdateOn"))
                                    (:shape-name "SyncConfiguration"))

(smithy/sdk/shapes:define-list sync-configuration-list :member
                               sync-configuration)

(smithy/sdk/shapes:define-error sync-configuration-still-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "SyncConfigurationStillExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum sync-configuration-type
    common-lisp:nil
  (:cfn-stack-sync "CFN_STACK_SYNC"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type tls-certificate smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum trigger-resource-update-on
    common-lisp:nil
  (:any-change "ANY_CHANGE")
  (:file-change "FILE_CHANGE"))

(smithy/sdk/shapes:define-type type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-provider-type-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "UnsupportedProviderTypeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-host-input common-lisp:nil
                                ((host-arn :target-type host-arn :required
                                  common-lisp:t :member-name "HostArn")
                                 (provider-endpoint :target-type url
                                  :member-name "ProviderEndpoint")
                                 (vpc-configuration :target-type
                                  vpc-configuration :member-name
                                  "VpcConfiguration"))
                                (:shape-name "UpdateHostInput"))

(smithy/sdk/shapes:define-output update-host-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateHostOutput"))

(smithy/sdk/shapes:define-error update-out-of-sync-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "UpdateOutOfSyncException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input update-repository-link-input common-lisp:nil
                                ((connection-arn :target-type connection-arn
                                  :member-name "ConnectionArn")
                                 (encryption-key-arn :target-type kms-key-arn
                                  :member-name "EncryptionKeyArn")
                                 (repository-link-id :target-type
                                  repository-link-id :required common-lisp:t
                                  :member-name "RepositoryLinkId"))
                                (:shape-name "UpdateRepositoryLinkInput"))

(smithy/sdk/shapes:define-output update-repository-link-output common-lisp:nil
                                 ((repository-link-info :target-type
                                   repository-link-info :required common-lisp:t
                                   :member-name "RepositoryLinkInfo"))
                                 (:shape-name "UpdateRepositoryLinkOutput"))

(smithy/sdk/shapes:define-input update-sync-blocker-input common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "Id")
                                 (sync-type :target-type
                                  sync-configuration-type :required
                                  common-lisp:t :member-name "SyncType")
                                 (resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ResourceName")
                                 (resolved-reason :target-type resolved-reason
                                  :required common-lisp:t :member-name
                                  "ResolvedReason"))
                                (:shape-name "UpdateSyncBlockerInput"))

(smithy/sdk/shapes:define-output update-sync-blocker-output common-lisp:nil
                                 ((resource-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "ResourceName")
                                  (parent-resource-name :target-type
                                   resource-name :member-name
                                   "ParentResourceName")
                                  (sync-blocker :target-type sync-blocker
                                   :required common-lisp:t :member-name
                                   "SyncBlocker"))
                                 (:shape-name "UpdateSyncBlockerOutput"))

(smithy/sdk/shapes:define-input update-sync-configuration-input common-lisp:nil
                                ((branch :target-type branch-name :member-name
                                  "Branch")
                                 (config-file :target-type deployment-file-path
                                  :member-name "ConfigFile")
                                 (repository-link-id :target-type
                                  repository-link-id :member-name
                                  "RepositoryLinkId")
                                 (resource-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "ResourceName")
                                 (role-arn :target-type iam-role-arn
                                  :member-name "RoleArn")
                                 (sync-type :target-type
                                  sync-configuration-type :required
                                  common-lisp:t :member-name "SyncType")
                                 (publish-deployment-status :target-type
                                  publish-deployment-status :member-name
                                  "PublishDeploymentStatus")
                                 (trigger-resource-update-on :target-type
                                  trigger-resource-update-on :member-name
                                  "TriggerResourceUpdateOn"))
                                (:shape-name "UpdateSyncConfigurationInput"))

(smithy/sdk/shapes:define-output update-sync-configuration-output
                                 common-lisp:nil
                                 ((sync-configuration :target-type
                                   sync-configuration :required common-lisp:t
                                   :member-name "SyncConfiguration"))
                                 (:shape-name "UpdateSyncConfigurationOutput"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vpc-configuration common-lisp:nil
                                    ((vpc-id :target-type vpc-id :required
                                      common-lisp:t :member-name "VpcId")
                                     (subnet-ids :target-type subnet-ids
                                      :required common-lisp:t :member-name
                                      "SubnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :required
                                      common-lisp:t :member-name
                                      "SecurityGroupIds")
                                     (tls-certificate :target-type
                                      tls-certificate :member-name
                                      "TlsCertificate"))
                                    (:shape-name "VpcConfiguration"))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-connection :shape-name
                                       "CreateConnection" :input
                                       create-connection-input :output
                                       create-connection-output :errors
                                       (limit-exceeded-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception))

(smithy/sdk/operation:define-operation create-host :shape-name "CreateHost"
                                       :input create-host-input :output
                                       create-host-output :errors
                                       (limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-repository-link :shape-name
                                       "CreateRepositoryLink" :input
                                       create-repository-link-input :output
                                       create-repository-link-output :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-sync-configuration :shape-name
                                       "CreateSyncConfiguration" :input
                                       create-sync-configuration-input :output
                                       create-sync-configuration-output :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-connection :shape-name
                                       "DeleteConnection" :input
                                       delete-connection-input :output
                                       delete-connection-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-host :shape-name "DeleteHost"
                                       :input delete-host-input :output
                                       delete-host-output :errors
                                       (resource-not-found-exception
                                        resource-unavailable-exception))

(smithy/sdk/operation:define-operation delete-repository-link :shape-name
                                       "DeleteRepositoryLink" :input
                                       delete-repository-link-input :output
                                       delete-repository-link-output :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        sync-configuration-still-exists-exception
                                        throttling-exception
                                        unsupported-provider-type-exception))

(smithy/sdk/operation:define-operation delete-sync-configuration :shape-name
                                       "DeleteSyncConfiguration" :input
                                       delete-sync-configuration-input :output
                                       delete-sync-configuration-output :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        limit-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-connection :shape-name
                                       "GetConnection" :input
                                       get-connection-input :output
                                       get-connection-output :errors
                                       (resource-not-found-exception
                                        resource-unavailable-exception))

(smithy/sdk/operation:define-operation get-host :shape-name "GetHost" :input
                                       get-host-input :output get-host-output
                                       :errors
                                       (resource-not-found-exception
                                        resource-unavailable-exception))

(smithy/sdk/operation:define-operation get-repository-link :shape-name
                                       "GetRepositoryLink" :input
                                       get-repository-link-input :output
                                       get-repository-link-output :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-repository-sync-status :shape-name
                                       "GetRepositorySyncStatus" :input
                                       get-repository-sync-status-input :output
                                       get-repository-sync-status-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-resource-sync-status :shape-name
                                       "GetResourceSyncStatus" :input
                                       get-resource-sync-status-input :output
                                       get-resource-sync-status-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-sync-blocker-summary :shape-name
                                       "GetSyncBlockerSummary" :input
                                       get-sync-blocker-summary-input :output
                                       get-sync-blocker-summary-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-sync-configuration :shape-name
                                       "GetSyncConfiguration" :input
                                       get-sync-configuration-input :output
                                       get-sync-configuration-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-connections :shape-name
                                       "ListConnections" :input
                                       list-connections-input :output
                                       list-connections-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation list-hosts :shape-name "ListHosts"
                                       :input list-hosts-input :output
                                       list-hosts-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-repository-links :shape-name
                                       "ListRepositoryLinks" :input
                                       list-repository-links-input :output
                                       list-repository-links-output :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-repository-sync-definitions
                                       :shape-name
                                       "ListRepositorySyncDefinitions" :input
                                       list-repository-sync-definitions-input
                                       :output
                                       list-repository-sync-definitions-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-sync-configurations :shape-name
                                       "ListSyncConfigurations" :input
                                       list-sync-configurations-input :output
                                       list-sync-configurations-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation update-host :shape-name "UpdateHost"
                                       :input update-host-input :output
                                       update-host-output :errors
                                       (conflict-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation update-repository-link :shape-name
                                       "UpdateRepositoryLink" :input
                                       update-repository-link-input :output
                                       update-repository-link-output :errors
                                       (access-denied-exception
                                        conditional-check-failed-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        update-out-of-sync-exception))

(smithy/sdk/operation:define-operation update-sync-blocker :shape-name
                                       "UpdateSyncBlocker" :input
                                       update-sync-blocker-input :output
                                       update-sync-blocker-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        retry-latest-commit-failed-exception
                                        sync-blocker-does-not-exist-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-sync-configuration :shape-name
                                       "UpdateSyncConfiguration" :input
                                       update-sync-configuration-input :output
                                       update-sync-configuration-output :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        internal-server-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        update-out-of-sync-exception))
