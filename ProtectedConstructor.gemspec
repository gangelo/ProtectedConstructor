# frozen_string_literal: true

require 'English'

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ProtectedConstructor/version'

Gem::Specification.new do |spec|
  spec.name          = 'ProtectedConstructor'
  spec.version       = ProtectedConstructor::VERSION
  spec.authors       = ['Gene M. Angelo, Jr.']
  spec.email         = ['public.gma@gmail.com']
  spec.description   = 'ProtectedConstructor Gem'
  spec.summary       = 'Provides a module that may be included in a Ruby class, ' \
    'that protects the constructor; good for enforcing instantiation of classes ' \
    'using, for instance, a class factory.'
  spec.homepage      = 'https://github.com/gangelo/ProtectedConstructor'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '~> 3.0.1'
  spec.add_development_dependency 'bundler', '~> 2.2', '>= 2.2.17'
  spec.add_development_dependency 'pry-byebug', '~> 3.9'
  spec.add_development_dependency 'rake', '~> 13.0', '>= 13.0.6'
  spec.add_development_dependency 'redcarpet', '~> 3.5', '>= 3.5.1'
  spec.add_development_dependency 'reek', '~> 6.1', '>= 6.1.1'
  spec.add_development_dependency 'rspec', '>= 3.10'
  spec.add_development_dependency 'rubocop', '~> 1.35'
  spec.add_development_dependency 'rubocop-performance', '~> 1.14', '>= 1.14.3'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.12', '>= 2.12.1'
  spec.add_development_dependency 'yard', '~> 0.9.28'
end
