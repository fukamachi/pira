(uiop/package:define-package #:pira/launch-wizard (:use)
                             (:export #:allowed-values #:create-deployment
                              #:delete-deployment #:deployment
                              #:deployment-conditional-field #:deployment-data
                              #:deployment-data-summary
                              #:deployment-data-summary-list #:deployment-event
                              #:deployment-event-data-summary
                              #:deployment-event-data-summary-list
                              #:deployment-filter #:deployment-filter-key
                              #:deployment-filter-list
                              #:deployment-filter-values #:deployment-id
                              #:deployment-name #:deployment-pattern-name
                              #:deployment-specifications
                              #:deployment-specifications-data
                              #:deployment-specifications-field
                              #:deployment-status #:event-id #:event-status
                              #:get-deployment #:get-workload
                              #:get-workload-deployment-pattern #:key-string
                              #:launch-wizard #:list-deployment-events
                              #:list-deployments #:list-tags-for-resource
                              #:list-workload-deployment-patterns
                              #:list-workloads #:max-deployment-event-results
                              #:max-deployment-results
                              #:max-workload-deployment-pattern-results
                              #:max-workload-results #:next-token
                              #:settings-set #:settings-set-name
                              #:specifications-conditional-data #:tag-key
                              #:tag-key-list #:tag-resource #:tag-value #:tags
                              #:untag-resource #:value-string #:workload
                              #:workload-data #:workload-data-summary
                              #:workload-data-summary-list
                              #:workload-deployment-pattern
                              #:workload-deployment-pattern-data
                              #:workload-deployment-pattern-data-summary
                              #:workload-deployment-pattern-data-summary-list
                              #:workload-deployment-pattern-status
                              #:workload-name #:workload-status
                              #:workload-version-name))
(common-lisp:in-package #:pira/launch-wizard)

(smithy/sdk/service:define-service launch-wizard :shape-name "LaunchWizard"
                                   :version "2018-05-10" :title
                                   "AWS Launch Wizard" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Launch Wizard")
                                      ("cloudFormationName" . "LaunchWizard")
                                      ("arnNamespace" . "launchwizard")
                                      ("endpointPrefix" . "launchwizard")
                                      ("cloudTrailEventSource"
                                       . "launchwizard.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "launchwizard"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-list allowed-values :member value-string)

(smithy/sdk/shapes:define-input create-deployment-input common-lisp:nil
                                ((workload-name :target-type workload-name
                                  :required common-lisp:t :member-name
                                  "workloadName")
                                 (deployment-pattern-name :target-type
                                  deployment-pattern-name :required
                                  common-lisp:t :member-name
                                  "deploymentPatternName")
                                 (name :target-type deployment-name :required
                                  common-lisp:t :member-name "name")
                                 (specifications :target-type
                                  deployment-specifications :required
                                  common-lisp:t :member-name "specifications")
                                 (dry-run :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "dryRun")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateDeploymentInput"))

(smithy/sdk/shapes:define-output create-deployment-output common-lisp:nil
                                 ((deployment-id :target-type deployment-id
                                   :member-name "deploymentId"))
                                 (:shape-name "CreateDeploymentOutput"))

(smithy/sdk/shapes:define-input delete-deployment-input common-lisp:nil
                                ((deployment-id :target-type deployment-id
                                  :required common-lisp:t :member-name
                                  "deploymentId"))
                                (:shape-name "DeleteDeploymentInput"))

(smithy/sdk/shapes:define-output delete-deployment-output common-lisp:nil
                                 ((status :target-type deployment-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason"))
                                 (:shape-name "DeleteDeploymentOutput"))

common-lisp:nil

(smithy/sdk/shapes:define-structure deployment-conditional-field
                                    common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value")
                                     (comparator :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "comparator"))
                                    (:shape-name "DeploymentConditionalField"))

(smithy/sdk/shapes:define-structure deployment-data common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (id :target-type deployment-id
                                      :member-name "id")
                                     (workload-name :target-type workload-name
                                      :member-name "workloadName")
                                     (pattern-name :target-type
                                      deployment-pattern-name :member-name
                                      "patternName")
                                     (status :target-type deployment-status
                                      :member-name "status")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt")
                                     (specifications :target-type
                                      deployment-specifications :member-name
                                      "specifications")
                                     (resource-group :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resourceGroup")
                                     (deleted-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "deletedAt")
                                     (tags :target-type tags :member-name
                                      "tags")
                                     (deployment-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "deploymentArn"))
                                    (:shape-name "DeploymentData"))

(smithy/sdk/shapes:define-structure deployment-data-summary common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (id :target-type deployment-id
                                      :member-name "id")
                                     (workload-name :target-type workload-name
                                      :member-name "workloadName")
                                     (pattern-name :target-type
                                      deployment-pattern-name :member-name
                                      "patternName")
                                     (status :target-type deployment-status
                                      :member-name "status")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"))
                                    (:shape-name "DeploymentDataSummary"))

(smithy/sdk/shapes:define-list deployment-data-summary-list :member
                               deployment-data-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure deployment-event-data-summary
                                    common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (status :target-type event-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "timestamp"))
                                    (:shape-name "DeploymentEventDataSummary"))

(smithy/sdk/shapes:define-list deployment-event-data-summary-list :member
                               deployment-event-data-summary)

(smithy/sdk/shapes:define-structure deployment-filter common-lisp:nil
                                    ((name :target-type deployment-filter-key
                                      :member-name "name")
                                     (values :target-type
                                      deployment-filter-values :member-name
                                      "values"))
                                    (:shape-name "DeploymentFilter"))

(smithy/sdk/shapes:define-enum deployment-filter-key
    common-lisp:nil
  (:workload-name "WORKLOAD_NAME")
  (:deployment-status "DEPLOYMENT_STATUS"))

(smithy/sdk/shapes:define-list deployment-filter-list :member deployment-filter)

(smithy/sdk/shapes:define-list deployment-filter-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type deployment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type deployment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type deployment-pattern-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map deployment-specifications :key key-string :value
                              value-string)

(smithy/sdk/shapes:define-list deployment-specifications-data :member
                               deployment-specifications-field)

(smithy/sdk/shapes:define-structure deployment-specifications-field
                                    common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (allowed-values :target-type
                                      allowed-values :member-name
                                      "allowedValues")
                                     (required :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "required")
                                     (conditionals :target-type
                                      specifications-conditional-data
                                      :member-name "conditionals"))
                                    (:shape-name
                                     "DeploymentSpecificationsField"))

(smithy/sdk/shapes:define-enum deployment-status
    common-lisp:nil
  (:completed "COMPLETED")
  (:creating "CREATING")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:delete-initiating "DELETE_INITIATING")
  (:delete-failed "DELETE_FAILED")
  (:deleted "DELETED")
  (:failed "FAILED")
  (:in-progress "IN_PROGRESS")
  (:validating "VALIDATING"))

(smithy/sdk/shapes:define-type event-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum event-status
    common-lisp:nil
  (:canceled "CANCELED")
  (:canceling "CANCELING")
  (:completed "COMPLETED")
  (:created "CREATED")
  (:failed "FAILED")
  (:in-progress "IN_PROGRESS")
  (:pending "PENDING")
  (:timed-out "TIMED_OUT"))

(smithy/sdk/shapes:define-input get-deployment-input common-lisp:nil
                                ((deployment-id :target-type deployment-id
                                  :required common-lisp:t :member-name
                                  "deploymentId"))
                                (:shape-name "GetDeploymentInput"))

(smithy/sdk/shapes:define-output get-deployment-output common-lisp:nil
                                 ((deployment :target-type deployment-data
                                   :member-name "deployment"))
                                 (:shape-name "GetDeploymentOutput"))

(smithy/sdk/shapes:define-input get-workload-deployment-pattern-input
                                common-lisp:nil
                                ((workload-name :target-type workload-name
                                  :required common-lisp:t :member-name
                                  "workloadName")
                                 (deployment-pattern-name :target-type
                                  deployment-pattern-name :required
                                  common-lisp:t :member-name
                                  "deploymentPatternName"))
                                (:shape-name
                                 "GetWorkloadDeploymentPatternInput"))

(smithy/sdk/shapes:define-output get-workload-deployment-pattern-output
                                 common-lisp:nil
                                 ((workload-deployment-pattern :target-type
                                   workload-deployment-pattern-data
                                   :member-name "workloadDeploymentPattern"))
                                 (:shape-name
                                  "GetWorkloadDeploymentPatternOutput"))

(smithy/sdk/shapes:define-input get-workload-input common-lisp:nil
                                ((workload-name :target-type workload-name
                                  :required common-lisp:t :member-name
                                  "workloadName"))
                                (:shape-name "GetWorkloadInput"))

(smithy/sdk/shapes:define-output get-workload-output common-lisp:nil
                                 ((workload :target-type workload-data
                                   :member-name "workload"))
                                 (:shape-name "GetWorkloadOutput"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type key-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-deployment-events-input common-lisp:nil
                                ((deployment-id :target-type deployment-id
                                  :required common-lisp:t :member-name
                                  "deploymentId")
                                 (max-results :target-type
                                  max-deployment-event-results :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListDeploymentEventsInput"))

(smithy/sdk/shapes:define-output list-deployment-events-output common-lisp:nil
                                 ((deployment-events :target-type
                                   deployment-event-data-summary-list
                                   :member-name "deploymentEvents")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDeploymentEventsOutput"))

(smithy/sdk/shapes:define-input list-deployments-input common-lisp:nil
                                ((filters :target-type deployment-filter-list
                                  :member-name "filters")
                                 (max-results :target-type
                                  max-deployment-results :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListDeploymentsInput"))

(smithy/sdk/shapes:define-output list-deployments-output common-lisp:nil
                                 ((deployments :target-type
                                   deployment-data-summary-list :member-name
                                   "deployments")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDeploymentsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-input list-workload-deployment-patterns-input
                                common-lisp:nil
                                ((workload-name :target-type workload-name
                                  :required common-lisp:t :member-name
                                  "workloadName")
                                 (max-results :target-type
                                  max-workload-deployment-pattern-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListWorkloadDeploymentPatternsInput"))

(smithy/sdk/shapes:define-output list-workload-deployment-patterns-output
                                 common-lisp:nil
                                 ((workload-deployment-patterns :target-type
                                   workload-deployment-pattern-data-summary-list
                                   :member-name "workloadDeploymentPatterns")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListWorkloadDeploymentPatternsOutput"))

(smithy/sdk/shapes:define-input list-workloads-input common-lisp:nil
                                ((max-results :target-type max-workload-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListWorkloadsInput"))

(smithy/sdk/shapes:define-output list-workloads-output common-lisp:nil
                                 ((workloads :target-type
                                   workload-data-summary-list :member-name
                                   "workloads")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListWorkloadsOutput"))

(smithy/sdk/shapes:define-type max-deployment-event-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-deployment-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-workload-deployment-pattern-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-workload-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-limit-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceLimitException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

common-lisp:nil

(smithy/sdk/shapes:define-type settings-set-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list specifications-conditional-data :member
                               deployment-conditional-field)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type value-string smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure workload-data common-lisp:nil
                                    ((workload-name :target-type workload-name
                                      :member-name "workloadName")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (documentation-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "documentationUrl")
                                     (icon-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "iconUrl")
                                     (status :target-type workload-status
                                      :member-name "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage"))
                                    (:shape-name "WorkloadData"))

(smithy/sdk/shapes:define-structure workload-data-summary common-lisp:nil
                                    ((workload-name :target-type workload-name
                                      :member-name "workloadName")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName"))
                                    (:shape-name "WorkloadDataSummary"))

(smithy/sdk/shapes:define-list workload-data-summary-list :member
                               workload-data-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure workload-deployment-pattern-data
                                    common-lisp:nil
                                    ((workload-name :target-type workload-name
                                      :member-name "workloadName")
                                     (deployment-pattern-name :target-type
                                      deployment-pattern-name :member-name
                                      "deploymentPatternName")
                                     (workload-version-name :target-type
                                      workload-version-name :member-name
                                      "workloadVersionName")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (status :target-type
                                      workload-deployment-pattern-status
                                      :member-name "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage")
                                     (specifications :target-type
                                      deployment-specifications-data
                                      :member-name "specifications"))
                                    (:shape-name
                                     "WorkloadDeploymentPatternData"))

(smithy/sdk/shapes:define-structure workload-deployment-pattern-data-summary
                                    common-lisp:nil
                                    ((workload-name :target-type workload-name
                                      :member-name "workloadName")
                                     (deployment-pattern-name :target-type
                                      deployment-pattern-name :member-name
                                      "deploymentPatternName")
                                     (workload-version-name :target-type
                                      workload-version-name :member-name
                                      "workloadVersionName")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (status :target-type
                                      workload-deployment-pattern-status
                                      :member-name "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage"))
                                    (:shape-name
                                     "WorkloadDeploymentPatternDataSummary"))

(smithy/sdk/shapes:define-list workload-deployment-pattern-data-summary-list
                               :member workload-deployment-pattern-data-summary)

(smithy/sdk/shapes:define-enum workload-deployment-pattern-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:disabled "DISABLED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-type workload-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum workload-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:disabled "DISABLED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-type workload-version-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-deployment :shape-name
                                       "CreateDeployment" :input
                                       create-deployment-input :output
                                       create-deployment-output :errors
                                       (internal-server-exception
                                        resource-limit-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/createDeployment"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-deployment :shape-name
                                       "DeleteDeployment" :input
                                       delete-deployment-input :output
                                       delete-deployment-output :errors
                                       (internal-server-exception
                                        resource-limit-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/deleteDeployment"
                                       :code 200)

(smithy/sdk/operation:define-operation get-deployment :shape-name
                                       "GetDeployment" :input
                                       get-deployment-input :output
                                       get-deployment-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/getDeployment"
                                       :code 200)

(smithy/sdk/operation:define-operation get-workload :shape-name "GetWorkload"
                                       :input get-workload-input :output
                                       get-workload-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/getWorkload" :code
                                       200)

(smithy/sdk/operation:define-operation get-workload-deployment-pattern
                                       :shape-name
                                       "GetWorkloadDeploymentPattern" :input
                                       get-workload-deployment-pattern-input
                                       :output
                                       get-workload-deployment-pattern-output
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/getWorkloadDeploymentPattern" :code
                                       200)

(smithy/sdk/operation:define-operation list-deployment-events :shape-name
                                       "ListDeploymentEvents" :input
                                       list-deployment-events-input :output
                                       list-deployment-events-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/listDeploymentEvents" :code 200)

(smithy/sdk/operation:define-operation list-deployments :shape-name
                                       "ListDeployments" :input
                                       list-deployments-input :output
                                       list-deployments-output :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/listDeployments"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation list-workload-deployment-patterns
                                       :shape-name
                                       "ListWorkloadDeploymentPatterns" :input
                                       list-workload-deployment-patterns-input
                                       :output
                                       list-workload-deployment-patterns-output
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/listWorkloadDeploymentPatterns" :code
                                       200)

(smithy/sdk/operation:define-operation list-workloads :shape-name
                                       "ListWorkloads" :input
                                       list-workloads-input :output
                                       list-workloads-output :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/listWorkloads"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")
