# frozen_string_literal: true

require 'ProtectedConstructor/version'

# @example
#   require 'ProtectedConstructor'
#
#   class Klass
#     include ProtectedConstructor
#
#     def initialize
#     end
#   end
#
#   module KlassFactory
#     class << self
#       public
#       def create
#         Klass.send(:new)
#       end
#     end
#   end
#
#   # Constructor is protected.
#   klass = Klass.new # NoMethodError
#
#   # Example using factory...
#   klass = KlassFactory::create # works
#   klass.nil? # false
#   klass.is_a?(Klass) # true
#
#   # Example just using #send...
#   klass = Klass.send(:new) # works
#   klass.nil? # false
#   klass.is_a?(Klass) # true
#
module ProtectedConstructor
  def self.included(klass)
    klass.module_eval do
      class << self
        protected :new
      end
    end
  end
end
