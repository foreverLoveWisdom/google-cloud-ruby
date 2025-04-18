# frozen_string_literal: true

# Copyright 2024 Google LLC
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
  module Shopping
    module Css
      module V1
        # This resource represents input data you submit for a CSS Product, not
        # the processed CSS Product that you see in CSS Center, in Shopping Ads, or
        # across Google surfaces.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the CSS Product input.
        #     Format:
        #     `accounts/{account}/cssProductInputs/{css_product_input}`, where the
        #     last section `css_product_input` consists of 3 parts:
        #     contentLanguage~feedLabel~offerId. Example:
        #     accounts/123/cssProductInputs/de~DE~rawProvidedId123
        # @!attribute [r] final_name
        #   @return [::String]
        #     Output only. The name of the processed CSS Product.
        #     Format:
        #     `accounts/{account}/cssProducts/{css_product}`
        #     "
        # @!attribute [rw] raw_provided_id
        #   @return [::String]
        #     Required. Your unique identifier for the CSS Product. This is the same for
        #     the CSS Product input and processed CSS Product. We only allow ids with
        #     alphanumerics, underscores and dashes. See the [products feed
        #     specification](https://support.google.com/merchants/answer/188494#id) for
        #     details.
        # @!attribute [rw] content_language
        #   @return [::String]
        #     Required. The two-letter [ISO
        #     639-1](http://en.wikipedia.org/wiki/ISO_639-1) language code for the CSS
        #     Product.
        # @!attribute [rw] feed_label
        #   @return [::String]
        #     Required. The [feed
        #     label](https://developers.google.com/shopping-content/guides/products/feed-labels)
        #     for the CSS Product.
        #     Feed Label is synonymous to "target country" and hence should always be a
        #     valid region code. For example: 'DE' for Germany, 'FR' for France.
        # @!attribute [rw] freshness_time
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Google::Protobuf::Timestamp]
        #     DEPRECATED. Use expiration_date instead.
        #     Represents the existing version (freshness) of the CSS Product, which
        #     can be used to preserve the right order when multiple updates are done at
        #     the same time.
        #
        #     This field must not be set to the future time.
        #
        #     If set, the update is prevented if a newer version of the item already
        #     exists in our system (that is the last update time of the existing
        #     CSS products is later than the freshness time set in the update). If
        #     the update happens, the last update time is then set to this freshness
        #     time.
        #
        #     If not set, the update will not be prevented and the last update time will
        #     default to when this request was received by the CSS API.
        #
        #     If the operation is prevented, the aborted exception will be
        #     thrown.
        # @!attribute [rw] attributes
        #   @return [::Google::Shopping::Css::V1::Attributes]
        #     A list of CSS Product attributes.
        # @!attribute [rw] custom_attributes
        #   @return [::Array<::Google::Shopping::Type::CustomAttribute>]
        #     A list of custom (CSS-provided) attributes. It can also be used for
        #     submitting any attribute of the feed specification in its generic
        #     form (for example:
        #     `{ "name": "size type", "value": "regular" }`).
        #     This is useful for submitting attributes not explicitly exposed by the
        #     API, such as additional attributes used for Buy on Google.
        class CssProductInput
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the InsertCssProductInput method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The account where this CSS Product will be inserted.
        #     Format: accounts/\\{account}
        # @!attribute [rw] css_product_input
        #   @return [::Google::Shopping::Css::V1::CssProductInput]
        #     Required. The CSS Product Input to insert.
        # @!attribute [rw] feed_id
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Integer]
        #     Optional. DEPRECATED. Feed id is not required for CSS Products.
        #     The primary or supplemental feed id. If CSS Product already exists and
        #     feed id provided is different, then the CSS Product will be moved to a
        #     new feed.
        #     Note: For now, CSSs do not need to provide feed ids as we create
        #     feeds on the fly.
        #     We do not have supplemental feed support for CSS Products yet.
        class InsertCssProductInputRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the UpdateCssProductInput method.
        # @!attribute [rw] css_product_input
        #   @return [::Google::Shopping::Css::V1::CssProductInput]
        #     Required. The CSS product input resource to update. Information you submit
        #     will be applied to the processed CSS product as well.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The list of CSS product attributes to be updated.
        #
        #     If the update mask is omitted, then it is treated as implied field mask
        #     equivalent to all fields that are populated (have a non-empty value).
        #
        #     Attributes specified in the update mask without a value specified in the
        #     body will be deleted from the CSS product.
        #
        #     Update mask can only be specified for top level fields in
        #     attributes and custom attributes.
        #
        #     To specify the update mask for custom attributes you need to add the
        #     `custom_attribute.` prefix.
        #
        #     Providing special "*" value for full CSS product replacement is not
        #     supported.
        class UpdateCssProductInputRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the DeleteCssProductInput method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the CSS product input resource to delete.
        #     Format: accounts/\\{account}/cssProductInputs/\\{css_product_input}, where the
        #     last section `css_product_input` consists of 3 parts:
        #     contentLanguage~feedLabel~offerId. Example:
        #     accounts/123/cssProductInputs/de~DE~rawProvidedId123
        # @!attribute [rw] supplemental_feed_id
        #   @return [::Integer]
        #     The Content API Supplemental Feed ID.
        #     The field must not be set if the action applies to a primary feed.
        #     If the field is set, then product action applies to a supplemental feed
        #     instead of primary Content API feed.
        class DeleteCssProductInputRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
