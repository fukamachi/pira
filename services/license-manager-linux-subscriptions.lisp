(uiop/package:define-package #:pira/license-manager-linux-subscriptions (:use)
                             (:export #:box-integer #:box-long
                              #:deregister-subscription-provider #:filter
                              #:filter-list
                              #:get-registered-subscription-provider
                              #:get-service-settings
                              #:get-service-settings-request
                              #:get-service-settings-response #:instance
                              #:instance-list #:internal-server-exception
                              #:license-manager-linux-subscriptions
                              #:linux-subscriptions-discovery
                              #:linux-subscriptions-discovery-settings
                              #:list-linux-subscription-instances
                              #:list-linux-subscription-instances-request
                              #:list-linux-subscription-instances-response
                              #:list-linux-subscriptions
                              #:list-linux-subscriptions-request
                              #:list-linux-subscriptions-response
                              #:list-registered-subscription-providers
                              #:list-tags-for-resource #:operator
                              #:organization-integration #:product-code-list
                              #:register-subscription-provider
                              #:registered-subscription-provider
                              #:registered-subscription-provider-list
                              #:resource-not-found-exception #:secret-arn
                              #:status #:string-list #:string-map
                              #:subscription #:subscription-list
                              #:subscription-provider-arn
                              #:subscription-provider-source
                              #:subscription-provider-source-list
                              #:subscription-provider-status #:tag-key-list
                              #:tag-resource #:tags #:throttling-exception
                              #:untag-resource #:update-service-settings
                              #:update-service-settings-request
                              #:update-service-settings-response
                              #:validation-exception
                              #:license-manager-linux-subscriptions-error))
(common-lisp:in-package #:pira/license-manager-linux-subscriptions)

(common-lisp:define-condition license-manager-linux-subscriptions-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service license-manager-linux-subscriptions
                                   :shape-name
                                   "LicenseManagerLinuxSubscriptions" :version
                                   "2018-05-10" :title
                                   "AWS License Manager Linux Subscriptions"
                                   :operations
                                   '(deregister-subscription-provider
                                     get-registered-subscription-provider
                                     get-service-settings
                                     list-linux-subscription-instances
                                     list-linux-subscriptions
                                     list-registered-subscription-providers
                                     list-tags-for-resource
                                     register-subscription-provider
                                     tag-resource untag-resource
                                     update-service-settings)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "License Manager Linux Subscriptions")
                                      ("arnNamespace"
                                       . "license-manager-linux-subscriptions")
                                      ("cloudTrailEventSource"
                                       . "license-manager-linux-subscriptions.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name"
                                       . "license-manager-linux-subscriptions"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type box-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type box-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input deregister-subscription-provider-request
                                common-lisp:nil
                                ((subscription-provider-arn :target-type
                                  subscription-provider-arn :required
                                  common-lisp:t :member-name
                                  "SubscriptionProviderArn"))
                                (:shape-name
                                 "DeregisterSubscriptionProviderRequest"))

(smithy/sdk/shapes:define-output deregister-subscription-provider-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeregisterSubscriptionProviderResponse"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name")
                                     (values :target-type string-list
                                      :member-name "Values")
                                     (operator :target-type operator
                                      :member-name "Operator"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-input get-registered-subscription-provider-request
                                common-lisp:nil
                                ((subscription-provider-arn :target-type
                                  subscription-provider-arn :required
                                  common-lisp:t :member-name
                                  "SubscriptionProviderArn"))
                                (:shape-name
                                 "GetRegisteredSubscriptionProviderRequest"))

(smithy/sdk/shapes:define-output get-registered-subscription-provider-response
                                 common-lisp:nil
                                 ((subscription-provider-arn :target-type
                                   subscription-provider-arn :member-name
                                   "SubscriptionProviderArn")
                                  (subscription-provider-source :target-type
                                   subscription-provider-source :member-name
                                   "SubscriptionProviderSource")
                                  (secret-arn :target-type secret-arn
                                   :member-name "SecretArn")
                                  (subscription-provider-status :target-type
                                   subscription-provider-status :member-name
                                   "SubscriptionProviderStatus")
                                  (subscription-provider-status-message
                                   :target-type smithy/sdk/smithy-types:string
                                   :member-name
                                   "SubscriptionProviderStatusMessage")
                                  (last-successful-data-retrieval-time
                                   :target-type smithy/sdk/smithy-types:string
                                   :member-name
                                   "LastSuccessfulDataRetrievalTime"))
                                 (:shape-name
                                  "GetRegisteredSubscriptionProviderResponse"))

(smithy/sdk/shapes:define-structure get-service-settings-request
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "GetServiceSettingsRequest"))

(smithy/sdk/shapes:define-structure get-service-settings-response
                                    common-lisp:nil
                                    ((linux-subscriptions-discovery
                                      :target-type
                                      linux-subscriptions-discovery
                                      :member-name
                                      "LinuxSubscriptionsDiscovery")
                                     (linux-subscriptions-discovery-settings
                                      :target-type
                                      linux-subscriptions-discovery-settings
                                      :member-name
                                      "LinuxSubscriptionsDiscoverySettings")
                                     (status :target-type status :member-name
                                      "Status")
                                     (status-message :target-type string-map
                                      :member-name "StatusMessage")
                                     (home-regions :target-type string-list
                                      :member-name "HomeRegions"))
                                    (:shape-name "GetServiceSettingsResponse"))

(smithy/sdk/shapes:define-structure instance common-lisp:nil
                                    ((ami-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "AmiId")
                                     (instance-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "InstanceID")
                                     (instance-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "InstanceType")
                                     (account-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "AccountID")
                                     (status :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Status")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Region")
                                     (usage-operation :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "UsageOperation")
                                     (product-code :target-type
                                      product-code-list :member-name
                                      "ProductCode")
                                     (last-updated-time :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "LastUpdatedTime")
                                     (subscription-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SubscriptionName")
                                     (os-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "OsVersion")
                                     (subscription-provider-create-time
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "SubscriptionProviderCreateTime")
                                     (subscription-provider-update-time
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "SubscriptionProviderUpdateTime")
                                     (dual-subscription :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DualSubscription")
                                     (registered-with-subscription-provider
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "RegisteredWithSubscriptionProvider"))
                                    (:shape-name "Instance"))

(smithy/sdk/shapes:define-list instance-list :member instance)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class
                                 license-manager-linux-subscriptions-error))

(smithy/sdk/shapes:define-type linux-subscriptions-discovery
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure linux-subscriptions-discovery-settings
                                    common-lisp:nil
                                    ((source-regions :target-type string-list
                                      :required common-lisp:t :member-name
                                      "SourceRegions")
                                     (organization-integration :target-type
                                      organization-integration :required
                                      common-lisp:t :member-name
                                      "OrganizationIntegration"))
                                    (:shape-name
                                     "LinuxSubscriptionsDiscoverySettings"))

(smithy/sdk/shapes:define-structure list-linux-subscription-instances-request
                                    common-lisp:nil
                                    ((filters :target-type filter-list
                                      :member-name "Filters")
                                     (max-results :target-type box-integer
                                      :member-name "MaxResults")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListLinuxSubscriptionInstancesRequest"))

(smithy/sdk/shapes:define-structure list-linux-subscription-instances-response
                                    common-lisp:nil
                                    ((instances :target-type instance-list
                                      :member-name "Instances")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListLinuxSubscriptionInstancesResponse"))

(smithy/sdk/shapes:define-structure list-linux-subscriptions-request
                                    common-lisp:nil
                                    ((filters :target-type filter-list
                                      :member-name "Filters")
                                     (max-results :target-type box-integer
                                      :member-name "MaxResults")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListLinuxSubscriptionsRequest"))

(smithy/sdk/shapes:define-structure list-linux-subscriptions-response
                                    common-lisp:nil
                                    ((subscriptions :target-type
                                      subscription-list :member-name
                                      "Subscriptions")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListLinuxSubscriptionsResponse"))

(smithy/sdk/shapes:define-input list-registered-subscription-providers-request
                                common-lisp:nil
                                ((subscription-provider-sources :target-type
                                  subscription-provider-source-list
                                  :member-name "SubscriptionProviderSources")
                                 (max-results :target-type box-integer
                                  :member-name "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "ListRegisteredSubscriptionProvidersRequest"))

(smithy/sdk/shapes:define-output
 list-registered-subscription-providers-response common-lisp:nil
 ((registered-subscription-providers :target-type
   registered-subscription-provider-list :member-name
   "RegisteredSubscriptionProviders")
  (next-token :target-type smithy/sdk/smithy-types:string :member-name
   "NextToken"))
 (:shape-name "ListRegisteredSubscriptionProvidersResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  subscription-provider-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type operator smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type organization-integration
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list product-code-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-subscription-provider-request
                                common-lisp:nil
                                ((subscription-provider-source :target-type
                                  subscription-provider-source :required
                                  common-lisp:t :member-name
                                  "SubscriptionProviderSource")
                                 (secret-arn :target-type secret-arn :required
                                  common-lisp:t :member-name "SecretArn")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name
                                 "RegisterSubscriptionProviderRequest"))

(smithy/sdk/shapes:define-output register-subscription-provider-response
                                 common-lisp:nil
                                 ((subscription-provider-source :target-type
                                   subscription-provider-source :member-name
                                   "SubscriptionProviderSource")
                                  (subscription-provider-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "SubscriptionProviderArn")
                                  (subscription-provider-status :target-type
                                   subscription-provider-status :member-name
                                   "SubscriptionProviderStatus"))
                                 (:shape-name
                                  "RegisterSubscriptionProviderResponse"))

(smithy/sdk/shapes:define-structure registered-subscription-provider
                                    common-lisp:nil
                                    ((subscription-provider-arn :target-type
                                      subscription-provider-arn :member-name
                                      "SubscriptionProviderArn")
                                     (subscription-provider-source :target-type
                                      subscription-provider-source :member-name
                                      "SubscriptionProviderSource")
                                     (secret-arn :target-type secret-arn
                                      :member-name "SecretArn")
                                     (subscription-provider-status :target-type
                                      subscription-provider-status :member-name
                                      "SubscriptionProviderStatus")
                                     (subscription-provider-status-message
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "SubscriptionProviderStatusMessage")
                                     (last-successful-data-retrieval-time
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "LastSuccessfulDataRetrievalTime"))
                                    (:shape-name
                                     "RegisteredSubscriptionProvider"))

(smithy/sdk/shapes:define-list registered-subscription-provider-list :member
                               registered-subscription-provider)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400)
                                (:base-class
                                 license-manager-linux-subscriptions-error))

(smithy/sdk/shapes:define-type secret-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map string-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure subscription common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Type")
                                     (instance-count :target-type box-long
                                      :member-name "InstanceCount"))
                                    (:shape-name "Subscription"))

(smithy/sdk/shapes:define-list subscription-list :member subscription)

(smithy/sdk/shapes:define-type subscription-provider-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subscription-provider-source
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subscription-provider-source-list :member
                               subscription-provider-source)

(smithy/sdk/shapes:define-type subscription-provider-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  subscription-provider-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
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
                                (:error-code 400)
                                (:base-class
                                 license-manager-linux-subscriptions-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  subscription-provider-arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-service-settings-request
                                    common-lisp:nil
                                    ((linux-subscriptions-discovery
                                      :target-type
                                      linux-subscriptions-discovery :required
                                      common-lisp:t :member-name
                                      "LinuxSubscriptionsDiscovery")
                                     (linux-subscriptions-discovery-settings
                                      :target-type
                                      linux-subscriptions-discovery-settings
                                      :required common-lisp:t :member-name
                                      "LinuxSubscriptionsDiscoverySettings")
                                     (allow-update :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AllowUpdate"))
                                    (:shape-name
                                     "UpdateServiceSettingsRequest"))

(smithy/sdk/shapes:define-structure update-service-settings-response
                                    common-lisp:nil
                                    ((linux-subscriptions-discovery
                                      :target-type
                                      linux-subscriptions-discovery
                                      :member-name
                                      "LinuxSubscriptionsDiscovery")
                                     (linux-subscriptions-discovery-settings
                                      :target-type
                                      linux-subscriptions-discovery-settings
                                      :member-name
                                      "LinuxSubscriptionsDiscoverySettings")
                                     (status :target-type status :member-name
                                      "Status")
                                     (status-message :target-type string-map
                                      :member-name "StatusMessage")
                                     (home-regions :target-type string-list
                                      :member-name "HomeRegions"))
                                    (:shape-name
                                     "UpdateServiceSettingsResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class
                                 license-manager-linux-subscriptions-error))

(smithy/sdk/operation:define-operation deregister-subscription-provider
                                       :shape-name
                                       "DeregisterSubscriptionProvider" :input
                                       deregister-subscription-provider-request
                                       :output
                                       deregister-subscription-provider-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/subscription/DeregisterSubscriptionProvider"
                                       :code 200)

(smithy/sdk/operation:define-operation get-registered-subscription-provider
                                       :shape-name
                                       "GetRegisteredSubscriptionProvider"
                                       :input
                                       get-registered-subscription-provider-request
                                       :output
                                       get-registered-subscription-provider-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/subscription/GetRegisteredSubscriptionProvider"
                                       :code 200)

(smithy/sdk/operation:define-operation get-service-settings :shape-name
                                       "GetServiceSettings" :input
                                       get-service-settings-request :output
                                       get-service-settings-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/subscription/GetServiceSettings" :code
                                       200)

(smithy/sdk/operation:define-operation list-linux-subscription-instances
                                       :shape-name
                                       "ListLinuxSubscriptionInstances" :input
                                       list-linux-subscription-instances-request
                                       :output
                                       list-linux-subscription-instances-response
                                       :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/subscription/ListLinuxSubscriptionInstances"
                                       :code 200)

(smithy/sdk/operation:define-operation list-linux-subscriptions :shape-name
                                       "ListLinuxSubscriptions" :input
                                       list-linux-subscriptions-request :output
                                       list-linux-subscriptions-response
                                       :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/subscription/ListLinuxSubscriptions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-registered-subscription-providers
                                       :shape-name
                                       "ListRegisteredSubscriptionProviders"
                                       :input
                                       list-registered-subscription-providers-request
                                       :output
                                       list-registered-subscription-providers-response
                                       :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/subscription/ListRegisteredSubscriptionProviders"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation register-subscription-provider
                                       :shape-name
                                       "RegisterSubscriptionProvider" :input
                                       register-subscription-provider-request
                                       :output
                                       register-subscription-provider-response
                                       :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/subscription/RegisterSubscriptionProvider"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-service-settings :shape-name
                                       "UpdateServiceSettings" :input
                                       update-service-settings-request :output
                                       update-service-settings-response :errors
                                       (internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/subscription/UpdateServiceSettings"
                                       :code 200)
