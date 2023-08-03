# frozen_string_literal: true

# Copyright 2023 Google LLC
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
  module Cloud
    module Dataplex
      module V1
        module DataTaxonomyService
          # Path helper methods for the DataTaxonomyService API.
          module Paths
            ##
            # Create a fully-qualified DataAttribute resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/dataTaxonomies/{data_taxonomy}/attributes/{data_attribute_id}`
            #
            # @param project [String]
            # @param location [String]
            # @param data_taxonomy [String]
            # @param data_attribute_id [String]
            #
            # @return [::String]
            def data_attribute_path project:, location:, data_taxonomy:, data_attribute_id:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "data_taxonomy cannot contain /" if data_taxonomy.to_s.include? "/"

              "projects/#{project}/locations/#{location}/dataTaxonomies/#{data_taxonomy}/attributes/#{data_attribute_id}"
            end

            ##
            # Create a fully-qualified DataAttributeBinding resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/dataAttributeBindings/{data_attribute_binding_id}`
            #
            # @param project [String]
            # @param location [String]
            # @param data_attribute_binding_id [String]
            #
            # @return [::String]
            def data_attribute_binding_path project:, location:, data_attribute_binding_id:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/dataAttributeBindings/#{data_attribute_binding_id}"
            end

            ##
            # Create a fully-qualified DataTaxonomy resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/dataTaxonomies/{data_taxonomy_id}`
            #
            # @param project [String]
            # @param location [String]
            # @param data_taxonomy_id [String]
            #
            # @return [::String]
            def data_taxonomy_path project:, location:, data_taxonomy_id:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/dataTaxonomies/#{data_taxonomy_id}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            extend self
          end
        end
      end
    end
  end
end