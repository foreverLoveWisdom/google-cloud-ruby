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

require "google/cloud/aiplatform/v1/genai_tuning_service_pb"
require "google/cloud/aiplatform/v1/genai_tuning_service_services_pb"
require "google/cloud/ai_platform/v1/gen_ai_tuning_service"

class ::Google::Cloud::AIPlatform::V1::GenAiTuningService::ClientTest < Minitest::Test
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

  def test_create_tuning_job
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::TuningJob.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    tuning_job = {}

    create_tuning_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_tuning_job, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CreateTuningJobRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::TuningJob), request["tuning_job"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_tuning_job_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::GenAiTuningService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_tuning_job({ parent: parent, tuning_job: tuning_job }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_tuning_job parent: parent, tuning_job: tuning_job do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_tuning_job ::Google::Cloud::AIPlatform::V1::CreateTuningJobRequest.new(parent: parent, tuning_job: tuning_job) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_tuning_job({ parent: parent, tuning_job: tuning_job }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_tuning_job(::Google::Cloud::AIPlatform::V1::CreateTuningJobRequest.new(parent: parent, tuning_job: tuning_job), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_tuning_job_client_stub.call_rpc_count
    end
  end

  def test_get_tuning_job
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::TuningJob.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_tuning_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_tuning_job, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::GetTuningJobRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_tuning_job_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::GenAiTuningService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_tuning_job({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_tuning_job name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_tuning_job ::Google::Cloud::AIPlatform::V1::GetTuningJobRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_tuning_job({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_tuning_job(::Google::Cloud::AIPlatform::V1::GetTuningJobRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_tuning_job_client_stub.call_rpc_count
    end
  end

  def test_list_tuning_jobs
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::ListTuningJobsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_tuning_jobs_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_tuning_jobs, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::ListTuningJobsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_tuning_jobs_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::GenAiTuningService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_tuning_jobs({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_tuning_jobs parent: parent, filter: filter, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_tuning_jobs ::Google::Cloud::AIPlatform::V1::ListTuningJobsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_tuning_jobs({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_tuning_jobs(::Google::Cloud::AIPlatform::V1::ListTuningJobsRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_tuning_jobs_client_stub.call_rpc_count
    end
  end

  def test_cancel_tuning_job
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    cancel_tuning_job_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :cancel_tuning_job, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CancelTuningJobRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, cancel_tuning_job_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::GenAiTuningService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.cancel_tuning_job({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.cancel_tuning_job name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.cancel_tuning_job ::Google::Cloud::AIPlatform::V1::CancelTuningJobRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.cancel_tuning_job({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.cancel_tuning_job(::Google::Cloud::AIPlatform::V1::CancelTuningJobRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, cancel_tuning_job_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AIPlatform::V1::GenAiTuningService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::AIPlatform::V1::GenAiTuningService::Client::Configuration, config
  end
end