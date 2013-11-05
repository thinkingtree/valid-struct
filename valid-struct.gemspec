# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'valid_struct/version'

Gem::Specification.new do |spec|
  spec.name          = "valid-struct"
  spec.version       = ValidStruct::VERSION
  spec.authors       = ["Justin Schumacher"]
  spec.email         = ["justin@thethinkingtree.com"]
  spec.description   = %q{A Struct for Ruby that includes validation support}
  spec.summary       = %q{Struct with validations}
  spec.homepage      = "https://github.com/thinkingtree/valid-struct"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activemodel"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
