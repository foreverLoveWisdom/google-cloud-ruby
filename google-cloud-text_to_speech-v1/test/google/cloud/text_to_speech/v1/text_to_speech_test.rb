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

require "google/cloud/texttospeech/v1/cloud_tts_pb"
require "google/cloud/texttospeech/v1/cloud_tts_services_pb"
require "google/cloud/text_to_speech/v1/text_to_speech"

class ::Google::Cloud::TextToSpeech::V1::TextToSpeech::ClientTest < Minitest::Test
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

  def test_list_voices
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::TextToSpeech::V1::ListVoicesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    language_code = "hello world"

    list_voices_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_voices, name
      assert_kind_of ::Google::Cloud::TextToSpeech::V1::ListVoicesRequest, request
      assert_equal "hello world", request["language_code"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_voices_client_stub do
      # Create client
      client = ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_voices({ language_code: language_code }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_voices language_code: language_code do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_voices ::Google::Cloud::TextToSpeech::V1::ListVoicesRequest.new(language_code: language_code) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_voices({ language_code: language_code }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_voices(::Google::Cloud::TextToSpeech::V1::ListVoicesRequest.new(language_code: language_code), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_voices_client_stub.call_rpc_count
    end
  end

  def test_synthesize_speech
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::TextToSpeech::V1::SynthesizeSpeechResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    input = {}
    voice = {}
    audio_config = {}
    advanced_voice_options = {}

    synthesize_speech_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :synthesize_speech, name
      assert_kind_of ::Google::Cloud::TextToSpeech::V1::SynthesizeSpeechRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::TextToSpeech::V1::SynthesisInput), request["input"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::TextToSpeech::V1::VoiceSelectionParams), request["voice"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::TextToSpeech::V1::AudioConfig), request["audio_config"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::TextToSpeech::V1::AdvancedVoiceOptions), request["advanced_voice_options"]
      assert request.has_advanced_voice_options?
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, synthesize_speech_client_stub do
      # Create client
      client = ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.synthesize_speech({ input: input, voice: voice, audio_config: audio_config, advanced_voice_options: advanced_voice_options }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.synthesize_speech input: input, voice: voice, audio_config: audio_config, advanced_voice_options: advanced_voice_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.synthesize_speech ::Google::Cloud::TextToSpeech::V1::SynthesizeSpeechRequest.new(input: input, voice: voice, audio_config: audio_config, advanced_voice_options: advanced_voice_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.synthesize_speech({ input: input, voice: voice, audio_config: audio_config, advanced_voice_options: advanced_voice_options }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.synthesize_speech(::Google::Cloud::TextToSpeech::V1::SynthesizeSpeechRequest.new(input: input, voice: voice, audio_config: audio_config, advanced_voice_options: advanced_voice_options), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, synthesize_speech_client_stub.call_rpc_count
    end
  end

  def test_streaming_synthesize
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::TextToSpeech::V1::StreamingSynthesizeResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a bidi streaming method.
    streaming_config = {}

    streaming_synthesize_client_stub = ClientStub.new [grpc_response].to_enum, grpc_operation do |name, request, options:|
      assert_equal :streaming_synthesize, name
      assert_kind_of Enumerable, request
      refute_nil options
      request
    end

    Gapic::ServiceStub.stub :new, streaming_synthesize_client_stub do
      # Create client
      client = ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use enumerable object with hash and protobuf object.
      request_hash = { streaming_config: streaming_config }
      request_proto = ::Google::Cloud::TextToSpeech::V1::StreamingSynthesizeRequest.new streaming_config: streaming_config
      enum_input = [request_hash, request_proto].to_enum
      client.streaming_synthesize enum_input do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::TextToSpeech::V1::StreamingSynthesizeResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common).
      request_hash = { streaming_config: streaming_config }
      request_proto = ::Google::Cloud::TextToSpeech::V1::StreamingSynthesizeRequest.new streaming_config: streaming_config
      stream_input = Gapic::StreamInput.new
      client.streaming_synthesize stream_input do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::TextToSpeech::V1::StreamingSynthesizeResponse, r
        end
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Use enumerable object with hash and protobuf object with options.
      request_hash = { streaming_config: streaming_config }
      request_proto = ::Google::Cloud::TextToSpeech::V1::StreamingSynthesizeRequest.new streaming_config: streaming_config
      enum_input = [request_hash, request_proto].to_enum
      client.streaming_synthesize enum_input, grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::TextToSpeech::V1::StreamingSynthesizeResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common) with options.
      request_hash = { streaming_config: streaming_config }
      request_proto = ::Google::Cloud::TextToSpeech::V1::StreamingSynthesizeRequest.new streaming_config: streaming_config
      stream_input = Gapic::StreamInput.new
      client.streaming_synthesize stream_input, grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::TextToSpeech::V1::StreamingSynthesizeResponse, r
        end
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Verify method calls
      assert_equal 4, streaming_synthesize_client_stub.call_rpc_count
      streaming_synthesize_client_stub.requests.each do |request|
        request.to_a.each do |r|
          assert_kind_of ::Google::Cloud::TextToSpeech::V1::StreamingSynthesizeRequest, r
          assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::TextToSpeech::V1::StreamingSynthesizeConfig), r["streaming_config"]
          assert_equal :streaming_config, r.streaming_request
        end
      end
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::TextToSpeech::V1::TextToSpeech::Client::Configuration, config
  end
end
