(uiop/package:define-package #:pira/s3outposts (:use)
                             (:export #:access-denied-exception
                              #:aws-account-id #:capacity-in-bytes #:cidr-block
                              #:conflict-exception #:create-endpoint
                              #:creation-time #:customer-owned-ipv4pool
                              #:delete-endpoint #:endpoint
                              #:endpoint-access-type #:endpoint-arn
                              #:endpoint-id #:endpoint-status #:endpoints
                              #:error-code #:error-message #:failed-reason
                              #:internal-server-exception #:list-endpoints
                              #:list-outposts-with-s3 #:list-shared-endpoints
                              #:max-results #:message #:network-interface
                              #:network-interface-id #:network-interfaces
                              #:next-token #:outpost #:outpost-arn #:outpost-id
                              #:outpost-offline-exception #:outposts
                              #:resource-not-found-exception #:s3outpost-arn
                              #:s3outposts #:security-group-id #:subnet-id
                              #:throttling-exception #:validation-exception
                              #:vpc-id #:s3outposts-error))
(common-lisp:in-package #:pira/s3outposts)

(common-lisp:define-condition s3outposts-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service s3outposts :shape-name "S3Outposts" :version
                                   "2017-07-25" :title "Amazon S3 on Outposts"
                                   :operations
                                   '(create-endpoint delete-endpoint
                                     list-endpoints list-outposts-with-s3
                                     list-shared-endpoints)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "S3Outposts")
                                      ("arnNamespace" . "s3-outposts")
                                      ("cloudFormationName" . "S3Outposts")
                                      ("cloudTrailEventSource"
                                       . "s3outposts.amazonaws.com")
                                      ("endpointPrefix" . "s3-outposts"))
                                     ("aws.auth#sigv4"
                                      ("name" . "s3-outposts"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class s3outposts-error))

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type capacity-in-bytes smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type cidr-block smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class s3outposts-error))

(smithy/sdk/shapes:define-input create-endpoint-request common-lisp:nil
                                ((outpost-id :target-type outpost-id :required
                                  common-lisp:t :member-name "OutpostId")
                                 (subnet-id :target-type subnet-id :required
                                  common-lisp:t :member-name "SubnetId")
                                 (security-group-id :target-type
                                  security-group-id :required common-lisp:t
                                  :member-name "SecurityGroupId")
                                 (access-type :target-type endpoint-access-type
                                  :member-name "AccessType")
                                 (customer-owned-ipv4pool :target-type
                                  customer-owned-ipv4pool :member-name
                                  "CustomerOwnedIpv4Pool"))
                                (:shape-name "CreateEndpointRequest"))

(smithy/sdk/shapes:define-output create-endpoint-result common-lisp:nil
                                 ((endpoint-arn :target-type endpoint-arn
                                   :member-name "EndpointArn"))
                                 (:shape-name "CreateEndpointResult"))

(smithy/sdk/shapes:define-type creation-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type customer-owned-ipv4pool
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-endpoint-request common-lisp:nil
                                ((endpoint-id :target-type endpoint-id
                                  :required common-lisp:t :member-name
                                  "EndpointId" :http-query "endpointId")
                                 (outpost-id :target-type outpost-id :required
                                  common-lisp:t :member-name "OutpostId"
                                  :http-query "outpostId"))
                                (:shape-name "DeleteEndpointRequest"))

(smithy/sdk/shapes:define-structure endpoint common-lisp:nil
                                    ((endpoint-arn :target-type endpoint-arn
                                      :member-name "EndpointArn")
                                     (outposts-id :target-type outpost-id
                                      :member-name "OutpostsId")
                                     (cidr-block :target-type cidr-block
                                      :member-name "CidrBlock")
                                     (status :target-type endpoint-status
                                      :member-name "Status")
                                     (creation-time :target-type creation-time
                                      :member-name "CreationTime")
                                     (network-interfaces :target-type
                                      network-interfaces :member-name
                                      "NetworkInterfaces")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (subnet-id :target-type subnet-id
                                      :member-name "SubnetId")
                                     (security-group-id :target-type
                                      security-group-id :member-name
                                      "SecurityGroupId")
                                     (access-type :target-type
                                      endpoint-access-type :member-name
                                      "AccessType")
                                     (customer-owned-ipv4pool :target-type
                                      customer-owned-ipv4pool :member-name
                                      "CustomerOwnedIpv4Pool")
                                     (failed-reason :target-type failed-reason
                                      :member-name "FailedReason"))
                                    (:shape-name "Endpoint"))

(smithy/sdk/shapes:define-enum endpoint-access-type
    common-lisp:nil
  (:private "Private")
  (:customer-owned-ip "CustomerOwnedIp"))

(smithy/sdk/shapes:define-type endpoint-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type endpoint-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum endpoint-status
    common-lisp:nil
  (:pending "Pending")
  (:available "Available")
  (:deleting "Deleting")
  (:create-failed "Create_Failed")
  (:delete-failed "Delete_Failed"))

(smithy/sdk/shapes:define-list endpoints :member endpoint)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure failed-reason common-lisp:nil
                                    ((error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (message :target-type message :member-name
                                      "Message"))
                                    (:shape-name "FailedReason"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class s3outposts-error))

(smithy/sdk/shapes:define-input list-endpoints-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListEndpointsRequest"))

(smithy/sdk/shapes:define-output list-endpoints-result common-lisp:nil
                                 ((endpoints :target-type endpoints
                                   :member-name "Endpoints")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListEndpointsResult"))

(smithy/sdk/shapes:define-input list-outposts-with-s3request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListOutpostsWithS3Request"))

(smithy/sdk/shapes:define-output list-outposts-with-s3result common-lisp:nil
                                 ((outposts :target-type outposts :member-name
                                   "Outposts")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListOutpostsWithS3Result"))

(smithy/sdk/shapes:define-input list-shared-endpoints-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (outpost-id :target-type outpost-id :required
                                  common-lisp:t :member-name "OutpostId"
                                  :http-query "outpostId"))
                                (:shape-name "ListSharedEndpointsRequest"))

(smithy/sdk/shapes:define-output list-shared-endpoints-result common-lisp:nil
                                 ((endpoints :target-type endpoints
                                   :member-name "Endpoints")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListSharedEndpointsResult"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-interface common-lisp:nil
                                    ((network-interface-id :target-type
                                      network-interface-id :member-name
                                      "NetworkInterfaceId"))
                                    (:shape-name "NetworkInterface"))

(smithy/sdk/shapes:define-type network-interface-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list network-interfaces :member network-interface)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure outpost common-lisp:nil
                                    ((outpost-arn :target-type outpost-arn
                                      :member-name "OutpostArn")
                                     (s3outpost-arn :target-type s3outpost-arn
                                      :member-name "S3OutpostArn")
                                     (outpost-id :target-type outpost-id
                                      :member-name "OutpostId")
                                     (owner-id :target-type aws-account-id
                                      :member-name "OwnerId")
                                     (capacity-in-bytes :target-type
                                      capacity-in-bytes :member-name
                                      "CapacityInBytes"))
                                    (:shape-name "Outpost"))

(smithy/sdk/shapes:define-type outpost-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type outpost-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error outpost-offline-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "OutpostOfflineException")
                                (:error-code 400)
                                (:base-class s3outposts-error))

(smithy/sdk/shapes:define-list outposts :member outpost)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class s3outposts-error))

(smithy/sdk/shapes:define-type s3outpost-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class s3outposts-error))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class s3outposts-error))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-endpoint :shape-name
                                       "CreateEndpoint" :input
                                       create-endpoint-request :output
                                       create-endpoint-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        outpost-offline-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/S3Outposts/CreateEndpoint" :code 200)

(smithy/sdk/operation:define-operation delete-endpoint :shape-name
                                       "DeleteEndpoint" :input
                                       delete-endpoint-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        outpost-offline-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/S3Outposts/DeleteEndpoint" :code 200)

(smithy/sdk/operation:define-operation list-endpoints :shape-name
                                       "ListEndpoints" :input
                                       list-endpoints-request :output
                                       list-endpoints-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/S3Outposts/ListEndpoints" :code 200)

(smithy/sdk/operation:define-operation list-outposts-with-s3 :shape-name
                                       "ListOutpostsWithS3" :input
                                       list-outposts-with-s3request :output
                                       list-outposts-with-s3result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/S3Outposts/ListOutpostsWithS3" :code
                                       200)

(smithy/sdk/operation:define-operation list-shared-endpoints :shape-name
                                       "ListSharedEndpoints" :input
                                       list-shared-endpoints-request :output
                                       list-shared-endpoints-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/S3Outposts/ListSharedEndpoints" :code
                                       200)
