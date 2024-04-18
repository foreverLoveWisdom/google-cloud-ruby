# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/search_tuning_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/discoveryengine/v1beta/import_config_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n?google/cloud/discoveryengine/v1beta/search_tuning_service.proto\x12#google.cloud.discoveryengine.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x37google/cloud/discoveryengine/v1beta/import_config.proto\x1a#google/longrunning/operations.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xb8\x03\n\x17TrainCustomModelRequest\x12k\n\x12gcs_training_input\x18\x02 \x01(\x0b\x32M.google.cloud.discoveryengine.v1beta.TrainCustomModelRequest.GcsTrainingInputH\x00\x12\x44\n\ndata_store\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x12\x12\n\nmodel_type\x18\x03 \x01(\t\x12L\n\x0c\x65rror_config\x18\x04 \x01(\x0b\x32\x36.google.cloud.discoveryengine.v1beta.ImportErrorConfig\x1av\n\x10GcsTrainingInput\x12\x18\n\x10\x63orpus_data_path\x18\x01 \x01(\t\x12\x17\n\x0fquery_data_path\x18\x02 \x01(\t\x12\x17\n\x0ftrain_data_path\x18\x03 \x01(\t\x12\x16\n\x0etest_data_path\x18\x04 \x01(\tB\x10\n\x0etraining_input\"\xa9\x01\n\x18TrainCustomModelResponse\x12)\n\rerror_samples\x18\x01 \x03(\x0b\x32\x12.google.rpc.Status\x12L\n\x0c\x65rror_config\x18\x02 \x01(\x0b\x32\x36.google.cloud.discoveryengine.v1beta.ImportErrorConfig\x12\x14\n\x0cmodel_status\x18\x03 \x01(\t\"|\n\x18TrainCustomModelMetadata\x12/\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp2\xbf\x03\n\x13SearchTuningService\x12\xd3\x02\n\x10TrainCustomModel\x12<.google.cloud.discoveryengine.v1beta.TrainCustomModelRequest\x1a\x1d.google.longrunning.Operation\"\xe1\x01\xca\x41|\n<google.cloud.discoveryengine.v1beta.TrainCustomModelResponse\x12<google.cloud.discoveryengine.v1beta.TrainCustomModelMetadata\x82\xd3\xe4\x93\x02\\\"W/v1beta/{data_store=projects/*/locations/*/collections/*/dataStores/*}:trainCustomModel:\x01*\x1aR\xca\x41\x1e\x64iscoveryengine.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x9f\x02\n\'com.google.cloud.discoveryengine.v1betaB\x18SearchTuningServiceProtoP\x01ZQcloud.google.com/go/discoveryengine/apiv1beta/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02#Google.Cloud.DiscoveryEngine.V1Beta\xca\x02#Google\\Cloud\\DiscoveryEngine\\V1beta\xea\x02&Google::Cloud::DiscoveryEngine::V1betab\x06proto3"

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
    ["google.cloud.discoveryengine.v1beta.ImportErrorConfig", "google/cloud/discoveryengine/v1beta/import_config.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
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
    module DiscoveryEngine
      module V1beta
        TrainCustomModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.TrainCustomModelRequest").msgclass
        TrainCustomModelRequest::GcsTrainingInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.TrainCustomModelRequest.GcsTrainingInput").msgclass
        TrainCustomModelResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.TrainCustomModelResponse").msgclass
        TrainCustomModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.TrainCustomModelMetadata").msgclass
      end
    end
  end
end