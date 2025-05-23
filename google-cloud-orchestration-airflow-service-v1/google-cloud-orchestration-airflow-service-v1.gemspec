# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/orchestration/airflow/service/v1/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-orchestration-airflow-service-v1"
  gem.version       = Google::Cloud::Orchestration::Airflow::Service::V1::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "The client library for the Cloud Composer API, built on the popular Apache Airflow open source project. Cloud Composer is a fully managed workflow orchestration service, enabling you to create, schedule, monitor, and manage workflows that span across clouds and on-premises data centers. Note that google-cloud-orchestration-airflow-service-v1 is a version-specific client library. For most uses, we recommend installing the main client library google-cloud-orchestration-airflow-service instead. See the readme for more details."
  gem.summary       = "Manages Apache Airflow environments on Google Cloud Platform."
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
end
