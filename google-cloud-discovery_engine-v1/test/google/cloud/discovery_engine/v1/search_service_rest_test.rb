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
require "google/cloud/discoveryengine/v1/search_service_pb"
require "google/cloud/discovery_engine/v1/search_service/rest"


class ::Google::Cloud::DiscoveryEngine::V1::SearchService::Rest::ClientTest < Minitest::Test
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

    def logger
      nil
    end
  end

  def test_search
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1::SearchResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    serving_config = "hello world"
    branch = "hello world"
    query = "hello world"
    image_query = {}
    page_size = 42
    page_token = "hello world"
    offset = 42
    one_box_page_size = 42
    data_store_specs = [{}]
    filter = "hello world"
    canonical_filter = "hello world"
    order_by = "hello world"
    user_info = {}
    language_code = "hello world"
    facet_specs = [{}]
    boost_spec = {}
    params = {}
    query_expansion_spec = {}
    spell_correction_spec = {}
    user_pseudo_id = "hello world"
    content_search_spec = {}
    safe_search = true
    user_labels = {}
    search_as_you_type_spec = {}
    display_spec = {}
    session = "hello world"
    session_spec = {}
    relevance_threshold = :RELEVANCE_THRESHOLD_UNSPECIFIED
    relevance_score_spec = {}

    search_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1::SearchService::Rest::ServiceStub.stub :transcode_search_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, search_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1::SearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.search({ serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_labels: user_labels, search_as_you_type_spec: search_as_you_type_spec, display_spec: display_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, relevance_score_spec: relevance_score_spec }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.search serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_labels: user_labels, search_as_you_type_spec: search_as_you_type_spec, display_spec: display_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, relevance_score_spec: relevance_score_spec do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.search ::Google::Cloud::DiscoveryEngine::V1::SearchRequest.new(serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_labels: user_labels, search_as_you_type_spec: search_as_you_type_spec, display_spec: display_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, relevance_score_spec: relevance_score_spec) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.search({ serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_labels: user_labels, search_as_you_type_spec: search_as_you_type_spec, display_spec: display_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, relevance_score_spec: relevance_score_spec }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.search(::Google::Cloud::DiscoveryEngine::V1::SearchRequest.new(serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_labels: user_labels, search_as_you_type_spec: search_as_you_type_spec, display_spec: display_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, relevance_score_spec: relevance_score_spec), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, search_client_stub.call_count
      end
    end
  end

  def test_search_lite
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1::SearchResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    serving_config = "hello world"
    branch = "hello world"
    query = "hello world"
    image_query = {}
    page_size = 42
    page_token = "hello world"
    offset = 42
    one_box_page_size = 42
    data_store_specs = [{}]
    filter = "hello world"
    canonical_filter = "hello world"
    order_by = "hello world"
    user_info = {}
    language_code = "hello world"
    facet_specs = [{}]
    boost_spec = {}
    params = {}
    query_expansion_spec = {}
    spell_correction_spec = {}
    user_pseudo_id = "hello world"
    content_search_spec = {}
    safe_search = true
    user_labels = {}
    search_as_you_type_spec = {}
    display_spec = {}
    session = "hello world"
    session_spec = {}
    relevance_threshold = :RELEVANCE_THRESHOLD_UNSPECIFIED
    relevance_score_spec = {}

    search_lite_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1::SearchService::Rest::ServiceStub.stub :transcode_search_lite_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, search_lite_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1::SearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.search_lite({ serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_labels: user_labels, search_as_you_type_spec: search_as_you_type_spec, display_spec: display_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, relevance_score_spec: relevance_score_spec }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.search_lite serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_labels: user_labels, search_as_you_type_spec: search_as_you_type_spec, display_spec: display_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, relevance_score_spec: relevance_score_spec do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.search_lite ::Google::Cloud::DiscoveryEngine::V1::SearchRequest.new(serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_labels: user_labels, search_as_you_type_spec: search_as_you_type_spec, display_spec: display_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, relevance_score_spec: relevance_score_spec) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.search_lite({ serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_labels: user_labels, search_as_you_type_spec: search_as_you_type_spec, display_spec: display_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, relevance_score_spec: relevance_score_spec }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.search_lite(::Google::Cloud::DiscoveryEngine::V1::SearchRequest.new(serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, safe_search: safe_search, user_labels: user_labels, search_as_you_type_spec: search_as_you_type_spec, display_spec: display_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, relevance_score_spec: relevance_score_spec), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, search_lite_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1::SearchService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::SearchService::Rest::Client::Configuration, config
  end
end
