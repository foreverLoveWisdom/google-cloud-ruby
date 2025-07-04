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

require "helper"
require "google/shopping/merchant/accounts"
require "gapic/common"
require "gapic/grpc"
require "gapic/rest"

class Google::Shopping::Merchant::Accounts::ClientConstructionMinitest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_account_tax_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.account_tax_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.account_tax_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::AccountTaxService::Client, client
    end
  end

  def test_account_tax_service_rest
    skip unless Google::Shopping::Merchant::Accounts.account_tax_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.account_tax_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::AccountTaxService::Rest::Client, client
    end
  end

  def test_account_issue_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.account_issue_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.account_issue_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::AccountIssueService::Client, client
    end
  end

  def test_account_issue_service_rest
    skip unless Google::Shopping::Merchant::Accounts.account_issue_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.account_issue_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::AccountIssueService::Rest::Client, client
    end
  end

  def test_user_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.user_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.user_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::UserService::Client, client
    end
  end

  def test_user_service_rest
    skip unless Google::Shopping::Merchant::Accounts.user_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.user_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::UserService::Rest::Client, client
    end
  end

  def test_accounts_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.accounts_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.accounts_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::AccountsService::Client, client
    end
  end

  def test_accounts_service_rest
    skip unless Google::Shopping::Merchant::Accounts.accounts_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.accounts_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::AccountsService::Rest::Client, client
    end
  end

  def test_autofeed_settings_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.autofeed_settings_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.autofeed_settings_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::AutofeedSettingsService::Client, client
    end
  end

  def test_autofeed_settings_service_rest
    skip unless Google::Shopping::Merchant::Accounts.autofeed_settings_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.autofeed_settings_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::AutofeedSettingsService::Rest::Client, client
    end
  end

  def test_automatic_improvements_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.automatic_improvements_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.automatic_improvements_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::AutomaticImprovementsService::Client, client
    end
  end

  def test_automatic_improvements_service_rest
    skip unless Google::Shopping::Merchant::Accounts.automatic_improvements_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.automatic_improvements_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::AutomaticImprovementsService::Rest::Client, client
    end
  end

  def test_business_identity_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.business_identity_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.business_identity_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::BusinessIdentityService::Client, client
    end
  end

  def test_business_identity_service_rest
    skip unless Google::Shopping::Merchant::Accounts.business_identity_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.business_identity_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::BusinessIdentityService::Rest::Client, client
    end
  end

  def test_business_info_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.business_info_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.business_info_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::BusinessInfoService::Client, client
    end
  end

  def test_business_info_service_rest
    skip unless Google::Shopping::Merchant::Accounts.business_info_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.business_info_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::BusinessInfoService::Rest::Client, client
    end
  end

  def test_checkout_settings_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.checkout_settings_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.checkout_settings_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::CheckoutSettingsService::Client, client
    end
  end

  def test_checkout_settings_service_rest
    skip unless Google::Shopping::Merchant::Accounts.checkout_settings_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.checkout_settings_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::CheckoutSettingsService::Rest::Client, client
    end
  end

  def test_email_preferences_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.email_preferences_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.email_preferences_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::EmailPreferencesService::Client, client
    end
  end

  def test_email_preferences_service_rest
    skip unless Google::Shopping::Merchant::Accounts.email_preferences_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.email_preferences_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::EmailPreferencesService::Rest::Client, client
    end
  end

  def test_gbp_accounts_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.gbp_accounts_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.gbp_accounts_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::GbpAccountsService::Client, client
    end
  end

  def test_gbp_accounts_service_rest
    skip unless Google::Shopping::Merchant::Accounts.gbp_accounts_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.gbp_accounts_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::GbpAccountsService::Rest::Client, client
    end
  end

  def test_homepage_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.homepage_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.homepage_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::HomepageService::Client, client
    end
  end

  def test_homepage_service_rest
    skip unless Google::Shopping::Merchant::Accounts.homepage_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.homepage_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::HomepageService::Rest::Client, client
    end
  end

  def test_lfp_providers_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.lfp_providers_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.lfp_providers_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::LfpProvidersService::Client, client
    end
  end

  def test_lfp_providers_service_rest
    skip unless Google::Shopping::Merchant::Accounts.lfp_providers_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.lfp_providers_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::LfpProvidersService::Rest::Client, client
    end
  end

  def test_omnichannel_settings_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.omnichannel_settings_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.omnichannel_settings_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::OmnichannelSettingsService::Client, client
    end
  end

  def test_omnichannel_settings_service_rest
    skip unless Google::Shopping::Merchant::Accounts.omnichannel_settings_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.omnichannel_settings_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::OmnichannelSettingsService::Rest::Client, client
    end
  end

  def test_online_return_policy_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.online_return_policy_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.online_return_policy_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::OnlineReturnPolicyService::Client, client
    end
  end

  def test_online_return_policy_service_rest
    skip unless Google::Shopping::Merchant::Accounts.online_return_policy_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.online_return_policy_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::OnlineReturnPolicyService::Rest::Client, client
    end
  end

  def test_programs_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.programs_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.programs_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::ProgramsService::Client, client
    end
  end

  def test_programs_service_rest
    skip unless Google::Shopping::Merchant::Accounts.programs_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.programs_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::ProgramsService::Rest::Client, client
    end
  end

  def test_regions_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.regions_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.regions_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::RegionsService::Client, client
    end
  end

  def test_regions_service_rest
    skip unless Google::Shopping::Merchant::Accounts.regions_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.regions_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::RegionsService::Rest::Client, client
    end
  end

  def test_shipping_settings_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.shipping_settings_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.shipping_settings_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::ShippingSettingsService::Client, client
    end
  end

  def test_shipping_settings_service_rest
    skip unless Google::Shopping::Merchant::Accounts.shipping_settings_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.shipping_settings_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::ShippingSettingsService::Rest::Client, client
    end
  end

  def test_terms_of_service_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.terms_of_service_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.terms_of_service_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceService::Client, client
    end
  end

  def test_terms_of_service_service_rest
    skip unless Google::Shopping::Merchant::Accounts.terms_of_service_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.terms_of_service_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceService::Rest::Client, client
    end
  end

  def test_terms_of_service_agreement_state_service_grpc
    skip unless Google::Shopping::Merchant::Accounts.terms_of_service_agreement_state_service_available? transport: :grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Shopping::Merchant::Accounts.terms_of_service_agreement_state_service transport: :grpc do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Client, client
    end
  end

  def test_terms_of_service_agreement_state_service_rest
    skip unless Google::Shopping::Merchant::Accounts.terms_of_service_agreement_state_service_available? transport: :rest
    Gapic::Rest::ClientStub.stub :new, DummyStub.new do
      client = Google::Shopping::Merchant::Accounts.terms_of_service_agreement_state_service transport: :rest do |config|
        config.credentials = :dummy_credentials
      end
      assert_kind_of Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client, client
    end
  end
end
