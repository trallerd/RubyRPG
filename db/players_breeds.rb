class PlayersBreeds
  attr_accessor :all_breeds

  def initialize
    @all_breeds = []
  end

  def add_breed(breed)
    all_breeds << breed
  end

  def list_breeds
    all_breeds
  end
end
