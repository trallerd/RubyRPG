require_relative '../models/fakers/name'

facker = Name.new

puts('Dragon Ball Name:')
puts(facker.create_dragonball_name)
puts('Simple Name:')
puts(facker.create_simple_name)
puts('Unique Name:')
puts(facker.create_unique_name)
