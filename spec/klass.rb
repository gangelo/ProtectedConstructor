require_relative '../lib/ProtectedConstructor'

class Klass
  include ProtectedConstructor

  attr_reader :id

  # Protected
  def initialize(id)
    @id = id
  end

end
