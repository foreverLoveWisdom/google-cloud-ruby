# frozen_string_literal: true

# Copyright 2023 Google LLC
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
require "gapic/rest"
require "google/cloud/tasks/v2/cloudtasks_pb"
require "google/cloud/tasks/v2/cloud_tasks/rest"


class ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end
  end

  def test_list_queues
    # Create test objects.
    client_result = ::Google::Cloud::Tasks::V2::ListQueuesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_queues_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_list_queues_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_queues_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_queues({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_queues parent: parent, filter: filter, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_queues ::Google::Cloud::Tasks::V2::ListQueuesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_queues({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_queues(::Google::Cloud::Tasks::V2::ListQueuesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_queues_client_stub.call_count
      end
    end
  end

  def test_get_queue
    # Create test objects.
    client_result = ::Google::Cloud::Tasks::V2::Queue.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_queue_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_get_queue_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_queue_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_queue({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_queue name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_queue ::Google::Cloud::Tasks::V2::GetQueueRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_queue({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_queue(::Google::Cloud::Tasks::V2::GetQueueRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_queue_client_stub.call_count
      end
    end
  end

  def test_create_queue
    # Create test objects.
    client_result = ::Google::Cloud::Tasks::V2::Queue.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    queue = {}

    create_queue_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_create_queue_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_queue_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_queue({ parent: parent, queue: queue }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_queue parent: parent, queue: queue do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_queue ::Google::Cloud::Tasks::V2::CreateQueueRequest.new(parent: parent, queue: queue) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_queue({ parent: parent, queue: queue }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_queue(::Google::Cloud::Tasks::V2::CreateQueueRequest.new(parent: parent, queue: queue), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_queue_client_stub.call_count
      end
    end
  end

  def test_update_queue
    # Create test objects.
    client_result = ::Google::Cloud::Tasks::V2::Queue.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    queue = {}
    update_mask = {}

    update_queue_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_update_queue_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_queue_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_queue({ queue: queue, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_queue queue: queue, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_queue ::Google::Cloud::Tasks::V2::UpdateQueueRequest.new(queue: queue, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_queue({ queue: queue, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_queue(::Google::Cloud::Tasks::V2::UpdateQueueRequest.new(queue: queue, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_queue_client_stub.call_count
      end
    end
  end

  def test_delete_queue
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_queue_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_delete_queue_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_queue_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_queue({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_queue name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_queue ::Google::Cloud::Tasks::V2::DeleteQueueRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_queue({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_queue(::Google::Cloud::Tasks::V2::DeleteQueueRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_queue_client_stub.call_count
      end
    end
  end

  def test_purge_queue
    # Create test objects.
    client_result = ::Google::Cloud::Tasks::V2::Queue.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    purge_queue_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_purge_queue_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, purge_queue_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.purge_queue({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.purge_queue name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.purge_queue ::Google::Cloud::Tasks::V2::PurgeQueueRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.purge_queue({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.purge_queue(::Google::Cloud::Tasks::V2::PurgeQueueRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, purge_queue_client_stub.call_count
      end
    end
  end

  def test_pause_queue
    # Create test objects.
    client_result = ::Google::Cloud::Tasks::V2::Queue.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    pause_queue_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_pause_queue_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, pause_queue_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.pause_queue({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.pause_queue name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.pause_queue ::Google::Cloud::Tasks::V2::PauseQueueRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.pause_queue({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.pause_queue(::Google::Cloud::Tasks::V2::PauseQueueRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, pause_queue_client_stub.call_count
      end
    end
  end

  def test_resume_queue
    # Create test objects.
    client_result = ::Google::Cloud::Tasks::V2::Queue.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    resume_queue_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_resume_queue_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, resume_queue_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.resume_queue({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.resume_queue name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.resume_queue ::Google::Cloud::Tasks::V2::ResumeQueueRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.resume_queue({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.resume_queue(::Google::Cloud::Tasks::V2::ResumeQueueRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, resume_queue_client_stub.call_count
      end
    end
  end

  def test_get_iam_policy
    # Create test objects.
    client_result = ::Google::Iam::V1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    options = {}

    get_iam_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_get_iam_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_iam_policy_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_iam_policy({ resource: resource, options: options }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_iam_policy resource: resource, options: options do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_iam_policy ::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_iam_policy({ resource: resource, options: options }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_iam_policy(::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_iam_policy_client_stub.call_count
      end
    end
  end

  def test_set_iam_policy
    # Create test objects.
    client_result = ::Google::Iam::V1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    policy = {}
    update_mask = {}

    set_iam_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_set_iam_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, set_iam_policy_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.set_iam_policy resource: resource, policy: policy, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.set_iam_policy ::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.set_iam_policy(::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, set_iam_policy_client_stub.call_count
      end
    end
  end

  def test_test_iam_permissions
    # Create test objects.
    client_result = ::Google::Iam::V1::TestIamPermissionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    permissions = ["hello world"]

    test_iam_permissions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_test_iam_permissions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, test_iam_permissions_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.test_iam_permissions({ resource: resource, permissions: permissions }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.test_iam_permissions resource: resource, permissions: permissions do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.test_iam_permissions ::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.test_iam_permissions({ resource: resource, permissions: permissions }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.test_iam_permissions(::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, test_iam_permissions_client_stub.call_count
      end
    end
  end

  def test_list_tasks
    # Create test objects.
    client_result = ::Google::Cloud::Tasks::V2::ListTasksResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    response_view = :VIEW_UNSPECIFIED
    page_size = 42
    page_token = "hello world"

    list_tasks_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_list_tasks_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_tasks_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_tasks({ parent: parent, response_view: response_view, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_tasks parent: parent, response_view: response_view, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_tasks ::Google::Cloud::Tasks::V2::ListTasksRequest.new(parent: parent, response_view: response_view, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_tasks({ parent: parent, response_view: response_view, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_tasks(::Google::Cloud::Tasks::V2::ListTasksRequest.new(parent: parent, response_view: response_view, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_tasks_client_stub.call_count
      end
    end
  end

  def test_get_task
    # Create test objects.
    client_result = ::Google::Cloud::Tasks::V2::Task.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    response_view = :VIEW_UNSPECIFIED

    get_task_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_get_task_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_task_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_task({ name: name, response_view: response_view }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_task name: name, response_view: response_view do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_task ::Google::Cloud::Tasks::V2::GetTaskRequest.new(name: name, response_view: response_view) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_task({ name: name, response_view: response_view }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_task(::Google::Cloud::Tasks::V2::GetTaskRequest.new(name: name, response_view: response_view), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_task_client_stub.call_count
      end
    end
  end

  def test_create_task
    # Create test objects.
    client_result = ::Google::Cloud::Tasks::V2::Task.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    task = {}
    response_view = :VIEW_UNSPECIFIED

    create_task_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_create_task_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_task_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_task({ parent: parent, task: task, response_view: response_view }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_task parent: parent, task: task, response_view: response_view do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_task ::Google::Cloud::Tasks::V2::CreateTaskRequest.new(parent: parent, task: task, response_view: response_view) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_task({ parent: parent, task: task, response_view: response_view }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_task(::Google::Cloud::Tasks::V2::CreateTaskRequest.new(parent: parent, task: task, response_view: response_view), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_task_client_stub.call_count
      end
    end
  end

  def test_delete_task
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_task_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_delete_task_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_task_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_task({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_task name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_task ::Google::Cloud::Tasks::V2::DeleteTaskRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_task({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_task(::Google::Cloud::Tasks::V2::DeleteTaskRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_task_client_stub.call_count
      end
    end
  end

  def test_run_task
    # Create test objects.
    client_result = ::Google::Cloud::Tasks::V2::Task.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    response_view = :VIEW_UNSPECIFIED

    run_task_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Tasks::V2::CloudTasks::Rest::ServiceStub.stub :transcode_run_task_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, run_task_client_stub do
        # Create client
        client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.run_task({ name: name, response_view: response_view }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.run_task name: name, response_view: response_view do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.run_task ::Google::Cloud::Tasks::V2::RunTaskRequest.new(name: name, response_view: response_view) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.run_task({ name: name, response_view: response_view }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.run_task(::Google::Cloud::Tasks::V2::RunTaskRequest.new(name: name, response_view: response_view), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, run_task_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Tasks::V2::CloudTasks::Rest::Client::Configuration, config
  end
end
