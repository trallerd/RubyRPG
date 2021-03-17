require_relative 'breed'

class Human < Breed
  attr_accessor :name

  def initialize
    @name = 'Human'
    super(20, 8, 8, 10, 10)
  end
end
