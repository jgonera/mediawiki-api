# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mediawiki-api/version'

Gem::Specification.new do |spec|
  spec.name          = "mediawiki-api"
  spec.version       = MediawikiApi::VERSION
  spec.authors       = ["Juliusz Gonera", "Chris McMahon", "Jeff Hall", "Zeljko Filipin"]
  spec.email         = ["jgonera@wikimedia.org", "cmcmahon@wikimedia.org", "jhall@wikimedia.org", "zeljko.filipin@gmail.com"]
  spec.description   = %q{A library for interacting with MediaWiki API from Ruby.}
  spec.summary       = %q{Uses adapter-agnostic Faraday gem to talk to the API.}
  spec.homepage      = "https://github.com/jgonera/mediawiki-api"
  spec.license       = "GPLv2"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 0.9.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "webmock", "~> 1.17.2"
end
