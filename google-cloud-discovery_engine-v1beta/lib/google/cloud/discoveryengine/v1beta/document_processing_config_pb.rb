# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/document_processing_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\nDgoogle/cloud/discoveryengine/v1beta/document_processing_config.proto\x12#google.cloud.discoveryengine.v1beta\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xc1\x08\n\x18\x44ocumentProcessingConfig\x12\x0c\n\x04name\x18\x01 \x01(\t\x12k\n\x16\x64\x65\x66\x61ult_parsing_config\x18\x04 \x01(\x0b\x32K.google.cloud.discoveryengine.v1beta.DocumentProcessingConfig.ParsingConfig\x12{\n\x18parsing_config_overrides\x18\x05 \x03(\x0b\x32Y.google.cloud.discoveryengine.v1beta.DocumentProcessingConfig.ParsingConfigOverridesEntry\x1a\x92\x03\n\rParsingConfig\x12\x82\x01\n\x16\x64igital_parsing_config\x18\x01 \x01(\x0b\x32`.google.cloud.discoveryengine.v1beta.DocumentProcessingConfig.ParsingConfig.DigitalParsingConfigH\x00\x12z\n\x12ocr_parsing_config\x18\x02 \x01(\x0b\x32\\.google.cloud.discoveryengine.v1beta.DocumentProcessingConfig.ParsingConfig.OcrParsingConfigH\x00\x1a\x16\n\x14\x44igitalParsingConfig\x1aO\n\x10OcrParsingConfig\x12\"\n\x1a\x65nhanced_document_elements\x18\x01 \x03(\t\x12\x17\n\x0fuse_native_text\x18\x02 \x01(\x08\x42\x17\n\x15type_dedicated_config\x1a\x8a\x01\n\x1bParsingConfigOverridesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12Z\n\x05value\x18\x02 \x01(\x0b\x32K.google.cloud.discoveryengine.v1beta.DocumentProcessingConfig.ParsingConfig:\x02\x38\x01:\x8a\x02\xea\x41\x86\x02\n7discoveryengine.googleapis.com/DocumentProcessingConfig\x12Xprojects/{project}/locations/{location}/dataStores/{data_store}/documentProcessingConfig\x12qprojects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/documentProcessingConfigB\xa4\x02\n\'com.google.cloud.discoveryengine.v1betaB\x1d\x44ocumentProcessingConfigProtoP\x01ZQcloud.google.com/go/discoveryengine/apiv1beta/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02#Google.Cloud.DiscoveryEngine.V1Beta\xca\x02#Google\\Cloud\\DiscoveryEngine\\V1beta\xea\x02&Google::Cloud::DiscoveryEngine::V1betab\x06proto3"

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
    module DiscoveryEngine
      module V1beta
        DocumentProcessingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.DocumentProcessingConfig").msgclass
        DocumentProcessingConfig::ParsingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.DocumentProcessingConfig.ParsingConfig").msgclass
        DocumentProcessingConfig::ParsingConfig::DigitalParsingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.DocumentProcessingConfig.ParsingConfig.DigitalParsingConfig").msgclass
        DocumentProcessingConfig::ParsingConfig::OcrParsingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.DocumentProcessingConfig.ParsingConfig.OcrParsingConfig").msgclass
      end
    end
  end
end