# Release History

### 0.14.0 (2025-05-12)

#### Features

* Updated core dependencies including gapic-common 
* Updated required Ruby version to 3.1 

### 0.13.1 (2025-04-29)

#### Bug Fixes

* Fixed several issues with validating credential configs 

### 0.13.0 (2025-01-29)

#### Features

* Update Ruby version requirement to 3.0 
#### Documentation

* Include note about validating externally-provided credentials 

### 0.12.0 (2024-12-10)

#### Features

* Provide opt-in debug logging 

### 0.11.1 (2024-08-30)

#### Documentation

* Add field `experimental_features` to message `PythonSettings` ([#27007](https://github.com/googleapis/google-cloud-ruby/issues/27007)) 

### 0.11.0 (2024-07-22)

#### Features

* Support for including location in project_name parameters ([#26465](https://github.com/googleapis/google-cloud-ruby/issues/26465)) 
#### Documentation

* Various improvements and clarifications to reference documentation 

### 0.10.0 (2024-02-26)

#### Features

* Updated minimum Ruby version to 2.7 ([#24870](https://github.com/googleapis/google-cloud-ruby/issues/24870)) 

### 0.9.2 (2024-02-01)

#### Bug Fixes

* Eliminated a harmless but annoying warning in the protobuf class files 

### 0.9.1 (2024-01-12)

#### Bug Fixes

* Ensure endpoints are correct for mixin clients ([#24032](https://github.com/googleapis/google-cloud-ruby/issues/24032)) 

### 0.9.0 (2024-01-11)

#### Features

* Support for universe_domain ([#23779](https://github.com/googleapis/google-cloud-ruby/issues/23779)) 

### 0.8.0 (2023-09-12)

#### Features

* Support for channel pool configuration ([#22920](https://github.com/googleapis/google-cloud-ruby/issues/22920)) 

### 0.7.0 (2023-06-06)

#### Features

* Uses binary protobuf definitions for better forward compatibility ([#21674](https://github.com/googleapis/google-cloud-ruby/issues/21674)) 
#### Bug Fixes

* Don't use self-signed JWT credentials if the global configuration endpoint has been modified 

### 0.6.0 (2023-03-08)

#### Features

* Support REST transport ([#20626](https://github.com/googleapis/google-cloud-ruby/issues/20626)) 

### 0.5.1 (2023-02-13)

#### Documentation

* Update documentation for regionalization page ([#20120](https://github.com/googleapis/google-cloud-ruby/issues/20120)) 

### 0.5.0 (2022-07-02)

#### Features

* Updated minimum Ruby version to 2.6 ([#18443](https://github.com/googleapis/google-cloud-ruby/issues/18443)) 

### 0.4.5 / 2022-01-11

#### Documentation

* Fix titles of documentation pages
* Remove some broken images and fix outdated content in authentication documentation

### 0.4.4 / 2021-11-08

#### Documentation

* Added simple code snippets to RPC method documentation

### 0.4.3 / 2021-08-11

#### Bug Fixes

* Honor client-level timeout configuration

### 0.4.2 / 2021-07-12

#### Documentation

* Clarify some language around authentication configuration

### 0.4.1 / 2021-06-17

#### Bug Fixes

* Support future 1.x versions of gapic-common

### 0.4.0 / 2021-03-08

#### Features

* Drop support for Ruby 2.4 and add support for Ruby 3.0

### 0.3.0 / 2021-02-23

#### Features

* Support error group resolution status

### 0.2.0 / 2021-02-02

#### Features

* Use self-signed JWT credentials when possible

### 0.1.3 / 2021-01-19

#### Documentation

* Timeout config description correctly gives the units as seconds.

### 0.1.2 / 2020-08-10

#### Bug Fixes

* Allow special symbolic credentials in client configs

### 0.1.1 / 2020-08-06

#### Bug Fixes

* Fix retry logic by checking the correct numeric error codes

### 0.1.0 / 2020-07-07

Initial release.
