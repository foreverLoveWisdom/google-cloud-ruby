# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/spanner/admin/instance/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-spanner-admin-instance-v1"
  gem.version       = Google::Cloud::Spanner::Admin::Instance::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Cloud Spanner is a managed, mission-critical, globally consistent and scalable relational database service. Note that google-cloud-spanner-admin-instance-v1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-spanner instead. See the readme for more details."
  gem.summary       = "Cloud Spanner is a managed, mission-critical, globally consistent and scalable relational database service."
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      `git ls-files -- proto_docs/*`.split("\n") +
                      ["README.md", "LICENSE.md", "AUTHENTICATION.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.1"

  gem.add_dependency "gapic-common", "~> 1.0"
  gem.add_dependency "google-cloud-errors", "~> 1.0"
  gem.add_dependency "grpc-google-iam-v1", "~> 1.11"
end
