(uiop/package:define-package #:pira/sqs (:use)
                             (:export #:awsaccount-id-list #:action-name-list
                              #:add-permission #:amazon-sqs
                              #:attribute-name-list #:batch-result-error-entry
                              #:batch-result-error-entry-list #:binary
                              #:binary-list #:boolean #:boxed-integer
                              #:cancel-message-move-task
                              #:change-message-visibility
                              #:change-message-visibility-batch
                              #:change-message-visibility-batch-request-entry
                              #:change-message-visibility-batch-request-entry-list
                              #:change-message-visibility-batch-result-entry
                              #:change-message-visibility-batch-result-entry-list
                              #:create-queue #:delete-message
                              #:delete-message-batch
                              #:delete-message-batch-request-entry
                              #:delete-message-batch-request-entry-list
                              #:delete-message-batch-result-entry
                              #:delete-message-batch-result-entry-list
                              #:delete-queue #:exception-message
                              #:get-queue-attributes #:get-queue-url
                              #:list-dead-letter-source-queues
                              #:list-message-move-tasks
                              #:list-message-move-tasks-result-entry
                              #:list-message-move-tasks-result-entry-list
                              #:list-queue-tags #:list-queues #:long #:message
                              #:message-attribute-name
                              #:message-attribute-name-list
                              #:message-attribute-value
                              #:message-body-attribute-map
                              #:message-body-system-attribute-map
                              #:message-list #:message-system-attribute-list
                              #:message-system-attribute-map
                              #:message-system-attribute-name
                              #:message-system-attribute-name-for-sends
                              #:message-system-attribute-value
                              #:nullable-integer #:nullable-long #:purge-queue
                              #:queue-attribute-map #:queue-attribute-name
                              #:queue-url-list #:receive-message
                              #:remove-permission #:send-message
                              #:send-message-batch
                              #:send-message-batch-request-entry
                              #:send-message-batch-request-entry-list
                              #:send-message-batch-result-entry
                              #:send-message-batch-result-entry-list
                              #:set-queue-attributes #:start-message-move-task
                              #:string #:string-list #:tag-key #:tag-key-list
                              #:tag-map #:tag-queue #:tag-value #:token
                              #:untag-queue))
(common-lisp:in-package #:pira/sqs)

(smithy/sdk/service:define-service amazon-sqs :shape-name "AmazonSQS" :version
                                   "2012-11-05" :title
                                   "Amazon Simple Queue Service" :operations
                                   '(add-permission cancel-message-move-task
                                     change-message-visibility
                                     change-message-visibility-batch
                                     create-queue delete-message
                                     delete-message-batch delete-queue
                                     get-queue-attributes get-queue-url
                                     list-dead-letter-source-queues
                                     list-message-move-tasks list-queues
                                     list-queue-tags purge-queue
                                     receive-message remove-permission
                                     send-message send-message-batch
                                     set-queue-attributes
                                     start-message-move-task tag-queue
                                     untag-queue)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "SQS")
                                      ("arnNamespace" . "sqs")
                                      ("cloudFormationName" . "SQS")
                                      ("cloudTrailEventSource"
                                       . "sqs.amazonaws.com")
                                      ("endpointPrefix" . "sqs"))
                                     ("aws.auth#sigv4" ("name" . "sqs"))
                                     ("aws.protocols#awsJson1_0")
                                     ("aws.protocols#awsQueryCompatible")))

(smithy/sdk/shapes:define-list awsaccount-id-list :member string)

(smithy/sdk/shapes:define-list action-name-list :member string)

(smithy/sdk/shapes:define-input add-permission-request common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl")
                                 (label :target-type string :required
                                  common-lisp:t :member-name "Label")
                                 (awsaccount-ids :target-type
                                  awsaccount-id-list :required common-lisp:t
                                  :member-name "AWSAccountIds" :xml-name
                                  "AWSAccountId" :xml-flattened common-lisp:t)
                                 (actions :target-type action-name-list
                                  :required common-lisp:t :member-name
                                  "Actions" :xml-name "ActionName"
                                  :xml-flattened common-lisp:t))
                                (:shape-name "AddPermissionRequest"))

(smithy/sdk/shapes:define-list attribute-name-list :member queue-attribute-name)

(smithy/sdk/shapes:define-error batch-entry-ids-not-distinct common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "BatchEntryIdsNotDistinct")
                                (:error-name
                                 "AWS.SimpleQueueService.BatchEntryIdsNotDistinct")
                                (:error-code 400))

(smithy/sdk/shapes:define-error batch-request-too-long common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "BatchRequestTooLong")
                                (:error-name
                                 "AWS.SimpleQueueService.BatchRequestTooLong")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure batch-result-error-entry common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (sender-fault :target-type boolean
                                      :required common-lisp:t :member-name
                                      "SenderFault")
                                     (code :target-type string :required
                                      common-lisp:t :member-name "Code")
                                     (message :target-type string :member-name
                                      "Message"))
                                    (:shape-name "BatchResultErrorEntry"))

(smithy/sdk/shapes:define-list batch-result-error-entry-list :member
                               batch-result-error-entry)

(smithy/sdk/shapes:define-type binary smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-list binary-list :member
                               (binary :xml-name "BinaryListValue"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boxed-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input cancel-message-move-task-request
                                common-lisp:nil
                                ((task-handle :target-type string :required
                                  common-lisp:t :member-name "TaskHandle"))
                                (:shape-name "CancelMessageMoveTaskRequest"))

(smithy/sdk/shapes:define-output cancel-message-move-task-result
                                 common-lisp:nil
                                 ((approximate-number-of-messages-moved
                                   :target-type long :member-name
                                   "ApproximateNumberOfMessagesMoved"))
                                 (:shape-name "CancelMessageMoveTaskResult"))

(smithy/sdk/shapes:define-input change-message-visibility-batch-request
                                common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl")
                                 (entries :target-type
                                  change-message-visibility-batch-request-entry-list
                                  :required common-lisp:t :member-name
                                  "Entries" :xml-name
                                  "ChangeMessageVisibilityBatchRequestEntry"
                                  :xml-flattened common-lisp:t))
                                (:shape-name
                                 "ChangeMessageVisibilityBatchRequest"))

(smithy/sdk/shapes:define-structure
 change-message-visibility-batch-request-entry common-lisp:nil
 ((id :target-type string :required common-lisp:t :member-name "Id")
  (receipt-handle :target-type string :required common-lisp:t :member-name
   "ReceiptHandle")
  (visibility-timeout :target-type nullable-integer :member-name
   "VisibilityTimeout"))
 (:shape-name "ChangeMessageVisibilityBatchRequestEntry"))

(smithy/sdk/shapes:define-list
 change-message-visibility-batch-request-entry-list :member
 change-message-visibility-batch-request-entry)

(smithy/sdk/shapes:define-output change-message-visibility-batch-result
                                 common-lisp:nil
                                 ((successful :target-type
                                   change-message-visibility-batch-result-entry-list
                                   :required common-lisp:t :member-name
                                   "Successful" :xml-name
                                   "ChangeMessageVisibilityBatchResultEntry"
                                   :xml-flattened common-lisp:t)
                                  (failed :target-type
                                   batch-result-error-entry-list :required
                                   common-lisp:t :member-name "Failed"
                                   :xml-name "BatchResultErrorEntry"
                                   :xml-flattened common-lisp:t))
                                 (:shape-name
                                  "ChangeMessageVisibilityBatchResult"))

(smithy/sdk/shapes:define-structure
 change-message-visibility-batch-result-entry common-lisp:nil
 ((id :target-type string :required common-lisp:t :member-name "Id"))
 (:shape-name "ChangeMessageVisibilityBatchResultEntry"))

(smithy/sdk/shapes:define-list
 change-message-visibility-batch-result-entry-list :member
 change-message-visibility-batch-result-entry)

(smithy/sdk/shapes:define-input change-message-visibility-request
                                common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl")
                                 (receipt-handle :target-type string :required
                                  common-lisp:t :member-name "ReceiptHandle")
                                 (visibility-timeout :target-type
                                  nullable-integer :required common-lisp:t
                                  :member-name "VisibilityTimeout"))
                                (:shape-name "ChangeMessageVisibilityRequest"))

(smithy/sdk/shapes:define-input create-queue-request common-lisp:nil
                                ((queue-name :target-type string :required
                                  common-lisp:t :member-name "QueueName")
                                 (attributes :target-type queue-attribute-map
                                  :member-name "Attributes" :xml-name
                                  "Attribute" :xml-flattened common-lisp:t)
                                 (tags :target-type tag-map :member-name "tags"
                                  :xml-name "Tag" :xml-flattened
                                  common-lisp:t))
                                (:shape-name "CreateQueueRequest"))

(smithy/sdk/shapes:define-output create-queue-result common-lisp:nil
                                 ((queue-url :target-type string :member-name
                                   "QueueUrl"))
                                 (:shape-name "CreateQueueResult"))

(smithy/sdk/shapes:define-input delete-message-batch-request common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl")
                                 (entries :target-type
                                  delete-message-batch-request-entry-list
                                  :required common-lisp:t :member-name
                                  "Entries" :xml-name
                                  "DeleteMessageBatchRequestEntry"
                                  :xml-flattened common-lisp:t))
                                (:shape-name "DeleteMessageBatchRequest"))

(smithy/sdk/shapes:define-structure delete-message-batch-request-entry
                                    common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (receipt-handle :target-type string
                                      :required common-lisp:t :member-name
                                      "ReceiptHandle"))
                                    (:shape-name
                                     "DeleteMessageBatchRequestEntry"))

(smithy/sdk/shapes:define-list delete-message-batch-request-entry-list :member
                               delete-message-batch-request-entry)

(smithy/sdk/shapes:define-output delete-message-batch-result common-lisp:nil
                                 ((successful :target-type
                                   delete-message-batch-result-entry-list
                                   :required common-lisp:t :member-name
                                   "Successful" :xml-name
                                   "DeleteMessageBatchResultEntry"
                                   :xml-flattened common-lisp:t)
                                  (failed :target-type
                                   batch-result-error-entry-list :required
                                   common-lisp:t :member-name "Failed"
                                   :xml-name "BatchResultErrorEntry"
                                   :xml-flattened common-lisp:t))
                                 (:shape-name "DeleteMessageBatchResult"))

(smithy/sdk/shapes:define-structure delete-message-batch-result-entry
                                    common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id"))
                                    (:shape-name
                                     "DeleteMessageBatchResultEntry"))

(smithy/sdk/shapes:define-list delete-message-batch-result-entry-list :member
                               delete-message-batch-result-entry)

(smithy/sdk/shapes:define-input delete-message-request common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl")
                                 (receipt-handle :target-type string :required
                                  common-lisp:t :member-name "ReceiptHandle"))
                                (:shape-name "DeleteMessageRequest"))

(smithy/sdk/shapes:define-input delete-queue-request common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl"))
                                (:shape-name "DeleteQueueRequest"))

(smithy/sdk/shapes:define-error empty-batch-request common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "EmptyBatchRequest")
                                (:error-name
                                 "AWS.SimpleQueueService.EmptyBatchRequest")
                                (:error-code 400))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-queue-attributes-request common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl")
                                 (attribute-names :target-type
                                  attribute-name-list :member-name
                                  "AttributeNames" :xml-name "AttributeName"
                                  :xml-flattened common-lisp:t))
                                (:shape-name "GetQueueAttributesRequest"))

(smithy/sdk/shapes:define-output get-queue-attributes-result common-lisp:nil
                                 ((attributes :target-type queue-attribute-map
                                   :member-name "Attributes" :xml-name
                                   "Attribute" :xml-flattened common-lisp:t))
                                 (:shape-name "GetQueueAttributesResult"))

(smithy/sdk/shapes:define-input get-queue-url-request common-lisp:nil
                                ((queue-name :target-type string :required
                                  common-lisp:t :member-name "QueueName")
                                 (queue-owner-awsaccount-id :target-type string
                                  :member-name "QueueOwnerAWSAccountId"))
                                (:shape-name "GetQueueUrlRequest"))

(smithy/sdk/shapes:define-output get-queue-url-result common-lisp:nil
                                 ((queue-url :target-type string :member-name
                                   "QueueUrl"))
                                 (:shape-name "GetQueueUrlResult"))

(smithy/sdk/shapes:define-error invalid-address common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidAddress")
                                (:error-name "InvalidAddress")
                                (:error-code 404))

(smithy/sdk/shapes:define-error invalid-attribute-name common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidAttributeName")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-attribute-value common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidAttributeValue")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-batch-entry-id common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidBatchEntryId")
                                (:error-name
                                 "AWS.SimpleQueueService.InvalidBatchEntryId")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-id-format common-lisp:nil
                                common-lisp:nil (:shape-name "InvalidIdFormat")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-message-contents common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidMessageContents")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-security common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidSecurity")
                                (:error-name "InvalidSecurity")
                                (:error-code 403))

(smithy/sdk/shapes:define-error kms-access-denied common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KmsAccessDenied")
                                (:error-name "KMS.AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kms-disabled common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KmsDisabled")
                                (:error-name "KMS.DisabledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kms-invalid-key-usage common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KmsInvalidKeyUsage")
                                (:error-name "KMS.InvalidKeyUsageException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kms-invalid-state common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KmsInvalidState")
                                (:error-name "KMS.InvalidStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kms-not-found common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KmsNotFound")
                                (:error-name "KMS.NotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error kms-opt-in-required common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KmsOptInRequired")
                                (:error-name "KMS.OptInRequired")
                                (:error-code 403))

(smithy/sdk/shapes:define-error kms-throttled common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "KmsThrottled")
                                (:error-name "KMS.ThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-dead-letter-source-queues-request
                                common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "MaxResults"))
                                (:shape-name
                                 "ListDeadLetterSourceQueuesRequest"))

(smithy/sdk/shapes:define-output list-dead-letter-source-queues-result
                                 common-lisp:nil
                                 ((queue-urls :target-type queue-url-list
                                   :required common-lisp:t :member-name
                                   "queueUrls" :xml-name "QueueUrl"
                                   :xml-flattened common-lisp:t)
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListDeadLetterSourceQueuesResult"))

(smithy/sdk/shapes:define-input list-message-move-tasks-request common-lisp:nil
                                ((source-arn :target-type string :required
                                  common-lisp:t :member-name "SourceArn")
                                 (max-results :target-type nullable-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListMessageMoveTasksRequest"))

(smithy/sdk/shapes:define-output list-message-move-tasks-result common-lisp:nil
                                 ((results :target-type
                                   list-message-move-tasks-result-entry-list
                                   :member-name "Results" :xml-name
                                   "ListMessageMoveTasksResultEntry"
                                   :xml-flattened common-lisp:t))
                                 (:shape-name "ListMessageMoveTasksResult")
                                 (:xml-name "ListMessageMoveTasksResult"))

(smithy/sdk/shapes:define-structure list-message-move-tasks-result-entry
                                    common-lisp:nil
                                    ((task-handle :target-type string
                                      :member-name "TaskHandle")
                                     (status :target-type string :member-name
                                      "Status")
                                     (source-arn :target-type string
                                      :member-name "SourceArn")
                                     (destination-arn :target-type string
                                      :member-name "DestinationArn")
                                     (max-number-of-messages-per-second
                                      :target-type nullable-integer
                                      :member-name
                                      "MaxNumberOfMessagesPerSecond")
                                     (approximate-number-of-messages-moved
                                      :target-type long :member-name
                                      "ApproximateNumberOfMessagesMoved")
                                     (approximate-number-of-messages-to-move
                                      :target-type nullable-long :member-name
                                      "ApproximateNumberOfMessagesToMove")
                                     (failure-reason :target-type string
                                      :member-name "FailureReason")
                                     (started-timestamp :target-type long
                                      :member-name "StartedTimestamp"))
                                    (:shape-name
                                     "ListMessageMoveTasksResultEntry"))

(smithy/sdk/shapes:define-list list-message-move-tasks-result-entry-list
                               :member list-message-move-tasks-result-entry)

(smithy/sdk/shapes:define-input list-queue-tags-request common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl"))
                                (:shape-name "ListQueueTagsRequest"))

(smithy/sdk/shapes:define-output list-queue-tags-result common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags" :xml-name "Tag" :xml-flattened
                                   common-lisp:t))
                                 (:shape-name "ListQueueTagsResult"))

(smithy/sdk/shapes:define-input list-queues-request common-lisp:nil
                                ((queue-name-prefix :target-type string
                                  :member-name "QueueNamePrefix")
                                 (next-token :target-type token :member-name
                                  "NextToken")
                                 (max-results :target-type boxed-integer
                                  :member-name "MaxResults"))
                                (:shape-name "ListQueuesRequest"))

(smithy/sdk/shapes:define-output list-queues-result common-lisp:nil
                                 ((queue-urls :target-type queue-url-list
                                   :member-name "QueueUrls" :xml-name
                                   "QueueUrl" :xml-flattened common-lisp:t)
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListQueuesResult"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure message common-lisp:nil
                                    ((message-id :target-type string
                                      :member-name "MessageId")
                                     (receipt-handle :target-type string
                                      :member-name "ReceiptHandle")
                                     (md5of-body :target-type string
                                      :member-name "MD5OfBody")
                                     (body :target-type string :member-name
                                      "Body")
                                     (attributes :target-type
                                      message-system-attribute-map :member-name
                                      "Attributes" :xml-name "Attribute"
                                      :xml-flattened common-lisp:t)
                                     (md5of-message-attributes :target-type
                                      string :member-name
                                      "MD5OfMessageAttributes")
                                     (message-attributes :target-type
                                      message-body-attribute-map :member-name
                                      "MessageAttributes" :xml-name
                                      "MessageAttribute" :xml-flattened
                                      common-lisp:t))
                                    (:shape-name "Message"))

(smithy/sdk/shapes:define-type message-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list message-attribute-name-list :member
                               message-attribute-name)

(smithy/sdk/shapes:define-structure message-attribute-value common-lisp:nil
                                    ((string-value :target-type string
                                      :member-name "StringValue")
                                     (binary-value :target-type binary
                                      :member-name "BinaryValue")
                                     (string-list-values :target-type
                                      string-list :member-name
                                      "StringListValues" :xml-name
                                      "StringListValue" :xml-flattened
                                      common-lisp:t)
                                     (binary-list-values :target-type
                                      binary-list :member-name
                                      "BinaryListValues" :xml-name
                                      "BinaryListValue" :xml-flattened
                                      common-lisp:t)
                                     (data-type :target-type string :required
                                      common-lisp:t :member-name "DataType"))
                                    (:shape-name "MessageAttributeValue"))

(smithy/sdk/shapes:define-map message-body-attribute-map :key
                              (string :xml-name "Name") :value
                              (message-attribute-value :xml-name "Value"))

(smithy/sdk/shapes:define-map message-body-system-attribute-map :key
                              (message-system-attribute-name-for-sends
                               :xml-name "Name")
                              :value
                              (message-system-attribute-value :xml-name
                               "Value"))

(smithy/sdk/shapes:define-list message-list :member message)

(smithy/sdk/shapes:define-error message-not-inflight common-lisp:nil
                                common-lisp:nil
                                (:shape-name "MessageNotInflight")
                                (:error-name
                                 "AWS.SimpleQueueService.MessageNotInflight")
                                (:error-code 400))

(smithy/sdk/shapes:define-list message-system-attribute-list :member
                               message-system-attribute-name)

(smithy/sdk/shapes:define-map message-system-attribute-map :key
                              (message-system-attribute-name :xml-name "Name")
                              :value (string :xml-name "Value"))

(smithy/sdk/shapes:define-enum message-system-attribute-name
    common-lisp:nil
  (:all "All")
  (:sender-id "SenderId")
  (:sent-timestamp "SentTimestamp")
  (:approximate-receive-count "ApproximateReceiveCount")
  (:approximate-first-receive-timestamp "ApproximateFirstReceiveTimestamp")
  (:sequence-number "SequenceNumber")
  (:message-deduplication-id "MessageDeduplicationId")
  (:message-group-id "MessageGroupId")
  (:awstrace-header "AWSTraceHeader")
  (:dead-letter-queue-source-arn "DeadLetterQueueSourceArn"))

(smithy/sdk/shapes:define-enum message-system-attribute-name-for-sends
    common-lisp:nil
  (:awstrace-header "AWSTraceHeader"))

(smithy/sdk/shapes:define-structure message-system-attribute-value
                                    common-lisp:nil
                                    ((string-value :target-type string
                                      :member-name "StringValue")
                                     (binary-value :target-type binary
                                      :member-name "BinaryValue")
                                     (string-list-values :target-type
                                      string-list :member-name
                                      "StringListValues" :xml-name
                                      "StringListValue" :xml-flattened
                                      common-lisp:t)
                                     (binary-list-values :target-type
                                      binary-list :member-name
                                      "BinaryListValues" :xml-name
                                      "BinaryListValue" :xml-flattened
                                      common-lisp:t)
                                     (data-type :target-type string :required
                                      common-lisp:t :member-name "DataType"))
                                    (:shape-name "MessageSystemAttributeValue"))

(smithy/sdk/shapes:define-type nullable-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type nullable-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error over-limit common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "OverLimit")
                                (:error-name "OverLimit") (:error-code 403))

(smithy/sdk/shapes:define-error purge-queue-in-progress common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "PurgeQueueInProgress")
                                (:error-name
                                 "AWS.SimpleQueueService.PurgeQueueInProgress")
                                (:error-code 403))

(smithy/sdk/shapes:define-input purge-queue-request common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl"))
                                (:shape-name "PurgeQueueRequest"))

(smithy/sdk/shapes:define-map queue-attribute-map :key
                              (queue-attribute-name :xml-name "Name") :value
                              (string :xml-name "Value"))

(smithy/sdk/shapes:define-enum queue-attribute-name
    common-lisp:nil
  (:all "All")
  (:policy "Policy")
  (:visibility-timeout "VisibilityTimeout")
  (:maximum-message-size "MaximumMessageSize")
  (:message-retention-period "MessageRetentionPeriod")
  (:approximate-number-of-messages "ApproximateNumberOfMessages")
  (:approximate-number-of-messages-not-visible
   "ApproximateNumberOfMessagesNotVisible")
  (:created-timestamp "CreatedTimestamp")
  (:last-modified-timestamp "LastModifiedTimestamp")
  (:queue-arn "QueueArn")
  (:approximate-number-of-messages-delayed "ApproximateNumberOfMessagesDelayed")
  (:delay-seconds "DelaySeconds")
  (:receive-message-wait-time-seconds "ReceiveMessageWaitTimeSeconds")
  (:redrive-policy "RedrivePolicy")
  (:fifo-queue "FifoQueue")
  (:content-based-deduplication "ContentBasedDeduplication")
  (:kms-master-key-id "KmsMasterKeyId")
  (:kms-data-key-reuse-period-seconds "KmsDataKeyReusePeriodSeconds")
  (:deduplication-scope "DeduplicationScope")
  (:fifo-throughput-limit "FifoThroughputLimit")
  (:redrive-allow-policy "RedriveAllowPolicy")
  (:sqs-managed-sse-enabled "SqsManagedSseEnabled"))

(smithy/sdk/shapes:define-error queue-deleted-recently common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "QueueDeletedRecently")
                                (:error-name
                                 "AWS.SimpleQueueService.QueueDeletedRecently")
                                (:error-code 400))

(smithy/sdk/shapes:define-error queue-does-not-exist common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "QueueDoesNotExist")
                                (:error-name
                                 "AWS.SimpleQueueService.NonExistentQueue")
                                (:error-code 400))

(smithy/sdk/shapes:define-error queue-name-exists common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "QueueNameExists")
                                (:error-name "QueueAlreadyExists")
                                (:error-code 400))

(smithy/sdk/shapes:define-list queue-url-list :member string)

(smithy/sdk/shapes:define-error receipt-handle-is-invalid common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ReceiptHandleIsInvalid")
                                (:error-name "ReceiptHandleIsInvalid")
                                (:error-code 404))

(smithy/sdk/shapes:define-input receive-message-request common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl")
                                 (attribute-names :target-type
                                  attribute-name-list :member-name
                                  "AttributeNames" :xml-name "AttributeName"
                                  :xml-flattened common-lisp:t)
                                 (message-system-attribute-names :target-type
                                  message-system-attribute-list :member-name
                                  "MessageSystemAttributeNames" :xml-name
                                  "AttributeName" :xml-flattened common-lisp:t)
                                 (message-attribute-names :target-type
                                  message-attribute-name-list :member-name
                                  "MessageAttributeNames" :xml-name
                                  "MessageAttributeName" :xml-flattened
                                  common-lisp:t)
                                 (max-number-of-messages :target-type
                                  nullable-integer :member-name
                                  "MaxNumberOfMessages")
                                 (visibility-timeout :target-type
                                  nullable-integer :member-name
                                  "VisibilityTimeout")
                                 (wait-time-seconds :target-type
                                  nullable-integer :member-name
                                  "WaitTimeSeconds")
                                 (receive-request-attempt-id :target-type
                                  string :member-name
                                  "ReceiveRequestAttemptId"))
                                (:shape-name "ReceiveMessageRequest"))

(smithy/sdk/shapes:define-output receive-message-result common-lisp:nil
                                 ((messages :target-type message-list
                                   :member-name "Messages" :xml-name "Message"
                                   :xml-flattened common-lisp:t))
                                 (:shape-name "ReceiveMessageResult"))

(smithy/sdk/shapes:define-input remove-permission-request common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl")
                                 (label :target-type string :required
                                  common-lisp:t :member-name "Label"))
                                (:shape-name "RemovePermissionRequest"))

(smithy/sdk/shapes:define-error request-throttled common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "RequestThrottled")
                                (:error-name "RequestThrottled")
                                (:error-code 403))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-input send-message-batch-request common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl")
                                 (entries :target-type
                                  send-message-batch-request-entry-list
                                  :required common-lisp:t :member-name
                                  "Entries" :xml-name
                                  "SendMessageBatchRequestEntry" :xml-flattened
                                  common-lisp:t))
                                (:shape-name "SendMessageBatchRequest"))

(smithy/sdk/shapes:define-structure send-message-batch-request-entry
                                    common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (message-body :target-type string
                                      :required common-lisp:t :member-name
                                      "MessageBody")
                                     (delay-seconds :target-type
                                      nullable-integer :member-name
                                      "DelaySeconds")
                                     (message-attributes :target-type
                                      message-body-attribute-map :member-name
                                      "MessageAttributes" :xml-name
                                      "MessageAttribute" :xml-flattened
                                      common-lisp:t)
                                     (message-system-attributes :target-type
                                      message-body-system-attribute-map
                                      :member-name "MessageSystemAttributes"
                                      :xml-name "MessageSystemAttribute"
                                      :xml-flattened common-lisp:t)
                                     (message-deduplication-id :target-type
                                      string :member-name
                                      "MessageDeduplicationId")
                                     (message-group-id :target-type string
                                      :member-name "MessageGroupId"))
                                    (:shape-name
                                     "SendMessageBatchRequestEntry"))

(smithy/sdk/shapes:define-list send-message-batch-request-entry-list :member
                               send-message-batch-request-entry)

(smithy/sdk/shapes:define-output send-message-batch-result common-lisp:nil
                                 ((successful :target-type
                                   send-message-batch-result-entry-list
                                   :required common-lisp:t :member-name
                                   "Successful" :xml-name
                                   "SendMessageBatchResultEntry" :xml-flattened
                                   common-lisp:t)
                                  (failed :target-type
                                   batch-result-error-entry-list :required
                                   common-lisp:t :member-name "Failed"
                                   :xml-name "BatchResultErrorEntry"
                                   :xml-flattened common-lisp:t))
                                 (:shape-name "SendMessageBatchResult"))

(smithy/sdk/shapes:define-structure send-message-batch-result-entry
                                    common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (message-id :target-type string :required
                                      common-lisp:t :member-name "MessageId")
                                     (md5of-message-body :target-type string
                                      :required common-lisp:t :member-name
                                      "MD5OfMessageBody")
                                     (md5of-message-attributes :target-type
                                      string :member-name
                                      "MD5OfMessageAttributes")
                                     (md5of-message-system-attributes
                                      :target-type string :member-name
                                      "MD5OfMessageSystemAttributes")
                                     (sequence-number :target-type string
                                      :member-name "SequenceNumber"))
                                    (:shape-name "SendMessageBatchResultEntry"))

(smithy/sdk/shapes:define-list send-message-batch-result-entry-list :member
                               send-message-batch-result-entry)

(smithy/sdk/shapes:define-input send-message-request common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl")
                                 (message-body :target-type string :required
                                  common-lisp:t :member-name "MessageBody")
                                 (delay-seconds :target-type nullable-integer
                                  :member-name "DelaySeconds")
                                 (message-attributes :target-type
                                  message-body-attribute-map :member-name
                                  "MessageAttributes" :xml-name
                                  "MessageAttribute" :xml-flattened
                                  common-lisp:t)
                                 (message-system-attributes :target-type
                                  message-body-system-attribute-map
                                  :member-name "MessageSystemAttributes"
                                  :xml-name "MessageSystemAttribute"
                                  :xml-flattened common-lisp:t)
                                 (message-deduplication-id :target-type string
                                  :member-name "MessageDeduplicationId")
                                 (message-group-id :target-type string
                                  :member-name "MessageGroupId"))
                                (:shape-name "SendMessageRequest"))

(smithy/sdk/shapes:define-output send-message-result common-lisp:nil
                                 ((md5of-message-body :target-type string
                                   :member-name "MD5OfMessageBody")
                                  (md5of-message-attributes :target-type string
                                   :member-name "MD5OfMessageAttributes")
                                  (md5of-message-system-attributes :target-type
                                   string :member-name
                                   "MD5OfMessageSystemAttributes")
                                  (message-id :target-type string :member-name
                                   "MessageId")
                                  (sequence-number :target-type string
                                   :member-name "SequenceNumber"))
                                 (:shape-name "SendMessageResult"))

(smithy/sdk/shapes:define-input set-queue-attributes-request common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl")
                                 (attributes :target-type queue-attribute-map
                                  :required common-lisp:t :member-name
                                  "Attributes" :xml-name "Attribute"
                                  :xml-flattened common-lisp:t))
                                (:shape-name "SetQueueAttributesRequest"))

(smithy/sdk/shapes:define-input start-message-move-task-request common-lisp:nil
                                ((source-arn :target-type string :required
                                  common-lisp:t :member-name "SourceArn")
                                 (destination-arn :target-type string
                                  :member-name "DestinationArn")
                                 (max-number-of-messages-per-second
                                  :target-type nullable-integer :member-name
                                  "MaxNumberOfMessagesPerSecond"))
                                (:shape-name "StartMessageMoveTaskRequest"))

(smithy/sdk/shapes:define-output start-message-move-task-result common-lisp:nil
                                 ((task-handle :target-type string :member-name
                                   "TaskHandle"))
                                 (:shape-name "StartMessageMoveTaskResult"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member
                               (string :xml-name "StringListValue"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key (tag-key :xml-name "Key") :value
                              (tag-value :xml-name "Value"))

(smithy/sdk/shapes:define-input tag-queue-request common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl")
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags" :xml-name
                                  "Tag" :xml-flattened common-lisp:t))
                                (:shape-name "TagQueueRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-entries-in-batch-request
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TooManyEntriesInBatchRequest")
                                (:error-name
                                 "AWS.SimpleQueueService.TooManyEntriesInBatchRequest")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unsupported-operation common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "UnsupportedOperation")
                                (:error-name
                                 "AWS.SimpleQueueService.UnsupportedOperation")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-queue-request common-lisp:nil
                                ((queue-url :target-type string :required
                                  common-lisp:t :member-name "QueueUrl")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :xml-name "TagKey" :xml-flattened
                                  common-lisp:t))
                                (:shape-name "UntagQueueRequest"))

(smithy/sdk/operation:define-operation add-permission :shape-name
                                       "AddPermission" :input
                                       add-permission-request :output
                                       common-lisp:null :errors
                                       (invalid-address invalid-security
                                        over-limit queue-does-not-exist
                                        request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation cancel-message-move-task :shape-name
                                       "CancelMessageMoveTask" :input
                                       cancel-message-move-task-request :output
                                       cancel-message-move-task-result :errors
                                       (invalid-address invalid-security
                                        request-throttled
                                        resource-not-found-exception
                                        unsupported-operation))

(smithy/sdk/operation:define-operation change-message-visibility :shape-name
                                       "ChangeMessageVisibility" :input
                                       change-message-visibility-request
                                       :output common-lisp:null :errors
                                       (invalid-address invalid-security
                                        message-not-inflight
                                        queue-does-not-exist
                                        receipt-handle-is-invalid
                                        request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation change-message-visibility-batch
                                       :shape-name
                                       "ChangeMessageVisibilityBatch" :input
                                       change-message-visibility-batch-request
                                       :output
                                       change-message-visibility-batch-result
                                       :errors
                                       (batch-entry-ids-not-distinct
                                        empty-batch-request invalid-address
                                        invalid-batch-entry-id invalid-security
                                        queue-does-not-exist request-throttled
                                        too-many-entries-in-batch-request
                                        unsupported-operation))

(smithy/sdk/operation:define-operation create-queue :shape-name "CreateQueue"
                                       :input create-queue-request :output
                                       create-queue-result :errors
                                       (invalid-address invalid-attribute-name
                                        invalid-attribute-value
                                        invalid-security queue-deleted-recently
                                        queue-name-exists request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation delete-message :shape-name
                                       "DeleteMessage" :input
                                       delete-message-request :output
                                       common-lisp:null :errors
                                       (invalid-address invalid-id-format
                                        invalid-security queue-does-not-exist
                                        receipt-handle-is-invalid
                                        request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation delete-message-batch :shape-name
                                       "DeleteMessageBatch" :input
                                       delete-message-batch-request :output
                                       delete-message-batch-result :errors
                                       (batch-entry-ids-not-distinct
                                        empty-batch-request invalid-address
                                        invalid-batch-entry-id invalid-security
                                        queue-does-not-exist request-throttled
                                        too-many-entries-in-batch-request
                                        unsupported-operation))

(smithy/sdk/operation:define-operation delete-queue :shape-name "DeleteQueue"
                                       :input delete-queue-request :output
                                       common-lisp:null :errors
                                       (invalid-address invalid-security
                                        queue-does-not-exist request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation get-queue-attributes :shape-name
                                       "GetQueueAttributes" :input
                                       get-queue-attributes-request :output
                                       get-queue-attributes-result :errors
                                       (invalid-address invalid-attribute-name
                                        invalid-security queue-does-not-exist
                                        request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation get-queue-url :shape-name "GetQueueUrl"
                                       :input get-queue-url-request :output
                                       get-queue-url-result :errors
                                       (invalid-address invalid-security
                                        queue-does-not-exist request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation list-dead-letter-source-queues
                                       :shape-name "ListDeadLetterSourceQueues"
                                       :input
                                       list-dead-letter-source-queues-request
                                       :output
                                       list-dead-letter-source-queues-result
                                       :errors
                                       (invalid-address invalid-security
                                        queue-does-not-exist request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation list-message-move-tasks :shape-name
                                       "ListMessageMoveTasks" :input
                                       list-message-move-tasks-request :output
                                       list-message-move-tasks-result :errors
                                       (invalid-address invalid-security
                                        request-throttled
                                        resource-not-found-exception
                                        unsupported-operation))

(smithy/sdk/operation:define-operation list-queue-tags :shape-name
                                       "ListQueueTags" :input
                                       list-queue-tags-request :output
                                       list-queue-tags-result :errors
                                       (invalid-address invalid-security
                                        queue-does-not-exist request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation list-queues :shape-name "ListQueues"
                                       :input list-queues-request :output
                                       list-queues-result :errors
                                       (invalid-address invalid-security
                                        request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation purge-queue :shape-name "PurgeQueue"
                                       :input purge-queue-request :output
                                       common-lisp:null :errors
                                       (invalid-address invalid-security
                                        purge-queue-in-progress
                                        queue-does-not-exist request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation receive-message :shape-name
                                       "ReceiveMessage" :input
                                       receive-message-request :output
                                       receive-message-result :errors
                                       (invalid-address invalid-security
                                        kms-access-denied kms-disabled
                                        kms-invalid-key-usage kms-invalid-state
                                        kms-not-found kms-opt-in-required
                                        kms-throttled over-limit
                                        queue-does-not-exist request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation remove-permission :shape-name
                                       "RemovePermission" :input
                                       remove-permission-request :output
                                       common-lisp:null :errors
                                       (invalid-address invalid-security
                                        queue-does-not-exist request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation send-message :shape-name "SendMessage"
                                       :input send-message-request :output
                                       send-message-result :errors
                                       (invalid-address
                                        invalid-message-contents
                                        invalid-security kms-access-denied
                                        kms-disabled kms-invalid-key-usage
                                        kms-invalid-state kms-not-found
                                        kms-opt-in-required kms-throttled
                                        queue-does-not-exist request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation send-message-batch :shape-name
                                       "SendMessageBatch" :input
                                       send-message-batch-request :output
                                       send-message-batch-result :errors
                                       (batch-entry-ids-not-distinct
                                        batch-request-too-long
                                        empty-batch-request invalid-address
                                        invalid-batch-entry-id invalid-security
                                        kms-access-denied kms-disabled
                                        kms-invalid-key-usage kms-invalid-state
                                        kms-not-found kms-opt-in-required
                                        kms-throttled queue-does-not-exist
                                        request-throttled
                                        too-many-entries-in-batch-request
                                        unsupported-operation))

(smithy/sdk/operation:define-operation set-queue-attributes :shape-name
                                       "SetQueueAttributes" :input
                                       set-queue-attributes-request :output
                                       common-lisp:null :errors
                                       (invalid-address invalid-attribute-name
                                        invalid-attribute-value
                                        invalid-security over-limit
                                        queue-does-not-exist request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation start-message-move-task :shape-name
                                       "StartMessageMoveTask" :input
                                       start-message-move-task-request :output
                                       start-message-move-task-result :errors
                                       (invalid-address invalid-security
                                        request-throttled
                                        resource-not-found-exception
                                        unsupported-operation))

(smithy/sdk/operation:define-operation tag-queue :shape-name "TagQueue" :input
                                       tag-queue-request :output
                                       common-lisp:null :errors
                                       (invalid-address invalid-security
                                        queue-does-not-exist request-throttled
                                        unsupported-operation))

(smithy/sdk/operation:define-operation untag-queue :shape-name "UntagQueue"
                                       :input untag-queue-request :output
                                       common-lisp:null :errors
                                       (invalid-address invalid-security
                                        queue-does-not-exist request-throttled
                                        unsupported-operation))
