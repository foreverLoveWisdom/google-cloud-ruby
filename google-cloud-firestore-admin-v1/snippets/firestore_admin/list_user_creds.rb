# frozen_string_literal: true

# Copyright 2025 Google LLC
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

# [START firestore_v1_generated_FirestoreAdmin_ListUserCreds_sync]
require "google/cloud/firestore/admin/v1"

##
# Snippet for the list_user_creds call in the FirestoreAdmin service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client#list_user_creds.
#
def list_user_creds
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Firestore::Admin::V1::FirestoreAdmin::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Firestore::Admin::V1::ListUserCredsRequest.new

  # Call the list_user_creds method.
  result = client.list_user_creds request

  # The returned object is of type Google::Cloud::Firestore::Admin::V1::ListUserCredsResponse.
  p result
end
# [END firestore_v1_generated_FirestoreAdmin_ListUserCreds_sync]
