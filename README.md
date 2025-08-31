# Pirá - Unofficial AWS SDK for Common Lisp

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Pirá is a modern, unofficial AWS SDK for Common Lisp built on the [Smithy](https://smithy.io/) protocol framework. It provides comprehensive coverage of AWS services through auto-generated client code from official AWS service models.

> **⚠️ Alpha Software Warning**  
> This software is still in ALPHA quality. APIs may change in future releases. This project is intended as a successor to [aws-sdk-lisp](https://github.com/pokepay/aws-sdk-lisp).

## Features

- **Comprehensive Service Coverage**: Supports 400+ AWS services
- **Official AWS Models**: Generated from official [AWS service models](https://github.com/aws/api-models-aws)
- **Multiple Protocols**: REST-JSON, REST-XML, AWS Query, EC2 Query, and AWS JSON
- **Flexible Authentication**: Environment variables, shared credentials, EC2 instance roles, and assume role
- **Streaming Support**: Built-in support for streaming operations
- **Protocol Tests**: Comprehensive test suite using AWS protocol test specifications

## Installation

Pirá will be available through Quicklisp once published. For now, you can install from source:

```common-lisp
;; Clone the repository
;; git clone https://github.com/fukamachi/smithy-lisp.git
;; git clone https://github.com/fukamachi/pira.git

;; Load the core system
(ql:quickload :pira)

;; Load specific AWS services as needed
(ql:quickload :pira/s3)
(ql:quickload :pira/ec2)
(ql:quickload :pira/lambda)
```

## Quick Start

### Basic Usage

```common-lisp
(ql:quickload '(:pira :pira/sns))

;; Create a session (uses default credential chain)
(setf pira:*session* (pira:make-session))

;; Send an SMS using SNS
(pira/sns:publish :phone-number "+1234567890"
                  :message "Hello from Pirá!")
```

### S3 Example

```common-lisp
(ql:quickload '(:pira :pira/s3))

(setf pira:*session* (pira:make-session))

;; List buckets
(pira/s3:list-buckets)

;; Put an object
(pira/s3:put-object :bucket "my-bucket"
                    :key "hello.txt"
                    :body "Hello, World!")

;; Get an object
(pira/s3:get-object :bucket "my-bucket" :key "hello.txt")
```

### EC2 Example

```common-lisp
(ql:quickload '(:pira :pira/ec2))

(setf pira:*session* (pira:make-session :region "us-east-1"))

;; Describe instances
(pira/ec2:describe-instances)

;; Describe availability zones
(pira/ec2:describe-availability-zones)
```

## Authentication

Pirá supports multiple authentication methods in the following priority order:

### 1. Environment Variables
```bash
export AWS_ACCESS_KEY_ID=your_access_key
export AWS_SECRET_ACCESS_KEY=your_secret_key
export AWS_SESSION_TOKEN=your_session_token  # Optional
export AWS_REGION=us-east-1
```

### 2. Shared Credentials File
```ini
# ~/.aws/credentials
[default]
aws_access_key_id = your_access_key
aws_secret_access_key = your_secret_key

# ~/.aws/config
[default]
region = us-east-1
```

### 3. EC2 Instance Role
Automatically retrieves credentials from EC2 instance metadata when running on EC2.

### 4. Programmatic Configuration
```common-lisp
(setf pira:*session*
      (pira:make-session
        :region "us-east-1"
        :credentials (pira:make-credentials
                       :access-key-id "AKIAIOSFODNN7EXAMPLE"
                       :secret-access-key "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY")))
```

## Error Handling

```common-lisp
(handler-case
    (pira/s3:get-object :bucket "nonexistent-bucket" :key "test.txt")
  (pira:aws-error (e)
    (format t "AWS Error: ~A~%" e)
    (format t "Status: ~A~%" (pira:aws-error-status e))
    (format t "Operation: ~A~%" (pira:aws-error-operation-name e))))
```

## Development

### Building from Source

```bash
# Install dependencies
qlot install

# Generate service code from AWS models
make build
```

### Running Tests

```bash
sbcl --load .qlot/setup.lisp \
     --eval "(ql:quickload :pira-tests)" \
     --eval "(rove:run :pira-tests)"
```

### Code Generation

The service clients are automatically generated from official AWS service models:

```common-lisp
(ql:quickload :pira-core/codegen)
(pira/codegen:codegen)  ; Generates all service files
```

## See Also

- [aws-sdk-lisp](https://github.com/pokepay/aws-sdk-lisp) - Previous generation AWS SDK for Common Lisp
- [smithy-lisp](https://github.com/fukamachi/smithy-lisp) - Smithy protocol framework for Common Lisp

## License

MIT License - see [LICENSE](LICENSE) for details.

This project includes AWS API Models, which are licensed under the Apache License, Version 2.0. See `assets/aws-models/` for details.
