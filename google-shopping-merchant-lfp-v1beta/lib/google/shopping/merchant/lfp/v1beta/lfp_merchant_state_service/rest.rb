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

require "gapic/rest"
require "gapic/config"
require "gapic/config/method"

require "google/shopping/merchant/lfp/v1beta/version"

require "google/shopping/merchant/lfp/v1beta/lfp_merchant_state_service/credentials"
require "google/shopping/merchant/lfp/v1beta/lfp_merchant_state_service/paths"
require "google/shopping/merchant/lfp/v1beta/lfp_merchant_state_service/rest/client"

module Google
  module Shopping
    module Merchant
      module Lfp
        module V1beta
          ##
          # Service for a [LFP
          # partner](https://support.google.com/merchants/answer/7676652) to get the
          # state of a merchant.
          #
          # To load this service and instantiate a REST client:
          #
          #     require "google/shopping/merchant/lfp/v1beta/lfp_merchant_state_service/rest"
          #     client = ::Google::Shopping::Merchant::Lfp::V1beta::LfpMerchantStateService::Rest::Client.new
          #
          module LfpMerchantStateService
            # Client for the REST transport
            module Rest
            end
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "rest", "helpers.rb"
require "google/shopping/merchant/lfp/v1beta/lfp_merchant_state_service/rest/helpers" if ::File.file? helper_path
