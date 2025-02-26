# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/metric.proto

require 'google/protobuf'

require 'google/api/label_pb'
require 'google/api/metric_pb'
require 'google/api/monitored_resource_pb'
require 'google/monitoring/v3/common_pb'


descriptor_data = "\n!google/monitoring/v3/metric.proto\x12\x14google.monitoring.v3\x1a\x16google/api/label.proto\x1a\x17google/api/metric.proto\x1a#google/api/monitored_resource.proto\x1a!google/monitoring/v3/common.proto\"n\n\x05Point\x12\x34\n\x08interval\x18\x01 \x01(\x0b\x32\".google.monitoring.v3.TimeInterval\x12/\n\x05value\x18\x02 \x01(\x0b\x32 .google.monitoring.v3.TypedValue\"\xe4\x02\n\nTimeSeries\x12\"\n\x06metric\x18\x01 \x01(\x0b\x32\x12.google.api.Metric\x12/\n\x08resource\x18\x02 \x01(\x0b\x32\x1d.google.api.MonitoredResource\x12\x37\n\x08metadata\x18\x07 \x01(\x0b\x32%.google.api.MonitoredResourceMetadata\x12<\n\x0bmetric_kind\x18\x03 \x01(\x0e\x32\'.google.api.MetricDescriptor.MetricKind\x12:\n\nvalue_type\x18\x04 \x01(\x0e\x32&.google.api.MetricDescriptor.ValueType\x12+\n\x06points\x18\x05 \x03(\x0b\x32\x1b.google.monitoring.v3.Point\x12\x0c\n\x04unit\x18\x08 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\t \x01(\t\"\xce\x02\n\x14TimeSeriesDescriptor\x12\x36\n\x11label_descriptors\x18\x01 \x03(\x0b\x32\x1b.google.api.LabelDescriptor\x12U\n\x11point_descriptors\x18\x05 \x03(\x0b\x32:.google.monitoring.v3.TimeSeriesDescriptor.ValueDescriptor\x1a\xa6\x01\n\x0fValueDescriptor\x12\x0b\n\x03key\x18\x01 \x01(\t\x12:\n\nvalue_type\x18\x02 \x01(\x0e\x32&.google.api.MetricDescriptor.ValueType\x12<\n\x0bmetric_kind\x18\x03 \x01(\x0e\x32\'.google.api.MetricDescriptor.MetricKind\x12\x0c\n\x04unit\x18\x04 \x01(\t\"\x86\x02\n\x0eTimeSeriesData\x12\x36\n\x0clabel_values\x18\x01 \x03(\x0b\x32 .google.monitoring.v3.LabelValue\x12\x42\n\npoint_data\x18\x02 \x03(\x0b\x32..google.monitoring.v3.TimeSeriesData.PointData\x1ax\n\tPointData\x12\x30\n\x06values\x18\x01 \x03(\x0b\x32 .google.monitoring.v3.TypedValue\x12\x39\n\rtime_interval\x18\x02 \x01(\x0b\x32\".google.monitoring.v3.TimeInterval\"Z\n\nLabelValue\x12\x14\n\nbool_value\x18\x01 \x01(\x08H\x00\x12\x15\n\x0bint64_value\x18\x02 \x01(\x03H\x00\x12\x16\n\x0cstring_value\x18\x03 \x01(\tH\x00\x42\x07\n\x05value\"Q\n\nQueryError\x12\x32\n\x07locator\x18\x01 \x01(\x0b\x32!.google.monitoring.v3.TextLocator\x12\x0f\n\x07message\x18\x02 \x01(\t\"\xa0\x02\n\x0bTextLocator\x12\x0e\n\x06source\x18\x01 \x01(\t\x12\x42\n\x0estart_position\x18\x02 \x01(\x0b\x32*.google.monitoring.v3.TextLocator.Position\x12@\n\x0c\x65nd_position\x18\x03 \x01(\x0b\x32*.google.monitoring.v3.TextLocator.Position\x12\x39\n\x0enested_locator\x18\x04 \x01(\x0b\x32!.google.monitoring.v3.TextLocator\x12\x16\n\x0enesting_reason\x18\x05 \x01(\t\x1a(\n\x08Position\x12\x0c\n\x04line\x18\x01 \x01(\x05\x12\x0e\n\x06\x63olumn\x18\x02 \x01(\x05\x42\xc6\x01\n\x18\x63om.google.monitoring.v3B\x0bMetricProtoP\x01ZAcloud.google.com/go/monitoring/apiv3/v2/monitoringpb;monitoringpb\xaa\x02\x1aGoogle.Cloud.Monitoring.V3\xca\x02\x1aGoogle\\Cloud\\Monitoring\\V3\xea\x02\x1dGoogle::Cloud::Monitoring::V3b\x06proto3"

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
    ["google.monitoring.v3.TimeInterval", "google/monitoring/v3/common.proto"],
    ["google.api.Metric", "google/api/metric.proto"],
    ["google.api.MonitoredResource", "google/api/monitored_resource.proto"],
    ["google.api.LabelDescriptor", "google/api/label.proto"],
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
    module Monitoring
      module V3
        Point = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Point").msgclass
        TimeSeries = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TimeSeries").msgclass
        TimeSeriesDescriptor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TimeSeriesDescriptor").msgclass
        TimeSeriesDescriptor::ValueDescriptor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TimeSeriesDescriptor.ValueDescriptor").msgclass
        TimeSeriesData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TimeSeriesData").msgclass
        TimeSeriesData::PointData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TimeSeriesData.PointData").msgclass
        LabelValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.LabelValue").msgclass
        QueryError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.QueryError").msgclass
        TextLocator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TextLocator").msgclass
        TextLocator::Position = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TextLocator.Position").msgclass
      end
    end
  end
end
