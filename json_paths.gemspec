# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'json_paths/version'

Gem::Specification.new do |spec|
  spec.name          = "json_paths"
  spec.version       = JsonPaths::VERSION
  spec.authors       = ["Matt Pruitt"]
  spec.email         = ["matt@guitsaru.com"]
  spec.summary       = %q{Gets all json paths from a json document.}
  spec.description   = %q{Gets all json paths from a json document.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
