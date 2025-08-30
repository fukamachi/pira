(uiop/package:define-package #:pira/migration-hub-refactor-spaces (:use)
                             (:export #:access-denied-exception #:account-id
                              #:additional-details #:additional-details-key
                              #:additional-details-value
                              #:api-gateway-endpoint-type #:api-gateway-id
                              #:api-gateway-proxy-config
                              #:api-gateway-proxy-input
                              #:api-gateway-proxy-summary #:application-id
                              #:application-name #:application-state
                              #:application-summaries #:application-summary
                              #:boolean #:cidr-block #:cidr-blocks
                              #:client-token #:conflict-exception
                              #:create-application #:create-application-request
                              #:create-application-response
                              #:create-environment #:create-environment-request
                              #:create-environment-response #:create-route
                              #:create-route-request #:create-route-response
                              #:create-service #:create-service-request
                              #:create-service-response #:default-route-input
                              #:delete-application #:delete-application-request
                              #:delete-application-response
                              #:delete-environment #:delete-environment-request
                              #:delete-environment-response
                              #:delete-resource-policy
                              #:delete-resource-policy-request
                              #:delete-resource-policy-response #:delete-route
                              #:delete-route-request #:delete-route-response
                              #:delete-service #:delete-service-request
                              #:delete-service-response #:description
                              #:ec2tag-value #:environment-id
                              #:environment-name #:environment-state
                              #:environment-summaries #:environment-summary
                              #:environment-vpc #:environment-vpcs #:error-code
                              #:error-message #:error-resource-type
                              #:error-response #:get-application
                              #:get-application-request
                              #:get-application-response #:get-environment
                              #:get-environment-request
                              #:get-environment-response #:get-resource-policy
                              #:get-resource-policy-request
                              #:get-resource-policy-response #:get-route
                              #:get-route-request #:get-route-response
                              #:get-service #:get-service-request
                              #:get-service-response #:http-method
                              #:http-methods #:internal-server-exception
                              #:invalid-resource-policy-exception #:lambda-arn
                              #:lambda-endpoint-config #:lambda-endpoint-input
                              #:lambda-endpoint-summary #:list-applications
                              #:list-applications-request
                              #:list-applications-response
                              #:list-environment-vpcs
                              #:list-environment-vpcs-request
                              #:list-environment-vpcs-response
                              #:list-environments #:list-environments-request
                              #:list-environments-response #:list-routes
                              #:list-routes-request #:list-routes-response
                              #:list-services #:list-services-request
                              #:list-services-response #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:max-results
                              #:network-fabric-type #:next-token #:nlb-arn
                              #:nlb-name #:path-resource-to-id
                              #:path-resource-to-id-key
                              #:path-resource-to-id-value #:policy-string
                              #:proxy-type #:put-resource-policy
                              #:put-resource-policy-request
                              #:put-resource-policy-response #:refactor-spaces
                              #:resource-arn #:resource-identifier
                              #:resource-not-found-exception
                              #:resource-policy-identifier
                              #:retry-after-seconds #:route-activation-state
                              #:route-id #:route-state #:route-summaries
                              #:route-summary #:route-type
                              #:service-endpoint-type #:service-id
                              #:service-name #:service-quota-exceeded-exception
                              #:service-state #:service-summaries
                              #:service-summary #:stage-name #:string
                              #:tag-keys #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:throttling-exception #:timestamp
                              #:transit-gateway-id #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-route
                              #:update-route-request #:update-route-response
                              #:uri #:uri-path #:uri-path-route-input
                              #:url-endpoint-config #:url-endpoint-input
                              #:url-endpoint-summary #:validation-exception
                              #:vpc-id #:vpc-link-id
                              #:migration-hub-refactor-spaces-error))
(common-lisp:in-package #:pira/migration-hub-refactor-spaces)

(common-lisp:define-condition migration-hub-refactor-spaces-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service refactor-spaces :shape-name "RefactorSpaces"
                                   :version "2021-10-26" :title
                                   "AWS Migration Hub Refactor Spaces"
                                   :operations
                                   '(create-application create-environment
                                     create-route create-service
                                     delete-application delete-environment
                                     delete-resource-policy delete-route
                                     delete-service get-application
                                     get-environment get-resource-policy
                                     get-route get-service list-applications
                                     list-environments list-environment-vpcs
                                     list-routes list-services
                                     list-tags-for-resource put-resource-policy
                                     tag-resource untag-resource update-route)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "Migration Hub Refactor Spaces")
                                      ("arnNamespace" . "refactor-spaces")
                                      ("cloudFormationName" . "RefactorSpaces")
                                      ("cloudTrailEventSource"
                                       . "refactor-spaces.amazonaws.com")
                                      ("endpointPrefix" . "refactor-spaces"))
                                     ("aws.auth#sigv4"
                                      ("name" . "refactor-spaces"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class
                                 migration-hub-refactor-spaces-error))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map additional-details :key additional-details-key
                              :value additional-details-value)

(smithy/sdk/shapes:define-type additional-details-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type additional-details-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type api-gateway-endpoint-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type api-gateway-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure api-gateway-proxy-config common-lisp:nil
                                    ((proxy-url :target-type uri :member-name
                                      "ProxyUrl")
                                     (api-gateway-id :target-type
                                      api-gateway-id :member-name
                                      "ApiGatewayId")
                                     (vpc-link-id :target-type vpc-link-id
                                      :member-name "VpcLinkId")
                                     (nlb-arn :target-type nlb-arn :member-name
                                      "NlbArn")
                                     (nlb-name :target-type nlb-name
                                      :member-name "NlbName")
                                     (endpoint-type :target-type
                                      api-gateway-endpoint-type :member-name
                                      "EndpointType")
                                     (stage-name :target-type stage-name
                                      :member-name "StageName"))
                                    (:shape-name "ApiGatewayProxyConfig"))

(smithy/sdk/shapes:define-structure api-gateway-proxy-input common-lisp:nil
                                    ((endpoint-type :target-type
                                      api-gateway-endpoint-type :member-name
                                      "EndpointType")
                                     (stage-name :target-type stage-name
                                      :member-name "StageName"))
                                    (:shape-name "ApiGatewayProxyInput"))

(smithy/sdk/shapes:define-structure api-gateway-proxy-summary common-lisp:nil
                                    ((proxy-url :target-type uri :member-name
                                      "ProxyUrl")
                                     (api-gateway-id :target-type
                                      api-gateway-id :member-name
                                      "ApiGatewayId")
                                     (vpc-link-id :target-type vpc-link-id
                                      :member-name "VpcLinkId")
                                     (nlb-arn :target-type nlb-arn :member-name
                                      "NlbArn")
                                     (nlb-name :target-type nlb-name
                                      :member-name "NlbName")
                                     (endpoint-type :target-type
                                      api-gateway-endpoint-type :member-name
                                      "EndpointType")
                                     (stage-name :target-type stage-name
                                      :member-name "StageName"))
                                    (:shape-name "ApiGatewayProxySummary"))

(smithy/sdk/shapes:define-type application-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list application-summaries :member
                               application-summary)

(smithy/sdk/shapes:define-structure application-summary common-lisp:nil
                                    ((name :target-type application-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (owner-account-id :target-type account-id
                                      :member-name "OwnerAccountId")
                                     (created-by-account-id :target-type
                                      account-id :member-name
                                      "CreatedByAccountId")
                                     (application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (proxy-type :target-type proxy-type
                                      :member-name "ProxyType")
                                     (api-gateway-proxy :target-type
                                      api-gateway-proxy-summary :member-name
                                      "ApiGatewayProxy")
                                     (state :target-type application-state
                                      :member-name "State")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (error :target-type error-response
                                      :member-name "Error")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "ApplicationSummary"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type cidr-block smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cidr-blocks :member cidr-block)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class
                                 migration-hub-refactor-spaces-error))

(smithy/sdk/shapes:define-input create-application-request common-lisp:nil
                                ((name :target-type application-name :required
                                  common-lisp:t :member-name "Name")
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t)
                                 (vpc-id :target-type vpc-id :required
                                  common-lisp:t :member-name "VpcId")
                                 (proxy-type :target-type proxy-type :required
                                  common-lisp:t :member-name "ProxyType")
                                 (api-gateway-proxy :target-type
                                  api-gateway-proxy-input :member-name
                                  "ApiGatewayProxy")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-structure create-application-response common-lisp:nil
                                    ((name :target-type application-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (owner-account-id :target-type account-id
                                      :member-name "OwnerAccountId")
                                     (created-by-account-id :target-type
                                      account-id :member-name
                                      "CreatedByAccountId")
                                     (application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (proxy-type :target-type proxy-type
                                      :member-name "ProxyType")
                                     (api-gateway-proxy :target-type
                                      api-gateway-proxy-input :member-name
                                      "ApiGatewayProxy")
                                     (state :target-type application-state
                                      :member-name "State")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "CreateApplicationResponse"))

(smithy/sdk/shapes:define-structure create-environment-request common-lisp:nil
                                    ((name :target-type environment-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (network-fabric-type :target-type
                                      network-fabric-type :required
                                      common-lisp:t :member-name
                                      "NetworkFabricType")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (client-token :target-type client-token
                                      :member-name "ClientToken"))
                                    (:shape-name "CreateEnvironmentRequest"))

(smithy/sdk/shapes:define-structure create-environment-response common-lisp:nil
                                    ((name :target-type environment-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (description :target-type description
                                      :member-name "Description")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (network-fabric-type :target-type
                                      network-fabric-type :member-name
                                      "NetworkFabricType")
                                     (owner-account-id :target-type account-id
                                      :member-name "OwnerAccountId")
                                     (state :target-type environment-state
                                      :member-name "State")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "CreateEnvironmentResponse"))

(smithy/sdk/shapes:define-input create-route-request common-lisp:nil
                                ((environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t)
                                 (application-identifier :target-type
                                  application-id :required common-lisp:t
                                  :member-name "ApplicationIdentifier"
                                  :http-label common-lisp:t)
                                 (service-identifier :target-type service-id
                                  :required common-lisp:t :member-name
                                  "ServiceIdentifier")
                                 (route-type :target-type route-type :required
                                  common-lisp:t :member-name "RouteType")
                                 (default-route :target-type
                                  default-route-input :member-name
                                  "DefaultRoute")
                                 (uri-path-route :target-type
                                  uri-path-route-input :member-name
                                  "UriPathRoute")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateRouteRequest"))

(smithy/sdk/shapes:define-structure create-route-response common-lisp:nil
                                    ((route-id :target-type route-id
                                      :member-name "RouteId")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (owner-account-id :target-type account-id
                                      :member-name "OwnerAccountId")
                                     (created-by-account-id :target-type
                                      account-id :member-name
                                      "CreatedByAccountId")
                                     (route-type :target-type route-type
                                      :member-name "RouteType")
                                     (service-id :target-type service-id
                                      :member-name "ServiceId")
                                     (application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (uri-path-route :target-type
                                      uri-path-route-input :member-name
                                      "UriPathRoute")
                                     (state :target-type route-state
                                      :member-name "State")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "CreateRouteResponse"))

(smithy/sdk/shapes:define-input create-service-request common-lisp:nil
                                ((name :target-type service-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t)
                                 (application-identifier :target-type
                                  application-id :required common-lisp:t
                                  :member-name "ApplicationIdentifier"
                                  :http-label common-lisp:t)
                                 (vpc-id :target-type vpc-id :member-name
                                  "VpcId")
                                 (endpoint-type :target-type
                                  service-endpoint-type :required common-lisp:t
                                  :member-name "EndpointType")
                                 (url-endpoint :target-type url-endpoint-input
                                  :member-name "UrlEndpoint")
                                 (lambda-endpoint :target-type
                                  lambda-endpoint-input :member-name
                                  "LambdaEndpoint")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateServiceRequest"))

(smithy/sdk/shapes:define-structure create-service-response common-lisp:nil
                                    ((service-id :target-type service-id
                                      :member-name "ServiceId")
                                     (name :target-type service-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (owner-account-id :target-type account-id
                                      :member-name "OwnerAccountId")
                                     (created-by-account-id :target-type
                                      account-id :member-name
                                      "CreatedByAccountId")
                                     (description :target-type description
                                      :member-name "Description")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (endpoint-type :target-type
                                      service-endpoint-type :member-name
                                      "EndpointType")
                                     (url-endpoint :target-type
                                      url-endpoint-input :member-name
                                      "UrlEndpoint")
                                     (lambda-endpoint :target-type
                                      lambda-endpoint-input :member-name
                                      "LambdaEndpoint")
                                     (state :target-type service-state
                                      :member-name "State")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "CreateServiceResponse"))

(smithy/sdk/shapes:define-structure default-route-input common-lisp:nil
                                    ((activation-state :target-type
                                      route-activation-state :member-name
                                      "ActivationState"))
                                    (:shape-name "DefaultRouteInput"))

(smithy/sdk/shapes:define-input delete-application-request common-lisp:nil
                                ((environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t)
                                 (application-identifier :target-type
                                  application-id :required common-lisp:t
                                  :member-name "ApplicationIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-structure delete-application-response common-lisp:nil
                                    ((name :target-type application-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (state :target-type application-state
                                      :member-name "State")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime"))
                                    (:shape-name "DeleteApplicationResponse"))

(smithy/sdk/shapes:define-input delete-environment-request common-lisp:nil
                                ((environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteEnvironmentRequest"))

(smithy/sdk/shapes:define-structure delete-environment-response common-lisp:nil
                                    ((name :target-type environment-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (state :target-type environment-state
                                      :member-name "State")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime"))
                                    (:shape-name "DeleteEnvironmentResponse"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((identifier :target-type
                                  resource-policy-identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-structure delete-resource-policy-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteResourcePolicyResponse"))

(smithy/sdk/shapes:define-input delete-route-request common-lisp:nil
                                ((environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t)
                                 (application-identifier :target-type
                                  application-id :required common-lisp:t
                                  :member-name "ApplicationIdentifier"
                                  :http-label common-lisp:t)
                                 (route-identifier :target-type route-id
                                  :required common-lisp:t :member-name
                                  "RouteIdentifier" :http-label common-lisp:t))
                                (:shape-name "DeleteRouteRequest"))

(smithy/sdk/shapes:define-structure delete-route-response common-lisp:nil
                                    ((route-id :target-type route-id
                                      :member-name "RouteId")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (service-id :target-type service-id
                                      :member-name "ServiceId")
                                     (application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (state :target-type route-state
                                      :member-name "State")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime"))
                                    (:shape-name "DeleteRouteResponse"))

(smithy/sdk/shapes:define-input delete-service-request common-lisp:nil
                                ((environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t)
                                 (application-identifier :target-type
                                  application-id :required common-lisp:t
                                  :member-name "ApplicationIdentifier"
                                  :http-label common-lisp:t)
                                 (service-identifier :target-type service-id
                                  :required common-lisp:t :member-name
                                  "ServiceIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteServiceRequest"))

(smithy/sdk/shapes:define-structure delete-service-response common-lisp:nil
                                    ((service-id :target-type service-id
                                      :member-name "ServiceId")
                                     (name :target-type service-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (state :target-type service-state
                                      :member-name "State")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime"))
                                    (:shape-name "DeleteServiceResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ec2tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list environment-summaries :member
                               environment-summary)

(smithy/sdk/shapes:define-structure environment-summary common-lisp:nil
                                    ((name :target-type environment-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (description :target-type description
                                      :member-name "Description")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (network-fabric-type :target-type
                                      network-fabric-type :member-name
                                      "NetworkFabricType")
                                     (owner-account-id :target-type account-id
                                      :member-name "OwnerAccountId")
                                     (transit-gateway-id :target-type
                                      transit-gateway-id :member-name
                                      "TransitGatewayId")
                                     (state :target-type environment-state
                                      :member-name "State")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (error :target-type error-response
                                      :member-name "Error")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "EnvironmentSummary"))

(smithy/sdk/shapes:define-structure environment-vpc common-lisp:nil
                                    ((environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (cidr-blocks :target-type cidr-blocks
                                      :member-name "CidrBlocks")
                                     (vpc-name :target-type ec2tag-value
                                      :member-name "VpcName")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "EnvironmentVpc"))

(smithy/sdk/shapes:define-list environment-vpcs :member environment-vpc)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-response common-lisp:nil
                                    ((code :target-type error-code :member-name
                                      "Code")
                                     (message :target-type error-message
                                      :member-name "Message")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (resource-identifier :target-type
                                      resource-identifier :member-name
                                      "ResourceIdentifier")
                                     (resource-type :target-type
                                      error-resource-type :member-name
                                      "ResourceType")
                                     (additional-details :target-type
                                      additional-details :member-name
                                      "AdditionalDetails"))
                                    (:shape-name "ErrorResponse"))

(smithy/sdk/shapes:define-input get-application-request common-lisp:nil
                                ((environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t)
                                 (application-identifier :target-type
                                  application-id :required common-lisp:t
                                  :member-name "ApplicationIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetApplicationRequest"))

(smithy/sdk/shapes:define-structure get-application-response common-lisp:nil
                                    ((name :target-type application-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (owner-account-id :target-type account-id
                                      :member-name "OwnerAccountId")
                                     (created-by-account-id :target-type
                                      account-id :member-name
                                      "CreatedByAccountId")
                                     (application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (proxy-type :target-type proxy-type
                                      :member-name "ProxyType")
                                     (api-gateway-proxy :target-type
                                      api-gateway-proxy-config :member-name
                                      "ApiGatewayProxy")
                                     (state :target-type application-state
                                      :member-name "State")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (error :target-type error-response
                                      :member-name "Error")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "GetApplicationResponse"))

(smithy/sdk/shapes:define-input get-environment-request common-lisp:nil
                                ((environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEnvironmentRequest"))

(smithy/sdk/shapes:define-structure get-environment-response common-lisp:nil
                                    ((name :target-type environment-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (description :target-type description
                                      :member-name "Description")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (network-fabric-type :target-type
                                      network-fabric-type :member-name
                                      "NetworkFabricType")
                                     (owner-account-id :target-type account-id
                                      :member-name "OwnerAccountId")
                                     (transit-gateway-id :target-type
                                      transit-gateway-id :member-name
                                      "TransitGatewayId")
                                     (state :target-type environment-state
                                      :member-name "State")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (error :target-type error-response
                                      :member-name "Error")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "GetEnvironmentResponse"))

(smithy/sdk/shapes:define-input get-resource-policy-request common-lisp:nil
                                ((identifier :target-type
                                  resource-policy-identifier :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetResourcePolicyRequest"))

(smithy/sdk/shapes:define-structure get-resource-policy-response
                                    common-lisp:nil
                                    ((policy :target-type policy-string
                                      :member-name "Policy"))
                                    (:shape-name "GetResourcePolicyResponse"))

(smithy/sdk/shapes:define-input get-route-request common-lisp:nil
                                ((environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t)
                                 (application-identifier :target-type
                                  application-id :required common-lisp:t
                                  :member-name "ApplicationIdentifier"
                                  :http-label common-lisp:t)
                                 (route-identifier :target-type route-id
                                  :required common-lisp:t :member-name
                                  "RouteIdentifier" :http-label common-lisp:t))
                                (:shape-name "GetRouteRequest"))

(smithy/sdk/shapes:define-structure get-route-response common-lisp:nil
                                    ((route-id :target-type route-id
                                      :member-name "RouteId")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (owner-account-id :target-type account-id
                                      :member-name "OwnerAccountId")
                                     (created-by-account-id :target-type
                                      account-id :member-name
                                      "CreatedByAccountId")
                                     (route-type :target-type route-type
                                      :member-name "RouteType")
                                     (service-id :target-type service-id
                                      :member-name "ServiceId")
                                     (application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (source-path :target-type uri-path
                                      :member-name "SourcePath")
                                     (methods :target-type http-methods
                                      :member-name "Methods")
                                     (include-child-paths :target-type boolean
                                      :member-name "IncludeChildPaths")
                                     (path-resource-to-id :target-type
                                      path-resource-to-id :member-name
                                      "PathResourceToId")
                                     (state :target-type route-state
                                      :member-name "State")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (error :target-type error-response
                                      :member-name "Error")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (append-source-path :target-type boolean
                                      :member-name "AppendSourcePath"))
                                    (:shape-name "GetRouteResponse"))

(smithy/sdk/shapes:define-input get-service-request common-lisp:nil
                                ((environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t)
                                 (application-identifier :target-type
                                  application-id :required common-lisp:t
                                  :member-name "ApplicationIdentifier"
                                  :http-label common-lisp:t)
                                 (service-identifier :target-type service-id
                                  :required common-lisp:t :member-name
                                  "ServiceIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetServiceRequest"))

(smithy/sdk/shapes:define-structure get-service-response common-lisp:nil
                                    ((service-id :target-type service-id
                                      :member-name "ServiceId")
                                     (name :target-type service-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (owner-account-id :target-type account-id
                                      :member-name "OwnerAccountId")
                                     (created-by-account-id :target-type
                                      account-id :member-name
                                      "CreatedByAccountId")
                                     (description :target-type description
                                      :member-name "Description")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (endpoint-type :target-type
                                      service-endpoint-type :member-name
                                      "EndpointType")
                                     (url-endpoint :target-type
                                      url-endpoint-config :member-name
                                      "UrlEndpoint")
                                     (lambda-endpoint :target-type
                                      lambda-endpoint-config :member-name
                                      "LambdaEndpoint")
                                     (state :target-type service-state
                                      :member-name "State")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (error :target-type error-response
                                      :member-name "Error")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "GetServiceResponse"))

(smithy/sdk/shapes:define-type http-method smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list http-methods :member http-method)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class
                                 migration-hub-refactor-spaces-error))

(smithy/sdk/shapes:define-error invalid-resource-policy-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InvalidResourcePolicyException")
                                (:error-code 400)
                                (:base-class
                                 migration-hub-refactor-spaces-error))

(smithy/sdk/shapes:define-type lambda-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-endpoint-config common-lisp:nil
                                    ((arn :target-type lambda-arn :member-name
                                      "Arn"))
                                    (:shape-name "LambdaEndpointConfig"))

(smithy/sdk/shapes:define-structure lambda-endpoint-input common-lisp:nil
                                    ((arn :target-type lambda-arn :required
                                      common-lisp:t :member-name "Arn"))
                                    (:shape-name "LambdaEndpointInput"))

(smithy/sdk/shapes:define-structure lambda-endpoint-summary common-lisp:nil
                                    ((arn :target-type lambda-arn :member-name
                                      "Arn"))
                                    (:shape-name "LambdaEndpointSummary"))

(smithy/sdk/shapes:define-input list-applications-request common-lisp:nil
                                ((environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-structure list-applications-response common-lisp:nil
                                    ((application-summary-list :target-type
                                      application-summaries :member-name
                                      "ApplicationSummaryList")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListApplicationsResponse"))

(smithy/sdk/shapes:define-input list-environment-vpcs-request common-lisp:nil
                                ((environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListEnvironmentVpcsRequest"))

(smithy/sdk/shapes:define-structure list-environment-vpcs-response
                                    common-lisp:nil
                                    ((environment-vpc-list :target-type
                                      environment-vpcs :member-name
                                      "EnvironmentVpcList")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListEnvironmentVpcsResponse"))

(smithy/sdk/shapes:define-input list-environments-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListEnvironmentsRequest"))

(smithy/sdk/shapes:define-structure list-environments-response common-lisp:nil
                                    ((environment-summary-list :target-type
                                      environment-summaries :member-name
                                      "EnvironmentSummaryList")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListEnvironmentsResponse"))

(smithy/sdk/shapes:define-input list-routes-request common-lisp:nil
                                ((environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t)
                                 (application-identifier :target-type
                                  application-id :required common-lisp:t
                                  :member-name "ApplicationIdentifier"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListRoutesRequest"))

(smithy/sdk/shapes:define-structure list-routes-response common-lisp:nil
                                    ((route-summary-list :target-type
                                      route-summaries :member-name
                                      "RouteSummaryList")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListRoutesResponse"))

(smithy/sdk/shapes:define-input list-services-request common-lisp:nil
                                ((environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t)
                                 (application-identifier :target-type
                                  application-id :required common-lisp:t
                                  :member-name "ApplicationIdentifier"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListServicesRequest"))

(smithy/sdk/shapes:define-structure list-services-response common-lisp:nil
                                    ((service-summary-list :target-type
                                      service-summaries :member-name
                                      "ServiceSummaryList")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListServicesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type network-fabric-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nlb-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nlb-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map path-resource-to-id :key path-resource-to-id-key
                              :value path-resource-to-id-value)

(smithy/sdk/shapes:define-type path-resource-to-id-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type path-resource-to-id-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type proxy-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure put-resource-policy-request common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceArn")
                                     (policy :target-type policy-string
                                      :required common-lisp:t :member-name
                                      "Policy"))
                                    (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-structure put-resource-policy-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class
                                 migration-hub-refactor-spaces-error))

(smithy/sdk/shapes:define-type resource-policy-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type route-activation-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type route-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type route-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-summaries :member route-summary)

(smithy/sdk/shapes:define-structure route-summary common-lisp:nil
                                    ((route-id :target-type route-id
                                      :member-name "RouteId")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (owner-account-id :target-type account-id
                                      :member-name "OwnerAccountId")
                                     (created-by-account-id :target-type
                                      account-id :member-name
                                      "CreatedByAccountId")
                                     (route-type :target-type route-type
                                      :member-name "RouteType")
                                     (service-id :target-type service-id
                                      :member-name "ServiceId")
                                     (application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (source-path :target-type uri-path
                                      :member-name "SourcePath")
                                     (methods :target-type http-methods
                                      :member-name "Methods")
                                     (include-child-paths :target-type boolean
                                      :member-name "IncludeChildPaths")
                                     (path-resource-to-id :target-type
                                      path-resource-to-id :member-name
                                      "PathResourceToId")
                                     (state :target-type route-state
                                      :member-name "State")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (error :target-type error-response
                                      :member-name "Error")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (append-source-path :target-type boolean
                                      :member-name "AppendSourcePath"))
                                    (:shape-name "RouteSummary"))

(smithy/sdk/shapes:define-type route-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-endpoint-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "ResourceType")
                                 (quota-code :target-type string :member-name
                                  "QuotaCode")
                                 (service-code :target-type string :required
                                  common-lisp:t :member-name "ServiceCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class
                                 migration-hub-refactor-spaces-error))

(smithy/sdk/shapes:define-type service-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-summaries :member service-summary)

(smithy/sdk/shapes:define-structure service-summary common-lisp:nil
                                    ((service-id :target-type service-id
                                      :member-name "ServiceId")
                                     (name :target-type service-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (owner-account-id :target-type account-id
                                      :member-name "OwnerAccountId")
                                     (created-by-account-id :target-type
                                      account-id :member-name
                                      "CreatedByAccountId")
                                     (description :target-type description
                                      :member-name "Description")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (endpoint-type :target-type
                                      service-endpoint-type :member-name
                                      "EndpointType")
                                     (url-endpoint :target-type
                                      url-endpoint-summary :member-name
                                      "UrlEndpoint")
                                     (lambda-endpoint :target-type
                                      lambda-endpoint-summary :member-name
                                      "LambdaEndpoint")
                                     (state :target-type service-state
                                      :member-name "State")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (error :target-type error-response
                                      :member-name "Error")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "ServiceSummary"))

(smithy/sdk/shapes:define-type stage-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member string)

(smithy/sdk/shapes:define-map tag-map :key string :value string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (quota-code :target-type string :member-name
                                  "QuotaCode")
                                 (service-code :target-type string :member-name
                                  "ServiceCode")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class
                                 migration-hub-refactor-spaces-error))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type transit-gateway-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-route-request common-lisp:nil
                                ((environment-identifier :target-type
                                  environment-id :required common-lisp:t
                                  :member-name "EnvironmentIdentifier"
                                  :http-label common-lisp:t)
                                 (application-identifier :target-type
                                  application-id :required common-lisp:t
                                  :member-name "ApplicationIdentifier"
                                  :http-label common-lisp:t)
                                 (route-identifier :target-type route-id
                                  :required common-lisp:t :member-name
                                  "RouteIdentifier" :http-label common-lisp:t)
                                 (activation-state :target-type
                                  route-activation-state :required
                                  common-lisp:t :member-name
                                  "ActivationState"))
                                (:shape-name "UpdateRouteRequest"))

(smithy/sdk/shapes:define-structure update-route-response common-lisp:nil
                                    ((route-id :target-type route-id
                                      :member-name "RouteId")
                                     (arn :target-type resource-arn
                                      :member-name "Arn")
                                     (service-id :target-type service-id
                                      :member-name "ServiceId")
                                     (application-id :target-type
                                      application-id :member-name
                                      "ApplicationId")
                                     (state :target-type route-state
                                      :member-name "State")
                                     (last-updated-time :target-type timestamp
                                      :member-name "LastUpdatedTime"))
                                    (:shape-name "UpdateRouteResponse"))

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uri-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure uri-path-route-input common-lisp:nil
                                    ((source-path :target-type uri-path
                                      :required common-lisp:t :member-name
                                      "SourcePath")
                                     (activation-state :target-type
                                      route-activation-state :required
                                      common-lisp:t :member-name
                                      "ActivationState")
                                     (methods :target-type http-methods
                                      :member-name "Methods")
                                     (include-child-paths :target-type boolean
                                      :member-name "IncludeChildPaths")
                                     (append-source-path :target-type boolean
                                      :member-name "AppendSourcePath"))
                                    (:shape-name "UriPathRouteInput"))

(smithy/sdk/shapes:define-structure url-endpoint-config common-lisp:nil
                                    ((url :target-type uri :member-name "Url")
                                     (health-url :target-type uri :member-name
                                      "HealthUrl"))
                                    (:shape-name "UrlEndpointConfig"))

(smithy/sdk/shapes:define-structure url-endpoint-input common-lisp:nil
                                    ((url :target-type uri :required
                                      common-lisp:t :member-name "Url")
                                     (health-url :target-type uri :member-name
                                      "HealthUrl"))
                                    (:shape-name "UrlEndpointInput"))

(smithy/sdk/shapes:define-structure url-endpoint-summary common-lisp:nil
                                    ((url :target-type uri :member-name "Url")
                                     (health-url :target-type uri :member-name
                                      "HealthUrl"))
                                    (:shape-name "UrlEndpointSummary"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class
                                 migration-hub-refactor-spaces-error))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-link-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/environments/{EnvironmentIdentifier}/applications"
                                       :code 200)

(smithy/sdk/operation:define-operation create-environment :shape-name
                                       "CreateEnvironment" :input
                                       create-environment-request :output
                                       create-environment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/environments"
                                       :code 200)

(smithy/sdk/operation:define-operation create-route :shape-name "CreateRoute"
                                       :input create-route-request :output
                                       create-route-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes"
                                       :code 200)

(smithy/sdk/operation:define-operation create-service :shape-name
                                       "CreateService" :input
                                       create-service-request :output
                                       create-service-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       delete-application-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-environment :shape-name
                                       "DeleteEnvironment" :input
                                       delete-environment-request :output
                                       delete-environment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/environments/{EnvironmentIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/resourcepolicy/{Identifier}" :code 200)

(smithy/sdk/operation:define-operation delete-route :shape-name "DeleteRoute"
                                       :input delete-route-request :output
                                       delete-route-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-service :shape-name
                                       "DeleteService" :input
                                       delete-service-request :output
                                       delete-service-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services/{ServiceIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-application :shape-name
                                       "GetApplication" :input
                                       get-application-request :output
                                       get-application-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-environment :shape-name
                                       "GetEnvironment" :input
                                       get-environment-request :output
                                       get-environment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/environments/{EnvironmentIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-request :output
                                       get-resource-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/resourcepolicy/{Identifier}" :code 200)

(smithy/sdk/operation:define-operation get-route :shape-name "GetRoute" :input
                                       get-route-request :output
                                       get-route-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-service :shape-name "GetService"
                                       :input get-service-request :output
                                       get-service-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services/{ServiceIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       list-applications-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/environments/{EnvironmentIdentifier}/applications"
                                       :code 200)

(smithy/sdk/operation:define-operation list-environment-vpcs :shape-name
                                       "ListEnvironmentVpcs" :input
                                       list-environment-vpcs-request :output
                                       list-environment-vpcs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/environments/{EnvironmentIdentifier}/vpcs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-environments :shape-name
                                       "ListEnvironments" :input
                                       list-environments-request :output
                                       list-environments-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/environments" :code
                                       200)

(smithy/sdk/operation:define-operation list-routes :shape-name "ListRoutes"
                                       :input list-routes-request :output
                                       list-routes-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-services :shape-name "ListServices"
                                       :input list-services-request :output
                                       list-services-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/services"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        invalid-resource-policy-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/resourcepolicy"
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
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-route :shape-name "UpdateRoute"
                                       :input update-route-request :output
                                       update-route-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/environments/{EnvironmentIdentifier}/applications/{ApplicationIdentifier}/routes/{RouteIdentifier}"
                                       :code 200)
