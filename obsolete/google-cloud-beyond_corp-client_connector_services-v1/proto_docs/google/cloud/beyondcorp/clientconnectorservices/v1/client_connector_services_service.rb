# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module BeyondCorp
      module ClientConnectorServices
        module V1
          # Message describing ClientConnectorService object.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Name of resource. The name is ignored during creation.
          # @!attribute [r] create_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. [Output only] Create time stamp.
          # @!attribute [r] update_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. [Output only] Update time stamp.
          # @!attribute [rw] display_name
          #   @return [::String]
          #     Optional. User-provided name.
          #     The display name should follow certain format.
          #     * Must be 6 to 30 characters in length.
          #     * Can only contain lowercase letters, numbers, and hyphens.
          #     * Must start with a letter.
          # @!attribute [rw] ingress
          #   @return [::Google::Cloud::BeyondCorp::ClientConnectorServices::V1::ClientConnectorService::Ingress]
          #     Required. The details of the ingress settings.
          # @!attribute [rw] egress
          #   @return [::Google::Cloud::BeyondCorp::ClientConnectorServices::V1::ClientConnectorService::Egress]
          #     Required. The details of the egress settings.
          # @!attribute [r] state
          #   @return [::Google::Cloud::BeyondCorp::ClientConnectorServices::V1::ClientConnectorService::State]
          #     Output only. The operational state of the ClientConnectorService.
          class ClientConnectorService
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Settings of how to connect to the ClientGateway.
            # One of the following options should be set.
            # @!attribute [rw] config
            #   @return [::Google::Cloud::BeyondCorp::ClientConnectorServices::V1::ClientConnectorService::Ingress::Config]
            #     The basic ingress config for ClientGateways.
            class Ingress
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # The basic ingress config for ClientGateways.
              # @!attribute [rw] transport_protocol
              #   @return [::Google::Cloud::BeyondCorp::ClientConnectorServices::V1::ClientConnectorService::Ingress::Config::TransportProtocol]
              #     Required. Immutable. The transport protocol used between the client and
              #     the server.
              # @!attribute [rw] destination_routes
              #   @return [::Array<::Google::Cloud::BeyondCorp::ClientConnectorServices::V1::ClientConnectorService::Ingress::Config::DestinationRoute>]
              #     Required. The settings used to configure basic ClientGateways.
              class Config
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods

                # The setting used to configure ClientGateways.
                # It is adding routes to the client's routing table
                # after the connection is established.
                # @!attribute [rw] address
                #   @return [::String]
                #     Required. The network address of the subnet
                #     for which the packet is routed to the ClientGateway.
                # @!attribute [rw] netmask
                #   @return [::String]
                #     Required. The network mask of the subnet
                #     for which the packet is routed to the ClientGateway.
                class DestinationRoute
                  include ::Google::Protobuf::MessageExts
                  extend ::Google::Protobuf::MessageExts::ClassMethods
                end

                # The protocol used to connect to the server.
                module TransportProtocol
                  # Default value. This value is unused.
                  TRANSPORT_PROTOCOL_UNSPECIFIED = 0

                  # TCP protocol.
                  TCP = 1
                end
              end
            end

            # The details of the egress info. One of the following options should be set.
            # @!attribute [rw] peered_vpc
            #   @return [::Google::Cloud::BeyondCorp::ClientConnectorServices::V1::ClientConnectorService::Egress::PeeredVpc]
            #     A VPC from the consumer project.
            class Egress
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # The peered VPC owned by the consumer project.
              # @!attribute [rw] network_vpc
              #   @return [::String]
              #     Required. The name of the peered VPC owned by the consumer project.
              class PeeredVpc
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end

            # Represents the different states of a ClientConnectorService.
            module State
              # Default value. This value is unused.
              STATE_UNSPECIFIED = 0

              # ClientConnectorService is being created.
              CREATING = 1

              # ClientConnectorService is being updated.
              UPDATING = 2

              # ClientConnectorService is being deleted.
              DELETING = 3

              # ClientConnectorService is running.
              RUNNING = 4

              # ClientConnectorService is down and may be restored in the future.
              # This happens when CCFE sends ProjectState = OFF.
              DOWN = 5

              # ClientConnectorService encountered an error and is in an indeterministic
              # state.
              ERROR = 6
            end
          end

          # Message for requesting list of ClientConnectorServices.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Parent value for ListClientConnectorServicesRequest.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     Optional. Requested page size. Server may return fewer items than
          #     requested. If unspecified, server will pick an appropriate default.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     Optional. A token identifying a page of results the server should return.
          # @!attribute [rw] filter
          #   @return [::String]
          #     Optional. Filtering results.
          # @!attribute [rw] order_by
          #   @return [::String]
          #     Optional. Hint for how to order the results.
          class ListClientConnectorServicesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Message for response to listing ClientConnectorServices.
          # @!attribute [rw] client_connector_services
          #   @return [::Array<::Google::Cloud::BeyondCorp::ClientConnectorServices::V1::ClientConnectorService>]
          #     The list of ClientConnectorService.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     A token identifying a page of results the server should return.
          # @!attribute [rw] unreachable
          #   @return [::Array<::String>]
          #     Locations that could not be reached.
          class ListClientConnectorServicesResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Message for getting a ClientConnectorService.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Name of the resource.
          class GetClientConnectorServiceRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Message for creating a ClientConnectorService.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Value for parent.
          # @!attribute [rw] client_connector_service_id
          #   @return [::String]
          #     Optional. User-settable client connector service resource ID.
          #      * Must start with a letter.
          #      * Must contain between 4-63 characters from `/[a-z][0-9]-/`.
          #      * Must end with a number or a letter.
          #
          #     A random system generated name will be assigned
          #     if not specified by the user.
          # @!attribute [rw] client_connector_service
          #   @return [::Google::Cloud::BeyondCorp::ClientConnectorServices::V1::ClientConnectorService]
          #     Required. The resource being created.
          # @!attribute [rw] request_id
          #   @return [::String]
          #     Optional. An optional request ID to identify requests. Specify a unique
          #     request ID so that if you must retry your request, the server will know to
          #     ignore the request if it has already been completed. The server will
          #     guarantee that for at least 60 minutes since the first request.
          #
          #     For example, consider a situation where you make an initial request and t
          #     he request times out. If you make the request again with the same request
          #     ID, the server can check if original operation with the same request ID
          #     was received, and if so, will ignore the second request. This prevents
          #     clients from accidentally creating duplicate commitments.
          #
          #     The request ID must be a valid UUID with the exception that zero UUID is
          #     not supported (00000000-0000-0000-0000-000000000000).
          # @!attribute [rw] validate_only
          #   @return [::Boolean]
          #     Optional. If set, validates request by executing a dry-run which would not
          #     alter the resource in any way.
          class CreateClientConnectorServiceRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Message for updating a ClientConnectorService
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. Field mask is used to specify the fields to be overwritten in the
          #     ClientConnectorService resource by the update.
          #     The fields specified in the update_mask are relative to the resource, not
          #     the full request. A field will be overwritten if it is in the mask. If the
          #     user does not provide a mask then all fields will be overwritten.
          #
          #     Mutable fields: display_name.
          # @!attribute [rw] client_connector_service
          #   @return [::Google::Cloud::BeyondCorp::ClientConnectorServices::V1::ClientConnectorService]
          #     Required. The resource being updated.
          # @!attribute [rw] request_id
          #   @return [::String]
          #     Optional. An optional request ID to identify requests. Specify a unique
          #     request ID so that if you must retry your request, the server will know to
          #     ignore the request if it has already been completed. The server will
          #     guarantee that for at least 60 minutes since the first request.
          #
          #     For example, consider a situation where you make an initial request and t
          #     he request times out. If you make the request again with the same request
          #     ID, the server can check if original operation with the same request ID
          #     was received, and if so, will ignore the second request. This prevents
          #     clients from accidentally creating duplicate commitments.
          #
          #     The request ID must be a valid UUID with the exception that zero UUID is
          #     not supported (00000000-0000-0000-0000-000000000000).
          # @!attribute [rw] validate_only
          #   @return [::Boolean]
          #     Optional. If set, validates request by executing a dry-run which would not
          #     alter the resource in any way.
          # @!attribute [rw] allow_missing
          #   @return [::Boolean]
          #     Optional. If set as true, will create the resource if it is not found.
          class UpdateClientConnectorServiceRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Message for deleting a ClientConnectorService.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Name of the resource.
          # @!attribute [rw] request_id
          #   @return [::String]
          #     Optional. An optional request ID to identify requests. Specify a unique
          #     request ID so that if you must retry your request, the server will know to
          #     ignore the request if it has already been completed. The server will
          #     guarantee that for at least 60 minutes after the first request.
          #
          #     For example, consider a situation where you make an initial request and t
          #     he request times out. If you make the request again with the same request
          #     ID, the server can check if original operation with the same request ID
          #     was received, and if so, will ignore the second request. This prevents
          #     clients from accidentally creating duplicate commitments.
          #
          #     The request ID must be a valid UUID with the exception that zero UUID is
          #     not supported (00000000-0000-0000-0000-000000000000).
          # @!attribute [rw] validate_only
          #   @return [::Boolean]
          #     Optional. If set, validates request by executing a dry-run which would not
          #     alter the resource in any way.
          class DeleteClientConnectorServiceRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents the metadata of the long-running operation.
          # @!attribute [r] create_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The time the operation was created.
          # @!attribute [r] end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The time the operation finished running.
          # @!attribute [r] target
          #   @return [::String]
          #     Output only. Server-defined resource path for the target of the operation.
          # @!attribute [r] verb
          #   @return [::String]
          #     Output only. Name of the verb executed by the operation.
          # @!attribute [r] status_message
          #   @return [::String]
          #     Output only. Human-readable status of the operation, if any.
          # @!attribute [r] requested_cancellation
          #   @return [::Boolean]
          #     Output only. Identifies whether the user has requested cancellation
          #     of the operation. Operations that have successfully been cancelled
          #     have [Operation.error][] value with a
          #     {::Google::Rpc::Status#code google.rpc.Status.code} of 1, corresponding to
          #     `Code.CANCELLED`.
          # @!attribute [r] api_version
          #   @return [::String]
          #     Output only. API version used to start the operation.
          class ClientConnectorServiceOperationMetadata
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end