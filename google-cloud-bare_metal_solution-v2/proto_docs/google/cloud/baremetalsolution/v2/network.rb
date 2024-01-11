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
    module BareMetalSolution
      module V2
        # A Network.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of this `Network`.
        #     Resource names are schemeless URIs that follow the conventions in
        #     https://cloud.google.com/apis/design/resource_names.
        #     Format:
        #     `projects/{project}/locations/{location}/networks/{network}`
        # @!attribute [rw] id
        #   @return [::String]
        #     An identifier for the `Network`, generated by the backend.
        # @!attribute [rw] type
        #   @return [::Google::Cloud::BareMetalSolution::V2::Network::Type]
        #     The type of this network.
        # @!attribute [rw] ip_address
        #   @return [::String]
        #     IP address configured.
        # @!attribute [rw] mac_address
        #   @return [::Array<::String>]
        #     List of physical interfaces.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::BareMetalSolution::V2::Network::State]
        #     The Network state.
        # @!attribute [rw] vlan_id
        #   @return [::String]
        #     The vlan id of the Network.
        # @!attribute [rw] cidr
        #   @return [::String]
        #     The cidr of the Network.
        # @!attribute [rw] vrf
        #   @return [::Google::Cloud::BareMetalSolution::V2::VRF]
        #     The vrf for the Network.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels as key value pairs.
        # @!attribute [rw] services_cidr
        #   @return [::String]
        #     IP range for reserved for services (e.g. NFS).
        # @!attribute [rw] reservations
        #   @return [::Array<::Google::Cloud::BareMetalSolution::V2::NetworkAddressReservation>]
        #     List of IP address reservations in this network.
        #     When updating this field, an error will be generated if a reservation
        #     conflicts with an IP address already allocated to a physical server.
        # @!attribute [r] pod
        #   @return [::String]
        #     Output only. Pod name.
        # @!attribute [rw] mount_points
        #   @return [::Array<::Google::Cloud::BareMetalSolution::V2::NetworkMountPoint>]
        #     Input only. List of mount points to attach the network to.
        # @!attribute [rw] jumbo_frames_enabled
        #   @return [::Boolean]
        #     Whether network uses standard frames or jumbo ones.
        # @!attribute [r] gateway_ip
        #   @return [::String]
        #     Output only. Gateway ip address.
        class Network
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Network type.
          module Type
            # Unspecified value.
            TYPE_UNSPECIFIED = 0

            # Client network, a network peered to a Google Cloud VPC.
            CLIENT = 1

            # Private network, a network local to the Bare Metal Solution environment.
            PRIVATE = 2
          end

          # The possible states for this Network.
          module State
            # The Network is in an unknown state.
            STATE_UNSPECIFIED = 0

            # The Network is provisioning.
            PROVISIONING = 1

            # The Network has been provisioned.
            PROVISIONED = 2

            # The Network is being deprovisioned.
            DEPROVISIONING = 3

            # The Network is being updated.
            UPDATING = 4
          end
        end

        # A reservation of one or more addresses in a network.
        # @!attribute [rw] start_address
        #   @return [::String]
        #     The first address of this reservation block.
        #     Must be specified as a single IPv4 address, e.g. 10.1.2.2.
        # @!attribute [rw] end_address
        #   @return [::String]
        #     The last address of this reservation block, inclusive. I.e., for cases when
        #     reservations are only single addresses, end_address and start_address will
        #     be the same.
        #     Must be specified as a single IPv4 address, e.g. 10.1.2.2.
        # @!attribute [rw] note
        #   @return [::String]
        #     A note about this reservation, intended for human consumption.
        class NetworkAddressReservation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A network VRF.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the VRF.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::BareMetalSolution::V2::VRF::State]
        #     The possible state of VRF.
        # @!attribute [rw] qos_policy
        #   @return [::Google::Cloud::BareMetalSolution::V2::VRF::QosPolicy]
        #     The QOS policy applied to this VRF.
        #     The value is only meaningful when all the vlan attachments have the same
        #     QoS. This field should not be used for new integrations, use vlan
        #     attachment level qos instead. The field is left for backward-compatibility.
        # @!attribute [rw] vlan_attachments
        #   @return [::Array<::Google::Cloud::BareMetalSolution::V2::VRF::VlanAttachment>]
        #     The list of VLAN attachments for the VRF.
        class VRF
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # QOS policy parameters.
          # @!attribute [rw] bandwidth_gbps
          #   @return [::Float]
          #     The bandwidth permitted by the QOS policy, in gbps.
          class QosPolicy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # VLAN attachment details.
          # @!attribute [rw] peer_vlan_id
          #   @return [::Integer]
          #     The peer vlan ID of the attachment.
          # @!attribute [rw] peer_ip
          #   @return [::String]
          #     The peer IP of the attachment.
          # @!attribute [rw] router_ip
          #   @return [::String]
          #     The router IP of the attachment.
          # @!attribute [rw] pairing_key
          #   @return [::String]
          #     Input only. Pairing key.
          # @!attribute [rw] qos_policy
          #   @return [::Google::Cloud::BareMetalSolution::V2::VRF::QosPolicy]
          #     The QOS policy applied to this VLAN attachment.
          #     This value should be preferred to using qos at vrf level.
          # @!attribute [rw] id
          #   @return [::String]
          #     Immutable. The identifier of the attachment within vrf.
          # @!attribute [rw] interconnect_attachment
          #   @return [::String]
          #     Optional. The name of the vlan attachment within vrf. This is of the form
          #     projects/\\{project_number}/regions/\\{region}/interconnectAttachments/\\{interconnect_attachment}
          class VlanAttachment
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The possible states for this VRF.
          module State
            # The unspecified state.
            STATE_UNSPECIFIED = 0

            # The vrf is provisioning.
            PROVISIONING = 1

            # The vrf is provisioned.
            PROVISIONED = 2
          end
        end

        # Each logical interface represents a logical abstraction of the underlying
        # physical interface (for eg. bond, nic) of the instance. Each logical
        # interface can effectively map to multiple network-IP pairs and still be
        # mapped to one underlying physical interface.
        # @!attribute [rw] logical_network_interfaces
        #   @return [::Array<::Google::Cloud::BareMetalSolution::V2::LogicalInterface::LogicalNetworkInterface>]
        #     List of logical network interfaces within a logical interface.
        # @!attribute [rw] name
        #   @return [::String]
        #     Interface name. This is of syntax <bond><bond_mode> or <nic> and
        #     forms part of the network template name.
        # @!attribute [rw] interface_index
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Integer]
        #     The index of the logical interface mapping to the index of the hardware
        #     bond or nic on the chosen network template. This field is deprecated.
        class LogicalInterface
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Each logical network interface is effectively a network and IP pair.
          # @!attribute [rw] network
          #   @return [::String]
          #     Name of the network
          # @!attribute [rw] ip_address
          #   @return [::String]
          #     IP address in the network
          # @!attribute [rw] default_gateway
          #   @return [::Boolean]
          #     Whether this interface is the default gateway for the instance. Only
          #     one interface can be the default gateway for the instance.
          # @!attribute [rw] network_type
          #   @return [::Google::Cloud::BareMetalSolution::V2::Network::Type]
          #     Type of network.
          # @!attribute [rw] id
          #   @return [::String]
          #     An identifier for the `Network`, generated by the backend.
          class LogicalNetworkInterface
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Message for requesting network information.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the resource.
        class GetNetworkRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for requesting a list of networks.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent value for ListNetworksRequest.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Requested page size. The server might return fewer items than requested.
        #     If unspecified, server will pick an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A token identifying a page of results from the server.
        # @!attribute [rw] filter
        #   @return [::String]
        #     List filter.
        class ListNetworksRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message containing the list of networks.
        # @!attribute [rw] networks
        #   @return [::Array<::Google::Cloud::BareMetalSolution::V2::Network>]
        #     The list of networks.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token identifying a page of results from the server.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListNetworksResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message requesting to updating a network.
        # @!attribute [rw] network
        #   @return [::Google::Cloud::BareMetalSolution::V2::Network]
        #     Required. The network to update.
        #
        #     The `name` field is used to identify the instance to update.
        #     Format: projects/\\{project}/locations/\\{location}/networks/\\{network}
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The list of fields to update.
        #     The only currently supported fields are:
        #       `labels`, `reservations`, `vrf.vlan_attachments`
        class UpdateNetworkRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Network with all used IP addresses.
        # @!attribute [rw] network
        #   @return [::Google::Cloud::BareMetalSolution::V2::Network]
        #     Network.
        # @!attribute [rw] used_ips
        #   @return [::Array<::String>]
        #     All used IP addresses in this network.
        class NetworkUsage
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to get networks with IPs.
        # @!attribute [rw] location
        #   @return [::String]
        #     Required. Parent value (project and location).
        class ListNetworkUsageRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response with Networks with IPs
        # @!attribute [rw] networks
        #   @return [::Array<::Google::Cloud::BareMetalSolution::V2::NetworkUsage>]
        #     Networks with IPs.
        class ListNetworkUsageResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Mount point for a network.
        # @!attribute [rw] instance
        #   @return [::String]
        #     Instance to attach network to.
        # @!attribute [rw] logical_interface
        #   @return [::String]
        #     Logical interface to detach from.
        # @!attribute [rw] default_gateway
        #   @return [::Boolean]
        #     Network should be a default gateway.
        # @!attribute [rw] ip_address
        #   @return [::String]
        #     Ip address of the server.
        class NetworkMountPoint
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message requesting rename of a server.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The `name` field is used to identify the network.
        #     Format: projects/\\{project}/locations/\\{location}/networks/\\{network}
        # @!attribute [rw] new_network_id
        #   @return [::String]
        #     Required. The new `id` of the network.
        class RenameNetworkRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
