(uiop/package:define-package #:pira/marketplace-deployment (:use)
                             (:export #:awsmpdeployment-parameters-service
                              #:catalog #:client-token #:deployment-parameter
                              #:deployment-parameter-input
                              #:deployment-parameter-name
                              #:deployment-parameter-resource-identifier
                              #:list-tags-for-resource
                              #:put-deployment-parameter #:resource-arn
                              #:resource-id #:secret-string #:string-list
                              #:tag-key #:tag-resource #:tag-value #:tags
                              #:tags-map #:untag-resource))
(common-lisp:in-package #:pira/marketplace-deployment)

(smithy/sdk/service:define-service awsmpdeployment-parameters-service
                                   :shape-name
                                   "AWSMPDeploymentParametersService" :version
                                   "2023-01-25" :title
                                   "AWS Marketplace Deployment Service"
                                   :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Marketplace Deployment")
                                      ("arnNamespace" . "aws-marketplace")
                                      ("endpointPrefix"
                                       . "deployment-marketplace"))
                                     ("aws.auth#sigv4"
                                      ("name" . "aws-marketplace"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type catalog smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

common-lisp:nil

(smithy/sdk/shapes:define-structure deployment-parameter-input common-lisp:nil
                                    ((name :target-type
                                      deployment-parameter-name :required
                                      common-lisp:t :member-name "name")
                                     (secret-string :target-type secret-string
                                      :required common-lisp:t :member-name
                                      "secretString"))
                                    (:shape-name "DeploymentParameterInput"))

(smithy/sdk/shapes:define-type deployment-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type deployment-parameter-resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input put-deployment-parameter-request
                                common-lisp:nil
                                ((catalog :target-type catalog :required
                                  common-lisp:t :member-name "catalog"
                                  :http-label common-lisp:t)
                                 (product-id :target-type resource-id :required
                                  common-lisp:t :member-name "productId"
                                  :http-label common-lisp:t)
                                 (agreement-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "agreementId")
                                 (deployment-parameter :target-type
                                  deployment-parameter-input :required
                                  common-lisp:t :member-name
                                  "deploymentParameter")
                                 (tags :target-type tags-map :member-name
                                  "tags")
                                 (expiration-date :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "expirationDate"
                                  :timestamp-format "date-time")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "PutDeploymentParameterRequest"))

(smithy/sdk/shapes:define-output put-deployment-parameter-response
                                 common-lisp:nil
                                 ((resource-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "resourceArn")
                                  (agreement-id :target-type resource-id
                                   :required common-lisp:t :member-name
                                   "agreementId")
                                  (deployment-parameter-id :target-type
                                   deployment-parameter-resource-identifier
                                   :required common-lisp:t :member-name
                                   "deploymentParameterId")
                                  (tags :target-type tags-map :member-name
                                   "tags"))
                                 (:shape-name "PutDeploymentParameterResponse"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type secret-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type string-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (field-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "fieldName"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation put-deployment-parameter :shape-name
                                       "PutDeploymentParameter" :input
                                       put-deployment-parameter-request :output
                                       put-deployment-parameter-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/catalogs/{catalog}/products/{productId}/deployment-parameters"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 204)
