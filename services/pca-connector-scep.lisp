(uiop/package:define-package #:pira/pca-connector-scep (:use)
                             (:export #:access-denied-exception
                              #:azure-application-id #:azure-domain
                              #:bad-request-exception
                              #:certificate-authority-arn #:challenge
                              #:challenge-arn #:challenge-metadata
                              #:challenge-metadata-list
                              #:challenge-metadata-summary #:challenge-resource
                              #:client-token #:conflict-exception #:connector
                              #:connector-arn #:connector-list
                              #:connector-resource #:connector-status
                              #:connector-status-reason #:connector-summary
                              #:connector-type #:create-challenge
                              #:create-challenge-request
                              #:create-challenge-response #:create-connector
                              #:create-connector-request
                              #:create-connector-response #:delete-challenge
                              #:delete-challenge-request #:delete-connector
                              #:delete-connector-request
                              #:get-challenge-metadata
                              #:get-challenge-metadata-request
                              #:get-challenge-metadata-response
                              #:get-challenge-password
                              #:get-challenge-password-request
                              #:get-challenge-password-response #:get-connector
                              #:get-connector-request #:get-connector-response
                              #:internal-server-exception
                              #:intune-configuration #:list-challenge-metadata
                              #:list-challenge-metadata-request
                              #:list-challenge-metadata-response
                              #:list-connectors #:list-connectors-request
                              #:list-connectors-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:max-results
                              #:mobile-device-management #:next-token
                              #:open-id-configuration #:pca-connector-scep
                              #:resource-not-found-exception #:sensitive-string
                              #:service-quota-exceeded-exception #:tag-key-list
                              #:tag-resource #:tag-resource-request #:tags
                              #:throttling-exception #:untag-resource
                              #:untag-resource-request #:validation-exception
                              #:validation-exception-reason))
(common-lisp:in-package #:pira/pca-connector-scep)

(smithy/sdk/service:define-service pca-connector-scep :shape-name
                                   "PcaConnectorScep" :version "2018-05-10"
                                   :title "Private CA Connector for SCEP"
                                   :traits
                                   '(("aws.api#service"
                                      ("arnNamespace" . "pca-connector-scep")
                                      ("cloudFormationName"
                                       . "PCAConnectorSCEP")
                                      ("sdkId" . "Pca Connector Scep")
                                      ("serviceName" . "pca-connector-scep")
                                      ("cloudTrailEventSource"
                                       . "pca-connector-scep.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "pca-connector-scep"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type azure-application-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type azure-domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type certificate-authority-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure challenge common-lisp:nil
                                    ((arn :target-type challenge-arn
                                      :member-name "Arn")
                                     (connector-arn :target-type connector-arn
                                      :member-name "ConnectorArn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt")
                                     (password :target-type sensitive-string
                                      :member-name "Password"))
                                    (:shape-name "Challenge"))

(smithy/sdk/shapes:define-type challenge-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure challenge-metadata common-lisp:nil
                                    ((arn :target-type challenge-arn
                                      :member-name "Arn")
                                     (connector-arn :target-type connector-arn
                                      :member-name "ConnectorArn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "ChallengeMetadata"))

(smithy/sdk/shapes:define-list challenge-metadata-list :member
                               challenge-metadata-summary)

(smithy/sdk/shapes:define-structure challenge-metadata-summary common-lisp:nil
                                    ((arn :target-type challenge-arn
                                      :member-name "Arn")
                                     (connector-arn :target-type connector-arn
                                      :member-name "ConnectorArn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "ChallengeMetadataSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure connector common-lisp:nil
                                    ((arn :target-type connector-arn
                                      :member-name "Arn")
                                     (certificate-authority-arn :target-type
                                      certificate-authority-arn :member-name
                                      "CertificateAuthorityArn")
                                     (type :target-type connector-type
                                      :member-name "Type")
                                     (mobile-device-management :target-type
                                      mobile-device-management :member-name
                                      "MobileDeviceManagement")
                                     (open-id-configuration :target-type
                                      open-id-configuration :member-name
                                      "OpenIdConfiguration")
                                     (status :target-type connector-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      connector-status-reason :member-name
                                      "StatusReason")
                                     (endpoint :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Endpoint")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "Connector"))

(smithy/sdk/shapes:define-type connector-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connector-list :member connector-summary)

common-lisp:nil

(smithy/sdk/shapes:define-enum connector-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum connector-status-reason
    common-lisp:nil
  (:internal-failure "INTERNAL_FAILURE")
  (:privateca-access-denied "PRIVATECA_ACCESS_DENIED")
  (:privateca-invalid-state "PRIVATECA_INVALID_STATE")
  (:privateca-resource-not-found "PRIVATECA_RESOURCE_NOT_FOUND"))

(smithy/sdk/shapes:define-structure connector-summary common-lisp:nil
                                    ((arn :target-type connector-arn
                                      :member-name "Arn")
                                     (certificate-authority-arn :target-type
                                      certificate-authority-arn :member-name
                                      "CertificateAuthorityArn")
                                     (type :target-type connector-type
                                      :member-name "Type")
                                     (mobile-device-management :target-type
                                      mobile-device-management :member-name
                                      "MobileDeviceManagement")
                                     (open-id-configuration :target-type
                                      open-id-configuration :member-name
                                      "OpenIdConfiguration")
                                     (status :target-type connector-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      connector-status-reason :member-name
                                      "StatusReason")
                                     (endpoint :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Endpoint")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "UpdatedAt"))
                                    (:shape-name "ConnectorSummary"))

(smithy/sdk/shapes:define-enum connector-type
    common-lisp:nil
  (:general-purpose "GENERAL_PURPOSE")
  (:intune "INTUNE"))

(smithy/sdk/shapes:define-input create-challenge-request common-lisp:nil
                                ((connector-arn :target-type connector-arn
                                  :required common-lisp:t :member-name
                                  "ConnectorArn")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateChallengeRequest"))

(smithy/sdk/shapes:define-output create-challenge-response common-lisp:nil
                                 ((challenge :target-type challenge
                                   :member-name "Challenge"))
                                 (:shape-name "CreateChallengeResponse"))

(smithy/sdk/shapes:define-input create-connector-request common-lisp:nil
                                ((certificate-authority-arn :target-type
                                  certificate-authority-arn :required
                                  common-lisp:t :member-name
                                  "CertificateAuthorityArn")
                                 (mobile-device-management :target-type
                                  mobile-device-management :member-name
                                  "MobileDeviceManagement")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateConnectorRequest"))

(smithy/sdk/shapes:define-output create-connector-response common-lisp:nil
                                 ((connector-arn :target-type connector-arn
                                   :member-name "ConnectorArn"))
                                 (:shape-name "CreateConnectorResponse"))

(smithy/sdk/shapes:define-input delete-challenge-request common-lisp:nil
                                ((challenge-arn :target-type challenge-arn
                                  :required common-lisp:t :member-name
                                  "ChallengeArn" :http-label common-lisp:t))
                                (:shape-name "DeleteChallengeRequest"))

(smithy/sdk/shapes:define-input delete-connector-request common-lisp:nil
                                ((connector-arn :target-type connector-arn
                                  :required common-lisp:t :member-name
                                  "ConnectorArn" :http-label common-lisp:t))
                                (:shape-name "DeleteConnectorRequest"))

(smithy/sdk/shapes:define-input get-challenge-metadata-request common-lisp:nil
                                ((challenge-arn :target-type challenge-arn
                                  :required common-lisp:t :member-name
                                  "ChallengeArn" :http-label common-lisp:t))
                                (:shape-name "GetChallengeMetadataRequest"))

(smithy/sdk/shapes:define-output get-challenge-metadata-response
                                 common-lisp:nil
                                 ((challenge-metadata :target-type
                                   challenge-metadata :member-name
                                   "ChallengeMetadata"))
                                 (:shape-name "GetChallengeMetadataResponse"))

(smithy/sdk/shapes:define-input get-challenge-password-request common-lisp:nil
                                ((challenge-arn :target-type challenge-arn
                                  :required common-lisp:t :member-name
                                  "ChallengeArn" :http-label common-lisp:t))
                                (:shape-name "GetChallengePasswordRequest"))

(smithy/sdk/shapes:define-output get-challenge-password-response
                                 common-lisp:nil
                                 ((password :target-type sensitive-string
                                   :member-name "Password"))
                                 (:shape-name "GetChallengePasswordResponse"))

(smithy/sdk/shapes:define-input get-connector-request common-lisp:nil
                                ((connector-arn :target-type connector-arn
                                  :required common-lisp:t :member-name
                                  "ConnectorArn" :http-label common-lisp:t))
                                (:shape-name "GetConnectorRequest"))

(smithy/sdk/shapes:define-output get-connector-response common-lisp:nil
                                 ((connector :target-type connector
                                   :member-name "Connector"))
                                 (:shape-name "GetConnectorResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure intune-configuration common-lisp:nil
                                    ((azure-application-id :target-type
                                      azure-application-id :required
                                      common-lisp:t :member-name
                                      "AzureApplicationId")
                                     (domain :target-type azure-domain
                                      :required common-lisp:t :member-name
                                      "Domain"))
                                    (:shape-name "IntuneConfiguration"))

(smithy/sdk/shapes:define-input list-challenge-metadata-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (connector-arn :target-type connector-arn
                                  :required common-lisp:t :member-name
                                  "ConnectorArn" :http-query "ConnectorArn"))
                                (:shape-name "ListChallengeMetadataRequest"))

(smithy/sdk/shapes:define-output list-challenge-metadata-response
                                 common-lisp:nil
                                 ((challenges :target-type
                                   challenge-metadata-list :member-name
                                   "Challenges")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListChallengeMetadataResponse"))

(smithy/sdk/shapes:define-input list-connectors-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name "ListConnectorsRequest"))

(smithy/sdk/shapes:define-output list-connectors-response common-lisp:nil
                                 ((connectors :target-type connector-list
                                   :member-name "Connectors")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListConnectorsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-union mobile-device-management common-lisp:nil
                                ((intune :target-type intune-configuration
                                  :member-name "Intune"))
                                (:shape-name "MobileDeviceManagement"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure open-id-configuration common-lisp:nil
                                    ((issuer :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Issuer")
                                     (subject :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Subject")
                                     (audience :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Audience"))
                                    (:shape-name "OpenIdConfiguration"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ServiceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "QuotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-list tag-key-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-map tags :key smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "Reason"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:ca-cert-validity-too-short "CA_CERT_VALIDITY_TOO_SHORT")
  (:invalid-ca-usage-mode "INVALID_CA_USAGE_MODE")
  (:invalid-connector-type "INVALID_CONNECTOR_TYPE")
  (:invalid-state "INVALID_STATE")
  (:no-client-token "NO_CLIENT_TOKEN")
  (:unknown-operation "UNKNOWN_OPERATION")
  (:other "OTHER"))

(smithy/sdk/operation:define-operation create-challenge :shape-name
                                       "CreateChallenge" :input
                                       create-challenge-request :output
                                       create-challenge-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/challenges" :code
                                       202)

(smithy/sdk/operation:define-operation create-connector :shape-name
                                       "CreateConnector" :input
                                       create-connector-request :output
                                       create-connector-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/connectors" :code
                                       202)

(smithy/sdk/operation:define-operation delete-challenge :shape-name
                                       "DeleteChallenge" :input
                                       delete-challenge-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/challenges/{ChallengeArn}" :code 202)

(smithy/sdk/operation:define-operation delete-connector :shape-name
                                       "DeleteConnector" :input
                                       delete-connector-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/connectors/{ConnectorArn}" :code 202)

(smithy/sdk/operation:define-operation get-challenge-metadata :shape-name
                                       "GetChallengeMetadata" :input
                                       get-challenge-metadata-request :output
                                       get-challenge-metadata-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/challengeMetadata/{ChallengeArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-challenge-password :shape-name
                                       "GetChallengePassword" :input
                                       get-challenge-password-request :output
                                       get-challenge-password-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/challengePasswords/{ChallengeArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-connector :shape-name "GetConnector"
                                       :input get-connector-request :output
                                       get-connector-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/connectors/{ConnectorArn}" :code 200)

(smithy/sdk/operation:define-operation list-challenge-metadata :shape-name
                                       "ListChallengeMetadata" :input
                                       list-challenge-metadata-request :output
                                       list-challenge-metadata-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/challengeMetadata"
                                       :code 200)

(smithy/sdk/operation:define-operation list-connectors :shape-name
                                       "ListConnectors" :input
                                       list-connectors-request :output
                                       list-connectors-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/connectors" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)
