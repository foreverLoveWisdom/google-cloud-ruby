# frozen_string_literal: true

# Copyright 2025 Google LLC
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
        # The group information for methods in the CSS API. The quota is shared
        # between all methods in the group. Even if none of the methods within the
        # group have usage the information for the group is returned.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of the quota group.
        #     Format: accounts/\\{account}/quotas/\\{group}
        #     Example: `accounts/12345678/quotas/css-products-insert`
        #     Note: The \\{group} part is not guaranteed to follow a specific pattern.
        # @!attribute [r] quota_usage
        #   @return [::Integer]
        #     Output only. The current quota usage, meaning the number of calls already
        #     made on a given day to the methods in the group. The daily quota limits
        #     reset at at 12:00 PM midday UTC.
        # @!attribute [r] quota_limit
        #   @return [::Integer]
        #     Output only. The maximum number of calls allowed per day for the group.
        # @!attribute [r] quota_minute_limit
        #   @return [::Integer]
        #     Output only. The maximum number of calls allowed per minute for the group.
        # @!attribute [r] method_details
        #   @return [::Array<::Google::Shopping::Css::V1::MethodDetails>]
        #     Output only. List of all methods group quota applies to.
        class QuotaGroup
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The method details per method in the CSS API.
        # @!attribute [r] method
        #   @return [::String]
        #     Output only. The name of the method for example
        #     `cssproductsservice.listcssproducts`.
        # @!attribute [r] version
        #   @return [::String]
        #     Output only. The API version that the method belongs to.
        # @!attribute [r] subapi
        #   @return [::String]
        #     Output only. The sub-API that the method belongs to. In the CSS API, this
        #     is always `css`.
        # @!attribute [r] path
        #   @return [::String]
        #     Output only. The path for the method such as
        #     `v1/cssproductsservice.listcssproducts`.
        class MethodDetails
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the ListQuotaGroups method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The CSS account that owns the collection of method quotas and
        #     resources. In most cases, this is the CSS domain. Format:
        #     accounts/\\{account}
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of quotas to return in the response, used
        #     for paging. Defaults to 500; values above 1000 will be coerced to 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. Token (if provided) to retrieve the subsequent page. All other
        #     parameters must match the original call that provided the page token.
        class ListQuotaGroupsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for the ListMethodGroups method.
        # @!attribute [rw] quota_groups
        #   @return [::Array<::Google::Shopping::Css::V1::QuotaGroup>]
        #     The methods, current quota usage and limits per each group. The quota is
        #     shared between all methods in the group. The groups are sorted in
        #     descending order based on
        #     {::Google::Shopping::Css::V1::QuotaGroup#quota_usage quota_usage}.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token, which can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        class ListQuotaGroupsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
