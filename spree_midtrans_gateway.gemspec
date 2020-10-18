
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "spree_midtrans_gateway/version"

Gem::Specification.new do |spec|
  spec.name          = "spree_midtrans_gateway"
  spec.version       = SpreeMidtransGateway::VERSION
  spec.authors       = ["Dimas J. Taniawan"]
  spec.email         = ["dimazniawan@gmail.com"]

  spec.summary       = "Midtrans gateway for Spree"
  spec.description   = "Midtrans payment gateway for Spree framework"
  spec.homepage      = "https://github.com/dimasjt/spree_midtrans_gateway"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- spec/*`.split("\n")
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.1.0"

  spec.add_dependency "spree_core", "~> 3.1", "< 4.2"
  spec.add_dependency "veritrans", "~> 2.2"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3"
  spec.add_development_dependency "rubocop", "~> 0.50"
  spec.add_development_dependency "rails", "~> 4"
end
