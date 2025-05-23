# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: grafeas/v1/common.proto

require 'google/protobuf'


descriptor_data = "\n\x17grafeas/v1/common.proto\x12\ngrafeas.v1\"(\n\nRelatedUrl\x12\x0b\n\x03url\x18\x01 \x01(\t\x12\r\n\x05label\x18\x02 \x01(\t\"5\n\tSignature\x12\x11\n\tsignature\x18\x01 \x01(\x0c\x12\x15\n\rpublic_key_id\x18\x02 \x01(\t\"d\n\x08\x45nvelope\x12\x0f\n\x07payload\x18\x01 \x01(\x0c\x12\x14\n\x0cpayload_type\x18\x02 \x01(\t\x12\x31\n\nsignatures\x18\x03 \x03(\x0b\x32\x1d.grafeas.v1.EnvelopeSignature\"/\n\x11\x45nvelopeSignature\x12\x0b\n\x03sig\x18\x01 \x01(\x0c\x12\r\n\x05keyid\x18\x02 \x01(\t\"R\n\x0c\x46ileLocation\x12\x11\n\tfile_path\x18\x01 \x01(\t\x12/\n\rlayer_details\x18\x02 \x01(\x0b\x32\x18.grafeas.v1.LayerDetails\"B\n\tBaseImage\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x12\n\nrepository\x18\x02 \x01(\t\x12\x13\n\x0blayer_count\x18\x03 \x01(\x05\"}\n\x0cLayerDetails\x12\r\n\x05index\x18\x01 \x01(\x05\x12\x0f\n\x07\x64iff_id\x18\x02 \x01(\t\x12\x10\n\x08\x63hain_id\x18\x05 \x01(\t\x12\x0f\n\x07\x63ommand\x18\x03 \x01(\t\x12*\n\x0b\x62\x61se_images\x18\x04 \x03(\x0b\x32\x15.grafeas.v1.BaseImage\"/\n\x07License\x12\x12\n\nexpression\x18\x01 \x01(\t\x12\x10\n\x08\x63omments\x18\x02 \x01(\t\",\n\x06\x44igest\x12\x0c\n\x04\x61lgo\x18\x01 \x01(\t\x12\x14\n\x0c\x64igest_bytes\x18\x02 \x01(\x0c*\xfc\x01\n\x08NoteKind\x12\x19\n\x15NOTE_KIND_UNSPECIFIED\x10\x00\x12\x11\n\rVULNERABILITY\x10\x01\x12\t\n\x05\x42UILD\x10\x02\x12\t\n\x05IMAGE\x10\x03\x12\x0b\n\x07PACKAGE\x10\x04\x12\x0e\n\nDEPLOYMENT\x10\x05\x12\r\n\tDISCOVERY\x10\x06\x12\x0f\n\x0b\x41TTESTATION\x10\x07\x12\x0b\n\x07UPGRADE\x10\x08\x12\x0e\n\nCOMPLIANCE\x10\t\x12\x14\n\x10\x44SSE_ATTESTATION\x10\n\x12\x1c\n\x18VULNERABILITY_ASSESSMENT\x10\x0b\x12\x12\n\x0eSBOM_REFERENCE\x10\x0c\x12\n\n\x06SECRET\x10\rBQ\n\rio.grafeas.v1P\x01Z8google.golang.org/genproto/googleapis/grafeas/v1;grafeas\xa2\x02\x03GRAb\x06proto3"

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

module Grafeas
  module V1
    RelatedUrl = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.RelatedUrl").msgclass
    Signature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Signature").msgclass
    Envelope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Envelope").msgclass
    EnvelopeSignature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.EnvelopeSignature").msgclass
    FileLocation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.FileLocation").msgclass
    BaseImage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.BaseImage").msgclass
    LayerDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.LayerDetails").msgclass
    License = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.License").msgclass
    Digest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Digest").msgclass
    NoteKind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.NoteKind").enummodule
  end
end
