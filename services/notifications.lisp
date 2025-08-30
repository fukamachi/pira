(uiop/package:define-package #:pira/notifications (:use)
                             (:export #:access-denied-exception #:access-status
                              #:account-contact-type #:account-id
                              #:aggregated-notification-regions
                              #:aggregation-detail #:aggregation-duration
                              #:aggregation-event-type #:aggregation-key
                              #:aggregation-keys #:aggregation-summary #:arn
                              #:associate-channel
                              #:associate-managed-notification-account-contact
                              #:associate-managed-notification-additional-channel
                              #:channel #:channel-arn
                              #:channel-association-override-option
                              #:channel-identifier #:channel-type #:channels
                              #:conflict-exception #:create-event-rule
                              #:create-notification-configuration
                              #:creation-time #:delete-event-rule
                              #:delete-notification-configuration
                              #:deregister-notification-hub #:dimension
                              #:dimensions
                              #:disable-notifications-access-for-organization
                              #:disassociate-channel
                              #:disassociate-managed-notification-account-contact
                              #:disassociate-managed-notification-additional-channel
                              #:enable-notifications-access-for-organization
                              #:error-message #:event-rule #:event-rule-arn
                              #:event-rule-event-pattern #:event-rule-status
                              #:event-rule-status-reason
                              #:event-rule-status-summary
                              #:event-rule-structure #:event-rules
                              #:event-status #:event-type #:get-event-rule
                              #:get-managed-notification-child-event
                              #:get-managed-notification-configuration
                              #:get-managed-notification-event
                              #:get-notification-configuration
                              #:get-notification-event
                              #:get-notifications-access-for-organization
                              #:internal-server-exception
                              #:last-activation-time #:list-channels
                              #:list-event-rules
                              #:list-managed-notification-channel-associations
                              #:list-managed-notification-child-events
                              #:list-managed-notification-configurations
                              #:list-managed-notification-events
                              #:list-notification-configurations
                              #:list-notification-events
                              #:list-notification-hubs #:list-tags-for-resource
                              #:locale-code
                              #:managed-notification-account-contact-association
                              #:managed-notification-additional-channel-association
                              #:managed-notification-channel-association-summary
                              #:managed-notification-channel-associations
                              #:managed-notification-child-event
                              #:managed-notification-child-event-arn
                              #:managed-notification-child-event-overview
                              #:managed-notification-child-event-resource
                              #:managed-notification-child-event-summary
                              #:managed-notification-child-events
                              #:managed-notification-configuration
                              #:managed-notification-configuration-description
                              #:managed-notification-configuration-name
                              #:managed-notification-configuration-os-arn
                              #:managed-notification-configuration-structure
                              #:managed-notification-configurations
                              #:managed-notification-event
                              #:managed-notification-event-arn
                              #:managed-notification-event-overview
                              #:managed-notification-event-resource
                              #:managed-notification-event-summary
                              #:managed-notification-events #:managed-rule-arn
                              #:managed-rule-arns
                              #:managed-source-event-metadata-summary #:media
                              #:media-element #:media-element-type #:media-id
                              #:message-components #:message-components-summary
                              #:next-token #:notification-configuration
                              #:notification-configuration-arn
                              #:notification-configuration-description
                              #:notification-configuration-name
                              #:notification-configuration-status
                              #:notification-configuration-structure
                              #:notification-configurations
                              #:notification-event-arn #:notification-event-id
                              #:notification-event-overview
                              #:notification-event-resource
                              #:notification-event-schema
                              #:notification-event-summary
                              #:notification-events #:notification-hub
                              #:notification-hub-overview
                              #:notification-hub-status
                              #:notification-hub-status-reason
                              #:notification-hub-status-summary
                              #:notification-hubs #:notification-type
                              #:notifications
                              #:notifications-access-for-organization
                              #:organization-access #:organizational-unit-id
                              #:quota-code #:region #:regions
                              #:register-notification-hub #:resource
                              #:resource-id #:resource-not-found-exception
                              #:resource-type #:resources
                              #:sample-aggregation-dimension-values
                              #:schema-version #:service-code
                              #:service-quota-exceeded-exception #:source
                              #:source-event-metadata
                              #:source-event-metadata-summary
                              #:status-summary-by-region
                              #:summarization-dimension-detail
                              #:summarization-dimension-details
                              #:summarization-dimension-overview
                              #:summarization-dimension-overviews #:tag-key
                              #:tag-keys #:tag-map #:tag-resource #:tag-value
                              #:tags #:text-by-locale #:text-part-id
                              #:text-part-reference #:text-part-type
                              #:text-part-value #:text-parts
                              #:throttling-exception #:untag-resource
                              #:update-event-rule
                              #:update-notification-configuration #:url
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason
                              #:notifications-error))
(common-lisp:in-package #:pira/notifications)

(common-lisp:define-condition notifications-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service notifications :shape-name "Notifications"
                                   :version "2018-05-10" :title
                                   "AWS User Notifications" :operations
                                   '(list-managed-notification-channel-associations
                                     list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Notifications")
                                      ("arnNamespace" . "notifications")
                                      ("endpointPrefix" . "notifications")
                                      ("cloudTrailEventSource"
                                       . "notifications.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "notifications"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardRegionalEndpoints")
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class notifications-error))

(smithy/sdk/shapes:define-enum access-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-type account-contact-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aggregated-notification-regions :member region)

(smithy/sdk/shapes:define-structure aggregation-detail common-lisp:nil
                                    ((summarization-dimensions :target-type
                                      summarization-dimension-details
                                      :member-name "summarizationDimensions"))
                                    (:shape-name "AggregationDetail"))

(smithy/sdk/shapes:define-type aggregation-duration
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aggregation-event-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aggregation-key common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "AggregationKey"))

(smithy/sdk/shapes:define-list aggregation-keys :member aggregation-key)

(smithy/sdk/shapes:define-structure aggregation-summary common-lisp:nil
                                    ((event-count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "eventCount")
                                     (aggregated-by :target-type
                                      aggregation-keys :required common-lisp:t
                                      :member-name "aggregatedBy")
                                     (aggregated-accounts :target-type
                                      summarization-dimension-overview
                                      :required common-lisp:t :member-name
                                      "aggregatedAccounts")
                                     (aggregated-regions :target-type
                                      summarization-dimension-overview
                                      :required common-lisp:t :member-name
                                      "aggregatedRegions")
                                     (aggregated-organizational-units
                                      :target-type
                                      summarization-dimension-overview
                                      :member-name
                                      "aggregatedOrganizationalUnits")
                                     (additional-summarization-dimensions
                                      :target-type
                                      summarization-dimension-overviews
                                      :member-name
                                      "additionalSummarizationDimensions"))
                                    (:shape-name "AggregationSummary"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-channel-request common-lisp:nil
                                ((arn :target-type channel-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t)
                                 (notification-configuration-arn :target-type
                                  notification-configuration-arn :required
                                  common-lisp:t :member-name
                                  "notificationConfigurationArn"))
                                (:shape-name "AssociateChannelRequest"))

(smithy/sdk/shapes:define-output associate-channel-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AssociateChannelResponse"))

(smithy/sdk/shapes:define-input
 associate-managed-notification-account-contact-request common-lisp:nil
 ((contact-identifier :target-type account-contact-type :required common-lisp:t
   :member-name "contactIdentifier" :http-label common-lisp:t)
  (managed-notification-configuration-arn :target-type
   managed-notification-configuration-os-arn :required common-lisp:t
   :member-name "managedNotificationConfigurationArn"))
 (:shape-name "AssociateManagedNotificationAccountContactRequest"))

(smithy/sdk/shapes:define-output
 associate-managed-notification-account-contact-response common-lisp:nil
 common-lisp:nil
 (:shape-name "AssociateManagedNotificationAccountContactResponse"))

(smithy/sdk/shapes:define-input
 associate-managed-notification-additional-channel-request common-lisp:nil
 ((channel-arn :target-type channel-arn :required common-lisp:t :member-name
   "channelArn" :http-label common-lisp:t)
  (managed-notification-configuration-arn :target-type
   managed-notification-configuration-os-arn :required common-lisp:t
   :member-name "managedNotificationConfigurationArn"))
 (:shape-name "AssociateManagedNotificationAdditionalChannelRequest"))

(smithy/sdk/shapes:define-output
 associate-managed-notification-additional-channel-response common-lisp:nil
 common-lisp:nil
 (:shape-name "AssociateManagedNotificationAdditionalChannelResponse"))

common-lisp:nil

(smithy/sdk/shapes:define-type channel-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type channel-association-override-option
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type channel-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type channel-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list channels :member channel-arn)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class notifications-error))

(smithy/sdk/shapes:define-input create-event-rule-request common-lisp:nil
                                ((notification-configuration-arn :target-type
                                  notification-configuration-arn :required
                                  common-lisp:t :member-name
                                  "notificationConfigurationArn")
                                 (source :target-type source :required
                                  common-lisp:t :member-name "source")
                                 (event-type :target-type event-type :required
                                  common-lisp:t :member-name "eventType")
                                 (event-pattern :target-type
                                  event-rule-event-pattern :member-name
                                  "eventPattern")
                                 (regions :target-type regions :required
                                  common-lisp:t :member-name "regions"))
                                (:shape-name "CreateEventRuleRequest"))

(smithy/sdk/shapes:define-output create-event-rule-response common-lisp:nil
                                 ((arn :target-type event-rule-arn :required
                                   common-lisp:t :member-name "arn")
                                  (notification-configuration-arn :target-type
                                   notification-configuration-arn :required
                                   common-lisp:t :member-name
                                   "notificationConfigurationArn")
                                  (status-summary-by-region :target-type
                                   status-summary-by-region :required
                                   common-lisp:t :member-name
                                   "statusSummaryByRegion"))
                                 (:shape-name "CreateEventRuleResponse"))

(smithy/sdk/shapes:define-input create-notification-configuration-request
                                common-lisp:nil
                                ((name :target-type
                                  notification-configuration-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type
                                  notification-configuration-description
                                  :required common-lisp:t :member-name
                                  "description")
                                 (aggregation-duration :target-type
                                  aggregation-duration :member-name
                                  "aggregationDuration")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateNotificationConfigurationRequest"))

(smithy/sdk/shapes:define-output create-notification-configuration-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   notification-configuration-arn :required
                                   common-lisp:t :member-name "arn")
                                  (status :target-type
                                   notification-configuration-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name
                                  "CreateNotificationConfigurationResponse"))

(smithy/sdk/shapes:define-type creation-time smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-input delete-event-rule-request common-lisp:nil
                                ((arn :target-type event-rule-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteEventRuleRequest"))

(smithy/sdk/shapes:define-output delete-event-rule-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEventRuleResponse"))

(smithy/sdk/shapes:define-input delete-notification-configuration-request
                                common-lisp:nil
                                ((arn :target-type
                                  notification-configuration-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteNotificationConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-notification-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteNotificationConfigurationResponse"))

(smithy/sdk/shapes:define-input deregister-notification-hub-request
                                common-lisp:nil
                                ((notification-hub-region :target-type region
                                  :required common-lisp:t :member-name
                                  "notificationHubRegion" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeregisterNotificationHubRequest"))

(smithy/sdk/shapes:define-output deregister-notification-hub-response
                                 common-lisp:nil
                                 ((notification-hub-region :target-type region
                                   :required common-lisp:t :member-name
                                   "notificationHubRegion")
                                  (status-summary :target-type
                                   notification-hub-status-summary :required
                                   common-lisp:t :member-name "statusSummary"))
                                 (:shape-name
                                  "DeregisterNotificationHubResponse"))

(smithy/sdk/shapes:define-structure dimension common-lisp:nil
                                    ((name :target-type text-part-reference
                                      :required common-lisp:t :member-name
                                      "name")
                                     (value :target-type text-part-reference
                                      :required common-lisp:t :member-name
                                      "value"))
                                    (:shape-name "Dimension"))

(smithy/sdk/shapes:define-list dimensions :member dimension)

(smithy/sdk/shapes:define-input
 disable-notifications-access-for-organization-request common-lisp:nil
 common-lisp:nil
 (:shape-name "DisableNotificationsAccessForOrganizationRequest"))

(smithy/sdk/shapes:define-output
 disable-notifications-access-for-organization-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DisableNotificationsAccessForOrganizationResponse"))

(smithy/sdk/shapes:define-input disassociate-channel-request common-lisp:nil
                                ((arn :target-type channel-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t)
                                 (notification-configuration-arn :target-type
                                  notification-configuration-arn :required
                                  common-lisp:t :member-name
                                  "notificationConfigurationArn"))
                                (:shape-name "DisassociateChannelRequest"))

(smithy/sdk/shapes:define-output disassociate-channel-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisassociateChannelResponse"))

(smithy/sdk/shapes:define-input
 disassociate-managed-notification-account-contact-request common-lisp:nil
 ((contact-identifier :target-type account-contact-type :required common-lisp:t
   :member-name "contactIdentifier" :http-label common-lisp:t)
  (managed-notification-configuration-arn :target-type
   managed-notification-configuration-os-arn :required common-lisp:t
   :member-name "managedNotificationConfigurationArn"))
 (:shape-name "DisassociateManagedNotificationAccountContactRequest"))

(smithy/sdk/shapes:define-output
 disassociate-managed-notification-account-contact-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DisassociateManagedNotificationAccountContactResponse"))

(smithy/sdk/shapes:define-input
 disassociate-managed-notification-additional-channel-request common-lisp:nil
 ((channel-arn :target-type channel-arn :required common-lisp:t :member-name
   "channelArn" :http-label common-lisp:t)
  (managed-notification-configuration-arn :target-type
   managed-notification-configuration-os-arn :required common-lisp:t
   :member-name "managedNotificationConfigurationArn"))
 (:shape-name "DisassociateManagedNotificationAdditionalChannelRequest"))

(smithy/sdk/shapes:define-output
 disassociate-managed-notification-additional-channel-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DisassociateManagedNotificationAdditionalChannelResponse"))

(smithy/sdk/shapes:define-input
 enable-notifications-access-for-organization-request common-lisp:nil
 common-lisp:nil
 (:shape-name "EnableNotificationsAccessForOrganizationRequest"))

(smithy/sdk/shapes:define-output
 enable-notifications-access-for-organization-response common-lisp:nil
 common-lisp:nil
 (:shape-name "EnableNotificationsAccessForOrganizationResponse"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type event-rule-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-rule-event-pattern
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-rule-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-rule-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-rule-status-summary common-lisp:nil
                                    ((status :target-type event-rule-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (reason :target-type
                                      event-rule-status-reason :required
                                      common-lisp:t :member-name "reason"))
                                    (:shape-name "EventRuleStatusSummary"))

(smithy/sdk/shapes:define-structure event-rule-structure common-lisp:nil
                                    ((arn :target-type event-rule-arn :required
                                      common-lisp:t :member-name "arn")
                                     (notification-configuration-arn
                                      :target-type
                                      notification-configuration-arn :required
                                      common-lisp:t :member-name
                                      "notificationConfigurationArn")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (source :target-type source :required
                                      common-lisp:t :member-name "source")
                                     (event-type :target-type event-type
                                      :required common-lisp:t :member-name
                                      "eventType")
                                     (event-pattern :target-type
                                      event-rule-event-pattern :required
                                      common-lisp:t :member-name
                                      "eventPattern")
                                     (regions :target-type regions :required
                                      common-lisp:t :member-name "regions")
                                     (managed-rules :target-type
                                      managed-rule-arns :required common-lisp:t
                                      :member-name "managedRules")
                                     (status-summary-by-region :target-type
                                      status-summary-by-region :required
                                      common-lisp:t :member-name
                                      "statusSummaryByRegion"))
                                    (:shape-name "EventRuleStructure"))

(smithy/sdk/shapes:define-list event-rules :member event-rule-structure)

(smithy/sdk/shapes:define-type event-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-event-rule-request common-lisp:nil
                                ((arn :target-type event-rule-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetEventRuleRequest"))

(smithy/sdk/shapes:define-output get-event-rule-response common-lisp:nil
                                 ((arn :target-type event-rule-arn :required
                                   common-lisp:t :member-name "arn")
                                  (notification-configuration-arn :target-type
                                   notification-configuration-arn :required
                                   common-lisp:t :member-name
                                   "notificationConfigurationArn")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (source :target-type source :required
                                   common-lisp:t :member-name "source")
                                  (event-type :target-type event-type :required
                                   common-lisp:t :member-name "eventType")
                                  (event-pattern :target-type
                                   event-rule-event-pattern :required
                                   common-lisp:t :member-name "eventPattern")
                                  (regions :target-type regions :required
                                   common-lisp:t :member-name "regions")
                                  (managed-rules :target-type managed-rule-arns
                                   :required common-lisp:t :member-name
                                   "managedRules")
                                  (status-summary-by-region :target-type
                                   status-summary-by-region :required
                                   common-lisp:t :member-name
                                   "statusSummaryByRegion"))
                                 (:shape-name "GetEventRuleResponse"))

(smithy/sdk/shapes:define-input get-managed-notification-child-event-request
                                common-lisp:nil
                                ((arn :target-type
                                  managed-notification-child-event-arn
                                  :required common-lisp:t :member-name "arn"
                                  :http-label common-lisp:t)
                                 (locale :target-type locale-code :member-name
                                  "locale" :http-query "locale"))
                                (:shape-name
                                 "GetManagedNotificationChildEventRequest"))

(smithy/sdk/shapes:define-output get-managed-notification-child-event-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   managed-notification-child-event-arn
                                   :required common-lisp:t :member-name "arn")
                                  (managed-notification-configuration-arn
                                   :target-type
                                   managed-notification-configuration-os-arn
                                   :required common-lisp:t :member-name
                                   "managedNotificationConfigurationArn")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (content :target-type
                                   managed-notification-child-event :required
                                   common-lisp:t :member-name "content"))
                                 (:shape-name
                                  "GetManagedNotificationChildEventResponse"))

(smithy/sdk/shapes:define-input get-managed-notification-configuration-request
                                common-lisp:nil
                                ((arn :target-type
                                  managed-notification-configuration-os-arn
                                  :required common-lisp:t :member-name "arn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetManagedNotificationConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-managed-notification-configuration-response common-lisp:nil
 ((arn :target-type managed-notification-configuration-os-arn :required
   common-lisp:t :member-name "arn")
  (name :target-type managed-notification-configuration-name :required
   common-lisp:t :member-name "name")
  (description :target-type managed-notification-configuration-description
   :required common-lisp:t :member-name "description")
  (category :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "category")
  (sub-category :target-type smithy/sdk/smithy-types:string :required
   common-lisp:t :member-name "subCategory"))
 (:shape-name "GetManagedNotificationConfigurationResponse"))

(smithy/sdk/shapes:define-input get-managed-notification-event-request
                                common-lisp:nil
                                ((arn :target-type
                                  managed-notification-event-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t)
                                 (locale :target-type locale-code :member-name
                                  "locale" :http-query "locale"))
                                (:shape-name
                                 "GetManagedNotificationEventRequest"))

(smithy/sdk/shapes:define-output get-managed-notification-event-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   managed-notification-event-arn :required
                                   common-lisp:t :member-name "arn")
                                  (managed-notification-configuration-arn
                                   :target-type
                                   managed-notification-configuration-os-arn
                                   :required common-lisp:t :member-name
                                   "managedNotificationConfigurationArn")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (content :target-type
                                   managed-notification-event :required
                                   common-lisp:t :member-name "content"))
                                 (:shape-name
                                  "GetManagedNotificationEventResponse"))

(smithy/sdk/shapes:define-input get-notification-configuration-request
                                common-lisp:nil
                                ((arn :target-type
                                  notification-configuration-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetNotificationConfigurationRequest"))

(smithy/sdk/shapes:define-output get-notification-configuration-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   notification-configuration-arn :required
                                   common-lisp:t :member-name "arn")
                                  (name :target-type
                                   notification-configuration-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type
                                   notification-configuration-description
                                   :required common-lisp:t :member-name
                                   "description")
                                  (status :target-type
                                   notification-configuration-status :required
                                   common-lisp:t :member-name "status")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (aggregation-duration :target-type
                                   aggregation-duration :member-name
                                   "aggregationDuration"))
                                 (:shape-name
                                  "GetNotificationConfigurationResponse"))

(smithy/sdk/shapes:define-input get-notification-event-request common-lisp:nil
                                ((arn :target-type notification-event-arn
                                  :required common-lisp:t :member-name "arn"
                                  :http-label common-lisp:t)
                                 (locale :target-type locale-code :member-name
                                  "locale" :http-query "locale"))
                                (:shape-name "GetNotificationEventRequest"))

(smithy/sdk/shapes:define-output get-notification-event-response
                                 common-lisp:nil
                                 ((arn :target-type notification-event-arn
                                   :required common-lisp:t :member-name "arn")
                                  (notification-configuration-arn :target-type
                                   notification-configuration-arn :required
                                   common-lisp:t :member-name
                                   "notificationConfigurationArn")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (content :target-type
                                   notification-event-schema :required
                                   common-lisp:t :member-name "content"))
                                 (:shape-name "GetNotificationEventResponse"))

(smithy/sdk/shapes:define-input
 get-notifications-access-for-organization-request common-lisp:nil
 common-lisp:nil (:shape-name "GetNotificationsAccessForOrganizationRequest"))

(smithy/sdk/shapes:define-output
 get-notifications-access-for-organization-response common-lisp:nil
 ((notifications-access-for-organization :target-type
   notifications-access-for-organization :required common-lisp:t :member-name
   "notificationsAccessForOrganization"))
 (:shape-name "GetNotificationsAccessForOrganizationResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class notifications-error))

(smithy/sdk/shapes:define-type last-activation-time
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-input list-channels-request common-lisp:nil
                                ((notification-configuration-arn :target-type
                                  notification-configuration-arn :required
                                  common-lisp:t :member-name
                                  "notificationConfigurationArn" :http-query
                                  "notificationConfigurationArn")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListChannelsRequest"))

(smithy/sdk/shapes:define-output list-channels-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (channels :target-type channels :required
                                   common-lisp:t :member-name "channels"))
                                 (:shape-name "ListChannelsResponse"))

(smithy/sdk/shapes:define-input list-event-rules-request common-lisp:nil
                                ((notification-configuration-arn :target-type
                                  notification-configuration-arn :required
                                  common-lisp:t :member-name
                                  "notificationConfigurationArn" :http-query
                                  "notificationConfigurationArn")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListEventRulesRequest"))

(smithy/sdk/shapes:define-output list-event-rules-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (event-rules :target-type event-rules
                                   :required common-lisp:t :member-name
                                   "eventRules"))
                                 (:shape-name "ListEventRulesResponse"))

(smithy/sdk/shapes:define-input
 list-managed-notification-channel-associations-request common-lisp:nil
 ((managed-notification-configuration-arn :target-type
   managed-notification-configuration-os-arn :required common-lisp:t
   :member-name "managedNotificationConfigurationArn" :http-query
   "managedNotificationConfigurationArn")
  (max-results :target-type smithy/sdk/smithy-types:integer :member-name
   "maxResults" :http-query "maxResults")
  (next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken"))
 (:shape-name "ListManagedNotificationChannelAssociationsRequest"))

(smithy/sdk/shapes:define-output
 list-managed-notification-channel-associations-response common-lisp:nil
 ((next-token :target-type next-token :member-name "nextToken")
  (channel-associations :target-type managed-notification-channel-associations
   :required common-lisp:t :member-name "channelAssociations"))
 (:shape-name "ListManagedNotificationChannelAssociationsResponse"))

(smithy/sdk/shapes:define-input list-managed-notification-child-events-request
                                common-lisp:nil
                                ((aggregate-managed-notification-event-arn
                                  :target-type managed-notification-event-arn
                                  :required common-lisp:t :member-name
                                  "aggregateManagedNotificationEventArn"
                                  :http-label common-lisp:t)
                                 (start-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "startTime" :http-query
                                  "startTime" :timestamp-format "date-time")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "endTime" :http-query "endTime"
                                  :timestamp-format "date-time")
                                 (locale :target-type locale-code :member-name
                                  "locale" :http-query "locale")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (related-account :target-type account-id
                                  :member-name "relatedAccount" :http-query
                                  "relatedAccount")
                                 (organizational-unit-id :target-type
                                  organizational-unit-id :member-name
                                  "organizationalUnitId" :http-query
                                  "organizationalUnitId")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListManagedNotificationChildEventsRequest"))

(smithy/sdk/shapes:define-output
 list-managed-notification-child-events-response common-lisp:nil
 ((next-token :target-type next-token :member-name "nextToken")
  (managed-notification-child-events :target-type
   managed-notification-child-events :required common-lisp:t :member-name
   "managedNotificationChildEvents"))
 (:shape-name "ListManagedNotificationChildEventsResponse"))

(smithy/sdk/shapes:define-input
 list-managed-notification-configurations-request common-lisp:nil
 ((channel-identifier :target-type channel-identifier :member-name
   "channelIdentifier" :http-query "channelIdentifier")
  (max-results :target-type smithy/sdk/smithy-types:integer :member-name
   "maxResults" :http-query "maxResults")
  (next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken"))
 (:shape-name "ListManagedNotificationConfigurationsRequest"))

(smithy/sdk/shapes:define-output
 list-managed-notification-configurations-response common-lisp:nil
 ((next-token :target-type next-token :member-name "nextToken")
  (managed-notification-configurations :target-type
   managed-notification-configurations :required common-lisp:t :member-name
   "managedNotificationConfigurations"))
 (:shape-name "ListManagedNotificationConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-managed-notification-events-request
                                common-lisp:nil
                                ((start-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "startTime" :http-query
                                  "startTime" :timestamp-format "date-time")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "endTime" :http-query "endTime"
                                  :timestamp-format "date-time")
                                 (locale :target-type locale-code :member-name
                                  "locale" :http-query "locale")
                                 (source :target-type source :member-name
                                  "source" :http-query "source")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (organizational-unit-id :target-type
                                  organizational-unit-id :member-name
                                  "organizationalUnitId" :http-query
                                  "organizationalUnitId")
                                 (related-account :target-type account-id
                                  :member-name "relatedAccount" :http-query
                                  "relatedAccount"))
                                (:shape-name
                                 "ListManagedNotificationEventsRequest"))

(smithy/sdk/shapes:define-output list-managed-notification-events-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (managed-notification-events :target-type
                                   managed-notification-events :required
                                   common-lisp:t :member-name
                                   "managedNotificationEvents"))
                                 (:shape-name
                                  "ListManagedNotificationEventsResponse"))

(smithy/sdk/shapes:define-input list-notification-configurations-request
                                common-lisp:nil
                                ((event-rule-source :target-type source
                                  :member-name "eventRuleSource" :http-query
                                  "eventRuleSource")
                                 (channel-arn :target-type channel-arn
                                  :member-name "channelArn" :http-query
                                  "channelArn")
                                 (status :target-type
                                  notification-configuration-status
                                  :member-name "status" :http-query "status")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListNotificationConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-notification-configurations-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (notification-configurations :target-type
                                   notification-configurations :required
                                   common-lisp:t :member-name
                                   "notificationConfigurations"))
                                 (:shape-name
                                  "ListNotificationConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-notification-events-request
                                common-lisp:nil
                                ((start-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "startTime" :http-query
                                  "startTime" :timestamp-format "date-time")
                                 (end-time :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "endTime" :http-query "endTime"
                                  :timestamp-format "date-time")
                                 (locale :target-type locale-code :member-name
                                  "locale" :http-query "locale")
                                 (source :target-type source :member-name
                                  "source" :http-query "source")
                                 (include-child-events :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "includeChildEvents" :http-query
                                  "includeChildEvents")
                                 (aggregate-notification-event-arn :target-type
                                  notification-event-arn :member-name
                                  "aggregateNotificationEventArn" :http-query
                                  "aggregateNotificationEventArn")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListNotificationEventsRequest"))

(smithy/sdk/shapes:define-output list-notification-events-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (notification-events :target-type
                                   notification-events :required common-lisp:t
                                   :member-name "notificationEvents"))
                                 (:shape-name "ListNotificationEventsResponse"))

(smithy/sdk/shapes:define-input list-notification-hubs-request common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListNotificationHubsRequest"))

(smithy/sdk/shapes:define-output list-notification-hubs-response
                                 common-lisp:nil
                                 ((notification-hubs :target-type
                                   notification-hubs :required common-lisp:t
                                   :member-name "notificationHubs")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListNotificationHubsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((arn :target-type
                                  notification-configuration-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type locale-code smithy/sdk/smithy-types:string)

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-structure
 managed-notification-channel-association-summary common-lisp:nil
 ((channel-identifier :target-type smithy/sdk/smithy-types:string :required
   common-lisp:t :member-name "channelIdentifier")
  (channel-type :target-type channel-type :required common-lisp:t :member-name
   "channelType")
  (override-option :target-type channel-association-override-option
   :member-name "overrideOption"))
 (:shape-name "ManagedNotificationChannelAssociationSummary"))

(smithy/sdk/shapes:define-list managed-notification-channel-associations
                               :member
                               managed-notification-channel-association-summary)

(smithy/sdk/shapes:define-structure managed-notification-child-event
                                    common-lisp:nil
                                    ((schema-version :target-type
                                      schema-version :required common-lisp:t
                                      :member-name "schemaVersion")
                                     (id :target-type notification-event-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (message-components :target-type
                                      message-components :required
                                      common-lisp:t :member-name
                                      "messageComponents")
                                     (source-event-detail-url :target-type url
                                      :member-name "sourceEventDetailUrl")
                                     (source-event-detail-url-display-text
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "sourceEventDetailUrlDisplayText")
                                     (notification-type :target-type
                                      notification-type :required common-lisp:t
                                      :member-name "notificationType")
                                     (event-status :target-type event-status
                                      :member-name "eventStatus")
                                     (aggregate-managed-notification-event-arn
                                      :target-type
                                      managed-notification-event-arn :required
                                      common-lisp:t :member-name
                                      "aggregateManagedNotificationEventArn")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startTime"
                                      :timestamp-format "date-time")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime" :timestamp-format
                                      "date-time")
                                     (text-parts :target-type text-parts
                                      :required common-lisp:t :member-name
                                      "textParts")
                                     (organizational-unit-id :target-type
                                      organizational-unit-id :member-name
                                      "organizationalUnitId")
                                     (aggregation-detail :target-type
                                      aggregation-detail :member-name
                                      "aggregationDetail"))
                                    (:shape-name
                                     "ManagedNotificationChildEvent"))

(smithy/sdk/shapes:define-type managed-notification-child-event-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure managed-notification-child-event-overview
                                    common-lisp:nil
                                    ((arn :target-type
                                      managed-notification-event-arn :required
                                      common-lisp:t :member-name "arn")
                                     (managed-notification-configuration-arn
                                      :target-type
                                      managed-notification-configuration-os-arn
                                      :required common-lisp:t :member-name
                                      "managedNotificationConfigurationArn")
                                     (related-account :target-type account-id
                                      :required common-lisp:t :member-name
                                      "relatedAccount")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (child-event :target-type
                                      managed-notification-child-event-summary
                                      :required common-lisp:t :member-name
                                      "childEvent")
                                     (aggregate-managed-notification-event-arn
                                      :target-type
                                      managed-notification-event-arn :required
                                      common-lisp:t :member-name
                                      "aggregateManagedNotificationEventArn")
                                     (organizational-unit-id :target-type
                                      organizational-unit-id :member-name
                                      "organizationalUnitId"))
                                    (:shape-name
                                     "ManagedNotificationChildEventOverview"))

common-lisp:nil

(smithy/sdk/shapes:define-structure managed-notification-child-event-summary
                                    common-lisp:nil
                                    ((schema-version :target-type
                                      schema-version :required common-lisp:t
                                      :member-name "schemaVersion")
                                     (source-event-metadata :target-type
                                      managed-source-event-metadata-summary
                                      :required common-lisp:t :member-name
                                      "sourceEventMetadata")
                                     (message-components :target-type
                                      message-components-summary :required
                                      common-lisp:t :member-name
                                      "messageComponents")
                                     (aggregation-detail :target-type
                                      aggregation-detail :required
                                      common-lisp:t :member-name
                                      "aggregationDetail")
                                     (event-status :target-type event-status
                                      :required common-lisp:t :member-name
                                      "eventStatus")
                                     (notification-type :target-type
                                      notification-type :required common-lisp:t
                                      :member-name "notificationType"))
                                    (:shape-name
                                     "ManagedNotificationChildEventSummary"))

(smithy/sdk/shapes:define-list managed-notification-child-events :member
                               managed-notification-child-event-overview)

common-lisp:nil

(smithy/sdk/shapes:define-type managed-notification-configuration-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type managed-notification-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type managed-notification-configuration-os-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 managed-notification-configuration-structure common-lisp:nil
 ((arn :target-type managed-notification-configuration-os-arn :required
   common-lisp:t :member-name "arn")
  (name :target-type managed-notification-configuration-name :required
   common-lisp:t :member-name "name")
  (description :target-type managed-notification-configuration-description
   :required common-lisp:t :member-name "description"))
 (:shape-name "ManagedNotificationConfigurationStructure"))

(smithy/sdk/shapes:define-list managed-notification-configurations :member
                               managed-notification-configuration-structure)

(smithy/sdk/shapes:define-structure managed-notification-event common-lisp:nil
                                    ((schema-version :target-type
                                      schema-version :required common-lisp:t
                                      :member-name "schemaVersion")
                                     (id :target-type notification-event-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (message-components :target-type
                                      message-components :required
                                      common-lisp:t :member-name
                                      "messageComponents")
                                     (source-event-detail-url :target-type url
                                      :member-name "sourceEventDetailUrl")
                                     (source-event-detail-url-display-text
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "sourceEventDetailUrlDisplayText")
                                     (notification-type :target-type
                                      notification-type :required common-lisp:t
                                      :member-name "notificationType")
                                     (event-status :target-type event-status
                                      :member-name "eventStatus")
                                     (aggregation-event-type :target-type
                                      aggregation-event-type :member-name
                                      "aggregationEventType")
                                     (aggregation-summary :target-type
                                      aggregation-summary :member-name
                                      "aggregationSummary")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startTime"
                                      :timestamp-format "date-time")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime" :timestamp-format
                                      "date-time")
                                     (text-parts :target-type text-parts
                                      :required common-lisp:t :member-name
                                      "textParts")
                                     (organizational-unit-id :target-type
                                      organizational-unit-id :member-name
                                      "organizationalUnitId"))
                                    (:shape-name "ManagedNotificationEvent"))

(smithy/sdk/shapes:define-type managed-notification-event-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure managed-notification-event-overview
                                    common-lisp:nil
                                    ((arn :target-type
                                      managed-notification-event-arn :required
                                      common-lisp:t :member-name "arn")
                                     (managed-notification-configuration-arn
                                      :target-type
                                      managed-notification-configuration-os-arn
                                      :required common-lisp:t :member-name
                                      "managedNotificationConfigurationArn")
                                     (related-account :target-type account-id
                                      :required common-lisp:t :member-name
                                      "relatedAccount")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (notification-event :target-type
                                      managed-notification-event-summary
                                      :required common-lisp:t :member-name
                                      "notificationEvent")
                                     (aggregation-event-type :target-type
                                      aggregation-event-type :member-name
                                      "aggregationEventType")
                                     (organizational-unit-id :target-type
                                      organizational-unit-id :member-name
                                      "organizationalUnitId")
                                     (aggregation-summary :target-type
                                      aggregation-summary :member-name
                                      "aggregationSummary")
                                     (aggregated-notification-regions
                                      :target-type
                                      aggregated-notification-regions
                                      :member-name
                                      "aggregatedNotificationRegions"))
                                    (:shape-name
                                     "ManagedNotificationEventOverview"))

common-lisp:nil

(smithy/sdk/shapes:define-structure managed-notification-event-summary
                                    common-lisp:nil
                                    ((schema-version :target-type
                                      schema-version :required common-lisp:t
                                      :member-name "schemaVersion")
                                     (source-event-metadata :target-type
                                      managed-source-event-metadata-summary
                                      :required common-lisp:t :member-name
                                      "sourceEventMetadata")
                                     (message-components :target-type
                                      message-components-summary :required
                                      common-lisp:t :member-name
                                      "messageComponents")
                                     (event-status :target-type event-status
                                      :required common-lisp:t :member-name
                                      "eventStatus")
                                     (notification-type :target-type
                                      notification-type :required common-lisp:t
                                      :member-name "notificationType"))
                                    (:shape-name
                                     "ManagedNotificationEventSummary"))

(smithy/sdk/shapes:define-list managed-notification-events :member
                               managed-notification-event-overview)

(smithy/sdk/shapes:define-type managed-rule-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list managed-rule-arns :member managed-rule-arn)

(smithy/sdk/shapes:define-structure managed-source-event-metadata-summary
                                    common-lisp:nil
                                    ((event-origin-region :target-type region
                                      :member-name "eventOriginRegion")
                                     (source :target-type source :required
                                      common-lisp:t :member-name "source")
                                     (event-type :target-type event-type
                                      :required common-lisp:t :member-name
                                      "eventType"))
                                    (:shape-name
                                     "ManagedSourceEventMetadataSummary"))

(smithy/sdk/shapes:define-list media :member media-element)

(smithy/sdk/shapes:define-structure media-element common-lisp:nil
                                    ((media-id :target-type media-id :required
                                      common-lisp:t :member-name "mediaId")
                                     (type :target-type media-element-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (url :target-type url :required
                                      common-lisp:t :member-name "url")
                                     (caption :target-type text-part-reference
                                      :required common-lisp:t :member-name
                                      "caption"))
                                    (:shape-name "MediaElement"))

(smithy/sdk/shapes:define-type media-element-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type media-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure message-components common-lisp:nil
                                    ((headline :target-type text-part-reference
                                      :member-name "headline")
                                     (paragraph-summary :target-type
                                      text-part-reference :member-name
                                      "paragraphSummary")
                                     (complete-description :target-type
                                      text-part-reference :member-name
                                      "completeDescription")
                                     (dimensions :target-type dimensions
                                      :member-name "dimensions"))
                                    (:shape-name "MessageComponents"))

(smithy/sdk/shapes:define-structure message-components-summary common-lisp:nil
                                    ((headline :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "headline"))
                                    (:shape-name "MessageComponentsSummary"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type notification-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type notification-configuration-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type notification-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type notification-configuration-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-configuration-structure
                                    common-lisp:nil
                                    ((arn :target-type
                                      notification-configuration-arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type
                                      notification-configuration-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      notification-configuration-description
                                      :required common-lisp:t :member-name
                                      "description")
                                     (status :target-type
                                      notification-configuration-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (aggregation-duration :target-type
                                      aggregation-duration :member-name
                                      "aggregationDuration"))
                                    (:shape-name
                                     "NotificationConfigurationStructure"))

(smithy/sdk/shapes:define-list notification-configurations :member
                               notification-configuration-structure)

(smithy/sdk/shapes:define-type notification-event-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type notification-event-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-event-overview common-lisp:nil
                                    ((arn :target-type notification-event-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (notification-configuration-arn
                                      :target-type
                                      notification-configuration-arn :required
                                      common-lisp:t :member-name
                                      "notificationConfigurationArn")
                                     (related-account :target-type account-id
                                      :required common-lisp:t :member-name
                                      "relatedAccount")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (notification-event :target-type
                                      notification-event-summary :required
                                      common-lisp:t :member-name
                                      "notificationEvent")
                                     (aggregation-event-type :target-type
                                      aggregation-event-type :member-name
                                      "aggregationEventType")
                                     (aggregate-notification-event-arn
                                      :target-type notification-event-arn
                                      :member-name
                                      "aggregateNotificationEventArn")
                                     (aggregation-summary :target-type
                                      aggregation-summary :member-name
                                      "aggregationSummary"))
                                    (:shape-name "NotificationEventOverview"))

common-lisp:nil

(smithy/sdk/shapes:define-structure notification-event-schema common-lisp:nil
                                    ((schema-version :target-type
                                      schema-version :required common-lisp:t
                                      :member-name "schemaVersion")
                                     (id :target-type notification-event-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (source-event-metadata :target-type
                                      source-event-metadata :required
                                      common-lisp:t :member-name
                                      "sourceEventMetadata")
                                     (message-components :target-type
                                      message-components :required
                                      common-lisp:t :member-name
                                      "messageComponents")
                                     (source-event-detail-url :target-type url
                                      :member-name "sourceEventDetailUrl")
                                     (source-event-detail-url-display-text
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "sourceEventDetailUrlDisplayText")
                                     (notification-type :target-type
                                      notification-type :required common-lisp:t
                                      :member-name "notificationType")
                                     (event-status :target-type event-status
                                      :member-name "eventStatus")
                                     (aggregation-event-type :target-type
                                      aggregation-event-type :member-name
                                      "aggregationEventType")
                                     (aggregate-notification-event-arn
                                      :target-type notification-event-arn
                                      :member-name
                                      "aggregateNotificationEventArn")
                                     (aggregation-summary :target-type
                                      aggregation-summary :member-name
                                      "aggregationSummary")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startTime"
                                      :timestamp-format "date-time")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime" :timestamp-format
                                      "date-time")
                                     (text-parts :target-type text-parts
                                      :required common-lisp:t :member-name
                                      "textParts")
                                     (media :target-type media :required
                                      common-lisp:t :member-name "media"))
                                    (:shape-name "NotificationEventSchema"))

(smithy/sdk/shapes:define-structure notification-event-summary common-lisp:nil
                                    ((schema-version :target-type
                                      schema-version :required common-lisp:t
                                      :member-name "schemaVersion")
                                     (source-event-metadata :target-type
                                      source-event-metadata-summary :required
                                      common-lisp:t :member-name
                                      "sourceEventMetadata")
                                     (message-components :target-type
                                      message-components-summary :required
                                      common-lisp:t :member-name
                                      "messageComponents")
                                     (event-status :target-type event-status
                                      :required common-lisp:t :member-name
                                      "eventStatus")
                                     (notification-type :target-type
                                      notification-type :required common-lisp:t
                                      :member-name "notificationType"))
                                    (:shape-name "NotificationEventSummary"))

(smithy/sdk/shapes:define-list notification-events :member
                               notification-event-overview)

common-lisp:nil

(smithy/sdk/shapes:define-structure notification-hub-overview common-lisp:nil
                                    ((notification-hub-region :target-type
                                      region :required common-lisp:t
                                      :member-name "notificationHubRegion")
                                     (status-summary :target-type
                                      notification-hub-status-summary :required
                                      common-lisp:t :member-name
                                      "statusSummary")
                                     (creation-time :target-type creation-time
                                      :required common-lisp:t :member-name
                                      "creationTime")
                                     (last-activation-time :target-type
                                      last-activation-time :member-name
                                      "lastActivationTime"))
                                    (:shape-name "NotificationHubOverview"))

(smithy/sdk/shapes:define-type notification-hub-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type notification-hub-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-hub-status-summary
                                    common-lisp:nil
                                    ((status :target-type
                                      notification-hub-status :required
                                      common-lisp:t :member-name "status")
                                     (reason :target-type
                                      notification-hub-status-reason :required
                                      common-lisp:t :member-name "reason"))
                                    (:shape-name
                                     "NotificationHubStatusSummary"))

(smithy/sdk/shapes:define-list notification-hubs :member
                               notification-hub-overview)

(smithy/sdk/shapes:define-type notification-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notifications-access-for-organization
                                    common-lisp:nil
                                    ((access-status :target-type access-status
                                      :required common-lisp:t :member-name
                                      "accessStatus"))
                                    (:shape-name
                                     "NotificationsAccessForOrganization"))

common-lisp:nil

(smithy/sdk/shapes:define-type organizational-unit-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quota-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list regions :member region)

(smithy/sdk/shapes:define-input register-notification-hub-request
                                common-lisp:nil
                                ((notification-hub-region :target-type region
                                  :required common-lisp:t :member-name
                                  "notificationHubRegion"))
                                (:shape-name "RegisterNotificationHubRequest"))

(smithy/sdk/shapes:define-output register-notification-hub-response
                                 common-lisp:nil
                                 ((notification-hub-region :target-type region
                                   :required common-lisp:t :member-name
                                   "notificationHubRegion")
                                  (status-summary :target-type
                                   notification-hub-status-summary :required
                                   common-lisp:t :member-name "statusSummary")
                                  (creation-time :target-type creation-time
                                   :required common-lisp:t :member-name
                                   "creationTime")
                                  (last-activation-time :target-type
                                   last-activation-time :member-name
                                   "lastActivationTime"))
                                 (:shape-name
                                  "RegisterNotificationHubResponse"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (arn :target-type arn :member-name "arn")
                                     (detail-url :target-type url :member-name
                                      "detailUrl")
                                     (tags :target-type tags :member-name
                                      "tags"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class notifications-error))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resources :member resource)

(smithy/sdk/shapes:define-list sample-aggregation-dimension-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schema-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId")
                                 (service-code :target-type service-code
                                  :member-name "serviceCode")
                                 (quota-code :target-type quota-code
                                  :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class notifications-error))

(smithy/sdk/shapes:define-type source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure source-event-metadata common-lisp:nil
                                    ((event-type-version :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "eventTypeVersion")
                                     (source-event-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "sourceEventId")
                                     (event-origin-region :target-type region
                                      :member-name "eventOriginRegion")
                                     (related-account :target-type account-id
                                      :required common-lisp:t :member-name
                                      "relatedAccount")
                                     (source :target-type source :required
                                      common-lisp:t :member-name "source")
                                     (event-occurrence-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "eventOccurrenceTime" :timestamp-format
                                      "date-time")
                                     (event-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "eventType")
                                     (related-resources :target-type resources
                                      :required common-lisp:t :member-name
                                      "relatedResources"))
                                    (:shape-name "SourceEventMetadata"))

(smithy/sdk/shapes:define-structure source-event-metadata-summary
                                    common-lisp:nil
                                    ((event-origin-region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "eventOriginRegion")
                                     (source :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "source")
                                     (event-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "eventType"))
                                    (:shape-name "SourceEventMetadataSummary"))

(smithy/sdk/shapes:define-map status-summary-by-region :key region :value
                              event-rule-status-summary)

(smithy/sdk/shapes:define-structure summarization-dimension-detail
                                    common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name
                                     "SummarizationDimensionDetail"))

(smithy/sdk/shapes:define-list summarization-dimension-details :member
                               summarization-dimension-detail)

(smithy/sdk/shapes:define-structure summarization-dimension-overview
                                    common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "count")
                                     (sample-values :target-type
                                      sample-aggregation-dimension-values
                                      :member-name "sampleValues"))
                                    (:shape-name
                                     "SummarizationDimensionOverview"))

(smithy/sdk/shapes:define-list summarization-dimension-overviews :member
                               summarization-dimension-overview)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((arn :target-type
                                  notification-configuration-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map text-by-locale :key locale-code :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type text-part-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type text-part-reference
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type text-part-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure text-part-value common-lisp:nil
                                    ((type :target-type text-part-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (display-text :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayText")
                                     (text-by-locale :target-type
                                      text-by-locale :member-name
                                      "textByLocale")
                                     (url :target-type url :member-name "url"))
                                    (:shape-name "TextPartValue"))

(smithy/sdk/shapes:define-map text-parts :key text-part-id :value
                              text-part-value)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type service-code
                                  :member-name "serviceCode")
                                 (quota-code :target-type quota-code
                                  :member-name "quotaCode")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class notifications-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((arn :target-type
                                  notification-configuration-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-event-rule-request common-lisp:nil
                                ((arn :target-type event-rule-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t)
                                 (event-pattern :target-type
                                  event-rule-event-pattern :member-name
                                  "eventPattern")
                                 (regions :target-type regions :member-name
                                  "regions"))
                                (:shape-name "UpdateEventRuleRequest"))

(smithy/sdk/shapes:define-output update-event-rule-response common-lisp:nil
                                 ((arn :target-type event-rule-arn :required
                                   common-lisp:t :member-name "arn")
                                  (notification-configuration-arn :target-type
                                   notification-configuration-arn :required
                                   common-lisp:t :member-name
                                   "notificationConfigurationArn")
                                  (status-summary-by-region :target-type
                                   status-summary-by-region :required
                                   common-lisp:t :member-name
                                   "statusSummaryByRegion"))
                                 (:shape-name "UpdateEventRuleResponse"))

(smithy/sdk/shapes:define-input update-notification-configuration-request
                                common-lisp:nil
                                ((arn :target-type
                                  notification-configuration-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t)
                                 (name :target-type
                                  notification-configuration-name :member-name
                                  "name")
                                 (description :target-type
                                  notification-configuration-description
                                  :member-name "description")
                                 (aggregation-duration :target-type
                                  aggregation-duration :member-name
                                  "aggregationDuration"))
                                (:shape-name
                                 "UpdateNotificationConfigurationRequest"))

(smithy/sdk/shapes:define-output update-notification-configuration-response
                                 common-lisp:nil
                                 ((arn :target-type
                                   notification-configuration-arn :required
                                   common-lisp:t :member-name "arn"))
                                 (:shape-name
                                  "UpdateNotificationConfigurationResponse"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class notifications-error))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-channel :shape-name
                                       "AssociateChannel" :input
                                       associate-channel-request :output
                                       associate-channel-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/channels/associate/{arn}" :code 201)

(smithy/sdk/operation:define-operation
 associate-managed-notification-account-contact :shape-name
 "AssociateManagedNotificationAccountContact" :input
 associate-managed-notification-account-contact-request :output
 associate-managed-notification-account-contact-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "PUT" :uri
 "/contacts/associate-managed-notification/{contactIdentifier}" :code 201)

(smithy/sdk/operation:define-operation
 associate-managed-notification-additional-channel :shape-name
 "AssociateManagedNotificationAdditionalChannel" :input
 associate-managed-notification-additional-channel-request :output
 associate-managed-notification-additional-channel-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "PUT" :uri "/channels/associate-managed-notification/{channelArn}"
 :code 201)

(smithy/sdk/operation:define-operation create-event-rule :shape-name
                                       "CreateEventRule" :input
                                       create-event-rule-request :output
                                       create-event-rule-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/event-rules" :code
                                       201)

(smithy/sdk/operation:define-operation create-notification-configuration
                                       :shape-name
                                       "CreateNotificationConfiguration" :input
                                       create-notification-configuration-request
                                       :output
                                       create-notification-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/notification-configurations" :code 201)

(smithy/sdk/operation:define-operation delete-event-rule :shape-name
                                       "DeleteEventRule" :input
                                       delete-event-rule-request :output
                                       delete-event-rule-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/event-rules/{arn}" :code 200)

(smithy/sdk/operation:define-operation delete-notification-configuration
                                       :shape-name
                                       "DeleteNotificationConfiguration" :input
                                       delete-notification-configuration-request
                                       :output
                                       delete-notification-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/notification-configurations/{arn}"
                                       :code 200)

(smithy/sdk/operation:define-operation deregister-notification-hub :shape-name
                                       "DeregisterNotificationHub" :input
                                       deregister-notification-hub-request
                                       :output
                                       deregister-notification-hub-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/notification-hubs/{notificationHubRegion}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 disable-notifications-access-for-organization :shape-name
 "DisableNotificationsAccessForOrganization" :input
 disable-notifications-access-for-organization-request :output
 disable-notifications-access-for-organization-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "DELETE" :uri "/organization/access" :code 200)

(smithy/sdk/operation:define-operation disassociate-channel :shape-name
                                       "DisassociateChannel" :input
                                       disassociate-channel-request :output
                                       disassociate-channel-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/channels/disassociate/{arn}" :code 200)

(smithy/sdk/operation:define-operation
 disassociate-managed-notification-account-contact :shape-name
 "DisassociateManagedNotificationAccountContact" :input
 disassociate-managed-notification-account-contact-request :output
 disassociate-managed-notification-account-contact-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "PUT" :uri
 "/contacts/disassociate-managed-notification/{contactIdentifier}" :code 200)

(smithy/sdk/operation:define-operation
 disassociate-managed-notification-additional-channel :shape-name
 "DisassociateManagedNotificationAdditionalChannel" :input
 disassociate-managed-notification-additional-channel-request :output
 disassociate-managed-notification-additional-channel-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "PUT" :uri "/channels/disassociate-managed-notification/{channelArn}"
 :code 200)

(smithy/sdk/operation:define-operation
 enable-notifications-access-for-organization :shape-name
 "EnableNotificationsAccessForOrganization" :input
 enable-notifications-access-for-organization-request :output
 enable-notifications-access-for-organization-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "POST" :uri "/organization/access" :code 200)

(smithy/sdk/operation:define-operation get-event-rule :shape-name
                                       "GetEventRule" :input
                                       get-event-rule-request :output
                                       get-event-rule-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/event-rules/{arn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-managed-notification-child-event
                                       :shape-name
                                       "GetManagedNotificationChildEvent"
                                       :input
                                       get-managed-notification-child-event-request
                                       :output
                                       get-managed-notification-child-event-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/managed-notification-child-events/{arn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-managed-notification-configuration
                                       :shape-name
                                       "GetManagedNotificationConfiguration"
                                       :input
                                       get-managed-notification-configuration-request
                                       :output
                                       get-managed-notification-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/managed-notification-configurations/{arn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-managed-notification-event
                                       :shape-name
                                       "GetManagedNotificationEvent" :input
                                       get-managed-notification-event-request
                                       :output
                                       get-managed-notification-event-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/managed-notification-events/{arn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-notification-configuration
                                       :shape-name
                                       "GetNotificationConfiguration" :input
                                       get-notification-configuration-request
                                       :output
                                       get-notification-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/notification-configurations/{arn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-notification-event :shape-name
                                       "GetNotificationEvent" :input
                                       get-notification-event-request :output
                                       get-notification-event-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/notification-events/{arn}" :code 200)

(smithy/sdk/operation:define-operation
 get-notifications-access-for-organization :shape-name
 "GetNotificationsAccessForOrganization" :input
 get-notifications-access-for-organization-request :output
 get-notifications-access-for-organization-response :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception)
 :method "GET" :uri "/organization/access" :code 200)

(smithy/sdk/operation:define-operation list-channels :shape-name "ListChannels"
                                       :input list-channels-request :output
                                       list-channels-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/channels" :code 200)

(smithy/sdk/operation:define-operation list-event-rules :shape-name
                                       "ListEventRules" :input
                                       list-event-rules-request :output
                                       list-event-rules-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/event-rules" :code
                                       200)

(smithy/sdk/operation:define-operation
 list-managed-notification-channel-associations :shape-name
 "ListManagedNotificationChannelAssociations" :input
 list-managed-notification-channel-associations-request :output
 list-managed-notification-channel-associations-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri "/channels/list-managed-notification-channel-associations"
 :code 200)

(smithy/sdk/operation:define-operation list-managed-notification-child-events
                                       :shape-name
                                       "ListManagedNotificationChildEvents"
                                       :input
                                       list-managed-notification-child-events-request
                                       :output
                                       list-managed-notification-child-events-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/list-managed-notification-child-events/{aggregateManagedNotificationEventArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-managed-notification-configurations
                                       :shape-name
                                       "ListManagedNotificationConfigurations"
                                       :input
                                       list-managed-notification-configurations-request
                                       :output
                                       list-managed-notification-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/managed-notification-configurations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-managed-notification-events
                                       :shape-name
                                       "ListManagedNotificationEvents" :input
                                       list-managed-notification-events-request
                                       :output
                                       list-managed-notification-events-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/managed-notification-events" :code 200)

(smithy/sdk/operation:define-operation list-notification-configurations
                                       :shape-name
                                       "ListNotificationConfigurations" :input
                                       list-notification-configurations-request
                                       :output
                                       list-notification-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/notification-configurations" :code 200)

(smithy/sdk/operation:define-operation list-notification-events :shape-name
                                       "ListNotificationEvents" :input
                                       list-notification-events-request :output
                                       list-notification-events-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/notification-events" :code 200)

(smithy/sdk/operation:define-operation list-notification-hubs :shape-name
                                       "ListNotificationHubs" :input
                                       list-notification-hubs-request :output
                                       list-notification-hubs-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/notification-hubs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{arn}")

(smithy/sdk/operation:define-operation register-notification-hub :shape-name
                                       "RegisterNotificationHub" :input
                                       register-notification-hub-request
                                       :output
                                       register-notification-hub-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/notification-hubs"
                                       :code 201)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/tags/{arn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/tags/{arn}")

(smithy/sdk/operation:define-operation update-event-rule :shape-name
                                       "UpdateEventRule" :input
                                       update-event-rule-request :output
                                       update-event-rule-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/event-rules/{arn}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-notification-configuration
                                       :shape-name
                                       "UpdateNotificationConfiguration" :input
                                       update-notification-configuration-request
                                       :output
                                       update-notification-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/notification-configurations/{arn}"
                                       :code 200)
