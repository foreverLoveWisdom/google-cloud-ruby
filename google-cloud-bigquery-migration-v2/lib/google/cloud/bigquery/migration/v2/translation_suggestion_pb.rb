# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/migration/v2/translation_suggestion.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n?google/cloud/bigquery/migration/v2/translation_suggestion.proto\x12\"google.cloud.bigquery.migration.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\x88\x02\n\x17TranslationReportRecord\x12V\n\x08severity\x18\x01 \x01(\x0e\x32\x44.google.cloud.bigquery.migration.v2.TranslationReportRecord.Severity\x12\x13\n\x0bscript_line\x18\x02 \x01(\x05\x12\x15\n\rscript_column\x18\x03 \x01(\x05\x12\x10\n\x08\x63\x61tegory\x18\x04 \x01(\t\x12\x0f\n\x07message\x18\x05 \x01(\t\"F\n\x08Severity\x12\x18\n\x14SEVERITY_UNSPECIFIED\x10\x00\x12\x08\n\x04INFO\x10\x01\x12\x0b\n\x07WARNING\x10\x02\x12\t\n\x05\x45RROR\x10\x03\x42\xd6\x01\n&com.google.cloud.bigquery.migration.v2B\x1aTranslationSuggestionProtoP\x01ZDcloud.google.com/go/bigquery/migration/apiv2/migrationpb;migrationpb\xaa\x02\"Google.Cloud.BigQuery.Migration.V2\xca\x02\"Google\\Cloud\\BigQuery\\Migration\\V2b\x06proto3"

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
    module Bigquery
      module Migration
        module V2
          TranslationReportRecord = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.TranslationReportRecord").msgclass
          TranslationReportRecord::Severity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.TranslationReportRecord.Severity").enummodule
        end
      end
    end
  end
end
