# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/datastore/v1/datastore.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/routing_pb'
require 'google/datastore/v1/aggregation_result_pb'
require 'google/datastore/v1/entity_pb'
require 'google/datastore/v1/query_pb'
require 'google/datastore/v1/query_profile_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n#google/datastore/v1/datastore.proto\x12\x13google.datastore.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x18google/api/routing.proto\x1a,google/datastore/v1/aggregation_result.proto\x1a google/datastore/v1/entity.proto\x1a\x1fgoogle/datastore/v1/query.proto\x1a\'google/datastore/v1/query_profile.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xdc\x01\n\rLookupRequest\x12\x17\n\nproject_id\x18\x08 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x61tabase_id\x18\t \x01(\t\x12\x36\n\x0cread_options\x18\x01 \x01(\x0b\x32 .google.datastore.v1.ReadOptions\x12+\n\x04keys\x18\x03 \x03(\x0b\x32\x18.google.datastore.v1.KeyB\x03\xe0\x41\x02\x12\x38\n\rproperty_mask\x18\x05 \x01(\x0b\x32!.google.datastore.v1.PropertyMask\"\xe6\x01\n\x0eLookupResponse\x12\x30\n\x05\x66ound\x18\x01 \x03(\x0b\x32!.google.datastore.v1.EntityResult\x12\x32\n\x07missing\x18\x02 \x03(\x0b\x32!.google.datastore.v1.EntityResult\x12*\n\x08\x64\x65\x66\x65rred\x18\x03 \x03(\x0b\x32\x18.google.datastore.v1.Key\x12\x13\n\x0btransaction\x18\x05 \x01(\x0c\x12-\n\tread_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\x9b\x03\n\x0fRunQueryRequest\x12\x17\n\nproject_id\x18\x08 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x61tabase_id\x18\t \x01(\t\x12\x36\n\x0cpartition_id\x18\x02 \x01(\x0b\x32 .google.datastore.v1.PartitionId\x12\x36\n\x0cread_options\x18\x01 \x01(\x0b\x32 .google.datastore.v1.ReadOptions\x12+\n\x05query\x18\x03 \x01(\x0b\x32\x1a.google.datastore.v1.QueryH\x00\x12\x32\n\tgql_query\x18\x07 \x01(\x0b\x32\x1d.google.datastore.v1.GqlQueryH\x00\x12\x38\n\rproperty_mask\x18\n \x01(\x0b\x32!.google.datastore.v1.PropertyMask\x12\x41\n\x0f\x65xplain_options\x18\x0c \x01(\x0b\x32#.google.datastore.v1.ExplainOptionsB\x03\xe0\x41\x01\x42\x0c\n\nquery_type\"\xc6\x01\n\x10RunQueryResponse\x12\x34\n\x05\x62\x61tch\x18\x01 \x01(\x0b\x32%.google.datastore.v1.QueryResultBatch\x12)\n\x05query\x18\x02 \x01(\x0b\x32\x1a.google.datastore.v1.Query\x12\x13\n\x0btransaction\x18\x05 \x01(\x0c\x12<\n\x0f\x65xplain_metrics\x18\t \x01(\x0b\x32#.google.datastore.v1.ExplainMetrics\"\x83\x03\n\x1aRunAggregationQueryRequest\x12\x17\n\nproject_id\x18\x08 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x61tabase_id\x18\t \x01(\t\x12\x36\n\x0cpartition_id\x18\x02 \x01(\x0b\x32 .google.datastore.v1.PartitionId\x12\x36\n\x0cread_options\x18\x01 \x01(\x0b\x32 .google.datastore.v1.ReadOptions\x12\x42\n\x11\x61ggregation_query\x18\x03 \x01(\x0b\x32%.google.datastore.v1.AggregationQueryH\x00\x12\x32\n\tgql_query\x18\x07 \x01(\x0b\x32\x1d.google.datastore.v1.GqlQueryH\x00\x12\x41\n\x0f\x65xplain_options\x18\x0b \x01(\x0b\x32#.google.datastore.v1.ExplainOptionsB\x03\xe0\x41\x01\x42\x0c\n\nquery_type\"\xe2\x01\n\x1bRunAggregationQueryResponse\x12:\n\x05\x62\x61tch\x18\x01 \x01(\x0b\x32+.google.datastore.v1.AggregationResultBatch\x12\x34\n\x05query\x18\x02 \x01(\x0b\x32%.google.datastore.v1.AggregationQuery\x12\x13\n\x0btransaction\x18\x05 \x01(\x0c\x12<\n\x0f\x65xplain_metrics\x18\t \x01(\x0b\x32#.google.datastore.v1.ExplainMetrics\"\x8d\x01\n\x17\x42\x65ginTransactionRequest\x12\x17\n\nproject_id\x18\x08 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x61tabase_id\x18\t \x01(\t\x12\x44\n\x13transaction_options\x18\n \x01(\x0b\x32\'.google.datastore.v1.TransactionOptions\"/\n\x18\x42\x65ginTransactionResponse\x12\x13\n\x0btransaction\x18\x01 \x01(\x0c\"Y\n\x0fRollbackRequest\x12\x17\n\nproject_id\x18\x08 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x61tabase_id\x18\t \x01(\t\x12\x18\n\x0btransaction\x18\x01 \x01(\x0c\x42\x03\xe0\x41\x02\"\x12\n\x10RollbackResponse\"\xe8\x02\n\rCommitRequest\x12\x17\n\nproject_id\x18\x08 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x61tabase_id\x18\t \x01(\t\x12\x35\n\x04mode\x18\x05 \x01(\x0e\x32\'.google.datastore.v1.CommitRequest.Mode\x12\x15\n\x0btransaction\x18\x01 \x01(\x0cH\x00\x12I\n\x16single_use_transaction\x18\n \x01(\x0b\x32\'.google.datastore.v1.TransactionOptionsH\x00\x12\x30\n\tmutations\x18\x06 \x03(\x0b\x32\x1d.google.datastore.v1.Mutation\"F\n\x04Mode\x12\x14\n\x10MODE_UNSPECIFIED\x10\x00\x12\x11\n\rTRANSACTIONAL\x10\x01\x12\x15\n\x11NON_TRANSACTIONAL\x10\x02\x42\x16\n\x14transaction_selector\"\x97\x01\n\x0e\x43ommitResponse\x12=\n\x10mutation_results\x18\x03 \x03(\x0b\x32#.google.datastore.v1.MutationResult\x12\x15\n\rindex_updates\x18\x04 \x01(\x05\x12/\n\x0b\x63ommit_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"o\n\x12\x41llocateIdsRequest\x12\x17\n\nproject_id\x18\x08 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x61tabase_id\x18\t \x01(\t\x12+\n\x04keys\x18\x01 \x03(\x0b\x32\x18.google.datastore.v1.KeyB\x03\xe0\x41\x02\"=\n\x13\x41llocateIdsResponse\x12&\n\x04keys\x18\x01 \x03(\x0b\x32\x18.google.datastore.v1.Key\"n\n\x11ReserveIdsRequest\x12\x17\n\nproject_id\x18\x08 \x01(\tB\x03\xe0\x41\x02\x12\x13\n\x0b\x64\x61tabase_id\x18\t \x01(\t\x12+\n\x04keys\x18\x01 \x03(\x0b\x32\x18.google.datastore.v1.KeyB\x03\xe0\x41\x02\"\x14\n\x12ReserveIdsResponse\"\xf2\x04\n\x08Mutation\x12-\n\x06insert\x18\x04 \x01(\x0b\x32\x1b.google.datastore.v1.EntityH\x00\x12-\n\x06update\x18\x05 \x01(\x0b\x32\x1b.google.datastore.v1.EntityH\x00\x12-\n\x06upsert\x18\x06 \x01(\x0b\x32\x1b.google.datastore.v1.EntityH\x00\x12*\n\x06\x64\x65lete\x18\x07 \x01(\x0b\x32\x18.google.datastore.v1.KeyH\x00\x12\x16\n\x0c\x62\x61se_version\x18\x08 \x01(\x03H\x01\x12\x31\n\x0bupdate_time\x18\x0b \x01(\x0b\x32\x1a.google.protobuf.TimestampH\x01\x12^\n\x1c\x63onflict_resolution_strategy\x18\n \x01(\x0e\x32\x38.google.datastore.v1.Mutation.ConflictResolutionStrategy\x12\x38\n\rproperty_mask\x18\t \x01(\x0b\x32!.google.datastore.v1.PropertyMask\x12H\n\x13property_transforms\x18\x0c \x03(\x0b\x32&.google.datastore.v1.PropertyTransformB\x03\xe0\x41\x01\"R\n\x1a\x43onflictResolutionStrategy\x12\x18\n\x14STRATEGY_UNSPECIFIED\x10\x00\x12\x10\n\x0cSERVER_VALUE\x10\x01\x12\x08\n\x04\x46\x41IL\x10\x03\x42\x0b\n\toperationB\x1d\n\x1b\x63onflict_detection_strategy\"\xe3\x03\n\x11PropertyTransform\x12\x15\n\x08property\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12Q\n\x13set_to_server_value\x18\x02 \x01(\x0e\x32\x32.google.datastore.v1.PropertyTransform.ServerValueH\x00\x12/\n\tincrement\x18\x03 \x01(\x0b\x32\x1a.google.datastore.v1.ValueH\x00\x12-\n\x07maximum\x18\x04 \x01(\x0b\x32\x1a.google.datastore.v1.ValueH\x00\x12-\n\x07minimum\x18\x05 \x01(\x0b\x32\x1a.google.datastore.v1.ValueH\x00\x12\x42\n\x17\x61ppend_missing_elements\x18\x06 \x01(\x0b\x32\x1f.google.datastore.v1.ArrayValueH\x00\x12@\n\x15remove_all_from_array\x18\x07 \x01(\x0b\x32\x1f.google.datastore.v1.ArrayValueH\x00\"=\n\x0bServerValue\x12\x1c\n\x18SERVER_VALUE_UNSPECIFIED\x10\x00\x12\x10\n\x0cREQUEST_TIME\x10\x01\x42\x10\n\x0etransform_type\"\xfc\x01\n\x0eMutationResult\x12%\n\x03key\x18\x03 \x01(\x0b\x32\x18.google.datastore.v1.Key\x12\x0f\n\x07version\x18\x04 \x01(\x03\x12/\n\x0b\x63reate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x19\n\x11\x63onflict_detected\x18\x05 \x01(\x08\x12\x35\n\x11transform_results\x18\x08 \x03(\x0b\x32\x1a.google.datastore.v1.Value\"\x1d\n\x0cPropertyMask\x12\r\n\x05paths\x18\x01 \x03(\t\"\xca\x02\n\x0bReadOptions\x12L\n\x10read_consistency\x18\x01 \x01(\x0e\x32\x30.google.datastore.v1.ReadOptions.ReadConsistencyH\x00\x12\x15\n\x0btransaction\x18\x02 \x01(\x0cH\x00\x12\x42\n\x0fnew_transaction\x18\x03 \x01(\x0b\x32\'.google.datastore.v1.TransactionOptionsH\x00\x12/\n\tread_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampH\x00\"M\n\x0fReadConsistency\x12 \n\x1cREAD_CONSISTENCY_UNSPECIFIED\x10\x00\x12\n\n\x06STRONG\x10\x01\x12\x0c\n\x08\x45VENTUAL\x10\x02\x42\x12\n\x10\x63onsistency_type\"\x92\x02\n\x12TransactionOptions\x12G\n\nread_write\x18\x01 \x01(\x0b\x32\x31.google.datastore.v1.TransactionOptions.ReadWriteH\x00\x12\x45\n\tread_only\x18\x02 \x01(\x0b\x32\x30.google.datastore.v1.TransactionOptions.ReadOnlyH\x00\x1a)\n\tReadWrite\x12\x1c\n\x14previous_transaction\x18\x01 \x01(\x0c\x1a\x39\n\x08ReadOnly\x12-\n\tread_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x06\n\x04mode2\xe1\r\n\tDatastore\x12\xc0\x01\n\x06Lookup\x12\".google.datastore.v1.LookupRequest\x1a#.google.datastore.v1.LookupResponse\"m\xda\x41\x1cproject_id,read_options,keys\x82\xd3\xe4\x93\x02%\" /v1/projects/{project_id}:lookup:\x01*\x8a\xd3\xe4\x93\x02\x1d\x12\x0c\n\nproject_id\x12\r\n\x0b\x64\x61tabase_id\x12\xa9\x01\n\x08RunQuery\x12$.google.datastore.v1.RunQueryRequest\x1a%.google.datastore.v1.RunQueryResponse\"P\x82\xd3\xe4\x93\x02\'\"\"/v1/projects/{project_id}:runQuery:\x01*\x8a\xd3\xe4\x93\x02\x1d\x12\x0c\n\nproject_id\x12\r\n\x0b\x64\x61tabase_id\x12\xd5\x01\n\x13RunAggregationQuery\x12/.google.datastore.v1.RunAggregationQueryRequest\x1a\x30.google.datastore.v1.RunAggregationQueryResponse\"[\x82\xd3\xe4\x93\x02\x32\"-/v1/projects/{project_id}:runAggregationQuery:\x01*\x8a\xd3\xe4\x93\x02\x1d\x12\x0c\n\nproject_id\x12\r\n\x0b\x64\x61tabase_id\x12\xd6\x01\n\x10\x42\x65ginTransaction\x12,.google.datastore.v1.BeginTransactionRequest\x1a-.google.datastore.v1.BeginTransactionResponse\"e\xda\x41\nproject_id\x82\xd3\xe4\x93\x02/\"*/v1/projects/{project_id}:beginTransaction:\x01*\x8a\xd3\xe4\x93\x02\x1d\x12\x0c\n\nproject_id\x12\r\n\x0b\x64\x61tabase_id\x12\xe6\x01\n\x06\x43ommit\x12\".google.datastore.v1.CommitRequest\x1a#.google.datastore.v1.CommitResponse\"\x92\x01\xda\x41%project_id,mode,transaction,mutations\xda\x41\x19project_id,mode,mutations\x82\xd3\xe4\x93\x02%\" /v1/projects/{project_id}:commit:\x01*\x8a\xd3\xe4\x93\x02\x1d\x12\x0c\n\nproject_id\x12\r\n\x0b\x64\x61tabase_id\x12\xc2\x01\n\x08Rollback\x12$.google.datastore.v1.RollbackRequest\x1a%.google.datastore.v1.RollbackResponse\"i\xda\x41\x16project_id,transaction\x82\xd3\xe4\x93\x02\'\"\"/v1/projects/{project_id}:rollback:\x01*\x8a\xd3\xe4\x93\x02\x1d\x12\x0c\n\nproject_id\x12\r\n\x0b\x64\x61tabase_id\x12\xc7\x01\n\x0b\x41llocateIds\x12\'.google.datastore.v1.AllocateIdsRequest\x1a(.google.datastore.v1.AllocateIdsResponse\"e\xda\x41\x0fproject_id,keys\x82\xd3\xe4\x93\x02*\"%/v1/projects/{project_id}:allocateIds:\x01*\x8a\xd3\xe4\x93\x02\x1d\x12\x0c\n\nproject_id\x12\r\n\x0b\x64\x61tabase_id\x12\xc3\x01\n\nReserveIds\x12&.google.datastore.v1.ReserveIdsRequest\x1a\'.google.datastore.v1.ReserveIdsResponse\"d\xda\x41\x0fproject_id,keys\x82\xd3\xe4\x93\x02)\"$/v1/projects/{project_id}:reserveIds:\x01*\x8a\xd3\xe4\x93\x02\x1d\x12\x0c\n\nproject_id\x12\r\n\x0b\x64\x61tabase_id\x1av\xca\x41\x18\x64\x61tastore.googleapis.com\xd2\x41Xhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/datastoreB\xbf\x01\n\x17\x63om.google.datastore.v1B\x0e\x44\x61tastoreProtoP\x01Z;cloud.google.com/go/datastore/apiv1/datastorepb;datastorepb\xaa\x02\x19Google.Cloud.Datastore.V1\xca\x02\x19Google\\Cloud\\Datastore\\V1\xea\x02\x1cGoogle::Cloud::Datastore::V1b\x06proto3"

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
    ["google.datastore.v1.Key", "google/datastore/v1/entity.proto"],
    ["google.datastore.v1.EntityResult", "google/datastore/v1/query.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.datastore.v1.ExplainOptions", "google/datastore/v1/query_profile.proto"],
    ["google.datastore.v1.AggregationResultBatch", "google/datastore/v1/aggregation_result.proto"],
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
    module Datastore
      module V1
        LookupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.LookupRequest").msgclass
        LookupResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.LookupResponse").msgclass
        RunQueryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.RunQueryRequest").msgclass
        RunQueryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.RunQueryResponse").msgclass
        RunAggregationQueryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.RunAggregationQueryRequest").msgclass
        RunAggregationQueryResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.RunAggregationQueryResponse").msgclass
        BeginTransactionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.BeginTransactionRequest").msgclass
        BeginTransactionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.BeginTransactionResponse").msgclass
        RollbackRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.RollbackRequest").msgclass
        RollbackResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.RollbackResponse").msgclass
        CommitRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.CommitRequest").msgclass
        CommitRequest::Mode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.CommitRequest.Mode").enummodule
        CommitResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.CommitResponse").msgclass
        AllocateIdsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.AllocateIdsRequest").msgclass
        AllocateIdsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.AllocateIdsResponse").msgclass
        ReserveIdsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.ReserveIdsRequest").msgclass
        ReserveIdsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.ReserveIdsResponse").msgclass
        Mutation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.Mutation").msgclass
        Mutation::ConflictResolutionStrategy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.Mutation.ConflictResolutionStrategy").enummodule
        PropertyTransform = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.PropertyTransform").msgclass
        PropertyTransform::ServerValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.PropertyTransform.ServerValue").enummodule
        MutationResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.MutationResult").msgclass
        PropertyMask = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.PropertyMask").msgclass
        ReadOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.ReadOptions").msgclass
        ReadOptions::ReadConsistency = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.ReadOptions.ReadConsistency").enummodule
        TransactionOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.TransactionOptions").msgclass
        TransactionOptions::ReadWrite = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.TransactionOptions.ReadWrite").msgclass
        TransactionOptions::ReadOnly = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.datastore.v1.TransactionOptions.ReadOnly").msgclass
      end
    end
  end
end
