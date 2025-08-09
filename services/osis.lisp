(uiop/package:define-package #:pira/osis (:use)
                             (:export #:amazon-open-search-ingestion-service
                              #:blueprint-format #:boolean #:buffer-options
                              #:change-progress-stage
                              #:change-progress-stage-list
                              #:change-progress-stage-statuses
                              #:change-progress-status
                              #:change-progress-status-list
                              #:change-progress-statuses #:cidr-block
                              #:cloud-watch-log-destination #:create-pipeline
                              #:delete-pipeline #:encryption-at-rest-options
                              #:error-message #:get-pipeline
                              #:get-pipeline-blueprint
                              #:get-pipeline-change-progress
                              #:ingest-endpoint-urls-list #:integer
                              #:kms-key-arn #:list-pipeline-blueprints
                              #:list-pipelines #:list-tags-for-resource
                              #:log-group #:log-publishing-options
                              #:max-results #:next-token #:pipeline
                              #:pipeline-arn #:pipeline-blueprint
                              #:pipeline-blueprint-summary
                              #:pipeline-blueprints-summary-list
                              #:pipeline-configuration-body
                              #:pipeline-destination
                              #:pipeline-destination-list #:pipeline-name
                              #:pipeline-role-arn #:pipeline-status
                              #:pipeline-status-reason #:pipeline-summary
                              #:pipeline-summary-list #:pipeline-units
                              #:security-group-id #:security-group-ids
                              #:service-vpc-endpoint
                              #:service-vpc-endpoints-list #:start-pipeline
                              #:stop-pipeline #:string #:string-list
                              #:subnet-id #:subnet-ids #:tag #:tag-key
                              #:tag-list #:tag-resource #:tag-value #:timestamp
                              #:untag-resource #:update-pipeline
                              #:validate-pipeline #:validation-message
                              #:validation-message-list
                              #:vpc-attachment-options #:vpc-endpoint
                              #:vpc-endpoint-management
                              #:vpc-endpoint-service-name #:vpc-endpoints-list
                              #:vpc-options))
(common-lisp:in-package #:pira/osis)

(smithy/sdk/service:define-service amazon-open-search-ingestion-service
                                   :shape-name
                                   "AmazonOpenSearchIngestionService" :version
                                   "2022-01-01" :title
                                   "Amazon OpenSearch Ingestion" :xml-namespace
                                   '(:uri
                                     "http://osis.amazonaws.com/doc/2022-01-01"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "OSIS")
                                      ("arnNamespace" . "osis")
                                      ("cloudFormationName" . "OSIS")
                                      ("cloudTrailEventSource"
                                       . "osis.amazonaws.com")
                                      ("endpointPrefix" . "osis"))
                                     ("aws.auth#sigv4" ("name" . "osis"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type blueprint-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure buffer-options common-lisp:nil
                                    ((persistent-buffer-enabled :target-type
                                      boolean :required common-lisp:t
                                      :member-name "PersistentBufferEnabled"))
                                    (:shape-name "BufferOptions"))

(smithy/sdk/shapes:define-structure change-progress-stage common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (status :target-type
                                      change-progress-stage-statuses
                                      :member-name "Status")
                                     (description :target-type string
                                      :member-name "Description")
                                     (last-updated-at :target-type timestamp
                                      :member-name "LastUpdatedAt"))
                                    (:shape-name "ChangeProgressStage"))

(smithy/sdk/shapes:define-list change-progress-stage-list :member
                               change-progress-stage)

(smithy/sdk/shapes:define-enum change-progress-stage-statuses
    common-lisp:nil
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure change-progress-status common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (status :target-type
                                      change-progress-statuses :member-name
                                      "Status")
                                     (total-number-of-stages :target-type
                                      integer :member-name
                                      "TotalNumberOfStages")
                                     (change-progress-stages :target-type
                                      change-progress-stage-list :member-name
                                      "ChangeProgressStages"))
                                    (:shape-name "ChangeProgressStatus"))

(smithy/sdk/shapes:define-list change-progress-status-list :member
                               change-progress-status)

(smithy/sdk/shapes:define-enum change-progress-statuses
    common-lisp:nil
  (:pending "PENDING")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type cidr-block smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cloud-watch-log-destination common-lisp:nil
                                    ((log-group :target-type log-group
                                      :required common-lisp:t :member-name
                                      "LogGroup"))
                                    (:shape-name "CloudWatchLogDestination"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-pipeline-request common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "PipelineName")
                                 (min-units :target-type pipeline-units
                                  :required common-lisp:t :member-name
                                  "MinUnits")
                                 (max-units :target-type pipeline-units
                                  :required common-lisp:t :member-name
                                  "MaxUnits")
                                 (pipeline-configuration-body :target-type
                                  pipeline-configuration-body :required
                                  common-lisp:t :member-name
                                  "PipelineConfigurationBody")
                                 (log-publishing-options :target-type
                                  log-publishing-options :member-name
                                  "LogPublishingOptions")
                                 (vpc-options :target-type vpc-options
                                  :member-name "VpcOptions")
                                 (buffer-options :target-type buffer-options
                                  :member-name "BufferOptions")
                                 (encryption-at-rest-options :target-type
                                  encryption-at-rest-options :member-name
                                  "EncryptionAtRestOptions")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (pipeline-role-arn :target-type
                                  pipeline-role-arn :member-name
                                  "PipelineRoleArn"))
                                (:shape-name "CreatePipelineRequest"))

(smithy/sdk/shapes:define-output create-pipeline-response common-lisp:nil
                                 ((pipeline :target-type pipeline :member-name
                                   "Pipeline"))
                                 (:shape-name "CreatePipelineResponse"))

(smithy/sdk/shapes:define-input delete-pipeline-request common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "PipelineName" :http-label common-lisp:t))
                                (:shape-name "DeletePipelineRequest"))

(smithy/sdk/shapes:define-output delete-pipeline-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePipelineResponse"))

(smithy/sdk/shapes:define-error disabled-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DisabledOperationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure encryption-at-rest-options common-lisp:nil
                                    ((kms-key-arn :target-type kms-key-arn
                                      :required common-lisp:t :member-name
                                      "KmsKeyArn"))
                                    (:shape-name "EncryptionAtRestOptions"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-pipeline-blueprint-request common-lisp:nil
                                ((blueprint-name :target-type string :required
                                  common-lisp:t :member-name "BlueprintName"
                                  :http-label common-lisp:t)
                                 (format :target-type blueprint-format
                                  :member-name "Format" :http-query "format"))
                                (:shape-name "GetPipelineBlueprintRequest"))

(smithy/sdk/shapes:define-output get-pipeline-blueprint-response
                                 common-lisp:nil
                                 ((blueprint :target-type pipeline-blueprint
                                   :member-name "Blueprint")
                                  (format :target-type string :member-name
                                   "Format"))
                                 (:shape-name "GetPipelineBlueprintResponse"))

(smithy/sdk/shapes:define-input get-pipeline-change-progress-request
                                common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "PipelineName" :http-label common-lisp:t))
                                (:shape-name
                                 "GetPipelineChangeProgressRequest"))

(smithy/sdk/shapes:define-output get-pipeline-change-progress-response
                                 common-lisp:nil
                                 ((change-progress-statuses :target-type
                                   change-progress-status-list :member-name
                                   "ChangeProgressStatuses"))
                                 (:shape-name
                                  "GetPipelineChangeProgressResponse"))

(smithy/sdk/shapes:define-input get-pipeline-request common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "PipelineName" :http-label common-lisp:t))
                                (:shape-name "GetPipelineRequest"))

(smithy/sdk/shapes:define-output get-pipeline-response common-lisp:nil
                                 ((pipeline :target-type pipeline :member-name
                                   "Pipeline"))
                                 (:shape-name "GetPipelineResponse"))

(smithy/sdk/shapes:define-list ingest-endpoint-urls-list :member string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-pagination-token-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidPaginationTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input list-pipeline-blueprints-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "ListPipelineBlueprintsRequest"))

(smithy/sdk/shapes:define-output list-pipeline-blueprints-response
                                 common-lisp:nil
                                 ((blueprints :target-type
                                   pipeline-blueprints-summary-list
                                   :member-name "Blueprints"))
                                 (:shape-name "ListPipelineBlueprintsResponse"))

(smithy/sdk/shapes:define-input list-pipelines-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListPipelinesRequest"))

(smithy/sdk/shapes:define-output list-pipelines-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (pipelines :target-type pipeline-summary-list
                                   :member-name "Pipelines"))
                                 (:shape-name "ListPipelinesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((arn :target-type pipeline-arn :required
                                  common-lisp:t :member-name "Arn" :http-query
                                  "arn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type log-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure log-publishing-options common-lisp:nil
                                    ((is-logging-enabled :target-type boolean
                                      :member-name "IsLoggingEnabled")
                                     (cloud-watch-log-destination :target-type
                                      cloud-watch-log-destination :member-name
                                      "CloudWatchLogDestination"))
                                    (:shape-name "LogPublishingOptions"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pipeline common-lisp:nil
                                    ((pipeline-name :target-type string
                                      :member-name "PipelineName")
                                     (pipeline-arn :target-type string
                                      :member-name "PipelineArn")
                                     (min-units :target-type integer
                                      :member-name "MinUnits")
                                     (max-units :target-type integer
                                      :member-name "MaxUnits")
                                     (status :target-type pipeline-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      pipeline-status-reason :member-name
                                      "StatusReason")
                                     (pipeline-configuration-body :target-type
                                      string :member-name
                                      "PipelineConfigurationBody")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "LastUpdatedAt")
                                     (ingest-endpoint-urls :target-type
                                      ingest-endpoint-urls-list :member-name
                                      "IngestEndpointUrls")
                                     (log-publishing-options :target-type
                                      log-publishing-options :member-name
                                      "LogPublishingOptions")
                                     (vpc-endpoints :target-type
                                      vpc-endpoints-list :member-name
                                      "VpcEndpoints")
                                     (buffer-options :target-type
                                      buffer-options :member-name
                                      "BufferOptions")
                                     (encryption-at-rest-options :target-type
                                      encryption-at-rest-options :member-name
                                      "EncryptionAtRestOptions")
                                     (vpc-endpoint-service :target-type string
                                      :member-name "VpcEndpointService")
                                     (service-vpc-endpoints :target-type
                                      service-vpc-endpoints-list :member-name
                                      "ServiceVpcEndpoints")
                                     (destinations :target-type
                                      pipeline-destination-list :member-name
                                      "Destinations")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (pipeline-role-arn :target-type
                                      pipeline-role-arn :member-name
                                      "PipelineRoleArn"))
                                    (:shape-name "Pipeline"))

(smithy/sdk/shapes:define-type pipeline-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pipeline-blueprint common-lisp:nil
                                    ((blueprint-name :target-type string
                                      :member-name "BlueprintName")
                                     (pipeline-configuration-body :target-type
                                      string :member-name
                                      "PipelineConfigurationBody")
                                     (display-name :target-type string
                                      :member-name "DisplayName")
                                     (display-description :target-type string
                                      :member-name "DisplayDescription")
                                     (service :target-type string :member-name
                                      "Service")
                                     (use-case :target-type string :member-name
                                      "UseCase"))
                                    (:shape-name "PipelineBlueprint"))

(smithy/sdk/shapes:define-structure pipeline-blueprint-summary common-lisp:nil
                                    ((blueprint-name :target-type string
                                      :member-name "BlueprintName")
                                     (display-name :target-type string
                                      :member-name "DisplayName")
                                     (display-description :target-type string
                                      :member-name "DisplayDescription")
                                     (service :target-type string :member-name
                                      "Service")
                                     (use-case :target-type string :member-name
                                      "UseCase"))
                                    (:shape-name "PipelineBlueprintSummary"))

(smithy/sdk/shapes:define-list pipeline-blueprints-summary-list :member
                               pipeline-blueprint-summary)

(smithy/sdk/shapes:define-type pipeline-configuration-body
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pipeline-destination common-lisp:nil
                                    ((service-name :target-type string
                                      :member-name "ServiceName")
                                     (endpoint :target-type string :member-name
                                      "Endpoint"))
                                    (:shape-name "PipelineDestination"))

(smithy/sdk/shapes:define-list pipeline-destination-list :member
                               pipeline-destination)

(smithy/sdk/shapes:define-type pipeline-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pipeline-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum pipeline-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:create-failed "CREATE_FAILED")
  (:update-failed "UPDATE_FAILED")
  (:starting "STARTING")
  (:start-failed "START_FAILED")
  (:stopping "STOPPING")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-structure pipeline-status-reason common-lisp:nil
                                    ((description :target-type string
                                      :member-name "Description"))
                                    (:shape-name "PipelineStatusReason"))

(smithy/sdk/shapes:define-structure pipeline-summary common-lisp:nil
                                    ((status :target-type pipeline-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      pipeline-status-reason :member-name
                                      "StatusReason")
                                     (pipeline-name :target-type pipeline-name
                                      :member-name "PipelineName")
                                     (pipeline-arn :target-type pipeline-arn
                                      :member-name "PipelineArn")
                                     (min-units :target-type pipeline-units
                                      :member-name "MinUnits")
                                     (max-units :target-type pipeline-units
                                      :member-name "MaxUnits")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "LastUpdatedAt")
                                     (destinations :target-type
                                      pipeline-destination-list :member-name
                                      "Destinations")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "PipelineSummary"))

(smithy/sdk/shapes:define-list pipeline-summary-list :member pipeline-summary)

(smithy/sdk/shapes:define-type pipeline-units smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-structure service-vpc-endpoint common-lisp:nil
                                    ((service-name :target-type
                                      vpc-endpoint-service-name :member-name
                                      "ServiceName")
                                     (vpc-endpoint-id :target-type string
                                      :member-name "VpcEndpointId"))
                                    (:shape-name "ServiceVpcEndpoint"))

(smithy/sdk/shapes:define-list service-vpc-endpoints-list :member
                               service-vpc-endpoint)

(smithy/sdk/shapes:define-input start-pipeline-request common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "PipelineName" :http-label common-lisp:t))
                                (:shape-name "StartPipelineRequest"))

(smithy/sdk/shapes:define-output start-pipeline-response common-lisp:nil
                                 ((pipeline :target-type pipeline :member-name
                                   "Pipeline"))
                                 (:shape-name "StartPipelineResponse"))

(smithy/sdk/shapes:define-input stop-pipeline-request common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "PipelineName" :http-label common-lisp:t))
                                (:shape-name "StopPipelineRequest"))

(smithy/sdk/shapes:define-output stop-pipeline-response common-lisp:nil
                                 ((pipeline :target-type pipeline :member-name
                                   "Pipeline"))
                                 (:shape-name "StopPipelineResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((arn :target-type pipeline-arn :required
                                  common-lisp:t :member-name "Arn" :http-query
                                  "arn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((arn :target-type pipeline-arn :required
                                  common-lisp:t :member-name "Arn" :http-query
                                  "arn")
                                 (tag-keys :target-type string-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-pipeline-request common-lisp:nil
                                ((pipeline-name :target-type pipeline-name
                                  :required common-lisp:t :member-name
                                  "PipelineName" :http-label common-lisp:t)
                                 (min-units :target-type pipeline-units
                                  :member-name "MinUnits")
                                 (max-units :target-type pipeline-units
                                  :member-name "MaxUnits")
                                 (pipeline-configuration-body :target-type
                                  pipeline-configuration-body :member-name
                                  "PipelineConfigurationBody")
                                 (log-publishing-options :target-type
                                  log-publishing-options :member-name
                                  "LogPublishingOptions")
                                 (buffer-options :target-type buffer-options
                                  :member-name "BufferOptions")
                                 (encryption-at-rest-options :target-type
                                  encryption-at-rest-options :member-name
                                  "EncryptionAtRestOptions")
                                 (pipeline-role-arn :target-type
                                  pipeline-role-arn :member-name
                                  "PipelineRoleArn"))
                                (:shape-name "UpdatePipelineRequest"))

(smithy/sdk/shapes:define-output update-pipeline-response common-lisp:nil
                                 ((pipeline :target-type pipeline :member-name
                                   "Pipeline"))
                                 (:shape-name "UpdatePipelineResponse"))

(smithy/sdk/shapes:define-input validate-pipeline-request common-lisp:nil
                                ((pipeline-configuration-body :target-type
                                  pipeline-configuration-body :required
                                  common-lisp:t :member-name
                                  "PipelineConfigurationBody"))
                                (:shape-name "ValidatePipelineRequest"))

(smithy/sdk/shapes:define-output validate-pipeline-response common-lisp:nil
                                 ((is-valid :target-type boolean :member-name
                                   "isValid")
                                  (errors :target-type validation-message-list
                                   :member-name "Errors"))
                                 (:shape-name "ValidatePipelineResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-message common-lisp:nil
                                    ((message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "ValidationMessage"))

(smithy/sdk/shapes:define-list validation-message-list :member
                               validation-message)

(smithy/sdk/shapes:define-structure vpc-attachment-options common-lisp:nil
                                    ((attach-to-vpc :target-type boolean
                                      :required common-lisp:t :member-name
                                      "AttachToVpc")
                                     (cidr-block :target-type cidr-block
                                      :member-name "CidrBlock"))
                                    (:shape-name "VpcAttachmentOptions"))

(smithy/sdk/shapes:define-structure vpc-endpoint common-lisp:nil
                                    ((vpc-endpoint-id :target-type string
                                      :member-name "VpcEndpointId")
                                     (vpc-id :target-type string :member-name
                                      "VpcId")
                                     (vpc-options :target-type vpc-options
                                      :member-name "VpcOptions"))
                                    (:shape-name "VpcEndpoint"))

(smithy/sdk/shapes:define-enum vpc-endpoint-management
    common-lisp:nil
  (:customer "CUSTOMER")
  (:service "SERVICE"))

(smithy/sdk/shapes:define-enum vpc-endpoint-service-name
    common-lisp:nil
  (:opensearch-serverless "OPENSEARCH_SERVERLESS"))

(smithy/sdk/shapes:define-list vpc-endpoints-list :member vpc-endpoint)

(smithy/sdk/shapes:define-structure vpc-options common-lisp:nil
                                    ((subnet-ids :target-type subnet-ids
                                      :required common-lisp:t :member-name
                                      "SubnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "SecurityGroupIds")
                                     (vpc-attachment-options :target-type
                                      vpc-attachment-options :member-name
                                      "VpcAttachmentOptions")
                                     (vpc-endpoint-management :target-type
                                      vpc-endpoint-management :member-name
                                      "VpcEndpointManagement"))
                                    (:shape-name "VpcOptions"))

(smithy/sdk/operation:define-operation create-pipeline :shape-name
                                       "CreatePipeline" :input
                                       create-pipeline-request :output
                                       create-pipeline-response :errors
                                       (access-denied-exception
                                        disabled-operation-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2022-01-01/osis/createPipeline" :code
                                       200)

(smithy/sdk/operation:define-operation delete-pipeline :shape-name
                                       "DeletePipeline" :input
                                       delete-pipeline-request :output
                                       delete-pipeline-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/2022-01-01/osis/deletePipeline/{PipelineName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-pipeline :shape-name "GetPipeline"
                                       :input get-pipeline-request :output
                                       get-pipeline-response :errors
                                       (access-denied-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2022-01-01/osis/getPipeline/{PipelineName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-pipeline-blueprint :shape-name
                                       "GetPipelineBlueprint" :input
                                       get-pipeline-blueprint-request :output
                                       get-pipeline-blueprint-response :errors
                                       (access-denied-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2022-01-01/osis/getPipelineBlueprint/{BlueprintName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-pipeline-change-progress :shape-name
                                       "GetPipelineChangeProgress" :input
                                       get-pipeline-change-progress-request
                                       :output
                                       get-pipeline-change-progress-response
                                       :errors
                                       (access-denied-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2022-01-01/osis/getPipelineChangeProgress/{PipelineName}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-pipeline-blueprints :shape-name
                                       "ListPipelineBlueprints" :input
                                       list-pipeline-blueprints-request :output
                                       list-pipeline-blueprints-response
                                       :errors
                                       (access-denied-exception
                                        disabled-operation-exception
                                        internal-exception
                                        invalid-pagination-token-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2022-01-01/osis/listPipelineBlueprints"
                                       :code 200)

(smithy/sdk/operation:define-operation list-pipelines :shape-name
                                       "ListPipelines" :input
                                       list-pipelines-request :output
                                       list-pipelines-response :errors
                                       (access-denied-exception
                                        disabled-operation-exception
                                        internal-exception
                                        invalid-pagination-token-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2022-01-01/osis/listPipelines" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/2022-01-01/osis/listTagsForResource"
                                       :code 200)

(smithy/sdk/operation:define-operation start-pipeline :shape-name
                                       "StartPipeline" :input
                                       start-pipeline-request :output
                                       start-pipeline-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2022-01-01/osis/startPipeline/{PipelineName}"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-pipeline :shape-name "StopPipeline"
                                       :input stop-pipeline-request :output
                                       stop-pipeline-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2022-01-01/osis/stopPipeline/{PipelineName}"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        disabled-operation-exception
                                        internal-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2022-01-01/osis/tagResource" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2022-01-01/osis/untagResource" :code
                                       200)

(smithy/sdk/operation:define-operation update-pipeline :shape-name
                                       "UpdatePipeline" :input
                                       update-pipeline-request :output
                                       update-pipeline-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        disabled-operation-exception
                                        internal-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/2022-01-01/osis/updatePipeline/{PipelineName}"
                                       :code 200)

(smithy/sdk/operation:define-operation validate-pipeline :shape-name
                                       "ValidatePipeline" :input
                                       validate-pipeline-request :output
                                       validate-pipeline-response :errors
                                       (access-denied-exception
                                        disabled-operation-exception
                                        internal-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/2022-01-01/osis/validatePipeline"
                                       :code 200)
