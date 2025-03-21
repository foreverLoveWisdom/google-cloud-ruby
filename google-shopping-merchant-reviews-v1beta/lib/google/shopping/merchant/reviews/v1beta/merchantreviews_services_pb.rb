# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/shopping/merchant/reviews/v1beta/merchantreviews.proto for package 'Google.Shopping.Merchant.Reviews.V1beta'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/shopping/merchant/reviews/v1beta/merchantreviews_pb'

module Google
  module Shopping
    module Merchant
      module Reviews
        module V1beta
          module MerchantReviewsService
            # Service to manage merchant reviews.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.shopping.merchant.reviews.v1beta.MerchantReviewsService'

              # Gets a merchant review.
              rpc :GetMerchantReview, ::Google::Shopping::Merchant::Reviews::V1beta::GetMerchantReviewRequest, ::Google::Shopping::Merchant::Reviews::V1beta::MerchantReview
              # Lists merchant reviews.
              rpc :ListMerchantReviews, ::Google::Shopping::Merchant::Reviews::V1beta::ListMerchantReviewsRequest, ::Google::Shopping::Merchant::Reviews::V1beta::ListMerchantReviewsResponse
              # Inserts a review for your Merchant Center account. If the review
              # already exists, then the review is replaced with the new instance.
              rpc :InsertMerchantReview, ::Google::Shopping::Merchant::Reviews::V1beta::InsertMerchantReviewRequest, ::Google::Shopping::Merchant::Reviews::V1beta::MerchantReview
              # Deletes merchant review.
              rpc :DeleteMerchantReview, ::Google::Shopping::Merchant::Reviews::V1beta::DeleteMerchantReviewRequest, ::Google::Protobuf::Empty
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
