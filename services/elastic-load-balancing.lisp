(uiop/package:define-package #:pira/elastic-load-balancing (:use)
                             (:export #:access-log #:access-log-enabled
                              #:access-log-interval #:access-log-prefix
                              #:access-point-name #:access-point-port
                              #:add-tags #:additional-attribute
                              #:additional-attribute-key
                              #:additional-attribute-value
                              #:additional-attributes
                              #:app-cookie-stickiness-policies
                              #:app-cookie-stickiness-policy
                              #:apply-security-groups-to-load-balancer
                              #:attach-load-balancer-to-subnets
                              #:attribute-name #:attribute-type
                              #:attribute-value #:availability-zone
                              #:availability-zones #:backend-server-description
                              #:backend-server-descriptions #:cardinality
                              #:configure-health-check #:connection-draining
                              #:connection-draining-enabled
                              #:connection-draining-timeout
                              #:connection-settings #:cookie-expiration-period
                              #:cookie-name
                              #:create-app-cookie-stickiness-policy
                              #:create-lbcookie-stickiness-policy
                              #:create-load-balancer
                              #:create-load-balancer-listeners
                              #:create-load-balancer-policy #:created-time
                              #:cross-zone-load-balancing
                              #:cross-zone-load-balancing-enabled #:dnsname
                              #:default-value #:delete-load-balancer
                              #:delete-load-balancer-listeners
                              #:delete-load-balancer-policy
                              #:deregister-instances-from-load-balancer
                              #:describe-account-limits
                              #:describe-instance-health
                              #:describe-load-balancer-attributes
                              #:describe-load-balancer-policies
                              #:describe-load-balancer-policy-types
                              #:describe-load-balancers #:describe-tags
                              #:description #:detach-load-balancer-from-subnets
                              #:disable-availability-zones-for-load-balancer
                              #:elastic-load-balancing-v7
                              #:enable-availability-zones-for-load-balancer
                              #:end-point-port #:error-description
                              #:health-check #:health-check-interval
                              #:health-check-target #:health-check-timeout
                              #:healthy-threshold #:idle-timeout #:instance
                              #:instance-id #:instance-port #:instance-state
                              #:instance-states #:instances
                              #:lbcookie-stickiness-policies
                              #:lbcookie-stickiness-policy #:limit #:limits
                              #:listener #:listener-description
                              #:listener-descriptions #:listeners
                              #:load-balancer-attributes
                              #:load-balancer-description
                              #:load-balancer-descriptions
                              #:load-balancer-names #:load-balancer-names-max20
                              #:load-balancer-scheme #:marker #:max
                              #:modify-load-balancer-attributes #:name
                              #:page-size #:policies #:policy-attribute
                              #:policy-attribute-description
                              #:policy-attribute-descriptions
                              #:policy-attribute-type-description
                              #:policy-attribute-type-descriptions
                              #:policy-attributes #:policy-description
                              #:policy-descriptions #:policy-name
                              #:policy-names #:policy-type-description
                              #:policy-type-descriptions #:policy-type-name
                              #:policy-type-names #:ports #:protocol
                              #:reason-code
                              #:register-instances-with-load-balancer
                              #:remove-tags #:s3bucket-name #:sslcertificate-id
                              #:security-group-id #:security-group-name
                              #:security-group-owner-alias #:security-groups
                              #:set-load-balancer-listener-sslcertificate
                              #:set-load-balancer-policies-for-backend-server
                              #:set-load-balancer-policies-of-listener
                              #:source-security-group #:state #:subnet-id
                              #:subnets #:tag #:tag-description
                              #:tag-descriptions #:tag-key #:tag-key-list
                              #:tag-key-only #:tag-list #:tag-value
                              #:unhealthy-threshold #:vpcid))
(common-lisp:in-package #:pira/elastic-load-balancing)

(smithy/sdk/service:define-service elastic-load-balancing-v7 :shape-name
                                   "ElasticLoadBalancing_v7" :version
                                   "2012-06-01" :title "Elastic Load Balancing"
                                   :xml-namespace
                                   '(:uri
                                     "http://elasticloadbalancing.amazonaws.com/doc/2012-06-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Elastic Load Balancing")
                                      ("arnNamespace" . "elasticloadbalancing")
                                      ("cloudFormationName"
                                       . "ElasticLoadBalancing")
                                      ("cloudTrailEventSource"
                                       . "elasticloadbalancing.amazonaws.com")
                                      ("docId"
                                       . "elasticloadbalancing-2012-06-01")
                                      ("endpointPrefix"
                                       . "elasticloadbalancing"))
                                     ("aws.auth#sigv4"
                                      ("name" . "elasticloadbalancing"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-structure access-log common-lisp:nil
                                    ((enabled :target-type access-log-enabled
                                      :required common-lisp:t :member-name
                                      "Enabled")
                                     (s3bucket-name :target-type s3bucket-name
                                      :member-name "S3BucketName")
                                     (emit-interval :target-type
                                      access-log-interval :member-name
                                      "EmitInterval")
                                     (s3bucket-prefix :target-type
                                      access-log-prefix :member-name
                                      "S3BucketPrefix"))
                                    (:shape-name "AccessLog"))

(smithy/sdk/shapes:define-type access-log-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type access-log-interval
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type access-log-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-point-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-point-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "AccessPointNotFoundException")
                                (:error-name "LoadBalancerNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-type access-point-port
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input add-availability-zones-input common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (availability-zones :target-type
                                  availability-zones :required common-lisp:t
                                  :member-name "AvailabilityZones"))
                                (:shape-name "AddAvailabilityZonesInput"))

(smithy/sdk/shapes:define-output add-availability-zones-output common-lisp:nil
                                 ((availability-zones :target-type
                                   availability-zones :member-name
                                   "AvailabilityZones"))
                                 (:shape-name "AddAvailabilityZonesOutput"))

(smithy/sdk/shapes:define-input add-tags-input common-lisp:nil
                                ((load-balancer-names :target-type
                                  load-balancer-names :required common-lisp:t
                                  :member-name "LoadBalancerNames")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "AddTagsInput"))

(smithy/sdk/shapes:define-output add-tags-output common-lisp:nil
                                 common-lisp:nil (:shape-name "AddTagsOutput"))

(smithy/sdk/shapes:define-structure additional-attribute common-lisp:nil
                                    ((key :target-type additional-attribute-key
                                      :member-name "Key")
                                     (value :target-type
                                      additional-attribute-value :member-name
                                      "Value"))
                                    (:shape-name "AdditionalAttribute"))

(smithy/sdk/shapes:define-type additional-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type additional-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list additional-attributes :member
                               additional-attribute)

(smithy/sdk/shapes:define-list app-cookie-stickiness-policies :member
                               app-cookie-stickiness-policy)

(smithy/sdk/shapes:define-structure app-cookie-stickiness-policy
                                    common-lisp:nil
                                    ((policy-name :target-type policy-name
                                      :member-name "PolicyName")
                                     (cookie-name :target-type cookie-name
                                      :member-name "CookieName"))
                                    (:shape-name "AppCookieStickinessPolicy"))

(smithy/sdk/shapes:define-input apply-security-groups-to-load-balancer-input
                                common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (security-groups :target-type security-groups
                                  :required common-lisp:t :member-name
                                  "SecurityGroups"))
                                (:shape-name
                                 "ApplySecurityGroupsToLoadBalancerInput"))

(smithy/sdk/shapes:define-output apply-security-groups-to-load-balancer-output
                                 common-lisp:nil
                                 ((security-groups :target-type security-groups
                                   :member-name "SecurityGroups"))
                                 (:shape-name
                                  "ApplySecurityGroupsToLoadBalancerOutput"))

(smithy/sdk/shapes:define-input attach-load-balancer-to-subnets-input
                                common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (subnets :target-type subnets :required
                                  common-lisp:t :member-name "Subnets"))
                                (:shape-name
                                 "AttachLoadBalancerToSubnetsInput"))

(smithy/sdk/shapes:define-output attach-load-balancer-to-subnets-output
                                 common-lisp:nil
                                 ((subnets :target-type subnets :member-name
                                   "Subnets"))
                                 (:shape-name
                                  "AttachLoadBalancerToSubnetsOutput"))

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type availability-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list availability-zones :member availability-zone)

(smithy/sdk/shapes:define-structure backend-server-description common-lisp:nil
                                    ((instance-port :target-type instance-port
                                      :member-name "InstancePort")
                                     (policy-names :target-type policy-names
                                      :member-name "PolicyNames"))
                                    (:shape-name "BackendServerDescription"))

(smithy/sdk/shapes:define-list backend-server-descriptions :member
                               backend-server-description)

(smithy/sdk/shapes:define-type cardinality smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error certificate-not-found-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "CertificateNotFoundException")
                                (:error-name "CertificateNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-input configure-health-check-input common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (health-check :target-type health-check
                                  :required common-lisp:t :member-name
                                  "HealthCheck"))
                                (:shape-name "ConfigureHealthCheckInput"))

(smithy/sdk/shapes:define-output configure-health-check-output common-lisp:nil
                                 ((health-check :target-type health-check
                                   :member-name "HealthCheck"))
                                 (:shape-name "ConfigureHealthCheckOutput"))

(smithy/sdk/shapes:define-structure connection-draining common-lisp:nil
                                    ((enabled :target-type
                                      connection-draining-enabled :required
                                      common-lisp:t :member-name "Enabled")
                                     (timeout :target-type
                                      connection-draining-timeout :member-name
                                      "Timeout"))
                                    (:shape-name "ConnectionDraining"))

(smithy/sdk/shapes:define-type connection-draining-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type connection-draining-timeout
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure connection-settings common-lisp:nil
                                    ((idle-timeout :target-type idle-timeout
                                      :required common-lisp:t :member-name
                                      "IdleTimeout"))
                                    (:shape-name "ConnectionSettings"))

(smithy/sdk/shapes:define-type cookie-expiration-period
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type cookie-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-access-point-input common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (listeners :target-type listeners :required
                                  common-lisp:t :member-name "Listeners")
                                 (availability-zones :target-type
                                  availability-zones :member-name
                                  "AvailabilityZones")
                                 (subnets :target-type subnets :member-name
                                  "Subnets")
                                 (security-groups :target-type security-groups
                                  :member-name "SecurityGroups")
                                 (scheme :target-type load-balancer-scheme
                                  :member-name "Scheme")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateAccessPointInput"))

(smithy/sdk/shapes:define-output create-access-point-output common-lisp:nil
                                 ((dnsname :target-type dnsname :member-name
                                   "DNSName"))
                                 (:shape-name "CreateAccessPointOutput"))

(smithy/sdk/shapes:define-input create-app-cookie-stickiness-policy-input
                                common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName")
                                 (cookie-name :target-type cookie-name
                                  :required common-lisp:t :member-name
                                  "CookieName"))
                                (:shape-name
                                 "CreateAppCookieStickinessPolicyInput"))

(smithy/sdk/shapes:define-output create-app-cookie-stickiness-policy-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateAppCookieStickinessPolicyOutput"))

(smithy/sdk/shapes:define-input create-lbcookie-stickiness-policy-input
                                common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName")
                                 (cookie-expiration-period :target-type
                                  cookie-expiration-period :member-name
                                  "CookieExpirationPeriod"))
                                (:shape-name
                                 "CreateLBCookieStickinessPolicyInput"))

(smithy/sdk/shapes:define-output create-lbcookie-stickiness-policy-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateLBCookieStickinessPolicyOutput"))

(smithy/sdk/shapes:define-input create-load-balancer-listener-input
                                common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (listeners :target-type listeners :required
                                  common-lisp:t :member-name "Listeners"))
                                (:shape-name "CreateLoadBalancerListenerInput"))

(smithy/sdk/shapes:define-output create-load-balancer-listener-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateLoadBalancerListenerOutput"))

(smithy/sdk/shapes:define-input create-load-balancer-policy-input
                                common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName")
                                 (policy-type-name :target-type
                                  policy-type-name :required common-lisp:t
                                  :member-name "PolicyTypeName")
                                 (policy-attributes :target-type
                                  policy-attributes :member-name
                                  "PolicyAttributes"))
                                (:shape-name "CreateLoadBalancerPolicyInput"))

(smithy/sdk/shapes:define-output create-load-balancer-policy-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "CreateLoadBalancerPolicyOutput"))

(smithy/sdk/shapes:define-type created-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure cross-zone-load-balancing common-lisp:nil
                                    ((enabled :target-type
                                      cross-zone-load-balancing-enabled
                                      :required common-lisp:t :member-name
                                      "Enabled"))
                                    (:shape-name "CrossZoneLoadBalancing"))

(smithy/sdk/shapes:define-type cross-zone-load-balancing-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type dnsname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type default-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-access-point-input common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName"))
                                (:shape-name "DeleteAccessPointInput"))

(smithy/sdk/shapes:define-output delete-access-point-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAccessPointOutput"))

(smithy/sdk/shapes:define-input delete-load-balancer-listener-input
                                common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (load-balancer-ports :target-type ports
                                  :required common-lisp:t :member-name
                                  "LoadBalancerPorts"))
                                (:shape-name "DeleteLoadBalancerListenerInput"))

(smithy/sdk/shapes:define-output delete-load-balancer-listener-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteLoadBalancerListenerOutput"))

(smithy/sdk/shapes:define-input delete-load-balancer-policy-input
                                common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (policy-name :target-type policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName"))
                                (:shape-name "DeleteLoadBalancerPolicyInput"))

(smithy/sdk/shapes:define-output delete-load-balancer-policy-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteLoadBalancerPolicyOutput"))

(smithy/sdk/shapes:define-error dependency-throttle-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "DependencyThrottleException")
                                (:error-name "DependencyThrottle")
                                (:error-code 400))

(smithy/sdk/shapes:define-input deregister-end-points-input common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (instances :target-type instances :required
                                  common-lisp:t :member-name "Instances"))
                                (:shape-name "DeregisterEndPointsInput"))

(smithy/sdk/shapes:define-output deregister-end-points-output common-lisp:nil
                                 ((instances :target-type instances
                                   :member-name "Instances"))
                                 (:shape-name "DeregisterEndPointsOutput"))

(smithy/sdk/shapes:define-input describe-access-points-input common-lisp:nil
                                ((load-balancer-names :target-type
                                  load-balancer-names :member-name
                                  "LoadBalancerNames")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "DescribeAccessPointsInput"))

(smithy/sdk/shapes:define-output describe-access-points-output common-lisp:nil
                                 ((load-balancer-descriptions :target-type
                                   load-balancer-descriptions :member-name
                                   "LoadBalancerDescriptions")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name "DescribeAccessPointsOutput"))

(smithy/sdk/shapes:define-input describe-account-limits-input common-lisp:nil
                                ((marker :target-type marker :member-name
                                  "Marker")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "DescribeAccountLimitsInput"))

(smithy/sdk/shapes:define-output describe-account-limits-output common-lisp:nil
                                 ((limits :target-type limits :member-name
                                   "Limits")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name "DescribeAccountLimitsOutput"))

(smithy/sdk/shapes:define-input describe-end-point-state-input common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (instances :target-type instances :member-name
                                  "Instances"))
                                (:shape-name "DescribeEndPointStateInput"))

(smithy/sdk/shapes:define-output describe-end-point-state-output
                                 common-lisp:nil
                                 ((instance-states :target-type instance-states
                                   :member-name "InstanceStates"))
                                 (:shape-name "DescribeEndPointStateOutput"))

(smithy/sdk/shapes:define-input describe-load-balancer-attributes-input
                                common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName"))
                                (:shape-name
                                 "DescribeLoadBalancerAttributesInput"))

(smithy/sdk/shapes:define-output describe-load-balancer-attributes-output
                                 common-lisp:nil
                                 ((load-balancer-attributes :target-type
                                   load-balancer-attributes :member-name
                                   "LoadBalancerAttributes"))
                                 (:shape-name
                                  "DescribeLoadBalancerAttributesOutput"))

(smithy/sdk/shapes:define-input describe-load-balancer-policies-input
                                common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :member-name
                                  "LoadBalancerName")
                                 (policy-names :target-type policy-names
                                  :member-name "PolicyNames"))
                                (:shape-name
                                 "DescribeLoadBalancerPoliciesInput"))

(smithy/sdk/shapes:define-output describe-load-balancer-policies-output
                                 common-lisp:nil
                                 ((policy-descriptions :target-type
                                   policy-descriptions :member-name
                                   "PolicyDescriptions"))
                                 (:shape-name
                                  "DescribeLoadBalancerPoliciesOutput"))

(smithy/sdk/shapes:define-input describe-load-balancer-policy-types-input
                                common-lisp:nil
                                ((policy-type-names :target-type
                                  policy-type-names :member-name
                                  "PolicyTypeNames"))
                                (:shape-name
                                 "DescribeLoadBalancerPolicyTypesInput"))

(smithy/sdk/shapes:define-output describe-load-balancer-policy-types-output
                                 common-lisp:nil
                                 ((policy-type-descriptions :target-type
                                   policy-type-descriptions :member-name
                                   "PolicyTypeDescriptions"))
                                 (:shape-name
                                  "DescribeLoadBalancerPolicyTypesOutput"))

(smithy/sdk/shapes:define-input describe-tags-input common-lisp:nil
                                ((load-balancer-names :target-type
                                  load-balancer-names-max20 :required
                                  common-lisp:t :member-name
                                  "LoadBalancerNames"))
                                (:shape-name "DescribeTagsInput"))

(smithy/sdk/shapes:define-output describe-tags-output common-lisp:nil
                                 ((tag-descriptions :target-type
                                   tag-descriptions :member-name
                                   "TagDescriptions"))
                                 (:shape-name "DescribeTagsOutput"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input detach-load-balancer-from-subnets-input
                                common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (subnets :target-type subnets :required
                                  common-lisp:t :member-name "Subnets"))
                                (:shape-name
                                 "DetachLoadBalancerFromSubnetsInput"))

(smithy/sdk/shapes:define-output detach-load-balancer-from-subnets-output
                                 common-lisp:nil
                                 ((subnets :target-type subnets :member-name
                                   "Subnets"))
                                 (:shape-name
                                  "DetachLoadBalancerFromSubnetsOutput"))

(smithy/sdk/shapes:define-error duplicate-access-point-name-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "DuplicateAccessPointNameException")
                                (:error-name "DuplicateLoadBalancerName")
                                (:error-code 400))

(smithy/sdk/shapes:define-error duplicate-listener-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "DuplicateListenerException")
                                (:error-name "DuplicateListener")
                                (:error-code 400))

(smithy/sdk/shapes:define-error duplicate-policy-name-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "DuplicatePolicyNameException")
                                (:error-name "DuplicatePolicyName")
                                (:error-code 400))

(smithy/sdk/shapes:define-error duplicate-tag-keys-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "DuplicateTagKeysException")
                                (:error-name "DuplicateTagKeys")
                                (:error-code 400))

(smithy/sdk/shapes:define-type end-point-port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type error-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure health-check common-lisp:nil
                                    ((target :target-type health-check-target
                                      :required common-lisp:t :member-name
                                      "Target")
                                     (interval :target-type
                                      health-check-interval :required
                                      common-lisp:t :member-name "Interval")
                                     (timeout :target-type health-check-timeout
                                      :required common-lisp:t :member-name
                                      "Timeout")
                                     (unhealthy-threshold :target-type
                                      unhealthy-threshold :required
                                      common-lisp:t :member-name
                                      "UnhealthyThreshold")
                                     (healthy-threshold :target-type
                                      healthy-threshold :required common-lisp:t
                                      :member-name "HealthyThreshold"))
                                    (:shape-name "HealthCheck"))

(smithy/sdk/shapes:define-type health-check-interval
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type health-check-target
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type health-check-timeout
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type healthy-threshold
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type idle-timeout smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure instance common-lisp:nil
                                    ((instance-id :target-type instance-id
                                      :member-name "InstanceId"))
                                    (:shape-name "Instance"))

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure instance-state common-lisp:nil
                                    ((instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (state :target-type state :member-name
                                      "State")
                                     (reason-code :target-type reason-code
                                      :member-name "ReasonCode")
                                     (description :target-type description
                                      :member-name "Description"))
                                    (:shape-name "InstanceState"))

(smithy/sdk/shapes:define-list instance-states :member instance-state)

(smithy/sdk/shapes:define-list instances :member instance)

(smithy/sdk/shapes:define-error invalid-configuration-request-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidConfigurationRequestException")
                                (:error-name "InvalidConfigurationRequest")
                                (:error-code 409))

(smithy/sdk/shapes:define-error invalid-end-point-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "InvalidEndPointException")
                                (:error-name "InvalidInstance")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-scheme-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "InvalidSchemeException")
                                (:error-name "InvalidScheme") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-security-group-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "InvalidSecurityGroupException")
                                (:error-name "InvalidSecurityGroup")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-subnet-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "InvalidSubnetException")
                                (:error-name "InvalidSubnet") (:error-code 400))

(smithy/sdk/shapes:define-list lbcookie-stickiness-policies :member
                               lbcookie-stickiness-policy)

(smithy/sdk/shapes:define-structure lbcookie-stickiness-policy common-lisp:nil
                                    ((policy-name :target-type policy-name
                                      :member-name "PolicyName")
                                     (cookie-expiration-period :target-type
                                      cookie-expiration-period :member-name
                                      "CookieExpirationPeriod"))
                                    (:shape-name "LBCookieStickinessPolicy"))

(smithy/sdk/shapes:define-structure limit common-lisp:nil
                                    ((name :target-type name :member-name
                                      "Name")
                                     (max :target-type max :member-name "Max"))
                                    (:shape-name "Limit"))

(smithy/sdk/shapes:define-list limits :member limit)

(smithy/sdk/shapes:define-structure listener common-lisp:nil
                                    ((protocol :target-type protocol :required
                                      common-lisp:t :member-name "Protocol")
                                     (load-balancer-port :target-type
                                      access-point-port :required common-lisp:t
                                      :member-name "LoadBalancerPort")
                                     (instance-protocol :target-type protocol
                                      :member-name "InstanceProtocol")
                                     (instance-port :target-type instance-port
                                      :required common-lisp:t :member-name
                                      "InstancePort")
                                     (sslcertificate-id :target-type
                                      sslcertificate-id :member-name
                                      "SSLCertificateId"))
                                    (:shape-name "Listener"))

(smithy/sdk/shapes:define-structure listener-description common-lisp:nil
                                    ((listener :target-type listener
                                      :member-name "Listener")
                                     (policy-names :target-type policy-names
                                      :member-name "PolicyNames"))
                                    (:shape-name "ListenerDescription"))

(smithy/sdk/shapes:define-list listener-descriptions :member
                               listener-description)

(smithy/sdk/shapes:define-error listener-not-found-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "ListenerNotFoundException")
                                (:error-name "ListenerNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-list listeners :member listener)

(smithy/sdk/shapes:define-error load-balancer-attribute-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "LoadBalancerAttributeNotFoundException")
                                (:error-name "LoadBalancerAttributeNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure load-balancer-attributes common-lisp:nil
                                    ((cross-zone-load-balancing :target-type
                                      cross-zone-load-balancing :member-name
                                      "CrossZoneLoadBalancing")
                                     (access-log :target-type access-log
                                      :member-name "AccessLog")
                                     (connection-draining :target-type
                                      connection-draining :member-name
                                      "ConnectionDraining")
                                     (connection-settings :target-type
                                      connection-settings :member-name
                                      "ConnectionSettings")
                                     (additional-attributes :target-type
                                      additional-attributes :member-name
                                      "AdditionalAttributes"))
                                    (:shape-name "LoadBalancerAttributes"))

(smithy/sdk/shapes:define-structure load-balancer-description common-lisp:nil
                                    ((load-balancer-name :target-type
                                      access-point-name :member-name
                                      "LoadBalancerName")
                                     (dnsname :target-type dnsname :member-name
                                      "DNSName")
                                     (canonical-hosted-zone-name :target-type
                                      dnsname :member-name
                                      "CanonicalHostedZoneName")
                                     (canonical-hosted-zone-name-id
                                      :target-type dnsname :member-name
                                      "CanonicalHostedZoneNameID")
                                     (listener-descriptions :target-type
                                      listener-descriptions :member-name
                                      "ListenerDescriptions")
                                     (policies :target-type policies
                                      :member-name "Policies")
                                     (backend-server-descriptions :target-type
                                      backend-server-descriptions :member-name
                                      "BackendServerDescriptions")
                                     (availability-zones :target-type
                                      availability-zones :member-name
                                      "AvailabilityZones")
                                     (subnets :target-type subnets :member-name
                                      "Subnets")
                                     (vpcid :target-type vpcid :member-name
                                      "VPCId")
                                     (instances :target-type instances
                                      :member-name "Instances")
                                     (health-check :target-type health-check
                                      :member-name "HealthCheck")
                                     (source-security-group :target-type
                                      source-security-group :member-name
                                      "SourceSecurityGroup")
                                     (security-groups :target-type
                                      security-groups :member-name
                                      "SecurityGroups")
                                     (created-time :target-type created-time
                                      :member-name "CreatedTime")
                                     (scheme :target-type load-balancer-scheme
                                      :member-name "Scheme"))
                                    (:shape-name "LoadBalancerDescription"))

(smithy/sdk/shapes:define-list load-balancer-descriptions :member
                               load-balancer-description)

(smithy/sdk/shapes:define-list load-balancer-names :member access-point-name)

(smithy/sdk/shapes:define-list load-balancer-names-max20 :member
                               access-point-name)

(smithy/sdk/shapes:define-type load-balancer-scheme
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input modify-load-balancer-attributes-input
                                common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (load-balancer-attributes :target-type
                                  load-balancer-attributes :required
                                  common-lisp:t :member-name
                                  "LoadBalancerAttributes"))
                                (:shape-name
                                 "ModifyLoadBalancerAttributesInput"))

(smithy/sdk/shapes:define-output modify-load-balancer-attributes-output
                                 common-lisp:nil
                                 ((load-balancer-name :target-type
                                   access-point-name :member-name
                                   "LoadBalancerName")
                                  (load-balancer-attributes :target-type
                                   load-balancer-attributes :member-name
                                   "LoadBalancerAttributes"))
                                 (:shape-name
                                  "ModifyLoadBalancerAttributesOutput"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error operation-not-permitted-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "OperationNotPermittedException")
                                (:error-name "OperationNotPermitted")
                                (:error-code 400))

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure policies common-lisp:nil
                                    ((app-cookie-stickiness-policies
                                      :target-type
                                      app-cookie-stickiness-policies
                                      :member-name
                                      "AppCookieStickinessPolicies")
                                     (lbcookie-stickiness-policies :target-type
                                      lbcookie-stickiness-policies :member-name
                                      "LBCookieStickinessPolicies")
                                     (other-policies :target-type policy-names
                                      :member-name "OtherPolicies"))
                                    (:shape-name "Policies"))

(smithy/sdk/shapes:define-structure policy-attribute common-lisp:nil
                                    ((attribute-name :target-type
                                      attribute-name :member-name
                                      "AttributeName")
                                     (attribute-value :target-type
                                      attribute-value :member-name
                                      "AttributeValue"))
                                    (:shape-name "PolicyAttribute"))

(smithy/sdk/shapes:define-structure policy-attribute-description
                                    common-lisp:nil
                                    ((attribute-name :target-type
                                      attribute-name :member-name
                                      "AttributeName")
                                     (attribute-value :target-type
                                      attribute-value :member-name
                                      "AttributeValue"))
                                    (:shape-name "PolicyAttributeDescription"))

(smithy/sdk/shapes:define-list policy-attribute-descriptions :member
                               policy-attribute-description)

(smithy/sdk/shapes:define-structure policy-attribute-type-description
                                    common-lisp:nil
                                    ((attribute-name :target-type
                                      attribute-name :member-name
                                      "AttributeName")
                                     (attribute-type :target-type
                                      attribute-type :member-name
                                      "AttributeType")
                                     (description :target-type description
                                      :member-name "Description")
                                     (default-value :target-type default-value
                                      :member-name "DefaultValue")
                                     (cardinality :target-type cardinality
                                      :member-name "Cardinality"))
                                    (:shape-name
                                     "PolicyAttributeTypeDescription"))

(smithy/sdk/shapes:define-list policy-attribute-type-descriptions :member
                               policy-attribute-type-description)

(smithy/sdk/shapes:define-list policy-attributes :member policy-attribute)

(smithy/sdk/shapes:define-structure policy-description common-lisp:nil
                                    ((policy-name :target-type policy-name
                                      :member-name "PolicyName")
                                     (policy-type-name :target-type
                                      policy-type-name :member-name
                                      "PolicyTypeName")
                                     (policy-attribute-descriptions
                                      :target-type
                                      policy-attribute-descriptions
                                      :member-name
                                      "PolicyAttributeDescriptions"))
                                    (:shape-name "PolicyDescription"))

(smithy/sdk/shapes:define-list policy-descriptions :member policy-description)

(smithy/sdk/shapes:define-type policy-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list policy-names :member policy-name)

(smithy/sdk/shapes:define-error policy-not-found-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "PolicyNotFoundException")
                                (:error-name "PolicyNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure policy-type-description common-lisp:nil
                                    ((policy-type-name :target-type
                                      policy-type-name :member-name
                                      "PolicyTypeName")
                                     (description :target-type description
                                      :member-name "Description")
                                     (policy-attribute-type-descriptions
                                      :target-type
                                      policy-attribute-type-descriptions
                                      :member-name
                                      "PolicyAttributeTypeDescriptions"))
                                    (:shape-name "PolicyTypeDescription"))

(smithy/sdk/shapes:define-list policy-type-descriptions :member
                               policy-type-description)

(smithy/sdk/shapes:define-type policy-type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list policy-type-names :member policy-type-name)

(smithy/sdk/shapes:define-error policy-type-not-found-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "PolicyTypeNotFoundException")
                                (:error-name "PolicyTypeNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-list ports :member access-point-port)

(smithy/sdk/shapes:define-type protocol smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reason-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-end-points-input common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (instances :target-type instances :required
                                  common-lisp:t :member-name "Instances"))
                                (:shape-name "RegisterEndPointsInput"))

(smithy/sdk/shapes:define-output register-end-points-output common-lisp:nil
                                 ((instances :target-type instances
                                   :member-name "Instances"))
                                 (:shape-name "RegisterEndPointsOutput"))

(smithy/sdk/shapes:define-input remove-availability-zones-input common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (availability-zones :target-type
                                  availability-zones :required common-lisp:t
                                  :member-name "AvailabilityZones"))
                                (:shape-name "RemoveAvailabilityZonesInput"))

(smithy/sdk/shapes:define-output remove-availability-zones-output
                                 common-lisp:nil
                                 ((availability-zones :target-type
                                   availability-zones :member-name
                                   "AvailabilityZones"))
                                 (:shape-name "RemoveAvailabilityZonesOutput"))

(smithy/sdk/shapes:define-input remove-tags-input common-lisp:nil
                                ((load-balancer-names :target-type
                                  load-balancer-names :required common-lisp:t
                                  :member-name "LoadBalancerNames")
                                 (tags :target-type tag-key-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "RemoveTagsInput"))

(smithy/sdk/shapes:define-output remove-tags-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RemoveTagsOutput"))

(smithy/sdk/shapes:define-type s3bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sslcertificate-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-owner-alias
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-groups :member security-group-id)

(smithy/sdk/shapes:define-input set-load-balancer-listener-sslcertificate-input
                                common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (load-balancer-port :target-type
                                  access-point-port :required common-lisp:t
                                  :member-name "LoadBalancerPort")
                                 (sslcertificate-id :target-type
                                  sslcertificate-id :required common-lisp:t
                                  :member-name "SSLCertificateId"))
                                (:shape-name
                                 "SetLoadBalancerListenerSSLCertificateInput"))

(smithy/sdk/shapes:define-output
 set-load-balancer-listener-sslcertificate-output common-lisp:nil
 common-lisp:nil (:shape-name "SetLoadBalancerListenerSSLCertificateOutput"))

(smithy/sdk/shapes:define-input
 set-load-balancer-policies-for-backend-server-input common-lisp:nil
 ((load-balancer-name :target-type access-point-name :required common-lisp:t
   :member-name "LoadBalancerName")
  (instance-port :target-type end-point-port :required common-lisp:t
   :member-name "InstancePort")
  (policy-names :target-type policy-names :required common-lisp:t :member-name
   "PolicyNames"))
 (:shape-name "SetLoadBalancerPoliciesForBackendServerInput"))

(smithy/sdk/shapes:define-output
 set-load-balancer-policies-for-backend-server-output common-lisp:nil
 common-lisp:nil (:shape-name "SetLoadBalancerPoliciesForBackendServerOutput"))

(smithy/sdk/shapes:define-input set-load-balancer-policies-of-listener-input
                                common-lisp:nil
                                ((load-balancer-name :target-type
                                  access-point-name :required common-lisp:t
                                  :member-name "LoadBalancerName")
                                 (load-balancer-port :target-type
                                  access-point-port :required common-lisp:t
                                  :member-name "LoadBalancerPort")
                                 (policy-names :target-type policy-names
                                  :required common-lisp:t :member-name
                                  "PolicyNames"))
                                (:shape-name
                                 "SetLoadBalancerPoliciesOfListenerInput"))

(smithy/sdk/shapes:define-output set-load-balancer-policies-of-listener-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "SetLoadBalancerPoliciesOfListenerOutput"))

(smithy/sdk/shapes:define-structure source-security-group common-lisp:nil
                                    ((owner-alias :target-type
                                      security-group-owner-alias :member-name
                                      "OwnerAlias")
                                     (group-name :target-type
                                      security-group-name :member-name
                                      "GroupName"))
                                    (:shape-name "SourceSecurityGroup"))

(smithy/sdk/shapes:define-type state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error subnet-not-found-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "SubnetNotFoundException")
                                (:error-name "SubnetNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-list subnets :member subnet-id)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-structure tag-description common-lisp:nil
                                    ((load-balancer-name :target-type
                                      access-point-name :member-name
                                      "LoadBalancerName")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "TagDescription"))

(smithy/sdk/shapes:define-list tag-descriptions :member tag-description)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key-only)

(smithy/sdk/shapes:define-structure tag-key-only common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "Key"))
                                    (:shape-name "TagKeyOnly"))

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-access-points-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TooManyAccessPointsException")
                                (:error-name "TooManyLoadBalancers")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-policies-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TooManyPoliciesException")
                                (:error-name "TooManyPolicies")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TooManyTagsException")
                                (:error-name "TooManyTags") (:error-code 400))

(smithy/sdk/shapes:define-type unhealthy-threshold
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error unsupported-protocol-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "UnsupportedProtocolException")
                                (:error-name "UnsupportedProtocol")
                                (:error-code 400))

(smithy/sdk/shapes:define-type vpcid smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation add-tags :shape-name "AddTags" :input
                                       add-tags-input :output add-tags-output
                                       :errors
                                       (access-point-not-found-exception
                                        duplicate-tag-keys-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation apply-security-groups-to-load-balancer
                                       :shape-name
                                       "ApplySecurityGroupsToLoadBalancer"
                                       :input
                                       apply-security-groups-to-load-balancer-input
                                       :output
                                       apply-security-groups-to-load-balancer-output
                                       :errors
                                       (access-point-not-found-exception
                                        invalid-configuration-request-exception
                                        invalid-security-group-exception))

(smithy/sdk/operation:define-operation attach-load-balancer-to-subnets
                                       :shape-name
                                       "AttachLoadBalancerToSubnets" :input
                                       attach-load-balancer-to-subnets-input
                                       :output
                                       attach-load-balancer-to-subnets-output
                                       :errors
                                       (access-point-not-found-exception
                                        invalid-configuration-request-exception
                                        invalid-subnet-exception
                                        subnet-not-found-exception))

(smithy/sdk/operation:define-operation configure-health-check :shape-name
                                       "ConfigureHealthCheck" :input
                                       configure-health-check-input :output
                                       configure-health-check-output :errors
                                       (access-point-not-found-exception))

(smithy/sdk/operation:define-operation create-app-cookie-stickiness-policy
                                       :shape-name
                                       "CreateAppCookieStickinessPolicy" :input
                                       create-app-cookie-stickiness-policy-input
                                       :output
                                       create-app-cookie-stickiness-policy-output
                                       :errors
                                       (access-point-not-found-exception
                                        duplicate-policy-name-exception
                                        invalid-configuration-request-exception
                                        too-many-policies-exception))

(smithy/sdk/operation:define-operation create-lbcookie-stickiness-policy
                                       :shape-name
                                       "CreateLBCookieStickinessPolicy" :input
                                       create-lbcookie-stickiness-policy-input
                                       :output
                                       create-lbcookie-stickiness-policy-output
                                       :errors
                                       (access-point-not-found-exception
                                        duplicate-policy-name-exception
                                        invalid-configuration-request-exception
                                        too-many-policies-exception))

(smithy/sdk/operation:define-operation create-load-balancer :shape-name
                                       "CreateLoadBalancer" :input
                                       create-access-point-input :output
                                       create-access-point-output :errors
                                       (certificate-not-found-exception
                                        duplicate-access-point-name-exception
                                        duplicate-tag-keys-exception
                                        invalid-configuration-request-exception
                                        invalid-scheme-exception
                                        invalid-security-group-exception
                                        invalid-subnet-exception
                                        operation-not-permitted-exception
                                        subnet-not-found-exception
                                        too-many-access-points-exception
                                        too-many-tags-exception
                                        unsupported-protocol-exception))

(smithy/sdk/operation:define-operation create-load-balancer-listeners
                                       :shape-name
                                       "CreateLoadBalancerListeners" :input
                                       create-load-balancer-listener-input
                                       :output
                                       create-load-balancer-listener-output
                                       :errors
                                       (access-point-not-found-exception
                                        certificate-not-found-exception
                                        duplicate-listener-exception
                                        invalid-configuration-request-exception
                                        unsupported-protocol-exception))

(smithy/sdk/operation:define-operation create-load-balancer-policy :shape-name
                                       "CreateLoadBalancerPolicy" :input
                                       create-load-balancer-policy-input
                                       :output
                                       create-load-balancer-policy-output
                                       :errors
                                       (access-point-not-found-exception
                                        duplicate-policy-name-exception
                                        invalid-configuration-request-exception
                                        policy-type-not-found-exception
                                        too-many-policies-exception))

(smithy/sdk/operation:define-operation delete-load-balancer :shape-name
                                       "DeleteLoadBalancer" :input
                                       delete-access-point-input :output
                                       delete-access-point-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation delete-load-balancer-listeners
                                       :shape-name
                                       "DeleteLoadBalancerListeners" :input
                                       delete-load-balancer-listener-input
                                       :output
                                       delete-load-balancer-listener-output
                                       :errors
                                       (access-point-not-found-exception))

(smithy/sdk/operation:define-operation delete-load-balancer-policy :shape-name
                                       "DeleteLoadBalancerPolicy" :input
                                       delete-load-balancer-policy-input
                                       :output
                                       delete-load-balancer-policy-output
                                       :errors
                                       (access-point-not-found-exception
                                        invalid-configuration-request-exception))

(smithy/sdk/operation:define-operation deregister-instances-from-load-balancer
                                       :shape-name
                                       "DeregisterInstancesFromLoadBalancer"
                                       :input deregister-end-points-input
                                       :output deregister-end-points-output
                                       :errors
                                       (access-point-not-found-exception
                                        invalid-end-point-exception))

(smithy/sdk/operation:define-operation describe-account-limits :shape-name
                                       "DescribeAccountLimits" :input
                                       describe-account-limits-input :output
                                       describe-account-limits-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-instance-health :shape-name
                                       "DescribeInstanceHealth" :input
                                       describe-end-point-state-input :output
                                       describe-end-point-state-output :errors
                                       (access-point-not-found-exception
                                        invalid-end-point-exception))

(smithy/sdk/operation:define-operation describe-load-balancer-attributes
                                       :shape-name
                                       "DescribeLoadBalancerAttributes" :input
                                       describe-load-balancer-attributes-input
                                       :output
                                       describe-load-balancer-attributes-output
                                       :errors
                                       (access-point-not-found-exception
                                        load-balancer-attribute-not-found-exception))

(smithy/sdk/operation:define-operation describe-load-balancer-policies
                                       :shape-name
                                       "DescribeLoadBalancerPolicies" :input
                                       describe-load-balancer-policies-input
                                       :output
                                       describe-load-balancer-policies-output
                                       :errors
                                       (access-point-not-found-exception
                                        policy-not-found-exception))

(smithy/sdk/operation:define-operation describe-load-balancer-policy-types
                                       :shape-name
                                       "DescribeLoadBalancerPolicyTypes" :input
                                       describe-load-balancer-policy-types-input
                                       :output
                                       describe-load-balancer-policy-types-output
                                       :errors
                                       (policy-type-not-found-exception))

(smithy/sdk/operation:define-operation describe-load-balancers :shape-name
                                       "DescribeLoadBalancers" :input
                                       describe-access-points-input :output
                                       describe-access-points-output :errors
                                       (access-point-not-found-exception
                                        dependency-throttle-exception))

(smithy/sdk/operation:define-operation describe-tags :shape-name "DescribeTags"
                                       :input describe-tags-input :output
                                       describe-tags-output :errors
                                       (access-point-not-found-exception))

(smithy/sdk/operation:define-operation detach-load-balancer-from-subnets
                                       :shape-name
                                       "DetachLoadBalancerFromSubnets" :input
                                       detach-load-balancer-from-subnets-input
                                       :output
                                       detach-load-balancer-from-subnets-output
                                       :errors
                                       (access-point-not-found-exception
                                        invalid-configuration-request-exception))

(smithy/sdk/operation:define-operation
 disable-availability-zones-for-load-balancer :shape-name
 "DisableAvailabilityZonesForLoadBalancer" :input
 remove-availability-zones-input :output remove-availability-zones-output
 :errors
 (access-point-not-found-exception invalid-configuration-request-exception))

(smithy/sdk/operation:define-operation
 enable-availability-zones-for-load-balancer :shape-name
 "EnableAvailabilityZonesForLoadBalancer" :input add-availability-zones-input
 :output add-availability-zones-output :errors
 (access-point-not-found-exception))

(smithy/sdk/operation:define-operation modify-load-balancer-attributes
                                       :shape-name
                                       "ModifyLoadBalancerAttributes" :input
                                       modify-load-balancer-attributes-input
                                       :output
                                       modify-load-balancer-attributes-output
                                       :errors
                                       (access-point-not-found-exception
                                        invalid-configuration-request-exception
                                        load-balancer-attribute-not-found-exception))

(smithy/sdk/operation:define-operation register-instances-with-load-balancer
                                       :shape-name
                                       "RegisterInstancesWithLoadBalancer"
                                       :input register-end-points-input :output
                                       register-end-points-output :errors
                                       (access-point-not-found-exception
                                        invalid-end-point-exception))

(smithy/sdk/operation:define-operation remove-tags :shape-name "RemoveTags"
                                       :input remove-tags-input :output
                                       remove-tags-output :errors
                                       (access-point-not-found-exception))

(smithy/sdk/operation:define-operation
 set-load-balancer-listener-sslcertificate :shape-name
 "SetLoadBalancerListenerSSLCertificate" :input
 set-load-balancer-listener-sslcertificate-input :output
 set-load-balancer-listener-sslcertificate-output :errors
 (access-point-not-found-exception certificate-not-found-exception
  invalid-configuration-request-exception listener-not-found-exception
  unsupported-protocol-exception))

(smithy/sdk/operation:define-operation
 set-load-balancer-policies-for-backend-server :shape-name
 "SetLoadBalancerPoliciesForBackendServer" :input
 set-load-balancer-policies-for-backend-server-input :output
 set-load-balancer-policies-for-backend-server-output :errors
 (access-point-not-found-exception invalid-configuration-request-exception
  policy-not-found-exception))

(smithy/sdk/operation:define-operation set-load-balancer-policies-of-listener
                                       :shape-name
                                       "SetLoadBalancerPoliciesOfListener"
                                       :input
                                       set-load-balancer-policies-of-listener-input
                                       :output
                                       set-load-balancer-policies-of-listener-output
                                       :errors
                                       (access-point-not-found-exception
                                        invalid-configuration-request-exception
                                        listener-not-found-exception
                                        policy-not-found-exception))
