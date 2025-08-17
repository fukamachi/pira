(uiop/package:define-package #:pira/socialmessaging (:use)
                             (:export #:add-contact-number
                              #:add-learn-more-link
                              #:add-security-recommendation
                              #:add-track-package-link #:arn
                              #:associate-in-progress-token
                              #:associate-whats-app-business-account
                              #:button-type #:code-expiration-minutes
                              #:create-whats-app-message-template
                              #:create-whats-app-message-template-from-library
                              #:create-whats-app-message-template-media
                              #:delete-all-languages
                              #:delete-whats-app-message-media
                              #:delete-whats-app-message-template
                              #:disassociate-whats-app-business-account
                              #:error-message #:event-destination-arn #:filter
                              #:get-linked-whats-app-business-account
                              #:get-linked-whats-app-business-account-phone-number
                              #:get-whats-app-message-media
                              #:get-whats-app-message-template #:headers
                              #:iso-country-code #:library-template-body-inputs
                              #:library-template-button-input
                              #:library-template-button-list
                              #:linked-account-with-incomplete-setup
                              #:linked-whats-app-business-account
                              #:linked-whats-app-business-account-arn
                              #:linked-whats-app-business-account-id
                              #:linked-whats-app-business-account-id-meta-data
                              #:linked-whats-app-business-account-resource
                              #:linked-whats-app-business-account-summary
                              #:linked-whats-app-business-account-summary-list
                              #:linked-whats-app-phone-number-arn
                              #:linked-whats-app-phone-number-resource
                              #:list-linked-whats-app-business-accounts
                              #:list-tags-for-resource
                              #:list-whats-app-message-templates
                              #:list-whats-app-template-library #:max-results
                              #:meta-industries #:meta-industry
                              #:meta-library-template
                              #:meta-library-template-button-inputs
                              #:meta-library-template-button-list
                              #:meta-library-template-definition
                              #:meta-library-templates-list #:meta-template
                              #:meta-template-body #:meta-template-category
                              #:meta-template-components
                              #:meta-template-definition #:meta-template-header
                              #:meta-template-id #:meta-template-language
                              #:meta-template-name
                              #:meta-template-quality-score
                              #:meta-template-status #:meta-template-topic
                              #:meta-template-use-case #:meta-text #:meta-url
                              #:meta-url-with-suffix-example #:next-token
                              #:otp-type #:phone-number
                              #:post-whats-app-message-media
                              #:put-whats-app-business-account-event-destinations
                              #:registration-status #:role-arn #:s3file
                              #:s3presigned-url #:send-whats-app-message
                              #:social-messaging #:string-list #:supported-app
                              #:supported-apps #:tag #:tag-list #:tag-resource
                              #:template-summary #:template-summary-list
                              #:two-factor-pin #:untag-resource
                              #:update-whats-app-message-template
                              #:waba-phone-number-setup-finalization
                              #:waba-phone-number-setup-finalization-list
                              #:waba-setup-finalization
                              #:whats-app-business-account-event-destination
                              #:whats-app-business-account-event-destinations
                              #:whats-app-business-account-id
                              #:whats-app-business-account-link-date
                              #:whats-app-business-account-name
                              #:whats-app-display-phone-number
                              #:whats-app-media-id #:whats-app-message-blob
                              #:whats-app-phone-number
                              #:whats-app-phone-number-detail
                              #:whats-app-phone-number-detail-list
                              #:whats-app-phone-number-id
                              #:whats-app-phone-number-name
                              #:whats-app-phone-number-quality-rating
                              #:whats-app-phone-number-summary
                              #:whats-app-phone-number-summary-list
                              #:whats-app-setup-finalization
                              #:whats-app-signup-callback
                              #:whats-app-signup-callback-result
                              #:zero-tap-terms-accepted))
(common-lisp:in-package #:pira/socialmessaging)

(smithy/sdk/service:define-service social-messaging :shape-name
                                   "SocialMessaging" :version "2024-01-01"
                                   :title "AWS End User Messaging Social"
                                   :operations
                                   '(create-whats-app-message-template
                                     create-whats-app-message-template-from-library
                                     create-whats-app-message-template-media
                                     delete-whats-app-message-template
                                     get-whats-app-message-template
                                     list-tags-for-resource
                                     list-whats-app-message-templates
                                     list-whats-app-template-library
                                     tag-resource untag-resource
                                     update-whats-app-message-template)
                                   :errors
                                   '(access-denied-exception
                                     validation-exception)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "SocialMessaging")
                                      ("arnNamespace" . "social-messaging")
                                      ("cloudTrailEventSource"
                                       . "social-messaging.amazonaws.com")
                                      ("endpointPrefix" . "social-messaging"))
                                     ("aws.auth#sigv4"
                                      ("name" . "social-messaging"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tags that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tags associated with the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the tag keys that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#disableConditionKeyInference")
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-by-meta-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedByMetaException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type add-contact-number
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type add-learn-more-link
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type add-security-recommendation
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type add-track-package-link
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type associate-in-progress-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-whats-app-business-account-input
                                common-lisp:nil
                                ((signup-callback :target-type
                                  whats-app-signup-callback :member-name
                                  "signupCallback")
                                 (setup-finalization :target-type
                                  whats-app-setup-finalization :member-name
                                  "setupFinalization"))
                                (:shape-name
                                 "AssociateWhatsAppBusinessAccountInput"))

(smithy/sdk/shapes:define-output associate-whats-app-business-account-output
                                 common-lisp:nil
                                 ((signup-callback-result :target-type
                                   whats-app-signup-callback-result
                                   :member-name "signupCallbackResult")
                                  (status-code :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "statusCode"))
                                 (:shape-name
                                  "AssociateWhatsAppBusinessAccountOutput"))

(smithy/sdk/shapes:define-type button-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code-expiration-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input
 create-whats-app-message-template-from-library-input common-lisp:nil
 ((meta-library-template :target-type meta-library-template :required
   common-lisp:t :member-name "metaLibraryTemplate")
  (id :target-type linked-whats-app-business-account-id :required common-lisp:t
   :member-name "id"))
 (:shape-name "CreateWhatsAppMessageTemplateFromLibraryInput"))

(smithy/sdk/shapes:define-output
 create-whats-app-message-template-from-library-output common-lisp:nil
 ((meta-template-id :target-type meta-template-id :member-name
   "metaTemplateId")
  (template-status :target-type smithy/sdk/smithy-types:string :member-name
   "templateStatus")
  (category :target-type meta-template-category :member-name "category"))
 (:shape-name "CreateWhatsAppMessageTemplateFromLibraryOutput"))

(smithy/sdk/shapes:define-input create-whats-app-message-template-input
                                common-lisp:nil
                                ((template-definition :target-type
                                  meta-template-definition :required
                                  common-lisp:t :member-name
                                  "templateDefinition")
                                 (id :target-type
                                  linked-whats-app-business-account-id
                                  :required common-lisp:t :member-name "id"))
                                (:shape-name
                                 "CreateWhatsAppMessageTemplateInput"))

(smithy/sdk/shapes:define-input create-whats-app-message-template-media-input
                                common-lisp:nil
                                ((id :target-type
                                  linked-whats-app-business-account-id
                                  :required common-lisp:t :member-name "id")
                                 (source-s3file :target-type s3file
                                  :member-name "sourceS3File"))
                                (:shape-name
                                 "CreateWhatsAppMessageTemplateMediaInput"))

(smithy/sdk/shapes:define-output create-whats-app-message-template-media-output
                                 common-lisp:nil
                                 ((meta-header-handle :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "metaHeaderHandle"))
                                 (:shape-name
                                  "CreateWhatsAppMessageTemplateMediaOutput"))

(smithy/sdk/shapes:define-output create-whats-app-message-template-output
                                 common-lisp:nil
                                 ((meta-template-id :target-type
                                   meta-template-id :member-name
                                   "metaTemplateId")
                                  (template-status :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "templateStatus")
                                  (category :target-type meta-template-category
                                   :member-name "category"))
                                 (:shape-name
                                  "CreateWhatsAppMessageTemplateOutput"))

(smithy/sdk/shapes:define-type delete-all-languages
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input delete-whats-app-message-media-input
                                common-lisp:nil
                                ((media-id :target-type whats-app-media-id
                                  :required common-lisp:t :member-name
                                  "mediaId" :http-query "mediaId")
                                 (origination-phone-number-id :target-type
                                  whats-app-phone-number-id :required
                                  common-lisp:t :member-name
                                  "originationPhoneNumberId" :http-query
                                  "originationPhoneNumberId"))
                                (:shape-name "DeleteWhatsAppMessageMediaInput"))

(smithy/sdk/shapes:define-output delete-whats-app-message-media-output
                                 common-lisp:nil
                                 ((success :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "success"))
                                 (:shape-name
                                  "DeleteWhatsAppMessageMediaOutput"))

(smithy/sdk/shapes:define-input delete-whats-app-message-template-input
                                common-lisp:nil
                                ((meta-template-id :target-type
                                  meta-template-id :member-name
                                  "metaTemplateId" :http-query
                                  "metaTemplateId")
                                 (delete-all-languages :target-type
                                  delete-all-languages :member-name
                                  "deleteAllLanguages" :http-query
                                  "deleteAllTemplates")
                                 (id :target-type
                                  linked-whats-app-business-account-id
                                  :required common-lisp:t :member-name "id"
                                  :http-query "id")
                                 (template-name :target-type meta-template-name
                                  :required common-lisp:t :member-name
                                  "templateName" :http-query "templateName"))
                                (:shape-name
                                 "DeleteWhatsAppMessageTemplateInput"))

(smithy/sdk/shapes:define-output delete-whats-app-message-template-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteWhatsAppMessageTemplateOutput"))

(smithy/sdk/shapes:define-error dependency-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DependencyException")
                                (:error-code 502))

(smithy/sdk/shapes:define-input disassociate-whats-app-business-account-input
                                common-lisp:nil
                                ((id :target-type
                                  linked-whats-app-business-account-id
                                  :required common-lisp:t :member-name "id"
                                  :http-query "id"))
                                (:shape-name
                                 "DisassociateWhatsAppBusinessAccountInput"))

(smithy/sdk/shapes:define-output disassociate-whats-app-business-account-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateWhatsAppBusinessAccountOutput"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type event-destination-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map filter :key smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-linked-whats-app-business-account-input
                                common-lisp:nil
                                ((id :target-type
                                  linked-whats-app-business-account-id
                                  :required common-lisp:t :member-name "id"
                                  :http-query "id"))
                                (:shape-name
                                 "GetLinkedWhatsAppBusinessAccountInput"))

(smithy/sdk/shapes:define-output get-linked-whats-app-business-account-output
                                 common-lisp:nil
                                 ((account :target-type
                                   linked-whats-app-business-account
                                   :member-name "account"))
                                 (:shape-name
                                  "GetLinkedWhatsAppBusinessAccountOutput"))

(smithy/sdk/shapes:define-input
 get-linked-whats-app-business-account-phone-number-input common-lisp:nil
 ((id :target-type whats-app-phone-number-id :required common-lisp:t
   :member-name "id" :http-query "id"))
 (:shape-name "GetLinkedWhatsAppBusinessAccountPhoneNumberInput"))

(smithy/sdk/shapes:define-output
 get-linked-whats-app-business-account-phone-number-output common-lisp:nil
 ((phone-number :target-type whats-app-phone-number-detail :member-name
   "phoneNumber")
  (linked-whats-app-business-account-id :target-type
   linked-whats-app-business-account-id :member-name
   "linkedWhatsAppBusinessAccountId"))
 (:shape-name "GetLinkedWhatsAppBusinessAccountPhoneNumberOutput"))

(smithy/sdk/shapes:define-input get-whats-app-message-media-input
                                common-lisp:nil
                                ((media-id :target-type whats-app-media-id
                                  :required common-lisp:t :member-name
                                  "mediaId")
                                 (origination-phone-number-id :target-type
                                  whats-app-phone-number-id :required
                                  common-lisp:t :member-name
                                  "originationPhoneNumberId")
                                 (metadata-only :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "metadataOnly")
                                 (destination-s3presigned-url :target-type
                                  s3presigned-url :member-name
                                  "destinationS3PresignedUrl")
                                 (destination-s3file :target-type s3file
                                  :member-name "destinationS3File"))
                                (:shape-name "GetWhatsAppMessageMediaInput"))

(smithy/sdk/shapes:define-output get-whats-app-message-media-output
                                 common-lisp:nil
                                 ((mime-type :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "mimeType")
                                  (file-size :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "fileSize"))
                                 (:shape-name "GetWhatsAppMessageMediaOutput"))

(smithy/sdk/shapes:define-input get-whats-app-message-template-input
                                common-lisp:nil
                                ((meta-template-id :target-type
                                  meta-template-id :required common-lisp:t
                                  :member-name "metaTemplateId" :http-query
                                  "metaTemplateId")
                                 (id :target-type
                                  linked-whats-app-business-account-id
                                  :required common-lisp:t :member-name "id"
                                  :http-query "id"))
                                (:shape-name "GetWhatsAppMessageTemplateInput"))

(smithy/sdk/shapes:define-output get-whats-app-message-template-output
                                 common-lisp:nil
                                 ((template :target-type meta-template
                                   :member-name "template"))
                                 (:shape-name
                                  "GetWhatsAppMessageTemplateOutput"))

(smithy/sdk/shapes:define-map headers :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-parameters-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidParametersException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type iso-country-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure library-template-body-inputs
                                    common-lisp:nil
                                    ((add-contact-number :target-type
                                      add-contact-number :member-name
                                      "addContactNumber")
                                     (add-learn-more-link :target-type
                                      add-learn-more-link :member-name
                                      "addLearnMoreLink")
                                     (add-security-recommendation :target-type
                                      add-security-recommendation :member-name
                                      "addSecurityRecommendation")
                                     (add-track-package-link :target-type
                                      add-track-package-link :member-name
                                      "addTrackPackageLink")
                                     (code-expiration-minutes :target-type
                                      code-expiration-minutes :member-name
                                      "codeExpirationMinutes"))
                                    (:shape-name "LibraryTemplateBodyInputs"))

(smithy/sdk/shapes:define-structure library-template-button-input
                                    common-lisp:nil
                                    ((type :target-type button-type
                                      :member-name "type")
                                     (phone-number :target-type phone-number
                                      :member-name "phoneNumber")
                                     (url :target-type
                                      meta-url-with-suffix-example :member-name
                                      "url")
                                     (otp-type :target-type otp-type
                                      :member-name "otpType")
                                     (zero-tap-terms-accepted :target-type
                                      zero-tap-terms-accepted :member-name
                                      "zeroTapTermsAccepted")
                                     (supported-apps :target-type
                                      supported-apps :member-name
                                      "supportedApps"))
                                    (:shape-name "LibraryTemplateButtonInput"))

(smithy/sdk/shapes:define-structure library-template-button-list
                                    common-lisp:nil
                                    ((type :target-type button-type
                                      :member-name "type")
                                     (text :target-type meta-text :member-name
                                      "text")
                                     (phone-number :target-type phone-number
                                      :member-name "phoneNumber")
                                     (url :target-type meta-url :member-name
                                      "url")
                                     (otp-type :target-type otp-type
                                      :member-name "otpType")
                                     (zero-tap-terms-accepted :target-type
                                      zero-tap-terms-accepted :member-name
                                      "zeroTapTermsAccepted")
                                     (supported-apps :target-type
                                      supported-apps :member-name
                                      "supportedApps"))
                                    (:shape-name "LibraryTemplateButtonList"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-map linked-account-with-incomplete-setup :key
                              whats-app-business-account-id :value
                              linked-whats-app-business-account-id-meta-data)

(smithy/sdk/shapes:define-structure linked-whats-app-business-account
                                    common-lisp:nil
                                    ((arn :target-type
                                      linked-whats-app-business-account-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (id :target-type
                                      linked-whats-app-business-account-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (waba-id :target-type
                                      whats-app-business-account-id :required
                                      common-lisp:t :member-name "wabaId")
                                     (registration-status :target-type
                                      registration-status :required
                                      common-lisp:t :member-name
                                      "registrationStatus")
                                     (link-date :target-type
                                      whats-app-business-account-link-date
                                      :required common-lisp:t :member-name
                                      "linkDate")
                                     (waba-name :target-type
                                      whats-app-business-account-name :required
                                      common-lisp:t :member-name "wabaName")
                                     (event-destinations :target-type
                                      whats-app-business-account-event-destinations
                                      :required common-lisp:t :member-name
                                      "eventDestinations")
                                     (phone-numbers :target-type
                                      whats-app-phone-number-summary-list
                                      :required common-lisp:t :member-name
                                      "phoneNumbers"))
                                    (:shape-name
                                     "LinkedWhatsAppBusinessAccount"))

(smithy/sdk/shapes:define-type linked-whats-app-business-account-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type linked-whats-app-business-account-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 linked-whats-app-business-account-id-meta-data common-lisp:nil
 ((account-name :target-type whats-app-business-account-name :member-name
   "accountName")
  (registration-status :target-type registration-status :member-name
   "registrationStatus")
  (unregistered-whats-app-phone-numbers :target-type
   whats-app-phone-number-detail-list :member-name
   "unregisteredWhatsAppPhoneNumbers")
  (waba-id :target-type linked-whats-app-business-account-id :member-name
   "wabaId"))
 (:shape-name "LinkedWhatsAppBusinessAccountIdMetaData"))

common-lisp:nil

(smithy/sdk/shapes:define-structure linked-whats-app-business-account-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      linked-whats-app-business-account-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (id :target-type
                                      linked-whats-app-business-account-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (waba-id :target-type
                                      whats-app-business-account-id :required
                                      common-lisp:t :member-name "wabaId")
                                     (registration-status :target-type
                                      registration-status :required
                                      common-lisp:t :member-name
                                      "registrationStatus")
                                     (link-date :target-type
                                      whats-app-business-account-link-date
                                      :required common-lisp:t :member-name
                                      "linkDate")
                                     (waba-name :target-type
                                      whats-app-business-account-name :required
                                      common-lisp:t :member-name "wabaName")
                                     (event-destinations :target-type
                                      whats-app-business-account-event-destinations
                                      :required common-lisp:t :member-name
                                      "eventDestinations"))
                                    (:shape-name
                                     "LinkedWhatsAppBusinessAccountSummary"))

(smithy/sdk/shapes:define-list linked-whats-app-business-account-summary-list
                               :member
                               linked-whats-app-business-account-summary)

(smithy/sdk/shapes:define-type linked-whats-app-phone-number-arn
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-input list-linked-whats-app-business-accounts-input
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListLinkedWhatsAppBusinessAccountsInput"))

(smithy/sdk/shapes:define-output list-linked-whats-app-business-accounts-output
                                 common-lisp:nil
                                 ((linked-accounts :target-type
                                   linked-whats-app-business-account-summary-list
                                   :member-name "linkedAccounts")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListLinkedWhatsAppBusinessAccountsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-query "resourceArn"))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((status-code :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "statusCode")
                                  (tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-input list-whats-app-message-templates-input
                                common-lisp:nil
                                ((id :target-type
                                  linked-whats-app-business-account-id
                                  :required common-lisp:t :member-name "id"
                                  :http-query "id")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListWhatsAppMessageTemplatesInput"))

(smithy/sdk/shapes:define-output list-whats-app-message-templates-output
                                 common-lisp:nil
                                 ((templates :target-type template-summary-list
                                   :member-name "templates")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListWhatsAppMessageTemplatesOutput"))

(smithy/sdk/shapes:define-input list-whats-app-template-library-input
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (id :target-type
                                  linked-whats-app-business-account-id
                                  :required common-lisp:t :member-name "id"
                                  :http-query "id")
                                 (filters :target-type filter :member-name
                                  "filters"))
                                (:shape-name
                                 "ListWhatsAppTemplateLibraryInput"))

(smithy/sdk/shapes:define-output list-whats-app-template-library-output
                                 common-lisp:nil
                                 ((meta-library-templates :target-type
                                   meta-library-templates-list :member-name
                                   "metaLibraryTemplates")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListWhatsAppTemplateLibraryOutput"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list meta-industries :member meta-industry)

(smithy/sdk/shapes:define-type meta-industry smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure meta-library-template common-lisp:nil
                                    ((template-name :target-type
                                      meta-template-name :required
                                      common-lisp:t :member-name
                                      "templateName")
                                     (library-template-name :target-type
                                      meta-template-name :required
                                      common-lisp:t :member-name
                                      "libraryTemplateName")
                                     (template-category :target-type
                                      meta-template-category :required
                                      common-lisp:t :member-name
                                      "templateCategory")
                                     (template-language :target-type
                                      meta-template-language :required
                                      common-lisp:t :member-name
                                      "templateLanguage")
                                     (library-template-button-inputs
                                      :target-type
                                      meta-library-template-button-inputs
                                      :member-name
                                      "libraryTemplateButtonInputs")
                                     (library-template-body-inputs :target-type
                                      library-template-body-inputs :member-name
                                      "libraryTemplateBodyInputs"))
                                    (:shape-name "MetaLibraryTemplate"))

(smithy/sdk/shapes:define-list meta-library-template-button-inputs :member
                               library-template-button-input)

(smithy/sdk/shapes:define-list meta-library-template-button-list :member
                               library-template-button-list)

(smithy/sdk/shapes:define-structure meta-library-template-definition
                                    common-lisp:nil
                                    ((template-name :target-type
                                      meta-template-name :member-name
                                      "templateName")
                                     (template-language :target-type
                                      meta-template-language :member-name
                                      "templateLanguage")
                                     (template-category :target-type
                                      meta-template-category :member-name
                                      "templateCategory")
                                     (template-topic :target-type
                                      meta-template-topic :member-name
                                      "templateTopic")
                                     (template-use-case :target-type
                                      meta-template-use-case :member-name
                                      "templateUseCase")
                                     (template-industry :target-type
                                      meta-industries :member-name
                                      "templateIndustry")
                                     (template-header :target-type
                                      meta-template-header :member-name
                                      "templateHeader")
                                     (template-body :target-type
                                      meta-template-body :member-name
                                      "templateBody")
                                     (template-buttons :target-type
                                      meta-library-template-button-list
                                      :member-name "templateButtons")
                                     (template-id :target-type meta-template-id
                                      :member-name "templateId"))
                                    (:shape-name
                                     "MetaLibraryTemplateDefinition"))

(smithy/sdk/shapes:define-list meta-library-templates-list :member
                               meta-library-template-definition)

(smithy/sdk/shapes:define-type meta-template smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type meta-template-body
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type meta-template-category
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type meta-template-components
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type meta-template-definition
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type meta-template-header
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type meta-template-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type meta-template-language
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type meta-template-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type meta-template-quality-score
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type meta-template-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type meta-template-topic
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type meta-template-use-case
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type meta-text smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type meta-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map meta-url-with-suffix-example :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type otp-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type phone-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input post-whats-app-message-media-input
                                common-lisp:nil
                                ((origination-phone-number-id :target-type
                                  whats-app-phone-number-id :required
                                  common-lisp:t :member-name
                                  "originationPhoneNumberId")
                                 (source-s3presigned-url :target-type
                                  s3presigned-url :member-name
                                  "sourceS3PresignedUrl")
                                 (source-s3file :target-type s3file
                                  :member-name "sourceS3File"))
                                (:shape-name "PostWhatsAppMessageMediaInput"))

(smithy/sdk/shapes:define-output post-whats-app-message-media-output
                                 common-lisp:nil
                                 ((media-id :target-type whats-app-media-id
                                   :member-name "mediaId"))
                                 (:shape-name "PostWhatsAppMessageMediaOutput"))

(smithy/sdk/shapes:define-input
 put-whats-app-business-account-event-destinations-input common-lisp:nil
 ((id :target-type linked-whats-app-business-account-id :required common-lisp:t
   :member-name "id")
  (event-destinations :target-type
   whats-app-business-account-event-destinations :required common-lisp:t
   :member-name "eventDestinations"))
 (:shape-name "PutWhatsAppBusinessAccountEventDestinationsInput"))

(smithy/sdk/shapes:define-output
 put-whats-app-business-account-event-destinations-output common-lisp:nil
 common-lisp:nil
 (:shape-name "PutWhatsAppBusinessAccountEventDestinationsOutput"))

(smithy/sdk/shapes:define-enum registration-status
    common-lisp:nil
  (:complete "COMPLETE")
  (:incomplete "INCOMPLETE"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3file common-lisp:nil
                                    ((bucket-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "bucketName")
                                     (key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "key"))
                                    (:shape-name "S3File"))

(smithy/sdk/shapes:define-structure s3presigned-url common-lisp:nil
                                    ((url :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "url")
                                     (headers :target-type headers :required
                                      common-lisp:t :member-name "headers"))
                                    (:shape-name "S3PresignedUrl"))

(smithy/sdk/shapes:define-input send-whats-app-message-input common-lisp:nil
                                ((origination-phone-number-id :target-type
                                  whats-app-phone-number-id :required
                                  common-lisp:t :member-name
                                  "originationPhoneNumberId")
                                 (message :target-type whats-app-message-blob
                                  :required common-lisp:t :member-name
                                  "message")
                                 (meta-api-version :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "metaApiVersion"))
                                (:shape-name "SendWhatsAppMessageInput"))

(smithy/sdk/shapes:define-output send-whats-app-message-output common-lisp:nil
                                 ((message-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "messageId"))
                                 (:shape-name "SendWhatsAppMessageOutput"))

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map supported-app :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list supported-apps :member supported-app)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 ((status-code :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "statusCode"))
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-structure template-summary common-lisp:nil
                                    ((template-name :target-type
                                      meta-template-name :member-name
                                      "templateName")
                                     (meta-template-id :target-type
                                      meta-template-id :member-name
                                      "metaTemplateId")
                                     (template-status :target-type
                                      meta-template-status :member-name
                                      "templateStatus")
                                     (template-quality-score :target-type
                                      meta-template-quality-score :member-name
                                      "templateQualityScore")
                                     (template-language :target-type
                                      meta-template-language :member-name
                                      "templateLanguage")
                                     (template-category :target-type
                                      meta-template-category :member-name
                                      "templateCategory"))
                                    (:shape-name "TemplateSummary"))

(smithy/sdk/shapes:define-list template-summary-list :member template-summary)

(smithy/sdk/shapes:define-error throttled-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottledRequestException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type two-factor-pin smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tag-keys :target-type string-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 ((status-code :target-type
                                   smithy/sdk/smithy-types:integer :member-name
                                   "statusCode"))
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-whats-app-message-template-input
                                common-lisp:nil
                                ((id :target-type
                                  linked-whats-app-business-account-id
                                  :required common-lisp:t :member-name "id")
                                 (meta-template-id :target-type
                                  meta-template-id :required common-lisp:t
                                  :member-name "metaTemplateId")
                                 (template-category :target-type
                                  meta-template-category :member-name
                                  "templateCategory")
                                 (template-components :target-type
                                  meta-template-components :member-name
                                  "templateComponents"))
                                (:shape-name
                                 "UpdateWhatsAppMessageTemplateInput"))

(smithy/sdk/shapes:define-output update-whats-app-message-template-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "UpdateWhatsAppMessageTemplateOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure waba-phone-number-setup-finalization
                                    common-lisp:nil
                                    ((id :target-type whats-app-phone-number
                                      :required common-lisp:t :member-name
                                      "id")
                                     (two-factor-pin :target-type
                                      two-factor-pin :required common-lisp:t
                                      :member-name "twoFactorPin")
                                     (data-localization-region :target-type
                                      iso-country-code :member-name
                                      "dataLocalizationRegion")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name
                                     "WabaPhoneNumberSetupFinalization"))

(smithy/sdk/shapes:define-list waba-phone-number-setup-finalization-list
                               :member waba-phone-number-setup-finalization)

(smithy/sdk/shapes:define-structure waba-setup-finalization common-lisp:nil
                                    ((id :target-type
                                      whats-app-business-account-id
                                      :member-name "id")
                                     (event-destinations :target-type
                                      whats-app-business-account-event-destinations
                                      :member-name "eventDestinations")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "WabaSetupFinalization"))

(smithy/sdk/shapes:define-structure
 whats-app-business-account-event-destination common-lisp:nil
 ((event-destination-arn :target-type event-destination-arn :required
   common-lisp:t :member-name "eventDestinationArn")
  (role-arn :target-type role-arn :member-name "roleArn"))
 (:shape-name "WhatsAppBusinessAccountEventDestination"))

(smithy/sdk/shapes:define-list whats-app-business-account-event-destinations
                               :member
                               whats-app-business-account-event-destination)

(smithy/sdk/shapes:define-type whats-app-business-account-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type whats-app-business-account-link-date
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type whats-app-business-account-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type whats-app-display-phone-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type whats-app-media-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type whats-app-message-blob
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type whats-app-phone-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure whats-app-phone-number-detail
                                    common-lisp:nil
                                    ((arn :target-type
                                      linked-whats-app-phone-number-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (phone-number :target-type phone-number
                                      :required common-lisp:t :member-name
                                      "phoneNumber")
                                     (phone-number-id :target-type
                                      whats-app-phone-number-id :required
                                      common-lisp:t :member-name
                                      "phoneNumberId")
                                     (meta-phone-number-id :target-type
                                      whats-app-phone-number :required
                                      common-lisp:t :member-name
                                      "metaPhoneNumberId")
                                     (display-phone-number-name :target-type
                                      whats-app-phone-number-name :required
                                      common-lisp:t :member-name
                                      "displayPhoneNumberName")
                                     (display-phone-number :target-type
                                      whats-app-display-phone-number :required
                                      common-lisp:t :member-name
                                      "displayPhoneNumber")
                                     (quality-rating :target-type
                                      whats-app-phone-number-quality-rating
                                      :required common-lisp:t :member-name
                                      "qualityRating")
                                     (data-localization-region :target-type
                                      iso-country-code :member-name
                                      "dataLocalizationRegion"))
                                    (:shape-name "WhatsAppPhoneNumberDetail"))

(smithy/sdk/shapes:define-list whats-app-phone-number-detail-list :member
                               whats-app-phone-number-detail)

(smithy/sdk/shapes:define-type whats-app-phone-number-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type whats-app-phone-number-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type whats-app-phone-number-quality-rating
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure whats-app-phone-number-summary
                                    common-lisp:nil
                                    ((arn :target-type
                                      linked-whats-app-phone-number-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (phone-number :target-type phone-number
                                      :required common-lisp:t :member-name
                                      "phoneNumber")
                                     (phone-number-id :target-type
                                      whats-app-phone-number-id :required
                                      common-lisp:t :member-name
                                      "phoneNumberId")
                                     (meta-phone-number-id :target-type
                                      whats-app-phone-number :required
                                      common-lisp:t :member-name
                                      "metaPhoneNumberId")
                                     (display-phone-number-name :target-type
                                      whats-app-phone-number-name :required
                                      common-lisp:t :member-name
                                      "displayPhoneNumberName")
                                     (display-phone-number :target-type
                                      whats-app-display-phone-number :required
                                      common-lisp:t :member-name
                                      "displayPhoneNumber")
                                     (quality-rating :target-type
                                      whats-app-phone-number-quality-rating
                                      :required common-lisp:t :member-name
                                      "qualityRating")
                                     (data-localization-region :target-type
                                      iso-country-code :member-name
                                      "dataLocalizationRegion"))
                                    (:shape-name "WhatsAppPhoneNumberSummary"))

(smithy/sdk/shapes:define-list whats-app-phone-number-summary-list :member
                               whats-app-phone-number-summary)

(smithy/sdk/shapes:define-structure whats-app-setup-finalization
                                    common-lisp:nil
                                    ((associate-in-progress-token :target-type
                                      associate-in-progress-token :required
                                      common-lisp:t :member-name
                                      "associateInProgressToken")
                                     (phone-numbers :target-type
                                      waba-phone-number-setup-finalization-list
                                      :required common-lisp:t :member-name
                                      "phoneNumbers")
                                     (phone-number-parent :target-type
                                      linked-whats-app-business-account-id
                                      :member-name "phoneNumberParent")
                                     (waba :target-type waba-setup-finalization
                                      :member-name "waba"))
                                    (:shape-name "WhatsAppSetupFinalization"))

(smithy/sdk/shapes:define-structure whats-app-signup-callback common-lisp:nil
                                    ((access-token :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "accessToken")
                                     (callback-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "callbackUrl"))
                                    (:shape-name "WhatsAppSignupCallback"))

(smithy/sdk/shapes:define-structure whats-app-signup-callback-result
                                    common-lisp:nil
                                    ((associate-in-progress-token :target-type
                                      associate-in-progress-token :member-name
                                      "associateInProgressToken")
                                     (linked-accounts-with-incomplete-setup
                                      :target-type
                                      linked-account-with-incomplete-setup
                                      :member-name
                                      "linkedAccountsWithIncompleteSetup"))
                                    (:shape-name
                                     "WhatsAppSignupCallbackResult"))

(smithy/sdk/shapes:define-type zero-tap-terms-accepted
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/operation:define-operation associate-whats-app-business-account
                                       :shape-name
                                       "AssociateWhatsAppBusinessAccount"
                                       :input
                                       associate-whats-app-business-account-input
                                       :output
                                       associate-whats-app-business-account-output
                                       :errors
                                       (dependency-exception
                                        invalid-parameters-exception
                                        limit-exceeded-exception
                                        throttled-request-exception)
                                       :method "POST" :uri
                                       "/v1/whatsapp/signup" :code 200)

(smithy/sdk/operation:define-operation create-whats-app-message-template
                                       :shape-name
                                       "CreateWhatsAppMessageTemplate" :input
                                       create-whats-app-message-template-input
                                       :output
                                       create-whats-app-message-template-output
                                       :errors
                                       (dependency-exception
                                        internal-service-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        throttled-request-exception)
                                       :method "POST" :uri
                                       "/v1/whatsapp/template/put" :code 200)

(smithy/sdk/operation:define-operation
 create-whats-app-message-template-from-library :shape-name
 "CreateWhatsAppMessageTemplateFromLibrary" :input
 create-whats-app-message-template-from-library-input :output
 create-whats-app-message-template-from-library-output :errors
 (dependency-exception internal-service-exception invalid-parameters-exception
  resource-not-found-exception throttled-request-exception)
 :method "POST" :uri "/v1/whatsapp/template/create" :code 200)

(smithy/sdk/operation:define-operation create-whats-app-message-template-media
                                       :shape-name
                                       "CreateWhatsAppMessageTemplateMedia"
                                       :input
                                       create-whats-app-message-template-media-input
                                       :output
                                       create-whats-app-message-template-media-output
                                       :errors
                                       (dependency-exception
                                        internal-service-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        throttled-request-exception)
                                       :method "POST" :uri
                                       "/v1/whatsapp/template/media" :code 200)

(smithy/sdk/operation:define-operation delete-whats-app-message-media
                                       :shape-name "DeleteWhatsAppMessageMedia"
                                       :input
                                       delete-whats-app-message-media-input
                                       :output
                                       delete-whats-app-message-media-output
                                       :errors
                                       (access-denied-by-meta-exception
                                        dependency-exception
                                        internal-service-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        throttled-request-exception)
                                       :method "DELETE" :uri
                                       "/v1/whatsapp/media" :code 200)

(smithy/sdk/operation:define-operation delete-whats-app-message-template
                                       :shape-name
                                       "DeleteWhatsAppMessageTemplate" :input
                                       delete-whats-app-message-template-input
                                       :output
                                       delete-whats-app-message-template-output
                                       :errors
                                       (dependency-exception
                                        internal-service-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        throttled-request-exception)
                                       :method "DELETE" :uri
                                       "/v1/whatsapp/template" :code 200)

(smithy/sdk/operation:define-operation disassociate-whats-app-business-account
                                       :shape-name
                                       "DisassociateWhatsAppBusinessAccount"
                                       :input
                                       disassociate-whats-app-business-account-input
                                       :output
                                       disassociate-whats-app-business-account-output
                                       :errors
                                       (dependency-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        throttled-request-exception)
                                       :method "DELETE" :uri
                                       "/v1/whatsapp/waba/disassociate" :code
                                       200)

(smithy/sdk/operation:define-operation get-linked-whats-app-business-account
                                       :shape-name
                                       "GetLinkedWhatsAppBusinessAccount"
                                       :input
                                       get-linked-whats-app-business-account-input
                                       :output
                                       get-linked-whats-app-business-account-output
                                       :errors
                                       (dependency-exception
                                        internal-service-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        throttled-request-exception)
                                       :method "GET" :uri
                                       "/v1/whatsapp/waba/details" :code 200)

(smithy/sdk/operation:define-operation
 get-linked-whats-app-business-account-phone-number :shape-name
 "GetLinkedWhatsAppBusinessAccountPhoneNumber" :input
 get-linked-whats-app-business-account-phone-number-input :output
 get-linked-whats-app-business-account-phone-number-output :errors
 (dependency-exception internal-service-exception invalid-parameters-exception
  resource-not-found-exception throttled-request-exception)
 :method "GET" :uri "/v1/whatsapp/waba/phone/details" :code 200)

(smithy/sdk/operation:define-operation get-whats-app-message-media :shape-name
                                       "GetWhatsAppMessageMedia" :input
                                       get-whats-app-message-media-input
                                       :output
                                       get-whats-app-message-media-output
                                       :errors
                                       (access-denied-by-meta-exception
                                        dependency-exception
                                        internal-service-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        throttled-request-exception)
                                       :method "POST" :uri
                                       "/v1/whatsapp/media/get" :code 200)

(smithy/sdk/operation:define-operation get-whats-app-message-template
                                       :shape-name "GetWhatsAppMessageTemplate"
                                       :input
                                       get-whats-app-message-template-input
                                       :output
                                       get-whats-app-message-template-output
                                       :errors
                                       (dependency-exception
                                        internal-service-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        throttled-request-exception)
                                       :method "GET" :uri
                                       "/v1/whatsapp/template" :code 200)

(smithy/sdk/operation:define-operation list-linked-whats-app-business-accounts
                                       :shape-name
                                       "ListLinkedWhatsAppBusinessAccounts"
                                       :input
                                       list-linked-whats-app-business-accounts-input
                                       :output
                                       list-linked-whats-app-business-accounts-output
                                       :errors
                                       (internal-service-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        throttled-request-exception)
                                       :method "GET" :uri
                                       "/v1/whatsapp/waba/list" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (internal-service-exception
                                        invalid-parameters-exception
                                        throttled-request-exception)
                                       :method "GET" :uri "/v1/tags/list" :code
                                       200)

(smithy/sdk/operation:define-operation list-whats-app-message-templates
                                       :shape-name
                                       "ListWhatsAppMessageTemplates" :input
                                       list-whats-app-message-templates-input
                                       :output
                                       list-whats-app-message-templates-output
                                       :errors
                                       (dependency-exception
                                        internal-service-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        throttled-request-exception)
                                       :method "GET" :uri
                                       "/v1/whatsapp/template/list" :code 200)

(smithy/sdk/operation:define-operation list-whats-app-template-library
                                       :shape-name
                                       "ListWhatsAppTemplateLibrary" :input
                                       list-whats-app-template-library-input
                                       :output
                                       list-whats-app-template-library-output
                                       :errors
                                       (dependency-exception
                                        internal-service-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        throttled-request-exception)
                                       :method "POST" :uri
                                       "/v1/whatsapp/template/library" :code
                                       200)

(smithy/sdk/operation:define-operation post-whats-app-message-media :shape-name
                                       "PostWhatsAppMessageMedia" :input
                                       post-whats-app-message-media-input
                                       :output
                                       post-whats-app-message-media-output
                                       :errors
                                       (access-denied-by-meta-exception
                                        dependency-exception
                                        internal-service-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        throttled-request-exception)
                                       :method "POST" :uri "/v1/whatsapp/media"
                                       :code 200)

(smithy/sdk/operation:define-operation
 put-whats-app-business-account-event-destinations :shape-name
 "PutWhatsAppBusinessAccountEventDestinations" :input
 put-whats-app-business-account-event-destinations-input :output
 put-whats-app-business-account-event-destinations-output :errors
 (internal-service-exception invalid-parameters-exception
  throttled-request-exception)
 :method "PUT" :uri "/v1/whatsapp/waba/eventdestinations" :code 200)

(smithy/sdk/operation:define-operation send-whats-app-message :shape-name
                                       "SendWhatsAppMessage" :input
                                       send-whats-app-message-input :output
                                       send-whats-app-message-output :errors
                                       (dependency-exception
                                        internal-service-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        throttled-request-exception)
                                       :method "POST" :uri "/v1/whatsapp/send"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (internal-service-exception
                                        invalid-parameters-exception
                                        throttled-request-exception)
                                       :method "POST" :uri
                                       "/v1/tags/tag-resource" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (internal-service-exception
                                        invalid-parameters-exception
                                        throttled-request-exception)
                                       :method "POST" :uri
                                       "/v1/tags/untag-resource" :code 200)

(smithy/sdk/operation:define-operation update-whats-app-message-template
                                       :shape-name
                                       "UpdateWhatsAppMessageTemplate" :input
                                       update-whats-app-message-template-input
                                       :output
                                       update-whats-app-message-template-output
                                       :errors
                                       (dependency-exception
                                        internal-service-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        throttled-request-exception)
                                       :method "POST" :uri
                                       "/v1/whatsapp/template" :code 200)
