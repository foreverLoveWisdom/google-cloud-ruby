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

require "helper"
require "google/cloud/run"
require "gapic/common"
require "gapic/grpc"
require "gapic/rest"

class Google::Cloud::Run::ClientConstructionMinitest < Minitest::Test
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

    def logger
      nil
    end
  end

  def test_builds_grpc
    skip unless Google::Cloud::Run.builds_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Run.builds transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Run::V2::Builds::Client, client
    end
  end

  def test_builds_rest
    skip unless Google::Cloud::Run.builds_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::Run.builds transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Run::V2::Builds::Rest::Client, client
    end
  end

  def test_executions_grpc
    skip unless Google::Cloud::Run.executions_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Run.executions transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Run::V2::Executions::Client, client
    end
  end

  def test_executions_rest
    skip unless Google::Cloud::Run.executions_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::Run.executions transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Run::V2::Executions::Rest::Client, client
    end
  end

  def test_jobs_grpc
    skip unless Google::Cloud::Run.jobs_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Run.jobs transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Run::V2::Jobs::Client, client
    end
  end

  def test_jobs_rest
    skip unless Google::Cloud::Run.jobs_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::Run.jobs transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Run::V2::Jobs::Rest::Client, client
    end
  end

  def test_revisions_grpc
    skip unless Google::Cloud::Run.revisions_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Run.revisions transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Run::V2::Revisions::Client, client
    end
  end

  def test_revisions_rest
    skip unless Google::Cloud::Run.revisions_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::Run.revisions transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Run::V2::Revisions::Rest::Client, client
    end
  end

  def test_services_grpc
    skip unless Google::Cloud::Run.services_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Run.services transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Run::V2::Services::Client, client
    end
  end

  def test_services_rest
    skip unless Google::Cloud::Run.services_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::Run.services transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Run::V2::Services::Rest::Client, client
    end
  end

  def test_tasks_grpc
    skip unless Google::Cloud::Run.tasks_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Run.tasks transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Run::V2::Tasks::Client, client
    end
  end

  def test_tasks_rest
    skip unless Google::Cloud::Run.tasks_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Cloud::Run.tasks transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Cloud::Run::V2::Tasks::Rest::Client, client
    end
  end
end
