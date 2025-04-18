# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/speech/v1p1beta1/cloud_speech_adaptation.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/speech/v1p1beta1/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n;google/cloud/speech/v1p1beta1/cloud_speech_adaptation.proto\x12\x1dgoogle.cloud.speech.v1p1beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a,google/cloud/speech/v1p1beta1/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\xb0\x01\n\x16\x43reatePhraseSetRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\x12\x1fspeech.googleapis.com/PhraseSet\x12\x1a\n\rphrase_set_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x41\n\nphrase_set\x18\x03 \x01(\x0b\x32(.google.cloud.speech.v1p1beta1.PhraseSetB\x03\xe0\x41\x02\"\x8c\x01\n\x16UpdatePhraseSetRequest\x12\x41\n\nphrase_set\x18\x01 \x01(\x0b\x32(.google.cloud.speech.v1p1beta1.PhraseSetB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"L\n\x13GetPhraseSetRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspeech.googleapis.com/PhraseSet\"v\n\x14ListPhraseSetRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\x12\x1fspeech.googleapis.com/PhraseSet\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"o\n\x15ListPhraseSetResponse\x12=\n\x0bphrase_sets\x18\x01 \x03(\x0b\x32(.google.cloud.speech.v1p1beta1.PhraseSet\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"O\n\x16\x44\x65letePhraseSetRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspeech.googleapis.com/PhraseSet\"\xba\x01\n\x18\x43reateCustomClassRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\x12!speech.googleapis.com/CustomClass\x12\x1c\n\x0f\x63ustom_class_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x45\n\x0c\x63ustom_class\x18\x03 \x01(\x0b\x32*.google.cloud.speech.v1p1beta1.CustomClassB\x03\xe0\x41\x02\"\x92\x01\n\x18UpdateCustomClassRequest\x12\x45\n\x0c\x63ustom_class\x18\x01 \x01(\x0b\x32*.google.cloud.speech.v1p1beta1.CustomClassB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"P\n\x15GetCustomClassRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!speech.googleapis.com/CustomClass\"|\n\x18ListCustomClassesRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\x12!speech.googleapis.com/CustomClass\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"x\n\x19ListCustomClassesResponse\x12\x42\n\x0e\x63ustom_classes\x18\x01 \x03(\x0b\x32*.google.cloud.speech.v1p1beta1.CustomClass\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"S\n\x18\x44\x65leteCustomClassRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!speech.googleapis.com/CustomClass2\xd2\x10\n\nAdaptation\x12\xd6\x01\n\x0f\x43reatePhraseSet\x12\x35.google.cloud.speech.v1p1beta1.CreatePhraseSetRequest\x1a(.google.cloud.speech.v1p1beta1.PhraseSet\"b\xda\x41\x1fparent,phrase_set,phrase_set_id\x82\xd3\xe4\x93\x02:\"5/v1p1beta1/{parent=projects/*/locations/*}/phraseSets:\x01*\x12\xb2\x01\n\x0cGetPhraseSet\x12\x32.google.cloud.speech.v1p1beta1.GetPhraseSetRequest\x1a(.google.cloud.speech.v1p1beta1.PhraseSet\"D\xda\x41\x04name\x82\xd3\xe4\x93\x02\x37\x12\x35/v1p1beta1/{name=projects/*/locations/*/phraseSets/*}\x12\xc2\x01\n\rListPhraseSet\x12\x33.google.cloud.speech.v1p1beta1.ListPhraseSetRequest\x1a\x34.google.cloud.speech.v1p1beta1.ListPhraseSetResponse\"F\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x37\x12\x35/v1p1beta1/{parent=projects/*/locations/*}/phraseSets\x12\xe1\x01\n\x0fUpdatePhraseSet\x12\x35.google.cloud.speech.v1p1beta1.UpdatePhraseSetRequest\x1a(.google.cloud.speech.v1p1beta1.PhraseSet\"m\xda\x41\x16phrase_set,update_mask\x82\xd3\xe4\x93\x02N2@/v1p1beta1/{phrase_set.name=projects/*/locations/*/phraseSets/*}:\nphrase_set\x12\xa6\x01\n\x0f\x44\x65letePhraseSet\x12\x35.google.cloud.speech.v1p1beta1.DeletePhraseSetRequest\x1a\x16.google.protobuf.Empty\"D\xda\x41\x04name\x82\xd3\xe4\x93\x02\x37*5/v1p1beta1/{name=projects/*/locations/*/phraseSets/*}\x12\xe3\x01\n\x11\x43reateCustomClass\x12\x37.google.cloud.speech.v1p1beta1.CreateCustomClassRequest\x1a*.google.cloud.speech.v1p1beta1.CustomClass\"i\xda\x41#parent,custom_class,custom_class_id\x82\xd3\xe4\x93\x02=\"8/v1p1beta1/{parent=projects/*/locations/*}/customClasses:\x01*\x12\xbb\x01\n\x0eGetCustomClass\x12\x34.google.cloud.speech.v1p1beta1.GetCustomClassRequest\x1a*.google.cloud.speech.v1p1beta1.CustomClass\"G\xda\x41\x04name\x82\xd3\xe4\x93\x02:\x12\x38/v1p1beta1/{name=projects/*/locations/*/customClasses/*}\x12\xd1\x01\n\x11ListCustomClasses\x12\x37.google.cloud.speech.v1p1beta1.ListCustomClassesRequest\x1a\x38.google.cloud.speech.v1p1beta1.ListCustomClassesResponse\"I\xda\x41\x06parent\x82\xd3\xe4\x93\x02:\x12\x38/v1p1beta1/{parent=projects/*/locations/*}/customClasses\x12\xf0\x01\n\x11UpdateCustomClass\x12\x37.google.cloud.speech.v1p1beta1.UpdateCustomClassRequest\x1a*.google.cloud.speech.v1p1beta1.CustomClass\"v\xda\x41\x18\x63ustom_class,update_mask\x82\xd3\xe4\x93\x02U2E/v1p1beta1/{custom_class.name=projects/*/locations/*/customClasses/*}:\x0c\x63ustom_class\x12\xad\x01\n\x11\x44\x65leteCustomClass\x12\x37.google.cloud.speech.v1p1beta1.DeleteCustomClassRequest\x1a\x16.google.protobuf.Empty\"G\xda\x41\x04name\x82\xd3\xe4\x93\x02:*8/v1p1beta1/{name=projects/*/locations/*/customClasses/*}\x1aI\xca\x41\x15speech.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB}\n!com.google.cloud.speech.v1p1beta1B\x15SpeechAdaptationProtoP\x01Z9cloud.google.com/go/speech/apiv1p1beta1/speechpb;speechpb\xa2\x02\x03GCSb\x06proto3"

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
    ["google.cloud.speech.v1p1beta1.PhraseSet", "google/cloud/speech/v1p1beta1/resource.proto"],
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
    module Speech
      module V1p1beta1
        CreatePhraseSetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.CreatePhraseSetRequest").msgclass
        UpdatePhraseSetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.UpdatePhraseSetRequest").msgclass
        GetPhraseSetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.GetPhraseSetRequest").msgclass
        ListPhraseSetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.ListPhraseSetRequest").msgclass
        ListPhraseSetResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.ListPhraseSetResponse").msgclass
        DeletePhraseSetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.DeletePhraseSetRequest").msgclass
        CreateCustomClassRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.CreateCustomClassRequest").msgclass
        UpdateCustomClassRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.UpdateCustomClassRequest").msgclass
        GetCustomClassRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.GetCustomClassRequest").msgclass
        ListCustomClassesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.ListCustomClassesRequest").msgclass
        ListCustomClassesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.ListCustomClassesResponse").msgclass
        DeleteCustomClassRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.speech.v1p1beta1.DeleteCustomClassRequest").msgclass
      end
    end
  end
end
