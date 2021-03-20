require_relative 'breed'

class Dwarf < Breed
  attr_accessor :name

  def initialize
    @name = 'Dwarf'
    super(18, 9, 11, 7, 20)
  end
end
