# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/purge_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n6google/cloud/discoveryengine/v1beta/purge_config.proto\x12#google.cloud.discoveryengine.v1beta\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"~\n\x16PurgeUserEventsRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x12\x13\n\x06\x66ilter\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\r\n\x05\x66orce\x18\x03 \x01(\x08\".\n\x17PurgeUserEventsResponse\x12\x13\n\x0bpurge_count\x18\x01 \x01(\x03\"\xa9\x01\n\x17PurgeUserEventsMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rsuccess_count\x18\x03 \x01(\x03\x12\x15\n\rfailure_count\x18\x04 \x01(\x03\"z\n\x15PurgeDocumentsRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%discoveryengine.googleapis.com/Branch\x12\x13\n\x06\x66ilter\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\r\n\x05\x66orce\x18\x03 \x01(\x08\"q\n\x16PurgeDocumentsResponse\x12\x13\n\x0bpurge_count\x18\x01 \x01(\x03\x12\x42\n\x0cpurge_sample\x18\x02 \x03(\tB,\xfa\x41)\n\'discoveryengine.googleapis.com/Document\"\xbf\x01\n\x16PurgeDocumentsMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x15\n\rsuccess_count\x18\x03 \x01(\x03\x12\x15\n\rfailure_count\x18\x04 \x01(\x03\x12\x15\n\rignored_count\x18\x05 \x01(\x03\"i\n%PurgeSuggestionDenyListEntriesRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\"h\n&PurgeSuggestionDenyListEntriesResponse\x12\x13\n\x0bpurge_count\x18\x01 \x01(\x03\x12)\n\rerror_samples\x18\x02 \x03(\x0b\x32\x12.google.rpc.Status\"\x8a\x01\n&PurgeSuggestionDenyListEntriesMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"e\n!PurgeCompletionSuggestionsRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\"h\n\"PurgeCompletionSuggestionsResponse\x12\x17\n\x0fpurge_succeeded\x18\x01 \x01(\x08\x12)\n\rerror_samples\x18\x02 \x03(\x0b\x32\x12.google.rpc.Status\"\x86\x01\n\"PurgeCompletionSuggestionsMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x97\x02\n\'com.google.cloud.discoveryengine.v1betaB\x10PurgeConfigProtoP\x01ZQcloud.google.com/go/discoveryengine/apiv1beta/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02#Google.Cloud.DiscoveryEngine.V1Beta\xca\x02#Google\\Cloud\\DiscoveryEngine\\V1beta\xea\x02&Google::Cloud::DiscoveryEngine::V1betab\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
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
  module Cloud
    module DiscoveryEngine
      module V1beta
        PurgeUserEventsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.PurgeUserEventsRequest").msgclass
        PurgeUserEventsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.PurgeUserEventsResponse").msgclass
        PurgeUserEventsMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.PurgeUserEventsMetadata").msgclass
        PurgeDocumentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.PurgeDocumentsRequest").msgclass
        PurgeDocumentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.PurgeDocumentsResponse").msgclass
        PurgeDocumentsMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.PurgeDocumentsMetadata").msgclass
        PurgeSuggestionDenyListEntriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.PurgeSuggestionDenyListEntriesRequest").msgclass
        PurgeSuggestionDenyListEntriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.PurgeSuggestionDenyListEntriesResponse").msgclass
        PurgeSuggestionDenyListEntriesMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.PurgeSuggestionDenyListEntriesMetadata").msgclass
        PurgeCompletionSuggestionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.PurgeCompletionSuggestionsRequest").msgclass
        PurgeCompletionSuggestionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.PurgeCompletionSuggestionsResponse").msgclass
        PurgeCompletionSuggestionsMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.PurgeCompletionSuggestionsMetadata").msgclass
      end
    end
  end
end
