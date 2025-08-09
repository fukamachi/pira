(uiop/package:define-package #:pira/bedrock-agentcore (:use)
                             (:export #:access-denied-exception
                              #:access-token-type #:actor-id #:actor-summary
                              #:actor-summary-list #:agentic-resource
                              #:amazon-bedrock-agent-core #:api-key-type
                              #:automation-stream #:automation-stream-status
                              #:automation-stream-update #:body #:branch
                              #:branch-filter #:branch-name
                              #:browser-session-id #:browser-session-resource
                              #:browser-session-status #:browser-session-stream
                              #:browser-session-summaries
                              #:browser-session-summary
                              #:browser-session-timeout
                              #:browser-stream-endpoint #:client-token
                              #:code-interpreter-result
                              #:code-interpreter-session-id
                              #:code-interpreter-session-resource
                              #:code-interpreter-session-status
                              #:code-interpreter-session-summaries
                              #:code-interpreter-session-summary
                              #:code-interpreter-session-timeout
                              #:code-interpreter-stream-output
                              #:conflict-exception #:content #:content-block
                              #:content-block-list #:content-block-type
                              #:conversational #:create-event
                              #:create-event-input #:create-event-output
                              #:credential-provider-name
                              #:custom-request-key-type
                              #:custom-request-parameters-type
                              #:custom-request-value-type #:date-timestamp
                              #:delete-event #:delete-event-input
                              #:delete-event-output #:delete-memory-record
                              #:delete-memory-record-input
                              #:delete-memory-record-output #:document #:event
                              #:event-id #:event-list #:filter-input
                              #:get-browser-session
                              #:get-browser-session-request
                              #:get-browser-session-response
                              #:get-code-interpreter-session
                              #:get-code-interpreter-session-request
                              #:get-code-interpreter-session-response
                              #:get-event #:get-event-input #:get-event-output
                              #:get-memory-record #:get-memory-record-input
                              #:get-memory-record-output #:get-resource-api-key
                              #:get-resource-api-key-request
                              #:get-resource-api-key-response
                              #:get-resource-oauth2token
                              #:get-resource-oauth2token-request
                              #:get-resource-oauth2token-response
                              #:get-workload-access-token
                              #:get-workload-access-token-for-jwt
                              #:get-workload-access-token-for-jwtrequest
                              #:get-workload-access-token-for-jwtresponse
                              #:get-workload-access-token-for-user-id
                              #:get-workload-access-token-for-user-id-request
                              #:get-workload-access-token-for-user-id-response
                              #:get-workload-access-token-request
                              #:get-workload-access-token-response
                              #:http-response-code #:input-content-block
                              #:input-content-block-list
                              #:internal-server-exception
                              #:invalid-input-exception #:invoke-agent-runtime
                              #:invoke-agent-runtime-request
                              #:invoke-agent-runtime-response
                              #:invoke-code-interpreter
                              #:invoke-code-interpreter-request
                              #:invoke-code-interpreter-response #:list-actors
                              #:list-actors-input #:list-actors-output
                              #:list-browser-sessions
                              #:list-browser-sessions-request
                              #:list-browser-sessions-response
                              #:list-code-interpreter-sessions
                              #:list-code-interpreter-sessions-request
                              #:list-code-interpreter-sessions-response
                              #:list-events #:list-events-input
                              #:list-events-output #:list-memory-records
                              #:list-memory-records-input
                              #:list-memory-records-output #:list-sessions
                              #:list-sessions-input #:list-sessions-output
                              #:live-view-stream #:max-len-string #:max-results
                              #:memory-content #:memory-id #:memory-record
                              #:memory-record-id #:memory-record-summary
                              #:memory-record-summary-list #:memory-resource
                              #:memory-strategy-id #:mime-type #:name
                              #:namespace #:namespaces-list #:next-token
                              #:non-blank-string #:oauth2flow-type
                              #:pagination-token #:payload-type
                              #:payload-type-list #:programming-language
                              #:resource-content #:resource-content-type
                              #:resource-not-found-exception
                              #:resource-oauth2return-url-type
                              #:response-stream #:retrieve-memory-records
                              #:retrieve-memory-records-input
                              #:retrieve-memory-records-output #:role
                              #:runtime-client-error #:scope-type
                              #:scopes-list-type #:search-criteria
                              #:sensitive-string #:service-exception
                              #:service-quota-exceeded-exception #:session-id
                              #:session-summary #:session-summary-list
                              #:session-type #:start-browser-session
                              #:start-browser-session-request
                              #:start-browser-session-response
                              #:start-code-interpreter-session
                              #:start-code-interpreter-session-request
                              #:start-code-interpreter-session-response
                              #:stop-browser-session
                              #:stop-browser-session-request
                              #:stop-browser-session-response
                              #:stop-code-interpreter-session
                              #:stop-code-interpreter-session-request
                              #:stop-code-interpreter-session-response
                              #:stream-update #:string-list #:string-type
                              #:task-status #:throttled-exception
                              #:throttling-exception #:tool-arguments
                              #:tool-name #:tool-result-structured-content
                              #:unauthorized-exception #:update-browser-stream
                              #:update-browser-stream-request
                              #:update-browser-stream-response #:user-id-type
                              #:user-token-type #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:view-port
                              #:view-port-height #:view-port-width
                              #:workload-identity-name-type
                              #:workload-identity-token-type))
(common-lisp:in-package #:pira/bedrock-agentcore)

(smithy/sdk/service:define-service amazon-bedrock-agent-core :shape-name
                                   "AmazonBedrockAgentCore" :version
                                   "2024-02-28" :title
                                   "Amazon Bedrock AgentCore Data Plane Fronting Layer"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Bedrock AgentCore")
                                      ("arnNamespace" . "bedrock-agentcore")
                                      ("endpointPrefix" . "bedrock-agentcore"))
                                     ("aws.auth#sigv4"
                                      ("name" . "bedrock-agentcore"))
                                     ("aws.protocols#restJson1"
                                      ("http" . #("http/1.1"))
                                      ("eventStreamHttp" . #("http/1.1")))))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type access-token-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type actor-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure actor-summary common-lisp:nil
                                    ((actor-id :target-type actor-id :required
                                      common-lisp:t :member-name "actorId"))
                                    (:shape-name "ActorSummary"))

(smithy/sdk/shapes:define-list actor-summary-list :member actor-summary)

common-lisp:nil

(smithy/sdk/shapes:define-type api-key-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure automation-stream common-lisp:nil
                                    ((stream-endpoint :target-type
                                      browser-stream-endpoint :required
                                      common-lisp:t :member-name
                                      "streamEndpoint")
                                     (stream-status :target-type
                                      automation-stream-status :required
                                      common-lisp:t :member-name
                                      "streamStatus"))
                                    (:shape-name "AutomationStream"))

(smithy/sdk/shapes:define-enum automation-stream-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure automation-stream-update common-lisp:nil
                                    ((stream-status :target-type
                                      automation-stream-status :member-name
                                      "streamStatus"))
                                    (:shape-name "AutomationStreamUpdate"))

(smithy/sdk/shapes:define-type body smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure branch common-lisp:nil
                                    ((root-event-id :target-type event-id
                                      :member-name "rootEventId")
                                     (name :target-type branch-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "Branch"))

(smithy/sdk/shapes:define-structure branch-filter common-lisp:nil
                                    ((name :target-type branch-name :required
                                      common-lisp:t :member-name "name")
                                     (include-parent-branches :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "includeParentBranches"))
                                    (:shape-name "BranchFilter"))

(smithy/sdk/shapes:define-type branch-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type browser-session-id
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum browser-session-status
    common-lisp:nil
  (:ready "READY")
  (:terminated "TERMINATED"))

(smithy/sdk/shapes:define-structure browser-session-stream common-lisp:nil
                                    ((automation-stream :target-type
                                      automation-stream :required common-lisp:t
                                      :member-name "automationStream")
                                     (live-view-stream :target-type
                                      live-view-stream :member-name
                                      "liveViewStream"))
                                    (:shape-name "BrowserSessionStream"))

(smithy/sdk/shapes:define-list browser-session-summaries :member
                               browser-session-summary)

(smithy/sdk/shapes:define-structure browser-session-summary common-lisp:nil
                                    ((browser-identifier :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "browserIdentifier")
                                     (session-id :target-type
                                      browser-session-id :required
                                      common-lisp:t :member-name "sessionId")
                                     (name :target-type name :member-name
                                      "name")
                                     (status :target-type
                                      browser-session-status :required
                                      common-lisp:t :member-name "status")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      date-timestamp :member-name
                                      "lastUpdatedAt"))
                                    (:shape-name "BrowserSessionSummary"))

(smithy/sdk/shapes:define-type browser-session-timeout
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type browser-stream-endpoint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure code-interpreter-result common-lisp:nil
                                    ((content :target-type content-block-list
                                      :required common-lisp:t :member-name
                                      "content")
                                     (structured-content :target-type
                                      tool-result-structured-content
                                      :member-name "structuredContent")
                                     (is-error :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isError"))
                                    (:shape-name "CodeInterpreterResult"))

(smithy/sdk/shapes:define-type code-interpreter-session-id
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum code-interpreter-session-status
    common-lisp:nil
  (:ready "READY")
  (:terminated "TERMINATED"))

(smithy/sdk/shapes:define-list code-interpreter-session-summaries :member
                               code-interpreter-session-summary)

(smithy/sdk/shapes:define-structure code-interpreter-session-summary
                                    common-lisp:nil
                                    ((code-interpreter-identifier :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "codeInterpreterIdentifier")
                                     (session-id :target-type
                                      code-interpreter-session-id :required
                                      common-lisp:t :member-name "sessionId")
                                     (name :target-type name :member-name
                                      "name")
                                     (status :target-type
                                      code-interpreter-session-status :required
                                      common-lisp:t :member-name "status")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      date-timestamp :member-name
                                      "lastUpdatedAt"))
                                    (:shape-name
                                     "CodeInterpreterSessionSummary"))

(smithy/sdk/shapes:define-type code-interpreter-session-timeout
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-union code-interpreter-stream-output common-lisp:nil
                                ((result :target-type code-interpreter-result
                                  :member-name "result")
                                 (access-denied-exception :target-type
                                  access-denied-exception :member-name
                                  "accessDeniedException")
                                 (conflict-exception :target-type
                                  conflict-exception :member-name
                                  "conflictException")
                                 (internal-server-exception :target-type
                                  internal-server-exception :member-name
                                  "internalServerException")
                                 (resource-not-found-exception :target-type
                                  resource-not-found-exception :member-name
                                  "resourceNotFoundException")
                                 (service-quota-exceeded-exception :target-type
                                  service-quota-exceeded-exception :member-name
                                  "serviceQuotaExceededException")
                                 (throttling-exception :target-type
                                  throttling-exception :member-name
                                  "throttlingException")
                                 (validation-exception :target-type
                                  validation-exception :member-name
                                  "validationException"))
                                (:shape-name "CodeInterpreterStreamOutput"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-union content common-lisp:nil
                                ((text :target-type sensitive-string
                                  :member-name "text"))
                                (:shape-name "Content"))

(smithy/sdk/shapes:define-structure content-block common-lisp:nil
                                    ((type :target-type content-block-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (text :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "text")
                                     (data :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "data")
                                     (mime-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "mimeType")
                                     (uri :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "uri")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (size :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "size")
                                     (resource :target-type resource-content
                                      :member-name "resource"))
                                    (:shape-name "ContentBlock"))

(smithy/sdk/shapes:define-list content-block-list :member content-block)

(smithy/sdk/shapes:define-enum content-block-type
    common-lisp:nil
  (:text "text")
  (:image "image")
  (:embedded-resource "resource")
  (:resource-link "resource_link"))

(smithy/sdk/shapes:define-structure conversational common-lisp:nil
                                    ((content :target-type content :required
                                      common-lisp:t :member-name "content")
                                     (role :target-type role :required
                                      common-lisp:t :member-name "role"))
                                    (:shape-name "Conversational"))

(smithy/sdk/shapes:define-input create-event-input common-lisp:nil
                                ((memory-id :target-type memory-id :required
                                  common-lisp:t :member-name "memoryId"
                                  :http-label common-lisp:t)
                                 (actor-id :target-type actor-id :required
                                  common-lisp:t :member-name "actorId")
                                 (session-id :target-type session-id
                                  :member-name "sessionId")
                                 (event-timestamp :target-type
                                  smithy/sdk/smithy-types:timestamp :required
                                  common-lisp:t :member-name "eventTimestamp")
                                 (payload :target-type payload-type-list
                                  :required common-lisp:t :member-name
                                  "payload")
                                 (branch :target-type branch :member-name
                                  "branch")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clientToken"))
                                (:shape-name "CreateEventInput"))

(smithy/sdk/shapes:define-output create-event-output common-lisp:nil
                                 ((event :target-type event :required
                                   common-lisp:t :member-name "event"))
                                 (:shape-name "CreateEventOutput"))

(smithy/sdk/shapes:define-type credential-provider-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-request-key-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map custom-request-parameters-type :key
                              custom-request-key-type :value
                              custom-request-value-type)

(smithy/sdk/shapes:define-type custom-request-value-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date-timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-event-input common-lisp:nil
                                ((memory-id :target-type memory-id :required
                                  common-lisp:t :member-name "memoryId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (event-id :target-type event-id :required
                                  common-lisp:t :member-name "eventId"
                                  :http-label common-lisp:t)
                                 (actor-id :target-type actor-id :required
                                  common-lisp:t :member-name "actorId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteEventInput"))

(smithy/sdk/shapes:define-output delete-event-output common-lisp:nil
                                 ((event-id :target-type event-id :required
                                   common-lisp:t :member-name "eventId"))
                                 (:shape-name "DeleteEventOutput"))

(smithy/sdk/shapes:define-input delete-memory-record-input common-lisp:nil
                                ((memory-id :target-type memory-id :required
                                  common-lisp:t :member-name "memoryId"
                                  :http-label common-lisp:t)
                                 (memory-record-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "memoryRecordId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteMemoryRecordInput"))

(smithy/sdk/shapes:define-output delete-memory-record-output common-lisp:nil
                                 ((memory-record-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "memoryRecordId"))
                                 (:shape-name "DeleteMemoryRecordOutput"))

(smithy/sdk/shapes:define-type document smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((memory-id :target-type memory-id
                                      :required common-lisp:t :member-name
                                      "memoryId")
                                     (actor-id :target-type actor-id :required
                                      common-lisp:t :member-name "actorId")
                                     (session-id :target-type session-id
                                      :required common-lisp:t :member-name
                                      "sessionId")
                                     (event-id :target-type event-id :required
                                      common-lisp:t :member-name "eventId")
                                     (event-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "eventTimestamp")
                                     (payload :target-type payload-type-list
                                      :required common-lisp:t :member-name
                                      "payload")
                                     (branch :target-type branch :member-name
                                      "branch"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-type event-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-list :member event)

(smithy/sdk/shapes:define-structure filter-input common-lisp:nil
                                    ((branch :target-type branch-filter
                                      :member-name "branch"))
                                    (:shape-name "FilterInput"))

(smithy/sdk/shapes:define-input get-browser-session-request common-lisp:nil
                                ((browser-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "browserIdentifier" :http-label
                                  common-lisp:t)
                                 (session-id :target-type browser-session-id
                                  :required common-lisp:t :member-name
                                  "sessionId" :http-query "sessionId"))
                                (:shape-name "GetBrowserSessionRequest"))

(smithy/sdk/shapes:define-output get-browser-session-response common-lisp:nil
                                 ((browser-identifier :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "browserIdentifier")
                                  (session-id :target-type browser-session-id
                                   :required common-lisp:t :member-name
                                   "sessionId")
                                  (name :target-type name :member-name "name")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (view-port :target-type view-port
                                   :member-name "viewPort")
                                  (session-timeout-seconds :target-type
                                   browser-session-timeout :member-name
                                   "sessionTimeoutSeconds")
                                  (status :target-type browser-session-status
                                   :member-name "status")
                                  (streams :target-type browser-session-stream
                                   :member-name "streams")
                                  (session-replay-artifact :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "sessionReplayArtifact")
                                  (last-updated-at :target-type date-timestamp
                                   :member-name "lastUpdatedAt"))
                                 (:shape-name "GetBrowserSessionResponse"))

(smithy/sdk/shapes:define-input get-code-interpreter-session-request
                                common-lisp:nil
                                ((code-interpreter-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "codeInterpreterIdentifier" :http-label
                                  common-lisp:t)
                                 (session-id :target-type
                                  code-interpreter-session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-query "sessionId"))
                                (:shape-name
                                 "GetCodeInterpreterSessionRequest"))

(smithy/sdk/shapes:define-output get-code-interpreter-session-response
                                 common-lisp:nil
                                 ((code-interpreter-identifier :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "codeInterpreterIdentifier")
                                  (session-id :target-type
                                   code-interpreter-session-id :required
                                   common-lisp:t :member-name "sessionId")
                                  (name :target-type name :member-name "name")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (session-timeout-seconds :target-type
                                   code-interpreter-session-timeout
                                   :member-name "sessionTimeoutSeconds")
                                  (status :target-type
                                   code-interpreter-session-status :member-name
                                   "status"))
                                 (:shape-name
                                  "GetCodeInterpreterSessionResponse"))

(smithy/sdk/shapes:define-input get-event-input common-lisp:nil
                                ((memory-id :target-type memory-id :required
                                  common-lisp:t :member-name "memoryId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (actor-id :target-type actor-id :required
                                  common-lisp:t :member-name "actorId"
                                  :http-label common-lisp:t)
                                 (event-id :target-type event-id :required
                                  common-lisp:t :member-name "eventId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEventInput"))

(smithy/sdk/shapes:define-output get-event-output common-lisp:nil
                                 ((event :target-type event :required
                                   common-lisp:t :member-name "event"))
                                 (:shape-name "GetEventOutput"))

(smithy/sdk/shapes:define-input get-memory-record-input common-lisp:nil
                                ((memory-id :target-type memory-id :required
                                  common-lisp:t :member-name "memoryId"
                                  :http-label common-lisp:t)
                                 (memory-record-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "memoryRecordId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetMemoryRecordInput"))

(smithy/sdk/shapes:define-output get-memory-record-output common-lisp:nil
                                 ((memory-record :target-type memory-record
                                   :required common-lisp:t :member-name
                                   "memoryRecord"))
                                 (:shape-name "GetMemoryRecordOutput"))

(smithy/sdk/shapes:define-input get-resource-api-key-request common-lisp:nil
                                ((workload-identity-token :target-type
                                  workload-identity-token-type :required
                                  common-lisp:t :member-name
                                  "workloadIdentityToken")
                                 (resource-credential-provider-name
                                  :target-type credential-provider-name
                                  :required common-lisp:t :member-name
                                  "resourceCredentialProviderName"))
                                (:shape-name "GetResourceApiKeyRequest"))

(smithy/sdk/shapes:define-output get-resource-api-key-response common-lisp:nil
                                 ((api-key :target-type api-key-type :required
                                   common-lisp:t :member-name "apiKey"))
                                 (:shape-name "GetResourceApiKeyResponse"))

(smithy/sdk/shapes:define-input get-resource-oauth2token-request
                                common-lisp:nil
                                ((workload-identity-token :target-type
                                  workload-identity-token-type :required
                                  common-lisp:t :member-name
                                  "workloadIdentityToken")
                                 (resource-credential-provider-name
                                  :target-type credential-provider-name
                                  :required common-lisp:t :member-name
                                  "resourceCredentialProviderName")
                                 (scopes :target-type scopes-list-type
                                  :required common-lisp:t :member-name
                                  "scopes")
                                 (oauth2flow :target-type oauth2flow-type
                                  :required common-lisp:t :member-name
                                  "oauth2Flow")
                                 (resource-oauth2return-url :target-type
                                  resource-oauth2return-url-type :member-name
                                  "resourceOauth2ReturnUrl")
                                 (force-authentication :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "forceAuthentication")
                                 (custom-parameters :target-type
                                  custom-request-parameters-type :member-name
                                  "customParameters"))
                                (:shape-name "GetResourceOauth2TokenRequest"))

(smithy/sdk/shapes:define-output get-resource-oauth2token-response
                                 common-lisp:nil
                                 ((authorization-url :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "authorizationUrl")
                                  (access-token :target-type access-token-type
                                   :member-name "accessToken"))
                                 (:shape-name "GetResourceOauth2TokenResponse"))

(smithy/sdk/shapes:define-input get-workload-access-token-for-jwtrequest
                                common-lisp:nil
                                ((workload-name :target-type
                                  workload-identity-name-type :required
                                  common-lisp:t :member-name "workloadName")
                                 (user-token :target-type user-token-type
                                  :required common-lisp:t :member-name
                                  "userToken"))
                                (:shape-name
                                 "GetWorkloadAccessTokenForJWTRequest"))

(smithy/sdk/shapes:define-output get-workload-access-token-for-jwtresponse
                                 common-lisp:nil
                                 ((workload-access-token :target-type
                                   workload-identity-token-type :required
                                   common-lisp:t :member-name
                                   "workloadAccessToken"))
                                 (:shape-name
                                  "GetWorkloadAccessTokenForJWTResponse"))

(smithy/sdk/shapes:define-input get-workload-access-token-for-user-id-request
                                common-lisp:nil
                                ((workload-name :target-type
                                  workload-identity-name-type :required
                                  common-lisp:t :member-name "workloadName")
                                 (user-id :target-type user-id-type :required
                                  common-lisp:t :member-name "userId"))
                                (:shape-name
                                 "GetWorkloadAccessTokenForUserIdRequest"))

(smithy/sdk/shapes:define-output get-workload-access-token-for-user-id-response
                                 common-lisp:nil
                                 ((workload-access-token :target-type
                                   workload-identity-token-type :required
                                   common-lisp:t :member-name
                                   "workloadAccessToken"))
                                 (:shape-name
                                  "GetWorkloadAccessTokenForUserIdResponse"))

(smithy/sdk/shapes:define-input get-workload-access-token-request
                                common-lisp:nil
                                ((workload-name :target-type
                                  workload-identity-name-type :required
                                  common-lisp:t :member-name "workloadName"))
                                (:shape-name "GetWorkloadAccessTokenRequest"))

(smithy/sdk/shapes:define-output get-workload-access-token-response
                                 common-lisp:nil
                                 ((workload-access-token :target-type
                                   workload-identity-token-type :required
                                   common-lisp:t :member-name
                                   "workloadAccessToken"))
                                 (:shape-name "GetWorkloadAccessTokenResponse"))

(smithy/sdk/shapes:define-type http-response-code
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure input-content-block common-lisp:nil
                                    ((path :target-type max-len-string
                                      :required common-lisp:t :member-name
                                      "path")
                                     (text :target-type max-len-string
                                      :member-name "text")
                                     (blob :target-type body :member-name
                                      "blob"))
                                    (:shape-name "InputContentBlock"))

(smithy/sdk/shapes:define-list input-content-block-list :member
                               input-content-block)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input invoke-agent-runtime-request common-lisp:nil
                                ((content-type :target-type mime-type
                                  :member-name "contentType" :http-header
                                  "Content-Type")
                                 (accept :target-type mime-type :member-name
                                  "accept" :http-header "Accept")
                                 (mcp-session-id :target-type string-type
                                  :member-name "mcpSessionId" :http-header
                                  "Mcp-Session-Id")
                                 (runtime-session-id :target-type session-type
                                  :member-name "runtimeSessionId" :http-header
                                  "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id")
                                 (mcp-protocol-version :target-type string-type
                                  :member-name "mcpProtocolVersion"
                                  :http-header "Mcp-Protocol-Version")
                                 (runtime-user-id :target-type string-type
                                  :member-name "runtimeUserId" :http-header
                                  "X-Amzn-Bedrock-AgentCore-Runtime-User-Id")
                                 (trace-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "traceId" :http-header "X-Amzn-Trace-Id")
                                 (trace-parent :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "traceParent" :http-header "traceparent")
                                 (trace-state :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "traceState" :http-header "tracestate")
                                 (baggage :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "baggage" :http-header "baggage")
                                 (agent-runtime-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "agentRuntimeArn"
                                  :http-label common-lisp:t)
                                 (qualifier :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "qualifier" :http-query "qualifier")
                                 (payload :target-type body :required
                                  common-lisp:t :member-name "payload"
                                  :http-payload common-lisp:t))
                                (:shape-name "InvokeAgentRuntimeRequest"))

(smithy/sdk/shapes:define-output invoke-agent-runtime-response common-lisp:nil
                                 ((runtime-session-id :target-type session-id
                                   :member-name "runtimeSessionId" :http-header
                                   "X-Amzn-Bedrock-AgentCore-Runtime-Session-Id")
                                  (mcp-session-id :target-type session-id
                                   :member-name "mcpSessionId" :http-header
                                   "Mcp-Session-Id")
                                  (mcp-protocol-version :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "mcpProtocolVersion" :http-header
                                   "Mcp-Protocol-Version")
                                  (trace-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "traceId" :http-header "X-Amzn-Trace-Id")
                                  (trace-parent :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "traceParent" :http-header "traceparent")
                                  (trace-state :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "traceState" :http-header "tracestate")
                                  (baggage :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "baggage" :http-header "baggage")
                                  (content-type :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "contentType"
                                   :http-header "Content-Type")
                                  (response :target-type response-stream
                                   :member-name "response" :http-payload
                                   common-lisp:t)
                                  (status-code :target-type http-response-code
                                   :member-name "statusCode"
                                   :http-response-code common-lisp:t))
                                 (:shape-name "InvokeAgentRuntimeResponse"))

(smithy/sdk/shapes:define-input invoke-code-interpreter-request common-lisp:nil
                                ((code-interpreter-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "codeInterpreterIdentifier" :http-label
                                  common-lisp:t)
                                 (session-id :target-type
                                  code-interpreter-session-id :member-name
                                  "sessionId" :http-header
                                  "x-amzn-code-interpreter-session-id")
                                 (name :target-type tool-name :required
                                  common-lisp:t :member-name "name")
                                 (arguments :target-type tool-arguments
                                  :member-name "arguments"))
                                (:shape-name "InvokeCodeInterpreterRequest"))

(smithy/sdk/shapes:define-output invoke-code-interpreter-response
                                 common-lisp:nil
                                 ((session-id :target-type
                                   code-interpreter-session-id :member-name
                                   "sessionId" :http-header
                                   "x-amzn-code-interpreter-session-id")
                                  (stream :target-type
                                   code-interpreter-stream-output :required
                                   common-lisp:t :member-name "stream"
                                   :http-payload common-lisp:t))
                                 (:shape-name "InvokeCodeInterpreterResponse"))

(smithy/sdk/shapes:define-input list-actors-input common-lisp:nil
                                ((memory-id :target-type memory-id :required
                                  common-lisp:t :member-name "memoryId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListActorsInput"))

(smithy/sdk/shapes:define-output list-actors-output common-lisp:nil
                                 ((actor-summaries :target-type
                                   actor-summary-list :required common-lisp:t
                                   :member-name "actorSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListActorsOutput"))

(smithy/sdk/shapes:define-input list-browser-sessions-request common-lisp:nil
                                ((browser-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "browserIdentifier" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (status :target-type browser-session-status
                                  :member-name "status"))
                                (:shape-name "ListBrowserSessionsRequest"))

(smithy/sdk/shapes:define-output list-browser-sessions-response common-lisp:nil
                                 ((items :target-type browser-session-summaries
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBrowserSessionsResponse"))

(smithy/sdk/shapes:define-input list-code-interpreter-sessions-request
                                common-lisp:nil
                                ((code-interpreter-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "codeInterpreterIdentifier" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken")
                                 (status :target-type
                                  code-interpreter-session-status :member-name
                                  "status"))
                                (:shape-name
                                 "ListCodeInterpreterSessionsRequest"))

(smithy/sdk/shapes:define-output list-code-interpreter-sessions-response
                                 common-lisp:nil
                                 ((items :target-type
                                   code-interpreter-session-summaries :required
                                   common-lisp:t :member-name "items")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListCodeInterpreterSessionsResponse"))

(smithy/sdk/shapes:define-input list-events-input common-lisp:nil
                                ((memory-id :target-type memory-id :required
                                  common-lisp:t :member-name "memoryId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t)
                                 (actor-id :target-type actor-id :required
                                  common-lisp:t :member-name "actorId"
                                  :http-label common-lisp:t)
                                 (include-payloads :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "includePayloads")
                                 (filter :target-type filter-input :member-name
                                  "filter")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListEventsInput"))

(smithy/sdk/shapes:define-output list-events-output common-lisp:nil
                                 ((events :target-type event-list :required
                                   common-lisp:t :member-name "events")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListEventsOutput"))

(smithy/sdk/shapes:define-input list-memory-records-input common-lisp:nil
                                ((memory-id :target-type memory-id :required
                                  common-lisp:t :member-name "memoryId"
                                  :http-label common-lisp:t)
                                 (namespace :target-type namespace :required
                                  common-lisp:t :member-name "namespace")
                                 (memory-strategy-id :target-type
                                  memory-strategy-id :member-name
                                  "memoryStrategyId")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListMemoryRecordsInput"))

(smithy/sdk/shapes:define-output list-memory-records-output common-lisp:nil
                                 ((memory-record-summaries :target-type
                                   memory-record-summary-list :required
                                   common-lisp:t :member-name
                                   "memoryRecordSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListMemoryRecordsOutput"))

(smithy/sdk/shapes:define-input list-sessions-input common-lisp:nil
                                ((memory-id :target-type memory-id :required
                                  common-lisp:t :member-name "memoryId"
                                  :http-label common-lisp:t)
                                 (actor-id :target-type actor-id :required
                                  common-lisp:t :member-name "actorId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListSessionsInput"))

(smithy/sdk/shapes:define-output list-sessions-output common-lisp:nil
                                 ((session-summaries :target-type
                                   session-summary-list :required common-lisp:t
                                   :member-name "sessionSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSessionsOutput"))

(smithy/sdk/shapes:define-structure live-view-stream common-lisp:nil
                                    ((stream-endpoint :target-type
                                      browser-stream-endpoint :member-name
                                      "streamEndpoint"))
                                    (:shape-name "LiveViewStream"))

(smithy/sdk/shapes:define-type max-len-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-union memory-content common-lisp:nil
                                ((text :target-type sensitive-string
                                  :member-name "text"))
                                (:shape-name "MemoryContent"))

(smithy/sdk/shapes:define-type memory-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure memory-record common-lisp:nil
                                    ((memory-record-id :target-type
                                      memory-record-id :required common-lisp:t
                                      :member-name "memoryRecordId")
                                     (content :target-type memory-content
                                      :required common-lisp:t :member-name
                                      "content")
                                     (memory-strategy-id :target-type
                                      memory-strategy-id :required
                                      common-lisp:t :member-name
                                      "memoryStrategyId")
                                     (namespaces :target-type namespaces-list
                                      :required common-lisp:t :member-name
                                      "namespaces")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt"))
                                    (:shape-name "MemoryRecord"))

(smithy/sdk/shapes:define-type memory-record-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure memory-record-summary common-lisp:nil
                                    ((memory-record-id :target-type
                                      memory-record-id :required common-lisp:t
                                      :member-name "memoryRecordId")
                                     (content :target-type memory-content
                                      :required common-lisp:t :member-name
                                      "content")
                                     (memory-strategy-id :target-type
                                      memory-strategy-id :required
                                      common-lisp:t :member-name
                                      "memoryStrategyId")
                                     (namespaces :target-type namespaces-list
                                      :required common-lisp:t :member-name
                                      "namespaces")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (score :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "score"))
                                    (:shape-name "MemoryRecordSummary"))

(smithy/sdk/shapes:define-list memory-record-summary-list :member
                               memory-record-summary)

common-lisp:nil

(smithy/sdk/shapes:define-type memory-strategy-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mime-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list namespaces-list :member namespace)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-blank-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum oauth2flow-type
    common-lisp:nil
  (:user-federation "USER_FEDERATION")
  (:m2m "M2M"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union payload-type common-lisp:nil
                                ((conversational :target-type conversational
                                  :member-name "conversational")
                                 (blob :target-type document :member-name
                                  "blob"))
                                (:shape-name "PayloadType"))

(smithy/sdk/shapes:define-list payload-type-list :member payload-type)

(smithy/sdk/shapes:define-enum programming-language
    common-lisp:nil
  (:python "python")
  (:javascript "javascript")
  (:typescript "typescript"))

(smithy/sdk/shapes:define-structure resource-content common-lisp:nil
                                    ((type :target-type resource-content-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (uri :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "uri")
                                     (mime-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "mimeType")
                                     (text :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "text")
                                     (blob :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "blob"))
                                    (:shape-name "ResourceContent"))

(smithy/sdk/shapes:define-enum resource-content-type
    common-lisp:nil
  (:text "text")
  (:blob "blob"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-oauth2return-url-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type response-stream smithy/sdk/smithy-types:blob
                               :streaming common-lisp:t)

(smithy/sdk/shapes:define-input retrieve-memory-records-input common-lisp:nil
                                ((memory-id :target-type memory-id :required
                                  common-lisp:t :member-name "memoryId"
                                  :http-label common-lisp:t)
                                 (namespace :target-type namespace :required
                                  common-lisp:t :member-name "namespace")
                                 (search-criteria :target-type search-criteria
                                  :required common-lisp:t :member-name
                                  "searchCriteria")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "RetrieveMemoryRecordsInput"))

(smithy/sdk/shapes:define-output retrieve-memory-records-output common-lisp:nil
                                 ((memory-record-summaries :target-type
                                   memory-record-summary-list :required
                                   common-lisp:t :member-name
                                   "memoryRecordSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "RetrieveMemoryRecordsOutput"))

(smithy/sdk/shapes:define-enum role
    common-lisp:nil
  (:assistant "ASSISTANT")
  (:user "USER")
  (:tool "TOOL")
  (:other "OTHER"))

(smithy/sdk/shapes:define-error runtime-client-error common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "RuntimeClientError")
                                (:error-code 424))

(smithy/sdk/shapes:define-type scope-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list scopes-list-type :member scope-type)

(smithy/sdk/shapes:define-structure search-criteria common-lisp:nil
                                    ((search-query :target-type
                                      sensitive-string :required common-lisp:t
                                      :member-name "searchQuery")
                                     (memory-strategy-id :target-type
                                      memory-strategy-id :member-name
                                      "memoryStrategyId")
                                     (top-k :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "topK"))
                                    (:shape-name "SearchCriteria"))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure session-summary common-lisp:nil
                                    ((session-id :target-type session-id
                                      :required common-lisp:t :member-name
                                      "sessionId")
                                     (actor-id :target-type actor-id :required
                                      common-lisp:t :member-name "actorId")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt"))
                                    (:shape-name "SessionSummary"))

(smithy/sdk/shapes:define-list session-summary-list :member session-summary)

(smithy/sdk/shapes:define-type session-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-browser-session-request common-lisp:nil
                                ((browser-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "browserIdentifier" :http-label
                                  common-lisp:t)
                                 (name :target-type name :member-name "name")
                                 (session-timeout-seconds :target-type
                                  browser-session-timeout :member-name
                                  "sessionTimeoutSeconds")
                                 (view-port :target-type view-port :member-name
                                  "viewPort")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "StartBrowserSessionRequest"))

(smithy/sdk/shapes:define-output start-browser-session-response common-lisp:nil
                                 ((browser-identifier :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "browserIdentifier")
                                  (session-id :target-type browser-session-id
                                   :required common-lisp:t :member-name
                                   "sessionId")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (streams :target-type browser-session-stream
                                   :member-name "streams"))
                                 (:shape-name "StartBrowserSessionResponse"))

(smithy/sdk/shapes:define-input start-code-interpreter-session-request
                                common-lisp:nil
                                ((code-interpreter-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "codeInterpreterIdentifier" :http-label
                                  common-lisp:t)
                                 (name :target-type name :member-name "name")
                                 (session-timeout-seconds :target-type
                                  code-interpreter-session-timeout :member-name
                                  "sessionTimeoutSeconds")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "StartCodeInterpreterSessionRequest"))

(smithy/sdk/shapes:define-output start-code-interpreter-session-response
                                 common-lisp:nil
                                 ((code-interpreter-identifier :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "codeInterpreterIdentifier")
                                  (session-id :target-type
                                   code-interpreter-session-id :required
                                   common-lisp:t :member-name "sessionId")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt"))
                                 (:shape-name
                                  "StartCodeInterpreterSessionResponse"))

(smithy/sdk/shapes:define-input stop-browser-session-request common-lisp:nil
                                ((browser-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "browserIdentifier" :http-label
                                  common-lisp:t)
                                 (session-id :target-type browser-session-id
                                  :required common-lisp:t :member-name
                                  "sessionId" :http-query "sessionId")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "StopBrowserSessionRequest"))

(smithy/sdk/shapes:define-output stop-browser-session-response common-lisp:nil
                                 ((browser-identifier :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "browserIdentifier")
                                  (session-id :target-type browser-session-id
                                   :required common-lisp:t :member-name
                                   "sessionId")
                                  (last-updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedAt"))
                                 (:shape-name "StopBrowserSessionResponse"))

(smithy/sdk/shapes:define-input stop-code-interpreter-session-request
                                common-lisp:nil
                                ((code-interpreter-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "codeInterpreterIdentifier" :http-label
                                  common-lisp:t)
                                 (session-id :target-type
                                  code-interpreter-session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-query "sessionId")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "StopCodeInterpreterSessionRequest"))

(smithy/sdk/shapes:define-output stop-code-interpreter-session-response
                                 common-lisp:nil
                                 ((code-interpreter-identifier :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "codeInterpreterIdentifier")
                                  (session-id :target-type
                                   code-interpreter-session-id :required
                                   common-lisp:t :member-name "sessionId")
                                  (last-updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedAt"))
                                 (:shape-name
                                  "StopCodeInterpreterSessionResponse"))

(smithy/sdk/shapes:define-union stream-update common-lisp:nil
                                ((automation-stream-update :target-type
                                  automation-stream-update :member-name
                                  "automationStreamUpdate"))
                                (:shape-name "StreamUpdate"))

(smithy/sdk/shapes:define-list string-list :member max-len-string)

(smithy/sdk/shapes:define-type string-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum task-status
    common-lisp:nil
  (:submitted "submitted")
  (:working "working")
  (:completed "completed")
  (:canceled "canceled")
  (:failed "failed"))

(smithy/sdk/shapes:define-error throttled-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottledException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure tool-arguments common-lisp:nil
                                    ((code :target-type max-len-string
                                      :member-name "code")
                                     (language :target-type
                                      programming-language :member-name
                                      "language")
                                     (clear-context :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "clearContext")
                                     (command :target-type max-len-string
                                      :member-name "command")
                                     (path :target-type max-len-string
                                      :member-name "path")
                                     (paths :target-type string-list
                                      :member-name "paths")
                                     (content :target-type
                                      input-content-block-list :member-name
                                      "content")
                                     (directory-path :target-type
                                      max-len-string :member-name
                                      "directoryPath")
                                     (task-id :target-type max-len-string
                                      :member-name "taskId"))
                                    (:shape-name "ToolArguments"))

(smithy/sdk/shapes:define-enum tool-name
    common-lisp:nil
  (:execute-code "executeCode")
  (:execute-command "executeCommand")
  (:read-files "readFiles")
  (:list-files "listFiles")
  (:remove-files "removeFiles")
  (:write-files "writeFiles")
  (:start-command-execution "startCommandExecution")
  (:get-task "getTask")
  (:stop-task "stopTask"))

(smithy/sdk/shapes:define-structure tool-result-structured-content
                                    common-lisp:nil
                                    ((task-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "taskId")
                                     (task-status :target-type task-status
                                      :member-name "taskStatus")
                                     (stdout :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stdout")
                                     (stderr :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stderr")
                                     (exit-code :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "exitCode")
                                     (execution-time :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "executionTime"))
                                    (:shape-name "ToolResultStructuredContent"))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-input update-browser-stream-request common-lisp:nil
                                ((browser-identifier :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "browserIdentifier" :http-label
                                  common-lisp:t)
                                 (session-id :target-type browser-session-id
                                  :required common-lisp:t :member-name
                                  "sessionId" :http-query "sessionId")
                                 (stream-update :target-type stream-update
                                  :required common-lisp:t :member-name
                                  "streamUpdate")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateBrowserStreamRequest"))

(smithy/sdk/shapes:define-output update-browser-stream-response common-lisp:nil
                                 ((browser-identifier :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "browserIdentifier")
                                  (session-id :target-type browser-session-id
                                   :required common-lisp:t :member-name
                                   "sessionId")
                                  (streams :target-type browser-session-stream
                                   :required common-lisp:t :member-name
                                   "streams")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt"))
                                 (:shape-name "UpdateBrowserStreamResponse"))

(smithy/sdk/shapes:define-type user-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-token-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:cannot-parse "CannotParse")
  (:field-validation-failed "FieldValidationFailed")
  (:idempotent-parameter-mismatch-exception
   "IdempotentParameterMismatchException")
  (:root-event-in-other-session "EventInOtherSession")
  (:resource-conflict "ResourceConflict"))

(smithy/sdk/shapes:define-structure view-port common-lisp:nil
                                    ((width :target-type view-port-width
                                      :required common-lisp:t :member-name
                                      "width")
                                     (height :target-type view-port-height
                                      :required common-lisp:t :member-name
                                      "height"))
                                    (:shape-name "ViewPort"))

(smithy/sdk/shapes:define-type view-port-height smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type view-port-width smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type workload-identity-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workload-identity-token-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-event :shape-name "CreateEvent"
                                       :input create-event-input :output
                                       create-event-output :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        throttled-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memories/{memoryId}/events")

(smithy/sdk/operation:define-operation delete-event :shape-name "DeleteEvent"
                                       :input delete-event-input :output
                                       delete-event-output :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        throttled-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}/events/{eventId}")

(smithy/sdk/operation:define-operation delete-memory-record :shape-name
                                       "DeleteMemoryRecord" :input
                                       delete-memory-record-input :output
                                       delete-memory-record-output :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        throttled-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/memories/{memoryId}/memoryRecords/{memoryRecordId}")

(smithy/sdk/operation:define-operation get-browser-session :shape-name
                                       "GetBrowserSession" :input
                                       get-browser-session-request :output
                                       get-browser-session-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/browsers/{browserIdentifier}/sessions/get"
                                       :code 200)

(smithy/sdk/operation:define-operation get-code-interpreter-session :shape-name
                                       "GetCodeInterpreterSession" :input
                                       get-code-interpreter-session-request
                                       :output
                                       get-code-interpreter-session-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/code-interpreters/{codeInterpreterIdentifier}/sessions/get"
                                       :code 200)

(smithy/sdk/operation:define-operation get-event :shape-name "GetEvent" :input
                                       get-event-input :output get-event-output
                                       :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        throttled-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}/events/{eventId}")

(smithy/sdk/operation:define-operation get-memory-record :shape-name
                                       "GetMemoryRecord" :input
                                       get-memory-record-input :output
                                       get-memory-record-output :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        throttled-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memories/{memoryId}/memoryRecord/{memoryRecordId}")

(smithy/sdk/operation:define-operation get-resource-api-key :shape-name
                                       "GetResourceApiKey" :input
                                       get-resource-api-key-request :output
                                       get-resource-api-key-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/api-key")

(smithy/sdk/operation:define-operation get-resource-oauth2token :shape-name
                                       "GetResourceOauth2Token" :input
                                       get-resource-oauth2token-request :output
                                       get-resource-oauth2token-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/oauth2/token")

(smithy/sdk/operation:define-operation get-workload-access-token :shape-name
                                       "GetWorkloadAccessToken" :input
                                       get-workload-access-token-request
                                       :output
                                       get-workload-access-token-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/GetWorkloadAccessToken")

(smithy/sdk/operation:define-operation get-workload-access-token-for-jwt
                                       :shape-name
                                       "GetWorkloadAccessTokenForJWT" :input
                                       get-workload-access-token-for-jwtrequest
                                       :output
                                       get-workload-access-token-for-jwtresponse
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/GetWorkloadAccessTokenForJWT")

(smithy/sdk/operation:define-operation get-workload-access-token-for-user-id
                                       :shape-name
                                       "GetWorkloadAccessTokenForUserId" :input
                                       get-workload-access-token-for-user-id-request
                                       :output
                                       get-workload-access-token-for-user-id-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/GetWorkloadAccessTokenForUserId")

(smithy/sdk/operation:define-operation invoke-agent-runtime :shape-name
                                       "InvokeAgentRuntime" :input
                                       invoke-agent-runtime-request :output
                                       invoke-agent-runtime-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        runtime-client-error
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/runtimes/{agentRuntimeArn}/invocations"
                                       :code 200)

(smithy/sdk/operation:define-operation invoke-code-interpreter :shape-name
                                       "InvokeCodeInterpreter" :input
                                       invoke-code-interpreter-request :output
                                       invoke-code-interpreter-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/code-interpreters/{codeInterpreterIdentifier}/tools/invoke"
                                       :code 200)

(smithy/sdk/operation:define-operation list-actors :shape-name "ListActors"
                                       :input list-actors-input :output
                                       list-actors-output :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        throttled-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memories/{memoryId}/actors")

(smithy/sdk/operation:define-operation list-browser-sessions :shape-name
                                       "ListBrowserSessions" :input
                                       list-browser-sessions-request :output
                                       list-browser-sessions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/browsers/{browserIdentifier}/sessions/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-code-interpreter-sessions
                                       :shape-name
                                       "ListCodeInterpreterSessions" :input
                                       list-code-interpreter-sessions-request
                                       :output
                                       list-code-interpreter-sessions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/code-interpreters/{codeInterpreterIdentifier}/sessions/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-events :shape-name "ListEvents"
                                       :input list-events-input :output
                                       list-events-output :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        throttled-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memories/{memoryId}/actor/{actorId}/sessions/{sessionId}")

(smithy/sdk/operation:define-operation list-memory-records :shape-name
                                       "ListMemoryRecords" :input
                                       list-memory-records-input :output
                                       list-memory-records-output :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        throttled-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memories/{memoryId}/memoryRecords")

(smithy/sdk/operation:define-operation list-sessions :shape-name "ListSessions"
                                       :input list-sessions-input :output
                                       list-sessions-output :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        throttled-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memories/{memoryId}/actor/{actorId}/sessions")

(smithy/sdk/operation:define-operation retrieve-memory-records :shape-name
                                       "RetrieveMemoryRecords" :input
                                       retrieve-memory-records-input :output
                                       retrieve-memory-records-output :errors
                                       (access-denied-exception
                                        invalid-input-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        throttled-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memories/{memoryId}/retrieve")

(smithy/sdk/operation:define-operation start-browser-session :shape-name
                                       "StartBrowserSession" :input
                                       start-browser-session-request :output
                                       start-browser-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/browsers/{browserIdentifier}/sessions/start"
                                       :code 200)

(smithy/sdk/operation:define-operation start-code-interpreter-session
                                       :shape-name
                                       "StartCodeInterpreterSession" :input
                                       start-code-interpreter-session-request
                                       :output
                                       start-code-interpreter-session-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/code-interpreters/{codeInterpreterIdentifier}/sessions/start"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-browser-session :shape-name
                                       "StopBrowserSession" :input
                                       stop-browser-session-request :output
                                       stop-browser-session-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/browsers/{browserIdentifier}/sessions/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation stop-code-interpreter-session
                                       :shape-name "StopCodeInterpreterSession"
                                       :input
                                       stop-code-interpreter-session-request
                                       :output
                                       stop-code-interpreter-session-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/code-interpreters/{codeInterpreterIdentifier}/sessions/stop"
                                       :code 200)

(smithy/sdk/operation:define-operation update-browser-stream :shape-name
                                       "UpdateBrowserStream" :input
                                       update-browser-stream-request :output
                                       update-browser-stream-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/browsers/{browserIdentifier}/sessions/streams/update"
                                       :code 200)
