(uiop/package:define-package #:pira/sagemaker-geospatial (:use)
                             (:export #:algorithm-name-cloud-removal
                              #:algorithm-name-geo-mosaic
                              #:algorithm-name-resampling #:area-of-interest
                              #:area-of-interest-geometry #:arn #:asset-value
                              #:assets-map #:band-math-config-input
                              #:binary-file #:cloud-masking-config-input
                              #:cloud-removal-config-input
                              #:comparison-operator #:custom-indices-input
                              #:data-collection-arn #:data-collection-type
                              #:data-collections-list
                              #:delete-earth-observation-job
                              #:delete-vector-enrichment-job
                              #:earth-observation-job
                              #:earth-observation-job-arn
                              #:earth-observation-job-error-details
                              #:earth-observation-job-error-type
                              #:earth-observation-job-export-status
                              #:earth-observation-job-list
                              #:earth-observation-job-output-bands
                              #:earth-observation-job-status
                              #:eo-cloud-cover-input #:execution-role-arn
                              #:export-earth-observation-job
                              #:export-earth-observation-job-input
                              #:export-earth-observation-job-output
                              #:export-error-details
                              #:export-error-details-output #:export-error-type
                              #:export-s3data-input
                              #:export-vector-enrichment-job
                              #:export-vector-enrichment-job-output-config
                              #:filter #:filter-list #:geo-mosaic-config-input
                              #:geometry #:get-earth-observation-job
                              #:get-raster-data-collection
                              #:get-raster-data-collection-input
                              #:get-raster-data-collection-output #:get-tile
                              #:get-vector-enrichment-job #:group-by
                              #:image-source-band-list #:input-config-input
                              #:input-config-output #:item-source
                              #:item-source-list #:job-config-input #:kms-key
                              #:land-cover-segmentation-config-input
                              #:landsat-cloud-cover-land-input #:linear-ring
                              #:linear-rings #:linear-rings-list
                              #:list-earth-observation-job-input
                              #:list-earth-observation-job-output
                              #:list-earth-observation-job-output-config
                              #:list-earth-observation-jobs
                              #:list-raster-data-collections
                              #:list-raster-data-collections-input
                              #:list-raster-data-collections-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-vector-enrichment-job-input
                              #:list-vector-enrichment-job-output
                              #:list-vector-enrichment-job-output-config
                              #:list-vector-enrichment-jobs #:logical-operator
                              #:map-matching-config
                              #:multi-polygon-geometry-input #:next-token
                              #:operation #:operations-list-input #:output-band
                              #:output-config-input
                              #:output-resolution-resampling-input
                              #:output-resolution-stack-input #:output-type
                              #:platform-input #:polygon-geometry-input
                              #:position #:predefined-resolution #:properties
                              #:property #:property-filter #:property-filters
                              #:property-filters-list #:raster-data-collection
                              #:raster-data-collection-metadata
                              #:raster-data-collection-query-input
                              #:raster-data-collection-query-output
                              #:raster-data-collection-query-with-band-filter-input
                              #:resampling-config-input
                              #:reverse-geocoding-config #:s3uri
                              #:sage-maker-geospatial
                              #:search-raster-data-collection #:sort-order
                              #:stack-config-input
                              #:start-earth-observation-job
                              #:start-earth-observation-job-output
                              #:start-vector-enrichment-job
                              #:start-vector-enrichment-job-output
                              #:stop-earth-observation-job
                              #:stop-vector-enrichment-job #:string-list-input
                              #:tag-key-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tags #:target-options #:temporal-statistics
                              #:temporal-statistics-config-input
                              #:temporal-statistics-list-input
                              #:time-range-filter-input
                              #:time-range-filter-output #:unit
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:user-defined
                              #:vector-enrichment-job
                              #:vector-enrichment-job-arn
                              #:vector-enrichment-job-config
                              #:vector-enrichment-job-data-source-config-input
                              #:vector-enrichment-job-document-type
                              #:vector-enrichment-job-error-details
                              #:vector-enrichment-job-error-type
                              #:vector-enrichment-job-export-error-details
                              #:vector-enrichment-job-export-error-type
                              #:vector-enrichment-job-export-status
                              #:vector-enrichment-job-input-config
                              #:vector-enrichment-job-list
                              #:vector-enrichment-job-s3data
                              #:vector-enrichment-job-status
                              #:vector-enrichment-job-type
                              #:view-off-nadir-input #:view-sun-azimuth-input
                              #:view-sun-elevation-input #:zonal-statistics
                              #:zonal-statistics-config-input
                              #:zonal-statistics-list-input))
(common-lisp:in-package #:pira/sagemaker-geospatial)

(smithy/sdk/service:define-service sage-maker-geospatial :shape-name
                                   "SageMakerGeospatial" :version "2020-05-27"
                                   :title
                                   "Amazon SageMaker geospatial capabilities"
                                   :operations
                                   '(list-tags-for-resource tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "SageMaker Geospatial")
                                      ("arnNamespace" . "sagemaker-geospatial")
                                      ("cloudTrailEventSource"
                                       . "sagemaker-geospatial.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "sagemaker-geospatial"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type algorithm-name-cloud-removal
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type algorithm-name-geo-mosaic
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type algorithm-name-resampling
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union area-of-interest common-lisp:nil
                                ((area-of-interest-geometry :target-type
                                  area-of-interest-geometry :member-name
                                  "AreaOfInterestGeometry"))
                                (:shape-name "AreaOfInterest"))

(smithy/sdk/shapes:define-union area-of-interest-geometry common-lisp:nil
                                ((polygon-geometry :target-type
                                  polygon-geometry-input :member-name
                                  "PolygonGeometry")
                                 (multi-polygon-geometry :target-type
                                  multi-polygon-geometry-input :member-name
                                  "MultiPolygonGeometry"))
                                (:shape-name "AreaOfInterestGeometry"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure asset-value common-lisp:nil
                                    ((href :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Href"))
                                    (:shape-name "AssetValue"))

(smithy/sdk/shapes:define-map assets-map :key smithy/sdk/smithy-types:string
                              :value asset-value)

(smithy/sdk/shapes:define-structure band-math-config-input common-lisp:nil
                                    ((predefined-indices :target-type
                                      string-list-input :member-name
                                      "PredefinedIndices")
                                     (custom-indices :target-type
                                      custom-indices-input :member-name
                                      "CustomIndices"))
                                    (:shape-name "BandMathConfigInput"))

(smithy/sdk/shapes:define-type binary-file smithy/sdk/smithy-types:blob
                               :streaming common-lisp:t :media-type
                               "application/x-binary")

(smithy/sdk/shapes:define-structure cloud-masking-config-input common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "CloudMaskingConfigInput"))

(smithy/sdk/shapes:define-structure cloud-removal-config-input common-lisp:nil
                                    ((algorithm-name :target-type
                                      algorithm-name-cloud-removal :member-name
                                      "AlgorithmName")
                                     (interpolation-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "InterpolationValue")
                                     (target-bands :target-type
                                      string-list-input :member-name
                                      "TargetBands"))
                                    (:shape-name "CloudRemovalConfigInput"))

(smithy/sdk/shapes:define-type comparison-operator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ResourceId"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure custom-indices-input common-lisp:nil
                                    ((operations :target-type
                                      operations-list-input :member-name
                                      "Operations"))
                                    (:shape-name "CustomIndicesInput"))

(smithy/sdk/shapes:define-type data-collection-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type data-collection-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list data-collections-list :member
                               raster-data-collection-metadata)

(smithy/sdk/shapes:define-input delete-earth-observation-job-input
                                common-lisp:nil
                                ((arn :target-type earth-observation-job-arn
                                  :required common-lisp:t :member-name "Arn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteEarthObservationJobInput"))

(smithy/sdk/shapes:define-output delete-earth-observation-job-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteEarthObservationJobOutput"))

(smithy/sdk/shapes:define-input delete-vector-enrichment-job-input
                                common-lisp:nil
                                ((arn :target-type vector-enrichment-job-arn
                                  :required common-lisp:t :member-name "Arn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteVectorEnrichmentJobInput"))

(smithy/sdk/shapes:define-output delete-vector-enrichment-job-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteVectorEnrichmentJobOutput"))

common-lisp:nil

(smithy/sdk/shapes:define-type earth-observation-job-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure earth-observation-job-error-details
                                    common-lisp:nil
                                    ((type :target-type
                                      earth-observation-job-error-type
                                      :member-name "Type")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Message"))
                                    (:shape-name
                                     "EarthObservationJobErrorDetails"))

(smithy/sdk/shapes:define-type earth-observation-job-error-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type earth-observation-job-export-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list earth-observation-job-list :member
                               list-earth-observation-job-output-config)

(smithy/sdk/shapes:define-list earth-observation-job-output-bands :member
                               output-band)

(smithy/sdk/shapes:define-type earth-observation-job-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure eo-cloud-cover-input common-lisp:nil
                                    ((lower-bound :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name "LowerBound")
                                     (upper-bound :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name "UpperBound"))
                                    (:shape-name "EoCloudCoverInput"))

(smithy/sdk/shapes:define-type execution-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure export-earth-observation-job-input
                                    common-lisp:nil
                                    ((arn :target-type
                                      earth-observation-job-arn :required
                                      common-lisp:t :member-name "Arn")
                                     (client-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ClientToken")
                                     (execution-role-arn :target-type
                                      execution-role-arn :required
                                      common-lisp:t :member-name
                                      "ExecutionRoleArn")
                                     (output-config :target-type
                                      output-config-input :required
                                      common-lisp:t :member-name
                                      "OutputConfig")
                                     (export-source-images :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "ExportSourceImages"))
                                    (:shape-name
                                     "ExportEarthObservationJobInput"))

(smithy/sdk/shapes:define-structure export-earth-observation-job-output
                                    common-lisp:nil
                                    ((arn :target-type
                                      earth-observation-job-arn :required
                                      common-lisp:t :member-name "Arn")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime" :timestamp-format
                                      "date-time")
                                     (export-status :target-type
                                      earth-observation-job-export-status
                                      :required common-lisp:t :member-name
                                      "ExportStatus")
                                     (execution-role-arn :target-type
                                      execution-role-arn :required
                                      common-lisp:t :member-name
                                      "ExecutionRoleArn")
                                     (output-config :target-type
                                      output-config-input :required
                                      common-lisp:t :member-name
                                      "OutputConfig")
                                     (export-source-images :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "ExportSourceImages"))
                                    (:shape-name
                                     "ExportEarthObservationJobOutput"))

(smithy/sdk/shapes:define-structure export-error-details common-lisp:nil
                                    ((export-results :target-type
                                      export-error-details-output :member-name
                                      "ExportResults")
                                     (export-source-images :target-type
                                      export-error-details-output :member-name
                                      "ExportSourceImages"))
                                    (:shape-name "ExportErrorDetails"))

(smithy/sdk/shapes:define-structure export-error-details-output common-lisp:nil
                                    ((type :target-type export-error-type
                                      :member-name "Type")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Message"))
                                    (:shape-name "ExportErrorDetailsOutput"))

(smithy/sdk/shapes:define-type export-error-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure export-s3data-input common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (kms-key-id :target-type kms-key
                                      :member-name "KmsKeyId"))
                                    (:shape-name "ExportS3DataInput"))

(smithy/sdk/shapes:define-input export-vector-enrichment-job-input
                                common-lisp:nil
                                ((arn :target-type vector-enrichment-job-arn
                                  :required common-lisp:t :member-name "Arn")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ClientToken")
                                 (execution-role-arn :target-type
                                  execution-role-arn :required common-lisp:t
                                  :member-name "ExecutionRoleArn")
                                 (output-config :target-type
                                  export-vector-enrichment-job-output-config
                                  :required common-lisp:t :member-name
                                  "OutputConfig"))
                                (:shape-name "ExportVectorEnrichmentJobInput"))

(smithy/sdk/shapes:define-output export-vector-enrichment-job-output
                                 common-lisp:nil
                                 ((arn :target-type vector-enrichment-job-arn
                                   :required common-lisp:t :member-name "Arn")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreationTime"
                                   :timestamp-format "date-time")
                                  (execution-role-arn :target-type
                                   execution-role-arn :required common-lisp:t
                                   :member-name "ExecutionRoleArn")
                                  (export-status :target-type
                                   vector-enrichment-job-export-status
                                   :required common-lisp:t :member-name
                                   "ExportStatus")
                                  (output-config :target-type
                                   export-vector-enrichment-job-output-config
                                   :required common-lisp:t :member-name
                                   "OutputConfig"))
                                 (:shape-name
                                  "ExportVectorEnrichmentJobOutput"))

(smithy/sdk/shapes:define-structure export-vector-enrichment-job-output-config
                                    common-lisp:nil
                                    ((s3data :target-type
                                      vector-enrichment-job-s3data :required
                                      common-lisp:t :member-name "S3Data"))
                                    (:shape-name
                                     "ExportVectorEnrichmentJobOutputConfig"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Type")
                                     (minimum :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "Minimum")
                                     (maximum :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "Maximum"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-structure geo-mosaic-config-input common-lisp:nil
                                    ((algorithm-name :target-type
                                      algorithm-name-geo-mosaic :member-name
                                      "AlgorithmName")
                                     (target-bands :target-type
                                      string-list-input :member-name
                                      "TargetBands"))
                                    (:shape-name "GeoMosaicConfigInput"))

(smithy/sdk/shapes:define-structure geometry common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Type")
                                     (coordinates :target-type linear-rings
                                      :required common-lisp:t :member-name
                                      "Coordinates"))
                                    (:shape-name "Geometry"))

(smithy/sdk/shapes:define-input get-earth-observation-job-input common-lisp:nil
                                ((arn :target-type earth-observation-job-arn
                                  :required common-lisp:t :member-name "Arn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEarthObservationJobInput"))

(smithy/sdk/shapes:define-output get-earth-observation-job-output
                                 common-lisp:nil
                                 ((arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Name")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreationTime"
                                   :timestamp-format "date-time")
                                  (duration-in-seconds :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name
                                   "DurationInSeconds")
                                  (status :target-type
                                   earth-observation-job-status :required
                                   common-lisp:t :member-name "Status")
                                  (kms-key-id :target-type kms-key :member-name
                                   "KmsKeyId")
                                  (input-config :target-type
                                   input-config-output :required common-lisp:t
                                   :member-name "InputConfig")
                                  (job-config :target-type job-config-input
                                   :required common-lisp:t :member-name
                                   "JobConfig")
                                  (output-bands :target-type
                                   earth-observation-job-output-bands
                                   :member-name "OutputBands")
                                  (execution-role-arn :target-type
                                   execution-role-arn :member-name
                                   "ExecutionRoleArn")
                                  (error-details :target-type
                                   earth-observation-job-error-details
                                   :member-name "ErrorDetails")
                                  (export-status :target-type
                                   earth-observation-job-export-status
                                   :member-name "ExportStatus")
                                  (export-error-details :target-type
                                   export-error-details :member-name
                                   "ExportErrorDetails")
                                  (tags :target-type tags :member-name "Tags"))
                                 (:shape-name "GetEarthObservationJobOutput"))

(smithy/sdk/shapes:define-structure get-raster-data-collection-input
                                    common-lisp:nil
                                    ((arn :target-type data-collection-arn
                                      :required common-lisp:t :member-name
                                      "Arn"))
                                    (:shape-name
                                     "GetRasterDataCollectionInput"))

(smithy/sdk/shapes:define-structure get-raster-data-collection-output
                                    common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (arn :target-type data-collection-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (type :target-type data-collection-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Description")
                                     (description-page-url :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "DescriptionPageUrl")
                                     (supported-filters :target-type
                                      filter-list :required common-lisp:t
                                      :member-name "SupportedFilters")
                                     (image-source-bands :target-type
                                      image-source-band-list :required
                                      common-lisp:t :member-name
                                      "ImageSourceBands")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name
                                     "GetRasterDataCollectionOutput"))

(smithy/sdk/shapes:define-input get-tile-input common-lisp:nil
                                ((x :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "x" :http-label
                                  common-lisp:t)
                                 (y :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "y" :http-label
                                  common-lisp:t)
                                 (z :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "z" :http-label
                                  common-lisp:t)
                                 (image-assets :target-type string-list-input
                                  :required common-lisp:t :member-name
                                  "ImageAssets" :http-query "ImageAssets")
                                 (target :target-type target-options :required
                                  common-lisp:t :member-name "Target"
                                  :http-query "Target")
                                 (arn :target-type earth-observation-job-arn
                                  :required common-lisp:t :member-name "Arn"
                                  :http-query "Arn")
                                 (image-mask :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "ImageMask" :http-query "ImageMask")
                                 (output-format :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "OutputFormat" :http-query "OutputFormat")
                                 (time-range-filter :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "TimeRangeFilter" :http-query
                                  "TimeRangeFilter")
                                 (property-filters :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "PropertyFilters" :http-query
                                  "PropertyFilters")
                                 (output-data-type :target-type output-type
                                  :member-name "OutputDataType" :http-query
                                  "OutputDataType")
                                 (execution-role-arn :target-type
                                  execution-role-arn :member-name
                                  "ExecutionRoleArn" :http-query
                                  "ExecutionRoleArn"))
                                (:shape-name "GetTileInput"))

(smithy/sdk/shapes:define-output get-tile-output common-lisp:nil
                                 ((binary-file :target-type binary-file
                                   :member-name "BinaryFile" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetTileOutput"))

(smithy/sdk/shapes:define-input get-vector-enrichment-job-input common-lisp:nil
                                ((arn :target-type vector-enrichment-job-arn
                                  :required common-lisp:t :member-name "Arn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetVectorEnrichmentJobInput"))

(smithy/sdk/shapes:define-output get-vector-enrichment-job-output
                                 common-lisp:nil
                                 ((arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Arn")
                                  (type :target-type vector-enrichment-job-type
                                   :required common-lisp:t :member-name "Type")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "Name")
                                  (creation-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "CreationTime"
                                   :timestamp-format "date-time")
                                  (duration-in-seconds :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name
                                   "DurationInSeconds")
                                  (status :target-type
                                   vector-enrichment-job-status :required
                                   common-lisp:t :member-name "Status")
                                  (kms-key-id :target-type kms-key :member-name
                                   "KmsKeyId")
                                  (input-config :target-type
                                   vector-enrichment-job-input-config :required
                                   common-lisp:t :member-name "InputConfig")
                                  (job-config :target-type
                                   vector-enrichment-job-config :required
                                   common-lisp:t :member-name "JobConfig")
                                  (execution-role-arn :target-type
                                   execution-role-arn :required common-lisp:t
                                   :member-name "ExecutionRoleArn")
                                  (error-details :target-type
                                   vector-enrichment-job-error-details
                                   :member-name "ErrorDetails")
                                  (export-status :target-type
                                   vector-enrichment-job-export-status
                                   :member-name "ExportStatus")
                                  (export-error-details :target-type
                                   vector-enrichment-job-export-error-details
                                   :member-name "ExportErrorDetails")
                                  (tags :target-type tags :member-name "Tags"))
                                 (:shape-name "GetVectorEnrichmentJobOutput"))

(smithy/sdk/shapes:define-type group-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list image-source-band-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure input-config-input common-lisp:nil
                                    ((previous-earth-observation-job-arn
                                      :target-type earth-observation-job-arn
                                      :member-name
                                      "PreviousEarthObservationJobArn")
                                     (raster-data-collection-query :target-type
                                      raster-data-collection-query-input
                                      :member-name
                                      "RasterDataCollectionQuery"))
                                    (:shape-name "InputConfigInput"))

(smithy/sdk/shapes:define-structure input-config-output common-lisp:nil
                                    ((previous-earth-observation-job-arn
                                      :target-type earth-observation-job-arn
                                      :member-name
                                      "PreviousEarthObservationJobArn")
                                     (raster-data-collection-query :target-type
                                      raster-data-collection-query-output
                                      :member-name
                                      "RasterDataCollectionQuery"))
                                    (:shape-name "InputConfigOutput"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ResourceId"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure item-source common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Id")
                                     (geometry :target-type geometry :required
                                      common-lisp:t :member-name "Geometry")
                                     (assets :target-type assets-map
                                      :member-name "Assets")
                                     (date-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "DateTime")
                                     (properties :target-type properties
                                      :member-name "Properties"))
                                    (:shape-name "ItemSource"))

(smithy/sdk/shapes:define-list item-source-list :member item-source)

(smithy/sdk/shapes:define-union job-config-input common-lisp:nil
                                ((band-math-config :target-type
                                  band-math-config-input :member-name
                                  "BandMathConfig")
                                 (resampling-config :target-type
                                  resampling-config-input :member-name
                                  "ResamplingConfig")
                                 (temporal-statistics-config :target-type
                                  temporal-statistics-config-input :member-name
                                  "TemporalStatisticsConfig")
                                 (cloud-removal-config :target-type
                                  cloud-removal-config-input :member-name
                                  "CloudRemovalConfig")
                                 (zonal-statistics-config :target-type
                                  zonal-statistics-config-input :member-name
                                  "ZonalStatisticsConfig")
                                 (geo-mosaic-config :target-type
                                  geo-mosaic-config-input :member-name
                                  "GeoMosaicConfig")
                                 (stack-config :target-type stack-config-input
                                  :member-name "StackConfig")
                                 (cloud-masking-config :target-type
                                  cloud-masking-config-input :member-name
                                  "CloudMaskingConfig")
                                 (land-cover-segmentation-config :target-type
                                  land-cover-segmentation-config-input
                                  :member-name "LandCoverSegmentationConfig"))
                                (:shape-name "JobConfigInput"))

(smithy/sdk/shapes:define-type kms-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure land-cover-segmentation-config-input
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "LandCoverSegmentationConfigInput"))

(smithy/sdk/shapes:define-structure landsat-cloud-cover-land-input
                                    common-lisp:nil
                                    ((lower-bound :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name "LowerBound")
                                     (upper-bound :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name "UpperBound"))
                                    (:shape-name "LandsatCloudCoverLandInput"))

(smithy/sdk/shapes:define-list linear-ring :member position)

(smithy/sdk/shapes:define-list linear-rings :member linear-ring)

(smithy/sdk/shapes:define-list linear-rings-list :member linear-rings)

(smithy/sdk/shapes:define-structure list-earth-observation-job-input
                                    common-lisp:nil
                                    ((status-equals :target-type
                                      earth-observation-job-status :member-name
                                      "StatusEquals")
                                     (sort-order :target-type sort-order
                                      :member-name "SortOrder")
                                     (sort-by :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SortBy")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults"))
                                    (:shape-name
                                     "ListEarthObservationJobInput"))

(smithy/sdk/shapes:define-structure list-earth-observation-job-output
                                    common-lisp:nil
                                    ((earth-observation-job-summaries
                                      :target-type earth-observation-job-list
                                      :required common-lisp:t :member-name
                                      "EarthObservationJobSummaries")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListEarthObservationJobOutput"))

(smithy/sdk/shapes:define-structure list-earth-observation-job-output-config
                                    common-lisp:nil
                                    ((arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Arn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime" :timestamp-format
                                      "date-time")
                                     (duration-in-seconds :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "DurationInSeconds")
                                     (status :target-type
                                      earth-observation-job-status :required
                                      common-lisp:t :member-name "Status")
                                     (operation-type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "OperationType")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name
                                     "ListEarthObservationJobOutputConfig"))

(smithy/sdk/shapes:define-structure list-raster-data-collections-input
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "NextToken" :http-query
                                      "NextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults" :http-query
                                      "MaxResults"))
                                    (:shape-name
                                     "ListRasterDataCollectionsInput"))

(smithy/sdk/shapes:define-structure list-raster-data-collections-output
                                    common-lisp:nil
                                    ((raster-data-collection-summaries
                                      :target-type data-collections-list
                                      :required common-lisp:t :member-name
                                      "RasterDataCollectionSummaries")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListRasterDataCollectionsOutput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-vector-enrichment-job-input
                                    common-lisp:nil
                                    ((status-equals :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StatusEquals")
                                     (sort-order :target-type sort-order
                                      :member-name "SortOrder")
                                     (sort-by :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "SortBy")
                                     (next-token :target-type next-token
                                      :member-name "NextToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "MaxResults"))
                                    (:shape-name
                                     "ListVectorEnrichmentJobInput"))

(smithy/sdk/shapes:define-structure list-vector-enrichment-job-output
                                    common-lisp:nil
                                    ((vector-enrichment-job-summaries
                                      :target-type vector-enrichment-job-list
                                      :required common-lisp:t :member-name
                                      "VectorEnrichmentJobSummaries")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListVectorEnrichmentJobOutput"))

(smithy/sdk/shapes:define-structure list-vector-enrichment-job-output-config
                                    common-lisp:nil
                                    ((arn :target-type
                                      vector-enrichment-job-arn :required
                                      common-lisp:t :member-name "Arn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (type :target-type
                                      vector-enrichment-job-type :required
                                      common-lisp:t :member-name "Type")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime" :timestamp-format
                                      "date-time")
                                     (duration-in-seconds :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "DurationInSeconds")
                                     (status :target-type
                                      vector-enrichment-job-status :required
                                      common-lisp:t :member-name "Status")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name
                                     "ListVectorEnrichmentJobOutputConfig"))

(smithy/sdk/shapes:define-type logical-operator smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure map-matching-config common-lisp:nil
                                    ((id-attribute-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "IdAttributeName")
                                     (yattribute-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "YAttributeName")
                                     (xattribute-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "XAttributeName")
                                     (timestamp-attribute-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "TimestampAttributeName"))
                                    (:shape-name "MapMatchingConfig"))

(smithy/sdk/shapes:define-structure multi-polygon-geometry-input
                                    common-lisp:nil
                                    ((coordinates :target-type
                                      linear-rings-list :required common-lisp:t
                                      :member-name "Coordinates"))
                                    (:shape-name "MultiPolygonGeometryInput"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure operation common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (equation :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Equation")
                                     (output-type :target-type output-type
                                      :member-name "OutputType"))
                                    (:shape-name "Operation"))

(smithy/sdk/shapes:define-list operations-list-input :member operation)

(smithy/sdk/shapes:define-structure output-band common-lisp:nil
                                    ((band-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "BandName")
                                     (output-data-type :target-type output-type
                                      :required common-lisp:t :member-name
                                      "OutputDataType"))
                                    (:shape-name "OutputBand"))

(smithy/sdk/shapes:define-structure output-config-input common-lisp:nil
                                    ((s3data :target-type export-s3data-input
                                      :required common-lisp:t :member-name
                                      "S3Data"))
                                    (:shape-name "OutputConfigInput"))

(smithy/sdk/shapes:define-structure output-resolution-resampling-input
                                    common-lisp:nil
                                    ((user-defined :target-type user-defined
                                      :required common-lisp:t :member-name
                                      "UserDefined"))
                                    (:shape-name
                                     "OutputResolutionResamplingInput"))

(smithy/sdk/shapes:define-structure output-resolution-stack-input
                                    common-lisp:nil
                                    ((predefined :target-type
                                      predefined-resolution :member-name
                                      "Predefined")
                                     (user-defined :target-type user-defined
                                      :member-name "UserDefined"))
                                    (:shape-name "OutputResolutionStackInput"))

(smithy/sdk/shapes:define-type output-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure platform-input common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Value")
                                     (comparison-operator :target-type
                                      comparison-operator :member-name
                                      "ComparisonOperator"))
                                    (:shape-name "PlatformInput"))

(smithy/sdk/shapes:define-structure polygon-geometry-input common-lisp:nil
                                    ((coordinates :target-type linear-rings
                                      :required common-lisp:t :member-name
                                      "Coordinates"))
                                    (:shape-name "PolygonGeometryInput"))

(smithy/sdk/shapes:define-list position :member smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type predefined-resolution
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure properties common-lisp:nil
                                    ((eo-cloud-cover :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "EoCloudCover")
                                     (view-off-nadir :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "ViewOffNadir")
                                     (view-sun-azimuth :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "ViewSunAzimuth")
                                     (view-sun-elevation :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "ViewSunElevation")
                                     (platform :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Platform")
                                     (landsat-cloud-cover-land :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "LandsatCloudCoverLand"))
                                    (:shape-name "Properties"))

(smithy/sdk/shapes:define-union property common-lisp:nil
                                ((eo-cloud-cover :target-type
                                  eo-cloud-cover-input :member-name
                                  "EoCloudCover")
                                 (view-off-nadir :target-type
                                  view-off-nadir-input :member-name
                                  "ViewOffNadir")
                                 (view-sun-azimuth :target-type
                                  view-sun-azimuth-input :member-name
                                  "ViewSunAzimuth")
                                 (view-sun-elevation :target-type
                                  view-sun-elevation-input :member-name
                                  "ViewSunElevation")
                                 (platform :target-type platform-input
                                  :member-name "Platform")
                                 (landsat-cloud-cover-land :target-type
                                  landsat-cloud-cover-land-input :member-name
                                  "LandsatCloudCoverLand"))
                                (:shape-name "Property"))

(smithy/sdk/shapes:define-structure property-filter common-lisp:nil
                                    ((property :target-type property :required
                                      common-lisp:t :member-name "Property"))
                                    (:shape-name "PropertyFilter"))

(smithy/sdk/shapes:define-structure property-filters common-lisp:nil
                                    ((properties :target-type
                                      property-filters-list :member-name
                                      "Properties")
                                     (logical-operator :target-type
                                      logical-operator :member-name
                                      "LogicalOperator"))
                                    (:shape-name "PropertyFilters"))

(smithy/sdk/shapes:define-list property-filters-list :member property-filter)

common-lisp:nil

(smithy/sdk/shapes:define-structure raster-data-collection-metadata
                                    common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (arn :target-type data-collection-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (type :target-type data-collection-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Description")
                                     (description-page-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "DescriptionPageUrl")
                                     (supported-filters :target-type
                                      filter-list :required common-lisp:t
                                      :member-name "SupportedFilters")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name
                                     "RasterDataCollectionMetadata"))

(smithy/sdk/shapes:define-structure raster-data-collection-query-input
                                    common-lisp:nil
                                    ((raster-data-collection-arn :target-type
                                      data-collection-arn :required
                                      common-lisp:t :member-name
                                      "RasterDataCollectionArn")
                                     (time-range-filter :target-type
                                      time-range-filter-input :required
                                      common-lisp:t :member-name
                                      "TimeRangeFilter")
                                     (area-of-interest :target-type
                                      area-of-interest :member-name
                                      "AreaOfInterest")
                                     (property-filters :target-type
                                      property-filters :member-name
                                      "PropertyFilters"))
                                    (:shape-name
                                     "RasterDataCollectionQueryInput"))

(smithy/sdk/shapes:define-structure raster-data-collection-query-output
                                    common-lisp:nil
                                    ((raster-data-collection-arn :target-type
                                      data-collection-arn :required
                                      common-lisp:t :member-name
                                      "RasterDataCollectionArn")
                                     (raster-data-collection-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "RasterDataCollectionName")
                                     (time-range-filter :target-type
                                      time-range-filter-output :required
                                      common-lisp:t :member-name
                                      "TimeRangeFilter")
                                     (area-of-interest :target-type
                                      area-of-interest :member-name
                                      "AreaOfInterest")
                                     (property-filters :target-type
                                      property-filters :member-name
                                      "PropertyFilters"))
                                    (:shape-name
                                     "RasterDataCollectionQueryOutput"))

(smithy/sdk/shapes:define-structure
 raster-data-collection-query-with-band-filter-input common-lisp:nil
 ((time-range-filter :target-type time-range-filter-input :required
   common-lisp:t :member-name "TimeRangeFilter")
  (area-of-interest :target-type area-of-interest :member-name
   "AreaOfInterest")
  (property-filters :target-type property-filters :member-name
   "PropertyFilters")
  (band-filter :target-type string-list-input :member-name "BandFilter"))
 (:shape-name "RasterDataCollectionQueryWithBandFilterInput"))

(smithy/sdk/shapes:define-structure resampling-config-input common-lisp:nil
                                    ((output-resolution :target-type
                                      output-resolution-resampling-input
                                      :required common-lisp:t :member-name
                                      "OutputResolution")
                                     (algorithm-name :target-type
                                      algorithm-name-resampling :member-name
                                      "AlgorithmName")
                                     (target-bands :target-type
                                      string-list-input :member-name
                                      "TargetBands"))
                                    (:shape-name "ResamplingConfigInput"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ResourceId"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure reverse-geocoding-config common-lisp:nil
                                    ((yattribute-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "YAttributeName")
                                     (xattribute-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "XAttributeName"))
                                    (:shape-name "ReverseGeocodingConfig"))

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input search-raster-data-collection-input
                                common-lisp:nil
                                ((arn :target-type data-collection-arn
                                  :required common-lisp:t :member-name "Arn")
                                 (raster-data-collection-query :target-type
                                  raster-data-collection-query-with-band-filter-input
                                  :required common-lisp:t :member-name
                                  "RasterDataCollectionQuery")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "SearchRasterDataCollectionInput"))

(smithy/sdk/shapes:define-output search-raster-data-collection-output
                                 common-lisp:nil
                                 ((approximate-result-count :target-type
                                   smithy/sdk/smithy-types:integer :required
                                   common-lisp:t :member-name
                                   "ApproximateResultCount")
                                  (next-token :target-type next-token
                                   :member-name "NextToken")
                                  (items :target-type item-source-list
                                   :member-name "Items"))
                                 (:shape-name
                                  "SearchRasterDataCollectionOutput"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ResourceId"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type sort-order smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stack-config-input common-lisp:nil
                                    ((output-resolution :target-type
                                      output-resolution-stack-input
                                      :member-name "OutputResolution")
                                     (target-bands :target-type
                                      string-list-input :member-name
                                      "TargetBands"))
                                    (:shape-name "StackConfigInput"))

(smithy/sdk/shapes:define-input start-earth-observation-job-input
                                common-lisp:nil
                                ((name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Name")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ClientToken")
                                 (kms-key-id :target-type kms-key :member-name
                                  "KmsKeyId")
                                 (input-config :target-type input-config-input
                                  :required common-lisp:t :member-name
                                  "InputConfig")
                                 (job-config :target-type job-config-input
                                  :required common-lisp:t :member-name
                                  "JobConfig")
                                 (execution-role-arn :target-type
                                  execution-role-arn :required common-lisp:t
                                  :member-name "ExecutionRoleArn")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "StartEarthObservationJobInput"))

(smithy/sdk/shapes:define-structure start-earth-observation-job-output
                                    common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Arn")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime" :timestamp-format
                                      "date-time")
                                     (duration-in-seconds :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "DurationInSeconds")
                                     (status :target-type
                                      earth-observation-job-status :required
                                      common-lisp:t :member-name "Status")
                                     (kms-key-id :target-type kms-key
                                      :member-name "KmsKeyId")
                                     (input-config :target-type
                                      input-config-output :member-name
                                      "InputConfig")
                                     (job-config :target-type job-config-input
                                      :required common-lisp:t :member-name
                                      "JobConfig")
                                     (execution-role-arn :target-type
                                      execution-role-arn :required
                                      common-lisp:t :member-name
                                      "ExecutionRoleArn")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name
                                     "StartEarthObservationJobOutput"))

(smithy/sdk/shapes:define-input start-vector-enrichment-job-input
                                common-lisp:nil
                                ((name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Name")
                                 (client-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ClientToken")
                                 (kms-key-id :target-type kms-key :member-name
                                  "KmsKeyId")
                                 (input-config :target-type
                                  vector-enrichment-job-input-config :required
                                  common-lisp:t :member-name "InputConfig")
                                 (job-config :target-type
                                  vector-enrichment-job-config :required
                                  common-lisp:t :member-name "JobConfig")
                                 (execution-role-arn :target-type
                                  execution-role-arn :required common-lisp:t
                                  :member-name "ExecutionRoleArn")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "StartVectorEnrichmentJobInput"))

(smithy/sdk/shapes:define-structure start-vector-enrichment-job-output
                                    common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (arn :target-type
                                      vector-enrichment-job-arn :required
                                      common-lisp:t :member-name "Arn")
                                     (type :target-type
                                      vector-enrichment-job-type :required
                                      common-lisp:t :member-name "Type")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime" :timestamp-format
                                      "date-time")
                                     (duration-in-seconds :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "DurationInSeconds")
                                     (status :target-type
                                      vector-enrichment-job-status :required
                                      common-lisp:t :member-name "Status")
                                     (kms-key-id :target-type kms-key
                                      :member-name "KmsKeyId")
                                     (input-config :target-type
                                      vector-enrichment-job-input-config
                                      :required common-lisp:t :member-name
                                      "InputConfig")
                                     (job-config :target-type
                                      vector-enrichment-job-config :required
                                      common-lisp:t :member-name "JobConfig")
                                     (execution-role-arn :target-type
                                      execution-role-arn :required
                                      common-lisp:t :member-name
                                      "ExecutionRoleArn")
                                     (tags :target-type tags :member-name
                                      "Tags"))
                                    (:shape-name
                                     "StartVectorEnrichmentJobOutput"))

(smithy/sdk/shapes:define-input stop-earth-observation-job-input
                                common-lisp:nil
                                ((arn :target-type earth-observation-job-arn
                                  :required common-lisp:t :member-name "Arn"))
                                (:shape-name "StopEarthObservationJobInput"))

(smithy/sdk/shapes:define-output stop-earth-observation-job-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "StopEarthObservationJobOutput"))

(smithy/sdk/shapes:define-input stop-vector-enrichment-job-input
                                common-lisp:nil
                                ((arn :target-type vector-enrichment-job-arn
                                  :required common-lisp:t :member-name "Arn"))
                                (:shape-name "StopVectorEnrichmentJobInput"))

(smithy/sdk/shapes:define-output stop-vector-enrichment-job-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "StopVectorEnrichmentJobOutput"))

(smithy/sdk/shapes:define-list string-list-input :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (tags :target-type tags :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-map tags :key smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-options smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type temporal-statistics
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure temporal-statistics-config-input
                                    common-lisp:nil
                                    ((group-by :target-type group-by
                                      :member-name "GroupBy")
                                     (statistics :target-type
                                      temporal-statistics-list-input :required
                                      common-lisp:t :member-name "Statistics")
                                     (target-bands :target-type
                                      string-list-input :member-name
                                      "TargetBands"))
                                    (:shape-name
                                     "TemporalStatisticsConfigInput"))

(smithy/sdk/shapes:define-list temporal-statistics-list-input :member
                               temporal-statistics)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ResourceId"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure time-range-filter-input common-lisp:nil
                                    ((start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "EndTime"))
                                    (:shape-name "TimeRangeFilterInput"))

(smithy/sdk/shapes:define-structure time-range-filter-output common-lisp:nil
                                    ((start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "StartTime" :timestamp-format
                                      "date-time")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "EndTime" :timestamp-format "date-time"))
                                    (:shape-name "TimeRangeFilterOutput"))

(smithy/sdk/shapes:define-type unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "TagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure user-defined common-lisp:nil
                                    ((value :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name "Value")
                                     (unit :target-type unit :required
                                      common-lisp:t :member-name "Unit"))
                                    (:shape-name "UserDefined"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ResourceId"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

common-lisp:nil

(smithy/sdk/shapes:define-type vector-enrichment-job-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union vector-enrichment-job-config common-lisp:nil
                                ((reverse-geocoding-config :target-type
                                  reverse-geocoding-config :member-name
                                  "ReverseGeocodingConfig")
                                 (map-matching-config :target-type
                                  map-matching-config :member-name
                                  "MapMatchingConfig"))
                                (:shape-name "VectorEnrichmentJobConfig"))

(smithy/sdk/shapes:define-union vector-enrichment-job-data-source-config-input
                                common-lisp:nil
                                ((s3data :target-type
                                  vector-enrichment-job-s3data :member-name
                                  "S3Data"))
                                (:shape-name
                                 "VectorEnrichmentJobDataSourceConfigInput"))

(smithy/sdk/shapes:define-type vector-enrichment-job-document-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vector-enrichment-job-error-details
                                    common-lisp:nil
                                    ((error-type :target-type
                                      vector-enrichment-job-error-type
                                      :member-name "ErrorType")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ErrorMessage"))
                                    (:shape-name
                                     "VectorEnrichmentJobErrorDetails"))

(smithy/sdk/shapes:define-type vector-enrichment-job-error-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vector-enrichment-job-export-error-details
                                    common-lisp:nil
                                    ((type :target-type
                                      vector-enrichment-job-export-error-type
                                      :member-name "Type")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Message"))
                                    (:shape-name
                                     "VectorEnrichmentJobExportErrorDetails"))

(smithy/sdk/shapes:define-type vector-enrichment-job-export-error-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vector-enrichment-job-export-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vector-enrichment-job-input-config
                                    common-lisp:nil
                                    ((document-type :target-type
                                      vector-enrichment-job-document-type
                                      :required common-lisp:t :member-name
                                      "DocumentType")
                                     (data-source-config :target-type
                                      vector-enrichment-job-data-source-config-input
                                      :required common-lisp:t :member-name
                                      "DataSourceConfig"))
                                    (:shape-name
                                     "VectorEnrichmentJobInputConfig"))

(smithy/sdk/shapes:define-list vector-enrichment-job-list :member
                               list-vector-enrichment-job-output-config)

(smithy/sdk/shapes:define-structure vector-enrichment-job-s3data
                                    common-lisp:nil
                                    ((s3uri :target-type s3uri :required
                                      common-lisp:t :member-name "S3Uri")
                                     (kms-key-id :target-type kms-key
                                      :member-name "KmsKeyId"))
                                    (:shape-name "VectorEnrichmentJobS3Data"))

(smithy/sdk/shapes:define-type vector-enrichment-job-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vector-enrichment-job-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure view-off-nadir-input common-lisp:nil
                                    ((lower-bound :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name "LowerBound")
                                     (upper-bound :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name "UpperBound"))
                                    (:shape-name "ViewOffNadirInput"))

(smithy/sdk/shapes:define-structure view-sun-azimuth-input common-lisp:nil
                                    ((lower-bound :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name "LowerBound")
                                     (upper-bound :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name "UpperBound"))
                                    (:shape-name "ViewSunAzimuthInput"))

(smithy/sdk/shapes:define-structure view-sun-elevation-input common-lisp:nil
                                    ((lower-bound :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name "LowerBound")
                                     (upper-bound :target-type
                                      smithy/sdk/smithy-types:float :required
                                      common-lisp:t :member-name "UpperBound"))
                                    (:shape-name "ViewSunElevationInput"))

(smithy/sdk/shapes:define-type zonal-statistics smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure zonal-statistics-config-input
                                    common-lisp:nil
                                    ((zone-s3path :target-type s3uri :required
                                      common-lisp:t :member-name "ZoneS3Path")
                                     (statistics :target-type
                                      zonal-statistics-list-input :required
                                      common-lisp:t :member-name "Statistics")
                                     (target-bands :target-type
                                      string-list-input :member-name
                                      "TargetBands")
                                     (zone-s3path-kms-key-id :target-type
                                      kms-key :member-name
                                      "ZoneS3PathKmsKeyId"))
                                    (:shape-name "ZonalStatisticsConfigInput"))

(smithy/sdk/shapes:define-list zonal-statistics-list-input :member
                               zonal-statistics)

(smithy/sdk/operation:define-operation delete-earth-observation-job :shape-name
                                       "DeleteEarthObservationJob" :input
                                       delete-earth-observation-job-input
                                       :output
                                       delete-earth-observation-job-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/earth-observation-jobs/{Arn}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-vector-enrichment-job :shape-name
                                       "DeleteVectorEnrichmentJob" :input
                                       delete-vector-enrichment-job-input
                                       :output
                                       delete-vector-enrichment-job-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/vector-enrichment-jobs/{Arn}" :code
                                       200)

(smithy/sdk/operation:define-operation export-earth-observation-job :shape-name
                                       "ExportEarthObservationJob" :input
                                       export-earth-observation-job-input
                                       :output
                                       export-earth-observation-job-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/export-earth-observation-job" :code
                                       200)

(smithy/sdk/operation:define-operation export-vector-enrichment-job :shape-name
                                       "ExportVectorEnrichmentJob" :input
                                       export-vector-enrichment-job-input
                                       :output
                                       export-vector-enrichment-job-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/export-vector-enrichment-jobs" :code
                                       200)

(smithy/sdk/operation:define-operation get-earth-observation-job :shape-name
                                       "GetEarthObservationJob" :input
                                       get-earth-observation-job-input :output
                                       get-earth-observation-job-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/earth-observation-jobs/{Arn}" :code
                                       200)

(smithy/sdk/operation:define-operation get-raster-data-collection :shape-name
                                       "GetRasterDataCollection" :input
                                       get-raster-data-collection-input :output
                                       get-raster-data-collection-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/raster-data-collection/{Arn}" :code
                                       200)

(smithy/sdk/operation:define-operation get-tile :shape-name "GetTile" :input
                                       get-tile-input :output get-tile-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tile/{z}/{x}/{y}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-vector-enrichment-job :shape-name
                                       "GetVectorEnrichmentJob" :input
                                       get-vector-enrichment-job-input :output
                                       get-vector-enrichment-job-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/vector-enrichment-jobs/{Arn}" :code
                                       200)

(smithy/sdk/operation:define-operation list-earth-observation-jobs :shape-name
                                       "ListEarthObservationJobs" :input
                                       list-earth-observation-job-input :output
                                       list-earth-observation-job-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-earth-observation-jobs" :code 200)

(smithy/sdk/operation:define-operation list-raster-data-collections :shape-name
                                       "ListRasterDataCollections" :input
                                       list-raster-data-collections-input
                                       :output
                                       list-raster-data-collections-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/raster-data-collections" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation list-vector-enrichment-jobs :shape-name
                                       "ListVectorEnrichmentJobs" :input
                                       list-vector-enrichment-job-input :output
                                       list-vector-enrichment-job-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-vector-enrichment-jobs" :code 200)

(smithy/sdk/operation:define-operation search-raster-data-collection
                                       :shape-name "SearchRasterDataCollection"
                                       :input
                                       search-raster-data-collection-input
                                       :output
                                       search-raster-data-collection-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/search-raster-data-collection" :code
                                       200)

(smithy/sdk/operation:define-operation start-earth-observation-job :shape-name
                                       "StartEarthObservationJob" :input
                                       start-earth-observation-job-input
                                       :output
                                       start-earth-observation-job-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/earth-observation-jobs" :code 200)

(smithy/sdk/operation:define-operation start-vector-enrichment-job :shape-name
                                       "StartVectorEnrichmentJob" :input
                                       start-vector-enrichment-job-input
                                       :output
                                       start-vector-enrichment-job-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/vector-enrichment-jobs" :code 200)

(smithy/sdk/operation:define-operation stop-earth-observation-job :shape-name
                                       "StopEarthObservationJob" :input
                                       stop-earth-observation-job-input :output
                                       stop-earth-observation-job-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/earth-observation-jobs/stop" :code 200)

(smithy/sdk/operation:define-operation stop-vector-enrichment-job :shape-name
                                       "StopVectorEnrichmentJob" :input
                                       stop-vector-enrichment-job-input :output
                                       stop-vector-enrichment-job-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/vector-enrichment-jobs/stop" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/tags/{ResourceArn}")

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
                                       "/tags/{ResourceArn}")
