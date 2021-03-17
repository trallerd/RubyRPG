require_relative 'breed'

class Elf < Breed
  attr_accessor :name

  def initialize
    @name = 'Elf'
    super(25, 5, 6, 20, 10)
  end
end
