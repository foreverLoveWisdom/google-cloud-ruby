# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networkservices/v1/http_route.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n0google/cloud/networkservices/v1/http_route.proto\x12\x1fgoogle.cloud.networkservices.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x8f$\n\tHttpRoute\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x16\n\tself_link\x18\x0b \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x16\n\thostnames\x18\x05 \x03(\tB\x03\xe0\x41\x02\x12;\n\x06meshes\x18\x08 \x03(\tB+\xe0\x41\x01\xfa\x41%\n#networkservices.googleapis.com/Mesh\x12@\n\x08gateways\x18\t \x03(\tB.\xe0\x41\x01\xfa\x41(\n&networkservices.googleapis.com/Gateway\x12K\n\x06labels\x18\n \x03(\x0b\x32\x36.google.cloud.networkservices.v1.HttpRoute.LabelsEntryB\x03\xe0\x41\x01\x12H\n\x05rules\x18\x06 \x03(\x0b\x32\x34.google.cloud.networkservices.v1.HttpRoute.RouteRuleB\x03\xe0\x41\x02\x1a\xbf\x02\n\x0bHeaderMatch\x12\x15\n\x0b\x65xact_match\x18\x02 \x01(\tH\x00\x12\x15\n\x0bregex_match\x18\x03 \x01(\tH\x00\x12\x16\n\x0cprefix_match\x18\x04 \x01(\tH\x00\x12\x17\n\rpresent_match\x18\x05 \x01(\x08H\x00\x12\x16\n\x0csuffix_match\x18\x06 \x01(\tH\x00\x12Z\n\x0brange_match\x18\x07 \x01(\x0b\x32\x43.google.cloud.networkservices.v1.HttpRoute.HeaderMatch.IntegerRangeH\x00\x12\x0e\n\x06header\x18\x01 \x01(\t\x12\x14\n\x0cinvert_match\x18\x08 \x01(\x08\x1a*\n\x0cIntegerRange\x12\r\n\x05start\x18\x01 \x01(\x05\x12\x0b\n\x03\x65nd\x18\x02 \x01(\x05\x42\x0b\n\tMatchType\x1a\x82\x01\n\x13QueryParameterMatch\x12\x15\n\x0b\x65xact_match\x18\x02 \x01(\tH\x00\x12\x15\n\x0bregex_match\x18\x03 \x01(\tH\x00\x12\x17\n\rpresent_match\x18\x04 \x01(\x08H\x00\x12\x17\n\x0fquery_parameter\x18\x01 \x01(\tB\x0b\n\tMatchType\x1a\x9b\x02\n\nRouteMatch\x12\x19\n\x0f\x66ull_path_match\x18\x01 \x01(\tH\x00\x12\x16\n\x0cprefix_match\x18\x02 \x01(\tH\x00\x12\x15\n\x0bregex_match\x18\x03 \x01(\tH\x00\x12\x13\n\x0bignore_case\x18\x04 \x01(\x08\x12G\n\x07headers\x18\x05 \x03(\x0b\x32\x36.google.cloud.networkservices.v1.HttpRoute.HeaderMatch\x12X\n\x10query_parameters\x18\x06 \x03(\x0b\x32>.google.cloud.networkservices.v1.HttpRoute.QueryParameterMatchB\x0b\n\tPathMatch\x1a\xa2\x02\n\x0b\x44\x65stination\x12@\n\x0cservice_name\x18\x01 \x01(\tB*\xfa\x41\'\n%compute.googleapis.com/BackendService\x12\x0e\n\x06weight\x18\x02 \x01(\x05\x12_\n\x17request_header_modifier\x18\x03 \x01(\x0b\x32\x39.google.cloud.networkservices.v1.HttpRoute.HeaderModifierB\x03\xe0\x41\x01\x12`\n\x18response_header_modifier\x18\x04 \x01(\x0b\x32\x39.google.cloud.networkservices.v1.HttpRoute.HeaderModifierB\x03\xe0\x41\x01\x1a\x86\x03\n\x08Redirect\x12\x15\n\rhost_redirect\x18\x01 \x01(\t\x12\x15\n\rpath_redirect\x18\x02 \x01(\t\x12\x16\n\x0eprefix_rewrite\x18\x03 \x01(\t\x12W\n\rresponse_code\x18\x04 \x01(\x0e\x32@.google.cloud.networkservices.v1.HttpRoute.Redirect.ResponseCode\x12\x16\n\x0ehttps_redirect\x18\x05 \x01(\x08\x12\x13\n\x0bstrip_query\x18\x06 \x01(\x08\x12\x15\n\rport_redirect\x18\x07 \x01(\x05\"\x96\x01\n\x0cResponseCode\x12\x1d\n\x19RESPONSE_CODE_UNSPECIFIED\x10\x00\x12\x1d\n\x19MOVED_PERMANENTLY_DEFAULT\x10\x01\x12\t\n\x05\x46OUND\x10\x02\x12\r\n\tSEE_OTHER\x10\x03\x12\x16\n\x12TEMPORARY_REDIRECT\x10\x04\x12\x16\n\x12PERMANENT_REDIRECT\x10\x05\x1a\xc1\x02\n\x14\x46\x61ultInjectionPolicy\x12T\n\x05\x64\x65lay\x18\x01 \x01(\x0b\x32\x45.google.cloud.networkservices.v1.HttpRoute.FaultInjectionPolicy.Delay\x12T\n\x05\x61\x62ort\x18\x02 \x01(\x0b\x32\x45.google.cloud.networkservices.v1.HttpRoute.FaultInjectionPolicy.Abort\x1aK\n\x05\x44\x65lay\x12.\n\x0b\x66ixed_delay\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x12\n\npercentage\x18\x02 \x01(\x05\x1a\x30\n\x05\x41\x62ort\x12\x13\n\x0bhttp_status\x18\x01 \x01(\x05\x12\x12\n\npercentage\x18\x02 \x01(\x05\x1aS\n\x1dStatefulSessionAffinityPolicy\x12\x32\n\ncookie_ttl\x18\x01 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x02\x1a\x9a\x02\n\x0eHeaderModifier\x12O\n\x03set\x18\x01 \x03(\x0b\x32\x42.google.cloud.networkservices.v1.HttpRoute.HeaderModifier.SetEntry\x12O\n\x03\x61\x64\x64\x18\x02 \x03(\x0b\x32\x42.google.cloud.networkservices.v1.HttpRoute.HeaderModifier.AddEntry\x12\x0e\n\x06remove\x18\x03 \x03(\t\x1a*\n\x08SetEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a*\n\x08\x41\x64\x64\x45ntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a?\n\nURLRewrite\x12\x1b\n\x13path_prefix_rewrite\x18\x01 \x01(\t\x12\x14\n\x0chost_rewrite\x18\x02 \x01(\t\x1ap\n\x0bRetryPolicy\x12\x18\n\x10retry_conditions\x18\x01 \x03(\t\x12\x13\n\x0bnum_retries\x18\x02 \x01(\x05\x12\x32\n\x0fper_try_timeout\x18\x03 \x01(\x0b\x32\x19.google.protobuf.Duration\x1a\x7f\n\x13RequestMirrorPolicy\x12K\n\x0b\x64\x65stination\x18\x01 \x01(\x0b\x32\x36.google.cloud.networkservices.v1.HttpRoute.Destination\x12\x1b\n\x0emirror_percent\x18\x02 \x01(\x02\x42\x03\xe0\x41\x01\x1a\xc5\x01\n\nCorsPolicy\x12\x15\n\rallow_origins\x18\x01 \x03(\t\x12\x1c\n\x14\x61llow_origin_regexes\x18\x02 \x03(\t\x12\x15\n\rallow_methods\x18\x03 \x03(\t\x12\x15\n\rallow_headers\x18\x04 \x03(\t\x12\x16\n\x0e\x65xpose_headers\x18\x05 \x03(\t\x12\x0f\n\x07max_age\x18\x06 \x01(\t\x12\x19\n\x11\x61llow_credentials\x18\x07 \x01(\x08\x12\x10\n\x08\x64isabled\x18\x08 \x01(\x08\x1al\n\x12HttpDirectResponse\x12\x1a\n\x0bstring_body\x18\x02 \x01(\tB\x03\xe0\x41\x01H\x00\x12\x19\n\nbytes_body\x18\x03 \x01(\x0c\x42\x03\xe0\x41\x01H\x00\x12\x13\n\x06status\x18\x01 \x01(\x05\x42\x03\xe0\x41\x02\x42\n\n\x08HttpBody\x1a\xb2\x08\n\x0bRouteAction\x12L\n\x0c\x64\x65stinations\x18\x01 \x03(\x0b\x32\x36.google.cloud.networkservices.v1.HttpRoute.Destination\x12\x45\n\x08redirect\x18\x02 \x01(\x0b\x32\x33.google.cloud.networkservices.v1.HttpRoute.Redirect\x12_\n\x16\x66\x61ult_injection_policy\x18\x04 \x01(\x0b\x32?.google.cloud.networkservices.v1.HttpRoute.FaultInjectionPolicy\x12Z\n\x17request_header_modifier\x18\x05 \x01(\x0b\x32\x39.google.cloud.networkservices.v1.HttpRoute.HeaderModifier\x12[\n\x18response_header_modifier\x18\x06 \x01(\x0b\x32\x39.google.cloud.networkservices.v1.HttpRoute.HeaderModifier\x12J\n\x0burl_rewrite\x18\x07 \x01(\x0b\x32\x35.google.cloud.networkservices.v1.HttpRoute.URLRewrite\x12*\n\x07timeout\x18\x08 \x01(\x0b\x32\x19.google.protobuf.Duration\x12L\n\x0cretry_policy\x18\t \x01(\x0b\x32\x36.google.cloud.networkservices.v1.HttpRoute.RetryPolicy\x12]\n\x15request_mirror_policy\x18\n \x01(\x0b\x32>.google.cloud.networkservices.v1.HttpRoute.RequestMirrorPolicy\x12J\n\x0b\x63ors_policy\x18\x0b \x01(\x0b\x32\x35.google.cloud.networkservices.v1.HttpRoute.CorsPolicy\x12p\n\x19stateful_session_affinity\x18\x0c \x01(\x0b\x32H.google.cloud.networkservices.v1.HttpRoute.StatefulSessionAffinityPolicyB\x03\xe0\x41\x01\x12[\n\x0f\x64irect_response\x18\r \x01(\x0b\x32=.google.cloud.networkservices.v1.HttpRoute.HttpDirectResponseB\x03\xe0\x41\x01\x12\x34\n\x0cidle_timeout\x18\x0e \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x01\x1a\x9b\x01\n\tRouteRule\x12\x46\n\x07matches\x18\x01 \x03(\x0b\x32\x35.google.cloud.networkservices.v1.HttpRoute.RouteMatch\x12\x46\n\x06\x61\x63tion\x18\x02 \x01(\x0b\x32\x36.google.cloud.networkservices.v1.HttpRoute.RouteAction\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:n\xea\x41k\n(networkservices.googleapis.com/HttpRoute\x12?projects/{project}/locations/{location}/httpRoutes/{http_route}\"\xa5\x01\n\x15ListHttpRoutesRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\x12(networkservices.googleapis.com/HttpRoute\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12#\n\x16return_partial_success\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\"\x87\x01\n\x16ListHttpRoutesResponse\x12?\n\x0bhttp_routes\x18\x01 \x03(\x0b\x32*.google.cloud.networkservices.v1.HttpRoute\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"U\n\x13GetHttpRouteRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(networkservices.googleapis.com/HttpRoute\"\xbb\x01\n\x16\x43reateHttpRouteRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\x12(networkservices.googleapis.com/HttpRoute\x12\x1a\n\rhttp_route_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x43\n\nhttp_route\x18\x03 \x01(\x0b\x32*.google.cloud.networkservices.v1.HttpRouteB\x03\xe0\x41\x02\"\x93\x01\n\x16UpdateHttpRouteRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x12\x43\n\nhttp_route\x18\x02 \x01(\x0b\x32*.google.cloud.networkservices.v1.HttpRouteB\x03\xe0\x41\x02\"X\n\x16\x44\x65leteHttpRouteRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(networkservices.googleapis.com/HttpRouteB\xef\x01\n#com.google.cloud.networkservices.v1B\x0eHttpRouteProtoP\x01ZMcloud.google.com/go/networkservices/apiv1/networkservicespb;networkservicespb\xaa\x02\x1fGoogle.Cloud.NetworkServices.V1\xca\x02\x1fGoogle\\Cloud\\NetworkServices\\V1\xea\x02\"Google::Cloud::NetworkServices::V1b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module NetworkServices
      module V1
        HttpRoute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute").msgclass
        HttpRoute::HeaderMatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.HeaderMatch").msgclass
        HttpRoute::HeaderMatch::IntegerRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.HeaderMatch.IntegerRange").msgclass
        HttpRoute::QueryParameterMatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.QueryParameterMatch").msgclass
        HttpRoute::RouteMatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.RouteMatch").msgclass
        HttpRoute::Destination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.Destination").msgclass
        HttpRoute::Redirect = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.Redirect").msgclass
        HttpRoute::Redirect::ResponseCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.Redirect.ResponseCode").enummodule
        HttpRoute::FaultInjectionPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.FaultInjectionPolicy").msgclass
        HttpRoute::FaultInjectionPolicy::Delay = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.FaultInjectionPolicy.Delay").msgclass
        HttpRoute::FaultInjectionPolicy::Abort = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.FaultInjectionPolicy.Abort").msgclass
        HttpRoute::StatefulSessionAffinityPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.StatefulSessionAffinityPolicy").msgclass
        HttpRoute::HeaderModifier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.HeaderModifier").msgclass
        HttpRoute::URLRewrite = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.URLRewrite").msgclass
        HttpRoute::RetryPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.RetryPolicy").msgclass
        HttpRoute::RequestMirrorPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.RequestMirrorPolicy").msgclass
        HttpRoute::CorsPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.CorsPolicy").msgclass
        HttpRoute::HttpDirectResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.HttpDirectResponse").msgclass
        HttpRoute::RouteAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.RouteAction").msgclass
        HttpRoute::RouteRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.HttpRoute.RouteRule").msgclass
        ListHttpRoutesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.ListHttpRoutesRequest").msgclass
        ListHttpRoutesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.ListHttpRoutesResponse").msgclass
        GetHttpRouteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GetHttpRouteRequest").msgclass
        CreateHttpRouteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.CreateHttpRouteRequest").msgclass
        UpdateHttpRouteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.UpdateHttpRouteRequest").msgclass
        DeleteHttpRouteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.DeleteHttpRouteRequest").msgclass
      end
    end
  end
end
