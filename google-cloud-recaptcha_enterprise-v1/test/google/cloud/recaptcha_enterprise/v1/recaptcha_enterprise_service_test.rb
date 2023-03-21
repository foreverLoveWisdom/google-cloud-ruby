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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/recaptchaenterprise/v1/recaptchaenterprise_pb"
require "google/cloud/recaptchaenterprise/v1/recaptchaenterprise_services_pb"
require "google/cloud/recaptcha_enterprise/v1/recaptcha_enterprise_service"

class ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::ClientTest < Minitest::Test
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
  end

  def test_create_assessment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecaptchaEnterprise::V1::Assessment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    assessment = {}

    create_assessment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_assessment, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1::CreateAssessmentRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::RecaptchaEnterprise::V1::Assessment), request["assessment"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_assessment_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_assessment({ parent: parent, assessment: assessment }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_assessment parent: parent, assessment: assessment do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_assessment ::Google::Cloud::RecaptchaEnterprise::V1::CreateAssessmentRequest.new(parent: parent, assessment: assessment) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_assessment({ parent: parent, assessment: assessment }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_assessment(::Google::Cloud::RecaptchaEnterprise::V1::CreateAssessmentRequest.new(parent: parent, assessment: assessment), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_assessment_client_stub.call_rpc_count
    end
  end

  def test_annotate_assessment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecaptchaEnterprise::V1::AnnotateAssessmentResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    annotation = :ANNOTATION_UNSPECIFIED
    reasons = [:REASON_UNSPECIFIED]
    hashed_account_id = "hello world"
    transaction_event = {}

    annotate_assessment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :annotate_assessment, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1::AnnotateAssessmentRequest, request
      assert_equal "hello world", request["name"]
      assert_equal :ANNOTATION_UNSPECIFIED, request["annotation"]
      assert_equal [:REASON_UNSPECIFIED], request["reasons"]
      assert_equal "hello world", request["hashed_account_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::RecaptchaEnterprise::V1::TransactionEvent), request["transaction_event"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, annotate_assessment_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.annotate_assessment({ name: name, annotation: annotation, reasons: reasons, hashed_account_id: hashed_account_id, transaction_event: transaction_event }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.annotate_assessment name: name, annotation: annotation, reasons: reasons, hashed_account_id: hashed_account_id, transaction_event: transaction_event do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.annotate_assessment ::Google::Cloud::RecaptchaEnterprise::V1::AnnotateAssessmentRequest.new(name: name, annotation: annotation, reasons: reasons, hashed_account_id: hashed_account_id, transaction_event: transaction_event) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.annotate_assessment({ name: name, annotation: annotation, reasons: reasons, hashed_account_id: hashed_account_id, transaction_event: transaction_event }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.annotate_assessment(::Google::Cloud::RecaptchaEnterprise::V1::AnnotateAssessmentRequest.new(name: name, annotation: annotation, reasons: reasons, hashed_account_id: hashed_account_id, transaction_event: transaction_event), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, annotate_assessment_client_stub.call_rpc_count
    end
  end

  def test_create_key
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecaptchaEnterprise::V1::Key.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    key = {}

    create_key_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_key, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1::CreateKeyRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::RecaptchaEnterprise::V1::Key), request["key"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_key_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_key({ parent: parent, key: key }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_key parent: parent, key: key do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_key ::Google::Cloud::RecaptchaEnterprise::V1::CreateKeyRequest.new(parent: parent, key: key) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_key({ parent: parent, key: key }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_key(::Google::Cloud::RecaptchaEnterprise::V1::CreateKeyRequest.new(parent: parent, key: key), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_key_client_stub.call_rpc_count
    end
  end

  def test_list_keys
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecaptchaEnterprise::V1::ListKeysResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_keys_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_keys, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1::ListKeysRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_keys_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_keys({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_keys parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_keys ::Google::Cloud::RecaptchaEnterprise::V1::ListKeysRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_keys({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_keys(::Google::Cloud::RecaptchaEnterprise::V1::ListKeysRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_keys_client_stub.call_rpc_count
    end
  end

  def test_retrieve_legacy_secret_key
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecaptchaEnterprise::V1::RetrieveLegacySecretKeyResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    key = "hello world"

    retrieve_legacy_secret_key_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :retrieve_legacy_secret_key, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1::RetrieveLegacySecretKeyRequest, request
      assert_equal "hello world", request["key"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, retrieve_legacy_secret_key_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.retrieve_legacy_secret_key({ key: key }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.retrieve_legacy_secret_key key: key do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.retrieve_legacy_secret_key ::Google::Cloud::RecaptchaEnterprise::V1::RetrieveLegacySecretKeyRequest.new(key: key) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.retrieve_legacy_secret_key({ key: key }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.retrieve_legacy_secret_key(::Google::Cloud::RecaptchaEnterprise::V1::RetrieveLegacySecretKeyRequest.new(key: key), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, retrieve_legacy_secret_key_client_stub.call_rpc_count
    end
  end

  def test_get_key
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecaptchaEnterprise::V1::Key.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_key_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_key, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1::GetKeyRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_key_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_key({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_key name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_key ::Google::Cloud::RecaptchaEnterprise::V1::GetKeyRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_key({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_key(::Google::Cloud::RecaptchaEnterprise::V1::GetKeyRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_key_client_stub.call_rpc_count
    end
  end

  def test_update_key
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecaptchaEnterprise::V1::Key.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    key = {}
    update_mask = {}

    update_key_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_key, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1::UpdateKeyRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::RecaptchaEnterprise::V1::Key), request["key"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_key_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_key({ key: key, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_key key: key, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_key ::Google::Cloud::RecaptchaEnterprise::V1::UpdateKeyRequest.new(key: key, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_key({ key: key, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_key(::Google::Cloud::RecaptchaEnterprise::V1::UpdateKeyRequest.new(key: key, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_key_client_stub.call_rpc_count
    end
  end

  def test_delete_key
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_key_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_key, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1::DeleteKeyRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_key_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_key({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_key name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_key ::Google::Cloud::RecaptchaEnterprise::V1::DeleteKeyRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_key({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_key(::Google::Cloud::RecaptchaEnterprise::V1::DeleteKeyRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_key_client_stub.call_rpc_count
    end
  end

  def test_migrate_key
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecaptchaEnterprise::V1::Key.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    skip_billing_check = true

    migrate_key_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :migrate_key, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1::MigrateKeyRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["skip_billing_check"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, migrate_key_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.migrate_key({ name: name, skip_billing_check: skip_billing_check }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.migrate_key name: name, skip_billing_check: skip_billing_check do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.migrate_key ::Google::Cloud::RecaptchaEnterprise::V1::MigrateKeyRequest.new(name: name, skip_billing_check: skip_billing_check) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.migrate_key({ name: name, skip_billing_check: skip_billing_check }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.migrate_key(::Google::Cloud::RecaptchaEnterprise::V1::MigrateKeyRequest.new(name: name, skip_billing_check: skip_billing_check), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, migrate_key_client_stub.call_rpc_count
    end
  end

  def test_get_metrics
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecaptchaEnterprise::V1::Metrics.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_metrics_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_metrics, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1::GetMetricsRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_metrics_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_metrics({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_metrics name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_metrics ::Google::Cloud::RecaptchaEnterprise::V1::GetMetricsRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_metrics({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_metrics(::Google::Cloud::RecaptchaEnterprise::V1::GetMetricsRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_metrics_client_stub.call_rpc_count
    end
  end

  def test_list_related_account_groups
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecaptchaEnterprise::V1::ListRelatedAccountGroupsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_related_account_groups_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_related_account_groups, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1::ListRelatedAccountGroupsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_related_account_groups_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_related_account_groups({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_related_account_groups parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_related_account_groups ::Google::Cloud::RecaptchaEnterprise::V1::ListRelatedAccountGroupsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_related_account_groups({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_related_account_groups(::Google::Cloud::RecaptchaEnterprise::V1::ListRelatedAccountGroupsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_related_account_groups_client_stub.call_rpc_count
    end
  end

  def test_list_related_account_group_memberships
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecaptchaEnterprise::V1::ListRelatedAccountGroupMembershipsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_related_account_group_memberships_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_related_account_group_memberships, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1::ListRelatedAccountGroupMembershipsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_related_account_group_memberships_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_related_account_group_memberships({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_related_account_group_memberships parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_related_account_group_memberships ::Google::Cloud::RecaptchaEnterprise::V1::ListRelatedAccountGroupMembershipsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_related_account_group_memberships({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_related_account_group_memberships(::Google::Cloud::RecaptchaEnterprise::V1::ListRelatedAccountGroupMembershipsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_related_account_group_memberships_client_stub.call_rpc_count
    end
  end

  def test_search_related_account_group_memberships
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecaptchaEnterprise::V1::SearchRelatedAccountGroupMembershipsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    hashed_account_id = "hello world"
    page_size = 42
    page_token = "hello world"

    search_related_account_group_memberships_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :search_related_account_group_memberships, name
      assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1::SearchRelatedAccountGroupMembershipsRequest, request
      assert_equal "hello world", request["project"]
      assert_equal "hello world", request["hashed_account_id"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, search_related_account_group_memberships_client_stub do
      # Create client
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.search_related_account_group_memberships({ project: project, hashed_account_id: hashed_account_id, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.search_related_account_group_memberships project: project, hashed_account_id: hashed_account_id, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.search_related_account_group_memberships ::Google::Cloud::RecaptchaEnterprise::V1::SearchRelatedAccountGroupMembershipsRequest.new(project: project, hashed_account_id: hashed_account_id, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.search_related_account_group_memberships({ project: project, hashed_account_id: hashed_account_id, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.search_related_account_group_memberships(::Google::Cloud::RecaptchaEnterprise::V1::SearchRelatedAccountGroupMembershipsRequest.new(project: project, hashed_account_id: hashed_account_id, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, search_related_account_group_memberships_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::RecaptchaEnterprise::V1::RecaptchaEnterpriseService::Client::Configuration, config
  end
end
