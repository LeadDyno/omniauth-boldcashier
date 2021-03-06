# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/boldcashier/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-boldcashier"
  spec.version       = OmniAuth::Boldcashier::VERSION
  spec.authors       = ["Mike Machado"]
  spec.email         = ["mike@leaddyno.com"]

  spec.summary       = %q{Bold Cashier strategy for OmniAuth.}
  spec.homepage      = "https://github.com/LeadDyno/omniauth-boldcashier"
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
