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

require "gapic/grpc/service_stub"

require "google/cloud/telco_automation/v1/telco_automation"

class ::Google::Cloud::TelcoAutomation::V1::TelcoAutomation::ClientPathsTest < Minitest::Test
  class DummyStub
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

  def test_blueprint_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::TelcoAutomation::V1::TelcoAutomation::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.blueprint_path project: "value0", location: "value1", orchestration_cluster: "value2", blueprint: "value3"
      assert_equal "projects/value0/locations/value1/orchestrationClusters/value2/blueprints/value3", path
    end
  end

  def test_deployment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::TelcoAutomation::V1::TelcoAutomation::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.deployment_path project: "value0", location: "value1", orchestration_cluster: "value2", deployment: "value3"
      assert_equal "projects/value0/locations/value1/orchestrationClusters/value2/deployments/value3", path
    end
  end

  def test_edge_slm_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::TelcoAutomation::V1::TelcoAutomation::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.edge_slm_path project: "value0", location: "value1", edge_slm: "value2"
      assert_equal "projects/value0/locations/value1/edgeSlms/value2", path
    end
  end

  def test_hydrated_deployment_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::TelcoAutomation::V1::TelcoAutomation::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.hydrated_deployment_path project: "value0", location: "value1", orchestration_cluster: "value2", deployment: "value3", hydrated_deployment: "value4"
      assert_equal "projects/value0/locations/value1/orchestrationClusters/value2/deployments/value3/hydratedDeployments/value4", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::TelcoAutomation::V1::TelcoAutomation::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_orchestration_cluster_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::TelcoAutomation::V1::TelcoAutomation::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.orchestration_cluster_path project: "value0", location: "value1", orchestration_cluster: "value2"
      assert_equal "projects/value0/locations/value1/orchestrationClusters/value2", path
    end
  end

  def test_public_blueprint_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::TelcoAutomation::V1::TelcoAutomation::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.public_blueprint_path project: "value0", location: "value1", public_lueprint: "value2"
      assert_equal "projects/value0/locations/value1/publicBlueprints/value2", path
    end
  end
end
