# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Analytics
    module Admin
      module V1alpha
        module AnalyticsAdminService
          # Path helper methods for the AnalyticsAdminService API.
          module Paths
            ##
            # Create a fully-qualified AccessBinding resource string.
            #
            # @overload access_binding_path(account:, access_binding:)
            #   The resource will be in the following format:
            #
            #   `accounts/{account}/accessBindings/{access_binding}`
            #
            #   @param account [String]
            #   @param access_binding [String]
            #
            # @overload access_binding_path(property:, access_binding:)
            #   The resource will be in the following format:
            #
            #   `properties/{property}/accessBindings/{access_binding}`
            #
            #   @param property [String]
            #   @param access_binding [String]
            #
            # @return [::String]
            def access_binding_path **args
              resources = {
                "access_binding:account" => (proc do |account:, access_binding:|
                  raise ::ArgumentError, "account cannot contain /" if account.to_s.include? "/"

                  "accounts/#{account}/accessBindings/#{access_binding}"
                end),
                "access_binding:property" => (proc do |property:, access_binding:|
                  raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

                  "properties/#{property}/accessBindings/#{access_binding}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Account resource string.
            #
            # The resource will be in the following format:
            #
            # `accounts/{account}`
            #
            # @param account [String]
            #
            # @return [::String]
            def account_path account:
              "accounts/#{account}"
            end

            ##
            # Create a fully-qualified AdSenseLink resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/adSenseLinks/{adsense_link}`
            #
            # @param property [String]
            # @param adsense_link [String]
            #
            # @return [::String]
            def ad_sense_link_path property:, adsense_link:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/adSenseLinks/#{adsense_link}"
            end

            ##
            # Create a fully-qualified AttributionSettings resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/attributionSettings`
            #
            # @param property [String]
            #
            # @return [::String]
            def attribution_settings_path property:
              "properties/#{property}/attributionSettings"
            end

            ##
            # Create a fully-qualified Audience resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/audiences/{audience}`
            #
            # @param property [String]
            # @param audience [String]
            #
            # @return [::String]
            def audience_path property:, audience:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/audiences/#{audience}"
            end

            ##
            # Create a fully-qualified BigQueryLink resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/bigQueryLinks/{bigquery_link}`
            #
            # @param property [String]
            # @param bigquery_link [String]
            #
            # @return [::String]
            def big_query_link_path property:, bigquery_link:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/bigQueryLinks/#{bigquery_link}"
            end

            ##
            # Create a fully-qualified CalculatedMetric resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/calculatedMetrics/{calculated_metric}`
            #
            # @param property [String]
            # @param calculated_metric [String]
            #
            # @return [::String]
            def calculated_metric_path property:, calculated_metric:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/calculatedMetrics/#{calculated_metric}"
            end

            ##
            # Create a fully-qualified ChannelGroup resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/channelGroups/{channel_group}`
            #
            # @param property [String]
            # @param channel_group [String]
            #
            # @return [::String]
            def channel_group_path property:, channel_group:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/channelGroups/#{channel_group}"
            end

            ##
            # Create a fully-qualified ConversionEvent resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/conversionEvents/{conversion_event}`
            #
            # @param property [String]
            # @param conversion_event [String]
            #
            # @return [::String]
            def conversion_event_path property:, conversion_event:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/conversionEvents/#{conversion_event}"
            end

            ##
            # Create a fully-qualified CustomDimension resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/customDimensions/{custom_dimension}`
            #
            # @param property [String]
            # @param custom_dimension [String]
            #
            # @return [::String]
            def custom_dimension_path property:, custom_dimension:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/customDimensions/#{custom_dimension}"
            end

            ##
            # Create a fully-qualified CustomMetric resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/customMetrics/{custom_metric}`
            #
            # @param property [String]
            # @param custom_metric [String]
            #
            # @return [::String]
            def custom_metric_path property:, custom_metric:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/customMetrics/#{custom_metric}"
            end

            ##
            # Create a fully-qualified DataRedactionSettings resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/dataStreams/{data_stream}/dataRedactionSettings`
            #
            # @param property [String]
            # @param data_stream [String]
            #
            # @return [::String]
            def data_redaction_settings_path property:, data_stream:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/dataStreams/#{data_stream}/dataRedactionSettings"
            end

            ##
            # Create a fully-qualified DataRetentionSettings resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/dataRetentionSettings`
            #
            # @param property [String]
            #
            # @return [::String]
            def data_retention_settings_path property:
              "properties/#{property}/dataRetentionSettings"
            end

            ##
            # Create a fully-qualified DataSharingSettings resource string.
            #
            # The resource will be in the following format:
            #
            # `accounts/{account}/dataSharingSettings`
            #
            # @param account [String]
            #
            # @return [::String]
            def data_sharing_settings_path account:
              "accounts/#{account}/dataSharingSettings"
            end

            ##
            # Create a fully-qualified DataStream resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/dataStreams/{data_stream}`
            #
            # @param property [String]
            # @param data_stream [String]
            #
            # @return [::String]
            def data_stream_path property:, data_stream:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/dataStreams/#{data_stream}"
            end

            ##
            # Create a fully-qualified DisplayVideo360AdvertiserLink resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/displayVideo360AdvertiserLinks/{display_video_360_advertiser_link}`
            #
            # @param property [String]
            # @param display_video_360_advertiser_link [String]
            #
            # @return [::String]
            def display_video360_advertiser_link_path property:, display_video_360_advertiser_link:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/displayVideo360AdvertiserLinks/#{display_video_360_advertiser_link}"
            end

            ##
            # Create a fully-qualified DisplayVideo360AdvertiserLinkProposal resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/displayVideo360AdvertiserLinkProposals/{display_video_360_advertiser_link_proposal}`
            #
            # @param property [String]
            # @param display_video_360_advertiser_link_proposal [String]
            #
            # @return [::String]
            def display_video360_advertiser_link_proposal_path property:, display_video_360_advertiser_link_proposal:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/displayVideo360AdvertiserLinkProposals/#{display_video_360_advertiser_link_proposal}"
            end

            ##
            # Create a fully-qualified EnhancedMeasurementSettings resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/dataStreams/{data_stream}/enhancedMeasurementSettings`
            #
            # @param property [String]
            # @param data_stream [String]
            #
            # @return [::String]
            def enhanced_measurement_settings_path property:, data_stream:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/dataStreams/#{data_stream}/enhancedMeasurementSettings"
            end

            ##
            # Create a fully-qualified EventCreateRule resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/dataStreams/{data_stream}/eventCreateRules/{event_create_rule}`
            #
            # @param property [String]
            # @param data_stream [String]
            # @param event_create_rule [String]
            #
            # @return [::String]
            def event_create_rule_path property:, data_stream:, event_create_rule:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"
              raise ::ArgumentError, "data_stream cannot contain /" if data_stream.to_s.include? "/"

              "properties/#{property}/dataStreams/#{data_stream}/eventCreateRules/#{event_create_rule}"
            end

            ##
            # Create a fully-qualified EventEditRule resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/dataStreams/{data_stream}/eventEditRules/{event_edit_rule}`
            #
            # @param property [String]
            # @param data_stream [String]
            # @param event_edit_rule [String]
            #
            # @return [::String]
            def event_edit_rule_path property:, data_stream:, event_edit_rule:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"
              raise ::ArgumentError, "data_stream cannot contain /" if data_stream.to_s.include? "/"

              "properties/#{property}/dataStreams/#{data_stream}/eventEditRules/#{event_edit_rule}"
            end

            ##
            # Create a fully-qualified ExpandedDataSet resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/expandedDataSets/{expanded_data_set}`
            #
            # @param property [String]
            # @param expanded_data_set [String]
            #
            # @return [::String]
            def expanded_data_set_path property:, expanded_data_set:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/expandedDataSets/#{expanded_data_set}"
            end

            ##
            # Create a fully-qualified FirebaseLink resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/firebaseLinks/{firebase_link}`
            #
            # @param property [String]
            # @param firebase_link [String]
            #
            # @return [::String]
            def firebase_link_path property:, firebase_link:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/firebaseLinks/#{firebase_link}"
            end

            ##
            # Create a fully-qualified GlobalSiteTag resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/dataStreams/{data_stream}/globalSiteTag`
            #
            # @param property [String]
            # @param data_stream [String]
            #
            # @return [::String]
            def global_site_tag_path property:, data_stream:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/dataStreams/#{data_stream}/globalSiteTag"
            end

            ##
            # Create a fully-qualified GoogleAdsLink resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/googleAdsLinks/{google_ads_link}`
            #
            # @param property [String]
            # @param google_ads_link [String]
            #
            # @return [::String]
            def google_ads_link_path property:, google_ads_link:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/googleAdsLinks/#{google_ads_link}"
            end

            ##
            # Create a fully-qualified GoogleSignalsSettings resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/googleSignalsSettings`
            #
            # @param property [String]
            #
            # @return [::String]
            def google_signals_settings_path property:
              "properties/#{property}/googleSignalsSettings"
            end

            ##
            # Create a fully-qualified KeyEvent resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/keyEvents/{key_event}`
            #
            # @param property [String]
            # @param key_event [String]
            #
            # @return [::String]
            def key_event_path property:, key_event:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/keyEvents/#{key_event}"
            end

            ##
            # Create a fully-qualified MeasurementProtocolSecret resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/dataStreams/{data_stream}/measurementProtocolSecrets/{measurement_protocol_secret}`
            #
            # @param property [String]
            # @param data_stream [String]
            # @param measurement_protocol_secret [String]
            #
            # @return [::String]
            def measurement_protocol_secret_path property:, data_stream:, measurement_protocol_secret:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"
              raise ::ArgumentError, "data_stream cannot contain /" if data_stream.to_s.include? "/"

              "properties/#{property}/dataStreams/#{data_stream}/measurementProtocolSecrets/#{measurement_protocol_secret}"
            end

            ##
            # Create a fully-qualified Organization resource string.
            #
            # The resource will be in the following format:
            #
            # `organizations/{organization}`
            #
            # @param organization [String]
            #
            # @return [::String]
            def organization_path organization:
              "organizations/#{organization}"
            end

            ##
            # Create a fully-qualified Property resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}`
            #
            # @param property [String]
            #
            # @return [::String]
            def property_path property:
              "properties/#{property}"
            end

            ##
            # Create a fully-qualified ReportingDataAnnotation resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/reportingDataAnnotations/{reporting_data_annotation}`
            #
            # @param property [String]
            # @param reporting_data_annotation [String]
            #
            # @return [::String]
            def reporting_data_annotation_path property:, reporting_data_annotation:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/reportingDataAnnotations/#{reporting_data_annotation}"
            end

            ##
            # Create a fully-qualified RollupPropertySourceLink resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/rollupPropertySourceLinks/{rollup_property_source_link}`
            #
            # @param property [String]
            # @param rollup_property_source_link [String]
            #
            # @return [::String]
            def rollup_property_source_link_path property:, rollup_property_source_link:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/rollupPropertySourceLinks/#{rollup_property_source_link}"
            end

            ##
            # Create a fully-qualified SKAdNetworkConversionValueSchema resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/dataStreams/{data_stream}/sKAdNetworkConversionValueSchema/{skadnetwork_conversion_value_schema}`
            #
            # @param property [String]
            # @param data_stream [String]
            # @param skadnetwork_conversion_value_schema [String]
            #
            # @return [::String]
            def sk_ad_network_conversion_value_schema_path property:, data_stream:, skadnetwork_conversion_value_schema:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"
              raise ::ArgumentError, "data_stream cannot contain /" if data_stream.to_s.include? "/"

              "properties/#{property}/dataStreams/#{data_stream}/sKAdNetworkConversionValueSchema/#{skadnetwork_conversion_value_schema}"
            end

            ##
            # Create a fully-qualified SearchAds360Link resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/searchAds360Links/{search_ads_360_link}`
            #
            # @param property [String]
            # @param search_ads_360_link [String]
            #
            # @return [::String]
            def search_ads360_link_path property:, search_ads_360_link:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/searchAds360Links/#{search_ads_360_link}"
            end

            ##
            # Create a fully-qualified SubpropertyEventFilter resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/subpropertyEventFilters/{sub_property_event_filter}`
            #
            # @param property [String]
            # @param sub_property_event_filter [String]
            #
            # @return [::String]
            def subproperty_event_filter_path property:, sub_property_event_filter:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/subpropertyEventFilters/#{sub_property_event_filter}"
            end

            ##
            # Create a fully-qualified SubpropertySyncConfig resource string.
            #
            # The resource will be in the following format:
            #
            # `properties/{property}/subpropertySyncConfigs/{subproperty_sync_config}`
            #
            # @param property [String]
            # @param subproperty_sync_config [String]
            #
            # @return [::String]
            def subproperty_sync_config_path property:, subproperty_sync_config:
              raise ::ArgumentError, "property cannot contain /" if property.to_s.include? "/"

              "properties/#{property}/subpropertySyncConfigs/#{subproperty_sync_config}"
            end

            extend self
          end
        end
      end
    end
  end
end
