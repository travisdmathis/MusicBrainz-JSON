# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mbjson/version'

Gem::Specification.new do |spec|
  spec.name          = "mbjson"
  spec.version       = Mbjson::VERSION
  spec.authors       = ["Travis Mathis"]
  spec.email         = ["travisdmathis@gmail.com"]
  spec.summary       = %q{Wrapper for MusicBrainz JSON API}
  spec.description   = %q{Wrapper for MusicBrainz JSON API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"

  spec.add_dependency "faraday"
  spec.add_dependency "json"
  
end
