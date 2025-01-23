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
    module Translate
      module V3
        # An Adaptive MT Dataset.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the dataset, in form of
        #     `projects/{project-number-or-id}/locations/{location_id}/adaptiveMtDatasets/{dataset_id}`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The name of the dataset to show in the interface. The name can be
        #     up to 32 characters long and can consist only of ASCII Latin letters A-Z
        #     and a-z, underscores (_), and ASCII digits 0-9.
        # @!attribute [rw] source_language_code
        #   @return [::String]
        #     The BCP-47 language code of the source language.
        # @!attribute [rw] target_language_code
        #   @return [::String]
        #     The BCP-47 language code of the target language.
        # @!attribute [rw] example_count
        #   @return [::Integer]
        #     The number of examples in the dataset.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this dataset was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this dataset was last updated.
        class AdaptiveMtDataset
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        #  Request message for creating an AdaptiveMtDataset.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Name of the parent project. In form of
        #     `projects/{project-number-or-id}/locations/{location-id}`
        # @!attribute [rw] adaptive_mt_dataset
        #   @return [::Google::Cloud::Translate::V3::AdaptiveMtDataset]
        #     Required. The AdaptiveMtDataset to be created.
        class CreateAdaptiveMtDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for deleting an AdaptiveMtDataset.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the dataset. In the form of
        #     `projects/{project-number-or-id}/locations/{location-id}/adaptiveMtDatasets/{adaptive-mt-dataset-id}`
        class DeleteAdaptiveMtDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for getting an Adaptive MT dataset.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the dataset. In the form of
        #     `projects/{project-number-or-id}/locations/{location-id}/adaptiveMtDatasets/{adaptive-mt-dataset-id}`
        class GetAdaptiveMtDatasetRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for listing all Adaptive MT datasets that the requestor has
        # access to.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the project from which to list the Adaptive
        #     MT datasets. `projects/{project-number-or-id}/locations/{location-id}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Requested page size. The server may return fewer results than
        #     requested. If unspecified, the server picks an appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results the server should return.
        #     Typically, this is the value of
        #     ListAdaptiveMtDatasetsResponse.next_page_token returned from the
        #     previous call to `ListAdaptiveMtDatasets` method. The first page is
        #     returned if `page_token`is empty or missing.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. An expression for filtering the results of the request.
        #     Filter is not supported yet.
        class ListAdaptiveMtDatasetsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A list of AdaptiveMtDatasets.
        # @!attribute [r] adaptive_mt_datasets
        #   @return [::Array<::Google::Cloud::Translate::V3::AdaptiveMtDataset>]
        #     Output only. A list of Adaptive MT datasets.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Optional. A token to retrieve a page of results. Pass this value in the
        #     [ListAdaptiveMtDatasetsRequest.page_token] field in the subsequent call to
        #     `ListAdaptiveMtDatasets` method to retrieve the next page of results.
        class ListAdaptiveMtDatasetsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request for sending an AdaptiveMt translation query.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Location to make a regional call.
        #
        #     Format: `projects/{project-number-or-id}/locations/{location-id}`.
        # @!attribute [rw] dataset
        #   @return [::String]
        #     Required. The resource name for the dataset to use for adaptive MT.
        #     `projects/{project}/locations/{location-id}/adaptiveMtDatasets/{dataset}`
        # @!attribute [rw] content
        #   @return [::Array<::String>]
        #     Required. The content of the input in string format.
        # @!attribute [rw] reference_sentence_config
        #   @return [::Google::Cloud::Translate::V3::AdaptiveMtTranslateRequest::ReferenceSentenceConfig]
        #     Configuration for caller provided reference sentences.
        # @!attribute [rw] glossary_config
        #   @return [::Google::Cloud::Translate::V3::AdaptiveMtTranslateRequest::GlossaryConfig]
        #     Optional. Glossary to be applied. The glossary must be
        #     within the same region (have the same location-id) as the model, otherwise
        #     an INVALID_ARGUMENT (400) error is returned.
        class AdaptiveMtTranslateRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A pair of sentences used as reference in source and target languages.
          # @!attribute [rw] source_sentence
          #   @return [::String]
          #     Source sentence in the sentence pair.
          # @!attribute [rw] target_sentence
          #   @return [::String]
          #     Target sentence in the sentence pair.
          class ReferenceSentencePair
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A list of reference sentence pairs.
          # @!attribute [rw] reference_sentence_pairs
          #   @return [::Array<::Google::Cloud::Translate::V3::AdaptiveMtTranslateRequest::ReferenceSentencePair>]
          #     Reference sentence pairs.
          class ReferenceSentencePairList
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Message of caller-provided reference configuration.
          # @!attribute [rw] reference_sentence_pair_lists
          #   @return [::Array<::Google::Cloud::Translate::V3::AdaptiveMtTranslateRequest::ReferenceSentencePairList>]
          #     Reference sentences pair lists. Each list will be used as the references
          #     to translate the sentence under "content" field at the corresponding
          #     index. Length of the list is required to be equal to the length of
          #     "content" field.
          # @!attribute [rw] source_language_code
          #   @return [::String]
          #     Source language code.
          # @!attribute [rw] target_language_code
          #   @return [::String]
          #     Target language code.
          class ReferenceSentenceConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Configures which glossary is used for a specific target language and
          # defines
          # options for applying that glossary.
          # @!attribute [rw] glossary
          #   @return [::String]
          #     Required. The `glossary` to be applied for this translation.
          #
          #     The format depends on the glossary:
          #
          #     - User-provided custom glossary:
          #       `projects/{project-number-or-id}/locations/{location-id}/glossaries/{glossary-id}`
          # @!attribute [rw] ignore_case
          #   @return [::Boolean]
          #     Optional. Indicates match is case insensitive. The default value is
          #     `false` if missing.
          # @!attribute [rw] contextual_translation_enabled
          #   @return [::Boolean]
          #     Optional. If set to true, the glossary will be used for contextual
          #     translation.
          class GlossaryConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # An AdaptiveMt translation.
        # @!attribute [r] translated_text
        #   @return [::String]
        #     Output only. The translated text.
        class AdaptiveMtTranslation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An AdaptiveMtTranslate response.
        # @!attribute [r] translations
        #   @return [::Array<::Google::Cloud::Translate::V3::AdaptiveMtTranslation>]
        #     Output only. The translation.
        # @!attribute [r] language_code
        #   @return [::String]
        #     Output only. The translation's language code.
        # @!attribute [rw] glossary_translations
        #   @return [::Array<::Google::Cloud::Translate::V3::AdaptiveMtTranslation>]
        #     Text translation response if a glossary is provided in the request. This
        #     could be the same as 'translation' above if no terms apply.
        class AdaptiveMtTranslateResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An AdaptiveMtFile.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the file, in form of
        #     `projects/{project-number-or-id}/locations/{location_id}/adaptiveMtDatasets/{dataset}/adaptiveMtFiles/{file}`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The file's display name.
        # @!attribute [rw] entry_count
        #   @return [::Integer]
        #     The number of entries that the file contains.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this file was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this file was last updated.
        class AdaptiveMtFile
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request for getting an AdaptiveMtFile.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the file, in form of
        #     `projects/{project-number-or-id}/locations/{location_id}/adaptiveMtDatasets/{dataset}/adaptiveMtFiles/{file}`
        class GetAdaptiveMtFileRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request for deleting an AdaptiveMt file.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the file to delete, in form of
        #     `projects/{project-number-or-id}/locations/{location_id}/adaptiveMtDatasets/{dataset}/adaptiveMtFiles/{file}`
        class DeleteAdaptiveMtFileRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request for importing an AdaptiveMt file along with its sentences.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the file, in form of
        #     `projects/{project-number-or-id}/locations/{location_id}/adaptiveMtDatasets/{dataset}`
        # @!attribute [rw] file_input_source
        #   @return [::Google::Cloud::Translate::V3::FileInputSource]
        #     Inline file source.
        #
        #     Note: The following fields are mutually exclusive: `file_input_source`, `gcs_input_source`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] gcs_input_source
        #   @return [::Google::Cloud::Translate::V3::GcsInputSource]
        #     Google Cloud Storage file source.
        #
        #     Note: The following fields are mutually exclusive: `gcs_input_source`, `file_input_source`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class ImportAdaptiveMtFileRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response for importing an AdaptiveMtFile
        # @!attribute [r] adaptive_mt_file
        #   @return [::Google::Cloud::Translate::V3::AdaptiveMtFile]
        #     Output only. The Adaptive MT file that was imported.
        class ImportAdaptiveMtFileResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to list all AdaptiveMt files under a given dataset.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the project from which to list the Adaptive
        #     MT files.
        #     `projects/{project}/locations/{location}/adaptiveMtDatasets/{dataset}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A token identifying a page of results the server should return.
        #     Typically, this is the value of
        #     ListAdaptiveMtFilesResponse.next_page_token returned from the
        #     previous call to `ListAdaptiveMtFiles` method. The first page is
        #     returned if `page_token`is empty or missing.
        class ListAdaptiveMtFilesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response for listing all AdaptiveMt files under a given dataset.
        # @!attribute [r] adaptive_mt_files
        #   @return [::Array<::Google::Cloud::Translate::V3::AdaptiveMtFile>]
        #     Output only. The Adaptive MT files.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Optional. A token to retrieve a page of results. Pass this value in the
        #     ListAdaptiveMtFilesRequest.page_token field in the subsequent call to
        #     `ListAdaptiveMtFiles` method to retrieve the next page of results.
        class ListAdaptiveMtFilesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An AdaptiveMt sentence entry.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the file, in form of
        #     `projects/{project-number-or-id}/locations/{location_id}/adaptiveMtDatasets/{dataset}/adaptiveMtFiles/{file}/adaptiveMtSentences/{sentence}`
        # @!attribute [rw] source_sentence
        #   @return [::String]
        #     Required. The source sentence.
        # @!attribute [rw] target_sentence
        #   @return [::String]
        #     Required. The target sentence.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this sentence was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp when this sentence was last updated.
        class AdaptiveMtSentence
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request for listing Adaptive MT sentences from a Dataset/File.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the project from which to list the Adaptive
        #     MT files. The following format lists all sentences under a file.
        #     `projects/{project}/locations/{location}/adaptiveMtDatasets/{dataset}/adaptiveMtFiles/{file}`
        #     The following format lists all sentences within a dataset.
        #     `projects/{project}/locations/{location}/adaptiveMtDatasets/{dataset}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A token identifying a page of results the server should return.
        #     Typically, this is the value of
        #     ListAdaptiveMtSentencesRequest.next_page_token returned from the
        #     previous call to `ListTranslationMemories` method. The first page is
        #     returned if `page_token` is empty or missing.
        class ListAdaptiveMtSentencesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # List AdaptiveMt sentences response.
        # @!attribute [r] adaptive_mt_sentences
        #   @return [::Array<::Google::Cloud::Translate::V3::AdaptiveMtSentence>]
        #     Output only. The list of AdaptiveMtSentences.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Optional.
        class ListAdaptiveMtSentencesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
