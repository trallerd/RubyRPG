class PlayersClasses
  attr_accessor :all_classes

  def initialize
    @all_classes = []
  end

  def add_classes(player_class)
    all_classes << player_class
  end

  def list_classes
    all_classes
  end
end
