# Changelog

### 1.6.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 1.5.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 1.5.0 (2025-01-28)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Clarify behavior of protobuf message fields that are part of mutually-exclusive sets 
* Include note about validating externally-provided credentials 

### 1.4.0 (2025-01-08)

#### Features

* Support for agent type 
* Support for authorized views in path helpers 

### 1.3.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 1.2.0 (2024-12-04)

#### Features

* Add AnalysisRules resource and APIs 
* Add FeedbackLabel resource and APIs ([#27634](https://github.com/googleapis/google-cloud-ruby/issues/27634)) 
* Add Quality AI resources and APIs 
* Add QueryMetrics API 
#### Documentation

* A comment for field `custom_metadata_keys` in message `.google.cloud.contactcenterinsights.v1.IngestConversationsRequest` is changed 
* A comment for field `encryption_spec` in message `.google.cloud.contactcenterinsights.v1.InitializeEncryptionSpecRequest` is changed 
* A comment for field `kms_key` in message `.google.cloud.contactcenterinsights.v1.EncryptionSpec` is changed 
* A comment for field `labels` in message `.google.cloud.contactcenterinsights.v1.Conversation` is changed 
* A comment for field `metadata_json` in message `.google.cloud.contactcenterinsights.v1.Conversation` is changed 
* A comment for field `partial_errors` in message `.google.cloud.contactcenterinsights.v1.InitializeEncryptionSpecMetadata` is changed 
* A comment for message `EncryptionSpec` is changed 
* A comment for method `InitializeEncryptionSpec` in service `ContactCenterInsights` is changed 

### 1.1.0 (2024-10-15)

#### Features

* CallAnalysisMetadata includes overall conversation-level silence during the call 
* Issue resource includes representative description 
* RuntimeAnnotation includes explicit input used for answer generation 
* Support for conversation metadata in GcsSource 
* Support for export_issue_model and import_issue_model 
* Support for get_encryption_spec and initialize_encryption_spec 
* Support for JSON metadata in Conversation 
* Support for specifying result order when calling list_conversations 
* Support for specifying sample size when calling ingest_conversations 

### 1.0.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` ([#27004](https://github.com/googleapis/google-cloud-ruby/issues/27004)) 

### 1.0.0 (2024-07-10)

#### Features

* Bump version to 1.0.0 

### 0.22.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24867](https://github.com/googleapis/google-cloud-ruby/issues/24867)) 

### 0.21.1 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.21.0 (2024-01-25)

#### Features

* Support for Conversation QualityMetadata ([#24472](https://github.com/googleapis/google-cloud-ruby/issues/24472)) 

### 0.20.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.20.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23776](https://github.com/googleapis/google-cloud-ruby/issues/23776)) 

### 0.19.1 (2023-12-04)

#### Documentation

* Update IngestConversations and BulkAnalyzeConversations comments ([#23561](https://github.com/googleapis/google-cloud-ruby/issues/23561)) 

### 0.19.0 (2023-11-07)

#### Features

* Support bulk audio import via the IngestConversations API ([#23521](https://github.com/googleapis/google-cloud-ruby/issues/23521)) 
* Support BulkDeleteConversations API ([#23521](https://github.com/googleapis/google-cloud-ruby/issues/23521)) 

### 0.18.0 (2023-09-28)

#### Features

* add optional SpeechConfig to UploadConversationRequest  
* support recognizer path 

### 0.17.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22918](https://github.com/googleapis/google-cloud-ruby/issues/22918)) 

### 0.16.0 (2023-07-10)

#### Features

* Support topic model type V2 ([#22482](https://github.com/googleapis/google-cloud-ruby/issues/22482)) 

### 0.15.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21673](https://github.com/googleapis/google-cloud-ruby/issues/21673)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.14.0 (2023-05-02)

#### Features

* Support summary generation during conversation analysis ([#21497](https://github.com/googleapis/google-cloud-ruby/issues/21497)) 

### 0.13.0 (2023-04-10)

#### Features

* support upload_conversation api 

### 0.12.0 (2023-03-08)

#### Features

* Support REST transport ([#20625](https://github.com/googleapis/google-cloud-ruby/issues/20625)) 

### 0.11.0 (2023-03-03)

#### Features

* add upload_conversation_analysis_percentage in AnalysisConfig ([#20588](https://github.com/googleapis/google-cloud-ruby/issues/20588)) 

### 0.10.0 (2023-02-13)

#### Features

* Support for IngestConversationsStats ([#20122](https://github.com/googleapis/google-cloud-ruby/issues/20122)) 
* Support for IssueModel#issue_count 

### 0.9.0 (2022-12-14)

#### Features

* Added annotator_selector field to Analysis 
* Added issue match data to CallAnnotation 
* Added sample utterances to Issue 
* Support for the bulk_analyze_conversations RPC ([#19857](https://github.com/googleapis/google-cloud-ruby/issues/19857)) 
* Support for the delete_issue RPC 
* Support for the ingest_conversations RPC 

### 0.8.2 (2022-08-24)

#### Documentation

* Correct query_record field descriptions to clarify that they contain answer record resource names ([#19048](https://github.com/googleapis/google-cloud-ruby/issues/19048)) 

### 0.8.1 (2022-07-29)

#### Documentation

* Fixes to a few attribute descriptions ([#18928](https://github.com/googleapis/google-cloud-ruby/issues/18928)) 

### 0.8.0 (2022-07-02)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 
#### Bug Fixes

* Fixed a crash when making certain long-running-operations status calls ([#18441](https://github.com/googleapis/google-cloud-ruby/issues/18441)) 

### 0.7.2 (2022-06-08)

#### Documentation

* Update comments in contact_center_insights-v1

### 0.7.1 / 2022-01-21

#### Documentation

* Update to reference docs.

### 0.7.0 / 2022-01-11

#### Features

* Support for management of View resources

#### Bug Fixes

* Honor quota project in auxiliary operations clients

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.6.0 / 2021-12-07

#### Features

* Support setting a write disposition when exporting insights data

#### Documentation

* Fixed some formatting issues in the reference documentation

### 0.5.0 / 2021-11-08

#### Features

* Support for the update_phrase_matcher call

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.4.0 / 2021-10-18

#### Features

* Support dialogflow segment metadata, message time, and obfuscated ID fields

#### Documentation

* Document the default conversation medium

### 0.3.0 / 2021-09-21

#### Features

* Added InputDataConfig#filter and PhraseMatcher#update_time

### 0.2.0 / 2021-08-30

#### Features

* Support for a display name on an assigned issue

### 0.1.1 / 2021-08-25

#### Documentation

* Update product documentation URLs

### 0.1.0 / 2021-08-19

#### Features

* Initial generation of google-cloud-contact_center_insights-v1
