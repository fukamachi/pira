(uiop/package:define-package #:pira/support-app (:use)
                             (:export #:account-type
                              #:create-slack-channel-configuration
                              #:create-slack-channel-configuration-request
                              #:create-slack-channel-configuration-result
                              #:delete-account-alias
                              #:delete-account-alias-request
                              #:delete-account-alias-result
                              #:delete-slack-channel-configuration
                              #:delete-slack-channel-configuration-request
                              #:delete-slack-channel-configuration-result
                              #:delete-slack-workspace-configuration
                              #:delete-slack-workspace-configuration-request
                              #:delete-slack-workspace-configuration-result
                              #:get-account-alias #:get-account-alias-request
                              #:get-account-alias-result
                              #:list-slack-channel-configurations
                              #:list-slack-channel-configurations-request
                              #:list-slack-channel-configurations-result
                              #:list-slack-workspace-configurations
                              #:list-slack-workspace-configurations-request
                              #:list-slack-workspace-configurations-result
                              #:notification-severity-level #:put-account-alias
                              #:put-account-alias-request
                              #:put-account-alias-result
                              #:register-slack-workspace-for-organization
                              #:register-slack-workspace-for-organization-request
                              #:register-slack-workspace-for-organization-result
                              #:slack-channel-configuration
                              #:slack-workspace-configuration
                              #:slack-workspace-configuration-list
                              #:support-app
                              #:update-slack-channel-configuration
                              #:update-slack-channel-configuration-request
                              #:update-slack-channel-configuration-result
                              #:aws-account-alias #:boolean-value #:channel-id
                              #:channel-name #:error-message #:pagination-token
                              #:role-arn #:slack-channel-configuration-list
                              #:team-id #:team-name))
(common-lisp:in-package #:pira/support-app)

(smithy/sdk/service:define-service support-app :shape-name "SupportApp"
                                   :version "2021-08-20" :title
                                   "AWS Support App" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Support App")
                                      ("arnNamespace" . "supportapp"))
                                     ("aws.auth#sigv4" ("name" . "supportapp"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-slack-channel-configuration-request
                                    common-lisp:nil
                                    ((team-id :target-type team-id :required
                                      common-lisp:t :member-name "teamId")
                                     (channel-id :target-type channel-id
                                      :required common-lisp:t :member-name
                                      "channelId")
                                     (channel-name :target-type channel-name
                                      :member-name "channelName")
                                     (notify-on-create-or-reopen-case
                                      :target-type boolean-value :member-name
                                      "notifyOnCreateOrReopenCase")
                                     (notify-on-add-correspondence-to-case
                                      :target-type boolean-value :member-name
                                      "notifyOnAddCorrespondenceToCase")
                                     (notify-on-resolve-case :target-type
                                      boolean-value :member-name
                                      "notifyOnResolveCase")
                                     (notify-on-case-severity :target-type
                                      notification-severity-level :required
                                      common-lisp:t :member-name
                                      "notifyOnCaseSeverity")
                                     (channel-role-arn :target-type role-arn
                                      :required common-lisp:t :member-name
                                      "channelRoleArn"))
                                    (:shape-name
                                     "CreateSlackChannelConfigurationRequest"))

(smithy/sdk/shapes:define-structure create-slack-channel-configuration-result
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "CreateSlackChannelConfigurationResult"))

(smithy/sdk/shapes:define-structure delete-account-alias-request
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeleteAccountAliasRequest"))

(smithy/sdk/shapes:define-structure delete-account-alias-result common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteAccountAliasResult"))

(smithy/sdk/shapes:define-structure delete-slack-channel-configuration-request
                                    common-lisp:nil
                                    ((team-id :target-type team-id :required
                                      common-lisp:t :member-name "teamId")
                                     (channel-id :target-type channel-id
                                      :required common-lisp:t :member-name
                                      "channelId"))
                                    (:shape-name
                                     "DeleteSlackChannelConfigurationRequest"))

(smithy/sdk/shapes:define-structure delete-slack-channel-configuration-result
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteSlackChannelConfigurationResult"))

(smithy/sdk/shapes:define-structure
 delete-slack-workspace-configuration-request common-lisp:nil
 ((team-id :target-type team-id :required common-lisp:t :member-name "teamId"))
 (:shape-name "DeleteSlackWorkspaceConfigurationRequest"))

(smithy/sdk/shapes:define-structure delete-slack-workspace-configuration-result
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteSlackWorkspaceConfigurationResult"))

(smithy/sdk/shapes:define-structure get-account-alias-request common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "GetAccountAliasRequest"))

(smithy/sdk/shapes:define-structure get-account-alias-result common-lisp:nil
                                    ((account-alias :target-type
                                      aws-account-alias :member-name
                                      "accountAlias"))
                                    (:shape-name "GetAccountAliasResult"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure list-slack-channel-configurations-request
                                    common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListSlackChannelConfigurationsRequest"))

(smithy/sdk/shapes:define-structure list-slack-channel-configurations-result
                                    common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (slack-channel-configurations :target-type
                                      slack-channel-configuration-list
                                      :required common-lisp:t :member-name
                                      "slackChannelConfigurations"))
                                    (:shape-name
                                     "ListSlackChannelConfigurationsResult"))

(smithy/sdk/shapes:define-structure list-slack-workspace-configurations-request
                                    common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListSlackWorkspaceConfigurationsRequest"))

(smithy/sdk/shapes:define-structure list-slack-workspace-configurations-result
                                    common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (slack-workspace-configurations
                                      :target-type
                                      slack-workspace-configuration-list
                                      :member-name
                                      "slackWorkspaceConfigurations"))
                                    (:shape-name
                                     "ListSlackWorkspaceConfigurationsResult"))

(smithy/sdk/shapes:define-type notification-severity-level
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure put-account-alias-request common-lisp:nil
                                    ((account-alias :target-type
                                      aws-account-alias :required common-lisp:t
                                      :member-name "accountAlias"))
                                    (:shape-name "PutAccountAliasRequest"))

(smithy/sdk/shapes:define-structure put-account-alias-result common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "PutAccountAliasResult"))

(smithy/sdk/shapes:define-structure
 register-slack-workspace-for-organization-request common-lisp:nil
 ((team-id :target-type team-id :required common-lisp:t :member-name "teamId"))
 (:shape-name "RegisterSlackWorkspaceForOrganizationRequest"))

(smithy/sdk/shapes:define-structure
 register-slack-workspace-for-organization-result common-lisp:nil
 ((team-id :target-type team-id :member-name "teamId")
  (team-name :target-type team-name :member-name "teamName")
  (account-type :target-type account-type :member-name "accountType"))
 (:shape-name "RegisterSlackWorkspaceForOrganizationResult"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure slack-channel-configuration common-lisp:nil
                                    ((team-id :target-type team-id :required
                                      common-lisp:t :member-name "teamId")
                                     (channel-id :target-type channel-id
                                      :required common-lisp:t :member-name
                                      "channelId")
                                     (channel-name :target-type channel-name
                                      :member-name "channelName")
                                     (notify-on-create-or-reopen-case
                                      :target-type boolean-value :member-name
                                      "notifyOnCreateOrReopenCase")
                                     (notify-on-add-correspondence-to-case
                                      :target-type boolean-value :member-name
                                      "notifyOnAddCorrespondenceToCase")
                                     (notify-on-resolve-case :target-type
                                      boolean-value :member-name
                                      "notifyOnResolveCase")
                                     (notify-on-case-severity :target-type
                                      notification-severity-level :member-name
                                      "notifyOnCaseSeverity")
                                     (channel-role-arn :target-type role-arn
                                      :member-name "channelRoleArn"))
                                    (:shape-name "SlackChannelConfiguration"))

(smithy/sdk/shapes:define-structure slack-workspace-configuration
                                    common-lisp:nil
                                    ((team-id :target-type team-id :required
                                      common-lisp:t :member-name "teamId")
                                     (team-name :target-type team-name
                                      :member-name "teamName")
                                     (allow-organization-member-account
                                      :target-type boolean-value :member-name
                                      "allowOrganizationMemberAccount"))
                                    (:shape-name "SlackWorkspaceConfiguration"))

(smithy/sdk/shapes:define-list slack-workspace-configuration-list :member
                               slack-workspace-configuration)

(smithy/sdk/shapes:define-structure update-slack-channel-configuration-request
                                    common-lisp:nil
                                    ((team-id :target-type team-id :required
                                      common-lisp:t :member-name "teamId")
                                     (channel-id :target-type channel-id
                                      :required common-lisp:t :member-name
                                      "channelId")
                                     (channel-name :target-type channel-name
                                      :member-name "channelName")
                                     (notify-on-create-or-reopen-case
                                      :target-type boolean-value :member-name
                                      "notifyOnCreateOrReopenCase")
                                     (notify-on-add-correspondence-to-case
                                      :target-type boolean-value :member-name
                                      "notifyOnAddCorrespondenceToCase")
                                     (notify-on-resolve-case :target-type
                                      boolean-value :member-name
                                      "notifyOnResolveCase")
                                     (notify-on-case-severity :target-type
                                      notification-severity-level :member-name
                                      "notifyOnCaseSeverity")
                                     (channel-role-arn :target-type role-arn
                                      :member-name "channelRoleArn"))
                                    (:shape-name
                                     "UpdateSlackChannelConfigurationRequest"))

(smithy/sdk/shapes:define-structure update-slack-channel-configuration-result
                                    common-lisp:nil
                                    ((team-id :target-type team-id :member-name
                                      "teamId")
                                     (channel-id :target-type channel-id
                                      :member-name "channelId")
                                     (channel-name :target-type channel-name
                                      :member-name "channelName")
                                     (notify-on-create-or-reopen-case
                                      :target-type boolean-value :member-name
                                      "notifyOnCreateOrReopenCase")
                                     (notify-on-add-correspondence-to-case
                                      :target-type boolean-value :member-name
                                      "notifyOnAddCorrespondenceToCase")
                                     (notify-on-resolve-case :target-type
                                      boolean-value :member-name
                                      "notifyOnResolveCase")
                                     (notify-on-case-severity :target-type
                                      notification-severity-level :member-name
                                      "notifyOnCaseSeverity")
                                     (channel-role-arn :target-type role-arn
                                      :member-name "channelRoleArn"))
                                    (:shape-name
                                     "UpdateSlackChannelConfigurationResult"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type aws-account-alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean-value smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type channel-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type channel-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list slack-channel-configuration-list :member
                               slack-channel-configuration)

(smithy/sdk/shapes:define-type team-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type team-name smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-slack-channel-configuration
                                       :shape-name
                                       "CreateSlackChannelConfiguration" :input
                                       create-slack-channel-configuration-request
                                       :output
                                       create-slack-channel-configuration-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/control/create-slack-channel-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-account-alias :shape-name
                                       "DeleteAccountAlias" :input
                                       delete-account-alias-request :output
                                       delete-account-alias-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/control/delete-account-alias" :code
                                       200)

(smithy/sdk/operation:define-operation delete-slack-channel-configuration
                                       :shape-name
                                       "DeleteSlackChannelConfiguration" :input
                                       delete-slack-channel-configuration-request
                                       :output
                                       delete-slack-channel-configuration-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/control/delete-slack-channel-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-slack-workspace-configuration
                                       :shape-name
                                       "DeleteSlackWorkspaceConfiguration"
                                       :input
                                       delete-slack-workspace-configuration-request
                                       :output
                                       delete-slack-workspace-configuration-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/control/delete-slack-workspace-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-account-alias :shape-name
                                       "GetAccountAlias" :input
                                       get-account-alias-request :output
                                       get-account-alias-result :errors
                                       (internal-server-exception) :method
                                       "POST" :uri "/control/get-account-alias"
                                       :code 200)

(smithy/sdk/operation:define-operation list-slack-channel-configurations
                                       :shape-name
                                       "ListSlackChannelConfigurations" :input
                                       list-slack-channel-configurations-request
                                       :output
                                       list-slack-channel-configurations-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception)
                                       :method "POST" :uri
                                       "/control/list-slack-channel-configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-slack-workspace-configurations
                                       :shape-name
                                       "ListSlackWorkspaceConfigurations"
                                       :input
                                       list-slack-workspace-configurations-request
                                       :output
                                       list-slack-workspace-configurations-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception)
                                       :method "POST" :uri
                                       "/control/list-slack-workspace-configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation put-account-alias :shape-name
                                       "PutAccountAlias" :input
                                       put-account-alias-request :output
                                       put-account-alias-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/control/put-account-alias" :code 200)

(smithy/sdk/operation:define-operation
 register-slack-workspace-for-organization :shape-name
 "RegisterSlackWorkspaceForOrganization" :input
 register-slack-workspace-for-organization-request :output
 register-slack-workspace-for-organization-result :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception validation-exception)
 :method "POST" :uri "/control/register-slack-workspace-for-organization" :code
 200)

(smithy/sdk/operation:define-operation update-slack-channel-configuration
                                       :shape-name
                                       "UpdateSlackChannelConfiguration" :input
                                       update-slack-channel-configuration-request
                                       :output
                                       update-slack-channel-configuration-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/control/update-slack-channel-configuration"
                                       :code 200)
