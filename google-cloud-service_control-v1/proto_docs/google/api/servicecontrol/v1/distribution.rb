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
  module Cloud
    module ServiceControl
      module V1
        # Distribution represents a frequency distribution of double-valued sample
        # points. It contains the size of the population of sample points plus
        # additional optional information:
        #
        # * the arithmetic mean of the samples
        # * the minimum and maximum of the samples
        # * the sum-squared-deviation of the samples, used to compute variance
        # * a histogram of the values of the sample points
        # @!attribute [rw] count
        #   @return [::Integer]
        #     The total number of samples in the distribution. Must be >= 0.
        # @!attribute [rw] mean
        #   @return [::Float]
        #     The arithmetic mean of the samples in the distribution. If `count` is
        #     zero then this field must be zero.
        # @!attribute [rw] minimum
        #   @return [::Float]
        #     The minimum of the population of values. Ignored if `count` is zero.
        # @!attribute [rw] maximum
        #   @return [::Float]
        #     The maximum of the population of values. Ignored if `count` is zero.
        # @!attribute [rw] sum_of_squared_deviation
        #   @return [::Float]
        #     The sum of squared deviations from the mean:
        #       Sum[i=1..count]((x_i - mean)^2)
        #     where each x_i is a sample values. If `count` is zero then this field
        #     must be zero, otherwise validation of the request fails.
        # @!attribute [rw] bucket_counts
        #   @return [::Array<::Integer>]
        #     The number of samples in each histogram bucket. `bucket_counts` are
        #     optional. If present, they must sum to the `count` value.
        #
        #     The buckets are defined below in `bucket_option`. There are N buckets.
        #     `bucket_counts[0]` is the number of samples in the underflow bucket.
        #     `bucket_counts[1]` to `bucket_counts[N-1]` are the numbers of samples
        #     in each of the finite buckets. And `bucket_counts[N] is the number
        #     of samples in the overflow bucket. See the comments of `bucket_option`
        #     below for more details.
        #
        #     Any suffix of trailing zeros may be omitted.
        # @!attribute [rw] linear_buckets
        #   @return [::Google::Cloud::ServiceControl::V1::Distribution::LinearBuckets]
        #     Buckets with constant width.
        #
        #     Note: The following fields are mutually exclusive: `linear_buckets`, `exponential_buckets`, `explicit_buckets`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] exponential_buckets
        #   @return [::Google::Cloud::ServiceControl::V1::Distribution::ExponentialBuckets]
        #     Buckets with exponentially growing width.
        #
        #     Note: The following fields are mutually exclusive: `exponential_buckets`, `linear_buckets`, `explicit_buckets`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] explicit_buckets
        #   @return [::Google::Cloud::ServiceControl::V1::Distribution::ExplicitBuckets]
        #     Buckets with arbitrary user-provided width.
        #
        #     Note: The following fields are mutually exclusive: `explicit_buckets`, `linear_buckets`, `exponential_buckets`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] exemplars
        #   @return [::Array<::Google::Api::Distribution::Exemplar>]
        #     Example points. Must be in increasing order of `value` field.
        class Distribution
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Describing buckets with constant width.
          # @!attribute [rw] num_finite_buckets
          #   @return [::Integer]
          #     The number of finite buckets. With the underflow and overflow buckets,
          #     the total number of buckets is `num_finite_buckets` + 2.
          #     See comments on `bucket_options` for details.
          # @!attribute [rw] width
          #   @return [::Float]
          #     The i'th linear bucket covers the interval
          #       [offset + (i-1) * width, offset + i * width)
          #     where i ranges from 1 to num_finite_buckets, inclusive.
          #     Must be strictly positive.
          # @!attribute [rw] offset
          #   @return [::Float]
          #     The i'th linear bucket covers the interval
          #       [offset + (i-1) * width, offset + i * width)
          #     where i ranges from 1 to num_finite_buckets, inclusive.
          class LinearBuckets
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Describing buckets with exponentially growing width.
          # @!attribute [rw] num_finite_buckets
          #   @return [::Integer]
          #     The number of finite buckets. With the underflow and overflow buckets,
          #     the total number of buckets is `num_finite_buckets` + 2.
          #     See comments on `bucket_options` for details.
          # @!attribute [rw] growth_factor
          #   @return [::Float]
          #     The i'th exponential bucket covers the interval
          #       [scale * growth_factor^(i-1), scale * growth_factor^i)
          #     where i ranges from 1 to num_finite_buckets inclusive.
          #     Must be larger than 1.0.
          # @!attribute [rw] scale
          #   @return [::Float]
          #     The i'th exponential bucket covers the interval
          #       [scale * growth_factor^(i-1), scale * growth_factor^i)
          #     where i ranges from 1 to num_finite_buckets inclusive.
          #     Must be > 0.
          class ExponentialBuckets
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Describing buckets with arbitrary user-provided width.
          # @!attribute [rw] bounds
          #   @return [::Array<::Float>]
          #     'bound' is a list of strictly increasing boundaries between
          #     buckets. Note that a list of length N-1 defines N buckets because
          #     of fenceposting. See comments on `bucket_options` for details.
          #
          #     The i'th finite bucket covers the interval
          #       [bound[i-1], bound[i])
          #     where i ranges from 1 to bound_size() - 1. Note that there are no
          #     finite buckets at all if 'bound' only contains a single element; in
          #     that special case the single bound defines the boundary between the
          #     underflow and overflow buckets.
          #
          #     bucket number                   lower bound    upper bound
          #      i == 0 (underflow)              -inf           bound[i]
          #      0 < i < bound_size()            bound[i-1]     bound[i]
          #      i == bound_size() (overflow)    bound[i-1]     +inf
          class ExplicitBuckets
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
