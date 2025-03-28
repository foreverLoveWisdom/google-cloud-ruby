# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module ServiceManagement
      module V1
        # The full representation of a Service that is managed by
        # Google Service Management.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     The name of the service. See the
        #     [overview](https://cloud.google.com/service-infrastructure/docs/overview)
        #     for naming requirements.
        # @!attribute [rw] producer_project_id
        #   @return [::String]
        #     ID of the project that produces and owns this service.
        class ManagedService
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The metadata associated with a long running operation resource.
        # @!attribute [rw] resource_names
        #   @return [::Array<::String>]
        #     The full name of the resources that this operation is directly
        #     associated with.
        # @!attribute [rw] steps
        #   @return [::Array<::Google::Cloud::ServiceManagement::V1::OperationMetadata::Step>]
        #     Detailed status information for each step. The order is undetermined.
        # @!attribute [rw] progress_percentage
        #   @return [::Integer]
        #     Percentage of completion of this operation, ranging from 0 to 100.
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The start time of the operation.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents the status of one operation step.
          # @!attribute [rw] description
          #   @return [::String]
          #     The short description of the step.
          # @!attribute [rw] status
          #   @return [::Google::Cloud::ServiceManagement::V1::OperationMetadata::Status]
          #     The status code.
          class Step
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Code describes the status of the operation (or one of its steps).
          module Status
            # Unspecifed code.
            STATUS_UNSPECIFIED = 0

            # The operation or step has completed without errors.
            DONE = 1

            # The operation or step has not started yet.
            NOT_STARTED = 2

            # The operation or step is in progress.
            IN_PROGRESS = 3

            # The operation or step has completed with errors. If the operation is
            # rollbackable, the rollback completed with errors too.
            FAILED = 4

            # The operation or step has completed with cancellation.
            CANCELLED = 5
          end
        end

        # Represents a diagnostic message (error or warning)
        # @!attribute [rw] location
        #   @return [::String]
        #     File name and line number of the error or warning.
        # @!attribute [rw] kind
        #   @return [::Google::Cloud::ServiceManagement::V1::Diagnostic::Kind]
        #     The kind of diagnostic information provided.
        # @!attribute [rw] message
        #   @return [::String]
        #     Message describing the error or warning.
        class Diagnostic
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The kind of diagnostic information possible.
          module Kind
            # Warnings and errors
            WARNING = 0

            # Only errors
            ERROR = 1
          end
        end

        # Represents a source file which is used to generate the service configuration
        # defined by `google.api.Service`.
        # @!attribute [rw] id
        #   @return [::String]
        #     A unique ID for a specific instance of this message, typically assigned
        #     by the client for tracking purpose. If empty, the server may choose to
        #     generate one instead.
        # @!attribute [rw] files
        #   @return [::Array<::Google::Cloud::ServiceManagement::V1::ConfigFile>]
        #     Set of source configuration files that are used to generate a service
        #     configuration (`google.api.Service`).
        class ConfigSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Generic specification of a source configuration file
        # @!attribute [rw] file_path
        #   @return [::String]
        #     The file name of the configuration file (full or relative path).
        # @!attribute [rw] file_contents
        #   @return [::String]
        #     The bytes that constitute the file.
        # @!attribute [rw] file_type
        #   @return [::Google::Cloud::ServiceManagement::V1::ConfigFile::FileType]
        #     The type of configuration file this represents.
        class ConfigFile
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          module FileType
            # Unknown file type.
            FILE_TYPE_UNSPECIFIED = 0

            # YAML-specification of service.
            SERVICE_CONFIG_YAML = 1

            # OpenAPI specification, serialized in JSON.
            OPEN_API_JSON = 2

            # OpenAPI specification, serialized in YAML.
            OPEN_API_YAML = 3

            # FileDescriptorSet, generated by protoc.
            #
            # To generate, use protoc with imports and source info included.
            # For an example test.proto file, the following command would put the value
            # in a new file named out.pb.
            #
            # $protoc --include_imports --include_source_info test.proto -o out.pb
            FILE_DESCRIPTOR_SET_PROTO = 4

            # Uncompiled Proto file. Used for storage and display purposes only,
            # currently server-side compilation is not supported. Should match the
            # inputs to 'protoc' command used to generated FILE_DESCRIPTOR_SET_PROTO. A
            # file of this type can only be included if at least one file of type
            # FILE_DESCRIPTOR_SET_PROTO is included.
            PROTO_FILE = 6
          end
        end

        # Represents a service configuration with its name and id.
        # @!attribute [rw] name
        #   @return [::String]
        #     Resource name of a service config. It must have the following
        #     format: "services/\\{service name}/configs/\\{config id}".
        class ConfigRef
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Change report associated with a particular service configuration.
        #
        # It contains a list of ConfigChanges based on the comparison between
        # two service configurations.
        # @!attribute [rw] config_changes
        #   @return [::Array<::Google::Api::ConfigChange>]
        #     List of changes between two service configurations.
        #     The changes will be alphabetically sorted based on the identifier
        #     of each change.
        #     A ConfigChange identifier is a dot separated path to the configuration.
        #     Example: visibility.rules[selector='LibraryService.CreateBook'].restriction
        class ChangeReport
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A rollout resource that defines how service configuration versions are pushed
        # to control plane systems. Typically, you create a new version of the
        # service config, and then create a Rollout to push the service config.
        # @!attribute [rw] rollout_id
        #   @return [::String]
        #     Optional. Unique identifier of this Rollout. Must be no longer than 63
        #     characters and only lower case letters, digits, '.', '_' and '-' are
        #     allowed.
        #
        #     If not specified by client, the server will generate one. The generated id
        #     will have the form of <date><revision number>, where "date" is the create
        #     date in ISO 8601 format.  "revision number" is a monotonically increasing
        #     positive number that is reset every day for each service.
        #     An example of the generated rollout_id is '2016-02-16r1'
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Creation time of the rollout. Readonly.
        # @!attribute [rw] created_by
        #   @return [::String]
        #     The user who created the Rollout. Readonly.
        # @!attribute [rw] status
        #   @return [::Google::Cloud::ServiceManagement::V1::Rollout::RolloutStatus]
        #     The status of this rollout. Readonly. In case of a failed rollout,
        #     the system will automatically rollback to the current Rollout
        #     version. Readonly.
        # @!attribute [rw] traffic_percent_strategy
        #   @return [::Google::Cloud::ServiceManagement::V1::Rollout::TrafficPercentStrategy]
        #     Google Service Control selects service configurations based on
        #     traffic percentage.
        #
        #     Note: The following fields are mutually exclusive: `traffic_percent_strategy`, `delete_service_strategy`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] delete_service_strategy
        #   @return [::Google::Cloud::ServiceManagement::V1::Rollout::DeleteServiceStrategy]
        #     The strategy associated with a rollout to delete a `ManagedService`.
        #     Readonly.
        #
        #     Note: The following fields are mutually exclusive: `delete_service_strategy`, `traffic_percent_strategy`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] service_name
        #   @return [::String]
        #     The name of the service associated with this Rollout.
        class Rollout
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Strategy that specifies how clients of Google Service Controller want to
          # send traffic to use different config versions. This is generally
          # used by API proxy to split traffic based on your configured percentage for
          # each config version.
          #
          # One example of how to gradually rollout a new service configuration using
          # this
          # strategy:
          # Day 1
          #
          #     Rollout {
          #       id: "example.googleapis.com/rollout_20160206"
          #       traffic_percent_strategy {
          #         percentages: {
          #           "example.googleapis.com/20160201": 70.00
          #           "example.googleapis.com/20160206": 30.00
          #         }
          #       }
          #     }
          #
          # Day 2
          #
          #     Rollout {
          #       id: "example.googleapis.com/rollout_20160207"
          #       traffic_percent_strategy: {
          #         percentages: {
          #           "example.googleapis.com/20160206": 100.00
          #         }
          #       }
          #     }
          # @!attribute [rw] percentages
          #   @return [::Google::Protobuf::Map{::String => ::Float}]
          #     Maps service configuration IDs to their corresponding traffic percentage.
          #     Key is the service configuration ID, Value is the traffic percentage
          #     which must be greater than 0.0 and the sum must equal to 100.0.
          class TrafficPercentStrategy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] key
            #   @return [::String]
            # @!attribute [rw] value
            #   @return [::Float]
            class PercentagesEntry
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Strategy used to delete a service. This strategy is a placeholder only
          # used by the system generated rollout to delete a service.
          class DeleteServiceStrategy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Status of a Rollout.
          module RolloutStatus
            # No status specified.
            ROLLOUT_STATUS_UNSPECIFIED = 0

            # The Rollout is in progress.
            IN_PROGRESS = 1

            # The Rollout has completed successfully.
            SUCCESS = 2

            # The Rollout has been cancelled. This can happen if you have overlapping
            # Rollout pushes, and the previous ones will be cancelled.
            CANCELLED = 3

            # The Rollout has failed and the rollback attempt has failed too.
            FAILED = 4

            # The Rollout has not started yet and is pending for execution.
            PENDING = 5

            # The Rollout has failed and rolled back to the previous successful
            # Rollout.
            FAILED_ROLLED_BACK = 6
          end
        end
      end
    end
  end
end
