[![Ruby](https://github.com/gangelo/ProtectedConstructor/actions/workflows/ruby.yml/badge.svg)](https://github.com/gangelo/ProtectedConstructor/actions/workflows/ruby.yml)
[![GitHub version](http://badge.fury.io/gh/gangelo%2FProtectedConstructor.svg?refresh=8)](http://badge.fury.io/gh/gangelo%2FProtectedConstructor.svg)
[![Gem Version](https://badge.fury.io/rb/ProtectedConstructor.svg?refresh=8)](https://badge.fury.io/rb/ProtectedConstructor.svg)
[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/gems/ProtectedConstructor/)
[![Report Issues](https://img.shields.io/badge/report-issues-red.svg)](https://github.com/gangelo/ProtectedConstructor/issues)
[![License](http://img.shields.io/badge/license-MIT-yellowgreen.svg)](#license)

# ProtectedConstructor
Provides a module that may be included in a Ruby class, that protects the constructor; good for enforcing
instantiation of classes using, for instance, a class factory. The code itself is not mine, I just wrapped it
in a gem and provided the examples; sorry, I don't remember the origin of the code to give credit.

## Installation

Add this line to your application's Gemfile:

    gem 'ProtectedConstructor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ProtectedConstructor

## Usage

    require 'protected_constructor'

    class Klass
      include ProtectedConstructor

      def initialize
      end
    end

    module KlassFactory
      class << self
        public
        def create
          Klass.send(:new)
        end
      end
    end

    # Constructor is protected.
    klass = Klass.new # NoMethodError

    # Example using factory...
    klass = KlassFactory::create # works
    klass.nil?  # false
    klass.is_a?(Klass) # true

    # Example just using  #send...
    klass = Klass.send(:new)  # works
    klass.nil?  # false
    klass.is_a?(Klass)  # true

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
