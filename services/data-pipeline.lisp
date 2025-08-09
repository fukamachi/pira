(uiop/package:define-package #:pira/data-pipeline (:use)
                             (:export #:activate-pipeline
                              #:activate-pipeline-input
                              #:activate-pipeline-output #:add-tags
                              #:add-tags-input #:add-tags-output
                              #:create-pipeline #:create-pipeline-input
                              #:create-pipeline-output #:data-pipeline
                              #:deactivate-pipeline #:deactivate-pipeline-input
                              #:deactivate-pipeline-output #:delete-pipeline
                              #:delete-pipeline-input #:describe-objects
                              #:describe-objects-input
                              #:describe-objects-output #:describe-pipelines
                              #:describe-pipelines-input
                              #:describe-pipelines-output #:evaluate-expression
                              #:evaluate-expression-input
                              #:evaluate-expression-output #:field
                              #:get-pipeline-definition
                              #:get-pipeline-definition-input
                              #:get-pipeline-definition-output
                              #:instance-identity #:internal-service-error
                              #:invalid-request-exception #:list-pipelines
                              #:list-pipelines-input #:list-pipelines-output
                              #:operator #:operator-type #:parameter-attribute
                              #:parameter-attribute-list #:parameter-object
                              #:parameter-object-list #:parameter-value
                              #:parameter-value-list
                              #:pipeline-deleted-exception
                              #:pipeline-description
                              #:pipeline-description-list #:pipeline-id-name
                              #:pipeline-not-found-exception #:pipeline-object
                              #:pipeline-object-list #:pipeline-object-map
                              #:poll-for-task #:poll-for-task-input
                              #:poll-for-task-output #:put-pipeline-definition
                              #:put-pipeline-definition-input
                              #:put-pipeline-definition-output #:query
                              #:query-objects #:query-objects-input
                              #:query-objects-output #:remove-tags
                              #:remove-tags-input #:remove-tags-output
                              #:report-task-progress
                              #:report-task-progress-input
                              #:report-task-progress-output
                              #:report-task-runner-heartbeat
                              #:report-task-runner-heartbeat-input
                              #:report-task-runner-heartbeat-output #:selector
                              #:selector-list #:set-status #:set-status-input
                              #:set-task-status #:set-task-status-input
                              #:set-task-status-output #:tag
                              #:task-not-found-exception #:task-object
                              #:task-status #:validate-pipeline-definition
                              #:validate-pipeline-definition-input
                              #:validate-pipeline-definition-output
                              #:validation-error #:validation-errors
                              #:validation-warning #:validation-warnings
                              #:attribute-name-string #:attribute-value-string
                              #:boolean #:cancel-active #:error-message
                              #:field-list #:field-name-string
                              #:field-string-value #:id #:id-list #:int
                              #:long-string #:pipeline-list #:string
                              #:string-list #:tag-key #:tag-list #:tag-value
                              #:task-id #:timestamp #:validation-message
                              #:validation-messages))
(common-lisp:in-package #:pira/data-pipeline)

(smithy/sdk/service:define-service data-pipeline :shape-name "DataPipeline"
                                   :version "2012-10-29" :title
                                   "AWS Data Pipeline" :xml-namespace
                                   '(:uri
                                     "http://datapipeline.amazonaws.com/doc/2012-10-29/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Data Pipeline")
                                      ("arnNamespace" . "datapipeline")
                                      ("cloudFormationName" . "DataPipeline")
                                      ("cloudTrailEventSource"
                                       . "datapipeline.amazonaws.com")
                                      ("docId" . "datapipeline-2012-10-29")
                                      ("endpointPrefix" . "datapipeline"))
                                     ("aws.auth#sigv4"
                                      ("name" . "datapipeline"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-input activate-pipeline-input common-lisp:nil
                                ((pipeline-id :target-type id :required
                                  common-lisp:t :member-name "pipelineId")
                                 (parameter-values :target-type
                                  parameter-value-list :member-name
                                  "parameterValues")
                                 (start-timestamp :target-type timestamp
                                  :member-name "startTimestamp"))
                                (:shape-name "ActivatePipelineInput"))

(smithy/sdk/shapes:define-output activate-pipeline-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ActivatePipelineOutput"))

(smithy/sdk/shapes:define-input add-tags-input common-lisp:nil
                                ((pipeline-id :target-type id :required
                                  common-lisp:t :member-name "pipelineId")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "AddTagsInput"))

(smithy/sdk/shapes:define-output add-tags-output common-lisp:nil
                                 common-lisp:nil (:shape-name "AddTagsOutput"))

(smithy/sdk/shapes:define-input create-pipeline-input common-lisp:nil
                                ((name :target-type id :required common-lisp:t
                                  :member-name "name")
                                 (unique-id :target-type id :required
                                  common-lisp:t :member-name "uniqueId")
                                 (description :target-type string :member-name
                                  "description")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreatePipelineInput"))

(smithy/sdk/shapes:define-output create-pipeline-output common-lisp:nil
                                 ((pipeline-id :target-type id :required
                                   common-lisp:t :member-name "pipelineId"))
                                 (:shape-name "CreatePipelineOutput"))

(smithy/sdk/shapes:define-input deactivate-pipeline-input common-lisp:nil
                                ((pipeline-id :target-type id :required
                                  common-lisp:t :member-name "pipelineId")
                                 (cancel-active :target-type cancel-active
                                  :member-name "cancelActive"))
                                (:shape-name "DeactivatePipelineInput"))

(smithy/sdk/shapes:define-output deactivate-pipeline-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeactivatePipelineOutput"))

(smithy/sdk/shapes:define-input delete-pipeline-input common-lisp:nil
                                ((pipeline-id :target-type id :required
                                  common-lisp:t :member-name "pipelineId"))
                                (:shape-name "DeletePipelineInput"))

(smithy/sdk/shapes:define-input describe-objects-input common-lisp:nil
                                ((pipeline-id :target-type id :required
                                  common-lisp:t :member-name "pipelineId")
                                 (object-ids :target-type id-list :required
                                  common-lisp:t :member-name "objectIds")
                                 (evaluate-expressions :target-type boolean
                                  :member-name "evaluateExpressions")
                                 (marker :target-type string :member-name
                                  "marker"))
                                (:shape-name "DescribeObjectsInput"))

(smithy/sdk/shapes:define-output describe-objects-output common-lisp:nil
                                 ((pipeline-objects :target-type
                                   pipeline-object-list :required common-lisp:t
                                   :member-name "pipelineObjects")
                                  (marker :target-type string :member-name
                                   "marker")
                                  (has-more-results :target-type boolean
                                   :member-name "hasMoreResults"))
                                 (:shape-name "DescribeObjectsOutput"))

(smithy/sdk/shapes:define-input describe-pipelines-input common-lisp:nil
                                ((pipeline-ids :target-type id-list :required
                                  common-lisp:t :member-name "pipelineIds"))
                                (:shape-name "DescribePipelinesInput"))

(smithy/sdk/shapes:define-output describe-pipelines-output common-lisp:nil
                                 ((pipeline-description-list :target-type
                                   pipeline-description-list :required
                                   common-lisp:t :member-name
                                   "pipelineDescriptionList"))
                                 (:shape-name "DescribePipelinesOutput"))

(smithy/sdk/shapes:define-input evaluate-expression-input common-lisp:nil
                                ((pipeline-id :target-type id :required
                                  common-lisp:t :member-name "pipelineId")
                                 (object-id :target-type id :required
                                  common-lisp:t :member-name "objectId")
                                 (expression :target-type long-string :required
                                  common-lisp:t :member-name "expression"))
                                (:shape-name "EvaluateExpressionInput"))

(smithy/sdk/shapes:define-output evaluate-expression-output common-lisp:nil
                                 ((evaluated-expression :target-type
                                   long-string :required common-lisp:t
                                   :member-name "evaluatedExpression"))
                                 (:shape-name "EvaluateExpressionOutput"))

(smithy/sdk/shapes:define-structure field common-lisp:nil
                                    ((key :target-type field-name-string
                                      :required common-lisp:t :member-name
                                      "key")
                                     (string-value :target-type
                                      field-string-value :member-name
                                      "stringValue")
                                     (ref-value :target-type field-name-string
                                      :member-name "refValue"))
                                    (:shape-name "Field"))

(smithy/sdk/shapes:define-input get-pipeline-definition-input common-lisp:nil
                                ((pipeline-id :target-type id :required
                                  common-lisp:t :member-name "pipelineId")
                                 (version :target-type string :member-name
                                  "version"))
                                (:shape-name "GetPipelineDefinitionInput"))

(smithy/sdk/shapes:define-output get-pipeline-definition-output common-lisp:nil
                                 ((pipeline-objects :target-type
                                   pipeline-object-list :member-name
                                   "pipelineObjects")
                                  (parameter-objects :target-type
                                   parameter-object-list :member-name
                                   "parameterObjects")
                                  (parameter-values :target-type
                                   parameter-value-list :member-name
                                   "parameterValues"))
                                 (:shape-name "GetPipelineDefinitionOutput"))

(smithy/sdk/shapes:define-structure instance-identity common-lisp:nil
                                    ((document :target-type string :member-name
                                      "document")
                                     (signature :target-type string
                                      :member-name "signature"))
                                    (:shape-name "InstanceIdentity"))

(smithy/sdk/shapes:define-error internal-service-error common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServiceError")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-pipelines-input common-lisp:nil
                                ((marker :target-type string :member-name
                                  "marker"))
                                (:shape-name "ListPipelinesInput"))

(smithy/sdk/shapes:define-output list-pipelines-output common-lisp:nil
                                 ((pipeline-id-list :target-type pipeline-list
                                   :required common-lisp:t :member-name
                                   "pipelineIdList")
                                  (marker :target-type string :member-name
                                   "marker")
                                  (has-more-results :target-type boolean
                                   :member-name "hasMoreResults"))
                                 (:shape-name "ListPipelinesOutput"))

(smithy/sdk/shapes:define-structure operator common-lisp:nil
                                    ((type :target-type operator-type
                                      :member-name "type")
                                     (values :target-type string-list
                                      :member-name "values"))
                                    (:shape-name "Operator"))

(smithy/sdk/shapes:define-enum operator-type
    common-lisp:nil
  (:equal "EQ")
  (:reference-equal "REF_EQ")
  (:less-than-or-equal "LE")
  (:greater-than-or-equal "GE")
  (:between "BETWEEN"))

(smithy/sdk/shapes:define-structure parameter-attribute common-lisp:nil
                                    ((key :target-type attribute-name-string
                                      :required common-lisp:t :member-name
                                      "key")
                                     (string-value :target-type
                                      attribute-value-string :required
                                      common-lisp:t :member-name
                                      "stringValue"))
                                    (:shape-name "ParameterAttribute"))

(smithy/sdk/shapes:define-list parameter-attribute-list :member
                               parameter-attribute)

(smithy/sdk/shapes:define-structure parameter-object common-lisp:nil
                                    ((id :target-type field-name-string
                                      :required common-lisp:t :member-name
                                      "id")
                                     (attributes :target-type
                                      parameter-attribute-list :required
                                      common-lisp:t :member-name "attributes"))
                                    (:shape-name "ParameterObject"))

(smithy/sdk/shapes:define-list parameter-object-list :member parameter-object)

(smithy/sdk/shapes:define-structure parameter-value common-lisp:nil
                                    ((id :target-type field-name-string
                                      :required common-lisp:t :member-name
                                      "id")
                                     (string-value :target-type
                                      field-string-value :required
                                      common-lisp:t :member-name
                                      "stringValue"))
                                    (:shape-name "ParameterValue"))

(smithy/sdk/shapes:define-list parameter-value-list :member parameter-value)

(smithy/sdk/shapes:define-error pipeline-deleted-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "PipelineDeletedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure pipeline-description common-lisp:nil
                                    ((pipeline-id :target-type id :required
                                      common-lisp:t :member-name "pipelineId")
                                     (name :target-type id :required
                                      common-lisp:t :member-name "name")
                                     (fields :target-type field-list :required
                                      common-lisp:t :member-name "fields")
                                     (description :target-type string
                                      :member-name "description")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "PipelineDescription"))

(smithy/sdk/shapes:define-list pipeline-description-list :member
                               pipeline-description)

(smithy/sdk/shapes:define-structure pipeline-id-name common-lisp:nil
                                    ((id :target-type id :member-name "id")
                                     (name :target-type id :member-name
                                      "name"))
                                    (:shape-name "PipelineIdName"))

(smithy/sdk/shapes:define-error pipeline-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "PipelineNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure pipeline-object common-lisp:nil
                                    ((id :target-type id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type id :required
                                      common-lisp:t :member-name "name")
                                     (fields :target-type field-list :required
                                      common-lisp:t :member-name "fields"))
                                    (:shape-name "PipelineObject"))

(smithy/sdk/shapes:define-list pipeline-object-list :member pipeline-object)

(smithy/sdk/shapes:define-map pipeline-object-map :key id :value
                              pipeline-object)

(smithy/sdk/shapes:define-input poll-for-task-input common-lisp:nil
                                ((worker-group :target-type string :required
                                  common-lisp:t :member-name "workerGroup")
                                 (hostname :target-type id :member-name
                                  "hostname")
                                 (instance-identity :target-type
                                  instance-identity :member-name
                                  "instanceIdentity"))
                                (:shape-name "PollForTaskInput"))

(smithy/sdk/shapes:define-output poll-for-task-output common-lisp:nil
                                 ((task-object :target-type task-object
                                   :member-name "taskObject"))
                                 (:shape-name "PollForTaskOutput"))

(smithy/sdk/shapes:define-input put-pipeline-definition-input common-lisp:nil
                                ((pipeline-id :target-type id :required
                                  common-lisp:t :member-name "pipelineId")
                                 (pipeline-objects :target-type
                                  pipeline-object-list :required common-lisp:t
                                  :member-name "pipelineObjects")
                                 (parameter-objects :target-type
                                  parameter-object-list :member-name
                                  "parameterObjects")
                                 (parameter-values :target-type
                                  parameter-value-list :member-name
                                  "parameterValues"))
                                (:shape-name "PutPipelineDefinitionInput"))

(smithy/sdk/shapes:define-output put-pipeline-definition-output common-lisp:nil
                                 ((validation-errors :target-type
                                   validation-errors :member-name
                                   "validationErrors")
                                  (validation-warnings :target-type
                                   validation-warnings :member-name
                                   "validationWarnings")
                                  (errored :target-type boolean :required
                                   common-lisp:t :member-name "errored"))
                                 (:shape-name "PutPipelineDefinitionOutput"))

(smithy/sdk/shapes:define-structure query common-lisp:nil
                                    ((selectors :target-type selector-list
                                      :member-name "selectors"))
                                    (:shape-name "Query"))

(smithy/sdk/shapes:define-input query-objects-input common-lisp:nil
                                ((pipeline-id :target-type id :required
                                  common-lisp:t :member-name "pipelineId")
                                 (query :target-type query :member-name
                                  "query")
                                 (sphere :target-type string :required
                                  common-lisp:t :member-name "sphere")
                                 (marker :target-type string :member-name
                                  "marker")
                                 (limit :target-type int :member-name "limit"))
                                (:shape-name "QueryObjectsInput"))

(smithy/sdk/shapes:define-output query-objects-output common-lisp:nil
                                 ((ids :target-type id-list :member-name "ids")
                                  (marker :target-type string :member-name
                                   "marker")
                                  (has-more-results :target-type boolean
                                   :member-name "hasMoreResults"))
                                 (:shape-name "QueryObjectsOutput"))

(smithy/sdk/shapes:define-input remove-tags-input common-lisp:nil
                                ((pipeline-id :target-type id :required
                                  common-lisp:t :member-name "pipelineId")
                                 (tag-keys :target-type string-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "RemoveTagsInput"))

(smithy/sdk/shapes:define-output remove-tags-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RemoveTagsOutput"))

(smithy/sdk/shapes:define-input report-task-progress-input common-lisp:nil
                                ((task-id :target-type task-id :required
                                  common-lisp:t :member-name "taskId")
                                 (fields :target-type field-list :member-name
                                  "fields"))
                                (:shape-name "ReportTaskProgressInput"))

(smithy/sdk/shapes:define-output report-task-progress-output common-lisp:nil
                                 ((canceled :target-type boolean :required
                                   common-lisp:t :member-name "canceled"))
                                 (:shape-name "ReportTaskProgressOutput"))

(smithy/sdk/shapes:define-input report-task-runner-heartbeat-input
                                common-lisp:nil
                                ((taskrunner-id :target-type id :required
                                  common-lisp:t :member-name "taskrunnerId")
                                 (worker-group :target-type string :member-name
                                  "workerGroup")
                                 (hostname :target-type id :member-name
                                  "hostname"))
                                (:shape-name "ReportTaskRunnerHeartbeatInput"))

(smithy/sdk/shapes:define-output report-task-runner-heartbeat-output
                                 common-lisp:nil
                                 ((terminate :target-type boolean :required
                                   common-lisp:t :member-name "terminate"))
                                 (:shape-name
                                  "ReportTaskRunnerHeartbeatOutput"))

(smithy/sdk/shapes:define-structure selector common-lisp:nil
                                    ((field-name :target-type string
                                      :member-name "fieldName")
                                     (operator :target-type operator
                                      :member-name "operator"))
                                    (:shape-name "Selector"))

(smithy/sdk/shapes:define-list selector-list :member selector)

(smithy/sdk/shapes:define-input set-status-input common-lisp:nil
                                ((pipeline-id :target-type id :required
                                  common-lisp:t :member-name "pipelineId")
                                 (object-ids :target-type id-list :required
                                  common-lisp:t :member-name "objectIds")
                                 (status :target-type string :required
                                  common-lisp:t :member-name "status"))
                                (:shape-name "SetStatusInput"))

(smithy/sdk/shapes:define-input set-task-status-input common-lisp:nil
                                ((task-id :target-type task-id :required
                                  common-lisp:t :member-name "taskId")
                                 (task-status :target-type task-status
                                  :required common-lisp:t :member-name
                                  "taskStatus")
                                 (error-id :target-type string :member-name
                                  "errorId")
                                 (error-message :target-type error-message
                                  :member-name "errorMessage")
                                 (error-stack-trace :target-type string
                                  :member-name "errorStackTrace"))
                                (:shape-name "SetTaskStatusInput"))

(smithy/sdk/shapes:define-output set-task-status-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "SetTaskStatusOutput"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-error task-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TaskNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure task-object common-lisp:nil
                                    ((task-id :target-type task-id :member-name
                                      "taskId")
                                     (pipeline-id :target-type id :member-name
                                      "pipelineId")
                                     (attempt-id :target-type id :member-name
                                      "attemptId")
                                     (objects :target-type pipeline-object-map
                                      :member-name "objects"))
                                    (:shape-name "TaskObject"))

(smithy/sdk/shapes:define-enum task-status
    common-lisp:nil
  (:finished "FINISHED")
  (:failed "FAILED")
  (:false "FALSE"))

(smithy/sdk/shapes:define-input validate-pipeline-definition-input
                                common-lisp:nil
                                ((pipeline-id :target-type id :required
                                  common-lisp:t :member-name "pipelineId")
                                 (pipeline-objects :target-type
                                  pipeline-object-list :required common-lisp:t
                                  :member-name "pipelineObjects")
                                 (parameter-objects :target-type
                                  parameter-object-list :member-name
                                  "parameterObjects")
                                 (parameter-values :target-type
                                  parameter-value-list :member-name
                                  "parameterValues"))
                                (:shape-name "ValidatePipelineDefinitionInput"))

(smithy/sdk/shapes:define-output validate-pipeline-definition-output
                                 common-lisp:nil
                                 ((validation-errors :target-type
                                   validation-errors :member-name
                                   "validationErrors")
                                  (validation-warnings :target-type
                                   validation-warnings :member-name
                                   "validationWarnings")
                                  (errored :target-type boolean :required
                                   common-lisp:t :member-name "errored"))
                                 (:shape-name
                                  "ValidatePipelineDefinitionOutput"))

(smithy/sdk/shapes:define-structure validation-error common-lisp:nil
                                    ((id :target-type id :member-name "id")
                                     (errors :target-type validation-messages
                                      :member-name "errors"))
                                    (:shape-name "ValidationError"))

(smithy/sdk/shapes:define-list validation-errors :member validation-error)

(smithy/sdk/shapes:define-structure validation-warning common-lisp:nil
                                    ((id :target-type id :member-name "id")
                                     (warnings :target-type validation-messages
                                      :member-name "warnings"))
                                    (:shape-name "ValidationWarning"))

(smithy/sdk/shapes:define-list validation-warnings :member validation-warning)

(smithy/sdk/shapes:define-type attribute-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type cancel-active smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list field-list :member field)

(smithy/sdk/shapes:define-type field-name-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type field-string-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list id-list :member id)

(smithy/sdk/shapes:define-type int smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type long-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pipeline-list :member pipeline-id-name)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type validation-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list validation-messages :member validation-message)

(smithy/sdk/operation:define-operation activate-pipeline :shape-name
                                       "ActivatePipeline" :input
                                       activate-pipeline-input :output
                                       activate-pipeline-output :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-deleted-exception
                                        pipeline-not-found-exception))

(smithy/sdk/operation:define-operation add-tags :shape-name "AddTags" :input
                                       add-tags-input :output add-tags-output
                                       :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-deleted-exception
                                        pipeline-not-found-exception))

(smithy/sdk/operation:define-operation create-pipeline :shape-name
                                       "CreatePipeline" :input
                                       create-pipeline-input :output
                                       create-pipeline-output :errors
                                       (internal-service-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation deactivate-pipeline :shape-name
                                       "DeactivatePipeline" :input
                                       deactivate-pipeline-input :output
                                       deactivate-pipeline-output :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-deleted-exception
                                        pipeline-not-found-exception))

(smithy/sdk/operation:define-operation delete-pipeline :shape-name
                                       "DeletePipeline" :input
                                       delete-pipeline-input :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-not-found-exception))

(smithy/sdk/operation:define-operation describe-objects :shape-name
                                       "DescribeObjects" :input
                                       describe-objects-input :output
                                       describe-objects-output :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-deleted-exception
                                        pipeline-not-found-exception))

(smithy/sdk/operation:define-operation describe-pipelines :shape-name
                                       "DescribePipelines" :input
                                       describe-pipelines-input :output
                                       describe-pipelines-output :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-deleted-exception
                                        pipeline-not-found-exception))

(smithy/sdk/operation:define-operation evaluate-expression :shape-name
                                       "EvaluateExpression" :input
                                       evaluate-expression-input :output
                                       evaluate-expression-output :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-deleted-exception
                                        pipeline-not-found-exception
                                        task-not-found-exception))

(smithy/sdk/operation:define-operation get-pipeline-definition :shape-name
                                       "GetPipelineDefinition" :input
                                       get-pipeline-definition-input :output
                                       get-pipeline-definition-output :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-deleted-exception
                                        pipeline-not-found-exception))

(smithy/sdk/operation:define-operation list-pipelines :shape-name
                                       "ListPipelines" :input
                                       list-pipelines-input :output
                                       list-pipelines-output :errors
                                       (internal-service-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation poll-for-task :shape-name "PollForTask"
                                       :input poll-for-task-input :output
                                       poll-for-task-output :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        task-not-found-exception))

(smithy/sdk/operation:define-operation put-pipeline-definition :shape-name
                                       "PutPipelineDefinition" :input
                                       put-pipeline-definition-input :output
                                       put-pipeline-definition-output :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-deleted-exception
                                        pipeline-not-found-exception))

(smithy/sdk/operation:define-operation query-objects :shape-name "QueryObjects"
                                       :input query-objects-input :output
                                       query-objects-output :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-deleted-exception
                                        pipeline-not-found-exception))

(smithy/sdk/operation:define-operation remove-tags :shape-name "RemoveTags"
                                       :input remove-tags-input :output
                                       remove-tags-output :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-deleted-exception
                                        pipeline-not-found-exception))

(smithy/sdk/operation:define-operation report-task-progress :shape-name
                                       "ReportTaskProgress" :input
                                       report-task-progress-input :output
                                       report-task-progress-output :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-deleted-exception
                                        pipeline-not-found-exception
                                        task-not-found-exception))

(smithy/sdk/operation:define-operation report-task-runner-heartbeat :shape-name
                                       "ReportTaskRunnerHeartbeat" :input
                                       report-task-runner-heartbeat-input
                                       :output
                                       report-task-runner-heartbeat-output
                                       :errors
                                       (internal-service-error
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation set-status :shape-name "SetStatus"
                                       :input set-status-input :output
                                       common-lisp:null :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-deleted-exception
                                        pipeline-not-found-exception))

(smithy/sdk/operation:define-operation set-task-status :shape-name
                                       "SetTaskStatus" :input
                                       set-task-status-input :output
                                       set-task-status-output :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-deleted-exception
                                        pipeline-not-found-exception
                                        task-not-found-exception))

(smithy/sdk/operation:define-operation validate-pipeline-definition :shape-name
                                       "ValidatePipelineDefinition" :input
                                       validate-pipeline-definition-input
                                       :output
                                       validate-pipeline-definition-output
                                       :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        pipeline-deleted-exception
                                        pipeline-not-found-exception))
