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

  spec.required_ruby_version = Gem::Requirement.new('>= 3.0.7', '< 4.0')

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.post_install_message = <<~POST_INSTALL
    Thank you for installing ProtectedConstructor.

    View the ProtectedConstructor README.md here: https://github.com/gangelo/ProtectedConstructor
    View the ProtectedConstructor CHANGELOG.md: https://github.com/gangelo/ProtectedConstructor/blob/main/CHANGELOG.md

                *
               ***
             *******
            *********
     ***********************
        *****************
          *************
         ******* *******
        *****       *****
       ***             ***
      **                 **

    Using ProtectedConstructor? ProtectedConstructor is made available free of charge. Please consider giving ProtectedConstructor a STAR on GitHub as well as sharing ProtectedConstructor with your fellow developers on social media.

    Knowing that ProtectedConstructor is being used and appreciated is a great motivator to continue developing and improving ProtectedConstructor.

    >>> Star it on github: https://github.com/gangelo/ProtectedConstructor
    >>> Share on social media: https://rubygems.org/gems/ProtectedConstructor

    Thank you!

    <3 Gene
  POST_INSTALL
end
