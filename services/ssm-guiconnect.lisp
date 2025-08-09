(uiop/package:define-package #:pira/ssm-guiconnect (:use)
                             (:export #:account-id #:bucket-name #:client-token
                              #:connection #:connection-access #:connection-arn
                              #:connection-preferences
                              #:connection-recording-preferences
                              #:connection-token #:connections-collection
                              #:delete-connection-recording-preferences
                              #:error-message
                              #:get-connection-recording-preferences
                              #:modify-connection-preferences
                              #:modify-recording-preferences
                              #:recording-destinations #:recording-preferences
                              #:s3bucket #:s3buckets #:ssmgui-connect
                              #:update-connection-recording-preferences))
(common-lisp:in-package #:pira/ssm-guiconnect)

(smithy/sdk/service:define-service ssmgui-connect :shape-name "SSMGuiConnect"
                                   :version "2021-05-01" :title
                                   "AWS SSM-GUIConnect" :traits
                                   '(("aws.api#controlPlane")
                                     ("aws.api#service"
                                      ("sdkId" . "SSM GuiConnect")
                                      ("arnNamespace" . "ssm-guiconnect"))
                                     ("aws.auth#sigv4"
                                      ("name" . "ssm-guiconnect"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-type connection-arn smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure connection-recording-preferences
                                    common-lisp:nil
                                    ((recording-destinations :target-type
                                      recording-destinations :required
                                      common-lisp:t :member-name
                                      "RecordingDestinations")
                                     (kmskey-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "KMSKeyArn"))
                                    (:shape-name
                                     "ConnectionRecordingPreferences"))

(smithy/sdk/shapes:define-type connection-token smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-input delete-connection-recording-preferences-request
                                common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "DeleteConnectionRecordingPreferencesRequest"))

(smithy/sdk/shapes:define-output
 delete-connection-recording-preferences-response common-lisp:nil
 ((client-token :target-type client-token :member-name "ClientToken"))
 (:shape-name "DeleteConnectionRecordingPreferencesResponse"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-output get-connection-recording-preferences-response
                                 common-lisp:nil
                                 ((client-token :target-type client-token
                                   :member-name "ClientToken")
                                  (connection-recording-preferences
                                   :target-type
                                   connection-recording-preferences
                                   :member-name
                                   "ConnectionRecordingPreferences"))
                                 (:shape-name
                                  "GetConnectionRecordingPreferencesResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-structure recording-destinations common-lisp:nil
                                    ((s3buckets :target-type s3buckets
                                      :required common-lisp:t :member-name
                                      "S3Buckets"))
                                    (:shape-name "RecordingDestinations"))

common-lisp:nil

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure s3bucket common-lisp:nil
                                    ((bucket-owner :target-type account-id
                                      :required common-lisp:t :member-name
                                      "BucketOwner")
                                     (bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName"))
                                    (:shape-name "S3Bucket"))

(smithy/sdk/shapes:define-list s3buckets :member s3bucket)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input update-connection-recording-preferences-request
                                common-lisp:nil
                                ((connection-recording-preferences :target-type
                                  connection-recording-preferences :required
                                  common-lisp:t :member-name
                                  "ConnectionRecordingPreferences")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "UpdateConnectionRecordingPreferencesRequest"))

(smithy/sdk/shapes:define-output
 update-connection-recording-preferences-response common-lisp:nil
 ((client-token :target-type client-token :member-name "ClientToken")
  (connection-recording-preferences :target-type
   connection-recording-preferences :member-name
   "ConnectionRecordingPreferences"))
 (:shape-name "UpdateConnectionRecordingPreferencesResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation delete-connection-recording-preferences
                                       :shape-name
                                       "DeleteConnectionRecordingPreferences"
                                       :input
                                       delete-connection-recording-preferences-request
                                       :output
                                       delete-connection-recording-preferences-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/DeleteConnectionRecordingPreferences")

(smithy/sdk/operation:define-operation get-connection-recording-preferences
                                       :shape-name
                                       "GetConnectionRecordingPreferences"
                                       :input common-lisp:null :output
                                       get-connection-recording-preferences-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/GetConnectionRecordingPreferences")

(smithy/sdk/operation:define-operation update-connection-recording-preferences
                                       :shape-name
                                       "UpdateConnectionRecordingPreferences"
                                       :input
                                       update-connection-recording-preferences-request
                                       :output
                                       update-connection-recording-preferences-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/UpdateConnectionRecordingPreferences")
