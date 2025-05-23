# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/shopping/merchant/accounts/v1beta/gbpaccounts.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'


descriptor_data = "\n:google/shopping/merchant/accounts/v1beta/gbpaccounts.proto\x12(google.shopping.merchant.accounts.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\"\xe2\x02\n\nGbpAccount\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x16\n\x0egbp_account_id\x18\x02 \x01(\t\x12G\n\x04type\x18\x03 \x01(\x0e\x32\x39.google.shopping.merchant.accounts.v1beta.GbpAccount.Type\x12\x18\n\x10gbp_account_name\x18\x05 \x01(\t\x12\x15\n\rlisting_count\x18\x06 \x01(\x03\"<\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x08\n\x04USER\x10\x01\x12\x14\n\x10\x42USINESS_ACCOUNT\x10\x02:q\xea\x41n\n%merchantapi.googleapis.com/GbpAccount\x12,accounts/{account}/gbpAccounts/{gbp_account}*\x0bgbpAccounts2\ngbpAccount\"\x85\x01\n\x16ListGbpAccountsRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"merchantapi.googleapis.com/Account\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\"~\n\x17ListGbpAccountsResponse\x12J\n\x0cgbp_accounts\x18\x01 \x03(\x0b\x32\x34.google.shopping.merchant.accounts.v1beta.GbpAccount\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"k\n\x15LinkGbpAccountRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"merchantapi.googleapis.com/Account\x12\x16\n\tgbp_email\x18\x02 \x01(\tB\x03\xe0\x41\x02\"B\n\x16LinkGbpAccountResponse\x12(\n\x08response\x18\x01 \x01(\x0b\x32\x16.google.protobuf.Empty2\xa4\x04\n\x12GbpAccountsService\x12\xd9\x01\n\x0fListGbpAccounts\x12@.google.shopping.merchant.accounts.v1beta.ListGbpAccountsRequest\x1a\x41.google.shopping.merchant.accounts.v1beta.ListGbpAccountsResponse\"A\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x32\x12\x30/accounts/v1beta/{parent=accounts/*}/gbpAccounts\x12\xe8\x01\n\x0eLinkGbpAccount\x12?.google.shopping.merchant.accounts.v1beta.LinkGbpAccountRequest\x1a@.google.shopping.merchant.accounts.v1beta.LinkGbpAccountResponse\"S\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x44\"?/accounts/v1beta/{parent=accounts/*}/gbpAccounts:linkGbpAccount:\x01*\x1aG\xca\x41\x1amerchantapi.googleapis.com\xd2\x41\'https://www.googleapis.com/auth/contentB\x92\x01\n,com.google.shopping.merchant.accounts.v1betaB\x10GbpAccountsProtoP\x01ZNcloud.google.com/go/shopping/merchant/accounts/apiv1beta/accountspb;accountspbb\x06proto3"

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
    ["google.protobuf.Empty", "google/protobuf/empty.proto"],
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
      module Accounts
        module V1beta
          GbpAccount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.GbpAccount").msgclass
          GbpAccount::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.GbpAccount.Type").enummodule
          ListGbpAccountsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.ListGbpAccountsRequest").msgclass
          ListGbpAccountsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.ListGbpAccountsResponse").msgclass
          LinkGbpAccountRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.LinkGbpAccountRequest").msgclass
          LinkGbpAccountResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.accounts.v1beta.LinkGbpAccountResponse").msgclass
        end
      end
    end
  end
end
