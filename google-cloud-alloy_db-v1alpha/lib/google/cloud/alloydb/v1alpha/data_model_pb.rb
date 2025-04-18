# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/alloydb/v1alpha/data_model.proto

require 'google/protobuf'


descriptor_data = "\n-google/cloud/alloydb/v1alpha/data_model.proto\x12\x1cgoogle.cloud.alloydb.v1alpha\"\x85\x01\n\tSqlResult\x12>\n\x07\x63olumns\x18\x01 \x03(\x0b\x32-.google.cloud.alloydb.v1alpha.SqlResultColumn\x12\x38\n\x04rows\x18\x02 \x03(\x0b\x32*.google.cloud.alloydb.v1alpha.SqlResultRow\"-\n\x0fSqlResultColumn\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0c\n\x04type\x18\x02 \x01(\t\"L\n\x0cSqlResultRow\x12<\n\x06values\x18\x01 \x03(\x0b\x32,.google.cloud.alloydb.v1alpha.SqlResultValue\"V\n\x0eSqlResultValue\x12\x12\n\x05value\x18\x01 \x01(\tH\x00\x88\x01\x01\x12\x17\n\nnull_value\x18\x02 \x01(\x08H\x01\x88\x01\x01\x42\x08\n\x06_valueB\r\n\x0b_null_valueB\xd0\x01\n com.google.cloud.alloydb.v1alphaB\x0e\x44\x61taModelProtoP\x01Z:cloud.google.com/go/alloydb/apiv1alpha/alloydbpb;alloydbpb\xaa\x02\x1cGoogle.Cloud.AlloyDb.V1Alpha\xca\x02\x1cGoogle\\Cloud\\AlloyDb\\V1alpha\xea\x02\x1fGoogle::Cloud::AlloyDB::V1alphab\x06proto3"

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
  module Cloud
    module AlloyDB
      module V1alpha
        SqlResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.SqlResult").msgclass
        SqlResultColumn = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.SqlResultColumn").msgclass
        SqlResultRow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.SqlResultRow").msgclass
        SqlResultValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.SqlResultValue").msgclass
      end
    end
  end
end
