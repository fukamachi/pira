(uiop/package:define-package #:pira/repostspace (:use)
                             (:export #:access-denied-exception #:accessor-id
                              #:accessor-id-list #:admin-id
                              #:allowed-domains-list #:arn
                              #:batch-add-channel-role-to-accessors
                              #:batch-add-channel-role-to-accessors-input
                              #:batch-add-channel-role-to-accessors-output
                              #:batch-add-role #:batch-add-role-input
                              #:batch-add-role-output #:batch-error
                              #:batch-error-list
                              #:batch-remove-channel-role-from-accessors
                              #:batch-remove-channel-role-from-accessors-input
                              #:batch-remove-channel-role-from-accessors-output
                              #:batch-remove-role #:batch-remove-role-input
                              #:batch-remove-role-output #:channel-data
                              #:channel-description #:channel-id #:channel-name
                              #:channel-role #:channel-role-list
                              #:channel-roles #:channel-status #:channels-list
                              #:client-id #:configuration-status
                              #:conflict-exception #:content-size
                              #:create-channel #:create-channel-input
                              #:create-channel-output #:create-space
                              #:create-space-input #:create-space-output
                              #:delete-space #:delete-space-input
                              #:deregister-admin #:deregister-admin-input
                              #:email-domain #:error-code #:error-message
                              #:feature-enable-parameter
                              #:feature-enable-status #:get-channel
                              #:get-channel-input #:get-channel-output
                              #:get-space #:get-space-input #:get-space-output
                              #:group-admins #:group-count #:identity-store-id
                              #:internal-server-exception #:invite-body
                              #:invite-title #:kmskey #:list-channels
                              #:list-channels-input #:list-channels-limit
                              #:list-channels-output #:list-spaces
                              #:list-spaces-input #:list-spaces-limit
                              #:list-spaces-output #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:provisioning-status #:register-admin
                              #:register-admin-input #:repost-space
                              #:resource-not-found-exception #:role #:role-list
                              #:roles #:send-invites #:send-invites-input
                              #:service-quota-exceeded-exception #:space-data
                              #:space-description #:space-id #:space-name
                              #:space-subdomain #:spaces-list #:storage-limit
                              #:supported-email-domains-parameters
                              #:supported-email-domains-status #:tag-key
                              #:tag-key-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:tags #:throttling-exception
                              #:tier-level #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-channel
                              #:update-channel-input #:update-channel-output
                              #:update-space #:update-space-input #:url
                              #:user-admins #:user-count #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason
                              #:vanity-domain-status))
(common-lisp:in-package #:pira/repostspace)

(smithy/sdk/service:define-service repost-space :shape-name "RepostSpace"
                                   :version "2022-05-13" :title
                                   "AWS re:Post Private" :traits
                                   '(("aws.api#service"
                                      ("arnNamespace" . "repostspace")
                                      ("sdkId" . "repostspace")
                                      ("cloudTrailEventSource"
                                       . "repostspace.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "repostspace"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type accessor-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list accessor-id-list :member accessor-id)

(smithy/sdk/shapes:define-type admin-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list allowed-domains-list :member email-domain)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input batch-add-channel-role-to-accessors-input
                                common-lisp:nil
                                ((space-id :target-type space-id :required
                                  common-lisp:t :member-name "spaceId"
                                  :http-label common-lisp:t)
                                 (channel-id :target-type channel-id :required
                                  common-lisp:t :member-name "channelId"
                                  :http-label common-lisp:t)
                                 (accessor-ids :target-type accessor-id-list
                                  :required common-lisp:t :member-name
                                  "accessorIds")
                                 (channel-role :target-type channel-role
                                  :required common-lisp:t :member-name
                                  "channelRole"))
                                (:shape-name
                                 "BatchAddChannelRoleToAccessorsInput"))

(smithy/sdk/shapes:define-output batch-add-channel-role-to-accessors-output
                                 common-lisp:nil
                                 ((added-accessor-ids :target-type
                                   accessor-id-list :required common-lisp:t
                                   :member-name "addedAccessorIds")
                                  (errors :target-type batch-error-list
                                   :required common-lisp:t :member-name
                                   "errors"))
                                 (:shape-name
                                  "BatchAddChannelRoleToAccessorsOutput"))

(smithy/sdk/shapes:define-input batch-add-role-input common-lisp:nil
                                ((space-id :target-type space-id :required
                                  common-lisp:t :member-name "spaceId"
                                  :http-label common-lisp:t)
                                 (accessor-ids :target-type accessor-id-list
                                  :required common-lisp:t :member-name
                                  "accessorIds")
                                 (role :target-type role :required
                                  common-lisp:t :member-name "role"))
                                (:shape-name "BatchAddRoleInput"))

(smithy/sdk/shapes:define-output batch-add-role-output common-lisp:nil
                                 ((added-accessor-ids :target-type
                                   accessor-id-list :required common-lisp:t
                                   :member-name "addedAccessorIds")
                                  (errors :target-type batch-error-list
                                   :required common-lisp:t :member-name
                                   "errors"))
                                 (:shape-name "BatchAddRoleOutput"))

(smithy/sdk/shapes:define-structure batch-error common-lisp:nil
                                    ((accessor-id :target-type accessor-id
                                      :required common-lisp:t :member-name
                                      "accessorId")
                                     (error :target-type error-code :required
                                      common-lisp:t :member-name "error")
                                     (message :target-type error-message
                                      :required common-lisp:t :member-name
                                      "message"))
                                    (:shape-name "BatchError"))

(smithy/sdk/shapes:define-list batch-error-list :member batch-error)

(smithy/sdk/shapes:define-input batch-remove-channel-role-from-accessors-input
                                common-lisp:nil
                                ((space-id :target-type space-id :required
                                  common-lisp:t :member-name "spaceId"
                                  :http-label common-lisp:t)
                                 (channel-id :target-type channel-id :required
                                  common-lisp:t :member-name "channelId"
                                  :http-label common-lisp:t)
                                 (accessor-ids :target-type accessor-id-list
                                  :required common-lisp:t :member-name
                                  "accessorIds")
                                 (channel-role :target-type channel-role
                                  :required common-lisp:t :member-name
                                  "channelRole"))
                                (:shape-name
                                 "BatchRemoveChannelRoleFromAccessorsInput"))

(smithy/sdk/shapes:define-output
 batch-remove-channel-role-from-accessors-output common-lisp:nil
 ((removed-accessor-ids :target-type accessor-id-list :required common-lisp:t
   :member-name "removedAccessorIds")
  (errors :target-type batch-error-list :required common-lisp:t :member-name
   "errors"))
 (:shape-name "BatchRemoveChannelRoleFromAccessorsOutput"))

(smithy/sdk/shapes:define-input batch-remove-role-input common-lisp:nil
                                ((space-id :target-type space-id :required
                                  common-lisp:t :member-name "spaceId"
                                  :http-label common-lisp:t)
                                 (accessor-ids :target-type accessor-id-list
                                  :required common-lisp:t :member-name
                                  "accessorIds")
                                 (role :target-type role :required
                                  common-lisp:t :member-name "role"))
                                (:shape-name "BatchRemoveRoleInput"))

(smithy/sdk/shapes:define-output batch-remove-role-output common-lisp:nil
                                 ((removed-accessor-ids :target-type
                                   accessor-id-list :required common-lisp:t
                                   :member-name "removedAccessorIds")
                                  (errors :target-type batch-error-list
                                   :required common-lisp:t :member-name
                                   "errors"))
                                 (:shape-name "BatchRemoveRoleOutput"))

(smithy/sdk/shapes:define-structure channel-data common-lisp:nil
                                    ((space-id :target-type space-id :required
                                      common-lisp:t :member-name "spaceId")
                                     (channel-id :target-type channel-id
                                      :required common-lisp:t :member-name
                                      "channelId")
                                     (channel-name :target-type channel-name
                                      :required common-lisp:t :member-name
                                      "channelName")
                                     (channel-description :target-type
                                      channel-description :member-name
                                      "channelDescription")
                                     (create-date-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createDateTime" :timestamp-format
                                      "date-time")
                                     (delete-date-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "deleteDateTime"
                                      :timestamp-format "date-time")
                                     (channel-status :target-type
                                      channel-status :required common-lisp:t
                                      :member-name "channelStatus")
                                     (user-count :target-type user-count
                                      :required common-lisp:t :member-name
                                      "userCount")
                                     (group-count :target-type group-count
                                      :required common-lisp:t :member-name
                                      "groupCount"))
                                    (:shape-name "ChannelData"))

(smithy/sdk/shapes:define-type channel-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type channel-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type channel-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum channel-role
    common-lisp:nil
  (:asker "ASKER")
  (:expert "EXPERT")
  (:moderator "MODERATOR")
  (:supportrequestor "SUPPORTREQUESTOR"))

(smithy/sdk/shapes:define-list channel-role-list :member channel-role)

(smithy/sdk/shapes:define-map channel-roles :key accessor-id :value
                              channel-role-list)

(smithy/sdk/shapes:define-enum channel-status
    common-lisp:nil
  (:created "CREATED")
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:deleted "DELETED")
  (:deleting "DELETING")
  (:delete-failed "DELETE_FAILED"))

(smithy/sdk/shapes:define-list channels-list :member channel-data)

(smithy/sdk/shapes:define-type client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum configuration-status
    common-lisp:nil
  (:configured "CONFIGURED")
  (:unconfigured "UNCONFIGURED"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type content-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input create-channel-input common-lisp:nil
                                ((space-id :target-type space-id :required
                                  common-lisp:t :member-name "spaceId"
                                  :http-label common-lisp:t)
                                 (channel-name :target-type channel-name
                                  :required common-lisp:t :member-name
                                  "channelName")
                                 (channel-description :target-type
                                  channel-description :member-name
                                  "channelDescription"))
                                (:shape-name "CreateChannelInput"))

(smithy/sdk/shapes:define-output create-channel-output common-lisp:nil
                                 ((channel-id :target-type channel-id :required
                                   common-lisp:t :member-name "channelId"))
                                 (:shape-name "CreateChannelOutput"))

(smithy/sdk/shapes:define-input create-space-input common-lisp:nil
                                ((name :target-type space-name :required
                                  common-lisp:t :member-name "name")
                                 (subdomain :target-type space-subdomain
                                  :required common-lisp:t :member-name
                                  "subdomain")
                                 (tier :target-type tier-level :required
                                  common-lisp:t :member-name "tier")
                                 (description :target-type space-description
                                  :member-name "description")
                                 (user-kmskey :target-type kmskey :member-name
                                  "userKMSKey")
                                 (tags :target-type tags :member-name "tags")
                                 (role-arn :target-type arn :member-name
                                  "roleArn")
                                 (supported-email-domains :target-type
                                  supported-email-domains-parameters
                                  :member-name "supportedEmailDomains"))
                                (:shape-name "CreateSpaceInput"))

(smithy/sdk/shapes:define-output create-space-output common-lisp:nil
                                 ((space-id :target-type space-id :required
                                   common-lisp:t :member-name "spaceId"))
                                 (:shape-name "CreateSpaceOutput"))

(smithy/sdk/shapes:define-input delete-space-input common-lisp:nil
                                ((space-id :target-type space-id :required
                                  common-lisp:t :member-name "spaceId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSpaceInput"))

(smithy/sdk/shapes:define-input deregister-admin-input common-lisp:nil
                                ((space-id :target-type space-id :required
                                  common-lisp:t :member-name "spaceId"
                                  :http-label common-lisp:t)
                                 (admin-id :target-type admin-id :required
                                  common-lisp:t :member-name "adminId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeregisterAdminInput"))

(smithy/sdk/shapes:define-type email-domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum feature-enable-parameter
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum feature-enable-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:not-allowed "NOT_ALLOWED"))

(smithy/sdk/shapes:define-input get-channel-input common-lisp:nil
                                ((space-id :target-type space-id :required
                                  common-lisp:t :member-name "spaceId"
                                  :http-label common-lisp:t)
                                 (channel-id :target-type channel-id :required
                                  common-lisp:t :member-name "channelId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetChannelInput"))

(smithy/sdk/shapes:define-output get-channel-output common-lisp:nil
                                 ((space-id :target-type space-id :required
                                   common-lisp:t :member-name "spaceId")
                                  (channel-id :target-type channel-id :required
                                   common-lisp:t :member-name "channelId")
                                  (channel-name :target-type channel-name
                                   :required common-lisp:t :member-name
                                   "channelName")
                                  (channel-description :target-type
                                   channel-description :member-name
                                   "channelDescription")
                                  (create-date-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createDateTime"
                                   :timestamp-format "date-time")
                                  (delete-date-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "deleteDateTime"
                                   :timestamp-format "date-time")
                                  (channel-roles :target-type channel-roles
                                   :member-name "channelRoles")
                                  (channel-status :target-type channel-status
                                   :required common-lisp:t :member-name
                                   "channelStatus"))
                                 (:shape-name "GetChannelOutput"))

(smithy/sdk/shapes:define-input get-space-input common-lisp:nil
                                ((space-id :target-type space-id :required
                                  common-lisp:t :member-name "spaceId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSpaceInput"))

(smithy/sdk/shapes:define-output get-space-output common-lisp:nil
                                 ((space-id :target-type space-id :required
                                   common-lisp:t :member-name "spaceId")
                                  (arn :target-type arn :required common-lisp:t
                                   :member-name "arn")
                                  (name :target-type space-name :required
                                   common-lisp:t :member-name "name")
                                  (status :target-type provisioning-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (configuration-status :target-type
                                   configuration-status :required common-lisp:t
                                   :member-name "configurationStatus")
                                  (client-id :target-type client-id :required
                                   common-lisp:t :member-name "clientId")
                                  (identity-store-id :target-type
                                   identity-store-id :member-name
                                   "identityStoreId")
                                  (application-arn :target-type arn
                                   :member-name "applicationArn")
                                  (description :target-type space-description
                                   :member-name "description")
                                  (vanity-domain-status :target-type
                                   vanity-domain-status :required common-lisp:t
                                   :member-name "vanityDomainStatus")
                                  (vanity-domain :target-type url :required
                                   common-lisp:t :member-name "vanityDomain")
                                  (random-domain :target-type url :required
                                   common-lisp:t :member-name "randomDomain")
                                  (customer-role-arn :target-type arn
                                   :member-name "customerRoleArn")
                                  (create-date-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createDateTime"
                                   :timestamp-format "date-time")
                                  (delete-date-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "deleteDateTime"
                                   :timestamp-format "date-time")
                                  (tier :target-type tier-level :required
                                   common-lisp:t :member-name "tier")
                                  (storage-limit :target-type storage-limit
                                   :required common-lisp:t :member-name
                                   "storageLimit")
                                  (user-admins :target-type user-admins
                                   :member-name "userAdmins")
                                  (group-admins :target-type group-admins
                                   :member-name "groupAdmins")
                                  (roles :target-type roles :member-name
                                   "roles")
                                  (user-kmskey :target-type kmskey :member-name
                                   "userKMSKey")
                                  (user-count :target-type user-count
                                   :member-name "userCount")
                                  (content-size :target-type content-size
                                   :member-name "contentSize")
                                  (supported-email-domains :target-type
                                   supported-email-domains-status :member-name
                                   "supportedEmailDomains"))
                                 (:shape-name "GetSpaceOutput"))

(smithy/sdk/shapes:define-list group-admins :member admin-id)

(smithy/sdk/shapes:define-type group-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type identity-store-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type invite-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type invite-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kmskey smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-channels-input common-lisp:nil
                                ((space-id :target-type space-id :required
                                  common-lisp:t :member-name "spaceId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type list-channels-limit
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListChannelsInput"))

(smithy/sdk/shapes:define-type list-channels-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-channels-output common-lisp:nil
                                 ((channels :target-type channels-list
                                   :required common-lisp:t :member-name
                                   "channels")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListChannelsOutput"))

(smithy/sdk/shapes:define-input list-spaces-input common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (max-results :target-type list-spaces-limit
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListSpacesInput"))

(smithy/sdk/shapes:define-type list-spaces-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-output list-spaces-output common-lisp:nil
                                 ((spaces :target-type spaces-list :required
                                   common-lisp:t :member-name "spaces")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListSpacesOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type provisioning-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-admin-input common-lisp:nil
                                ((space-id :target-type space-id :required
                                  common-lisp:t :member-name "spaceId"
                                  :http-label common-lisp:t)
                                 (admin-id :target-type admin-id :required
                                  common-lisp:t :member-name "adminId"
                                  :http-label common-lisp:t))
                                (:shape-name "RegisterAdminInput"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum role
    common-lisp:nil
  (:expert "EXPERT")
  (:moderator "MODERATOR")
  (:administrator "ADMINISTRATOR")
  (:supportrequestor "SUPPORTREQUESTOR"))

(smithy/sdk/shapes:define-list role-list :member role)

(smithy/sdk/shapes:define-map roles :key accessor-id :value role-list)

(smithy/sdk/shapes:define-input send-invites-input common-lisp:nil
                                ((space-id :target-type space-id :required
                                  common-lisp:t :member-name "spaceId"
                                  :http-label common-lisp:t)
                                 (accessor-ids :target-type accessor-id-list
                                  :required common-lisp:t :member-name
                                  "accessorIds")
                                 (title :target-type invite-title :required
                                  common-lisp:t :member-name "title")
                                 (body :target-type invite-body :required
                                  common-lisp:t :member-name "body"))
                                (:shape-name "SendInvitesInput"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure space-data common-lisp:nil
                                    ((space-id :target-type space-id :required
                                      common-lisp:t :member-name "spaceId")
                                     (arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (name :target-type space-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      space-description :member-name
                                      "description")
                                     (status :target-type provisioning-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (configuration-status :target-type
                                      configuration-status :required
                                      common-lisp:t :member-name
                                      "configurationStatus")
                                     (vanity-domain-status :target-type
                                      vanity-domain-status :required
                                      common-lisp:t :member-name
                                      "vanityDomainStatus")
                                     (vanity-domain :target-type url :required
                                      common-lisp:t :member-name
                                      "vanityDomain")
                                     (random-domain :target-type url :required
                                      common-lisp:t :member-name
                                      "randomDomain")
                                     (tier :target-type tier-level :required
                                      common-lisp:t :member-name "tier")
                                     (storage-limit :target-type storage-limit
                                      :required common-lisp:t :member-name
                                      "storageLimit")
                                     (create-date-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createDateTime" :timestamp-format
                                      "date-time")
                                     (delete-date-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "deleteDateTime"
                                      :timestamp-format "date-time")
                                     (user-kmskey :target-type kmskey
                                      :member-name "userKMSKey")
                                     (user-count :target-type user-count
                                      :member-name "userCount")
                                     (content-size :target-type content-size
                                      :member-name "contentSize")
                                     (supported-email-domains :target-type
                                      supported-email-domains-status
                                      :member-name "supportedEmailDomains"))
                                    (:shape-name "SpaceData"))

(smithy/sdk/shapes:define-type space-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type space-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type space-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type space-subdomain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list spaces-list :member space-data)

(smithy/sdk/shapes:define-type storage-limit smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure supported-email-domains-parameters
                                    common-lisp:nil
                                    ((enabled :target-type
                                      feature-enable-parameter :member-name
                                      "enabled")
                                     (allowed-domains :target-type
                                      allowed-domains-list :member-name
                                      "allowedDomains"))
                                    (:shape-name
                                     "SupportedEmailDomainsParameters"))

(smithy/sdk/shapes:define-structure supported-email-domains-status
                                    common-lisp:nil
                                    ((enabled :target-type
                                      feature-enable-status :member-name
                                      "enabled")
                                     (allowed-domains :target-type
                                      allowed-domains-list :member-name
                                      "allowedDomains"))
                                    (:shape-name "SupportedEmailDomainsStatus"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-enum tier-level
    common-lisp:nil
  (:basic "BASIC")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-channel-input common-lisp:nil
                                ((space-id :target-type space-id :required
                                  common-lisp:t :member-name "spaceId"
                                  :http-label common-lisp:t)
                                 (channel-id :target-type channel-id :required
                                  common-lisp:t :member-name "channelId"
                                  :http-label common-lisp:t)
                                 (channel-name :target-type channel-name
                                  :required common-lisp:t :member-name
                                  "channelName")
                                 (channel-description :target-type
                                  channel-description :member-name
                                  "channelDescription"))
                                (:shape-name "UpdateChannelInput"))

(smithy/sdk/shapes:define-output update-channel-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateChannelOutput"))

(smithy/sdk/shapes:define-input update-space-input common-lisp:nil
                                ((space-id :target-type space-id :required
                                  common-lisp:t :member-name "spaceId"
                                  :http-label common-lisp:t)
                                 (description :target-type space-description
                                  :member-name "description")
                                 (tier :target-type tier-level :member-name
                                  "tier")
                                 (role-arn :target-type arn :member-name
                                  "roleArn")
                                 (supported-email-domains :target-type
                                  supported-email-domains-parameters
                                  :member-name "supportedEmailDomains"))
                                (:shape-name "UpdateSpaceInput"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list user-admins :member admin-id)

(smithy/sdk/shapes:define-type user-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

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

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "unknownOperation")
  (:cannot-parse "cannotParse")
  (:field-validation-failed "fieldValidationFailed")
  (:other "other"))

(smithy/sdk/shapes:define-enum vanity-domain-status
    common-lisp:nil
  (:pending "PENDING")
  (:approved "APPROVED")
  (:unapproved "UNAPPROVED"))

(smithy/sdk/operation:define-operation batch-add-channel-role-to-accessors
                                       :shape-name
                                       "BatchAddChannelRoleToAccessors" :input
                                       batch-add-channel-role-to-accessors-input
                                       :output
                                       batch-add-channel-role-to-accessors-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/spaces/{spaceId}/channels/{channelId}/roles"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-add-role :shape-name
                                       "BatchAddRole" :input
                                       batch-add-role-input :output
                                       batch-add-role-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/spaces/{spaceId}/roles" :code 200)

(smithy/sdk/operation:define-operation batch-remove-channel-role-from-accessors
                                       :shape-name
                                       "BatchRemoveChannelRoleFromAccessors"
                                       :input
                                       batch-remove-channel-role-from-accessors-input
                                       :output
                                       batch-remove-channel-role-from-accessors-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/spaces/{spaceId}/channels/{channelId}/roles"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-remove-role :shape-name
                                       "BatchRemoveRole" :input
                                       batch-remove-role-input :output
                                       batch-remove-role-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/spaces/{spaceId}/roles" :code 200)

(smithy/sdk/operation:define-operation create-channel :shape-name
                                       "CreateChannel" :input
                                       create-channel-input :output
                                       create-channel-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/spaces/{spaceId}/channels" :code 200)

(smithy/sdk/operation:define-operation create-space :shape-name "CreateSpace"
                                       :input create-space-input :output
                                       create-space-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/spaces" :code 200)

(smithy/sdk/operation:define-operation delete-space :shape-name "DeleteSpace"
                                       :input delete-space-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/spaces/{spaceId}" :code 200)

(smithy/sdk/operation:define-operation deregister-admin :shape-name
                                       "DeregisterAdmin" :input
                                       deregister-admin-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/spaces/{spaceId}/admins/{adminId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-channel :shape-name "GetChannel"
                                       :input get-channel-input :output
                                       get-channel-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/spaces/{spaceId}/channels/{channelId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-space :shape-name "GetSpace" :input
                                       get-space-input :output get-space-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/spaces/{spaceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-channels :shape-name "ListChannels"
                                       :input list-channels-input :output
                                       list-channels-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/spaces/{spaceId}/channels" :code 200)

(smithy/sdk/operation:define-operation list-spaces :shape-name "ListSpaces"
                                       :input list-spaces-input :output
                                       list-spaces-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/spaces" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation register-admin :shape-name
                                       "RegisterAdmin" :input
                                       register-admin-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/spaces/{spaceId}/admins/{adminId}"
                                       :code 200)

(smithy/sdk/operation:define-operation send-invites :shape-name "SendInvites"
                                       :input send-invites-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/spaces/{spaceId}/invite" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-channel :shape-name
                                       "UpdateChannel" :input
                                       update-channel-input :output
                                       update-channel-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/spaces/{spaceId}/channels/{channelId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-space :shape-name "UpdateSpace"
                                       :input update-space-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/spaces/{spaceId}"
                                       :code 200)
