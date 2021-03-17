require_relative 'breed'

class Orc < Breed
  attr_accessor :name

  def initialize
    @name = 'Orc'
    super(15, 12, 5, 2, 25)
  end
end
