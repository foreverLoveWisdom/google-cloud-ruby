# -*- encoding: utf-8 -*-
require File.expand_path("../lib/google/cloud/dns/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-dns"
  gem.version       = Google::Cloud::Dns::VERSION

  gem.authors       = ["Mike Moore", "Chris Smith"]
  gem.email         = ["mike@blowmage.com", "quartzmo@gmail.com"]
  gem.description   = "google-cloud-dns is the official library for Google Cloud DNS."
  gem.summary       = "API Client library for Google Cloud DNS"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby/tree/master/google-cloud-dns"
  gem.license       = "Apache-2.0"

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["OVERVIEW.md", "AUTHENTICATION.md", "LOGGING.md", "CONTRIBUTING.md", "TROUBLESHOOTING.md", "CHANGELOG.md", "CODE_OF_CONDUCT.md", "LICENSE", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-apis-dns_v1", "~> 0.1"
  gem.add_dependency "googleauth", "~> 1.0"
  gem.add_dependency "zonefile", "~> 1.04"
end
