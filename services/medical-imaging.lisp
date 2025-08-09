(uiop/package:define-package #:pira/medical-imaging (:use)
                             (:export #:ahigateway-service
                              #:access-denied-exception #:arn #:aws-account-id
                              #:client-token #:conflict-exception
                              #:copiable-attributes
                              #:copy-destination-image-set
                              #:copy-destination-image-set-properties
                              #:copy-image-set #:copy-image-set-information
                              #:copy-image-set-request
                              #:copy-image-set-response
                              #:copy-source-image-set-information
                              #:copy-source-image-set-properties
                              #:create-datastore #:create-datastore-request
                              #:create-datastore-response
                              #:dicomaccession-number #:dicomattribute
                              #:dicomimport-job-properties
                              #:dicomimport-job-summaries
                              #:dicomimport-job-summary
                              #:dicomnumber-of-study-related-instances
                              #:dicomnumber-of-study-related-series
                              #:dicompatient-birth-date #:dicompatient-id
                              #:dicompatient-name #:dicompatient-sex
                              #:dicomseries-body-part
                              #:dicomseries-instance-uid #:dicomseries-modality
                              #:dicomseries-number #:dicomstudy-date
                              #:dicomstudy-date-and-time
                              #:dicomstudy-description #:dicomstudy-id
                              #:dicomstudy-instance-uid #:dicomstudy-time
                              #:dicomtags #:dicomupdates #:datastore-id
                              #:datastore-name #:datastore-properties
                              #:datastore-resource #:datastore-status
                              #:datastore-summaries #:datastore-summary #:date
                              #:delete-datastore #:delete-datastore-request
                              #:delete-datastore-response #:delete-image-set
                              #:delete-image-set-request
                              #:delete-image-set-response #:get-dicomimport-job
                              #:get-dicomimport-job-request
                              #:get-dicomimport-job-response #:get-datastore
                              #:get-datastore-request #:get-datastore-response
                              #:get-image-frame #:get-image-frame-request
                              #:get-image-frame-response #:get-image-set
                              #:get-image-set-metadata
                              #:get-image-set-metadata-request
                              #:get-image-set-metadata-response
                              #:get-image-set-request #:get-image-set-response
                              #:image-frame-id #:image-frame-information
                              #:image-set-external-version-id #:image-set-id
                              #:image-set-metadata-blob #:image-set-properties
                              #:image-set-properties-list #:image-set-resource
                              #:image-set-state #:image-set-workflow-status
                              #:image-sets-metadata-summaries
                              #:image-sets-metadata-summary
                              #:internal-server-exception #:job-id #:job-name
                              #:job-status #:kms-key-arn
                              #:list-dicomimport-jobs
                              #:list-dicomimport-jobs-request
                              #:list-dicomimport-jobs-response
                              #:list-datastores #:list-datastores-request
                              #:list-datastores-response
                              #:list-image-set-versions
                              #:list-image-set-versions-request
                              #:list-image-set-versions-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:message
                              #:metadata-copies #:metadata-updates #:next-token
                              #:operator #:overrides #:payload-blob
                              #:resource-not-found-exception #:role-arn #:s3uri
                              #:search-by-attribute-value
                              #:search-by-attribute-values #:search-criteria
                              #:search-filter #:search-filters
                              #:search-image-sets #:search-image-sets-request
                              #:search-image-sets-response
                              #:service-quota-exceeded-exception #:sort
                              #:sort-field #:sort-order #:start-dicomimport-job
                              #:start-dicomimport-job-request
                              #:start-dicomimport-job-response #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:throttling-exception
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response
                              #:update-image-set-metadata
                              #:update-image-set-metadata-request
                              #:update-image-set-metadata-response
                              #:validation-exception))
(common-lisp:in-package #:pira/medical-imaging)

(smithy/sdk/service:define-service ahigateway-service :shape-name
                                   "AHIGatewayService" :version "2023-07-19"
                                   :title "AWS Health Imaging" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Medical Imaging")
                                      ("arnNamespace" . "medical-imaging")
                                      ("endpointPrefix" . "medical-imaging"))
                                     ("aws.auth#sigv4"
                                      ("name" . "medical-imaging"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a tag key and value pair of a resource"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a tag key and value pair that is allowed in the request"))
                                      ("aws:TagKeys" ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a list of tag keys that are allowed in the request")))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type copiable-attributes
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure copy-destination-image-set common-lisp:nil
                                    ((image-set-id :target-type image-set-id
                                      :required common-lisp:t :member-name
                                      "imageSetId")
                                     (latest-version-id :target-type
                                      image-set-external-version-id :required
                                      common-lisp:t :member-name
                                      "latestVersionId"))
                                    (:shape-name "CopyDestinationImageSet"))

(smithy/sdk/shapes:define-structure copy-destination-image-set-properties
                                    common-lisp:nil
                                    ((image-set-id :target-type image-set-id
                                      :required common-lisp:t :member-name
                                      "imageSetId")
                                     (latest-version-id :target-type
                                      image-set-external-version-id :required
                                      common-lisp:t :member-name
                                      "latestVersionId")
                                     (image-set-state :target-type
                                      image-set-state :member-name
                                      "imageSetState")
                                     (image-set-workflow-status :target-type
                                      image-set-workflow-status :member-name
                                      "imageSetWorkflowStatus")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (updated-at :target-type date :member-name
                                      "updatedAt")
                                     (image-set-arn :target-type arn
                                      :member-name "imageSetArn"))
                                    (:shape-name
                                     "CopyDestinationImageSetProperties"))

(smithy/sdk/shapes:define-structure copy-image-set-information common-lisp:nil
                                    ((source-image-set :target-type
                                      copy-source-image-set-information
                                      :required common-lisp:t :member-name
                                      "sourceImageSet")
                                     (destination-image-set :target-type
                                      copy-destination-image-set :member-name
                                      "destinationImageSet"))
                                    (:shape-name "CopyImageSetInformation"))

(smithy/sdk/shapes:define-input copy-image-set-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "datastoreId" :http-label common-lisp:t)
                                 (source-image-set-id :target-type image-set-id
                                  :required common-lisp:t :member-name
                                  "sourceImageSetId" :http-label common-lisp:t)
                                 (copy-image-set-information :target-type
                                  copy-image-set-information :required
                                  common-lisp:t :member-name
                                  "copyImageSetInformation" :http-payload
                                  common-lisp:t)
                                 (force :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "force" :http-query "force")
                                 (promote-to-primary :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "promoteToPrimary" :http-query
                                  "promoteToPrimary"))
                                (:shape-name "CopyImageSetRequest"))

(smithy/sdk/shapes:define-output copy-image-set-response common-lisp:nil
                                 ((datastore-id :target-type datastore-id
                                   :required common-lisp:t :member-name
                                   "datastoreId")
                                  (source-image-set-properties :target-type
                                   copy-source-image-set-properties :required
                                   common-lisp:t :member-name
                                   "sourceImageSetProperties")
                                  (destination-image-set-properties
                                   :target-type
                                   copy-destination-image-set-properties
                                   :required common-lisp:t :member-name
                                   "destinationImageSetProperties"))
                                 (:shape-name "CopyImageSetResponse"))

(smithy/sdk/shapes:define-structure copy-source-image-set-information
                                    common-lisp:nil
                                    ((latest-version-id :target-type
                                      image-set-external-version-id :required
                                      common-lisp:t :member-name
                                      "latestVersionId")
                                     (dicomcopies :target-type metadata-copies
                                      :member-name "DICOMCopies"))
                                    (:shape-name
                                     "CopySourceImageSetInformation"))

(smithy/sdk/shapes:define-structure copy-source-image-set-properties
                                    common-lisp:nil
                                    ((image-set-id :target-type image-set-id
                                      :required common-lisp:t :member-name
                                      "imageSetId")
                                     (latest-version-id :target-type
                                      image-set-external-version-id :required
                                      common-lisp:t :member-name
                                      "latestVersionId")
                                     (image-set-state :target-type
                                      image-set-state :member-name
                                      "imageSetState")
                                     (image-set-workflow-status :target-type
                                      image-set-workflow-status :member-name
                                      "imageSetWorkflowStatus")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (updated-at :target-type date :member-name
                                      "updatedAt")
                                     (image-set-arn :target-type arn
                                      :member-name "imageSetArn"))
                                    (:shape-name
                                     "CopySourceImageSetProperties"))

(smithy/sdk/shapes:define-input create-datastore-request common-lisp:nil
                                ((datastore-name :target-type datastore-name
                                  :member-name "datastoreName")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn"))
                                (:shape-name "CreateDatastoreRequest"))

(smithy/sdk/shapes:define-output create-datastore-response common-lisp:nil
                                 ((datastore-id :target-type datastore-id
                                   :required common-lisp:t :member-name
                                   "datastoreId")
                                  (datastore-status :target-type
                                   datastore-status :required common-lisp:t
                                   :member-name "datastoreStatus"))
                                 (:shape-name "CreateDatastoreResponse"))

(smithy/sdk/shapes:define-type dicomaccession-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dicomattribute smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure dicomimport-job-properties common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (job-name :target-type job-name :required
                                      common-lisp:t :member-name "jobName")
                                     (job-status :target-type job-status
                                      :required common-lisp:t :member-name
                                      "jobStatus")
                                     (datastore-id :target-type datastore-id
                                      :required common-lisp:t :member-name
                                      "datastoreId")
                                     (data-access-role-arn :target-type
                                      role-arn :required common-lisp:t
                                      :member-name "dataAccessRoleArn")
                                     (ended-at :target-type date :member-name
                                      "endedAt")
                                     (submitted-at :target-type date
                                      :member-name "submittedAt")
                                     (input-s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "inputS3Uri")
                                     (output-s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "outputS3Uri")
                                     (message :target-type message :member-name
                                      "message"))
                                    (:shape-name "DICOMImportJobProperties"))

(smithy/sdk/shapes:define-list dicomimport-job-summaries :member
                               dicomimport-job-summary)

(smithy/sdk/shapes:define-structure dicomimport-job-summary common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (job-name :target-type job-name :required
                                      common-lisp:t :member-name "jobName")
                                     (job-status :target-type job-status
                                      :required common-lisp:t :member-name
                                      "jobStatus")
                                     (datastore-id :target-type datastore-id
                                      :required common-lisp:t :member-name
                                      "datastoreId")
                                     (data-access-role-arn :target-type
                                      role-arn :member-name
                                      "dataAccessRoleArn")
                                     (ended-at :target-type date :member-name
                                      "endedAt")
                                     (submitted-at :target-type date
                                      :member-name "submittedAt")
                                     (message :target-type message :member-name
                                      "message"))
                                    (:shape-name "DICOMImportJobSummary"))

(smithy/sdk/shapes:define-type dicomnumber-of-study-related-instances
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type dicomnumber-of-study-related-series
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type dicompatient-birth-date
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dicompatient-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dicompatient-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dicompatient-sex smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dicomseries-body-part
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dicomseries-instance-uid
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dicomseries-modality
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dicomseries-number
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type dicomstudy-date smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dicomstudy-date-and-time common-lisp:nil
                                    ((dicomstudy-date :target-type
                                      dicomstudy-date :required common-lisp:t
                                      :member-name "DICOMStudyDate")
                                     (dicomstudy-time :target-type
                                      dicomstudy-time :member-name
                                      "DICOMStudyTime"))
                                    (:shape-name "DICOMStudyDateAndTime"))

(smithy/sdk/shapes:define-type dicomstudy-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dicomstudy-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dicomstudy-instance-uid
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dicomstudy-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dicomtags common-lisp:nil
                                    ((dicompatient-id :target-type
                                      dicompatient-id :member-name
                                      "DICOMPatientId")
                                     (dicompatient-name :target-type
                                      dicompatient-name :member-name
                                      "DICOMPatientName")
                                     (dicompatient-birth-date :target-type
                                      dicompatient-birth-date :member-name
                                      "DICOMPatientBirthDate")
                                     (dicompatient-sex :target-type
                                      dicompatient-sex :member-name
                                      "DICOMPatientSex")
                                     (dicomstudy-instance-uid :target-type
                                      dicomstudy-instance-uid :member-name
                                      "DICOMStudyInstanceUID")
                                     (dicomstudy-id :target-type dicomstudy-id
                                      :member-name "DICOMStudyId")
                                     (dicomstudy-description :target-type
                                      dicomstudy-description :member-name
                                      "DICOMStudyDescription")
                                     (dicomnumber-of-study-related-series
                                      :target-type
                                      dicomnumber-of-study-related-series
                                      :member-name
                                      "DICOMNumberOfStudyRelatedSeries")
                                     (dicomnumber-of-study-related-instances
                                      :target-type
                                      dicomnumber-of-study-related-instances
                                      :member-name
                                      "DICOMNumberOfStudyRelatedInstances")
                                     (dicomaccession-number :target-type
                                      dicomaccession-number :member-name
                                      "DICOMAccessionNumber")
                                     (dicomseries-instance-uid :target-type
                                      dicomseries-instance-uid :member-name
                                      "DICOMSeriesInstanceUID")
                                     (dicomseries-modality :target-type
                                      dicomseries-modality :member-name
                                      "DICOMSeriesModality")
                                     (dicomseries-body-part :target-type
                                      dicomseries-body-part :member-name
                                      "DICOMSeriesBodyPart")
                                     (dicomseries-number :target-type
                                      dicomseries-number :member-name
                                      "DICOMSeriesNumber")
                                     (dicomstudy-date :target-type
                                      dicomstudy-date :member-name
                                      "DICOMStudyDate")
                                     (dicomstudy-time :target-type
                                      dicomstudy-time :member-name
                                      "DICOMStudyTime"))
                                    (:shape-name "DICOMTags"))

(smithy/sdk/shapes:define-structure dicomupdates common-lisp:nil
                                    ((removable-attributes :target-type
                                      dicomattribute :member-name
                                      "removableAttributes")
                                     (updatable-attributes :target-type
                                      dicomattribute :member-name
                                      "updatableAttributes"))
                                    (:shape-name "DICOMUpdates"))

(smithy/sdk/shapes:define-type datastore-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type datastore-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure datastore-properties common-lisp:nil
                                    ((datastore-id :target-type datastore-id
                                      :required common-lisp:t :member-name
                                      "datastoreId")
                                     (datastore-name :target-type
                                      datastore-name :required common-lisp:t
                                      :member-name "datastoreName")
                                     (datastore-status :target-type
                                      datastore-status :required common-lisp:t
                                      :member-name "datastoreStatus")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn")
                                     (datastore-arn :target-type arn
                                      :member-name "datastoreArn")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (updated-at :target-type date :member-name
                                      "updatedAt"))
                                    (:shape-name "DatastoreProperties"))

common-lisp:nil

(smithy/sdk/shapes:define-enum datastore-status
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-list datastore-summaries :member datastore-summary)

(smithy/sdk/shapes:define-structure datastore-summary common-lisp:nil
                                    ((datastore-id :target-type datastore-id
                                      :required common-lisp:t :member-name
                                      "datastoreId")
                                     (datastore-name :target-type
                                      datastore-name :required common-lisp:t
                                      :member-name "datastoreName")
                                     (datastore-status :target-type
                                      datastore-status :required common-lisp:t
                                      :member-name "datastoreStatus")
                                     (datastore-arn :target-type arn
                                      :member-name "datastoreArn")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (updated-at :target-type date :member-name
                                      "updatedAt"))
                                    (:shape-name "DatastoreSummary"))

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-datastore-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "datastoreId" :http-label common-lisp:t))
                                (:shape-name "DeleteDatastoreRequest"))

(smithy/sdk/shapes:define-output delete-datastore-response common-lisp:nil
                                 ((datastore-id :target-type datastore-id
                                   :required common-lisp:t :member-name
                                   "datastoreId")
                                  (datastore-status :target-type
                                   datastore-status :required common-lisp:t
                                   :member-name "datastoreStatus"))
                                 (:shape-name "DeleteDatastoreResponse"))

(smithy/sdk/shapes:define-input delete-image-set-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "datastoreId" :http-label common-lisp:t)
                                 (image-set-id :target-type image-set-id
                                  :required common-lisp:t :member-name
                                  "imageSetId" :http-label common-lisp:t))
                                (:shape-name "DeleteImageSetRequest"))

(smithy/sdk/shapes:define-output delete-image-set-response common-lisp:nil
                                 ((datastore-id :target-type datastore-id
                                   :required common-lisp:t :member-name
                                   "datastoreId")
                                  (image-set-id :target-type image-set-id
                                   :required common-lisp:t :member-name
                                   "imageSetId")
                                  (image-set-state :target-type image-set-state
                                   :required common-lisp:t :member-name
                                   "imageSetState")
                                  (image-set-workflow-status :target-type
                                   image-set-workflow-status :required
                                   common-lisp:t :member-name
                                   "imageSetWorkflowStatus"))
                                 (:shape-name "DeleteImageSetResponse"))

(smithy/sdk/shapes:define-input get-dicomimport-job-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "datastoreId" :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDICOMImportJobRequest"))

(smithy/sdk/shapes:define-output get-dicomimport-job-response common-lisp:nil
                                 ((job-properties :target-type
                                   dicomimport-job-properties :required
                                   common-lisp:t :member-name "jobProperties"))
                                 (:shape-name "GetDICOMImportJobResponse"))

(smithy/sdk/shapes:define-input get-datastore-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "datastoreId" :http-label common-lisp:t))
                                (:shape-name "GetDatastoreRequest"))

(smithy/sdk/shapes:define-output get-datastore-response common-lisp:nil
                                 ((datastore-properties :target-type
                                   datastore-properties :required common-lisp:t
                                   :member-name "datastoreProperties"))
                                 (:shape-name "GetDatastoreResponse"))

(smithy/sdk/shapes:define-input get-image-frame-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "datastoreId" :http-label common-lisp:t)
                                 (image-set-id :target-type image-set-id
                                  :required common-lisp:t :member-name
                                  "imageSetId" :http-label common-lisp:t)
                                 (image-frame-information :target-type
                                  image-frame-information :required
                                  common-lisp:t :member-name
                                  "imageFrameInformation" :http-payload
                                  common-lisp:t))
                                (:shape-name "GetImageFrameRequest"))

(smithy/sdk/shapes:define-output get-image-frame-response common-lisp:nil
                                 ((image-frame-blob :target-type payload-blob
                                   :required common-lisp:t :member-name
                                   "imageFrameBlob" :http-payload
                                   common-lisp:t)
                                  (content-type :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "contentType" :http-header "Content-Type"))
                                 (:shape-name "GetImageFrameResponse"))

(smithy/sdk/shapes:define-input get-image-set-metadata-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "datastoreId" :http-label common-lisp:t)
                                 (image-set-id :target-type image-set-id
                                  :required common-lisp:t :member-name
                                  "imageSetId" :http-label common-lisp:t)
                                 (version-id :target-type
                                  image-set-external-version-id :member-name
                                  "versionId" :http-query "version"))
                                (:shape-name "GetImageSetMetadataRequest"))

(smithy/sdk/shapes:define-output get-image-set-metadata-response
                                 common-lisp:nil
                                 ((image-set-metadata-blob :target-type
                                   image-set-metadata-blob :required
                                   common-lisp:t :member-name
                                   "imageSetMetadataBlob" :http-payload
                                   common-lisp:t)
                                  (content-type :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "contentType" :http-header "Content-Type")
                                  (content-encoding :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "contentEncoding" :http-header
                                   "Content-Encoding"))
                                 (:shape-name "GetImageSetMetadataResponse"))

(smithy/sdk/shapes:define-input get-image-set-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "datastoreId" :http-label common-lisp:t)
                                 (image-set-id :target-type image-set-id
                                  :required common-lisp:t :member-name
                                  "imageSetId" :http-label common-lisp:t)
                                 (version-id :target-type
                                  image-set-external-version-id :member-name
                                  "versionId" :http-query "version"))
                                (:shape-name "GetImageSetRequest"))

(smithy/sdk/shapes:define-output get-image-set-response common-lisp:nil
                                 ((datastore-id :target-type datastore-id
                                   :required common-lisp:t :member-name
                                   "datastoreId")
                                  (image-set-id :target-type image-set-id
                                   :required common-lisp:t :member-name
                                   "imageSetId")
                                  (version-id :target-type
                                   image-set-external-version-id :required
                                   common-lisp:t :member-name "versionId")
                                  (image-set-state :target-type image-set-state
                                   :required common-lisp:t :member-name
                                   "imageSetState")
                                  (image-set-workflow-status :target-type
                                   image-set-workflow-status :member-name
                                   "imageSetWorkflowStatus")
                                  (created-at :target-type date :member-name
                                   "createdAt")
                                  (updated-at :target-type date :member-name
                                   "updatedAt")
                                  (deleted-at :target-type date :member-name
                                   "deletedAt")
                                  (message :target-type message :member-name
                                   "message")
                                  (image-set-arn :target-type arn :member-name
                                   "imageSetArn")
                                  (overrides :target-type overrides
                                   :member-name "overrides")
                                  (is-primary :target-type
                                   smithy/sdk/smithy-types:boolean :member-name
                                   "isPrimary"))
                                 (:shape-name "GetImageSetResponse"))

(smithy/sdk/shapes:define-type image-frame-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure image-frame-information common-lisp:nil
                                    ((image-frame-id :target-type
                                      image-frame-id :required common-lisp:t
                                      :member-name "imageFrameId"))
                                    (:shape-name "ImageFrameInformation"))

(smithy/sdk/shapes:define-type image-set-external-version-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type image-set-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type image-set-metadata-blob
                               smithy/sdk/smithy-types:blob :streaming
                               common-lisp:t)

(smithy/sdk/shapes:define-structure image-set-properties common-lisp:nil
                                    ((image-set-id :target-type image-set-id
                                      :required common-lisp:t :member-name
                                      "imageSetId")
                                     (version-id :target-type
                                      image-set-external-version-id :required
                                      common-lisp:t :member-name "versionId")
                                     (image-set-state :target-type
                                      image-set-state :required common-lisp:t
                                      :member-name "imageSetState")
                                     (image-set-workflow-status :target-type
                                      image-set-workflow-status :member-name
                                      "ImageSetWorkflowStatus")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (updated-at :target-type date :member-name
                                      "updatedAt")
                                     (deleted-at :target-type date :member-name
                                      "deletedAt")
                                     (message :target-type message :member-name
                                      "message")
                                     (overrides :target-type overrides
                                      :member-name "overrides")
                                     (is-primary :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isPrimary"))
                                    (:shape-name "ImageSetProperties"))

(smithy/sdk/shapes:define-list image-set-properties-list :member
                               image-set-properties)

common-lisp:nil

(smithy/sdk/shapes:define-enum image-set-state
    common-lisp:nil
  (:active "ACTIVE")
  (:locked "LOCKED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-enum image-set-workflow-status
    common-lisp:nil
  (:created "CREATED")
  (:copied "COPIED")
  (:copying "COPYING")
  (:copying-with-read-only-access "COPYING_WITH_READ_ONLY_ACCESS")
  (:copy-failed "COPY_FAILED")
  (:updating "UPDATING")
  (:updated "UPDATED")
  (:update-failed "UPDATE_FAILED")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-list image-sets-metadata-summaries :member
                               image-sets-metadata-summary)

(smithy/sdk/shapes:define-structure image-sets-metadata-summary common-lisp:nil
                                    ((image-set-id :target-type image-set-id
                                      :required common-lisp:t :member-name
                                      "imageSetId")
                                     (version :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "version")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (updated-at :target-type date :member-name
                                      "updatedAt")
                                     (dicomtags :target-type dicomtags
                                      :member-name "DICOMTags")
                                     (is-primary :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isPrimary"))
                                    (:shape-name "ImageSetsMetadataSummary"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-dicomimport-jobs-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "datastoreId" :http-label common-lisp:t)
                                 (job-status :target-type job-status
                                  :member-name "jobStatus" :http-query
                                  "jobStatus")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListDICOMImportJobsRequest"))

(smithy/sdk/shapes:define-output list-dicomimport-jobs-response common-lisp:nil
                                 ((job-summaries :target-type
                                   dicomimport-job-summaries :required
                                   common-lisp:t :member-name "jobSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDICOMImportJobsResponse"))

(smithy/sdk/shapes:define-input list-datastores-request common-lisp:nil
                                ((datastore-status :target-type
                                  datastore-status :member-name
                                  "datastoreStatus" :http-query
                                  "datastoreStatus")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListDatastoresRequest"))

(smithy/sdk/shapes:define-output list-datastores-response common-lisp:nil
                                 ((datastore-summaries :target-type
                                   datastore-summaries :member-name
                                   "datastoreSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDatastoresResponse"))

(smithy/sdk/shapes:define-input list-image-set-versions-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "datastoreId" :http-label common-lisp:t)
                                 (image-set-id :target-type image-set-id
                                  :required common-lisp:t :member-name
                                  "imageSetId" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListImageSetVersionsRequest"))

(smithy/sdk/shapes:define-output list-image-set-versions-response
                                 common-lisp:nil
                                 ((image-set-properties-list :target-type
                                   image-set-properties-list :required
                                   common-lisp:t :member-name
                                   "imageSetPropertiesList")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListImageSetVersionsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :required
                                   common-lisp:t :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure metadata-copies common-lisp:nil
                                    ((copiable-attributes :target-type
                                      copiable-attributes :required
                                      common-lisp:t :member-name
                                      "copiableAttributes"))
                                    (:shape-name "MetadataCopies"))

(smithy/sdk/shapes:define-union metadata-updates common-lisp:nil
                                ((dicomupdates :target-type dicomupdates
                                  :member-name "DICOMUpdates")
                                 (revert-to-version-id :target-type
                                  image-set-external-version-id :member-name
                                  "revertToVersionId"))
                                (:shape-name "MetadataUpdates"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum operator
    common-lisp:nil
  (:equal "EQUAL")
  (:between "BETWEEN"))

(smithy/sdk/shapes:define-structure overrides common-lisp:nil
                                    ((forced :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "forced"))
                                    (:shape-name "Overrides"))

(smithy/sdk/shapes:define-type payload-blob smithy/sdk/smithy-types:blob
                               :streaming common-lisp:t)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union search-by-attribute-value common-lisp:nil
                                ((dicompatient-id :target-type dicompatient-id
                                  :member-name "DICOMPatientId")
                                 (dicomaccession-number :target-type
                                  dicomaccession-number :member-name
                                  "DICOMAccessionNumber")
                                 (dicomstudy-id :target-type dicomstudy-id
                                  :member-name "DICOMStudyId")
                                 (dicomstudy-instance-uid :target-type
                                  dicomstudy-instance-uid :member-name
                                  "DICOMStudyInstanceUID")
                                 (dicomseries-instance-uid :target-type
                                  dicomseries-instance-uid :member-name
                                  "DICOMSeriesInstanceUID")
                                 (created-at :target-type date :member-name
                                  "createdAt")
                                 (updated-at :target-type date :member-name
                                  "updatedAt")
                                 (dicomstudy-date-and-time :target-type
                                  dicomstudy-date-and-time :member-name
                                  "DICOMStudyDateAndTime")
                                 (is-primary :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "isPrimary"))
                                (:shape-name "SearchByAttributeValue"))

(smithy/sdk/shapes:define-list search-by-attribute-values :member
                               search-by-attribute-value)

(smithy/sdk/shapes:define-structure search-criteria common-lisp:nil
                                    ((filters :target-type search-filters
                                      :member-name "filters")
                                     (sort :target-type sort :member-name
                                      "sort"))
                                    (:shape-name "SearchCriteria"))

(smithy/sdk/shapes:define-structure search-filter common-lisp:nil
                                    ((values :target-type
                                      search-by-attribute-values :required
                                      common-lisp:t :member-name "values")
                                     (operator :target-type operator :required
                                      common-lisp:t :member-name "operator"))
                                    (:shape-name "SearchFilter"))

(smithy/sdk/shapes:define-list search-filters :member search-filter)

(smithy/sdk/shapes:define-input search-image-sets-request common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "datastoreId" :http-label common-lisp:t)
                                 (search-criteria :target-type search-criteria
                                  :member-name "searchCriteria" :http-payload
                                  common-lisp:t)
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "SearchImageSetsRequest"))

(smithy/sdk/shapes:define-output search-image-sets-response common-lisp:nil
                                 ((image-sets-metadata-summaries :target-type
                                   image-sets-metadata-summaries :required
                                   common-lisp:t :member-name
                                   "imageSetsMetadataSummaries")
                                  (sort :target-type sort :member-name "sort")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "SearchImageSetsResponse"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure sort common-lisp:nil
                                    ((sort-order :target-type sort-order
                                      :required common-lisp:t :member-name
                                      "sortOrder")
                                     (sort-field :target-type sort-field
                                      :required common-lisp:t :member-name
                                      "sortField"))
                                    (:shape-name "Sort"))

(smithy/sdk/shapes:define-enum sort-field
    common-lisp:nil
  (:updated-at "updatedAt")
  (:created-at "createdAt")
  (:dicomstudy-date-and-time "DICOMStudyDateAndTime"))

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:asc "ASC")
  (:desc "DESC"))

(smithy/sdk/shapes:define-input start-dicomimport-job-request common-lisp:nil
                                ((job-name :target-type job-name :member-name
                                  "jobName")
                                 (data-access-role-arn :target-type role-arn
                                  :required common-lisp:t :member-name
                                  "dataAccessRoleArn")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "datastoreId" :http-label common-lisp:t)
                                 (input-s3uri :target-type s3uri :required
                                  common-lisp:t :member-name "inputS3Uri")
                                 (output-s3uri :target-type s3uri :required
                                  common-lisp:t :member-name "outputS3Uri")
                                 (input-owner-account-id :target-type
                                  aws-account-id :member-name
                                  "inputOwnerAccountId"))
                                (:shape-name "StartDICOMImportJobRequest"))

(smithy/sdk/shapes:define-output start-dicomimport-job-response common-lisp:nil
                                 ((datastore-id :target-type datastore-id
                                   :required common-lisp:t :member-name
                                   "datastoreId")
                                  (job-id :target-type job-id :required
                                   common-lisp:t :member-name "jobId")
                                  (job-status :target-type job-status :required
                                   common-lisp:t :member-name "jobStatus")
                                  (submitted-at :target-type date :required
                                   common-lisp:t :member-name "submittedAt"))
                                 (:shape-name "StartDICOMImportJobResponse"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

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

(smithy/sdk/shapes:define-input update-image-set-metadata-request
                                common-lisp:nil
                                ((datastore-id :target-type datastore-id
                                  :required common-lisp:t :member-name
                                  "datastoreId" :http-label common-lisp:t)
                                 (image-set-id :target-type image-set-id
                                  :required common-lisp:t :member-name
                                  "imageSetId" :http-label common-lisp:t)
                                 (latest-version-id :target-type
                                  image-set-external-version-id :required
                                  common-lisp:t :member-name "latestVersionId"
                                  :http-query "latestVersion")
                                 (force :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "force" :http-query "force")
                                 (update-image-set-metadata-updates
                                  :target-type metadata-updates :required
                                  common-lisp:t :member-name
                                  "updateImageSetMetadataUpdates" :http-payload
                                  common-lisp:t))
                                (:shape-name "UpdateImageSetMetadataRequest"))

(smithy/sdk/shapes:define-output update-image-set-metadata-response
                                 common-lisp:nil
                                 ((datastore-id :target-type datastore-id
                                   :required common-lisp:t :member-name
                                   "datastoreId")
                                  (image-set-id :target-type image-set-id
                                   :required common-lisp:t :member-name
                                   "imageSetId")
                                  (latest-version-id :target-type
                                   image-set-external-version-id :required
                                   common-lisp:t :member-name
                                   "latestVersionId")
                                  (image-set-state :target-type image-set-state
                                   :required common-lisp:t :member-name
                                   "imageSetState")
                                  (image-set-workflow-status :target-type
                                   image-set-workflow-status :member-name
                                   "imageSetWorkflowStatus")
                                  (created-at :target-type date :member-name
                                   "createdAt")
                                  (updated-at :target-type date :member-name
                                   "updatedAt")
                                  (message :target-type message :member-name
                                   "message"))
                                 (:shape-name "UpdateImageSetMetadataResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation copy-image-set :shape-name
                                       "CopyImageSet" :input
                                       copy-image-set-request :output
                                       copy-image-set-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/datastore/{datastoreId}/imageSet/{sourceImageSetId}/copyImageSet"
                                       :endpoint-host-prefix "runtime-")

(smithy/sdk/operation:define-operation create-datastore :shape-name
                                       "CreateDatastore" :input
                                       create-datastore-request :output
                                       create-datastore-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/datastore")

(smithy/sdk/operation:define-operation delete-datastore :shape-name
                                       "DeleteDatastore" :input
                                       delete-datastore-request :output
                                       delete-datastore-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/datastore/{datastoreId}")

(smithy/sdk/operation:define-operation delete-image-set :shape-name
                                       "DeleteImageSet" :input
                                       delete-image-set-request :output
                                       delete-image-set-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/datastore/{datastoreId}/imageSet/{imageSetId}/deleteImageSet"
                                       :endpoint-host-prefix "runtime-")

(smithy/sdk/operation:define-operation get-dicomimport-job :shape-name
                                       "GetDICOMImportJob" :input
                                       get-dicomimport-job-request :output
                                       get-dicomimport-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/getDICOMImportJob/datastore/{datastoreId}/job/{jobId}")

(smithy/sdk/operation:define-operation get-datastore :shape-name "GetDatastore"
                                       :input get-datastore-request :output
                                       get-datastore-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/datastore/{datastoreId}")

(smithy/sdk/operation:define-operation get-image-frame :shape-name
                                       "GetImageFrame" :input
                                       get-image-frame-request :output
                                       get-image-frame-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageFrame"
                                       :endpoint-host-prefix "runtime-")

(smithy/sdk/operation:define-operation get-image-set :shape-name "GetImageSet"
                                       :input get-image-set-request :output
                                       get-image-set-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSet"
                                       :endpoint-host-prefix "runtime-")

(smithy/sdk/operation:define-operation get-image-set-metadata :shape-name
                                       "GetImageSetMetadata" :input
                                       get-image-set-metadata-request :output
                                       get-image-set-metadata-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSetMetadata"
                                       :endpoint-host-prefix "runtime-")

(smithy/sdk/operation:define-operation list-dicomimport-jobs :shape-name
                                       "ListDICOMImportJobs" :input
                                       list-dicomimport-jobs-request :output
                                       list-dicomimport-jobs-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/listDICOMImportJobs/datastore/{datastoreId}")

(smithy/sdk/operation:define-operation list-datastores :shape-name
                                       "ListDatastores" :input
                                       list-datastores-request :output
                                       list-datastores-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/datastore")

(smithy/sdk/operation:define-operation list-image-set-versions :shape-name
                                       "ListImageSetVersions" :input
                                       list-image-set-versions-request :output
                                       list-image-set-versions-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/datastore/{datastoreId}/imageSet/{imageSetId}/listImageSetVersions"
                                       :endpoint-host-prefix "runtime-")

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

(smithy/sdk/operation:define-operation search-image-sets :shape-name
                                       "SearchImageSets" :input
                                       search-image-sets-request :output
                                       search-image-sets-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/datastore/{datastoreId}/searchImageSets"
                                       :endpoint-host-prefix "runtime-")

(smithy/sdk/operation:define-operation start-dicomimport-job :shape-name
                                       "StartDICOMImportJob" :input
                                       start-dicomimport-job-request :output
                                       start-dicomimport-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/startDICOMImportJob/datastore/{datastoreId}")

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
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-image-set-metadata :shape-name
                                       "UpdateImageSetMetadata" :input
                                       update-image-set-metadata-request
                                       :output
                                       update-image-set-metadata-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/datastore/{datastoreId}/imageSet/{imageSetId}/updateImageSetMetadata"
                                       :endpoint-host-prefix "runtime-")
