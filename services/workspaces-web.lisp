(uiop/package:define-package #:pira/workspaces-web (:use)
                             (:export #:arn #:awsermine-control-plane-service
                              #:access-denied-exception #:arn-list
                              #:associate-browser-settings
                              #:associate-browser-settings-request
                              #:associate-browser-settings-response
                              #:associate-data-protection-settings
                              #:associate-data-protection-settings-request
                              #:associate-data-protection-settings-response
                              #:associate-ip-access-settings
                              #:associate-ip-access-settings-request
                              #:associate-ip-access-settings-response
                              #:associate-network-settings
                              #:associate-network-settings-request
                              #:associate-network-settings-response
                              #:associate-session-logger
                              #:associate-session-logger-request
                              #:associate-session-logger-response
                              #:associate-trust-store
                              #:associate-trust-store-request
                              #:associate-trust-store-response
                              #:associate-user-access-logging-settings
                              #:associate-user-access-logging-settings-request
                              #:associate-user-access-logging-settings-response
                              #:associate-user-settings
                              #:associate-user-settings-request
                              #:associate-user-settings-response
                              #:authentication-type #:browser-policy
                              #:browser-settings #:browser-settings-list
                              #:browser-settings-resource
                              #:browser-settings-summary #:browser-type
                              #:built-in-pattern-id #:certificate
                              #:certificate-authority-body #:certificate-list
                              #:certificate-principal #:certificate-summary
                              #:certificate-summary-list
                              #:certificate-thumbprint
                              #:certificate-thumbprint-list #:client-token
                              #:confidence-level #:conflict-exception
                              #:cookie-domain #:cookie-name #:cookie-path
                              #:cookie-specification #:cookie-specifications
                              #:cookie-synchronization-configuration
                              #:create-browser-settings
                              #:create-browser-settings-request
                              #:create-browser-settings-response
                              #:create-data-protection-settings
                              #:create-data-protection-settings-request
                              #:create-data-protection-settings-response
                              #:create-identity-provider
                              #:create-identity-provider-request
                              #:create-identity-provider-response
                              #:create-ip-access-settings
                              #:create-ip-access-settings-request
                              #:create-ip-access-settings-response
                              #:create-network-settings
                              #:create-network-settings-request
                              #:create-network-settings-response
                              #:create-portal #:create-portal-request
                              #:create-portal-response #:create-session-logger
                              #:create-session-logger-request
                              #:create-session-logger-response
                              #:create-trust-store #:create-trust-store-request
                              #:create-trust-store-response
                              #:create-user-access-logging-settings
                              #:create-user-access-logging-settings-request
                              #:create-user-access-logging-settings-response
                              #:create-user-settings
                              #:create-user-settings-request
                              #:create-user-settings-response #:custom-pattern
                              #:data-protection-settings
                              #:data-protection-settings-list
                              #:data-protection-settings-resource
                              #:data-protection-settings-summary
                              #:delete-browser-settings
                              #:delete-browser-settings-request
                              #:delete-browser-settings-response
                              #:delete-data-protection-settings
                              #:delete-data-protection-settings-request
                              #:delete-data-protection-settings-response
                              #:delete-identity-provider
                              #:delete-identity-provider-request
                              #:delete-identity-provider-response
                              #:delete-ip-access-settings
                              #:delete-ip-access-settings-request
                              #:delete-ip-access-settings-response
                              #:delete-network-settings
                              #:delete-network-settings-request
                              #:delete-network-settings-response
                              #:delete-portal #:delete-portal-request
                              #:delete-portal-response #:delete-session-logger
                              #:delete-session-logger-request
                              #:delete-session-logger-response
                              #:delete-trust-store #:delete-trust-store-request
                              #:delete-trust-store-response
                              #:delete-user-access-logging-settings
                              #:delete-user-access-logging-settings-request
                              #:delete-user-access-logging-settings-response
                              #:delete-user-settings
                              #:delete-user-settings-request
                              #:delete-user-settings-response #:description
                              #:description-safe
                              #:disassociate-browser-settings
                              #:disassociate-browser-settings-request
                              #:disassociate-browser-settings-response
                              #:disassociate-data-protection-settings
                              #:disassociate-data-protection-settings-request
                              #:disassociate-data-protection-settings-response
                              #:disassociate-ip-access-settings
                              #:disassociate-ip-access-settings-request
                              #:disassociate-ip-access-settings-response
                              #:disassociate-network-settings
                              #:disassociate-network-settings-request
                              #:disassociate-network-settings-response
                              #:disassociate-session-logger
                              #:disassociate-session-logger-request
                              #:disassociate-session-logger-response
                              #:disassociate-trust-store
                              #:disassociate-trust-store-request
                              #:disassociate-trust-store-response
                              #:disassociate-user-access-logging-settings
                              #:disassociate-user-access-logging-settings-request
                              #:disassociate-user-access-logging-settings-response
                              #:disassociate-user-settings
                              #:disassociate-user-settings-request
                              #:disassociate-user-settings-response
                              #:disconnect-timeout-in-minutes #:display-name
                              #:display-name-safe #:enabled-type
                              #:encryption-context-map #:event #:event-filter
                              #:events #:exception-message #:expire-session
                              #:expire-session-request
                              #:expire-session-response #:field-name
                              #:folder-structure #:get-browser-settings
                              #:get-browser-settings-request
                              #:get-browser-settings-response
                              #:get-data-protection-settings
                              #:get-data-protection-settings-request
                              #:get-data-protection-settings-response
                              #:get-identity-provider
                              #:get-identity-provider-request
                              #:get-identity-provider-response
                              #:get-ip-access-settings
                              #:get-ip-access-settings-request
                              #:get-ip-access-settings-response
                              #:get-network-settings
                              #:get-network-settings-request
                              #:get-network-settings-response #:get-portal
                              #:get-portal-request #:get-portal-response
                              #:get-portal-service-provider-metadata
                              #:get-portal-service-provider-metadata-request
                              #:get-portal-service-provider-metadata-response
                              #:get-session #:get-session-logger
                              #:get-session-logger-request
                              #:get-session-logger-response
                              #:get-session-request #:get-session-response
                              #:get-trust-store #:get-trust-store-certificate
                              #:get-trust-store-certificate-request
                              #:get-trust-store-certificate-response
                              #:get-trust-store-request
                              #:get-trust-store-response
                              #:get-user-access-logging-settings
                              #:get-user-access-logging-settings-request
                              #:get-user-access-logging-settings-response
                              #:get-user-settings #:get-user-settings-request
                              #:get-user-settings-response
                              #:global-inline-redaction-urls
                              #:hidden-toolbar-item-list #:identity-provider
                              #:identity-provider-details
                              #:identity-provider-list #:identity-provider-name
                              #:identity-provider-resource
                              #:identity-provider-summary
                              #:identity-provider-type
                              #:idle-disconnect-timeout-in-minutes
                              #:inline-redaction-configuration
                              #:inline-redaction-pattern
                              #:inline-redaction-patterns
                              #:inline-redaction-url #:inline-redaction-urls
                              #:instance-type #:internal-server-exception
                              #:ip-access-settings #:ip-access-settings-list
                              #:ip-access-settings-resource
                              #:ip-access-settings-summary #:ip-address
                              #:ip-address-list #:ip-range #:ip-rule
                              #:ip-rule-list #:kinesis-stream-arn
                              #:list-browser-settings
                              #:list-browser-settings-request
                              #:list-browser-settings-response
                              #:list-data-protection-settings
                              #:list-data-protection-settings-request
                              #:list-data-protection-settings-response
                              #:list-identity-providers
                              #:list-identity-providers-request
                              #:list-identity-providers-response
                              #:list-ip-access-settings
                              #:list-ip-access-settings-request
                              #:list-ip-access-settings-response
                              #:list-network-settings
                              #:list-network-settings-request
                              #:list-network-settings-response #:list-portals
                              #:list-portals-request #:list-portals-response
                              #:list-session-loggers
                              #:list-session-loggers-request
                              #:list-session-loggers-response #:list-sessions
                              #:list-sessions-request #:list-sessions-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-trust-store-certificates
                              #:list-trust-store-certificates-request
                              #:list-trust-store-certificates-response
                              #:list-trust-stores #:list-trust-stores-request
                              #:list-trust-stores-response
                              #:list-user-access-logging-settings
                              #:list-user-access-logging-settings-request
                              #:list-user-access-logging-settings-response
                              #:list-user-settings #:list-user-settings-request
                              #:list-user-settings-response #:log-configuration
                              #:log-file-format #:max-concurrent-sessions
                              #:max-display-resolution #:max-results
                              #:network-settings #:network-settings-list
                              #:network-settings-resource
                              #:network-settings-summary #:pagination-token
                              #:pattern-name #:portal #:portal-endpoint
                              #:portal-id #:portal-list #:portal-resource
                              #:portal-status #:portal-summary #:quota-code
                              #:redaction-place-holder
                              #:redaction-place-holder-text
                              #:redaction-place-holder-type #:regex
                              #:renderer-type #:resource-id
                              #:resource-not-found-exception #:resource-type
                              #:retry-after-seconds #:s3bucket #:s3bucket-owner
                              #:s3key-prefix #:s3log-configuration
                              #:saml-metadata #:security-group-id
                              #:security-group-id-list #:service-code
                              #:service-quota-exceeded-exception #:session
                              #:session-id #:session-logger
                              #:session-logger-list #:session-logger-resource
                              #:session-logger-summary #:session-sort-by
                              #:session-status #:session-summary
                              #:session-summary-list #:status-reason
                              #:string-type #:subnet-id #:subnet-id-list
                              #:subresource-arn #:tag #:tag-exception-message
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value
                              #:throttling-exception #:timestamp
                              #:too-many-tags-exception #:toolbar-configuration
                              #:toolbar-item #:toolbar-type #:trust-store
                              #:trust-store-resource #:trust-store-summary
                              #:trust-store-summary-list #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response
                              #:update-browser-settings
                              #:update-browser-settings-request
                              #:update-browser-settings-response
                              #:update-data-protection-settings
                              #:update-data-protection-settings-request
                              #:update-data-protection-settings-response
                              #:update-identity-provider
                              #:update-identity-provider-request
                              #:update-identity-provider-response
                              #:update-ip-access-settings
                              #:update-ip-access-settings-request
                              #:update-ip-access-settings-response
                              #:update-network-settings
                              #:update-network-settings-request
                              #:update-network-settings-response
                              #:update-portal #:update-portal-request
                              #:update-portal-response #:update-session-logger
                              #:update-session-logger-request
                              #:update-session-logger-response
                              #:update-trust-store #:update-trust-store-request
                              #:update-trust-store-response
                              #:update-user-access-logging-settings
                              #:update-user-access-logging-settings-request
                              #:update-user-access-logging-settings-response
                              #:update-user-settings
                              #:update-user-settings-request
                              #:update-user-settings-response
                              #:user-access-logging-settings
                              #:user-access-logging-settings-list
                              #:user-access-logging-settings-resource
                              #:user-access-logging-settings-summary
                              #:user-settings #:user-settings-list
                              #:user-settings-resource #:user-settings-summary
                              #:username #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:visual-mode
                              #:vpc-id #:key-arn))
(common-lisp:in-package #:pira/workspaces-web)

(smithy/sdk/service:define-service awsermine-control-plane-service :shape-name
                                   "AWSErmineControlPlaneService" :version
                                   "2020-07-08" :title "Amazon WorkSpaces Web"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "WorkSpaces Web")
                                      ("arnNamespace" . "workspaces-web")
                                      ("cloudFormationName" . "WorkSpacesWeb")
                                      ("cloudTrailEventSource"
                                       . "workspaces-web.amazonaws.com")
                                      ("endpointPrefix" . "workspaces-web"))
                                     ("aws.api#tagEnabled")
                                     ("aws.auth#sigv4"
                                      ("name" . "workspaces-web"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-list arn-list :member arn)

(smithy/sdk/shapes:define-input associate-browser-settings-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t)
                                 (browser-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "browserSettingsArn" :http-query
                                  "browserSettingsArn"))
                                (:shape-name "AssociateBrowserSettingsRequest"))

(smithy/sdk/shapes:define-output associate-browser-settings-response
                                 common-lisp:nil
                                 ((portal-arn :target-type arn :required
                                   common-lisp:t :member-name "portalArn")
                                  (browser-settings-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "browserSettingsArn"))
                                 (:shape-name
                                  "AssociateBrowserSettingsResponse"))

(smithy/sdk/shapes:define-input associate-data-protection-settings-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t)
                                 (data-protection-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "dataProtectionSettingsArn" :http-query
                                  "dataProtectionSettingsArn"))
                                (:shape-name
                                 "AssociateDataProtectionSettingsRequest"))

(smithy/sdk/shapes:define-output associate-data-protection-settings-response
                                 common-lisp:nil
                                 ((portal-arn :target-type arn :required
                                   common-lisp:t :member-name "portalArn")
                                  (data-protection-settings-arn :target-type
                                   arn :required common-lisp:t :member-name
                                   "dataProtectionSettingsArn"))
                                 (:shape-name
                                  "AssociateDataProtectionSettingsResponse"))

(smithy/sdk/shapes:define-input associate-ip-access-settings-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t)
                                 (ip-access-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "ipAccessSettingsArn" :http-query
                                  "ipAccessSettingsArn"))
                                (:shape-name
                                 "AssociateIpAccessSettingsRequest"))

(smithy/sdk/shapes:define-output associate-ip-access-settings-response
                                 common-lisp:nil
                                 ((portal-arn :target-type arn :required
                                   common-lisp:t :member-name "portalArn")
                                  (ip-access-settings-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "ipAccessSettingsArn"))
                                 (:shape-name
                                  "AssociateIpAccessSettingsResponse"))

(smithy/sdk/shapes:define-input associate-network-settings-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t)
                                 (network-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "networkSettingsArn" :http-query
                                  "networkSettingsArn"))
                                (:shape-name "AssociateNetworkSettingsRequest"))

(smithy/sdk/shapes:define-output associate-network-settings-response
                                 common-lisp:nil
                                 ((portal-arn :target-type arn :required
                                   common-lisp:t :member-name "portalArn")
                                  (network-settings-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "networkSettingsArn"))
                                 (:shape-name
                                  "AssociateNetworkSettingsResponse"))

(smithy/sdk/shapes:define-input associate-session-logger-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t)
                                 (session-logger-arn :target-type arn :required
                                  common-lisp:t :member-name "sessionLoggerArn"
                                  :http-query "sessionLoggerArn"))
                                (:shape-name "AssociateSessionLoggerRequest"))

(smithy/sdk/shapes:define-output associate-session-logger-response
                                 common-lisp:nil
                                 ((portal-arn :target-type arn :required
                                   common-lisp:t :member-name "portalArn")
                                  (session-logger-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "sessionLoggerArn"))
                                 (:shape-name "AssociateSessionLoggerResponse"))

(smithy/sdk/shapes:define-input associate-trust-store-request common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t)
                                 (trust-store-arn :target-type arn :required
                                  common-lisp:t :member-name "trustStoreArn"
                                  :http-query "trustStoreArn"))
                                (:shape-name "AssociateTrustStoreRequest"))

(smithy/sdk/shapes:define-output associate-trust-store-response common-lisp:nil
                                 ((portal-arn :target-type arn :required
                                   common-lisp:t :member-name "portalArn")
                                  (trust-store-arn :target-type arn :required
                                   common-lisp:t :member-name "trustStoreArn"))
                                 (:shape-name "AssociateTrustStoreResponse"))

(smithy/sdk/shapes:define-input associate-user-access-logging-settings-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t)
                                 (user-access-logging-settings-arn :target-type
                                  arn :required common-lisp:t :member-name
                                  "userAccessLoggingSettingsArn" :http-query
                                  "userAccessLoggingSettingsArn"))
                                (:shape-name
                                 "AssociateUserAccessLoggingSettingsRequest"))

(smithy/sdk/shapes:define-output
 associate-user-access-logging-settings-response common-lisp:nil
 ((portal-arn :target-type arn :required common-lisp:t :member-name
   "portalArn")
  (user-access-logging-settings-arn :target-type arn :required common-lisp:t
   :member-name "userAccessLoggingSettingsArn"))
 (:shape-name "AssociateUserAccessLoggingSettingsResponse"))

(smithy/sdk/shapes:define-input associate-user-settings-request common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t)
                                 (user-settings-arn :target-type arn :required
                                  common-lisp:t :member-name "userSettingsArn"
                                  :http-query "userSettingsArn"))
                                (:shape-name "AssociateUserSettingsRequest"))

(smithy/sdk/shapes:define-output associate-user-settings-response
                                 common-lisp:nil
                                 ((portal-arn :target-type arn :required
                                   common-lisp:t :member-name "portalArn")
                                  (user-settings-arn :target-type arn :required
                                   common-lisp:t :member-name
                                   "userSettingsArn"))
                                 (:shape-name "AssociateUserSettingsResponse"))

(smithy/sdk/shapes:define-type authentication-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type browser-policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure browser-settings common-lisp:nil
                                    ((browser-settings-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "browserSettingsArn")
                                     (associated-portal-arns :target-type
                                      arn-list :member-name
                                      "associatedPortalArns")
                                     (browser-policy :target-type
                                      browser-policy :member-name
                                      "browserPolicy")
                                     (customer-managed-key :target-type key-arn
                                      :member-name "customerManagedKey")
                                     (additional-encryption-context
                                      :target-type encryption-context-map
                                      :member-name
                                      "additionalEncryptionContext"))
                                    (:shape-name "BrowserSettings"))

(smithy/sdk/shapes:define-list browser-settings-list :member
                               browser-settings-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure browser-settings-summary common-lisp:nil
                                    ((browser-settings-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "browserSettingsArn"))
                                    (:shape-name "BrowserSettingsSummary"))

(smithy/sdk/shapes:define-type browser-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type built-in-pattern-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure certificate common-lisp:nil
                                    ((thumbprint :target-type
                                      certificate-thumbprint :member-name
                                      "thumbprint")
                                     (subject :target-type
                                      certificate-principal :member-name
                                      "subject")
                                     (issuer :target-type certificate-principal
                                      :member-name "issuer")
                                     (not-valid-before :target-type timestamp
                                      :member-name "notValidBefore")
                                     (not-valid-after :target-type timestamp
                                      :member-name "notValidAfter")
                                     (body :target-type
                                      certificate-authority-body :member-name
                                      "body"))
                                    (:shape-name "Certificate"))

(smithy/sdk/shapes:define-type certificate-authority-body
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-list certificate-list :member
                               certificate-authority-body)

(smithy/sdk/shapes:define-type certificate-principal
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure certificate-summary common-lisp:nil
                                    ((thumbprint :target-type
                                      certificate-thumbprint :member-name
                                      "thumbprint")
                                     (subject :target-type
                                      certificate-principal :member-name
                                      "subject")
                                     (issuer :target-type certificate-principal
                                      :member-name "issuer")
                                     (not-valid-before :target-type timestamp
                                      :member-name "notValidBefore")
                                     (not-valid-after :target-type timestamp
                                      :member-name "notValidAfter"))
                                    (:shape-name "CertificateSummary"))

(smithy/sdk/shapes:define-list certificate-summary-list :member
                               certificate-summary)

(smithy/sdk/shapes:define-type certificate-thumbprint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list certificate-thumbprint-list :member
                               certificate-thumbprint)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type confidence-level smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type cookie-domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cookie-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cookie-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cookie-specification common-lisp:nil
                                    ((domain :target-type cookie-domain
                                      :required common-lisp:t :member-name
                                      "domain")
                                     (name :target-type cookie-name
                                      :member-name "name")
                                     (path :target-type cookie-path
                                      :member-name "path"))
                                    (:shape-name "CookieSpecification"))

(smithy/sdk/shapes:define-list cookie-specifications :member
                               cookie-specification)

(smithy/sdk/shapes:define-structure cookie-synchronization-configuration
                                    common-lisp:nil
                                    ((allowlist :target-type
                                      cookie-specifications :required
                                      common-lisp:t :member-name "allowlist")
                                     (blocklist :target-type
                                      cookie-specifications :member-name
                                      "blocklist"))
                                    (:shape-name
                                     "CookieSynchronizationConfiguration"))

(smithy/sdk/shapes:define-input create-browser-settings-request common-lisp:nil
                                ((tags :target-type tag-list :member-name
                                  "tags")
                                 (customer-managed-key :target-type key-arn
                                  :member-name "customerManagedKey")
                                 (additional-encryption-context :target-type
                                  encryption-context-map :member-name
                                  "additionalEncryptionContext")
                                 (browser-policy :target-type browser-policy
                                  :required common-lisp:t :member-name
                                  "browserPolicy")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateBrowserSettingsRequest"))

(smithy/sdk/shapes:define-output create-browser-settings-response
                                 common-lisp:nil
                                 ((browser-settings-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "browserSettingsArn"))
                                 (:shape-name "CreateBrowserSettingsResponse"))

(smithy/sdk/shapes:define-input create-data-protection-settings-request
                                common-lisp:nil
                                ((display-name :target-type display-name-safe
                                  :member-name "displayName")
                                 (description :target-type description-safe
                                  :member-name "description")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (customer-managed-key :target-type key-arn
                                  :member-name "customerManagedKey")
                                 (additional-encryption-context :target-type
                                  encryption-context-map :member-name
                                  "additionalEncryptionContext")
                                 (inline-redaction-configuration :target-type
                                  inline-redaction-configuration :member-name
                                  "inlineRedactionConfiguration")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "CreateDataProtectionSettingsRequest"))

(smithy/sdk/shapes:define-output create-data-protection-settings-response
                                 common-lisp:nil
                                 ((data-protection-settings-arn :target-type
                                   arn :required common-lisp:t :member-name
                                   "dataProtectionSettingsArn"))
                                 (:shape-name
                                  "CreateDataProtectionSettingsResponse"))

(smithy/sdk/shapes:define-input create-identity-provider-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn")
                                 (identity-provider-name :target-type
                                  identity-provider-name :required
                                  common-lisp:t :member-name
                                  "identityProviderName")
                                 (identity-provider-type :target-type
                                  identity-provider-type :required
                                  common-lisp:t :member-name
                                  "identityProviderType")
                                 (identity-provider-details :target-type
                                  identity-provider-details :required
                                  common-lisp:t :member-name
                                  "identityProviderDetails")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateIdentityProviderRequest"))

(smithy/sdk/shapes:define-output create-identity-provider-response
                                 common-lisp:nil
                                 ((identity-provider-arn :target-type
                                   subresource-arn :required common-lisp:t
                                   :member-name "identityProviderArn"))
                                 (:shape-name "CreateIdentityProviderResponse"))

(smithy/sdk/shapes:define-input create-ip-access-settings-request
                                common-lisp:nil
                                ((display-name :target-type display-name
                                  :member-name "displayName")
                                 (description :target-type description
                                  :member-name "description")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (customer-managed-key :target-type key-arn
                                  :member-name "customerManagedKey")
                                 (additional-encryption-context :target-type
                                  encryption-context-map :member-name
                                  "additionalEncryptionContext")
                                 (ip-rules :target-type ip-rule-list :required
                                  common-lisp:t :member-name "ipRules")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateIpAccessSettingsRequest"))

(smithy/sdk/shapes:define-output create-ip-access-settings-response
                                 common-lisp:nil
                                 ((ip-access-settings-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "ipAccessSettingsArn"))
                                 (:shape-name "CreateIpAccessSettingsResponse"))

(smithy/sdk/shapes:define-input create-network-settings-request common-lisp:nil
                                ((vpc-id :target-type vpc-id :required
                                  common-lisp:t :member-name "vpcId")
                                 (subnet-ids :target-type subnet-id-list
                                  :required common-lisp:t :member-name
                                  "subnetIds")
                                 (security-group-ids :target-type
                                  security-group-id-list :required
                                  common-lisp:t :member-name
                                  "securityGroupIds")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateNetworkSettingsRequest"))

(smithy/sdk/shapes:define-output create-network-settings-response
                                 common-lisp:nil
                                 ((network-settings-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "networkSettingsArn"))
                                 (:shape-name "CreateNetworkSettingsResponse"))

(smithy/sdk/shapes:define-input create-portal-request common-lisp:nil
                                ((display-name :target-type display-name
                                  :member-name "displayName")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (customer-managed-key :target-type key-arn
                                  :member-name "customerManagedKey")
                                 (additional-encryption-context :target-type
                                  encryption-context-map :member-name
                                  "additionalEncryptionContext")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (authentication-type :target-type
                                  authentication-type :member-name
                                  "authenticationType")
                                 (instance-type :target-type instance-type
                                  :member-name "instanceType")
                                 (max-concurrent-sessions :target-type
                                  max-concurrent-sessions :member-name
                                  "maxConcurrentSessions"))
                                (:shape-name "CreatePortalRequest"))

(smithy/sdk/shapes:define-output create-portal-response common-lisp:nil
                                 ((portal-arn :target-type arn :required
                                   common-lisp:t :member-name "portalArn")
                                  (portal-endpoint :target-type portal-endpoint
                                   :required common-lisp:t :member-name
                                   "portalEndpoint"))
                                 (:shape-name "CreatePortalResponse"))

(smithy/sdk/shapes:define-input create-session-logger-request common-lisp:nil
                                ((event-filter :target-type event-filter
                                  :required common-lisp:t :member-name
                                  "eventFilter")
                                 (log-configuration :target-type
                                  log-configuration :required common-lisp:t
                                  :member-name "logConfiguration")
                                 (display-name :target-type display-name-safe
                                  :member-name "displayName")
                                 (customer-managed-key :target-type key-arn
                                  :member-name "customerManagedKey")
                                 (additional-encryption-context :target-type
                                  encryption-context-map :member-name
                                  "additionalEncryptionContext")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateSessionLoggerRequest"))

(smithy/sdk/shapes:define-output create-session-logger-response common-lisp:nil
                                 ((session-logger-arn :target-type arn
                                   :required common-lisp:t :member-name
                                   "sessionLoggerArn"))
                                 (:shape-name "CreateSessionLoggerResponse"))

(smithy/sdk/shapes:define-input create-trust-store-request common-lisp:nil
                                ((certificate-list :target-type
                                  certificate-list :required common-lisp:t
                                  :member-name "certificateList")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateTrustStoreRequest"))

(smithy/sdk/shapes:define-output create-trust-store-response common-lisp:nil
                                 ((trust-store-arn :target-type arn :required
                                   common-lisp:t :member-name "trustStoreArn"))
                                 (:shape-name "CreateTrustStoreResponse"))

(smithy/sdk/shapes:define-input create-user-access-logging-settings-request
                                common-lisp:nil
                                ((kinesis-stream-arn :target-type
                                  kinesis-stream-arn :required common-lisp:t
                                  :member-name "kinesisStreamArn")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "CreateUserAccessLoggingSettingsRequest"))

(smithy/sdk/shapes:define-output create-user-access-logging-settings-response
                                 common-lisp:nil
                                 ((user-access-logging-settings-arn
                                   :target-type arn :required common-lisp:t
                                   :member-name
                                   "userAccessLoggingSettingsArn"))
                                 (:shape-name
                                  "CreateUserAccessLoggingSettingsResponse"))

(smithy/sdk/shapes:define-input create-user-settings-request common-lisp:nil
                                ((copy-allowed :target-type enabled-type
                                  :required common-lisp:t :member-name
                                  "copyAllowed")
                                 (paste-allowed :target-type enabled-type
                                  :required common-lisp:t :member-name
                                  "pasteAllowed")
                                 (download-allowed :target-type enabled-type
                                  :required common-lisp:t :member-name
                                  "downloadAllowed")
                                 (upload-allowed :target-type enabled-type
                                  :required common-lisp:t :member-name
                                  "uploadAllowed")
                                 (print-allowed :target-type enabled-type
                                  :required common-lisp:t :member-name
                                  "printAllowed")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (disconnect-timeout-in-minutes :target-type
                                  disconnect-timeout-in-minutes :member-name
                                  "disconnectTimeoutInMinutes")
                                 (idle-disconnect-timeout-in-minutes
                                  :target-type
                                  idle-disconnect-timeout-in-minutes
                                  :member-name
                                  "idleDisconnectTimeoutInMinutes")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (cookie-synchronization-configuration
                                  :target-type
                                  cookie-synchronization-configuration
                                  :member-name
                                  "cookieSynchronizationConfiguration")
                                 (customer-managed-key :target-type key-arn
                                  :member-name "customerManagedKey")
                                 (additional-encryption-context :target-type
                                  encryption-context-map :member-name
                                  "additionalEncryptionContext")
                                 (deep-link-allowed :target-type enabled-type
                                  :member-name "deepLinkAllowed")
                                 (toolbar-configuration :target-type
                                  toolbar-configuration :member-name
                                  "toolbarConfiguration"))
                                (:shape-name "CreateUserSettingsRequest"))

(smithy/sdk/shapes:define-output create-user-settings-response common-lisp:nil
                                 ((user-settings-arn :target-type arn :required
                                   common-lisp:t :member-name
                                   "userSettingsArn"))
                                 (:shape-name "CreateUserSettingsResponse"))

(smithy/sdk/shapes:define-structure custom-pattern common-lisp:nil
                                    ((pattern-name :target-type pattern-name
                                      :required common-lisp:t :member-name
                                      "patternName")
                                     (pattern-regex :target-type regex
                                      :required common-lisp:t :member-name
                                      "patternRegex")
                                     (pattern-description :target-type
                                      description-safe :member-name
                                      "patternDescription")
                                     (keyword-regex :target-type regex
                                      :member-name "keywordRegex"))
                                    (:shape-name "CustomPattern"))

(smithy/sdk/shapes:define-structure data-protection-settings common-lisp:nil
                                    ((data-protection-settings-arn :target-type
                                      arn :required common-lisp:t :member-name
                                      "dataProtectionSettingsArn")
                                     (inline-redaction-configuration
                                      :target-type
                                      inline-redaction-configuration
                                      :member-name
                                      "inlineRedactionConfiguration")
                                     (associated-portal-arns :target-type
                                      arn-list :member-name
                                      "associatedPortalArns")
                                     (display-name :target-type
                                      display-name-safe :member-name
                                      "displayName")
                                     (description :target-type description-safe
                                      :member-name "description")
                                     (creation-date :target-type timestamp
                                      :member-name "creationDate")
                                     (customer-managed-key :target-type key-arn
                                      :member-name "customerManagedKey")
                                     (additional-encryption-context
                                      :target-type encryption-context-map
                                      :member-name
                                      "additionalEncryptionContext"))
                                    (:shape-name "DataProtectionSettings"))

(smithy/sdk/shapes:define-list data-protection-settings-list :member
                               data-protection-settings-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure data-protection-settings-summary
                                    common-lisp:nil
                                    ((data-protection-settings-arn :target-type
                                      arn :required common-lisp:t :member-name
                                      "dataProtectionSettingsArn")
                                     (display-name :target-type
                                      display-name-safe :member-name
                                      "displayName")
                                     (description :target-type description-safe
                                      :member-name "description")
                                     (creation-date :target-type timestamp
                                      :member-name "creationDate"))
                                    (:shape-name
                                     "DataProtectionSettingsSummary"))

(smithy/sdk/shapes:define-input delete-browser-settings-request common-lisp:nil
                                ((browser-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "browserSettingsArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteBrowserSettingsRequest"))

(smithy/sdk/shapes:define-output delete-browser-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteBrowserSettingsResponse"))

(smithy/sdk/shapes:define-input delete-data-protection-settings-request
                                common-lisp:nil
                                ((data-protection-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "dataProtectionSettingsArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteDataProtectionSettingsRequest"))

(smithy/sdk/shapes:define-output delete-data-protection-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteDataProtectionSettingsResponse"))

(smithy/sdk/shapes:define-input delete-identity-provider-request
                                common-lisp:nil
                                ((identity-provider-arn :target-type
                                  subresource-arn :required common-lisp:t
                                  :member-name "identityProviderArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteIdentityProviderRequest"))

(smithy/sdk/shapes:define-output delete-identity-provider-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteIdentityProviderResponse"))

(smithy/sdk/shapes:define-input delete-ip-access-settings-request
                                common-lisp:nil
                                ((ip-access-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "ipAccessSettingsArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteIpAccessSettingsRequest"))

(smithy/sdk/shapes:define-output delete-ip-access-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteIpAccessSettingsResponse"))

(smithy/sdk/shapes:define-input delete-network-settings-request common-lisp:nil
                                ((network-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "networkSettingsArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteNetworkSettingsRequest"))

(smithy/sdk/shapes:define-output delete-network-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteNetworkSettingsResponse"))

(smithy/sdk/shapes:define-input delete-portal-request common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeletePortalRequest"))

(smithy/sdk/shapes:define-output delete-portal-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePortalResponse"))

(smithy/sdk/shapes:define-input delete-session-logger-request common-lisp:nil
                                ((session-logger-arn :target-type arn :required
                                  common-lisp:t :member-name "sessionLoggerArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSessionLoggerRequest"))

(smithy/sdk/shapes:define-output delete-session-logger-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteSessionLoggerResponse"))

(smithy/sdk/shapes:define-input delete-trust-store-request common-lisp:nil
                                ((trust-store-arn :target-type arn :required
                                  common-lisp:t :member-name "trustStoreArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteTrustStoreRequest"))

(smithy/sdk/shapes:define-output delete-trust-store-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTrustStoreResponse"))

(smithy/sdk/shapes:define-input delete-user-access-logging-settings-request
                                common-lisp:nil
                                ((user-access-logging-settings-arn :target-type
                                  arn :required common-lisp:t :member-name
                                  "userAccessLoggingSettingsArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteUserAccessLoggingSettingsRequest"))

(smithy/sdk/shapes:define-output delete-user-access-logging-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteUserAccessLoggingSettingsResponse"))

(smithy/sdk/shapes:define-input delete-user-settings-request common-lisp:nil
                                ((user-settings-arn :target-type arn :required
                                  common-lisp:t :member-name "userSettingsArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteUserSettingsRequest"))

(smithy/sdk/shapes:define-output delete-user-settings-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteUserSettingsResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type description-safe smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-browser-settings-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateBrowserSettingsRequest"))

(smithy/sdk/shapes:define-output disassociate-browser-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateBrowserSettingsResponse"))

(smithy/sdk/shapes:define-input disassociate-data-protection-settings-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateDataProtectionSettingsRequest"))

(smithy/sdk/shapes:define-output disassociate-data-protection-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateDataProtectionSettingsResponse"))

(smithy/sdk/shapes:define-input disassociate-ip-access-settings-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateIpAccessSettingsRequest"))

(smithy/sdk/shapes:define-output disassociate-ip-access-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateIpAccessSettingsResponse"))

(smithy/sdk/shapes:define-input disassociate-network-settings-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateNetworkSettingsRequest"))

(smithy/sdk/shapes:define-output disassociate-network-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateNetworkSettingsResponse"))

(smithy/sdk/shapes:define-input disassociate-session-logger-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateSessionLoggerRequest"))

(smithy/sdk/shapes:define-output disassociate-session-logger-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateSessionLoggerResponse"))

(smithy/sdk/shapes:define-input disassociate-trust-store-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DisassociateTrustStoreRequest"))

(smithy/sdk/shapes:define-output disassociate-trust-store-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DisassociateTrustStoreResponse"))

(smithy/sdk/shapes:define-input
 disassociate-user-access-logging-settings-request common-lisp:nil
 ((portal-arn :target-type arn :required common-lisp:t :member-name "portalArn"
   :http-label common-lisp:t))
 (:shape-name "DisassociateUserAccessLoggingSettingsRequest"))

(smithy/sdk/shapes:define-output
 disassociate-user-access-logging-settings-response common-lisp:nil
 common-lisp:nil (:shape-name "DisassociateUserAccessLoggingSettingsResponse"))

(smithy/sdk/shapes:define-input disassociate-user-settings-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DisassociateUserSettingsRequest"))

(smithy/sdk/shapes:define-output disassociate-user-settings-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateUserSettingsResponse"))

(smithy/sdk/shapes:define-type disconnect-timeout-in-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type display-name-safe smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type enabled-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map encryption-context-map :key string-type :value
                              string-type)

(smithy/sdk/shapes:define-enum event
    common-lisp:nil
  (:website-interact "WebsiteInteract")
  (:file-download-from-secure-browser-to-remote-disk
   "FileDownloadFromSecureBrowserToRemoteDisk")
  (:file-transfer-from-remote-to-local-disk "FileTransferFromRemoteToLocalDisk")
  (:file-transfer-from-local-to-remote-disk "FileTransferFromLocalToRemoteDisk")
  (:file-upload-from-remote-disk-to-secure-browser
   "FileUploadFromRemoteDiskToSecureBrowser")
  (:content-paste-to-website "ContentPasteToWebsite")
  (:content-transfer-from-local-to-remote-clipboard
   "ContentTransferFromLocalToRemoteClipboard")
  (:content-copy-from-website "ContentCopyFromWebsite")
  (:url-load "UrlLoad")
  (:tab-open "TabOpen")
  (:tab-close "TabClose")
  (:print-job-submit "PrintJobSubmit")
  (:session-connect "SessionConnect")
  (:session-start "SessionStart")
  (:session-disconnect "SessionDisconnect")
  (:session-end "SessionEnd"))

(smithy/sdk/shapes:define-union event-filter common-lisp:nil
                                ((all :target-type common-lisp:null
                                  :member-name "all")
                                 (include :target-type events :member-name
                                  "include"))
                                (:shape-name "EventFilter"))

(smithy/sdk/shapes:define-list events :member event)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input expire-session-request common-lisp:nil
                                ((portal-id :target-type portal-id :required
                                  common-lisp:t :member-name "portalId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t))
                                (:shape-name "ExpireSessionRequest"))

(smithy/sdk/shapes:define-output expire-session-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "ExpireSessionResponse"))

(smithy/sdk/shapes:define-type field-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum folder-structure
    common-lisp:nil
  (:flat "Flat")
  (:nested-by-date "NestedByDate"))

(smithy/sdk/shapes:define-input get-browser-settings-request common-lisp:nil
                                ((browser-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "browserSettingsArn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetBrowserSettingsRequest"))

(smithy/sdk/shapes:define-output get-browser-settings-response common-lisp:nil
                                 ((browser-settings :target-type
                                   browser-settings :member-name
                                   "browserSettings"))
                                 (:shape-name "GetBrowserSettingsResponse"))

(smithy/sdk/shapes:define-input get-data-protection-settings-request
                                common-lisp:nil
                                ((data-protection-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "dataProtectionSettingsArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetDataProtectionSettingsRequest"))

(smithy/sdk/shapes:define-output get-data-protection-settings-response
                                 common-lisp:nil
                                 ((data-protection-settings :target-type
                                   data-protection-settings :member-name
                                   "dataProtectionSettings"))
                                 (:shape-name
                                  "GetDataProtectionSettingsResponse"))

(smithy/sdk/shapes:define-input get-identity-provider-request common-lisp:nil
                                ((identity-provider-arn :target-type
                                  subresource-arn :required common-lisp:t
                                  :member-name "identityProviderArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetIdentityProviderRequest"))

(smithy/sdk/shapes:define-output get-identity-provider-response common-lisp:nil
                                 ((identity-provider :target-type
                                   identity-provider :member-name
                                   "identityProvider"))
                                 (:shape-name "GetIdentityProviderResponse"))

(smithy/sdk/shapes:define-input get-ip-access-settings-request common-lisp:nil
                                ((ip-access-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "ipAccessSettingsArn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetIpAccessSettingsRequest"))

(smithy/sdk/shapes:define-output get-ip-access-settings-response
                                 common-lisp:nil
                                 ((ip-access-settings :target-type
                                   ip-access-settings :member-name
                                   "ipAccessSettings"))
                                 (:shape-name "GetIpAccessSettingsResponse"))

(smithy/sdk/shapes:define-input get-network-settings-request common-lisp:nil
                                ((network-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "networkSettingsArn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetNetworkSettingsRequest"))

(smithy/sdk/shapes:define-output get-network-settings-response common-lisp:nil
                                 ((network-settings :target-type
                                   network-settings :member-name
                                   "networkSettings"))
                                 (:shape-name "GetNetworkSettingsResponse"))

(smithy/sdk/shapes:define-input get-portal-request common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetPortalRequest"))

(smithy/sdk/shapes:define-output get-portal-response common-lisp:nil
                                 ((portal :target-type portal :member-name
                                   "portal"))
                                 (:shape-name "GetPortalResponse"))

(smithy/sdk/shapes:define-input get-portal-service-provider-metadata-request
                                common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetPortalServiceProviderMetadataRequest"))

(smithy/sdk/shapes:define-output get-portal-service-provider-metadata-response
                                 common-lisp:nil
                                 ((portal-arn :target-type arn :required
                                   common-lisp:t :member-name "portalArn")
                                  (service-provider-saml-metadata :target-type
                                   saml-metadata :member-name
                                   "serviceProviderSamlMetadata"))
                                 (:shape-name
                                  "GetPortalServiceProviderMetadataResponse"))

(smithy/sdk/shapes:define-input get-session-logger-request common-lisp:nil
                                ((session-logger-arn :target-type arn :required
                                  common-lisp:t :member-name "sessionLoggerArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSessionLoggerRequest"))

(smithy/sdk/shapes:define-output get-session-logger-response common-lisp:nil
                                 ((session-logger :target-type session-logger
                                   :member-name "sessionLogger"))
                                 (:shape-name "GetSessionLoggerResponse"))

(smithy/sdk/shapes:define-input get-session-request common-lisp:nil
                                ((portal-id :target-type portal-id :required
                                  common-lisp:t :member-name "portalId"
                                  :http-label common-lisp:t)
                                 (session-id :target-type session-id :required
                                  common-lisp:t :member-name "sessionId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSessionRequest"))

(smithy/sdk/shapes:define-output get-session-response common-lisp:nil
                                 ((session :target-type session :member-name
                                   "session"))
                                 (:shape-name "GetSessionResponse"))

(smithy/sdk/shapes:define-input get-trust-store-certificate-request
                                common-lisp:nil
                                ((trust-store-arn :target-type arn :required
                                  common-lisp:t :member-name "trustStoreArn"
                                  :http-label common-lisp:t)
                                 (thumbprint :target-type
                                  certificate-thumbprint :required
                                  common-lisp:t :member-name "thumbprint"
                                  :http-query "thumbprint"))
                                (:shape-name "GetTrustStoreCertificateRequest"))

(smithy/sdk/shapes:define-output get-trust-store-certificate-response
                                 common-lisp:nil
                                 ((trust-store-arn :target-type arn :required
                                   common-lisp:t :member-name "trustStoreArn")
                                  (certificate :target-type certificate
                                   :member-name "certificate"))
                                 (:shape-name
                                  "GetTrustStoreCertificateResponse"))

(smithy/sdk/shapes:define-input get-trust-store-request common-lisp:nil
                                ((trust-store-arn :target-type arn :required
                                  common-lisp:t :member-name "trustStoreArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetTrustStoreRequest"))

(smithy/sdk/shapes:define-output get-trust-store-response common-lisp:nil
                                 ((trust-store :target-type trust-store
                                   :member-name "trustStore"))
                                 (:shape-name "GetTrustStoreResponse"))

(smithy/sdk/shapes:define-input get-user-access-logging-settings-request
                                common-lisp:nil
                                ((user-access-logging-settings-arn :target-type
                                  arn :required common-lisp:t :member-name
                                  "userAccessLoggingSettingsArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetUserAccessLoggingSettingsRequest"))

(smithy/sdk/shapes:define-output get-user-access-logging-settings-response
                                 common-lisp:nil
                                 ((user-access-logging-settings :target-type
                                   user-access-logging-settings :member-name
                                   "userAccessLoggingSettings"))
                                 (:shape-name
                                  "GetUserAccessLoggingSettingsResponse"))

(smithy/sdk/shapes:define-input get-user-settings-request common-lisp:nil
                                ((user-settings-arn :target-type arn :required
                                  common-lisp:t :member-name "userSettingsArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetUserSettingsRequest"))

(smithy/sdk/shapes:define-output get-user-settings-response common-lisp:nil
                                 ((user-settings :target-type user-settings
                                   :member-name "userSettings"))
                                 (:shape-name "GetUserSettingsResponse"))

(smithy/sdk/shapes:define-list global-inline-redaction-urls :member
                               inline-redaction-url)

(smithy/sdk/shapes:define-list hidden-toolbar-item-list :member toolbar-item)

(smithy/sdk/shapes:define-structure identity-provider common-lisp:nil
                                    ((identity-provider-arn :target-type
                                      subresource-arn :required common-lisp:t
                                      :member-name "identityProviderArn")
                                     (identity-provider-name :target-type
                                      identity-provider-name :member-name
                                      "identityProviderName")
                                     (identity-provider-type :target-type
                                      identity-provider-type :member-name
                                      "identityProviderType")
                                     (identity-provider-details :target-type
                                      identity-provider-details :member-name
                                      "identityProviderDetails"))
                                    (:shape-name "IdentityProvider"))

(smithy/sdk/shapes:define-map identity-provider-details :key string-type :value
                              string-type)

(smithy/sdk/shapes:define-list identity-provider-list :member
                               identity-provider-summary)

(smithy/sdk/shapes:define-type identity-provider-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure identity-provider-summary common-lisp:nil
                                    ((identity-provider-arn :target-type
                                      subresource-arn :required common-lisp:t
                                      :member-name "identityProviderArn")
                                     (identity-provider-name :target-type
                                      identity-provider-name :member-name
                                      "identityProviderName")
                                     (identity-provider-type :target-type
                                      identity-provider-type :member-name
                                      "identityProviderType"))
                                    (:shape-name "IdentityProviderSummary"))

(smithy/sdk/shapes:define-type identity-provider-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type idle-disconnect-timeout-in-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure inline-redaction-configuration
                                    common-lisp:nil
                                    ((inline-redaction-patterns :target-type
                                      inline-redaction-patterns :required
                                      common-lisp:t :member-name
                                      "inlineRedactionPatterns")
                                     (global-enforced-urls :target-type
                                      global-inline-redaction-urls :member-name
                                      "globalEnforcedUrls")
                                     (global-exempt-urls :target-type
                                      global-inline-redaction-urls :member-name
                                      "globalExemptUrls")
                                     (global-confidence-level :target-type
                                      confidence-level :member-name
                                      "globalConfidenceLevel"))
                                    (:shape-name
                                     "InlineRedactionConfiguration"))

(smithy/sdk/shapes:define-structure inline-redaction-pattern common-lisp:nil
                                    ((built-in-pattern-id :target-type
                                      built-in-pattern-id :member-name
                                      "builtInPatternId")
                                     (custom-pattern :target-type
                                      custom-pattern :member-name
                                      "customPattern")
                                     (redaction-place-holder :target-type
                                      redaction-place-holder :required
                                      common-lisp:t :member-name
                                      "redactionPlaceHolder")
                                     (enforced-urls :target-type
                                      inline-redaction-urls :member-name
                                      "enforcedUrls")
                                     (exempt-urls :target-type
                                      inline-redaction-urls :member-name
                                      "exemptUrls")
                                     (confidence-level :target-type
                                      confidence-level :member-name
                                      "confidenceLevel"))
                                    (:shape-name "InlineRedactionPattern"))

(smithy/sdk/shapes:define-list inline-redaction-patterns :member
                               inline-redaction-pattern)

(smithy/sdk/shapes:define-type inline-redaction-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list inline-redaction-urls :member
                               inline-redaction-url)

(smithy/sdk/shapes:define-type instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure ip-access-settings common-lisp:nil
                                    ((ip-access-settings-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "ipAccessSettingsArn")
                                     (associated-portal-arns :target-type
                                      arn-list :member-name
                                      "associatedPortalArns")
                                     (ip-rules :target-type ip-rule-list
                                      :member-name "ipRules")
                                     (display-name :target-type display-name
                                      :member-name "displayName")
                                     (description :target-type description
                                      :member-name "description")
                                     (creation-date :target-type timestamp
                                      :member-name "creationDate")
                                     (customer-managed-key :target-type key-arn
                                      :member-name "customerManagedKey")
                                     (additional-encryption-context
                                      :target-type encryption-context-map
                                      :member-name
                                      "additionalEncryptionContext"))
                                    (:shape-name "IpAccessSettings"))

(smithy/sdk/shapes:define-list ip-access-settings-list :member
                               ip-access-settings-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure ip-access-settings-summary common-lisp:nil
                                    ((ip-access-settings-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "ipAccessSettingsArn")
                                     (display-name :target-type display-name
                                      :member-name "displayName")
                                     (description :target-type description
                                      :member-name "description")
                                     (creation-date :target-type timestamp
                                      :member-name "creationDate"))
                                    (:shape-name "IpAccessSettingsSummary"))

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ip-address-list :member ip-address)

(smithy/sdk/shapes:define-type ip-range smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ip-rule common-lisp:nil
                                    ((ip-range :target-type ip-range :required
                                      common-lisp:t :member-name "ipRange")
                                     (description :target-type description
                                      :member-name "description"))
                                    (:shape-name "IpRule"))

(smithy/sdk/shapes:define-list ip-rule-list :member ip-rule)

(smithy/sdk/shapes:define-type kinesis-stream-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-browser-settings-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListBrowserSettingsRequest"))

(smithy/sdk/shapes:define-output list-browser-settings-response common-lisp:nil
                                 ((browser-settings :target-type
                                   browser-settings-list :member-name
                                   "browserSettings")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBrowserSettingsResponse"))

(smithy/sdk/shapes:define-input list-data-protection-settings-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListDataProtectionSettingsRequest"))

(smithy/sdk/shapes:define-output list-data-protection-settings-response
                                 common-lisp:nil
                                 ((data-protection-settings :target-type
                                   data-protection-settings-list :member-name
                                   "dataProtectionSettings")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListDataProtectionSettingsResponse"))

(smithy/sdk/shapes:define-input list-identity-providers-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListIdentityProvidersRequest"))

(smithy/sdk/shapes:define-output list-identity-providers-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (identity-providers :target-type
                                   identity-provider-list :member-name
                                   "identityProviders"))
                                 (:shape-name "ListIdentityProvidersResponse"))

(smithy/sdk/shapes:define-input list-ip-access-settings-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListIpAccessSettingsRequest"))

(smithy/sdk/shapes:define-output list-ip-access-settings-response
                                 common-lisp:nil
                                 ((ip-access-settings :target-type
                                   ip-access-settings-list :member-name
                                   "ipAccessSettings")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListIpAccessSettingsResponse"))

(smithy/sdk/shapes:define-input list-network-settings-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListNetworkSettingsRequest"))

(smithy/sdk/shapes:define-output list-network-settings-response common-lisp:nil
                                 ((network-settings :target-type
                                   network-settings-list :member-name
                                   "networkSettings")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListNetworkSettingsResponse"))

(smithy/sdk/shapes:define-input list-portals-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListPortalsRequest"))

(smithy/sdk/shapes:define-output list-portals-response common-lisp:nil
                                 ((portals :target-type portal-list
                                   :member-name "portals")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPortalsResponse"))

(smithy/sdk/shapes:define-input list-session-loggers-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListSessionLoggersRequest"))

(smithy/sdk/shapes:define-output list-session-loggers-response common-lisp:nil
                                 ((session-loggers :target-type
                                   session-logger-list :member-name
                                   "sessionLoggers")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSessionLoggersResponse"))

(smithy/sdk/shapes:define-input list-sessions-request common-lisp:nil
                                ((portal-id :target-type portal-id :required
                                  common-lisp:t :member-name "portalId"
                                  :http-label common-lisp:t)
                                 (username :target-type username :member-name
                                  "username" :http-query "username")
                                 (session-id :target-type session-id
                                  :member-name "sessionId" :http-query
                                  "sessionId")
                                 (sort-by :target-type session-sort-by
                                  :member-name "sortBy" :http-query "sortBy")
                                 (status :target-type session-status
                                  :member-name "status" :http-query "status")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListSessionsRequest"))

(smithy/sdk/shapes:define-output list-sessions-response common-lisp:nil
                                 ((sessions :target-type session-summary-list
                                   :required common-lisp:t :member-name
                                   "sessions")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSessionsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-trust-store-certificates-request
                                common-lisp:nil
                                ((trust-store-arn :target-type arn :required
                                  common-lisp:t :member-name "trustStoreArn"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListTrustStoreCertificatesRequest"))

(smithy/sdk/shapes:define-output list-trust-store-certificates-response
                                 common-lisp:nil
                                 ((certificate-list :target-type
                                   certificate-summary-list :member-name
                                   "certificateList")
                                  (trust-store-arn :target-type arn :required
                                   common-lisp:t :member-name "trustStoreArn")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListTrustStoreCertificatesResponse"))

(smithy/sdk/shapes:define-input list-trust-stores-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListTrustStoresRequest"))

(smithy/sdk/shapes:define-output list-trust-stores-response common-lisp:nil
                                 ((trust-stores :target-type
                                   trust-store-summary-list :member-name
                                   "trustStores")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTrustStoresResponse"))

(smithy/sdk/shapes:define-input list-user-access-logging-settings-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListUserAccessLoggingSettingsRequest"))

(smithy/sdk/shapes:define-output list-user-access-logging-settings-response
                                 common-lisp:nil
                                 ((user-access-logging-settings :target-type
                                   user-access-logging-settings-list
                                   :member-name "userAccessLoggingSettings")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListUserAccessLoggingSettingsResponse"))

(smithy/sdk/shapes:define-input list-user-settings-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListUserSettingsRequest"))

(smithy/sdk/shapes:define-output list-user-settings-response common-lisp:nil
                                 ((user-settings :target-type
                                   user-settings-list :member-name
                                   "userSettings")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListUserSettingsResponse"))

(smithy/sdk/shapes:define-structure log-configuration common-lisp:nil
                                    ((s3 :target-type s3log-configuration
                                      :member-name "s3"))
                                    (:shape-name "LogConfiguration"))

(smithy/sdk/shapes:define-enum log-file-format
    common-lisp:nil
  (:json-lines "JSONLines")
  (:json "Json"))

(smithy/sdk/shapes:define-type max-concurrent-sessions
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-display-resolution
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure network-settings common-lisp:nil
                                    ((network-settings-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "networkSettingsArn")
                                     (associated-portal-arns :target-type
                                      arn-list :member-name
                                      "associatedPortalArns")
                                     (vpc-id :target-type vpc-id :member-name
                                      "vpcId")
                                     (subnet-ids :target-type subnet-id-list
                                      :member-name "subnetIds")
                                     (security-group-ids :target-type
                                      security-group-id-list :member-name
                                      "securityGroupIds"))
                                    (:shape-name "NetworkSettings"))

(smithy/sdk/shapes:define-list network-settings-list :member
                               network-settings-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure network-settings-summary common-lisp:nil
                                    ((network-settings-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "networkSettingsArn")
                                     (vpc-id :target-type vpc-id :member-name
                                      "vpcId"))
                                    (:shape-name "NetworkSettingsSummary"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pattern-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure portal common-lisp:nil
                                    ((portal-arn :target-type arn :required
                                      common-lisp:t :member-name "portalArn")
                                     (renderer-type :target-type renderer-type
                                      :member-name "rendererType")
                                     (browser-type :target-type browser-type
                                      :member-name "browserType")
                                     (portal-status :target-type portal-status
                                      :member-name "portalStatus")
                                     (portal-endpoint :target-type
                                      portal-endpoint :member-name
                                      "portalEndpoint")
                                     (display-name :target-type display-name
                                      :member-name "displayName")
                                     (creation-date :target-type timestamp
                                      :member-name "creationDate")
                                     (browser-settings-arn :target-type arn
                                      :member-name "browserSettingsArn")
                                     (data-protection-settings-arn :target-type
                                      arn :member-name
                                      "dataProtectionSettingsArn")
                                     (user-settings-arn :target-type arn
                                      :member-name "userSettingsArn")
                                     (network-settings-arn :target-type arn
                                      :member-name "networkSettingsArn")
                                     (session-logger-arn :target-type arn
                                      :member-name "sessionLoggerArn")
                                     (trust-store-arn :target-type arn
                                      :member-name "trustStoreArn")
                                     (status-reason :target-type status-reason
                                      :member-name "statusReason")
                                     (user-access-logging-settings-arn
                                      :target-type arn :member-name
                                      "userAccessLoggingSettingsArn")
                                     (authentication-type :target-type
                                      authentication-type :member-name
                                      "authenticationType")
                                     (ip-access-settings-arn :target-type arn
                                      :member-name "ipAccessSettingsArn")
                                     (customer-managed-key :target-type key-arn
                                      :member-name "customerManagedKey")
                                     (additional-encryption-context
                                      :target-type encryption-context-map
                                      :member-name
                                      "additionalEncryptionContext")
                                     (instance-type :target-type instance-type
                                      :member-name "instanceType")
                                     (max-concurrent-sessions :target-type
                                      max-concurrent-sessions :member-name
                                      "maxConcurrentSessions"))
                                    (:shape-name "Portal"))

(smithy/sdk/shapes:define-type portal-endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type portal-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list portal-list :member portal-summary)

common-lisp:nil

(smithy/sdk/shapes:define-type portal-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure portal-summary common-lisp:nil
                                    ((portal-arn :target-type arn :required
                                      common-lisp:t :member-name "portalArn")
                                     (renderer-type :target-type renderer-type
                                      :member-name "rendererType")
                                     (browser-type :target-type browser-type
                                      :member-name "browserType")
                                     (portal-status :target-type portal-status
                                      :member-name "portalStatus")
                                     (portal-endpoint :target-type
                                      portal-endpoint :member-name
                                      "portalEndpoint")
                                     (display-name :target-type display-name
                                      :member-name "displayName")
                                     (creation-date :target-type timestamp
                                      :member-name "creationDate")
                                     (browser-settings-arn :target-type arn
                                      :member-name "browserSettingsArn")
                                     (data-protection-settings-arn :target-type
                                      arn :member-name
                                      "dataProtectionSettingsArn")
                                     (user-settings-arn :target-type arn
                                      :member-name "userSettingsArn")
                                     (network-settings-arn :target-type arn
                                      :member-name "networkSettingsArn")
                                     (session-logger-arn :target-type arn
                                      :member-name "sessionLoggerArn")
                                     (trust-store-arn :target-type arn
                                      :member-name "trustStoreArn")
                                     (user-access-logging-settings-arn
                                      :target-type arn :member-name
                                      "userAccessLoggingSettingsArn")
                                     (authentication-type :target-type
                                      authentication-type :member-name
                                      "authenticationType")
                                     (ip-access-settings-arn :target-type arn
                                      :member-name "ipAccessSettingsArn")
                                     (instance-type :target-type instance-type
                                      :member-name "instanceType")
                                     (max-concurrent-sessions :target-type
                                      max-concurrent-sessions :member-name
                                      "maxConcurrentSessions"))
                                    (:shape-name "PortalSummary"))

(smithy/sdk/shapes:define-type quota-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure redaction-place-holder common-lisp:nil
                                    ((redaction-place-holder-type :target-type
                                      redaction-place-holder-type :required
                                      common-lisp:t :member-name
                                      "redactionPlaceHolderType")
                                     (redaction-place-holder-text :target-type
                                      redaction-place-holder-text :member-name
                                      "redactionPlaceHolderText"))
                                    (:shape-name "RedactionPlaceHolder"))

(smithy/sdk/shapes:define-type redaction-place-holder-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type redaction-place-holder-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type regex smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type renderer-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3log-configuration common-lisp:nil
                                    ((bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "bucket")
                                     (key-prefix :target-type s3key-prefix
                                      :member-name "keyPrefix")
                                     (bucket-owner :target-type s3bucket-owner
                                      :member-name "bucketOwner")
                                     (log-file-format :target-type
                                      log-file-format :required common-lisp:t
                                      :member-name "logFileFormat")
                                     (folder-structure :target-type
                                      folder-structure :required common-lisp:t
                                      :member-name "folderStructure"))
                                    (:shape-name "S3LogConfiguration"))

(smithy/sdk/shapes:define-type saml-metadata smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-id-list :member security-group-id)

(smithy/sdk/shapes:define-type service-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType")
                                 (service-code :target-type service-code
                                  :member-name "serviceCode")
                                 (quota-code :target-type quota-code
                                  :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure session common-lisp:nil
                                    ((portal-arn :target-type arn :member-name
                                      "portalArn")
                                     (session-id :target-type string-type
                                      :member-name "sessionId")
                                     (username :target-type username
                                      :member-name "username")
                                     (client-ip-addresses :target-type
                                      ip-address-list :member-name
                                      "clientIpAddresses")
                                     (status :target-type session-status
                                      :member-name "status")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime"))
                                    (:shape-name "Session"))

(smithy/sdk/shapes:define-type session-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure session-logger common-lisp:nil
                                    ((session-logger-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "sessionLoggerArn")
                                     (event-filter :target-type event-filter
                                      :member-name "eventFilter")
                                     (log-configuration :target-type
                                      log-configuration :member-name
                                      "logConfiguration")
                                     (customer-managed-key :target-type key-arn
                                      :member-name "customerManagedKey")
                                     (additional-encryption-context
                                      :target-type encryption-context-map
                                      :member-name
                                      "additionalEncryptionContext")
                                     (associated-portal-arns :target-type
                                      arn-list :member-name
                                      "associatedPortalArns")
                                     (display-name :target-type
                                      display-name-safe :member-name
                                      "displayName")
                                     (creation-date :target-type timestamp
                                      :member-name "creationDate"))
                                    (:shape-name "SessionLogger"))

(smithy/sdk/shapes:define-list session-logger-list :member
                               session-logger-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure session-logger-summary common-lisp:nil
                                    ((session-logger-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "sessionLoggerArn")
                                     (log-configuration :target-type
                                      log-configuration :member-name
                                      "logConfiguration")
                                     (display-name :target-type
                                      display-name-safe :member-name
                                      "displayName")
                                     (creation-date :target-type timestamp
                                      :member-name "creationDate"))
                                    (:shape-name "SessionLoggerSummary"))

(smithy/sdk/shapes:define-enum session-sort-by
    common-lisp:nil
  (:start-time-ascending "StartTimeAscending")
  (:start-time-descending "StartTimeDescending"))

(smithy/sdk/shapes:define-enum session-status
    common-lisp:nil
  (:active "Active")
  (:terminated "Terminated"))

(smithy/sdk/shapes:define-structure session-summary common-lisp:nil
                                    ((portal-arn :target-type arn :member-name
                                      "portalArn")
                                     (session-id :target-type string-type
                                      :member-name "sessionId")
                                     (username :target-type username
                                      :member-name "username")
                                     (status :target-type session-status
                                      :member-name "status")
                                     (start-time :target-type timestamp
                                      :member-name "startTime")
                                     (end-time :target-type timestamp
                                      :member-name "endTime"))
                                    (:shape-name "SessionSummary"))

(smithy/sdk/shapes:define-list session-summary-list :member session-summary)

(smithy/sdk/shapes:define-type status-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-id-list :member subnet-id)

(smithy/sdk/shapes:define-type subresource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-exception-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (service-code :target-type service-code
                                  :member-name "serviceCode")
                                 (quota-code :target-type quota-code
                                  :member-name "quotaCode")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type tag-exception-message
                                  :member-name "message")
                                 (resource-name :target-type arn :member-name
                                  "resourceName"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure toolbar-configuration common-lisp:nil
                                    ((toolbar-type :target-type toolbar-type
                                      :member-name "toolbarType")
                                     (visual-mode :target-type visual-mode
                                      :member-name "visualMode")
                                     (hidden-toolbar-items :target-type
                                      hidden-toolbar-item-list :member-name
                                      "hiddenToolbarItems")
                                     (max-display-resolution :target-type
                                      max-display-resolution :member-name
                                      "maxDisplayResolution"))
                                    (:shape-name "ToolbarConfiguration"))

(smithy/sdk/shapes:define-type toolbar-item smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type toolbar-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure trust-store common-lisp:nil
                                    ((associated-portal-arns :target-type
                                      arn-list :member-name
                                      "associatedPortalArns")
                                     (trust-store-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "trustStoreArn"))
                                    (:shape-name "TrustStore"))

common-lisp:nil

(smithy/sdk/shapes:define-structure trust-store-summary common-lisp:nil
                                    ((trust-store-arn :target-type arn
                                      :member-name "trustStoreArn"))
                                    (:shape-name "TrustStoreSummary"))

(smithy/sdk/shapes:define-list trust-store-summary-list :member
                               trust-store-summary)

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

(smithy/sdk/shapes:define-input update-browser-settings-request common-lisp:nil
                                ((browser-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "browserSettingsArn" :http-label
                                  common-lisp:t)
                                 (browser-policy :target-type browser-policy
                                  :member-name "browserPolicy")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateBrowserSettingsRequest"))

(smithy/sdk/shapes:define-output update-browser-settings-response
                                 common-lisp:nil
                                 ((browser-settings :target-type
                                   browser-settings :required common-lisp:t
                                   :member-name "browserSettings"))
                                 (:shape-name "UpdateBrowserSettingsResponse"))

(smithy/sdk/shapes:define-input update-data-protection-settings-request
                                common-lisp:nil
                                ((data-protection-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "dataProtectionSettingsArn" :http-label
                                  common-lisp:t)
                                 (inline-redaction-configuration :target-type
                                  inline-redaction-configuration :member-name
                                  "inlineRedactionConfiguration")
                                 (display-name :target-type display-name-safe
                                  :member-name "displayName")
                                 (description :target-type description-safe
                                  :member-name "description")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "UpdateDataProtectionSettingsRequest"))

(smithy/sdk/shapes:define-output update-data-protection-settings-response
                                 common-lisp:nil
                                 ((data-protection-settings :target-type
                                   data-protection-settings :required
                                   common-lisp:t :member-name
                                   "dataProtectionSettings"))
                                 (:shape-name
                                  "UpdateDataProtectionSettingsResponse"))

(smithy/sdk/shapes:define-input update-identity-provider-request
                                common-lisp:nil
                                ((identity-provider-arn :target-type
                                  subresource-arn :required common-lisp:t
                                  :member-name "identityProviderArn"
                                  :http-label common-lisp:t)
                                 (identity-provider-name :target-type
                                  identity-provider-name :member-name
                                  "identityProviderName")
                                 (identity-provider-type :target-type
                                  identity-provider-type :member-name
                                  "identityProviderType")
                                 (identity-provider-details :target-type
                                  identity-provider-details :member-name
                                  "identityProviderDetails")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateIdentityProviderRequest"))

(smithy/sdk/shapes:define-output update-identity-provider-response
                                 common-lisp:nil
                                 ((identity-provider :target-type
                                   identity-provider :required common-lisp:t
                                   :member-name "identityProvider"))
                                 (:shape-name "UpdateIdentityProviderResponse"))

(smithy/sdk/shapes:define-input update-ip-access-settings-request
                                common-lisp:nil
                                ((ip-access-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "ipAccessSettingsArn" :http-label
                                  common-lisp:t)
                                 (display-name :target-type display-name
                                  :member-name "displayName")
                                 (description :target-type description
                                  :member-name "description")
                                 (ip-rules :target-type ip-rule-list
                                  :member-name "ipRules")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateIpAccessSettingsRequest"))

(smithy/sdk/shapes:define-output update-ip-access-settings-response
                                 common-lisp:nil
                                 ((ip-access-settings :target-type
                                   ip-access-settings :required common-lisp:t
                                   :member-name "ipAccessSettings"))
                                 (:shape-name "UpdateIpAccessSettingsResponse"))

(smithy/sdk/shapes:define-input update-network-settings-request common-lisp:nil
                                ((network-settings-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "networkSettingsArn" :http-label
                                  common-lisp:t)
                                 (vpc-id :target-type vpc-id :member-name
                                  "vpcId")
                                 (subnet-ids :target-type subnet-id-list
                                  :member-name "subnetIds")
                                 (security-group-ids :target-type
                                  security-group-id-list :member-name
                                  "securityGroupIds")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateNetworkSettingsRequest"))

(smithy/sdk/shapes:define-output update-network-settings-response
                                 common-lisp:nil
                                 ((network-settings :target-type
                                   network-settings :required common-lisp:t
                                   :member-name "networkSettings"))
                                 (:shape-name "UpdateNetworkSettingsResponse"))

(smithy/sdk/shapes:define-input update-portal-request common-lisp:nil
                                ((portal-arn :target-type arn :required
                                  common-lisp:t :member-name "portalArn"
                                  :http-label common-lisp:t)
                                 (display-name :target-type display-name
                                  :member-name "displayName")
                                 (authentication-type :target-type
                                  authentication-type :member-name
                                  "authenticationType")
                                 (instance-type :target-type instance-type
                                  :member-name "instanceType")
                                 (max-concurrent-sessions :target-type
                                  max-concurrent-sessions :member-name
                                  "maxConcurrentSessions"))
                                (:shape-name "UpdatePortalRequest"))

(smithy/sdk/shapes:define-output update-portal-response common-lisp:nil
                                 ((portal :target-type portal :member-name
                                   "portal"))
                                 (:shape-name "UpdatePortalResponse"))

(smithy/sdk/shapes:define-input update-session-logger-request common-lisp:nil
                                ((session-logger-arn :target-type arn :required
                                  common-lisp:t :member-name "sessionLoggerArn"
                                  :http-label common-lisp:t)
                                 (event-filter :target-type event-filter
                                  :member-name "eventFilter")
                                 (log-configuration :target-type
                                  log-configuration :member-name
                                  "logConfiguration")
                                 (display-name :target-type display-name-safe
                                  :member-name "displayName"))
                                (:shape-name "UpdateSessionLoggerRequest"))

(smithy/sdk/shapes:define-output update-session-logger-response common-lisp:nil
                                 ((session-logger :target-type session-logger
                                   :required common-lisp:t :member-name
                                   "sessionLogger"))
                                 (:shape-name "UpdateSessionLoggerResponse"))

(smithy/sdk/shapes:define-input update-trust-store-request common-lisp:nil
                                ((trust-store-arn :target-type arn :required
                                  common-lisp:t :member-name "trustStoreArn"
                                  :http-label common-lisp:t)
                                 (certificates-to-add :target-type
                                  certificate-list :member-name
                                  "certificatesToAdd")
                                 (certificates-to-delete :target-type
                                  certificate-thumbprint-list :member-name
                                  "certificatesToDelete")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateTrustStoreRequest"))

(smithy/sdk/shapes:define-output update-trust-store-response common-lisp:nil
                                 ((trust-store-arn :target-type arn :required
                                   common-lisp:t :member-name "trustStoreArn"))
                                 (:shape-name "UpdateTrustStoreResponse"))

(smithy/sdk/shapes:define-input update-user-access-logging-settings-request
                                common-lisp:nil
                                ((user-access-logging-settings-arn :target-type
                                  arn :required common-lisp:t :member-name
                                  "userAccessLoggingSettingsArn" :http-label
                                  common-lisp:t)
                                 (kinesis-stream-arn :target-type
                                  kinesis-stream-arn :member-name
                                  "kinesisStreamArn")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "UpdateUserAccessLoggingSettingsRequest"))

(smithy/sdk/shapes:define-output update-user-access-logging-settings-response
                                 common-lisp:nil
                                 ((user-access-logging-settings :target-type
                                   user-access-logging-settings :required
                                   common-lisp:t :member-name
                                   "userAccessLoggingSettings"))
                                 (:shape-name
                                  "UpdateUserAccessLoggingSettingsResponse"))

(smithy/sdk/shapes:define-input update-user-settings-request common-lisp:nil
                                ((user-settings-arn :target-type arn :required
                                  common-lisp:t :member-name "userSettingsArn"
                                  :http-label common-lisp:t)
                                 (copy-allowed :target-type enabled-type
                                  :member-name "copyAllowed")
                                 (paste-allowed :target-type enabled-type
                                  :member-name "pasteAllowed")
                                 (download-allowed :target-type enabled-type
                                  :member-name "downloadAllowed")
                                 (upload-allowed :target-type enabled-type
                                  :member-name "uploadAllowed")
                                 (print-allowed :target-type enabled-type
                                  :member-name "printAllowed")
                                 (disconnect-timeout-in-minutes :target-type
                                  disconnect-timeout-in-minutes :member-name
                                  "disconnectTimeoutInMinutes")
                                 (idle-disconnect-timeout-in-minutes
                                  :target-type
                                  idle-disconnect-timeout-in-minutes
                                  :member-name
                                  "idleDisconnectTimeoutInMinutes")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (cookie-synchronization-configuration
                                  :target-type
                                  cookie-synchronization-configuration
                                  :member-name
                                  "cookieSynchronizationConfiguration")
                                 (deep-link-allowed :target-type enabled-type
                                  :member-name "deepLinkAllowed")
                                 (toolbar-configuration :target-type
                                  toolbar-configuration :member-name
                                  "toolbarConfiguration"))
                                (:shape-name "UpdateUserSettingsRequest"))

(smithy/sdk/shapes:define-output update-user-settings-response common-lisp:nil
                                 ((user-settings :target-type user-settings
                                   :required common-lisp:t :member-name
                                   "userSettings"))
                                 (:shape-name "UpdateUserSettingsResponse"))

(smithy/sdk/shapes:define-structure user-access-logging-settings
                                    common-lisp:nil
                                    ((user-access-logging-settings-arn
                                      :target-type arn :required common-lisp:t
                                      :member-name
                                      "userAccessLoggingSettingsArn")
                                     (associated-portal-arns :target-type
                                      arn-list :member-name
                                      "associatedPortalArns")
                                     (kinesis-stream-arn :target-type
                                      kinesis-stream-arn :member-name
                                      "kinesisStreamArn"))
                                    (:shape-name "UserAccessLoggingSettings"))

(smithy/sdk/shapes:define-list user-access-logging-settings-list :member
                               user-access-logging-settings-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure user-access-logging-settings-summary
                                    common-lisp:nil
                                    ((user-access-logging-settings-arn
                                      :target-type arn :required common-lisp:t
                                      :member-name
                                      "userAccessLoggingSettingsArn")
                                     (kinesis-stream-arn :target-type
                                      kinesis-stream-arn :member-name
                                      "kinesisStreamArn"))
                                    (:shape-name
                                     "UserAccessLoggingSettingsSummary"))

(smithy/sdk/shapes:define-structure user-settings common-lisp:nil
                                    ((user-settings-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "userSettingsArn")
                                     (associated-portal-arns :target-type
                                      arn-list :member-name
                                      "associatedPortalArns")
                                     (copy-allowed :target-type enabled-type
                                      :member-name "copyAllowed")
                                     (paste-allowed :target-type enabled-type
                                      :member-name "pasteAllowed")
                                     (download-allowed :target-type
                                      enabled-type :member-name
                                      "downloadAllowed")
                                     (upload-allowed :target-type enabled-type
                                      :member-name "uploadAllowed")
                                     (print-allowed :target-type enabled-type
                                      :member-name "printAllowed")
                                     (disconnect-timeout-in-minutes
                                      :target-type
                                      disconnect-timeout-in-minutes
                                      :member-name
                                      "disconnectTimeoutInMinutes")
                                     (idle-disconnect-timeout-in-minutes
                                      :target-type
                                      idle-disconnect-timeout-in-minutes
                                      :member-name
                                      "idleDisconnectTimeoutInMinutes")
                                     (cookie-synchronization-configuration
                                      :target-type
                                      cookie-synchronization-configuration
                                      :member-name
                                      "cookieSynchronizationConfiguration")
                                     (customer-managed-key :target-type key-arn
                                      :member-name "customerManagedKey")
                                     (additional-encryption-context
                                      :target-type encryption-context-map
                                      :member-name
                                      "additionalEncryptionContext")
                                     (deep-link-allowed :target-type
                                      enabled-type :member-name
                                      "deepLinkAllowed")
                                     (toolbar-configuration :target-type
                                      toolbar-configuration :member-name
                                      "toolbarConfiguration"))
                                    (:shape-name "UserSettings"))

(smithy/sdk/shapes:define-list user-settings-list :member user-settings-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure user-settings-summary common-lisp:nil
                                    ((user-settings-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "userSettingsArn")
                                     (copy-allowed :target-type enabled-type
                                      :member-name "copyAllowed")
                                     (paste-allowed :target-type enabled-type
                                      :member-name "pasteAllowed")
                                     (download-allowed :target-type
                                      enabled-type :member-name
                                      "downloadAllowed")
                                     (upload-allowed :target-type enabled-type
                                      :member-name "uploadAllowed")
                                     (print-allowed :target-type enabled-type
                                      :member-name "printAllowed")
                                     (disconnect-timeout-in-minutes
                                      :target-type
                                      disconnect-timeout-in-minutes
                                      :member-name
                                      "disconnectTimeoutInMinutes")
                                     (idle-disconnect-timeout-in-minutes
                                      :target-type
                                      idle-disconnect-timeout-in-minutes
                                      :member-name
                                      "idleDisconnectTimeoutInMinutes")
                                     (cookie-synchronization-configuration
                                      :target-type
                                      cookie-synchronization-configuration
                                      :member-name
                                      "cookieSynchronizationConfiguration")
                                     (deep-link-allowed :target-type
                                      enabled-type :member-name
                                      "deepLinkAllowed")
                                     (toolbar-configuration :target-type
                                      toolbar-configuration :member-name
                                      "toolbarConfiguration"))
                                    (:shape-name "UserSettingsSummary"))

(smithy/sdk/shapes:define-type username smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type field-name :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type exception-message
                                      :required common-lisp:t :member-name
                                      "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type visual-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-browser-settings :shape-name
                                       "AssociateBrowserSettings" :input
                                       associate-browser-settings-request
                                       :output
                                       associate-browser-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/portals/{portalArn+}/browserSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-data-protection-settings
                                       :shape-name
                                       "AssociateDataProtectionSettings" :input
                                       associate-data-protection-settings-request
                                       :output
                                       associate-data-protection-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/portals/{portalArn+}/dataProtectionSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-ip-access-settings :shape-name
                                       "AssociateIpAccessSettings" :input
                                       associate-ip-access-settings-request
                                       :output
                                       associate-ip-access-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/portals/{portalArn+}/ipAccessSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-network-settings :shape-name
                                       "AssociateNetworkSettings" :input
                                       associate-network-settings-request
                                       :output
                                       associate-network-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/portals/{portalArn+}/networkSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-session-logger :shape-name
                                       "AssociateSessionLogger" :input
                                       associate-session-logger-request :output
                                       associate-session-logger-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/portals/{portalArn+}/sessionLogger"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-trust-store :shape-name
                                       "AssociateTrustStore" :input
                                       associate-trust-store-request :output
                                       associate-trust-store-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/portals/{portalArn+}/trustStores"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-user-access-logging-settings
                                       :shape-name
                                       "AssociateUserAccessLoggingSettings"
                                       :input
                                       associate-user-access-logging-settings-request
                                       :output
                                       associate-user-access-logging-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/portals/{portalArn+}/userAccessLoggingSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-user-settings :shape-name
                                       "AssociateUserSettings" :input
                                       associate-user-settings-request :output
                                       associate-user-settings-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/portals/{portalArn+}/userSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation create-browser-settings :shape-name
                                       "CreateBrowserSettings" :input
                                       create-browser-settings-request :output
                                       create-browser-settings-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/browserSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation create-data-protection-settings
                                       :shape-name
                                       "CreateDataProtectionSettings" :input
                                       create-data-protection-settings-request
                                       :output
                                       create-data-protection-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/dataProtectionSettings" :code 200)

(smithy/sdk/operation:define-operation create-identity-provider :shape-name
                                       "CreateIdentityProvider" :input
                                       create-identity-provider-request :output
                                       create-identity-provider-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/identityProviders"
                                       :code 200)

(smithy/sdk/operation:define-operation create-ip-access-settings :shape-name
                                       "CreateIpAccessSettings" :input
                                       create-ip-access-settings-request
                                       :output
                                       create-ip-access-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/ipAccessSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation create-network-settings :shape-name
                                       "CreateNetworkSettings" :input
                                       create-network-settings-request :output
                                       create-network-settings-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/networkSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation create-portal :shape-name "CreatePortal"
                                       :input create-portal-request :output
                                       create-portal-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/portals" :code 200)

(smithy/sdk/operation:define-operation create-session-logger :shape-name
                                       "CreateSessionLogger" :input
                                       create-session-logger-request :output
                                       create-session-logger-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/sessionLoggers"
                                       :code 200)

(smithy/sdk/operation:define-operation create-trust-store :shape-name
                                       "CreateTrustStore" :input
                                       create-trust-store-request :output
                                       create-trust-store-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/trustStores" :code
                                       200)

(smithy/sdk/operation:define-operation create-user-access-logging-settings
                                       :shape-name
                                       "CreateUserAccessLoggingSettings" :input
                                       create-user-access-logging-settings-request
                                       :output
                                       create-user-access-logging-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/userAccessLoggingSettings" :code 200)

(smithy/sdk/operation:define-operation create-user-settings :shape-name
                                       "CreateUserSettings" :input
                                       create-user-settings-request :output
                                       create-user-settings-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/userSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-browser-settings :shape-name
                                       "DeleteBrowserSettings" :input
                                       delete-browser-settings-request :output
                                       delete-browser-settings-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/browserSettings/{browserSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-data-protection-settings
                                       :shape-name
                                       "DeleteDataProtectionSettings" :input
                                       delete-data-protection-settings-request
                                       :output
                                       delete-data-protection-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/dataProtectionSettings/{dataProtectionSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-identity-provider :shape-name
                                       "DeleteIdentityProvider" :input
                                       delete-identity-provider-request :output
                                       delete-identity-provider-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/identityProviders/{identityProviderArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-ip-access-settings :shape-name
                                       "DeleteIpAccessSettings" :input
                                       delete-ip-access-settings-request
                                       :output
                                       delete-ip-access-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/ipAccessSettings/{ipAccessSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-network-settings :shape-name
                                       "DeleteNetworkSettings" :input
                                       delete-network-settings-request :output
                                       delete-network-settings-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/networkSettings/{networkSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-portal :shape-name "DeletePortal"
                                       :input delete-portal-request :output
                                       delete-portal-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/portals/{portalArn+}" :code 200)

(smithy/sdk/operation:define-operation delete-session-logger :shape-name
                                       "DeleteSessionLogger" :input
                                       delete-session-logger-request :output
                                       delete-session-logger-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/sessionLoggers/{sessionLoggerArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-trust-store :shape-name
                                       "DeleteTrustStore" :input
                                       delete-trust-store-request :output
                                       delete-trust-store-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/trustStores/{trustStoreArn+}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-user-access-logging-settings
                                       :shape-name
                                       "DeleteUserAccessLoggingSettings" :input
                                       delete-user-access-logging-settings-request
                                       :output
                                       delete-user-access-logging-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-user-settings :shape-name
                                       "DeleteUserSettings" :input
                                       delete-user-settings-request :output
                                       delete-user-settings-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/userSettings/{userSettingsArn+}" :code
                                       200)

(smithy/sdk/operation:define-operation disassociate-browser-settings
                                       :shape-name
                                       "DisassociateBrowserSettings" :input
                                       disassociate-browser-settings-request
                                       :output
                                       disassociate-browser-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/portals/{portalArn+}/browserSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-data-protection-settings
                                       :shape-name
                                       "DisassociateDataProtectionSettings"
                                       :input
                                       disassociate-data-protection-settings-request
                                       :output
                                       disassociate-data-protection-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/portals/{portalArn+}/dataProtectionSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-ip-access-settings
                                       :shape-name
                                       "DisassociateIpAccessSettings" :input
                                       disassociate-ip-access-settings-request
                                       :output
                                       disassociate-ip-access-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/portals/{portalArn+}/ipAccessSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-network-settings
                                       :shape-name
                                       "DisassociateNetworkSettings" :input
                                       disassociate-network-settings-request
                                       :output
                                       disassociate-network-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/portals/{portalArn+}/networkSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-session-logger :shape-name
                                       "DisassociateSessionLogger" :input
                                       disassociate-session-logger-request
                                       :output
                                       disassociate-session-logger-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/portals/{portalArn+}/sessionLogger"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-trust-store :shape-name
                                       "DisassociateTrustStore" :input
                                       disassociate-trust-store-request :output
                                       disassociate-trust-store-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/portals/{portalArn+}/trustStores"
                                       :code 200)

(smithy/sdk/operation:define-operation
 disassociate-user-access-logging-settings :shape-name
 "DisassociateUserAccessLoggingSettings" :input
 disassociate-user-access-logging-settings-request :output
 disassociate-user-access-logging-settings-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "DELETE" :uri "/portals/{portalArn+}/userAccessLoggingSettings" :code
 200)

(smithy/sdk/operation:define-operation disassociate-user-settings :shape-name
                                       "DisassociateUserSettings" :input
                                       disassociate-user-settings-request
                                       :output
                                       disassociate-user-settings-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/portals/{portalArn+}/userSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation expire-session :shape-name
                                       "ExpireSession" :input
                                       expire-session-request :output
                                       expire-session-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/portals/{portalId}/sessions/{sessionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-browser-settings :shape-name
                                       "GetBrowserSettings" :input
                                       get-browser-settings-request :output
                                       get-browser-settings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/browserSettings/{browserSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-protection-settings :shape-name
                                       "GetDataProtectionSettings" :input
                                       get-data-protection-settings-request
                                       :output
                                       get-data-protection-settings-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/dataProtectionSettings/{dataProtectionSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-identity-provider :shape-name
                                       "GetIdentityProvider" :input
                                       get-identity-provider-request :output
                                       get-identity-provider-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/identityProviders/{identityProviderArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-ip-access-settings :shape-name
                                       "GetIpAccessSettings" :input
                                       get-ip-access-settings-request :output
                                       get-ip-access-settings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/ipAccessSettings/{ipAccessSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-network-settings :shape-name
                                       "GetNetworkSettings" :input
                                       get-network-settings-request :output
                                       get-network-settings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/networkSettings/{networkSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-portal :shape-name "GetPortal"
                                       :input get-portal-request :output
                                       get-portal-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/portals/{portalArn+}" :code 200)

(smithy/sdk/operation:define-operation get-portal-service-provider-metadata
                                       :shape-name
                                       "GetPortalServiceProviderMetadata"
                                       :input
                                       get-portal-service-provider-metadata-request
                                       :output
                                       get-portal-service-provider-metadata-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/portalIdp/{portalArn+}" :code 200)

(smithy/sdk/operation:define-operation get-session :shape-name "GetSession"
                                       :input get-session-request :output
                                       get-session-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/portals/{portalId}/sessions/{sessionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-session-logger :shape-name
                                       "GetSessionLogger" :input
                                       get-session-logger-request :output
                                       get-session-logger-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sessionLoggers/{sessionLoggerArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-trust-store :shape-name
                                       "GetTrustStore" :input
                                       get-trust-store-request :output
                                       get-trust-store-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/trustStores/{trustStoreArn+}" :code
                                       200)

(smithy/sdk/operation:define-operation get-trust-store-certificate :shape-name
                                       "GetTrustStoreCertificate" :input
                                       get-trust-store-certificate-request
                                       :output
                                       get-trust-store-certificate-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/trustStores/{trustStoreArn+}/certificate"
                                       :code 200)

(smithy/sdk/operation:define-operation get-user-access-logging-settings
                                       :shape-name
                                       "GetUserAccessLoggingSettings" :input
                                       get-user-access-logging-settings-request
                                       :output
                                       get-user-access-logging-settings-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-user-settings :shape-name
                                       "GetUserSettings" :input
                                       get-user-settings-request :output
                                       get-user-settings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/userSettings/{userSettingsArn+}" :code
                                       200)

(smithy/sdk/operation:define-operation list-browser-settings :shape-name
                                       "ListBrowserSettings" :input
                                       list-browser-settings-request :output
                                       list-browser-settings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/browserSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-protection-settings
                                       :shape-name "ListDataProtectionSettings"
                                       :input
                                       list-data-protection-settings-request
                                       :output
                                       list-data-protection-settings-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/dataProtectionSettings" :code 200)

(smithy/sdk/operation:define-operation list-identity-providers :shape-name
                                       "ListIdentityProviders" :input
                                       list-identity-providers-request :output
                                       list-identity-providers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/portals/{portalArn+}/identityProviders"
                                       :code 200)

(smithy/sdk/operation:define-operation list-ip-access-settings :shape-name
                                       "ListIpAccessSettings" :input
                                       list-ip-access-settings-request :output
                                       list-ip-access-settings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/ipAccessSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation list-network-settings :shape-name
                                       "ListNetworkSettings" :input
                                       list-network-settings-request :output
                                       list-network-settings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/networkSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation list-portals :shape-name "ListPortals"
                                       :input list-portals-request :output
                                       list-portals-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/portals" :code 200)

(smithy/sdk/operation:define-operation list-session-loggers :shape-name
                                       "ListSessionLoggers" :input
                                       list-session-loggers-request :output
                                       list-session-loggers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/sessionLoggers"
                                       :code 200)

(smithy/sdk/operation:define-operation list-sessions :shape-name "ListSessions"
                                       :input list-sessions-request :output
                                       list-sessions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/portals/{portalId}/sessions" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/tags/{resourceArn+}" :code 200)

(smithy/sdk/operation:define-operation list-trust-store-certificates
                                       :shape-name "ListTrustStoreCertificates"
                                       :input
                                       list-trust-store-certificates-request
                                       :output
                                       list-trust-store-certificates-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/trustStores/{trustStoreArn+}/certificates"
                                       :code 200)

(smithy/sdk/operation:define-operation list-trust-stores :shape-name
                                       "ListTrustStores" :input
                                       list-trust-stores-request :output
                                       list-trust-stores-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/trustStores" :code
                                       200)

(smithy/sdk/operation:define-operation list-user-access-logging-settings
                                       :shape-name
                                       "ListUserAccessLoggingSettings" :input
                                       list-user-access-logging-settings-request
                                       :output
                                       list-user-access-logging-settings-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/userAccessLoggingSettings" :code 200)

(smithy/sdk/operation:define-operation list-user-settings :shape-name
                                       "ListUserSettings" :input
                                       list-user-settings-request :output
                                       list-user-settings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/userSettings" :code
                                       200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        too-many-tags-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn+}" :code 200)

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
                                       "/tags/{resourceArn+}" :code 200)

(smithy/sdk/operation:define-operation update-browser-settings :shape-name
                                       "UpdateBrowserSettings" :input
                                       update-browser-settings-request :output
                                       update-browser-settings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/browserSettings/{browserSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-data-protection-settings
                                       :shape-name
                                       "UpdateDataProtectionSettings" :input
                                       update-data-protection-settings-request
                                       :output
                                       update-data-protection-settings-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/dataProtectionSettings/{dataProtectionSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-identity-provider :shape-name
                                       "UpdateIdentityProvider" :input
                                       update-identity-provider-request :output
                                       update-identity-provider-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/identityProviders/{identityProviderArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-ip-access-settings :shape-name
                                       "UpdateIpAccessSettings" :input
                                       update-ip-access-settings-request
                                       :output
                                       update-ip-access-settings-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/ipAccessSettings/{ipAccessSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-network-settings :shape-name
                                       "UpdateNetworkSettings" :input
                                       update-network-settings-request :output
                                       update-network-settings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/networkSettings/{networkSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-portal :shape-name "UpdatePortal"
                                       :input update-portal-request :output
                                       update-portal-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/portals/{portalArn+}" :code 200)

(smithy/sdk/operation:define-operation update-session-logger :shape-name
                                       "UpdateSessionLogger" :input
                                       update-session-logger-request :output
                                       update-session-logger-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/sessionLoggers/{sessionLoggerArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-trust-store :shape-name
                                       "UpdateTrustStore" :input
                                       update-trust-store-request :output
                                       update-trust-store-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/trustStores/{trustStoreArn+}" :code
                                       200)

(smithy/sdk/operation:define-operation update-user-access-logging-settings
                                       :shape-name
                                       "UpdateUserAccessLoggingSettings" :input
                                       update-user-access-logging-settings-request
                                       :output
                                       update-user-access-logging-settings-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-user-settings :shape-name
                                       "UpdateUserSettings" :input
                                       update-user-settings-request :output
                                       update-user-settings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/userSettings/{userSettingsArn+}" :code
                                       200)
