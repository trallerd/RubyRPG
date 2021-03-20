require_relative '../controllers/calculate_modifiers'
require_relative '../models/breeds/human'

calculate = CalculateModifiers.new

breed = Human.new

puts breed.inspect

calculate.calculate(breed, 1, 0, 0, 2, 1)
puts breed.inspect

calculate.train_breed(breed)
puts breed.inspect
