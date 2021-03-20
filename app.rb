require_relative 'models/breeds/dwarf'
require_relative 'db/players_breeds'
require_relative 'db/players_classes'
require_relative 'models/breeds/orc'
require_relative 'models/breeds/elf'
require_relative 'models/breeds/human'
require_relative 'models/fakers/name'
require_relative 'models/player/player_class'
require_relative 'controllers/calculate_modifiers'

db_class = PlayersClasses.new
db_breed = PlayersBreeds.new

system('clear')
puts('welcome!')
puts('Wanna choose your name (s) or (n) ?')
resp = gets.strip.to_s

if resp == 'n'
  faker = Name.new
  name  = faker.create_unique_name
else
  puts 'Nome: '
  name = gets.strip.to_s
end

system('clear')
puts("#{name} class you would you like to belong ?")
puts('1 - Human')
puts('2 - Orc')
puts('3 - Elf')
puts('4 - Dwarf')
puts('5 - Quit')
cl = gets.strip.to_i

if cl >= 1 && cl <= 5
  case cl
  when 1
    breed = Human.new
  when 2
    breed = Orc.new
  when 3
    breed = Elf.new
  when 4
    breed = Dwarf.new
  end
else
  puts('Opção Invalida....')
end

db_breed.add_breed(breed)
classes = PlayerClass.new('a', 'a')
db_class.add_classes(classes)

system('clear')

while cl != 5
  puts('What would you like to do ? (Create class to train first!)')
  puts('1 - Create new Class')
  puts('2 - Train Class')
  puts('3 - List Breed')
  puts('4 - List Classes')
  puts('5 - Sair')
  cl = gets.strip.to_i

  next unless cl >= 1 && cl <= 5

  case cl
  when 1

    system('clear')
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

    db_class.add_classes(player_class)

    calculate = CalculateModifiers.new
    calculate.calculate(breed, life, attack, defense, intelligence, strength)

  when 2
    breeds = db_breed.list_breeds.last
    calculate.train_breed(breeds)

  when 3
    if db_breed.list_breeds
      breeds = db_breed.list_breeds
      system('clear')
      breeds.each do |breed_list|
        puts breed_list.name.to_s
        puts "Life: #{breed_list.life[0]}"
        puts "Attack: #{breed_list.attack}"
        puts "Defense: #{breed_list.defense}"
        puts "Intelligence: #{breed_list.intelligence}"
        puts "Strength: #{breed_list.strength}"
        puts '******************'
      end
    else
      puts '***** None *****'
    end

  when 4
    system('clear')
    array = db_class.list_classes unless db_class.list_classes.nil?
    if array.any?

      array.each do |players_class|
        puts players_class.name
        puts players_class.craft
        puts '******************'
      end
    else
      puts '***** None ****** '
    end

  else
    puts('Opção Invalida....')
  end
end
