(uiop/package:define-package #:pira/appstream (:use)
                             (:export #:access-endpoint #:access-endpoint-list
                              #:access-endpoint-type #:account-name
                              #:account-password #:action #:app-block
                              #:app-block-builder
                              #:app-block-builder-app-block-association
                              #:app-block-builder-app-block-associations-list
                              #:app-block-builder-attribute
                              #:app-block-builder-attributes
                              #:app-block-builder-list
                              #:app-block-builder-platform-type
                              #:app-block-builder-state
                              #:app-block-builder-state-change-reason
                              #:app-block-builder-state-change-reason-code
                              #:app-block-state #:app-blocks #:app-visibility
                              #:application #:application-attribute
                              #:application-attributes
                              #:application-fleet-association
                              #:application-fleet-association-list
                              #:application-settings
                              #:application-settings-response #:applications
                              #:appstream-agent-version #:arn #:arn-list
                              #:associate-app-block-builder-app-block
                              #:associate-application-fleet
                              #:associate-application-to-entitlement
                              #:associate-fleet #:authentication-type
                              #:aws-account-id #:aws-account-id-list
                              #:batch-associate-user-stack
                              #:batch-disassociate-user-stack #:boolean
                              #:boolean-object
                              #:certificate-based-auth-properties
                              #:certificate-based-auth-status
                              #:compute-capacity #:compute-capacity-status
                              #:copy-image #:create-app-block
                              #:create-app-block-builder
                              #:create-app-block-builder-streaming-url
                              #:create-application #:create-directory-config
                              #:create-entitlement #:create-fleet
                              #:create-image-builder
                              #:create-image-builder-streaming-url
                              #:create-stack #:create-streaming-url
                              #:create-theme-for-stack #:create-updated-image
                              #:create-usage-report-subscription #:create-user
                              #:delete-app-block #:delete-app-block-builder
                              #:delete-application #:delete-directory-config
                              #:delete-entitlement #:delete-fleet
                              #:delete-image #:delete-image-builder
                              #:delete-image-permissions #:delete-stack
                              #:delete-theme-for-stack
                              #:delete-usage-report-subscription #:delete-user
                              #:describe-app-block-builder-app-block-associations
                              #:describe-app-block-builders
                              #:describe-app-blocks
                              #:describe-application-fleet-associations
                              #:describe-applications
                              #:describe-directory-configs
                              #:describe-entitlements #:describe-fleets
                              #:describe-image-builders
                              #:describe-image-permissions #:describe-images
                              #:describe-images-max-results #:describe-sessions
                              #:describe-stacks #:describe-theme-for-stack
                              #:describe-usage-report-subscriptions
                              #:describe-user-stack-associations
                              #:describe-users #:description #:directory-config
                              #:directory-config-list #:directory-name
                              #:directory-name-list #:disable-user
                              #:disassociate-app-block-builder-app-block
                              #:disassociate-application-fleet
                              #:disassociate-application-from-entitlement
                              #:disassociate-fleet #:display-name #:domain
                              #:domain-join-info #:domain-list
                              #:dynamic-app-providers-enabled
                              #:embed-host-domain #:embed-host-domains
                              #:enable-user #:entitled-application
                              #:entitled-application-list #:entitlement
                              #:entitlement-attribute
                              #:entitlement-attribute-list #:entitlement-list
                              #:error-details #:error-details-list
                              #:error-message #:expire-session #:feedback-url
                              #:fleet #:fleet-attribute #:fleet-attributes
                              #:fleet-error #:fleet-error-code #:fleet-errors
                              #:fleet-list #:fleet-state #:fleet-type #:image
                              #:image-builder #:image-builder-list
                              #:image-builder-state
                              #:image-builder-state-change-reason
                              #:image-builder-state-change-reason-code
                              #:image-list #:image-permissions
                              #:image-shared-with-others #:image-state
                              #:image-state-change-reason
                              #:image-state-change-reason-code #:integer
                              #:last-report-generation-execution-error
                              #:last-report-generation-execution-errors
                              #:latest-appstream-agent-version
                              #:list-associated-fleets #:list-associated-stacks
                              #:list-entitled-applications
                              #:list-tags-for-resource #:long #:max-results
                              #:message-action #:metadata #:name
                              #:network-access-configuration
                              #:organizational-unit-distinguished-name
                              #:organizational-unit-distinguished-names-list
                              #:packaging-type #:permission
                              #:photon-admin-proxy-service #:platform-type
                              #:platforms #:preferred-protocol #:redirect-url
                              #:region-name #:resource-error #:resource-errors
                              #:resource-identifier #:s3bucket #:s3key
                              #:s3location #:script-details
                              #:security-group-id-list
                              #:service-account-credentials #:session
                              #:session-connection-state #:session-list
                              #:session-state #:settings-group
                              #:shared-image-permissions
                              #:shared-image-permissions-list #:stack
                              #:stack-attribute #:stack-attributes
                              #:stack-error #:stack-error-code #:stack-errors
                              #:stack-list #:start-app-block-builder
                              #:start-fleet #:start-image-builder
                              #:stop-app-block-builder #:stop-fleet
                              #:stop-image-builder #:storage-connector
                              #:storage-connector-list #:storage-connector-type
                              #:stream-view #:streaming-experience-settings
                              #:streaming-url-user-id #:string #:string-list
                              #:subnet-id-list #:tag-key #:tag-key-list
                              #:tag-resource #:tag-value #:tags #:theme
                              #:theme-attribute #:theme-attributes
                              #:theme-footer-link
                              #:theme-footer-link-display-name
                              #:theme-footer-link-url #:theme-footer-links
                              #:theme-state #:theme-styling #:theme-title-text
                              #:timestamp #:untag-resource
                              #:update-app-block-builder #:update-application
                              #:update-directory-config #:update-entitlement
                              #:update-fleet #:update-image-permissions
                              #:update-stack #:update-theme-for-stack
                              #:usage-report-execution-error-code
                              #:usage-report-schedule
                              #:usage-report-subscription
                              #:usage-report-subscription-list
                              #:usb-device-filter-string
                              #:usb-device-filter-strings #:user
                              #:user-attribute-value #:user-id #:user-list
                              #:user-setting #:user-setting-list
                              #:user-stack-association
                              #:user-stack-association-error
                              #:user-stack-association-error-code
                              #:user-stack-association-error-list
                              #:user-stack-association-list #:username
                              #:visibility-type #:vpc-config))
(common-lisp:in-package #:pira/appstream)

(smithy/sdk/service:define-service photon-admin-proxy-service :shape-name
                                   "PhotonAdminProxyService" :version
                                   "2016-12-01" :title "Amazon AppStream"
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "AppStream")
                                      ("arnNamespace" . "appstream")
                                      ("cloudFormationName" . "AppStream")
                                      ("cloudTrailEventSource"
                                       . "appstream.amazonaws.com")
                                      ("endpointPrefix" . "appstream2"))
                                     ("aws.auth#sigv4" ("name" . "appstream"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure access-endpoint common-lisp:nil
                                    ((endpoint-type :target-type
                                      access-endpoint-type :required
                                      common-lisp:t :member-name
                                      "EndpointType")
                                     (vpce-id :target-type string :member-name
                                      "VpceId"))
                                    (:shape-name "AccessEndpoint"))

(smithy/sdk/shapes:define-list access-endpoint-list :member access-endpoint)

(smithy/sdk/shapes:define-enum access-endpoint-type
    common-lisp:nil
  (:streaming "STREAMING"))

(smithy/sdk/shapes:define-type account-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum action
    common-lisp:nil
  (:clipboard-copy-from-local-device "CLIPBOARD_COPY_FROM_LOCAL_DEVICE")
  (:clipboard-copy-to-local-device "CLIPBOARD_COPY_TO_LOCAL_DEVICE")
  (:file-upload "FILE_UPLOAD")
  (:file-download "FILE_DOWNLOAD")
  (:printing-to-local-device "PRINTING_TO_LOCAL_DEVICE")
  (:domain-password-signin "DOMAIN_PASSWORD_SIGNIN")
  (:domain-smart-card-signin "DOMAIN_SMART_CARD_SIGNIN")
  (:auto-time-zone-redirection "AUTO_TIME_ZONE_REDIRECTION"))

(smithy/sdk/shapes:define-structure app-block common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (description :target-type string
                                      :member-name "Description")
                                     (display-name :target-type string
                                      :member-name "DisplayName")
                                     (source-s3location :target-type s3location
                                      :member-name "SourceS3Location")
                                     (setup-script-details :target-type
                                      script-details :member-name
                                      "SetupScriptDetails")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (post-setup-script-details :target-type
                                      script-details :member-name
                                      "PostSetupScriptDetails")
                                     (packaging-type :target-type
                                      packaging-type :member-name
                                      "PackagingType")
                                     (state :target-type app-block-state
                                      :member-name "State")
                                     (app-block-errors :target-type
                                      error-details-list :member-name
                                      "AppBlockErrors"))
                                    (:shape-name "AppBlock"))

(smithy/sdk/shapes:define-structure app-block-builder common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (display-name :target-type string
                                      :member-name "DisplayName")
                                     (description :target-type string
                                      :member-name "Description")
                                     (platform :target-type
                                      app-block-builder-platform-type :required
                                      common-lisp:t :member-name "Platform")
                                     (instance-type :target-type string
                                      :required common-lisp:t :member-name
                                      "InstanceType")
                                     (enable-default-internet-access
                                      :target-type boolean-object :member-name
                                      "EnableDefaultInternetAccess")
                                     (iam-role-arn :target-type arn
                                      :member-name "IamRoleArn")
                                     (vpc-config :target-type vpc-config
                                      :required common-lisp:t :member-name
                                      "VpcConfig")
                                     (state :target-type
                                      app-block-builder-state :required
                                      common-lisp:t :member-name "State")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (app-block-builder-errors :target-type
                                      resource-errors :member-name
                                      "AppBlockBuilderErrors")
                                     (state-change-reason :target-type
                                      app-block-builder-state-change-reason
                                      :member-name "StateChangeReason")
                                     (access-endpoints :target-type
                                      access-endpoint-list :member-name
                                      "AccessEndpoints"))
                                    (:shape-name "AppBlockBuilder"))

(smithy/sdk/shapes:define-structure app-block-builder-app-block-association
                                    common-lisp:nil
                                    ((app-block-arn :target-type arn :required
                                      common-lisp:t :member-name "AppBlockArn")
                                     (app-block-builder-name :target-type name
                                      :required common-lisp:t :member-name
                                      "AppBlockBuilderName"))
                                    (:shape-name
                                     "AppBlockBuilderAppBlockAssociation"))

(smithy/sdk/shapes:define-list app-block-builder-app-block-associations-list
                               :member app-block-builder-app-block-association)

(smithy/sdk/shapes:define-enum app-block-builder-attribute
    common-lisp:nil
  (:iam-role-arn "IAM_ROLE_ARN")
  (:access-endpoints "ACCESS_ENDPOINTS")
  (:vpc-configuration-security-group-ids
   "VPC_CONFIGURATION_SECURITY_GROUP_IDS"))

(smithy/sdk/shapes:define-list app-block-builder-attributes :member
                               app-block-builder-attribute)

(smithy/sdk/shapes:define-list app-block-builder-list :member app-block-builder)

(smithy/sdk/shapes:define-enum app-block-builder-platform-type
    common-lisp:nil
  (:windows-server-2019 "WINDOWS_SERVER_2019"))

(smithy/sdk/shapes:define-enum app-block-builder-state
    common-lisp:nil
  (:starting "STARTING")
  (:running "RUNNING")
  (:stopping "STOPPING")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-structure app-block-builder-state-change-reason
                                    common-lisp:nil
                                    ((code :target-type
                                      app-block-builder-state-change-reason-code
                                      :member-name "Code")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name
                                     "AppBlockBuilderStateChangeReason"))

(smithy/sdk/shapes:define-enum app-block-builder-state-change-reason-code
    common-lisp:nil
  (:internal-error "INTERNAL_ERROR"))

(smithy/sdk/shapes:define-enum app-block-state
    common-lisp:nil
  (:inactive "INACTIVE")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-list app-blocks :member app-block)

(smithy/sdk/shapes:define-enum app-visibility
    common-lisp:nil
  (:all "ALL")
  (:associated "ASSOCIATED"))

(smithy/sdk/shapes:define-structure application common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (display-name :target-type string
                                      :member-name "DisplayName")
                                     (icon-url :target-type string :member-name
                                      "IconURL")
                                     (launch-path :target-type string
                                      :member-name "LaunchPath")
                                     (launch-parameters :target-type string
                                      :member-name "LaunchParameters")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (metadata :target-type metadata
                                      :member-name "Metadata")
                                     (working-directory :target-type string
                                      :member-name "WorkingDirectory")
                                     (description :target-type string
                                      :member-name "Description")
                                     (arn :target-type arn :member-name "Arn")
                                     (app-block-arn :target-type arn
                                      :member-name "AppBlockArn")
                                     (icon-s3location :target-type s3location
                                      :member-name "IconS3Location")
                                     (platforms :target-type platforms
                                      :member-name "Platforms")
                                     (instance-families :target-type
                                      string-list :member-name
                                      "InstanceFamilies")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "Application"))

(smithy/sdk/shapes:define-enum application-attribute
    common-lisp:nil
  (:launch-parameters "LAUNCH_PARAMETERS")
  (:working-directory "WORKING_DIRECTORY"))

(smithy/sdk/shapes:define-list application-attributes :member
                               application-attribute)

(smithy/sdk/shapes:define-structure application-fleet-association
                                    common-lisp:nil
                                    ((fleet-name :target-type string :required
                                      common-lisp:t :member-name "FleetName")
                                     (application-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "ApplicationArn"))
                                    (:shape-name "ApplicationFleetAssociation"))

(smithy/sdk/shapes:define-list application-fleet-association-list :member
                               application-fleet-association)

(smithy/sdk/shapes:define-structure application-settings common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (settings-group :target-type
                                      settings-group :member-name
                                      "SettingsGroup"))
                                    (:shape-name "ApplicationSettings"))

(smithy/sdk/shapes:define-structure application-settings-response
                                    common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (settings-group :target-type
                                      settings-group :member-name
                                      "SettingsGroup")
                                     (s3bucket-name :target-type string
                                      :member-name "S3BucketName"))
                                    (:shape-name "ApplicationSettingsResponse"))

(smithy/sdk/shapes:define-list applications :member application)

(smithy/sdk/shapes:define-type appstream-agent-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list arn-list :member arn)

(smithy/sdk/shapes:define-input associate-app-block-builder-app-block-request
                                common-lisp:nil
                                ((app-block-arn :target-type arn :required
                                  common-lisp:t :member-name "AppBlockArn")
                                 (app-block-builder-name :target-type name
                                  :required common-lisp:t :member-name
                                  "AppBlockBuilderName"))
                                (:shape-name
                                 "AssociateAppBlockBuilderAppBlockRequest"))

(smithy/sdk/shapes:define-output associate-app-block-builder-app-block-result
                                 common-lisp:nil
                                 ((app-block-builder-app-block-association
                                   :target-type
                                   app-block-builder-app-block-association
                                   :member-name
                                   "AppBlockBuilderAppBlockAssociation"))
                                 (:shape-name
                                  "AssociateAppBlockBuilderAppBlockResult"))

(smithy/sdk/shapes:define-input associate-application-fleet-request
                                common-lisp:nil
                                ((fleet-name :target-type name :required
                                  common-lisp:t :member-name "FleetName")
                                 (application-arn :target-type arn :required
                                  common-lisp:t :member-name "ApplicationArn"))
                                (:shape-name
                                 "AssociateApplicationFleetRequest"))

(smithy/sdk/shapes:define-output associate-application-fleet-result
                                 common-lisp:nil
                                 ((application-fleet-association :target-type
                                   application-fleet-association :member-name
                                   "ApplicationFleetAssociation"))
                                 (:shape-name
                                  "AssociateApplicationFleetResult"))

(smithy/sdk/shapes:define-input associate-application-to-entitlement-request
                                common-lisp:nil
                                ((stack-name :target-type name :required
                                  common-lisp:t :member-name "StackName")
                                 (entitlement-name :target-type name :required
                                  common-lisp:t :member-name "EntitlementName")
                                 (application-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "ApplicationIdentifier"))
                                (:shape-name
                                 "AssociateApplicationToEntitlementRequest"))

(smithy/sdk/shapes:define-output associate-application-to-entitlement-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AssociateApplicationToEntitlementResult"))

(smithy/sdk/shapes:define-input associate-fleet-request common-lisp:nil
                                ((fleet-name :target-type string :required
                                  common-lisp:t :member-name "FleetName")
                                 (stack-name :target-type string :required
                                  common-lisp:t :member-name "StackName"))
                                (:shape-name "AssociateFleetRequest"))

(smithy/sdk/shapes:define-output associate-fleet-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AssociateFleetResult"))

(smithy/sdk/shapes:define-enum authentication-type
    common-lisp:nil
  (:api "API")
  (:saml "SAML")
  (:userpool "USERPOOL")
  (:aws-ad "AWS_AD"))

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aws-account-id-list :member aws-account-id)

(smithy/sdk/shapes:define-input batch-associate-user-stack-request
                                common-lisp:nil
                                ((user-stack-associations :target-type
                                  user-stack-association-list :required
                                  common-lisp:t :member-name
                                  "UserStackAssociations"))
                                (:shape-name "BatchAssociateUserStackRequest"))

(smithy/sdk/shapes:define-output batch-associate-user-stack-result
                                 common-lisp:nil
                                 ((errors :target-type
                                   user-stack-association-error-list
                                   :member-name "errors"))
                                 (:shape-name "BatchAssociateUserStackResult"))

(smithy/sdk/shapes:define-input batch-disassociate-user-stack-request
                                common-lisp:nil
                                ((user-stack-associations :target-type
                                  user-stack-association-list :required
                                  common-lisp:t :member-name
                                  "UserStackAssociations"))
                                (:shape-name
                                 "BatchDisassociateUserStackRequest"))

(smithy/sdk/shapes:define-output batch-disassociate-user-stack-result
                                 common-lisp:nil
                                 ((errors :target-type
                                   user-stack-association-error-list
                                   :member-name "errors"))
                                 (:shape-name
                                  "BatchDisassociateUserStackResult"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-object smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure certificate-based-auth-properties
                                    common-lisp:nil
                                    ((status :target-type
                                      certificate-based-auth-status
                                      :member-name "Status")
                                     (certificate-authority-arn :target-type
                                      arn :member-name
                                      "CertificateAuthorityArn"))
                                    (:shape-name
                                     "CertificateBasedAuthProperties"))

(smithy/sdk/shapes:define-enum certificate-based-auth-status
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED")
  (:enabled-no-directory-login-fallback "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK"))

(smithy/sdk/shapes:define-structure compute-capacity common-lisp:nil
                                    ((desired-instances :target-type integer
                                      :member-name "DesiredInstances")
                                     (desired-sessions :target-type integer
                                      :member-name "DesiredSessions"))
                                    (:shape-name "ComputeCapacity"))

(smithy/sdk/shapes:define-structure compute-capacity-status common-lisp:nil
                                    ((desired :target-type integer :required
                                      common-lisp:t :member-name "Desired")
                                     (running :target-type integer :member-name
                                      "Running")
                                     (in-use :target-type integer :member-name
                                      "InUse")
                                     (available :target-type integer
                                      :member-name "Available")
                                     (desired-user-sessions :target-type
                                      integer :member-name
                                      "DesiredUserSessions")
                                     (available-user-sessions :target-type
                                      integer :member-name
                                      "AvailableUserSessions")
                                     (active-user-sessions :target-type integer
                                      :member-name "ActiveUserSessions")
                                     (actual-user-sessions :target-type integer
                                      :member-name "ActualUserSessions"))
                                    (:shape-name "ComputeCapacityStatus"))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input copy-image-request common-lisp:nil
                                ((source-image-name :target-type name :required
                                  common-lisp:t :member-name "SourceImageName")
                                 (destination-image-name :target-type name
                                  :required common-lisp:t :member-name
                                  "DestinationImageName")
                                 (destination-region :target-type region-name
                                  :required common-lisp:t :member-name
                                  "DestinationRegion")
                                 (destination-image-description :target-type
                                  description :member-name
                                  "DestinationImageDescription"))
                                (:shape-name "CopyImageRequest"))

(smithy/sdk/shapes:define-output copy-image-response common-lisp:nil
                                 ((destination-image-name :target-type name
                                   :member-name "DestinationImageName"))
                                 (:shape-name "CopyImageResponse"))

(smithy/sdk/shapes:define-input create-app-block-builder-request
                                common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (display-name :target-type display-name
                                  :member-name "DisplayName")
                                 (tags :target-type tags :member-name "Tags")
                                 (platform :target-type
                                  app-block-builder-platform-type :required
                                  common-lisp:t :member-name "Platform")
                                 (instance-type :target-type string :required
                                  common-lisp:t :member-name "InstanceType")
                                 (vpc-config :target-type vpc-config :required
                                  common-lisp:t :member-name "VpcConfig")
                                 (enable-default-internet-access :target-type
                                  boolean-object :member-name
                                  "EnableDefaultInternetAccess")
                                 (iam-role-arn :target-type arn :member-name
                                  "IamRoleArn")
                                 (access-endpoints :target-type
                                  access-endpoint-list :member-name
                                  "AccessEndpoints"))
                                (:shape-name "CreateAppBlockBuilderRequest"))

(smithy/sdk/shapes:define-output create-app-block-builder-result
                                 common-lisp:nil
                                 ((app-block-builder :target-type
                                   app-block-builder :member-name
                                   "AppBlockBuilder"))
                                 (:shape-name "CreateAppBlockBuilderResult"))

(smithy/sdk/shapes:define-input create-app-block-builder-streaming-urlrequest
                                common-lisp:nil
                                ((app-block-builder-name :target-type name
                                  :required common-lisp:t :member-name
                                  "AppBlockBuilderName")
                                 (validity :target-type long :member-name
                                  "Validity"))
                                (:shape-name
                                 "CreateAppBlockBuilderStreamingURLRequest"))

(smithy/sdk/shapes:define-output create-app-block-builder-streaming-urlresult
                                 common-lisp:nil
                                 ((streaming-url :target-type string
                                   :member-name "StreamingURL")
                                  (expires :target-type timestamp :member-name
                                   "Expires"))
                                 (:shape-name
                                  "CreateAppBlockBuilderStreamingURLResult"))

(smithy/sdk/shapes:define-input create-app-block-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (display-name :target-type display-name
                                  :member-name "DisplayName")
                                 (source-s3location :target-type s3location
                                  :required common-lisp:t :member-name
                                  "SourceS3Location")
                                 (setup-script-details :target-type
                                  script-details :member-name
                                  "SetupScriptDetails")
                                 (tags :target-type tags :member-name "Tags")
                                 (post-setup-script-details :target-type
                                  script-details :member-name
                                  "PostSetupScriptDetails")
                                 (packaging-type :target-type packaging-type
                                  :member-name "PackagingType"))
                                (:shape-name "CreateAppBlockRequest"))

(smithy/sdk/shapes:define-output create-app-block-result common-lisp:nil
                                 ((app-block :target-type app-block
                                   :member-name "AppBlock"))
                                 (:shape-name "CreateAppBlockResult"))

(smithy/sdk/shapes:define-input create-application-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (display-name :target-type display-name
                                  :member-name "DisplayName")
                                 (description :target-type description
                                  :member-name "Description")
                                 (icon-s3location :target-type s3location
                                  :required common-lisp:t :member-name
                                  "IconS3Location")
                                 (launch-path :target-type string :required
                                  common-lisp:t :member-name "LaunchPath")
                                 (working-directory :target-type string
                                  :member-name "WorkingDirectory")
                                 (launch-parameters :target-type string
                                  :member-name "LaunchParameters")
                                 (platforms :target-type platforms :required
                                  common-lisp:t :member-name "Platforms")
                                 (instance-families :target-type string-list
                                  :required common-lisp:t :member-name
                                  "InstanceFamilies")
                                 (app-block-arn :target-type arn :required
                                  common-lisp:t :member-name "AppBlockArn")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-output create-application-result common-lisp:nil
                                 ((application :target-type application
                                   :member-name "Application"))
                                 (:shape-name "CreateApplicationResult"))

(smithy/sdk/shapes:define-input create-directory-config-request common-lisp:nil
                                ((directory-name :target-type directory-name
                                  :required common-lisp:t :member-name
                                  "DirectoryName")
                                 (organizational-unit-distinguished-names
                                  :target-type
                                  organizational-unit-distinguished-names-list
                                  :required common-lisp:t :member-name
                                  "OrganizationalUnitDistinguishedNames")
                                 (service-account-credentials :target-type
                                  service-account-credentials :member-name
                                  "ServiceAccountCredentials")
                                 (certificate-based-auth-properties
                                  :target-type
                                  certificate-based-auth-properties
                                  :member-name
                                  "CertificateBasedAuthProperties"))
                                (:shape-name "CreateDirectoryConfigRequest"))

(smithy/sdk/shapes:define-output create-directory-config-result common-lisp:nil
                                 ((directory-config :target-type
                                   directory-config :member-name
                                   "DirectoryConfig"))
                                 (:shape-name "CreateDirectoryConfigResult"))

(smithy/sdk/shapes:define-input create-entitlement-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (stack-name :target-type name :required
                                  common-lisp:t :member-name "StackName")
                                 (description :target-type description
                                  :member-name "Description")
                                 (app-visibility :target-type app-visibility
                                  :required common-lisp:t :member-name
                                  "AppVisibility")
                                 (attributes :target-type
                                  entitlement-attribute-list :required
                                  common-lisp:t :member-name "Attributes"))
                                (:shape-name "CreateEntitlementRequest"))

(smithy/sdk/shapes:define-output create-entitlement-result common-lisp:nil
                                 ((entitlement :target-type entitlement
                                   :member-name "Entitlement"))
                                 (:shape-name "CreateEntitlementResult"))

(smithy/sdk/shapes:define-input create-fleet-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (image-name :target-type name :member-name
                                  "ImageName")
                                 (image-arn :target-type arn :member-name
                                  "ImageArn")
                                 (instance-type :target-type string :required
                                  common-lisp:t :member-name "InstanceType")
                                 (fleet-type :target-type fleet-type
                                  :member-name "FleetType")
                                 (compute-capacity :target-type
                                  compute-capacity :member-name
                                  "ComputeCapacity")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (max-user-duration-in-seconds :target-type
                                  integer :member-name
                                  "MaxUserDurationInSeconds")
                                 (disconnect-timeout-in-seconds :target-type
                                  integer :member-name
                                  "DisconnectTimeoutInSeconds")
                                 (description :target-type description
                                  :member-name "Description")
                                 (display-name :target-type display-name
                                  :member-name "DisplayName")
                                 (enable-default-internet-access :target-type
                                  boolean-object :member-name
                                  "EnableDefaultInternetAccess")
                                 (domain-join-info :target-type
                                  domain-join-info :member-name
                                  "DomainJoinInfo")
                                 (tags :target-type tags :member-name "Tags")
                                 (idle-disconnect-timeout-in-seconds
                                  :target-type integer :member-name
                                  "IdleDisconnectTimeoutInSeconds")
                                 (iam-role-arn :target-type arn :member-name
                                  "IamRoleArn")
                                 (stream-view :target-type stream-view
                                  :member-name "StreamView")
                                 (platform :target-type platform-type
                                  :member-name "Platform")
                                 (max-concurrent-sessions :target-type integer
                                  :member-name "MaxConcurrentSessions")
                                 (usb-device-filter-strings :target-type
                                  usb-device-filter-strings :member-name
                                  "UsbDeviceFilterStrings")
                                 (session-script-s3location :target-type
                                  s3location :member-name
                                  "SessionScriptS3Location")
                                 (max-sessions-per-instance :target-type
                                  integer :member-name
                                  "MaxSessionsPerInstance"))
                                (:shape-name "CreateFleetRequest"))

(smithy/sdk/shapes:define-output create-fleet-result common-lisp:nil
                                 ((fleet :target-type fleet :member-name
                                   "Fleet"))
                                 (:shape-name "CreateFleetResult"))

(smithy/sdk/shapes:define-input create-image-builder-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (image-name :target-type string :member-name
                                  "ImageName")
                                 (image-arn :target-type arn :member-name
                                  "ImageArn")
                                 (instance-type :target-type string :required
                                  common-lisp:t :member-name "InstanceType")
                                 (description :target-type description
                                  :member-name "Description")
                                 (display-name :target-type display-name
                                  :member-name "DisplayName")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (iam-role-arn :target-type arn :member-name
                                  "IamRoleArn")
                                 (enable-default-internet-access :target-type
                                  boolean-object :member-name
                                  "EnableDefaultInternetAccess")
                                 (domain-join-info :target-type
                                  domain-join-info :member-name
                                  "DomainJoinInfo")
                                 (appstream-agent-version :target-type
                                  appstream-agent-version :member-name
                                  "AppstreamAgentVersion")
                                 (tags :target-type tags :member-name "Tags")
                                 (access-endpoints :target-type
                                  access-endpoint-list :member-name
                                  "AccessEndpoints"))
                                (:shape-name "CreateImageBuilderRequest"))

(smithy/sdk/shapes:define-output create-image-builder-result common-lisp:nil
                                 ((image-builder :target-type image-builder
                                   :member-name "ImageBuilder"))
                                 (:shape-name "CreateImageBuilderResult"))

(smithy/sdk/shapes:define-input create-image-builder-streaming-urlrequest
                                common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (validity :target-type long :member-name
                                  "Validity"))
                                (:shape-name
                                 "CreateImageBuilderStreamingURLRequest"))

(smithy/sdk/shapes:define-output create-image-builder-streaming-urlresult
                                 common-lisp:nil
                                 ((streaming-url :target-type string
                                   :member-name "StreamingURL")
                                  (expires :target-type timestamp :member-name
                                   "Expires"))
                                 (:shape-name
                                  "CreateImageBuilderStreamingURLResult"))

(smithy/sdk/shapes:define-input create-stack-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (display-name :target-type display-name
                                  :member-name "DisplayName")
                                 (storage-connectors :target-type
                                  storage-connector-list :member-name
                                  "StorageConnectors")
                                 (redirect-url :target-type redirect-url
                                  :member-name "RedirectURL")
                                 (feedback-url :target-type feedback-url
                                  :member-name "FeedbackURL")
                                 (user-settings :target-type user-setting-list
                                  :member-name "UserSettings")
                                 (application-settings :target-type
                                  application-settings :member-name
                                  "ApplicationSettings")
                                 (tags :target-type tags :member-name "Tags")
                                 (access-endpoints :target-type
                                  access-endpoint-list :member-name
                                  "AccessEndpoints")
                                 (embed-host-domains :target-type
                                  embed-host-domains :member-name
                                  "EmbedHostDomains")
                                 (streaming-experience-settings :target-type
                                  streaming-experience-settings :member-name
                                  "StreamingExperienceSettings"))
                                (:shape-name "CreateStackRequest"))

(smithy/sdk/shapes:define-output create-stack-result common-lisp:nil
                                 ((stack :target-type stack :member-name
                                   "Stack"))
                                 (:shape-name "CreateStackResult"))

(smithy/sdk/shapes:define-input create-streaming-urlrequest common-lisp:nil
                                ((stack-name :target-type string :required
                                  common-lisp:t :member-name "StackName")
                                 (fleet-name :target-type string :required
                                  common-lisp:t :member-name "FleetName")
                                 (user-id :target-type streaming-url-user-id
                                  :required common-lisp:t :member-name
                                  "UserId")
                                 (application-id :target-type string
                                  :member-name "ApplicationId")
                                 (validity :target-type long :member-name
                                  "Validity")
                                 (session-context :target-type string
                                  :member-name "SessionContext"))
                                (:shape-name "CreateStreamingURLRequest"))

(smithy/sdk/shapes:define-output create-streaming-urlresult common-lisp:nil
                                 ((streaming-url :target-type string
                                   :member-name "StreamingURL")
                                  (expires :target-type timestamp :member-name
                                   "Expires"))
                                 (:shape-name "CreateStreamingURLResult"))

(smithy/sdk/shapes:define-input create-theme-for-stack-request common-lisp:nil
                                ((stack-name :target-type name :required
                                  common-lisp:t :member-name "StackName")
                                 (footer-links :target-type theme-footer-links
                                  :member-name "FooterLinks")
                                 (title-text :target-type theme-title-text
                                  :required common-lisp:t :member-name
                                  "TitleText")
                                 (theme-styling :target-type theme-styling
                                  :required common-lisp:t :member-name
                                  "ThemeStyling")
                                 (organization-logo-s3location :target-type
                                  s3location :required common-lisp:t
                                  :member-name "OrganizationLogoS3Location")
                                 (favicon-s3location :target-type s3location
                                  :required common-lisp:t :member-name
                                  "FaviconS3Location"))
                                (:shape-name "CreateThemeForStackRequest"))

(smithy/sdk/shapes:define-output create-theme-for-stack-result common-lisp:nil
                                 ((theme :target-type theme :member-name
                                   "Theme"))
                                 (:shape-name "CreateThemeForStackResult"))

(smithy/sdk/shapes:define-input create-updated-image-request common-lisp:nil
                                ((existing-image-name :target-type name
                                  :required common-lisp:t :member-name
                                  "existingImageName")
                                 (new-image-name :target-type name :required
                                  common-lisp:t :member-name "newImageName")
                                 (new-image-description :target-type
                                  description :member-name
                                  "newImageDescription")
                                 (new-image-display-name :target-type
                                  display-name :member-name
                                  "newImageDisplayName")
                                 (new-image-tags :target-type tags :member-name
                                  "newImageTags")
                                 (dry-run :target-type boolean :member-name
                                  "dryRun"))
                                (:shape-name "CreateUpdatedImageRequest"))

(smithy/sdk/shapes:define-output create-updated-image-result common-lisp:nil
                                 ((image :target-type image :member-name
                                   "image")
                                  (can-update-image :target-type boolean
                                   :member-name "canUpdateImage"))
                                 (:shape-name "CreateUpdatedImageResult"))

(smithy/sdk/shapes:define-input create-usage-report-subscription-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "CreateUsageReportSubscriptionRequest"))

(smithy/sdk/shapes:define-output create-usage-report-subscription-result
                                 common-lisp:nil
                                 ((s3bucket-name :target-type string
                                   :member-name "S3BucketName")
                                  (schedule :target-type usage-report-schedule
                                   :member-name "Schedule"))
                                 (:shape-name
                                  "CreateUsageReportSubscriptionResult"))

(smithy/sdk/shapes:define-input create-user-request common-lisp:nil
                                ((user-name :target-type username :required
                                  common-lisp:t :member-name "UserName")
                                 (message-action :target-type message-action
                                  :member-name "MessageAction")
                                 (first-name :target-type user-attribute-value
                                  :member-name "FirstName")
                                 (last-name :target-type user-attribute-value
                                  :member-name "LastName")
                                 (authentication-type :target-type
                                  authentication-type :required common-lisp:t
                                  :member-name "AuthenticationType"))
                                (:shape-name "CreateUserRequest"))

(smithy/sdk/shapes:define-output create-user-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateUserResult"))

(smithy/sdk/shapes:define-input delete-app-block-builder-request
                                common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteAppBlockBuilderRequest"))

(smithy/sdk/shapes:define-output delete-app-block-builder-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteAppBlockBuilderResult"))

(smithy/sdk/shapes:define-input delete-app-block-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteAppBlockRequest"))

(smithy/sdk/shapes:define-output delete-app-block-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAppBlockResult"))

(smithy/sdk/shapes:define-input delete-application-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-output delete-application-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteApplicationResult"))

(smithy/sdk/shapes:define-input delete-directory-config-request common-lisp:nil
                                ((directory-name :target-type directory-name
                                  :required common-lisp:t :member-name
                                  "DirectoryName"))
                                (:shape-name "DeleteDirectoryConfigRequest"))

(smithy/sdk/shapes:define-output delete-directory-config-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDirectoryConfigResult"))

(smithy/sdk/shapes:define-input delete-entitlement-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (stack-name :target-type name :required
                                  common-lisp:t :member-name "StackName"))
                                (:shape-name "DeleteEntitlementRequest"))

(smithy/sdk/shapes:define-output delete-entitlement-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEntitlementResult"))

(smithy/sdk/shapes:define-input delete-fleet-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteFleetRequest"))

(smithy/sdk/shapes:define-output delete-fleet-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteFleetResult"))

(smithy/sdk/shapes:define-input delete-image-builder-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteImageBuilderRequest"))

(smithy/sdk/shapes:define-output delete-image-builder-result common-lisp:nil
                                 ((image-builder :target-type image-builder
                                   :member-name "ImageBuilder"))
                                 (:shape-name "DeleteImageBuilderResult"))

(smithy/sdk/shapes:define-input delete-image-permissions-request
                                common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (shared-account-id :target-type aws-account-id
                                  :required common-lisp:t :member-name
                                  "SharedAccountId"))
                                (:shape-name "DeleteImagePermissionsRequest"))

(smithy/sdk/shapes:define-output delete-image-permissions-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteImagePermissionsResult"))

(smithy/sdk/shapes:define-input delete-image-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteImageRequest"))

(smithy/sdk/shapes:define-output delete-image-result common-lisp:nil
                                 ((image :target-type image :member-name
                                   "Image"))
                                 (:shape-name "DeleteImageResult"))

(smithy/sdk/shapes:define-input delete-stack-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteStackRequest"))

(smithy/sdk/shapes:define-output delete-stack-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteStackResult"))

(smithy/sdk/shapes:define-input delete-theme-for-stack-request common-lisp:nil
                                ((stack-name :target-type name :required
                                  common-lisp:t :member-name "StackName"))
                                (:shape-name "DeleteThemeForStackRequest"))

(smithy/sdk/shapes:define-output delete-theme-for-stack-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteThemeForStackResult"))

(smithy/sdk/shapes:define-input delete-usage-report-subscription-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DeleteUsageReportSubscriptionRequest"))

(smithy/sdk/shapes:define-output delete-usage-report-subscription-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteUsageReportSubscriptionResult"))

(smithy/sdk/shapes:define-input delete-user-request common-lisp:nil
                                ((user-name :target-type username :required
                                  common-lisp:t :member-name "UserName")
                                 (authentication-type :target-type
                                  authentication-type :required common-lisp:t
                                  :member-name "AuthenticationType"))
                                (:shape-name "DeleteUserRequest"))

(smithy/sdk/shapes:define-output delete-user-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteUserResult"))

(smithy/sdk/shapes:define-input
 describe-app-block-builder-app-block-associations-request common-lisp:nil
 ((app-block-arn :target-type arn :member-name "AppBlockArn")
  (app-block-builder-name :target-type name :member-name "AppBlockBuilderName")
  (max-results :target-type integer :member-name "MaxResults")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "DescribeAppBlockBuilderAppBlockAssociationsRequest"))

(smithy/sdk/shapes:define-output
 describe-app-block-builder-app-block-associations-result common-lisp:nil
 ((app-block-builder-app-block-associations :target-type
   app-block-builder-app-block-associations-list :member-name
   "AppBlockBuilderAppBlockAssociations")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "DescribeAppBlockBuilderAppBlockAssociationsResult"))

(smithy/sdk/shapes:define-input describe-app-block-builders-request
                                common-lisp:nil
                                ((names :target-type string-list :member-name
                                  "Names")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type integer :member-name
                                  "MaxResults"))
                                (:shape-name "DescribeAppBlockBuildersRequest"))

(smithy/sdk/shapes:define-output describe-app-block-builders-result
                                 common-lisp:nil
                                 ((app-block-builders :target-type
                                   app-block-builder-list :member-name
                                   "AppBlockBuilders")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeAppBlockBuildersResult"))

(smithy/sdk/shapes:define-input describe-app-blocks-request common-lisp:nil
                                ((arns :target-type arn-list :member-name
                                  "Arns")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type integer :member-name
                                  "MaxResults"))
                                (:shape-name "DescribeAppBlocksRequest"))

(smithy/sdk/shapes:define-output describe-app-blocks-result common-lisp:nil
                                 ((app-blocks :target-type app-blocks
                                   :member-name "AppBlocks")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeAppBlocksResult"))

(smithy/sdk/shapes:define-input describe-application-fleet-associations-request
                                common-lisp:nil
                                ((fleet-name :target-type name :member-name
                                  "FleetName")
                                 (application-arn :target-type arn :member-name
                                  "ApplicationArn")
                                 (max-results :target-type integer :member-name
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeApplicationFleetAssociationsRequest"))

(smithy/sdk/shapes:define-output describe-application-fleet-associations-result
                                 common-lisp:nil
                                 ((application-fleet-associations :target-type
                                   application-fleet-association-list
                                   :member-name "ApplicationFleetAssociations")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeApplicationFleetAssociationsResult"))

(smithy/sdk/shapes:define-input describe-applications-request common-lisp:nil
                                ((arns :target-type arn-list :member-name
                                  "Arns")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type integer :member-name
                                  "MaxResults"))
                                (:shape-name "DescribeApplicationsRequest"))

(smithy/sdk/shapes:define-output describe-applications-result common-lisp:nil
                                 ((applications :target-type applications
                                   :member-name "Applications")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeApplicationsResult"))

(smithy/sdk/shapes:define-input describe-directory-configs-request
                                common-lisp:nil
                                ((directory-names :target-type
                                  directory-name-list :member-name
                                  "DirectoryNames")
                                 (max-results :target-type integer :member-name
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeDirectoryConfigsRequest"))

(smithy/sdk/shapes:define-output describe-directory-configs-result
                                 common-lisp:nil
                                 ((directory-configs :target-type
                                   directory-config-list :member-name
                                   "DirectoryConfigs")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeDirectoryConfigsResult"))

(smithy/sdk/shapes:define-input describe-entitlements-request common-lisp:nil
                                ((name :target-type name :member-name "Name")
                                 (stack-name :target-type name :required
                                  common-lisp:t :member-name "StackName")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type integer :member-name
                                  "MaxResults"))
                                (:shape-name "DescribeEntitlementsRequest"))

(smithy/sdk/shapes:define-output describe-entitlements-result common-lisp:nil
                                 ((entitlements :target-type entitlement-list
                                   :member-name "Entitlements")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeEntitlementsResult"))

(smithy/sdk/shapes:define-input describe-fleets-request common-lisp:nil
                                ((names :target-type string-list :member-name
                                  "Names")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeFleetsRequest"))

(smithy/sdk/shapes:define-output describe-fleets-result common-lisp:nil
                                 ((fleets :target-type fleet-list :member-name
                                   "Fleets")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeFleetsResult"))

(smithy/sdk/shapes:define-input describe-image-builders-request common-lisp:nil
                                ((names :target-type string-list :member-name
                                  "Names")
                                 (max-results :target-type integer :member-name
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeImageBuildersRequest"))

(smithy/sdk/shapes:define-output describe-image-builders-result common-lisp:nil
                                 ((image-builders :target-type
                                   image-builder-list :member-name
                                   "ImageBuilders")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeImageBuildersResult"))

(smithy/sdk/shapes:define-input describe-image-permissions-request
                                common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (shared-aws-account-ids :target-type
                                  aws-account-id-list :member-name
                                  "SharedAwsAccountIds")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeImagePermissionsRequest"))

(smithy/sdk/shapes:define-output describe-image-permissions-result
                                 common-lisp:nil
                                 ((name :target-type name :member-name "Name")
                                  (shared-image-permissions-list :target-type
                                   shared-image-permissions-list :member-name
                                   "SharedImagePermissionsList")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeImagePermissionsResult"))

(smithy/sdk/shapes:define-type describe-images-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input describe-images-request common-lisp:nil
                                ((names :target-type string-list :member-name
                                  "Names")
                                 (arns :target-type arn-list :member-name
                                  "Arns")
                                 (type :target-type visibility-type
                                  :member-name "Type")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  describe-images-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "DescribeImagesRequest"))

(smithy/sdk/shapes:define-output describe-images-result common-lisp:nil
                                 ((images :target-type image-list :member-name
                                   "Images")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeImagesResult"))

(smithy/sdk/shapes:define-input describe-sessions-request common-lisp:nil
                                ((stack-name :target-type name :required
                                  common-lisp:t :member-name "StackName")
                                 (fleet-name :target-type name :required
                                  common-lisp:t :member-name "FleetName")
                                 (user-id :target-type user-id :member-name
                                  "UserId")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (limit :target-type integer :member-name
                                  "Limit")
                                 (authentication-type :target-type
                                  authentication-type :member-name
                                  "AuthenticationType")
                                 (instance-id :target-type string :member-name
                                  "InstanceId"))
                                (:shape-name "DescribeSessionsRequest"))

(smithy/sdk/shapes:define-output describe-sessions-result common-lisp:nil
                                 ((sessions :target-type session-list
                                   :member-name "Sessions")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeSessionsResult"))

(smithy/sdk/shapes:define-input describe-stacks-request common-lisp:nil
                                ((names :target-type string-list :member-name
                                  "Names")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeStacksRequest"))

(smithy/sdk/shapes:define-output describe-stacks-result common-lisp:nil
                                 ((stacks :target-type stack-list :member-name
                                   "Stacks")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeStacksResult"))

(smithy/sdk/shapes:define-input describe-theme-for-stack-request
                                common-lisp:nil
                                ((stack-name :target-type name :required
                                  common-lisp:t :member-name "StackName"))
                                (:shape-name "DescribeThemeForStackRequest"))

(smithy/sdk/shapes:define-output describe-theme-for-stack-result
                                 common-lisp:nil
                                 ((theme :target-type theme :member-name
                                   "Theme"))
                                 (:shape-name "DescribeThemeForStackResult"))

(smithy/sdk/shapes:define-input describe-usage-report-subscriptions-request
                                common-lisp:nil
                                ((max-results :target-type integer :member-name
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeUsageReportSubscriptionsRequest"))

(smithy/sdk/shapes:define-output describe-usage-report-subscriptions-result
                                 common-lisp:nil
                                 ((usage-report-subscriptions :target-type
                                   usage-report-subscription-list :member-name
                                   "UsageReportSubscriptions")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeUsageReportSubscriptionsResult"))

(smithy/sdk/shapes:define-input describe-user-stack-associations-request
                                common-lisp:nil
                                ((stack-name :target-type string :member-name
                                  "StackName")
                                 (user-name :target-type username :member-name
                                  "UserName")
                                 (authentication-type :target-type
                                  authentication-type :member-name
                                  "AuthenticationType")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeUserStackAssociationsRequest"))

(smithy/sdk/shapes:define-output describe-user-stack-associations-result
                                 common-lisp:nil
                                 ((user-stack-associations :target-type
                                   user-stack-association-list :member-name
                                   "UserStackAssociations")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeUserStackAssociationsResult"))

(smithy/sdk/shapes:define-input describe-users-request common-lisp:nil
                                ((authentication-type :target-type
                                  authentication-type :required common-lisp:t
                                  :member-name "AuthenticationType")
                                 (max-results :target-type integer :member-name
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeUsersRequest"))

(smithy/sdk/shapes:define-output describe-users-result common-lisp:nil
                                 ((users :target-type user-list :member-name
                                   "Users")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeUsersResult"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure directory-config common-lisp:nil
                                    ((directory-name :target-type
                                      directory-name :required common-lisp:t
                                      :member-name "DirectoryName")
                                     (organizational-unit-distinguished-names
                                      :target-type
                                      organizational-unit-distinguished-names-list
                                      :member-name
                                      "OrganizationalUnitDistinguishedNames")
                                     (service-account-credentials :target-type
                                      service-account-credentials :member-name
                                      "ServiceAccountCredentials")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (certificate-based-auth-properties
                                      :target-type
                                      certificate-based-auth-properties
                                      :member-name
                                      "CertificateBasedAuthProperties"))
                                    (:shape-name "DirectoryConfig"))

(smithy/sdk/shapes:define-list directory-config-list :member directory-config)

(smithy/sdk/shapes:define-type directory-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list directory-name-list :member directory-name)

(smithy/sdk/shapes:define-input disable-user-request common-lisp:nil
                                ((user-name :target-type username :required
                                  common-lisp:t :member-name "UserName")
                                 (authentication-type :target-type
                                  authentication-type :required common-lisp:t
                                  :member-name "AuthenticationType"))
                                (:shape-name "DisableUserRequest"))

(smithy/sdk/shapes:define-output disable-user-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisableUserResult"))

(smithy/sdk/shapes:define-input
 disassociate-app-block-builder-app-block-request common-lisp:nil
 ((app-block-arn :target-type arn :required common-lisp:t :member-name
   "AppBlockArn")
  (app-block-builder-name :target-type name :required common-lisp:t
   :member-name "AppBlockBuilderName"))
 (:shape-name "DisassociateAppBlockBuilderAppBlockRequest"))

(smithy/sdk/shapes:define-output
 disassociate-app-block-builder-app-block-result common-lisp:nil
 common-lisp:nil (:shape-name "DisassociateAppBlockBuilderAppBlockResult"))

(smithy/sdk/shapes:define-input disassociate-application-fleet-request
                                common-lisp:nil
                                ((fleet-name :target-type name :required
                                  common-lisp:t :member-name "FleetName")
                                 (application-arn :target-type arn :required
                                  common-lisp:t :member-name "ApplicationArn"))
                                (:shape-name
                                 "DisassociateApplicationFleetRequest"))

(smithy/sdk/shapes:define-output disassociate-application-fleet-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateApplicationFleetResult"))

(smithy/sdk/shapes:define-input
 disassociate-application-from-entitlement-request common-lisp:nil
 ((stack-name :target-type name :required common-lisp:t :member-name
   "StackName")
  (entitlement-name :target-type name :required common-lisp:t :member-name
   "EntitlementName")
  (application-identifier :target-type string :required common-lisp:t
   :member-name "ApplicationIdentifier"))
 (:shape-name "DisassociateApplicationFromEntitlementRequest"))

(smithy/sdk/shapes:define-output
 disassociate-application-from-entitlement-result common-lisp:nil
 common-lisp:nil (:shape-name "DisassociateApplicationFromEntitlementResult"))

(smithy/sdk/shapes:define-input disassociate-fleet-request common-lisp:nil
                                ((fleet-name :target-type string :required
                                  common-lisp:t :member-name "FleetName")
                                 (stack-name :target-type string :required
                                  common-lisp:t :member-name "StackName"))
                                (:shape-name "DisassociateFleetRequest"))

(smithy/sdk/shapes:define-output disassociate-fleet-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisassociateFleetResult"))

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure domain-join-info common-lisp:nil
                                    ((directory-name :target-type
                                      directory-name :member-name
                                      "DirectoryName")
                                     (organizational-unit-distinguished-name
                                      :target-type
                                      organizational-unit-distinguished-name
                                      :member-name
                                      "OrganizationalUnitDistinguishedName"))
                                    (:shape-name "DomainJoinInfo"))

(smithy/sdk/shapes:define-list domain-list :member domain)

(smithy/sdk/shapes:define-enum dynamic-app-providers-enabled
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type embed-host-domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list embed-host-domains :member embed-host-domain)

(smithy/sdk/shapes:define-input enable-user-request common-lisp:nil
                                ((user-name :target-type username :required
                                  common-lisp:t :member-name "UserName")
                                 (authentication-type :target-type
                                  authentication-type :required common-lisp:t
                                  :member-name "AuthenticationType"))
                                (:shape-name "EnableUserRequest"))

(smithy/sdk/shapes:define-output enable-user-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "EnableUserResult"))

(smithy/sdk/shapes:define-structure entitled-application common-lisp:nil
                                    ((application-identifier :target-type
                                      string :required common-lisp:t
                                      :member-name "ApplicationIdentifier"))
                                    (:shape-name "EntitledApplication"))

(smithy/sdk/shapes:define-list entitled-application-list :member
                               entitled-application)

(smithy/sdk/shapes:define-structure entitlement common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "Name")
                                     (stack-name :target-type name :required
                                      common-lisp:t :member-name "StackName")
                                     (description :target-type description
                                      :member-name "Description")
                                     (app-visibility :target-type
                                      app-visibility :required common-lisp:t
                                      :member-name "AppVisibility")
                                     (attributes :target-type
                                      entitlement-attribute-list :required
                                      common-lisp:t :member-name "Attributes")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "Entitlement"))

(smithy/sdk/shapes:define-error entitlement-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "EntitlementAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure entitlement-attribute common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "EntitlementAttribute"))

(smithy/sdk/shapes:define-list entitlement-attribute-list :member
                               entitlement-attribute)

(smithy/sdk/shapes:define-list entitlement-list :member entitlement)

(smithy/sdk/shapes:define-error entitlement-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "EntitlementNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure error-details common-lisp:nil
                                    ((error-code :target-type string
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "ErrorDetails"))

(smithy/sdk/shapes:define-list error-details-list :member error-details)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input expire-session-request common-lisp:nil
                                ((session-id :target-type string :required
                                  common-lisp:t :member-name "SessionId"))
                                (:shape-name "ExpireSessionRequest"))

(smithy/sdk/shapes:define-output expire-session-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ExpireSessionResult"))

(smithy/sdk/shapes:define-type feedback-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fleet common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "Arn")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (display-name :target-type string
                                      :member-name "DisplayName")
                                     (description :target-type string
                                      :member-name "Description")
                                     (image-name :target-type string
                                      :member-name "ImageName")
                                     (image-arn :target-type arn :member-name
                                      "ImageArn")
                                     (instance-type :target-type string
                                      :required common-lisp:t :member-name
                                      "InstanceType")
                                     (fleet-type :target-type fleet-type
                                      :member-name "FleetType")
                                     (compute-capacity-status :target-type
                                      compute-capacity-status :required
                                      common-lisp:t :member-name
                                      "ComputeCapacityStatus")
                                     (max-user-duration-in-seconds :target-type
                                      integer :member-name
                                      "MaxUserDurationInSeconds")
                                     (disconnect-timeout-in-seconds
                                      :target-type integer :member-name
                                      "DisconnectTimeoutInSeconds")
                                     (state :target-type fleet-state :required
                                      common-lisp:t :member-name "State")
                                     (vpc-config :target-type vpc-config
                                      :member-name "VpcConfig")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (fleet-errors :target-type fleet-errors
                                      :member-name "FleetErrors")
                                     (enable-default-internet-access
                                      :target-type boolean-object :member-name
                                      "EnableDefaultInternetAccess")
                                     (domain-join-info :target-type
                                      domain-join-info :member-name
                                      "DomainJoinInfo")
                                     (idle-disconnect-timeout-in-seconds
                                      :target-type integer :member-name
                                      "IdleDisconnectTimeoutInSeconds")
                                     (iam-role-arn :target-type arn
                                      :member-name "IamRoleArn")
                                     (stream-view :target-type stream-view
                                      :member-name "StreamView")
                                     (platform :target-type platform-type
                                      :member-name "Platform")
                                     (max-concurrent-sessions :target-type
                                      integer :member-name
                                      "MaxConcurrentSessions")
                                     (usb-device-filter-strings :target-type
                                      usb-device-filter-strings :member-name
                                      "UsbDeviceFilterStrings")
                                     (session-script-s3location :target-type
                                      s3location :member-name
                                      "SessionScriptS3Location")
                                     (max-sessions-per-instance :target-type
                                      integer :member-name
                                      "MaxSessionsPerInstance"))
                                    (:shape-name "Fleet"))

(smithy/sdk/shapes:define-enum fleet-attribute
    common-lisp:nil
  (:vpc-configuration "VPC_CONFIGURATION")
  (:vpc-configuration-security-group-ids "VPC_CONFIGURATION_SECURITY_GROUP_IDS")
  (:domain-join-info "DOMAIN_JOIN_INFO")
  (:iam-role-arn "IAM_ROLE_ARN")
  (:usb-device-filter-strings "USB_DEVICE_FILTER_STRINGS")
  (:session-script-s3-location "SESSION_SCRIPT_S3_LOCATION")
  (:max-sessions-per-instance "MAX_SESSIONS_PER_INSTANCE"))

(smithy/sdk/shapes:define-list fleet-attributes :member fleet-attribute)

(smithy/sdk/shapes:define-structure fleet-error common-lisp:nil
                                    ((error-code :target-type fleet-error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "FleetError"))

(smithy/sdk/shapes:define-enum fleet-error-code
    common-lisp:nil
  (:iam-service-role-missing-eni-describe-action
   "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION")
  (:iam-service-role-missing-eni-create-action
   "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION")
  (:iam-service-role-missing-eni-delete-action
   "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION")
  (:network-interface-limit-exceeded "NETWORK_INTERFACE_LIMIT_EXCEEDED")
  (:internal-service-error "INTERNAL_SERVICE_ERROR")
  (:iam-service-role-is-missing "IAM_SERVICE_ROLE_IS_MISSING")
  (:machine-role-is-missing "MACHINE_ROLE_IS_MISSING")
  (:sts-disabled-in-region "STS_DISABLED_IN_REGION")
  (:subnet-has-insufficient-ip-addresses "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES")
  (:iam-service-role-missing-describe-subnet-action
   "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION")
  (:subnet-not-found "SUBNET_NOT_FOUND")
  (:image-not-found "IMAGE_NOT_FOUND")
  (:invalid-subnet-configuration "INVALID_SUBNET_CONFIGURATION")
  (:security-groups-not-found "SECURITY_GROUPS_NOT_FOUND")
  (:igw-not-attached "IGW_NOT_ATTACHED")
  (:iam-service-role-missing-describe-security-groups-action
   "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION")
  (:fleet-stopped "FLEET_STOPPED")
  (:fleet-instance-provisioning-failure "FLEET_INSTANCE_PROVISIONING_FAILURE")
  (:domain-join-error-file-not-found "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND")
  (:domain-join-error-access-denied "DOMAIN_JOIN_ERROR_ACCESS_DENIED")
  (:domain-join-error-logon-failure "DOMAIN_JOIN_ERROR_LOGON_FAILURE")
  (:domain-join-error-invalid-parameter "DOMAIN_JOIN_ERROR_INVALID_PARAMETER")
  (:domain-join-error-more-data "DOMAIN_JOIN_ERROR_MORE_DATA")
  (:domain-join-error-no-such-domain "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN")
  (:domain-join-error-not-supported "DOMAIN_JOIN_ERROR_NOT_SUPPORTED")
  (:domain-join-nerr-invalid-workgroup-name
   "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME")
  (:domain-join-nerr-workstation-not-started
   "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED")
  (:domain-join-error-ds-machine-account-quota-exceeded
   "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED")
  (:domain-join-nerr-password-expired "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED")
  (:domain-join-internal-service-error "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"))

(smithy/sdk/shapes:define-list fleet-errors :member fleet-error)

(smithy/sdk/shapes:define-list fleet-list :member fleet)

(smithy/sdk/shapes:define-enum fleet-state
    common-lisp:nil
  (:starting "STARTING")
  (:running "RUNNING")
  (:stopping "STOPPING")
  (:stopped "STOPPED"))

(smithy/sdk/shapes:define-enum fleet-type
    common-lisp:nil
  (:always-on "ALWAYS_ON")
  (:on-demand "ON_DEMAND")
  (:elastic "ELASTIC"))

(smithy/sdk/shapes:define-structure image common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (arn :target-type arn :member-name "Arn")
                                     (base-image-arn :target-type arn
                                      :member-name "BaseImageArn")
                                     (display-name :target-type string
                                      :member-name "DisplayName")
                                     (state :target-type image-state
                                      :member-name "State")
                                     (visibility :target-type visibility-type
                                      :member-name "Visibility")
                                     (image-builder-supported :target-type
                                      boolean :member-name
                                      "ImageBuilderSupported")
                                     (image-builder-name :target-type string
                                      :member-name "ImageBuilderName")
                                     (platform :target-type platform-type
                                      :member-name "Platform")
                                     (description :target-type string
                                      :member-name "Description")
                                     (state-change-reason :target-type
                                      image-state-change-reason :member-name
                                      "StateChangeReason")
                                     (applications :target-type applications
                                      :member-name "Applications")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (public-base-image-released-date
                                      :target-type timestamp :member-name
                                      "PublicBaseImageReleasedDate")
                                     (appstream-agent-version :target-type
                                      appstream-agent-version :member-name
                                      "AppstreamAgentVersion")
                                     (image-permissions :target-type
                                      image-permissions :member-name
                                      "ImagePermissions")
                                     (image-errors :target-type resource-errors
                                      :member-name "ImageErrors")
                                     (latest-appstream-agent-version
                                      :target-type
                                      latest-appstream-agent-version
                                      :member-name
                                      "LatestAppstreamAgentVersion")
                                     (supported-instance-families :target-type
                                      string-list :member-name
                                      "SupportedInstanceFamilies")
                                     (dynamic-app-providers-enabled
                                      :target-type
                                      dynamic-app-providers-enabled
                                      :member-name
                                      "DynamicAppProvidersEnabled")
                                     (image-shared-with-others :target-type
                                      image-shared-with-others :member-name
                                      "ImageSharedWithOthers"))
                                    (:shape-name "Image"))

(smithy/sdk/shapes:define-structure image-builder common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (arn :target-type arn :member-name "Arn")
                                     (image-arn :target-type arn :member-name
                                      "ImageArn")
                                     (description :target-type string
                                      :member-name "Description")
                                     (display-name :target-type string
                                      :member-name "DisplayName")
                                     (vpc-config :target-type vpc-config
                                      :member-name "VpcConfig")
                                     (instance-type :target-type string
                                      :member-name "InstanceType")
                                     (platform :target-type platform-type
                                      :member-name "Platform")
                                     (iam-role-arn :target-type arn
                                      :member-name "IamRoleArn")
                                     (state :target-type image-builder-state
                                      :member-name "State")
                                     (state-change-reason :target-type
                                      image-builder-state-change-reason
                                      :member-name "StateChangeReason")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (enable-default-internet-access
                                      :target-type boolean-object :member-name
                                      "EnableDefaultInternetAccess")
                                     (domain-join-info :target-type
                                      domain-join-info :member-name
                                      "DomainJoinInfo")
                                     (network-access-configuration :target-type
                                      network-access-configuration :member-name
                                      "NetworkAccessConfiguration")
                                     (image-builder-errors :target-type
                                      resource-errors :member-name
                                      "ImageBuilderErrors")
                                     (appstream-agent-version :target-type
                                      appstream-agent-version :member-name
                                      "AppstreamAgentVersion")
                                     (access-endpoints :target-type
                                      access-endpoint-list :member-name
                                      "AccessEndpoints")
                                     (latest-appstream-agent-version
                                      :target-type
                                      latest-appstream-agent-version
                                      :member-name
                                      "LatestAppstreamAgentVersion"))
                                    (:shape-name "ImageBuilder"))

(smithy/sdk/shapes:define-list image-builder-list :member image-builder)

(smithy/sdk/shapes:define-enum image-builder-state
    common-lisp:nil
  (:pending "PENDING")
  (:updating-agent "UPDATING_AGENT")
  (:running "RUNNING")
  (:stopping "STOPPING")
  (:stopped "STOPPED")
  (:rebooting "REBOOTING")
  (:snapshotting "SNAPSHOTTING")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:updating "UPDATING")
  (:pending-qualification "PENDING_QUALIFICATION"))

(smithy/sdk/shapes:define-structure image-builder-state-change-reason
                                    common-lisp:nil
                                    ((code :target-type
                                      image-builder-state-change-reason-code
                                      :member-name "Code")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name
                                     "ImageBuilderStateChangeReason"))

(smithy/sdk/shapes:define-enum image-builder-state-change-reason-code
    common-lisp:nil
  (:internal-error "INTERNAL_ERROR")
  (:image-unavailable "IMAGE_UNAVAILABLE"))

(smithy/sdk/shapes:define-list image-list :member image)

(smithy/sdk/shapes:define-structure image-permissions common-lisp:nil
                                    ((allow-fleet :target-type boolean-object
                                      :member-name "allowFleet")
                                     (allow-image-builder :target-type
                                      boolean-object :member-name
                                      "allowImageBuilder"))
                                    (:shape-name "ImagePermissions"))

(smithy/sdk/shapes:define-enum image-shared-with-others
    common-lisp:nil
  (:true "TRUE")
  (:false "FALSE"))

(smithy/sdk/shapes:define-enum image-state
    common-lisp:nil
  (:pending "PENDING")
  (:available "AVAILABLE")
  (:failed "FAILED")
  (:copying "COPYING")
  (:deleting "DELETING")
  (:creating "CREATING")
  (:importing "IMPORTING"))

(smithy/sdk/shapes:define-structure image-state-change-reason common-lisp:nil
                                    ((code :target-type
                                      image-state-change-reason-code
                                      :member-name "Code")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "ImageStateChangeReason"))

(smithy/sdk/shapes:define-enum image-state-change-reason-code
    common-lisp:nil
  (:internal-error "INTERNAL_ERROR")
  (:image-builder-not-available "IMAGE_BUILDER_NOT_AVAILABLE")
  (:image-copy-failure "IMAGE_COPY_FAILURE"))

(smithy/sdk/shapes:define-error incompatible-image-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "IncompatibleImageException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-account-status-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidAccountStatusException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-combination-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidParameterCombinationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-role-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRoleException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure last-report-generation-execution-error
                                    common-lisp:nil
                                    ((error-code :target-type
                                      usage-report-execution-error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name
                                     "LastReportGenerationExecutionError"))

(smithy/sdk/shapes:define-list last-report-generation-execution-errors :member
                               last-report-generation-execution-error)

(smithy/sdk/shapes:define-enum latest-appstream-agent-version
    common-lisp:nil
  (:true "TRUE")
  (:false "FALSE"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-associated-fleets-request common-lisp:nil
                                ((stack-name :target-type string :required
                                  common-lisp:t :member-name "StackName")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListAssociatedFleetsRequest"))

(smithy/sdk/shapes:define-output list-associated-fleets-result common-lisp:nil
                                 ((names :target-type string-list :member-name
                                   "Names")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListAssociatedFleetsResult"))

(smithy/sdk/shapes:define-input list-associated-stacks-request common-lisp:nil
                                ((fleet-name :target-type string :required
                                  common-lisp:t :member-name "FleetName")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListAssociatedStacksRequest"))

(smithy/sdk/shapes:define-output list-associated-stacks-result common-lisp:nil
                                 ((names :target-type string-list :member-name
                                   "Names")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListAssociatedStacksResult"))

(smithy/sdk/shapes:define-input list-entitled-applications-request
                                common-lisp:nil
                                ((stack-name :target-type name :required
                                  common-lisp:t :member-name "StackName")
                                 (entitlement-name :target-type name :required
                                  common-lisp:t :member-name "EntitlementName")
                                 (next-token :target-type string :member-name
                                  "NextToken")
                                 (max-results :target-type integer :member-name
                                  "MaxResults"))
                                (:shape-name "ListEntitledApplicationsRequest"))

(smithy/sdk/shapes:define-output list-entitled-applications-result
                                 common-lisp:nil
                                 ((entitled-applications :target-type
                                   entitled-application-list :member-name
                                   "EntitledApplications")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListEntitledApplicationsResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum message-action
    common-lisp:nil
  (:suppress "SUPPRESS")
  (:resend "RESEND"))

(smithy/sdk/shapes:define-map metadata :key string :value string)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-access-configuration
                                    common-lisp:nil
                                    ((eni-private-ip-address :target-type
                                      string :member-name
                                      "EniPrivateIpAddress")
                                     (eni-id :target-type string :member-name
                                      "EniId"))
                                    (:shape-name "NetworkAccessConfiguration"))

(smithy/sdk/shapes:define-error operation-not-permitted-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "OperationNotPermittedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type organizational-unit-distinguished-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list organizational-unit-distinguished-names-list
                               :member organizational-unit-distinguished-name)

(smithy/sdk/shapes:define-enum packaging-type
    common-lisp:nil
  (:custom "CUSTOM")
  (:appstream2 "APPSTREAM2"))

(smithy/sdk/shapes:define-enum permission
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum platform-type
    common-lisp:nil
  (:windows "WINDOWS")
  (:windows-server-2016 "WINDOWS_SERVER_2016")
  (:windows-server-2019 "WINDOWS_SERVER_2019")
  (:windows-server-2022 "WINDOWS_SERVER_2022")
  (:amazon-linux2 "AMAZON_LINUX2")
  (:rhel8 "RHEL8")
  (:rocky-linux8 "ROCKY_LINUX8"))

(smithy/sdk/shapes:define-list platforms :member platform-type)

(smithy/sdk/shapes:define-enum preferred-protocol
    common-lisp:nil
  (:tcp "TCP")
  (:udp "UDP"))

(smithy/sdk/shapes:define-type redirect-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error request-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "RequestLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure resource-error common-lisp:nil
                                    ((error-code :target-type fleet-error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage")
                                     (error-timestamp :target-type timestamp
                                      :member-name "ErrorTimestamp"))
                                    (:shape-name "ResourceError"))

(smithy/sdk/shapes:define-list resource-errors :member resource-error)

(smithy/sdk/shapes:define-type resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-available-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotAvailableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((s3bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "S3Bucket")
                                     (s3key :target-type s3key :member-name
                                      "S3Key"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-structure script-details common-lisp:nil
                                    ((script-s3location :target-type s3location
                                      :required common-lisp:t :member-name
                                      "ScriptS3Location")
                                     (executable-path :target-type string
                                      :required common-lisp:t :member-name
                                      "ExecutablePath")
                                     (executable-parameters :target-type string
                                      :member-name "ExecutableParameters")
                                     (timeout-in-seconds :target-type integer
                                      :required common-lisp:t :member-name
                                      "TimeoutInSeconds"))
                                    (:shape-name "ScriptDetails"))

(smithy/sdk/shapes:define-list security-group-id-list :member string)

(smithy/sdk/shapes:define-structure service-account-credentials common-lisp:nil
                                    ((account-name :target-type account-name
                                      :required common-lisp:t :member-name
                                      "AccountName")
                                     (account-password :target-type
                                      account-password :required common-lisp:t
                                      :member-name "AccountPassword"))
                                    (:shape-name "ServiceAccountCredentials"))

(smithy/sdk/shapes:define-structure session common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (user-id :target-type user-id :required
                                      common-lisp:t :member-name "UserId")
                                     (stack-name :target-type string :required
                                      common-lisp:t :member-name "StackName")
                                     (fleet-name :target-type string :required
                                      common-lisp:t :member-name "FleetName")
                                     (state :target-type session-state
                                      :required common-lisp:t :member-name
                                      "State")
                                     (connection-state :target-type
                                      session-connection-state :member-name
                                      "ConnectionState")
                                     (start-time :target-type timestamp
                                      :member-name "StartTime")
                                     (max-expiration-time :target-type
                                      timestamp :member-name
                                      "MaxExpirationTime")
                                     (authentication-type :target-type
                                      authentication-type :member-name
                                      "AuthenticationType")
                                     (network-access-configuration :target-type
                                      network-access-configuration :member-name
                                      "NetworkAccessConfiguration")
                                     (instance-id :target-type string
                                      :member-name "InstanceId"))
                                    (:shape-name "Session"))

(smithy/sdk/shapes:define-enum session-connection-state
    common-lisp:nil
  (:connected "CONNECTED")
  (:not-connected "NOT_CONNECTED"))

(smithy/sdk/shapes:define-list session-list :member session)

(smithy/sdk/shapes:define-enum session-state
    common-lisp:nil
  (:active "ACTIVE")
  (:pending "PENDING")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-type settings-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure shared-image-permissions common-lisp:nil
                                    ((shared-account-id :target-type
                                      aws-account-id :required common-lisp:t
                                      :member-name "sharedAccountId")
                                     (image-permissions :target-type
                                      image-permissions :required common-lisp:t
                                      :member-name "imagePermissions"))
                                    (:shape-name "SharedImagePermissions"))

(smithy/sdk/shapes:define-list shared-image-permissions-list :member
                               shared-image-permissions)

(smithy/sdk/shapes:define-structure stack common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type string
                                      :member-name "Description")
                                     (display-name :target-type string
                                      :member-name "DisplayName")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (storage-connectors :target-type
                                      storage-connector-list :member-name
                                      "StorageConnectors")
                                     (redirect-url :target-type redirect-url
                                      :member-name "RedirectURL")
                                     (feedback-url :target-type feedback-url
                                      :member-name "FeedbackURL")
                                     (stack-errors :target-type stack-errors
                                      :member-name "StackErrors")
                                     (user-settings :target-type
                                      user-setting-list :member-name
                                      "UserSettings")
                                     (application-settings :target-type
                                      application-settings-response
                                      :member-name "ApplicationSettings")
                                     (access-endpoints :target-type
                                      access-endpoint-list :member-name
                                      "AccessEndpoints")
                                     (embed-host-domains :target-type
                                      embed-host-domains :member-name
                                      "EmbedHostDomains")
                                     (streaming-experience-settings
                                      :target-type
                                      streaming-experience-settings
                                      :member-name
                                      "StreamingExperienceSettings"))
                                    (:shape-name "Stack"))

(smithy/sdk/shapes:define-enum stack-attribute
    common-lisp:nil
  (:storage-connectors "STORAGE_CONNECTORS")
  (:storage-connector-homefolders "STORAGE_CONNECTOR_HOMEFOLDERS")
  (:storage-connector-google-drive "STORAGE_CONNECTOR_GOOGLE_DRIVE")
  (:storage-connector-one-drive "STORAGE_CONNECTOR_ONE_DRIVE")
  (:redirect-url "REDIRECT_URL")
  (:feedback-url "FEEDBACK_URL")
  (:theme-name "THEME_NAME")
  (:user-settings "USER_SETTINGS")
  (:embed-host-domains "EMBED_HOST_DOMAINS")
  (:iam-role-arn "IAM_ROLE_ARN")
  (:access-endpoints "ACCESS_ENDPOINTS")
  (:streaming-experience-settings "STREAMING_EXPERIENCE_SETTINGS"))

(smithy/sdk/shapes:define-list stack-attributes :member stack-attribute)

(smithy/sdk/shapes:define-structure stack-error common-lisp:nil
                                    ((error-code :target-type stack-error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "StackError"))

(smithy/sdk/shapes:define-enum stack-error-code
    common-lisp:nil
  (:storage-connector-error "STORAGE_CONNECTOR_ERROR")
  (:internal-service-error "INTERNAL_SERVICE_ERROR"))

(smithy/sdk/shapes:define-list stack-errors :member stack-error)

(smithy/sdk/shapes:define-list stack-list :member stack)

(smithy/sdk/shapes:define-input start-app-block-builder-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "StartAppBlockBuilderRequest"))

(smithy/sdk/shapes:define-output start-app-block-builder-result common-lisp:nil
                                 ((app-block-builder :target-type
                                   app-block-builder :member-name
                                   "AppBlockBuilder"))
                                 (:shape-name "StartAppBlockBuilderResult"))

(smithy/sdk/shapes:define-input start-fleet-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "StartFleetRequest"))

(smithy/sdk/shapes:define-output start-fleet-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartFleetResult"))

(smithy/sdk/shapes:define-input start-image-builder-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (appstream-agent-version :target-type
                                  appstream-agent-version :member-name
                                  "AppstreamAgentVersion"))
                                (:shape-name "StartImageBuilderRequest"))

(smithy/sdk/shapes:define-output start-image-builder-result common-lisp:nil
                                 ((image-builder :target-type image-builder
                                   :member-name "ImageBuilder"))
                                 (:shape-name "StartImageBuilderResult"))

(smithy/sdk/shapes:define-input stop-app-block-builder-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "StopAppBlockBuilderRequest"))

(smithy/sdk/shapes:define-output stop-app-block-builder-result common-lisp:nil
                                 ((app-block-builder :target-type
                                   app-block-builder :member-name
                                   "AppBlockBuilder"))
                                 (:shape-name "StopAppBlockBuilderResult"))

(smithy/sdk/shapes:define-input stop-fleet-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "StopFleetRequest"))

(smithy/sdk/shapes:define-output stop-fleet-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopFleetResult"))

(smithy/sdk/shapes:define-input stop-image-builder-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name"))
                                (:shape-name "StopImageBuilderRequest"))

(smithy/sdk/shapes:define-output stop-image-builder-result common-lisp:nil
                                 ((image-builder :target-type image-builder
                                   :member-name "ImageBuilder"))
                                 (:shape-name "StopImageBuilderResult"))

(smithy/sdk/shapes:define-structure storage-connector common-lisp:nil
                                    ((connector-type :target-type
                                      storage-connector-type :required
                                      common-lisp:t :member-name
                                      "ConnectorType")
                                     (resource-identifier :target-type
                                      resource-identifier :member-name
                                      "ResourceIdentifier")
                                     (domains :target-type domain-list
                                      :member-name "Domains")
                                     (domains-require-admin-consent
                                      :target-type domain-list :member-name
                                      "DomainsRequireAdminConsent"))
                                    (:shape-name "StorageConnector"))

(smithy/sdk/shapes:define-list storage-connector-list :member storage-connector)

(smithy/sdk/shapes:define-enum storage-connector-type
    common-lisp:nil
  (:homefolders "HOMEFOLDERS")
  (:google-drive "GOOGLE_DRIVE")
  (:one-drive "ONE_DRIVE"))

(smithy/sdk/shapes:define-enum stream-view
    common-lisp:nil
  (:app "APP")
  (:desktop "DESKTOP"))

(smithy/sdk/shapes:define-structure streaming-experience-settings
                                    common-lisp:nil
                                    ((preferred-protocol :target-type
                                      preferred-protocol :member-name
                                      "PreferredProtocol"))
                                    (:shape-name "StreamingExperienceSettings"))

(smithy/sdk/shapes:define-type streaming-url-user-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-list subnet-id-list :member string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure theme common-lisp:nil
                                    ((stack-name :target-type name :member-name
                                      "StackName")
                                     (state :target-type theme-state
                                      :member-name "State")
                                     (theme-title-text :target-type
                                      theme-title-text :member-name
                                      "ThemeTitleText")
                                     (theme-styling :target-type theme-styling
                                      :member-name "ThemeStyling")
                                     (theme-footer-links :target-type
                                      theme-footer-links :member-name
                                      "ThemeFooterLinks")
                                     (theme-organization-logo-url :target-type
                                      string :member-name
                                      "ThemeOrganizationLogoURL")
                                     (theme-favicon-url :target-type string
                                      :member-name "ThemeFaviconURL")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "Theme"))

(smithy/sdk/shapes:define-enum theme-attribute
    common-lisp:nil
  (:footer-links "FOOTER_LINKS"))

(smithy/sdk/shapes:define-list theme-attributes :member theme-attribute)

(smithy/sdk/shapes:define-structure theme-footer-link common-lisp:nil
                                    ((display-name :target-type
                                      theme-footer-link-display-name
                                      :member-name "DisplayName")
                                     (footer-link-url :target-type
                                      theme-footer-link-url :member-name
                                      "FooterLinkURL"))
                                    (:shape-name "ThemeFooterLink"))

(smithy/sdk/shapes:define-type theme-footer-link-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type theme-footer-link-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list theme-footer-links :member theme-footer-link)

(smithy/sdk/shapes:define-enum theme-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum theme-styling
    common-lisp:nil
  (:light-blue "LIGHT_BLUE")
  (:blue "BLUE")
  (:pink "PINK")
  (:red "RED"))

(smithy/sdk/shapes:define-type theme-title-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-app-block-builder-request
                                common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (display-name :target-type display-name
                                  :member-name "DisplayName")
                                 (platform :target-type platform-type
                                  :member-name "Platform")
                                 (instance-type :target-type string
                                  :member-name "InstanceType")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (enable-default-internet-access :target-type
                                  boolean-object :member-name
                                  "EnableDefaultInternetAccess")
                                 (iam-role-arn :target-type arn :member-name
                                  "IamRoleArn")
                                 (access-endpoints :target-type
                                  access-endpoint-list :member-name
                                  "AccessEndpoints")
                                 (attributes-to-delete :target-type
                                  app-block-builder-attributes :member-name
                                  "AttributesToDelete"))
                                (:shape-name "UpdateAppBlockBuilderRequest"))

(smithy/sdk/shapes:define-output update-app-block-builder-result
                                 common-lisp:nil
                                 ((app-block-builder :target-type
                                   app-block-builder :member-name
                                   "AppBlockBuilder"))
                                 (:shape-name "UpdateAppBlockBuilderResult"))

(smithy/sdk/shapes:define-input update-application-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (display-name :target-type display-name
                                  :member-name "DisplayName")
                                 (description :target-type description
                                  :member-name "Description")
                                 (icon-s3location :target-type s3location
                                  :member-name "IconS3Location")
                                 (launch-path :target-type string :member-name
                                  "LaunchPath")
                                 (working-directory :target-type string
                                  :member-name "WorkingDirectory")
                                 (launch-parameters :target-type string
                                  :member-name "LaunchParameters")
                                 (app-block-arn :target-type arn :member-name
                                  "AppBlockArn")
                                 (attributes-to-delete :target-type
                                  application-attributes :member-name
                                  "AttributesToDelete"))
                                (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-output update-application-result common-lisp:nil
                                 ((application :target-type application
                                   :member-name "Application"))
                                 (:shape-name "UpdateApplicationResult"))

(smithy/sdk/shapes:define-input update-directory-config-request common-lisp:nil
                                ((directory-name :target-type directory-name
                                  :required common-lisp:t :member-name
                                  "DirectoryName")
                                 (organizational-unit-distinguished-names
                                  :target-type
                                  organizational-unit-distinguished-names-list
                                  :member-name
                                  "OrganizationalUnitDistinguishedNames")
                                 (service-account-credentials :target-type
                                  service-account-credentials :member-name
                                  "ServiceAccountCredentials")
                                 (certificate-based-auth-properties
                                  :target-type
                                  certificate-based-auth-properties
                                  :member-name
                                  "CertificateBasedAuthProperties"))
                                (:shape-name "UpdateDirectoryConfigRequest"))

(smithy/sdk/shapes:define-output update-directory-config-result common-lisp:nil
                                 ((directory-config :target-type
                                   directory-config :member-name
                                   "DirectoryConfig"))
                                 (:shape-name "UpdateDirectoryConfigResult"))

(smithy/sdk/shapes:define-input update-entitlement-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (stack-name :target-type name :required
                                  common-lisp:t :member-name "StackName")
                                 (description :target-type description
                                  :member-name "Description")
                                 (app-visibility :target-type app-visibility
                                  :member-name "AppVisibility")
                                 (attributes :target-type
                                  entitlement-attribute-list :member-name
                                  "Attributes"))
                                (:shape-name "UpdateEntitlementRequest"))

(smithy/sdk/shapes:define-output update-entitlement-result common-lisp:nil
                                 ((entitlement :target-type entitlement
                                   :member-name "Entitlement"))
                                 (:shape-name "UpdateEntitlementResult"))

(smithy/sdk/shapes:define-input update-fleet-request common-lisp:nil
                                ((image-name :target-type string :member-name
                                  "ImageName")
                                 (image-arn :target-type arn :member-name
                                  "ImageArn")
                                 (name :target-type name :member-name "Name")
                                 (instance-type :target-type string
                                  :member-name "InstanceType")
                                 (compute-capacity :target-type
                                  compute-capacity :member-name
                                  "ComputeCapacity")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (max-user-duration-in-seconds :target-type
                                  integer :member-name
                                  "MaxUserDurationInSeconds")
                                 (disconnect-timeout-in-seconds :target-type
                                  integer :member-name
                                  "DisconnectTimeoutInSeconds")
                                 (delete-vpc-config :target-type boolean
                                  :member-name "DeleteVpcConfig")
                                 (description :target-type description
                                  :member-name "Description")
                                 (display-name :target-type display-name
                                  :member-name "DisplayName")
                                 (enable-default-internet-access :target-type
                                  boolean-object :member-name
                                  "EnableDefaultInternetAccess")
                                 (domain-join-info :target-type
                                  domain-join-info :member-name
                                  "DomainJoinInfo")
                                 (idle-disconnect-timeout-in-seconds
                                  :target-type integer :member-name
                                  "IdleDisconnectTimeoutInSeconds")
                                 (attributes-to-delete :target-type
                                  fleet-attributes :member-name
                                  "AttributesToDelete")
                                 (iam-role-arn :target-type arn :member-name
                                  "IamRoleArn")
                                 (stream-view :target-type stream-view
                                  :member-name "StreamView")
                                 (platform :target-type platform-type
                                  :member-name "Platform")
                                 (max-concurrent-sessions :target-type integer
                                  :member-name "MaxConcurrentSessions")
                                 (usb-device-filter-strings :target-type
                                  usb-device-filter-strings :member-name
                                  "UsbDeviceFilterStrings")
                                 (session-script-s3location :target-type
                                  s3location :member-name
                                  "SessionScriptS3Location")
                                 (max-sessions-per-instance :target-type
                                  integer :member-name
                                  "MaxSessionsPerInstance"))
                                (:shape-name "UpdateFleetRequest"))

(smithy/sdk/shapes:define-output update-fleet-result common-lisp:nil
                                 ((fleet :target-type fleet :member-name
                                   "Fleet"))
                                 (:shape-name "UpdateFleetResult"))

(smithy/sdk/shapes:define-input update-image-permissions-request
                                common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (shared-account-id :target-type aws-account-id
                                  :required common-lisp:t :member-name
                                  "SharedAccountId")
                                 (image-permissions :target-type
                                  image-permissions :required common-lisp:t
                                  :member-name "ImagePermissions"))
                                (:shape-name "UpdateImagePermissionsRequest"))

(smithy/sdk/shapes:define-output update-image-permissions-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateImagePermissionsResult"))

(smithy/sdk/shapes:define-input update-stack-request common-lisp:nil
                                ((display-name :target-type display-name
                                  :member-name "DisplayName")
                                 (description :target-type description
                                  :member-name "Description")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (storage-connectors :target-type
                                  storage-connector-list :member-name
                                  "StorageConnectors")
                                 (delete-storage-connectors :target-type
                                  boolean :member-name
                                  "DeleteStorageConnectors")
                                 (redirect-url :target-type redirect-url
                                  :member-name "RedirectURL")
                                 (feedback-url :target-type feedback-url
                                  :member-name "FeedbackURL")
                                 (attributes-to-delete :target-type
                                  stack-attributes :member-name
                                  "AttributesToDelete")
                                 (user-settings :target-type user-setting-list
                                  :member-name "UserSettings")
                                 (application-settings :target-type
                                  application-settings :member-name
                                  "ApplicationSettings")
                                 (access-endpoints :target-type
                                  access-endpoint-list :member-name
                                  "AccessEndpoints")
                                 (embed-host-domains :target-type
                                  embed-host-domains :member-name
                                  "EmbedHostDomains")
                                 (streaming-experience-settings :target-type
                                  streaming-experience-settings :member-name
                                  "StreamingExperienceSettings"))
                                (:shape-name "UpdateStackRequest"))

(smithy/sdk/shapes:define-output update-stack-result common-lisp:nil
                                 ((stack :target-type stack :member-name
                                   "Stack"))
                                 (:shape-name "UpdateStackResult"))

(smithy/sdk/shapes:define-input update-theme-for-stack-request common-lisp:nil
                                ((stack-name :target-type name :required
                                  common-lisp:t :member-name "StackName")
                                 (footer-links :target-type theme-footer-links
                                  :member-name "FooterLinks")
                                 (title-text :target-type theme-title-text
                                  :member-name "TitleText")
                                 (theme-styling :target-type theme-styling
                                  :member-name "ThemeStyling")
                                 (organization-logo-s3location :target-type
                                  s3location :member-name
                                  "OrganizationLogoS3Location")
                                 (favicon-s3location :target-type s3location
                                  :member-name "FaviconS3Location")
                                 (state :target-type theme-state :member-name
                                  "State")
                                 (attributes-to-delete :target-type
                                  theme-attributes :member-name
                                  "AttributesToDelete"))
                                (:shape-name "UpdateThemeForStackRequest"))

(smithy/sdk/shapes:define-output update-theme-for-stack-result common-lisp:nil
                                 ((theme :target-type theme :member-name
                                   "Theme"))
                                 (:shape-name "UpdateThemeForStackResult"))

(smithy/sdk/shapes:define-enum usage-report-execution-error-code
    common-lisp:nil
  (:resource-not-found "RESOURCE_NOT_FOUND")
  (:access-denied "ACCESS_DENIED")
  (:internal-service-error "INTERNAL_SERVICE_ERROR"))

(smithy/sdk/shapes:define-enum usage-report-schedule
    common-lisp:nil
  (:daily "DAILY"))

(smithy/sdk/shapes:define-structure usage-report-subscription common-lisp:nil
                                    ((s3bucket-name :target-type string
                                      :member-name "S3BucketName")
                                     (schedule :target-type
                                      usage-report-schedule :member-name
                                      "Schedule")
                                     (last-generated-report-date :target-type
                                      timestamp :member-name
                                      "LastGeneratedReportDate")
                                     (subscription-errors :target-type
                                      last-report-generation-execution-errors
                                      :member-name "SubscriptionErrors"))
                                    (:shape-name "UsageReportSubscription"))

(smithy/sdk/shapes:define-list usage-report-subscription-list :member
                               usage-report-subscription)

(smithy/sdk/shapes:define-type usb-device-filter-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list usb-device-filter-strings :member
                               usb-device-filter-string)

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (user-name :target-type username
                                      :member-name "UserName")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (status :target-type string :member-name
                                      "Status")
                                     (first-name :target-type
                                      user-attribute-value :member-name
                                      "FirstName")
                                     (last-name :target-type
                                      user-attribute-value :member-name
                                      "LastName")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (authentication-type :target-type
                                      authentication-type :required
                                      common-lisp:t :member-name
                                      "AuthenticationType"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-type user-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list user-list :member user)

(smithy/sdk/shapes:define-structure user-setting common-lisp:nil
                                    ((action :target-type action :required
                                      common-lisp:t :member-name "Action")
                                     (permission :target-type permission
                                      :required common-lisp:t :member-name
                                      "Permission")
                                     (maximum-length :target-type integer
                                      :member-name "MaximumLength"))
                                    (:shape-name "UserSetting"))

(smithy/sdk/shapes:define-list user-setting-list :member user-setting)

(smithy/sdk/shapes:define-structure user-stack-association common-lisp:nil
                                    ((stack-name :target-type string :required
                                      common-lisp:t :member-name "StackName")
                                     (user-name :target-type username :required
                                      common-lisp:t :member-name "UserName")
                                     (authentication-type :target-type
                                      authentication-type :required
                                      common-lisp:t :member-name
                                      "AuthenticationType")
                                     (send-email-notification :target-type
                                      boolean :member-name
                                      "SendEmailNotification"))
                                    (:shape-name "UserStackAssociation"))

(smithy/sdk/shapes:define-structure user-stack-association-error
                                    common-lisp:nil
                                    ((user-stack-association :target-type
                                      user-stack-association :member-name
                                      "UserStackAssociation")
                                     (error-code :target-type
                                      user-stack-association-error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "UserStackAssociationError"))

(smithy/sdk/shapes:define-enum user-stack-association-error-code
    common-lisp:nil
  (:stack-not-found "STACK_NOT_FOUND")
  (:user-name-not-found "USER_NAME_NOT_FOUND")
  (:directory-not-found "DIRECTORY_NOT_FOUND")
  (:internal-error "INTERNAL_ERROR"))

(smithy/sdk/shapes:define-list user-stack-association-error-list :member
                               user-stack-association-error)

(smithy/sdk/shapes:define-list user-stack-association-list :member
                               user-stack-association)

(smithy/sdk/shapes:define-type username smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum visibility-type
    common-lisp:nil
  (:public "PUBLIC")
  (:private "PRIVATE")
  (:shared "SHARED"))

(smithy/sdk/shapes:define-structure vpc-config common-lisp:nil
                                    ((subnet-ids :target-type subnet-id-list
                                      :member-name "SubnetIds")
                                     (security-group-ids :target-type
                                      security-group-id-list :member-name
                                      "SecurityGroupIds"))
                                    (:shape-name "VpcConfig"))

(smithy/sdk/operation:define-operation associate-app-block-builder-app-block
                                       :shape-name
                                       "AssociateAppBlockBuilderAppBlock"
                                       :input
                                       associate-app-block-builder-app-block-request
                                       :output
                                       associate-app-block-builder-app-block-result
                                       :errors
                                       (concurrent-modification-exception
                                        invalid-parameter-combination-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation associate-application-fleet :shape-name
                                       "AssociateApplicationFleet" :input
                                       associate-application-fleet-request
                                       :output
                                       associate-application-fleet-result
                                       :errors
                                       (concurrent-modification-exception
                                        invalid-parameter-combination-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation associate-application-to-entitlement
                                       :shape-name
                                       "AssociateApplicationToEntitlement"
                                       :input
                                       associate-application-to-entitlement-request
                                       :output
                                       associate-application-to-entitlement-result
                                       :errors
                                       (entitlement-not-found-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation associate-fleet :shape-name
                                       "AssociateFleet" :input
                                       associate-fleet-request :output
                                       associate-fleet-result :errors
                                       (concurrent-modification-exception
                                        incompatible-image-exception
                                        invalid-account-status-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation batch-associate-user-stack :shape-name
                                       "BatchAssociateUserStack" :input
                                       batch-associate-user-stack-request
                                       :output
                                       batch-associate-user-stack-result
                                       :errors
                                       (invalid-parameter-combination-exception
                                        operation-not-permitted-exception))

(smithy/sdk/operation:define-operation batch-disassociate-user-stack
                                       :shape-name "BatchDisassociateUserStack"
                                       :input
                                       batch-disassociate-user-stack-request
                                       :output
                                       batch-disassociate-user-stack-result
                                       :errors
                                       (invalid-parameter-combination-exception
                                        operation-not-permitted-exception))

(smithy/sdk/operation:define-operation copy-image :shape-name "CopyImage"
                                       :input copy-image-request :output
                                       copy-image-response :errors
                                       (incompatible-image-exception
                                        invalid-account-status-exception
                                        limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-available-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-app-block :shape-name
                                       "CreateAppBlock" :input
                                       create-app-block-request :output
                                       create-app-block-result :errors
                                       (concurrent-modification-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        resource-already-exists-exception))

(smithy/sdk/operation:define-operation create-app-block-builder :shape-name
                                       "CreateAppBlockBuilder" :input
                                       create-app-block-builder-request :output
                                       create-app-block-builder-result :errors
                                       (concurrent-modification-exception
                                        invalid-account-status-exception
                                        invalid-parameter-combination-exception
                                        invalid-role-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        request-limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-available-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-app-block-builder-streaming-url
                                       :shape-name
                                       "CreateAppBlockBuilderStreamingURL"
                                       :input
                                       create-app-block-builder-streaming-urlrequest
                                       :output
                                       create-app-block-builder-streaming-urlresult
                                       :errors
                                       (operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       create-application-result :errors
                                       (concurrent-modification-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-directory-config :shape-name
                                       "CreateDirectoryConfig" :input
                                       create-directory-config-request :output
                                       create-directory-config-result :errors
                                       (invalid-account-status-exception
                                        invalid-role-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-entitlement :shape-name
                                       "CreateEntitlement" :input
                                       create-entitlement-request :output
                                       create-entitlement-result :errors
                                       (entitlement-already-exists-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-fleet :shape-name "CreateFleet"
                                       :input create-fleet-request :output
                                       create-fleet-result :errors
                                       (concurrent-modification-exception
                                        incompatible-image-exception
                                        invalid-account-status-exception
                                        invalid-parameter-combination-exception
                                        invalid-role-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        request-limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-available-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-image-builder :shape-name
                                       "CreateImageBuilder" :input
                                       create-image-builder-request :output
                                       create-image-builder-result :errors
                                       (concurrent-modification-exception
                                        incompatible-image-exception
                                        invalid-account-status-exception
                                        invalid-parameter-combination-exception
                                        invalid-role-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        request-limit-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-available-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-image-builder-streaming-url
                                       :shape-name
                                       "CreateImageBuilderStreamingURL" :input
                                       create-image-builder-streaming-urlrequest
                                       :output
                                       create-image-builder-streaming-urlresult
                                       :errors
                                       (operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-stack :shape-name "CreateStack"
                                       :input create-stack-request :output
                                       create-stack-result :errors
                                       (concurrent-modification-exception
                                        invalid-account-status-exception
                                        invalid-parameter-combination-exception
                                        invalid-role-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-streaming-url :shape-name
                                       "CreateStreamingURL" :input
                                       create-streaming-urlrequest :output
                                       create-streaming-urlresult :errors
                                       (invalid-parameter-combination-exception
                                        operation-not-permitted-exception
                                        resource-not-available-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-theme-for-stack :shape-name
                                       "CreateThemeForStack" :input
                                       create-theme-for-stack-request :output
                                       create-theme-for-stack-result :errors
                                       (concurrent-modification-exception
                                        invalid-account-status-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-updated-image :shape-name
                                       "CreateUpdatedImage" :input
                                       create-updated-image-request :output
                                       create-updated-image-result :errors
                                       (concurrent-modification-exception
                                        incompatible-image-exception
                                        invalid-account-status-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-usage-report-subscription
                                       :shape-name
                                       "CreateUsageReportSubscription" :input
                                       create-usage-report-subscription-request
                                       :output
                                       create-usage-report-subscription-result
                                       :errors
                                       (invalid-account-status-exception
                                        invalid-role-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-user :shape-name "CreateUser"
                                       :input create-user-request :output
                                       create-user-result :errors
                                       (invalid-account-status-exception
                                        invalid-parameter-combination-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        resource-already-exists-exception))

(smithy/sdk/operation:define-operation delete-app-block :shape-name
                                       "DeleteAppBlock" :input
                                       delete-app-block-request :output
                                       delete-app-block-result :errors
                                       (concurrent-modification-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-app-block-builder :shape-name
                                       "DeleteAppBlockBuilder" :input
                                       delete-app-block-builder-request :output
                                       delete-app-block-builder-result :errors
                                       (concurrent-modification-exception
                                        operation-not-permitted-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       delete-application-result :errors
                                       (concurrent-modification-exception
                                        operation-not-permitted-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-directory-config :shape-name
                                       "DeleteDirectoryConfig" :input
                                       delete-directory-config-request :output
                                       delete-directory-config-result :errors
                                       (resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-entitlement :shape-name
                                       "DeleteEntitlement" :input
                                       delete-entitlement-request :output
                                       delete-entitlement-result :errors
                                       (concurrent-modification-exception
                                        entitlement-not-found-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-fleet :shape-name "DeleteFleet"
                                       :input delete-fleet-request :output
                                       delete-fleet-result :errors
                                       (concurrent-modification-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-image :shape-name "DeleteImage"
                                       :input delete-image-request :output
                                       delete-image-result :errors
                                       (concurrent-modification-exception
                                        operation-not-permitted-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-image-builder :shape-name
                                       "DeleteImageBuilder" :input
                                       delete-image-builder-request :output
                                       delete-image-builder-result :errors
                                       (concurrent-modification-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-image-permissions :shape-name
                                       "DeleteImagePermissions" :input
                                       delete-image-permissions-request :output
                                       delete-image-permissions-result :errors
                                       (resource-not-available-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-stack :shape-name "DeleteStack"
                                       :input delete-stack-request :output
                                       delete-stack-result :errors
                                       (concurrent-modification-exception
                                        operation-not-permitted-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-theme-for-stack :shape-name
                                       "DeleteThemeForStack" :input
                                       delete-theme-for-stack-request :output
                                       delete-theme-for-stack-result :errors
                                       (concurrent-modification-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-usage-report-subscription
                                       :shape-name
                                       "DeleteUsageReportSubscription" :input
                                       delete-usage-report-subscription-request
                                       :output
                                       delete-usage-report-subscription-result
                                       :errors
                                       (invalid-account-status-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-user :shape-name "DeleteUser"
                                       :input delete-user-request :output
                                       delete-user-result :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation
 describe-app-block-builder-app-block-associations :shape-name
 "DescribeAppBlockBuilderAppBlockAssociations" :input
 describe-app-block-builder-app-block-associations-request :output
 describe-app-block-builder-app-block-associations-result :errors
 (invalid-parameter-combination-exception operation-not-permitted-exception))

(smithy/sdk/operation:define-operation describe-app-block-builders :shape-name
                                       "DescribeAppBlockBuilders" :input
                                       describe-app-block-builders-request
                                       :output
                                       describe-app-block-builders-result
                                       :errors
                                       (operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-app-blocks :shape-name
                                       "DescribeAppBlocks" :input
                                       describe-app-blocks-request :output
                                       describe-app-blocks-result :errors
                                       (operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-application-fleet-associations
                                       :shape-name
                                       "DescribeApplicationFleetAssociations"
                                       :input
                                       describe-application-fleet-associations-request
                                       :output
                                       describe-application-fleet-associations-result
                                       :errors
                                       (invalid-parameter-combination-exception
                                        operation-not-permitted-exception))

(smithy/sdk/operation:define-operation describe-applications :shape-name
                                       "DescribeApplications" :input
                                       describe-applications-request :output
                                       describe-applications-result :errors
                                       (operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-directory-configs :shape-name
                                       "DescribeDirectoryConfigs" :input
                                       describe-directory-configs-request
                                       :output
                                       describe-directory-configs-result
                                       :errors (resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-entitlements :shape-name
                                       "DescribeEntitlements" :input
                                       describe-entitlements-request :output
                                       describe-entitlements-result :errors
                                       (entitlement-not-found-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-fleets :shape-name
                                       "DescribeFleets" :input
                                       describe-fleets-request :output
                                       describe-fleets-result :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-image-builders :shape-name
                                       "DescribeImageBuilders" :input
                                       describe-image-builders-request :output
                                       describe-image-builders-result :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-image-permissions :shape-name
                                       "DescribeImagePermissions" :input
                                       describe-image-permissions-request
                                       :output
                                       describe-image-permissions-result
                                       :errors (resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-images :shape-name
                                       "DescribeImages" :input
                                       describe-images-request :output
                                       describe-images-result :errors
                                       (invalid-parameter-combination-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-sessions :shape-name
                                       "DescribeSessions" :input
                                       describe-sessions-request :output
                                       describe-sessions-result :errors
                                       (invalid-parameter-combination-exception))

(smithy/sdk/operation:define-operation describe-stacks :shape-name
                                       "DescribeStacks" :input
                                       describe-stacks-request :output
                                       describe-stacks-result :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-theme-for-stack :shape-name
                                       "DescribeThemeForStack" :input
                                       describe-theme-for-stack-request :output
                                       describe-theme-for-stack-result :errors
                                       (operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-usage-report-subscriptions
                                       :shape-name
                                       "DescribeUsageReportSubscriptions"
                                       :input
                                       describe-usage-report-subscriptions-request
                                       :output
                                       describe-usage-report-subscriptions-result
                                       :errors
                                       (invalid-account-status-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-user-stack-associations
                                       :shape-name
                                       "DescribeUserStackAssociations" :input
                                       describe-user-stack-associations-request
                                       :output
                                       describe-user-stack-associations-result
                                       :errors
                                       (invalid-parameter-combination-exception
                                        operation-not-permitted-exception))

(smithy/sdk/operation:define-operation describe-users :shape-name
                                       "DescribeUsers" :input
                                       describe-users-request :output
                                       describe-users-result :errors
                                       (invalid-parameter-combination-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disable-user :shape-name "DisableUser"
                                       :input disable-user-request :output
                                       disable-user-result :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-app-block-builder-app-block
                                       :shape-name
                                       "DisassociateAppBlockBuilderAppBlock"
                                       :input
                                       disassociate-app-block-builder-app-block-request
                                       :output
                                       disassociate-app-block-builder-app-block-result
                                       :errors
                                       (concurrent-modification-exception
                                        invalid-parameter-combination-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-application-fleet
                                       :shape-name
                                       "DisassociateApplicationFleet" :input
                                       disassociate-application-fleet-request
                                       :output
                                       disassociate-application-fleet-result
                                       :errors
                                       (concurrent-modification-exception
                                        invalid-parameter-combination-exception
                                        operation-not-permitted-exception))

(smithy/sdk/operation:define-operation
 disassociate-application-from-entitlement :shape-name
 "DisassociateApplicationFromEntitlement" :input
 disassociate-application-from-entitlement-request :output
 disassociate-application-from-entitlement-result :errors
 (entitlement-not-found-exception operation-not-permitted-exception
  resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-fleet :shape-name
                                       "DisassociateFleet" :input
                                       disassociate-fleet-request :output
                                       disassociate-fleet-result :errors
                                       (concurrent-modification-exception
                                        operation-not-permitted-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation enable-user :shape-name "EnableUser"
                                       :input enable-user-request :output
                                       enable-user-result :errors
                                       (invalid-account-status-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation expire-session :shape-name
                                       "ExpireSession" :input
                                       expire-session-request :output
                                       expire-session-result :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-associated-fleets :shape-name
                                       "ListAssociatedFleets" :input
                                       list-associated-fleets-request :output
                                       list-associated-fleets-result :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-associated-stacks :shape-name
                                       "ListAssociatedStacks" :input
                                       list-associated-stacks-request :output
                                       list-associated-stacks-result :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-entitled-applications :shape-name
                                       "ListEntitledApplications" :input
                                       list-entitled-applications-request
                                       :output
                                       list-entitled-applications-result
                                       :errors
                                       (entitlement-not-found-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation start-app-block-builder :shape-name
                                       "StartAppBlockBuilder" :input
                                       start-app-block-builder-request :output
                                       start-app-block-builder-result :errors
                                       (concurrent-modification-exception
                                        invalid-account-status-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        request-limit-exceeded-exception
                                        resource-not-available-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-fleet :shape-name "StartFleet"
                                       :input start-fleet-request :output
                                       start-fleet-result :errors
                                       (concurrent-modification-exception
                                        invalid-account-status-exception
                                        invalid-role-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        request-limit-exceeded-exception
                                        resource-not-available-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation start-image-builder :shape-name
                                       "StartImageBuilder" :input
                                       start-image-builder-request :output
                                       start-image-builder-result :errors
                                       (concurrent-modification-exception
                                        incompatible-image-exception
                                        invalid-account-status-exception
                                        resource-not-available-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-app-block-builder :shape-name
                                       "StopAppBlockBuilder" :input
                                       stop-app-block-builder-request :output
                                       stop-app-block-builder-result :errors
                                       (concurrent-modification-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-fleet :shape-name "StopFleet"
                                       :input stop-fleet-request :output
                                       stop-fleet-result :errors
                                       (concurrent-modification-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation stop-image-builder :shape-name
                                       "StopImageBuilder" :input
                                       stop-image-builder-request :output
                                       stop-image-builder-result :errors
                                       (concurrent-modification-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (invalid-account-status-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation update-app-block-builder :shape-name
                                       "UpdateAppBlockBuilder" :input
                                       update-app-block-builder-request :output
                                       update-app-block-builder-result :errors
                                       (concurrent-modification-exception
                                        invalid-account-status-exception
                                        invalid-parameter-combination-exception
                                        invalid-role-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        request-limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-available-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       update-application-result :errors
                                       (concurrent-modification-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-directory-config :shape-name
                                       "UpdateDirectoryConfig" :input
                                       update-directory-config-request :output
                                       update-directory-config-result :errors
                                       (concurrent-modification-exception
                                        incompatible-image-exception
                                        invalid-role-exception
                                        operation-not-permitted-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-entitlement :shape-name
                                       "UpdateEntitlement" :input
                                       update-entitlement-request :output
                                       update-entitlement-result :errors
                                       (concurrent-modification-exception
                                        entitlement-not-found-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-fleet :shape-name "UpdateFleet"
                                       :input update-fleet-request :output
                                       update-fleet-result :errors
                                       (concurrent-modification-exception
                                        incompatible-image-exception
                                        invalid-account-status-exception
                                        invalid-parameter-combination-exception
                                        invalid-role-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        request-limit-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-available-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-image-permissions :shape-name
                                       "UpdateImagePermissions" :input
                                       update-image-permissions-request :output
                                       update-image-permissions-result :errors
                                       (limit-exceeded-exception
                                        resource-not-available-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-stack :shape-name "UpdateStack"
                                       :input update-stack-request :output
                                       update-stack-result :errors
                                       (concurrent-modification-exception
                                        incompatible-image-exception
                                        invalid-account-status-exception
                                        invalid-parameter-combination-exception
                                        invalid-role-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-theme-for-stack :shape-name
                                       "UpdateThemeForStack" :input
                                       update-theme-for-stack-request :output
                                       update-theme-for-stack-result :errors
                                       (concurrent-modification-exception
                                        invalid-account-status-exception
                                        invalid-parameter-combination-exception
                                        limit-exceeded-exception
                                        operation-not-permitted-exception
                                        resource-not-found-exception))
