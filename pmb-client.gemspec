# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pmb/version'

Gem::Specification.new do |spec|
  spec.name          = "pmb-client"
  spec.version       = PMB::VERSION
  spec.authors       = ["Chris Smith"]
  spec.email         = ["cs24@sanger.ac.uk"]

  spec.summary       = %q{A client to the Print My Barcode web service}
  spec.homepage      = "https://github.com/jbeast/pmb-client"
  spec.license       = "GPL-3.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest"

  spec.add_dependency "json_api_client", "~> 1.1"
end
