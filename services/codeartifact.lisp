(uiop/package:define-package #:pira/codeartifact (:use)
                             (:export #:access-denied-exception #:account-id
                              #:allow-publish #:allow-upstream #:arn #:asset
                              #:asset-hashes #:asset-name #:asset-summary
                              #:asset-summary-list
                              #:associate-external-connection
                              #:associate-external-connection-request
                              #:associate-external-connection-result
                              #:associated-package #:associated-package-list
                              #:authorization-token-duration-seconds
                              #:boolean-optional
                              #:code-artifact-control-plane-service
                              #:conflict-exception #:copy-package-versions
                              #:copy-package-versions-request
                              #:copy-package-versions-result #:create-domain
                              #:create-domain-request #:create-domain-result
                              #:create-package-group
                              #:create-package-group-request
                              #:create-package-group-result #:create-repository
                              #:create-repository-request
                              #:create-repository-result #:delete-domain
                              #:delete-domain-permissions-policy
                              #:delete-domain-permissions-policy-request
                              #:delete-domain-permissions-policy-result
                              #:delete-domain-request #:delete-domain-result
                              #:delete-package #:delete-package-group
                              #:delete-package-group-request
                              #:delete-package-group-result
                              #:delete-package-request #:delete-package-result
                              #:delete-package-versions
                              #:delete-package-versions-request
                              #:delete-package-versions-result
                              #:delete-repository
                              #:delete-repository-permissions-policy
                              #:delete-repository-permissions-policy-request
                              #:delete-repository-permissions-policy-result
                              #:delete-repository-request
                              #:delete-repository-result #:describe-domain
                              #:describe-domain-request
                              #:describe-domain-result #:describe-package
                              #:describe-package-group
                              #:describe-package-group-request
                              #:describe-package-group-result
                              #:describe-package-request
                              #:describe-package-result
                              #:describe-package-version
                              #:describe-package-version-request
                              #:describe-package-version-result
                              #:describe-repository
                              #:describe-repository-request
                              #:describe-repository-result #:description
                              #:disassociate-external-connection
                              #:disassociate-external-connection-request
                              #:disassociate-external-connection-result
                              #:dispose-package-versions
                              #:dispose-package-versions-request
                              #:dispose-package-versions-result
                              #:domain-description #:domain-entry-point
                              #:domain-name #:domain-status #:domain-summary
                              #:domain-summary-list #:endpoint-type
                              #:error-message #:external-connection-name
                              #:external-connection-status
                              #:get-associated-package-group
                              #:get-associated-package-group-request
                              #:get-associated-package-group-result
                              #:get-authorization-token
                              #:get-authorization-token-request
                              #:get-authorization-token-result
                              #:get-domain-permissions-policy
                              #:get-domain-permissions-policy-request
                              #:get-domain-permissions-policy-result
                              #:get-package-version-asset
                              #:get-package-version-asset-request
                              #:get-package-version-asset-result
                              #:get-package-version-readme
                              #:get-package-version-readme-request
                              #:get-package-version-readme-result
                              #:get-repository-endpoint
                              #:get-repository-endpoint-request
                              #:get-repository-endpoint-result
                              #:get-repository-permissions-policy
                              #:get-repository-permissions-policy-request
                              #:get-repository-permissions-policy-result
                              #:hash-algorithm #:hash-value #:integer
                              #:internal-server-exception #:license-info
                              #:license-info-list
                              #:list-allowed-repositories-for-group
                              #:list-allowed-repositories-for-group-max-results
                              #:list-allowed-repositories-for-group-request
                              #:list-allowed-repositories-for-group-result
                              #:list-associated-packages
                              #:list-associated-packages-request
                              #:list-associated-packages-result #:list-domains
                              #:list-domains-max-results #:list-domains-request
                              #:list-domains-result #:list-package-groups
                              #:list-package-groups-max-results
                              #:list-package-groups-request
                              #:list-package-groups-result
                              #:list-package-version-assets
                              #:list-package-version-assets-max-results
                              #:list-package-version-assets-request
                              #:list-package-version-assets-result
                              #:list-package-version-dependencies
                              #:list-package-version-dependencies-request
                              #:list-package-version-dependencies-result
                              #:list-package-versions
                              #:list-package-versions-max-results
                              #:list-package-versions-request
                              #:list-package-versions-result #:list-packages
                              #:list-packages-max-results
                              #:list-packages-request #:list-packages-result
                              #:list-repositories #:list-repositories-in-domain
                              #:list-repositories-in-domain-max-results
                              #:list-repositories-in-domain-request
                              #:list-repositories-in-domain-result
                              #:list-repositories-max-results
                              #:list-repositories-request
                              #:list-repositories-result
                              #:list-sub-package-groups
                              #:list-sub-package-groups-request
                              #:list-sub-package-groups-result
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-result #:long
                              #:long-optional #:origin-restrictions
                              #:package-dependency #:package-dependency-list
                              #:package-description #:package-format
                              #:package-group-allowed-repository
                              #:package-group-allowed-repository-list
                              #:package-group-allowed-repository-update
                              #:package-group-allowed-repository-update-type
                              #:package-group-allowed-repository-updates
                              #:package-group-association-type
                              #:package-group-contact-info
                              #:package-group-description
                              #:package-group-origin-configuration
                              #:package-group-origin-restriction
                              #:package-group-origin-restriction-mode
                              #:package-group-origin-restriction-type
                              #:package-group-origin-restrictions
                              #:package-group-pattern
                              #:package-group-pattern-prefix
                              #:package-group-reference #:package-group-summary
                              #:package-group-summary-list #:package-name
                              #:package-namespace
                              #:package-origin-configuration
                              #:package-origin-restrictions #:package-summary
                              #:package-summary-list #:package-version
                              #:package-version-description
                              #:package-version-error
                              #:package-version-error-code
                              #:package-version-error-map
                              #:package-version-list #:package-version-origin
                              #:package-version-origin-type
                              #:package-version-revision
                              #:package-version-revision-map
                              #:package-version-sort-type
                              #:package-version-status
                              #:package-version-summary
                              #:package-version-summary-list #:pagination-token
                              #:policy-document #:policy-revision
                              #:publish-package-version
                              #:publish-package-version-request
                              #:publish-package-version-result
                              #:put-domain-permissions-policy
                              #:put-domain-permissions-policy-request
                              #:put-domain-permissions-policy-result
                              #:put-package-origin-configuration
                              #:put-package-origin-configuration-request
                              #:put-package-origin-configuration-result
                              #:put-repository-permissions-policy
                              #:put-repository-permissions-policy-request
                              #:put-repository-permissions-policy-result
                              #:repository-description
                              #:repository-external-connection-info
                              #:repository-external-connection-info-list
                              #:repository-name #:repository-name-list
                              #:repository-summary #:repository-summary-list
                              #:resource-not-found-exception #:resource-policy
                              #:resource-type #:retry-after-seconds #:sha256
                              #:service-quota-exceeded-exception #:string
                              #:string255 #:successful-package-version-info
                              #:successful-package-version-info-map #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-result #:tag-value
                              #:throttling-exception #:timestamp
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-result #:update-package-group
                              #:update-package-group-origin-configuration
                              #:update-package-group-origin-configuration-request
                              #:update-package-group-origin-configuration-result
                              #:update-package-group-request
                              #:update-package-group-result
                              #:update-package-versions-status
                              #:update-package-versions-status-request
                              #:update-package-versions-status-result
                              #:update-repository #:update-repository-request
                              #:update-repository-result #:upstream-repository
                              #:upstream-repository-info
                              #:upstream-repository-info-list
                              #:upstream-repository-list #:validation-exception
                              #:validation-exception-reason))
(common-lisp:in-package #:pira/codeartifact)

(smithy/sdk/service:define-service code-artifact-control-plane-service
                                   :shape-name
                                   "CodeArtifactControlPlaneService" :version
                                   "2018-09-22" :title "CodeArtifact" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "codeartifact")
                                      ("arnNamespace" . "codeartifact")
                                      ("cloudFormationName" . "Codeartifact")
                                      ("cloudTrailEventSource"
                                       . "codeartifact.amazonaws.com")
                                      ("endpointPrefix" . "codeartifact"))
                                     ("aws.auth#sigv4"
                                      ("name" . "codeartifact"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum allow-publish
    common-lisp:nil
  (:allow "ALLOW")
  (:block "BLOCK"))

(smithy/sdk/shapes:define-enum allow-upstream
    common-lisp:nil
  (:allow "ALLOW")
  (:block "BLOCK"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t)

(smithy/sdk/shapes:define-map asset-hashes :key hash-algorithm :value
                              hash-value)

(smithy/sdk/shapes:define-type asset-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure asset-summary common-lisp:nil
                                    ((name :target-type asset-name :required
                                      common-lisp:t :member-name "name")
                                     (size :target-type long-optional
                                      :member-name "size")
                                     (hashes :target-type asset-hashes
                                      :member-name "hashes"))
                                    (:shape-name "AssetSummary"))

(smithy/sdk/shapes:define-list asset-summary-list :member asset-summary)

(smithy/sdk/shapes:define-input associate-external-connection-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (external-connection :target-type
                                  external-connection-name :required
                                  common-lisp:t :member-name
                                  "externalConnection" :http-query
                                  "external-connection"))
                                (:shape-name
                                 "AssociateExternalConnectionRequest"))

(smithy/sdk/shapes:define-output associate-external-connection-result
                                 common-lisp:nil
                                 ((repository :target-type
                                   repository-description :member-name
                                   "repository"))
                                 (:shape-name
                                  "AssociateExternalConnectionResult"))

(smithy/sdk/shapes:define-structure associated-package common-lisp:nil
                                    ((format :target-type package-format
                                      :member-name "format")
                                     (namespace :target-type package-namespace
                                      :member-name "namespace")
                                     (package :target-type package-name
                                      :member-name "package")
                                     (association-type :target-type
                                      package-group-association-type
                                      :member-name "associationType"))
                                    (:shape-name "AssociatedPackage"))

(smithy/sdk/shapes:define-list associated-package-list :member
                               associated-package)

(smithy/sdk/shapes:define-type authorization-token-duration-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type boolean-optional smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input copy-package-versions-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (source-repository :target-type
                                  repository-name :required common-lisp:t
                                  :member-name "sourceRepository" :http-query
                                  "source-repository")
                                 (destination-repository :target-type
                                  repository-name :required common-lisp:t
                                  :member-name "destinationRepository"
                                  :http-query "destination-repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package")
                                 (versions :target-type package-version-list
                                  :member-name "versions")
                                 (version-revisions :target-type
                                  package-version-revision-map :member-name
                                  "versionRevisions")
                                 (allow-overwrite :target-type boolean-optional
                                  :member-name "allowOverwrite")
                                 (include-from-upstream :target-type
                                  boolean-optional :member-name
                                  "includeFromUpstream"))
                                (:shape-name "CopyPackageVersionsRequest"))

(smithy/sdk/shapes:define-output copy-package-versions-result common-lisp:nil
                                 ((successful-versions :target-type
                                   successful-package-version-info-map
                                   :member-name "successfulVersions")
                                  (failed-versions :target-type
                                   package-version-error-map :member-name
                                   "failedVersions"))
                                 (:shape-name "CopyPackageVersionsResult"))

(smithy/sdk/shapes:define-input create-domain-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (encryption-key :target-type arn :member-name
                                  "encryptionKey")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateDomainRequest"))

(smithy/sdk/shapes:define-output create-domain-result common-lisp:nil
                                 ((domain :target-type domain-description
                                   :member-name "domain"))
                                 (:shape-name "CreateDomainResult"))

(smithy/sdk/shapes:define-input create-package-group-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (package-group :target-type
                                  package-group-pattern :required common-lisp:t
                                  :member-name "packageGroup")
                                 (contact-info :target-type
                                  package-group-contact-info :member-name
                                  "contactInfo")
                                 (description :target-type description
                                  :member-name "description")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreatePackageGroupRequest"))

(smithy/sdk/shapes:define-output create-package-group-result common-lisp:nil
                                 ((package-group :target-type
                                   package-group-description :member-name
                                   "packageGroup"))
                                 (:shape-name "CreatePackageGroupResult"))

(smithy/sdk/shapes:define-input create-repository-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (description :target-type description
                                  :member-name "description")
                                 (upstreams :target-type
                                  upstream-repository-list :member-name
                                  "upstreams")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateRepositoryRequest"))

(smithy/sdk/shapes:define-output create-repository-result common-lisp:nil
                                 ((repository :target-type
                                   repository-description :member-name
                                   "repository"))
                                 (:shape-name "CreateRepositoryResult"))

(smithy/sdk/shapes:define-input delete-domain-permissions-policy-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (policy-revision :target-type policy-revision
                                  :member-name "policyRevision" :http-query
                                  "policy-revision"))
                                (:shape-name
                                 "DeleteDomainPermissionsPolicyRequest"))

(smithy/sdk/shapes:define-output delete-domain-permissions-policy-result
                                 common-lisp:nil
                                 ((policy :target-type resource-policy
                                   :member-name "policy"))
                                 (:shape-name
                                  "DeleteDomainPermissionsPolicyResult"))

(smithy/sdk/shapes:define-input delete-domain-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner"))
                                (:shape-name "DeleteDomainRequest"))

(smithy/sdk/shapes:define-output delete-domain-result common-lisp:nil
                                 ((domain :target-type domain-description
                                   :member-name "domain"))
                                 (:shape-name "DeleteDomainResult"))

(smithy/sdk/shapes:define-input delete-package-group-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (package-group :target-type string :required
                                  common-lisp:t :member-name "packageGroup"
                                  :http-query "package-group"))
                                (:shape-name "DeletePackageGroupRequest"))

(smithy/sdk/shapes:define-output delete-package-group-result common-lisp:nil
                                 ((package-group :target-type
                                   package-group-description :member-name
                                   "packageGroup"))
                                 (:shape-name "DeletePackageGroupResult"))

(smithy/sdk/shapes:define-input delete-package-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package"))
                                (:shape-name "DeletePackageRequest"))

(smithy/sdk/shapes:define-output delete-package-result common-lisp:nil
                                 ((deleted-package :target-type package-summary
                                   :member-name "deletedPackage"))
                                 (:shape-name "DeletePackageResult"))

(smithy/sdk/shapes:define-input delete-package-versions-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package")
                                 (versions :target-type package-version-list
                                  :required common-lisp:t :member-name
                                  "versions")
                                 (expected-status :target-type
                                  package-version-status :member-name
                                  "expectedStatus"))
                                (:shape-name "DeletePackageVersionsRequest"))

(smithy/sdk/shapes:define-output delete-package-versions-result common-lisp:nil
                                 ((successful-versions :target-type
                                   successful-package-version-info-map
                                   :member-name "successfulVersions")
                                  (failed-versions :target-type
                                   package-version-error-map :member-name
                                   "failedVersions"))
                                 (:shape-name "DeletePackageVersionsResult"))

(smithy/sdk/shapes:define-input delete-repository-permissions-policy-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (policy-revision :target-type policy-revision
                                  :member-name "policyRevision" :http-query
                                  "policy-revision"))
                                (:shape-name
                                 "DeleteRepositoryPermissionsPolicyRequest"))

(smithy/sdk/shapes:define-output delete-repository-permissions-policy-result
                                 common-lisp:nil
                                 ((policy :target-type resource-policy
                                   :member-name "policy"))
                                 (:shape-name
                                  "DeleteRepositoryPermissionsPolicyResult"))

(smithy/sdk/shapes:define-input delete-repository-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository"))
                                (:shape-name "DeleteRepositoryRequest"))

(smithy/sdk/shapes:define-output delete-repository-result common-lisp:nil
                                 ((repository :target-type
                                   repository-description :member-name
                                   "repository"))
                                 (:shape-name "DeleteRepositoryResult"))

(smithy/sdk/shapes:define-input describe-domain-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner"))
                                (:shape-name "DescribeDomainRequest"))

(smithy/sdk/shapes:define-output describe-domain-result common-lisp:nil
                                 ((domain :target-type domain-description
                                   :member-name "domain"))
                                 (:shape-name "DescribeDomainResult"))

(smithy/sdk/shapes:define-input describe-package-group-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (package-group :target-type
                                  package-group-pattern :required common-lisp:t
                                  :member-name "packageGroup" :http-query
                                  "package-group"))
                                (:shape-name "DescribePackageGroupRequest"))

(smithy/sdk/shapes:define-output describe-package-group-result common-lisp:nil
                                 ((package-group :target-type
                                   package-group-description :member-name
                                   "packageGroup"))
                                 (:shape-name "DescribePackageGroupResult"))

(smithy/sdk/shapes:define-input describe-package-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package"))
                                (:shape-name "DescribePackageRequest"))

(smithy/sdk/shapes:define-output describe-package-result common-lisp:nil
                                 ((package :target-type package-description
                                   :required common-lisp:t :member-name
                                   "package"))
                                 (:shape-name "DescribePackageResult"))

(smithy/sdk/shapes:define-input describe-package-version-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package")
                                 (package-version :target-type package-version
                                  :required common-lisp:t :member-name
                                  "packageVersion" :http-query "version"))
                                (:shape-name "DescribePackageVersionRequest"))

(smithy/sdk/shapes:define-output describe-package-version-result
                                 common-lisp:nil
                                 ((package-version :target-type
                                   package-version-description :required
                                   common-lisp:t :member-name
                                   "packageVersion"))
                                 (:shape-name "DescribePackageVersionResult"))

(smithy/sdk/shapes:define-input describe-repository-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository"))
                                (:shape-name "DescribeRepositoryRequest"))

(smithy/sdk/shapes:define-output describe-repository-result common-lisp:nil
                                 ((repository :target-type
                                   repository-description :member-name
                                   "repository"))
                                 (:shape-name "DescribeRepositoryResult"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-external-connection-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (external-connection :target-type
                                  external-connection-name :required
                                  common-lisp:t :member-name
                                  "externalConnection" :http-query
                                  "external-connection"))
                                (:shape-name
                                 "DisassociateExternalConnectionRequest"))

(smithy/sdk/shapes:define-output disassociate-external-connection-result
                                 common-lisp:nil
                                 ((repository :target-type
                                   repository-description :member-name
                                   "repository"))
                                 (:shape-name
                                  "DisassociateExternalConnectionResult"))

(smithy/sdk/shapes:define-input dispose-package-versions-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package")
                                 (versions :target-type package-version-list
                                  :required common-lisp:t :member-name
                                  "versions")
                                 (version-revisions :target-type
                                  package-version-revision-map :member-name
                                  "versionRevisions")
                                 (expected-status :target-type
                                  package-version-status :member-name
                                  "expectedStatus"))
                                (:shape-name "DisposePackageVersionsRequest"))

(smithy/sdk/shapes:define-output dispose-package-versions-result
                                 common-lisp:nil
                                 ((successful-versions :target-type
                                   successful-package-version-info-map
                                   :member-name "successfulVersions")
                                  (failed-versions :target-type
                                   package-version-error-map :member-name
                                   "failedVersions"))
                                 (:shape-name "DisposePackageVersionsResult"))

(smithy/sdk/shapes:define-structure domain-description common-lisp:nil
                                    ((name :target-type domain-name
                                      :member-name "name")
                                     (owner :target-type account-id
                                      :member-name "owner")
                                     (arn :target-type arn :member-name "arn")
                                     (status :target-type domain-status
                                      :member-name "status")
                                     (created-time :target-type timestamp
                                      :member-name "createdTime")
                                     (encryption-key :target-type arn
                                      :member-name "encryptionKey")
                                     (repository-count :target-type integer
                                      :member-name "repositoryCount")
                                     (asset-size-bytes :target-type long
                                      :member-name "assetSizeBytes")
                                     (s3bucket-arn :target-type arn
                                      :member-name "s3BucketArn"))
                                    (:shape-name "DomainDescription"))

(smithy/sdk/shapes:define-structure domain-entry-point common-lisp:nil
                                    ((repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName")
                                     (external-connection-name :target-type
                                      external-connection-name :member-name
                                      "externalConnectionName"))
                                    (:shape-name "DomainEntryPoint"))

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum domain-status
    common-lisp:nil
  (:active "Active")
  (:deleted "Deleted"))

(smithy/sdk/shapes:define-structure domain-summary common-lisp:nil
                                    ((name :target-type domain-name
                                      :member-name "name")
                                     (owner :target-type account-id
                                      :member-name "owner")
                                     (arn :target-type arn :member-name "arn")
                                     (status :target-type domain-status
                                      :member-name "status")
                                     (created-time :target-type timestamp
                                      :member-name "createdTime")
                                     (encryption-key :target-type arn
                                      :member-name "encryptionKey"))
                                    (:shape-name "DomainSummary"))

(smithy/sdk/shapes:define-list domain-summary-list :member domain-summary)

(smithy/sdk/shapes:define-enum endpoint-type
    common-lisp:nil
  (:dualstack "dualstack")
  (:ipv4 "ipv4"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type external-connection-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum external-connection-status
    common-lisp:nil
  (:available "Available"))

(smithy/sdk/shapes:define-input get-associated-package-group-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package"))
                                (:shape-name
                                 "GetAssociatedPackageGroupRequest"))

(smithy/sdk/shapes:define-output get-associated-package-group-result
                                 common-lisp:nil
                                 ((package-group :target-type
                                   package-group-description :member-name
                                   "packageGroup")
                                  (association-type :target-type
                                   package-group-association-type :member-name
                                   "associationType"))
                                 (:shape-name
                                  "GetAssociatedPackageGroupResult"))

(smithy/sdk/shapes:define-input get-authorization-token-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (duration-seconds :target-type
                                  authorization-token-duration-seconds
                                  :member-name "durationSeconds" :http-query
                                  "duration"))
                                (:shape-name "GetAuthorizationTokenRequest"))

(smithy/sdk/shapes:define-output get-authorization-token-result common-lisp:nil
                                 ((authorization-token :target-type string
                                   :member-name "authorizationToken")
                                  (expiration :target-type timestamp
                                   :member-name "expiration"))
                                 (:shape-name "GetAuthorizationTokenResult"))

(smithy/sdk/shapes:define-input get-domain-permissions-policy-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner"))
                                (:shape-name
                                 "GetDomainPermissionsPolicyRequest"))

(smithy/sdk/shapes:define-output get-domain-permissions-policy-result
                                 common-lisp:nil
                                 ((policy :target-type resource-policy
                                   :member-name "policy"))
                                 (:shape-name
                                  "GetDomainPermissionsPolicyResult"))

(smithy/sdk/shapes:define-input get-package-version-asset-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package")
                                 (package-version :target-type package-version
                                  :required common-lisp:t :member-name
                                  "packageVersion" :http-query "version")
                                 (asset :target-type asset-name :required
                                  common-lisp:t :member-name "asset"
                                  :http-query "asset")
                                 (package-version-revision :target-type
                                  package-version-revision :member-name
                                  "packageVersionRevision" :http-query
                                  "revision"))
                                (:shape-name "GetPackageVersionAssetRequest"))

(smithy/sdk/shapes:define-output get-package-version-asset-result
                                 common-lisp:nil
                                 ((asset :target-type asset :member-name
                                   "asset" :http-payload common-lisp:t)
                                  (asset-name :target-type asset-name
                                   :member-name "assetName" :http-header
                                   "X-AssetName")
                                  (package-version :target-type package-version
                                   :member-name "packageVersion" :http-header
                                   "X-PackageVersion")
                                  (package-version-revision :target-type
                                   package-version-revision :member-name
                                   "packageVersionRevision" :http-header
                                   "X-PackageVersionRevision"))
                                 (:shape-name "GetPackageVersionAssetResult"))

(smithy/sdk/shapes:define-input get-package-version-readme-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package")
                                 (package-version :target-type package-version
                                  :required common-lisp:t :member-name
                                  "packageVersion" :http-query "version"))
                                (:shape-name "GetPackageVersionReadmeRequest"))

(smithy/sdk/shapes:define-output get-package-version-readme-result
                                 common-lisp:nil
                                 ((format :target-type package-format
                                   :member-name "format")
                                  (namespace :target-type package-namespace
                                   :member-name "namespace")
                                  (package :target-type package-name
                                   :member-name "package")
                                  (version :target-type package-version
                                   :member-name "version")
                                  (version-revision :target-type
                                   package-version-revision :member-name
                                   "versionRevision")
                                  (readme :target-type string :member-name
                                   "readme"))
                                 (:shape-name "GetPackageVersionReadmeResult"))

(smithy/sdk/shapes:define-input get-repository-endpoint-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (endpoint-type :target-type endpoint-type
                                  :member-name "endpointType" :http-query
                                  "endpointType"))
                                (:shape-name "GetRepositoryEndpointRequest"))

(smithy/sdk/shapes:define-output get-repository-endpoint-result common-lisp:nil
                                 ((repository-endpoint :target-type string
                                   :member-name "repositoryEndpoint"))
                                 (:shape-name "GetRepositoryEndpointResult"))

(smithy/sdk/shapes:define-input get-repository-permissions-policy-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository"))
                                (:shape-name
                                 "GetRepositoryPermissionsPolicyRequest"))

(smithy/sdk/shapes:define-output get-repository-permissions-policy-result
                                 common-lisp:nil
                                 ((policy :target-type resource-policy
                                   :member-name "policy"))
                                 (:shape-name
                                  "GetRepositoryPermissionsPolicyResult"))

(smithy/sdk/shapes:define-enum hash-algorithm
    common-lisp:nil
  (:md5 "MD5")
  (:sha1 "SHA-1")
  (:sha256 "SHA-256")
  (:sha512 "SHA-512"))

(smithy/sdk/shapes:define-type hash-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure license-info common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (url :target-type string :member-name
                                      "url"))
                                    (:shape-name "LicenseInfo"))

(smithy/sdk/shapes:define-list license-info-list :member license-info)

(smithy/sdk/shapes:define-type list-allowed-repositories-for-group-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-allowed-repositories-for-group-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (package-group :target-type
                                  package-group-pattern :required common-lisp:t
                                  :member-name "packageGroup" :http-query
                                  "package-group")
                                 (origin-restriction-type :target-type
                                  package-group-origin-restriction-type
                                  :required common-lisp:t :member-name
                                  "originRestrictionType" :http-query
                                  "originRestrictionType")
                                 (max-results :target-type
                                  list-allowed-repositories-for-group-max-results
                                  :member-name "maxResults" :http-query
                                  "max-results")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "next-token"))
                                (:shape-name
                                 "ListAllowedRepositoriesForGroupRequest"))

(smithy/sdk/shapes:define-output list-allowed-repositories-for-group-result
                                 common-lisp:nil
                                 ((allowed-repositories :target-type
                                   repository-name-list :member-name
                                   "allowedRepositories")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAllowedRepositoriesForGroupResult"))

(smithy/sdk/shapes:define-input list-associated-packages-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (package-group :target-type
                                  package-group-pattern :required common-lisp:t
                                  :member-name "packageGroup" :http-query
                                  "package-group")
                                 (max-results :target-type
                                  list-packages-max-results :member-name
                                  "maxResults" :http-query "max-results")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "next-token")
                                 (preview :target-type boolean-optional
                                  :member-name "preview" :http-query
                                  "preview"))
                                (:shape-name "ListAssociatedPackagesRequest"))

(smithy/sdk/shapes:define-output list-associated-packages-result
                                 common-lisp:nil
                                 ((packages :target-type
                                   associated-package-list :member-name
                                   "packages")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAssociatedPackagesResult"))

(smithy/sdk/shapes:define-type list-domains-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-domains-request common-lisp:nil
                                ((max-results :target-type
                                  list-domains-max-results :member-name
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListDomainsRequest"))

(smithy/sdk/shapes:define-output list-domains-result common-lisp:nil
                                 ((domains :target-type domain-summary-list
                                   :member-name "domains")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDomainsResult"))

(smithy/sdk/shapes:define-type list-package-groups-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-package-groups-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (max-results :target-type
                                  list-package-groups-max-results :member-name
                                  "maxResults" :http-query "max-results")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "next-token")
                                 (prefix :target-type
                                  package-group-pattern-prefix :member-name
                                  "prefix" :http-query "prefix"))
                                (:shape-name "ListPackageGroupsRequest"))

(smithy/sdk/shapes:define-output list-package-groups-result common-lisp:nil
                                 ((package-groups :target-type
                                   package-group-summary-list :member-name
                                   "packageGroups")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPackageGroupsResult"))

(smithy/sdk/shapes:define-type list-package-version-assets-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-package-version-assets-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package")
                                 (package-version :target-type package-version
                                  :required common-lisp:t :member-name
                                  "packageVersion" :http-query "version")
                                 (max-results :target-type
                                  list-package-version-assets-max-results
                                  :member-name "maxResults" :http-query
                                  "max-results")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "next-token"))
                                (:shape-name "ListPackageVersionAssetsRequest"))

(smithy/sdk/shapes:define-output list-package-version-assets-result
                                 common-lisp:nil
                                 ((format :target-type package-format
                                   :member-name "format")
                                  (namespace :target-type package-namespace
                                   :member-name "namespace")
                                  (package :target-type package-name
                                   :member-name "package")
                                  (version :target-type package-version
                                   :member-name "version")
                                  (version-revision :target-type
                                   package-version-revision :member-name
                                   "versionRevision")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (assets :target-type asset-summary-list
                                   :member-name "assets"))
                                 (:shape-name "ListPackageVersionAssetsResult"))

(smithy/sdk/shapes:define-input list-package-version-dependencies-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package")
                                 (package-version :target-type package-version
                                  :required common-lisp:t :member-name
                                  "packageVersion" :http-query "version")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "next-token"))
                                (:shape-name
                                 "ListPackageVersionDependenciesRequest"))

(smithy/sdk/shapes:define-output list-package-version-dependencies-result
                                 common-lisp:nil
                                 ((format :target-type package-format
                                   :member-name "format")
                                  (namespace :target-type package-namespace
                                   :member-name "namespace")
                                  (package :target-type package-name
                                   :member-name "package")
                                  (version :target-type package-version
                                   :member-name "version")
                                  (version-revision :target-type
                                   package-version-revision :member-name
                                   "versionRevision")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (dependencies :target-type
                                   package-dependency-list :member-name
                                   "dependencies"))
                                 (:shape-name
                                  "ListPackageVersionDependenciesResult"))

(smithy/sdk/shapes:define-type list-package-versions-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-package-versions-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package")
                                 (status :target-type package-version-status
                                  :member-name "status" :http-query "status")
                                 (sort-by :target-type
                                  package-version-sort-type :member-name
                                  "sortBy" :http-query "sortBy")
                                 (max-results :target-type
                                  list-package-versions-max-results
                                  :member-name "maxResults" :http-query
                                  "max-results")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "next-token")
                                 (origin-type :target-type
                                  package-version-origin-type :member-name
                                  "originType" :http-query "originType"))
                                (:shape-name "ListPackageVersionsRequest"))

(smithy/sdk/shapes:define-output list-package-versions-result common-lisp:nil
                                 ((default-display-version :target-type
                                   package-version :member-name
                                   "defaultDisplayVersion")
                                  (format :target-type package-format
                                   :member-name "format")
                                  (namespace :target-type package-namespace
                                   :member-name "namespace")
                                  (package :target-type package-name
                                   :member-name "package")
                                  (versions :target-type
                                   package-version-summary-list :member-name
                                   "versions")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPackageVersionsResult"))

(smithy/sdk/shapes:define-type list-packages-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-packages-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format
                                  :member-name "format" :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package-prefix :target-type package-name
                                  :member-name "packagePrefix" :http-query
                                  "package-prefix")
                                 (max-results :target-type
                                  list-packages-max-results :member-name
                                  "maxResults" :http-query "max-results")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "next-token")
                                 (publish :target-type allow-publish
                                  :member-name "publish" :http-query "publish")
                                 (upstream :target-type allow-upstream
                                  :member-name "upstream" :http-query
                                  "upstream"))
                                (:shape-name "ListPackagesRequest"))

(smithy/sdk/shapes:define-output list-packages-result common-lisp:nil
                                 ((packages :target-type package-summary-list
                                   :member-name "packages")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPackagesResult"))

(smithy/sdk/shapes:define-type list-repositories-in-domain-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-repositories-in-domain-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (administrator-account :target-type account-id
                                  :member-name "administratorAccount"
                                  :http-query "administrator-account")
                                 (repository-prefix :target-type
                                  repository-name :member-name
                                  "repositoryPrefix" :http-query
                                  "repository-prefix")
                                 (max-results :target-type
                                  list-repositories-in-domain-max-results
                                  :member-name "maxResults" :http-query
                                  "max-results")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "next-token"))
                                (:shape-name "ListRepositoriesInDomainRequest"))

(smithy/sdk/shapes:define-output list-repositories-in-domain-result
                                 common-lisp:nil
                                 ((repositories :target-type
                                   repository-summary-list :member-name
                                   "repositories")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRepositoriesInDomainResult"))

(smithy/sdk/shapes:define-type list-repositories-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-repositories-request common-lisp:nil
                                ((repository-prefix :target-type
                                  repository-name :member-name
                                  "repositoryPrefix" :http-query
                                  "repository-prefix")
                                 (max-results :target-type
                                  list-repositories-max-results :member-name
                                  "maxResults" :http-query "max-results")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "next-token"))
                                (:shape-name "ListRepositoriesRequest"))

(smithy/sdk/shapes:define-output list-repositories-result common-lisp:nil
                                 ((repositories :target-type
                                   repository-summary-list :member-name
                                   "repositories")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRepositoriesResult"))

(smithy/sdk/shapes:define-input list-sub-package-groups-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (package-group :target-type
                                  package-group-pattern :required common-lisp:t
                                  :member-name "packageGroup" :http-query
                                  "package-group")
                                 (max-results :target-type
                                  list-package-groups-max-results :member-name
                                  "maxResults" :http-query "max-results")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "next-token"))
                                (:shape-name "ListSubPackageGroupsRequest"))

(smithy/sdk/shapes:define-output list-sub-package-groups-result common-lisp:nil
                                 ((package-groups :target-type
                                   package-group-summary-list :member-name
                                   "packageGroups")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSubPackageGroupsResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-query "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-result common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResult"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type long-optional smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-map origin-restrictions :key
                              package-group-origin-restriction-type :value
                              package-group-origin-restriction-mode)

(smithy/sdk/shapes:define-structure package-dependency common-lisp:nil
                                    ((namespace :target-type package-namespace
                                      :member-name "namespace")
                                     (package :target-type package-name
                                      :member-name "package")
                                     (dependency-type :target-type string
                                      :member-name "dependencyType")
                                     (version-requirement :target-type string
                                      :member-name "versionRequirement"))
                                    (:shape-name "PackageDependency"))

(smithy/sdk/shapes:define-list package-dependency-list :member
                               package-dependency)

(smithy/sdk/shapes:define-structure package-description common-lisp:nil
                                    ((format :target-type package-format
                                      :member-name "format")
                                     (namespace :target-type package-namespace
                                      :member-name "namespace")
                                     (name :target-type package-name
                                      :member-name "name")
                                     (origin-configuration :target-type
                                      package-origin-configuration :member-name
                                      "originConfiguration"))
                                    (:shape-name "PackageDescription"))

(smithy/sdk/shapes:define-enum package-format
    common-lisp:nil
  (:npm "npm")
  (:pypi "pypi")
  (:maven "maven")
  (:nuget "nuget")
  (:generic "generic")
  (:ruby "ruby")
  (:swift "swift")
  (:cargo "cargo"))

(smithy/sdk/shapes:define-structure package-group-allowed-repository
                                    common-lisp:nil
                                    ((repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName")
                                     (origin-restriction-type :target-type
                                      package-group-origin-restriction-type
                                      :member-name "originRestrictionType"))
                                    (:shape-name
                                     "PackageGroupAllowedRepository"))

(smithy/sdk/shapes:define-list package-group-allowed-repository-list :member
                               package-group-allowed-repository)

(smithy/sdk/shapes:define-map package-group-allowed-repository-update :key
                              package-group-allowed-repository-update-type
                              :value repository-name-list)

(smithy/sdk/shapes:define-enum package-group-allowed-repository-update-type
    common-lisp:nil
  (:added "ADDED")
  (:removed "REMOVED"))

(smithy/sdk/shapes:define-map package-group-allowed-repository-updates :key
                              package-group-origin-restriction-type :value
                              package-group-allowed-repository-update)

(smithy/sdk/shapes:define-enum package-group-association-type
    common-lisp:nil
  (:strong "STRONG")
  (:weak "WEAK"))

(smithy/sdk/shapes:define-type package-group-contact-info
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure package-group-description common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (pattern :target-type
                                      package-group-pattern :member-name
                                      "pattern")
                                     (domain-name :target-type domain-name
                                      :member-name "domainName")
                                     (domain-owner :target-type account-id
                                      :member-name "domainOwner")
                                     (created-time :target-type timestamp
                                      :member-name "createdTime")
                                     (contact-info :target-type
                                      package-group-contact-info :member-name
                                      "contactInfo")
                                     (description :target-type description
                                      :member-name "description")
                                     (origin-configuration :target-type
                                      package-group-origin-configuration
                                      :member-name "originConfiguration")
                                     (parent :target-type
                                      package-group-reference :member-name
                                      "parent"))
                                    (:shape-name "PackageGroupDescription"))

(smithy/sdk/shapes:define-structure package-group-origin-configuration
                                    common-lisp:nil
                                    ((restrictions :target-type
                                      package-group-origin-restrictions
                                      :member-name "restrictions"))
                                    (:shape-name
                                     "PackageGroupOriginConfiguration"))

(smithy/sdk/shapes:define-structure package-group-origin-restriction
                                    common-lisp:nil
                                    ((mode :target-type
                                      package-group-origin-restriction-mode
                                      :member-name "mode")
                                     (effective-mode :target-type
                                      package-group-origin-restriction-mode
                                      :member-name "effectiveMode")
                                     (inherited-from :target-type
                                      package-group-reference :member-name
                                      "inheritedFrom")
                                     (repositories-count :target-type
                                      long-optional :member-name
                                      "repositoriesCount"))
                                    (:shape-name
                                     "PackageGroupOriginRestriction"))

(smithy/sdk/shapes:define-enum package-group-origin-restriction-mode
    common-lisp:nil
  (:allow "ALLOW")
  (:allow-specific-repositories "ALLOW_SPECIFIC_REPOSITORIES")
  (:block "BLOCK")
  (:inherit "INHERIT"))

(smithy/sdk/shapes:define-enum package-group-origin-restriction-type
    common-lisp:nil
  (:external-upstream "EXTERNAL_UPSTREAM")
  (:internal-upstream "INTERNAL_UPSTREAM")
  (:publish "PUBLISH"))

(smithy/sdk/shapes:define-map package-group-origin-restrictions :key
                              package-group-origin-restriction-type :value
                              package-group-origin-restriction)

(smithy/sdk/shapes:define-type package-group-pattern
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-group-pattern-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure package-group-reference common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (pattern :target-type
                                      package-group-pattern :member-name
                                      "pattern"))
                                    (:shape-name "PackageGroupReference"))

(smithy/sdk/shapes:define-structure package-group-summary common-lisp:nil
                                    ((arn :target-type arn :member-name "arn")
                                     (pattern :target-type
                                      package-group-pattern :member-name
                                      "pattern")
                                     (domain-name :target-type domain-name
                                      :member-name "domainName")
                                     (domain-owner :target-type account-id
                                      :member-name "domainOwner")
                                     (created-time :target-type timestamp
                                      :member-name "createdTime")
                                     (contact-info :target-type
                                      package-group-contact-info :member-name
                                      "contactInfo")
                                     (description :target-type description
                                      :member-name "description")
                                     (origin-configuration :target-type
                                      package-group-origin-configuration
                                      :member-name "originConfiguration")
                                     (parent :target-type
                                      package-group-reference :member-name
                                      "parent"))
                                    (:shape-name "PackageGroupSummary"))

(smithy/sdk/shapes:define-list package-group-summary-list :member
                               package-group-summary)

(smithy/sdk/shapes:define-type package-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure package-origin-configuration
                                    common-lisp:nil
                                    ((restrictions :target-type
                                      package-origin-restrictions :member-name
                                      "restrictions"))
                                    (:shape-name "PackageOriginConfiguration"))

(smithy/sdk/shapes:define-structure package-origin-restrictions common-lisp:nil
                                    ((publish :target-type allow-publish
                                      :required common-lisp:t :member-name
                                      "publish")
                                     (upstream :target-type allow-upstream
                                      :required common-lisp:t :member-name
                                      "upstream"))
                                    (:shape-name "PackageOriginRestrictions"))

(smithy/sdk/shapes:define-structure package-summary common-lisp:nil
                                    ((format :target-type package-format
                                      :member-name "format")
                                     (namespace :target-type package-namespace
                                      :member-name "namespace")
                                     (package :target-type package-name
                                      :member-name "package")
                                     (origin-configuration :target-type
                                      package-origin-configuration :member-name
                                      "originConfiguration"))
                                    (:shape-name "PackageSummary"))

(smithy/sdk/shapes:define-list package-summary-list :member package-summary)

(smithy/sdk/shapes:define-type package-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure package-version-description common-lisp:nil
                                    ((format :target-type package-format
                                      :member-name "format")
                                     (namespace :target-type package-namespace
                                      :member-name "namespace")
                                     (package-name :target-type package-name
                                      :member-name "packageName")
                                     (display-name :target-type string255
                                      :member-name "displayName")
                                     (version :target-type package-version
                                      :member-name "version")
                                     (summary :target-type string :member-name
                                      "summary")
                                     (home-page :target-type string
                                      :member-name "homePage")
                                     (source-code-repository :target-type
                                      string :member-name
                                      "sourceCodeRepository")
                                     (published-time :target-type timestamp
                                      :member-name "publishedTime")
                                     (licenses :target-type license-info-list
                                      :member-name "licenses")
                                     (revision :target-type
                                      package-version-revision :member-name
                                      "revision")
                                     (status :target-type
                                      package-version-status :member-name
                                      "status")
                                     (origin :target-type
                                      package-version-origin :member-name
                                      "origin"))
                                    (:shape-name "PackageVersionDescription"))

(smithy/sdk/shapes:define-structure package-version-error common-lisp:nil
                                    ((error-code :target-type
                                      package-version-error-code :member-name
                                      "errorCode")
                                     (error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name "PackageVersionError"))

(smithy/sdk/shapes:define-enum package-version-error-code
    common-lisp:nil
  (:already-exists "ALREADY_EXISTS")
  (:mismatched-revision "MISMATCHED_REVISION")
  (:mismatched-status "MISMATCHED_STATUS")
  (:not-allowed "NOT_ALLOWED")
  (:not-found "NOT_FOUND")
  (:skipped "SKIPPED"))

(smithy/sdk/shapes:define-map package-version-error-map :key package-version
                              :value package-version-error)

(smithy/sdk/shapes:define-list package-version-list :member package-version)

(smithy/sdk/shapes:define-structure package-version-origin common-lisp:nil
                                    ((domain-entry-point :target-type
                                      domain-entry-point :member-name
                                      "domainEntryPoint")
                                     (origin-type :target-type
                                      package-version-origin-type :member-name
                                      "originType"))
                                    (:shape-name "PackageVersionOrigin"))

(smithy/sdk/shapes:define-enum package-version-origin-type
    common-lisp:nil
  (:internal "INTERNAL")
  (:external "EXTERNAL")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-type package-version-revision
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map package-version-revision-map :key package-version
                              :value package-version-revision)

(smithy/sdk/shapes:define-enum package-version-sort-type
    common-lisp:nil
  (:published-time "PUBLISHED_TIME"))

(smithy/sdk/shapes:define-enum package-version-status
    common-lisp:nil
  (:published "Published")
  (:unfinished "Unfinished")
  (:unlisted "Unlisted")
  (:archived "Archived")
  (:disposed "Disposed")
  (:deleted "Deleted"))

(smithy/sdk/shapes:define-structure package-version-summary common-lisp:nil
                                    ((version :target-type package-version
                                      :required common-lisp:t :member-name
                                      "version")
                                     (revision :target-type
                                      package-version-revision :member-name
                                      "revision")
                                     (status :target-type
                                      package-version-status :required
                                      common-lisp:t :member-name "status")
                                     (origin :target-type
                                      package-version-origin :member-name
                                      "origin"))
                                    (:shape-name "PackageVersionSummary"))

(smithy/sdk/shapes:define-list package-version-summary-list :member
                               package-version-summary)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-revision smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input publish-package-version-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package")
                                 (package-version :target-type package-version
                                  :required common-lisp:t :member-name
                                  "packageVersion" :http-query "version")
                                 (asset-content :target-type asset :required
                                  common-lisp:t :member-name "assetContent"
                                  :http-payload common-lisp:t)
                                 (asset-name :target-type asset-name :required
                                  common-lisp:t :member-name "assetName"
                                  :http-query "asset")
                                 (asset-sha256 :target-type sha256 :required
                                  common-lisp:t :member-name "assetSHA256"
                                  :http-header "x-amz-content-sha256")
                                 (unfinished :target-type boolean-optional
                                  :member-name "unfinished" :http-query
                                  "unfinished"))
                                (:shape-name "PublishPackageVersionRequest"))

(smithy/sdk/shapes:define-output publish-package-version-result common-lisp:nil
                                 ((format :target-type package-format
                                   :member-name "format")
                                  (namespace :target-type package-namespace
                                   :member-name "namespace")
                                  (package :target-type package-name
                                   :member-name "package")
                                  (version :target-type package-version
                                   :member-name "version")
                                  (version-revision :target-type
                                   package-version-revision :member-name
                                   "versionRevision")
                                  (status :target-type package-version-status
                                   :member-name "status")
                                  (asset :target-type asset-summary
                                   :member-name "asset"))
                                 (:shape-name "PublishPackageVersionResult"))

(smithy/sdk/shapes:define-input put-domain-permissions-policy-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner")
                                 (policy-revision :target-type policy-revision
                                  :member-name "policyRevision")
                                 (policy-document :target-type policy-document
                                  :required common-lisp:t :member-name
                                  "policyDocument"))
                                (:shape-name
                                 "PutDomainPermissionsPolicyRequest"))

(smithy/sdk/shapes:define-output put-domain-permissions-policy-result
                                 common-lisp:nil
                                 ((policy :target-type resource-policy
                                   :member-name "policy"))
                                 (:shape-name
                                  "PutDomainPermissionsPolicyResult"))

(smithy/sdk/shapes:define-input put-package-origin-configuration-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package")
                                 (restrictions :target-type
                                  package-origin-restrictions :required
                                  common-lisp:t :member-name "restrictions"))
                                (:shape-name
                                 "PutPackageOriginConfigurationRequest"))

(smithy/sdk/shapes:define-output put-package-origin-configuration-result
                                 common-lisp:nil
                                 ((origin-configuration :target-type
                                   package-origin-configuration :member-name
                                   "originConfiguration"))
                                 (:shape-name
                                  "PutPackageOriginConfigurationResult"))

(smithy/sdk/shapes:define-input put-repository-permissions-policy-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (policy-revision :target-type policy-revision
                                  :member-name "policyRevision")
                                 (policy-document :target-type policy-document
                                  :required common-lisp:t :member-name
                                  "policyDocument"))
                                (:shape-name
                                 "PutRepositoryPermissionsPolicyRequest"))

(smithy/sdk/shapes:define-output put-repository-permissions-policy-result
                                 common-lisp:nil
                                 ((policy :target-type resource-policy
                                   :member-name "policy"))
                                 (:shape-name
                                  "PutRepositoryPermissionsPolicyResult"))

(smithy/sdk/shapes:define-structure repository-description common-lisp:nil
                                    ((name :target-type repository-name
                                      :member-name "name")
                                     (administrator-account :target-type
                                      account-id :member-name
                                      "administratorAccount")
                                     (domain-name :target-type domain-name
                                      :member-name "domainName")
                                     (domain-owner :target-type account-id
                                      :member-name "domainOwner")
                                     (arn :target-type arn :member-name "arn")
                                     (description :target-type description
                                      :member-name "description")
                                     (upstreams :target-type
                                      upstream-repository-info-list
                                      :member-name "upstreams")
                                     (external-connections :target-type
                                      repository-external-connection-info-list
                                      :member-name "externalConnections")
                                     (created-time :target-type timestamp
                                      :member-name "createdTime"))
                                    (:shape-name "RepositoryDescription"))

(smithy/sdk/shapes:define-structure repository-external-connection-info
                                    common-lisp:nil
                                    ((external-connection-name :target-type
                                      external-connection-name :member-name
                                      "externalConnectionName")
                                     (package-format :target-type
                                      package-format :member-name
                                      "packageFormat")
                                     (status :target-type
                                      external-connection-status :member-name
                                      "status"))
                                    (:shape-name
                                     "RepositoryExternalConnectionInfo"))

(smithy/sdk/shapes:define-list repository-external-connection-info-list :member
                               repository-external-connection-info)

(smithy/sdk/shapes:define-type repository-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list repository-name-list :member repository-name)

(smithy/sdk/shapes:define-structure repository-summary common-lisp:nil
                                    ((name :target-type repository-name
                                      :member-name "name")
                                     (administrator-account :target-type
                                      account-id :member-name
                                      "administratorAccount")
                                     (domain-name :target-type domain-name
                                      :member-name "domainName")
                                     (domain-owner :target-type account-id
                                      :member-name "domainOwner")
                                     (arn :target-type arn :member-name "arn")
                                     (description :target-type description
                                      :member-name "description")
                                     (created-time :target-type timestamp
                                      :member-name "createdTime"))
                                    (:shape-name "RepositorySummary"))

(smithy/sdk/shapes:define-list repository-summary-list :member
                               repository-summary)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-policy common-lisp:nil
                                    ((resource-arn :target-type arn
                                      :member-name "resourceArn")
                                     (revision :target-type policy-revision
                                      :member-name "revision")
                                     (document :target-type policy-document
                                      :member-name "document"))
                                    (:shape-name "ResourcePolicy"))

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:domain "domain")
  (:repository "repository")
  (:package "package")
  (:package-version "package-version")
  (:asset "asset"))

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type sha256 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string255 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure successful-package-version-info
                                    common-lisp:nil
                                    ((revision :target-type string :member-name
                                      "revision")
                                     (status :target-type
                                      package-version-status :member-name
                                      "status"))
                                    (:shape-name
                                     "SuccessfulPackageVersionInfo"))

(smithy/sdk/shapes:define-map successful-package-version-info-map :key
                              package-version :value
                              successful-package-version-info)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-query "resourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResult"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-query "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResult"))

(smithy/sdk/shapes:define-input
 update-package-group-origin-configuration-request common-lisp:nil
 ((domain :target-type domain-name :required common-lisp:t :member-name
   "domain" :http-query "domain")
  (domain-owner :target-type account-id :member-name "domainOwner" :http-query
   "domain-owner")
  (package-group :target-type package-group-pattern :required common-lisp:t
   :member-name "packageGroup" :http-query "package-group")
  (restrictions :target-type origin-restrictions :member-name "restrictions")
  (add-allowed-repositories :target-type package-group-allowed-repository-list
   :member-name "addAllowedRepositories")
  (remove-allowed-repositories :target-type
   package-group-allowed-repository-list :member-name
   "removeAllowedRepositories"))
 (:shape-name "UpdatePackageGroupOriginConfigurationRequest"))

(smithy/sdk/shapes:define-output
 update-package-group-origin-configuration-result common-lisp:nil
 ((package-group :target-type package-group-description :member-name
   "packageGroup")
  (allowed-repository-updates :target-type
   package-group-allowed-repository-updates :member-name
   "allowedRepositoryUpdates"))
 (:shape-name "UpdatePackageGroupOriginConfigurationResult"))

(smithy/sdk/shapes:define-input update-package-group-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (package-group :target-type
                                  package-group-pattern :required common-lisp:t
                                  :member-name "packageGroup")
                                 (contact-info :target-type
                                  package-group-contact-info :member-name
                                  "contactInfo")
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "UpdatePackageGroupRequest"))

(smithy/sdk/shapes:define-output update-package-group-result common-lisp:nil
                                 ((package-group :target-type
                                   package-group-description :member-name
                                   "packageGroup"))
                                 (:shape-name "UpdatePackageGroupResult"))

(smithy/sdk/shapes:define-input update-package-versions-status-request
                                common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (format :target-type package-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (namespace :target-type package-namespace
                                  :member-name "namespace" :http-query
                                  "namespace")
                                 (package :target-type package-name :required
                                  common-lisp:t :member-name "package"
                                  :http-query "package")
                                 (versions :target-type package-version-list
                                  :required common-lisp:t :member-name
                                  "versions")
                                 (version-revisions :target-type
                                  package-version-revision-map :member-name
                                  "versionRevisions")
                                 (expected-status :target-type
                                  package-version-status :member-name
                                  "expectedStatus")
                                 (target-status :target-type
                                  package-version-status :required
                                  common-lisp:t :member-name "targetStatus"))
                                (:shape-name
                                 "UpdatePackageVersionsStatusRequest"))

(smithy/sdk/shapes:define-output update-package-versions-status-result
                                 common-lisp:nil
                                 ((successful-versions :target-type
                                   successful-package-version-info-map
                                   :member-name "successfulVersions")
                                  (failed-versions :target-type
                                   package-version-error-map :member-name
                                   "failedVersions"))
                                 (:shape-name
                                  "UpdatePackageVersionsStatusResult"))

(smithy/sdk/shapes:define-input update-repository-request common-lisp:nil
                                ((domain :target-type domain-name :required
                                  common-lisp:t :member-name "domain"
                                  :http-query "domain")
                                 (domain-owner :target-type account-id
                                  :member-name "domainOwner" :http-query
                                  "domain-owner")
                                 (repository :target-type repository-name
                                  :required common-lisp:t :member-name
                                  "repository" :http-query "repository")
                                 (description :target-type description
                                  :member-name "description")
                                 (upstreams :target-type
                                  upstream-repository-list :member-name
                                  "upstreams"))
                                (:shape-name "UpdateRepositoryRequest"))

(smithy/sdk/shapes:define-output update-repository-result common-lisp:nil
                                 ((repository :target-type
                                   repository-description :member-name
                                   "repository"))
                                 (:shape-name "UpdateRepositoryResult"))

(smithy/sdk/shapes:define-structure upstream-repository common-lisp:nil
                                    ((repository-name :target-type
                                      repository-name :required common-lisp:t
                                      :member-name "repositoryName"))
                                    (:shape-name "UpstreamRepository"))

(smithy/sdk/shapes:define-structure upstream-repository-info common-lisp:nil
                                    ((repository-name :target-type
                                      repository-name :member-name
                                      "repositoryName"))
                                    (:shape-name "UpstreamRepositoryInfo"))

(smithy/sdk/shapes:define-list upstream-repository-info-list :member
                               upstream-repository-info)

(smithy/sdk/shapes:define-list upstream-repository-list :member
                               upstream-repository)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:cannot-parse "CANNOT_PARSE")
  (:encryption-key-error "ENCRYPTION_KEY_ERROR")
  (:field-validation-failed "FIELD_VALIDATION_FAILED")
  (:unknown-operation "UNKNOWN_OPERATION")
  (:other "OTHER"))

(smithy/sdk/operation:define-operation associate-external-connection
                                       :shape-name
                                       "AssociateExternalConnection" :input
                                       associate-external-connection-request
                                       :output
                                       associate-external-connection-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/repository/external-connection"
                                       :code 200)

(smithy/sdk/operation:define-operation copy-package-versions :shape-name
                                       "CopyPackageVersions" :input
                                       copy-package-versions-request :output
                                       copy-package-versions-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/package/versions/copy" :code 200)

(smithy/sdk/operation:define-operation create-domain :shape-name "CreateDomain"
                                       :input create-domain-request :output
                                       create-domain-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/domain" :code
                                       200)

(smithy/sdk/operation:define-operation create-package-group :shape-name
                                       "CreatePackageGroup" :input
                                       create-package-group-request :output
                                       create-package-group-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/package-group"
                                       :code 200)

(smithy/sdk/operation:define-operation create-repository :shape-name
                                       "CreateRepository" :input
                                       create-repository-request :output
                                       create-repository-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/repository"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-domain :shape-name "DeleteDomain"
                                       :input delete-domain-request :output
                                       delete-domain-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/v1/domain" :code
                                       200)

(smithy/sdk/operation:define-operation delete-domain-permissions-policy
                                       :shape-name
                                       "DeleteDomainPermissionsPolicy" :input
                                       delete-domain-permissions-policy-request
                                       :output
                                       delete-domain-permissions-policy-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v1/domain/permissions/policy" :code
                                       200)

(smithy/sdk/operation:define-operation delete-package :shape-name
                                       "DeletePackage" :input
                                       delete-package-request :output
                                       delete-package-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/v1/package"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-package-group :shape-name
                                       "DeletePackageGroup" :input
                                       delete-package-group-request :output
                                       delete-package-group-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v1/package-group" :code 200)

(smithy/sdk/operation:define-operation delete-package-versions :shape-name
                                       "DeletePackageVersions" :input
                                       delete-package-versions-request :output
                                       delete-package-versions-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/package/versions/delete" :code 200)

(smithy/sdk/operation:define-operation delete-repository :shape-name
                                       "DeleteRepository" :input
                                       delete-repository-request :output
                                       delete-repository-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/v1/repository"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-repository-permissions-policy
                                       :shape-name
                                       "DeleteRepositoryPermissionsPolicy"
                                       :input
                                       delete-repository-permissions-policy-request
                                       :output
                                       delete-repository-permissions-policy-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v1/repository/permissions/policies"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-domain :shape-name
                                       "DescribeDomain" :input
                                       describe-domain-request :output
                                       describe-domain-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/domain" :code
                                       200)

(smithy/sdk/operation:define-operation describe-package :shape-name
                                       "DescribePackage" :input
                                       describe-package-request :output
                                       describe-package-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/package" :code
                                       200)

(smithy/sdk/operation:define-operation describe-package-group :shape-name
                                       "DescribePackageGroup" :input
                                       describe-package-group-request :output
                                       describe-package-group-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/package-group"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-package-version :shape-name
                                       "DescribePackageVersion" :input
                                       describe-package-version-request :output
                                       describe-package-version-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/package/version"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-repository :shape-name
                                       "DescribeRepository" :input
                                       describe-repository-request :output
                                       describe-repository-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/v1/repository"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-external-connection
                                       :shape-name
                                       "DisassociateExternalConnection" :input
                                       disassociate-external-connection-request
                                       :output
                                       disassociate-external-connection-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v1/repository/external-connection"
                                       :code 200)

(smithy/sdk/operation:define-operation dispose-package-versions :shape-name
                                       "DisposePackageVersions" :input
                                       dispose-package-versions-request :output
                                       dispose-package-versions-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/package/versions/dispose" :code 200)

(smithy/sdk/operation:define-operation get-associated-package-group :shape-name
                                       "GetAssociatedPackageGroup" :input
                                       get-associated-package-group-request
                                       :output
                                       get-associated-package-group-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/get-associated-package-group" :code
                                       200)

(smithy/sdk/operation:define-operation get-authorization-token :shape-name
                                       "GetAuthorizationToken" :input
                                       get-authorization-token-request :output
                                       get-authorization-token-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/authorization-token" :code 200)

(smithy/sdk/operation:define-operation get-domain-permissions-policy
                                       :shape-name "GetDomainPermissionsPolicy"
                                       :input
                                       get-domain-permissions-policy-request
                                       :output
                                       get-domain-permissions-policy-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/domain/permissions/policy" :code
                                       200)

(smithy/sdk/operation:define-operation get-package-version-asset :shape-name
                                       "GetPackageVersionAsset" :input
                                       get-package-version-asset-request
                                       :output get-package-version-asset-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/package/version/asset" :code 200)

(smithy/sdk/operation:define-operation get-package-version-readme :shape-name
                                       "GetPackageVersionReadme" :input
                                       get-package-version-readme-request
                                       :output
                                       get-package-version-readme-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/package/version/readme" :code 200)

(smithy/sdk/operation:define-operation get-repository-endpoint :shape-name
                                       "GetRepositoryEndpoint" :input
                                       get-repository-endpoint-request :output
                                       get-repository-endpoint-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/repository/endpoint" :code 200)

(smithy/sdk/operation:define-operation get-repository-permissions-policy
                                       :shape-name
                                       "GetRepositoryPermissionsPolicy" :input
                                       get-repository-permissions-policy-request
                                       :output
                                       get-repository-permissions-policy-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/repository/permissions/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation list-allowed-repositories-for-group
                                       :shape-name
                                       "ListAllowedRepositoriesForGroup" :input
                                       list-allowed-repositories-for-group-request
                                       :output
                                       list-allowed-repositories-for-group-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/package-group-allowed-repositories"
                                       :code 200)

(smithy/sdk/operation:define-operation list-associated-packages :shape-name
                                       "ListAssociatedPackages" :input
                                       list-associated-packages-request :output
                                       list-associated-packages-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/list-associated-packages" :code 200)

(smithy/sdk/operation:define-operation list-domains :shape-name "ListDomains"
                                       :input list-domains-request :output
                                       list-domains-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/domains" :code
                                       200)

(smithy/sdk/operation:define-operation list-package-groups :shape-name
                                       "ListPackageGroups" :input
                                       list-package-groups-request :output
                                       list-package-groups-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/package-groups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-package-version-assets :shape-name
                                       "ListPackageVersionAssets" :input
                                       list-package-version-assets-request
                                       :output
                                       list-package-version-assets-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/package/version/assets" :code 200)

(smithy/sdk/operation:define-operation list-package-version-dependencies
                                       :shape-name
                                       "ListPackageVersionDependencies" :input
                                       list-package-version-dependencies-request
                                       :output
                                       list-package-version-dependencies-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/package/version/dependencies" :code
                                       200)

(smithy/sdk/operation:define-operation list-package-versions :shape-name
                                       "ListPackageVersions" :input
                                       list-package-versions-request :output
                                       list-package-versions-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/package/versions" :code 200)

(smithy/sdk/operation:define-operation list-packages :shape-name "ListPackages"
                                       :input list-packages-request :output
                                       list-packages-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/packages" :code
                                       200)

(smithy/sdk/operation:define-operation list-repositories :shape-name
                                       "ListRepositories" :input
                                       list-repositories-request :output
                                       list-repositories-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/repositories"
                                       :code 200)

(smithy/sdk/operation:define-operation list-repositories-in-domain :shape-name
                                       "ListRepositoriesInDomain" :input
                                       list-repositories-in-domain-request
                                       :output
                                       list-repositories-in-domain-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/domain/repositories" :code 200)

(smithy/sdk/operation:define-operation list-sub-package-groups :shape-name
                                       "ListSubPackageGroups" :input
                                       list-sub-package-groups-request :output
                                       list-sub-package-groups-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/package-groups/sub-groups" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-result :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/tags" :code 200)

(smithy/sdk/operation:define-operation publish-package-version :shape-name
                                       "PublishPackageVersion" :input
                                       publish-package-version-request :output
                                       publish-package-version-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/package/version/publish" :code 200)

(smithy/sdk/operation:define-operation put-domain-permissions-policy
                                       :shape-name "PutDomainPermissionsPolicy"
                                       :input
                                       put-domain-permissions-policy-request
                                       :output
                                       put-domain-permissions-policy-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v1/domain/permissions/policy" :code
                                       200)

(smithy/sdk/operation:define-operation put-package-origin-configuration
                                       :shape-name
                                       "PutPackageOriginConfiguration" :input
                                       put-package-origin-configuration-request
                                       :output
                                       put-package-origin-configuration-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/package" :code
                                       200)

(smithy/sdk/operation:define-operation put-repository-permissions-policy
                                       :shape-name
                                       "PutRepositoryPermissionsPolicy" :input
                                       put-repository-permissions-policy-request
                                       :output
                                       put-repository-permissions-policy-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v1/repository/permissions/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-result :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/tag" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-result :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/untag" :code
                                       200)

(smithy/sdk/operation:define-operation update-package-group :shape-name
                                       "UpdatePackageGroup" :input
                                       update-package-group-request :output
                                       update-package-group-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/v1/package-group"
                                       :code 200)

(smithy/sdk/operation:define-operation
 update-package-group-origin-configuration :shape-name
 "UpdatePackageGroupOriginConfiguration" :input
 update-package-group-origin-configuration-request :output
 update-package-group-origin-configuration-result :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "PUT" :uri "/v1/package-group-origin-configuration" :code 200)

(smithy/sdk/operation:define-operation update-package-versions-status
                                       :shape-name
                                       "UpdatePackageVersionsStatus" :input
                                       update-package-versions-status-request
                                       :output
                                       update-package-versions-status-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/package/versions/update_status"
                                       :code 200)

(smithy/sdk/operation:define-operation update-repository :shape-name
                                       "UpdateRepository" :input
                                       update-repository-request :output
                                       update-repository-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/v1/repository"
                                       :code 200)
