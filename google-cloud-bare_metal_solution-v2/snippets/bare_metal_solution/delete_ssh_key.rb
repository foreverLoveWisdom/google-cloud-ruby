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

# [START baremetalsolution_v2_generated_BareMetalSolution_DeleteSSHKey_sync]
require "google/cloud/bare_metal_solution/v2"

##
# Snippet for the delete_ssh_key call in the BareMetalSolution service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::BareMetalSolution::V2::BareMetalSolution::Client#delete_ssh_key.
#
def delete_ssh_key
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::BareMetalSolution::V2::BareMetalSolution::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::BareMetalSolution::V2::DeleteSSHKeyRequest.new

  # Call the delete_ssh_key method.
  result = client.delete_ssh_key request

  # The returned object is of type Google::Protobuf::Empty.
  p result
end
# [END baremetalsolution_v2_generated_BareMetalSolution_DeleteSSHKey_sync]
