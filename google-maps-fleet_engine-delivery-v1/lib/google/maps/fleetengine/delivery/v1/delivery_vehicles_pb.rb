# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/maps/fleetengine/delivery/v1/delivery_vehicles.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/maps/fleetengine/delivery/v1/common_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/wrappers_pb'
require 'google/type/latlng_pb'


descriptor_data = "\n;google/maps/fleetengine/delivery/v1/delivery_vehicles.proto\x12\x1cmaps.fleetengine.delivery.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x30google/maps/fleetengine/delivery/v1/common.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1egoogle/protobuf/wrappers.proto\x1a\x18google/type/latlng.proto\"\xc5\x07\n\x0f\x44\x65liveryVehicle\x12\x0c\n\x04name\x18\x01 \x01(\t\x12L\n\rlast_location\x18\x02 \x01(\x0b\x32\x35.maps.fleetengine.delivery.v1.DeliveryVehicleLocation\x12R\n\x0epast_locations\x18\x0c \x03(\x0b\x32\x35.maps.fleetengine.delivery.v1.DeliveryVehicleLocationB\x03\xe0\x41\x04\x12X\n\x11navigation_status\x18\x03 \x01(\x0e\x32=.maps.fleetengine.delivery.v1.DeliveryVehicleNavigationStatus\x12\x1d\n\x15\x63urrent_route_segment\x18\x04 \x01(\x0c\x12<\n\x1f\x63urrent_route_segment_end_point\x18\x05 \x01(\x0b\x32\x13.google.type.LatLng\x12>\n\x19remaining_distance_meters\x18\x06 \x01(\x0b\x32\x1b.google.protobuf.Int32Value\x12\x35\n\x12remaining_duration\x18\x07 \x01(\x0b\x32\x19.google.protobuf.Duration\x12_\n\"remaining_vehicle_journey_segments\x18\x08 \x03(\x0b\x32\x33.maps.fleetengine.delivery.v1.VehicleJourneySegment\x12J\n\nattributes\x18\t \x03(\x0b\x32\x36.maps.fleetengine.delivery.v1.DeliveryVehicleAttribute\x12O\n\x04type\x18\n \x01(\x0e\x32\x41.maps.fleetengine.delivery.v1.DeliveryVehicle.DeliveryVehicleType\"t\n\x13\x44\x65liveryVehicleType\x12%\n!DELIVERY_VEHICLE_TYPE_UNSPECIFIED\x10\x00\x12\x08\n\x04\x41UTO\x10\x01\x12\x0f\n\x0bTWO_WHEELER\x10\x02\x12\x0b\n\x07\x42ICYCLE\x10\x03\x12\x0e\n\nPEDESTRIAN\x10\x04:`\xea\x41]\n*fleetengine.googleapis.com/DeliveryVehicle\x12/providers/{provider}/deliveryVehicles/{vehicle}\"2\n\x0cLocationInfo\x12\"\n\x05point\x18\x01 \x01(\x0b\x32\x13.google.type.LatLng\"\xf5\x01\n\x15VehicleJourneySegment\x12\x37\n\x04stop\x18\x01 \x01(\x0b\x32).maps.fleetengine.delivery.v1.VehicleStop\x12\x41\n\x17\x64riving_distance_meters\x18\x02 \x01(\x0b\x32\x1b.google.protobuf.Int32ValueB\x03\xe0\x41\x03\x12\x38\n\x10\x64riving_duration\x18\x03 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x03\x12&\n\x04path\x18\x05 \x03(\x0b\x32\x13.google.type.LatLngB\x03\xe0\x41\x03\"\xbe\x03\n\x0bVehicleStop\x12I\n\x10planned_location\x18\x01 \x01(\x0b\x32*.maps.fleetengine.delivery.v1.LocationInfoB\x03\xe0\x41\x02\x12\x41\n\x05tasks\x18\x02 \x03(\x0b\x32\x32.maps.fleetengine.delivery.v1.VehicleStop.TaskInfo\x12>\n\x05state\x18\x03 \x01(\x0e\x32/.maps.fleetengine.delivery.v1.VehicleStop.State\x1a\x9d\x01\n\x08TaskInfo\x12\x0f\n\x07task_id\x18\x01 \x01(\t\x12\x35\n\rtask_duration\x18\x02 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x03\x12I\n\x12target_time_window\x18\x03 \x01(\x0b\x32(.maps.fleetengine.delivery.v1.TimeWindowB\x03\xe0\x41\x03\"A\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x07\n\x03NEW\x10\x01\x12\x0b\n\x07\x45NROUTE\x10\x02\x12\x0b\n\x07\x41RRIVED\x10\x03\x42\x85\x02\n\'com.google.maps.fleetengine.delivery.v1B\x10\x44\x65liveryVehiclesP\x01ZIcloud.google.com/go/maps/fleetengine/delivery/apiv1/deliverypb;deliverypb\xa2\x02\x04\x43\x46\x45\x44\xaa\x02#Google.Maps.FleetEngine.Delivery.V1\xca\x02#Google\\Maps\\FleetEngine\\Delivery\\V1\xea\x02\'Google::Maps::FleetEngine::Delivery::V1b\x06proto3"

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
    ["maps.fleetengine.delivery.v1.DeliveryVehicleLocation", "google/maps/fleetengine/delivery/v1/common.proto"],
    ["google.type.LatLng", "google/type/latlng.proto"],
    ["google.protobuf.Int32Value", "google/protobuf/wrappers.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
  module Maps
    module FleetEngine
      module Delivery
        module V1
          DeliveryVehicle = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.delivery.v1.DeliveryVehicle").msgclass
          DeliveryVehicle::DeliveryVehicleType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.delivery.v1.DeliveryVehicle.DeliveryVehicleType").enummodule
          LocationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.delivery.v1.LocationInfo").msgclass
          VehicleJourneySegment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.delivery.v1.VehicleJourneySegment").msgclass
          VehicleStop = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.delivery.v1.VehicleStop").msgclass
          VehicleStop::TaskInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.delivery.v1.VehicleStop.TaskInfo").msgclass
          VehicleStop::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("maps.fleetengine.delivery.v1.VehicleStop.State").enummodule
        end
      end
    end
  end
end
