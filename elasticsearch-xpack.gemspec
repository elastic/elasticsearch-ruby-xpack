# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'elasticsearch/xpack/version'

Gem::Specification.new do |spec|
  spec.name          = "elasticsearch-xpack"
  spec.version       = Elasticsearch::XPack::VERSION
  spec.authors       = ["Karel Minarik"]
  spec.email         = ["karel@elastic.co"]

  spec.summary       = "Ruby integrations for the X-Pack extensions for Elasticsearch"
  spec.description   = "Ruby integrations for the X-Pack extensions for Elasticsearch"
  spec.homepage      = "https://github.com/elastic/elasticsearch-xpack-ruby"
  spec.license       = "Apache 2"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 11.1"

  spec.add_dependency "elasticsearch-api"

  spec.add_development_dependency "elasticsearch", '~> 5'
  spec.add_development_dependency "elasticsearch-transport", '~> 5'
  spec.add_development_dependency "elasticsearch-extensions"

  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "ansi"
  spec.add_development_dependency "turn"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-reporters"
  spec.add_development_dependency "shoulda-context"
  spec.add_development_dependency "mocha"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "pry"
end
