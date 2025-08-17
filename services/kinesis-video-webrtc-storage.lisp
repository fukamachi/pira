(uiop/package:define-package #:pira/kinesis-video-webrtc-storage (:use)
                             (:export #:awsacuity-routing-service-lambda
                              #:channel-arn #:client-id #:join-storage-session
                              #:join-storage-session-as-viewer))
(common-lisp:in-package #:pira/kinesis-video-webrtc-storage)

(smithy/sdk/service:define-service awsacuity-routing-service-lambda :shape-name
                                   "AWSAcuityRoutingServiceLambda" :version
                                   "2018-05-10" :title
                                   "Amazon Kinesis Video WebRTC Storage"
                                   :operations
                                   '(join-storage-session
                                     join-storage-session-as-viewer)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId"
                                       . "Kinesis Video WebRTC Storage")
                                      ("arnNamespace" . "kinesisvideo")
                                      ("endpointPrefix" . "kinesisvideo"))
                                     ("aws.auth#sigv4"
                                      ("name" . "kinesisvideo"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type channel-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error client-limit-exceeded-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ClientLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-argument-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InvalidArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input join-storage-session-as-viewer-input
                                common-lisp:nil
                                ((channel-arn :target-type channel-arn
                                  :required common-lisp:t :member-name
                                  "channelArn")
                                 (client-id :target-type client-id :required
                                  common-lisp:t :member-name "clientId"))
                                (:shape-name "JoinStorageSessionAsViewerInput"))

(smithy/sdk/shapes:define-input join-storage-session-input common-lisp:nil
                                ((channel-arn :target-type channel-arn
                                  :required common-lisp:t :member-name
                                  "channelArn"))
                                (:shape-name "JoinStorageSessionInput"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/operation:define-operation join-storage-session :shape-name
                                       "JoinStorageSession" :input
                                       join-storage-session-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/joinStorageSession" :code 200)

(smithy/sdk/operation:define-operation join-storage-session-as-viewer
                                       :shape-name "JoinStorageSessionAsViewer"
                                       :input
                                       join-storage-session-as-viewer-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        client-limit-exceeded-exception
                                        invalid-argument-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/joinStorageSessionAsViewer" :code 200)
