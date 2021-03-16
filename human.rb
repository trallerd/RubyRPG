require_relative 'breed'

class Human < Breed
  def initialize
    super(20, 8, 8, 10, 10)
  end
end
