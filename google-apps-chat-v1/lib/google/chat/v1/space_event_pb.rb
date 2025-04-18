# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/chat/v1/space_event.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/chat/v1/event_payload_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n google/chat/v1/space_event.proto\x12\x0egoogle.chat.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\"google/chat/v1/event_payload.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xce\r\n\nSpaceEvent\x12\x0c\n\x04name\x18\x01 \x01(\t\x12.\n\nevent_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x12\n\nevent_type\x18\x06 \x01(\t\x12M\n\x1amessage_created_event_data\x18\x0c \x01(\x0b\x32\'.google.chat.v1.MessageCreatedEventDataH\x00\x12M\n\x1amessage_updated_event_data\x18\r \x01(\x0b\x32\'.google.chat.v1.MessageUpdatedEventDataH\x00\x12M\n\x1amessage_deleted_event_data\x18\x0e \x01(\x0b\x32\'.google.chat.v1.MessageDeletedEventDataH\x00\x12X\n message_batch_created_event_data\x18\x1a \x01(\x0b\x32,.google.chat.v1.MessageBatchCreatedEventDataH\x00\x12X\n message_batch_updated_event_data\x18\x1b \x01(\x0b\x32,.google.chat.v1.MessageBatchUpdatedEventDataH\x00\x12X\n message_batch_deleted_event_data\x18\x1c \x01(\x0b\x32,.google.chat.v1.MessageBatchDeletedEventDataH\x00\x12I\n\x18space_updated_event_data\x18\x0f \x01(\x0b\x32%.google.chat.v1.SpaceUpdatedEventDataH\x00\x12T\n\x1espace_batch_updated_event_data\x18\x1d \x01(\x0b\x32*.google.chat.v1.SpaceBatchUpdatedEventDataH\x00\x12S\n\x1dmembership_created_event_data\x18\x11 \x01(\x0b\x32*.google.chat.v1.MembershipCreatedEventDataH\x00\x12S\n\x1dmembership_updated_event_data\x18\x12 \x01(\x0b\x32*.google.chat.v1.MembershipUpdatedEventDataH\x00\x12T\n\x1dmembership_deleted_event_data\x18\xdb\x01 \x01(\x0b\x32*.google.chat.v1.MembershipDeletedEventDataH\x00\x12^\n#membership_batch_created_event_data\x18\x1f \x01(\x0b\x32/.google.chat.v1.MembershipBatchCreatedEventDataH\x00\x12^\n#membership_batch_updated_event_data\x18  \x01(\x0b\x32/.google.chat.v1.MembershipBatchUpdatedEventDataH\x00\x12^\n#membership_batch_deleted_event_data\x18! \x01(\x0b\x32/.google.chat.v1.MembershipBatchDeletedEventDataH\x00\x12O\n\x1breaction_created_event_data\x18\x15 \x01(\x0b\x32(.google.chat.v1.ReactionCreatedEventDataH\x00\x12O\n\x1breaction_deleted_event_data\x18\x16 \x01(\x0b\x32(.google.chat.v1.ReactionDeletedEventDataH\x00\x12Z\n!reaction_batch_created_event_data\x18\" \x01(\x0b\x32-.google.chat.v1.ReactionBatchCreatedEventDataH\x00\x12Z\n!reaction_batch_deleted_event_data\x18# \x01(\x0b\x32-.google.chat.v1.ReactionBatchDeletedEventDataH\x00:M\xea\x41J\n\x1e\x63hat.googleapis.com/SpaceEvent\x12(spaces/{space}/spaceEvents/{space_event}B\t\n\x07payload\"L\n\x14GetSpaceEventRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x63hat.googleapis.com/SpaceEvent\"\x96\x01\n\x16ListSpaceEventsRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \x12\x1e\x63hat.googleapis.com/SpaceEvent\x12\x16\n\tpage_size\x18\x05 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x08 \x01(\tB\x03\xe0\x41\x02\"d\n\x17ListSpaceEventsResponse\x12\x30\n\x0cspace_events\x18\x01 \x03(\x0b\x32\x1a.google.chat.v1.SpaceEvent\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\tB\x9a\x01\n\x12\x63om.google.chat.v1B\x0fSpaceEventProtoP\x01Z,cloud.google.com/go/chat/apiv1/chatpb;chatpb\xaa\x02\x13Google.Apps.Chat.V1\xca\x02\x13Google\\Apps\\Chat\\V1\xea\x02\x16Google::Apps::Chat::V1b\x06proto3"

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
    ["google.chat.v1.MessageCreatedEventData", "google/chat/v1/event_payload.proto"],
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
  module Apps
    module Chat
      module V1
        SpaceEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.SpaceEvent").msgclass
        GetSpaceEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.GetSpaceEventRequest").msgclass
        ListSpaceEventsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ListSpaceEventsRequest").msgclass
        ListSpaceEventsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ListSpaceEventsResponse").msgclass
      end
    end
  end
end
