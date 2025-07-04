# Changelog

### 1.6.0 (2025-06-24)

#### Features

* support Azure federated identity ([#30478](https://github.com/googleapis/google-cloud-ruby/issues/30478)) 
* support BYOSA 
#### Documentation

* A comment for enum value `COPY` in enum `LoggableAction` is changed 
* A comment for field `end_time_of_day` in message `.google.storagetransfer.v1.Schedule` is changed 
* A comment for field `list_url` in message `.google.storagetransfer.v1.HttpData` is changed 
* A comment for field `overwrite_objects_already_existing_in_sink` in message `.google.storagetransfer.v1.TransferOptions` is changed 
* A comment for message `ObjectConditions` is changed 

### 1.5.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.4.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.4.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 1.3.0 (2025-01-08)

#### Features

* Support for cross-bucket replication job configuration 
#### Documentation

* Expanded documentation for filters 

### 1.2.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.1.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` ([#27031](https://github.com/googleapis/google-cloud-ruby/issues/27031)) 

### 1.1.0 (2024-08-22)

#### Features

* add GCS Managed Folders 
* add HDFS configuration ([#26965](https://github.com/googleapis/google-cloud-ruby/issues/26965)) 
* add S3 Cloudfront Domain 
* add S3 Managed Private Network 

### 1.0.0 (2024-07-10)

#### Features

* Bump version to 1.0.0 

### 0.10.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24878](https://github.com/googleapis/google-cloud-ruby/issues/24878)) 

### 0.9.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.9.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.9.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23786](https://github.com/googleapis/google-cloud-ruby/issues/23786)) 

### 0.8.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22924](https://github.com/googleapis/google-cloud-ruby/issues/22924)) 

### 0.7.0 (2023-06-27)

#### Features

* Provide more config options for event driven transfer ([#22454](https://github.com/googleapis/google-cloud-ruby/issues/22454))) 

### 0.6.1 (2023-06-06)

#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.6.0 (2023-05-31)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21679](https://github.com/googleapis/google-cloud-ruby/issues/21679)) 

### 0.5.0 (2023-03-08)

#### Features

* Support REST transport ([#20629](https://github.com/googleapis/google-cloud-ruby/issues/20629)) 

### 0.4.0 (2022-09-16)

#### Features

* Support for AWS S3 compatible data 
* Support for delete_transfer_job call ([#19139](https://github.com/googleapis/google-cloud-ruby/issues/19139)) 
#### Bug Fixes

* Adjusted the default retry configuration 

### 0.3.0 (2022-07-08)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.2.0 (2022-04-20)

#### Features

* Support for managing Agent Pools

### 0.1.2 / 2022-01-11

#### Bug Fixes

* Honor quota project in auxiliary operations clients

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.1.1 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.1.0 / 2021-08-19

#### Features

* Initial generation of google-cloud-storage_transfer-v1
