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

require "google/cloud/dialogflow/cx/v3/session_pb"

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          module Sessions
            module Rest
              ##
              # REST service stub for the Sessions service.
              # Service stub contains baseline method implementations
              # including transcoding, making the REST call, and deserialing the response.
              #
              class ServiceStub
                # @private
                def initialize endpoint:, endpoint_template:, universe_domain:, credentials:, logger:
                  # These require statements are intentionally placed here to initialize
                  # the REST modules only when it's required.
                  require "gapic/rest"

                  @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint,
                                                               endpoint_template: endpoint_template,
                                                               universe_domain: universe_domain,
                                                               credentials: credentials,
                                                               numeric_enums: true,
                                                               service_name: self.class,
                                                               raise_faraday_errors: false,
                                                               logger: logger
                end

                ##
                # The effective universe domain
                #
                # @return [String]
                #
                def universe_domain
                  @client_stub.universe_domain
                end

                ##
                # The effective endpoint
                #
                # @return [String]
                #
                def endpoint
                  @client_stub.endpoint
                end

                ##
                # The logger used for request/response debug logging.
                #
                # @return [Logger]
                #
                def logger stub: false
                  stub ? @client_stub.stub_logger : @client_stub.logger
                end

                ##
                # Baseline implementation for the detect_intent REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::DetectIntentRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Dialogflow::CX::V3::DetectIntentResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Dialogflow::CX::V3::DetectIntentResponse]
                #   A result object deserialized from the server's reply
                def detect_intent request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_detect_intent_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "detect_intent",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Dialogflow::CX::V3::DetectIntentResponse.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the server_streaming_detect_intent REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::DetectIntentRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yieldparam chunk [::String] The chunk of data received during server streaming.
                #
                # @return [::Gapic::Rest::TransportOperation]
                def server_streaming_detect_intent(request_pb, options = nil, &)
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_server_streaming_detect_intent_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "server_streaming_detect_intent",
                    options: options,
                    is_server_streaming: true,
                    &
                  )
                  ::Gapic::Rest::TransportOperation.new response
                end

                ##
                # Baseline implementation for the match_intent REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::MatchIntentRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Dialogflow::CX::V3::MatchIntentResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Dialogflow::CX::V3::MatchIntentResponse]
                #   A result object deserialized from the server's reply
                def match_intent request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_match_intent_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "match_intent",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Dialogflow::CX::V3::MatchIntentResponse.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the fulfill_intent REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::FulfillIntentRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Dialogflow::CX::V3::FulfillIntentResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Dialogflow::CX::V3::FulfillIntentResponse]
                #   A result object deserialized from the server's reply
                def fulfill_intent request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_fulfill_intent_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "fulfill_intent",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Dialogflow::CX::V3::FulfillIntentResponse.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the submit_answer_feedback REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::SubmitAnswerFeedbackRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Dialogflow::CX::V3::AnswerFeedback]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Dialogflow::CX::V3::AnswerFeedback]
                #   A result object deserialized from the server's reply
                def submit_answer_feedback request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_submit_answer_feedback_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri: uri,
                    body: body || "",
                    params: query_string_params,
                    method_name: "submit_answer_feedback",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Dialogflow::CX::V3::AnswerFeedback.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the detect_intent REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::DetectIntentRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_detect_intent_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v3/{session}:detectIntent",
                                                            body: "*",
                                                            matches: [
                                                              ["session", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/sessions/[^/]+/?$}, false]
                                                            ]
                                                          )
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v3/{session}:detectIntent",
                                                            body: "*",
                                                            matches: [
                                                              ["session", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/sessions/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the server_streaming_detect_intent REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::DetectIntentRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_server_streaming_detect_intent_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v3/{session}:serverStreamingDetectIntent",
                                                            body: "*",
                                                            matches: [
                                                              ["session", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/sessions/[^/]+/?$}, false]
                                                            ]
                                                          )
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v3/{session}:serverStreamingDetectIntent",
                                                            body: "*",
                                                            matches: [
                                                              ["session", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/sessions/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the match_intent REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::MatchIntentRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_match_intent_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v3/{session}:matchIntent",
                                                            body: "*",
                                                            matches: [
                                                              ["session", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/sessions/[^/]+/?$}, false]
                                                            ]
                                                          )
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v3/{session}:matchIntent",
                                                            body: "*",
                                                            matches: [
                                                              ["session", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/sessions/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the fulfill_intent REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::FulfillIntentRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_fulfill_intent_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v3/{match_intent_request.session}:fulfillIntent",
                                                            body: "*",
                                                            matches: [
                                                              ["match_intent_request.session", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/sessions/[^/]+/?$}, false]
                                                            ]
                                                          )
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v3/{match_intent_request.session}:fulfillIntent",
                                                            body: "*",
                                                            matches: [
                                                              ["match_intent_request.session", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/sessions/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the submit_answer_feedback REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::SubmitAnswerFeedbackRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_submit_answer_feedback_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v3/{session}:submitAnswerFeedback",
                                                            body: "*",
                                                            matches: [
                                                              ["session", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/sessions/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end
              end
            end
          end
        end
      end
    end
  end
end
