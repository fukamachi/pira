(uiop/package:define-package #:pira/rekognition (:use)
                             (:export #:access-denied-exception #:age-range
                              #:asset #:assets #:associate-faces
                              #:associated-face #:associated-faces-list
                              #:attribute #:attributes #:audio-metadata
                              #:audio-metadata-list #:audit-image
                              #:audit-images #:audit-images-limit #:beard
                              #:black-frame #:body-part #:body-parts #:boolean
                              #:bounding-box #:bounding-box-height
                              #:bounding-box-width #:celebrity
                              #:celebrity-detail #:celebrity-list
                              #:celebrity-recognition
                              #:celebrity-recognition-sort-by
                              #:celebrity-recognitions #:challenge
                              #:challenge-preference #:challenge-preferences
                              #:challenge-type #:client-request-token
                              #:collection-id #:collection-id-list
                              #:compare-faces #:compare-faces-match
                              #:compare-faces-match-list
                              #:compare-faces-unmatch-list #:compared-face
                              #:compared-face-list #:compared-source-image-face
                              #:conflict-exception #:connected-home-label
                              #:connected-home-labels #:connected-home-settings
                              #:connected-home-settings-for-update
                              #:content-classifier #:content-classifiers
                              #:content-moderation-aggregate-by
                              #:content-moderation-detection
                              #:content-moderation-detections
                              #:content-moderation-sort-by #:content-type
                              #:content-types #:copy-project-version
                              #:covers-body-part #:create-collection
                              #:create-dataset #:create-face-liveness-session
                              #:create-face-liveness-session-request-settings
                              #:create-project #:create-project-version
                              #:create-stream-processor #:create-user
                              #:custom-label #:custom-labels
                              #:customization-feature
                              #:customization-feature-config
                              #:customization-feature-content-moderation-config
                              #:customization-features #:dataset-arn
                              #:dataset-changes #:dataset-description
                              #:dataset-entries #:dataset-entry #:dataset-label
                              #:dataset-label-description
                              #:dataset-label-descriptions
                              #:dataset-label-stats #:dataset-labels
                              #:dataset-metadata #:dataset-metadata-list
                              #:dataset-source #:dataset-stats #:dataset-status
                              #:dataset-status-message-code #:dataset-type
                              #:date-time #:degree #:delete-collection
                              #:delete-dataset #:delete-faces #:delete-project
                              #:delete-project-policy #:delete-project-version
                              #:delete-stream-processor #:delete-user
                              #:describe-collection #:describe-dataset
                              #:describe-project-versions #:describe-projects
                              #:describe-stream-processor
                              #:detect-custom-labels #:detect-faces
                              #:detect-labels #:detect-labels-feature-list
                              #:detect-labels-feature-name
                              #:detect-labels-image-background
                              #:detect-labels-image-foreground
                              #:detect-labels-image-properties
                              #:detect-labels-image-properties-settings
                              #:detect-labels-image-quality
                              #:detect-labels-max-dominant-colors
                              #:detect-labels-settings
                              #:detect-moderation-labels
                              #:detect-protective-equipment #:detect-text
                              #:detect-text-filters #:detection-filter
                              #:disassociate-faces #:disassociated-face
                              #:disassociated-faces-list #:distribute-dataset
                              #:distribute-dataset-entries
                              #:distribute-dataset-metadata-list
                              #:dominant-color #:dominant-colors #:emotion
                              #:emotion-name #:emotions #:equipment-detection
                              #:equipment-detections #:evaluation-result
                              #:extended-pagination-token #:external-image-id
                              #:eye-direction #:eye-open #:eyeglasses #:face
                              #:face-attributes #:face-detail
                              #:face-detail-list #:face-detection
                              #:face-detections #:face-id #:face-id-list
                              #:face-list #:face-match #:face-match-list
                              #:face-model-version-list #:face-occluded
                              #:face-record #:face-record-list
                              #:face-search-settings #:face-search-sort-by
                              #:float #:flow-definition-arn #:gender
                              #:gender-type #:general-labels-filter-list
                              #:general-labels-filter-value
                              #:general-labels-settings #:geometry
                              #:get-celebrity-info #:get-celebrity-recognition
                              #:get-content-moderation
                              #:get-content-moderation-request-metadata
                              #:get-face-detection
                              #:get-face-liveness-session-results
                              #:get-face-search #:get-label-detection
                              #:get-label-detection-request-metadata
                              #:get-media-analysis-job #:get-person-tracking
                              #:get-segment-detection #:get-text-detection
                              #:ground-truth-blob #:ground-truth-manifest
                              #:has-errors #:human-loop-activation-output
                              #:human-loop-activation-reason
                              #:human-loop-activation-reasons #:human-loop-arn
                              #:human-loop-config #:human-loop-data-attributes
                              #:human-loop-name
                              #:human-loop-quota-exceeded-exception
                              #:idempotent-parameter-mismatch-exception #:image
                              #:image-blob #:image-id #:image-quality
                              #:image-too-large-exception #:index-faces
                              #:index-faces-model-version #:inference-units
                              #:instance #:instances #:internal-server-error
                              #:invalid-image-format-exception
                              #:invalid-manifest-exception
                              #:invalid-pagination-token-exception
                              #:invalid-parameter-exception
                              #:invalid-policy-revision-id-exception
                              #:invalid-s3object-exception #:is-labeled
                              #:job-id #:job-tag #:kinesis-data-arn
                              #:kinesis-data-stream #:kinesis-video-arn
                              #:kinesis-video-stream
                              #:kinesis-video-stream-fragment-number
                              #:kinesis-video-stream-start-selector
                              #:kms-key-id #:known-gender #:known-gender-type
                              #:label #:label-alias #:label-aliases
                              #:label-categories #:label-category
                              #:label-detection #:label-detection-aggregate-by
                              #:label-detection-feature-list
                              #:label-detection-feature-name
                              #:label-detection-settings
                              #:label-detection-sort-by #:label-detections
                              #:labels #:landmark #:landmark-type #:landmarks
                              #:limit-exceeded-exception #:list-collections
                              #:list-dataset-entries
                              #:list-dataset-entries-page-size
                              #:list-dataset-labels
                              #:list-dataset-labels-page-size #:list-faces
                              #:list-media-analysis-jobs
                              #:list-media-analysis-jobs-page-size
                              #:list-project-policies
                              #:list-project-policies-page-size
                              #:list-stream-processors #:list-tags-for-resource
                              #:list-users #:liveness-image-blob
                              #:liveness-output-config #:liveness-s3key-prefix
                              #:liveness-session-id #:liveness-session-status
                              #:malformed-policy-document-exception
                              #:matched-user #:max-duration-in-seconds-ulong
                              #:max-faces #:max-faces-to-index
                              #:max-pixel-threshold #:max-results
                              #:max-user-results
                              #:media-analysis-detect-moderation-labels-config
                              #:media-analysis-input
                              #:media-analysis-job-description
                              #:media-analysis-job-descriptions
                              #:media-analysis-job-failure-code
                              #:media-analysis-job-failure-details
                              #:media-analysis-job-id #:media-analysis-job-name
                              #:media-analysis-job-status
                              #:media-analysis-manifest-summary
                              #:media-analysis-model-versions
                              #:media-analysis-operations-config
                              #:media-analysis-output-config
                              #:media-analysis-results
                              #:media-analysis-s3key-prefix
                              #:min-coverage-percentage #:moderation-label
                              #:moderation-labels #:mouth-open #:mustache
                              #:notification-channel #:orientation-correction
                              #:output-config #:page-size #:pagination-token
                              #:parent #:parents #:percent #:person-detail
                              #:person-detection #:person-detections
                              #:person-index #:person-match #:person-matches
                              #:person-tracking-sort-by #:point #:polygon
                              #:pose #:project-arn #:project-auto-update
                              #:project-description #:project-descriptions
                              #:project-name #:project-names #:project-policies
                              #:project-policy #:project-policy-document
                              #:project-policy-name
                              #:project-policy-revision-id #:project-status
                              #:project-version-arn
                              #:project-version-description
                              #:project-version-descriptions
                              #:project-version-id #:project-version-status
                              #:project-versions-page-size #:projects-page-size
                              #:protective-equipment-body-part
                              #:protective-equipment-person
                              #:protective-equipment-person-ids
                              #:protective-equipment-persons
                              #:protective-equipment-summarization-attributes
                              #:protective-equipment-summary
                              #:protective-equipment-type
                              #:protective-equipment-types
                              #:provisioned-throughput-exceeded-exception
                              #:put-project-policy #:quality-filter
                              #:query-string #:reason #:reasons
                              #:recognize-celebrities #:region-of-interest
                              #:regions-of-interest #:rekognition-service
                              #:rekognition-unique-id
                              #:resource-already-exists-exception
                              #:resource-arn #:resource-in-use-exception
                              #:resource-not-found-exception
                              #:resource-not-ready-exception #:role-arn
                              #:s3bucket #:s3destination #:s3key-prefix
                              #:s3object #:s3object-name #:s3object-version
                              #:snstopic-arn #:search-faces
                              #:search-faces-by-image #:search-users
                              #:search-users-by-image #:searched-face
                              #:searched-face-details #:searched-user
                              #:segment-confidence #:segment-detection
                              #:segment-detections #:segment-type
                              #:segment-type-info #:segment-types
                              #:segment-types-info
                              #:service-quota-exceeded-exception
                              #:session-not-found-exception #:shot-segment
                              #:smile #:start-celebrity-recognition
                              #:start-content-moderation #:start-face-detection
                              #:start-face-search #:start-label-detection
                              #:start-media-analysis-job
                              #:start-person-tracking #:start-project-version
                              #:start-segment-detection
                              #:start-segment-detection-filters
                              #:start-shot-detection-filter
                              #:start-stream-processor
                              #:start-stream-processor-session-id
                              #:start-technical-cue-detection-filter
                              #:start-text-detection
                              #:start-text-detection-filters #:status-message
                              #:stop-project-version #:stop-stream-processor
                              #:stream-processing-start-selector
                              #:stream-processing-stop-selector
                              #:stream-processor #:stream-processor-arn
                              #:stream-processor-data-sharing-preference
                              #:stream-processor-input #:stream-processor-list
                              #:stream-processor-name
                              #:stream-processor-notification-channel
                              #:stream-processor-output
                              #:stream-processor-parameter-to-delete
                              #:stream-processor-parameters-to-delete
                              #:stream-processor-settings
                              #:stream-processor-settings-for-update
                              #:stream-processor-status #:string #:summary
                              #:sunglasses
                              #:synthesized-json-human-loop-activation-conditions-evaluation-results
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:technical-cue-segment
                              #:technical-cue-type #:testing-data
                              #:testing-data-result #:text-detection
                              #:text-detection-list #:text-detection-result
                              #:text-detection-results #:text-types
                              #:throttling-exception #:timecode #:timestamp
                              #:training-data #:training-data-result #:uinteger
                              #:ulong #:unindexed-face #:unindexed-faces
                              #:unsearched-face #:unsearched-face-reason
                              #:unsearched-face-reasons #:unsearched-faces-list
                              #:unsuccessful-face-association
                              #:unsuccessful-face-association-list
                              #:unsuccessful-face-association-reason
                              #:unsuccessful-face-association-reasons
                              #:unsuccessful-face-deletion
                              #:unsuccessful-face-deletion-reason
                              #:unsuccessful-face-deletion-reasons
                              #:unsuccessful-face-deletions-list
                              #:unsuccessful-face-disassociation
                              #:unsuccessful-face-disassociation-list
                              #:unsuccessful-face-disassociation-reason
                              #:unsuccessful-face-disassociation-reasons
                              #:untag-resource #:update-dataset-entries
                              #:update-stream-processor #:url #:urls #:user
                              #:user-face-id-list #:user-id #:user-list
                              #:user-match #:user-match-list #:user-status
                              #:validation-data #:version #:version-description
                              #:version-name #:version-names #:versions #:video
                              #:video-color-range #:video-job-status
                              #:video-metadata #:video-metadata-list
                              #:video-too-large-exception #:rekognition-error))
(common-lisp:in-package #:pira/rekognition)

(common-lisp:define-condition rekognition-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service rekognition-service :shape-name
                                   "RekognitionService" :version "2016-06-27"
                                   :title "Amazon Rekognition" :operations
                                   '(associate-faces compare-faces
                                     copy-project-version create-collection
                                     create-dataset
                                     create-face-liveness-session
                                     create-project create-project-version
                                     create-stream-processor create-user
                                     delete-collection delete-dataset
                                     delete-faces delete-project
                                     delete-project-policy
                                     delete-project-version
                                     delete-stream-processor delete-user
                                     describe-collection describe-dataset
                                     describe-projects
                                     describe-project-versions
                                     describe-stream-processor
                                     detect-custom-labels detect-faces
                                     detect-labels detect-moderation-labels
                                     detect-protective-equipment detect-text
                                     disassociate-faces
                                     distribute-dataset-entries
                                     get-celebrity-info
                                     get-celebrity-recognition
                                     get-content-moderation get-face-detection
                                     get-face-liveness-session-results
                                     get-face-search get-label-detection
                                     get-media-analysis-job get-person-tracking
                                     get-segment-detection get-text-detection
                                     index-faces list-collections
                                     list-dataset-entries list-dataset-labels
                                     list-faces list-media-analysis-jobs
                                     list-project-policies
                                     list-stream-processors
                                     list-tags-for-resource list-users
                                     put-project-policy recognize-celebrities
                                     search-faces search-faces-by-image
                                     search-users search-users-by-image
                                     start-celebrity-recognition
                                     start-content-moderation
                                     start-face-detection start-face-search
                                     start-label-detection
                                     start-media-analysis-job
                                     start-person-tracking
                                     start-project-version
                                     start-segment-detection
                                     start-stream-processor
                                     start-text-detection stop-project-version
                                     stop-stream-processor tag-resource
                                     untag-resource update-dataset-entries
                                     update-stream-processor)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Rekognition")
                                      ("arnNamespace" . "rekognition")
                                      ("cloudFormationName" . "Rekognition")
                                      ("cloudTrailEventSource"
                                       . "rekognition.amazonaws.com")
                                      ("endpointPrefix" . "rekognition"))
                                     ("aws.auth#sigv4"
                                      ("name" . "rekognition"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-structure age-range common-lisp:nil
                                    ((low :target-type uinteger :member-name
                                      "Low")
                                     (high :target-type uinteger :member-name
                                      "High"))
                                    (:shape-name "AgeRange"))

(smithy/sdk/shapes:define-structure asset common-lisp:nil
                                    ((ground-truth-manifest :target-type
                                      ground-truth-manifest :member-name
                                      "GroundTruthManifest"))
                                    (:shape-name "Asset"))

(smithy/sdk/shapes:define-list assets :member asset)

(smithy/sdk/shapes:define-input associate-faces-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId")
                                 (user-id :target-type user-id :required
                                  common-lisp:t :member-name "UserId")
                                 (face-ids :target-type user-face-id-list
                                  :required common-lisp:t :member-name
                                  "FaceIds")
                                 (user-match-threshold :target-type percent
                                  :member-name "UserMatchThreshold")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "AssociateFacesRequest"))

(smithy/sdk/shapes:define-output associate-faces-response common-lisp:nil
                                 ((associated-faces :target-type
                                   associated-faces-list :member-name
                                   "AssociatedFaces")
                                  (unsuccessful-face-associations :target-type
                                   unsuccessful-face-association-list
                                   :member-name "UnsuccessfulFaceAssociations")
                                  (user-status :target-type user-status
                                   :member-name "UserStatus"))
                                 (:shape-name "AssociateFacesResponse"))

(smithy/sdk/shapes:define-structure associated-face common-lisp:nil
                                    ((face-id :target-type face-id :member-name
                                      "FaceId"))
                                    (:shape-name "AssociatedFace"))

(smithy/sdk/shapes:define-list associated-faces-list :member associated-face)

(smithy/sdk/shapes:define-enum attribute
    common-lisp:nil
  (:default "DEFAULT")
  (:all "ALL")
  (:age-range "AGE_RANGE")
  (:beard "BEARD")
  (:emotions "EMOTIONS")
  (:eye-direction "EYE_DIRECTION")
  (:eyeglasses "EYEGLASSES")
  (:eyes-open "EYES_OPEN")
  (:gender "GENDER")
  (:mouth-open "MOUTH_OPEN")
  (:mustache "MUSTACHE")
  (:face-occluded "FACE_OCCLUDED")
  (:smile "SMILE")
  (:sunglasses "SUNGLASSES"))

(smithy/sdk/shapes:define-list attributes :member attribute)

(smithy/sdk/shapes:define-structure audio-metadata common-lisp:nil
                                    ((codec :target-type string :member-name
                                      "Codec")
                                     (duration-millis :target-type ulong
                                      :member-name "DurationMillis")
                                     (sample-rate :target-type ulong
                                      :member-name "SampleRate")
                                     (number-of-channels :target-type ulong
                                      :member-name "NumberOfChannels"))
                                    (:shape-name "AudioMetadata"))

(smithy/sdk/shapes:define-list audio-metadata-list :member audio-metadata)

(smithy/sdk/shapes:define-structure audit-image common-lisp:nil
                                    ((bytes :target-type liveness-image-blob
                                      :member-name "Bytes")
                                     (s3object :target-type s3object
                                      :member-name "S3Object")
                                     (bounding-box :target-type bounding-box
                                      :member-name "BoundingBox"))
                                    (:shape-name "AuditImage"))

(smithy/sdk/shapes:define-list audit-images :member audit-image)

(smithy/sdk/shapes:define-type audit-images-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure beard common-lisp:nil
                                    ((value :target-type boolean :member-name
                                      "Value")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "Beard"))

(smithy/sdk/shapes:define-structure black-frame common-lisp:nil
                                    ((max-pixel-threshold :target-type
                                      max-pixel-threshold :member-name
                                      "MaxPixelThreshold")
                                     (min-coverage-percentage :target-type
                                      min-coverage-percentage :member-name
                                      "MinCoveragePercentage"))
                                    (:shape-name "BlackFrame"))

(smithy/sdk/shapes:define-enum body-part
    common-lisp:nil
  (:face "FACE")
  (:head "HEAD")
  (:left-hand "LEFT_HAND")
  (:right-hand "RIGHT_HAND"))

(smithy/sdk/shapes:define-list body-parts :member
                               protective-equipment-body-part)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure bounding-box common-lisp:nil
                                    ((width :target-type float :member-name
                                      "Width")
                                     (height :target-type float :member-name
                                      "Height")
                                     (left :target-type float :member-name
                                      "Left")
                                     (top :target-type float :member-name
                                      "Top"))
                                    (:shape-name "BoundingBox"))

(smithy/sdk/shapes:define-type bounding-box-height
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type bounding-box-width smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure celebrity common-lisp:nil
                                    ((urls :target-type urls :member-name
                                      "Urls")
                                     (name :target-type string :member-name
                                      "Name")
                                     (id :target-type rekognition-unique-id
                                      :member-name "Id")
                                     (face :target-type compared-face
                                      :member-name "Face")
                                     (match-confidence :target-type percent
                                      :member-name "MatchConfidence")
                                     (known-gender :target-type known-gender
                                      :member-name "KnownGender"))
                                    (:shape-name "Celebrity"))

(smithy/sdk/shapes:define-structure celebrity-detail common-lisp:nil
                                    ((urls :target-type urls :member-name
                                      "Urls")
                                     (name :target-type string :member-name
                                      "Name")
                                     (id :target-type rekognition-unique-id
                                      :member-name "Id")
                                     (confidence :target-type percent
                                      :member-name "Confidence")
                                     (bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (face :target-type face-detail
                                      :member-name "Face")
                                     (known-gender :target-type known-gender
                                      :member-name "KnownGender"))
                                    (:shape-name "CelebrityDetail"))

(smithy/sdk/shapes:define-list celebrity-list :member celebrity)

(smithy/sdk/shapes:define-structure celebrity-recognition common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (celebrity :target-type celebrity-detail
                                      :member-name "Celebrity"))
                                    (:shape-name "CelebrityRecognition"))

(smithy/sdk/shapes:define-enum celebrity-recognition-sort-by
    common-lisp:nil
  (:id "ID")
  (:timestamp "TIMESTAMP"))

(smithy/sdk/shapes:define-list celebrity-recognitions :member
                               celebrity-recognition)

(smithy/sdk/shapes:define-structure challenge common-lisp:nil
                                    ((type :target-type challenge-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (version :target-type version :required
                                      common-lisp:t :member-name "Version"))
                                    (:shape-name "Challenge"))

(smithy/sdk/shapes:define-structure challenge-preference common-lisp:nil
                                    ((type :target-type challenge-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (versions :target-type versions
                                      :member-name "Versions"))
                                    (:shape-name "ChallengePreference"))

(smithy/sdk/shapes:define-list challenge-preferences :member
                               challenge-preference)

(smithy/sdk/shapes:define-enum challenge-type
    common-lisp:nil
  (:face-movement-and-light-challenge "FaceMovementAndLightChallenge")
  (:face-movement-challenge "FaceMovementChallenge"))

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type collection-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list collection-id-list :member collection-id)

(smithy/sdk/shapes:define-structure compare-faces-match common-lisp:nil
                                    ((similarity :target-type percent
                                      :member-name "Similarity")
                                     (face :target-type compared-face
                                      :member-name "Face"))
                                    (:shape-name "CompareFacesMatch"))

(smithy/sdk/shapes:define-list compare-faces-match-list :member
                               compare-faces-match)

(smithy/sdk/shapes:define-input compare-faces-request common-lisp:nil
                                ((source-image :target-type image :required
                                  common-lisp:t :member-name "SourceImage")
                                 (target-image :target-type image :required
                                  common-lisp:t :member-name "TargetImage")
                                 (similarity-threshold :target-type percent
                                  :member-name "SimilarityThreshold")
                                 (quality-filter :target-type quality-filter
                                  :member-name "QualityFilter"))
                                (:shape-name "CompareFacesRequest"))

(smithy/sdk/shapes:define-output compare-faces-response common-lisp:nil
                                 ((source-image-face :target-type
                                   compared-source-image-face :member-name
                                   "SourceImageFace")
                                  (face-matches :target-type
                                   compare-faces-match-list :member-name
                                   "FaceMatches")
                                  (unmatched-faces :target-type
                                   compare-faces-unmatch-list :member-name
                                   "UnmatchedFaces")
                                  (source-image-orientation-correction
                                   :target-type orientation-correction
                                   :member-name
                                   "SourceImageOrientationCorrection")
                                  (target-image-orientation-correction
                                   :target-type orientation-correction
                                   :member-name
                                   "TargetImageOrientationCorrection"))
                                 (:shape-name "CompareFacesResponse"))

(smithy/sdk/shapes:define-list compare-faces-unmatch-list :member compared-face)

(smithy/sdk/shapes:define-structure compared-face common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (confidence :target-type percent
                                      :member-name "Confidence")
                                     (landmarks :target-type landmarks
                                      :member-name "Landmarks")
                                     (pose :target-type pose :member-name
                                      "Pose")
                                     (quality :target-type image-quality
                                      :member-name "Quality")
                                     (emotions :target-type emotions
                                      :member-name "Emotions")
                                     (smile :target-type smile :member-name
                                      "Smile"))
                                    (:shape-name "ComparedFace"))

(smithy/sdk/shapes:define-list compared-face-list :member compared-face)

(smithy/sdk/shapes:define-structure compared-source-image-face common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "ComparedSourceImageFace"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "ConflictException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-type connected-home-label
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connected-home-labels :member
                               connected-home-label)

(smithy/sdk/shapes:define-structure connected-home-settings common-lisp:nil
                                    ((labels :target-type connected-home-labels
                                      :required common-lisp:t :member-name
                                      "Labels")
                                     (min-confidence :target-type percent
                                      :member-name "MinConfidence"))
                                    (:shape-name "ConnectedHomeSettings"))

(smithy/sdk/shapes:define-structure connected-home-settings-for-update
                                    common-lisp:nil
                                    ((labels :target-type connected-home-labels
                                      :member-name "Labels")
                                     (min-confidence :target-type percent
                                      :member-name "MinConfidence"))
                                    (:shape-name
                                     "ConnectedHomeSettingsForUpdate"))

(smithy/sdk/shapes:define-enum content-classifier
    common-lisp:nil
  (:free-of-personally-identifiable-information
   "FreeOfPersonallyIdentifiableInformation")
  (:free-of-adult-content "FreeOfAdultContent"))

(smithy/sdk/shapes:define-list content-classifiers :member content-classifier)

(smithy/sdk/shapes:define-enum content-moderation-aggregate-by
    common-lisp:nil
  (:timestamps "TIMESTAMPS")
  (:segments "SEGMENTS"))

(smithy/sdk/shapes:define-structure content-moderation-detection
                                    common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (moderation-label :target-type
                                      moderation-label :member-name
                                      "ModerationLabel")
                                     (start-timestamp-millis :target-type ulong
                                      :member-name "StartTimestampMillis")
                                     (end-timestamp-millis :target-type ulong
                                      :member-name "EndTimestampMillis")
                                     (duration-millis :target-type ulong
                                      :member-name "DurationMillis")
                                     (content-types :target-type content-types
                                      :member-name "ContentTypes"))
                                    (:shape-name "ContentModerationDetection"))

(smithy/sdk/shapes:define-list content-moderation-detections :member
                               content-moderation-detection)

(smithy/sdk/shapes:define-enum content-moderation-sort-by
    common-lisp:nil
  (:name "NAME")
  (:timestamp "TIMESTAMP"))

(smithy/sdk/shapes:define-structure content-type common-lisp:nil
                                    ((confidence :target-type percent
                                      :member-name "Confidence")
                                     (name :target-type string :member-name
                                      "Name"))
                                    (:shape-name "ContentType"))

(smithy/sdk/shapes:define-list content-types :member content-type)

(smithy/sdk/shapes:define-input copy-project-version-request common-lisp:nil
                                ((source-project-arn :target-type project-arn
                                  :required common-lisp:t :member-name
                                  "SourceProjectArn")
                                 (source-project-version-arn :target-type
                                  project-version-arn :required common-lisp:t
                                  :member-name "SourceProjectVersionArn")
                                 (destination-project-arn :target-type
                                  project-arn :required common-lisp:t
                                  :member-name "DestinationProjectArn")
                                 (version-name :target-type version-name
                                  :required common-lisp:t :member-name
                                  "VersionName")
                                 (output-config :target-type output-config
                                  :required common-lisp:t :member-name
                                  "OutputConfig")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "KmsKeyId"))
                                (:shape-name "CopyProjectVersionRequest"))

(smithy/sdk/shapes:define-output copy-project-version-response common-lisp:nil
                                 ((project-version-arn :target-type
                                   project-version-arn :member-name
                                   "ProjectVersionArn"))
                                 (:shape-name "CopyProjectVersionResponse"))

(smithy/sdk/shapes:define-structure covers-body-part common-lisp:nil
                                    ((confidence :target-type percent
                                      :member-name "Confidence")
                                     (value :target-type boolean :member-name
                                      "Value"))
                                    (:shape-name "CoversBodyPart"))

(smithy/sdk/shapes:define-input create-collection-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateCollectionRequest"))

(smithy/sdk/shapes:define-output create-collection-response common-lisp:nil
                                 ((status-code :target-type uinteger
                                   :member-name "StatusCode")
                                  (collection-arn :target-type string
                                   :member-name "CollectionArn")
                                  (face-model-version :target-type string
                                   :member-name "FaceModelVersion"))
                                 (:shape-name "CreateCollectionResponse"))

(smithy/sdk/shapes:define-input create-dataset-request common-lisp:nil
                                ((dataset-source :target-type dataset-source
                                  :member-name "DatasetSource")
                                 (dataset-type :target-type dataset-type
                                  :required common-lisp:t :member-name
                                  "DatasetType")
                                 (project-arn :target-type project-arn
                                  :required common-lisp:t :member-name
                                  "ProjectArn")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateDatasetRequest"))

(smithy/sdk/shapes:define-output create-dataset-response common-lisp:nil
                                 ((dataset-arn :target-type dataset-arn
                                   :member-name "DatasetArn"))
                                 (:shape-name "CreateDatasetResponse"))

(smithy/sdk/shapes:define-input create-face-liveness-session-request
                                common-lisp:nil
                                ((kms-key-id :target-type kms-key-id
                                  :member-name "KmsKeyId")
                                 (settings :target-type
                                  create-face-liveness-session-request-settings
                                  :member-name "Settings")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name
                                 "CreateFaceLivenessSessionRequest"))

(smithy/sdk/shapes:define-structure
 create-face-liveness-session-request-settings common-lisp:nil
 ((output-config :target-type liveness-output-config :member-name
   "OutputConfig")
  (audit-images-limit :target-type audit-images-limit :member-name
   "AuditImagesLimit")
  (challenge-preferences :target-type challenge-preferences :member-name
   "ChallengePreferences"))
 (:shape-name "CreateFaceLivenessSessionRequestSettings"))

(smithy/sdk/shapes:define-output create-face-liveness-session-response
                                 common-lisp:nil
                                 ((session-id :target-type liveness-session-id
                                   :required common-lisp:t :member-name
                                   "SessionId"))
                                 (:shape-name
                                  "CreateFaceLivenessSessionResponse"))

(smithy/sdk/shapes:define-input create-project-request common-lisp:nil
                                ((project-name :target-type project-name
                                  :required common-lisp:t :member-name
                                  "ProjectName")
                                 (feature :target-type customization-feature
                                  :member-name "Feature")
                                 (auto-update :target-type project-auto-update
                                  :member-name "AutoUpdate")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateProjectRequest"))

(smithy/sdk/shapes:define-output create-project-response common-lisp:nil
                                 ((project-arn :target-type project-arn
                                   :member-name "ProjectArn"))
                                 (:shape-name "CreateProjectResponse"))

(smithy/sdk/shapes:define-input create-project-version-request common-lisp:nil
                                ((project-arn :target-type project-arn
                                  :required common-lisp:t :member-name
                                  "ProjectArn")
                                 (version-name :target-type version-name
                                  :required common-lisp:t :member-name
                                  "VersionName")
                                 (output-config :target-type output-config
                                  :required common-lisp:t :member-name
                                  "OutputConfig")
                                 (training-data :target-type training-data
                                  :member-name "TrainingData")
                                 (testing-data :target-type testing-data
                                  :member-name "TestingData")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "KmsKeyId")
                                 (version-description :target-type
                                  version-description :member-name
                                  "VersionDescription")
                                 (feature-config :target-type
                                  customization-feature-config :member-name
                                  "FeatureConfig"))
                                (:shape-name "CreateProjectVersionRequest"))

(smithy/sdk/shapes:define-output create-project-version-response
                                 common-lisp:nil
                                 ((project-version-arn :target-type
                                   project-version-arn :member-name
                                   "ProjectVersionArn"))
                                 (:shape-name "CreateProjectVersionResponse"))

(smithy/sdk/shapes:define-input create-stream-processor-request common-lisp:nil
                                ((input :target-type stream-processor-input
                                  :required common-lisp:t :member-name "Input")
                                 (output :target-type stream-processor-output
                                  :required common-lisp:t :member-name
                                  "Output")
                                 (name :target-type stream-processor-name
                                  :required common-lisp:t :member-name "Name")
                                 (settings :target-type
                                  stream-processor-settings :required
                                  common-lisp:t :member-name "Settings")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (notification-channel :target-type
                                  stream-processor-notification-channel
                                  :member-name "NotificationChannel")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "KmsKeyId")
                                 (regions-of-interest :target-type
                                  regions-of-interest :member-name
                                  "RegionsOfInterest")
                                 (data-sharing-preference :target-type
                                  stream-processor-data-sharing-preference
                                  :member-name "DataSharingPreference"))
                                (:shape-name "CreateStreamProcessorRequest"))

(smithy/sdk/shapes:define-output create-stream-processor-response
                                 common-lisp:nil
                                 ((stream-processor-arn :target-type
                                   stream-processor-arn :member-name
                                   "StreamProcessorArn"))
                                 (:shape-name "CreateStreamProcessorResponse"))

(smithy/sdk/shapes:define-input create-user-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId")
                                 (user-id :target-type user-id :required
                                  common-lisp:t :member-name "UserId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "CreateUserRequest"))

(smithy/sdk/shapes:define-output create-user-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CreateUserResponse"))

(smithy/sdk/shapes:define-structure custom-label common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (confidence :target-type percent
                                      :member-name "Confidence")
                                     (geometry :target-type geometry
                                      :member-name "Geometry"))
                                    (:shape-name "CustomLabel"))

(smithy/sdk/shapes:define-list custom-labels :member custom-label)

(smithy/sdk/shapes:define-enum customization-feature
    common-lisp:nil
  (:content-moderation "CONTENT_MODERATION")
  (:custom-labels "CUSTOM_LABELS"))

(smithy/sdk/shapes:define-structure customization-feature-config
                                    common-lisp:nil
                                    ((content-moderation :target-type
                                      customization-feature-content-moderation-config
                                      :member-name "ContentModeration"))
                                    (:shape-name "CustomizationFeatureConfig"))

(smithy/sdk/shapes:define-structure
 customization-feature-content-moderation-config common-lisp:nil
 ((confidence-threshold :target-type percent :member-name
   "ConfidenceThreshold"))
 (:shape-name "CustomizationFeatureContentModerationConfig"))

(smithy/sdk/shapes:define-list customization-features :member
                               customization-feature)

(smithy/sdk/shapes:define-type dataset-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dataset-changes common-lisp:nil
                                    ((ground-truth :target-type
                                      ground-truth-blob :required common-lisp:t
                                      :member-name "GroundTruth"))
                                    (:shape-name "DatasetChanges"))

(smithy/sdk/shapes:define-structure dataset-description common-lisp:nil
                                    ((creation-timestamp :target-type date-time
                                      :member-name "CreationTimestamp")
                                     (last-updated-timestamp :target-type
                                      date-time :member-name
                                      "LastUpdatedTimestamp")
                                     (status :target-type dataset-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage")
                                     (status-message-code :target-type
                                      dataset-status-message-code :member-name
                                      "StatusMessageCode")
                                     (dataset-stats :target-type dataset-stats
                                      :member-name "DatasetStats"))
                                    (:shape-name "DatasetDescription"))

(smithy/sdk/shapes:define-list dataset-entries :member dataset-entry)

(smithy/sdk/shapes:define-type dataset-entry smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dataset-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dataset-label-description common-lisp:nil
                                    ((label-name :target-type dataset-label
                                      :member-name "LabelName")
                                     (label-stats :target-type
                                      dataset-label-stats :member-name
                                      "LabelStats"))
                                    (:shape-name "DatasetLabelDescription"))

(smithy/sdk/shapes:define-list dataset-label-descriptions :member
                               dataset-label-description)

(smithy/sdk/shapes:define-structure dataset-label-stats common-lisp:nil
                                    ((entry-count :target-type uinteger
                                      :member-name "EntryCount")
                                     (bounding-box-count :target-type uinteger
                                      :member-name "BoundingBoxCount"))
                                    (:shape-name "DatasetLabelStats"))

(smithy/sdk/shapes:define-list dataset-labels :member dataset-label)

(smithy/sdk/shapes:define-structure dataset-metadata common-lisp:nil
                                    ((creation-timestamp :target-type date-time
                                      :member-name "CreationTimestamp")
                                     (dataset-type :target-type dataset-type
                                      :member-name "DatasetType")
                                     (dataset-arn :target-type dataset-arn
                                      :member-name "DatasetArn")
                                     (status :target-type dataset-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage")
                                     (status-message-code :target-type
                                      dataset-status-message-code :member-name
                                      "StatusMessageCode"))
                                    (:shape-name "DatasetMetadata"))

(smithy/sdk/shapes:define-list dataset-metadata-list :member dataset-metadata)

(smithy/sdk/shapes:define-structure dataset-source common-lisp:nil
                                    ((ground-truth-manifest :target-type
                                      ground-truth-manifest :member-name
                                      "GroundTruthManifest")
                                     (dataset-arn :target-type dataset-arn
                                      :member-name "DatasetArn"))
                                    (:shape-name "DatasetSource"))

(smithy/sdk/shapes:define-structure dataset-stats common-lisp:nil
                                    ((labeled-entries :target-type uinteger
                                      :member-name "LabeledEntries")
                                     (total-entries :target-type uinteger
                                      :member-name "TotalEntries")
                                     (total-labels :target-type uinteger
                                      :member-name "TotalLabels")
                                     (error-entries :target-type uinteger
                                      :member-name "ErrorEntries"))
                                    (:shape-name "DatasetStats"))

(smithy/sdk/shapes:define-enum dataset-status
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-complete "CREATE_COMPLETE")
  (:create-failed "CREATE_FAILED")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-complete "UPDATE_COMPLETE")
  (:update-failed "UPDATE_FAILED")
  (:delete-in-progress "DELETE_IN_PROGRESS"))

(smithy/sdk/shapes:define-enum dataset-status-message-code
    common-lisp:nil
  (:success "SUCCESS")
  (:service-error "SERVICE_ERROR")
  (:client-error "CLIENT_ERROR"))

(smithy/sdk/shapes:define-enum dataset-type
    common-lisp:nil
  (:train "TRAIN")
  (:test "TEST"))

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type degree smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-input delete-collection-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId"))
                                (:shape-name "DeleteCollectionRequest"))

(smithy/sdk/shapes:define-output delete-collection-response common-lisp:nil
                                 ((status-code :target-type uinteger
                                   :member-name "StatusCode"))
                                 (:shape-name "DeleteCollectionResponse"))

(smithy/sdk/shapes:define-input delete-dataset-request common-lisp:nil
                                ((dataset-arn :target-type dataset-arn
                                  :required common-lisp:t :member-name
                                  "DatasetArn"))
                                (:shape-name "DeleteDatasetRequest"))

(smithy/sdk/shapes:define-output delete-dataset-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDatasetResponse"))

(smithy/sdk/shapes:define-input delete-faces-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId")
                                 (face-ids :target-type face-id-list :required
                                  common-lisp:t :member-name "FaceIds"))
                                (:shape-name "DeleteFacesRequest"))

(smithy/sdk/shapes:define-output delete-faces-response common-lisp:nil
                                 ((deleted-faces :target-type face-id-list
                                   :member-name "DeletedFaces")
                                  (unsuccessful-face-deletions :target-type
                                   unsuccessful-face-deletions-list
                                   :member-name "UnsuccessfulFaceDeletions"))
                                 (:shape-name "DeleteFacesResponse"))

(smithy/sdk/shapes:define-input delete-project-policy-request common-lisp:nil
                                ((project-arn :target-type project-arn
                                  :required common-lisp:t :member-name
                                  "ProjectArn")
                                 (policy-name :target-type project-policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName")
                                 (policy-revision-id :target-type
                                  project-policy-revision-id :member-name
                                  "PolicyRevisionId"))
                                (:shape-name "DeleteProjectPolicyRequest"))

(smithy/sdk/shapes:define-output delete-project-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteProjectPolicyResponse"))

(smithy/sdk/shapes:define-input delete-project-request common-lisp:nil
                                ((project-arn :target-type project-arn
                                  :required common-lisp:t :member-name
                                  "ProjectArn"))
                                (:shape-name "DeleteProjectRequest"))

(smithy/sdk/shapes:define-output delete-project-response common-lisp:nil
                                 ((status :target-type project-status
                                   :member-name "Status"))
                                 (:shape-name "DeleteProjectResponse"))

(smithy/sdk/shapes:define-input delete-project-version-request common-lisp:nil
                                ((project-version-arn :target-type
                                  project-version-arn :required common-lisp:t
                                  :member-name "ProjectVersionArn"))
                                (:shape-name "DeleteProjectVersionRequest"))

(smithy/sdk/shapes:define-output delete-project-version-response
                                 common-lisp:nil
                                 ((status :target-type project-version-status
                                   :member-name "Status"))
                                 (:shape-name "DeleteProjectVersionResponse"))

(smithy/sdk/shapes:define-input delete-stream-processor-request common-lisp:nil
                                ((name :target-type stream-processor-name
                                  :required common-lisp:t :member-name "Name"))
                                (:shape-name "DeleteStreamProcessorRequest"))

(smithy/sdk/shapes:define-output delete-stream-processor-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteStreamProcessorResponse"))

(smithy/sdk/shapes:define-input delete-user-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId")
                                 (user-id :target-type user-id :required
                                  common-lisp:t :member-name "UserId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken"))
                                (:shape-name "DeleteUserRequest"))

(smithy/sdk/shapes:define-output delete-user-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteUserResponse"))

(smithy/sdk/shapes:define-input describe-collection-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId"))
                                (:shape-name "DescribeCollectionRequest"))

(smithy/sdk/shapes:define-output describe-collection-response common-lisp:nil
                                 ((face-count :target-type ulong :member-name
                                   "FaceCount")
                                  (face-model-version :target-type string
                                   :member-name "FaceModelVersion")
                                  (collection-arn :target-type string
                                   :member-name "CollectionARN")
                                  (creation-timestamp :target-type date-time
                                   :member-name "CreationTimestamp")
                                  (user-count :target-type ulong :member-name
                                   "UserCount"))
                                 (:shape-name "DescribeCollectionResponse"))

(smithy/sdk/shapes:define-input describe-dataset-request common-lisp:nil
                                ((dataset-arn :target-type dataset-arn
                                  :required common-lisp:t :member-name
                                  "DatasetArn"))
                                (:shape-name "DescribeDatasetRequest"))

(smithy/sdk/shapes:define-output describe-dataset-response common-lisp:nil
                                 ((dataset-description :target-type
                                   dataset-description :member-name
                                   "DatasetDescription"))
                                 (:shape-name "DescribeDatasetResponse"))

(smithy/sdk/shapes:define-input describe-project-versions-request
                                common-lisp:nil
                                ((project-arn :target-type project-arn
                                  :required common-lisp:t :member-name
                                  "ProjectArn")
                                 (version-names :target-type version-names
                                  :member-name "VersionNames")
                                 (next-token :target-type
                                  extended-pagination-token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  project-versions-page-size :member-name
                                  "MaxResults"))
                                (:shape-name "DescribeProjectVersionsRequest"))

(smithy/sdk/shapes:define-output describe-project-versions-response
                                 common-lisp:nil
                                 ((project-version-descriptions :target-type
                                   project-version-descriptions :member-name
                                   "ProjectVersionDescriptions")
                                  (next-token :target-type
                                   extended-pagination-token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "DescribeProjectVersionsResponse"))

(smithy/sdk/shapes:define-input describe-projects-request common-lisp:nil
                                ((next-token :target-type
                                  extended-pagination-token :member-name
                                  "NextToken")
                                 (max-results :target-type projects-page-size
                                  :member-name "MaxResults")
                                 (project-names :target-type project-names
                                  :member-name "ProjectNames")
                                 (features :target-type customization-features
                                  :member-name "Features"))
                                (:shape-name "DescribeProjectsRequest"))

(smithy/sdk/shapes:define-output describe-projects-response common-lisp:nil
                                 ((project-descriptions :target-type
                                   project-descriptions :member-name
                                   "ProjectDescriptions")
                                  (next-token :target-type
                                   extended-pagination-token :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeProjectsResponse"))

(smithy/sdk/shapes:define-input describe-stream-processor-request
                                common-lisp:nil
                                ((name :target-type stream-processor-name
                                  :required common-lisp:t :member-name "Name"))
                                (:shape-name "DescribeStreamProcessorRequest"))

(smithy/sdk/shapes:define-output describe-stream-processor-response
                                 common-lisp:nil
                                 ((name :target-type stream-processor-name
                                   :member-name "Name")
                                  (stream-processor-arn :target-type
                                   stream-processor-arn :member-name
                                   "StreamProcessorArn")
                                  (status :target-type stream-processor-status
                                   :member-name "Status")
                                  (status-message :target-type string
                                   :member-name "StatusMessage")
                                  (creation-timestamp :target-type date-time
                                   :member-name "CreationTimestamp")
                                  (last-update-timestamp :target-type date-time
                                   :member-name "LastUpdateTimestamp")
                                  (input :target-type stream-processor-input
                                   :member-name "Input")
                                  (output :target-type stream-processor-output
                                   :member-name "Output")
                                  (role-arn :target-type role-arn :member-name
                                   "RoleArn")
                                  (settings :target-type
                                   stream-processor-settings :member-name
                                   "Settings")
                                  (notification-channel :target-type
                                   stream-processor-notification-channel
                                   :member-name "NotificationChannel")
                                  (kms-key-id :target-type kms-key-id
                                   :member-name "KmsKeyId")
                                  (regions-of-interest :target-type
                                   regions-of-interest :member-name
                                   "RegionsOfInterest")
                                  (data-sharing-preference :target-type
                                   stream-processor-data-sharing-preference
                                   :member-name "DataSharingPreference"))
                                 (:shape-name
                                  "DescribeStreamProcessorResponse"))

(smithy/sdk/shapes:define-input detect-custom-labels-request common-lisp:nil
                                ((project-version-arn :target-type
                                  project-version-arn :required common-lisp:t
                                  :member-name "ProjectVersionArn")
                                 (image :target-type image :required
                                  common-lisp:t :member-name "Image")
                                 (max-results :target-type uinteger
                                  :member-name "MaxResults")
                                 (min-confidence :target-type percent
                                  :member-name "MinConfidence"))
                                (:shape-name "DetectCustomLabelsRequest"))

(smithy/sdk/shapes:define-output detect-custom-labels-response common-lisp:nil
                                 ((custom-labels :target-type custom-labels
                                   :member-name "CustomLabels"))
                                 (:shape-name "DetectCustomLabelsResponse"))

(smithy/sdk/shapes:define-input detect-faces-request common-lisp:nil
                                ((image :target-type image :required
                                  common-lisp:t :member-name "Image")
                                 (attributes :target-type attributes
                                  :member-name "Attributes"))
                                (:shape-name "DetectFacesRequest"))

(smithy/sdk/shapes:define-output detect-faces-response common-lisp:nil
                                 ((face-details :target-type face-detail-list
                                   :member-name "FaceDetails")
                                  (orientation-correction :target-type
                                   orientation-correction :member-name
                                   "OrientationCorrection"))
                                 (:shape-name "DetectFacesResponse"))

(smithy/sdk/shapes:define-list detect-labels-feature-list :member
                               detect-labels-feature-name)

(smithy/sdk/shapes:define-enum detect-labels-feature-name
    common-lisp:nil
  (:general-labels "GENERAL_LABELS")
  (:image-properties "IMAGE_PROPERTIES"))

(smithy/sdk/shapes:define-structure detect-labels-image-background
                                    common-lisp:nil
                                    ((quality :target-type
                                      detect-labels-image-quality :member-name
                                      "Quality")
                                     (dominant-colors :target-type
                                      dominant-colors :member-name
                                      "DominantColors"))
                                    (:shape-name "DetectLabelsImageBackground"))

(smithy/sdk/shapes:define-structure detect-labels-image-foreground
                                    common-lisp:nil
                                    ((quality :target-type
                                      detect-labels-image-quality :member-name
                                      "Quality")
                                     (dominant-colors :target-type
                                      dominant-colors :member-name
                                      "DominantColors"))
                                    (:shape-name "DetectLabelsImageForeground"))

(smithy/sdk/shapes:define-structure detect-labels-image-properties
                                    common-lisp:nil
                                    ((quality :target-type
                                      detect-labels-image-quality :member-name
                                      "Quality")
                                     (dominant-colors :target-type
                                      dominant-colors :member-name
                                      "DominantColors")
                                     (foreground :target-type
                                      detect-labels-image-foreground
                                      :member-name "Foreground")
                                     (background :target-type
                                      detect-labels-image-background
                                      :member-name "Background"))
                                    (:shape-name "DetectLabelsImageProperties"))

(smithy/sdk/shapes:define-structure detect-labels-image-properties-settings
                                    common-lisp:nil
                                    ((max-dominant-colors :target-type
                                      detect-labels-max-dominant-colors
                                      :member-name "MaxDominantColors"))
                                    (:shape-name
                                     "DetectLabelsImagePropertiesSettings"))

(smithy/sdk/shapes:define-structure detect-labels-image-quality common-lisp:nil
                                    ((brightness :target-type float
                                      :member-name "Brightness")
                                     (sharpness :target-type float :member-name
                                      "Sharpness")
                                     (contrast :target-type float :member-name
                                      "Contrast"))
                                    (:shape-name "DetectLabelsImageQuality"))

(smithy/sdk/shapes:define-type detect-labels-max-dominant-colors
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input detect-labels-request common-lisp:nil
                                ((image :target-type image :required
                                  common-lisp:t :member-name "Image")
                                 (max-labels :target-type uinteger :member-name
                                  "MaxLabels")
                                 (min-confidence :target-type percent
                                  :member-name "MinConfidence")
                                 (features :target-type
                                  detect-labels-feature-list :member-name
                                  "Features")
                                 (settings :target-type detect-labels-settings
                                  :member-name "Settings"))
                                (:shape-name "DetectLabelsRequest"))

(smithy/sdk/shapes:define-output detect-labels-response common-lisp:nil
                                 ((labels :target-type labels :member-name
                                   "Labels")
                                  (orientation-correction :target-type
                                   orientation-correction :member-name
                                   "OrientationCorrection")
                                  (label-model-version :target-type string
                                   :member-name "LabelModelVersion")
                                  (image-properties :target-type
                                   detect-labels-image-properties :member-name
                                   "ImageProperties"))
                                 (:shape-name "DetectLabelsResponse"))

(smithy/sdk/shapes:define-structure detect-labels-settings common-lisp:nil
                                    ((general-labels :target-type
                                      general-labels-settings :member-name
                                      "GeneralLabels")
                                     (image-properties :target-type
                                      detect-labels-image-properties-settings
                                      :member-name "ImageProperties"))
                                    (:shape-name "DetectLabelsSettings"))

(smithy/sdk/shapes:define-input detect-moderation-labels-request
                                common-lisp:nil
                                ((image :target-type image :required
                                  common-lisp:t :member-name "Image")
                                 (min-confidence :target-type percent
                                  :member-name "MinConfidence")
                                 (human-loop-config :target-type
                                  human-loop-config :member-name
                                  "HumanLoopConfig")
                                 (project-version :target-type
                                  project-version-id :member-name
                                  "ProjectVersion"))
                                (:shape-name "DetectModerationLabelsRequest"))

(smithy/sdk/shapes:define-output detect-moderation-labels-response
                                 common-lisp:nil
                                 ((moderation-labels :target-type
                                   moderation-labels :member-name
                                   "ModerationLabels")
                                  (moderation-model-version :target-type string
                                   :member-name "ModerationModelVersion")
                                  (human-loop-activation-output :target-type
                                   human-loop-activation-output :member-name
                                   "HumanLoopActivationOutput")
                                  (project-version :target-type
                                   project-version-id :member-name
                                   "ProjectVersion")
                                  (content-types :target-type content-types
                                   :member-name "ContentTypes"))
                                 (:shape-name "DetectModerationLabelsResponse"))

(smithy/sdk/shapes:define-input detect-protective-equipment-request
                                common-lisp:nil
                                ((image :target-type image :required
                                  common-lisp:t :member-name "Image")
                                 (summarization-attributes :target-type
                                  protective-equipment-summarization-attributes
                                  :member-name "SummarizationAttributes"))
                                (:shape-name
                                 "DetectProtectiveEquipmentRequest"))

(smithy/sdk/shapes:define-output detect-protective-equipment-response
                                 common-lisp:nil
                                 ((protective-equipment-model-version
                                   :target-type string :member-name
                                   "ProtectiveEquipmentModelVersion")
                                  (persons :target-type
                                   protective-equipment-persons :member-name
                                   "Persons")
                                  (summary :target-type
                                   protective-equipment-summary :member-name
                                   "Summary"))
                                 (:shape-name
                                  "DetectProtectiveEquipmentResponse"))

(smithy/sdk/shapes:define-structure detect-text-filters common-lisp:nil
                                    ((word-filter :target-type detection-filter
                                      :member-name "WordFilter")
                                     (regions-of-interest :target-type
                                      regions-of-interest :member-name
                                      "RegionsOfInterest"))
                                    (:shape-name "DetectTextFilters"))

(smithy/sdk/shapes:define-input detect-text-request common-lisp:nil
                                ((image :target-type image :required
                                  common-lisp:t :member-name "Image")
                                 (filters :target-type detect-text-filters
                                  :member-name "Filters"))
                                (:shape-name "DetectTextRequest"))

(smithy/sdk/shapes:define-output detect-text-response common-lisp:nil
                                 ((text-detections :target-type
                                   text-detection-list :member-name
                                   "TextDetections")
                                  (text-model-version :target-type string
                                   :member-name "TextModelVersion"))
                                 (:shape-name "DetectTextResponse"))

(smithy/sdk/shapes:define-structure detection-filter common-lisp:nil
                                    ((min-confidence :target-type percent
                                      :member-name "MinConfidence")
                                     (min-bounding-box-height :target-type
                                      bounding-box-height :member-name
                                      "MinBoundingBoxHeight")
                                     (min-bounding-box-width :target-type
                                      bounding-box-width :member-name
                                      "MinBoundingBoxWidth"))
                                    (:shape-name "DetectionFilter"))

(smithy/sdk/shapes:define-input disassociate-faces-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId")
                                 (user-id :target-type user-id :required
                                  common-lisp:t :member-name "UserId")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (face-ids :target-type user-face-id-list
                                  :required common-lisp:t :member-name
                                  "FaceIds"))
                                (:shape-name "DisassociateFacesRequest"))

(smithy/sdk/shapes:define-output disassociate-faces-response common-lisp:nil
                                 ((disassociated-faces :target-type
                                   disassociated-faces-list :member-name
                                   "DisassociatedFaces")
                                  (unsuccessful-face-disassociations
                                   :target-type
                                   unsuccessful-face-disassociation-list
                                   :member-name
                                   "UnsuccessfulFaceDisassociations")
                                  (user-status :target-type user-status
                                   :member-name "UserStatus"))
                                 (:shape-name "DisassociateFacesResponse"))

(smithy/sdk/shapes:define-structure disassociated-face common-lisp:nil
                                    ((face-id :target-type face-id :member-name
                                      "FaceId"))
                                    (:shape-name "DisassociatedFace"))

(smithy/sdk/shapes:define-list disassociated-faces-list :member
                               disassociated-face)

(smithy/sdk/shapes:define-structure distribute-dataset common-lisp:nil
                                    ((arn :target-type dataset-arn :required
                                      common-lisp:t :member-name "Arn"))
                                    (:shape-name "DistributeDataset"))

(smithy/sdk/shapes:define-input distribute-dataset-entries-request
                                common-lisp:nil
                                ((datasets :target-type
                                  distribute-dataset-metadata-list :required
                                  common-lisp:t :member-name "Datasets"))
                                (:shape-name "DistributeDatasetEntriesRequest"))

(smithy/sdk/shapes:define-output distribute-dataset-entries-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DistributeDatasetEntriesResponse"))

(smithy/sdk/shapes:define-list distribute-dataset-metadata-list :member
                               distribute-dataset)

(smithy/sdk/shapes:define-structure dominant-color common-lisp:nil
                                    ((red :target-type uinteger :member-name
                                      "Red")
                                     (blue :target-type uinteger :member-name
                                      "Blue")
                                     (green :target-type uinteger :member-name
                                      "Green")
                                     (hex-code :target-type string :member-name
                                      "HexCode")
                                     (csscolor :target-type string :member-name
                                      "CSSColor")
                                     (simplified-color :target-type string
                                      :member-name "SimplifiedColor")
                                     (pixel-percent :target-type percent
                                      :member-name "PixelPercent"))
                                    (:shape-name "DominantColor"))

(smithy/sdk/shapes:define-list dominant-colors :member dominant-color)

(smithy/sdk/shapes:define-structure emotion common-lisp:nil
                                    ((type :target-type emotion-name
                                      :member-name "Type")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "Emotion"))

(smithy/sdk/shapes:define-enum emotion-name
    common-lisp:nil
  (:happy "HAPPY")
  (:sad "SAD")
  (:angry "ANGRY")
  (:confused "CONFUSED")
  (:disgusted "DISGUSTED")
  (:surprised "SURPRISED")
  (:calm "CALM")
  (:unknown "UNKNOWN")
  (:fear "FEAR"))

(smithy/sdk/shapes:define-list emotions :member emotion)

(smithy/sdk/shapes:define-structure equipment-detection common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (confidence :target-type percent
                                      :member-name "Confidence")
                                     (type :target-type
                                      protective-equipment-type :member-name
                                      "Type")
                                     (covers-body-part :target-type
                                      covers-body-part :member-name
                                      "CoversBodyPart"))
                                    (:shape-name "EquipmentDetection"))

(smithy/sdk/shapes:define-list equipment-detections :member equipment-detection)

(smithy/sdk/shapes:define-structure evaluation-result common-lisp:nil
                                    ((f1score :target-type float :member-name
                                      "F1Score")
                                     (summary :target-type summary :member-name
                                      "Summary"))
                                    (:shape-name "EvaluationResult"))

(smithy/sdk/shapes:define-type extended-pagination-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type external-image-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure eye-direction common-lisp:nil
                                    ((yaw :target-type degree :member-name
                                      "Yaw")
                                     (pitch :target-type degree :member-name
                                      "Pitch")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "EyeDirection"))

(smithy/sdk/shapes:define-structure eye-open common-lisp:nil
                                    ((value :target-type boolean :member-name
                                      "Value")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "EyeOpen"))

(smithy/sdk/shapes:define-structure eyeglasses common-lisp:nil
                                    ((value :target-type boolean :member-name
                                      "Value")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "Eyeglasses"))

(smithy/sdk/shapes:define-structure face common-lisp:nil
                                    ((face-id :target-type face-id :member-name
                                      "FaceId")
                                     (bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (image-id :target-type image-id
                                      :member-name "ImageId")
                                     (external-image-id :target-type
                                      external-image-id :member-name
                                      "ExternalImageId")
                                     (confidence :target-type percent
                                      :member-name "Confidence")
                                     (index-faces-model-version :target-type
                                      index-faces-model-version :member-name
                                      "IndexFacesModelVersion")
                                     (user-id :target-type user-id :member-name
                                      "UserId"))
                                    (:shape-name "Face"))

(smithy/sdk/shapes:define-enum face-attributes
    common-lisp:nil
  (:default "DEFAULT")
  (:all "ALL"))

(smithy/sdk/shapes:define-structure face-detail common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (age-range :target-type age-range
                                      :member-name "AgeRange")
                                     (smile :target-type smile :member-name
                                      "Smile")
                                     (eyeglasses :target-type eyeglasses
                                      :member-name "Eyeglasses")
                                     (sunglasses :target-type sunglasses
                                      :member-name "Sunglasses")
                                     (gender :target-type gender :member-name
                                      "Gender")
                                     (beard :target-type beard :member-name
                                      "Beard")
                                     (mustache :target-type mustache
                                      :member-name "Mustache")
                                     (eyes-open :target-type eye-open
                                      :member-name "EyesOpen")
                                     (mouth-open :target-type mouth-open
                                      :member-name "MouthOpen")
                                     (emotions :target-type emotions
                                      :member-name "Emotions")
                                     (landmarks :target-type landmarks
                                      :member-name "Landmarks")
                                     (pose :target-type pose :member-name
                                      "Pose")
                                     (quality :target-type image-quality
                                      :member-name "Quality")
                                     (confidence :target-type percent
                                      :member-name "Confidence")
                                     (face-occluded :target-type face-occluded
                                      :member-name "FaceOccluded")
                                     (eye-direction :target-type eye-direction
                                      :member-name "EyeDirection"))
                                    (:shape-name "FaceDetail"))

(smithy/sdk/shapes:define-list face-detail-list :member face-detail)

(smithy/sdk/shapes:define-structure face-detection common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (face :target-type face-detail
                                      :member-name "Face"))
                                    (:shape-name "FaceDetection"))

(smithy/sdk/shapes:define-list face-detections :member face-detection)

(smithy/sdk/shapes:define-type face-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list face-id-list :member face-id)

(smithy/sdk/shapes:define-list face-list :member face)

(smithy/sdk/shapes:define-structure face-match common-lisp:nil
                                    ((similarity :target-type percent
                                      :member-name "Similarity")
                                     (face :target-type face :member-name
                                      "Face"))
                                    (:shape-name "FaceMatch"))

(smithy/sdk/shapes:define-list face-match-list :member face-match)

(smithy/sdk/shapes:define-list face-model-version-list :member string)

(smithy/sdk/shapes:define-structure face-occluded common-lisp:nil
                                    ((value :target-type boolean :member-name
                                      "Value")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "FaceOccluded"))

(smithy/sdk/shapes:define-structure face-record common-lisp:nil
                                    ((face :target-type face :member-name
                                      "Face")
                                     (face-detail :target-type face-detail
                                      :member-name "FaceDetail"))
                                    (:shape-name "FaceRecord"))

(smithy/sdk/shapes:define-list face-record-list :member face-record)

(smithy/sdk/shapes:define-structure face-search-settings common-lisp:nil
                                    ((collection-id :target-type collection-id
                                      :member-name "CollectionId")
                                     (face-match-threshold :target-type percent
                                      :member-name "FaceMatchThreshold"))
                                    (:shape-name "FaceSearchSettings"))

(smithy/sdk/shapes:define-enum face-search-sort-by
    common-lisp:nil
  (:index "INDEX")
  (:timestamp "TIMESTAMP"))

(smithy/sdk/shapes:define-type float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type flow-definition-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure gender common-lisp:nil
                                    ((value :target-type gender-type
                                      :member-name "Value")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "Gender"))

(smithy/sdk/shapes:define-enum gender-type
    common-lisp:nil
  (:male "Male")
  (:female "Female"))

(smithy/sdk/shapes:define-list general-labels-filter-list :member
                               general-labels-filter-value)

(smithy/sdk/shapes:define-type general-labels-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure general-labels-settings common-lisp:nil
                                    ((label-inclusion-filters :target-type
                                      general-labels-filter-list :member-name
                                      "LabelInclusionFilters")
                                     (label-exclusion-filters :target-type
                                      general-labels-filter-list :member-name
                                      "LabelExclusionFilters")
                                     (label-category-inclusion-filters
                                      :target-type general-labels-filter-list
                                      :member-name
                                      "LabelCategoryInclusionFilters")
                                     (label-category-exclusion-filters
                                      :target-type general-labels-filter-list
                                      :member-name
                                      "LabelCategoryExclusionFilters"))
                                    (:shape-name "GeneralLabelsSettings"))

(smithy/sdk/shapes:define-structure geometry common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (polygon :target-type polygon :member-name
                                      "Polygon"))
                                    (:shape-name "Geometry"))

(smithy/sdk/shapes:define-input get-celebrity-info-request common-lisp:nil
                                ((id :target-type rekognition-unique-id
                                  :required common-lisp:t :member-name "Id"))
                                (:shape-name "GetCelebrityInfoRequest"))

(smithy/sdk/shapes:define-output get-celebrity-info-response common-lisp:nil
                                 ((urls :target-type urls :member-name "Urls")
                                  (name :target-type string :member-name
                                   "Name")
                                  (known-gender :target-type known-gender
                                   :member-name "KnownGender"))
                                 (:shape-name "GetCelebrityInfoResponse"))

(smithy/sdk/shapes:define-input get-celebrity-recognition-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (sort-by :target-type
                                  celebrity-recognition-sort-by :member-name
                                  "SortBy"))
                                (:shape-name "GetCelebrityRecognitionRequest"))

(smithy/sdk/shapes:define-output get-celebrity-recognition-response
                                 common-lisp:nil
                                 ((job-status :target-type video-job-status
                                   :member-name "JobStatus")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage")
                                  (video-metadata :target-type video-metadata
                                   :member-name "VideoMetadata")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (celebrities :target-type
                                   celebrity-recognitions :member-name
                                   "Celebrities")
                                  (job-id :target-type job-id :member-name
                                   "JobId")
                                  (video :target-type video :member-name
                                   "Video")
                                  (job-tag :target-type job-tag :member-name
                                   "JobTag"))
                                 (:shape-name
                                  "GetCelebrityRecognitionResponse"))

(smithy/sdk/shapes:define-input get-content-moderation-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (sort-by :target-type
                                  content-moderation-sort-by :member-name
                                  "SortBy")
                                 (aggregate-by :target-type
                                  content-moderation-aggregate-by :member-name
                                  "AggregateBy"))
                                (:shape-name "GetContentModerationRequest"))

(smithy/sdk/shapes:define-structure get-content-moderation-request-metadata
                                    common-lisp:nil
                                    ((sort-by :target-type
                                      content-moderation-sort-by :member-name
                                      "SortBy")
                                     (aggregate-by :target-type
                                      content-moderation-aggregate-by
                                      :member-name "AggregateBy"))
                                    (:shape-name
                                     "GetContentModerationRequestMetadata"))

(smithy/sdk/shapes:define-output get-content-moderation-response
                                 common-lisp:nil
                                 ((job-status :target-type video-job-status
                                   :member-name "JobStatus")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage")
                                  (video-metadata :target-type video-metadata
                                   :member-name "VideoMetadata")
                                  (moderation-labels :target-type
                                   content-moderation-detections :member-name
                                   "ModerationLabels")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (moderation-model-version :target-type string
                                   :member-name "ModerationModelVersion")
                                  (job-id :target-type job-id :member-name
                                   "JobId")
                                  (video :target-type video :member-name
                                   "Video")
                                  (job-tag :target-type job-tag :member-name
                                   "JobTag")
                                  (get-request-metadata :target-type
                                   get-content-moderation-request-metadata
                                   :member-name "GetRequestMetadata"))
                                 (:shape-name "GetContentModerationResponse"))

(smithy/sdk/shapes:define-input get-face-detection-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "GetFaceDetectionRequest"))

(smithy/sdk/shapes:define-output get-face-detection-response common-lisp:nil
                                 ((job-status :target-type video-job-status
                                   :member-name "JobStatus")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage")
                                  (video-metadata :target-type video-metadata
                                   :member-name "VideoMetadata")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (faces :target-type face-detections
                                   :member-name "Faces")
                                  (job-id :target-type job-id :member-name
                                   "JobId")
                                  (video :target-type video :member-name
                                   "Video")
                                  (job-tag :target-type job-tag :member-name
                                   "JobTag"))
                                 (:shape-name "GetFaceDetectionResponse"))

(smithy/sdk/shapes:define-input get-face-liveness-session-results-request
                                common-lisp:nil
                                ((session-id :target-type liveness-session-id
                                  :required common-lisp:t :member-name
                                  "SessionId"))
                                (:shape-name
                                 "GetFaceLivenessSessionResultsRequest"))

(smithy/sdk/shapes:define-output get-face-liveness-session-results-response
                                 common-lisp:nil
                                 ((session-id :target-type liveness-session-id
                                   :required common-lisp:t :member-name
                                   "SessionId")
                                  (status :target-type liveness-session-status
                                   :required common-lisp:t :member-name
                                   "Status")
                                  (confidence :target-type percent :member-name
                                   "Confidence")
                                  (reference-image :target-type audit-image
                                   :member-name "ReferenceImage")
                                  (audit-images :target-type audit-images
                                   :member-name "AuditImages")
                                  (challenge :target-type challenge
                                   :member-name "Challenge"))
                                 (:shape-name
                                  "GetFaceLivenessSessionResultsResponse"))

(smithy/sdk/shapes:define-input get-face-search-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (sort-by :target-type face-search-sort-by
                                  :member-name "SortBy"))
                                (:shape-name "GetFaceSearchRequest"))

(smithy/sdk/shapes:define-output get-face-search-response common-lisp:nil
                                 ((job-status :target-type video-job-status
                                   :member-name "JobStatus")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (video-metadata :target-type video-metadata
                                   :member-name "VideoMetadata")
                                  (persons :target-type person-matches
                                   :member-name "Persons")
                                  (job-id :target-type job-id :member-name
                                   "JobId")
                                  (video :target-type video :member-name
                                   "Video")
                                  (job-tag :target-type job-tag :member-name
                                   "JobTag"))
                                 (:shape-name "GetFaceSearchResponse"))

(smithy/sdk/shapes:define-input get-label-detection-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (sort-by :target-type label-detection-sort-by
                                  :member-name "SortBy")
                                 (aggregate-by :target-type
                                  label-detection-aggregate-by :member-name
                                  "AggregateBy"))
                                (:shape-name "GetLabelDetectionRequest"))

(smithy/sdk/shapes:define-structure get-label-detection-request-metadata
                                    common-lisp:nil
                                    ((sort-by :target-type
                                      label-detection-sort-by :member-name
                                      "SortBy")
                                     (aggregate-by :target-type
                                      label-detection-aggregate-by :member-name
                                      "AggregateBy"))
                                    (:shape-name
                                     "GetLabelDetectionRequestMetadata"))

(smithy/sdk/shapes:define-output get-label-detection-response common-lisp:nil
                                 ((job-status :target-type video-job-status
                                   :member-name "JobStatus")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage")
                                  (video-metadata :target-type video-metadata
                                   :member-name "VideoMetadata")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (labels :target-type label-detections
                                   :member-name "Labels")
                                  (label-model-version :target-type string
                                   :member-name "LabelModelVersion")
                                  (job-id :target-type job-id :member-name
                                   "JobId")
                                  (video :target-type video :member-name
                                   "Video")
                                  (job-tag :target-type job-tag :member-name
                                   "JobTag")
                                  (get-request-metadata :target-type
                                   get-label-detection-request-metadata
                                   :member-name "GetRequestMetadata"))
                                 (:shape-name "GetLabelDetectionResponse"))

(smithy/sdk/shapes:define-input get-media-analysis-job-request common-lisp:nil
                                ((job-id :target-type media-analysis-job-id
                                  :required common-lisp:t :member-name
                                  "JobId"))
                                (:shape-name "GetMediaAnalysisJobRequest"))

(smithy/sdk/shapes:define-output get-media-analysis-job-response
                                 common-lisp:nil
                                 ((job-id :target-type media-analysis-job-id
                                   :required common-lisp:t :member-name
                                   "JobId")
                                  (job-name :target-type
                                   media-analysis-job-name :member-name
                                   "JobName")
                                  (operations-config :target-type
                                   media-analysis-operations-config :required
                                   common-lisp:t :member-name
                                   "OperationsConfig")
                                  (status :target-type
                                   media-analysis-job-status :required
                                   common-lisp:t :member-name "Status")
                                  (failure-details :target-type
                                   media-analysis-job-failure-details
                                   :member-name "FailureDetails")
                                  (creation-timestamp :target-type date-time
                                   :required common-lisp:t :member-name
                                   "CreationTimestamp")
                                  (completion-timestamp :target-type date-time
                                   :member-name "CompletionTimestamp")
                                  (input :target-type media-analysis-input
                                   :required common-lisp:t :member-name
                                   "Input")
                                  (output-config :target-type
                                   media-analysis-output-config :required
                                   common-lisp:t :member-name "OutputConfig")
                                  (kms-key-id :target-type kms-key-id
                                   :member-name "KmsKeyId")
                                  (results :target-type media-analysis-results
                                   :member-name "Results")
                                  (manifest-summary :target-type
                                   media-analysis-manifest-summary :member-name
                                   "ManifestSummary"))
                                 (:shape-name "GetMediaAnalysisJobResponse"))

(smithy/sdk/shapes:define-input get-person-tracking-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (sort-by :target-type person-tracking-sort-by
                                  :member-name "SortBy"))
                                (:shape-name "GetPersonTrackingRequest"))

(smithy/sdk/shapes:define-output get-person-tracking-response common-lisp:nil
                                 ((job-status :target-type video-job-status
                                   :member-name "JobStatus")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage")
                                  (video-metadata :target-type video-metadata
                                   :member-name "VideoMetadata")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (persons :target-type person-detections
                                   :member-name "Persons")
                                  (job-id :target-type job-id :member-name
                                   "JobId")
                                  (video :target-type video :member-name
                                   "Video")
                                  (job-tag :target-type job-tag :member-name
                                   "JobTag"))
                                 (:shape-name "GetPersonTrackingResponse"))

(smithy/sdk/shapes:define-input get-segment-detection-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "GetSegmentDetectionRequest"))

(smithy/sdk/shapes:define-output get-segment-detection-response common-lisp:nil
                                 ((job-status :target-type video-job-status
                                   :member-name "JobStatus")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage")
                                  (video-metadata :target-type
                                   video-metadata-list :member-name
                                   "VideoMetadata")
                                  (audio-metadata :target-type
                                   audio-metadata-list :member-name
                                   "AudioMetadata")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (segments :target-type segment-detections
                                   :member-name "Segments")
                                  (selected-segment-types :target-type
                                   segment-types-info :member-name
                                   "SelectedSegmentTypes")
                                  (job-id :target-type job-id :member-name
                                   "JobId")
                                  (video :target-type video :member-name
                                   "Video")
                                  (job-tag :target-type job-tag :member-name
                                   "JobTag"))
                                 (:shape-name "GetSegmentDetectionResponse"))

(smithy/sdk/shapes:define-input get-text-detection-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "GetTextDetectionRequest"))

(smithy/sdk/shapes:define-output get-text-detection-response common-lisp:nil
                                 ((job-status :target-type video-job-status
                                   :member-name "JobStatus")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage")
                                  (video-metadata :target-type video-metadata
                                   :member-name "VideoMetadata")
                                  (text-detections :target-type
                                   text-detection-results :member-name
                                   "TextDetections")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (text-model-version :target-type string
                                   :member-name "TextModelVersion")
                                  (job-id :target-type job-id :member-name
                                   "JobId")
                                  (video :target-type video :member-name
                                   "Video")
                                  (job-tag :target-type job-tag :member-name
                                   "JobTag"))
                                 (:shape-name "GetTextDetectionResponse"))

(smithy/sdk/shapes:define-type ground-truth-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure ground-truth-manifest common-lisp:nil
                                    ((s3object :target-type s3object
                                      :member-name "S3Object"))
                                    (:shape-name "GroundTruthManifest"))

(smithy/sdk/shapes:define-type has-errors smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure human-loop-activation-output
                                    common-lisp:nil
                                    ((human-loop-arn :target-type
                                      human-loop-arn :member-name
                                      "HumanLoopArn")
                                     (human-loop-activation-reasons
                                      :target-type
                                      human-loop-activation-reasons
                                      :member-name
                                      "HumanLoopActivationReasons")
                                     (human-loop-activation-conditions-evaluation-results
                                      :target-type
                                      synthesized-json-human-loop-activation-conditions-evaluation-results
                                      :member-name
                                      "HumanLoopActivationConditionsEvaluationResults"))
                                    (:shape-name "HumanLoopActivationOutput"))

(smithy/sdk/shapes:define-type human-loop-activation-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list human-loop-activation-reasons :member
                               human-loop-activation-reason)

(smithy/sdk/shapes:define-type human-loop-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure human-loop-config common-lisp:nil
                                    ((human-loop-name :target-type
                                      human-loop-name :required common-lisp:t
                                      :member-name "HumanLoopName")
                                     (flow-definition-arn :target-type
                                      flow-definition-arn :required
                                      common-lisp:t :member-name
                                      "FlowDefinitionArn")
                                     (data-attributes :target-type
                                      human-loop-data-attributes :member-name
                                      "DataAttributes"))
                                    (:shape-name "HumanLoopConfig"))

(smithy/sdk/shapes:define-structure human-loop-data-attributes common-lisp:nil
                                    ((content-classifiers :target-type
                                      content-classifiers :member-name
                                      "ContentClassifiers"))
                                    (:shape-name "HumanLoopDataAttributes"))

(smithy/sdk/shapes:define-type human-loop-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error human-loop-quota-exceeded-exception
                                common-lisp:nil
                                ((resource-type :target-type string
                                  :member-name "ResourceType")
                                 (quota-code :target-type string :member-name
                                  "QuotaCode")
                                 (service-code :target-type string :member-name
                                  "ServiceCode")
                                 (message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "HumanLoopQuotaExceededException")
                                (:error-code 402)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-error idempotent-parameter-mismatch-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name
                                 "IdempotentParameterMismatchException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-structure image common-lisp:nil
                                    ((bytes :target-type image-blob
                                      :member-name "Bytes")
                                     (s3object :target-type s3object
                                      :member-name "S3Object"))
                                    (:shape-name "Image"))

(smithy/sdk/shapes:define-type image-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type image-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure image-quality common-lisp:nil
                                    ((brightness :target-type float
                                      :member-name "Brightness")
                                     (sharpness :target-type float :member-name
                                      "Sharpness"))
                                    (:shape-name "ImageQuality"))

(smithy/sdk/shapes:define-error image-too-large-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "ImageTooLargeException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-type index-faces-model-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input index-faces-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId")
                                 (image :target-type image :required
                                  common-lisp:t :member-name "Image")
                                 (external-image-id :target-type
                                  external-image-id :member-name
                                  "ExternalImageId")
                                 (detection-attributes :target-type attributes
                                  :member-name "DetectionAttributes")
                                 (max-faces :target-type max-faces-to-index
                                  :member-name "MaxFaces")
                                 (quality-filter :target-type quality-filter
                                  :member-name "QualityFilter"))
                                (:shape-name "IndexFacesRequest"))

(smithy/sdk/shapes:define-output index-faces-response common-lisp:nil
                                 ((face-records :target-type face-record-list
                                   :member-name "FaceRecords")
                                  (orientation-correction :target-type
                                   orientation-correction :member-name
                                   "OrientationCorrection")
                                  (face-model-version :target-type string
                                   :member-name "FaceModelVersion")
                                  (unindexed-faces :target-type unindexed-faces
                                   :member-name "UnindexedFaces"))
                                 (:shape-name "IndexFacesResponse"))

(smithy/sdk/shapes:define-type inference-units smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure instance common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (confidence :target-type percent
                                      :member-name "Confidence")
                                     (dominant-colors :target-type
                                      dominant-colors :member-name
                                      "DominantColors"))
                                    (:shape-name "Instance"))

(smithy/sdk/shapes:define-list instances :member instance)

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "InternalServerError")
                                (:error-code 500)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-error invalid-image-format-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "InvalidImageFormatException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-error invalid-manifest-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "InvalidManifestException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-error invalid-pagination-token-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "InvalidPaginationTokenException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-error invalid-policy-revision-id-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name
                                 "InvalidPolicyRevisionIdException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-error invalid-s3object-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "InvalidS3ObjectException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-type is-labeled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type job-tag smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kinesis-data-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kinesis-data-stream common-lisp:nil
                                    ((arn :target-type kinesis-data-arn
                                      :member-name "Arn"))
                                    (:shape-name "KinesisDataStream"))

(smithy/sdk/shapes:define-type kinesis-video-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kinesis-video-stream common-lisp:nil
                                    ((arn :target-type kinesis-video-arn
                                      :member-name "Arn"))
                                    (:shape-name "KinesisVideoStream"))

(smithy/sdk/shapes:define-type kinesis-video-stream-fragment-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure kinesis-video-stream-start-selector
                                    common-lisp:nil
                                    ((producer-timestamp :target-type ulong
                                      :member-name "ProducerTimestamp")
                                     (fragment-number :target-type
                                      kinesis-video-stream-fragment-number
                                      :member-name "FragmentNumber"))
                                    (:shape-name
                                     "KinesisVideoStreamStartSelector"))

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure known-gender common-lisp:nil
                                    ((type :target-type known-gender-type
                                      :member-name "Type"))
                                    (:shape-name "KnownGender"))

(smithy/sdk/shapes:define-enum known-gender-type
    common-lisp:nil
  (:male "Male")
  (:female "Female")
  (:nonbinary "Nonbinary")
  (:unlisted "Unlisted"))

(smithy/sdk/shapes:define-structure label common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (confidence :target-type percent
                                      :member-name "Confidence")
                                     (instances :target-type instances
                                      :member-name "Instances")
                                     (parents :target-type parents :member-name
                                      "Parents")
                                     (aliases :target-type label-aliases
                                      :member-name "Aliases")
                                     (categories :target-type label-categories
                                      :member-name "Categories"))
                                    (:shape-name "Label"))

(smithy/sdk/shapes:define-structure label-alias common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name"))
                                    (:shape-name "LabelAlias"))

(smithy/sdk/shapes:define-list label-aliases :member label-alias)

(smithy/sdk/shapes:define-list label-categories :member label-category)

(smithy/sdk/shapes:define-structure label-category common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name"))
                                    (:shape-name "LabelCategory"))

(smithy/sdk/shapes:define-structure label-detection common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (label :target-type label :member-name
                                      "Label")
                                     (start-timestamp-millis :target-type ulong
                                      :member-name "StartTimestampMillis")
                                     (end-timestamp-millis :target-type ulong
                                      :member-name "EndTimestampMillis")
                                     (duration-millis :target-type ulong
                                      :member-name "DurationMillis"))
                                    (:shape-name "LabelDetection"))

(smithy/sdk/shapes:define-enum label-detection-aggregate-by
    common-lisp:nil
  (:timestamps "TIMESTAMPS")
  (:segments "SEGMENTS"))

(smithy/sdk/shapes:define-list label-detection-feature-list :member
                               label-detection-feature-name)

(smithy/sdk/shapes:define-enum label-detection-feature-name
    common-lisp:nil
  (:general-labels "GENERAL_LABELS"))

(smithy/sdk/shapes:define-structure label-detection-settings common-lisp:nil
                                    ((general-labels :target-type
                                      general-labels-settings :member-name
                                      "GeneralLabels"))
                                    (:shape-name "LabelDetectionSettings"))

(smithy/sdk/shapes:define-enum label-detection-sort-by
    common-lisp:nil
  (:name "NAME")
  (:timestamp "TIMESTAMP"))

(smithy/sdk/shapes:define-list label-detections :member label-detection)

(smithy/sdk/shapes:define-list labels :member label)

(smithy/sdk/shapes:define-structure landmark common-lisp:nil
                                    ((type :target-type landmark-type
                                      :member-name "Type")
                                     (x :target-type float :member-name "X")
                                     (y :target-type float :member-name "Y"))
                                    (:shape-name "Landmark"))

(smithy/sdk/shapes:define-enum landmark-type
    common-lisp:nil
  (:eye-left "eyeLeft")
  (:eye-right "eyeRight")
  (:nose "nose")
  (:mouth-left "mouthLeft")
  (:mouth-right "mouthRight")
  (:left-eye-brow-left "leftEyeBrowLeft")
  (:left-eye-brow-right "leftEyeBrowRight")
  (:left-eye-brow-up "leftEyeBrowUp")
  (:right-eye-brow-left "rightEyeBrowLeft")
  (:right-eye-brow-right "rightEyeBrowRight")
  (:right-eye-brow-up "rightEyeBrowUp")
  (:left-eye-left "leftEyeLeft")
  (:left-eye-right "leftEyeRight")
  (:left-eye-up "leftEyeUp")
  (:left-eye-down "leftEyeDown")
  (:right-eye-left "rightEyeLeft")
  (:right-eye-right "rightEyeRight")
  (:right-eye-up "rightEyeUp")
  (:right-eye-down "rightEyeDown")
  (:nose-left "noseLeft")
  (:nose-right "noseRight")
  (:mouth-up "mouthUp")
  (:mouth-down "mouthDown")
  (:left-pupil "leftPupil")
  (:right-pupil "rightPupil")
  (:upper-jawline-left "upperJawlineLeft")
  (:mid-jawline-left "midJawlineLeft")
  (:chin-bottom "chinBottom")
  (:mid-jawline-right "midJawlineRight")
  (:upper-jawline-right "upperJawlineRight"))

(smithy/sdk/shapes:define-list landmarks :member landmark)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-input list-collections-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults"))
                                (:shape-name "ListCollectionsRequest"))

(smithy/sdk/shapes:define-output list-collections-response common-lisp:nil
                                 ((collection-ids :target-type
                                   collection-id-list :member-name
                                   "CollectionIds")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (face-model-versions :target-type
                                   face-model-version-list :member-name
                                   "FaceModelVersions"))
                                 (:shape-name "ListCollectionsResponse"))

(smithy/sdk/shapes:define-type list-dataset-entries-page-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-dataset-entries-request common-lisp:nil
                                ((dataset-arn :target-type dataset-arn
                                  :required common-lisp:t :member-name
                                  "DatasetArn")
                                 (contains-labels :target-type dataset-labels
                                  :member-name "ContainsLabels")
                                 (labeled :target-type is-labeled :member-name
                                  "Labeled")
                                 (source-ref-contains :target-type query-string
                                  :member-name "SourceRefContains")
                                 (has-errors :target-type has-errors
                                  :member-name "HasErrors")
                                 (next-token :target-type
                                  extended-pagination-token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  list-dataset-entries-page-size :member-name
                                  "MaxResults"))
                                (:shape-name "ListDatasetEntriesRequest"))

(smithy/sdk/shapes:define-output list-dataset-entries-response common-lisp:nil
                                 ((dataset-entries :target-type dataset-entries
                                   :member-name "DatasetEntries")
                                  (next-token :target-type
                                   extended-pagination-token :member-name
                                   "NextToken"))
                                 (:shape-name "ListDatasetEntriesResponse"))

(smithy/sdk/shapes:define-type list-dataset-labels-page-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-dataset-labels-request common-lisp:nil
                                ((dataset-arn :target-type dataset-arn
                                  :required common-lisp:t :member-name
                                  "DatasetArn")
                                 (next-token :target-type
                                  extended-pagination-token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  list-dataset-labels-page-size :member-name
                                  "MaxResults"))
                                (:shape-name "ListDatasetLabelsRequest"))

(smithy/sdk/shapes:define-output list-dataset-labels-response common-lisp:nil
                                 ((dataset-label-descriptions :target-type
                                   dataset-label-descriptions :member-name
                                   "DatasetLabelDescriptions")
                                  (next-token :target-type
                                   extended-pagination-token :member-name
                                   "NextToken"))
                                 (:shape-name "ListDatasetLabelsResponse"))

(smithy/sdk/shapes:define-input list-faces-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type page-size
                                  :member-name "MaxResults")
                                 (user-id :target-type user-id :member-name
                                  "UserId")
                                 (face-ids :target-type face-id-list
                                  :member-name "FaceIds"))
                                (:shape-name "ListFacesRequest"))

(smithy/sdk/shapes:define-output list-faces-response common-lisp:nil
                                 ((faces :target-type face-list :member-name
                                   "Faces")
                                  (next-token :target-type string :member-name
                                   "NextToken")
                                  (face-model-version :target-type string
                                   :member-name "FaceModelVersion"))
                                 (:shape-name "ListFacesResponse"))

(smithy/sdk/shapes:define-type list-media-analysis-jobs-page-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-media-analysis-jobs-request
                                common-lisp:nil
                                ((next-token :target-type
                                  extended-pagination-token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  list-media-analysis-jobs-page-size
                                  :member-name "MaxResults"))
                                (:shape-name "ListMediaAnalysisJobsRequest"))

(smithy/sdk/shapes:define-output list-media-analysis-jobs-response
                                 common-lisp:nil
                                 ((next-token :target-type
                                   extended-pagination-token :member-name
                                   "NextToken")
                                  (media-analysis-jobs :target-type
                                   media-analysis-job-descriptions :required
                                   common-lisp:t :member-name
                                   "MediaAnalysisJobs"))
                                 (:shape-name "ListMediaAnalysisJobsResponse"))

(smithy/sdk/shapes:define-type list-project-policies-page-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-project-policies-request common-lisp:nil
                                ((project-arn :target-type project-arn
                                  :required common-lisp:t :member-name
                                  "ProjectArn")
                                 (next-token :target-type
                                  extended-pagination-token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  list-project-policies-page-size :member-name
                                  "MaxResults"))
                                (:shape-name "ListProjectPoliciesRequest"))

(smithy/sdk/shapes:define-output list-project-policies-response common-lisp:nil
                                 ((project-policies :target-type
                                   project-policies :member-name
                                   "ProjectPolicies")
                                  (next-token :target-type
                                   extended-pagination-token :member-name
                                   "NextToken"))
                                 (:shape-name "ListProjectPoliciesResponse"))

(smithy/sdk/shapes:define-input list-stream-processors-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults"))
                                (:shape-name "ListStreamProcessorsRequest"))

(smithy/sdk/shapes:define-output list-stream-processors-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (stream-processors :target-type
                                   stream-processor-list :member-name
                                   "StreamProcessors"))
                                 (:shape-name "ListStreamProcessorsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-users-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId")
                                 (max-results :target-type max-user-results
                                  :member-name "MaxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "ListUsersRequest"))

(smithy/sdk/shapes:define-output list-users-response common-lisp:nil
                                 ((users :target-type user-list :member-name
                                   "Users")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListUsersResponse"))

(smithy/sdk/shapes:define-type liveness-image-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure liveness-output-config common-lisp:nil
                                    ((s3bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "S3Bucket")
                                     (s3key-prefix :target-type
                                      liveness-s3key-prefix :member-name
                                      "S3KeyPrefix"))
                                    (:shape-name "LivenessOutputConfig"))

(smithy/sdk/shapes:define-type liveness-s3key-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type liveness-session-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum liveness-session-status
    common-lisp:nil
  (:created "CREATED")
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-error malformed-policy-document-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name
                                 "MalformedPolicyDocumentException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-structure matched-user common-lisp:nil
                                    ((user-id :target-type user-id :member-name
                                      "UserId")
                                     (user-status :target-type user-status
                                      :member-name "UserStatus"))
                                    (:shape-name "MatchedUser"))

(smithy/sdk/shapes:define-type max-duration-in-seconds-ulong
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-faces smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-faces-to-index
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-pixel-threshold
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-user-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure
 media-analysis-detect-moderation-labels-config common-lisp:nil
 ((min-confidence :target-type percent :member-name "MinConfidence")
  (project-version :target-type project-version-id :member-name
   "ProjectVersion"))
 (:shape-name "MediaAnalysisDetectModerationLabelsConfig"))

(smithy/sdk/shapes:define-structure media-analysis-input common-lisp:nil
                                    ((s3object :target-type s3object :required
                                      common-lisp:t :member-name "S3Object"))
                                    (:shape-name "MediaAnalysisInput"))

(smithy/sdk/shapes:define-structure media-analysis-job-description
                                    common-lisp:nil
                                    ((job-id :target-type media-analysis-job-id
                                      :required common-lisp:t :member-name
                                      "JobId")
                                     (job-name :target-type
                                      media-analysis-job-name :member-name
                                      "JobName")
                                     (operations-config :target-type
                                      media-analysis-operations-config
                                      :required common-lisp:t :member-name
                                      "OperationsConfig")
                                     (status :target-type
                                      media-analysis-job-status :required
                                      common-lisp:t :member-name "Status")
                                     (failure-details :target-type
                                      media-analysis-job-failure-details
                                      :member-name "FailureDetails")
                                     (creation-timestamp :target-type date-time
                                      :required common-lisp:t :member-name
                                      "CreationTimestamp")
                                     (completion-timestamp :target-type
                                      date-time :member-name
                                      "CompletionTimestamp")
                                     (input :target-type media-analysis-input
                                      :required common-lisp:t :member-name
                                      "Input")
                                     (output-config :target-type
                                      media-analysis-output-config :required
                                      common-lisp:t :member-name
                                      "OutputConfig")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (results :target-type
                                      media-analysis-results :member-name
                                      "Results")
                                     (manifest-summary :target-type
                                      media-analysis-manifest-summary
                                      :member-name "ManifestSummary"))
                                    (:shape-name "MediaAnalysisJobDescription"))

(smithy/sdk/shapes:define-list media-analysis-job-descriptions :member
                               media-analysis-job-description)

(smithy/sdk/shapes:define-enum media-analysis-job-failure-code
    common-lisp:nil
  (:internal-error "INTERNAL_ERROR")
  (:invalid-s3-object "INVALID_S3_OBJECT")
  (:invalid-manifest "INVALID_MANIFEST")
  (:invalid-output-config "INVALID_OUTPUT_CONFIG")
  (:invalid-kms-key "INVALID_KMS_KEY")
  (:access-denied "ACCESS_DENIED")
  (:resource-not-found "RESOURCE_NOT_FOUND")
  (:resource-not-ready "RESOURCE_NOT_READY")
  (:throttled "THROTTLED"))

(smithy/sdk/shapes:define-structure media-analysis-job-failure-details
                                    common-lisp:nil
                                    ((code :target-type
                                      media-analysis-job-failure-code
                                      :member-name "Code")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name
                                     "MediaAnalysisJobFailureDetails"))

(smithy/sdk/shapes:define-type media-analysis-job-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type media-analysis-job-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum media-analysis-job-status
    common-lisp:nil
  (:created "CREATED")
  (:queued "QUEUED")
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure media-analysis-manifest-summary
                                    common-lisp:nil
                                    ((s3object :target-type s3object
                                      :member-name "S3Object"))
                                    (:shape-name
                                     "MediaAnalysisManifestSummary"))

(smithy/sdk/shapes:define-structure media-analysis-model-versions
                                    common-lisp:nil
                                    ((moderation :target-type string
                                      :member-name "Moderation"))
                                    (:shape-name "MediaAnalysisModelVersions"))

(smithy/sdk/shapes:define-structure media-analysis-operations-config
                                    common-lisp:nil
                                    ((detect-moderation-labels :target-type
                                      media-analysis-detect-moderation-labels-config
                                      :member-name "DetectModerationLabels"))
                                    (:shape-name
                                     "MediaAnalysisOperationsConfig"))

(smithy/sdk/shapes:define-structure media-analysis-output-config
                                    common-lisp:nil
                                    ((s3bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "S3Bucket")
                                     (s3key-prefix :target-type
                                      media-analysis-s3key-prefix :member-name
                                      "S3KeyPrefix"))
                                    (:shape-name "MediaAnalysisOutputConfig"))

(smithy/sdk/shapes:define-structure media-analysis-results common-lisp:nil
                                    ((s3object :target-type s3object
                                      :member-name "S3Object")
                                     (model-versions :target-type
                                      media-analysis-model-versions
                                      :member-name "ModelVersions"))
                                    (:shape-name "MediaAnalysisResults"))

(smithy/sdk/shapes:define-type media-analysis-s3key-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type min-coverage-percentage
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure moderation-label common-lisp:nil
                                    ((confidence :target-type percent
                                      :member-name "Confidence")
                                     (name :target-type string :member-name
                                      "Name")
                                     (parent-name :target-type string
                                      :member-name "ParentName")
                                     (taxonomy-level :target-type uinteger
                                      :member-name "TaxonomyLevel"))
                                    (:shape-name "ModerationLabel"))

(smithy/sdk/shapes:define-list moderation-labels :member moderation-label)

(smithy/sdk/shapes:define-structure mouth-open common-lisp:nil
                                    ((value :target-type boolean :member-name
                                      "Value")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "MouthOpen"))

(smithy/sdk/shapes:define-structure mustache common-lisp:nil
                                    ((value :target-type boolean :member-name
                                      "Value")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "Mustache"))

(smithy/sdk/shapes:define-structure notification-channel common-lisp:nil
                                    ((snstopic-arn :target-type snstopic-arn
                                      :required common-lisp:t :member-name
                                      "SNSTopicArn")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "RoleArn"))
                                    (:shape-name "NotificationChannel"))

(smithy/sdk/shapes:define-enum orientation-correction
    common-lisp:nil
  (:rotate-0 "ROTATE_0")
  (:rotate-90 "ROTATE_90")
  (:rotate-180 "ROTATE_180")
  (:rotate-270 "ROTATE_270"))

(smithy/sdk/shapes:define-structure output-config common-lisp:nil
                                    ((s3bucket :target-type s3bucket
                                      :member-name "S3Bucket")
                                     (s3key-prefix :target-type s3key-prefix
                                      :member-name "S3KeyPrefix"))
                                    (:shape-name "OutputConfig"))

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parent common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name"))
                                    (:shape-name "Parent"))

(smithy/sdk/shapes:define-list parents :member parent)

(smithy/sdk/shapes:define-type percent smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure person-detail common-lisp:nil
                                    ((index :target-type person-index
                                      :member-name "Index")
                                     (bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (face :target-type face-detail
                                      :member-name "Face"))
                                    (:shape-name "PersonDetail"))

(smithy/sdk/shapes:define-structure person-detection common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (person :target-type person-detail
                                      :member-name "Person"))
                                    (:shape-name "PersonDetection"))

(smithy/sdk/shapes:define-list person-detections :member person-detection)

(smithy/sdk/shapes:define-type person-index smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure person-match common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (person :target-type person-detail
                                      :member-name "Person")
                                     (face-matches :target-type face-match-list
                                      :member-name "FaceMatches"))
                                    (:shape-name "PersonMatch"))

(smithy/sdk/shapes:define-list person-matches :member person-match)

(smithy/sdk/shapes:define-enum person-tracking-sort-by
    common-lisp:nil
  (:index "INDEX")
  (:timestamp "TIMESTAMP"))

(smithy/sdk/shapes:define-structure point common-lisp:nil
                                    ((x :target-type float :member-name "X")
                                     (y :target-type float :member-name "Y"))
                                    (:shape-name "Point"))

(smithy/sdk/shapes:define-list polygon :member point)

(smithy/sdk/shapes:define-structure pose common-lisp:nil
                                    ((roll :target-type degree :member-name
                                      "Roll")
                                     (yaw :target-type degree :member-name
                                      "Yaw")
                                     (pitch :target-type degree :member-name
                                      "Pitch"))
                                    (:shape-name "Pose"))

(smithy/sdk/shapes:define-type project-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum project-auto-update
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure project-description common-lisp:nil
                                    ((project-arn :target-type project-arn
                                      :member-name "ProjectArn")
                                     (creation-timestamp :target-type date-time
                                      :member-name "CreationTimestamp")
                                     (status :target-type project-status
                                      :member-name "Status")
                                     (datasets :target-type
                                      dataset-metadata-list :member-name
                                      "Datasets")
                                     (feature :target-type
                                      customization-feature :member-name
                                      "Feature")
                                     (auto-update :target-type
                                      project-auto-update :member-name
                                      "AutoUpdate"))
                                    (:shape-name "ProjectDescription"))

(smithy/sdk/shapes:define-list project-descriptions :member project-description)

(smithy/sdk/shapes:define-type project-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list project-names :member project-name)

(smithy/sdk/shapes:define-list project-policies :member project-policy)

(smithy/sdk/shapes:define-structure project-policy common-lisp:nil
                                    ((project-arn :target-type project-arn
                                      :member-name "ProjectArn")
                                     (policy-name :target-type
                                      project-policy-name :member-name
                                      "PolicyName")
                                     (policy-revision-id :target-type
                                      project-policy-revision-id :member-name
                                      "PolicyRevisionId")
                                     (policy-document :target-type
                                      project-policy-document :member-name
                                      "PolicyDocument")
                                     (creation-timestamp :target-type date-time
                                      :member-name "CreationTimestamp")
                                     (last-updated-timestamp :target-type
                                      date-time :member-name
                                      "LastUpdatedTimestamp"))
                                    (:shape-name "ProjectPolicy"))

(smithy/sdk/shapes:define-type project-policy-document
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type project-policy-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type project-policy-revision-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum project-status
    common-lisp:nil
  (:creating "CREATING")
  (:created "CREATED")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-type project-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure project-version-description common-lisp:nil
                                    ((project-version-arn :target-type
                                      project-version-arn :member-name
                                      "ProjectVersionArn")
                                     (creation-timestamp :target-type date-time
                                      :member-name "CreationTimestamp")
                                     (min-inference-units :target-type
                                      inference-units :member-name
                                      "MinInferenceUnits")
                                     (status :target-type
                                      project-version-status :member-name
                                      "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage")
                                     (billable-training-time-in-seconds
                                      :target-type ulong :member-name
                                      "BillableTrainingTimeInSeconds")
                                     (training-end-timestamp :target-type
                                      date-time :member-name
                                      "TrainingEndTimestamp")
                                     (output-config :target-type output-config
                                      :member-name "OutputConfig")
                                     (training-data-result :target-type
                                      training-data-result :member-name
                                      "TrainingDataResult")
                                     (testing-data-result :target-type
                                      testing-data-result :member-name
                                      "TestingDataResult")
                                     (evaluation-result :target-type
                                      evaluation-result :member-name
                                      "EvaluationResult")
                                     (manifest-summary :target-type
                                      ground-truth-manifest :member-name
                                      "ManifestSummary")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (max-inference-units :target-type
                                      inference-units :member-name
                                      "MaxInferenceUnits")
                                     (source-project-version-arn :target-type
                                      project-version-arn :member-name
                                      "SourceProjectVersionArn")
                                     (version-description :target-type
                                      version-description :member-name
                                      "VersionDescription")
                                     (feature :target-type
                                      customization-feature :member-name
                                      "Feature")
                                     (base-model-version :target-type string
                                      :member-name "BaseModelVersion")
                                     (feature-config :target-type
                                      customization-feature-config :member-name
                                      "FeatureConfig"))
                                    (:shape-name "ProjectVersionDescription"))

(smithy/sdk/shapes:define-list project-version-descriptions :member
                               project-version-description)

(smithy/sdk/shapes:define-type project-version-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum project-version-status
    common-lisp:nil
  (:training-in-progress "TRAINING_IN_PROGRESS")
  (:training-completed "TRAINING_COMPLETED")
  (:training-failed "TRAINING_FAILED")
  (:starting "STARTING")
  (:running "RUNNING")
  (:failed "FAILED")
  (:stopping "STOPPING")
  (:stopped "STOPPED")
  (:deleting "DELETING")
  (:copying-in-progress "COPYING_IN_PROGRESS")
  (:copying-completed "COPYING_COMPLETED")
  (:copying-failed "COPYING_FAILED")
  (:deprecated "DEPRECATED")
  (:expired "EXPIRED"))

(smithy/sdk/shapes:define-type project-versions-page-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type projects-page-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure protective-equipment-body-part
                                    common-lisp:nil
                                    ((name :target-type body-part :member-name
                                      "Name")
                                     (confidence :target-type percent
                                      :member-name "Confidence")
                                     (equipment-detections :target-type
                                      equipment-detections :member-name
                                      "EquipmentDetections"))
                                    (:shape-name "ProtectiveEquipmentBodyPart"))

(smithy/sdk/shapes:define-structure protective-equipment-person common-lisp:nil
                                    ((body-parts :target-type body-parts
                                      :member-name "BodyParts")
                                     (bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (confidence :target-type percent
                                      :member-name "Confidence")
                                     (id :target-type uinteger :member-name
                                      "Id"))
                                    (:shape-name "ProtectiveEquipmentPerson"))

(smithy/sdk/shapes:define-list protective-equipment-person-ids :member uinteger)

(smithy/sdk/shapes:define-list protective-equipment-persons :member
                               protective-equipment-person)

(smithy/sdk/shapes:define-structure
 protective-equipment-summarization-attributes common-lisp:nil
 ((min-confidence :target-type percent :required common-lisp:t :member-name
   "MinConfidence")
  (required-equipment-types :target-type protective-equipment-types :required
   common-lisp:t :member-name "RequiredEquipmentTypes"))
 (:shape-name "ProtectiveEquipmentSummarizationAttributes"))

(smithy/sdk/shapes:define-structure protective-equipment-summary
                                    common-lisp:nil
                                    ((persons-with-required-equipment
                                      :target-type
                                      protective-equipment-person-ids
                                      :member-name
                                      "PersonsWithRequiredEquipment")
                                     (persons-without-required-equipment
                                      :target-type
                                      protective-equipment-person-ids
                                      :member-name
                                      "PersonsWithoutRequiredEquipment")
                                     (persons-indeterminate :target-type
                                      protective-equipment-person-ids
                                      :member-name "PersonsIndeterminate"))
                                    (:shape-name "ProtectiveEquipmentSummary"))

(smithy/sdk/shapes:define-enum protective-equipment-type
    common-lisp:nil
  (:face-cover "FACE_COVER")
  (:hand-cover "HAND_COVER")
  (:head-cover "HEAD_COVER"))

(smithy/sdk/shapes:define-list protective-equipment-types :member
                               protective-equipment-type)

(smithy/sdk/shapes:define-error provisioned-throughput-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name
                                 "ProvisionedThroughputExceededException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-input put-project-policy-request common-lisp:nil
                                ((project-arn :target-type project-arn
                                  :required common-lisp:t :member-name
                                  "ProjectArn")
                                 (policy-name :target-type project-policy-name
                                  :required common-lisp:t :member-name
                                  "PolicyName")
                                 (policy-revision-id :target-type
                                  project-policy-revision-id :member-name
                                  "PolicyRevisionId")
                                 (policy-document :target-type
                                  project-policy-document :required
                                  common-lisp:t :member-name "PolicyDocument"))
                                (:shape-name "PutProjectPolicyRequest"))

(smithy/sdk/shapes:define-output put-project-policy-response common-lisp:nil
                                 ((policy-revision-id :target-type
                                   project-policy-revision-id :member-name
                                   "PolicyRevisionId"))
                                 (:shape-name "PutProjectPolicyResponse"))

(smithy/sdk/shapes:define-enum quality-filter
    common-lisp:nil
  (:none "NONE")
  (:auto "AUTO")
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

(smithy/sdk/shapes:define-type query-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum reason
    common-lisp:nil
  (:exceeds-max-faces "EXCEEDS_MAX_FACES")
  (:extreme-pose "EXTREME_POSE")
  (:low-brightness "LOW_BRIGHTNESS")
  (:low-sharpness "LOW_SHARPNESS")
  (:low-confidence "LOW_CONFIDENCE")
  (:small-bounding-box "SMALL_BOUNDING_BOX")
  (:low-face-quality "LOW_FACE_QUALITY"))

(smithy/sdk/shapes:define-list reasons :member reason)

(smithy/sdk/shapes:define-input recognize-celebrities-request common-lisp:nil
                                ((image :target-type image :required
                                  common-lisp:t :member-name "Image"))
                                (:shape-name "RecognizeCelebritiesRequest"))

(smithy/sdk/shapes:define-output recognize-celebrities-response common-lisp:nil
                                 ((celebrity-faces :target-type celebrity-list
                                   :member-name "CelebrityFaces")
                                  (unrecognized-faces :target-type
                                   compared-face-list :member-name
                                   "UnrecognizedFaces")
                                  (orientation-correction :target-type
                                   orientation-correction :member-name
                                   "OrientationCorrection"))
                                 (:shape-name "RecognizeCelebritiesResponse"))

(smithy/sdk/shapes:define-structure region-of-interest common-lisp:nil
                                    ((bounding-box :target-type bounding-box
                                      :member-name "BoundingBox")
                                     (polygon :target-type polygon :member-name
                                      "Polygon"))
                                    (:shape-name "RegionOfInterest"))

(smithy/sdk/shapes:define-list regions-of-interest :member region-of-interest)

(smithy/sdk/shapes:define-type rekognition-unique-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-error resource-not-ready-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "ResourceNotReadyException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3destination common-lisp:nil
                                    ((bucket :target-type s3bucket :member-name
                                      "Bucket")
                                     (key-prefix :target-type s3key-prefix
                                      :member-name "KeyPrefix"))
                                    (:shape-name "S3Destination"))

(smithy/sdk/shapes:define-type s3key-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3object common-lisp:nil
                                    ((bucket :target-type s3bucket :member-name
                                      "Bucket")
                                     (name :target-type s3object-name
                                      :member-name "Name")
                                     (version :target-type s3object-version
                                      :member-name "Version"))
                                    (:shape-name "S3Object"))

(smithy/sdk/shapes:define-type s3object-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3object-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snstopic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input search-faces-by-image-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId")
                                 (image :target-type image :required
                                  common-lisp:t :member-name "Image")
                                 (max-faces :target-type max-faces :member-name
                                  "MaxFaces")
                                 (face-match-threshold :target-type percent
                                  :member-name "FaceMatchThreshold")
                                 (quality-filter :target-type quality-filter
                                  :member-name "QualityFilter"))
                                (:shape-name "SearchFacesByImageRequest"))

(smithy/sdk/shapes:define-output search-faces-by-image-response common-lisp:nil
                                 ((searched-face-bounding-box :target-type
                                   bounding-box :member-name
                                   "SearchedFaceBoundingBox")
                                  (searched-face-confidence :target-type
                                   percent :member-name
                                   "SearchedFaceConfidence")
                                  (face-matches :target-type face-match-list
                                   :member-name "FaceMatches")
                                  (face-model-version :target-type string
                                   :member-name "FaceModelVersion"))
                                 (:shape-name "SearchFacesByImageResponse"))

(smithy/sdk/shapes:define-input search-faces-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId")
                                 (face-id :target-type face-id :required
                                  common-lisp:t :member-name "FaceId")
                                 (max-faces :target-type max-faces :member-name
                                  "MaxFaces")
                                 (face-match-threshold :target-type percent
                                  :member-name "FaceMatchThreshold"))
                                (:shape-name "SearchFacesRequest"))

(smithy/sdk/shapes:define-output search-faces-response common-lisp:nil
                                 ((searched-face-id :target-type face-id
                                   :member-name "SearchedFaceId")
                                  (face-matches :target-type face-match-list
                                   :member-name "FaceMatches")
                                  (face-model-version :target-type string
                                   :member-name "FaceModelVersion"))
                                 (:shape-name "SearchFacesResponse"))

(smithy/sdk/shapes:define-input search-users-by-image-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId")
                                 (image :target-type image :required
                                  common-lisp:t :member-name "Image")
                                 (user-match-threshold :target-type percent
                                  :member-name "UserMatchThreshold")
                                 (max-users :target-type max-user-results
                                  :member-name "MaxUsers")
                                 (quality-filter :target-type quality-filter
                                  :member-name "QualityFilter"))
                                (:shape-name "SearchUsersByImageRequest"))

(smithy/sdk/shapes:define-output search-users-by-image-response common-lisp:nil
                                 ((user-matches :target-type user-match-list
                                   :member-name "UserMatches")
                                  (face-model-version :target-type string
                                   :member-name "FaceModelVersion")
                                  (searched-face :target-type
                                   searched-face-details :member-name
                                   "SearchedFace")
                                  (unsearched-faces :target-type
                                   unsearched-faces-list :member-name
                                   "UnsearchedFaces"))
                                 (:shape-name "SearchUsersByImageResponse"))

(smithy/sdk/shapes:define-input search-users-request common-lisp:nil
                                ((collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId")
                                 (user-id :target-type user-id :member-name
                                  "UserId")
                                 (face-id :target-type face-id :member-name
                                  "FaceId")
                                 (user-match-threshold :target-type percent
                                  :member-name "UserMatchThreshold")
                                 (max-users :target-type max-user-results
                                  :member-name "MaxUsers"))
                                (:shape-name "SearchUsersRequest"))

(smithy/sdk/shapes:define-output search-users-response common-lisp:nil
                                 ((user-matches :target-type user-match-list
                                   :member-name "UserMatches")
                                  (face-model-version :target-type string
                                   :member-name "FaceModelVersion")
                                  (searched-face :target-type searched-face
                                   :member-name "SearchedFace")
                                  (searched-user :target-type searched-user
                                   :member-name "SearchedUser"))
                                 (:shape-name "SearchUsersResponse"))

(smithy/sdk/shapes:define-structure searched-face common-lisp:nil
                                    ((face-id :target-type face-id :member-name
                                      "FaceId"))
                                    (:shape-name "SearchedFace"))

(smithy/sdk/shapes:define-structure searched-face-details common-lisp:nil
                                    ((face-detail :target-type face-detail
                                      :member-name "FaceDetail"))
                                    (:shape-name "SearchedFaceDetails"))

(smithy/sdk/shapes:define-structure searched-user common-lisp:nil
                                    ((user-id :target-type user-id :member-name
                                      "UserId"))
                                    (:shape-name "SearchedUser"))

(smithy/sdk/shapes:define-type segment-confidence smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-structure segment-detection common-lisp:nil
                                    ((type :target-type segment-type
                                      :member-name "Type")
                                     (start-timestamp-millis :target-type
                                      timestamp :member-name
                                      "StartTimestampMillis")
                                     (end-timestamp-millis :target-type
                                      timestamp :member-name
                                      "EndTimestampMillis")
                                     (duration-millis :target-type ulong
                                      :member-name "DurationMillis")
                                     (start-timecode-smpte :target-type
                                      timecode :member-name
                                      "StartTimecodeSMPTE")
                                     (end-timecode-smpte :target-type timecode
                                      :member-name "EndTimecodeSMPTE")
                                     (duration-smpte :target-type timecode
                                      :member-name "DurationSMPTE")
                                     (technical-cue-segment :target-type
                                      technical-cue-segment :member-name
                                      "TechnicalCueSegment")
                                     (shot-segment :target-type shot-segment
                                      :member-name "ShotSegment")
                                     (start-frame-number :target-type ulong
                                      :member-name "StartFrameNumber")
                                     (end-frame-number :target-type ulong
                                      :member-name "EndFrameNumber")
                                     (duration-frames :target-type ulong
                                      :member-name "DurationFrames"))
                                    (:shape-name "SegmentDetection"))

(smithy/sdk/shapes:define-list segment-detections :member segment-detection)

(smithy/sdk/shapes:define-enum segment-type
    common-lisp:nil
  (:technical-cue "TECHNICAL_CUE")
  (:shot "SHOT"))

(smithy/sdk/shapes:define-structure segment-type-info common-lisp:nil
                                    ((type :target-type segment-type
                                      :member-name "Type")
                                     (model-version :target-type string
                                      :member-name "ModelVersion"))
                                    (:shape-name "SegmentTypeInfo"))

(smithy/sdk/shapes:define-list segment-types :member segment-type)

(smithy/sdk/shapes:define-list segment-types-info :member segment-type-info)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-error session-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "SessionNotFoundException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-structure shot-segment common-lisp:nil
                                    ((index :target-type ulong :member-name
                                      "Index")
                                     (confidence :target-type
                                      segment-confidence :member-name
                                      "Confidence"))
                                    (:shape-name "ShotSegment"))

(smithy/sdk/shapes:define-structure smile common-lisp:nil
                                    ((value :target-type boolean :member-name
                                      "Value")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "Smile"))

(smithy/sdk/shapes:define-input start-celebrity-recognition-request
                                common-lisp:nil
                                ((video :target-type video :required
                                  common-lisp:t :member-name "Video")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (notification-channel :target-type
                                  notification-channel :member-name
                                  "NotificationChannel")
                                 (job-tag :target-type job-tag :member-name
                                  "JobTag"))
                                (:shape-name
                                 "StartCelebrityRecognitionRequest"))

(smithy/sdk/shapes:define-output start-celebrity-recognition-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name
                                  "StartCelebrityRecognitionResponse"))

(smithy/sdk/shapes:define-input start-content-moderation-request
                                common-lisp:nil
                                ((video :target-type video :required
                                  common-lisp:t :member-name "Video")
                                 (min-confidence :target-type percent
                                  :member-name "MinConfidence")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (notification-channel :target-type
                                  notification-channel :member-name
                                  "NotificationChannel")
                                 (job-tag :target-type job-tag :member-name
                                  "JobTag"))
                                (:shape-name "StartContentModerationRequest"))

(smithy/sdk/shapes:define-output start-content-moderation-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "StartContentModerationResponse"))

(smithy/sdk/shapes:define-input start-face-detection-request common-lisp:nil
                                ((video :target-type video :required
                                  common-lisp:t :member-name "Video")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (notification-channel :target-type
                                  notification-channel :member-name
                                  "NotificationChannel")
                                 (face-attributes :target-type face-attributes
                                  :member-name "FaceAttributes")
                                 (job-tag :target-type job-tag :member-name
                                  "JobTag"))
                                (:shape-name "StartFaceDetectionRequest"))

(smithy/sdk/shapes:define-output start-face-detection-response common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "StartFaceDetectionResponse"))

(smithy/sdk/shapes:define-input start-face-search-request common-lisp:nil
                                ((video :target-type video :required
                                  common-lisp:t :member-name "Video")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (face-match-threshold :target-type percent
                                  :member-name "FaceMatchThreshold")
                                 (collection-id :target-type collection-id
                                  :required common-lisp:t :member-name
                                  "CollectionId")
                                 (notification-channel :target-type
                                  notification-channel :member-name
                                  "NotificationChannel")
                                 (job-tag :target-type job-tag :member-name
                                  "JobTag"))
                                (:shape-name "StartFaceSearchRequest"))

(smithy/sdk/shapes:define-output start-face-search-response common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "StartFaceSearchResponse"))

(smithy/sdk/shapes:define-input start-label-detection-request common-lisp:nil
                                ((video :target-type video :required
                                  common-lisp:t :member-name "Video")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (min-confidence :target-type percent
                                  :member-name "MinConfidence")
                                 (notification-channel :target-type
                                  notification-channel :member-name
                                  "NotificationChannel")
                                 (job-tag :target-type job-tag :member-name
                                  "JobTag")
                                 (features :target-type
                                  label-detection-feature-list :member-name
                                  "Features")
                                 (settings :target-type
                                  label-detection-settings :member-name
                                  "Settings"))
                                (:shape-name "StartLabelDetectionRequest"))

(smithy/sdk/shapes:define-output start-label-detection-response common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "StartLabelDetectionResponse"))

(smithy/sdk/shapes:define-input start-media-analysis-job-request
                                common-lisp:nil
                                ((client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (job-name :target-type media-analysis-job-name
                                  :member-name "JobName")
                                 (operations-config :target-type
                                  media-analysis-operations-config :required
                                  common-lisp:t :member-name
                                  "OperationsConfig")
                                 (input :target-type media-analysis-input
                                  :required common-lisp:t :member-name "Input")
                                 (output-config :target-type
                                  media-analysis-output-config :required
                                  common-lisp:t :member-name "OutputConfig")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "KmsKeyId"))
                                (:shape-name "StartMediaAnalysisJobRequest"))

(smithy/sdk/shapes:define-output start-media-analysis-job-response
                                 common-lisp:nil
                                 ((job-id :target-type media-analysis-job-id
                                   :required common-lisp:t :member-name
                                   "JobId"))
                                 (:shape-name "StartMediaAnalysisJobResponse"))

(smithy/sdk/shapes:define-input start-person-tracking-request common-lisp:nil
                                ((video :target-type video :required
                                  common-lisp:t :member-name "Video")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (notification-channel :target-type
                                  notification-channel :member-name
                                  "NotificationChannel")
                                 (job-tag :target-type job-tag :member-name
                                  "JobTag"))
                                (:shape-name "StartPersonTrackingRequest"))

(smithy/sdk/shapes:define-output start-person-tracking-response common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "StartPersonTrackingResponse"))

(smithy/sdk/shapes:define-input start-project-version-request common-lisp:nil
                                ((project-version-arn :target-type
                                  project-version-arn :required common-lisp:t
                                  :member-name "ProjectVersionArn")
                                 (min-inference-units :target-type
                                  inference-units :required common-lisp:t
                                  :member-name "MinInferenceUnits")
                                 (max-inference-units :target-type
                                  inference-units :member-name
                                  "MaxInferenceUnits"))
                                (:shape-name "StartProjectVersionRequest"))

(smithy/sdk/shapes:define-output start-project-version-response common-lisp:nil
                                 ((status :target-type project-version-status
                                   :member-name "Status"))
                                 (:shape-name "StartProjectVersionResponse"))

(smithy/sdk/shapes:define-structure start-segment-detection-filters
                                    common-lisp:nil
                                    ((technical-cue-filter :target-type
                                      start-technical-cue-detection-filter
                                      :member-name "TechnicalCueFilter")
                                     (shot-filter :target-type
                                      start-shot-detection-filter :member-name
                                      "ShotFilter"))
                                    (:shape-name
                                     "StartSegmentDetectionFilters"))

(smithy/sdk/shapes:define-input start-segment-detection-request common-lisp:nil
                                ((video :target-type video :required
                                  common-lisp:t :member-name "Video")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (notification-channel :target-type
                                  notification-channel :member-name
                                  "NotificationChannel")
                                 (job-tag :target-type job-tag :member-name
                                  "JobTag")
                                 (filters :target-type
                                  start-segment-detection-filters :member-name
                                  "Filters")
                                 (segment-types :target-type segment-types
                                  :required common-lisp:t :member-name
                                  "SegmentTypes"))
                                (:shape-name "StartSegmentDetectionRequest"))

(smithy/sdk/shapes:define-output start-segment-detection-response
                                 common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "StartSegmentDetectionResponse"))

(smithy/sdk/shapes:define-structure start-shot-detection-filter common-lisp:nil
                                    ((min-segment-confidence :target-type
                                      segment-confidence :member-name
                                      "MinSegmentConfidence"))
                                    (:shape-name "StartShotDetectionFilter"))

(smithy/sdk/shapes:define-input start-stream-processor-request common-lisp:nil
                                ((name :target-type stream-processor-name
                                  :required common-lisp:t :member-name "Name")
                                 (start-selector :target-type
                                  stream-processing-start-selector :member-name
                                  "StartSelector")
                                 (stop-selector :target-type
                                  stream-processing-stop-selector :member-name
                                  "StopSelector"))
                                (:shape-name "StartStreamProcessorRequest"))

(smithy/sdk/shapes:define-output start-stream-processor-response
                                 common-lisp:nil
                                 ((session-id :target-type
                                   start-stream-processor-session-id
                                   :member-name "SessionId"))
                                 (:shape-name "StartStreamProcessorResponse"))

(smithy/sdk/shapes:define-type start-stream-processor-session-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure start-technical-cue-detection-filter
                                    common-lisp:nil
                                    ((min-segment-confidence :target-type
                                      segment-confidence :member-name
                                      "MinSegmentConfidence")
                                     (black-frame :target-type black-frame
                                      :member-name "BlackFrame"))
                                    (:shape-name
                                     "StartTechnicalCueDetectionFilter"))

(smithy/sdk/shapes:define-structure start-text-detection-filters
                                    common-lisp:nil
                                    ((word-filter :target-type detection-filter
                                      :member-name "WordFilter")
                                     (regions-of-interest :target-type
                                      regions-of-interest :member-name
                                      "RegionsOfInterest"))
                                    (:shape-name "StartTextDetectionFilters"))

(smithy/sdk/shapes:define-input start-text-detection-request common-lisp:nil
                                ((video :target-type video :required
                                  common-lisp:t :member-name "Video")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (notification-channel :target-type
                                  notification-channel :member-name
                                  "NotificationChannel")
                                 (job-tag :target-type job-tag :member-name
                                  "JobTag")
                                 (filters :target-type
                                  start-text-detection-filters :member-name
                                  "Filters"))
                                (:shape-name "StartTextDetectionRequest"))

(smithy/sdk/shapes:define-output start-text-detection-response common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "StartTextDetectionResponse"))

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input stop-project-version-request common-lisp:nil
                                ((project-version-arn :target-type
                                  project-version-arn :required common-lisp:t
                                  :member-name "ProjectVersionArn"))
                                (:shape-name "StopProjectVersionRequest"))

(smithy/sdk/shapes:define-output stop-project-version-response common-lisp:nil
                                 ((status :target-type project-version-status
                                   :member-name "Status"))
                                 (:shape-name "StopProjectVersionResponse"))

(smithy/sdk/shapes:define-input stop-stream-processor-request common-lisp:nil
                                ((name :target-type stream-processor-name
                                  :required common-lisp:t :member-name "Name"))
                                (:shape-name "StopStreamProcessorRequest"))

(smithy/sdk/shapes:define-output stop-stream-processor-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StopStreamProcessorResponse"))

(smithy/sdk/shapes:define-structure stream-processing-start-selector
                                    common-lisp:nil
                                    ((kvsstream-start-selector :target-type
                                      kinesis-video-stream-start-selector
                                      :member-name "KVSStreamStartSelector"))
                                    (:shape-name
                                     "StreamProcessingStartSelector"))

(smithy/sdk/shapes:define-structure stream-processing-stop-selector
                                    common-lisp:nil
                                    ((max-duration-in-seconds :target-type
                                      max-duration-in-seconds-ulong
                                      :member-name "MaxDurationInSeconds"))
                                    (:shape-name
                                     "StreamProcessingStopSelector"))

(smithy/sdk/shapes:define-structure stream-processor common-lisp:nil
                                    ((name :target-type stream-processor-name
                                      :member-name "Name")
                                     (status :target-type
                                      stream-processor-status :member-name
                                      "Status"))
                                    (:shape-name "StreamProcessor"))

(smithy/sdk/shapes:define-type stream-processor-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stream-processor-data-sharing-preference
                                    common-lisp:nil
                                    ((opt-in :target-type boolean :required
                                      common-lisp:t :member-name "OptIn"))
                                    (:shape-name
                                     "StreamProcessorDataSharingPreference"))

(smithy/sdk/shapes:define-structure stream-processor-input common-lisp:nil
                                    ((kinesis-video-stream :target-type
                                      kinesis-video-stream :member-name
                                      "KinesisVideoStream"))
                                    (:shape-name "StreamProcessorInput"))

(smithy/sdk/shapes:define-list stream-processor-list :member stream-processor)

(smithy/sdk/shapes:define-type stream-processor-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stream-processor-notification-channel
                                    common-lisp:nil
                                    ((snstopic-arn :target-type snstopic-arn
                                      :required common-lisp:t :member-name
                                      "SNSTopicArn"))
                                    (:shape-name
                                     "StreamProcessorNotificationChannel"))

(smithy/sdk/shapes:define-structure stream-processor-output common-lisp:nil
                                    ((kinesis-data-stream :target-type
                                      kinesis-data-stream :member-name
                                      "KinesisDataStream")
                                     (s3destination :target-type s3destination
                                      :member-name "S3Destination"))
                                    (:shape-name "StreamProcessorOutput"))

(smithy/sdk/shapes:define-enum stream-processor-parameter-to-delete
    common-lisp:nil
  (:connected-home-min-confidence "ConnectedHomeMinConfidence")
  (:regions-of-interest "RegionsOfInterest"))

(smithy/sdk/shapes:define-list stream-processor-parameters-to-delete :member
                               stream-processor-parameter-to-delete)

(smithy/sdk/shapes:define-structure stream-processor-settings common-lisp:nil
                                    ((face-search :target-type
                                      face-search-settings :member-name
                                      "FaceSearch")
                                     (connected-home :target-type
                                      connected-home-settings :member-name
                                      "ConnectedHome"))
                                    (:shape-name "StreamProcessorSettings"))

(smithy/sdk/shapes:define-structure stream-processor-settings-for-update
                                    common-lisp:nil
                                    ((connected-home-for-update :target-type
                                      connected-home-settings-for-update
                                      :member-name "ConnectedHomeForUpdate"))
                                    (:shape-name
                                     "StreamProcessorSettingsForUpdate"))

(smithy/sdk/shapes:define-enum stream-processor-status
    common-lisp:nil
  (:stopped "STOPPED")
  (:starting "STARTING")
  (:running "RUNNING")
  (:failed "FAILED")
  (:stopping "STOPPING")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure summary common-lisp:nil
                                    ((s3object :target-type s3object
                                      :member-name "S3Object"))
                                    (:shape-name "Summary"))

(smithy/sdk/shapes:define-structure sunglasses common-lisp:nil
                                    ((value :target-type boolean :member-name
                                      "Value")
                                     (confidence :target-type percent
                                      :member-name "Confidence"))
                                    (:shape-name "Sunglasses"))

(smithy/sdk/shapes:define-type
 synthesized-json-human-loop-activation-conditions-evaluation-results
 smithy/sdk/smithy-types:string :media-type "application/json")

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure technical-cue-segment common-lisp:nil
                                    ((type :target-type technical-cue-type
                                      :member-name "Type")
                                     (confidence :target-type
                                      segment-confidence :member-name
                                      "Confidence"))
                                    (:shape-name "TechnicalCueSegment"))

(smithy/sdk/shapes:define-enum technical-cue-type
    common-lisp:nil
  (:color-bars "ColorBars")
  (:end-credits "EndCredits")
  (:black-frames "BlackFrames")
  (:opening-credits "OpeningCredits")
  (:studio-logo "StudioLogo")
  (:slate "Slate")
  (:content "Content"))

(smithy/sdk/shapes:define-structure testing-data common-lisp:nil
                                    ((assets :target-type assets :member-name
                                      "Assets")
                                     (auto-create :target-type boolean
                                      :member-name "AutoCreate"))
                                    (:shape-name "TestingData"))

(smithy/sdk/shapes:define-structure testing-data-result common-lisp:nil
                                    ((input :target-type testing-data
                                      :member-name "Input")
                                     (output :target-type testing-data
                                      :member-name "Output")
                                     (validation :target-type validation-data
                                      :member-name "Validation"))
                                    (:shape-name "TestingDataResult"))

(smithy/sdk/shapes:define-structure text-detection common-lisp:nil
                                    ((detected-text :target-type string
                                      :member-name "DetectedText")
                                     (type :target-type text-types :member-name
                                      "Type")
                                     (id :target-type uinteger :member-name
                                      "Id")
                                     (parent-id :target-type uinteger
                                      :member-name "ParentId")
                                     (confidence :target-type percent
                                      :member-name "Confidence")
                                     (geometry :target-type geometry
                                      :member-name "Geometry"))
                                    (:shape-name "TextDetection"))

(smithy/sdk/shapes:define-list text-detection-list :member text-detection)

(smithy/sdk/shapes:define-structure text-detection-result common-lisp:nil
                                    ((timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (text-detection :target-type
                                      text-detection :member-name
                                      "TextDetection"))
                                    (:shape-name "TextDetectionResult"))

(smithy/sdk/shapes:define-list text-detection-results :member
                               text-detection-result)

(smithy/sdk/shapes:define-enum text-types
    common-lisp:nil
  (:line "LINE")
  (:word "WORD"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "ThrottlingException")
                                (:error-code 500)
                                (:base-class rekognition-error))

(smithy/sdk/shapes:define-type timecode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure training-data common-lisp:nil
                                    ((assets :target-type assets :member-name
                                      "Assets"))
                                    (:shape-name "TrainingData"))

(smithy/sdk/shapes:define-structure training-data-result common-lisp:nil
                                    ((input :target-type training-data
                                      :member-name "Input")
                                     (output :target-type training-data
                                      :member-name "Output")
                                     (validation :target-type validation-data
                                      :member-name "Validation"))
                                    (:shape-name "TrainingDataResult"))

(smithy/sdk/shapes:define-type uinteger smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ulong smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure unindexed-face common-lisp:nil
                                    ((reasons :target-type reasons :member-name
                                      "Reasons")
                                     (face-detail :target-type face-detail
                                      :member-name "FaceDetail"))
                                    (:shape-name "UnindexedFace"))

(smithy/sdk/shapes:define-list unindexed-faces :member unindexed-face)

(smithy/sdk/shapes:define-structure unsearched-face common-lisp:nil
                                    ((face-details :target-type face-detail
                                      :member-name "FaceDetails")
                                     (reasons :target-type
                                      unsearched-face-reasons :member-name
                                      "Reasons"))
                                    (:shape-name "UnsearchedFace"))

(smithy/sdk/shapes:define-enum unsearched-face-reason
    common-lisp:nil
  (:face-not-largest "FACE_NOT_LARGEST")
  (:exceeds-max-faces "EXCEEDS_MAX_FACES")
  (:extreme-pose "EXTREME_POSE")
  (:low-brightness "LOW_BRIGHTNESS")
  (:low-sharpness "LOW_SHARPNESS")
  (:low-confidence "LOW_CONFIDENCE")
  (:small-bounding-box "SMALL_BOUNDING_BOX")
  (:low-face-quality "LOW_FACE_QUALITY"))

(smithy/sdk/shapes:define-list unsearched-face-reasons :member
                               unsearched-face-reason)

(smithy/sdk/shapes:define-list unsearched-faces-list :member unsearched-face)

(smithy/sdk/shapes:define-structure unsuccessful-face-association
                                    common-lisp:nil
                                    ((face-id :target-type face-id :member-name
                                      "FaceId")
                                     (user-id :target-type user-id :member-name
                                      "UserId")
                                     (confidence :target-type percent
                                      :member-name "Confidence")
                                     (reasons :target-type
                                      unsuccessful-face-association-reasons
                                      :member-name "Reasons"))
                                    (:shape-name "UnsuccessfulFaceAssociation"))

(smithy/sdk/shapes:define-list unsuccessful-face-association-list :member
                               unsuccessful-face-association)

(smithy/sdk/shapes:define-enum unsuccessful-face-association-reason
    common-lisp:nil
  (:face-not-found "FACE_NOT_FOUND")
  (:associated-to-a-different-user "ASSOCIATED_TO_A_DIFFERENT_USER")
  (:low-match-confidence "LOW_MATCH_CONFIDENCE"))

(smithy/sdk/shapes:define-list unsuccessful-face-association-reasons :member
                               unsuccessful-face-association-reason)

(smithy/sdk/shapes:define-structure unsuccessful-face-deletion common-lisp:nil
                                    ((face-id :target-type face-id :member-name
                                      "FaceId")
                                     (user-id :target-type user-id :member-name
                                      "UserId")
                                     (reasons :target-type
                                      unsuccessful-face-deletion-reasons
                                      :member-name "Reasons"))
                                    (:shape-name "UnsuccessfulFaceDeletion"))

(smithy/sdk/shapes:define-enum unsuccessful-face-deletion-reason
    common-lisp:nil
  (:associated-to-an-existing-user "ASSOCIATED_TO_AN_EXISTING_USER")
  (:face-not-found "FACE_NOT_FOUND"))

(smithy/sdk/shapes:define-list unsuccessful-face-deletion-reasons :member
                               unsuccessful-face-deletion-reason)

(smithy/sdk/shapes:define-list unsuccessful-face-deletions-list :member
                               unsuccessful-face-deletion)

(smithy/sdk/shapes:define-structure unsuccessful-face-disassociation
                                    common-lisp:nil
                                    ((face-id :target-type face-id :member-name
                                      "FaceId")
                                     (user-id :target-type user-id :member-name
                                      "UserId")
                                     (reasons :target-type
                                      unsuccessful-face-disassociation-reasons
                                      :member-name "Reasons"))
                                    (:shape-name
                                     "UnsuccessfulFaceDisassociation"))

(smithy/sdk/shapes:define-list unsuccessful-face-disassociation-list :member
                               unsuccessful-face-disassociation)

(smithy/sdk/shapes:define-enum unsuccessful-face-disassociation-reason
    common-lisp:nil
  (:face-not-found "FACE_NOT_FOUND")
  (:associated-to-a-different-user "ASSOCIATED_TO_A_DIFFERENT_USER"))

(smithy/sdk/shapes:define-list unsuccessful-face-disassociation-reasons :member
                               unsuccessful-face-disassociation-reason)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-dataset-entries-request common-lisp:nil
                                ((dataset-arn :target-type dataset-arn
                                  :required common-lisp:t :member-name
                                  "DatasetArn")
                                 (changes :target-type dataset-changes
                                  :required common-lisp:t :member-name
                                  "Changes"))
                                (:shape-name "UpdateDatasetEntriesRequest"))

(smithy/sdk/shapes:define-output update-dataset-entries-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateDatasetEntriesResponse"))

(smithy/sdk/shapes:define-input update-stream-processor-request common-lisp:nil
                                ((name :target-type stream-processor-name
                                  :required common-lisp:t :member-name "Name")
                                 (settings-for-update :target-type
                                  stream-processor-settings-for-update
                                  :member-name "SettingsForUpdate")
                                 (regions-of-interest-for-update :target-type
                                  regions-of-interest :member-name
                                  "RegionsOfInterestForUpdate")
                                 (data-sharing-preference-for-update
                                  :target-type
                                  stream-processor-data-sharing-preference
                                  :member-name
                                  "DataSharingPreferenceForUpdate")
                                 (parameters-to-delete :target-type
                                  stream-processor-parameters-to-delete
                                  :member-name "ParametersToDelete"))
                                (:shape-name "UpdateStreamProcessorRequest"))

(smithy/sdk/shapes:define-output update-stream-processor-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateStreamProcessorResponse"))

(smithy/sdk/shapes:define-type url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list urls :member url)

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((user-id :target-type user-id :member-name
                                      "UserId")
                                     (user-status :target-type user-status
                                      :member-name "UserStatus"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-list user-face-id-list :member face-id)

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list user-list :member user)

(smithy/sdk/shapes:define-structure user-match common-lisp:nil
                                    ((similarity :target-type percent
                                      :member-name "Similarity")
                                     (user :target-type matched-user
                                      :member-name "User"))
                                    (:shape-name "UserMatch"))

(smithy/sdk/shapes:define-list user-match-list :member user-match)

(smithy/sdk/shapes:define-enum user-status
    common-lisp:nil
  (:active "ACTIVE")
  (:updating "UPDATING")
  (:creating "CREATING")
  (:created "CREATED"))

(smithy/sdk/shapes:define-structure validation-data common-lisp:nil
                                    ((assets :target-type assets :member-name
                                      "Assets"))
                                    (:shape-name "ValidationData"))

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list version-names :member version-name)

(smithy/sdk/shapes:define-structure versions common-lisp:nil
                                    ((minimum :target-type version :member-name
                                      "Minimum")
                                     (maximum :target-type version :member-name
                                      "Maximum"))
                                    (:shape-name "Versions"))

(smithy/sdk/shapes:define-structure video common-lisp:nil
                                    ((s3object :target-type s3object
                                      :member-name "S3Object"))
                                    (:shape-name "Video"))

(smithy/sdk/shapes:define-enum video-color-range
    common-lisp:nil
  (:full "FULL")
  (:limited "LIMITED"))

(smithy/sdk/shapes:define-enum video-job-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure video-metadata common-lisp:nil
                                    ((codec :target-type string :member-name
                                      "Codec")
                                     (duration-millis :target-type ulong
                                      :member-name "DurationMillis")
                                     (format :target-type string :member-name
                                      "Format")
                                     (frame-rate :target-type float
                                      :member-name "FrameRate")
                                     (frame-height :target-type ulong
                                      :member-name "FrameHeight")
                                     (frame-width :target-type ulong
                                      :member-name "FrameWidth")
                                     (color-range :target-type
                                      video-color-range :member-name
                                      "ColorRange"))
                                    (:shape-name "VideoMetadata"))

(smithy/sdk/shapes:define-list video-metadata-list :member video-metadata)

(smithy/sdk/shapes:define-error video-too-large-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (code :target-type string :member-name "Code")
                                 (logref :target-type string :member-name
                                  "Logref"))
                                (:shape-name "VideoTooLargeException")
                                (:error-code 400)
                                (:base-class rekognition-error))

(smithy/sdk/operation:define-operation associate-faces :shape-name
                                       "AssociateFaces" :input
                                       associate-faces-request :output
                                       associate-faces-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation compare-faces :shape-name "CompareFaces"
                                       :input compare-faces-request :output
                                       compare-faces-response :errors
                                       (access-denied-exception
                                        image-too-large-exception
                                        internal-server-error
                                        invalid-image-format-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation copy-project-version :shape-name
                                       "CopyProjectVersion" :input
                                       copy-project-version-request :output
                                       copy-project-version-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-collection :shape-name
                                       "CreateCollection" :input
                                       create-collection-request :output
                                       create-collection-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-already-exists-exception
                                        service-quota-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-dataset :shape-name
                                       "CreateDataset" :input
                                       create-dataset-request :output
                                       create-dataset-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-face-liveness-session :shape-name
                                       "CreateFaceLivenessSession" :input
                                       create-face-liveness-session-request
                                       :output
                                       create-face-liveness-session-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-project :shape-name
                                       "CreateProject" :input
                                       create-project-request :output
                                       create-project-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-project-version :shape-name
                                       "CreateProjectVersion" :input
                                       create-project-version-request :output
                                       create-project-version-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-stream-processor :shape-name
                                       "CreateStreamProcessor" :input
                                       create-stream-processor-request :output
                                       create-stream-processor-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        service-quota-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-user :shape-name "CreateUser"
                                       :input create-user-request :output
                                       create-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-collection :shape-name
                                       "DeleteCollection" :input
                                       delete-collection-request :output
                                       delete-collection-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-dataset :shape-name
                                       "DeleteDataset" :input
                                       delete-dataset-request :output
                                       delete-dataset-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-faces :shape-name "DeleteFaces"
                                       :input delete-faces-request :output
                                       delete-faces-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-project :shape-name
                                       "DeleteProject" :input
                                       delete-project-request :output
                                       delete-project-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-project-policy :shape-name
                                       "DeleteProjectPolicy" :input
                                       delete-project-policy-request :output
                                       delete-project-policy-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-policy-revision-id-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-project-version :shape-name
                                       "DeleteProjectVersion" :input
                                       delete-project-version-request :output
                                       delete-project-version-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-stream-processor :shape-name
                                       "DeleteStreamProcessor" :input
                                       delete-stream-processor-request :output
                                       delete-stream-processor-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-user :shape-name "DeleteUser"
                                       :input delete-user-request :output
                                       delete-user-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-collection :shape-name
                                       "DescribeCollection" :input
                                       describe-collection-request :output
                                       describe-collection-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-dataset :shape-name
                                       "DescribeDataset" :input
                                       describe-dataset-request :output
                                       describe-dataset-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-project-versions :shape-name
                                       "DescribeProjectVersions" :input
                                       describe-project-versions-request
                                       :output
                                       describe-project-versions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-projects :shape-name
                                       "DescribeProjects" :input
                                       describe-projects-request :output
                                       describe-projects-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-stream-processor :shape-name
                                       "DescribeStreamProcessor" :input
                                       describe-stream-processor-request
                                       :output
                                       describe-stream-processor-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation detect-custom-labels :shape-name
                                       "DetectCustomLabels" :input
                                       detect-custom-labels-request :output
                                       detect-custom-labels-response :errors
                                       (access-denied-exception
                                        image-too-large-exception
                                        internal-server-error
                                        invalid-image-format-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation detect-faces :shape-name "DetectFaces"
                                       :input detect-faces-request :output
                                       detect-faces-response :errors
                                       (access-denied-exception
                                        image-too-large-exception
                                        internal-server-error
                                        invalid-image-format-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation detect-labels :shape-name "DetectLabels"
                                       :input detect-labels-request :output
                                       detect-labels-response :errors
                                       (access-denied-exception
                                        image-too-large-exception
                                        internal-server-error
                                        invalid-image-format-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation detect-moderation-labels :shape-name
                                       "DetectModerationLabels" :input
                                       detect-moderation-labels-request :output
                                       detect-moderation-labels-response
                                       :errors
                                       (access-denied-exception
                                        human-loop-quota-exceeded-exception
                                        image-too-large-exception
                                        internal-server-error
                                        invalid-image-format-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation detect-protective-equipment :shape-name
                                       "DetectProtectiveEquipment" :input
                                       detect-protective-equipment-request
                                       :output
                                       detect-protective-equipment-response
                                       :errors
                                       (access-denied-exception
                                        image-too-large-exception
                                        internal-server-error
                                        invalid-image-format-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation detect-text :shape-name "DetectText"
                                       :input detect-text-request :output
                                       detect-text-response :errors
                                       (access-denied-exception
                                        image-too-large-exception
                                        internal-server-error
                                        invalid-image-format-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation disassociate-faces :shape-name
                                       "DisassociateFaces" :input
                                       disassociate-faces-request :output
                                       disassociate-faces-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation distribute-dataset-entries :shape-name
                                       "DistributeDatasetEntries" :input
                                       distribute-dataset-entries-request
                                       :output
                                       distribute-dataset-entries-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-celebrity-info :shape-name
                                       "GetCelebrityInfo" :input
                                       get-celebrity-info-request :output
                                       get-celebrity-info-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-celebrity-recognition :shape-name
                                       "GetCelebrityRecognition" :input
                                       get-celebrity-recognition-request
                                       :output
                                       get-celebrity-recognition-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-content-moderation :shape-name
                                       "GetContentModeration" :input
                                       get-content-moderation-request :output
                                       get-content-moderation-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-face-detection :shape-name
                                       "GetFaceDetection" :input
                                       get-face-detection-request :output
                                       get-face-detection-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-face-liveness-session-results
                                       :shape-name
                                       "GetFaceLivenessSessionResults" :input
                                       get-face-liveness-session-results-request
                                       :output
                                       get-face-liveness-session-results-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        session-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-face-search :shape-name
                                       "GetFaceSearch" :input
                                       get-face-search-request :output
                                       get-face-search-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-label-detection :shape-name
                                       "GetLabelDetection" :input
                                       get-label-detection-request :output
                                       get-label-detection-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-media-analysis-job :shape-name
                                       "GetMediaAnalysisJob" :input
                                       get-media-analysis-job-request :output
                                       get-media-analysis-job-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-person-tracking :shape-name
                                       "GetPersonTracking" :input
                                       get-person-tracking-request :output
                                       get-person-tracking-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-segment-detection :shape-name
                                       "GetSegmentDetection" :input
                                       get-segment-detection-request :output
                                       get-segment-detection-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-text-detection :shape-name
                                       "GetTextDetection" :input
                                       get-text-detection-request :output
                                       get-text-detection-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation index-faces :shape-name "IndexFaces"
                                       :input index-faces-request :output
                                       index-faces-response :errors
                                       (access-denied-exception
                                        image-too-large-exception
                                        internal-server-error
                                        invalid-image-format-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-collections :shape-name
                                       "ListCollections" :input
                                       list-collections-request :output
                                       list-collections-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-dataset-entries :shape-name
                                       "ListDatasetEntries" :input
                                       list-dataset-entries-request :output
                                       list-dataset-entries-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-dataset-labels :shape-name
                                       "ListDatasetLabels" :input
                                       list-dataset-labels-request :output
                                       list-dataset-labels-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-faces :shape-name "ListFaces"
                                       :input list-faces-request :output
                                       list-faces-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-media-analysis-jobs :shape-name
                                       "ListMediaAnalysisJobs" :input
                                       list-media-analysis-jobs-request :output
                                       list-media-analysis-jobs-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-project-policies :shape-name
                                       "ListProjectPolicies" :input
                                       list-project-policies-request :output
                                       list-project-policies-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-stream-processors :shape-name
                                       "ListStreamProcessors" :input
                                       list-stream-processors-request :output
                                       list-stream-processors-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-users :shape-name "ListUsers"
                                       :input list-users-request :output
                                       list-users-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-pagination-token-exception
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation put-project-policy :shape-name
                                       "PutProjectPolicy" :input
                                       put-project-policy-request :output
                                       put-project-policy-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-policy-revision-id-exception
                                        limit-exceeded-exception
                                        malformed-policy-document-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-already-exists-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation recognize-celebrities :shape-name
                                       "RecognizeCelebrities" :input
                                       recognize-celebrities-request :output
                                       recognize-celebrities-response :errors
                                       (access-denied-exception
                                        image-too-large-exception
                                        internal-server-error
                                        invalid-image-format-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation search-faces :shape-name "SearchFaces"
                                       :input search-faces-request :output
                                       search-faces-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation search-faces-by-image :shape-name
                                       "SearchFacesByImage" :input
                                       search-faces-by-image-request :output
                                       search-faces-by-image-response :errors
                                       (access-denied-exception
                                        image-too-large-exception
                                        internal-server-error
                                        invalid-image-format-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation search-users :shape-name "SearchUsers"
                                       :input search-users-request :output
                                       search-users-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation search-users-by-image :shape-name
                                       "SearchUsersByImage" :input
                                       search-users-by-image-request :output
                                       search-users-by-image-response :errors
                                       (access-denied-exception
                                        image-too-large-exception
                                        internal-server-error
                                        invalid-image-format-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation start-celebrity-recognition :shape-name
                                       "StartCelebrityRecognition" :input
                                       start-celebrity-recognition-request
                                       :output
                                       start-celebrity-recognition-response
                                       :errors
                                       (access-denied-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        video-too-large-exception))

(smithy/sdk/operation:define-operation start-content-moderation :shape-name
                                       "StartContentModeration" :input
                                       start-content-moderation-request :output
                                       start-content-moderation-response
                                       :errors
                                       (access-denied-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        video-too-large-exception))

(smithy/sdk/operation:define-operation start-face-detection :shape-name
                                       "StartFaceDetection" :input
                                       start-face-detection-request :output
                                       start-face-detection-response :errors
                                       (access-denied-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        video-too-large-exception))

(smithy/sdk/operation:define-operation start-face-search :shape-name
                                       "StartFaceSearch" :input
                                       start-face-search-request :output
                                       start-face-search-response :errors
                                       (access-denied-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        video-too-large-exception))

(smithy/sdk/operation:define-operation start-label-detection :shape-name
                                       "StartLabelDetection" :input
                                       start-label-detection-request :output
                                       start-label-detection-response :errors
                                       (access-denied-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        video-too-large-exception))

(smithy/sdk/operation:define-operation start-media-analysis-job :shape-name
                                       "StartMediaAnalysisJob" :input
                                       start-media-analysis-job-request :output
                                       start-media-analysis-job-response
                                       :errors
                                       (access-denied-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-manifest-exception
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation start-person-tracking :shape-name
                                       "StartPersonTracking" :input
                                       start-person-tracking-request :output
                                       start-person-tracking-response :errors
                                       (access-denied-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        video-too-large-exception))

(smithy/sdk/operation:define-operation start-project-version :shape-name
                                       "StartProjectVersion" :input
                                       start-project-version-request :output
                                       start-project-version-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation start-segment-detection :shape-name
                                       "StartSegmentDetection" :input
                                       start-segment-detection-request :output
                                       start-segment-detection-response :errors
                                       (access-denied-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        video-too-large-exception))

(smithy/sdk/operation:define-operation start-stream-processor :shape-name
                                       "StartStreamProcessor" :input
                                       start-stream-processor-request :output
                                       start-stream-processor-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation start-text-detection :shape-name
                                       "StartTextDetection" :input
                                       start-text-detection-request :output
                                       start-text-detection-response :errors
                                       (access-denied-exception
                                        idempotent-parameter-mismatch-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        invalid-s3object-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        throttling-exception
                                        video-too-large-exception))

(smithy/sdk/operation:define-operation stop-project-version :shape-name
                                       "StopProjectVersion" :input
                                       stop-project-version-request :output
                                       stop-project-version-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation stop-stream-processor :shape-name
                                       "StopStreamProcessor" :input
                                       stop-stream-processor-request :output
                                       stop-stream-processor-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-dataset-entries :shape-name
                                       "UpdateDatasetEntries" :input
                                       update-dataset-entries-request :output
                                       update-dataset-entries-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        limit-exceeded-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-stream-processor :shape-name
                                       "UpdateStreamProcessor" :input
                                       update-stream-processor-request :output
                                       update-stream-processor-response :errors
                                       (access-denied-exception
                                        internal-server-error
                                        invalid-parameter-exception
                                        provisioned-throughput-exceeded-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))
