(uiop/package:define-package #:pira/directory-service (:use)
                             (:export #:adassessment-limit-exceeded-exception
                              #:accept-shared-directory
                              #:access-denied-exception #:access-url
                              #:add-ip-routes #:add-region
                              #:add-tags-to-resource #:added-date-time
                              #:additional-regions #:alias-name #:assessment
                              #:assessment-configuration #:assessment-id
                              #:assessment-instance-id
                              #:assessment-instance-ids #:assessment-limit
                              #:assessment-report #:assessment-report-type
                              #:assessment-reports #:assessment-start-time
                              #:assessment-status #:assessment-status-code
                              #:assessment-status-reason #:assessment-summary
                              #:assessment-validation
                              #:assessment-validation-category
                              #:assessment-validation-name
                              #:assessment-validation-status
                              #:assessment-validation-status-code
                              #:assessment-validation-status-reason
                              #:assessment-validation-time-stamp
                              #:assessment-validations #:assessment-version
                              #:assessments #:attribute #:attribute-name
                              #:attribute-value #:attributes
                              #:authentication-failed-exception
                              #:availability-zone #:availability-zones
                              #:cancel-schema-extension #:certificate
                              #:certificate-already-exists-exception
                              #:certificate-cn #:certificate-data
                              #:certificate-does-not-exist-exception
                              #:certificate-expiry-date-time #:certificate-id
                              #:certificate-in-use-exception #:certificate-info
                              #:certificate-limit-exceeded-exception
                              #:certificate-registered-date-time
                              #:certificate-state #:certificate-state-reason
                              #:certificate-type #:certificates-info #:cidr-ip
                              #:cidr-ips #:client-authentication-setting-info
                              #:client-authentication-settings-info
                              #:client-authentication-status
                              #:client-authentication-type
                              #:client-cert-auth-settings #:client-exception
                              #:cloud-only-directories-limit-reached #:computer
                              #:computer-name #:computer-password
                              #:conditional-forwarder #:conditional-forwarders
                              #:connect-directory #:connect-password
                              #:connected-directories-limit-reached
                              #:create-alias #:create-computer
                              #:create-conditional-forwarder #:create-directory
                              #:create-hybrid-ad #:create-log-subscription
                              #:create-microsoft-ad #:create-snapshot
                              #:create-snapshot-before-schema-extension
                              #:create-snapshot-before-update #:create-trust
                              #:created-date-time #:customer-dns-ips
                              #:customer-id #:customer-user-name
                              #:data-access-status #:delete-adassessment
                              #:delete-associated-conditional-forwarder
                              #:delete-conditional-forwarder #:delete-directory
                              #:delete-log-subscription #:delete-snapshot
                              #:delete-trust #:deregister-certificate
                              #:deregister-event-topic #:describe-adassessment
                              #:describe-certificate
                              #:describe-client-authentication-settings
                              #:describe-conditional-forwarders
                              #:describe-directories
                              #:describe-directory-data-access
                              #:describe-domain-controllers
                              #:describe-event-topics
                              #:describe-hybrid-adupdate
                              #:describe-ldapssettings #:describe-regions
                              #:describe-settings #:describe-shared-directories
                              #:describe-snapshots #:describe-trusts
                              #:describe-update-directory #:description
                              #:desired-number-of-domain-controllers
                              #:directory-already-in-region-exception
                              #:directory-already-shared-exception
                              #:directory-configuration-setting-allowed-values
                              #:directory-configuration-setting-data-type
                              #:directory-configuration-setting-last-requested-date-time
                              #:directory-configuration-setting-last-updated-date-time
                              #:directory-configuration-setting-name
                              #:directory-configuration-setting-request-detailed-status
                              #:directory-configuration-setting-request-status-message
                              #:directory-configuration-setting-type
                              #:directory-configuration-setting-value
                              #:directory-configuration-status
                              #:directory-connect-settings
                              #:directory-connect-settings-description
                              #:directory-description #:directory-descriptions
                              #:directory-does-not-exist-exception
                              #:directory-edition #:directory-id
                              #:directory-ids
                              #:directory-in-desired-state-exception
                              #:directory-limit-exceeded-exception
                              #:directory-limits #:directory-name
                              #:directory-not-shared-exception
                              #:directory-service-20150416
                              #:directory-short-name #:directory-size
                              #:directory-stage #:directory-type
                              #:directory-unavailable-exception
                              #:directory-vpc-settings
                              #:directory-vpc-settings-description
                              #:disable-client-authentication
                              #:disable-directory-data-access #:disable-ldaps
                              #:disable-radius #:disable-sso #:dns-ip-addrs
                              #:domain-controller #:domain-controller-id
                              #:domain-controller-ids
                              #:domain-controller-limit-exceeded-exception
                              #:domain-controller-status
                              #:domain-controller-status-reason
                              #:domain-controllers
                              #:enable-client-authentication
                              #:enable-directory-data-access #:enable-ldaps
                              #:enable-radius #:enable-sso #:end-date-time
                              #:entity-already-exists-exception
                              #:entity-does-not-exist-exception #:event-topic
                              #:event-topics #:exception-message
                              #:get-directory-limits #:get-snapshot-limits
                              #:hybrid-administrator-account-update
                              #:hybrid-customer-instances-settings
                              #:hybrid-settings-description
                              #:hybrid-update-activities
                              #:hybrid-update-info-entries
                              #:hybrid-update-info-entry #:hybrid-update-type
                              #:hybrid-update-value
                              #:incompatible-settings-exception #:initiated-by
                              #:insufficient-permissions-exception
                              #:invalid-certificate-exception
                              #:invalid-client-auth-status-exception
                              #:invalid-ldapsstatus-exception
                              #:invalid-next-token-exception
                              #:invalid-parameter-exception
                              #:invalid-password-exception
                              #:invalid-target-exception #:ip-addr #:ip-addrs
                              #:ip-route #:ip-route-info
                              #:ip-route-limit-exceeded-exception
                              #:ip-route-status-msg #:ip-route-status-reason
                              #:ip-routes #:ip-routes-info #:ldapssetting-info
                              #:ldapssettings-info #:ldapsstatus
                              #:ldapsstatus-reason #:ldapstype
                              #:last-update-date-time #:last-updated-date-time
                              #:launch-time #:ldif-content #:limit
                              #:list-adassessments #:list-certificates
                              #:list-ip-routes #:list-log-subscriptions
                              #:list-schema-extensions #:list-tags-for-resource
                              #:log-group-name #:log-subscription
                              #:log-subscriptions
                              #:manual-snapshots-limit-reached #:next-token
                              #:no-available-certificate-exception #:notes
                              #:ocspurl #:osupdate-settings #:osversion
                              #:organizational-unit-dn
                              #:organizations-exception
                              #:owner-directory-description #:page-limit
                              #:password #:port-number
                              #:radius-authentication-protocol
                              #:radius-display-label #:radius-retries
                              #:radius-settings #:radius-shared-secret
                              #:radius-status #:radius-timeout
                              #:region-description
                              #:region-limit-exceeded-exception #:region-name
                              #:region-type #:regions-description
                              #:regions-info #:register-certificate
                              #:register-event-topic #:reject-shared-directory
                              #:remote-domain-name #:remote-domain-names
                              #:remove-ip-routes #:remove-region
                              #:remove-tags-from-resource #:replication-scope
                              #:request-id #:reset-user-password #:resource-id
                              #:restore-from-snapshot #:sid
                              #:schema-extension-id #:schema-extension-info
                              #:schema-extension-status
                              #:schema-extension-status-reason
                              #:schema-extensions-info #:secret-arn
                              #:security-group-id #:security-group-ids
                              #:selective-auth #:server #:servers
                              #:service-exception #:setting #:setting-entries
                              #:setting-entry #:settings #:share-directory
                              #:share-limit-exceeded-exception #:share-method
                              #:share-status #:share-target
                              #:shared-directories #:shared-directory
                              #:snapshot #:snapshot-id #:snapshot-ids
                              #:snapshot-limit-exceeded-exception
                              #:snapshot-limits #:snapshot-name
                              #:snapshot-status #:snapshot-type #:snapshots
                              #:sso-enabled #:stage-reason #:start-adassessment
                              #:start-date-time #:start-schema-extension
                              #:start-time #:state-last-updated-date-time
                              #:subnet-id #:subnet-ids
                              #:subscription-created-date-time #:tag #:tag-key
                              #:tag-keys #:tag-limit-exceeded-exception
                              #:tag-value #:tags #:target-id #:target-type
                              #:topic-arn #:topic-name #:topic-names
                              #:topic-status #:trust #:trust-direction
                              #:trust-id #:trust-ids #:trust-password
                              #:trust-state #:trust-state-reason #:trust-type
                              #:trusts #:unshare-directory #:unshare-target
                              #:unsupported-operation-exception
                              #:unsupported-settings-exception
                              #:update-activities
                              #:update-conditional-forwarder
                              #:update-directory-setup #:update-hybrid-ad
                              #:update-info-entry
                              #:update-number-of-domain-controllers
                              #:update-radius
                              #:update-security-group-for-directory-controllers
                              #:update-settings #:update-status
                              #:update-status-reason #:update-trust
                              #:update-type #:update-value #:use-same-username
                              #:user-does-not-exist-exception #:user-name
                              #:user-password #:verify-trust #:vpc-id
                              #:directory-service-error))
(common-lisp:in-package #:pira/directory-service)

(common-lisp:define-condition directory-service-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service directory-service-20150416 :shape-name
                                   "DirectoryService_20150416" :version
                                   "2015-04-16" :title "AWS Directory Service"
                                   :operations
                                   '(accept-shared-directory add-ip-routes
                                     add-region add-tags-to-resource
                                     cancel-schema-extension connect-directory
                                     create-alias create-computer
                                     create-conditional-forwarder
                                     create-directory create-hybrid-ad
                                     create-log-subscription
                                     create-microsoft-ad create-snapshot
                                     create-trust delete-adassessment
                                     delete-conditional-forwarder
                                     delete-directory delete-log-subscription
                                     delete-snapshot delete-trust
                                     deregister-certificate
                                     deregister-event-topic
                                     describe-adassessment describe-certificate
                                     describe-client-authentication-settings
                                     describe-conditional-forwarders
                                     describe-directories
                                     describe-directory-data-access
                                     describe-domain-controllers
                                     describe-event-topics
                                     describe-hybrid-adupdate
                                     describe-ldapssettings describe-regions
                                     describe-settings
                                     describe-shared-directories
                                     describe-snapshots describe-trusts
                                     describe-update-directory
                                     disable-client-authentication
                                     disable-directory-data-access
                                     disable-ldaps disable-radius disable-sso
                                     enable-client-authentication
                                     enable-directory-data-access enable-ldaps
                                     enable-radius enable-sso
                                     get-directory-limits get-snapshot-limits
                                     list-adassessments list-certificates
                                     list-ip-routes list-log-subscriptions
                                     list-schema-extensions
                                     list-tags-for-resource
                                     register-certificate register-event-topic
                                     reject-shared-directory remove-ip-routes
                                     remove-region remove-tags-from-resource
                                     reset-user-password restore-from-snapshot
                                     share-directory start-adassessment
                                     start-schema-extension unshare-directory
                                     update-conditional-forwarder
                                     update-directory-setup update-hybrid-ad
                                     update-number-of-domain-controllers
                                     update-radius update-settings update-trust
                                     verify-trust)
                                   :xml-namespace
                                   '(:uri
                                     "http://directoryservice.amazonaws.com/doc/2015-04-16/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Directory Service")
                                      ("arnNamespace" . "ds")
                                      ("cloudFormationName"
                                       . "DirectoryService")
                                      ("cloudTrailEventSource"
                                       . "ds.amazonaws.com")
                                      ("docId" . "ds-2015-04-16")
                                      ("endpointPrefix" . "ds"))
                                     ("aws.auth#sigv4" ("name" . "ds"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error adassessment-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name
                                 "ADAssessmentLimitExceededException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-input accept-shared-directory-request common-lisp:nil
                                ((shared-directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "SharedDirectoryId"))
                                (:shape-name "AcceptSharedDirectoryRequest"))

(smithy/sdk/shapes:define-output accept-shared-directory-result common-lisp:nil
                                 ((shared-directory :target-type
                                   shared-directory :member-name
                                   "SharedDirectory"))
                                 (:shape-name "AcceptSharedDirectoryResult"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-type access-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input add-ip-routes-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (ip-routes :target-type ip-routes :required
                                  common-lisp:t :member-name "IpRoutes")
                                 (update-security-group-for-directory-controllers
                                  :target-type
                                  update-security-group-for-directory-controllers
                                  :member-name
                                  "UpdateSecurityGroupForDirectoryControllers"))
                                (:shape-name "AddIpRoutesRequest"))

(smithy/sdk/shapes:define-output add-ip-routes-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AddIpRoutesResult"))

(smithy/sdk/shapes:define-input add-region-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (region-name :target-type region-name
                                  :required common-lisp:t :member-name
                                  "RegionName")
                                 (vpcsettings :target-type
                                  directory-vpc-settings :required
                                  common-lisp:t :member-name "VPCSettings"))
                                (:shape-name "AddRegionRequest"))

(smithy/sdk/shapes:define-output add-region-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AddRegionResult"))

(smithy/sdk/shapes:define-input add-tags-to-resource-request common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "AddTagsToResourceRequest"))

(smithy/sdk/shapes:define-output add-tags-to-resource-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AddTagsToResourceResult"))

(smithy/sdk/shapes:define-type added-date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list additional-regions :member region-name)

(smithy/sdk/shapes:define-type alias-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure assessment common-lisp:nil
                                    ((assessment-id :target-type assessment-id
                                      :member-name "AssessmentId")
                                     (directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (dns-name :target-type directory-name
                                      :member-name "DnsName")
                                     (start-time :target-type
                                      assessment-start-time :member-name
                                      "StartTime")
                                     (last-update-date-time :target-type
                                      last-update-date-time :member-name
                                      "LastUpdateDateTime")
                                     (status :target-type assessment-status
                                      :member-name "Status")
                                     (status-code :target-type
                                      assessment-status-code :member-name
                                      "StatusCode")
                                     (status-reason :target-type
                                      assessment-status-reason :member-name
                                      "StatusReason")
                                     (customer-dns-ips :target-type
                                      customer-dns-ips :member-name
                                      "CustomerDnsIps")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (subnet-ids :target-type subnet-ids
                                      :member-name "SubnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "SecurityGroupIds")
                                     (self-managed-instance-ids :target-type
                                      assessment-instance-ids :member-name
                                      "SelfManagedInstanceIds")
                                     (report-type :target-type
                                      assessment-report-type :member-name
                                      "ReportType")
                                     (version :target-type assessment-version
                                      :member-name "Version"))
                                    (:shape-name "Assessment"))

(smithy/sdk/shapes:define-structure assessment-configuration common-lisp:nil
                                    ((customer-dns-ips :target-type
                                      customer-dns-ips :required common-lisp:t
                                      :member-name "CustomerDnsIps")
                                     (dns-name :target-type directory-name
                                      :required common-lisp:t :member-name
                                      "DnsName")
                                     (vpc-settings :target-type
                                      directory-vpc-settings :required
                                      common-lisp:t :member-name "VpcSettings")
                                     (instance-ids :target-type
                                      assessment-instance-ids :required
                                      common-lisp:t :member-name "InstanceIds")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "SecurityGroupIds"))
                                    (:shape-name "AssessmentConfiguration"))

(smithy/sdk/shapes:define-type assessment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assessment-instance-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list assessment-instance-ids :member
                               assessment-instance-id)

(smithy/sdk/shapes:define-type assessment-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure assessment-report common-lisp:nil
                                    ((domain-controller-ip :target-type ip-addr
                                      :member-name "DomainControllerIp")
                                     (validations :target-type
                                      assessment-validations :member-name
                                      "Validations"))
                                    (:shape-name "AssessmentReport"))

(smithy/sdk/shapes:define-type assessment-report-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list assessment-reports :member assessment-report)

(smithy/sdk/shapes:define-type assessment-start-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type assessment-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assessment-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assessment-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure assessment-summary common-lisp:nil
                                    ((assessment-id :target-type assessment-id
                                      :member-name "AssessmentId")
                                     (directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (dns-name :target-type directory-name
                                      :member-name "DnsName")
                                     (start-time :target-type
                                      assessment-start-time :member-name
                                      "StartTime")
                                     (last-update-date-time :target-type
                                      last-update-date-time :member-name
                                      "LastUpdateDateTime")
                                     (status :target-type assessment-status
                                      :member-name "Status")
                                     (customer-dns-ips :target-type
                                      customer-dns-ips :member-name
                                      "CustomerDnsIps")
                                     (report-type :target-type
                                      assessment-report-type :member-name
                                      "ReportType"))
                                    (:shape-name "AssessmentSummary"))

(smithy/sdk/shapes:define-structure assessment-validation common-lisp:nil
                                    ((category :target-type
                                      assessment-validation-category
                                      :member-name "Category")
                                     (name :target-type
                                      assessment-validation-name :member-name
                                      "Name")
                                     (status :target-type
                                      assessment-validation-status :member-name
                                      "Status")
                                     (status-code :target-type
                                      assessment-validation-status-code
                                      :member-name "StatusCode")
                                     (status-reason :target-type
                                      assessment-validation-status-reason
                                      :member-name "StatusReason")
                                     (start-time :target-type
                                      assessment-validation-time-stamp
                                      :member-name "StartTime")
                                     (last-update-date-time :target-type
                                      assessment-validation-time-stamp
                                      :member-name "LastUpdateDateTime"))
                                    (:shape-name "AssessmentValidation"))

(smithy/sdk/shapes:define-type assessment-validation-category
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assessment-validation-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assessment-validation-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assessment-validation-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assessment-validation-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type assessment-validation-time-stamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list assessment-validations :member
                               assessment-validation)

(smithy/sdk/shapes:define-type assessment-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list assessments :member assessment-summary)

(smithy/sdk/shapes:define-structure attribute common-lisp:nil
                                    ((name :target-type attribute-name
                                      :member-name "Name")
                                     (value :target-type attribute-value
                                      :member-name "Value"))
                                    (:shape-name "Attribute"))

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attributes :member attribute)

(smithy/sdk/shapes:define-error authentication-failed-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "AuthenticationFailedException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-type availability-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list availability-zones :member availability-zone)

(smithy/sdk/shapes:define-input cancel-schema-extension-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (schema-extension-id :target-type
                                  schema-extension-id :required common-lisp:t
                                  :member-name "SchemaExtensionId"))
                                (:shape-name "CancelSchemaExtensionRequest"))

(smithy/sdk/shapes:define-output cancel-schema-extension-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelSchemaExtensionResult"))

(smithy/sdk/shapes:define-structure certificate common-lisp:nil
                                    ((certificate-id :target-type
                                      certificate-id :member-name
                                      "CertificateId")
                                     (state :target-type certificate-state
                                      :member-name "State")
                                     (state-reason :target-type
                                      certificate-state-reason :member-name
                                      "StateReason")
                                     (common-name :target-type certificate-cn
                                      :member-name "CommonName")
                                     (registered-date-time :target-type
                                      certificate-registered-date-time
                                      :member-name "RegisteredDateTime")
                                     (expiry-date-time :target-type
                                      certificate-expiry-date-time :member-name
                                      "ExpiryDateTime")
                                     (type :target-type certificate-type
                                      :member-name "Type")
                                     (client-cert-auth-settings :target-type
                                      client-cert-auth-settings :member-name
                                      "ClientCertAuthSettings"))
                                    (:shape-name "Certificate"))

(smithy/sdk/shapes:define-error certificate-already-exists-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name
                                 "CertificateAlreadyExistsException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-type certificate-cn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error certificate-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name
                                 "CertificateDoesNotExistException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-type certificate-expiry-date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type certificate-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error certificate-in-use-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "CertificateInUseException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-structure certificate-info common-lisp:nil
                                    ((certificate-id :target-type
                                      certificate-id :member-name
                                      "CertificateId")
                                     (common-name :target-type certificate-cn
                                      :member-name "CommonName")
                                     (state :target-type certificate-state
                                      :member-name "State")
                                     (expiry-date-time :target-type
                                      certificate-expiry-date-time :member-name
                                      "ExpiryDateTime")
                                     (type :target-type certificate-type
                                      :member-name "Type"))
                                    (:shape-name "CertificateInfo"))

(smithy/sdk/shapes:define-error certificate-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name
                                 "CertificateLimitExceededException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-type certificate-registered-date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum certificate-state
    common-lisp:nil
  (:registering "Registering")
  (:registered "Registered")
  (:register-failed "RegisterFailed")
  (:deregistering "Deregistering")
  (:deregistered "Deregistered")
  (:deregister-failed "DeregisterFailed"))

(smithy/sdk/shapes:define-type certificate-state-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum certificate-type
    common-lisp:nil
  (:client-cert-auth "ClientCertAuth")
  (:client-ldaps "ClientLDAPS"))

(smithy/sdk/shapes:define-list certificates-info :member certificate-info)

(smithy/sdk/shapes:define-type cidr-ip smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cidr-ips :member cidr-ip)

(smithy/sdk/shapes:define-structure client-authentication-setting-info
                                    common-lisp:nil
                                    ((type :target-type
                                      client-authentication-type :member-name
                                      "Type")
                                     (status :target-type
                                      client-authentication-status :member-name
                                      "Status")
                                     (last-updated-date-time :target-type
                                      last-updated-date-time :member-name
                                      "LastUpdatedDateTime"))
                                    (:shape-name
                                     "ClientAuthenticationSettingInfo"))

(smithy/sdk/shapes:define-list client-authentication-settings-info :member
                               client-authentication-setting-info)

(smithy/sdk/shapes:define-enum client-authentication-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-enum client-authentication-type
    common-lisp:nil
  (:smart-card "SmartCard")
  (:smart-card-or-password "SmartCardOrPassword"))

(smithy/sdk/shapes:define-structure client-cert-auth-settings common-lisp:nil
                                    ((ocspurl :target-type ocspurl :member-name
                                      "OCSPUrl"))
                                    (:shape-name "ClientCertAuthSettings"))

(smithy/sdk/shapes:define-error client-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "ClientException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-type cloud-only-directories-limit-reached
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure computer common-lisp:nil
                                    ((computer-id :target-type sid :member-name
                                      "ComputerId")
                                     (computer-name :target-type computer-name
                                      :member-name "ComputerName")
                                     (computer-attributes :target-type
                                      attributes :member-name
                                      "ComputerAttributes"))
                                    (:shape-name "Computer"))

(smithy/sdk/shapes:define-type computer-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type computer-password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure conditional-forwarder common-lisp:nil
                                    ((remote-domain-name :target-type
                                      remote-domain-name :member-name
                                      "RemoteDomainName")
                                     (dns-ip-addrs :target-type dns-ip-addrs
                                      :member-name "DnsIpAddrs")
                                     (replication-scope :target-type
                                      replication-scope :member-name
                                      "ReplicationScope"))
                                    (:shape-name "ConditionalForwarder"))

(smithy/sdk/shapes:define-list conditional-forwarders :member
                               conditional-forwarder)

(smithy/sdk/shapes:define-input connect-directory-request common-lisp:nil
                                ((name :target-type directory-name :required
                                  common-lisp:t :member-name "Name")
                                 (short-name :target-type directory-short-name
                                  :member-name "ShortName")
                                 (password :target-type connect-password
                                  :required common-lisp:t :member-name
                                  "Password")
                                 (description :target-type description
                                  :member-name "Description")
                                 (size :target-type directory-size :required
                                  common-lisp:t :member-name "Size")
                                 (connect-settings :target-type
                                  directory-connect-settings :required
                                  common-lisp:t :member-name "ConnectSettings")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "ConnectDirectoryRequest"))

(smithy/sdk/shapes:define-output connect-directory-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId"))
                                 (:shape-name "ConnectDirectoryResult"))

(smithy/sdk/shapes:define-type connect-password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type connected-directories-limit-reached
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input create-alias-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (alias :target-type alias-name :required
                                  common-lisp:t :member-name "Alias"))
                                (:shape-name "CreateAliasRequest"))

(smithy/sdk/shapes:define-output create-alias-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId")
                                  (alias :target-type alias-name :member-name
                                   "Alias"))
                                 (:shape-name "CreateAliasResult"))

(smithy/sdk/shapes:define-input create-computer-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (computer-name :target-type computer-name
                                  :required common-lisp:t :member-name
                                  "ComputerName")
                                 (password :target-type computer-password
                                  :required common-lisp:t :member-name
                                  "Password")
                                 (organizational-unit-distinguished-name
                                  :target-type organizational-unit-dn
                                  :member-name
                                  "OrganizationalUnitDistinguishedName")
                                 (computer-attributes :target-type attributes
                                  :member-name "ComputerAttributes"))
                                (:shape-name "CreateComputerRequest"))

(smithy/sdk/shapes:define-output create-computer-result common-lisp:nil
                                 ((computer :target-type computer :member-name
                                   "Computer"))
                                 (:shape-name "CreateComputerResult"))

(smithy/sdk/shapes:define-input create-conditional-forwarder-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (remote-domain-name :target-type
                                  remote-domain-name :required common-lisp:t
                                  :member-name "RemoteDomainName")
                                 (dns-ip-addrs :target-type dns-ip-addrs
                                  :required common-lisp:t :member-name
                                  "DnsIpAddrs"))
                                (:shape-name
                                 "CreateConditionalForwarderRequest"))

(smithy/sdk/shapes:define-output create-conditional-forwarder-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "CreateConditionalForwarderResult"))

(smithy/sdk/shapes:define-input create-directory-request common-lisp:nil
                                ((name :target-type directory-name :required
                                  common-lisp:t :member-name "Name")
                                 (short-name :target-type directory-short-name
                                  :member-name "ShortName")
                                 (password :target-type password :required
                                  common-lisp:t :member-name "Password")
                                 (description :target-type description
                                  :member-name "Description")
                                 (size :target-type directory-size :required
                                  common-lisp:t :member-name "Size")
                                 (vpc-settings :target-type
                                  directory-vpc-settings :member-name
                                  "VpcSettings")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateDirectoryRequest"))

(smithy/sdk/shapes:define-output create-directory-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId"))
                                 (:shape-name "CreateDirectoryResult"))

(smithy/sdk/shapes:define-input create-hybrid-adrequest common-lisp:nil
                                ((secret-arn :target-type secret-arn :required
                                  common-lisp:t :member-name "SecretArn")
                                 (assessment-id :target-type assessment-id
                                  :required common-lisp:t :member-name
                                  "AssessmentId")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateHybridADRequest"))

(smithy/sdk/shapes:define-output create-hybrid-adresult common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId"))
                                 (:shape-name "CreateHybridADResult"))

(smithy/sdk/shapes:define-input create-log-subscription-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (log-group-name :target-type log-group-name
                                  :required common-lisp:t :member-name
                                  "LogGroupName"))
                                (:shape-name "CreateLogSubscriptionRequest"))

(smithy/sdk/shapes:define-output create-log-subscription-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateLogSubscriptionResult"))

(smithy/sdk/shapes:define-input create-microsoft-adrequest common-lisp:nil
                                ((name :target-type directory-name :required
                                  common-lisp:t :member-name "Name")
                                 (short-name :target-type directory-short-name
                                  :member-name "ShortName")
                                 (password :target-type password :required
                                  common-lisp:t :member-name "Password")
                                 (description :target-type description
                                  :member-name "Description")
                                 (vpc-settings :target-type
                                  directory-vpc-settings :required
                                  common-lisp:t :member-name "VpcSettings")
                                 (edition :target-type directory-edition
                                  :member-name "Edition")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateMicrosoftADRequest"))

(smithy/sdk/shapes:define-output create-microsoft-adresult common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId"))
                                 (:shape-name "CreateMicrosoftADResult"))

(smithy/sdk/shapes:define-type create-snapshot-before-schema-extension
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type create-snapshot-before-update
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input create-snapshot-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (name :target-type snapshot-name :member-name
                                  "Name"))
                                (:shape-name "CreateSnapshotRequest"))

(smithy/sdk/shapes:define-output create-snapshot-result common-lisp:nil
                                 ((snapshot-id :target-type snapshot-id
                                   :member-name "SnapshotId"))
                                 (:shape-name "CreateSnapshotResult"))

(smithy/sdk/shapes:define-input create-trust-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (remote-domain-name :target-type
                                  remote-domain-name :required common-lisp:t
                                  :member-name "RemoteDomainName")
                                 (trust-password :target-type trust-password
                                  :required common-lisp:t :member-name
                                  "TrustPassword")
                                 (trust-direction :target-type trust-direction
                                  :required common-lisp:t :member-name
                                  "TrustDirection")
                                 (trust-type :target-type trust-type
                                  :member-name "TrustType")
                                 (conditional-forwarder-ip-addrs :target-type
                                  dns-ip-addrs :member-name
                                  "ConditionalForwarderIpAddrs")
                                 (selective-auth :target-type selective-auth
                                  :member-name "SelectiveAuth"))
                                (:shape-name "CreateTrustRequest"))

(smithy/sdk/shapes:define-output create-trust-result common-lisp:nil
                                 ((trust-id :target-type trust-id :member-name
                                   "TrustId"))
                                 (:shape-name "CreateTrustResult"))

(smithy/sdk/shapes:define-type created-date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list customer-dns-ips :member ip-addr)

(smithy/sdk/shapes:define-type customer-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type customer-user-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-access-status
    common-lisp:nil
  (:disabled "Disabled")
  (:disabling "Disabling")
  (:enabled "Enabled")
  (:enabling "Enabling")
  (:failed "Failed"))

(smithy/sdk/shapes:define-input delete-adassessment-request common-lisp:nil
                                ((assessment-id :target-type assessment-id
                                  :required common-lisp:t :member-name
                                  "AssessmentId"))
                                (:shape-name "DeleteADAssessmentRequest"))

(smithy/sdk/shapes:define-output delete-adassessment-result common-lisp:nil
                                 ((assessment-id :target-type assessment-id
                                   :member-name "AssessmentId"))
                                 (:shape-name "DeleteADAssessmentResult"))

(smithy/sdk/shapes:define-type delete-associated-conditional-forwarder
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input delete-conditional-forwarder-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (remote-domain-name :target-type
                                  remote-domain-name :required common-lisp:t
                                  :member-name "RemoteDomainName"))
                                (:shape-name
                                 "DeleteConditionalForwarderRequest"))

(smithy/sdk/shapes:define-output delete-conditional-forwarder-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteConditionalForwarderResult"))

(smithy/sdk/shapes:define-input delete-directory-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId"))
                                (:shape-name "DeleteDirectoryRequest"))

(smithy/sdk/shapes:define-output delete-directory-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId"))
                                 (:shape-name "DeleteDirectoryResult"))

(smithy/sdk/shapes:define-input delete-log-subscription-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId"))
                                (:shape-name "DeleteLogSubscriptionRequest"))

(smithy/sdk/shapes:define-output delete-log-subscription-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteLogSubscriptionResult"))

(smithy/sdk/shapes:define-input delete-snapshot-request common-lisp:nil
                                ((snapshot-id :target-type snapshot-id
                                  :required common-lisp:t :member-name
                                  "SnapshotId"))
                                (:shape-name "DeleteSnapshotRequest"))

(smithy/sdk/shapes:define-output delete-snapshot-result common-lisp:nil
                                 ((snapshot-id :target-type snapshot-id
                                   :member-name "SnapshotId"))
                                 (:shape-name "DeleteSnapshotResult"))

(smithy/sdk/shapes:define-input delete-trust-request common-lisp:nil
                                ((trust-id :target-type trust-id :required
                                  common-lisp:t :member-name "TrustId")
                                 (delete-associated-conditional-forwarder
                                  :target-type
                                  delete-associated-conditional-forwarder
                                  :member-name
                                  "DeleteAssociatedConditionalForwarder"))
                                (:shape-name "DeleteTrustRequest"))

(smithy/sdk/shapes:define-output delete-trust-result common-lisp:nil
                                 ((trust-id :target-type trust-id :member-name
                                   "TrustId"))
                                 (:shape-name "DeleteTrustResult"))

(smithy/sdk/shapes:define-input deregister-certificate-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "CertificateId"))
                                (:shape-name "DeregisterCertificateRequest"))

(smithy/sdk/shapes:define-output deregister-certificate-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeregisterCertificateResult"))

(smithy/sdk/shapes:define-input deregister-event-topic-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (topic-name :target-type topic-name :required
                                  common-lisp:t :member-name "TopicName"))
                                (:shape-name "DeregisterEventTopicRequest"))

(smithy/sdk/shapes:define-output deregister-event-topic-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeregisterEventTopicResult"))

(smithy/sdk/shapes:define-input describe-adassessment-request common-lisp:nil
                                ((assessment-id :target-type assessment-id
                                  :required common-lisp:t :member-name
                                  "AssessmentId"))
                                (:shape-name "DescribeADAssessmentRequest"))

(smithy/sdk/shapes:define-output describe-adassessment-result common-lisp:nil
                                 ((assessment :target-type assessment
                                   :member-name "Assessment")
                                  (assessment-reports :target-type
                                   assessment-reports :member-name
                                   "AssessmentReports"))
                                 (:shape-name "DescribeADAssessmentResult"))

(smithy/sdk/shapes:define-input describe-certificate-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (certificate-id :target-type certificate-id
                                  :required common-lisp:t :member-name
                                  "CertificateId"))
                                (:shape-name "DescribeCertificateRequest"))

(smithy/sdk/shapes:define-output describe-certificate-result common-lisp:nil
                                 ((certificate :target-type certificate
                                   :member-name "Certificate"))
                                 (:shape-name "DescribeCertificateResult"))

(smithy/sdk/shapes:define-input describe-client-authentication-settings-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (type :target-type client-authentication-type
                                  :member-name "Type")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type page-limit :member-name
                                  "Limit"))
                                (:shape-name
                                 "DescribeClientAuthenticationSettingsRequest"))

(smithy/sdk/shapes:define-output describe-client-authentication-settings-result
                                 common-lisp:nil
                                 ((client-authentication-settings-info
                                   :target-type
                                   client-authentication-settings-info
                                   :member-name
                                   "ClientAuthenticationSettingsInfo")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeClientAuthenticationSettingsResult"))

(smithy/sdk/shapes:define-input describe-conditional-forwarders-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (remote-domain-names :target-type
                                  remote-domain-names :member-name
                                  "RemoteDomainNames"))
                                (:shape-name
                                 "DescribeConditionalForwardersRequest"))

(smithy/sdk/shapes:define-output describe-conditional-forwarders-result
                                 common-lisp:nil
                                 ((conditional-forwarders :target-type
                                   conditional-forwarders :member-name
                                   "ConditionalForwarders"))
                                 (:shape-name
                                  "DescribeConditionalForwardersResult"))

(smithy/sdk/shapes:define-input describe-directories-request common-lisp:nil
                                ((directory-ids :target-type directory-ids
                                  :member-name "DirectoryIds")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit :member-name
                                  "Limit"))
                                (:shape-name "DescribeDirectoriesRequest"))

(smithy/sdk/shapes:define-output describe-directories-result common-lisp:nil
                                 ((directory-descriptions :target-type
                                   directory-descriptions :member-name
                                   "DirectoryDescriptions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeDirectoriesResult"))

(smithy/sdk/shapes:define-input describe-directory-data-access-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId"))
                                (:shape-name
                                 "DescribeDirectoryDataAccessRequest"))

(smithy/sdk/shapes:define-output describe-directory-data-access-result
                                 common-lisp:nil
                                 ((data-access-status :target-type
                                   data-access-status :member-name
                                   "DataAccessStatus"))
                                 (:shape-name
                                  "DescribeDirectoryDataAccessResult"))

(smithy/sdk/shapes:define-input describe-domain-controllers-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (domain-controller-ids :target-type
                                  domain-controller-ids :member-name
                                  "DomainControllerIds")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit :member-name
                                  "Limit"))
                                (:shape-name
                                 "DescribeDomainControllersRequest"))

(smithy/sdk/shapes:define-output describe-domain-controllers-result
                                 common-lisp:nil
                                 ((domain-controllers :target-type
                                   domain-controllers :member-name
                                   "DomainControllers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeDomainControllersResult"))

(smithy/sdk/shapes:define-input describe-event-topics-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :member-name "DirectoryId")
                                 (topic-names :target-type topic-names
                                  :member-name "TopicNames"))
                                (:shape-name "DescribeEventTopicsRequest"))

(smithy/sdk/shapes:define-output describe-event-topics-result common-lisp:nil
                                 ((event-topics :target-type event-topics
                                   :member-name "EventTopics"))
                                 (:shape-name "DescribeEventTopicsResult"))

(smithy/sdk/shapes:define-input describe-hybrid-adupdate-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (update-type :target-type hybrid-update-type
                                  :member-name "UpdateType")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeHybridADUpdateRequest"))

(smithy/sdk/shapes:define-output describe-hybrid-adupdate-result
                                 common-lisp:nil
                                 ((update-activities :target-type
                                   hybrid-update-activities :member-name
                                   "UpdateActivities")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeHybridADUpdateResult"))

(smithy/sdk/shapes:define-input describe-ldapssettings-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (type :target-type ldapstype :member-name
                                  "Type")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type page-limit :member-name
                                  "Limit"))
                                (:shape-name "DescribeLDAPSSettingsRequest"))

(smithy/sdk/shapes:define-output describe-ldapssettings-result common-lisp:nil
                                 ((ldapssettings-info :target-type
                                   ldapssettings-info :member-name
                                   "LDAPSSettingsInfo")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeLDAPSSettingsResult"))

(smithy/sdk/shapes:define-input describe-regions-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (region-name :target-type region-name
                                  :member-name "RegionName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeRegionsRequest"))

(smithy/sdk/shapes:define-output describe-regions-result common-lisp:nil
                                 ((regions-description :target-type
                                   regions-description :member-name
                                   "RegionsDescription")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeRegionsResult"))

(smithy/sdk/shapes:define-input describe-settings-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (status :target-type
                                  directory-configuration-status :member-name
                                  "Status")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeSettingsRequest"))

(smithy/sdk/shapes:define-output describe-settings-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId")
                                  (setting-entries :target-type setting-entries
                                   :member-name "SettingEntries")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeSettingsResult"))

(smithy/sdk/shapes:define-input describe-shared-directories-request
                                common-lisp:nil
                                ((owner-directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "OwnerDirectoryId")
                                 (shared-directory-ids :target-type
                                  directory-ids :member-name
                                  "SharedDirectoryIds")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit :member-name
                                  "Limit"))
                                (:shape-name
                                 "DescribeSharedDirectoriesRequest"))

(smithy/sdk/shapes:define-output describe-shared-directories-result
                                 common-lisp:nil
                                 ((shared-directories :target-type
                                   shared-directories :member-name
                                   "SharedDirectories")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "DescribeSharedDirectoriesResult"))

(smithy/sdk/shapes:define-input describe-snapshots-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :member-name "DirectoryId")
                                 (snapshot-ids :target-type snapshot-ids
                                  :member-name "SnapshotIds")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit :member-name
                                  "Limit"))
                                (:shape-name "DescribeSnapshotsRequest"))

(smithy/sdk/shapes:define-output describe-snapshots-result common-lisp:nil
                                 ((snapshots :target-type snapshots
                                   :member-name "Snapshots")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeSnapshotsResult"))

(smithy/sdk/shapes:define-input describe-trusts-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :member-name "DirectoryId")
                                 (trust-ids :target-type trust-ids :member-name
                                  "TrustIds")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit :member-name
                                  "Limit"))
                                (:shape-name "DescribeTrustsRequest"))

(smithy/sdk/shapes:define-output describe-trusts-result common-lisp:nil
                                 ((trusts :target-type trusts :member-name
                                   "Trusts")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeTrustsResult"))

(smithy/sdk/shapes:define-input describe-update-directory-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (update-type :target-type update-type
                                  :required common-lisp:t :member-name
                                  "UpdateType")
                                 (region-name :target-type region-name
                                  :member-name "RegionName")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeUpdateDirectoryRequest"))

(smithy/sdk/shapes:define-output describe-update-directory-result
                                 common-lisp:nil
                                 ((update-activities :target-type
                                   update-activities :member-name
                                   "UpdateActivities")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeUpdateDirectoryResult"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type desired-number-of-domain-controllers
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error directory-already-in-region-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name
                                 "DirectoryAlreadyInRegionException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-error directory-already-shared-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "DirectoryAlreadySharedException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-type directory-configuration-setting-allowed-values
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type directory-configuration-setting-data-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 directory-configuration-setting-last-requested-date-time
 smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type
 directory-configuration-setting-last-updated-date-time
 smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type directory-configuration-setting-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map
 directory-configuration-setting-request-detailed-status :key region-name
 :value directory-configuration-status)

(smithy/sdk/shapes:define-type
 directory-configuration-setting-request-status-message
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type directory-configuration-setting-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type directory-configuration-setting-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum directory-configuration-status
    common-lisp:nil
  (:requested "Requested")
  (:updating "Updating")
  (:updated "Updated")
  (:failed "Failed")
  (:default "Default"))

(smithy/sdk/shapes:define-structure directory-connect-settings common-lisp:nil
                                    ((vpc-id :target-type vpc-id :required
                                      common-lisp:t :member-name "VpcId")
                                     (subnet-ids :target-type subnet-ids
                                      :required common-lisp:t :member-name
                                      "SubnetIds")
                                     (customer-dns-ips :target-type
                                      dns-ip-addrs :required common-lisp:t
                                      :member-name "CustomerDnsIps")
                                     (customer-user-name :target-type user-name
                                      :required common-lisp:t :member-name
                                      "CustomerUserName"))
                                    (:shape-name "DirectoryConnectSettings"))

(smithy/sdk/shapes:define-structure directory-connect-settings-description
                                    common-lisp:nil
                                    ((vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (subnet-ids :target-type subnet-ids
                                      :member-name "SubnetIds")
                                     (customer-user-name :target-type user-name
                                      :member-name "CustomerUserName")
                                     (security-group-id :target-type
                                      security-group-id :member-name
                                      "SecurityGroupId")
                                     (availability-zones :target-type
                                      availability-zones :member-name
                                      "AvailabilityZones")
                                     (connect-ips :target-type ip-addrs
                                      :member-name "ConnectIps"))
                                    (:shape-name
                                     "DirectoryConnectSettingsDescription"))

(smithy/sdk/shapes:define-structure directory-description common-lisp:nil
                                    ((directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (name :target-type directory-name
                                      :member-name "Name")
                                     (short-name :target-type
                                      directory-short-name :member-name
                                      "ShortName")
                                     (size :target-type directory-size
                                      :member-name "Size")
                                     (edition :target-type directory-edition
                                      :member-name "Edition")
                                     (alias :target-type alias-name
                                      :member-name "Alias")
                                     (access-url :target-type access-url
                                      :member-name "AccessUrl")
                                     (description :target-type description
                                      :member-name "Description")
                                     (dns-ip-addrs :target-type dns-ip-addrs
                                      :member-name "DnsIpAddrs")
                                     (stage :target-type directory-stage
                                      :member-name "Stage")
                                     (share-status :target-type share-status
                                      :member-name "ShareStatus")
                                     (share-method :target-type share-method
                                      :member-name "ShareMethod")
                                     (share-notes :target-type notes
                                      :member-name "ShareNotes")
                                     (launch-time :target-type launch-time
                                      :member-name "LaunchTime")
                                     (stage-last-updated-date-time :target-type
                                      last-updated-date-time :member-name
                                      "StageLastUpdatedDateTime")
                                     (type :target-type directory-type
                                      :member-name "Type")
                                     (vpc-settings :target-type
                                      directory-vpc-settings-description
                                      :member-name "VpcSettings")
                                     (connect-settings :target-type
                                      directory-connect-settings-description
                                      :member-name "ConnectSettings")
                                     (radius-settings :target-type
                                      radius-settings :member-name
                                      "RadiusSettings")
                                     (radius-status :target-type radius-status
                                      :member-name "RadiusStatus")
                                     (stage-reason :target-type stage-reason
                                      :member-name "StageReason")
                                     (sso-enabled :target-type sso-enabled
                                      :member-name "SsoEnabled")
                                     (desired-number-of-domain-controllers
                                      :target-type
                                      desired-number-of-domain-controllers
                                      :member-name
                                      "DesiredNumberOfDomainControllers")
                                     (owner-directory-description :target-type
                                      owner-directory-description :member-name
                                      "OwnerDirectoryDescription")
                                     (regions-info :target-type regions-info
                                      :member-name "RegionsInfo")
                                     (os-version :target-type osversion
                                      :member-name "OsVersion")
                                     (hybrid-settings :target-type
                                      hybrid-settings-description :member-name
                                      "HybridSettings"))
                                    (:shape-name "DirectoryDescription"))

(smithy/sdk/shapes:define-list directory-descriptions :member
                               directory-description)

(smithy/sdk/shapes:define-error directory-does-not-exist-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "DirectoryDoesNotExistException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-enum directory-edition
    common-lisp:nil
  (:enterprise "Enterprise")
  (:standard "Standard"))

(smithy/sdk/shapes:define-type directory-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list directory-ids :member directory-id)

(smithy/sdk/shapes:define-error directory-in-desired-state-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name
                                 "DirectoryInDesiredStateException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-error directory-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "DirectoryLimitExceededException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-structure directory-limits common-lisp:nil
                                    ((cloud-only-directories-limit :target-type
                                      limit :member-name
                                      "CloudOnlyDirectoriesLimit")
                                     (cloud-only-directories-current-count
                                      :target-type limit :member-name
                                      "CloudOnlyDirectoriesCurrentCount")
                                     (cloud-only-directories-limit-reached
                                      :target-type
                                      cloud-only-directories-limit-reached
                                      :member-name
                                      "CloudOnlyDirectoriesLimitReached")
                                     (cloud-only-microsoft-adlimit :target-type
                                      limit :member-name
                                      "CloudOnlyMicrosoftADLimit")
                                     (cloud-only-microsoft-adcurrent-count
                                      :target-type limit :member-name
                                      "CloudOnlyMicrosoftADCurrentCount")
                                     (cloud-only-microsoft-adlimit-reached
                                      :target-type
                                      cloud-only-directories-limit-reached
                                      :member-name
                                      "CloudOnlyMicrosoftADLimitReached")
                                     (connected-directories-limit :target-type
                                      limit :member-name
                                      "ConnectedDirectoriesLimit")
                                     (connected-directories-current-count
                                      :target-type limit :member-name
                                      "ConnectedDirectoriesCurrentCount")
                                     (connected-directories-limit-reached
                                      :target-type
                                      connected-directories-limit-reached
                                      :member-name
                                      "ConnectedDirectoriesLimitReached"))
                                    (:shape-name "DirectoryLimits"))

(smithy/sdk/shapes:define-type directory-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error directory-not-shared-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "DirectoryNotSharedException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-type directory-short-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum directory-size
    common-lisp:nil
  (:small "Small")
  (:large "Large"))

(smithy/sdk/shapes:define-enum directory-stage
    common-lisp:nil
  (:requested "Requested")
  (:creating "Creating")
  (:created "Created")
  (:active "Active")
  (:inoperable "Inoperable")
  (:impaired "Impaired")
  (:restoring "Restoring")
  (:restorefailed "RestoreFailed")
  (:deleting "Deleting")
  (:deleted "Deleted")
  (:failed "Failed")
  (:updating "Updating"))

(smithy/sdk/shapes:define-enum directory-type
    common-lisp:nil
  (:simple-ad "SimpleAD")
  (:ad-connector "ADConnector")
  (:microsoft-ad "MicrosoftAD")
  (:shared-microsoft-ad "SharedMicrosoftAD"))

(smithy/sdk/shapes:define-error directory-unavailable-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "DirectoryUnavailableException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-structure directory-vpc-settings common-lisp:nil
                                    ((vpc-id :target-type vpc-id :required
                                      common-lisp:t :member-name "VpcId")
                                     (subnet-ids :target-type subnet-ids
                                      :required common-lisp:t :member-name
                                      "SubnetIds"))
                                    (:shape-name "DirectoryVpcSettings"))

(smithy/sdk/shapes:define-structure directory-vpc-settings-description
                                    common-lisp:nil
                                    ((vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (subnet-ids :target-type subnet-ids
                                      :member-name "SubnetIds")
                                     (security-group-id :target-type
                                      security-group-id :member-name
                                      "SecurityGroupId")
                                     (availability-zones :target-type
                                      availability-zones :member-name
                                      "AvailabilityZones"))
                                    (:shape-name
                                     "DirectoryVpcSettingsDescription"))

(smithy/sdk/shapes:define-input disable-client-authentication-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (type :target-type client-authentication-type
                                  :required common-lisp:t :member-name "Type"))
                                (:shape-name
                                 "DisableClientAuthenticationRequest"))

(smithy/sdk/shapes:define-output disable-client-authentication-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisableClientAuthenticationResult"))

(smithy/sdk/shapes:define-input disable-directory-data-access-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId"))
                                (:shape-name
                                 "DisableDirectoryDataAccessRequest"))

(smithy/sdk/shapes:define-output disable-directory-data-access-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisableDirectoryDataAccessResult"))

(smithy/sdk/shapes:define-input disable-ldapsrequest common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (type :target-type ldapstype :required
                                  common-lisp:t :member-name "Type"))
                                (:shape-name "DisableLDAPSRequest"))

(smithy/sdk/shapes:define-output disable-ldapsresult common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisableLDAPSResult"))

(smithy/sdk/shapes:define-input disable-radius-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId"))
                                (:shape-name "DisableRadiusRequest"))

(smithy/sdk/shapes:define-output disable-radius-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisableRadiusResult"))

(smithy/sdk/shapes:define-input disable-sso-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (user-name :target-type user-name :member-name
                                  "UserName")
                                 (password :target-type connect-password
                                  :member-name "Password"))
                                (:shape-name "DisableSsoRequest"))

(smithy/sdk/shapes:define-output disable-sso-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisableSsoResult"))

(smithy/sdk/shapes:define-list dns-ip-addrs :member ip-addr)

(smithy/sdk/shapes:define-structure domain-controller common-lisp:nil
                                    ((directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (domain-controller-id :target-type
                                      domain-controller-id :member-name
                                      "DomainControllerId")
                                     (dns-ip-addr :target-type ip-addr
                                      :member-name "DnsIpAddr")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (subnet-id :target-type subnet-id
                                      :member-name "SubnetId")
                                     (availability-zone :target-type
                                      availability-zone :member-name
                                      "AvailabilityZone")
                                     (status :target-type
                                      domain-controller-status :member-name
                                      "Status")
                                     (status-reason :target-type
                                      domain-controller-status-reason
                                      :member-name "StatusReason")
                                     (launch-time :target-type launch-time
                                      :member-name "LaunchTime")
                                     (status-last-updated-date-time
                                      :target-type last-updated-date-time
                                      :member-name
                                      "StatusLastUpdatedDateTime"))
                                    (:shape-name "DomainController"))

(smithy/sdk/shapes:define-type domain-controller-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list domain-controller-ids :member
                               domain-controller-id)

(smithy/sdk/shapes:define-error domain-controller-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name
                                 "DomainControllerLimitExceededException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-enum domain-controller-status
    common-lisp:nil
  (:creating "Creating")
  (:active "Active")
  (:impaired "Impaired")
  (:restoring "Restoring")
  (:deleting "Deleting")
  (:deleted "Deleted")
  (:failed "Failed")
  (:updating "Updating"))

(smithy/sdk/shapes:define-type domain-controller-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list domain-controllers :member domain-controller)

(smithy/sdk/shapes:define-input enable-client-authentication-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (type :target-type client-authentication-type
                                  :required common-lisp:t :member-name "Type"))
                                (:shape-name
                                 "EnableClientAuthenticationRequest"))

(smithy/sdk/shapes:define-output enable-client-authentication-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "EnableClientAuthenticationResult"))

(smithy/sdk/shapes:define-input enable-directory-data-access-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId"))
                                (:shape-name
                                 "EnableDirectoryDataAccessRequest"))

(smithy/sdk/shapes:define-output enable-directory-data-access-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "EnableDirectoryDataAccessResult"))

(smithy/sdk/shapes:define-input enable-ldapsrequest common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (type :target-type ldapstype :required
                                  common-lisp:t :member-name "Type"))
                                (:shape-name "EnableLDAPSRequest"))

(smithy/sdk/shapes:define-output enable-ldapsresult common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "EnableLDAPSResult"))

(smithy/sdk/shapes:define-input enable-radius-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (radius-settings :target-type radius-settings
                                  :required common-lisp:t :member-name
                                  "RadiusSettings"))
                                (:shape-name "EnableRadiusRequest"))

(smithy/sdk/shapes:define-output enable-radius-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "EnableRadiusResult"))

(smithy/sdk/shapes:define-input enable-sso-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (user-name :target-type user-name :member-name
                                  "UserName")
                                 (password :target-type connect-password
                                  :member-name "Password"))
                                (:shape-name "EnableSsoRequest"))

(smithy/sdk/shapes:define-output enable-sso-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "EnableSsoResult"))

(smithy/sdk/shapes:define-type end-date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error entity-already-exists-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "EntityAlreadyExistsException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-error entity-does-not-exist-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "EntityDoesNotExistException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-structure event-topic common-lisp:nil
                                    ((directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (topic-name :target-type topic-name
                                      :member-name "TopicName")
                                     (topic-arn :target-type topic-arn
                                      :member-name "TopicArn")
                                     (created-date-time :target-type
                                      created-date-time :member-name
                                      "CreatedDateTime")
                                     (status :target-type topic-status
                                      :member-name "Status"))
                                    (:shape-name "EventTopic"))

(smithy/sdk/shapes:define-list event-topics :member event-topic)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-directory-limits-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetDirectoryLimitsRequest"))

(smithy/sdk/shapes:define-output get-directory-limits-result common-lisp:nil
                                 ((directory-limits :target-type
                                   directory-limits :member-name
                                   "DirectoryLimits"))
                                 (:shape-name "GetDirectoryLimitsResult"))

(smithy/sdk/shapes:define-input get-snapshot-limits-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId"))
                                (:shape-name "GetSnapshotLimitsRequest"))

(smithy/sdk/shapes:define-output get-snapshot-limits-result common-lisp:nil
                                 ((snapshot-limits :target-type snapshot-limits
                                   :member-name "SnapshotLimits"))
                                 (:shape-name "GetSnapshotLimitsResult"))

(smithy/sdk/shapes:define-structure hybrid-administrator-account-update
                                    common-lisp:nil
                                    ((secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "SecretArn"))
                                    (:shape-name
                                     "HybridAdministratorAccountUpdate"))

(smithy/sdk/shapes:define-structure hybrid-customer-instances-settings
                                    common-lisp:nil
                                    ((customer-dns-ips :target-type
                                      customer-dns-ips :required common-lisp:t
                                      :member-name "CustomerDnsIps")
                                     (instance-ids :target-type
                                      assessment-instance-ids :required
                                      common-lisp:t :member-name
                                      "InstanceIds"))
                                    (:shape-name
                                     "HybridCustomerInstancesSettings"))

(smithy/sdk/shapes:define-structure hybrid-settings-description common-lisp:nil
                                    ((self-managed-dns-ip-addrs :target-type
                                      ip-addrs :member-name
                                      "SelfManagedDnsIpAddrs")
                                     (self-managed-instance-ids :target-type
                                      assessment-instance-ids :member-name
                                      "SelfManagedInstanceIds"))
                                    (:shape-name "HybridSettingsDescription"))

(smithy/sdk/shapes:define-structure hybrid-update-activities common-lisp:nil
                                    ((self-managed-instances :target-type
                                      hybrid-update-info-entries :member-name
                                      "SelfManagedInstances")
                                     (hybrid-administrator-account :target-type
                                      hybrid-update-info-entries :member-name
                                      "HybridAdministratorAccount"))
                                    (:shape-name "HybridUpdateActivities"))

(smithy/sdk/shapes:define-list hybrid-update-info-entries :member
                               hybrid-update-info-entry)

(smithy/sdk/shapes:define-structure hybrid-update-info-entry common-lisp:nil
                                    ((status :target-type update-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      update-status-reason :member-name
                                      "StatusReason")
                                     (initiated-by :target-type initiated-by
                                      :member-name "InitiatedBy")
                                     (new-value :target-type
                                      hybrid-update-value :member-name
                                      "NewValue")
                                     (previous-value :target-type
                                      hybrid-update-value :member-name
                                      "PreviousValue")
                                     (start-time :target-type start-date-time
                                      :member-name "StartTime")
                                     (last-updated-date-time :target-type
                                      last-updated-date-time :member-name
                                      "LastUpdatedDateTime")
                                     (assessment-id :target-type assessment-id
                                      :member-name "AssessmentId"))
                                    (:shape-name "HybridUpdateInfoEntry"))

(smithy/sdk/shapes:define-enum hybrid-update-type
    common-lisp:nil
  (:self-managed-instances "SelfManagedInstances")
  (:hybrid-administrator-account "HybridAdministratorAccount"))

(smithy/sdk/shapes:define-structure hybrid-update-value common-lisp:nil
                                    ((instance-ids :target-type
                                      assessment-instance-ids :member-name
                                      "InstanceIds")
                                     (dns-ips :target-type customer-dns-ips
                                      :member-name "DnsIps"))
                                    (:shape-name "HybridUpdateValue"))

(smithy/sdk/shapes:define-error incompatible-settings-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "IncompatibleSettingsException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-type initiated-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error insufficient-permissions-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name
                                 "InsufficientPermissionsException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-error invalid-certificate-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "InvalidCertificateException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-error invalid-client-auth-status-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name
                                 "InvalidClientAuthStatusException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-error invalid-ldapsstatus-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "InvalidLDAPSStatusException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-error invalid-password-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "InvalidPasswordException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-error invalid-target-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "InvalidTargetException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-type ip-addr smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ip-addrs :member ip-addr)

(smithy/sdk/shapes:define-structure ip-route common-lisp:nil
                                    ((cidr-ip :target-type cidr-ip :member-name
                                      "CidrIp")
                                     (description :target-type description
                                      :member-name "Description"))
                                    (:shape-name "IpRoute"))

(smithy/sdk/shapes:define-structure ip-route-info common-lisp:nil
                                    ((directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (cidr-ip :target-type cidr-ip :member-name
                                      "CidrIp")
                                     (ip-route-status-msg :target-type
                                      ip-route-status-msg :member-name
                                      "IpRouteStatusMsg")
                                     (added-date-time :target-type
                                      added-date-time :member-name
                                      "AddedDateTime")
                                     (ip-route-status-reason :target-type
                                      ip-route-status-reason :member-name
                                      "IpRouteStatusReason")
                                     (description :target-type description
                                      :member-name "Description"))
                                    (:shape-name "IpRouteInfo"))

(smithy/sdk/shapes:define-error ip-route-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "IpRouteLimitExceededException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-enum ip-route-status-msg
    common-lisp:nil
  (:adding "Adding")
  (:added "Added")
  (:removing "Removing")
  (:removed "Removed")
  (:add-failed "AddFailed")
  (:remove-failed "RemoveFailed"))

(smithy/sdk/shapes:define-type ip-route-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ip-routes :member ip-route)

(smithy/sdk/shapes:define-list ip-routes-info :member ip-route-info)

(smithy/sdk/shapes:define-structure ldapssetting-info common-lisp:nil
                                    ((ldapsstatus :target-type ldapsstatus
                                      :member-name "LDAPSStatus")
                                     (ldapsstatus-reason :target-type
                                      ldapsstatus-reason :member-name
                                      "LDAPSStatusReason")
                                     (last-updated-date-time :target-type
                                      last-updated-date-time :member-name
                                      "LastUpdatedDateTime"))
                                    (:shape-name "LDAPSSettingInfo"))

(smithy/sdk/shapes:define-list ldapssettings-info :member ldapssetting-info)

(smithy/sdk/shapes:define-enum ldapsstatus
    common-lisp:nil
  (:enabling "Enabling")
  (:enabled "Enabled")
  (:enable-failed "EnableFailed")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type ldapsstatus-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ldapstype
    common-lisp:nil
  (:client "Client"))

(smithy/sdk/shapes:define-type last-update-date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type last-updated-date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type launch-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type ldif-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-adassessments-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :member-name "DirectoryId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type assessment-limit
                                  :member-name "Limit"))
                                (:shape-name "ListADAssessmentsRequest"))

(smithy/sdk/shapes:define-output list-adassessments-result common-lisp:nil
                                 ((assessments :target-type assessments
                                   :member-name "Assessments")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListADAssessmentsResult"))

(smithy/sdk/shapes:define-input list-certificates-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type page-limit :member-name
                                  "Limit"))
                                (:shape-name "ListCertificatesRequest"))

(smithy/sdk/shapes:define-output list-certificates-result common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (certificates-info :target-type
                                   certificates-info :member-name
                                   "CertificatesInfo"))
                                 (:shape-name "ListCertificatesResult"))

(smithy/sdk/shapes:define-input list-ip-routes-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit :member-name
                                  "Limit"))
                                (:shape-name "ListIpRoutesRequest"))

(smithy/sdk/shapes:define-output list-ip-routes-result common-lisp:nil
                                 ((ip-routes-info :target-type ip-routes-info
                                   :member-name "IpRoutesInfo")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListIpRoutesResult"))

(smithy/sdk/shapes:define-input list-log-subscriptions-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :member-name "DirectoryId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit :member-name
                                  "Limit"))
                                (:shape-name "ListLogSubscriptionsRequest"))

(smithy/sdk/shapes:define-output list-log-subscriptions-result common-lisp:nil
                                 ((log-subscriptions :target-type
                                   log-subscriptions :member-name
                                   "LogSubscriptions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListLogSubscriptionsResult"))

(smithy/sdk/shapes:define-input list-schema-extensions-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit :member-name
                                  "Limit"))
                                (:shape-name "ListSchemaExtensionsRequest"))

(smithy/sdk/shapes:define-output list-schema-extensions-result common-lisp:nil
                                 ((schema-extensions-info :target-type
                                   schema-extensions-info :member-name
                                   "SchemaExtensionsInfo")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListSchemaExtensionsResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (limit :target-type limit :member-name
                                  "Limit"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-result common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsForResourceResult"))

(smithy/sdk/shapes:define-type log-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure log-subscription common-lisp:nil
                                    ((directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (log-group-name :target-type
                                      log-group-name :member-name
                                      "LogGroupName")
                                     (subscription-created-date-time
                                      :target-type
                                      subscription-created-date-time
                                      :member-name
                                      "SubscriptionCreatedDateTime"))
                                    (:shape-name "LogSubscription"))

(smithy/sdk/shapes:define-list log-subscriptions :member log-subscription)

(smithy/sdk/shapes:define-type manual-snapshots-limit-reached
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error no-available-certificate-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "NoAvailableCertificateException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-type notes smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ocspurl smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure osupdate-settings common-lisp:nil
                                    ((osversion :target-type osversion
                                      :member-name "OSVersion"))
                                    (:shape-name "OSUpdateSettings"))

(smithy/sdk/shapes:define-enum osversion
    common-lisp:nil
  (:version-2012 "SERVER_2012")
  (:version-2019 "SERVER_2019"))

(smithy/sdk/shapes:define-type organizational-unit-dn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error organizations-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "OrganizationsException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-structure owner-directory-description common-lisp:nil
                                    ((directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (account-id :target-type customer-id
                                      :member-name "AccountId")
                                     (dns-ip-addrs :target-type dns-ip-addrs
                                      :member-name "DnsIpAddrs")
                                     (vpc-settings :target-type
                                      directory-vpc-settings-description
                                      :member-name "VpcSettings")
                                     (radius-settings :target-type
                                      radius-settings :member-name
                                      "RadiusSettings")
                                     (radius-status :target-type radius-status
                                      :member-name "RadiusStatus"))
                                    (:shape-name "OwnerDirectoryDescription"))

(smithy/sdk/shapes:define-type page-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type port-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum radius-authentication-protocol
    common-lisp:nil
  (:pap "PAP")
  (:chap "CHAP")
  (:mschapv1 "MS-CHAPv1")
  (:mschapv2 "MS-CHAPv2"))

(smithy/sdk/shapes:define-type radius-display-label
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type radius-retries smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure radius-settings common-lisp:nil
                                    ((radius-servers :target-type servers
                                      :member-name "RadiusServers")
                                     (radius-port :target-type port-number
                                      :member-name "RadiusPort")
                                     (radius-timeout :target-type
                                      radius-timeout :member-name
                                      "RadiusTimeout")
                                     (radius-retries :target-type
                                      radius-retries :member-name
                                      "RadiusRetries")
                                     (shared-secret :target-type
                                      radius-shared-secret :member-name
                                      "SharedSecret")
                                     (authentication-protocol :target-type
                                      radius-authentication-protocol
                                      :member-name "AuthenticationProtocol")
                                     (display-label :target-type
                                      radius-display-label :member-name
                                      "DisplayLabel")
                                     (use-same-username :target-type
                                      use-same-username :member-name
                                      "UseSameUsername"))
                                    (:shape-name "RadiusSettings"))

(smithy/sdk/shapes:define-type radius-shared-secret
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum radius-status
    common-lisp:nil
  (:creating "Creating")
  (:completed "Completed")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type radius-timeout smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure region-description common-lisp:nil
                                    ((directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (region-name :target-type region-name
                                      :member-name "RegionName")
                                     (region-type :target-type region-type
                                      :member-name "RegionType")
                                     (status :target-type directory-stage
                                      :member-name "Status")
                                     (vpc-settings :target-type
                                      directory-vpc-settings :member-name
                                      "VpcSettings")
                                     (desired-number-of-domain-controllers
                                      :target-type
                                      desired-number-of-domain-controllers
                                      :member-name
                                      "DesiredNumberOfDomainControllers")
                                     (launch-time :target-type launch-time
                                      :member-name "LaunchTime")
                                     (status-last-updated-date-time
                                      :target-type state-last-updated-date-time
                                      :member-name "StatusLastUpdatedDateTime")
                                     (last-updated-date-time :target-type
                                      last-updated-date-time :member-name
                                      "LastUpdatedDateTime"))
                                    (:shape-name "RegionDescription"))

(smithy/sdk/shapes:define-error region-limit-exceeded-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "RegionLimitExceededException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-type region-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum region-type
    common-lisp:nil
  (:primary "Primary")
  (:additional "Additional"))

(smithy/sdk/shapes:define-list regions-description :member region-description)

(smithy/sdk/shapes:define-structure regions-info common-lisp:nil
                                    ((primary-region :target-type region-name
                                      :member-name "PrimaryRegion")
                                     (additional-regions :target-type
                                      additional-regions :member-name
                                      "AdditionalRegions"))
                                    (:shape-name "RegionsInfo"))

(smithy/sdk/shapes:define-input register-certificate-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (certificate-data :target-type
                                  certificate-data :required common-lisp:t
                                  :member-name "CertificateData")
                                 (type :target-type certificate-type
                                  :member-name "Type")
                                 (client-cert-auth-settings :target-type
                                  client-cert-auth-settings :member-name
                                  "ClientCertAuthSettings"))
                                (:shape-name "RegisterCertificateRequest"))

(smithy/sdk/shapes:define-output register-certificate-result common-lisp:nil
                                 ((certificate-id :target-type certificate-id
                                   :member-name "CertificateId"))
                                 (:shape-name "RegisterCertificateResult"))

(smithy/sdk/shapes:define-input register-event-topic-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (topic-name :target-type topic-name :required
                                  common-lisp:t :member-name "TopicName"))
                                (:shape-name "RegisterEventTopicRequest"))

(smithy/sdk/shapes:define-output register-event-topic-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RegisterEventTopicResult"))

(smithy/sdk/shapes:define-input reject-shared-directory-request common-lisp:nil
                                ((shared-directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "SharedDirectoryId"))
                                (:shape-name "RejectSharedDirectoryRequest"))

(smithy/sdk/shapes:define-output reject-shared-directory-result common-lisp:nil
                                 ((shared-directory-id :target-type
                                   directory-id :member-name
                                   "SharedDirectoryId"))
                                 (:shape-name "RejectSharedDirectoryResult"))

(smithy/sdk/shapes:define-type remote-domain-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list remote-domain-names :member remote-domain-name)

(smithy/sdk/shapes:define-input remove-ip-routes-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (cidr-ips :target-type cidr-ips :required
                                  common-lisp:t :member-name "CidrIps"))
                                (:shape-name "RemoveIpRoutesRequest"))

(smithy/sdk/shapes:define-output remove-ip-routes-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RemoveIpRoutesResult"))

(smithy/sdk/shapes:define-input remove-region-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId"))
                                (:shape-name "RemoveRegionRequest"))

(smithy/sdk/shapes:define-output remove-region-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RemoveRegionResult"))

(smithy/sdk/shapes:define-input remove-tags-from-resource-request
                                common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "RemoveTagsFromResourceRequest"))

(smithy/sdk/shapes:define-output remove-tags-from-resource-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "RemoveTagsFromResourceResult"))

(smithy/sdk/shapes:define-enum replication-scope
    common-lisp:nil
  (:domain "Domain"))

(smithy/sdk/shapes:define-type request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input reset-user-password-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (user-name :target-type customer-user-name
                                  :required common-lisp:t :member-name
                                  "UserName")
                                 (new-password :target-type user-password
                                  :required common-lisp:t :member-name
                                  "NewPassword"))
                                (:shape-name "ResetUserPasswordRequest"))

(smithy/sdk/shapes:define-output reset-user-password-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ResetUserPasswordResult"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input restore-from-snapshot-request common-lisp:nil
                                ((snapshot-id :target-type snapshot-id
                                  :required common-lisp:t :member-name
                                  "SnapshotId"))
                                (:shape-name "RestoreFromSnapshotRequest"))

(smithy/sdk/shapes:define-output restore-from-snapshot-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RestoreFromSnapshotResult"))

(smithy/sdk/shapes:define-type sid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schema-extension-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure schema-extension-info common-lisp:nil
                                    ((directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (schema-extension-id :target-type
                                      schema-extension-id :member-name
                                      "SchemaExtensionId")
                                     (description :target-type description
                                      :member-name "Description")
                                     (schema-extension-status :target-type
                                      schema-extension-status :member-name
                                      "SchemaExtensionStatus")
                                     (schema-extension-status-reason
                                      :target-type
                                      schema-extension-status-reason
                                      :member-name
                                      "SchemaExtensionStatusReason")
                                     (start-date-time :target-type
                                      start-date-time :member-name
                                      "StartDateTime")
                                     (end-date-time :target-type end-date-time
                                      :member-name "EndDateTime"))
                                    (:shape-name "SchemaExtensionInfo"))

(smithy/sdk/shapes:define-enum schema-extension-status
    common-lisp:nil
  (:initializing "Initializing")
  (:creating-snapshot "CreatingSnapshot")
  (:updating-schema "UpdatingSchema")
  (:replicating "Replicating")
  (:cancel-in-progress "CancelInProgress")
  (:rollback-in-progress "RollbackInProgress")
  (:cancelled "Cancelled")
  (:failed "Failed")
  (:completed "Completed"))

(smithy/sdk/shapes:define-type schema-extension-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list schema-extensions-info :member
                               schema-extension-info)

(smithy/sdk/shapes:define-type secret-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-enum selective-auth
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-type server smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list servers :member server)

(smithy/sdk/shapes:define-error service-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "ServiceException")
                                (:error-code 500)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-structure setting common-lisp:nil
                                    ((name :target-type
                                      directory-configuration-setting-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type
                                      directory-configuration-setting-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "Setting"))

(smithy/sdk/shapes:define-list setting-entries :member setting-entry)

(smithy/sdk/shapes:define-structure setting-entry common-lisp:nil
                                    ((type :target-type
                                      directory-configuration-setting-type
                                      :member-name "Type")
                                     (name :target-type
                                      directory-configuration-setting-name
                                      :member-name "Name")
                                     (allowed-values :target-type
                                      directory-configuration-setting-allowed-values
                                      :member-name "AllowedValues")
                                     (applied-value :target-type
                                      directory-configuration-setting-value
                                      :member-name "AppliedValue")
                                     (requested-value :target-type
                                      directory-configuration-setting-value
                                      :member-name "RequestedValue")
                                     (request-status :target-type
                                      directory-configuration-status
                                      :member-name "RequestStatus")
                                     (request-detailed-status :target-type
                                      directory-configuration-setting-request-detailed-status
                                      :member-name "RequestDetailedStatus")
                                     (request-status-message :target-type
                                      directory-configuration-setting-request-status-message
                                      :member-name "RequestStatusMessage")
                                     (last-updated-date-time :target-type
                                      directory-configuration-setting-last-updated-date-time
                                      :member-name "LastUpdatedDateTime")
                                     (last-requested-date-time :target-type
                                      directory-configuration-setting-last-requested-date-time
                                      :member-name "LastRequestedDateTime")
                                     (data-type :target-type
                                      directory-configuration-setting-data-type
                                      :member-name "DataType"))
                                    (:shape-name "SettingEntry"))

(smithy/sdk/shapes:define-list settings :member setting)

(smithy/sdk/shapes:define-input share-directory-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (share-notes :target-type notes :member-name
                                  "ShareNotes")
                                 (share-target :target-type share-target
                                  :required common-lisp:t :member-name
                                  "ShareTarget")
                                 (share-method :target-type share-method
                                  :required common-lisp:t :member-name
                                  "ShareMethod"))
                                (:shape-name "ShareDirectoryRequest"))

(smithy/sdk/shapes:define-output share-directory-result common-lisp:nil
                                 ((shared-directory-id :target-type
                                   directory-id :member-name
                                   "SharedDirectoryId"))
                                 (:shape-name "ShareDirectoryResult"))

(smithy/sdk/shapes:define-error share-limit-exceeded-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "ShareLimitExceededException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-enum share-method
    common-lisp:nil
  (:organizations "ORGANIZATIONS")
  (:handshake "HANDSHAKE"))

(smithy/sdk/shapes:define-enum share-status
    common-lisp:nil
  (:shared "Shared")
  (:pending-acceptance "PendingAcceptance")
  (:rejected "Rejected")
  (:rejecting "Rejecting")
  (:reject-failed "RejectFailed")
  (:sharing "Sharing")
  (:share-failed "ShareFailed")
  (:deleted "Deleted")
  (:deleting "Deleting"))

(smithy/sdk/shapes:define-structure share-target common-lisp:nil
                                    ((id :target-type target-id :required
                                      common-lisp:t :member-name "Id")
                                     (type :target-type target-type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "ShareTarget"))

(smithy/sdk/shapes:define-list shared-directories :member shared-directory)

(smithy/sdk/shapes:define-structure shared-directory common-lisp:nil
                                    ((owner-account-id :target-type customer-id
                                      :member-name "OwnerAccountId")
                                     (owner-directory-id :target-type
                                      directory-id :member-name
                                      "OwnerDirectoryId")
                                     (share-method :target-type share-method
                                      :member-name "ShareMethod")
                                     (shared-account-id :target-type
                                      customer-id :member-name
                                      "SharedAccountId")
                                     (shared-directory-id :target-type
                                      directory-id :member-name
                                      "SharedDirectoryId")
                                     (share-status :target-type share-status
                                      :member-name "ShareStatus")
                                     (share-notes :target-type notes
                                      :member-name "ShareNotes")
                                     (created-date-time :target-type
                                      created-date-time :member-name
                                      "CreatedDateTime")
                                     (last-updated-date-time :target-type
                                      last-updated-date-time :member-name
                                      "LastUpdatedDateTime"))
                                    (:shape-name "SharedDirectory"))

(smithy/sdk/shapes:define-structure snapshot common-lisp:nil
                                    ((directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (snapshot-id :target-type snapshot-id
                                      :member-name "SnapshotId")
                                     (type :target-type snapshot-type
                                      :member-name "Type")
                                     (name :target-type snapshot-name
                                      :member-name "Name")
                                     (status :target-type snapshot-status
                                      :member-name "Status")
                                     (start-time :target-type start-time
                                      :member-name "StartTime"))
                                    (:shape-name "Snapshot"))

(smithy/sdk/shapes:define-type snapshot-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list snapshot-ids :member snapshot-id)

(smithy/sdk/shapes:define-error snapshot-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "SnapshotLimitExceededException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-structure snapshot-limits common-lisp:nil
                                    ((manual-snapshots-limit :target-type limit
                                      :member-name "ManualSnapshotsLimit")
                                     (manual-snapshots-current-count
                                      :target-type limit :member-name
                                      "ManualSnapshotsCurrentCount")
                                     (manual-snapshots-limit-reached
                                      :target-type
                                      manual-snapshots-limit-reached
                                      :member-name
                                      "ManualSnapshotsLimitReached"))
                                    (:shape-name "SnapshotLimits"))

(smithy/sdk/shapes:define-type snapshot-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum snapshot-status
    common-lisp:nil
  (:creating "Creating")
  (:completed "Completed")
  (:failed "Failed"))

(smithy/sdk/shapes:define-enum snapshot-type
    common-lisp:nil
  (:auto "Auto")
  (:manual "Manual"))

(smithy/sdk/shapes:define-list snapshots :member snapshot)

(smithy/sdk/shapes:define-type sso-enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type stage-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-adassessment-request common-lisp:nil
                                ((assessment-configuration :target-type
                                  assessment-configuration :member-name
                                  "AssessmentConfiguration")
                                 (directory-id :target-type directory-id
                                  :member-name "DirectoryId"))
                                (:shape-name "StartADAssessmentRequest"))

(smithy/sdk/shapes:define-output start-adassessment-result common-lisp:nil
                                 ((assessment-id :target-type assessment-id
                                   :member-name "AssessmentId"))
                                 (:shape-name "StartADAssessmentResult"))

(smithy/sdk/shapes:define-type start-date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input start-schema-extension-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (create-snapshot-before-schema-extension
                                  :target-type
                                  create-snapshot-before-schema-extension
                                  :required common-lisp:t :member-name
                                  "CreateSnapshotBeforeSchemaExtension")
                                 (ldif-content :target-type ldif-content
                                  :required common-lisp:t :member-name
                                  "LdifContent")
                                 (description :target-type description
                                  :required common-lisp:t :member-name
                                  "Description"))
                                (:shape-name "StartSchemaExtensionRequest"))

(smithy/sdk/shapes:define-output start-schema-extension-result common-lisp:nil
                                 ((schema-extension-id :target-type
                                   schema-extension-id :member-name
                                   "SchemaExtensionId"))
                                 (:shape-name "StartSchemaExtensionResult"))

(smithy/sdk/shapes:define-type start-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type state-last-updated-date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-type subscription-created-date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-error tag-limit-exceeded-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "TagLimitExceededException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-type target-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-type
    common-lisp:nil
  (:account "ACCOUNT"))

(smithy/sdk/shapes:define-type topic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type topic-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list topic-names :member topic-name)

(smithy/sdk/shapes:define-enum topic-status
    common-lisp:nil
  (:registered "Registered")
  (:topic-not-found "Topic not found")
  (:failed "Failed")
  (:deleted "Deleted"))

(smithy/sdk/shapes:define-structure trust common-lisp:nil
                                    ((directory-id :target-type directory-id
                                      :member-name "DirectoryId")
                                     (trust-id :target-type trust-id
                                      :member-name "TrustId")
                                     (remote-domain-name :target-type
                                      remote-domain-name :member-name
                                      "RemoteDomainName")
                                     (trust-type :target-type trust-type
                                      :member-name "TrustType")
                                     (trust-direction :target-type
                                      trust-direction :member-name
                                      "TrustDirection")
                                     (trust-state :target-type trust-state
                                      :member-name "TrustState")
                                     (created-date-time :target-type
                                      created-date-time :member-name
                                      "CreatedDateTime")
                                     (last-updated-date-time :target-type
                                      last-updated-date-time :member-name
                                      "LastUpdatedDateTime")
                                     (state-last-updated-date-time :target-type
                                      state-last-updated-date-time :member-name
                                      "StateLastUpdatedDateTime")
                                     (trust-state-reason :target-type
                                      trust-state-reason :member-name
                                      "TrustStateReason")
                                     (selective-auth :target-type
                                      selective-auth :member-name
                                      "SelectiveAuth"))
                                    (:shape-name "Trust"))

(smithy/sdk/shapes:define-enum trust-direction
    common-lisp:nil
  (:one-way-outgoing "One-Way: Outgoing")
  (:one-way-incoming "One-Way: Incoming")
  (:two-way "Two-Way"))

(smithy/sdk/shapes:define-type trust-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list trust-ids :member trust-id)

(smithy/sdk/shapes:define-type trust-password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum trust-state
    common-lisp:nil
  (:creating "Creating")
  (:created "Created")
  (:verifying "Verifying")
  (:verify-failed "VerifyFailed")
  (:verified "Verified")
  (:updating "Updating")
  (:update-failed "UpdateFailed")
  (:updated "Updated")
  (:deleting "Deleting")
  (:deleted "Deleted")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type trust-state-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum trust-type
    common-lisp:nil
  (:forest "Forest")
  (:external "External"))

(smithy/sdk/shapes:define-list trusts :member trust)

(smithy/sdk/shapes:define-input unshare-directory-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (unshare-target :target-type unshare-target
                                  :required common-lisp:t :member-name
                                  "UnshareTarget"))
                                (:shape-name "UnshareDirectoryRequest"))

(smithy/sdk/shapes:define-output unshare-directory-result common-lisp:nil
                                 ((shared-directory-id :target-type
                                   directory-id :member-name
                                   "SharedDirectoryId"))
                                 (:shape-name "UnshareDirectoryResult"))

(smithy/sdk/shapes:define-structure unshare-target common-lisp:nil
                                    ((id :target-type target-id :required
                                      common-lisp:t :member-name "Id")
                                     (type :target-type target-type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "UnshareTarget"))

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-error unsupported-settings-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "UnsupportedSettingsException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-list update-activities :member update-info-entry)

(smithy/sdk/shapes:define-input update-conditional-forwarder-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (remote-domain-name :target-type
                                  remote-domain-name :required common-lisp:t
                                  :member-name "RemoteDomainName")
                                 (dns-ip-addrs :target-type dns-ip-addrs
                                  :required common-lisp:t :member-name
                                  "DnsIpAddrs"))
                                (:shape-name
                                 "UpdateConditionalForwarderRequest"))

(smithy/sdk/shapes:define-output update-conditional-forwarder-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateConditionalForwarderResult"))

(smithy/sdk/shapes:define-input update-directory-setup-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (update-type :target-type update-type
                                  :required common-lisp:t :member-name
                                  "UpdateType")
                                 (osupdate-settings :target-type
                                  osupdate-settings :member-name
                                  "OSUpdateSettings")
                                 (create-snapshot-before-update :target-type
                                  create-snapshot-before-update :member-name
                                  "CreateSnapshotBeforeUpdate"))
                                (:shape-name "UpdateDirectorySetupRequest"))

(smithy/sdk/shapes:define-output update-directory-setup-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateDirectorySetupResult"))

(smithy/sdk/shapes:define-input update-hybrid-adrequest common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (hybrid-administrator-account-update
                                  :target-type
                                  hybrid-administrator-account-update
                                  :member-name
                                  "HybridAdministratorAccountUpdate")
                                 (self-managed-instances-settings :target-type
                                  hybrid-customer-instances-settings
                                  :member-name "SelfManagedInstancesSettings"))
                                (:shape-name "UpdateHybridADRequest"))

(smithy/sdk/shapes:define-output update-hybrid-adresult common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId")
                                  (assessment-id :target-type assessment-id
                                   :member-name "AssessmentId"))
                                 (:shape-name "UpdateHybridADResult"))

(smithy/sdk/shapes:define-structure update-info-entry common-lisp:nil
                                    ((region :target-type region-name
                                      :member-name "Region")
                                     (status :target-type update-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      update-status-reason :member-name
                                      "StatusReason")
                                     (initiated-by :target-type initiated-by
                                      :member-name "InitiatedBy")
                                     (new-value :target-type update-value
                                      :member-name "NewValue")
                                     (previous-value :target-type update-value
                                      :member-name "PreviousValue")
                                     (start-time :target-type start-date-time
                                      :member-name "StartTime")
                                     (last-updated-date-time :target-type
                                      last-updated-date-time :member-name
                                      "LastUpdatedDateTime"))
                                    (:shape-name "UpdateInfoEntry"))

(smithy/sdk/shapes:define-input update-number-of-domain-controllers-request
                                common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (desired-number :target-type
                                  desired-number-of-domain-controllers
                                  :required common-lisp:t :member-name
                                  "DesiredNumber"))
                                (:shape-name
                                 "UpdateNumberOfDomainControllersRequest"))

(smithy/sdk/shapes:define-output update-number-of-domain-controllers-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateNumberOfDomainControllersResult"))

(smithy/sdk/shapes:define-input update-radius-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (radius-settings :target-type radius-settings
                                  :required common-lisp:t :member-name
                                  "RadiusSettings"))
                                (:shape-name "UpdateRadiusRequest"))

(smithy/sdk/shapes:define-output update-radius-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateRadiusResult"))

(smithy/sdk/shapes:define-type update-security-group-for-directory-controllers
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input update-settings-request common-lisp:nil
                                ((directory-id :target-type directory-id
                                  :required common-lisp:t :member-name
                                  "DirectoryId")
                                 (settings :target-type settings :required
                                  common-lisp:t :member-name "Settings"))
                                (:shape-name "UpdateSettingsRequest"))

(smithy/sdk/shapes:define-output update-settings-result common-lisp:nil
                                 ((directory-id :target-type directory-id
                                   :member-name "DirectoryId"))
                                 (:shape-name "UpdateSettingsResult"))

(smithy/sdk/shapes:define-enum update-status
    common-lisp:nil
  (:updated "Updated")
  (:updating "Updating")
  (:update-failed "UpdateFailed"))

(smithy/sdk/shapes:define-type update-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input update-trust-request common-lisp:nil
                                ((trust-id :target-type trust-id :required
                                  common-lisp:t :member-name "TrustId")
                                 (selective-auth :target-type selective-auth
                                  :member-name "SelectiveAuth"))
                                (:shape-name "UpdateTrustRequest"))

(smithy/sdk/shapes:define-output update-trust-result common-lisp:nil
                                 ((request-id :target-type request-id
                                   :member-name "RequestId")
                                  (trust-id :target-type trust-id :member-name
                                   "TrustId"))
                                 (:shape-name "UpdateTrustResult"))

(smithy/sdk/shapes:define-enum update-type
    common-lisp:nil
  (:os "OS"))

(smithy/sdk/shapes:define-structure update-value common-lisp:nil
                                    ((osupdate-settings :target-type
                                      osupdate-settings :member-name
                                      "OSUpdateSettings"))
                                    (:shape-name "UpdateValue"))

(smithy/sdk/shapes:define-type use-same-username
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error user-does-not-exist-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message")
                                 (request-id :target-type request-id
                                  :member-name "RequestId"))
                                (:shape-name "UserDoesNotExistException")
                                (:error-code 400)
                                (:base-class directory-service-error))

(smithy/sdk/shapes:define-type user-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input verify-trust-request common-lisp:nil
                                ((trust-id :target-type trust-id :required
                                  common-lisp:t :member-name "TrustId"))
                                (:shape-name "VerifyTrustRequest"))

(smithy/sdk/shapes:define-output verify-trust-result common-lisp:nil
                                 ((trust-id :target-type trust-id :member-name
                                   "TrustId"))
                                 (:shape-name "VerifyTrustResult"))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation accept-shared-directory :shape-name
                                       "AcceptSharedDirectory" :input
                                       accept-shared-directory-request :output
                                       accept-shared-directory-result :errors
                                       (client-exception
                                        directory-already-shared-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation add-ip-routes :shape-name "AddIpRoutes"
                                       :input add-ip-routes-request :output
                                       add-ip-routes-result :errors
                                       (client-exception
                                        directory-unavailable-exception
                                        entity-already-exists-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        ip-route-limit-exceeded-exception
                                        service-exception))

(smithy/sdk/operation:define-operation add-region :shape-name "AddRegion"
                                       :input add-region-request :output
                                       add-region-result :errors
                                       (access-denied-exception
                                        client-exception
                                        directory-already-in-region-exception
                                        directory-does-not-exist-exception
                                        directory-unavailable-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        region-limit-exceeded-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation add-tags-to-resource :shape-name
                                       "AddTagsToResource" :input
                                       add-tags-to-resource-request :output
                                       add-tags-to-resource-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        tag-limit-exceeded-exception))

(smithy/sdk/operation:define-operation cancel-schema-extension :shape-name
                                       "CancelSchemaExtension" :input
                                       cancel-schema-extension-request :output
                                       cancel-schema-extension-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        service-exception))

(smithy/sdk/operation:define-operation connect-directory :shape-name
                                       "ConnectDirectory" :input
                                       connect-directory-request :output
                                       connect-directory-result :errors
                                       (client-exception
                                        directory-limit-exceeded-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation create-alias :shape-name "CreateAlias"
                                       :input create-alias-request :output
                                       create-alias-result :errors
                                       (client-exception
                                        entity-already-exists-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation create-computer :shape-name
                                       "CreateComputer" :input
                                       create-computer-request :output
                                       create-computer-result :errors
                                       (authentication-failed-exception
                                        client-exception
                                        directory-unavailable-exception
                                        entity-already-exists-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation create-conditional-forwarder :shape-name
                                       "CreateConditionalForwarder" :input
                                       create-conditional-forwarder-request
                                       :output
                                       create-conditional-forwarder-result
                                       :errors
                                       (client-exception
                                        directory-unavailable-exception
                                        entity-already-exists-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation create-directory :shape-name
                                       "CreateDirectory" :input
                                       create-directory-request :output
                                       create-directory-result :errors
                                       (client-exception
                                        directory-limit-exceeded-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation create-hybrid-ad :shape-name
                                       "CreateHybridAD" :input
                                       create-hybrid-adrequest :output
                                       create-hybrid-adresult :errors
                                       (adassessment-limit-exceeded-exception
                                        client-exception
                                        directory-limit-exceeded-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation create-log-subscription :shape-name
                                       "CreateLogSubscription" :input
                                       create-log-subscription-request :output
                                       create-log-subscription-result :errors
                                       (client-exception
                                        entity-already-exists-exception
                                        entity-does-not-exist-exception
                                        insufficient-permissions-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation create-microsoft-ad :shape-name
                                       "CreateMicrosoftAD" :input
                                       create-microsoft-adrequest :output
                                       create-microsoft-adresult :errors
                                       (client-exception
                                        directory-limit-exceeded-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation create-snapshot :shape-name
                                       "CreateSnapshot" :input
                                       create-snapshot-request :output
                                       create-snapshot-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        snapshot-limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-trust :shape-name "CreateTrust"
                                       :input create-trust-request :output
                                       create-trust-result :errors
                                       (client-exception
                                        entity-already-exists-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-adassessment :shape-name
                                       "DeleteADAssessment" :input
                                       delete-adassessment-request :output
                                       delete-adassessment-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-conditional-forwarder :shape-name
                                       "DeleteConditionalForwarder" :input
                                       delete-conditional-forwarder-request
                                       :output
                                       delete-conditional-forwarder-result
                                       :errors
                                       (client-exception
                                        directory-unavailable-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-directory :shape-name
                                       "DeleteDirectory" :input
                                       delete-directory-request :output
                                       delete-directory-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        service-exception))

(smithy/sdk/operation:define-operation delete-log-subscription :shape-name
                                       "DeleteLogSubscription" :input
                                       delete-log-subscription-request :output
                                       delete-log-subscription-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-snapshot :shape-name
                                       "DeleteSnapshot" :input
                                       delete-snapshot-request :output
                                       delete-snapshot-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation delete-trust :shape-name "DeleteTrust"
                                       :input delete-trust-request :output
                                       delete-trust-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation deregister-certificate :shape-name
                                       "DeregisterCertificate" :input
                                       deregister-certificate-request :output
                                       deregister-certificate-result :errors
                                       (certificate-does-not-exist-exception
                                        certificate-in-use-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        directory-unavailable-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation deregister-event-topic :shape-name
                                       "DeregisterEventTopic" :input
                                       deregister-event-topic-request :output
                                       deregister-event-topic-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation describe-adassessment :shape-name
                                       "DescribeADAssessment" :input
                                       describe-adassessment-request :output
                                       describe-adassessment-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-certificate :shape-name
                                       "DescribeCertificate" :input
                                       describe-certificate-request :output
                                       describe-certificate-result :errors
                                       (certificate-does-not-exist-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-client-authentication-settings
                                       :shape-name
                                       "DescribeClientAuthenticationSettings"
                                       :input
                                       describe-client-authentication-settings-request
                                       :output
                                       describe-client-authentication-settings-result
                                       :errors
                                       (access-denied-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-conditional-forwarders
                                       :shape-name
                                       "DescribeConditionalForwarders" :input
                                       describe-conditional-forwarders-request
                                       :output
                                       describe-conditional-forwarders-result
                                       :errors
                                       (client-exception
                                        directory-unavailable-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-directories :shape-name
                                       "DescribeDirectories" :input
                                       describe-directories-request :output
                                       describe-directories-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation describe-directory-data-access
                                       :shape-name
                                       "DescribeDirectoryDataAccess" :input
                                       describe-directory-data-access-request
                                       :output
                                       describe-directory-data-access-result
                                       :errors
                                       (access-denied-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-domain-controllers :shape-name
                                       "DescribeDomainControllers" :input
                                       describe-domain-controllers-request
                                       :output
                                       describe-domain-controllers-result
                                       :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-event-topics :shape-name
                                       "DescribeEventTopics" :input
                                       describe-event-topics-request :output
                                       describe-event-topics-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation describe-hybrid-adupdate :shape-name
                                       "DescribeHybridADUpdate" :input
                                       describe-hybrid-adupdate-request :output
                                       describe-hybrid-adupdate-result :errors
                                       (client-exception
                                        directory-does-not-exist-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-ldapssettings :shape-name
                                       "DescribeLDAPSSettings" :input
                                       describe-ldapssettings-request :output
                                       describe-ldapssettings-result :errors
                                       (client-exception
                                        directory-does-not-exist-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-regions :shape-name
                                       "DescribeRegions" :input
                                       describe-regions-request :output
                                       describe-regions-result :errors
                                       (access-denied-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-settings :shape-name
                                       "DescribeSettings" :input
                                       describe-settings-request :output
                                       describe-settings-result :errors
                                       (client-exception
                                        directory-does-not-exist-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-shared-directories :shape-name
                                       "DescribeSharedDirectories" :input
                                       describe-shared-directories-request
                                       :output
                                       describe-shared-directories-result
                                       :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-snapshots :shape-name
                                       "DescribeSnapshots" :input
                                       describe-snapshots-request :output
                                       describe-snapshots-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation describe-trusts :shape-name
                                       "DescribeTrusts" :input
                                       describe-trusts-request :output
                                       describe-trusts-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation describe-update-directory :shape-name
                                       "DescribeUpdateDirectory" :input
                                       describe-update-directory-request
                                       :output describe-update-directory-result
                                       :errors
                                       (access-denied-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation disable-client-authentication
                                       :shape-name
                                       "DisableClientAuthentication" :input
                                       disable-client-authentication-request
                                       :output
                                       disable-client-authentication-result
                                       :errors
                                       (access-denied-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        invalid-client-auth-status-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation disable-directory-data-access
                                       :shape-name "DisableDirectoryDataAccess"
                                       :input
                                       disable-directory-data-access-request
                                       :output
                                       disable-directory-data-access-result
                                       :errors
                                       (access-denied-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        directory-in-desired-state-exception
                                        directory-unavailable-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation disable-ldaps :shape-name "DisableLDAPS"
                                       :input disable-ldapsrequest :output
                                       disable-ldapsresult :errors
                                       (client-exception
                                        directory-does-not-exist-exception
                                        directory-unavailable-exception
                                        invalid-ldapsstatus-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation disable-radius :shape-name
                                       "DisableRadius" :input
                                       disable-radius-request :output
                                       disable-radius-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        service-exception))

(smithy/sdk/operation:define-operation disable-sso :shape-name "DisableSso"
                                       :input disable-sso-request :output
                                       disable-sso-result :errors
                                       (authentication-failed-exception
                                        client-exception
                                        entity-does-not-exist-exception
                                        insufficient-permissions-exception
                                        service-exception))

(smithy/sdk/operation:define-operation enable-client-authentication :shape-name
                                       "EnableClientAuthentication" :input
                                       enable-client-authentication-request
                                       :output
                                       enable-client-authentication-result
                                       :errors
                                       (access-denied-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        invalid-client-auth-status-exception
                                        no-available-certificate-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation enable-directory-data-access :shape-name
                                       "EnableDirectoryDataAccess" :input
                                       enable-directory-data-access-request
                                       :output
                                       enable-directory-data-access-result
                                       :errors
                                       (access-denied-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        directory-in-desired-state-exception
                                        directory-unavailable-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation enable-ldaps :shape-name "EnableLDAPS"
                                       :input enable-ldapsrequest :output
                                       enable-ldapsresult :errors
                                       (client-exception
                                        directory-does-not-exist-exception
                                        directory-unavailable-exception
                                        invalid-ldapsstatus-exception
                                        invalid-parameter-exception
                                        no-available-certificate-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation enable-radius :shape-name "EnableRadius"
                                       :input enable-radius-request :output
                                       enable-radius-result :errors
                                       (client-exception
                                        entity-already-exists-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation enable-sso :shape-name "EnableSso"
                                       :input enable-sso-request :output
                                       enable-sso-result :errors
                                       (authentication-failed-exception
                                        client-exception
                                        entity-does-not-exist-exception
                                        insufficient-permissions-exception
                                        service-exception))

(smithy/sdk/operation:define-operation get-directory-limits :shape-name
                                       "GetDirectoryLimits" :input
                                       get-directory-limits-request :output
                                       get-directory-limits-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        service-exception))

(smithy/sdk/operation:define-operation get-snapshot-limits :shape-name
                                       "GetSnapshotLimits" :input
                                       get-snapshot-limits-request :output
                                       get-snapshot-limits-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        service-exception))

(smithy/sdk/operation:define-operation list-adassessments :shape-name
                                       "ListADAssessments" :input
                                       list-adassessments-request :output
                                       list-adassessments-result :errors
                                       (client-exception
                                        directory-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-certificates :shape-name
                                       "ListCertificates" :input
                                       list-certificates-request :output
                                       list-certificates-result :errors
                                       (client-exception
                                        directory-does-not-exist-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation list-ip-routes :shape-name
                                       "ListIpRoutes" :input
                                       list-ip-routes-request :output
                                       list-ip-routes-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation list-log-subscriptions :shape-name
                                       "ListLogSubscriptions" :input
                                       list-log-subscriptions-request :output
                                       list-log-subscriptions-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-next-token-exception
                                        service-exception))

(smithy/sdk/operation:define-operation list-schema-extensions :shape-name
                                       "ListSchemaExtensions" :input
                                       list-schema-extensions-request :output
                                       list-schema-extensions-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-next-token-exception
                                        service-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation register-certificate :shape-name
                                       "RegisterCertificate" :input
                                       register-certificate-request :output
                                       register-certificate-result :errors
                                       (certificate-already-exists-exception
                                        certificate-limit-exceeded-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        directory-unavailable-exception
                                        invalid-certificate-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation register-event-topic :shape-name
                                       "RegisterEventTopic" :input
                                       register-event-topic-request :output
                                       register-event-topic-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation reject-shared-directory :shape-name
                                       "RejectSharedDirectory" :input
                                       reject-shared-directory-request :output
                                       reject-shared-directory-result :errors
                                       (client-exception
                                        directory-already-shared-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation remove-ip-routes :shape-name
                                       "RemoveIpRoutes" :input
                                       remove-ip-routes-request :output
                                       remove-ip-routes-result :errors
                                       (client-exception
                                        directory-unavailable-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation remove-region :shape-name "RemoveRegion"
                                       :input remove-region-request :output
                                       remove-region-result :errors
                                       (access-denied-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        directory-unavailable-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation remove-tags-from-resource :shape-name
                                       "RemoveTagsFromResource" :input
                                       remove-tags-from-resource-request
                                       :output remove-tags-from-resource-result
                                       :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation reset-user-password :shape-name
                                       "ResetUserPassword" :input
                                       reset-user-password-request :output
                                       reset-user-password-result :errors
                                       (client-exception
                                        directory-unavailable-exception
                                        entity-does-not-exist-exception
                                        invalid-password-exception
                                        service-exception
                                        unsupported-operation-exception
                                        user-does-not-exist-exception))

(smithy/sdk/operation:define-operation restore-from-snapshot :shape-name
                                       "RestoreFromSnapshot" :input
                                       restore-from-snapshot-request :output
                                       restore-from-snapshot-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation share-directory :shape-name
                                       "ShareDirectory" :input
                                       share-directory-request :output
                                       share-directory-result :errors
                                       (access-denied-exception
                                        client-exception
                                        directory-already-shared-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        invalid-target-exception
                                        organizations-exception
                                        service-exception
                                        share-limit-exceeded-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation start-adassessment :shape-name
                                       "StartADAssessment" :input
                                       start-adassessment-request :output
                                       start-adassessment-result :errors
                                       (adassessment-limit-exceeded-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation start-schema-extension :shape-name
                                       "StartSchemaExtension" :input
                                       start-schema-extension-request :output
                                       start-schema-extension-result :errors
                                       (client-exception
                                        directory-unavailable-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        snapshot-limit-exceeded-exception))

(smithy/sdk/operation:define-operation unshare-directory :shape-name
                                       "UnshareDirectory" :input
                                       unshare-directory-request :output
                                       unshare-directory-result :errors
                                       (client-exception
                                        directory-not-shared-exception
                                        entity-does-not-exist-exception
                                        invalid-target-exception
                                        service-exception))

(smithy/sdk/operation:define-operation update-conditional-forwarder :shape-name
                                       "UpdateConditionalForwarder" :input
                                       update-conditional-forwarder-request
                                       :output
                                       update-conditional-forwarder-result
                                       :errors
                                       (client-exception
                                        directory-unavailable-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation update-directory-setup :shape-name
                                       "UpdateDirectorySetup" :input
                                       update-directory-setup-request :output
                                       update-directory-setup-result :errors
                                       (access-denied-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        directory-in-desired-state-exception
                                        directory-unavailable-exception
                                        invalid-parameter-exception
                                        service-exception
                                        snapshot-limit-exceeded-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation update-hybrid-ad :shape-name
                                       "UpdateHybridAD" :input
                                       update-hybrid-adrequest :output
                                       update-hybrid-adresult :errors
                                       (adassessment-limit-exceeded-exception
                                        client-exception
                                        directory-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation update-number-of-domain-controllers
                                       :shape-name
                                       "UpdateNumberOfDomainControllers" :input
                                       update-number-of-domain-controllers-request
                                       :output
                                       update-number-of-domain-controllers-result
                                       :errors
                                       (client-exception
                                        directory-unavailable-exception
                                        domain-controller-limit-exceeded-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation update-radius :shape-name "UpdateRadius"
                                       :input update-radius-request :output
                                       update-radius-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation update-settings :shape-name
                                       "UpdateSettings" :input
                                       update-settings-request :output
                                       update-settings-result :errors
                                       (client-exception
                                        directory-does-not-exist-exception
                                        directory-unavailable-exception
                                        incompatible-settings-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception
                                        unsupported-settings-exception))

(smithy/sdk/operation:define-operation update-trust :shape-name "UpdateTrust"
                                       :input update-trust-request :output
                                       update-trust-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception))

(smithy/sdk/operation:define-operation verify-trust :shape-name "VerifyTrust"
                                       :input verify-trust-request :output
                                       verify-trust-result :errors
                                       (client-exception
                                        entity-does-not-exist-exception
                                        invalid-parameter-exception
                                        service-exception
                                        unsupported-operation-exception))
