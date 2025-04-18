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


module Google
  module Shopping
    module Merchant
      module Lfp
        module V1beta
          # The LFP state of a merchant.
          # @!attribute [rw] name
          #   @return [::String]
          #     Identifier. The name of the `LfpMerchantState` resource. Format:
          #     `accounts/{account}/lfpMerchantStates/{target_merchant}`
          # @!attribute [rw] linked_gbps
          #   @return [::Integer]
          #     Number of [GBPs](https://www.google.com/business/) this merchant has access
          #     to.
          # @!attribute [r] store_states
          #   @return [::Array<::Google::Shopping::Merchant::Lfp::V1beta::LfpMerchantState::LfpStoreState>]
          #     Output only. The state per store from the specified merchant.
          # @!attribute [rw] inventory_stats
          #   @return [::Google::Shopping::Merchant::Lfp::V1beta::LfpMerchantState::InventoryStats]
          #     The inventory statistics for the merchant.
          # @!attribute [rw] country_settings
          #   @return [::Array<::Google::Shopping::Merchant::Lfp::V1beta::LfpMerchantState::CountrySettings>]
          #     Country-specific settings for the merchant.
          class LfpMerchantState
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The state of a specific merchant's store.
            # @!attribute [rw] store_code
            #   @return [::String]
            #     Required. Immutable. The identifier of this store.
            # @!attribute [r] matching_state
            #   @return [::Google::Shopping::Merchant::Lfp::V1beta::LfpMerchantState::LfpStoreState::StoreMatchingState]
            #     Output only. The store matching state.
            # @!attribute [rw] matching_state_hint
            #   @return [::String]
            #     The hint of why the matching has failed (only set if matching_state is
            #     FAILED).
            class LfpStoreState
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # The state of matching `LfpStore` to a Google Business Profile listing.
              module StoreMatchingState
                # Store matching state unspecified.
                STORE_MATCHING_STATE_UNSPECIFIED = 0

                # The `LfpStore` is successfully matched with a Google Business Profile
                # store.
                STORE_MATCHING_STATE_MATCHED = 1

                # The `LfpStore` is not matched with a Google Business Profile store.
                STORE_MATCHING_STATE_FAILED = 2
              end
            end

            # The inventory statistics for a merchant.
            # @!attribute [rw] submitted_entries
            #   @return [::Integer]
            #     Number of entries (understanding entry as a pair of product and store)
            #     that were built based on provided inventories/sales and submitted to
            #     Google.
            # @!attribute [rw] submitted_in_stock_entries
            #   @return [::Integer]
            #     Number of submitted in stock entries.
            # @!attribute [rw] unsubmitted_entries
            #   @return [::Integer]
            #     Number of entries that were built based on provided
            #     inventories/sales and couldn't be submitted to Google due to errors like
            #     missing product.
            # @!attribute [rw] submitted_products
            #   @return [::Integer]
            #     Number of products from provided inventories/sales that were created from
            #     matches to existing online products provided by the merchant or to the
            #     Google catalog.
            class InventoryStats
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Country-specific settings for the merchant.
            # @!attribute [rw] region_code
            #   @return [::String]
            #     Required. The [CLDR territory
            #     code](https://github.com/unicode-org/cldr/blob/latest/common/main/en.xml)
            #     for the country for which these settings are defined.
            # @!attribute [rw] free_local_listings_enabled
            #   @return [::Boolean]
            #     True if this merchant has enabled free local listings in MC.
            # @!attribute [rw] local_inventory_ads_enabled
            #   @return [::Boolean]
            #     True if this merchant has enabled local inventory ads in MC.
            # @!attribute [r] inventory_verification_state
            #   @return [::Google::Shopping::Merchant::Lfp::V1beta::LfpMerchantState::CountrySettings::VerificationState]
            #     Output only. The verification state of this merchant's inventory check.
            # @!attribute [r] product_page_type
            #   @return [::Google::Shopping::Merchant::Lfp::V1beta::LfpMerchantState::CountrySettings::ProductPageType]
            #     Output only. The product page type selected by this merchant.
            # @!attribute [r] instock_serving_verification_state
            #   @return [::Google::Shopping::Merchant::Lfp::V1beta::LfpMerchantState::CountrySettings::VerificationState]
            #     Output only. The verification state of this merchant's instock serving
            #     feature.
            # @!attribute [r] pickup_serving_verification_state
            #   @return [::Google::Shopping::Merchant::Lfp::V1beta::LfpMerchantState::CountrySettings::VerificationState]
            #     Output only. The verification state of this merchant's pickup serving
            #     feature.
            class CountrySettings
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # The possible verification states for different merchant programs.
              module VerificationState
                # Verification state unspecified.
                VERIFICATION_STATE_UNSPECIFIED = 0

                # Verification state not approved.
                VERIFICATION_STATE_NOT_APPROVED = 1

                # Verification state in progress.
                VERIFICATION_STATE_IN_PROGRESS = 2

                # Verification state approved.
                VERIFICATION_STATE_APPROVED = 3
              end

              # The possible [product page
              # types](https://support.google.com/merchants/topic/15148370) for a
              # merchant.
              module ProductPageType
                # Product page type unspecified.
                PRODUCT_PAGE_TYPE_UNSPECIFIED = 0

                # Google hosted product page.
                GOOGLE_HOSTED = 1

                # Merchant hosted product page.
                MERCHANT_HOSTED = 2

                # Merchant hosted store specific product page.
                MERCHANT_HOSTED_STORE_SPECIFIC = 3
              end
            end
          end

          # Request message for the GetLfpMerchantState method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the state to retrieve.
          #     Format: `accounts/{account}/lfpMerchantStates/{target_merchant}`
          class GetLfpMerchantStateRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
