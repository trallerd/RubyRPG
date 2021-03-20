require_relative '../models/breeds/human'
require_relative '../models/player/player_class'
require_relative '../db/players_breeds'
require_relative '../db/players_classes'

breeds = PlayersBreeds.new
classes = PlayersClasses.new

10.times do
  player_class = PlayerClass.new('class', 'AAAA')
  classes.add_classes(player_class)

  breed = Human.new
  breeds.add_breed(breed)
end

breeds = breeds.list_breeds
classes = classes.list_classes

breeds.each do |breed|
  puts breed.attack
end

classes.each do |players_class|
  puts players_class.name
end
