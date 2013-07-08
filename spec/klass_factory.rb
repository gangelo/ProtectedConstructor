require 'klass'

module KlassFactory
  class << self
    public
    def create(id)
      Klass.send(:new, id)
    end
  end
end