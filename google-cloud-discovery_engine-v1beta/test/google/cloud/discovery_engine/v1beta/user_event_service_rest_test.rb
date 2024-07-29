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
require "google/cloud/discoveryengine/v1beta/user_event_service_pb"
require "google/cloud/discovery_engine/v1beta/user_event_service/rest"


class ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::ClientTest < Minitest::Test
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

  def test_write_user_event
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::UserEvent.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    user_event = {}
    write_async = true

    write_user_event_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::ServiceStub.stub :transcode_write_user_event_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, write_user_event_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.write_user_event({ parent: parent, user_event: user_event, write_async: write_async }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.write_user_event parent: parent, user_event: user_event, write_async: write_async do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.write_user_event ::Google::Cloud::DiscoveryEngine::V1beta::WriteUserEventRequest.new(parent: parent, user_event: user_event, write_async: write_async) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.write_user_event({ parent: parent, user_event: user_event, write_async: write_async }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.write_user_event(::Google::Cloud::DiscoveryEngine::V1beta::WriteUserEventRequest.new(parent: parent, user_event: user_event, write_async: write_async), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, write_user_event_client_stub.call_count
      end
    end
  end

  def test_collect_user_event
    # Create test objects.
    client_result = ::Google::Api::HttpBody.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    user_event = "hello world"
    uri = "hello world"
    ets = 42

    collect_user_event_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::ServiceStub.stub :transcode_collect_user_event_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, collect_user_event_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.collect_user_event({ parent: parent, user_event: user_event, uri: uri, ets: ets }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.collect_user_event parent: parent, user_event: user_event, uri: uri, ets: ets do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.collect_user_event ::Google::Cloud::DiscoveryEngine::V1beta::CollectUserEventRequest.new(parent: parent, user_event: user_event, uri: uri, ets: ets) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.collect_user_event({ parent: parent, user_event: user_event, uri: uri, ets: ets }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.collect_user_event(::Google::Cloud::DiscoveryEngine::V1beta::CollectUserEventRequest.new(parent: parent, user_event: user_event, uri: uri, ets: ets), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, collect_user_event_client_stub.call_count
      end
    end
  end

  def test_purge_user_events
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    force = true

    purge_user_events_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::ServiceStub.stub :transcode_purge_user_events_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, purge_user_events_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.purge_user_events({ parent: parent, filter: filter, force: force }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.purge_user_events parent: parent, filter: filter, force: force do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.purge_user_events ::Google::Cloud::DiscoveryEngine::V1beta::PurgeUserEventsRequest.new(parent: parent, filter: filter, force: force) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.purge_user_events({ parent: parent, filter: filter, force: force }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.purge_user_events(::Google::Cloud::DiscoveryEngine::V1beta::PurgeUserEventsRequest.new(parent: parent, filter: filter, force: force), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, purge_user_events_client_stub.call_count
      end
    end
  end

  def test_import_user_events
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    inline_source = {}
    parent = "hello world"
    error_config = {}

    import_user_events_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::ServiceStub.stub :transcode_import_user_events_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, import_user_events_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.import_user_events({ inline_source: inline_source, parent: parent, error_config: error_config }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.import_user_events inline_source: inline_source, parent: parent, error_config: error_config do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.import_user_events ::Google::Cloud::DiscoveryEngine::V1beta::ImportUserEventsRequest.new(inline_source: inline_source, parent: parent, error_config: error_config) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.import_user_events({ inline_source: inline_source, parent: parent, error_config: error_config }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.import_user_events(::Google::Cloud::DiscoveryEngine::V1beta::ImportUserEventsRequest.new(inline_source: inline_source, parent: parent, error_config: error_config), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, import_user_events_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::UserEventService::Rest::Client::Configuration, config
  end
end
