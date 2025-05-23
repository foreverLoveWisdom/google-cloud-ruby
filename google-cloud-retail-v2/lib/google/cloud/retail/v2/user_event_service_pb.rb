# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/user_event_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/httpbody_pb'
require 'google/api/resource_pb'
require 'google/cloud/retail/v2/import_config_pb'
require 'google/cloud/retail/v2/purge_config_pb'
require 'google/cloud/retail/v2/user_event_pb'
require 'google/longrunning/operations_pb'


descriptor_data = "\n/google/cloud/retail/v2/user_event_service.proto\x12\x16google.cloud.retail.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/httpbody.proto\x1a\x19google/api/resource.proto\x1a*google/cloud/retail/v2/import_config.proto\x1a)google/cloud/retail/v2/purge_config.proto\x1a\'google/cloud/retail/v2/user_event.proto\x1a#google/longrunning/operations.proto\"}\n\x15WriteUserEventRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12:\n\nuser_event\x18\x02 \x01(\x0b\x32!.google.cloud.retail.v2.UserEventB\x03\xe0\x41\x02\x12\x13\n\x0bwrite_async\x18\x03 \x01(\x08\"\x9f\x01\n\x17\x43ollectUserEventRequest\x12\x17\n\rprebuilt_rule\x18\x06 \x01(\tH\x00\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x17\n\nuser_event\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x0b\n\x03uri\x18\x03 \x01(\t\x12\x0b\n\x03\x65ts\x18\x04 \x01(\x03\x12\x10\n\x08raw_json\x18\x05 \x01(\tB\x11\n\x0f\x63onversion_rule\"\xfe\x01\n\x17RejoinUserEventsRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x65\n\x17user_event_rejoin_scope\x18\x02 \x01(\x0e\x32\x44.google.cloud.retail.v2.RejoinUserEventsRequest.UserEventRejoinScope\"g\n\x14UserEventRejoinScope\x12\'\n#USER_EVENT_REJOIN_SCOPE_UNSPECIFIED\x10\x00\x12\x11\n\rJOINED_EVENTS\x10\x01\x12\x13\n\x0fUNJOINED_EVENTS\x10\x02\">\n\x18RejoinUserEventsResponse\x12\"\n\x1arejoined_user_events_count\x18\x01 \x01(\x03\"\x1a\n\x18RejoinUserEventsMetadata2\x89\n\n\x10UserEventService\x12\xb7\x01\n\x0eWriteUserEvent\x12-.google.cloud.retail.v2.WriteUserEventRequest\x1a!.google.cloud.retail.v2.UserEvent\"S\x82\xd3\xe4\x93\x02M\"?/v2/{parent=projects/*/locations/*/catalogs/*}/userEvents:write:\nuser_event\x12\xee\x01\n\x10\x43ollectUserEvent\x12/.google.cloud.retail.v2.CollectUserEventRequest\x1a\x14.google.api.HttpBody\"\x92\x01\x82\xd3\xe4\x93\x02\x8b\x01\x12\x41/v2/{parent=projects/*/locations/*/catalogs/*}/userEvents:collectZF\"A/v2/{parent=projects/*/locations/*/catalogs/*}/userEvents:collect:\x01*\x12\x86\x02\n\x0fPurgeUserEvents\x12..google.cloud.retail.v2.PurgeUserEventsRequest\x1a\x1d.google.longrunning.Operation\"\xa3\x01\xca\x41V\n.google.cloud.retail.v2.PurgeUserEventsResponse\x12$google.cloud.retail.v2.PurgeMetadata\x82\xd3\xe4\x93\x02\x44\"?/v2/{parent=projects/*/locations/*/catalogs/*}/userEvents:purge:\x01*\x12\x8b\x02\n\x10ImportUserEvents\x12/.google.cloud.retail.v2.ImportUserEventsRequest\x1a\x1d.google.longrunning.Operation\"\xa6\x01\xca\x41X\n/google.cloud.retail.v2.ImportUserEventsResponse\x12%google.cloud.retail.v2.ImportMetadata\x82\xd3\xe4\x93\x02\x45\"@/v2/{parent=projects/*/locations/*/catalogs/*}/userEvents:import:\x01*\x12\xe7\x01\n\x10RejoinUserEvents\x12/.google.cloud.retail.v2.RejoinUserEventsRequest\x1a\x1d.google.longrunning.Operation\"\x82\x01\xca\x41\x34\n\x18RejoinUserEventsResponse\x12\x18RejoinUserEventsMetadata\x82\xd3\xe4\x93\x02\x45\"@/v2/{parent=projects/*/locations/*/catalogs/*}/userEvents:rejoin:\x01*\x1aI\xca\x41\x15retail.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xc0\x01\n\x1a\x63om.google.cloud.retail.v2B\x15UserEventServiceProtoP\x01Z2cloud.google.com/go/retail/apiv2/retailpb;retailpb\xa2\x02\x06RETAIL\xaa\x02\x16Google.Cloud.Retail.V2\xca\x02\x16Google\\Cloud\\Retail\\V2\xea\x02\x19Google::Cloud::Retail::V2b\x06proto3"

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
    ["google.cloud.retail.v2.UserEvent", "google/cloud/retail/v2/user_event.proto"],
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
    module Retail
      module V2
        WriteUserEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.WriteUserEventRequest").msgclass
        CollectUserEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.CollectUserEventRequest").msgclass
        RejoinUserEventsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.RejoinUserEventsRequest").msgclass
        RejoinUserEventsRequest::UserEventRejoinScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.RejoinUserEventsRequest.UserEventRejoinScope").enummodule
        RejoinUserEventsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.RejoinUserEventsResponse").msgclass
        RejoinUserEventsMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.RejoinUserEventsMetadata").msgclass
      end
    end
  end
end
