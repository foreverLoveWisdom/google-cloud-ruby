# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/firestore/admin/v1/backup.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n&google/firestore/admin/v1/backup.proto\x12\x19google.firestore.admin.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xe0\x04\n\x06\x42\x61\x63kup\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12;\n\x08\x64\x61tabase\x18\x02 \x01(\tB)\xe0\x41\x03\xfa\x41#\n!firestore.googleapis.com/Database\x12\x19\n\x0c\x64\x61tabase_uid\x18\x07 \x01(\tB\x03\xe0\x41\x03\x12\x36\n\rsnapshot_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x65xpire_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12;\n\x05stats\x18\x06 \x01(\x0b\x32\'.google.firestore.admin.v1.Backup.StatsB\x03\xe0\x41\x03\x12;\n\x05state\x18\x08 \x01(\x0e\x32\'.google.firestore.admin.v1.Backup.StateB\x03\xe0\x41\x03\x1aW\n\x05Stats\x12\x17\n\nsize_bytes\x18\x01 \x01(\x03\x42\x03\xe0\x41\x03\x12\x1b\n\x0e\x64ocument_count\x18\x02 \x01(\x03\x42\x03\xe0\x41\x03\x12\x18\n\x0bindex_count\x18\x03 \x01(\x03\x42\x03\xe0\x41\x03\"J\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\t\n\x05READY\x10\x02\x12\x11\n\rNOT_AVAILABLE\x10\x03:^\xea\x41[\n\x1f\x66irestore.googleapis.com/Backup\x12\x38projects/{project}/locations/{location}/backups/{backup}B\xda\x01\n\x1d\x63om.google.firestore.admin.v1B\x0b\x42\x61\x63kupProtoP\x01Z9cloud.google.com/go/firestore/apiv1/admin/adminpb;adminpb\xa2\x02\x04GCFS\xaa\x02\x1fGoogle.Cloud.Firestore.Admin.V1\xca\x02\x1fGoogle\\Cloud\\Firestore\\Admin\\V1\xea\x02#Google::Cloud::Firestore::Admin::V1b\x06proto3"

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
    module Firestore
      module Admin
        module V1
          Backup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Backup").msgclass
          Backup::Stats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Backup.Stats").msgclass
          Backup::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.firestore.admin.v1.Backup.State").enummodule
        end
      end
    end
  end
end