# ProtectedConstructor

Provides a module that may be included in a Ruby class, that protects the constructor; good for enforcing
instantiation of classes using, for instance, a class factory.

## Installation

Add this line to your application's Gemfile:

    gem 'ProtectedConstructor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ProtectedConstructor

## Usage

    require 'ProtectedConstructor'

    class Klass
      include ProtectedConstructor

      def initialize
      end
    end

    klass = Klass.new # NoMethodError

    klass = Klass.send(:new) # works
    klass.nil? # false
    klass.is_a?(Klass) # true

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
