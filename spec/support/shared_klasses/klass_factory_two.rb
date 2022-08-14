# frozen_string_literal: true

require_relative 'klass_factory'

# Defines a class factory that inherits from a class
# that includes ProtectedConstructor.
class KlassFactoryTwo < KlassFactory
  class << self
    def create(name, id)
      send(:new, name, id)
    end
  end

  attr_reader :name

  def initialize(name, id)
    super id
    @name = name
  end
end
