(uiop/package:define-package #:pira/license-manager-user-subscriptions (:use)
                             (:export #:access-denied-exception
                              #:active-directory-identity-provider
                              #:active-directory-settings
                              #:active-directory-type #:arn #:associate-user
                              #:associate-user-request
                              #:associate-user-response #:box-integer
                              #:conflict-exception
                              #:create-license-server-endpoint
                              #:create-license-server-endpoint-request
                              #:create-license-server-endpoint-response
                              #:credentials-provider
                              #:delete-license-server-endpoint
                              #:delete-license-server-endpoint-request
                              #:delete-license-server-endpoint-response
                              #:deregister-identity-provider
                              #:deregister-identity-provider-request
                              #:deregister-identity-provider-response
                              #:directory #:disassociate-user
                              #:disassociate-user-request
                              #:disassociate-user-response
                              #:domain-network-settings #:filter #:filter-list
                              #:identity-provider #:identity-provider-summary
                              #:identity-provider-summary-list
                              #:instance-summary #:instance-summary-list
                              #:instance-user-summary
                              #:instance-user-summary-list
                              #:internal-server-exception #:ip-v4 #:ip-v4list
                              #:license-manager-user-subscriptions
                              #:license-server #:license-server-endpoint
                              #:license-server-endpoint-id
                              #:license-server-endpoint-list
                              #:license-server-endpoint-provisioning-status
                              #:license-server-health-status
                              #:license-server-list #:license-server-settings
                              #:list-identity-providers
                              #:list-identity-providers-request
                              #:list-identity-providers-response
                              #:list-instances #:list-instances-request
                              #:list-instances-response
                              #:list-license-server-endpoints
                              #:list-license-server-endpoints-request
                              #:list-license-server-endpoints-response
                              #:list-product-subscriptions
                              #:list-product-subscriptions-request
                              #:list-product-subscriptions-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-user-associations
                              #:list-user-associations-request
                              #:list-user-associations-response
                              #:product-user-summary
                              #:product-user-summary-list #:rds-sal-settings
                              #:register-identity-provider
                              #:register-identity-provider-request
                              #:register-identity-provider-response
                              #:resource-arn #:resource-not-found-exception
                              #:secrets-manager-credentials-provider
                              #:security-group #:server-endpoint
                              #:server-settings #:server-type
                              #:service-quota-exceeded-exception #:settings
                              #:start-product-subscription
                              #:start-product-subscription-request
                              #:start-product-subscription-response
                              #:stop-product-subscription
                              #:stop-product-subscription-request
                              #:stop-product-subscription-response
                              #:string-list #:subnet #:subnets #:tag-key-list
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tags
                              #:throttling-exception #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response
                              #:update-identity-provider-settings
                              #:update-identity-provider-settings-request
                              #:update-identity-provider-settings-response
                              #:update-settings #:validation-exception))
(common-lisp:in-package #:pira/license-manager-user-subscriptions)

(smithy/sdk/service:define-service license-manager-user-subscriptions
                                   :shape-name
                                   "LicenseManagerUserSubscriptions" :version
                                   "2018-05-10" :title
                                   "AWS License Manager User Subscriptions"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "License Manager User Subscriptions")
                                      ("arnNamespace"
                                       . "license-manager-user-subscriptions")
                                      ("cloudTrailEventSource"
                                       . "license-manager-user-subscriptions.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name"
                                       . "license-manager-user-subscriptions"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure active-directory-identity-provider
                                    common-lisp:nil
                                    ((directory-id :target-type directory
                                      :member-name "DirectoryId")
                                     (active-directory-settings :target-type
                                      active-directory-settings :member-name
                                      "ActiveDirectorySettings")
                                     (active-directory-type :target-type
                                      active-directory-type :member-name
                                      "ActiveDirectoryType"))
                                    (:shape-name
                                     "ActiveDirectoryIdentityProvider"))

(smithy/sdk/shapes:define-structure active-directory-settings common-lisp:nil
                                    ((domain-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DomainName")
                                     (domain-ipv4list :target-type ip-v4list
                                      :member-name "DomainIpv4List")
                                     (domain-credentials-provider :target-type
                                      credentials-provider :member-name
                                      "DomainCredentialsProvider")
                                     (domain-network-settings :target-type
                                      domain-network-settings :member-name
                                      "DomainNetworkSettings"))
                                    (:shape-name "ActiveDirectorySettings"))

(smithy/sdk/shapes:define-type active-directory-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-user-request common-lisp:nil
                                ((username :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Username")
                                 (instance-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "InstanceId")
                                 (identity-provider :target-type
                                  identity-provider :required common-lisp:t
                                  :member-name "IdentityProvider")
                                 (domain :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Domain")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "AssociateUserRequest"))

(smithy/sdk/shapes:define-output associate-user-response common-lisp:nil
                                 ((instance-user-summary :target-type
                                   instance-user-summary :required
                                   common-lisp:t :member-name
                                   "InstanceUserSummary"))
                                 (:shape-name "AssociateUserResponse"))

(smithy/sdk/shapes:define-type box-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input create-license-server-endpoint-request
                                common-lisp:nil
                                ((identity-provider-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "IdentityProviderArn")
                                 (license-server-settings :target-type
                                  license-server-settings :required
                                  common-lisp:t :member-name
                                  "LicenseServerSettings")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name
                                 "CreateLicenseServerEndpointRequest"))

(smithy/sdk/shapes:define-output create-license-server-endpoint-response
                                 common-lisp:nil
                                 ((identity-provider-arn :target-type arn
                                   :member-name "IdentityProviderArn")
                                  (license-server-endpoint-arn :target-type arn
                                   :member-name "LicenseServerEndpointArn"))
                                 (:shape-name
                                  "CreateLicenseServerEndpointResponse"))

(smithy/sdk/shapes:define-union credentials-provider common-lisp:nil
                                ((secrets-manager-credentials-provider
                                  :target-type
                                  secrets-manager-credentials-provider
                                  :member-name
                                  "SecretsManagerCredentialsProvider"))
                                (:shape-name "CredentialsProvider"))

(smithy/sdk/shapes:define-input delete-license-server-endpoint-request
                                common-lisp:nil
                                ((license-server-endpoint-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "LicenseServerEndpointArn")
                                 (server-type :target-type server-type
                                  :required common-lisp:t :member-name
                                  "ServerType"))
                                (:shape-name
                                 "DeleteLicenseServerEndpointRequest"))

(smithy/sdk/shapes:define-output delete-license-server-endpoint-response
                                 common-lisp:nil
                                 ((license-server-endpoint :target-type
                                   license-server-endpoint :member-name
                                   "LicenseServerEndpoint"))
                                 (:shape-name
                                  "DeleteLicenseServerEndpointResponse"))

(smithy/sdk/shapes:define-input deregister-identity-provider-request
                                common-lisp:nil
                                ((identity-provider :target-type
                                  identity-provider :member-name
                                  "IdentityProvider")
                                 (product :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Product")
                                 (identity-provider-arn :target-type arn
                                  :member-name "IdentityProviderArn"))
                                (:shape-name
                                 "DeregisterIdentityProviderRequest"))

(smithy/sdk/shapes:define-output deregister-identity-provider-response
                                 common-lisp:nil
                                 ((identity-provider-summary :target-type
                                   identity-provider-summary :required
                                   common-lisp:t :member-name
                                   "IdentityProviderSummary"))
                                 (:shape-name
                                  "DeregisterIdentityProviderResponse"))

(smithy/sdk/shapes:define-type directory smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-user-request common-lisp:nil
                                ((username :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Username")
                                 (instance-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "InstanceId")
                                 (identity-provider :target-type
                                  identity-provider :member-name
                                  "IdentityProvider")
                                 (instance-user-arn :target-type arn
                                  :member-name "InstanceUserArn")
                                 (domain :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Domain"))
                                (:shape-name "DisassociateUserRequest"))

(smithy/sdk/shapes:define-output disassociate-user-response common-lisp:nil
                                 ((instance-user-summary :target-type
                                   instance-user-summary :required
                                   common-lisp:t :member-name
                                   "InstanceUserSummary"))
                                 (:shape-name "DisassociateUserResponse"))

(smithy/sdk/shapes:define-structure domain-network-settings common-lisp:nil
                                    ((subnets :target-type subnets :required
                                      common-lisp:t :member-name "Subnets"))
                                    (:shape-name "DomainNetworkSettings"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((attribute :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Attribute")
                                     (operation :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Operation")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Value"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-union identity-provider common-lisp:nil
                                ((active-directory-identity-provider
                                  :target-type
                                  active-directory-identity-provider
                                  :member-name
                                  "ActiveDirectoryIdentityProvider"))
                                (:shape-name "IdentityProvider"))

(smithy/sdk/shapes:define-structure identity-provider-summary common-lisp:nil
                                    ((identity-provider :target-type
                                      identity-provider :required common-lisp:t
                                      :member-name "IdentityProvider")
                                     (settings :target-type settings :required
                                      common-lisp:t :member-name "Settings")
                                     (product :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Product")
                                     (status :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Status")
                                     (identity-provider-arn :target-type arn
                                      :member-name "IdentityProviderArn")
                                     (failure-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "FailureMessage"))
                                    (:shape-name "IdentityProviderSummary"))

(smithy/sdk/shapes:define-list identity-provider-summary-list :member
                               identity-provider-summary)

(smithy/sdk/shapes:define-structure instance-summary common-lisp:nil
                                    ((instance-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "InstanceId")
                                     (status :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Status")
                                     (products :target-type string-list
                                      :required common-lisp:t :member-name
                                      "Products")
                                     (last-status-check-date :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "LastStatusCheckDate")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StatusMessage"))
                                    (:shape-name "InstanceSummary"))

(smithy/sdk/shapes:define-list instance-summary-list :member instance-summary)

(smithy/sdk/shapes:define-structure instance-user-summary common-lisp:nil
                                    ((username :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Username")
                                     (instance-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "InstanceId")
                                     (identity-provider :target-type
                                      identity-provider :required common-lisp:t
                                      :member-name "IdentityProvider")
                                     (status :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Status")
                                     (instance-user-arn :target-type arn
                                      :member-name "InstanceUserArn")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StatusMessage")
                                     (domain :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Domain")
                                     (association-date :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "AssociationDate")
                                     (disassociation-date :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DisassociationDate"))
                                    (:shape-name "InstanceUserSummary"))

(smithy/sdk/shapes:define-list instance-user-summary-list :member
                               instance-user-summary)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type ip-v4 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ip-v4list :member ip-v4)

(smithy/sdk/shapes:define-structure license-server common-lisp:nil
                                    ((provisioning-status :target-type
                                      license-server-endpoint-provisioning-status
                                      :member-name "ProvisioningStatus")
                                     (health-status :target-type
                                      license-server-health-status :member-name
                                      "HealthStatus")
                                     (ipv4address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Ipv4Address"))
                                    (:shape-name "LicenseServer"))

(smithy/sdk/shapes:define-structure license-server-endpoint common-lisp:nil
                                    ((identity-provider-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "IdentityProviderArn")
                                     (server-type :target-type server-type
                                      :member-name "ServerType")
                                     (server-endpoint :target-type
                                      server-endpoint :member-name
                                      "ServerEndpoint")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StatusMessage")
                                     (license-server-endpoint-id :target-type
                                      license-server-endpoint-id :member-name
                                      "LicenseServerEndpointId")
                                     (license-server-endpoint-arn :target-type
                                      arn :member-name
                                      "LicenseServerEndpointArn")
                                     (license-server-endpoint-provisioning-status
                                      :target-type
                                      license-server-endpoint-provisioning-status
                                      :member-name
                                      "LicenseServerEndpointProvisioningStatus")
                                     (license-servers :target-type
                                      license-server-list :member-name
                                      "LicenseServers")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreationTime"))
                                    (:shape-name "LicenseServerEndpoint"))

(smithy/sdk/shapes:define-type license-server-endpoint-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list license-server-endpoint-list :member
                               license-server-endpoint)

(smithy/sdk/shapes:define-type license-server-endpoint-provisioning-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type license-server-health-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list license-server-list :member license-server)

(smithy/sdk/shapes:define-structure license-server-settings common-lisp:nil
                                    ((server-type :target-type server-type
                                      :required common-lisp:t :member-name
                                      "ServerType")
                                     (server-settings :target-type
                                      server-settings :required common-lisp:t
                                      :member-name "ServerSettings"))
                                    (:shape-name "LicenseServerSettings"))

(smithy/sdk/shapes:define-input list-identity-providers-request common-lisp:nil
                                ((max-results :target-type box-integer
                                  :member-name "MaxResults")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken"))
                                (:shape-name "ListIdentityProvidersRequest"))

(smithy/sdk/shapes:define-output list-identity-providers-response
                                 common-lisp:nil
                                 ((identity-provider-summaries :target-type
                                   identity-provider-summary-list :required
                                   common-lisp:t :member-name
                                   "IdentityProviderSummaries")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListIdentityProvidersResponse"))

(smithy/sdk/shapes:define-input list-instances-request common-lisp:nil
                                ((max-results :target-type box-integer
                                  :member-name "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken")
                                 (filters :target-type filter-list :member-name
                                  "Filters"))
                                (:shape-name "ListInstancesRequest"))

(smithy/sdk/shapes:define-output list-instances-response common-lisp:nil
                                 ((instance-summaries :target-type
                                   instance-summary-list :member-name
                                   "InstanceSummaries")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListInstancesResponse"))

(smithy/sdk/shapes:define-input list-license-server-endpoints-request
                                common-lisp:nil
                                ((max-results :target-type box-integer
                                  :member-name "MaxResults")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "ListLicenseServerEndpointsRequest"))

(smithy/sdk/shapes:define-output list-license-server-endpoints-response
                                 common-lisp:nil
                                 ((license-server-endpoints :target-type
                                   license-server-endpoint-list :member-name
                                   "LicenseServerEndpoints")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListLicenseServerEndpointsResponse"))

(smithy/sdk/shapes:define-input list-product-subscriptions-request
                                common-lisp:nil
                                ((product :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Product")
                                 (identity-provider :target-type
                                  identity-provider :required common-lisp:t
                                  :member-name "IdentityProvider")
                                 (max-results :target-type box-integer
                                  :member-name "MaxResults")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken"))
                                (:shape-name "ListProductSubscriptionsRequest"))

(smithy/sdk/shapes:define-output list-product-subscriptions-response
                                 common-lisp:nil
                                 ((product-user-summaries :target-type
                                   product-user-summary-list :member-name
                                   "ProductUserSummaries")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListProductSubscriptionsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-user-associations-request common-lisp:nil
                                ((instance-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "InstanceId")
                                 (identity-provider :target-type
                                  identity-provider :required common-lisp:t
                                  :member-name "IdentityProvider")
                                 (max-results :target-type box-integer
                                  :member-name "MaxResults")
                                 (filters :target-type filter-list :member-name
                                  "Filters")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken"))
                                (:shape-name "ListUserAssociationsRequest"))

(smithy/sdk/shapes:define-output list-user-associations-response
                                 common-lisp:nil
                                 ((instance-user-summaries :target-type
                                   instance-user-summary-list :member-name
                                   "InstanceUserSummaries")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListUserAssociationsResponse"))

(smithy/sdk/shapes:define-structure product-user-summary common-lisp:nil
                                    ((username :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Username")
                                     (product :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Product")
                                     (identity-provider :target-type
                                      identity-provider :required common-lisp:t
                                      :member-name "IdentityProvider")
                                     (status :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Status")
                                     (product-user-arn :target-type arn
                                      :member-name "ProductUserArn")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StatusMessage")
                                     (domain :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Domain")
                                     (subscription-start-date :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SubscriptionStartDate")
                                     (subscription-end-date :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SubscriptionEndDate"))
                                    (:shape-name "ProductUserSummary"))

(smithy/sdk/shapes:define-list product-user-summary-list :member
                               product-user-summary)

(smithy/sdk/shapes:define-structure rds-sal-settings common-lisp:nil
                                    ((rds-sal-credentials-provider :target-type
                                      credentials-provider :required
                                      common-lisp:t :member-name
                                      "RdsSalCredentialsProvider"))
                                    (:shape-name "RdsSalSettings"))

(smithy/sdk/shapes:define-input register-identity-provider-request
                                common-lisp:nil
                                ((identity-provider :target-type
                                  identity-provider :required common-lisp:t
                                  :member-name "IdentityProvider")
                                 (product :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Product")
                                 (settings :target-type settings :member-name
                                  "Settings")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "RegisterIdentityProviderRequest"))

(smithy/sdk/shapes:define-output register-identity-provider-response
                                 common-lisp:nil
                                 ((identity-provider-summary :target-type
                                   identity-provider-summary :required
                                   common-lisp:t :member-name
                                   "IdentityProviderSummary"))
                                 (:shape-name
                                  "RegisterIdentityProviderResponse"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure secrets-manager-credentials-provider
                                    common-lisp:nil
                                    ((secret-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SecretId"))
                                    (:shape-name
                                     "SecretsManagerCredentialsProvider"))

(smithy/sdk/shapes:define-type security-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure server-endpoint common-lisp:nil
                                    ((endpoint :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Endpoint"))
                                    (:shape-name "ServerEndpoint"))

(smithy/sdk/shapes:define-union server-settings common-lisp:nil
                                ((rds-sal-settings :target-type
                                  rds-sal-settings :member-name
                                  "RdsSalSettings"))
                                (:shape-name "ServerSettings"))

(smithy/sdk/shapes:define-type server-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure settings common-lisp:nil
                                    ((subnets :target-type subnets :required
                                      common-lisp:t :member-name "Subnets")
                                     (security-group-id :target-type
                                      security-group :required common-lisp:t
                                      :member-name "SecurityGroupId"))
                                    (:shape-name "Settings"))

(smithy/sdk/shapes:define-input start-product-subscription-request
                                common-lisp:nil
                                ((username :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Username")
                                 (identity-provider :target-type
                                  identity-provider :required common-lisp:t
                                  :member-name "IdentityProvider")
                                 (product :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Product")
                                 (domain :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Domain")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "StartProductSubscriptionRequest"))

(smithy/sdk/shapes:define-output start-product-subscription-response
                                 common-lisp:nil
                                 ((product-user-summary :target-type
                                   product-user-summary :required common-lisp:t
                                   :member-name "ProductUserSummary"))
                                 (:shape-name
                                  "StartProductSubscriptionResponse"))

(smithy/sdk/shapes:define-input stop-product-subscription-request
                                common-lisp:nil
                                ((username :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Username")
                                 (identity-provider :target-type
                                  identity-provider :member-name
                                  "IdentityProvider")
                                 (product :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Product")
                                 (product-user-arn :target-type arn
                                  :member-name "ProductUserArn")
                                 (domain :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Domain"))
                                (:shape-name "StopProductSubscriptionRequest"))

(smithy/sdk/shapes:define-output stop-product-subscription-response
                                 common-lisp:nil
                                 ((product-user-summary :target-type
                                   product-user-summary :required common-lisp:t
                                   :member-name "ProductUserSummary"))
                                 (:shape-name
                                  "StopProductSubscriptionResponse"))

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnets :member subnet)

(smithy/sdk/shapes:define-list tag-key-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-map tags :key smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-identity-provider-settings-request
                                common-lisp:nil
                                ((identity-provider :target-type
                                  identity-provider :member-name
                                  "IdentityProvider")
                                 (product :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Product")
                                 (identity-provider-arn :target-type arn
                                  :member-name "IdentityProviderArn")
                                 (update-settings :target-type update-settings
                                  :required common-lisp:t :member-name
                                  "UpdateSettings"))
                                (:shape-name
                                 "UpdateIdentityProviderSettingsRequest"))

(smithy/sdk/shapes:define-output update-identity-provider-settings-response
                                 common-lisp:nil
                                 ((identity-provider-summary :target-type
                                   identity-provider-summary :required
                                   common-lisp:t :member-name
                                   "IdentityProviderSummary"))
                                 (:shape-name
                                  "UpdateIdentityProviderSettingsResponse"))

(smithy/sdk/shapes:define-structure update-settings common-lisp:nil
                                    ((add-subnets :target-type subnets
                                      :required common-lisp:t :member-name
                                      "AddSubnets")
                                     (remove-subnets :target-type subnets
                                      :required common-lisp:t :member-name
                                      "RemoveSubnets")
                                     (security-group-id :target-type
                                      security-group :member-name
                                      "SecurityGroupId"))
                                    (:shape-name "UpdateSettings"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation associate-user :shape-name
                                       "AssociateUser" :input
                                       associate-user-request :output
                                       associate-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/user/AssociateUser" :code 200)

(smithy/sdk/operation:define-operation create-license-server-endpoint
                                       :shape-name
                                       "CreateLicenseServerEndpoint" :input
                                       create-license-server-endpoint-request
                                       :output
                                       create-license-server-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/license-server/CreateLicenseServerEndpoint"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-license-server-endpoint
                                       :shape-name
                                       "DeleteLicenseServerEndpoint" :input
                                       delete-license-server-endpoint-request
                                       :output
                                       delete-license-server-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/license-server/DeleteLicenseServerEndpoint"
                                       :code 200)

(smithy/sdk/operation:define-operation deregister-identity-provider :shape-name
                                       "DeregisterIdentityProvider" :input
                                       deregister-identity-provider-request
                                       :output
                                       deregister-identity-provider-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identity-provider/DeregisterIdentityProvider"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-user :shape-name
                                       "DisassociateUser" :input
                                       disassociate-user-request :output
                                       disassociate-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/user/DisassociateUser" :code 200)

(smithy/sdk/operation:define-operation list-identity-providers :shape-name
                                       "ListIdentityProviders" :input
                                       list-identity-providers-request :output
                                       list-identity-providers-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identity-provider/ListIdentityProviders"
                                       :code 200)

(smithy/sdk/operation:define-operation list-instances :shape-name
                                       "ListInstances" :input
                                       list-instances-request :output
                                       list-instances-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/instance/ListInstances" :code 200)

(smithy/sdk/operation:define-operation list-license-server-endpoints
                                       :shape-name "ListLicenseServerEndpoints"
                                       :input
                                       list-license-server-endpoints-request
                                       :output
                                       list-license-server-endpoints-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/license-server/ListLicenseServerEndpoints"
                                       :code 200)

(smithy/sdk/operation:define-operation list-product-subscriptions :shape-name
                                       "ListProductSubscriptions" :input
                                       list-product-subscriptions-request
                                       :output
                                       list-product-subscriptions-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/user/ListProductSubscriptions" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation list-user-associations :shape-name
                                       "ListUserAssociations" :input
                                       list-user-associations-request :output
                                       list-user-associations-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/user/ListUserAssociations" :code 200)

(smithy/sdk/operation:define-operation register-identity-provider :shape-name
                                       "RegisterIdentityProvider" :input
                                       register-identity-provider-request
                                       :output
                                       register-identity-provider-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identity-provider/RegisterIdentityProvider"
                                       :code 200)

(smithy/sdk/operation:define-operation start-product-subscription :shape-name
                                       "StartProductSubscription" :input
                                       start-product-subscription-request
                                       :output
                                       start-product-subscription-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/user/StartProductSubscription" :code
                                       200)

(smithy/sdk/operation:define-operation stop-product-subscription :shape-name
                                       "StopProductSubscription" :input
                                       stop-product-subscription-request
                                       :output
                                       stop-product-subscription-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/user/StopProductSubscription" :code
                                       200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation update-identity-provider-settings
                                       :shape-name
                                       "UpdateIdentityProviderSettings" :input
                                       update-identity-provider-settings-request
                                       :output
                                       update-identity-provider-settings-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identity-provider/UpdateIdentityProviderSettings"
                                       :code 200)
