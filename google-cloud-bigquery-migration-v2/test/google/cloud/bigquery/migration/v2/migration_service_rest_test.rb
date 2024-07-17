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
require "gapic/rest"
require "google/cloud/bigquery/migration/v2/migration_service_pb"
require "google/cloud/bigquery/migration/v2/migration_service/rest"


class ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
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
  end

  def test_create_migration_workflow
    # Create test objects.
    client_result = ::Google::Cloud::Bigquery::Migration::V2::MigrationWorkflow.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    migration_workflow = {}

    create_migration_workflow_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::ServiceStub.stub :transcode_create_migration_workflow_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_migration_workflow_client_stub do
        # Create client
        client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_migration_workflow({ parent: parent, migration_workflow: migration_workflow }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_migration_workflow parent: parent, migration_workflow: migration_workflow do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_migration_workflow ::Google::Cloud::Bigquery::Migration::V2::CreateMigrationWorkflowRequest.new(parent: parent, migration_workflow: migration_workflow) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_migration_workflow({ parent: parent, migration_workflow: migration_workflow }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_migration_workflow(::Google::Cloud::Bigquery::Migration::V2::CreateMigrationWorkflowRequest.new(parent: parent, migration_workflow: migration_workflow), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_migration_workflow_client_stub.call_count
      end
    end
  end

  def test_get_migration_workflow
    # Create test objects.
    client_result = ::Google::Cloud::Bigquery::Migration::V2::MigrationWorkflow.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    read_mask = {}

    get_migration_workflow_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::ServiceStub.stub :transcode_get_migration_workflow_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_migration_workflow_client_stub do
        # Create client
        client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_migration_workflow({ name: name, read_mask: read_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_migration_workflow name: name, read_mask: read_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_migration_workflow ::Google::Cloud::Bigquery::Migration::V2::GetMigrationWorkflowRequest.new(name: name, read_mask: read_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_migration_workflow({ name: name, read_mask: read_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_migration_workflow(::Google::Cloud::Bigquery::Migration::V2::GetMigrationWorkflowRequest.new(name: name, read_mask: read_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_migration_workflow_client_stub.call_count
      end
    end
  end

  def test_list_migration_workflows
    # Create test objects.
    client_result = ::Google::Cloud::Bigquery::Migration::V2::ListMigrationWorkflowsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    read_mask = {}
    page_size = 42
    page_token = "hello world"

    list_migration_workflows_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::ServiceStub.stub :transcode_list_migration_workflows_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_migration_workflows_client_stub do
        # Create client
        client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_migration_workflows({ parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_migration_workflows parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_migration_workflows ::Google::Cloud::Bigquery::Migration::V2::ListMigrationWorkflowsRequest.new(parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_migration_workflows({ parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_migration_workflows(::Google::Cloud::Bigquery::Migration::V2::ListMigrationWorkflowsRequest.new(parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_migration_workflows_client_stub.call_count
      end
    end
  end

  def test_delete_migration_workflow
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_migration_workflow_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::ServiceStub.stub :transcode_delete_migration_workflow_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_migration_workflow_client_stub do
        # Create client
        client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_migration_workflow({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_migration_workflow name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_migration_workflow ::Google::Cloud::Bigquery::Migration::V2::DeleteMigrationWorkflowRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_migration_workflow({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_migration_workflow(::Google::Cloud::Bigquery::Migration::V2::DeleteMigrationWorkflowRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_migration_workflow_client_stub.call_count
      end
    end
  end

  def test_start_migration_workflow
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    start_migration_workflow_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::ServiceStub.stub :transcode_start_migration_workflow_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, start_migration_workflow_client_stub do
        # Create client
        client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.start_migration_workflow({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.start_migration_workflow name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.start_migration_workflow ::Google::Cloud::Bigquery::Migration::V2::StartMigrationWorkflowRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.start_migration_workflow({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.start_migration_workflow(::Google::Cloud::Bigquery::Migration::V2::StartMigrationWorkflowRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, start_migration_workflow_client_stub.call_count
      end
    end
  end

  def test_get_migration_subtask
    # Create test objects.
    client_result = ::Google::Cloud::Bigquery::Migration::V2::MigrationSubtask.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    read_mask = {}

    get_migration_subtask_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::ServiceStub.stub :transcode_get_migration_subtask_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_migration_subtask_client_stub do
        # Create client
        client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_migration_subtask({ name: name, read_mask: read_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_migration_subtask name: name, read_mask: read_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_migration_subtask ::Google::Cloud::Bigquery::Migration::V2::GetMigrationSubtaskRequest.new(name: name, read_mask: read_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_migration_subtask({ name: name, read_mask: read_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_migration_subtask(::Google::Cloud::Bigquery::Migration::V2::GetMigrationSubtaskRequest.new(name: name, read_mask: read_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_migration_subtask_client_stub.call_count
      end
    end
  end

  def test_list_migration_subtasks
    # Create test objects.
    client_result = ::Google::Cloud::Bigquery::Migration::V2::ListMigrationSubtasksResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    read_mask = {}
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_migration_subtasks_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::ServiceStub.stub :transcode_list_migration_subtasks_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_migration_subtasks_client_stub do
        # Create client
        client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_migration_subtasks({ parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_migration_subtasks parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_migration_subtasks ::Google::Cloud::Bigquery::Migration::V2::ListMigrationSubtasksRequest.new(parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_migration_subtasks({ parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_migration_subtasks(::Google::Cloud::Bigquery::Migration::V2::ListMigrationSubtasksRequest.new(parent: parent, read_mask: read_mask, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_migration_subtasks_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Bigquery::Migration::V2::MigrationService::Rest::Client::Configuration, config
  end
end
