# frozen_string_literal: true

# Copyright 2024 Google LLC
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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/cloudcontrolspartner/v1/core_pb"
require "google/cloud/cloudcontrolspartner/v1/core_services_pb"
require "google/cloud/cloud_controls_partner/v1/cloud_controls_partner_core"

class ::Google::Cloud::CloudControlsPartner::V1::CloudControlsPartnerCore::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_get_workload
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::CloudControlsPartner::V1::Workload.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_workload_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_workload, name
      assert_kind_of ::Google::Cloud::CloudControlsPartner::V1::GetWorkloadRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_workload_client_stub do
      # Create client
      client = ::Google::Cloud::CloudControlsPartner::V1::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_workload({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_workload name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_workload ::Google::Cloud::CloudControlsPartner::V1::GetWorkloadRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_workload({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_workload(::Google::Cloud::CloudControlsPartner::V1::GetWorkloadRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_workload_client_stub.call_rpc_count
    end
  end

  def test_list_workloads
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::CloudControlsPartner::V1::ListWorkloadsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_workloads_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_workloads, name
      assert_kind_of ::Google::Cloud::CloudControlsPartner::V1::ListWorkloadsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_workloads_client_stub do
      # Create client
      client = ::Google::Cloud::CloudControlsPartner::V1::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_workloads({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_workloads parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_workloads ::Google::Cloud::CloudControlsPartner::V1::ListWorkloadsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_workloads({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_workloads(::Google::Cloud::CloudControlsPartner::V1::ListWorkloadsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_workloads_client_stub.call_rpc_count
    end
  end

  def test_get_customer
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::CloudControlsPartner::V1::Customer.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_customer_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_customer, name
      assert_kind_of ::Google::Cloud::CloudControlsPartner::V1::GetCustomerRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_customer_client_stub do
      # Create client
      client = ::Google::Cloud::CloudControlsPartner::V1::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_customer({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_customer name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_customer ::Google::Cloud::CloudControlsPartner::V1::GetCustomerRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_customer({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_customer(::Google::Cloud::CloudControlsPartner::V1::GetCustomerRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_customer_client_stub.call_rpc_count
    end
  end

  def test_list_customers
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::CloudControlsPartner::V1::ListCustomersResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_customers_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_customers, name
      assert_kind_of ::Google::Cloud::CloudControlsPartner::V1::ListCustomersRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_customers_client_stub do
      # Create client
      client = ::Google::Cloud::CloudControlsPartner::V1::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_customers({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_customers parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_customers ::Google::Cloud::CloudControlsPartner::V1::ListCustomersRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_customers({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_customers(::Google::Cloud::CloudControlsPartner::V1::ListCustomersRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_customers_client_stub.call_rpc_count
    end
  end

  def test_get_ekm_connections
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::CloudControlsPartner::V1::EkmConnections.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_ekm_connections_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_ekm_connections, name
      assert_kind_of ::Google::Cloud::CloudControlsPartner::V1::GetEkmConnectionsRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_ekm_connections_client_stub do
      # Create client
      client = ::Google::Cloud::CloudControlsPartner::V1::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_ekm_connections({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_ekm_connections name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_ekm_connections ::Google::Cloud::CloudControlsPartner::V1::GetEkmConnectionsRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_ekm_connections({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_ekm_connections(::Google::Cloud::CloudControlsPartner::V1::GetEkmConnectionsRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_ekm_connections_client_stub.call_rpc_count
    end
  end

  def test_get_partner_permissions
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::CloudControlsPartner::V1::PartnerPermissions.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_partner_permissions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_partner_permissions, name
      assert_kind_of ::Google::Cloud::CloudControlsPartner::V1::GetPartnerPermissionsRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_partner_permissions_client_stub do
      # Create client
      client = ::Google::Cloud::CloudControlsPartner::V1::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_partner_permissions({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_partner_permissions name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_partner_permissions ::Google::Cloud::CloudControlsPartner::V1::GetPartnerPermissionsRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_partner_permissions({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_partner_permissions(::Google::Cloud::CloudControlsPartner::V1::GetPartnerPermissionsRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_partner_permissions_client_stub.call_rpc_count
    end
  end

  def test_list_access_approval_requests
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::CloudControlsPartner::V1::ListAccessApprovalRequestsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_access_approval_requests_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_access_approval_requests, name
      assert_kind_of ::Google::Cloud::CloudControlsPartner::V1::ListAccessApprovalRequestsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_access_approval_requests_client_stub do
      # Create client
      client = ::Google::Cloud::CloudControlsPartner::V1::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_access_approval_requests({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_access_approval_requests parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_access_approval_requests ::Google::Cloud::CloudControlsPartner::V1::ListAccessApprovalRequestsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_access_approval_requests({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_access_approval_requests(::Google::Cloud::CloudControlsPartner::V1::ListAccessApprovalRequestsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_access_approval_requests_client_stub.call_rpc_count
    end
  end

  def test_get_partner
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::CloudControlsPartner::V1::Partner.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_partner_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_partner, name
      assert_kind_of ::Google::Cloud::CloudControlsPartner::V1::GetPartnerRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_partner_client_stub do
      # Create client
      client = ::Google::Cloud::CloudControlsPartner::V1::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_partner({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_partner name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_partner ::Google::Cloud::CloudControlsPartner::V1::GetPartnerRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_partner({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_partner(::Google::Cloud::CloudControlsPartner::V1::GetPartnerRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_partner_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::CloudControlsPartner::V1::CloudControlsPartnerCore::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::CloudControlsPartner::V1::CloudControlsPartnerCore::Client::Configuration, config
  end
end