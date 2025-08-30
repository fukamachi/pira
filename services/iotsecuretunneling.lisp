(uiop/package:define-package #:pira/iotsecuretunneling (:use)
                             (:export #:amazon-resource-name
                              #:client-access-token #:client-mode
                              #:close-tunnel #:connection-state
                              #:connection-status #:date-type #:delete-flag
                              #:describe-tunnel #:description
                              #:destination-config #:error-message
                              #:io-tsecured-tunneling
                              #:limit-exceeded-exception
                              #:list-tags-for-resource #:list-tunnels
                              #:max-results #:next-token #:open-tunnel
                              #:resource-not-found-exception
                              #:rotate-tunnel-access-token #:service
                              #:service-list #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-value
                              #:thing-name #:timeout-config #:timeout-in-min
                              #:tunnel #:tunnel-arn #:tunnel-id #:tunnel-status
                              #:tunnel-summary #:tunnel-summary-list
                              #:untag-resource #:iotsecuretunneling-error))
(common-lisp:in-package #:pira/iotsecuretunneling)

(common-lisp:define-condition iotsecuretunneling-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service io-tsecured-tunneling :shape-name
                                   "IoTSecuredTunneling" :version "2018-10-05"
                                   :title "AWS IoT Secure Tunneling"
                                   :operations
                                   '(close-tunnel describe-tunnel
                                     list-tags-for-resource list-tunnels
                                     open-tunnel rotate-tunnel-access-token
                                     tag-resource untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IoTSecureTunneling")
                                      ("arnNamespace" . "iotsecuredtunneling")
                                      ("cloudFormationName"
                                       . "IoTSecureTunneling")
                                      ("cloudTrailEventSource"
                                       . "iotsecuretunneling.amazonaws.com")
                                      ("endpointPrefix" . "api.tunneling.iot"))
                                     ("aws.auth#sigv4"
                                      ("name" . "IoTSecuredTunneling"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-access-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum client-mode
    common-lisp:nil
  (:source "SOURCE")
  (:destination "DESTINATION")
  (:all "ALL"))

(smithy/sdk/shapes:define-input close-tunnel-request common-lisp:nil
                                ((tunnel-id :target-type tunnel-id :required
                                  common-lisp:t :member-name "tunnelId"
                                  :http-label common-lisp:t)
                                 (delete :target-type delete-flag :member-name
                                  "delete" :http-query "delete"))
                                (:shape-name "CloseTunnelRequest"))

(smithy/sdk/shapes:define-output close-tunnel-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CloseTunnelResponse"))

(smithy/sdk/shapes:define-structure connection-state common-lisp:nil
                                    ((status :target-type connection-status
                                      :member-name "status")
                                     (last-updated-at :target-type date-type
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "ConnectionState"))

(smithy/sdk/shapes:define-enum connection-status
    common-lisp:nil
  (:connected "CONNECTED")
  (:disconnected "DISCONNECTED"))

(smithy/sdk/shapes:define-type date-type smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type delete-flag smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input describe-tunnel-request common-lisp:nil
                                ((tunnel-id :target-type tunnel-id :required
                                  common-lisp:t :member-name "tunnelId"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeTunnelRequest"))

(smithy/sdk/shapes:define-output describe-tunnel-response common-lisp:nil
                                 ((tunnel :target-type tunnel :member-name
                                   "tunnel"))
                                 (:shape-name "DescribeTunnelResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destination-config common-lisp:nil
                                    ((thing-name :target-type thing-name
                                      :member-name "thingName")
                                     (services :target-type service-list
                                      :required common-lisp:t :member-name
                                      "services"))
                                    (:shape-name "DestinationConfig"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-name "LimitExceededException")
                                (:error-code 403)
                                (:base-class iotsecuretunneling-error))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-query
                                  "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-tunnels-request common-lisp:nil
                                ((thing-name :target-type thing-name
                                  :member-name "thingName" :http-query
                                  "thingName")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListTunnelsRequest"))

(smithy/sdk/shapes:define-output list-tunnels-response common-lisp:nil
                                 ((tunnel-summaries :target-type
                                   tunnel-summary-list :member-name
                                   "tunnelSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTunnelsResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input open-tunnel-request common-lisp:nil
                                ((description :target-type description
                                  :member-name "description")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (destination-config :target-type
                                  destination-config :member-name
                                  "destinationConfig")
                                 (timeout-config :target-type timeout-config
                                  :member-name "timeoutConfig"))
                                (:shape-name "OpenTunnelRequest"))

(smithy/sdk/shapes:define-output open-tunnel-response common-lisp:nil
                                 ((tunnel-id :target-type tunnel-id
                                   :member-name "tunnelId")
                                  (tunnel-arn :target-type tunnel-arn
                                   :member-name "tunnelArn")
                                  (source-access-token :target-type
                                   client-access-token :member-name
                                   "sourceAccessToken")
                                  (destination-access-token :target-type
                                   client-access-token :member-name
                                   "destinationAccessToken"))
                                 (:shape-name "OpenTunnelResponse"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class iotsecuretunneling-error))

(smithy/sdk/shapes:define-input rotate-tunnel-access-token-request
                                common-lisp:nil
                                ((tunnel-id :target-type tunnel-id :required
                                  common-lisp:t :member-name "tunnelId"
                                  :http-label common-lisp:t)
                                 (client-mode :target-type client-mode
                                  :required common-lisp:t :member-name
                                  "clientMode")
                                 (destination-config :target-type
                                  destination-config :member-name
                                  "destinationConfig"))
                                (:shape-name "RotateTunnelAccessTokenRequest"))

(smithy/sdk/shapes:define-output rotate-tunnel-access-token-response
                                 common-lisp:nil
                                 ((tunnel-arn :target-type tunnel-arn
                                   :member-name "tunnelArn")
                                  (source-access-token :target-type
                                   client-access-token :member-name
                                   "sourceAccessToken")
                                  (destination-access-token :target-type
                                   client-access-token :member-name
                                   "destinationAccessToken"))
                                 (:shape-name
                                  "RotateTunnelAccessTokenResponse"))

(smithy/sdk/shapes:define-type service smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-list :member service)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type thing-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure timeout-config common-lisp:nil
                                    ((max-lifetime-timeout-minutes :target-type
                                      timeout-in-min :member-name
                                      "maxLifetimeTimeoutMinutes"))
                                    (:shape-name "TimeoutConfig"))

(smithy/sdk/shapes:define-type timeout-in-min smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure tunnel common-lisp:nil
                                    ((tunnel-id :target-type tunnel-id
                                      :member-name "tunnelId")
                                     (tunnel-arn :target-type tunnel-arn
                                      :member-name "tunnelArn")
                                     (status :target-type tunnel-status
                                      :member-name "status")
                                     (source-connection-state :target-type
                                      connection-state :member-name
                                      "sourceConnectionState")
                                     (destination-connection-state :target-type
                                      connection-state :member-name
                                      "destinationConnectionState")
                                     (description :target-type description
                                      :member-name "description")
                                     (destination-config :target-type
                                      destination-config :member-name
                                      "destinationConfig")
                                     (timeout-config :target-type
                                      timeout-config :member-name
                                      "timeoutConfig")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (created-at :target-type date-type
                                      :member-name "createdAt")
                                     (last-updated-at :target-type date-type
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "Tunnel"))

(smithy/sdk/shapes:define-type tunnel-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tunnel-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum tunnel-status
    common-lisp:nil
  (:open "OPEN")
  (:closed "CLOSED"))

(smithy/sdk/shapes:define-structure tunnel-summary common-lisp:nil
                                    ((tunnel-id :target-type tunnel-id
                                      :member-name "tunnelId")
                                     (tunnel-arn :target-type tunnel-arn
                                      :member-name "tunnelArn")
                                     (status :target-type tunnel-status
                                      :member-name "status")
                                     (description :target-type description
                                      :member-name "description")
                                     (created-at :target-type date-type
                                      :member-name "createdAt")
                                     (last-updated-at :target-type date-type
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "TunnelSummary"))

(smithy/sdk/shapes:define-list tunnel-summary-list :member tunnel-summary)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/operation:define-operation close-tunnel :shape-name "CloseTunnel"
                                       :input close-tunnel-request :output
                                       close-tunnel-response :errors
                                       (resource-not-found-exception) :method
                                       "DELETE" :uri "/tunnels/{tunnelId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-tunnel :shape-name
                                       "DescribeTunnel" :input
                                       describe-tunnel-request :output
                                       describe-tunnel-response :errors
                                       (resource-not-found-exception) :method
                                       "GET" :uri "/tunnels/{tunnelId}" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception) :method
                                       "GET" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation list-tunnels :shape-name "ListTunnels"
                                       :input list-tunnels-request :output
                                       list-tunnels-response :errors
                                       common-lisp:nil :method "GET" :uri
                                       "/tunnels" :code 200)

(smithy/sdk/operation:define-operation open-tunnel :shape-name "OpenTunnel"
                                       :input open-tunnel-request :output
                                       open-tunnel-response :errors
                                       (limit-exceeded-exception) :method
                                       "POST" :uri "/tunnels" :code 200)

(smithy/sdk/operation:define-operation rotate-tunnel-access-token :shape-name
                                       "RotateTunnelAccessToken" :input
                                       rotate-tunnel-access-token-request
                                       :output
                                       rotate-tunnel-access-token-response
                                       :errors (resource-not-found-exception)
                                       :method "POST" :uri
                                       "/tunnel/{tunnelId}/rotate" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (resource-not-found-exception) :method
                                       "POST" :uri "/tags" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (resource-not-found-exception) :method
                                       "POST" :uri "/untag" :code 200)
