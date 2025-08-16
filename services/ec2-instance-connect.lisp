(uiop/package:define-package #:pira/ec2-instance-connect (:use)
                             (:export #:awsec2instance-connect-service
                              #:availability-zone #:instance-id
                              #:instance-osuser #:request-id #:sshpublic-key
                              #:send-sshpublic-key
                              #:send-serial-console-sshpublic-key #:serial-port
                              #:string #:success))
(common-lisp:in-package #:pira/ec2-instance-connect)

(smithy/sdk/service:define-service awsec2instance-connect-service :shape-name
                                   "AWSEC2InstanceConnectService" :version
                                   "2018-04-02" :title
                                   "AWS EC2 Instance Connect" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "EC2 Instance Connect")
                                      ("arnNamespace" . "ec2-instance-connect")
                                      ("cloudFormationName"
                                       . "EC2InstanceConnect")
                                      ("cloudTrailEventSource"
                                       . "ec2instanceconnect.amazonaws.com")
                                      ("endpointPrefix"
                                       . "ec2-instance-connect"))
                                     ("aws.auth#sigv4"
                                      ("name" . "ec2-instance-connect"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error auth-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "AuthException")
                                (:error-name "Forbidden") (:error-code 403))

(smithy/sdk/shapes:define-type availability-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error ec2instance-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EC2InstanceNotFoundException")
                                (:error-name "EC2InstanceNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error ec2instance-state-invalid-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "EC2InstanceStateInvalidException")
                                (:error-name "EC2InstanceStateInvalid")
                                (:error-code 400))

(smithy/sdk/shapes:define-error ec2instance-type-invalid-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EC2InstanceTypeInvalidException")
                                (:error-name "EC2InstanceTypeInvalid")
                                (:error-code 400))

(smithy/sdk/shapes:define-error ec2instance-unavailable-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EC2InstanceUnavailableException")
                                (:error-name "EC2InstanceUnavailable")
                                (:error-code 503))

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-osuser smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error invalid-args-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidArgsException")
                                (:error-name "InvalidArguments")
                                (:error-code 400))

(smithy/sdk/shapes:define-type request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sshpublic-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input send-sshpublic-key-request common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "InstanceId")
                                 (instance-osuser :target-type instance-osuser
                                  :required common-lisp:t :member-name
                                  "InstanceOSUser")
                                 (sshpublic-key :target-type sshpublic-key
                                  :required common-lisp:t :member-name
                                  "SSHPublicKey")
                                 (availability-zone :target-type
                                  availability-zone :member-name
                                  "AvailabilityZone"))
                                (:shape-name "SendSSHPublicKeyRequest"))

(smithy/sdk/shapes:define-output send-sshpublic-key-response common-lisp:nil
                                 ((request-id :target-type request-id
                                   :member-name "RequestId")
                                  (success :target-type success :member-name
                                   "Success"))
                                 (:shape-name "SendSSHPublicKeyResponse"))

(smithy/sdk/shapes:define-input send-serial-console-sshpublic-key-request
                                common-lisp:nil
                                ((instance-id :target-type instance-id
                                  :required common-lisp:t :member-name
                                  "InstanceId")
                                 (serial-port :target-type serial-port
                                  :member-name "SerialPort")
                                 (sshpublic-key :target-type sshpublic-key
                                  :required common-lisp:t :member-name
                                  "SSHPublicKey"))
                                (:shape-name
                                 "SendSerialConsoleSSHPublicKeyRequest"))

(smithy/sdk/shapes:define-output send-serial-console-sshpublic-key-response
                                 common-lisp:nil
                                 ((request-id :target-type request-id
                                   :member-name "RequestId")
                                  (success :target-type success :member-name
                                   "Success"))
                                 (:shape-name
                                  "SendSerialConsoleSSHPublicKeyResponse"))

(smithy/sdk/shapes:define-error serial-console-access-disabled-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "SerialConsoleAccessDisabledException")
                                (:error-name "SerialConsoleAccessDisabled")
                                (:error-code 403))

(smithy/sdk/shapes:define-error serial-console-session-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "SerialConsoleSessionLimitExceededException")
                                (:error-name
                                 "SerialConsoleSessionLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-error serial-console-session-unavailable-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "SerialConsoleSessionUnavailableException")
                                (:error-name "SerialConsoleSessionUnavailable")
                                (:error-code 500))

(smithy/sdk/shapes:define-error serial-console-session-unsupported-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "SerialConsoleSessionUnsupportedException")
                                (:error-name "SerialConsoleSessionUnsupported")
                                (:error-code 400))

(smithy/sdk/shapes:define-type serial-port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error service-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ServiceException")
                                (:error-name "InternalServerError")
                                (:error-code 500))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type success smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-name "TooManyRequests")
                                (:error-code 429))

(smithy/sdk/operation:define-operation send-sshpublic-key :shape-name
                                       "SendSSHPublicKey" :input
                                       send-sshpublic-key-request :output
                                       send-sshpublic-key-response :errors
                                       (auth-exception
                                        ec2instance-not-found-exception
                                        ec2instance-state-invalid-exception
                                        ec2instance-unavailable-exception
                                        invalid-args-exception
                                        service-exception throttling-exception))

(smithy/sdk/operation:define-operation send-serial-console-sshpublic-key
                                       :shape-name
                                       "SendSerialConsoleSSHPublicKey" :input
                                       send-serial-console-sshpublic-key-request
                                       :output
                                       send-serial-console-sshpublic-key-response
                                       :errors
                                       (auth-exception
                                        ec2instance-not-found-exception
                                        ec2instance-state-invalid-exception
                                        ec2instance-type-invalid-exception
                                        ec2instance-unavailable-exception
                                        invalid-args-exception
                                        serial-console-access-disabled-exception
                                        serial-console-session-limit-exceeded-exception
                                        serial-console-session-unavailable-exception
                                        serial-console-session-unsupported-exception
                                        service-exception throttling-exception))
