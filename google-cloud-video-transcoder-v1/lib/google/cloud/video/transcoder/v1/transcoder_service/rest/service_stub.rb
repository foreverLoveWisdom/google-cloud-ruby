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

require "google/cloud/video/transcoder/v1/services_pb"

module Google
  module Cloud
    module Video
      module Transcoder
        module V1
          module TranscoderService
            module Rest
              ##
              # REST service stub for the TranscoderService service.
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
                # Baseline implementation for the create_job REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::CreateJobRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Video::Transcoder::V1::Job]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Video::Transcoder::V1::Job]
                #   A result object deserialized from the server's reply
                def create_job request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_create_job_request request_pb
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
                    method_name: "create_job",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Video::Transcoder::V1::Job.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the list_jobs REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::ListJobsRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Video::Transcoder::V1::ListJobsResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Video::Transcoder::V1::ListJobsResponse]
                #   A result object deserialized from the server's reply
                def list_jobs request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_list_jobs_request request_pb
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
                    method_name: "list_jobs",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Video::Transcoder::V1::ListJobsResponse.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the get_job REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::GetJobRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Video::Transcoder::V1::Job]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Video::Transcoder::V1::Job]
                #   A result object deserialized from the server's reply
                def get_job request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_get_job_request request_pb
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
                    method_name: "get_job",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Video::Transcoder::V1::Job.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the delete_job REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::DeleteJobRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Protobuf::Empty]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Protobuf::Empty]
                #   A result object deserialized from the server's reply
                def delete_job request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_delete_job_request request_pb
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
                    method_name: "delete_job",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Protobuf::Empty.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the create_job_template REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::CreateJobTemplateRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Video::Transcoder::V1::JobTemplate]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Video::Transcoder::V1::JobTemplate]
                #   A result object deserialized from the server's reply
                def create_job_template request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_create_job_template_request request_pb
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
                    method_name: "create_job_template",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Video::Transcoder::V1::JobTemplate.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the list_job_templates REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::ListJobTemplatesRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Video::Transcoder::V1::ListJobTemplatesResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Video::Transcoder::V1::ListJobTemplatesResponse]
                #   A result object deserialized from the server's reply
                def list_job_templates request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_list_job_templates_request request_pb
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
                    method_name: "list_job_templates",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Video::Transcoder::V1::ListJobTemplatesResponse.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the get_job_template REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::GetJobTemplateRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Video::Transcoder::V1::JobTemplate]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Video::Transcoder::V1::JobTemplate]
                #   A result object deserialized from the server's reply
                def get_job_template request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_get_job_template_request request_pb
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
                    method_name: "get_job_template",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Video::Transcoder::V1::JobTemplate.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # Baseline implementation for the delete_job_template REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::DeleteJobTemplateRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Protobuf::Empty]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Protobuf::Empty]
                #   A result object deserialized from the server's reply
                def delete_job_template request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_delete_job_template_request request_pb
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
                    method_name: "delete_job_template",
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Protobuf::Empty.decode_json response.body, ignore_unknown_fields: true
                  catch :response do
                    yield result, operation if block_given?
                    result
                  end
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the create_job REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::CreateJobRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_create_job_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v1/{parent}/jobs",
                                                            body: "job",
                                                            matches: [
                                                              ["parent", %r{^projects/[^/]+/locations/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the list_jobs REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::ListJobsRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_list_jobs_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/{parent}/jobs",
                                                            matches: [
                                                              ["parent", %r{^projects/[^/]+/locations/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the get_job REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::GetJobRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_get_job_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/{name}",
                                                            matches: [
                                                              ["name", %r{^projects/[^/]+/locations/[^/]+/jobs/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the delete_job REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::DeleteJobRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_delete_job_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :delete,
                                                            uri_template: "/v1/{name}",
                                                            matches: [
                                                              ["name", %r{^projects/[^/]+/locations/[^/]+/jobs/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the create_job_template REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::CreateJobTemplateRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_create_job_template_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v1/{parent}/jobTemplates",
                                                            body: "job_template",
                                                            matches: [
                                                              ["parent", %r{^projects/[^/]+/locations/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the list_job_templates REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::ListJobTemplatesRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_list_job_templates_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/{parent}/jobTemplates",
                                                            matches: [
                                                              ["parent", %r{^projects/[^/]+/locations/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the get_job_template REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::GetJobTemplateRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_get_job_template_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/{name}",
                                                            matches: [
                                                              ["name", %r{^projects/[^/]+/locations/[^/]+/jobTemplates/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the delete_job_template REST call
                #
                # @param request_pb [::Google::Cloud::Video::Transcoder::V1::DeleteJobTemplateRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_delete_job_template_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :delete,
                                                            uri_template: "/v1/{name}",
                                                            matches: [
                                                              ["name", %r{^projects/[^/]+/locations/[^/]+/jobTemplates/[^/]+/?$}, false]
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
