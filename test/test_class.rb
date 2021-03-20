require_relative '../models/player/player_class'
require_relative '../models/breeds/human'

human = Human.new

puts('Class Name:')
name = gets

puts('What the class craft?')
craft = gets

puts('Lets see the modifiers:')

puts('Life')
life = gets.strip.to_i

puts('Attack')
attack = gets.strip.to_i

puts('Defense')
defense = gets.strip.to_i

puts('Intelligence')
intelligence = gets.strip.to_i

puts('Strength')
strength = gets.strip.to_i

player_class = PlayerClass.new(name, craft)

puts human.inspect

human.life[0] += life
human.attack += attack
human.defense += defense
human.intelligence += intelligence
human.strength += strength

puts human.inspect

puts player_class.inspect
