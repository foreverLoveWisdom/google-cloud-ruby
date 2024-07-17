# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/migration/v2/translation_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'


descriptor_data = "\n;google/cloud/bigquery/migration/v2/translation_config.proto\x12\"google.cloud.bigquery.migration.v2\x1a\x1fgoogle/api/field_behavior.proto\"\xe0\x03\n\x18TranslationConfigDetails\x12\x19\n\x0fgcs_source_path\x18\x01 \x01(\tH\x00\x12\x19\n\x0fgcs_target_path\x18\x02 \x01(\tH\x01\x12V\n\x11name_mapping_list\x18\x05 \x01(\x0b\x32\x39.google.cloud.bigquery.migration.v2.ObjectNameMappingListH\x02\x12\x43\n\x0esource_dialect\x18\x03 \x01(\x0b\x32+.google.cloud.bigquery.migration.v2.Dialect\x12\x43\n\x0etarget_dialect\x18\x04 \x01(\x0b\x32+.google.cloud.bigquery.migration.v2.Dialect\x12\x41\n\nsource_env\x18\x06 \x01(\x0b\x32-.google.cloud.bigquery.migration.v2.SourceEnv\x12\x16\n\x0erequest_source\x18\x08 \x01(\t\x12\x14\n\x0ctarget_types\x18\t \x03(\tB\x11\n\x0fsource_locationB\x11\n\x0ftarget_locationB\x15\n\x13output_name_mapping\"\xeb\n\n\x07\x44ialect\x12O\n\x10\x62igquery_dialect\x18\x01 \x01(\x0b\x32\x33.google.cloud.bigquery.migration.v2.BigQueryDialectH\x00\x12K\n\x0ehiveql_dialect\x18\x02 \x01(\x0b\x32\x31.google.cloud.bigquery.migration.v2.HiveQLDialectH\x00\x12O\n\x10redshift_dialect\x18\x03 \x01(\x0b\x32\x33.google.cloud.bigquery.migration.v2.RedshiftDialectH\x00\x12O\n\x10teradata_dialect\x18\x04 \x01(\x0b\x32\x33.google.cloud.bigquery.migration.v2.TeradataDialectH\x00\x12K\n\x0eoracle_dialect\x18\x05 \x01(\x0b\x32\x31.google.cloud.bigquery.migration.v2.OracleDialectH\x00\x12O\n\x10sparksql_dialect\x18\x06 \x01(\x0b\x32\x33.google.cloud.bigquery.migration.v2.SparkSQLDialectH\x00\x12Q\n\x11snowflake_dialect\x18\x07 \x01(\x0b\x32\x34.google.cloud.bigquery.migration.v2.SnowflakeDialectH\x00\x12M\n\x0fnetezza_dialect\x18\x08 \x01(\x0b\x32\x32.google.cloud.bigquery.migration.v2.NetezzaDialectH\x00\x12X\n\x15\x61zure_synapse_dialect\x18\t \x01(\x0b\x32\x37.google.cloud.bigquery.migration.v2.AzureSynapseDialectH\x00\x12M\n\x0fvertica_dialect\x18\n \x01(\x0b\x32\x32.google.cloud.bigquery.migration.v2.VerticaDialectH\x00\x12R\n\x12sql_server_dialect\x18\x0b \x01(\x0b\x32\x34.google.cloud.bigquery.migration.v2.SQLServerDialectH\x00\x12S\n\x12postgresql_dialect\x18\x0c \x01(\x0b\x32\x35.google.cloud.bigquery.migration.v2.PostgresqlDialectH\x00\x12K\n\x0epresto_dialect\x18\r \x01(\x0b\x32\x31.google.cloud.bigquery.migration.v2.PrestoDialectH\x00\x12I\n\rmysql_dialect\x18\x0e \x01(\x0b\x32\x30.google.cloud.bigquery.migration.v2.MySQLDialectH\x00\x12\x45\n\x0b\x64\x62\x32_dialect\x18\x0f \x01(\x0b\x32..google.cloud.bigquery.migration.v2.DB2DialectH\x00\x12K\n\x0esqlite_dialect\x18\x10 \x01(\x0b\x32\x31.google.cloud.bigquery.migration.v2.SQLiteDialectH\x00\x12Q\n\x11greenplum_dialect\x18\x11 \x01(\x0b\x32\x34.google.cloud.bigquery.migration.v2.GreenplumDialectH\x00\x42\x0f\n\rdialect_value\"\x11\n\x0f\x42igQueryDialect\"\x0f\n\rHiveQLDialect\"\x11\n\x0fRedshiftDialect\"\x8a\x01\n\x0fTeradataDialect\x12\x46\n\x04mode\x18\x01 \x01(\x0e\x32\x38.google.cloud.bigquery.migration.v2.TeradataDialect.Mode\"/\n\x04Mode\x12\x14\n\x10MODE_UNSPECIFIED\x10\x00\x12\x07\n\x03SQL\x10\x01\x12\x08\n\x04\x42TEQ\x10\x02\"\x0f\n\rOracleDialect\"\x11\n\x0fSparkSQLDialect\"\x12\n\x10SnowflakeDialect\"\x10\n\x0eNetezzaDialect\"\x15\n\x13\x41zureSynapseDialect\"\x10\n\x0eVerticaDialect\"\x12\n\x10SQLServerDialect\"\x13\n\x11PostgresqlDialect\"\x0f\n\rPrestoDialect\"\x0e\n\x0cMySQLDialect\"\x0c\n\nDB2Dialect\"\x0f\n\rSQLiteDialect\"\x12\n\x10GreenplumDialect\"`\n\x15ObjectNameMappingList\x12G\n\x08name_map\x18\x01 \x03(\x0b\x32\x35.google.cloud.bigquery.migration.v2.ObjectNameMapping\"\x9d\x01\n\x11ObjectNameMapping\x12\x42\n\x06source\x18\x01 \x01(\x0b\x32\x32.google.cloud.bigquery.migration.v2.NameMappingKey\x12\x44\n\x06target\x18\x02 \x01(\x0b\x32\x34.google.cloud.bigquery.migration.v2.NameMappingValue\"\xab\x02\n\x0eNameMappingKey\x12\x45\n\x04type\x18\x01 \x01(\x0e\x32\x37.google.cloud.bigquery.migration.v2.NameMappingKey.Type\x12\x10\n\x08\x64\x61tabase\x18\x02 \x01(\t\x12\x0e\n\x06schema\x18\x03 \x01(\t\x12\x10\n\x08relation\x18\x04 \x01(\t\x12\x11\n\tattribute\x18\x05 \x01(\t\"\x8a\x01\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44\x41TABASE\x10\x01\x12\n\n\x06SCHEMA\x10\x02\x12\x0c\n\x08RELATION\x10\x03\x12\r\n\tATTRIBUTE\x10\x04\x12\x12\n\x0eRELATION_ALIAS\x10\x05\x12\x13\n\x0f\x41TTRIBUTE_ALIAS\x10\x06\x12\x0c\n\x08\x46UNCTION\x10\x07\"Y\n\x10NameMappingValue\x12\x10\n\x08\x64\x61tabase\x18\x01 \x01(\t\x12\x0e\n\x06schema\x18\x02 \x01(\t\x12\x10\n\x08relation\x18\x03 \x01(\t\x12\x11\n\tattribute\x18\x04 \x01(\t\"f\n\tSourceEnv\x12\x18\n\x10\x64\x65\x66\x61ult_database\x18\x01 \x01(\t\x12\x1a\n\x12schema_search_path\x18\x02 \x03(\t\x12#\n\x16metadata_store_dataset\x18\x03 \x01(\tB\x03\xe0\x41\x01\x42\xd2\x01\n&com.google.cloud.bigquery.migration.v2B\x16TranslationConfigProtoP\x01ZDcloud.google.com/go/bigquery/migration/apiv2/migrationpb;migrationpb\xaa\x02\"Google.Cloud.BigQuery.Migration.V2\xca\x02\"Google\\Cloud\\BigQuery\\Migration\\V2b\x06proto3"

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
          TranslationConfigDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.TranslationConfigDetails").msgclass
          Dialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.Dialect").msgclass
          BigQueryDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.BigQueryDialect").msgclass
          HiveQLDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.HiveQLDialect").msgclass
          RedshiftDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.RedshiftDialect").msgclass
          TeradataDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.TeradataDialect").msgclass
          TeradataDialect::Mode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.TeradataDialect.Mode").enummodule
          OracleDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.OracleDialect").msgclass
          SparkSQLDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.SparkSQLDialect").msgclass
          SnowflakeDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.SnowflakeDialect").msgclass
          NetezzaDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.NetezzaDialect").msgclass
          AzureSynapseDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.AzureSynapseDialect").msgclass
          VerticaDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.VerticaDialect").msgclass
          SQLServerDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.SQLServerDialect").msgclass
          PostgresqlDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.PostgresqlDialect").msgclass
          PrestoDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.PrestoDialect").msgclass
          MySQLDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.MySQLDialect").msgclass
          DB2Dialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.DB2Dialect").msgclass
          SQLiteDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.SQLiteDialect").msgclass
          GreenplumDialect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.GreenplumDialect").msgclass
          ObjectNameMappingList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.ObjectNameMappingList").msgclass
          ObjectNameMapping = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.ObjectNameMapping").msgclass
          NameMappingKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.NameMappingKey").msgclass
          NameMappingKey::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.NameMappingKey.Type").enummodule
          NameMappingValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.NameMappingValue").msgclass
          SourceEnv = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.SourceEnv").msgclass
        end
      end
    end
  end
end
