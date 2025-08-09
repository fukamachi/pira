(uiop/package:define-package #:pira/chatbot (:use)
                             (:export #:account-preferences
                              #:amazon-resource-name #:arn
                              #:associate-to-configuration #:association-list
                              #:association-listing #:aws-user-identity
                              #:boolean-account-preference
                              #:chat-configuration-arn
                              #:chime-webhook-configuration
                              #:chime-webhook-configuration-list
                              #:chime-webhook-description #:chime-webhook-url
                              #:client-token #:configuration-name
                              #:configured-team #:configured-teams-list
                              #:create-chime-webhook-configuration
                              #:create-custom-action
                              #:create-microsoft-teams-channel-configuration
                              #:create-slack-channel-configuration
                              #:custom-action #:custom-action-alias-name
                              #:custom-action-arn #:custom-action-arn-list
                              #:custom-action-attachment
                              #:custom-action-attachment-criteria
                              #:custom-action-attachment-criteria-list
                              #:custom-action-attachment-criteria-operator
                              #:custom-action-attachment-list
                              #:custom-action-attachment-notification-type
                              #:custom-action-attachment-variables
                              #:custom-action-button-text
                              #:custom-action-definition #:custom-action-name
                              #:custom-action-resource #:customer-cw-log-level
                              #:delete-chime-webhook-configuration
                              #:delete-custom-action
                              #:delete-microsoft-teams-channel-configuration
                              #:delete-microsoft-teams-configured-team
                              #:delete-microsoft-teams-user-identity
                              #:delete-slack-channel-configuration
                              #:delete-slack-user-identity
                              #:delete-slack-workspace-authorization
                              #:describe-chime-webhook-configurations
                              #:describe-slack-channel-configurations
                              #:describe-slack-user-identities
                              #:describe-slack-workspaces
                              #:disassociate-from-configuration #:error-message
                              #:get-account-preferences #:get-custom-action
                              #:get-microsoft-teams-channel-configuration
                              #:guardrail-policy-arn
                              #:guardrail-policy-arn-list #:list-associations
                              #:list-custom-actions
                              #:list-microsoft-teams-channel-configurations
                              #:list-microsoft-teams-configured-teams
                              #:list-microsoft-teams-user-identities
                              #:list-tags-for-resource #:max-results
                              #:pagination-token #:resource-identifier
                              #:resource-state #:slack-channel-configuration
                              #:slack-channel-configuration-list
                              #:slack-channel-display-name #:slack-channel-id
                              #:slack-team-id #:slack-team-name #:slack-user-id
                              #:slack-user-identities-list
                              #:slack-user-identity #:slack-workspace
                              #:slack-workspaces-list #:sns-topic-arn-list
                              #:string #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-value #:tags
                              #:team-channel-configurations-list #:team-name
                              #:teams-channel-configuration #:teams-channel-id
                              #:teams-channel-name #:teams-user-identities-list
                              #:teams-user-identity #:uuid #:untag-resource
                              #:update-account-preferences
                              #:update-chime-webhook-configuration
                              #:update-custom-action
                              #:update-microsoft-teams-channel-configuration
                              #:update-slack-channel-configuration
                              #:wheatley-orchestration-20171011))
(common-lisp:in-package #:pira/chatbot)

(smithy/sdk/service:define-service wheatley-orchestration-20171011 :shape-name
                                   "WheatleyOrchestration_20171011" :version
                                   "2017-10-11" :title "AWS Chatbot"
                                   :xml-namespace
                                   '(:uri
                                     "http://wheatley.amazonaws.com/orchestration/2017-10-11/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "chatbot")
                                      ("arnNamespace" . "chatbot")
                                      ("cloudFormationName" . "Chatbot")
                                      ("cloudTrailEventSource"
                                       . "chatbot.amazonaws.com")
                                      ("endpointPrefix" . "chatbot"))
                                     ("aws.auth#sigv4" ("name" . "chatbot"))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure account-preferences common-lisp:nil
                                    ((user-authorization-required :target-type
                                      boolean-account-preference :member-name
                                      "UserAuthorizationRequired")
                                     (training-data-collection-enabled
                                      :target-type boolean-account-preference
                                      :member-name
                                      "TrainingDataCollectionEnabled"))
                                    (:shape-name "AccountPreferences"))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-to-configuration-request
                                common-lisp:nil
                                ((resource :target-type resource-identifier
                                  :required common-lisp:t :member-name
                                  "Resource")
                                 (chat-configuration :target-type
                                  chat-configuration-arn :required
                                  common-lisp:t :member-name
                                  "ChatConfiguration"))
                                (:shape-name "AssociateToConfigurationRequest"))

(smithy/sdk/shapes:define-output associate-to-configuration-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "AssociateToConfigurationResult"))

(smithy/sdk/shapes:define-list association-list :member association-listing)

(smithy/sdk/shapes:define-structure association-listing common-lisp:nil
                                    ((resource :target-type arn :required
                                      common-lisp:t :member-name "Resource"))
                                    (:shape-name "AssociationListing"))

(smithy/sdk/shapes:define-type aws-user-identity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean-account-preference
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type chat-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure chime-webhook-configuration common-lisp:nil
                                    ((webhook-description :target-type
                                      chime-webhook-description :required
                                      common-lisp:t :member-name
                                      "WebhookDescription")
                                     (chat-configuration-arn :target-type
                                      chat-configuration-arn :required
                                      common-lisp:t :member-name
                                      "ChatConfigurationArn")
                                     (iam-role-arn :target-type arn :required
                                      common-lisp:t :member-name "IamRoleArn")
                                     (sns-topic-arns :target-type
                                      sns-topic-arn-list :required
                                      common-lisp:t :member-name
                                      "SnsTopicArns")
                                     (configuration-name :target-type
                                      configuration-name :member-name
                                      "ConfigurationName")
                                     (logging-level :target-type
                                      customer-cw-log-level :member-name
                                      "LoggingLevel")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (state :target-type resource-state
                                      :member-name "State")
                                     (state-reason :target-type string
                                      :member-name "StateReason"))
                                    (:shape-name "ChimeWebhookConfiguration"))

(smithy/sdk/shapes:define-list chime-webhook-configuration-list :member
                               chime-webhook-configuration)

(smithy/sdk/shapes:define-type chime-webhook-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type chime-webhook-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configured-team common-lisp:nil
                                    ((tenant-id :target-type uuid :required
                                      common-lisp:t :member-name "TenantId")
                                     (team-id :target-type uuid :required
                                      common-lisp:t :member-name "TeamId")
                                     (team-name :target-type uuid :member-name
                                      "TeamName")
                                     (state :target-type resource-state
                                      :member-name "State")
                                     (state-reason :target-type string
                                      :member-name "StateReason"))
                                    (:shape-name "ConfiguredTeam"))

(smithy/sdk/shapes:define-list configured-teams-list :member configured-team)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error create-chime-webhook-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "CreateChimeWebhookConfigurationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input create-chime-webhook-configuration-request
                                common-lisp:nil
                                ((webhook-description :target-type
                                  chime-webhook-description :required
                                  common-lisp:t :member-name
                                  "WebhookDescription")
                                 (webhook-url :target-type chime-webhook-url
                                  :required common-lisp:t :member-name
                                  "WebhookUrl")
                                 (sns-topic-arns :target-type
                                  sns-topic-arn-list :required common-lisp:t
                                  :member-name "SnsTopicArns")
                                 (iam-role-arn :target-type arn :required
                                  common-lisp:t :member-name "IamRoleArn")
                                 (configuration-name :target-type
                                  configuration-name :required common-lisp:t
                                  :member-name "ConfigurationName")
                                 (logging-level :target-type
                                  customer-cw-log-level :member-name
                                  "LoggingLevel")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name
                                 "CreateChimeWebhookConfigurationRequest"))

(smithy/sdk/shapes:define-output create-chime-webhook-configuration-result
                                 common-lisp:nil
                                 ((webhook-configuration :target-type
                                   chime-webhook-configuration :member-name
                                   "WebhookConfiguration"))
                                 (:shape-name
                                  "CreateChimeWebhookConfigurationResult"))

(smithy/sdk/shapes:define-input create-custom-action-request common-lisp:nil
                                ((definition :target-type
                                  custom-action-definition :required
                                  common-lisp:t :member-name "Definition")
                                 (alias-name :target-type
                                  custom-action-alias-name :member-name
                                  "AliasName")
                                 (attachments :target-type
                                  custom-action-attachment-list :member-name
                                  "Attachments")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (action-name :target-type custom-action-name
                                  :required common-lisp:t :member-name
                                  "ActionName"))
                                (:shape-name "CreateCustomActionRequest"))

(smithy/sdk/shapes:define-output create-custom-action-result common-lisp:nil
                                 ((custom-action-arn :target-type
                                   custom-action-arn :required common-lisp:t
                                   :member-name "CustomActionArn"))
                                 (:shape-name "CreateCustomActionResult"))

(smithy/sdk/shapes:define-error create-slack-channel-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "CreateSlackChannelConfigurationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input create-slack-channel-configuration-request
                                common-lisp:nil
                                ((slack-team-id :target-type slack-team-id
                                  :required common-lisp:t :member-name
                                  "SlackTeamId")
                                 (slack-channel-id :target-type
                                  slack-channel-id :required common-lisp:t
                                  :member-name "SlackChannelId")
                                 (slack-channel-name :target-type
                                  slack-channel-display-name :member-name
                                  "SlackChannelName")
                                 (sns-topic-arns :target-type
                                  sns-topic-arn-list :member-name
                                  "SnsTopicArns")
                                 (iam-role-arn :target-type arn :required
                                  common-lisp:t :member-name "IamRoleArn")
                                 (configuration-name :target-type
                                  configuration-name :required common-lisp:t
                                  :member-name "ConfigurationName")
                                 (logging-level :target-type
                                  customer-cw-log-level :member-name
                                  "LoggingLevel")
                                 (guardrail-policy-arns :target-type
                                  guardrail-policy-arn-list :member-name
                                  "GuardrailPolicyArns")
                                 (user-authorization-required :target-type
                                  boolean-account-preference :member-name
                                  "UserAuthorizationRequired")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name
                                 "CreateSlackChannelConfigurationRequest"))

(smithy/sdk/shapes:define-output create-slack-channel-configuration-result
                                 common-lisp:nil
                                 ((channel-configuration :target-type
                                   slack-channel-configuration :member-name
                                   "ChannelConfiguration"))
                                 (:shape-name
                                  "CreateSlackChannelConfigurationResult"))

(smithy/sdk/shapes:define-error create-teams-channel-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "CreateTeamsChannelConfigurationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input create-teams-channel-configuration-request
                                common-lisp:nil
                                ((channel-id :target-type teams-channel-id
                                  :required common-lisp:t :member-name
                                  "ChannelId")
                                 (channel-name :target-type teams-channel-name
                                  :member-name "ChannelName")
                                 (team-id :target-type uuid :required
                                  common-lisp:t :member-name "TeamId")
                                 (team-name :target-type team-name :member-name
                                  "TeamName")
                                 (tenant-id :target-type uuid :required
                                  common-lisp:t :member-name "TenantId")
                                 (sns-topic-arns :target-type
                                  sns-topic-arn-list :member-name
                                  "SnsTopicArns")
                                 (iam-role-arn :target-type arn :required
                                  common-lisp:t :member-name "IamRoleArn")
                                 (configuration-name :target-type
                                  configuration-name :required common-lisp:t
                                  :member-name "ConfigurationName")
                                 (logging-level :target-type
                                  customer-cw-log-level :member-name
                                  "LoggingLevel")
                                 (guardrail-policy-arns :target-type
                                  guardrail-policy-arn-list :member-name
                                  "GuardrailPolicyArns")
                                 (user-authorization-required :target-type
                                  boolean-account-preference :member-name
                                  "UserAuthorizationRequired")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name
                                 "CreateTeamsChannelConfigurationRequest"))

(smithy/sdk/shapes:define-output create-teams-channel-configuration-result
                                 common-lisp:nil
                                 ((channel-configuration :target-type
                                   teams-channel-configuration :member-name
                                   "ChannelConfiguration"))
                                 (:shape-name
                                  "CreateTeamsChannelConfigurationResult"))

(smithy/sdk/shapes:define-structure custom-action common-lisp:nil
                                    ((custom-action-arn :target-type
                                      custom-action-arn :required common-lisp:t
                                      :member-name "CustomActionArn")
                                     (definition :target-type
                                      custom-action-definition :required
                                      common-lisp:t :member-name "Definition")
                                     (alias-name :target-type
                                      custom-action-alias-name :member-name
                                      "AliasName")
                                     (attachments :target-type
                                      custom-action-attachment-list
                                      :member-name "Attachments")
                                     (action-name :target-type
                                      custom-action-name :member-name
                                      "ActionName"))
                                    (:shape-name "CustomAction"))

(smithy/sdk/shapes:define-type custom-action-alias-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-action-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list custom-action-arn-list :member custom-action-arn)

(smithy/sdk/shapes:define-structure custom-action-attachment common-lisp:nil
                                    ((notification-type :target-type
                                      custom-action-attachment-notification-type
                                      :member-name "NotificationType")
                                     (button-text :target-type
                                      custom-action-button-text :member-name
                                      "ButtonText")
                                     (criteria :target-type
                                      custom-action-attachment-criteria-list
                                      :member-name "Criteria")
                                     (variables :target-type
                                      custom-action-attachment-variables
                                      :member-name "Variables"))
                                    (:shape-name "CustomActionAttachment"))

(smithy/sdk/shapes:define-structure custom-action-attachment-criteria
                                    common-lisp:nil
                                    ((operator :target-type
                                      custom-action-attachment-criteria-operator
                                      :required common-lisp:t :member-name
                                      "Operator")
                                     (variable-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "VariableName")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Value"))
                                    (:shape-name
                                     "CustomActionAttachmentCriteria"))

(smithy/sdk/shapes:define-list custom-action-attachment-criteria-list :member
                               custom-action-attachment-criteria)

(smithy/sdk/shapes:define-enum custom-action-attachment-criteria-operator
    common-lisp:nil
  (:has-value "HAS_VALUE")
  (:equals "EQUALS"))

(smithy/sdk/shapes:define-list custom-action-attachment-list :member
                               custom-action-attachment)

(smithy/sdk/shapes:define-type custom-action-attachment-notification-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map custom-action-attachment-variables :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-action-button-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-action-definition common-lisp:nil
                                    ((command-text :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "CommandText"))
                                    (:shape-name "CustomActionDefinition"))

(smithy/sdk/shapes:define-type custom-action-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type customer-cw-log-level
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error delete-chime-webhook-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DeleteChimeWebhookConfigurationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input delete-chime-webhook-configuration-request
                                common-lisp:nil
                                ((chat-configuration-arn :target-type
                                  chat-configuration-arn :required
                                  common-lisp:t :member-name
                                  "ChatConfigurationArn"))
                                (:shape-name
                                 "DeleteChimeWebhookConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-chime-webhook-configuration-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteChimeWebhookConfigurationResult"))

(smithy/sdk/shapes:define-input delete-custom-action-request common-lisp:nil
                                ((custom-action-arn :target-type
                                  custom-action-arn :required common-lisp:t
                                  :member-name "CustomActionArn"))
                                (:shape-name "DeleteCustomActionRequest"))

(smithy/sdk/shapes:define-output delete-custom-action-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteCustomActionResult"))

(smithy/sdk/shapes:define-error delete-microsoft-teams-user-identity-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DeleteMicrosoftTeamsUserIdentityException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input delete-microsoft-teams-user-identity-request
                                common-lisp:nil
                                ((chat-configuration-arn :target-type
                                  chat-configuration-arn :required
                                  common-lisp:t :member-name
                                  "ChatConfigurationArn")
                                 (user-id :target-type uuid :required
                                  common-lisp:t :member-name "UserId"))
                                (:shape-name
                                 "DeleteMicrosoftTeamsUserIdentityRequest"))

(smithy/sdk/shapes:define-output delete-microsoft-teams-user-identity-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteMicrosoftTeamsUserIdentityResult"))

(smithy/sdk/shapes:define-error delete-slack-channel-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DeleteSlackChannelConfigurationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input delete-slack-channel-configuration-request
                                common-lisp:nil
                                ((chat-configuration-arn :target-type
                                  chat-configuration-arn :required
                                  common-lisp:t :member-name
                                  "ChatConfigurationArn"))
                                (:shape-name
                                 "DeleteSlackChannelConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-slack-channel-configuration-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteSlackChannelConfigurationResult"))

(smithy/sdk/shapes:define-error delete-slack-user-identity-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DeleteSlackUserIdentityException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input delete-slack-user-identity-request
                                common-lisp:nil
                                ((chat-configuration-arn :target-type
                                  chat-configuration-arn :required
                                  common-lisp:t :member-name
                                  "ChatConfigurationArn")
                                 (slack-team-id :target-type slack-team-id
                                  :required common-lisp:t :member-name
                                  "SlackTeamId")
                                 (slack-user-id :target-type slack-user-id
                                  :required common-lisp:t :member-name
                                  "SlackUserId"))
                                (:shape-name "DeleteSlackUserIdentityRequest"))

(smithy/sdk/shapes:define-output delete-slack-user-identity-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteSlackUserIdentityResult"))

(smithy/sdk/shapes:define-error delete-slack-workspace-authorization-fault
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DeleteSlackWorkspaceAuthorizationFault")
                                (:error-code 500))

(smithy/sdk/shapes:define-input delete-slack-workspace-authorization-request
                                common-lisp:nil
                                ((slack-team-id :target-type slack-team-id
                                  :required common-lisp:t :member-name
                                  "SlackTeamId"))
                                (:shape-name
                                 "DeleteSlackWorkspaceAuthorizationRequest"))

(smithy/sdk/shapes:define-output delete-slack-workspace-authorization-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteSlackWorkspaceAuthorizationResult"))

(smithy/sdk/shapes:define-error delete-teams-channel-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DeleteTeamsChannelConfigurationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input delete-teams-channel-configuration-request
                                common-lisp:nil
                                ((chat-configuration-arn :target-type
                                  chat-configuration-arn :required
                                  common-lisp:t :member-name
                                  "ChatConfigurationArn"))
                                (:shape-name
                                 "DeleteTeamsChannelConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-teams-channel-configuration-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteTeamsChannelConfigurationResult"))

(smithy/sdk/shapes:define-error delete-teams-configured-team-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DeleteTeamsConfiguredTeamException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input delete-teams-configured-team-request
                                common-lisp:nil
                                ((team-id :target-type uuid :required
                                  common-lisp:t :member-name "TeamId"))
                                (:shape-name
                                 "DeleteTeamsConfiguredTeamRequest"))

(smithy/sdk/shapes:define-output delete-teams-configured-team-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteTeamsConfiguredTeamResult"))

(smithy/sdk/shapes:define-error describe-chime-webhook-configurations-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DescribeChimeWebhookConfigurationsException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input describe-chime-webhook-configurations-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (chat-configuration-arn :target-type
                                  chat-configuration-arn :member-name
                                  "ChatConfigurationArn"))
                                (:shape-name
                                 "DescribeChimeWebhookConfigurationsRequest"))

(smithy/sdk/shapes:define-output describe-chime-webhook-configurations-result
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (webhook-configurations :target-type
                                   chime-webhook-configuration-list
                                   :member-name "WebhookConfigurations"))
                                 (:shape-name
                                  "DescribeChimeWebhookConfigurationsResult"))

(smithy/sdk/shapes:define-error describe-slack-channel-configurations-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DescribeSlackChannelConfigurationsException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input describe-slack-channel-configurations-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (chat-configuration-arn :target-type
                                  chat-configuration-arn :member-name
                                  "ChatConfigurationArn"))
                                (:shape-name
                                 "DescribeSlackChannelConfigurationsRequest"))

(smithy/sdk/shapes:define-output describe-slack-channel-configurations-result
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (slack-channel-configurations :target-type
                                   slack-channel-configuration-list
                                   :member-name "SlackChannelConfigurations"))
                                 (:shape-name
                                  "DescribeSlackChannelConfigurationsResult"))

(smithy/sdk/shapes:define-error describe-slack-user-identities-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DescribeSlackUserIdentitiesException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input describe-slack-user-identities-request
                                common-lisp:nil
                                ((chat-configuration-arn :target-type
                                  chat-configuration-arn :member-name
                                  "ChatConfigurationArn")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "DescribeSlackUserIdentitiesRequest"))

(smithy/sdk/shapes:define-output describe-slack-user-identities-result
                                 common-lisp:nil
                                 ((slack-user-identities :target-type
                                   slack-user-identities-list :member-name
                                   "SlackUserIdentities")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeSlackUserIdentitiesResult"))

(smithy/sdk/shapes:define-error describe-slack-workspaces-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "DescribeSlackWorkspacesException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input describe-slack-workspaces-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeSlackWorkspacesRequest"))

(smithy/sdk/shapes:define-output describe-slack-workspaces-result
                                 common-lisp:nil
                                 ((slack-workspaces :target-type
                                   slack-workspaces-list :member-name
                                   "SlackWorkspaces")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeSlackWorkspacesResult"))

(smithy/sdk/shapes:define-input disassociate-from-configuration-request
                                common-lisp:nil
                                ((resource :target-type resource-identifier
                                  :required common-lisp:t :member-name
                                  "Resource")
                                 (chat-configuration :target-type
                                  chat-configuration-arn :required
                                  common-lisp:t :member-name
                                  "ChatConfiguration"))
                                (:shape-name
                                 "DisassociateFromConfigurationRequest"))

(smithy/sdk/shapes:define-output disassociate-from-configuration-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateFromConfigurationResult"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error get-account-preferences-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "GetAccountPreferencesException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input get-account-preferences-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetAccountPreferencesRequest"))

(smithy/sdk/shapes:define-output get-account-preferences-result common-lisp:nil
                                 ((account-preferences :target-type
                                   account-preferences :member-name
                                   "AccountPreferences"))
                                 (:shape-name "GetAccountPreferencesResult"))

(smithy/sdk/shapes:define-input get-custom-action-request common-lisp:nil
                                ((custom-action-arn :target-type
                                  custom-action-arn :required common-lisp:t
                                  :member-name "CustomActionArn"))
                                (:shape-name "GetCustomActionRequest"))

(smithy/sdk/shapes:define-output get-custom-action-result common-lisp:nil
                                 ((custom-action :target-type custom-action
                                   :member-name "CustomAction"))
                                 (:shape-name "GetCustomActionResult"))

(smithy/sdk/shapes:define-error get-teams-channel-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "GetTeamsChannelConfigurationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input get-teams-channel-configuration-request
                                common-lisp:nil
                                ((chat-configuration-arn :target-type
                                  chat-configuration-arn :required
                                  common-lisp:t :member-name
                                  "ChatConfigurationArn"))
                                (:shape-name
                                 "GetTeamsChannelConfigurationRequest"))

(smithy/sdk/shapes:define-output get-teams-channel-configuration-result
                                 common-lisp:nil
                                 ((channel-configuration :target-type
                                   teams-channel-configuration :member-name
                                   "ChannelConfiguration"))
                                 (:shape-name
                                  "GetTeamsChannelConfigurationResult"))

(smithy/sdk/shapes:define-type guardrail-policy-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list guardrail-policy-arn-list :member
                               guardrail-policy-arn)

(smithy/sdk/shapes:define-error internal-service-error common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServiceError")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input list-associations-request common-lisp:nil
                                ((chat-configuration :target-type
                                  chat-configuration-arn :required
                                  common-lisp:t :member-name
                                  "ChatConfiguration")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListAssociationsRequest"))

(smithy/sdk/shapes:define-output list-associations-result common-lisp:nil
                                 ((associations :target-type association-list
                                   :required common-lisp:t :member-name
                                   "Associations")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListAssociationsResult"))

(smithy/sdk/shapes:define-input list-custom-actions-request common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "NextToken"))
                                (:shape-name "ListCustomActionsRequest"))

(smithy/sdk/shapes:define-output list-custom-actions-result common-lisp:nil
                                 ((custom-actions :target-type
                                   custom-action-arn-list :required
                                   common-lisp:t :member-name "CustomActions")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListCustomActionsResult"))

(smithy/sdk/shapes:define-error list-microsoft-teams-configured-teams-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "ListMicrosoftTeamsConfiguredTeamsException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-microsoft-teams-configured-teams-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListMicrosoftTeamsConfiguredTeamsRequest"))

(smithy/sdk/shapes:define-output list-microsoft-teams-configured-teams-result
                                 common-lisp:nil
                                 ((configured-teams :target-type
                                   configured-teams-list :member-name
                                   "ConfiguredTeams")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListMicrosoftTeamsConfiguredTeamsResult"))

(smithy/sdk/shapes:define-error list-microsoft-teams-user-identities-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "ListMicrosoftTeamsUserIdentitiesException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-microsoft-teams-user-identities-request
                                common-lisp:nil
                                ((chat-configuration-arn :target-type
                                  chat-configuration-arn :member-name
                                  "ChatConfigurationArn")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListMicrosoftTeamsUserIdentitiesRequest"))

(smithy/sdk/shapes:define-output list-microsoft-teams-user-identities-result
                                 common-lisp:nil
                                 ((teams-user-identities :target-type
                                   teams-user-identities-list :member-name
                                   "TeamsUserIdentities")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListMicrosoftTeamsUserIdentitiesResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-error list-teams-channel-configurations-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "ListTeamsChannelConfigurationsException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-teams-channel-configurations-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (team-id :target-type uuid :member-name
                                  "TeamId"))
                                (:shape-name
                                 "ListTeamsChannelConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-teams-channel-configurations-result
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (team-channel-configurations :target-type
                                   team-channel-configurations-list
                                   :member-name "TeamChannelConfigurations"))
                                 (:shape-name
                                  "ListTeamsChannelConfigurationsResult"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure slack-channel-configuration common-lisp:nil
                                    ((slack-team-name :target-type
                                      slack-team-name :required common-lisp:t
                                      :member-name "SlackTeamName")
                                     (slack-team-id :target-type slack-team-id
                                      :required common-lisp:t :member-name
                                      "SlackTeamId")
                                     (slack-channel-id :target-type
                                      slack-channel-id :required common-lisp:t
                                      :member-name "SlackChannelId")
                                     (slack-channel-name :target-type
                                      slack-channel-display-name :required
                                      common-lisp:t :member-name
                                      "SlackChannelName")
                                     (chat-configuration-arn :target-type
                                      chat-configuration-arn :required
                                      common-lisp:t :member-name
                                      "ChatConfigurationArn")
                                     (iam-role-arn :target-type arn :required
                                      common-lisp:t :member-name "IamRoleArn")
                                     (sns-topic-arns :target-type
                                      sns-topic-arn-list :required
                                      common-lisp:t :member-name
                                      "SnsTopicArns")
                                     (configuration-name :target-type
                                      configuration-name :member-name
                                      "ConfigurationName")
                                     (logging-level :target-type
                                      customer-cw-log-level :member-name
                                      "LoggingLevel")
                                     (guardrail-policy-arns :target-type
                                      guardrail-policy-arn-list :member-name
                                      "GuardrailPolicyArns")
                                     (user-authorization-required :target-type
                                      boolean-account-preference :member-name
                                      "UserAuthorizationRequired")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (state :target-type resource-state
                                      :member-name "State")
                                     (state-reason :target-type string
                                      :member-name "StateReason"))
                                    (:shape-name "SlackChannelConfiguration"))

(smithy/sdk/shapes:define-list slack-channel-configuration-list :member
                               slack-channel-configuration)

(smithy/sdk/shapes:define-type slack-channel-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type slack-channel-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type slack-team-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type slack-team-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type slack-user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list slack-user-identities-list :member
                               slack-user-identity)

(smithy/sdk/shapes:define-structure slack-user-identity common-lisp:nil
                                    ((iam-role-arn :target-type arn :required
                                      common-lisp:t :member-name "IamRoleArn")
                                     (chat-configuration-arn :target-type
                                      chat-configuration-arn :required
                                      common-lisp:t :member-name
                                      "ChatConfigurationArn")
                                     (slack-team-id :target-type slack-team-id
                                      :required common-lisp:t :member-name
                                      "SlackTeamId")
                                     (slack-user-id :target-type slack-user-id
                                      :required common-lisp:t :member-name
                                      "SlackUserId")
                                     (aws-user-identity :target-type
                                      aws-user-identity :member-name
                                      "AwsUserIdentity"))
                                    (:shape-name "SlackUserIdentity"))

(smithy/sdk/shapes:define-structure slack-workspace common-lisp:nil
                                    ((slack-team-id :target-type slack-team-id
                                      :required common-lisp:t :member-name
                                      "SlackTeamId")
                                     (slack-team-name :target-type
                                      slack-team-name :required common-lisp:t
                                      :member-name "SlackTeamName")
                                     (state :target-type resource-state
                                      :member-name "State")
                                     (state-reason :target-type string
                                      :member-name "StateReason"))
                                    (:shape-name "SlackWorkspace"))

(smithy/sdk/shapes:define-list slack-workspaces-list :member slack-workspace)

(smithy/sdk/shapes:define-list sns-topic-arn-list :member arn)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((tag-key :target-type tag-key :required
                                      common-lisp:t :member-name "TagKey")
                                     (tag-value :target-type tag-value
                                      :required common-lisp:t :member-name
                                      "TagValue"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-list team-channel-configurations-list :member
                               teams-channel-configuration)

(smithy/sdk/shapes:define-type team-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure teams-channel-configuration common-lisp:nil
                                    ((channel-id :target-type teams-channel-id
                                      :required common-lisp:t :member-name
                                      "ChannelId")
                                     (channel-name :target-type
                                      teams-channel-name :member-name
                                      "ChannelName")
                                     (team-id :target-type uuid :required
                                      common-lisp:t :member-name "TeamId")
                                     (team-name :target-type team-name
                                      :member-name "TeamName")
                                     (tenant-id :target-type uuid :required
                                      common-lisp:t :member-name "TenantId")
                                     (chat-configuration-arn :target-type
                                      chat-configuration-arn :required
                                      common-lisp:t :member-name
                                      "ChatConfigurationArn")
                                     (iam-role-arn :target-type arn :required
                                      common-lisp:t :member-name "IamRoleArn")
                                     (sns-topic-arns :target-type
                                      sns-topic-arn-list :required
                                      common-lisp:t :member-name
                                      "SnsTopicArns")
                                     (configuration-name :target-type
                                      configuration-name :member-name
                                      "ConfigurationName")
                                     (logging-level :target-type
                                      customer-cw-log-level :member-name
                                      "LoggingLevel")
                                     (guardrail-policy-arns :target-type
                                      guardrail-policy-arn-list :member-name
                                      "GuardrailPolicyArns")
                                     (user-authorization-required :target-type
                                      boolean-account-preference :member-name
                                      "UserAuthorizationRequired")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (state :target-type resource-state
                                      :member-name "State")
                                     (state-reason :target-type string
                                      :member-name "StateReason"))
                                    (:shape-name "TeamsChannelConfiguration"))

(smithy/sdk/shapes:define-type teams-channel-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type teams-channel-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list teams-user-identities-list :member
                               teams-user-identity)

(smithy/sdk/shapes:define-structure teams-user-identity common-lisp:nil
                                    ((iam-role-arn :target-type arn :required
                                      common-lisp:t :member-name "IamRoleArn")
                                     (chat-configuration-arn :target-type
                                      chat-configuration-arn :required
                                      common-lisp:t :member-name
                                      "ChatConfigurationArn")
                                     (team-id :target-type uuid :required
                                      common-lisp:t :member-name "TeamId")
                                     (user-id :target-type uuid :member-name
                                      "UserId")
                                     (aws-user-identity :target-type
                                      aws-user-identity :member-name
                                      "AwsUserIdentity")
                                     (teams-channel-id :target-type
                                      teams-channel-id :member-name
                                      "TeamsChannelId")
                                     (teams-tenant-id :target-type uuid
                                      :member-name "TeamsTenantId"))
                                    (:shape-name "TeamsUserIdentity"))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-error update-account-preferences-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "UpdateAccountPreferencesException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input update-account-preferences-request
                                common-lisp:nil
                                ((user-authorization-required :target-type
                                  boolean-account-preference :member-name
                                  "UserAuthorizationRequired")
                                 (training-data-collection-enabled :target-type
                                  boolean-account-preference :member-name
                                  "TrainingDataCollectionEnabled"))
                                (:shape-name "UpdateAccountPreferencesRequest"))

(smithy/sdk/shapes:define-output update-account-preferences-result
                                 common-lisp:nil
                                 ((account-preferences :target-type
                                   account-preferences :member-name
                                   "AccountPreferences"))
                                 (:shape-name "UpdateAccountPreferencesResult"))

(smithy/sdk/shapes:define-error update-chime-webhook-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "UpdateChimeWebhookConfigurationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input update-chime-webhook-configuration-request
                                common-lisp:nil
                                ((chat-configuration-arn :target-type
                                  chat-configuration-arn :required
                                  common-lisp:t :member-name
                                  "ChatConfigurationArn")
                                 (webhook-description :target-type
                                  chime-webhook-description :member-name
                                  "WebhookDescription")
                                 (webhook-url :target-type chime-webhook-url
                                  :member-name "WebhookUrl")
                                 (sns-topic-arns :target-type
                                  sns-topic-arn-list :member-name
                                  "SnsTopicArns")
                                 (iam-role-arn :target-type arn :member-name
                                  "IamRoleArn")
                                 (logging-level :target-type
                                  customer-cw-log-level :member-name
                                  "LoggingLevel"))
                                (:shape-name
                                 "UpdateChimeWebhookConfigurationRequest"))

(smithy/sdk/shapes:define-output update-chime-webhook-configuration-result
                                 common-lisp:nil
                                 ((webhook-configuration :target-type
                                   chime-webhook-configuration :member-name
                                   "WebhookConfiguration"))
                                 (:shape-name
                                  "UpdateChimeWebhookConfigurationResult"))

(smithy/sdk/shapes:define-input update-custom-action-request common-lisp:nil
                                ((custom-action-arn :target-type
                                  custom-action-arn :required common-lisp:t
                                  :member-name "CustomActionArn")
                                 (definition :target-type
                                  custom-action-definition :required
                                  common-lisp:t :member-name "Definition")
                                 (alias-name :target-type
                                  custom-action-alias-name :member-name
                                  "AliasName")
                                 (attachments :target-type
                                  custom-action-attachment-list :member-name
                                  "Attachments"))
                                (:shape-name "UpdateCustomActionRequest"))

(smithy/sdk/shapes:define-output update-custom-action-result common-lisp:nil
                                 ((custom-action-arn :target-type
                                   custom-action-arn :required common-lisp:t
                                   :member-name "CustomActionArn"))
                                 (:shape-name "UpdateCustomActionResult"))

(smithy/sdk/shapes:define-error update-slack-channel-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "UpdateSlackChannelConfigurationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input update-slack-channel-configuration-request
                                common-lisp:nil
                                ((chat-configuration-arn :target-type
                                  chat-configuration-arn :required
                                  common-lisp:t :member-name
                                  "ChatConfigurationArn")
                                 (slack-channel-id :target-type
                                  slack-channel-id :required common-lisp:t
                                  :member-name "SlackChannelId")
                                 (slack-channel-name :target-type
                                  slack-channel-display-name :member-name
                                  "SlackChannelName")
                                 (sns-topic-arns :target-type
                                  sns-topic-arn-list :member-name
                                  "SnsTopicArns")
                                 (iam-role-arn :target-type arn :member-name
                                  "IamRoleArn")
                                 (logging-level :target-type
                                  customer-cw-log-level :member-name
                                  "LoggingLevel")
                                 (guardrail-policy-arns :target-type
                                  guardrail-policy-arn-list :member-name
                                  "GuardrailPolicyArns")
                                 (user-authorization-required :target-type
                                  boolean-account-preference :member-name
                                  "UserAuthorizationRequired"))
                                (:shape-name
                                 "UpdateSlackChannelConfigurationRequest"))

(smithy/sdk/shapes:define-output update-slack-channel-configuration-result
                                 common-lisp:nil
                                 ((channel-configuration :target-type
                                   slack-channel-configuration :member-name
                                   "ChannelConfiguration"))
                                 (:shape-name
                                  "UpdateSlackChannelConfigurationResult"))

(smithy/sdk/shapes:define-error update-teams-channel-configuration-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "UpdateTeamsChannelConfigurationException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input update-teams-channel-configuration-request
                                common-lisp:nil
                                ((chat-configuration-arn :target-type
                                  chat-configuration-arn :required
                                  common-lisp:t :member-name
                                  "ChatConfigurationArn")
                                 (channel-id :target-type teams-channel-id
                                  :required common-lisp:t :member-name
                                  "ChannelId")
                                 (channel-name :target-type teams-channel-name
                                  :member-name "ChannelName")
                                 (sns-topic-arns :target-type
                                  sns-topic-arn-list :member-name
                                  "SnsTopicArns")
                                 (iam-role-arn :target-type arn :member-name
                                  "IamRoleArn")
                                 (logging-level :target-type
                                  customer-cw-log-level :member-name
                                  "LoggingLevel")
                                 (guardrail-policy-arns :target-type
                                  guardrail-policy-arn-list :member-name
                                  "GuardrailPolicyArns")
                                 (user-authorization-required :target-type
                                  boolean-account-preference :member-name
                                  "UserAuthorizationRequired"))
                                (:shape-name
                                 "UpdateTeamsChannelConfigurationRequest"))

(smithy/sdk/shapes:define-output update-teams-channel-configuration-result
                                 common-lisp:nil
                                 ((channel-configuration :target-type
                                   teams-channel-configuration :member-name
                                   "ChannelConfiguration"))
                                 (:shape-name
                                  "UpdateTeamsChannelConfigurationResult"))

(smithy/sdk/operation:define-operation associate-to-configuration :shape-name
                                       "AssociateToConfiguration" :input
                                       associate-to-configuration-request
                                       :output
                                       associate-to-configuration-result
                                       :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/associate-to-configuration" :code 201)

(smithy/sdk/operation:define-operation create-chime-webhook-configuration
                                       :shape-name
                                       "CreateChimeWebhookConfiguration" :input
                                       create-chime-webhook-configuration-request
                                       :output
                                       create-chime-webhook-configuration-result
                                       :errors
                                       (conflict-exception
                                        create-chime-webhook-configuration-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        limit-exceeded-exception)
                                       :method "POST" :uri
                                       "/create-chime-webhook-configuration"
                                       :code 201)

(smithy/sdk/operation:define-operation create-custom-action :shape-name
                                       "CreateCustomAction" :input
                                       create-custom-action-request :output
                                       create-custom-action-result :errors
                                       (conflict-exception
                                        internal-service-error
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/create-custom-action" :code 201)

(smithy/sdk/operation:define-operation
 create-microsoft-teams-channel-configuration :shape-name
 "CreateMicrosoftTeamsChannelConfiguration" :input
 create-teams-channel-configuration-request :output
 create-teams-channel-configuration-result :errors
 (conflict-exception create-teams-channel-configuration-exception
  invalid-parameter-exception invalid-request-exception
  limit-exceeded-exception)
 :method "POST" :uri "/create-ms-teams-channel-configuration" :code 201)

(smithy/sdk/operation:define-operation create-slack-channel-configuration
                                       :shape-name
                                       "CreateSlackChannelConfiguration" :input
                                       create-slack-channel-configuration-request
                                       :output
                                       create-slack-channel-configuration-result
                                       :errors
                                       (conflict-exception
                                        create-slack-channel-configuration-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        limit-exceeded-exception)
                                       :method "POST" :uri
                                       "/create-slack-channel-configuration"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-chime-webhook-configuration
                                       :shape-name
                                       "DeleteChimeWebhookConfiguration" :input
                                       delete-chime-webhook-configuration-request
                                       :output
                                       delete-chime-webhook-configuration-result
                                       :errors
                                       (delete-chime-webhook-configuration-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/delete-chime-webhook-configuration"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-custom-action :shape-name
                                       "DeleteCustomAction" :input
                                       delete-custom-action-request :output
                                       delete-custom-action-result :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/delete-custom-action" :code 204)

(smithy/sdk/operation:define-operation
 delete-microsoft-teams-channel-configuration :shape-name
 "DeleteMicrosoftTeamsChannelConfiguration" :input
 delete-teams-channel-configuration-request :output
 delete-teams-channel-configuration-result :errors
 (delete-teams-channel-configuration-exception invalid-parameter-exception
  invalid-request-exception resource-not-found-exception)
 :method "POST" :uri "/delete-ms-teams-channel-configuration" :code 204)

(smithy/sdk/operation:define-operation delete-microsoft-teams-configured-team
                                       :shape-name
                                       "DeleteMicrosoftTeamsConfiguredTeam"
                                       :input
                                       delete-teams-configured-team-request
                                       :output
                                       delete-teams-configured-team-result
                                       :errors
                                       (delete-teams-configured-team-exception
                                        invalid-parameter-exception)
                                       :method "POST" :uri
                                       "/delete-ms-teams-configured-teams"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-microsoft-teams-user-identity
                                       :shape-name
                                       "DeleteMicrosoftTeamsUserIdentity"
                                       :input
                                       delete-microsoft-teams-user-identity-request
                                       :output
                                       delete-microsoft-teams-user-identity-result
                                       :errors
                                       (delete-microsoft-teams-user-identity-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/delete-ms-teams-user-identity" :code
                                       204)

(smithy/sdk/operation:define-operation delete-slack-channel-configuration
                                       :shape-name
                                       "DeleteSlackChannelConfiguration" :input
                                       delete-slack-channel-configuration-request
                                       :output
                                       delete-slack-channel-configuration-result
                                       :errors
                                       (delete-slack-channel-configuration-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/delete-slack-channel-configuration"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-slack-user-identity :shape-name
                                       "DeleteSlackUserIdentity" :input
                                       delete-slack-user-identity-request
                                       :output
                                       delete-slack-user-identity-result
                                       :errors
                                       (delete-slack-user-identity-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/delete-slack-user-identity" :code 204)

(smithy/sdk/operation:define-operation delete-slack-workspace-authorization
                                       :shape-name
                                       "DeleteSlackWorkspaceAuthorization"
                                       :input
                                       delete-slack-workspace-authorization-request
                                       :output
                                       delete-slack-workspace-authorization-result
                                       :errors
                                       (delete-slack-workspace-authorization-fault
                                        invalid-parameter-exception)
                                       :method "POST" :uri
                                       "/delete-slack-workspace-authorization"
                                       :code 204)

(smithy/sdk/operation:define-operation describe-chime-webhook-configurations
                                       :shape-name
                                       "DescribeChimeWebhookConfigurations"
                                       :input
                                       describe-chime-webhook-configurations-request
                                       :output
                                       describe-chime-webhook-configurations-result
                                       :errors
                                       (describe-chime-webhook-configurations-exception
                                        invalid-parameter-exception
                                        invalid-request-exception)
                                       :method "POST" :uri
                                       "/describe-chime-webhook-configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-slack-channel-configurations
                                       :shape-name
                                       "DescribeSlackChannelConfigurations"
                                       :input
                                       describe-slack-channel-configurations-request
                                       :output
                                       describe-slack-channel-configurations-result
                                       :errors
                                       (describe-slack-channel-configurations-exception
                                        invalid-parameter-exception
                                        invalid-request-exception)
                                       :method "POST" :uri
                                       "/describe-slack-channel-configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-slack-user-identities
                                       :shape-name
                                       "DescribeSlackUserIdentities" :input
                                       describe-slack-user-identities-request
                                       :output
                                       describe-slack-user-identities-result
                                       :errors
                                       (describe-slack-user-identities-exception
                                        invalid-parameter-exception
                                        invalid-request-exception)
                                       :method "POST" :uri
                                       "/describe-slack-user-identities" :code
                                       200)

(smithy/sdk/operation:define-operation describe-slack-workspaces :shape-name
                                       "DescribeSlackWorkspaces" :input
                                       describe-slack-workspaces-request
                                       :output describe-slack-workspaces-result
                                       :errors
                                       (describe-slack-workspaces-exception
                                        invalid-parameter-exception
                                        invalid-request-exception)
                                       :method "POST" :uri
                                       "/describe-slack-workspaces" :code 200)

(smithy/sdk/operation:define-operation disassociate-from-configuration
                                       :shape-name
                                       "DisassociateFromConfiguration" :input
                                       disassociate-from-configuration-request
                                       :output
                                       disassociate-from-configuration-result
                                       :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/disassociate-from-configuration" :code
                                       204)

(smithy/sdk/operation:define-operation get-account-preferences :shape-name
                                       "GetAccountPreferences" :input
                                       get-account-preferences-request :output
                                       get-account-preferences-result :errors
                                       (get-account-preferences-exception
                                        invalid-request-exception)
                                       :method "POST" :uri
                                       "/get-account-preferences" :code 200)

(smithy/sdk/operation:define-operation get-custom-action :shape-name
                                       "GetCustomAction" :input
                                       get-custom-action-request :output
                                       get-custom-action-result :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/get-custom-action"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-microsoft-teams-channel-configuration :shape-name
 "GetMicrosoftTeamsChannelConfiguration" :input
 get-teams-channel-configuration-request :output
 get-teams-channel-configuration-result :errors
 (get-teams-channel-configuration-exception invalid-parameter-exception
  invalid-request-exception)
 :method "POST" :uri "/get-ms-teams-channel-configuration" :code 200)

(smithy/sdk/operation:define-operation list-associations :shape-name
                                       "ListAssociations" :input
                                       list-associations-request :output
                                       list-associations-result :errors
                                       common-lisp:nil :method "POST" :uri
                                       "/list-associations" :code 200)

(smithy/sdk/operation:define-operation list-custom-actions :shape-name
                                       "ListCustomActions" :input
                                       list-custom-actions-request :output
                                       list-custom-actions-result :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/list-custom-actions" :code 200)

(smithy/sdk/operation:define-operation
 list-microsoft-teams-channel-configurations :shape-name
 "ListMicrosoftTeamsChannelConfigurations" :input
 list-teams-channel-configurations-request :output
 list-teams-channel-configurations-result :errors
 (invalid-parameter-exception invalid-request-exception
  list-teams-channel-configurations-exception)
 :method "POST" :uri "/list-ms-teams-channel-configurations" :code 200)

(smithy/sdk/operation:define-operation list-microsoft-teams-configured-teams
                                       :shape-name
                                       "ListMicrosoftTeamsConfiguredTeams"
                                       :input
                                       list-microsoft-teams-configured-teams-request
                                       :output
                                       list-microsoft-teams-configured-teams-result
                                       :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        list-microsoft-teams-configured-teams-exception)
                                       :method "POST" :uri
                                       "/list-ms-teams-configured-teams" :code
                                       200)

(smithy/sdk/operation:define-operation list-microsoft-teams-user-identities
                                       :shape-name
                                       "ListMicrosoftTeamsUserIdentities"
                                       :input
                                       list-microsoft-teams-user-identities-request
                                       :output
                                       list-microsoft-teams-user-identities-result
                                       :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        list-microsoft-teams-user-identities-exception)
                                       :method "POST" :uri
                                       "/list-ms-teams-user-identities" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-service-error
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/list-tags-for-resource" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-service-error
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        too-many-tags-exception)
                                       :method "POST" :uri "/tag-resource"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-service-error
                                        resource-not-found-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/untag-resource"
                                       :code 200)

(smithy/sdk/operation:define-operation update-account-preferences :shape-name
                                       "UpdateAccountPreferences" :input
                                       update-account-preferences-request
                                       :output
                                       update-account-preferences-result
                                       :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        update-account-preferences-exception)
                                       :method "POST" :uri
                                       "/update-account-preferences" :code 200)

(smithy/sdk/operation:define-operation update-chime-webhook-configuration
                                       :shape-name
                                       "UpdateChimeWebhookConfiguration" :input
                                       update-chime-webhook-configuration-request
                                       :output
                                       update-chime-webhook-configuration-result
                                       :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        update-chime-webhook-configuration-exception)
                                       :method "POST" :uri
                                       "/update-chime-webhook-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation update-custom-action :shape-name
                                       "UpdateCustomAction" :input
                                       update-custom-action-request :output
                                       update-custom-action-result :errors
                                       (internal-service-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/update-custom-action" :code 200)

(smithy/sdk/operation:define-operation
 update-microsoft-teams-channel-configuration :shape-name
 "UpdateMicrosoftTeamsChannelConfiguration" :input
 update-teams-channel-configuration-request :output
 update-teams-channel-configuration-result :errors
 (invalid-parameter-exception invalid-request-exception
  resource-not-found-exception update-teams-channel-configuration-exception)
 :method "POST" :uri "/update-ms-teams-channel-configuration" :code 200)

(smithy/sdk/operation:define-operation update-slack-channel-configuration
                                       :shape-name
                                       "UpdateSlackChannelConfiguration" :input
                                       update-slack-channel-configuration-request
                                       :output
                                       update-slack-channel-configuration-result
                                       :errors
                                       (invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        update-slack-channel-configuration-exception)
                                       :method "POST" :uri
                                       "/update-slack-channel-configuration"
                                       :code 200)
