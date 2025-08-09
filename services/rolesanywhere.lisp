(uiop/package:define-package #:pira/rolesanywhere (:use)
                             (:export #:access-denied-exception
                              #:amazon-resource-name #:attribute-mapping
                              #:attribute-mappings #:certificate-field
                              #:create-profile #:create-profile-request
                              #:create-trust-anchor
                              #:create-trust-anchor-request
                              #:credential-summaries #:credential-summary #:crl
                              #:crl-detail #:crl-detail-response #:crl-details
                              #:delete-attribute-mapping
                              #:delete-attribute-mapping-request
                              #:delete-attribute-mapping-response #:delete-crl
                              #:delete-profile #:delete-trust-anchor
                              #:disable-crl #:disable-profile
                              #:disable-trust-anchor #:enable-crl
                              #:enable-profile #:enable-trust-anchor #:get-crl
                              #:get-profile #:get-subject #:get-trust-anchor
                              #:import-crl #:import-crl-request
                              #:instance-properties #:instance-property
                              #:instance-property-map #:list-crls
                              #:list-crls-response #:list-profiles
                              #:list-profiles-response #:list-request
                              #:list-subjects #:list-subjects-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-trust-anchors
                              #:list-trust-anchors-response
                              #:managed-policy-list #:mapping-rule
                              #:mapping-rules #:notification-channel
                              #:notification-event #:notification-setting
                              #:notification-setting-detail
                              #:notification-setting-details
                              #:notification-setting-key
                              #:notification-setting-keys
                              #:notification-settings #:profile #:profile-arn
                              #:profile-detail #:profile-detail-response
                              #:profile-details #:put-attribute-mapping
                              #:put-attribute-mapping-request
                              #:put-attribute-mapping-response
                              #:put-notification-settings
                              #:put-notification-settings-request
                              #:put-notification-settings-response
                              #:reset-notification-settings
                              #:reset-notification-settings-request
                              #:reset-notification-settings-response
                              #:resource-name #:resource-not-found-exception
                              #:role-arn #:role-arn-list #:roles-anywhere
                              #:scalar-crl-request #:scalar-profile-request
                              #:scalar-subject-request
                              #:scalar-trust-anchor-request #:source
                              #:source-data #:specifier-list #:subject
                              #:subject-detail #:subject-detail-response
                              #:subject-summaries #:subject-summary #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value
                              #:too-many-tags-exception #:trust-anchor
                              #:trust-anchor-arn #:trust-anchor-detail
                              #:trust-anchor-detail-response
                              #:trust-anchor-details #:trust-anchor-type
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-crl
                              #:update-crl-request #:update-profile
                              #:update-profile-request #:update-trust-anchor
                              #:update-trust-anchor-request #:uuid
                              #:validation-exception))
(common-lisp:in-package #:pira/rolesanywhere)

(smithy/sdk/service:define-service roles-anywhere :shape-name "RolesAnywhere"
                                   :version "2018-05-10" :title
                                   "IAM Roles Anywhere" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "RolesAnywhere")
                                      ("arnNamespace" . "rolesanywhere")
                                      ("cloudFormationName" . "RolesAnywhere"))
                                     ("aws.auth#sigv4"
                                      ("name" . "rolesanywhere"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attribute-mapping common-lisp:nil
                                    ((certificate-field :target-type
                                      certificate-field :member-name
                                      "certificateField")
                                     (mapping-rules :target-type mapping-rules
                                      :member-name "mappingRules"))
                                    (:shape-name "AttributeMapping"))

(smithy/sdk/shapes:define-list attribute-mappings :member attribute-mapping)

(smithy/sdk/shapes:define-type certificate-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure create-profile-request common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (require-instance-properties :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "requireInstanceProperties")
                                     (session-policy :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sessionPolicy")
                                     (role-arns :target-type role-arn-list
                                      :required common-lisp:t :member-name
                                      "roleArns")
                                     (managed-policy-arns :target-type
                                      managed-policy-list :member-name
                                      "managedPolicyArns")
                                     (duration-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "durationSeconds")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (accept-role-session-name :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "acceptRoleSessionName"))
                                    (:shape-name "CreateProfileRequest"))

(smithy/sdk/shapes:define-structure create-trust-anchor-request common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (source :target-type source :required
                                      common-lisp:t :member-name "source")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (notification-settings :target-type
                                      notification-settings :member-name
                                      "notificationSettings"))
                                    (:shape-name "CreateTrustAnchorRequest"))

(smithy/sdk/shapes:define-list credential-summaries :member credential-summary)

(smithy/sdk/shapes:define-structure credential-summary common-lisp:nil
                                    ((seen-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "seenAt" :timestamp-format
                                      "date-time")
                                     (serial-number :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "serialNumber")
                                     (issuer :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "issuer")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (x509certificate-data :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "x509CertificateData")
                                     (failed :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "failed"))
                                    (:shape-name "CredentialSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-structure crl-detail common-lisp:nil
                                    ((crl-id :target-type uuid :member-name
                                      "crlId")
                                     (crl-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "crlArn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (crl-data :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "crlData")
                                     (trust-anchor-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "trustAnchorArn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt"
                                      :timestamp-format "date-time"))
                                    (:shape-name "CrlDetail"))

(smithy/sdk/shapes:define-structure crl-detail-response common-lisp:nil
                                    ((crl :target-type crl-detail :required
                                      common-lisp:t :member-name "crl"))
                                    (:shape-name "CrlDetailResponse"))

(smithy/sdk/shapes:define-list crl-details :member crl-detail)

(smithy/sdk/shapes:define-input delete-attribute-mapping-request
                                common-lisp:nil
                                ((profile-id :target-type uuid :required
                                  common-lisp:t :member-name "profileId"
                                  :http-label common-lisp:t)
                                 (certificate-field :target-type
                                  certificate-field :required common-lisp:t
                                  :member-name "certificateField" :http-query
                                  "certificateField")
                                 (specifiers :target-type specifier-list
                                  :member-name "specifiers" :http-query
                                  "specifiers"))
                                (:shape-name "DeleteAttributeMappingRequest"))

(smithy/sdk/shapes:define-output delete-attribute-mapping-response
                                 common-lisp:nil
                                 ((profile :target-type profile-detail
                                   :required common-lisp:t :member-name
                                   "profile"))
                                 (:shape-name "DeleteAttributeMappingResponse"))

(smithy/sdk/shapes:define-structure import-crl-request common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (crl-data :target-type
                                      smithy/sdk/smithy-types:blob :required
                                      common-lisp:t :member-name "crlData")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (trust-anchor-arn :target-type
                                      trust-anchor-arn :required common-lisp:t
                                      :member-name "trustAnchorArn"))
                                    (:shape-name "ImportCrlRequest"))

(smithy/sdk/shapes:define-list instance-properties :member instance-property)

(smithy/sdk/shapes:define-structure instance-property common-lisp:nil
                                    ((seen-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "seenAt" :timestamp-format
                                      "date-time")
                                     (properties :target-type
                                      instance-property-map :member-name
                                      "properties")
                                     (failed :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "failed"))
                                    (:shape-name "InstanceProperty"))

(smithy/sdk/shapes:define-map instance-property-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-crls-response common-lisp:nil
                                    ((next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken")
                                     (crls :target-type crl-details
                                      :member-name "crls"))
                                    (:shape-name "ListCrlsResponse"))

(smithy/sdk/shapes:define-structure list-profiles-response common-lisp:nil
                                    ((next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken")
                                     (profiles :target-type profile-details
                                      :member-name "profiles"))
                                    (:shape-name "ListProfilesResponse"))

(smithy/sdk/shapes:define-structure list-request common-lisp:nil
                                    ((next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (page-size :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "pageSize" :http-query
                                      "pageSize"))
                                    (:shape-name "ListRequest"))

(smithy/sdk/shapes:define-structure list-subjects-response common-lisp:nil
                                    ((subjects :target-type subject-summaries
                                      :member-name "subjects")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListSubjectsResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "resourceArn"
                                      :http-query "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-trust-anchors-response common-lisp:nil
                                    ((next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken")
                                     (trust-anchors :target-type
                                      trust-anchor-details :member-name
                                      "trustAnchors"))
                                    (:shape-name "ListTrustAnchorsResponse"))

(smithy/sdk/shapes:define-list managed-policy-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure mapping-rule common-lisp:nil
                                    ((specifier :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "specifier"))
                                    (:shape-name "MappingRule"))

(smithy/sdk/shapes:define-list mapping-rules :member mapping-rule)

(smithy/sdk/shapes:define-type notification-channel
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type notification-event
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure notification-setting common-lisp:nil
                                    ((enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (event :target-type notification-event
                                      :required common-lisp:t :member-name
                                      "event")
                                     (threshold :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "threshold")
                                     (channel :target-type notification-channel
                                      :member-name "channel"))
                                    (:shape-name "NotificationSetting"))

(smithy/sdk/shapes:define-structure notification-setting-detail common-lisp:nil
                                    ((enabled :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (event :target-type notification-event
                                      :required common-lisp:t :member-name
                                      "event")
                                     (threshold :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "threshold")
                                     (channel :target-type notification-channel
                                      :member-name "channel")
                                     (configured-by :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "configuredBy"))
                                    (:shape-name "NotificationSettingDetail"))

(smithy/sdk/shapes:define-list notification-setting-details :member
                               notification-setting-detail)

(smithy/sdk/shapes:define-structure notification-setting-key common-lisp:nil
                                    ((event :target-type notification-event
                                      :required common-lisp:t :member-name
                                      "event")
                                     (channel :target-type notification-channel
                                      :member-name "channel"))
                                    (:shape-name "NotificationSettingKey"))

(smithy/sdk/shapes:define-list notification-setting-keys :member
                               notification-setting-key)

(smithy/sdk/shapes:define-list notification-settings :member
                               notification-setting)

common-lisp:nil

(smithy/sdk/shapes:define-type profile-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure profile-detail common-lisp:nil
                                    ((profile-id :target-type uuid :member-name
                                      "profileId")
                                     (profile-arn :target-type profile-arn
                                      :member-name "profileArn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (require-instance-properties :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "requireInstanceProperties")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (created-by :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "createdBy")
                                     (session-policy :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sessionPolicy")
                                     (role-arns :target-type role-arn-list
                                      :member-name "roleArns")
                                     (managed-policy-arns :target-type
                                      managed-policy-list :member-name
                                      "managedPolicyArns")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt"
                                      :timestamp-format "date-time")
                                     (duration-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "durationSeconds")
                                     (accept-role-session-name :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "acceptRoleSessionName")
                                     (attribute-mappings :target-type
                                      attribute-mappings :member-name
                                      "attributeMappings"))
                                    (:shape-name "ProfileDetail"))

(smithy/sdk/shapes:define-structure profile-detail-response common-lisp:nil
                                    ((profile :target-type profile-detail
                                      :member-name "profile"))
                                    (:shape-name "ProfileDetailResponse"))

(smithy/sdk/shapes:define-list profile-details :member profile-detail)

(smithy/sdk/shapes:define-input put-attribute-mapping-request common-lisp:nil
                                ((profile-id :target-type uuid :required
                                  common-lisp:t :member-name "profileId"
                                  :http-label common-lisp:t)
                                 (certificate-field :target-type
                                  certificate-field :required common-lisp:t
                                  :member-name "certificateField")
                                 (mapping-rules :target-type mapping-rules
                                  :required common-lisp:t :member-name
                                  "mappingRules"))
                                (:shape-name "PutAttributeMappingRequest"))

(smithy/sdk/shapes:define-output put-attribute-mapping-response common-lisp:nil
                                 ((profile :target-type profile-detail
                                   :required common-lisp:t :member-name
                                   "profile"))
                                 (:shape-name "PutAttributeMappingResponse"))

(smithy/sdk/shapes:define-input put-notification-settings-request
                                common-lisp:nil
                                ((trust-anchor-id :target-type uuid :required
                                  common-lisp:t :member-name "trustAnchorId")
                                 (notification-settings :target-type
                                  notification-settings :required common-lisp:t
                                  :member-name "notificationSettings"))
                                (:shape-name "PutNotificationSettingsRequest"))

(smithy/sdk/shapes:define-output put-notification-settings-response
                                 common-lisp:nil
                                 ((trust-anchor :target-type
                                   trust-anchor-detail :required common-lisp:t
                                   :member-name "trustAnchor"))
                                 (:shape-name
                                  "PutNotificationSettingsResponse"))

(smithy/sdk/shapes:define-input reset-notification-settings-request
                                common-lisp:nil
                                ((trust-anchor-id :target-type uuid :required
                                  common-lisp:t :member-name "trustAnchorId")
                                 (notification-setting-keys :target-type
                                  notification-setting-keys :required
                                  common-lisp:t :member-name
                                  "notificationSettingKeys"))
                                (:shape-name
                                 "ResetNotificationSettingsRequest"))

(smithy/sdk/shapes:define-output reset-notification-settings-response
                                 common-lisp:nil
                                 ((trust-anchor :target-type
                                   trust-anchor-detail :required common-lisp:t
                                   :member-name "trustAnchor"))
                                 (:shape-name
                                  "ResetNotificationSettingsResponse"))

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list role-arn-list :member role-arn)

(smithy/sdk/shapes:define-structure scalar-crl-request common-lisp:nil
                                    ((crl-id :target-type uuid :required
                                      common-lisp:t :member-name "crlId"))
                                    (:shape-name "ScalarCrlRequest"))

(smithy/sdk/shapes:define-structure scalar-profile-request common-lisp:nil
                                    ((profile-id :target-type uuid :required
                                      common-lisp:t :member-name "profileId"))
                                    (:shape-name "ScalarProfileRequest"))

(smithy/sdk/shapes:define-structure scalar-subject-request common-lisp:nil
                                    ((subject-id :target-type uuid :required
                                      common-lisp:t :member-name "subjectId"))
                                    (:shape-name "ScalarSubjectRequest"))

(smithy/sdk/shapes:define-structure scalar-trust-anchor-request common-lisp:nil
                                    ((trust-anchor-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "trustAnchorId"))
                                    (:shape-name "ScalarTrustAnchorRequest"))

(smithy/sdk/shapes:define-structure source common-lisp:nil
                                    ((source-type :target-type
                                      trust-anchor-type :member-name
                                      "sourceType")
                                     (source-data :target-type source-data
                                      :member-name "sourceData"))
                                    (:shape-name "Source"))

(smithy/sdk/shapes:define-union source-data common-lisp:nil
                                ((x509certificate-data :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "x509CertificateData")
                                 (acm-pca-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "acmPcaArn"))
                                (:shape-name "SourceData"))

(smithy/sdk/shapes:define-list specifier-list :member
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure subject-detail common-lisp:nil
                                    ((subject-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "subjectArn")
                                     (subject-id :target-type uuid :member-name
                                      "subjectId")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (x509subject :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "x509Subject")
                                     (last-seen-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastSeenAt"
                                      :timestamp-format "date-time")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt"
                                      :timestamp-format "date-time")
                                     (credentials :target-type
                                      credential-summaries :member-name
                                      "credentials")
                                     (instance-properties :target-type
                                      instance-properties :member-name
                                      "instanceProperties"))
                                    (:shape-name "SubjectDetail"))

(smithy/sdk/shapes:define-structure subject-detail-response common-lisp:nil
                                    ((subject :target-type subject-detail
                                      :member-name "subject"))
                                    (:shape-name "SubjectDetailResponse"))

(smithy/sdk/shapes:define-list subject-summaries :member subject-summary)

(smithy/sdk/shapes:define-structure subject-summary common-lisp:nil
                                    ((subject-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "subjectArn")
                                     (subject-id :target-type uuid :member-name
                                      "subjectId")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (x509subject :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "x509Subject")
                                     (last-seen-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastSeenAt"
                                      :timestamp-format "date-time")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt"
                                      :timestamp-format "date-time"))
                                    (:shape-name "SubjectSummary"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tags :target-type tag-list :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

common-lisp:nil

(smithy/sdk/shapes:define-type trust-anchor-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure trust-anchor-detail common-lisp:nil
                                    ((trust-anchor-id :target-type uuid
                                      :member-name "trustAnchorId")
                                     (trust-anchor-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "trustAnchorArn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (source :target-type source :member-name
                                      "source")
                                     (enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt"
                                      :timestamp-format "date-time")
                                     (notification-settings :target-type
                                      notification-setting-details :member-name
                                      "notificationSettings"))
                                    (:shape-name "TrustAnchorDetail"))

(smithy/sdk/shapes:define-structure trust-anchor-detail-response
                                    common-lisp:nil
                                    ((trust-anchor :target-type
                                      trust-anchor-detail :required
                                      common-lisp:t :member-name
                                      "trustAnchor"))
                                    (:shape-name "TrustAnchorDetailResponse"))

(smithy/sdk/shapes:define-list trust-anchor-details :member trust-anchor-detail)

(smithy/sdk/shapes:define-type trust-anchor-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-crl-request common-lisp:nil
                                    ((crl-id :target-type uuid :required
                                      common-lisp:t :member-name "crlId")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (crl-data :target-type
                                      smithy/sdk/smithy-types:blob :member-name
                                      "crlData"))
                                    (:shape-name "UpdateCrlRequest"))

(smithy/sdk/shapes:define-structure update-profile-request common-lisp:nil
                                    ((profile-id :target-type uuid :required
                                      common-lisp:t :member-name "profileId")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (session-policy :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sessionPolicy")
                                     (role-arns :target-type role-arn-list
                                      :member-name "roleArns")
                                     (managed-policy-arns :target-type
                                      managed-policy-list :member-name
                                      "managedPolicyArns")
                                     (duration-seconds :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "durationSeconds")
                                     (accept-role-session-name :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "acceptRoleSessionName"))
                                    (:shape-name "UpdateProfileRequest"))

(smithy/sdk/shapes:define-structure update-trust-anchor-request common-lisp:nil
                                    ((trust-anchor-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "trustAnchorId")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (source :target-type source :member-name
                                      "source"))
                                    (:shape-name "UpdateTrustAnchorRequest"))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-profile :shape-name
                                       "CreateProfile" :input
                                       create-profile-request :output
                                       profile-detail-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "POST" :uri "/profiles" :code
                                       201)

(smithy/sdk/operation:define-operation create-trust-anchor :shape-name
                                       "CreateTrustAnchor" :input
                                       create-trust-anchor-request :output
                                       trust-anchor-detail-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "POST" :uri "/trustanchors"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-attribute-mapping :shape-name
                                       "DeleteAttributeMapping" :input
                                       delete-attribute-mapping-request :output
                                       delete-attribute-mapping-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/profiles/{profileId}/mappings")

(smithy/sdk/operation:define-operation delete-crl :shape-name "DeleteCrl"
                                       :input scalar-crl-request :output
                                       crl-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri "/crl/{crlId}")

(smithy/sdk/operation:define-operation delete-profile :shape-name
                                       "DeleteProfile" :input
                                       scalar-profile-request :output
                                       profile-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/profile/{profileId}")

(smithy/sdk/operation:define-operation delete-trust-anchor :shape-name
                                       "DeleteTrustAnchor" :input
                                       scalar-trust-anchor-request :output
                                       trust-anchor-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/trustanchor/{trustAnchorId}")

(smithy/sdk/operation:define-operation disable-crl :shape-name "DisableCrl"
                                       :input scalar-crl-request :output
                                       crl-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/crl/{crlId}/disable")

(smithy/sdk/operation:define-operation disable-profile :shape-name
                                       "DisableProfile" :input
                                       scalar-profile-request :output
                                       profile-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/profile/{profileId}/disable")

(smithy/sdk/operation:define-operation disable-trust-anchor :shape-name
                                       "DisableTrustAnchor" :input
                                       scalar-trust-anchor-request :output
                                       trust-anchor-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/trustanchor/{trustAnchorId}/disable")

(smithy/sdk/operation:define-operation enable-crl :shape-name "EnableCrl"
                                       :input scalar-crl-request :output
                                       crl-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/crl/{crlId}/enable")

(smithy/sdk/operation:define-operation enable-profile :shape-name
                                       "EnableProfile" :input
                                       scalar-profile-request :output
                                       profile-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/profile/{profileId}/enable")

(smithy/sdk/operation:define-operation enable-trust-anchor :shape-name
                                       "EnableTrustAnchor" :input
                                       scalar-trust-anchor-request :output
                                       trust-anchor-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/trustanchor/{trustAnchorId}/enable")

(smithy/sdk/operation:define-operation get-crl :shape-name "GetCrl" :input
                                       scalar-crl-request :output
                                       crl-detail-response :errors
                                       (resource-not-found-exception) :method
                                       "GET" :uri "/crl/{crlId}")

(smithy/sdk/operation:define-operation get-profile :shape-name "GetProfile"
                                       :input scalar-profile-request :output
                                       profile-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/profile/{profileId}")

(smithy/sdk/operation:define-operation get-subject :shape-name "GetSubject"
                                       :input scalar-subject-request :output
                                       subject-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/subject/{subjectId}")

(smithy/sdk/operation:define-operation get-trust-anchor :shape-name
                                       "GetTrustAnchor" :input
                                       scalar-trust-anchor-request :output
                                       trust-anchor-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/trustanchor/{trustAnchorId}")

(smithy/sdk/operation:define-operation import-crl :shape-name "ImportCrl"
                                       :input import-crl-request :output
                                       crl-detail-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "POST" :uri "/crls" :code 201)

(smithy/sdk/operation:define-operation list-crls :shape-name "ListCrls" :input
                                       list-request :output list-crls-response
                                       :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "GET" :uri "/crls")

(smithy/sdk/operation:define-operation list-profiles :shape-name "ListProfiles"
                                       :input list-request :output
                                       list-profiles-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "GET" :uri "/profiles")

(smithy/sdk/operation:define-operation list-subjects :shape-name "ListSubjects"
                                       :input list-request :output
                                       list-subjects-response :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "GET" :uri "/subjects")

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/ListTagsForResource")

(smithy/sdk/operation:define-operation list-trust-anchors :shape-name
                                       "ListTrustAnchors" :input list-request
                                       :output list-trust-anchors-response
                                       :errors
                                       (access-denied-exception
                                        validation-exception)
                                       :method "GET" :uri "/trustanchors")

(smithy/sdk/operation:define-operation put-attribute-mapping :shape-name
                                       "PutAttributeMapping" :input
                                       put-attribute-mapping-request :output
                                       put-attribute-mapping-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/profiles/{profileId}/mappings")

(smithy/sdk/operation:define-operation put-notification-settings :shape-name
                                       "PutNotificationSettings" :input
                                       put-notification-settings-request
                                       :output
                                       put-notification-settings-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/put-notifications-settings")

(smithy/sdk/operation:define-operation reset-notification-settings :shape-name
                                       "ResetNotificationSettings" :input
                                       reset-notification-settings-request
                                       :output
                                       reset-notification-settings-response
                                       :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/reset-notifications-settings")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "POST" :uri "/TagResource" :code
                                       201)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/UntagResource"
                                       :code 200)

(smithy/sdk/operation:define-operation update-crl :shape-name "UpdateCrl"
                                       :input update-crl-request :output
                                       crl-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri "/crl/{crlId}")

(smithy/sdk/operation:define-operation update-profile :shape-name
                                       "UpdateProfile" :input
                                       update-profile-request :output
                                       profile-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/profile/{profileId}")

(smithy/sdk/operation:define-operation update-trust-anchor :shape-name
                                       "UpdateTrustAnchor" :input
                                       update-trust-anchor-request :output
                                       trust-anchor-detail-response :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/trustanchor/{trustAnchorId}")
