# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/document_ai/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-document_ai"
  gem.version       = Google::Cloud::DocumentAI::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Document AI uses machine learning on a single cloud-based platform to automatically classify, extract, and enrich data within your documents to unlock insights."
  gem.summary       = "API Client library for the Document AI API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-document_ai-v1", "~> 1.4"
end
