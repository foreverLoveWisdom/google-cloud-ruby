# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/bigtable/v2/response_params.proto

require 'google/protobuf'


descriptor_data = "\n(google/bigtable/v2/response_params.proto\x12\x12google.bigtable.v2\"Z\n\x0eResponseParams\x12\x14\n\x07zone_id\x18\x01 \x01(\tH\x00\x88\x01\x01\x12\x17\n\ncluster_id\x18\x02 \x01(\tH\x01\x88\x01\x01\x42\n\n\x08_zone_idB\r\n\x0b_cluster_idB\xbf\x01\n\x16\x63om.google.bigtable.v2B\x13ResponseParamsProtoP\x01Z:google.golang.org/genproto/googleapis/bigtable/v2;bigtable\xaa\x02\x18Google.Cloud.Bigtable.V2\xca\x02\x18Google\\Cloud\\Bigtable\\V2\xea\x02\x1bGoogle::Cloud::Bigtable::V2b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
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
  module Cloud
    module Bigtable
      module V2
        ResponseParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.v2.ResponseParams").msgclass
      end
    end
  end
end
