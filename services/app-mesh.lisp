(uiop/package:define-package #:pira/app-mesh (:use)
                             (:export #:access-log #:account-id #:app-mesh
                              #:arn #:aws-cloud-map-instance-attribute
                              #:aws-cloud-map-instance-attribute-key
                              #:aws-cloud-map-instance-attribute-value
                              #:aws-cloud-map-instance-attributes
                              #:aws-cloud-map-name
                              #:aws-cloud-map-service-discovery #:backend
                              #:backend-defaults #:backends
                              #:bad-request-exception
                              #:certificate-authority-arns #:client-policy
                              #:client-policy-tls #:client-tls-certificate
                              #:conflict-exception #:create-gateway-route
                              #:create-gateway-route-input
                              #:create-gateway-route-output #:create-mesh
                              #:create-mesh-input #:create-mesh-output
                              #:create-route #:create-route-input
                              #:create-route-output #:create-virtual-gateway
                              #:create-virtual-gateway-input
                              #:create-virtual-gateway-output
                              #:create-virtual-node #:create-virtual-node-input
                              #:create-virtual-node-output
                              #:create-virtual-router
                              #:create-virtual-router-input
                              #:create-virtual-router-output
                              #:create-virtual-service
                              #:create-virtual-service-input
                              #:create-virtual-service-output
                              #:default-gateway-route-rewrite
                              #:delete-gateway-route
                              #:delete-gateway-route-input
                              #:delete-gateway-route-output #:delete-mesh
                              #:delete-mesh-input #:delete-mesh-output
                              #:delete-route #:delete-route-input
                              #:delete-route-output #:delete-virtual-gateway
                              #:delete-virtual-gateway-input
                              #:delete-virtual-gateway-output
                              #:delete-virtual-node #:delete-virtual-node-input
                              #:delete-virtual-node-output
                              #:delete-virtual-router
                              #:delete-virtual-router-input
                              #:delete-virtual-router-output
                              #:delete-virtual-service
                              #:delete-virtual-service-input
                              #:delete-virtual-service-output
                              #:describe-gateway-route
                              #:describe-gateway-route-input
                              #:describe-gateway-route-output #:describe-mesh
                              #:describe-mesh-input #:describe-mesh-output
                              #:describe-route #:describe-route-input
                              #:describe-route-output
                              #:describe-virtual-gateway
                              #:describe-virtual-gateway-input
                              #:describe-virtual-gateway-output
                              #:describe-virtual-node
                              #:describe-virtual-node-input
                              #:describe-virtual-node-output
                              #:describe-virtual-router
                              #:describe-virtual-router-input
                              #:describe-virtual-router-output
                              #:describe-virtual-service
                              #:describe-virtual-service-input
                              #:describe-virtual-service-output
                              #:dns-response-type #:dns-service-discovery
                              #:duration #:duration-unit #:duration-value
                              #:egress-filter #:egress-filter-type
                              #:exact-host-name #:file-access-log #:file-path
                              #:forbidden-exception #:gateway-route
                              #:gateway-route-data
                              #:gateway-route-hostname-match
                              #:gateway-route-hostname-rewrite
                              #:gateway-route-list #:gateway-route-priority
                              #:gateway-route-ref #:gateway-route-spec
                              #:gateway-route-status
                              #:gateway-route-status-code
                              #:gateway-route-target
                              #:gateway-route-virtual-service
                              #:grpc-gateway-route #:grpc-gateway-route-action
                              #:grpc-gateway-route-match
                              #:grpc-gateway-route-metadata
                              #:grpc-gateway-route-metadata-list
                              #:grpc-gateway-route-rewrite
                              #:grpc-metadata-match-method #:grpc-retry-policy
                              #:grpc-retry-policy-event
                              #:grpc-retry-policy-events #:grpc-route
                              #:grpc-route-action #:grpc-route-match
                              #:grpc-route-metadata #:grpc-route-metadata-list
                              #:grpc-route-metadata-match-method #:grpc-timeout
                              #:header-match #:header-match-method
                              #:header-name #:health-check-interval-millis
                              #:health-check-policy #:health-check-threshold
                              #:health-check-timeout-millis #:hostname
                              #:http-gateway-route #:http-gateway-route-action
                              #:http-gateway-route-header
                              #:http-gateway-route-headers
                              #:http-gateway-route-match
                              #:http-gateway-route-path-rewrite
                              #:http-gateway-route-prefix
                              #:http-gateway-route-prefix-rewrite
                              #:http-gateway-route-rewrite #:http-method
                              #:http-path-exact #:http-path-match
                              #:http-path-regex #:http-query-parameter
                              #:http-query-parameters #:http-retry-policy
                              #:http-retry-policy-event
                              #:http-retry-policy-events #:http-route
                              #:http-route-action #:http-route-header
                              #:http-route-headers #:http-route-match
                              #:http-scheme #:http-timeout
                              #:internal-server-error-exception #:ip-preference
                              #:json-format #:json-format-ref #:json-key
                              #:json-value #:limit-exceeded-exception
                              #:list-gateway-routes #:list-gateway-routes-input
                              #:list-gateway-routes-limit
                              #:list-gateway-routes-output #:list-meshes
                              #:list-meshes-input #:list-meshes-limit
                              #:list-meshes-output #:list-routes
                              #:list-routes-input #:list-routes-limit
                              #:list-routes-output #:list-tags-for-resource
                              #:list-tags-for-resource-input
                              #:list-tags-for-resource-output
                              #:list-virtual-gateways
                              #:list-virtual-gateways-input
                              #:list-virtual-gateways-limit
                              #:list-virtual-gateways-output
                              #:list-virtual-nodes #:list-virtual-nodes-input
                              #:list-virtual-nodes-limit
                              #:list-virtual-nodes-output
                              #:list-virtual-routers
                              #:list-virtual-routers-input
                              #:list-virtual-routers-limit
                              #:list-virtual-routers-output
                              #:list-virtual-services
                              #:list-virtual-services-input
                              #:list-virtual-services-limit
                              #:list-virtual-services-output #:listener
                              #:listener-port #:listener-timeout #:listener-tls
                              #:listener-tls-acm-certificate
                              #:listener-tls-certificate
                              #:listener-tls-file-certificate
                              #:listener-tls-mode
                              #:listener-tls-sds-certificate
                              #:listener-tls-validation-context
                              #:listener-tls-validation-context-trust
                              #:listeners #:logging #:logging-format
                              #:match-range #:max-connections
                              #:max-pending-requests #:max-requests
                              #:max-retries #:mesh #:mesh-data #:mesh-list
                              #:mesh-ref #:mesh-service-discovery #:mesh-spec
                              #:mesh-status #:mesh-status-code #:method-name
                              #:not-found-exception #:outlier-detection
                              #:outlier-detection-max-ejection-percent
                              #:outlier-detection-max-server-errors
                              #:percent-int #:port-mapping #:port-number
                              #:port-protocol #:port-set
                              #:query-parameter-match #:query-parameter-name
                              #:resource-in-use-exception #:resource-metadata
                              #:resource-name #:route #:route-data #:route-list
                              #:route-priority #:route-ref #:route-spec
                              #:route-status #:route-status-code
                              #:sds-secret-name #:service-discovery
                              #:service-name #:service-unavailable-exception
                              #:subject-alternative-name
                              #:subject-alternative-name-list
                              #:subject-alternative-name-matchers
                              #:subject-alternative-names #:suffix-hostname
                              #:tag-key #:tag-key-list #:tag-list #:tag-ref
                              #:tag-resource #:tag-resource-input
                              #:tag-resource-output #:tag-value #:tags-limit
                              #:tcp-retry-policy-event
                              #:tcp-retry-policy-events #:tcp-route
                              #:tcp-route-action #:tcp-route-match
                              #:tcp-timeout #:text-format
                              #:tls-validation-context
                              #:tls-validation-context-acm-trust
                              #:tls-validation-context-file-trust
                              #:tls-validation-context-sds-trust
                              #:tls-validation-context-trust
                              #:too-many-requests-exception
                              #:too-many-tags-exception #:untag-resource
                              #:untag-resource-input #:untag-resource-output
                              #:update-gateway-route
                              #:update-gateway-route-input
                              #:update-gateway-route-output #:update-mesh
                              #:update-mesh-input #:update-mesh-output
                              #:update-route #:update-route-input
                              #:update-route-output #:update-virtual-gateway
                              #:update-virtual-gateway-input
                              #:update-virtual-gateway-output
                              #:update-virtual-node #:update-virtual-node-input
                              #:update-virtual-node-output
                              #:update-virtual-router
                              #:update-virtual-router-input
                              #:update-virtual-router-output
                              #:update-virtual-service
                              #:update-virtual-service-input
                              #:update-virtual-service-output #:virtual-gateway
                              #:virtual-gateway-access-log
                              #:virtual-gateway-backend-defaults
                              #:virtual-gateway-certificate-authority-arns
                              #:virtual-gateway-client-policy
                              #:virtual-gateway-client-policy-tls
                              #:virtual-gateway-client-tls-certificate
                              #:virtual-gateway-connection-pool
                              #:virtual-gateway-data
                              #:virtual-gateway-file-access-log
                              #:virtual-gateway-grpc-connection-pool
                              #:virtual-gateway-health-check-interval-millis
                              #:virtual-gateway-health-check-policy
                              #:virtual-gateway-health-check-threshold
                              #:virtual-gateway-health-check-timeout-millis
                              #:virtual-gateway-http2connection-pool
                              #:virtual-gateway-http-connection-pool
                              #:virtual-gateway-list #:virtual-gateway-listener
                              #:virtual-gateway-listener-tls
                              #:virtual-gateway-listener-tls-acm-certificate
                              #:virtual-gateway-listener-tls-certificate
                              #:virtual-gateway-listener-tls-file-certificate
                              #:virtual-gateway-listener-tls-mode
                              #:virtual-gateway-listener-tls-sds-certificate
                              #:virtual-gateway-listener-tls-validation-context
                              #:virtual-gateway-listener-tls-validation-context-trust
                              #:virtual-gateway-listeners
                              #:virtual-gateway-logging
                              #:virtual-gateway-port-mapping
                              #:virtual-gateway-port-protocol
                              #:virtual-gateway-ref
                              #:virtual-gateway-sds-secret-name
                              #:virtual-gateway-spec #:virtual-gateway-status
                              #:virtual-gateway-status-code
                              #:virtual-gateway-tls-validation-context
                              #:virtual-gateway-tls-validation-context-acm-trust
                              #:virtual-gateway-tls-validation-context-file-trust
                              #:virtual-gateway-tls-validation-context-sds-trust
                              #:virtual-gateway-tls-validation-context-trust
                              #:virtual-node #:virtual-node-connection-pool
                              #:virtual-node-data
                              #:virtual-node-grpc-connection-pool
                              #:virtual-node-http2connection-pool
                              #:virtual-node-http-connection-pool
                              #:virtual-node-list #:virtual-node-ref
                              #:virtual-node-service-provider
                              #:virtual-node-spec #:virtual-node-status
                              #:virtual-node-status-code
                              #:virtual-node-tcp-connection-pool
                              #:virtual-router #:virtual-router-data
                              #:virtual-router-list #:virtual-router-listener
                              #:virtual-router-listeners #:virtual-router-ref
                              #:virtual-router-service-provider
                              #:virtual-router-spec #:virtual-router-status
                              #:virtual-router-status-code #:virtual-service
                              #:virtual-service-backend #:virtual-service-data
                              #:virtual-service-list #:virtual-service-provider
                              #:virtual-service-ref #:virtual-service-spec
                              #:virtual-service-status
                              #:virtual-service-status-code #:weighted-target
                              #:weighted-targets))
(common-lisp:in-package #:pira/app-mesh)

(smithy/sdk/service:define-service app-mesh :shape-name "AppMesh" :version
                                   "2019-01-25" :title "AWS App Mesh" :traits
                                   '(("aws.api#service" ("sdkId" . "App Mesh")
                                      ("arnNamespace" . "appmesh")
                                      ("cloudFormationName" . "AppMesh")
                                      ("cloudTrailEventSource"
                                       . "appmesh.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "appmesh"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-union access-log common-lisp:nil
                                ((file :target-type file-access-log
                                  :member-name "file"))
                                (:shape-name "AccessLog"))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aws-cloud-map-instance-attribute
                                    common-lisp:nil
                                    ((key :target-type
                                      aws-cloud-map-instance-attribute-key
                                      :required common-lisp:t :member-name
                                      "key")
                                     (value :target-type
                                      aws-cloud-map-instance-attribute-value
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name
                                     "AwsCloudMapInstanceAttribute"))

(smithy/sdk/shapes:define-type aws-cloud-map-instance-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-cloud-map-instance-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aws-cloud-map-instance-attributes :member
                               aws-cloud-map-instance-attribute)

(smithy/sdk/shapes:define-type aws-cloud-map-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aws-cloud-map-service-discovery
                                    common-lisp:nil
                                    ((namespace-name :target-type
                                      aws-cloud-map-name :required
                                      common-lisp:t :member-name
                                      "namespaceName")
                                     (service-name :target-type
                                      aws-cloud-map-name :required
                                      common-lisp:t :member-name "serviceName")
                                     (attributes :target-type
                                      aws-cloud-map-instance-attributes
                                      :member-name "attributes")
                                     (ip-preference :target-type ip-preference
                                      :member-name "ipPreference"))
                                    (:shape-name "AwsCloudMapServiceDiscovery"))

(smithy/sdk/shapes:define-union backend common-lisp:nil
                                ((virtual-service :target-type
                                  virtual-service-backend :member-name
                                  "virtualService"))
                                (:shape-name "Backend"))

(smithy/sdk/shapes:define-structure backend-defaults common-lisp:nil
                                    ((client-policy :target-type client-policy
                                      :member-name "clientPolicy"))
                                    (:shape-name "BackendDefaults"))

(smithy/sdk/shapes:define-list backends :member backend)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list certificate-authority-arns :member arn)

(smithy/sdk/shapes:define-structure client-policy common-lisp:nil
                                    ((tls :target-type client-policy-tls
                                      :member-name "tls"))
                                    (:shape-name "ClientPolicy"))

(smithy/sdk/shapes:define-structure client-policy-tls common-lisp:nil
                                    ((enforce :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enforce")
                                     (ports :target-type port-set :member-name
                                      "ports")
                                     (certificate :target-type
                                      client-tls-certificate :member-name
                                      "certificate")
                                     (validation :target-type
                                      tls-validation-context :required
                                      common-lisp:t :member-name "validation"))
                                    (:shape-name "ClientPolicyTls"))

(smithy/sdk/shapes:define-union client-tls-certificate common-lisp:nil
                                ((file :target-type
                                  listener-tls-file-certificate :member-name
                                  "file")
                                 (sds :target-type listener-tls-sds-certificate
                                  :member-name "sds"))
                                (:shape-name "ClientTlsCertificate"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-gateway-route-input common-lisp:nil
                                    ((gateway-route-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "gatewayRouteName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-gateway-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualGatewayName")
                                     (spec :target-type gateway-route-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "CreateGatewayRouteInput"))

(smithy/sdk/shapes:define-structure create-gateway-route-output common-lisp:nil
                                    ((gateway-route :target-type
                                      gateway-route-data :required
                                      common-lisp:t :member-name "gatewayRoute"
                                      :http-payload common-lisp:t))
                                    (:shape-name "CreateGatewayRouteOutput"))

(smithy/sdk/shapes:define-structure create-mesh-input common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (spec :target-type mesh-spec :member-name
                                      "spec")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken"))
                                    (:shape-name "CreateMeshInput"))

(smithy/sdk/shapes:define-structure create-mesh-output common-lisp:nil
                                    ((mesh :target-type mesh-data :required
                                      common-lisp:t :member-name "mesh"
                                      :http-payload common-lisp:t))
                                    (:shape-name "CreateMeshOutput"))

(smithy/sdk/shapes:define-structure create-route-input common-lisp:nil
                                    ((route-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "routeName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-router-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualRouterName")
                                     (spec :target-type route-spec :required
                                      common-lisp:t :member-name "spec")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "CreateRouteInput"))

(smithy/sdk/shapes:define-structure create-route-output common-lisp:nil
                                    ((route :target-type route-data :required
                                      common-lisp:t :member-name "route"
                                      :http-payload common-lisp:t))
                                    (:shape-name "CreateRouteOutput"))

(smithy/sdk/shapes:define-structure create-virtual-gateway-input
                                    common-lisp:nil
                                    ((virtual-gateway-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualGatewayName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (spec :target-type virtual-gateway-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "CreateVirtualGatewayInput"))

(smithy/sdk/shapes:define-structure create-virtual-gateway-output
                                    common-lisp:nil
                                    ((virtual-gateway :target-type
                                      virtual-gateway-data :required
                                      common-lisp:t :member-name
                                      "virtualGateway" :http-payload
                                      common-lisp:t))
                                    (:shape-name "CreateVirtualGatewayOutput"))

(smithy/sdk/shapes:define-structure create-virtual-node-input common-lisp:nil
                                    ((virtual-node-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualNodeName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (spec :target-type virtual-node-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "CreateVirtualNodeInput"))

(smithy/sdk/shapes:define-structure create-virtual-node-output common-lisp:nil
                                    ((virtual-node :target-type
                                      virtual-node-data :required common-lisp:t
                                      :member-name "virtualNode" :http-payload
                                      common-lisp:t))
                                    (:shape-name "CreateVirtualNodeOutput"))

(smithy/sdk/shapes:define-structure create-virtual-router-input common-lisp:nil
                                    ((virtual-router-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualRouterName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (spec :target-type virtual-router-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "CreateVirtualRouterInput"))

(smithy/sdk/shapes:define-structure create-virtual-router-output
                                    common-lisp:nil
                                    ((virtual-router :target-type
                                      virtual-router-data :required
                                      common-lisp:t :member-name
                                      "virtualRouter" :http-payload
                                      common-lisp:t))
                                    (:shape-name "CreateVirtualRouterOutput"))

(smithy/sdk/shapes:define-structure create-virtual-service-input
                                    common-lisp:nil
                                    ((virtual-service-name :target-type
                                      service-name :required common-lisp:t
                                      :member-name "virtualServiceName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (spec :target-type virtual-service-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "CreateVirtualServiceInput"))

(smithy/sdk/shapes:define-structure create-virtual-service-output
                                    common-lisp:nil
                                    ((virtual-service :target-type
                                      virtual-service-data :required
                                      common-lisp:t :member-name
                                      "virtualService" :http-payload
                                      common-lisp:t))
                                    (:shape-name "CreateVirtualServiceOutput"))

(smithy/sdk/shapes:define-type default-gateway-route-rewrite
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure delete-gateway-route-input common-lisp:nil
                                    ((gateway-route-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "gatewayRouteName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-gateway-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualGatewayName")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "DeleteGatewayRouteInput"))

(smithy/sdk/shapes:define-structure delete-gateway-route-output common-lisp:nil
                                    ((gateway-route :target-type
                                      gateway-route-data :required
                                      common-lisp:t :member-name "gatewayRoute"
                                      :http-payload common-lisp:t))
                                    (:shape-name "DeleteGatewayRouteOutput"))

(smithy/sdk/shapes:define-structure delete-mesh-input common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName"))
                                    (:shape-name "DeleteMeshInput"))

(smithy/sdk/shapes:define-structure delete-mesh-output common-lisp:nil
                                    ((mesh :target-type mesh-data :required
                                      common-lisp:t :member-name "mesh"
                                      :http-payload common-lisp:t))
                                    (:shape-name "DeleteMeshOutput"))

(smithy/sdk/shapes:define-structure delete-route-input common-lisp:nil
                                    ((route-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "routeName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-router-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualRouterName")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "DeleteRouteInput"))

(smithy/sdk/shapes:define-structure delete-route-output common-lisp:nil
                                    ((route :target-type route-data :required
                                      common-lisp:t :member-name "route"
                                      :http-payload common-lisp:t))
                                    (:shape-name "DeleteRouteOutput"))

(smithy/sdk/shapes:define-structure delete-virtual-gateway-input
                                    common-lisp:nil
                                    ((virtual-gateway-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualGatewayName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "DeleteVirtualGatewayInput"))

(smithy/sdk/shapes:define-structure delete-virtual-gateway-output
                                    common-lisp:nil
                                    ((virtual-gateway :target-type
                                      virtual-gateway-data :required
                                      common-lisp:t :member-name
                                      "virtualGateway" :http-payload
                                      common-lisp:t))
                                    (:shape-name "DeleteVirtualGatewayOutput"))

(smithy/sdk/shapes:define-structure delete-virtual-node-input common-lisp:nil
                                    ((virtual-node-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualNodeName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "DeleteVirtualNodeInput"))

(smithy/sdk/shapes:define-structure delete-virtual-node-output common-lisp:nil
                                    ((virtual-node :target-type
                                      virtual-node-data :required common-lisp:t
                                      :member-name "virtualNode" :http-payload
                                      common-lisp:t))
                                    (:shape-name "DeleteVirtualNodeOutput"))

(smithy/sdk/shapes:define-structure delete-virtual-router-input common-lisp:nil
                                    ((virtual-router-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualRouterName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "DeleteVirtualRouterInput"))

(smithy/sdk/shapes:define-structure delete-virtual-router-output
                                    common-lisp:nil
                                    ((virtual-router :target-type
                                      virtual-router-data :required
                                      common-lisp:t :member-name
                                      "virtualRouter" :http-payload
                                      common-lisp:t))
                                    (:shape-name "DeleteVirtualRouterOutput"))

(smithy/sdk/shapes:define-structure delete-virtual-service-input
                                    common-lisp:nil
                                    ((virtual-service-name :target-type
                                      service-name :required common-lisp:t
                                      :member-name "virtualServiceName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "DeleteVirtualServiceInput"))

(smithy/sdk/shapes:define-structure delete-virtual-service-output
                                    common-lisp:nil
                                    ((virtual-service :target-type
                                      virtual-service-data :required
                                      common-lisp:t :member-name
                                      "virtualService" :http-payload
                                      common-lisp:t))
                                    (:shape-name "DeleteVirtualServiceOutput"))

(smithy/sdk/shapes:define-structure describe-gateway-route-input
                                    common-lisp:nil
                                    ((gateway-route-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "gatewayRouteName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-gateway-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualGatewayName")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "DescribeGatewayRouteInput"))

(smithy/sdk/shapes:define-structure describe-gateway-route-output
                                    common-lisp:nil
                                    ((gateway-route :target-type
                                      gateway-route-data :required
                                      common-lisp:t :member-name "gatewayRoute"
                                      :http-payload common-lisp:t))
                                    (:shape-name "DescribeGatewayRouteOutput"))

(smithy/sdk/shapes:define-structure describe-mesh-input common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "DescribeMeshInput"))

(smithy/sdk/shapes:define-structure describe-mesh-output common-lisp:nil
                                    ((mesh :target-type mesh-data :required
                                      common-lisp:t :member-name "mesh"
                                      :http-payload common-lisp:t))
                                    (:shape-name "DescribeMeshOutput"))

(smithy/sdk/shapes:define-structure describe-route-input common-lisp:nil
                                    ((route-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "routeName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner")
                                     (virtual-router-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualRouterName"))
                                    (:shape-name "DescribeRouteInput"))

(smithy/sdk/shapes:define-structure describe-route-output common-lisp:nil
                                    ((route :target-type route-data :required
                                      common-lisp:t :member-name "route"
                                      :http-payload common-lisp:t))
                                    (:shape-name "DescribeRouteOutput"))

(smithy/sdk/shapes:define-structure describe-virtual-gateway-input
                                    common-lisp:nil
                                    ((virtual-gateway-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualGatewayName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "DescribeVirtualGatewayInput"))

(smithy/sdk/shapes:define-structure describe-virtual-gateway-output
                                    common-lisp:nil
                                    ((virtual-gateway :target-type
                                      virtual-gateway-data :required
                                      common-lisp:t :member-name
                                      "virtualGateway" :http-payload
                                      common-lisp:t))
                                    (:shape-name
                                     "DescribeVirtualGatewayOutput"))

(smithy/sdk/shapes:define-structure describe-virtual-node-input common-lisp:nil
                                    ((virtual-node-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualNodeName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "DescribeVirtualNodeInput"))

(smithy/sdk/shapes:define-structure describe-virtual-node-output
                                    common-lisp:nil
                                    ((virtual-node :target-type
                                      virtual-node-data :required common-lisp:t
                                      :member-name "virtualNode" :http-payload
                                      common-lisp:t))
                                    (:shape-name "DescribeVirtualNodeOutput"))

(smithy/sdk/shapes:define-structure describe-virtual-router-input
                                    common-lisp:nil
                                    ((virtual-router-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualRouterName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "DescribeVirtualRouterInput"))

(smithy/sdk/shapes:define-structure describe-virtual-router-output
                                    common-lisp:nil
                                    ((virtual-router :target-type
                                      virtual-router-data :required
                                      common-lisp:t :member-name
                                      "virtualRouter" :http-payload
                                      common-lisp:t))
                                    (:shape-name "DescribeVirtualRouterOutput"))

(smithy/sdk/shapes:define-structure describe-virtual-service-input
                                    common-lisp:nil
                                    ((virtual-service-name :target-type
                                      service-name :required common-lisp:t
                                      :member-name "virtualServiceName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "DescribeVirtualServiceInput"))

(smithy/sdk/shapes:define-structure describe-virtual-service-output
                                    common-lisp:nil
                                    ((virtual-service :target-type
                                      virtual-service-data :required
                                      common-lisp:t :member-name
                                      "virtualService" :http-payload
                                      common-lisp:t))
                                    (:shape-name
                                     "DescribeVirtualServiceOutput"))

(smithy/sdk/shapes:define-type dns-response-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dns-service-discovery common-lisp:nil
                                    ((hostname :target-type hostname :required
                                      common-lisp:t :member-name "hostname")
                                     (response-type :target-type
                                      dns-response-type :member-name
                                      "responseType")
                                     (ip-preference :target-type ip-preference
                                      :member-name "ipPreference"))
                                    (:shape-name "DnsServiceDiscovery"))

(smithy/sdk/shapes:define-structure duration common-lisp:nil
                                    ((value :target-type duration-value
                                      :member-name "value")
                                     (unit :target-type duration-unit
                                      :member-name "unit"))
                                    (:shape-name "Duration"))

(smithy/sdk/shapes:define-type duration-unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type duration-value smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure egress-filter common-lisp:nil
                                    ((type :target-type egress-filter-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "EgressFilter"))

(smithy/sdk/shapes:define-type egress-filter-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exact-host-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure file-access-log common-lisp:nil
                                    ((path :target-type file-path :required
                                      common-lisp:t :member-name "path")
                                     (format :target-type logging-format
                                      :member-name "format"))
                                    (:shape-name "FileAccessLog"))

(smithy/sdk/shapes:define-type file-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

common-lisp:nil

(smithy/sdk/shapes:define-structure gateway-route-data common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (gateway-route-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "gatewayRouteName")
                                     (virtual-gateway-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualGatewayName")
                                     (spec :target-type gateway-route-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (metadata :target-type resource-metadata
                                      :required common-lisp:t :member-name
                                      "metadata")
                                     (status :target-type gateway-route-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "GatewayRouteData"))

(smithy/sdk/shapes:define-structure gateway-route-hostname-match
                                    common-lisp:nil
                                    ((exact :target-type exact-host-name
                                      :member-name "exact")
                                     (suffix :target-type suffix-hostname
                                      :member-name "suffix"))
                                    (:shape-name "GatewayRouteHostnameMatch"))

(smithy/sdk/shapes:define-structure gateway-route-hostname-rewrite
                                    common-lisp:nil
                                    ((default-target-hostname :target-type
                                      default-gateway-route-rewrite
                                      :member-name "defaultTargetHostname"))
                                    (:shape-name "GatewayRouteHostnameRewrite"))

(smithy/sdk/shapes:define-list gateway-route-list :member gateway-route-ref)

(smithy/sdk/shapes:define-type gateway-route-priority
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure gateway-route-ref common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (gateway-route-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "gatewayRouteName")
                                     (virtual-gateway-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualGatewayName")
                                     (mesh-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "meshOwner")
                                     (resource-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "resourceOwner")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (version :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "version")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedAt"))
                                    (:shape-name "GatewayRouteRef"))

(smithy/sdk/shapes:define-structure gateway-route-spec common-lisp:nil
                                    ((priority :target-type
                                      gateway-route-priority :member-name
                                      "priority")
                                     (http-route :target-type
                                      http-gateway-route :member-name
                                      "httpRoute")
                                     (http2route :target-type
                                      http-gateway-route :member-name
                                      "http2Route")
                                     (grpc-route :target-type
                                      grpc-gateway-route :member-name
                                      "grpcRoute"))
                                    (:shape-name "GatewayRouteSpec"))

(smithy/sdk/shapes:define-structure gateway-route-status common-lisp:nil
                                    ((status :target-type
                                      gateway-route-status-code :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "GatewayRouteStatus"))

(smithy/sdk/shapes:define-type gateway-route-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure gateway-route-target common-lisp:nil
                                    ((virtual-service :target-type
                                      gateway-route-virtual-service :required
                                      common-lisp:t :member-name
                                      "virtualService")
                                     (port :target-type listener-port
                                      :member-name "port"))
                                    (:shape-name "GatewayRouteTarget"))

(smithy/sdk/shapes:define-structure gateway-route-virtual-service
                                    common-lisp:nil
                                    ((virtual-service-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualServiceName"))
                                    (:shape-name "GatewayRouteVirtualService"))

(smithy/sdk/shapes:define-structure grpc-gateway-route common-lisp:nil
                                    ((match :target-type
                                      grpc-gateway-route-match :required
                                      common-lisp:t :member-name "match")
                                     (action :target-type
                                      grpc-gateway-route-action :required
                                      common-lisp:t :member-name "action"))
                                    (:shape-name "GrpcGatewayRoute"))

(smithy/sdk/shapes:define-structure grpc-gateway-route-action common-lisp:nil
                                    ((target :target-type gateway-route-target
                                      :required common-lisp:t :member-name
                                      "target")
                                     (rewrite :target-type
                                      grpc-gateway-route-rewrite :member-name
                                      "rewrite"))
                                    (:shape-name "GrpcGatewayRouteAction"))

(smithy/sdk/shapes:define-structure grpc-gateway-route-match common-lisp:nil
                                    ((service-name :target-type service-name
                                      :member-name "serviceName")
                                     (hostname :target-type
                                      gateway-route-hostname-match :member-name
                                      "hostname")
                                     (metadata :target-type
                                      grpc-gateway-route-metadata-list
                                      :member-name "metadata")
                                     (port :target-type listener-port
                                      :member-name "port"))
                                    (:shape-name "GrpcGatewayRouteMatch"))

(smithy/sdk/shapes:define-structure grpc-gateway-route-metadata common-lisp:nil
                                    ((name :target-type header-name :required
                                      common-lisp:t :member-name "name")
                                     (invert :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "invert")
                                     (match :target-type
                                      grpc-metadata-match-method :member-name
                                      "match"))
                                    (:shape-name "GrpcGatewayRouteMetadata"))

(smithy/sdk/shapes:define-list grpc-gateway-route-metadata-list :member
                               grpc-gateway-route-metadata)

(smithy/sdk/shapes:define-structure grpc-gateway-route-rewrite common-lisp:nil
                                    ((hostname :target-type
                                      gateway-route-hostname-rewrite
                                      :member-name "hostname"))
                                    (:shape-name "GrpcGatewayRouteRewrite"))

(smithy/sdk/shapes:define-union grpc-metadata-match-method common-lisp:nil
                                ((exact :target-type header-match :member-name
                                  "exact")
                                 (regex :target-type header-match :member-name
                                  "regex")
                                 (range :target-type match-range :member-name
                                  "range")
                                 (prefix :target-type header-match :member-name
                                  "prefix")
                                 (suffix :target-type header-match :member-name
                                  "suffix"))
                                (:shape-name "GrpcMetadataMatchMethod"))

(smithy/sdk/shapes:define-structure grpc-retry-policy common-lisp:nil
                                    ((per-retry-timeout :target-type duration
                                      :required common-lisp:t :member-name
                                      "perRetryTimeout")
                                     (max-retries :target-type max-retries
                                      :required common-lisp:t :member-name
                                      "maxRetries")
                                     (http-retry-events :target-type
                                      http-retry-policy-events :member-name
                                      "httpRetryEvents")
                                     (tcp-retry-events :target-type
                                      tcp-retry-policy-events :member-name
                                      "tcpRetryEvents")
                                     (grpc-retry-events :target-type
                                      grpc-retry-policy-events :member-name
                                      "grpcRetryEvents"))
                                    (:shape-name "GrpcRetryPolicy"))

(smithy/sdk/shapes:define-type grpc-retry-policy-event
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list grpc-retry-policy-events :member
                               grpc-retry-policy-event)

(smithy/sdk/shapes:define-structure grpc-route common-lisp:nil
                                    ((action :target-type grpc-route-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (match :target-type grpc-route-match
                                      :required common-lisp:t :member-name
                                      "match")
                                     (retry-policy :target-type
                                      grpc-retry-policy :member-name
                                      "retryPolicy")
                                     (timeout :target-type grpc-timeout
                                      :member-name "timeout"))
                                    (:shape-name "GrpcRoute"))

(smithy/sdk/shapes:define-structure grpc-route-action common-lisp:nil
                                    ((weighted-targets :target-type
                                      weighted-targets :required common-lisp:t
                                      :member-name "weightedTargets"))
                                    (:shape-name "GrpcRouteAction"))

(smithy/sdk/shapes:define-structure grpc-route-match common-lisp:nil
                                    ((service-name :target-type service-name
                                      :member-name "serviceName")
                                     (method-name :target-type method-name
                                      :member-name "methodName")
                                     (metadata :target-type
                                      grpc-route-metadata-list :member-name
                                      "metadata")
                                     (port :target-type listener-port
                                      :member-name "port"))
                                    (:shape-name "GrpcRouteMatch"))

(smithy/sdk/shapes:define-structure grpc-route-metadata common-lisp:nil
                                    ((name :target-type header-name :required
                                      common-lisp:t :member-name "name")
                                     (invert :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "invert")
                                     (match :target-type
                                      grpc-route-metadata-match-method
                                      :member-name "match"))
                                    (:shape-name "GrpcRouteMetadata"))

(smithy/sdk/shapes:define-list grpc-route-metadata-list :member
                               grpc-route-metadata)

(smithy/sdk/shapes:define-union grpc-route-metadata-match-method
                                common-lisp:nil
                                ((exact :target-type header-match :member-name
                                  "exact")
                                 (regex :target-type header-match :member-name
                                  "regex")
                                 (range :target-type match-range :member-name
                                  "range")
                                 (prefix :target-type header-match :member-name
                                  "prefix")
                                 (suffix :target-type header-match :member-name
                                  "suffix"))
                                (:shape-name "GrpcRouteMetadataMatchMethod"))

(smithy/sdk/shapes:define-structure grpc-timeout common-lisp:nil
                                    ((per-request :target-type duration
                                      :member-name "perRequest")
                                     (idle :target-type duration :member-name
                                      "idle"))
                                    (:shape-name "GrpcTimeout"))

(smithy/sdk/shapes:define-type header-match smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union header-match-method common-lisp:nil
                                ((exact :target-type header-match :member-name
                                  "exact")
                                 (regex :target-type header-match :member-name
                                  "regex")
                                 (range :target-type match-range :member-name
                                  "range")
                                 (prefix :target-type header-match :member-name
                                  "prefix")
                                 (suffix :target-type header-match :member-name
                                  "suffix"))
                                (:shape-name "HeaderMatchMethod"))

(smithy/sdk/shapes:define-type header-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type health-check-interval-millis
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure health-check-policy common-lisp:nil
                                    ((timeout-millis :target-type
                                      health-check-timeout-millis :required
                                      common-lisp:t :member-name
                                      "timeoutMillis")
                                     (interval-millis :target-type
                                      health-check-interval-millis :required
                                      common-lisp:t :member-name
                                      "intervalMillis")
                                     (protocol :target-type port-protocol
                                      :required common-lisp:t :member-name
                                      "protocol")
                                     (port :target-type port-number
                                      :member-name "port")
                                     (path :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "path")
                                     (healthy-threshold :target-type
                                      health-check-threshold :required
                                      common-lisp:t :member-name
                                      "healthyThreshold")
                                     (unhealthy-threshold :target-type
                                      health-check-threshold :required
                                      common-lisp:t :member-name
                                      "unhealthyThreshold"))
                                    (:shape-name "HealthCheckPolicy"))

(smithy/sdk/shapes:define-type health-check-threshold
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type health-check-timeout-millis
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type hostname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http-gateway-route common-lisp:nil
                                    ((match :target-type
                                      http-gateway-route-match :required
                                      common-lisp:t :member-name "match")
                                     (action :target-type
                                      http-gateway-route-action :required
                                      common-lisp:t :member-name "action"))
                                    (:shape-name "HttpGatewayRoute"))

(smithy/sdk/shapes:define-structure http-gateway-route-action common-lisp:nil
                                    ((target :target-type gateway-route-target
                                      :required common-lisp:t :member-name
                                      "target")
                                     (rewrite :target-type
                                      http-gateway-route-rewrite :member-name
                                      "rewrite"))
                                    (:shape-name "HttpGatewayRouteAction"))

(smithy/sdk/shapes:define-structure http-gateway-route-header common-lisp:nil
                                    ((name :target-type header-name :required
                                      common-lisp:t :member-name "name")
                                     (invert :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "invert")
                                     (match :target-type header-match-method
                                      :member-name "match"))
                                    (:shape-name "HttpGatewayRouteHeader"))

(smithy/sdk/shapes:define-list http-gateway-route-headers :member
                               http-gateway-route-header)

(smithy/sdk/shapes:define-structure http-gateway-route-match common-lisp:nil
                                    ((prefix :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "prefix")
                                     (path :target-type http-path-match
                                      :member-name "path")
                                     (query-parameters :target-type
                                      http-query-parameters :member-name
                                      "queryParameters")
                                     (method :target-type http-method
                                      :member-name "method")
                                     (hostname :target-type
                                      gateway-route-hostname-match :member-name
                                      "hostname")
                                     (headers :target-type
                                      http-gateway-route-headers :member-name
                                      "headers")
                                     (port :target-type listener-port
                                      :member-name "port"))
                                    (:shape-name "HttpGatewayRouteMatch"))

(smithy/sdk/shapes:define-structure http-gateway-route-path-rewrite
                                    common-lisp:nil
                                    ((exact :target-type http-path-exact
                                      :member-name "exact"))
                                    (:shape-name "HttpGatewayRoutePathRewrite"))

(smithy/sdk/shapes:define-type http-gateway-route-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http-gateway-route-prefix-rewrite
                                    common-lisp:nil
                                    ((default-prefix :target-type
                                      default-gateway-route-rewrite
                                      :member-name "defaultPrefix")
                                     (value :target-type
                                      http-gateway-route-prefix :member-name
                                      "value"))
                                    (:shape-name
                                     "HttpGatewayRoutePrefixRewrite"))

(smithy/sdk/shapes:define-structure http-gateway-route-rewrite common-lisp:nil
                                    ((prefix :target-type
                                      http-gateway-route-prefix-rewrite
                                      :member-name "prefix")
                                     (path :target-type
                                      http-gateway-route-path-rewrite
                                      :member-name "path")
                                     (hostname :target-type
                                      gateway-route-hostname-rewrite
                                      :member-name "hostname"))
                                    (:shape-name "HttpGatewayRouteRewrite"))

(smithy/sdk/shapes:define-type http-method smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type http-path-exact smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http-path-match common-lisp:nil
                                    ((exact :target-type http-path-exact
                                      :member-name "exact")
                                     (regex :target-type http-path-regex
                                      :member-name "regex"))
                                    (:shape-name "HttpPathMatch"))

(smithy/sdk/shapes:define-type http-path-regex smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http-query-parameter common-lisp:nil
                                    ((name :target-type query-parameter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (match :target-type query-parameter-match
                                      :member-name "match"))
                                    (:shape-name "HttpQueryParameter"))

(smithy/sdk/shapes:define-list http-query-parameters :member
                               http-query-parameter)

(smithy/sdk/shapes:define-structure http-retry-policy common-lisp:nil
                                    ((per-retry-timeout :target-type duration
                                      :required common-lisp:t :member-name
                                      "perRetryTimeout")
                                     (max-retries :target-type max-retries
                                      :required common-lisp:t :member-name
                                      "maxRetries")
                                     (http-retry-events :target-type
                                      http-retry-policy-events :member-name
                                      "httpRetryEvents")
                                     (tcp-retry-events :target-type
                                      tcp-retry-policy-events :member-name
                                      "tcpRetryEvents"))
                                    (:shape-name "HttpRetryPolicy"))

(smithy/sdk/shapes:define-type http-retry-policy-event
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list http-retry-policy-events :member
                               http-retry-policy-event)

(smithy/sdk/shapes:define-structure http-route common-lisp:nil
                                    ((match :target-type http-route-match
                                      :required common-lisp:t :member-name
                                      "match")
                                     (action :target-type http-route-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (retry-policy :target-type
                                      http-retry-policy :member-name
                                      "retryPolicy")
                                     (timeout :target-type http-timeout
                                      :member-name "timeout"))
                                    (:shape-name "HttpRoute"))

(smithy/sdk/shapes:define-structure http-route-action common-lisp:nil
                                    ((weighted-targets :target-type
                                      weighted-targets :required common-lisp:t
                                      :member-name "weightedTargets"))
                                    (:shape-name "HttpRouteAction"))

(smithy/sdk/shapes:define-structure http-route-header common-lisp:nil
                                    ((name :target-type header-name :required
                                      common-lisp:t :member-name "name")
                                     (invert :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "invert")
                                     (match :target-type header-match-method
                                      :member-name "match"))
                                    (:shape-name "HttpRouteHeader"))

(smithy/sdk/shapes:define-list http-route-headers :member http-route-header)

(smithy/sdk/shapes:define-structure http-route-match common-lisp:nil
                                    ((prefix :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "prefix")
                                     (path :target-type http-path-match
                                      :member-name "path")
                                     (query-parameters :target-type
                                      http-query-parameters :member-name
                                      "queryParameters")
                                     (method :target-type http-method
                                      :member-name "method")
                                     (scheme :target-type http-scheme
                                      :member-name "scheme")
                                     (headers :target-type http-route-headers
                                      :member-name "headers")
                                     (port :target-type listener-port
                                      :member-name "port"))
                                    (:shape-name "HttpRouteMatch"))

(smithy/sdk/shapes:define-type http-scheme smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http-timeout common-lisp:nil
                                    ((per-request :target-type duration
                                      :member-name "perRequest")
                                     (idle :target-type duration :member-name
                                      "idle"))
                                    (:shape-name "HttpTimeout"))

(smithy/sdk/shapes:define-error internal-server-error-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type ip-preference smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list json-format :member json-format-ref)

(smithy/sdk/shapes:define-structure json-format-ref common-lisp:nil
                                    ((key :target-type json-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type json-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "JsonFormatRef"))

(smithy/sdk/shapes:define-type json-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type json-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure list-gateway-routes-input common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-gateway-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualGatewayName")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (limit :target-type
                                      list-gateway-routes-limit :member-name
                                      "limit" :http-query "limit")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "ListGatewayRoutesInput"))

(smithy/sdk/shapes:define-type list-gateway-routes-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-gateway-routes-output common-lisp:nil
                                    ((gateway-routes :target-type
                                      gateway-route-list :required
                                      common-lisp:t :member-name
                                      "gatewayRoutes")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListGatewayRoutesOutput"))

(smithy/sdk/shapes:define-structure list-meshes-input common-lisp:nil
                                    ((next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (limit :target-type list-meshes-limit
                                      :member-name "limit" :http-query
                                      "limit"))
                                    (:shape-name "ListMeshesInput"))

(smithy/sdk/shapes:define-type list-meshes-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-meshes-output common-lisp:nil
                                    ((meshes :target-type mesh-list :required
                                      common-lisp:t :member-name "meshes")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListMeshesOutput"))

(smithy/sdk/shapes:define-structure list-routes-input common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-router-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualRouterName")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (limit :target-type list-routes-limit
                                      :member-name "limit" :http-query "limit")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "ListRoutesInput"))

(smithy/sdk/shapes:define-type list-routes-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-routes-output common-lisp:nil
                                    ((routes :target-type route-list :required
                                      common-lisp:t :member-name "routes")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListRoutesOutput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-input
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn"
                                      :http-query "resourceArn")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (limit :target-type tags-limit
                                      :member-name "limit" :http-query
                                      "limit"))
                                    (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-output
                                    common-lisp:nil
                                    ((tags :target-type tag-list :required
                                      common-lisp:t :member-name "tags")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-structure list-virtual-gateways-input common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (limit :target-type
                                      list-virtual-gateways-limit :member-name
                                      "limit" :http-query "limit")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "ListVirtualGatewaysInput"))

(smithy/sdk/shapes:define-type list-virtual-gateways-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-virtual-gateways-output
                                    common-lisp:nil
                                    ((virtual-gateways :target-type
                                      virtual-gateway-list :required
                                      common-lisp:t :member-name
                                      "virtualGateways")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListVirtualGatewaysOutput"))

(smithy/sdk/shapes:define-structure list-virtual-nodes-input common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (limit :target-type
                                      list-virtual-nodes-limit :member-name
                                      "limit" :http-query "limit")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "ListVirtualNodesInput"))

(smithy/sdk/shapes:define-type list-virtual-nodes-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-virtual-nodes-output common-lisp:nil
                                    ((virtual-nodes :target-type
                                      virtual-node-list :required common-lisp:t
                                      :member-name "virtualNodes")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListVirtualNodesOutput"))

(smithy/sdk/shapes:define-structure list-virtual-routers-input common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (limit :target-type
                                      list-virtual-routers-limit :member-name
                                      "limit" :http-query "limit")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "ListVirtualRoutersInput"))

(smithy/sdk/shapes:define-type list-virtual-routers-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-virtual-routers-output common-lisp:nil
                                    ((virtual-routers :target-type
                                      virtual-router-list :required
                                      common-lisp:t :member-name
                                      "virtualRouters")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListVirtualRoutersOutput"))

(smithy/sdk/shapes:define-structure list-virtual-services-input common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (limit :target-type
                                      list-virtual-services-limit :member-name
                                      "limit" :http-query "limit")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "ListVirtualServicesInput"))

(smithy/sdk/shapes:define-type list-virtual-services-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure list-virtual-services-output
                                    common-lisp:nil
                                    ((virtual-services :target-type
                                      virtual-service-list :required
                                      common-lisp:t :member-name
                                      "virtualServices")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListVirtualServicesOutput"))

(smithy/sdk/shapes:define-structure listener common-lisp:nil
                                    ((port-mapping :target-type port-mapping
                                      :required common-lisp:t :member-name
                                      "portMapping")
                                     (tls :target-type listener-tls
                                      :member-name "tls")
                                     (health-check :target-type
                                      health-check-policy :member-name
                                      "healthCheck")
                                     (timeout :target-type listener-timeout
                                      :member-name "timeout")
                                     (outlier-detection :target-type
                                      outlier-detection :member-name
                                      "outlierDetection")
                                     (connection-pool :target-type
                                      virtual-node-connection-pool :member-name
                                      "connectionPool"))
                                    (:shape-name "Listener"))

(smithy/sdk/shapes:define-type listener-port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-union listener-timeout common-lisp:nil
                                ((tcp :target-type tcp-timeout :member-name
                                  "tcp")
                                 (http :target-type http-timeout :member-name
                                  "http")
                                 (http2 :target-type http-timeout :member-name
                                  "http2")
                                 (grpc :target-type grpc-timeout :member-name
                                  "grpc"))
                                (:shape-name "ListenerTimeout"))

(smithy/sdk/shapes:define-structure listener-tls common-lisp:nil
                                    ((mode :target-type listener-tls-mode
                                      :required common-lisp:t :member-name
                                      "mode")
                                     (certificate :target-type
                                      listener-tls-certificate :required
                                      common-lisp:t :member-name "certificate")
                                     (validation :target-type
                                      listener-tls-validation-context
                                      :member-name "validation"))
                                    (:shape-name "ListenerTls"))

(smithy/sdk/shapes:define-structure listener-tls-acm-certificate
                                    common-lisp:nil
                                    ((certificate-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "certificateArn"))
                                    (:shape-name "ListenerTlsAcmCertificate"))

(smithy/sdk/shapes:define-union listener-tls-certificate common-lisp:nil
                                ((acm :target-type listener-tls-acm-certificate
                                  :member-name "acm")
                                 (file :target-type
                                  listener-tls-file-certificate :member-name
                                  "file")
                                 (sds :target-type listener-tls-sds-certificate
                                  :member-name "sds"))
                                (:shape-name "ListenerTlsCertificate"))

(smithy/sdk/shapes:define-structure listener-tls-file-certificate
                                    common-lisp:nil
                                    ((certificate-chain :target-type file-path
                                      :required common-lisp:t :member-name
                                      "certificateChain")
                                     (private-key :target-type file-path
                                      :required common-lisp:t :member-name
                                      "privateKey"))
                                    (:shape-name "ListenerTlsFileCertificate"))

(smithy/sdk/shapes:define-type listener-tls-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure listener-tls-sds-certificate
                                    common-lisp:nil
                                    ((secret-name :target-type sds-secret-name
                                      :required common-lisp:t :member-name
                                      "secretName"))
                                    (:shape-name "ListenerTlsSdsCertificate"))

(smithy/sdk/shapes:define-structure listener-tls-validation-context
                                    common-lisp:nil
                                    ((trust :target-type
                                      listener-tls-validation-context-trust
                                      :required common-lisp:t :member-name
                                      "trust")
                                     (subject-alternative-names :target-type
                                      subject-alternative-names :member-name
                                      "subjectAlternativeNames"))
                                    (:shape-name
                                     "ListenerTlsValidationContext"))

(smithy/sdk/shapes:define-union listener-tls-validation-context-trust
                                common-lisp:nil
                                ((file :target-type
                                  tls-validation-context-file-trust
                                  :member-name "file")
                                 (sds :target-type
                                  tls-validation-context-sds-trust :member-name
                                  "sds"))
                                (:shape-name
                                 "ListenerTlsValidationContextTrust"))

(smithy/sdk/shapes:define-list listeners :member listener)

(smithy/sdk/shapes:define-structure logging common-lisp:nil
                                    ((access-log :target-type access-log
                                      :member-name "accessLog"))
                                    (:shape-name "Logging"))

(smithy/sdk/shapes:define-union logging-format common-lisp:nil
                                ((text :target-type text-format :member-name
                                  "text")
                                 (json :target-type json-format :member-name
                                  "json"))
                                (:shape-name "LoggingFormat"))

(smithy/sdk/shapes:define-structure match-range common-lisp:nil
                                    ((start :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "start")
                                     (end :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "end"))
                                    (:shape-name "MatchRange"))

(smithy/sdk/shapes:define-type max-connections smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-pending-requests
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-requests smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-retries smithy/sdk/smithy-types:long)

common-lisp:nil

(smithy/sdk/shapes:define-structure mesh-data common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (spec :target-type mesh-spec :required
                                      common-lisp:t :member-name "spec")
                                     (metadata :target-type resource-metadata
                                      :required common-lisp:t :member-name
                                      "metadata")
                                     (status :target-type mesh-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "MeshData"))

(smithy/sdk/shapes:define-list mesh-list :member mesh-ref)

(smithy/sdk/shapes:define-structure mesh-ref common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (mesh-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "meshOwner")
                                     (resource-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "resourceOwner")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (version :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "version")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedAt"))
                                    (:shape-name "MeshRef"))

(smithy/sdk/shapes:define-structure mesh-service-discovery common-lisp:nil
                                    ((ip-preference :target-type ip-preference
                                      :member-name "ipPreference"))
                                    (:shape-name "MeshServiceDiscovery"))

(smithy/sdk/shapes:define-structure mesh-spec common-lisp:nil
                                    ((egress-filter :target-type egress-filter
                                      :member-name "egressFilter")
                                     (service-discovery :target-type
                                      mesh-service-discovery :member-name
                                      "serviceDiscovery"))
                                    (:shape-name "MeshSpec"))

(smithy/sdk/shapes:define-structure mesh-status common-lisp:nil
                                    ((status :target-type mesh-status-code
                                      :member-name "status"))
                                    (:shape-name "MeshStatus"))

(smithy/sdk/shapes:define-type mesh-status-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type method-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure outlier-detection common-lisp:nil
                                    ((max-server-errors :target-type
                                      outlier-detection-max-server-errors
                                      :required common-lisp:t :member-name
                                      "maxServerErrors")
                                     (interval :target-type duration :required
                                      common-lisp:t :member-name "interval")
                                     (base-ejection-duration :target-type
                                      duration :required common-lisp:t
                                      :member-name "baseEjectionDuration")
                                     (max-ejection-percent :target-type
                                      outlier-detection-max-ejection-percent
                                      :required common-lisp:t :member-name
                                      "maxEjectionPercent"))
                                    (:shape-name "OutlierDetection"))

(smithy/sdk/shapes:define-type outlier-detection-max-ejection-percent
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type outlier-detection-max-server-errors
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type percent-int smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure port-mapping common-lisp:nil
                                    ((port :target-type port-number :required
                                      common-lisp:t :member-name "port")
                                     (protocol :target-type port-protocol
                                      :required common-lisp:t :member-name
                                      "protocol"))
                                    (:shape-name "PortMapping"))

(smithy/sdk/shapes:define-type port-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type port-protocol smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list port-set :member port-number)

(smithy/sdk/shapes:define-structure query-parameter-match common-lisp:nil
                                    ((exact :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "exact"))
                                    (:shape-name "QueryParameterMatch"))

(smithy/sdk/shapes:define-type query-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure resource-metadata common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (version :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "version")
                                     (uid :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "uid")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedAt")
                                     (mesh-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "meshOwner")
                                     (resource-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "resourceOwner"))
                                    (:shape-name "ResourceMetadata"))

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure route-data common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-router-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualRouterName")
                                     (route-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "routeName")
                                     (spec :target-type route-spec :required
                                      common-lisp:t :member-name "spec")
                                     (metadata :target-type resource-metadata
                                      :required common-lisp:t :member-name
                                      "metadata")
                                     (status :target-type route-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "RouteData"))

(smithy/sdk/shapes:define-list route-list :member route-ref)

(smithy/sdk/shapes:define-type route-priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure route-ref common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-router-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualRouterName")
                                     (route-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "routeName")
                                     (mesh-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "meshOwner")
                                     (resource-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "resourceOwner")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (version :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "version")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedAt"))
                                    (:shape-name "RouteRef"))

(smithy/sdk/shapes:define-structure route-spec common-lisp:nil
                                    ((priority :target-type route-priority
                                      :member-name "priority")
                                     (http-route :target-type http-route
                                      :member-name "httpRoute")
                                     (tcp-route :target-type tcp-route
                                      :member-name "tcpRoute")
                                     (http2route :target-type http-route
                                      :member-name "http2Route")
                                     (grpc-route :target-type grpc-route
                                      :member-name "grpcRoute"))
                                    (:shape-name "RouteSpec"))

(smithy/sdk/shapes:define-structure route-status common-lisp:nil
                                    ((status :target-type route-status-code
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "RouteStatus"))

(smithy/sdk/shapes:define-type route-status-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sds-secret-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union service-discovery common-lisp:nil
                                ((dns :target-type dns-service-discovery
                                  :member-name "dns")
                                 (aws-cloud-map :target-type
                                  aws-cloud-map-service-discovery :member-name
                                  "awsCloudMap"))
                                (:shape-name "ServiceDiscovery"))

(smithy/sdk/shapes:define-type service-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-type subject-alternative-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subject-alternative-name-list :member
                               subject-alternative-name)

(smithy/sdk/shapes:define-structure subject-alternative-name-matchers
                                    common-lisp:nil
                                    ((exact :target-type
                                      subject-alternative-name-list :required
                                      common-lisp:t :member-name "exact"))
                                    (:shape-name
                                     "SubjectAlternativeNameMatchers"))

(smithy/sdk/shapes:define-structure subject-alternative-names common-lisp:nil
                                    ((match :target-type
                                      subject-alternative-name-matchers
                                      :required common-lisp:t :member-name
                                      "match"))
                                    (:shape-name "SubjectAlternativeNames"))

(smithy/sdk/shapes:define-type suffix-hostname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag-ref)

(smithy/sdk/shapes:define-structure tag-ref common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "TagRef"))

(smithy/sdk/shapes:define-structure tag-resource-input common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn"
                                      :http-query "resourceArn")
                                     (tags :target-type tag-list :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-structure tag-resource-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tags-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type tcp-retry-policy-event
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tcp-retry-policy-events :member
                               tcp-retry-policy-event)

(smithy/sdk/shapes:define-structure tcp-route common-lisp:nil
                                    ((action :target-type tcp-route-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (timeout :target-type tcp-timeout
                                      :member-name "timeout")
                                     (match :target-type tcp-route-match
                                      :member-name "match"))
                                    (:shape-name "TcpRoute"))

(smithy/sdk/shapes:define-structure tcp-route-action common-lisp:nil
                                    ((weighted-targets :target-type
                                      weighted-targets :required common-lisp:t
                                      :member-name "weightedTargets"))
                                    (:shape-name "TcpRouteAction"))

(smithy/sdk/shapes:define-structure tcp-route-match common-lisp:nil
                                    ((port :target-type listener-port
                                      :member-name "port"))
                                    (:shape-name "TcpRouteMatch"))

(smithy/sdk/shapes:define-structure tcp-timeout common-lisp:nil
                                    ((idle :target-type duration :member-name
                                      "idle"))
                                    (:shape-name "TcpTimeout"))

(smithy/sdk/shapes:define-type text-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tls-validation-context common-lisp:nil
                                    ((trust :target-type
                                      tls-validation-context-trust :required
                                      common-lisp:t :member-name "trust")
                                     (subject-alternative-names :target-type
                                      subject-alternative-names :member-name
                                      "subjectAlternativeNames"))
                                    (:shape-name "TlsValidationContext"))

(smithy/sdk/shapes:define-structure tls-validation-context-acm-trust
                                    common-lisp:nil
                                    ((certificate-authority-arns :target-type
                                      certificate-authority-arns :required
                                      common-lisp:t :member-name
                                      "certificateAuthorityArns"))
                                    (:shape-name
                                     "TlsValidationContextAcmTrust"))

(smithy/sdk/shapes:define-structure tls-validation-context-file-trust
                                    common-lisp:nil
                                    ((certificate-chain :target-type file-path
                                      :required common-lisp:t :member-name
                                      "certificateChain"))
                                    (:shape-name
                                     "TlsValidationContextFileTrust"))

(smithy/sdk/shapes:define-structure tls-validation-context-sds-trust
                                    common-lisp:nil
                                    ((secret-name :target-type sds-secret-name
                                      :required common-lisp:t :member-name
                                      "secretName"))
                                    (:shape-name
                                     "TlsValidationContextSdsTrust"))

(smithy/sdk/shapes:define-union tls-validation-context-trust common-lisp:nil
                                ((acm :target-type
                                  tls-validation-context-acm-trust :member-name
                                  "acm")
                                 (file :target-type
                                  tls-validation-context-file-trust
                                  :member-name "file")
                                 (sds :target-type
                                  tls-validation-context-sds-trust :member-name
                                  "sds"))
                                (:shape-name "TlsValidationContextTrust"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure untag-resource-input common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn"
                                      :http-query "resourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "tagKeys"))
                                    (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-structure untag-resource-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-structure update-gateway-route-input common-lisp:nil
                                    ((gateway-route-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "gatewayRouteName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-gateway-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualGatewayName")
                                     (spec :target-type gateway-route-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "UpdateGatewayRouteInput"))

(smithy/sdk/shapes:define-structure update-gateway-route-output common-lisp:nil
                                    ((gateway-route :target-type
                                      gateway-route-data :required
                                      common-lisp:t :member-name "gatewayRoute"
                                      :http-payload common-lisp:t))
                                    (:shape-name "UpdateGatewayRouteOutput"))

(smithy/sdk/shapes:define-structure update-mesh-input common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (spec :target-type mesh-spec :member-name
                                      "spec")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken"))
                                    (:shape-name "UpdateMeshInput"))

(smithy/sdk/shapes:define-structure update-mesh-output common-lisp:nil
                                    ((mesh :target-type mesh-data :required
                                      common-lisp:t :member-name "mesh"
                                      :http-payload common-lisp:t))
                                    (:shape-name "UpdateMeshOutput"))

(smithy/sdk/shapes:define-structure update-route-input common-lisp:nil
                                    ((route-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "routeName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-router-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualRouterName")
                                     (spec :target-type route-spec :required
                                      common-lisp:t :member-name "spec")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "UpdateRouteInput"))

(smithy/sdk/shapes:define-structure update-route-output common-lisp:nil
                                    ((route :target-type route-data :required
                                      common-lisp:t :member-name "route"
                                      :http-payload common-lisp:t))
                                    (:shape-name "UpdateRouteOutput"))

(smithy/sdk/shapes:define-structure update-virtual-gateway-input
                                    common-lisp:nil
                                    ((virtual-gateway-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualGatewayName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (spec :target-type virtual-gateway-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "UpdateVirtualGatewayInput"))

(smithy/sdk/shapes:define-structure update-virtual-gateway-output
                                    common-lisp:nil
                                    ((virtual-gateway :target-type
                                      virtual-gateway-data :required
                                      common-lisp:t :member-name
                                      "virtualGateway" :http-payload
                                      common-lisp:t))
                                    (:shape-name "UpdateVirtualGatewayOutput"))

(smithy/sdk/shapes:define-structure update-virtual-node-input common-lisp:nil
                                    ((virtual-node-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualNodeName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (spec :target-type virtual-node-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "UpdateVirtualNodeInput"))

(smithy/sdk/shapes:define-structure update-virtual-node-output common-lisp:nil
                                    ((virtual-node :target-type
                                      virtual-node-data :required common-lisp:t
                                      :member-name "virtualNode" :http-payload
                                      common-lisp:t))
                                    (:shape-name "UpdateVirtualNodeOutput"))

(smithy/sdk/shapes:define-structure update-virtual-router-input common-lisp:nil
                                    ((virtual-router-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualRouterName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (spec :target-type virtual-router-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "UpdateVirtualRouterInput"))

(smithy/sdk/shapes:define-structure update-virtual-router-output
                                    common-lisp:nil
                                    ((virtual-router :target-type
                                      virtual-router-data :required
                                      common-lisp:t :member-name
                                      "virtualRouter" :http-payload
                                      common-lisp:t))
                                    (:shape-name "UpdateVirtualRouterOutput"))

(smithy/sdk/shapes:define-structure update-virtual-service-input
                                    common-lisp:nil
                                    ((virtual-service-name :target-type
                                      service-name :required common-lisp:t
                                      :member-name "virtualServiceName")
                                     (mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (spec :target-type virtual-service-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientToken")
                                     (mesh-owner :target-type account-id
                                      :member-name "meshOwner" :http-query
                                      "meshOwner"))
                                    (:shape-name "UpdateVirtualServiceInput"))

(smithy/sdk/shapes:define-structure update-virtual-service-output
                                    common-lisp:nil
                                    ((virtual-service :target-type
                                      virtual-service-data :required
                                      common-lisp:t :member-name
                                      "virtualService" :http-payload
                                      common-lisp:t))
                                    (:shape-name "UpdateVirtualServiceOutput"))

common-lisp:nil

(smithy/sdk/shapes:define-union virtual-gateway-access-log common-lisp:nil
                                ((file :target-type
                                  virtual-gateway-file-access-log :member-name
                                  "file"))
                                (:shape-name "VirtualGatewayAccessLog"))

(smithy/sdk/shapes:define-structure virtual-gateway-backend-defaults
                                    common-lisp:nil
                                    ((client-policy :target-type
                                      virtual-gateway-client-policy
                                      :member-name "clientPolicy"))
                                    (:shape-name
                                     "VirtualGatewayBackendDefaults"))

(smithy/sdk/shapes:define-list virtual-gateway-certificate-authority-arns
                               :member arn)

(smithy/sdk/shapes:define-structure virtual-gateway-client-policy
                                    common-lisp:nil
                                    ((tls :target-type
                                      virtual-gateway-client-policy-tls
                                      :member-name "tls"))
                                    (:shape-name "VirtualGatewayClientPolicy"))

(smithy/sdk/shapes:define-structure virtual-gateway-client-policy-tls
                                    common-lisp:nil
                                    ((enforce :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enforce")
                                     (ports :target-type port-set :member-name
                                      "ports")
                                     (certificate :target-type
                                      virtual-gateway-client-tls-certificate
                                      :member-name "certificate")
                                     (validation :target-type
                                      virtual-gateway-tls-validation-context
                                      :required common-lisp:t :member-name
                                      "validation"))
                                    (:shape-name
                                     "VirtualGatewayClientPolicyTls"))

(smithy/sdk/shapes:define-union virtual-gateway-client-tls-certificate
                                common-lisp:nil
                                ((file :target-type
                                  virtual-gateway-listener-tls-file-certificate
                                  :member-name "file")
                                 (sds :target-type
                                  virtual-gateway-listener-tls-sds-certificate
                                  :member-name "sds"))
                                (:shape-name
                                 "VirtualGatewayClientTlsCertificate"))

(smithy/sdk/shapes:define-union virtual-gateway-connection-pool common-lisp:nil
                                ((http :target-type
                                  virtual-gateway-http-connection-pool
                                  :member-name "http")
                                 (http2 :target-type
                                  virtual-gateway-http2connection-pool
                                  :member-name "http2")
                                 (grpc :target-type
                                  virtual-gateway-grpc-connection-pool
                                  :member-name "grpc"))
                                (:shape-name "VirtualGatewayConnectionPool"))

(smithy/sdk/shapes:define-structure virtual-gateway-data common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-gateway-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualGatewayName")
                                     (spec :target-type virtual-gateway-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (metadata :target-type resource-metadata
                                      :required common-lisp:t :member-name
                                      "metadata")
                                     (status :target-type
                                      virtual-gateway-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "VirtualGatewayData"))

(smithy/sdk/shapes:define-structure virtual-gateway-file-access-log
                                    common-lisp:nil
                                    ((path :target-type file-path :required
                                      common-lisp:t :member-name "path")
                                     (format :target-type logging-format
                                      :member-name "format"))
                                    (:shape-name "VirtualGatewayFileAccessLog"))

(smithy/sdk/shapes:define-structure virtual-gateway-grpc-connection-pool
                                    common-lisp:nil
                                    ((max-requests :target-type max-requests
                                      :required common-lisp:t :member-name
                                      "maxRequests"))
                                    (:shape-name
                                     "VirtualGatewayGrpcConnectionPool"))

(smithy/sdk/shapes:define-type virtual-gateway-health-check-interval-millis
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure virtual-gateway-health-check-policy
                                    common-lisp:nil
                                    ((timeout-millis :target-type
                                      virtual-gateway-health-check-timeout-millis
                                      :required common-lisp:t :member-name
                                      "timeoutMillis")
                                     (interval-millis :target-type
                                      virtual-gateway-health-check-interval-millis
                                      :required common-lisp:t :member-name
                                      "intervalMillis")
                                     (protocol :target-type
                                      virtual-gateway-port-protocol :required
                                      common-lisp:t :member-name "protocol")
                                     (port :target-type port-number
                                      :member-name "port")
                                     (path :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "path")
                                     (healthy-threshold :target-type
                                      virtual-gateway-health-check-threshold
                                      :required common-lisp:t :member-name
                                      "healthyThreshold")
                                     (unhealthy-threshold :target-type
                                      virtual-gateway-health-check-threshold
                                      :required common-lisp:t :member-name
                                      "unhealthyThreshold"))
                                    (:shape-name
                                     "VirtualGatewayHealthCheckPolicy"))

(smithy/sdk/shapes:define-type virtual-gateway-health-check-threshold
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type virtual-gateway-health-check-timeout-millis
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure virtual-gateway-http2connection-pool
                                    common-lisp:nil
                                    ((max-requests :target-type max-requests
                                      :required common-lisp:t :member-name
                                      "maxRequests"))
                                    (:shape-name
                                     "VirtualGatewayHttp2ConnectionPool"))

(smithy/sdk/shapes:define-structure virtual-gateway-http-connection-pool
                                    common-lisp:nil
                                    ((max-connections :target-type
                                      max-connections :required common-lisp:t
                                      :member-name "maxConnections")
                                     (max-pending-requests :target-type
                                      max-pending-requests :member-name
                                      "maxPendingRequests"))
                                    (:shape-name
                                     "VirtualGatewayHttpConnectionPool"))

(smithy/sdk/shapes:define-list virtual-gateway-list :member virtual-gateway-ref)

(smithy/sdk/shapes:define-structure virtual-gateway-listener common-lisp:nil
                                    ((health-check :target-type
                                      virtual-gateway-health-check-policy
                                      :member-name "healthCheck")
                                     (port-mapping :target-type
                                      virtual-gateway-port-mapping :required
                                      common-lisp:t :member-name "portMapping")
                                     (tls :target-type
                                      virtual-gateway-listener-tls :member-name
                                      "tls")
                                     (connection-pool :target-type
                                      virtual-gateway-connection-pool
                                      :member-name "connectionPool"))
                                    (:shape-name "VirtualGatewayListener"))

(smithy/sdk/shapes:define-structure virtual-gateway-listener-tls
                                    common-lisp:nil
                                    ((mode :target-type
                                      virtual-gateway-listener-tls-mode
                                      :required common-lisp:t :member-name
                                      "mode")
                                     (validation :target-type
                                      virtual-gateway-listener-tls-validation-context
                                      :member-name "validation")
                                     (certificate :target-type
                                      virtual-gateway-listener-tls-certificate
                                      :required common-lisp:t :member-name
                                      "certificate"))
                                    (:shape-name "VirtualGatewayListenerTls"))

(smithy/sdk/shapes:define-structure
 virtual-gateway-listener-tls-acm-certificate common-lisp:nil
 ((certificate-arn :target-type arn :required common-lisp:t :member-name
   "certificateArn"))
 (:shape-name "VirtualGatewayListenerTlsAcmCertificate"))

(smithy/sdk/shapes:define-union virtual-gateway-listener-tls-certificate
                                common-lisp:nil
                                ((acm :target-type
                                  virtual-gateway-listener-tls-acm-certificate
                                  :member-name "acm")
                                 (file :target-type
                                  virtual-gateway-listener-tls-file-certificate
                                  :member-name "file")
                                 (sds :target-type
                                  virtual-gateway-listener-tls-sds-certificate
                                  :member-name "sds"))
                                (:shape-name
                                 "VirtualGatewayListenerTlsCertificate"))

(smithy/sdk/shapes:define-structure
 virtual-gateway-listener-tls-file-certificate common-lisp:nil
 ((certificate-chain :target-type file-path :required common-lisp:t
   :member-name "certificateChain")
  (private-key :target-type file-path :required common-lisp:t :member-name
   "privateKey"))
 (:shape-name "VirtualGatewayListenerTlsFileCertificate"))

(smithy/sdk/shapes:define-type virtual-gateway-listener-tls-mode
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 virtual-gateway-listener-tls-sds-certificate common-lisp:nil
 ((secret-name :target-type virtual-gateway-sds-secret-name :required
   common-lisp:t :member-name "secretName"))
 (:shape-name "VirtualGatewayListenerTlsSdsCertificate"))

(smithy/sdk/shapes:define-structure
 virtual-gateway-listener-tls-validation-context common-lisp:nil
 ((trust :target-type virtual-gateway-listener-tls-validation-context-trust
   :required common-lisp:t :member-name "trust")
  (subject-alternative-names :target-type subject-alternative-names
   :member-name "subjectAlternativeNames"))
 (:shape-name "VirtualGatewayListenerTlsValidationContext"))

(smithy/sdk/shapes:define-union
 virtual-gateway-listener-tls-validation-context-trust common-lisp:nil
 ((file :target-type virtual-gateway-tls-validation-context-file-trust
   :member-name "file")
  (sds :target-type virtual-gateway-tls-validation-context-sds-trust
   :member-name "sds"))
 (:shape-name "VirtualGatewayListenerTlsValidationContextTrust"))

(smithy/sdk/shapes:define-list virtual-gateway-listeners :member
                               virtual-gateway-listener)

(smithy/sdk/shapes:define-structure virtual-gateway-logging common-lisp:nil
                                    ((access-log :target-type
                                      virtual-gateway-access-log :member-name
                                      "accessLog"))
                                    (:shape-name "VirtualGatewayLogging"))

(smithy/sdk/shapes:define-structure virtual-gateway-port-mapping
                                    common-lisp:nil
                                    ((port :target-type port-number :required
                                      common-lisp:t :member-name "port")
                                     (protocol :target-type
                                      virtual-gateway-port-protocol :required
                                      common-lisp:t :member-name "protocol"))
                                    (:shape-name "VirtualGatewayPortMapping"))

(smithy/sdk/shapes:define-type virtual-gateway-port-protocol
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure virtual-gateway-ref common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-gateway-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualGatewayName")
                                     (mesh-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "meshOwner")
                                     (resource-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "resourceOwner")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (version :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "version")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedAt"))
                                    (:shape-name "VirtualGatewayRef"))

(smithy/sdk/shapes:define-type virtual-gateway-sds-secret-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure virtual-gateway-spec common-lisp:nil
                                    ((backend-defaults :target-type
                                      virtual-gateway-backend-defaults
                                      :member-name "backendDefaults")
                                     (listeners :target-type
                                      virtual-gateway-listeners :required
                                      common-lisp:t :member-name "listeners")
                                     (logging :target-type
                                      virtual-gateway-logging :member-name
                                      "logging"))
                                    (:shape-name "VirtualGatewaySpec"))

(smithy/sdk/shapes:define-structure virtual-gateway-status common-lisp:nil
                                    ((status :target-type
                                      virtual-gateway-status-code :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "VirtualGatewayStatus"))

(smithy/sdk/shapes:define-type virtual-gateway-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure virtual-gateway-tls-validation-context
                                    common-lisp:nil
                                    ((trust :target-type
                                      virtual-gateway-tls-validation-context-trust
                                      :required common-lisp:t :member-name
                                      "trust")
                                     (subject-alternative-names :target-type
                                      subject-alternative-names :member-name
                                      "subjectAlternativeNames"))
                                    (:shape-name
                                     "VirtualGatewayTlsValidationContext"))

(smithy/sdk/shapes:define-structure
 virtual-gateway-tls-validation-context-acm-trust common-lisp:nil
 ((certificate-authority-arns :target-type
   virtual-gateway-certificate-authority-arns :required common-lisp:t
   :member-name "certificateAuthorityArns"))
 (:shape-name "VirtualGatewayTlsValidationContextAcmTrust"))

(smithy/sdk/shapes:define-structure
 virtual-gateway-tls-validation-context-file-trust common-lisp:nil
 ((certificate-chain :target-type file-path :required common-lisp:t
   :member-name "certificateChain"))
 (:shape-name "VirtualGatewayTlsValidationContextFileTrust"))

(smithy/sdk/shapes:define-structure
 virtual-gateway-tls-validation-context-sds-trust common-lisp:nil
 ((secret-name :target-type virtual-gateway-sds-secret-name :required
   common-lisp:t :member-name "secretName"))
 (:shape-name "VirtualGatewayTlsValidationContextSdsTrust"))

(smithy/sdk/shapes:define-union virtual-gateway-tls-validation-context-trust
                                common-lisp:nil
                                ((acm :target-type
                                  virtual-gateway-tls-validation-context-acm-trust
                                  :member-name "acm")
                                 (file :target-type
                                  virtual-gateway-tls-validation-context-file-trust
                                  :member-name "file")
                                 (sds :target-type
                                  virtual-gateway-tls-validation-context-sds-trust
                                  :member-name "sds"))
                                (:shape-name
                                 "VirtualGatewayTlsValidationContextTrust"))

common-lisp:nil

(smithy/sdk/shapes:define-union virtual-node-connection-pool common-lisp:nil
                                ((tcp :target-type
                                  virtual-node-tcp-connection-pool :member-name
                                  "tcp")
                                 (http :target-type
                                  virtual-node-http-connection-pool
                                  :member-name "http")
                                 (http2 :target-type
                                  virtual-node-http2connection-pool
                                  :member-name "http2")
                                 (grpc :target-type
                                  virtual-node-grpc-connection-pool
                                  :member-name "grpc"))
                                (:shape-name "VirtualNodeConnectionPool"))

(smithy/sdk/shapes:define-structure virtual-node-data common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-node-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualNodeName")
                                     (spec :target-type virtual-node-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (metadata :target-type resource-metadata
                                      :required common-lisp:t :member-name
                                      "metadata")
                                     (status :target-type virtual-node-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "VirtualNodeData"))

(smithy/sdk/shapes:define-structure virtual-node-grpc-connection-pool
                                    common-lisp:nil
                                    ((max-requests :target-type max-requests
                                      :required common-lisp:t :member-name
                                      "maxRequests"))
                                    (:shape-name
                                     "VirtualNodeGrpcConnectionPool"))

(smithy/sdk/shapes:define-structure virtual-node-http2connection-pool
                                    common-lisp:nil
                                    ((max-requests :target-type max-requests
                                      :required common-lisp:t :member-name
                                      "maxRequests"))
                                    (:shape-name
                                     "VirtualNodeHttp2ConnectionPool"))

(smithy/sdk/shapes:define-structure virtual-node-http-connection-pool
                                    common-lisp:nil
                                    ((max-connections :target-type
                                      max-connections :required common-lisp:t
                                      :member-name "maxConnections")
                                     (max-pending-requests :target-type
                                      max-pending-requests :member-name
                                      "maxPendingRequests"))
                                    (:shape-name
                                     "VirtualNodeHttpConnectionPool"))

(smithy/sdk/shapes:define-list virtual-node-list :member virtual-node-ref)

(smithy/sdk/shapes:define-structure virtual-node-ref common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-node-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualNodeName")
                                     (mesh-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "meshOwner")
                                     (resource-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "resourceOwner")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (version :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "version")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedAt"))
                                    (:shape-name "VirtualNodeRef"))

(smithy/sdk/shapes:define-structure virtual-node-service-provider
                                    common-lisp:nil
                                    ((virtual-node-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualNodeName"))
                                    (:shape-name "VirtualNodeServiceProvider"))

(smithy/sdk/shapes:define-structure virtual-node-spec common-lisp:nil
                                    ((service-discovery :target-type
                                      service-discovery :member-name
                                      "serviceDiscovery")
                                     (listeners :target-type listeners
                                      :member-name "listeners")
                                     (backends :target-type backends
                                      :member-name "backends")
                                     (backend-defaults :target-type
                                      backend-defaults :member-name
                                      "backendDefaults")
                                     (logging :target-type logging :member-name
                                      "logging"))
                                    (:shape-name "VirtualNodeSpec"))

(smithy/sdk/shapes:define-structure virtual-node-status common-lisp:nil
                                    ((status :target-type
                                      virtual-node-status-code :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "VirtualNodeStatus"))

(smithy/sdk/shapes:define-type virtual-node-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure virtual-node-tcp-connection-pool
                                    common-lisp:nil
                                    ((max-connections :target-type
                                      max-connections :required common-lisp:t
                                      :member-name "maxConnections"))
                                    (:shape-name
                                     "VirtualNodeTcpConnectionPool"))

common-lisp:nil

(smithy/sdk/shapes:define-structure virtual-router-data common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-router-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualRouterName")
                                     (spec :target-type virtual-router-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (metadata :target-type resource-metadata
                                      :required common-lisp:t :member-name
                                      "metadata")
                                     (status :target-type virtual-router-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "VirtualRouterData"))

(smithy/sdk/shapes:define-list virtual-router-list :member virtual-router-ref)

(smithy/sdk/shapes:define-structure virtual-router-listener common-lisp:nil
                                    ((port-mapping :target-type port-mapping
                                      :required common-lisp:t :member-name
                                      "portMapping"))
                                    (:shape-name "VirtualRouterListener"))

(smithy/sdk/shapes:define-list virtual-router-listeners :member
                               virtual-router-listener)

(smithy/sdk/shapes:define-structure virtual-router-ref common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-router-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualRouterName")
                                     (mesh-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "meshOwner")
                                     (resource-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "resourceOwner")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (version :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "version")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedAt"))
                                    (:shape-name "VirtualRouterRef"))

(smithy/sdk/shapes:define-structure virtual-router-service-provider
                                    common-lisp:nil
                                    ((virtual-router-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "virtualRouterName"))
                                    (:shape-name
                                     "VirtualRouterServiceProvider"))

(smithy/sdk/shapes:define-structure virtual-router-spec common-lisp:nil
                                    ((listeners :target-type
                                      virtual-router-listeners :member-name
                                      "listeners"))
                                    (:shape-name "VirtualRouterSpec"))

(smithy/sdk/shapes:define-structure virtual-router-status common-lisp:nil
                                    ((status :target-type
                                      virtual-router-status-code :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "VirtualRouterStatus"))

(smithy/sdk/shapes:define-type virtual-router-status-code
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure virtual-service-backend common-lisp:nil
                                    ((virtual-service-name :target-type
                                      service-name :required common-lisp:t
                                      :member-name "virtualServiceName")
                                     (client-policy :target-type client-policy
                                      :member-name "clientPolicy"))
                                    (:shape-name "VirtualServiceBackend"))

(smithy/sdk/shapes:define-structure virtual-service-data common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-service-name :target-type
                                      service-name :required common-lisp:t
                                      :member-name "virtualServiceName")
                                     (spec :target-type virtual-service-spec
                                      :required common-lisp:t :member-name
                                      "spec")
                                     (metadata :target-type resource-metadata
                                      :required common-lisp:t :member-name
                                      "metadata")
                                     (status :target-type
                                      virtual-service-status :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "VirtualServiceData"))

(smithy/sdk/shapes:define-list virtual-service-list :member virtual-service-ref)

(smithy/sdk/shapes:define-union virtual-service-provider common-lisp:nil
                                ((virtual-node :target-type
                                  virtual-node-service-provider :member-name
                                  "virtualNode")
                                 (virtual-router :target-type
                                  virtual-router-service-provider :member-name
                                  "virtualRouter"))
                                (:shape-name "VirtualServiceProvider"))

(smithy/sdk/shapes:define-structure virtual-service-ref common-lisp:nil
                                    ((mesh-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "meshName")
                                     (virtual-service-name :target-type
                                      service-name :required common-lisp:t
                                      :member-name "virtualServiceName")
                                     (mesh-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "meshOwner")
                                     (resource-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "resourceOwner")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (version :target-type
                                      smithy/sdk/smithy-types:long :required
                                      common-lisp:t :member-name "version")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedAt"))
                                    (:shape-name "VirtualServiceRef"))

(smithy/sdk/shapes:define-structure virtual-service-spec common-lisp:nil
                                    ((provider :target-type
                                      virtual-service-provider :member-name
                                      "provider"))
                                    (:shape-name "VirtualServiceSpec"))

(smithy/sdk/shapes:define-structure virtual-service-status common-lisp:nil
                                    ((status :target-type
                                      virtual-service-status-code :required
                                      common-lisp:t :member-name "status"))
                                    (:shape-name "VirtualServiceStatus"))

(smithy/sdk/shapes:define-type virtual-service-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure weighted-target common-lisp:nil
                                    ((virtual-node :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "virtualNode")
                                     (weight :target-type percent-int :required
                                      common-lisp:t :member-name "weight")
                                     (port :target-type listener-port
                                      :member-name "port"))
                                    (:shape-name "WeightedTarget"))

(smithy/sdk/shapes:define-list weighted-targets :member weighted-target)

(smithy/sdk/operation:define-operation create-gateway-route :shape-name
                                       "CreateGatewayRoute" :input
                                       create-gateway-route-input :output
                                       create-gateway-route-output :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes")

(smithy/sdk/operation:define-operation create-mesh :shape-name "CreateMesh"
                                       :input create-mesh-input :output
                                       create-mesh-output :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri "/v20190125/meshes")

(smithy/sdk/operation:define-operation create-route :shape-name "CreateRoute"
                                       :input create-route-input :output
                                       create-route-output :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes")

(smithy/sdk/operation:define-operation create-virtual-gateway :shape-name
                                       "CreateVirtualGateway" :input
                                       create-virtual-gateway-input :output
                                       create-virtual-gateway-output :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v20190125/meshes/{meshName}/virtualGateways")

(smithy/sdk/operation:define-operation create-virtual-node :shape-name
                                       "CreateVirtualNode" :input
                                       create-virtual-node-input :output
                                       create-virtual-node-output :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v20190125/meshes/{meshName}/virtualNodes")

(smithy/sdk/operation:define-operation create-virtual-router :shape-name
                                       "CreateVirtualRouter" :input
                                       create-virtual-router-input :output
                                       create-virtual-router-output :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v20190125/meshes/{meshName}/virtualRouters")

(smithy/sdk/operation:define-operation create-virtual-service :shape-name
                                       "CreateVirtualService" :input
                                       create-virtual-service-input :output
                                       create-virtual-service-output :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v20190125/meshes/{meshName}/virtualServices")

(smithy/sdk/operation:define-operation delete-gateway-route :shape-name
                                       "DeleteGatewayRoute" :input
                                       delete-gateway-route-input :output
                                       delete-gateway-route-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        resource-in-use-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}")

(smithy/sdk/operation:define-operation delete-mesh :shape-name "DeleteMesh"
                                       :input delete-mesh-input :output
                                       delete-mesh-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        resource-in-use-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v20190125/meshes/{meshName}")

(smithy/sdk/operation:define-operation delete-route :shape-name "DeleteRoute"
                                       :input delete-route-input :output
                                       delete-route-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        resource-in-use-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}")

(smithy/sdk/operation:define-operation delete-virtual-gateway :shape-name
                                       "DeleteVirtualGateway" :input
                                       delete-virtual-gateway-input :output
                                       delete-virtual-gateway-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        resource-in-use-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}")

(smithy/sdk/operation:define-operation delete-virtual-node :shape-name
                                       "DeleteVirtualNode" :input
                                       delete-virtual-node-input :output
                                       delete-virtual-node-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        resource-in-use-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}")

(smithy/sdk/operation:define-operation delete-virtual-router :shape-name
                                       "DeleteVirtualRouter" :input
                                       delete-virtual-router-input :output
                                       delete-virtual-router-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        resource-in-use-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}")

(smithy/sdk/operation:define-operation delete-virtual-service :shape-name
                                       "DeleteVirtualService" :input
                                       delete-virtual-service-input :output
                                       delete-virtual-service-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        resource-in-use-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}")

(smithy/sdk/operation:define-operation describe-gateway-route :shape-name
                                       "DescribeGatewayRoute" :input
                                       describe-gateway-route-input :output
                                       describe-gateway-route-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}")

(smithy/sdk/operation:define-operation describe-mesh :shape-name "DescribeMesh"
                                       :input describe-mesh-input :output
                                       describe-mesh-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20190125/meshes/{meshName}")

(smithy/sdk/operation:define-operation describe-route :shape-name
                                       "DescribeRoute" :input
                                       describe-route-input :output
                                       describe-route-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}")

(smithy/sdk/operation:define-operation describe-virtual-gateway :shape-name
                                       "DescribeVirtualGateway" :input
                                       describe-virtual-gateway-input :output
                                       describe-virtual-gateway-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}")

(smithy/sdk/operation:define-operation describe-virtual-node :shape-name
                                       "DescribeVirtualNode" :input
                                       describe-virtual-node-input :output
                                       describe-virtual-node-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}")

(smithy/sdk/operation:define-operation describe-virtual-router :shape-name
                                       "DescribeVirtualRouter" :input
                                       describe-virtual-router-input :output
                                       describe-virtual-router-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}")

(smithy/sdk/operation:define-operation describe-virtual-service :shape-name
                                       "DescribeVirtualService" :input
                                       describe-virtual-service-input :output
                                       describe-virtual-service-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}")

(smithy/sdk/operation:define-operation list-gateway-routes :shape-name
                                       "ListGatewayRoutes" :input
                                       list-gateway-routes-input :output
                                       list-gateway-routes-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes")

(smithy/sdk/operation:define-operation list-meshes :shape-name "ListMeshes"
                                       :input list-meshes-input :output
                                       list-meshes-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v20190125/meshes")

(smithy/sdk/operation:define-operation list-routes :shape-name "ListRoutes"
                                       :input list-routes-input :output
                                       list-routes-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v20190125/tags")

(smithy/sdk/operation:define-operation list-virtual-gateways :shape-name
                                       "ListVirtualGateways" :input
                                       list-virtual-gateways-input :output
                                       list-virtual-gateways-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20190125/meshes/{meshName}/virtualGateways")

(smithy/sdk/operation:define-operation list-virtual-nodes :shape-name
                                       "ListVirtualNodes" :input
                                       list-virtual-nodes-input :output
                                       list-virtual-nodes-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20190125/meshes/{meshName}/virtualNodes")

(smithy/sdk/operation:define-operation list-virtual-routers :shape-name
                                       "ListVirtualRouters" :input
                                       list-virtual-routers-input :output
                                       list-virtual-routers-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20190125/meshes/{meshName}/virtualRouters")

(smithy/sdk/operation:define-operation list-virtual-services :shape-name
                                       "ListVirtualServices" :input
                                       list-virtual-services-input :output
                                       list-virtual-services-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v20190125/meshes/{meshName}/virtualServices")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        too-many-tags-exception)
                                       :method "PUT" :uri "/v20190125/tag")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (bad-request-exception
                                        forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri "/v20190125/untag")

(smithy/sdk/operation:define-operation update-gateway-route :shape-name
                                       "UpdateGatewayRoute" :input
                                       update-gateway-route-input :output
                                       update-gateway-route-output :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}")

(smithy/sdk/operation:define-operation update-mesh :shape-name "UpdateMesh"
                                       :input update-mesh-input :output
                                       update-mesh-output :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v20190125/meshes/{meshName}")

(smithy/sdk/operation:define-operation update-route :shape-name "UpdateRoute"
                                       :input update-route-input :output
                                       update-route-output :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}")

(smithy/sdk/operation:define-operation update-virtual-gateway :shape-name
                                       "UpdateVirtualGateway" :input
                                       update-virtual-gateway-input :output
                                       update-virtual-gateway-output :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}")

(smithy/sdk/operation:define-operation update-virtual-node :shape-name
                                       "UpdateVirtualNode" :input
                                       update-virtual-node-input :output
                                       update-virtual-node-output :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}")

(smithy/sdk/operation:define-operation update-virtual-router :shape-name
                                       "UpdateVirtualRouter" :input
                                       update-virtual-router-input :output
                                       update-virtual-router-output :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}")

(smithy/sdk/operation:define-operation update-virtual-service :shape-name
                                       "UpdateVirtualService" :input
                                       update-virtual-service-input :output
                                       update-virtual-service-output :errors
                                       (bad-request-exception
                                        conflict-exception forbidden-exception
                                        internal-server-error-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}")
