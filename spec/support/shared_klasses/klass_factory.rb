# frozen_string_literal: true

# Defines a class factory that includes ProtectedConstructor.
class KlassFactory
  include ProtectedConstructor

  class << self
    def create(id)
      send(:new, id)
    end
  end

  attr_reader :id

  def initialize(id)
    @id = id
  end
end
