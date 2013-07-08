# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ProtectedConstructor/version'

Gem::Specification.new do |spec|
  spec.name          = "ProtectedConstructor"
  spec.version       = ProtectedConstructor::VERSION
  spec.authors       = ["Gene M. Angelo, Jr."]
  spec.email         = ["public.gma@gmail.com"]
  spec.description   = %q{ProtectedConstructor Gem}
  spec.summary       = %q{Provides a module that may be included in a Ruby class, that protects the constructor; good for enforcing instantiation of classes using, for instance, a class factory.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
