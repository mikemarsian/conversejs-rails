# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'conversejs/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "conversejs-rails"
  spec.version       = Conversejs::Rails::VERSION
  spec.authors       = ["Mike Polischuk"]
  spec.email         = ["mike@polischuk.com"]
  spec.summary       = %q{The Converse.js JavaScript library, ready to play with Rails.}
  spec.description = <<-EOF
    Converse.js is a web based XMPP/Jabber instant messaging client.
    This gem allows for its easy inclusion into the rails asset pipeline.
  EOF
  spec.homepage      = "https://github.com/mikemarsian/conversejs-rails"
  spec.license       = "MIT"

  spec.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.1"

  spec.add_development_dependency "rails", "~> 3.2.12"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
