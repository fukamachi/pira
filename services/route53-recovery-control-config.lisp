(uiop/package:define-package #:pira/route53-recovery-control-config (:use)
                             (:export #:assertion-rule #:assertion-rule-update
                              #:cluster #:cluster-endpoint #:control-panel
                              #:create-cluster #:create-control-panel
                              #:create-routing-control #:create-safety-rule
                              #:delete-cluster #:delete-control-panel
                              #:delete-routing-control #:delete-safety-rule
                              #:describe-cluster #:describe-control-panel
                              #:describe-routing-control #:describe-safety-rule
                              #:gating-rule #:gating-rule-update
                              #:get-resource-policy
                              #:list-associated-route53health-checks
                              #:list-clusters #:list-control-panels
                              #:list-routing-controls #:list-safety-rules
                              #:list-tags-for-resource #:max-results
                              #:network-type #:new-assertion-rule
                              #:new-gating-rule
                              #:route53recovery-control-config
                              #:routing-control #:rule #:rule-config
                              #:rule-type #:status #:tag-resource
                              #:untag-resource #:update-cluster
                              #:update-control-panel #:update-routing-control
                              #:update-safety-rule #:boolean #:integer
                              #:list-of-cluster #:list-of-cluster-endpoint
                              #:list-of-control-panel #:list-of-routing-control
                              #:list-of-rule #:list-of-string
                              #:list-of-string-max36pattern-s
                              #:list-of-string-min1max256pattern-aza-z09
                              #:map-of-string-min0max256pattern-s #:policy
                              #:string #:string-max36pattern-s
                              #:string-min0max256pattern-s
                              #:string-min12max12pattern-d12
                              #:string-min1max128pattern-aza-z09
                              #:string-min1max256pattern-aza-z09
                              #:string-min1max32pattern-s
                              #:string-min1max64pattern-s
                              #:string-min1max8096pattern-s))
(common-lisp:in-package #:pira/route53-recovery-control-config)

(smithy/sdk/service:define-service route53recovery-control-config :shape-name
                                   "Route53RecoveryControlConfig" :version
                                   "2020-11-02" :title
                                   "AWS Route53 Recovery Control Config"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "Route53 Recovery Control Config")
                                      ("arnNamespace"
                                       . "route53-recovery-control-config")
                                      ("cloudFormationName"
                                       . "Route53RecoveryControlConfig")
                                      ("cloudTrailEventSource"
                                       . "route53recoverycontrolconfig.amazonaws.com")
                                      ("endpointPrefix"
                                       . "route53-recovery-control-config"))
                                     ("aws.auth#sigv4"
                                      ("name"
                                       . "route53-recovery-control-config"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure assertion-rule common-lisp:nil
                                    ((asserted-controls :target-type
                                      list-of-string-min1max256pattern-aza-z09
                                      :required common-lisp:t :member-name
                                      "AssertedControls")
                                     (control-panel-arn :target-type
                                      string-min1max256pattern-aza-z09
                                      :required common-lisp:t :member-name
                                      "ControlPanelArn")
                                     (name :target-type
                                      string-min1max64pattern-s :required
                                      common-lisp:t :member-name "Name")
                                     (rule-config :target-type rule-config
                                      :required common-lisp:t :member-name
                                      "RuleConfig")
                                     (safety-rule-arn :target-type
                                      string-min1max256pattern-aza-z09
                                      :required common-lisp:t :member-name
                                      "SafetyRuleArn")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "Status")
                                     (wait-period-ms :target-type integer
                                      :required common-lisp:t :member-name
                                      "WaitPeriodMs")
                                     (owner :target-type
                                      string-min12max12pattern-d12 :member-name
                                      "Owner"))
                                    (:shape-name "AssertionRule"))

(smithy/sdk/shapes:define-structure assertion-rule-update common-lisp:nil
                                    ((name :target-type
                                      string-min1max64pattern-s :required
                                      common-lisp:t :member-name "Name")
                                     (safety-rule-arn :target-type
                                      string-min1max256pattern-aza-z09
                                      :required common-lisp:t :member-name
                                      "SafetyRuleArn")
                                     (wait-period-ms :target-type integer
                                      :required common-lisp:t :member-name
                                      "WaitPeriodMs"))
                                    (:shape-name "AssertionRuleUpdate"))

(smithy/sdk/shapes:define-structure cluster common-lisp:nil
                                    ((cluster-arn :target-type
                                      string-min1max256pattern-aza-z09
                                      :member-name "ClusterArn")
                                     (cluster-endpoints :target-type
                                      list-of-cluster-endpoint :member-name
                                      "ClusterEndpoints")
                                     (name :target-type
                                      string-min1max64pattern-s :member-name
                                      "Name")
                                     (status :target-type status :member-name
                                      "Status")
                                     (owner :target-type
                                      string-min12max12pattern-d12 :member-name
                                      "Owner")
                                     (network-type :target-type network-type
                                      :member-name "NetworkType"))
                                    (:shape-name "Cluster"))

(smithy/sdk/shapes:define-structure cluster-endpoint common-lisp:nil
                                    ((endpoint :target-type
                                      string-min1max128pattern-aza-z09
                                      :member-name "Endpoint")
                                     (region :target-type
                                      string-min1max32pattern-s :member-name
                                      "Region"))
                                    (:shape-name "ClusterEndpoint"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure control-panel common-lisp:nil
                                    ((cluster-arn :target-type
                                      string-min1max256pattern-aza-z09
                                      :member-name "ClusterArn")
                                     (control-panel-arn :target-type
                                      string-min1max256pattern-aza-z09
                                      :member-name "ControlPanelArn")
                                     (default-control-panel :target-type
                                      boolean :member-name
                                      "DefaultControlPanel")
                                     (name :target-type
                                      string-min1max64pattern-s :member-name
                                      "Name")
                                     (routing-control-count :target-type
                                      integer :member-name
                                      "RoutingControlCount")
                                     (status :target-type status :member-name
                                      "Status")
                                     (owner :target-type
                                      string-min12max12pattern-d12 :member-name
                                      "Owner"))
                                    (:shape-name "ControlPanel"))

(smithy/sdk/shapes:define-input create-cluster-request common-lisp:nil
                                ((client-token :target-type
                                  string-min1max64pattern-s :member-name
                                  "ClientToken")
                                 (cluster-name :target-type
                                  string-min1max64pattern-s :required
                                  common-lisp:t :member-name "ClusterName")
                                 (tags :target-type
                                  map-of-string-min0max256pattern-s
                                  :member-name "Tags")
                                 (network-type :target-type network-type
                                  :member-name "NetworkType"))
                                (:shape-name "CreateClusterRequest"))

(smithy/sdk/shapes:define-output create-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "CreateClusterResponse"))

(smithy/sdk/shapes:define-input create-control-panel-request common-lisp:nil
                                ((client-token :target-type
                                  string-min1max64pattern-s :member-name
                                  "ClientToken")
                                 (cluster-arn :target-type
                                  string-min1max256pattern-aza-z09 :required
                                  common-lisp:t :member-name "ClusterArn")
                                 (control-panel-name :target-type
                                  string-min1max64pattern-s :required
                                  common-lisp:t :member-name
                                  "ControlPanelName")
                                 (tags :target-type
                                  map-of-string-min0max256pattern-s
                                  :member-name "Tags"))
                                (:shape-name "CreateControlPanelRequest"))

(smithy/sdk/shapes:define-output create-control-panel-response common-lisp:nil
                                 ((control-panel :target-type control-panel
                                   :member-name "ControlPanel"))
                                 (:shape-name "CreateControlPanelResponse"))

(smithy/sdk/shapes:define-input create-routing-control-request common-lisp:nil
                                ((client-token :target-type
                                  string-min1max64pattern-s :member-name
                                  "ClientToken")
                                 (cluster-arn :target-type
                                  string-min1max256pattern-aza-z09 :required
                                  common-lisp:t :member-name "ClusterArn")
                                 (control-panel-arn :target-type
                                  string-min1max256pattern-aza-z09 :member-name
                                  "ControlPanelArn")
                                 (routing-control-name :target-type
                                  string-min1max64pattern-s :required
                                  common-lisp:t :member-name
                                  "RoutingControlName"))
                                (:shape-name "CreateRoutingControlRequest"))

(smithy/sdk/shapes:define-output create-routing-control-response
                                 common-lisp:nil
                                 ((routing-control :target-type routing-control
                                   :member-name "RoutingControl"))
                                 (:shape-name "CreateRoutingControlResponse"))

(smithy/sdk/shapes:define-input create-safety-rule-request common-lisp:nil
                                ((assertion-rule :target-type
                                  new-assertion-rule :member-name
                                  "AssertionRule")
                                 (client-token :target-type
                                  string-min1max64pattern-s :member-name
                                  "ClientToken")
                                 (gating-rule :target-type new-gating-rule
                                  :member-name "GatingRule")
                                 (tags :target-type
                                  map-of-string-min0max256pattern-s
                                  :member-name "Tags"))
                                (:shape-name "CreateSafetyRuleRequest"))

(smithy/sdk/shapes:define-output create-safety-rule-response common-lisp:nil
                                 ((assertion-rule :target-type assertion-rule
                                   :member-name "AssertionRule")
                                  (gating-rule :target-type gating-rule
                                   :member-name "GatingRule"))
                                 (:shape-name "CreateSafetyRuleResponse"))

(smithy/sdk/shapes:define-input delete-cluster-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteClusterRequest"))

(smithy/sdk/shapes:define-output delete-cluster-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteClusterResponse"))

(smithy/sdk/shapes:define-input delete-control-panel-request common-lisp:nil
                                ((control-panel-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ControlPanelArn" :http-label common-lisp:t))
                                (:shape-name "DeleteControlPanelRequest"))

(smithy/sdk/shapes:define-output delete-control-panel-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteControlPanelResponse"))

(smithy/sdk/shapes:define-input delete-routing-control-request common-lisp:nil
                                ((routing-control-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "RoutingControlArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteRoutingControlRequest"))

(smithy/sdk/shapes:define-output delete-routing-control-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteRoutingControlResponse"))

(smithy/sdk/shapes:define-input delete-safety-rule-request common-lisp:nil
                                ((safety-rule-arn :target-type string :required
                                  common-lisp:t :member-name "SafetyRuleArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSafetyRuleRequest"))

(smithy/sdk/shapes:define-output delete-safety-rule-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteSafetyRuleResponse"))

(smithy/sdk/shapes:define-input describe-cluster-request common-lisp:nil
                                ((cluster-arn :target-type string :required
                                  common-lisp:t :member-name "ClusterArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeClusterRequest"))

(smithy/sdk/shapes:define-output describe-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "DescribeClusterResponse"))

(smithy/sdk/shapes:define-input describe-control-panel-request common-lisp:nil
                                ((control-panel-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ControlPanelArn" :http-label common-lisp:t))
                                (:shape-name "DescribeControlPanelRequest"))

(smithy/sdk/shapes:define-output describe-control-panel-response
                                 common-lisp:nil
                                 ((control-panel :target-type control-panel
                                   :member-name "ControlPanel"))
                                 (:shape-name "DescribeControlPanelResponse"))

(smithy/sdk/shapes:define-input describe-routing-control-request
                                common-lisp:nil
                                ((routing-control-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "RoutingControlArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DescribeRoutingControlRequest"))

(smithy/sdk/shapes:define-output describe-routing-control-response
                                 common-lisp:nil
                                 ((routing-control :target-type routing-control
                                   :member-name "RoutingControl"))
                                 (:shape-name "DescribeRoutingControlResponse"))

(smithy/sdk/shapes:define-input describe-safety-rule-request common-lisp:nil
                                ((safety-rule-arn :target-type string :required
                                  common-lisp:t :member-name "SafetyRuleArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeSafetyRuleRequest"))

(smithy/sdk/shapes:define-output describe-safety-rule-response common-lisp:nil
                                 ((assertion-rule :target-type assertion-rule
                                   :member-name "AssertionRule")
                                  (gating-rule :target-type gating-rule
                                   :member-name "GatingRule"))
                                 (:shape-name "DescribeSafetyRuleResponse"))

(smithy/sdk/shapes:define-structure gating-rule common-lisp:nil
                                    ((control-panel-arn :target-type
                                      string-min1max256pattern-aza-z09
                                      :required common-lisp:t :member-name
                                      "ControlPanelArn")
                                     (gating-controls :target-type
                                      list-of-string-min1max256pattern-aza-z09
                                      :required common-lisp:t :member-name
                                      "GatingControls")
                                     (name :target-type
                                      string-min1max64pattern-s :required
                                      common-lisp:t :member-name "Name")
                                     (rule-config :target-type rule-config
                                      :required common-lisp:t :member-name
                                      "RuleConfig")
                                     (safety-rule-arn :target-type
                                      string-min1max256pattern-aza-z09
                                      :required common-lisp:t :member-name
                                      "SafetyRuleArn")
                                     (status :target-type status :required
                                      common-lisp:t :member-name "Status")
                                     (target-controls :target-type
                                      list-of-string-min1max256pattern-aza-z09
                                      :required common-lisp:t :member-name
                                      "TargetControls")
                                     (wait-period-ms :target-type integer
                                      :required common-lisp:t :member-name
                                      "WaitPeriodMs")
                                     (owner :target-type
                                      string-min12max12pattern-d12 :member-name
                                      "Owner"))
                                    (:shape-name "GatingRule"))

(smithy/sdk/shapes:define-structure gating-rule-update common-lisp:nil
                                    ((name :target-type
                                      string-min1max64pattern-s :required
                                      common-lisp:t :member-name "Name")
                                     (safety-rule-arn :target-type
                                      string-min1max256pattern-aza-z09
                                      :required common-lisp:t :member-name
                                      "SafetyRuleArn")
                                     (wait-period-ms :target-type integer
                                      :required common-lisp:t :member-name
                                      "WaitPeriodMs"))
                                    (:shape-name "GatingRuleUpdate"))

(smithy/sdk/shapes:define-input get-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetResourcePolicyRequest"))

(smithy/sdk/shapes:define-output get-resource-policy-response common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "Policy"))
                                 (:shape-name "GetResourcePolicyResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-associated-route53health-checks-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken")
                                 (routing-control-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "RoutingControlArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "ListAssociatedRoute53HealthChecksRequest"))

(smithy/sdk/shapes:define-output list-associated-route53health-checks-response
                                 common-lisp:nil
                                 ((health-check-ids :target-type
                                   list-of-string-max36pattern-s :member-name
                                   "HealthCheckIds")
                                  (next-token :target-type
                                   string-min1max8096pattern-s :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListAssociatedRoute53HealthChecksResponse"))

(smithy/sdk/shapes:define-input list-clusters-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListClustersRequest"))

(smithy/sdk/shapes:define-output list-clusters-response common-lisp:nil
                                 ((clusters :target-type list-of-cluster
                                   :member-name "Clusters")
                                  (next-token :target-type
                                   string-min1max8096pattern-s :member-name
                                   "NextToken"))
                                 (:shape-name "ListClustersResponse"))

(smithy/sdk/shapes:define-input list-control-panels-request common-lisp:nil
                                ((cluster-arn :target-type string :member-name
                                  "ClusterArn" :http-query "ClusterArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListControlPanelsRequest"))

(smithy/sdk/shapes:define-output list-control-panels-response common-lisp:nil
                                 ((control-panels :target-type
                                   list-of-control-panel :member-name
                                   "ControlPanels")
                                  (next-token :target-type
                                   string-min1max8096pattern-s :member-name
                                   "NextToken"))
                                 (:shape-name "ListControlPanelsResponse"))

(smithy/sdk/shapes:define-input list-routing-controls-request common-lisp:nil
                                ((control-panel-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ControlPanelArn" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListRoutingControlsRequest"))

(smithy/sdk/shapes:define-output list-routing-controls-response common-lisp:nil
                                 ((next-token :target-type
                                   string-min1max8096pattern-s :member-name
                                   "NextToken")
                                  (routing-controls :target-type
                                   list-of-routing-control :member-name
                                   "RoutingControls"))
                                 (:shape-name "ListRoutingControlsResponse"))

(smithy/sdk/shapes:define-input list-safety-rules-request common-lisp:nil
                                ((control-panel-arn :target-type string
                                  :required common-lisp:t :member-name
                                  "ControlPanelArn" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListSafetyRulesRequest"))

(smithy/sdk/shapes:define-output list-safety-rules-response common-lisp:nil
                                 ((next-token :target-type
                                   string-min1max8096pattern-s :member-name
                                   "NextToken")
                                  (safety-rules :target-type list-of-rule
                                   :member-name "SafetyRules"))
                                 (:shape-name "ListSafetyRulesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type
                                   map-of-string-min0max256pattern-s
                                   :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum network-type
    common-lisp:nil
  (:ipv4 "IPV4")
  (:dualstack "DUALSTACK"))

(smithy/sdk/shapes:define-structure new-assertion-rule common-lisp:nil
                                    ((asserted-controls :target-type
                                      list-of-string-min1max256pattern-aza-z09
                                      :required common-lisp:t :member-name
                                      "AssertedControls")
                                     (control-panel-arn :target-type
                                      string-min1max256pattern-aza-z09
                                      :required common-lisp:t :member-name
                                      "ControlPanelArn")
                                     (name :target-type
                                      string-min1max64pattern-s :required
                                      common-lisp:t :member-name "Name")
                                     (rule-config :target-type rule-config
                                      :required common-lisp:t :member-name
                                      "RuleConfig")
                                     (wait-period-ms :target-type integer
                                      :required common-lisp:t :member-name
                                      "WaitPeriodMs"))
                                    (:shape-name "NewAssertionRule"))

(smithy/sdk/shapes:define-structure new-gating-rule common-lisp:nil
                                    ((control-panel-arn :target-type
                                      string-min1max256pattern-aza-z09
                                      :required common-lisp:t :member-name
                                      "ControlPanelArn")
                                     (gating-controls :target-type
                                      list-of-string-min1max256pattern-aza-z09
                                      :required common-lisp:t :member-name
                                      "GatingControls")
                                     (name :target-type
                                      string-min1max64pattern-s :required
                                      common-lisp:t :member-name "Name")
                                     (rule-config :target-type rule-config
                                      :required common-lisp:t :member-name
                                      "RuleConfig")
                                     (target-controls :target-type
                                      list-of-string-min1max256pattern-aza-z09
                                      :required common-lisp:t :member-name
                                      "TargetControls")
                                     (wait-period-ms :target-type integer
                                      :required common-lisp:t :member-name
                                      "WaitPeriodMs"))
                                    (:shape-name "NewGatingRule"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure routing-control common-lisp:nil
                                    ((control-panel-arn :target-type
                                      string-min1max256pattern-aza-z09
                                      :member-name "ControlPanelArn")
                                     (name :target-type
                                      string-min1max64pattern-s :member-name
                                      "Name")
                                     (routing-control-arn :target-type
                                      string-min1max256pattern-aza-z09
                                      :member-name "RoutingControlArn")
                                     (status :target-type status :member-name
                                      "Status")
                                     (owner :target-type
                                      string-min12max12pattern-d12 :member-name
                                      "Owner"))
                                    (:shape-name "RoutingControl"))

(smithy/sdk/shapes:define-structure rule common-lisp:nil
                                    ((assertion :target-type assertion-rule
                                      :member-name "ASSERTION")
                                     (gating :target-type gating-rule
                                      :member-name "GATING"))
                                    (:shape-name "Rule"))

(smithy/sdk/shapes:define-structure rule-config common-lisp:nil
                                    ((inverted :target-type boolean :required
                                      common-lisp:t :member-name "Inverted")
                                     (threshold :target-type integer :required
                                      common-lisp:t :member-name "Threshold")
                                     (type :target-type rule-type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "RuleConfig"))

(smithy/sdk/shapes:define-enum rule-type
    common-lisp:nil
  (:atleast "ATLEAST")
  (:and "AND")
  (:or "OR"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:pending "PENDING")
  (:deployed "DEPLOYED")
  (:pending-deletion "PENDING_DELETION"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type
                                  map-of-string-min0max256pattern-s :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "TagKeys" :http-query "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-cluster-request common-lisp:nil
                                ((cluster-arn :target-type
                                  string-min1max256pattern-aza-z09 :required
                                  common-lisp:t :member-name "ClusterArn")
                                 (network-type :target-type network-type
                                  :required common-lisp:t :member-name
                                  "NetworkType"))
                                (:shape-name "UpdateClusterRequest"))

(smithy/sdk/shapes:define-output update-cluster-response common-lisp:nil
                                 ((cluster :target-type cluster :member-name
                                   "Cluster"))
                                 (:shape-name "UpdateClusterResponse"))

(smithy/sdk/shapes:define-input update-control-panel-request common-lisp:nil
                                ((control-panel-arn :target-type
                                  string-min1max256pattern-aza-z09 :required
                                  common-lisp:t :member-name "ControlPanelArn")
                                 (control-panel-name :target-type
                                  string-min1max64pattern-s :required
                                  common-lisp:t :member-name
                                  "ControlPanelName"))
                                (:shape-name "UpdateControlPanelRequest"))

(smithy/sdk/shapes:define-output update-control-panel-response common-lisp:nil
                                 ((control-panel :target-type control-panel
                                   :member-name "ControlPanel"))
                                 (:shape-name "UpdateControlPanelResponse"))

(smithy/sdk/shapes:define-input update-routing-control-request common-lisp:nil
                                ((routing-control-arn :target-type
                                  string-min1max256pattern-aza-z09 :required
                                  common-lisp:t :member-name
                                  "RoutingControlArn")
                                 (routing-control-name :target-type
                                  string-min1max64pattern-s :required
                                  common-lisp:t :member-name
                                  "RoutingControlName"))
                                (:shape-name "UpdateRoutingControlRequest"))

(smithy/sdk/shapes:define-output update-routing-control-response
                                 common-lisp:nil
                                 ((routing-control :target-type routing-control
                                   :member-name "RoutingControl"))
                                 (:shape-name "UpdateRoutingControlResponse"))

(smithy/sdk/shapes:define-input update-safety-rule-request common-lisp:nil
                                ((assertion-rule-update :target-type
                                  assertion-rule-update :member-name
                                  "AssertionRuleUpdate")
                                 (gating-rule-update :target-type
                                  gating-rule-update :member-name
                                  "GatingRuleUpdate"))
                                (:shape-name "UpdateSafetyRuleRequest"))

(smithy/sdk/shapes:define-output update-safety-rule-response common-lisp:nil
                                 ((assertion-rule :target-type assertion-rule
                                   :member-name "AssertionRule")
                                  (gating-rule :target-type gating-rule
                                   :member-name "GatingRule"))
                                 (:shape-name "UpdateSafetyRuleResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"
                                  :json-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-cluster :member cluster)

(smithy/sdk/shapes:define-list list-of-cluster-endpoint :member
                               cluster-endpoint)

(smithy/sdk/shapes:define-list list-of-control-panel :member control-panel)

(smithy/sdk/shapes:define-list list-of-routing-control :member routing-control)

(smithy/sdk/shapes:define-list list-of-rule :member rule)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-list list-of-string-max36pattern-s :member
                               string-max36pattern-s)

(smithy/sdk/shapes:define-list list-of-string-min1max256pattern-aza-z09 :member
                               string-min1max256pattern-aza-z09)

(smithy/sdk/shapes:define-map map-of-string-min0max256pattern-s :key string
                              :value string-min0max256pattern-s)

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-max36pattern-s
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min0max256pattern-s
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min12max12pattern-d12
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max128pattern-aza-z09
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max256pattern-aza-z09
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max32pattern-s
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max64pattern-s
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-min1max8096pattern-s
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-cluster :shape-name
                                       "CreateCluster" :input
                                       create-cluster-request :output
                                       create-cluster-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/cluster" :code 200)

(smithy/sdk/operation:define-operation create-control-panel :shape-name
                                       "CreateControlPanel" :input
                                       create-control-panel-request :output
                                       create-control-panel-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/controlpanel"
                                       :code 200)

(smithy/sdk/operation:define-operation create-routing-control :shape-name
                                       "CreateRoutingControl" :input
                                       create-routing-control-request :output
                                       create-routing-control-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/routingcontrol"
                                       :code 200)

(smithy/sdk/operation:define-operation create-safety-rule :shape-name
                                       "CreateSafetyRule" :input
                                       create-safety-rule-request :output
                                       create-safety-rule-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/safetyrule" :code
                                       200)

(smithy/sdk/operation:define-operation delete-cluster :shape-name
                                       "DeleteCluster" :input
                                       delete-cluster-request :output
                                       delete-cluster-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/cluster/{ClusterArn}" :code 200)

(smithy/sdk/operation:define-operation delete-control-panel :shape-name
                                       "DeleteControlPanel" :input
                                       delete-control-panel-request :output
                                       delete-control-panel-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/controlpanel/{ControlPanelArn}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-routing-control :shape-name
                                       "DeleteRoutingControl" :input
                                       delete-routing-control-request :output
                                       delete-routing-control-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/routingcontrol/{RoutingControlArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-safety-rule :shape-name
                                       "DeleteSafetyRule" :input
                                       delete-safety-rule-request :output
                                       delete-safety-rule-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/safetyrule/{SafetyRuleArn}" :code 200)

(smithy/sdk/operation:define-operation describe-cluster :shape-name
                                       "DescribeCluster" :input
                                       describe-cluster-request :output
                                       describe-cluster-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/cluster/{ClusterArn}" :code 200)

(smithy/sdk/operation:define-operation describe-control-panel :shape-name
                                       "DescribeControlPanel" :input
                                       describe-control-panel-request :output
                                       describe-control-panel-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/controlpanel/{ControlPanelArn}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-routing-control :shape-name
                                       "DescribeRoutingControl" :input
                                       describe-routing-control-request :output
                                       describe-routing-control-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/routingcontrol/{RoutingControlArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-safety-rule :shape-name
                                       "DescribeSafetyRule" :input
                                       describe-safety-rule-request :output
                                       describe-safety-rule-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/safetyrule/{SafetyRuleArn}" :code 200)

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-request :output
                                       get-resource-policy-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/resourcePolicy/{ResourceArn}" :code
                                       200)

(smithy/sdk/operation:define-operation list-associated-route53health-checks
                                       :shape-name
                                       "ListAssociatedRoute53HealthChecks"
                                       :input
                                       list-associated-route53health-checks-request
                                       :output
                                       list-associated-route53health-checks-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/routingcontrol/{RoutingControlArn}/associatedRoute53HealthChecks"
                                       :code 200)

(smithy/sdk/operation:define-operation list-clusters :shape-name "ListClusters"
                                       :input list-clusters-request :output
                                       list-clusters-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/cluster" :code 200)

(smithy/sdk/operation:define-operation list-control-panels :shape-name
                                       "ListControlPanels" :input
                                       list-control-panels-request :output
                                       list-control-panels-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/controlpanels"
                                       :code 200)

(smithy/sdk/operation:define-operation list-routing-controls :shape-name
                                       "ListRoutingControls" :input
                                       list-routing-controls-request :output
                                       list-routing-controls-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/controlpanel/{ControlPanelArn}/routingcontrols"
                                       :code 200)

(smithy/sdk/operation:define-operation list-safety-rules :shape-name
                                       "ListSafetyRules" :input
                                       list-safety-rules-request :output
                                       list-safety-rules-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/controlpanel/{ControlPanelArn}/safetyrules"
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

(smithy/sdk/operation:define-operation update-cluster :shape-name
                                       "UpdateCluster" :input
                                       update-cluster-request :output
                                       update-cluster-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/cluster" :code 200)

(smithy/sdk/operation:define-operation update-control-panel :shape-name
                                       "UpdateControlPanel" :input
                                       update-control-panel-request :output
                                       update-control-panel-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/controlpanel" :code
                                       200)

(smithy/sdk/operation:define-operation update-routing-control :shape-name
                                       "UpdateRoutingControl" :input
                                       update-routing-control-request :output
                                       update-routing-control-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/routingcontrol"
                                       :code 200)

(smithy/sdk/operation:define-operation update-safety-rule :shape-name
                                       "UpdateSafetyRule" :input
                                       update-safety-rule-request :output
                                       update-safety-rule-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri "/safetyrule" :code
                                       200)
