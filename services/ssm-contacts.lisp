(uiop/package:define-package #:pira/ssm-contacts (:use)
                             (:export #:accept-code #:accept-code-validation
                              #:accept-page #:accept-type
                              #:activate-contact-channel #:activation-code
                              #:activation-status #:amazon-resource-name
                              #:channel-name #:channel-target-info
                              #:channel-type #:contact #:contact-alias
                              #:contact-channel #:contact-channel-address
                              #:contact-channel-list #:contact-name
                              #:contact-target-info #:contact-type
                              #:contacts-list #:content #:coverage-time
                              #:coverage-times #:create-contact
                              #:create-contact-channel #:create-rotation
                              #:create-rotation-override #:daily-settings
                              #:date-time #:day-of-month #:day-of-week
                              #:deactivate-contact-channel #:defer-activation
                              #:delete-contact #:delete-contact-channel
                              #:delete-rotation #:delete-rotation-override
                              #:dependent-entity #:dependent-entity-list
                              #:describe-engagement #:describe-page
                              #:engagement #:engagements-list #:get-contact
                              #:get-contact-channel #:get-contact-policy
                              #:get-rotation #:get-rotation-override
                              #:hand-off-time #:hour-of-day #:idempotency-token
                              #:incident-id #:is-essential
                              #:list-contact-channels #:list-contacts
                              #:list-engagements #:list-page-receipts
                              #:list-page-resolutions #:list-pages-by-contact
                              #:list-pages-by-engagement
                              #:list-preview-rotation-shifts
                              #:list-rotation-overrides #:list-rotation-shifts
                              #:list-rotations #:list-tags-for-resource
                              #:max-results #:member #:minute-of-hour
                              #:monthly-setting #:monthly-settings
                              #:number-of-on-calls #:override-list #:page
                              #:pages-list #:pagination-token #:plan #:policy
                              #:preview-override #:public-content
                              #:public-subject #:put-contact-policy #:receipt
                              #:receipt-info #:receipt-type #:receipts-list
                              #:recurrence-multiplier #:recurrence-settings
                              #:resolution-contact #:resolution-list
                              #:retry-after-seconds #:retry-interval-in-minutes
                              #:rotation #:rotation-contacts-arn-list
                              #:rotation-name #:rotation-override
                              #:rotation-override-contacts-arn-list
                              #:rotation-override-preview-member-list
                              #:rotation-overrides
                              #:rotation-preview-member-list #:rotation-shift
                              #:rotation-shifts #:rotations #:ssmcontacts
                              #:send-activation-code #:sender
                              #:shift-coverages-map #:shift-details
                              #:shift-type #:simple-address #:ssm-contacts-arn
                              #:ssm-contacts-arn-list #:stage
                              #:stage-duration-in-mins #:stage-index
                              #:stages-list #:start-engagement
                              #:stop-engagement #:stop-reason #:string
                              #:subject #:tag #:tag-key #:tag-key-list
                              #:tag-resource #:tag-value #:tags-list #:target
                              #:targets-list #:time-range #:time-zone-id
                              #:untag-resource #:update-contact
                              #:update-contact-channel #:update-rotation #:uuid
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:weekly-setting
                              #:weekly-settings))
(common-lisp:in-package #:pira/ssm-contacts)

(smithy/sdk/service:define-service ssmcontacts :shape-name "SSMContacts"
                                   :version "2021-05-03" :title
                                   "AWS Systems Manager Incident Manager Contacts"
                                   :operations
                                   '(accept-page activate-contact-channel
                                     create-contact create-contact-channel
                                     create-rotation create-rotation-override
                                     deactivate-contact-channel delete-contact
                                     delete-contact-channel delete-rotation
                                     delete-rotation-override
                                     describe-engagement describe-page
                                     get-contact get-contact-channel
                                     get-contact-policy get-rotation
                                     get-rotation-override
                                     list-contact-channels list-contacts
                                     list-engagements list-page-receipts
                                     list-page-resolutions
                                     list-pages-by-contact
                                     list-pages-by-engagement
                                     list-preview-rotation-shifts
                                     list-rotation-overrides list-rotations
                                     list-rotation-shifts
                                     list-tags-for-resource put-contact-policy
                                     send-activation-code start-engagement
                                     stop-engagement tag-resource
                                     untag-resource update-contact
                                     update-contact-channel update-rotation)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "SSM Contacts")
                                      ("arnNamespace" . "ssm-contacts")
                                      ("cloudFormationName" . "SSMContacts")
                                      ("cloudTrailEventSource"
                                       . "ssmcontacts.amazonaws.com")
                                      ("endpointPrefix" . "ssm-contacts"))
                                     ("aws.auth#sigv4"
                                      ("name" . "ssm-contacts"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type accept-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum accept-code-validation
    common-lisp:nil
  (:ignore "IGNORE")
  (:enforce "ENFORCE"))

(smithy/sdk/shapes:define-input accept-page-request common-lisp:nil
                                ((page-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "PageId")
                                 (contact-channel-id :target-type
                                  ssm-contacts-arn :member-name
                                  "ContactChannelId")
                                 (accept-type :target-type accept-type
                                  :required common-lisp:t :member-name
                                  "AcceptType")
                                 (note :target-type receipt-info :member-name
                                  "Note")
                                 (accept-code :target-type accept-code
                                  :required common-lisp:t :member-name
                                  "AcceptCode")
                                 (accept-code-validation :target-type
                                  accept-code-validation :member-name
                                  "AcceptCodeValidation"))
                                (:shape-name "AcceptPageRequest"))

(smithy/sdk/shapes:define-output accept-page-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AcceptPageResult"))

(smithy/sdk/shapes:define-enum accept-type
    common-lisp:nil
  (:delivered "DELIVERED")
  (:read "READ"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input activate-contact-channel-request
                                common-lisp:nil
                                ((contact-channel-id :target-type
                                  ssm-contacts-arn :required common-lisp:t
                                  :member-name "ContactChannelId")
                                 (activation-code :target-type activation-code
                                  :required common-lisp:t :member-name
                                  "ActivationCode"))
                                (:shape-name "ActivateContactChannelRequest"))

(smithy/sdk/shapes:define-output activate-contact-channel-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "ActivateContactChannelResult"))

(smithy/sdk/shapes:define-type activation-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum activation-status
    common-lisp:nil
  (:activated "ACTIVATED")
  (:not-activated "NOT_ACTIVATED"))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type channel-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure channel-target-info common-lisp:nil
                                    ((contact-channel-id :target-type
                                      ssm-contacts-arn :required common-lisp:t
                                      :member-name "ContactChannelId")
                                     (retry-interval-in-minutes :target-type
                                      retry-interval-in-minutes :member-name
                                      "RetryIntervalInMinutes"))
                                    (:shape-name "ChannelTargetInfo"))

(smithy/sdk/shapes:define-enum channel-type
    common-lisp:nil
  (:sms "SMS")
  (:voice "VOICE")
  (:email "EMAIL"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "ResourceType")
                                 (dependent-entities :target-type
                                  dependent-entity-list :member-name
                                  "DependentEntities"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure contact common-lisp:nil
                                    ((contact-arn :target-type ssm-contacts-arn
                                      :required common-lisp:t :member-name
                                      "ContactArn")
                                     (alias :target-type contact-alias
                                      :required common-lisp:t :member-name
                                      "Alias")
                                     (display-name :target-type contact-name
                                      :member-name "DisplayName")
                                     (type :target-type contact-type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "Contact"))

(smithy/sdk/shapes:define-type contact-alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure contact-channel common-lisp:nil
                                    ((contact-channel-arn :target-type
                                      ssm-contacts-arn :required common-lisp:t
                                      :member-name "ContactChannelArn")
                                     (contact-arn :target-type ssm-contacts-arn
                                      :required common-lisp:t :member-name
                                      "ContactArn")
                                     (name :target-type channel-name :required
                                      common-lisp:t :member-name "Name")
                                     (type :target-type channel-type
                                      :member-name "Type")
                                     (delivery-address :target-type
                                      contact-channel-address :required
                                      common-lisp:t :member-name
                                      "DeliveryAddress")
                                     (activation-status :target-type
                                      activation-status :required common-lisp:t
                                      :member-name "ActivationStatus"))
                                    (:shape-name "ContactChannel"))

(smithy/sdk/shapes:define-structure contact-channel-address common-lisp:nil
                                    ((simple-address :target-type
                                      simple-address :member-name
                                      "SimpleAddress"))
                                    (:shape-name "ContactChannelAddress"))

(smithy/sdk/shapes:define-list contact-channel-list :member contact-channel)

(smithy/sdk/shapes:define-type contact-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure contact-target-info common-lisp:nil
                                    ((contact-id :target-type ssm-contacts-arn
                                      :member-name "ContactId")
                                     (is-essential :target-type is-essential
                                      :required common-lisp:t :member-name
                                      "IsEssential"))
                                    (:shape-name "ContactTargetInfo"))

(smithy/sdk/shapes:define-enum contact-type
    common-lisp:nil
  (:personal "PERSONAL")
  (:escalation "ESCALATION")
  (:oncall-schedule "ONCALL_SCHEDULE"))

(smithy/sdk/shapes:define-list contacts-list :member contact)

(smithy/sdk/shapes:define-type content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure coverage-time common-lisp:nil
                                    ((start :target-type hand-off-time
                                      :member-name "Start")
                                     (end :target-type hand-off-time
                                      :member-name "End"))
                                    (:shape-name "CoverageTime"))

(smithy/sdk/shapes:define-list coverage-times :member coverage-time)

(smithy/sdk/shapes:define-input create-contact-channel-request common-lisp:nil
                                ((contact-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "ContactId")
                                 (name :target-type channel-name :required
                                  common-lisp:t :member-name "Name")
                                 (type :target-type channel-type :required
                                  common-lisp:t :member-name "Type")
                                 (delivery-address :target-type
                                  contact-channel-address :required
                                  common-lisp:t :member-name "DeliveryAddress")
                                 (defer-activation :target-type
                                  defer-activation :member-name
                                  "DeferActivation")
                                 (idempotency-token :target-type
                                  idempotency-token :member-name
                                  "IdempotencyToken"))
                                (:shape-name "CreateContactChannelRequest"))

(smithy/sdk/shapes:define-output create-contact-channel-result common-lisp:nil
                                 ((contact-channel-arn :target-type
                                   ssm-contacts-arn :required common-lisp:t
                                   :member-name "ContactChannelArn"))
                                 (:shape-name "CreateContactChannelResult"))

(smithy/sdk/shapes:define-input create-contact-request common-lisp:nil
                                ((alias :target-type contact-alias :required
                                  common-lisp:t :member-name "Alias")
                                 (display-name :target-type contact-name
                                  :member-name "DisplayName")
                                 (type :target-type contact-type :required
                                  common-lisp:t :member-name "Type")
                                 (plan :target-type plan :required
                                  common-lisp:t :member-name "Plan")
                                 (tags :target-type tags-list :member-name
                                  "Tags")
                                 (idempotency-token :target-type
                                  idempotency-token :member-name
                                  "IdempotencyToken"))
                                (:shape-name "CreateContactRequest"))

(smithy/sdk/shapes:define-output create-contact-result common-lisp:nil
                                 ((contact-arn :target-type ssm-contacts-arn
                                   :required common-lisp:t :member-name
                                   "ContactArn"))
                                 (:shape-name "CreateContactResult"))

(smithy/sdk/shapes:define-input create-rotation-override-request
                                common-lisp:nil
                                ((rotation-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "RotationId")
                                 (new-contact-ids :target-type
                                  rotation-override-contacts-arn-list :required
                                  common-lisp:t :member-name "NewContactIds")
                                 (start-time :target-type date-time :required
                                  common-lisp:t :member-name "StartTime")
                                 (end-time :target-type date-time :required
                                  common-lisp:t :member-name "EndTime")
                                 (idempotency-token :target-type
                                  idempotency-token :member-name
                                  "IdempotencyToken"))
                                (:shape-name "CreateRotationOverrideRequest"))

(smithy/sdk/shapes:define-output create-rotation-override-result
                                 common-lisp:nil
                                 ((rotation-override-id :target-type uuid
                                   :required common-lisp:t :member-name
                                   "RotationOverrideId"))
                                 (:shape-name "CreateRotationOverrideResult"))

(smithy/sdk/shapes:define-input create-rotation-request common-lisp:nil
                                ((name :target-type rotation-name :required
                                  common-lisp:t :member-name "Name")
                                 (contact-ids :target-type
                                  rotation-contacts-arn-list :required
                                  common-lisp:t :member-name "ContactIds")
                                 (start-time :target-type date-time
                                  :member-name "StartTime")
                                 (time-zone-id :target-type time-zone-id
                                  :required common-lisp:t :member-name
                                  "TimeZoneId")
                                 (recurrence :target-type recurrence-settings
                                  :required common-lisp:t :member-name
                                  "Recurrence")
                                 (tags :target-type tags-list :member-name
                                  "Tags")
                                 (idempotency-token :target-type
                                  idempotency-token :member-name
                                  "IdempotencyToken"))
                                (:shape-name "CreateRotationRequest"))

(smithy/sdk/shapes:define-output create-rotation-result common-lisp:nil
                                 ((rotation-arn :target-type ssm-contacts-arn
                                   :required common-lisp:t :member-name
                                   "RotationArn"))
                                 (:shape-name "CreateRotationResult"))

(smithy/sdk/shapes:define-list daily-settings :member hand-off-time)

(smithy/sdk/shapes:define-error data-encryption-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "DataEncryptionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type day-of-month smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum day-of-week
    common-lisp:nil
  (:mon "MON")
  (:tue "TUE")
  (:wed "WED")
  (:thu "THU")
  (:fri "FRI")
  (:sat "SAT")
  (:sun "SUN"))

(smithy/sdk/shapes:define-input deactivate-contact-channel-request
                                common-lisp:nil
                                ((contact-channel-id :target-type
                                  ssm-contacts-arn :required common-lisp:t
                                  :member-name "ContactChannelId"))
                                (:shape-name "DeactivateContactChannelRequest"))

(smithy/sdk/shapes:define-output deactivate-contact-channel-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeactivateContactChannelResult"))

(smithy/sdk/shapes:define-type defer-activation smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input delete-contact-channel-request common-lisp:nil
                                ((contact-channel-id :target-type
                                  ssm-contacts-arn :required common-lisp:t
                                  :member-name "ContactChannelId"))
                                (:shape-name "DeleteContactChannelRequest"))

(smithy/sdk/shapes:define-output delete-contact-channel-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteContactChannelResult"))

(smithy/sdk/shapes:define-input delete-contact-request common-lisp:nil
                                ((contact-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "ContactId"))
                                (:shape-name "DeleteContactRequest"))

(smithy/sdk/shapes:define-output delete-contact-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteContactResult"))

(smithy/sdk/shapes:define-input delete-rotation-override-request
                                common-lisp:nil
                                ((rotation-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "RotationId")
                                 (rotation-override-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "RotationOverrideId"))
                                (:shape-name "DeleteRotationOverrideRequest"))

(smithy/sdk/shapes:define-output delete-rotation-override-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteRotationOverrideResult"))

(smithy/sdk/shapes:define-input delete-rotation-request common-lisp:nil
                                ((rotation-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "RotationId"))
                                (:shape-name "DeleteRotationRequest"))

(smithy/sdk/shapes:define-output delete-rotation-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteRotationResult"))

(smithy/sdk/shapes:define-structure dependent-entity common-lisp:nil
                                    ((relation-type :target-type string
                                      :required common-lisp:t :member-name
                                      "RelationType")
                                     (dependent-resource-ids :target-type
                                      ssm-contacts-arn-list :required
                                      common-lisp:t :member-name
                                      "DependentResourceIds"))
                                    (:shape-name "DependentEntity"))

(smithy/sdk/shapes:define-list dependent-entity-list :member dependent-entity)

(smithy/sdk/shapes:define-input describe-engagement-request common-lisp:nil
                                ((engagement-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "EngagementId"))
                                (:shape-name "DescribeEngagementRequest"))

(smithy/sdk/shapes:define-output describe-engagement-result common-lisp:nil
                                 ((contact-arn :target-type ssm-contacts-arn
                                   :required common-lisp:t :member-name
                                   "ContactArn")
                                  (engagement-arn :target-type ssm-contacts-arn
                                   :required common-lisp:t :member-name
                                   "EngagementArn")
                                  (sender :target-type sender :required
                                   common-lisp:t :member-name "Sender")
                                  (subject :target-type subject :required
                                   common-lisp:t :member-name "Subject")
                                  (content :target-type content :required
                                   common-lisp:t :member-name "Content")
                                  (public-subject :target-type public-subject
                                   :member-name "PublicSubject")
                                  (public-content :target-type public-content
                                   :member-name "PublicContent")
                                  (incident-id :target-type incident-id
                                   :member-name "IncidentId")
                                  (start-time :target-type date-time
                                   :member-name "StartTime")
                                  (stop-time :target-type date-time
                                   :member-name "StopTime"))
                                 (:shape-name "DescribeEngagementResult"))

(smithy/sdk/shapes:define-input describe-page-request common-lisp:nil
                                ((page-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "PageId"))
                                (:shape-name "DescribePageRequest"))

(smithy/sdk/shapes:define-output describe-page-result common-lisp:nil
                                 ((page-arn :target-type ssm-contacts-arn
                                   :required common-lisp:t :member-name
                                   "PageArn")
                                  (engagement-arn :target-type ssm-contacts-arn
                                   :required common-lisp:t :member-name
                                   "EngagementArn")
                                  (contact-arn :target-type ssm-contacts-arn
                                   :required common-lisp:t :member-name
                                   "ContactArn")
                                  (sender :target-type sender :required
                                   common-lisp:t :member-name "Sender")
                                  (subject :target-type subject :required
                                   common-lisp:t :member-name "Subject")
                                  (content :target-type content :required
                                   common-lisp:t :member-name "Content")
                                  (public-subject :target-type public-subject
                                   :member-name "PublicSubject")
                                  (public-content :target-type public-content
                                   :member-name "PublicContent")
                                  (incident-id :target-type incident-id
                                   :member-name "IncidentId")
                                  (sent-time :target-type date-time
                                   :member-name "SentTime")
                                  (read-time :target-type date-time
                                   :member-name "ReadTime")
                                  (delivery-time :target-type date-time
                                   :member-name "DeliveryTime"))
                                 (:shape-name "DescribePageResult"))

(smithy/sdk/shapes:define-structure engagement common-lisp:nil
                                    ((engagement-arn :target-type
                                      ssm-contacts-arn :required common-lisp:t
                                      :member-name "EngagementArn")
                                     (contact-arn :target-type ssm-contacts-arn
                                      :required common-lisp:t :member-name
                                      "ContactArn")
                                     (sender :target-type sender :required
                                      common-lisp:t :member-name "Sender")
                                     (incident-id :target-type incident-id
                                      :member-name "IncidentId")
                                     (start-time :target-type date-time
                                      :member-name "StartTime")
                                     (stop-time :target-type date-time
                                      :member-name "StopTime"))
                                    (:shape-name "Engagement"))

(smithy/sdk/shapes:define-list engagements-list :member engagement)

(smithy/sdk/shapes:define-input get-contact-channel-request common-lisp:nil
                                ((contact-channel-id :target-type
                                  ssm-contacts-arn :required common-lisp:t
                                  :member-name "ContactChannelId"))
                                (:shape-name "GetContactChannelRequest"))

(smithy/sdk/shapes:define-output get-contact-channel-result common-lisp:nil
                                 ((contact-arn :target-type ssm-contacts-arn
                                   :required common-lisp:t :member-name
                                   "ContactArn")
                                  (contact-channel-arn :target-type
                                   ssm-contacts-arn :required common-lisp:t
                                   :member-name "ContactChannelArn")
                                  (name :target-type channel-name :required
                                   common-lisp:t :member-name "Name")
                                  (type :target-type channel-type :required
                                   common-lisp:t :member-name "Type")
                                  (delivery-address :target-type
                                   contact-channel-address :required
                                   common-lisp:t :member-name
                                   "DeliveryAddress")
                                  (activation-status :target-type
                                   activation-status :member-name
                                   "ActivationStatus"))
                                 (:shape-name "GetContactChannelResult"))

(smithy/sdk/shapes:define-input get-contact-policy-request common-lisp:nil
                                ((contact-arn :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "ContactArn"))
                                (:shape-name "GetContactPolicyRequest"))

(smithy/sdk/shapes:define-output get-contact-policy-result common-lisp:nil
                                 ((contact-arn :target-type ssm-contacts-arn
                                   :member-name "ContactArn")
                                  (policy :target-type policy :member-name
                                   "Policy"))
                                 (:shape-name "GetContactPolicyResult"))

(smithy/sdk/shapes:define-input get-contact-request common-lisp:nil
                                ((contact-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "ContactId"))
                                (:shape-name "GetContactRequest"))

(smithy/sdk/shapes:define-output get-contact-result common-lisp:nil
                                 ((contact-arn :target-type ssm-contacts-arn
                                   :required common-lisp:t :member-name
                                   "ContactArn")
                                  (alias :target-type contact-alias :required
                                   common-lisp:t :member-name "Alias")
                                  (display-name :target-type contact-name
                                   :member-name "DisplayName")
                                  (type :target-type contact-type :required
                                   common-lisp:t :member-name "Type")
                                  (plan :target-type plan :required
                                   common-lisp:t :member-name "Plan"))
                                 (:shape-name "GetContactResult"))

(smithy/sdk/shapes:define-input get-rotation-override-request common-lisp:nil
                                ((rotation-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "RotationId")
                                 (rotation-override-id :target-type uuid
                                  :required common-lisp:t :member-name
                                  "RotationOverrideId"))
                                (:shape-name "GetRotationOverrideRequest"))

(smithy/sdk/shapes:define-output get-rotation-override-result common-lisp:nil
                                 ((rotation-override-id :target-type uuid
                                   :member-name "RotationOverrideId")
                                  (rotation-arn :target-type ssm-contacts-arn
                                   :member-name "RotationArn")
                                  (new-contact-ids :target-type
                                   ssm-contacts-arn-list :member-name
                                   "NewContactIds")
                                  (start-time :target-type date-time
                                   :member-name "StartTime")
                                  (end-time :target-type date-time :member-name
                                   "EndTime")
                                  (create-time :target-type date-time
                                   :member-name "CreateTime"))
                                 (:shape-name "GetRotationOverrideResult"))

(smithy/sdk/shapes:define-input get-rotation-request common-lisp:nil
                                ((rotation-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "RotationId"))
                                (:shape-name "GetRotationRequest"))

(smithy/sdk/shapes:define-output get-rotation-result common-lisp:nil
                                 ((rotation-arn :target-type ssm-contacts-arn
                                   :required common-lisp:t :member-name
                                   "RotationArn")
                                  (name :target-type rotation-name :required
                                   common-lisp:t :member-name "Name")
                                  (contact-ids :target-type
                                   rotation-contacts-arn-list :required
                                   common-lisp:t :member-name "ContactIds")
                                  (start-time :target-type date-time :required
                                   common-lisp:t :member-name "StartTime")
                                  (time-zone-id :target-type time-zone-id
                                   :required common-lisp:t :member-name
                                   "TimeZoneId")
                                  (recurrence :target-type recurrence-settings
                                   :required common-lisp:t :member-name
                                   "Recurrence"))
                                 (:shape-name "GetRotationResult"))

(smithy/sdk/shapes:define-structure hand-off-time common-lisp:nil
                                    ((hour-of-day :target-type hour-of-day
                                      :required common-lisp:t :member-name
                                      "HourOfDay")
                                     (minute-of-hour :target-type
                                      minute-of-hour :required common-lisp:t
                                      :member-name "MinuteOfHour"))
                                    (:shape-name "HandOffTime"))

(smithy/sdk/shapes:define-type hour-of-day smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type incident-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type is-essential smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input list-contact-channels-request common-lisp:nil
                                ((contact-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "ContactId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListContactChannelsRequest"))

(smithy/sdk/shapes:define-output list-contact-channels-result common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (contact-channels :target-type
                                   contact-channel-list :required common-lisp:t
                                   :member-name "ContactChannels"))
                                 (:shape-name "ListContactChannelsResult"))

(smithy/sdk/shapes:define-input list-contacts-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (alias-prefix :target-type contact-alias
                                  :member-name "AliasPrefix")
                                 (type :target-type contact-type :member-name
                                  "Type"))
                                (:shape-name "ListContactsRequest"))

(smithy/sdk/shapes:define-output list-contacts-result common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (contacts :target-type contacts-list
                                   :member-name "Contacts"))
                                 (:shape-name "ListContactsResult"))

(smithy/sdk/shapes:define-input list-engagements-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (incident-id :target-type incident-id
                                  :member-name "IncidentId")
                                 (time-range-value :target-type time-range
                                  :member-name "TimeRangeValue"))
                                (:shape-name "ListEngagementsRequest"))

(smithy/sdk/shapes:define-output list-engagements-result common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (engagements :target-type engagements-list
                                   :required common-lisp:t :member-name
                                   "Engagements"))
                                 (:shape-name "ListEngagementsResult"))

(smithy/sdk/shapes:define-input list-page-receipts-request common-lisp:nil
                                ((page-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "PageId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListPageReceiptsRequest"))

(smithy/sdk/shapes:define-output list-page-receipts-result common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (receipts :target-type receipts-list
                                   :member-name "Receipts"))
                                 (:shape-name "ListPageReceiptsResult"))

(smithy/sdk/shapes:define-input list-page-resolutions-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (page-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "PageId"))
                                (:shape-name "ListPageResolutionsRequest"))

(smithy/sdk/shapes:define-output list-page-resolutions-result common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (page-resolutions :target-type
                                   resolution-list :required common-lisp:t
                                   :member-name "PageResolutions"))
                                 (:shape-name "ListPageResolutionsResult"))

(smithy/sdk/shapes:define-input list-pages-by-contact-request common-lisp:nil
                                ((contact-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "ContactId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListPagesByContactRequest"))

(smithy/sdk/shapes:define-output list-pages-by-contact-result common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (pages :target-type pages-list :required
                                   common-lisp:t :member-name "Pages"))
                                 (:shape-name "ListPagesByContactResult"))

(smithy/sdk/shapes:define-input list-pages-by-engagement-request
                                common-lisp:nil
                                ((engagement-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "EngagementId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListPagesByEngagementRequest"))

(smithy/sdk/shapes:define-output list-pages-by-engagement-result
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (pages :target-type pages-list :required
                                   common-lisp:t :member-name "Pages"))
                                 (:shape-name "ListPagesByEngagementResult"))

(smithy/sdk/shapes:define-input list-preview-rotation-shifts-request
                                common-lisp:nil
                                ((rotation-start-time :target-type date-time
                                  :member-name "RotationStartTime")
                                 (start-time :target-type date-time
                                  :member-name "StartTime")
                                 (end-time :target-type date-time :required
                                  common-lisp:t :member-name "EndTime")
                                 (members :target-type
                                  rotation-preview-member-list :required
                                  common-lisp:t :member-name "Members")
                                 (time-zone-id :target-type time-zone-id
                                  :required common-lisp:t :member-name
                                  "TimeZoneId")
                                 (recurrence :target-type recurrence-settings
                                  :required common-lisp:t :member-name
                                  "Recurrence")
                                 (overrides :target-type override-list
                                  :member-name "Overrides")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListPreviewRotationShiftsRequest"))

(smithy/sdk/shapes:define-output list-preview-rotation-shifts-result
                                 common-lisp:nil
                                 ((rotation-shifts :target-type rotation-shifts
                                   :member-name "RotationShifts")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListPreviewRotationShiftsResult"))

(smithy/sdk/shapes:define-input list-rotation-overrides-request common-lisp:nil
                                ((rotation-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "RotationId")
                                 (start-time :target-type date-time :required
                                  common-lisp:t :member-name "StartTime")
                                 (end-time :target-type date-time :required
                                  common-lisp:t :member-name "EndTime")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListRotationOverridesRequest"))

(smithy/sdk/shapes:define-output list-rotation-overrides-result common-lisp:nil
                                 ((rotation-overrides :target-type
                                   rotation-overrides :member-name
                                   "RotationOverrides")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRotationOverridesResult"))

(smithy/sdk/shapes:define-input list-rotation-shifts-request common-lisp:nil
                                ((rotation-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "RotationId")
                                 (start-time :target-type date-time
                                  :member-name "StartTime")
                                 (end-time :target-type date-time :required
                                  common-lisp:t :member-name "EndTime")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListRotationShiftsRequest"))

(smithy/sdk/shapes:define-output list-rotation-shifts-result common-lisp:nil
                                 ((rotation-shifts :target-type rotation-shifts
                                   :member-name "RotationShifts")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRotationShiftsResult"))

(smithy/sdk/shapes:define-input list-rotations-request common-lisp:nil
                                ((rotation-name-prefix :target-type
                                  rotation-name :member-name
                                  "RotationNamePrefix")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListRotationsRequest"))

(smithy/sdk/shapes:define-output list-rotations-result common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (rotations :target-type rotations :required
                                   common-lisp:t :member-name "Rotations"))
                                 (:shape-name "ListRotationsResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-result common-lisp:nil
                                 ((tags :target-type tags-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResult"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type minute-of-hour smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure monthly-setting common-lisp:nil
                                    ((day-of-month :target-type day-of-month
                                      :required common-lisp:t :member-name
                                      "DayOfMonth")
                                     (hand-off-time :target-type hand-off-time
                                      :required common-lisp:t :member-name
                                      "HandOffTime"))
                                    (:shape-name "MonthlySetting"))

(smithy/sdk/shapes:define-list monthly-settings :member monthly-setting)

(smithy/sdk/shapes:define-type number-of-on-calls
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list override-list :member preview-override)

(smithy/sdk/shapes:define-structure page common-lisp:nil
                                    ((page-arn :target-type ssm-contacts-arn
                                      :required common-lisp:t :member-name
                                      "PageArn")
                                     (engagement-arn :target-type
                                      ssm-contacts-arn :required common-lisp:t
                                      :member-name "EngagementArn")
                                     (contact-arn :target-type ssm-contacts-arn
                                      :required common-lisp:t :member-name
                                      "ContactArn")
                                     (sender :target-type sender :required
                                      common-lisp:t :member-name "Sender")
                                     (incident-id :target-type incident-id
                                      :member-name "IncidentId")
                                     (sent-time :target-type date-time
                                      :member-name "SentTime")
                                     (delivery-time :target-type date-time
                                      :member-name "DeliveryTime")
                                     (read-time :target-type date-time
                                      :member-name "ReadTime"))
                                    (:shape-name "Page"))

(smithy/sdk/shapes:define-list pages-list :member page)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure plan common-lisp:nil
                                    ((stages :target-type stages-list
                                      :member-name "Stages")
                                     (rotation-ids :target-type
                                      ssm-contacts-arn-list :member-name
                                      "RotationIds"))
                                    (:shape-name "Plan"))

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure preview-override common-lisp:nil
                                    ((new-members :target-type
                                      rotation-override-preview-member-list
                                      :member-name "NewMembers")
                                     (start-time :target-type date-time
                                      :member-name "StartTime")
                                     (end-time :target-type date-time
                                      :member-name "EndTime"))
                                    (:shape-name "PreviewOverride"))

(smithy/sdk/shapes:define-type public-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type public-subject smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-contact-policy-request common-lisp:nil
                                ((contact-arn :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "ContactArn")
                                 (policy :target-type policy :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name "PutContactPolicyRequest"))

(smithy/sdk/shapes:define-output put-contact-policy-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutContactPolicyResult"))

(smithy/sdk/shapes:define-structure receipt common-lisp:nil
                                    ((contact-channel-arn :target-type
                                      ssm-contacts-arn :member-name
                                      "ContactChannelArn")
                                     (receipt-type :target-type receipt-type
                                      :required common-lisp:t :member-name
                                      "ReceiptType")
                                     (receipt-info :target-type receipt-info
                                      :member-name "ReceiptInfo")
                                     (receipt-time :target-type date-time
                                      :required common-lisp:t :member-name
                                      "ReceiptTime"))
                                    (:shape-name "Receipt"))

(smithy/sdk/shapes:define-type receipt-info smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum receipt-type
    common-lisp:nil
  (:delivered "DELIVERED")
  (:error "ERROR")
  (:read "READ")
  (:sent "SENT")
  (:stop "STOP"))

(smithy/sdk/shapes:define-list receipts-list :member receipt)

(smithy/sdk/shapes:define-type recurrence-multiplier
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure recurrence-settings common-lisp:nil
                                    ((monthly-settings :target-type
                                      monthly-settings :member-name
                                      "MonthlySettings")
                                     (weekly-settings :target-type
                                      weekly-settings :member-name
                                      "WeeklySettings")
                                     (daily-settings :target-type
                                      daily-settings :member-name
                                      "DailySettings")
                                     (number-of-on-calls :target-type
                                      number-of-on-calls :required
                                      common-lisp:t :member-name
                                      "NumberOfOnCalls")
                                     (shift-coverages :target-type
                                      shift-coverages-map :member-name
                                      "ShiftCoverages")
                                     (recurrence-multiplier :target-type
                                      recurrence-multiplier :required
                                      common-lisp:t :member-name
                                      "RecurrenceMultiplier"))
                                    (:shape-name "RecurrenceSettings"))

(smithy/sdk/shapes:define-structure resolution-contact common-lisp:nil
                                    ((contact-arn :target-type ssm-contacts-arn
                                      :required common-lisp:t :member-name
                                      "ContactArn")
                                     (type :target-type contact-type :required
                                      common-lisp:t :member-name "Type")
                                     (stage-index :target-type stage-index
                                      :member-name "StageIndex"))
                                    (:shape-name "ResolutionContact"))

(smithy/sdk/shapes:define-list resolution-list :member resolution-contact)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type retry-interval-in-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure rotation common-lisp:nil
                                    ((rotation-arn :target-type
                                      ssm-contacts-arn :required common-lisp:t
                                      :member-name "RotationArn")
                                     (name :target-type rotation-name :required
                                      common-lisp:t :member-name "Name")
                                     (contact-ids :target-type
                                      ssm-contacts-arn-list :member-name
                                      "ContactIds")
                                     (start-time :target-type date-time
                                      :member-name "StartTime")
                                     (time-zone-id :target-type time-zone-id
                                      :member-name "TimeZoneId")
                                     (recurrence :target-type
                                      recurrence-settings :member-name
                                      "Recurrence"))
                                    (:shape-name "Rotation"))

(smithy/sdk/shapes:define-list rotation-contacts-arn-list :member
                               ssm-contacts-arn)

(smithy/sdk/shapes:define-type rotation-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rotation-override common-lisp:nil
                                    ((rotation-override-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "RotationOverrideId")
                                     (new-contact-ids :target-type
                                      ssm-contacts-arn-list :required
                                      common-lisp:t :member-name
                                      "NewContactIds")
                                     (start-time :target-type date-time
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type date-time :required
                                      common-lisp:t :member-name "EndTime")
                                     (create-time :target-type date-time
                                      :required common-lisp:t :member-name
                                      "CreateTime"))
                                    (:shape-name "RotationOverride"))

(smithy/sdk/shapes:define-list rotation-override-contacts-arn-list :member
                               ssm-contacts-arn)

(smithy/sdk/shapes:define-list rotation-override-preview-member-list :member
                               member)

(smithy/sdk/shapes:define-list rotation-overrides :member rotation-override)

(smithy/sdk/shapes:define-list rotation-preview-member-list :member member)

(smithy/sdk/shapes:define-structure rotation-shift common-lisp:nil
                                    ((contact-ids :target-type
                                      ssm-contacts-arn-list :member-name
                                      "ContactIds")
                                     (start-time :target-type date-time
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type date-time :required
                                      common-lisp:t :member-name "EndTime")
                                     (type :target-type shift-type :member-name
                                      "Type")
                                     (shift-details :target-type shift-details
                                      :member-name "ShiftDetails"))
                                    (:shape-name "RotationShift"))

(smithy/sdk/shapes:define-list rotation-shifts :member rotation-shift)

(smithy/sdk/shapes:define-list rotations :member rotation)

(smithy/sdk/shapes:define-input send-activation-code-request common-lisp:nil
                                ((contact-channel-id :target-type
                                  ssm-contacts-arn :required common-lisp:t
                                  :member-name "ContactChannelId"))
                                (:shape-name "SendActivationCodeRequest"))

(smithy/sdk/shapes:define-output send-activation-code-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "SendActivationCodeResult"))

(smithy/sdk/shapes:define-type sender smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :member-name
                                  "ResourceId")
                                 (resource-type :target-type string
                                  :member-name "ResourceType")
                                 (quota-code :target-type string :required
                                  common-lisp:t :member-name "QuotaCode")
                                 (service-code :target-type string :required
                                  common-lisp:t :member-name "ServiceCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-map shift-coverages-map :key day-of-week :value
                              coverage-times)

(smithy/sdk/shapes:define-structure shift-details common-lisp:nil
                                    ((overridden-contact-ids :target-type
                                      ssm-contacts-arn-list :required
                                      common-lisp:t :member-name
                                      "OverriddenContactIds"))
                                    (:shape-name "ShiftDetails"))

(smithy/sdk/shapes:define-enum shift-type
    common-lisp:nil
  (:regular "REGULAR")
  (:overridden "OVERRIDDEN"))

(smithy/sdk/shapes:define-type simple-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ssm-contacts-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ssm-contacts-arn-list :member ssm-contacts-arn)

(smithy/sdk/shapes:define-structure stage common-lisp:nil
                                    ((duration-in-minutes :target-type
                                      stage-duration-in-mins :required
                                      common-lisp:t :member-name
                                      "DurationInMinutes")
                                     (targets :target-type targets-list
                                      :required common-lisp:t :member-name
                                      "Targets"))
                                    (:shape-name "Stage"))

(smithy/sdk/shapes:define-type stage-duration-in-mins
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type stage-index smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list stages-list :member stage)

(smithy/sdk/shapes:define-input start-engagement-request common-lisp:nil
                                ((contact-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "ContactId")
                                 (sender :target-type sender :required
                                  common-lisp:t :member-name "Sender")
                                 (subject :target-type subject :required
                                  common-lisp:t :member-name "Subject")
                                 (content :target-type content :required
                                  common-lisp:t :member-name "Content")
                                 (public-subject :target-type public-subject
                                  :member-name "PublicSubject")
                                 (public-content :target-type public-content
                                  :member-name "PublicContent")
                                 (incident-id :target-type incident-id
                                  :member-name "IncidentId")
                                 (idempotency-token :target-type
                                  idempotency-token :member-name
                                  "IdempotencyToken"))
                                (:shape-name "StartEngagementRequest"))

(smithy/sdk/shapes:define-output start-engagement-result common-lisp:nil
                                 ((engagement-arn :target-type ssm-contacts-arn
                                   :required common-lisp:t :member-name
                                   "EngagementArn"))
                                 (:shape-name "StartEngagementResult"))

(smithy/sdk/shapes:define-input stop-engagement-request common-lisp:nil
                                ((engagement-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "EngagementId")
                                 (reason :target-type stop-reason :member-name
                                  "Reason"))
                                (:shape-name "StopEngagementRequest"))

(smithy/sdk/shapes:define-output stop-engagement-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopEngagementResult"))

(smithy/sdk/shapes:define-type stop-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subject smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tags-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResult"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags-list :member tag)

(smithy/sdk/shapes:define-structure target common-lisp:nil
                                    ((channel-target-info :target-type
                                      channel-target-info :member-name
                                      "ChannelTargetInfo")
                                     (contact-target-info :target-type
                                      contact-target-info :member-name
                                      "ContactTargetInfo"))
                                    (:shape-name "Target"))

(smithy/sdk/shapes:define-list targets-list :member target)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (quota-code :target-type string :member-name
                                  "QuotaCode")
                                 (service-code :target-type string :member-name
                                  "ServiceCode")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure time-range common-lisp:nil
                                    ((start-time :target-type date-time
                                      :member-name "StartTime")
                                     (end-time :target-type date-time
                                      :member-name "EndTime"))
                                    (:shape-name "TimeRange"))

(smithy/sdk/shapes:define-type time-zone-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResult"))

(smithy/sdk/shapes:define-input update-contact-channel-request common-lisp:nil
                                ((contact-channel-id :target-type
                                  ssm-contacts-arn :required common-lisp:t
                                  :member-name "ContactChannelId")
                                 (name :target-type channel-name :member-name
                                  "Name")
                                 (delivery-address :target-type
                                  contact-channel-address :member-name
                                  "DeliveryAddress"))
                                (:shape-name "UpdateContactChannelRequest"))

(smithy/sdk/shapes:define-output update-contact-channel-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateContactChannelResult"))

(smithy/sdk/shapes:define-input update-contact-request common-lisp:nil
                                ((contact-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "ContactId")
                                 (display-name :target-type contact-name
                                  :member-name "DisplayName")
                                 (plan :target-type plan :member-name "Plan"))
                                (:shape-name "UpdateContactRequest"))

(smithy/sdk/shapes:define-output update-contact-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateContactResult"))

(smithy/sdk/shapes:define-input update-rotation-request common-lisp:nil
                                ((rotation-id :target-type ssm-contacts-arn
                                  :required common-lisp:t :member-name
                                  "RotationId")
                                 (contact-ids :target-type
                                  rotation-contacts-arn-list :member-name
                                  "ContactIds")
                                 (start-time :target-type date-time
                                  :member-name "StartTime")
                                 (time-zone-id :target-type time-zone-id
                                  :member-name "TimeZoneId")
                                 (recurrence :target-type recurrence-settings
                                  :required common-lisp:t :member-name
                                  "Recurrence"))
                                (:shape-name "UpdateRotationRequest"))

(smithy/sdk/shapes:define-output update-rotation-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateRotationResult"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "Reason")
                                 (fields :target-type
                                  validation-exception-field-list :member-name
                                  "Fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (message :target-type string :required
                                      common-lisp:t :member-name "Message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "UNKNOWN_OPERATION")
  (:cannot-parse "CANNOT_PARSE")
  (:field-validation-failed "FIELD_VALIDATION_FAILED")
  (:other "OTHER"))

(smithy/sdk/shapes:define-structure weekly-setting common-lisp:nil
                                    ((day-of-week :target-type day-of-week
                                      :required common-lisp:t :member-name
                                      "DayOfWeek")
                                     (hand-off-time :target-type hand-off-time
                                      :required common-lisp:t :member-name
                                      "HandOffTime"))
                                    (:shape-name "WeeklySetting"))

(smithy/sdk/shapes:define-list weekly-settings :member weekly-setting)

(smithy/sdk/operation:define-operation accept-page :shape-name "AcceptPage"
                                       :input accept-page-request :output
                                       accept-page-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation activate-contact-channel :shape-name
                                       "ActivateContactChannel" :input
                                       activate-contact-channel-request :output
                                       activate-contact-channel-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-contact :shape-name
                                       "CreateContact" :input
                                       create-contact-request :output
                                       create-contact-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        data-encryption-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-contact-channel :shape-name
                                       "CreateContactChannel" :input
                                       create-contact-channel-request :output
                                       create-contact-channel-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        data-encryption-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-rotation :shape-name
                                       "CreateRotation" :input
                                       create-rotation-request :output
                                       create-rotation-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-rotation-override :shape-name
                                       "CreateRotationOverride" :input
                                       create-rotation-override-request :output
                                       create-rotation-override-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation deactivate-contact-channel :shape-name
                                       "DeactivateContactChannel" :input
                                       deactivate-contact-channel-request
                                       :output
                                       deactivate-contact-channel-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-contact :shape-name
                                       "DeleteContact" :input
                                       delete-contact-request :output
                                       delete-contact-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-contact-channel :shape-name
                                       "DeleteContactChannel" :input
                                       delete-contact-channel-request :output
                                       delete-contact-channel-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-rotation :shape-name
                                       "DeleteRotation" :input
                                       delete-rotation-request :output
                                       delete-rotation-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-rotation-override :shape-name
                                       "DeleteRotationOverride" :input
                                       delete-rotation-override-request :output
                                       delete-rotation-override-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-engagement :shape-name
                                       "DescribeEngagement" :input
                                       describe-engagement-request :output
                                       describe-engagement-result :errors
                                       (access-denied-exception
                                        data-encryption-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation describe-page :shape-name "DescribePage"
                                       :input describe-page-request :output
                                       describe-page-result :errors
                                       (access-denied-exception
                                        data-encryption-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-contact :shape-name "GetContact"
                                       :input get-contact-request :output
                                       get-contact-result :errors
                                       (access-denied-exception
                                        data-encryption-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-contact-channel :shape-name
                                       "GetContactChannel" :input
                                       get-contact-channel-request :output
                                       get-contact-channel-result :errors
                                       (access-denied-exception
                                        data-encryption-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-contact-policy :shape-name
                                       "GetContactPolicy" :input
                                       get-contact-policy-request :output
                                       get-contact-policy-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-rotation :shape-name "GetRotation"
                                       :input get-rotation-request :output
                                       get-rotation-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-rotation-override :shape-name
                                       "GetRotationOverride" :input
                                       get-rotation-override-request :output
                                       get-rotation-override-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-contact-channels :shape-name
                                       "ListContactChannels" :input
                                       list-contact-channels-request :output
                                       list-contact-channels-result :errors
                                       (access-denied-exception
                                        data-encryption-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-contacts :shape-name "ListContacts"
                                       :input list-contacts-request :output
                                       list-contacts-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-engagements :shape-name
                                       "ListEngagements" :input
                                       list-engagements-request :output
                                       list-engagements-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-page-receipts :shape-name
                                       "ListPageReceipts" :input
                                       list-page-receipts-request :output
                                       list-page-receipts-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-page-resolutions :shape-name
                                       "ListPageResolutions" :input
                                       list-page-resolutions-request :output
                                       list-page-resolutions-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-pages-by-contact :shape-name
                                       "ListPagesByContact" :input
                                       list-pages-by-contact-request :output
                                       list-pages-by-contact-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-pages-by-engagement :shape-name
                                       "ListPagesByEngagement" :input
                                       list-pages-by-engagement-request :output
                                       list-pages-by-engagement-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-preview-rotation-shifts :shape-name
                                       "ListPreviewRotationShifts" :input
                                       list-preview-rotation-shifts-request
                                       :output
                                       list-preview-rotation-shifts-result
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-rotation-overrides :shape-name
                                       "ListRotationOverrides" :input
                                       list-rotation-overrides-request :output
                                       list-rotation-overrides-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-rotation-shifts :shape-name
                                       "ListRotationShifts" :input
                                       list-rotation-shifts-request :output
                                       list-rotation-shifts-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-rotations :shape-name
                                       "ListRotations" :input
                                       list-rotations-request :output
                                       list-rotations-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-contact-policy :shape-name
                                       "PutContactPolicy" :input
                                       put-contact-policy-request :output
                                       put-contact-policy-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation send-activation-code :shape-name
                                       "SendActivationCode" :input
                                       send-activation-code-request :output
                                       send-activation-code-result :errors
                                       (access-denied-exception
                                        data-encryption-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-engagement :shape-name
                                       "StartEngagement" :input
                                       start-engagement-request :output
                                       start-engagement-result :errors
                                       (access-denied-exception
                                        data-encryption-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation stop-engagement :shape-name
                                       "StopEngagement" :input
                                       stop-engagement-request :output
                                       stop-engagement-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-result :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-contact :shape-name
                                       "UpdateContact" :input
                                       update-contact-request :output
                                       update-contact-result :errors
                                       (access-denied-exception
                                        data-encryption-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-contact-channel :shape-name
                                       "UpdateContactChannel" :input
                                       update-contact-channel-request :output
                                       update-contact-channel-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        data-encryption-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-rotation :shape-name
                                       "UpdateRotation" :input
                                       update-rotation-request :output
                                       update-rotation-result :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
