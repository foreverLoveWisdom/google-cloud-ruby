# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/shopping/merchant/lfp/v1beta/lfpmerchantstate.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n:google/shopping/merchant/lfp/v1beta/lfpmerchantstate.proto\x12#google.shopping.merchant.lfp.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xe8\x0e\n\x10LfpMerchantState\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x13\n\x0blinked_gbps\x18\x02 \x01(\x03\x12^\n\x0cstore_states\x18\x03 \x03(\x0b\x32\x43.google.shopping.merchant.lfp.v1beta.LfpMerchantState.LfpStoreStateB\x03\xe0\x41\x03\x12]\n\x0finventory_stats\x18\x04 \x01(\x0b\x32\x44.google.shopping.merchant.lfp.v1beta.LfpMerchantState.InventoryStats\x12_\n\x10\x63ountry_settings\x18\x05 \x03(\x0b\x32\x45.google.shopping.merchant.lfp.v1beta.LfpMerchantState.CountrySettings\x1a\xbc\x02\n\rLfpStoreState\x12\x1a\n\nstore_code\x18\x01 \x01(\tB\x06\xe0\x41\x02\xe0\x41\x05\x12s\n\x0ematching_state\x18\x02 \x01(\x0e\x32V.google.shopping.merchant.lfp.v1beta.LfpMerchantState.LfpStoreState.StoreMatchingStateB\x03\xe0\x41\x03\x12\x1b\n\x13matching_state_hint\x18\x03 \x01(\t\"}\n\x12StoreMatchingState\x12$\n STORE_MATCHING_STATE_UNSPECIFIED\x10\x00\x12 \n\x1cSTORE_MATCHING_STATE_MATCHED\x10\x01\x12\x1f\n\x1bSTORE_MATCHING_STATE_FAILED\x10\x02\x1a\x88\x01\n\x0eInventoryStats\x12\x19\n\x11submitted_entries\x18\x01 \x01(\x03\x12\"\n\x1asubmitted_in_stock_entries\x18\x02 \x01(\x03\x12\x1b\n\x13unsubmitted_entries\x18\x03 \x01(\x03\x12\x1a\n\x12submitted_products\x18\x04 \x01(\x03\x1a\xad\x07\n\x0f\x43ountrySettings\x12\x18\n\x0bregion_code\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12#\n\x1b\x66ree_local_listings_enabled\x18\x02 \x01(\x08\x12#\n\x1blocal_inventory_ads_enabled\x18\x03 \x01(\x08\x12\x82\x01\n\x1cinventory_verification_state\x18\x04 \x01(\x0e\x32W.google.shopping.merchant.lfp.v1beta.LfpMerchantState.CountrySettings.VerificationStateB\x03\xe0\x41\x03\x12u\n\x11product_page_type\x18\x05 \x01(\x0e\x32U.google.shopping.merchant.lfp.v1beta.LfpMerchantState.CountrySettings.ProductPageTypeB\x03\xe0\x41\x03\x12\x88\x01\n\"instock_serving_verification_state\x18\x06 \x01(\x0e\x32W.google.shopping.merchant.lfp.v1beta.LfpMerchantState.CountrySettings.VerificationStateB\x03\xe0\x41\x03\x12\x87\x01\n!pickup_serving_verification_state\x18\x07 \x01(\x0e\x32W.google.shopping.merchant.lfp.v1beta.LfpMerchantState.CountrySettings.VerificationStateB\x03\xe0\x41\x03\"\xa1\x01\n\x11VerificationState\x12\"\n\x1eVERIFICATION_STATE_UNSPECIFIED\x10\x00\x12#\n\x1fVERIFICATION_STATE_NOT_APPROVED\x10\x01\x12\"\n\x1eVERIFICATION_STATE_IN_PROGRESS\x10\x02\x12\x1f\n\x1bVERIFICATION_STATE_APPROVED\x10\x03\"\x80\x01\n\x0fProductPageType\x12!\n\x1dPRODUCT_PAGE_TYPE_UNSPECIFIED\x10\x00\x12\x11\n\rGOOGLE_HOSTED\x10\x01\x12\x13\n\x0fMERCHANT_HOSTED\x10\x02\x12\"\n\x1eMERCHANT_HOSTED_STORE_SPECIFIC\x10\x03:\x91\x01\xea\x41\x8d\x01\n+merchantapi.googleapis.com/LfpMerchantState\x12\x39\x61\x63\x63ounts/{account}/lfpMerchantStates/{lfp_merchant_state}*\x11lfpMerchantStates2\x10lfpMerchantState\"_\n\x1aGetLfpMerchantStateRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+merchantapi.googleapis.com/LfpMerchantState2\xb4\x02\n\x17LfpMerchantStateService\x12\xcf\x01\n\x13GetLfpMerchantState\x12?.google.shopping.merchant.lfp.v1beta.GetLfpMerchantStateRequest\x1a\x35.google.shopping.merchant.lfp.v1beta.LfpMerchantState\"@\xda\x41\x04name\x82\xd3\xe4\x93\x02\x33\x12\x31/lfp/v1beta/{name=accounts/*/lfpMerchantStates/*}\x1aG\xca\x41\x1amerchantapi.googleapis.com\xd2\x41\'https://www.googleapis.com/auth/contentB\x83\x01\n\'com.google.shopping.merchant.lfp.v1betaB\x15LfpMerchantStateProtoP\x01Z?cloud.google.com/go/shopping/merchant/lfp/apiv1beta/lfppb;lfppbb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Shopping
    module Merchant
      module Lfp
        module V1beta
          LfpMerchantState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.LfpMerchantState").msgclass
          LfpMerchantState::LfpStoreState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.LfpMerchantState.LfpStoreState").msgclass
          LfpMerchantState::LfpStoreState::StoreMatchingState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.LfpMerchantState.LfpStoreState.StoreMatchingState").enummodule
          LfpMerchantState::InventoryStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.LfpMerchantState.InventoryStats").msgclass
          LfpMerchantState::CountrySettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.LfpMerchantState.CountrySettings").msgclass
          LfpMerchantState::CountrySettings::VerificationState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.LfpMerchantState.CountrySettings.VerificationState").enummodule
          LfpMerchantState::CountrySettings::ProductPageType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.LfpMerchantState.CountrySettings.ProductPageType").enummodule
          GetLfpMerchantStateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.lfp.v1beta.GetLfpMerchantStateRequest").msgclass
        end
      end
    end
  end
end
