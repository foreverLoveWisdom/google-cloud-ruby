# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/connection/v1/connection.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n4google/cloud/bigquery/connection/v1/connection.proto\x12#google.cloud.bigquery.connection.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\xba\x01\n\x17\x43reateConnectionRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x1a\n\rconnection_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12H\n\nconnection\x18\x03 \x01(\x0b\x32/.google.cloud.bigquery.connection.v1.ConnectionB\x03\xe0\x41\x02\"Z\n\x14GetConnectionRequest\x12\x42\n\x04name\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\n,bigqueryconnection.googleapis.com/Connection\"\x7f\n\x16ListConnectionsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x16\n\tpage_size\x18\x04 \x01(\x05\x42\x03\xe0\x41\x02\x12\x12\n\npage_token\x18\x03 \x01(\t\"x\n\x17ListConnectionsResponse\x12\x17\n\x0fnext_page_token\x18\x01 \x01(\t\x12\x44\n\x0b\x63onnections\x18\x02 \x03(\x0b\x32/.google.cloud.bigquery.connection.v1.Connection\"\xdd\x01\n\x17UpdateConnectionRequest\x12\x42\n\x04name\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\n,bigqueryconnection.googleapis.com/Connection\x12H\n\nconnection\x18\x02 \x01(\x0b\x32/.google.cloud.bigquery.connection.v1.ConnectionB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"]\n\x17\x44\x65leteConnectionRequest\x12\x42\n\x04name\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\n,bigqueryconnection.googleapis.com/Connection\"\xf0\x05\n\nConnection\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x15\n\rfriendly_name\x18\x02 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12L\n\tcloud_sql\x18\x04 \x01(\x0b\x32\x37.google.cloud.bigquery.connection.v1.CloudSqlPropertiesH\x00\x12\x41\n\x03\x61ws\x18\x08 \x01(\x0b\x32\x32.google.cloud.bigquery.connection.v1.AwsPropertiesH\x00\x12\x45\n\x05\x61zure\x18\x0b \x01(\x0b\x32\x34.google.cloud.bigquery.connection.v1.AzurePropertiesH\x00\x12T\n\rcloud_spanner\x18\x15 \x01(\x0b\x32;.google.cloud.bigquery.connection.v1.CloudSpannerPropertiesH\x00\x12V\n\x0e\x63loud_resource\x18\x16 \x01(\x0b\x32<.google.cloud.bigquery.connection.v1.CloudResourcePropertiesH\x00\x12\x45\n\x05spark\x18\x17 \x01(\x0b\x32\x34.google.cloud.bigquery.connection.v1.SparkPropertiesH\x00\x12\x1a\n\rcreation_time\x18\x05 \x01(\x03\x42\x03\xe0\x41\x03\x12\x1f\n\x12last_modified_time\x18\x06 \x01(\x03\x42\x03\xe0\x41\x03\x12\x1b\n\x0ehas_credential\x18\x07 \x01(\x08\x42\x03\xe0\x41\x03:s\xea\x41p\n,bigqueryconnection.googleapis.com/Connection\x12@projects/{project}/locations/{location}/connections/{connection}B\x0c\n\nproperties\"\xca\x02\n\x12\x43loudSqlProperties\x12\x13\n\x0binstance_id\x18\x01 \x01(\t\x12\x10\n\x08\x64\x61tabase\x18\x02 \x01(\t\x12R\n\x04type\x18\x03 \x01(\x0e\x32\x44.google.cloud.bigquery.connection.v1.CloudSqlProperties.DatabaseType\x12P\n\ncredential\x18\x04 \x01(\x0b\x32\x37.google.cloud.bigquery.connection.v1.CloudSqlCredentialB\x03\xe0\x41\x04\x12\x1f\n\x12service_account_id\x18\x05 \x01(\tB\x03\xe0\x41\x03\"F\n\x0c\x44\x61tabaseType\x12\x1d\n\x19\x44\x41TABASE_TYPE_UNSPECIFIED\x10\x00\x12\x0c\n\x08POSTGRES\x10\x01\x12\t\n\x05MYSQL\x10\x02\"8\n\x12\x43loudSqlCredential\x12\x10\n\x08username\x18\x01 \x01(\t\x12\x10\n\x08password\x18\x02 \x01(\t\"\x81\x01\n\x16\x43loudSpannerProperties\x12\x10\n\x08\x64\x61tabase\x18\x01 \x01(\t\x12\x17\n\x0fuse_parallelism\x18\x02 \x01(\x08\x12 \n\x18use_serverless_analytics\x18\x03 \x01(\x08\x12\x1a\n\rdatabase_role\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\xcf\x01\n\rAwsProperties\x12Z\n\x12\x63ross_account_role\x18\x02 \x01(\x0b\x32\x38.google.cloud.bigquery.connection.v1.AwsCrossAccountRoleB\x02\x18\x01H\x00\x12I\n\x0b\x61\x63\x63\x65ss_role\x18\x03 \x01(\x0b\x32\x32.google.cloud.bigquery.connection.v1.AwsAccessRoleH\x00\x42\x17\n\x15\x61uthentication_method\"^\n\x13\x41wsCrossAccountRole\x12\x13\n\x0biam_role_id\x18\x01 \x01(\t\x12\x18\n\x0biam_user_id\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x65xternal_id\x18\x03 \x01(\tB\x03\xe0\x41\x03\"6\n\rAwsAccessRole\x12\x13\n\x0biam_role_id\x18\x01 \x01(\t\x12\x10\n\x08identity\x18\x02 \x01(\t\"\xcd\x01\n\x0f\x41zureProperties\x12\x18\n\x0b\x61pplication\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x16\n\tclient_id\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x16\n\tobject_id\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\x12\x63ustomer_tenant_id\x18\x04 \x01(\t\x12\x14\n\x0credirect_uri\x18\x05 \x01(\t\x12\'\n\x1f\x66\x65\x64\x65rated_application_client_id\x18\x06 \x01(\t\x12\x15\n\x08identity\x18\x07 \x01(\tB\x03\xe0\x41\x03\":\n\x17\x43loudResourceProperties\x12\x1f\n\x12service_account_id\x18\x01 \x01(\tB\x03\xe0\x41\x03\"]\n\x16MetastoreServiceConfig\x12\x43\n\x11metastore_service\x18\x01 \x01(\tB(\xe0\x41\x01\xfa\x41\"\n metastore.googleapis.com/Service\"]\n\x18SparkHistoryServerConfig\x12\x41\n\x10\x64\x61taproc_cluster\x18\x01 \x01(\tB\'\xe0\x41\x01\xfa\x41!\n\x1f\x64\x61taproc.googleapis.com/Cluster\"\xff\x01\n\x0fSparkProperties\x12\x1f\n\x12service_account_id\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x62\n\x18metastore_service_config\x18\x03 \x01(\x0b\x32;.google.cloud.bigquery.connection.v1.MetastoreServiceConfigB\x03\xe0\x41\x01\x12g\n\x1bspark_history_server_config\x18\x04 \x01(\x0b\x32=.google.cloud.bigquery.connection.v1.SparkHistoryServerConfigB\x03\xe0\x41\x01\x32\xcc\r\n\x11\x43onnectionService\x12\xe8\x01\n\x10\x43reateConnection\x12<.google.cloud.bigquery.connection.v1.CreateConnectionRequest\x1a/.google.cloud.bigquery.connection.v1.Connection\"e\x82\xd3\xe4\x93\x02=\"//v1/{parent=projects/*/locations/*}/connections:\nconnection\xda\x41\x1fparent,connection,connection_id\x12\xbb\x01\n\rGetConnection\x12\x39.google.cloud.bigquery.connection.v1.GetConnectionRequest\x1a/.google.cloud.bigquery.connection.v1.Connection\">\x82\xd3\xe4\x93\x02\x31\x12//v1/{name=projects/*/locations/*/connections/*}\xda\x41\x04name\x12\xce\x01\n\x0fListConnections\x12;.google.cloud.bigquery.connection.v1.ListConnectionsRequest\x1a<.google.cloud.bigquery.connection.v1.ListConnectionsResponse\"@\x82\xd3\xe4\x93\x02\x31\x12//v1/{parent=projects/*/locations/*}/connections\xda\x41\x06parent\x12\xe4\x01\n\x10UpdateConnection\x12<.google.cloud.bigquery.connection.v1.UpdateConnectionRequest\x1a/.google.cloud.bigquery.connection.v1.Connection\"a\x82\xd3\xe4\x93\x02=2//v1/{name=projects/*/locations/*/connections/*}:\nconnection\xda\x41\x1bname,connection,update_mask\x12\xa8\x01\n\x10\x44\x65leteConnection\x12<.google.cloud.bigquery.connection.v1.DeleteConnectionRequest\x1a\x16.google.protobuf.Empty\">\x82\xd3\xe4\x93\x02\x31*//v1/{name=projects/*/locations/*/connections/*}\xda\x41\x04name\x12\xa9\x01\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"^\x82\xd3\xe4\x93\x02\x45\"@/v1/{resource=projects/*/locations/*/connections/*}:getIamPolicy:\x01*\xda\x41\x10resource,options\x12\xa8\x01\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"]\x82\xd3\xe4\x93\x02\x45\"@/v1/{resource=projects/*/locations/*/connections/*}:setIamPolicy:\x01*\xda\x41\x0fresource,policy\x12\xd3\x01\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"h\x82\xd3\xe4\x93\x02K\"F/v1/{resource=projects/*/locations/*/connections/*}:testIamPermissions:\x01*\xda\x41\x14resource,permissions\x1a~\xca\x41!bigqueryconnection.googleapis.com\xd2\x41Whttps://www.googleapis.com/auth/bigquery,https://www.googleapis.com/auth/cloud-platformB\xfd\x02\n\'com.google.cloud.bigquery.connection.v1P\x01ZGcloud.google.com/go/bigquery/connection/apiv1/connectionpb;connectionpb\xaa\x02#Google.Cloud.BigQuery.Connection.V1\xca\x02#Google\\Cloud\\BigQuery\\Connection\\V1\xea\x41Y\n\x1f\x64\x61taproc.googleapis.com/Cluster\x12\x36projects/{project}/regions/{region}/clusters/{cluster}\xea\x41^\n metastore.googleapis.com/Service\x12:projects/{project}/locations/{location}/services/{service}b\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
      module Connection
        module V1
          CreateConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.CreateConnectionRequest").msgclass
          GetConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.GetConnectionRequest").msgclass
          ListConnectionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.ListConnectionsRequest").msgclass
          ListConnectionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.ListConnectionsResponse").msgclass
          UpdateConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.UpdateConnectionRequest").msgclass
          DeleteConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.DeleteConnectionRequest").msgclass
          Connection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.Connection").msgclass
          CloudSqlProperties = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.CloudSqlProperties").msgclass
          CloudSqlProperties::DatabaseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.CloudSqlProperties.DatabaseType").enummodule
          CloudSqlCredential = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.CloudSqlCredential").msgclass
          CloudSpannerProperties = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.CloudSpannerProperties").msgclass
          AwsProperties = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.AwsProperties").msgclass
          AwsCrossAccountRole = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.AwsCrossAccountRole").msgclass
          AwsAccessRole = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.AwsAccessRole").msgclass
          AzureProperties = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.AzureProperties").msgclass
          CloudResourceProperties = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.CloudResourceProperties").msgclass
          MetastoreServiceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.MetastoreServiceConfig").msgclass
          SparkHistoryServerConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.SparkHistoryServerConfig").msgclass
          SparkProperties = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.connection.v1.SparkProperties").msgclass
        end
      end
    end
  end
end
