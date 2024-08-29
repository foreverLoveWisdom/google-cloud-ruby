# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/recaptchaenterprise/v1/recaptchaenterprise.proto for package 'Google.Cloud.RecaptchaEnterprise.V1'
# Original file comments:
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/recaptchaenterprise/v1/recaptchaenterprise_pb'

module Google
  module Cloud
    module RecaptchaEnterprise
      module V1
        module RecaptchaEnterpriseService
          # Service to determine the likelihood an event is legitimate.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.recaptchaenterprise.v1.RecaptchaEnterpriseService'

            # Creates an Assessment of the likelihood an event is legitimate.
            rpc :CreateAssessment, ::Google::Cloud::RecaptchaEnterprise::V1::CreateAssessmentRequest, ::Google::Cloud::RecaptchaEnterprise::V1::Assessment
            # Annotates a previously created Assessment to provide additional information
            # on whether the event turned out to be authentic or fraudulent.
            rpc :AnnotateAssessment, ::Google::Cloud::RecaptchaEnterprise::V1::AnnotateAssessmentRequest, ::Google::Cloud::RecaptchaEnterprise::V1::AnnotateAssessmentResponse
            # Creates a new reCAPTCHA Enterprise key.
            rpc :CreateKey, ::Google::Cloud::RecaptchaEnterprise::V1::CreateKeyRequest, ::Google::Cloud::RecaptchaEnterprise::V1::Key
            # Returns the list of all keys that belong to a project.
            rpc :ListKeys, ::Google::Cloud::RecaptchaEnterprise::V1::ListKeysRequest, ::Google::Cloud::RecaptchaEnterprise::V1::ListKeysResponse
            # Returns the secret key related to the specified public key.
            # You must use the legacy secret key only in a 3rd party integration with
            # legacy reCAPTCHA.
            rpc :RetrieveLegacySecretKey, ::Google::Cloud::RecaptchaEnterprise::V1::RetrieveLegacySecretKeyRequest, ::Google::Cloud::RecaptchaEnterprise::V1::RetrieveLegacySecretKeyResponse
            # Returns the specified key.
            rpc :GetKey, ::Google::Cloud::RecaptchaEnterprise::V1::GetKeyRequest, ::Google::Cloud::RecaptchaEnterprise::V1::Key
            # Updates the specified key.
            rpc :UpdateKey, ::Google::Cloud::RecaptchaEnterprise::V1::UpdateKeyRequest, ::Google::Cloud::RecaptchaEnterprise::V1::Key
            # Deletes the specified key.
            rpc :DeleteKey, ::Google::Cloud::RecaptchaEnterprise::V1::DeleteKeyRequest, ::Google::Protobuf::Empty
            # Migrates an existing key from reCAPTCHA to reCAPTCHA Enterprise.
            # Once a key is migrated, it can be used from either product. SiteVerify
            # requests are billed as CreateAssessment calls. You must be
            # authenticated as one of the current owners of the reCAPTCHA Key, and
            # your user must have the reCAPTCHA Enterprise Admin IAM role in the
            # destination project.
            rpc :MigrateKey, ::Google::Cloud::RecaptchaEnterprise::V1::MigrateKeyRequest, ::Google::Cloud::RecaptchaEnterprise::V1::Key
            # Adds an IP override to a key. The following restrictions hold:
            # * The maximum number of IP overrides per key is 100.
            # * For any conflict (such as IP already exists or IP part of an existing
            #   IP range), an error is returned.
            rpc :AddIpOverride, ::Google::Cloud::RecaptchaEnterprise::V1::AddIpOverrideRequest, ::Google::Cloud::RecaptchaEnterprise::V1::AddIpOverrideResponse
            # Get some aggregated metrics for a Key. This data can be used to build
            # dashboards.
            rpc :GetMetrics, ::Google::Cloud::RecaptchaEnterprise::V1::GetMetricsRequest, ::Google::Cloud::RecaptchaEnterprise::V1::Metrics
            # Creates a new FirewallPolicy, specifying conditions at which reCAPTCHA
            # Enterprise actions can be executed.
            # A project may have a maximum of 1000 policies.
            rpc :CreateFirewallPolicy, ::Google::Cloud::RecaptchaEnterprise::V1::CreateFirewallPolicyRequest, ::Google::Cloud::RecaptchaEnterprise::V1::FirewallPolicy
            # Returns the list of all firewall policies that belong to a project.
            rpc :ListFirewallPolicies, ::Google::Cloud::RecaptchaEnterprise::V1::ListFirewallPoliciesRequest, ::Google::Cloud::RecaptchaEnterprise::V1::ListFirewallPoliciesResponse
            # Returns the specified firewall policy.
            rpc :GetFirewallPolicy, ::Google::Cloud::RecaptchaEnterprise::V1::GetFirewallPolicyRequest, ::Google::Cloud::RecaptchaEnterprise::V1::FirewallPolicy
            # Updates the specified firewall policy.
            rpc :UpdateFirewallPolicy, ::Google::Cloud::RecaptchaEnterprise::V1::UpdateFirewallPolicyRequest, ::Google::Cloud::RecaptchaEnterprise::V1::FirewallPolicy
            # Deletes the specified firewall policy.
            rpc :DeleteFirewallPolicy, ::Google::Cloud::RecaptchaEnterprise::V1::DeleteFirewallPolicyRequest, ::Google::Protobuf::Empty
            # Reorders all firewall policies.
            rpc :ReorderFirewallPolicies, ::Google::Cloud::RecaptchaEnterprise::V1::ReorderFirewallPoliciesRequest, ::Google::Cloud::RecaptchaEnterprise::V1::ReorderFirewallPoliciesResponse
            # List groups of related accounts.
            rpc :ListRelatedAccountGroups, ::Google::Cloud::RecaptchaEnterprise::V1::ListRelatedAccountGroupsRequest, ::Google::Cloud::RecaptchaEnterprise::V1::ListRelatedAccountGroupsResponse
            # Get memberships in a group of related accounts.
            rpc :ListRelatedAccountGroupMemberships, ::Google::Cloud::RecaptchaEnterprise::V1::ListRelatedAccountGroupMembershipsRequest, ::Google::Cloud::RecaptchaEnterprise::V1::ListRelatedAccountGroupMembershipsResponse
            # Search group memberships related to a given account.
            rpc :SearchRelatedAccountGroupMemberships, ::Google::Cloud::RecaptchaEnterprise::V1::SearchRelatedAccountGroupMembershipsRequest, ::Google::Cloud::RecaptchaEnterprise::V1::SearchRelatedAccountGroupMembershipsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
