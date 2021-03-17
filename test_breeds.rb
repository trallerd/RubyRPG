require_relative 'breeds/dwarf'
require_relative 'breeds/orc'
require_relative 'breeds/elf'
require_relative 'breeds/human'
require_relative 'fakers/name'

system('clear')
puts('Bem vindo!')
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
puts('What class you would you like to belong ?')
puts('1 - Human')
puts('2 - Orc')
puts('3 - Elf')
puts('4 - Dwarf')
puts('5 - Quit')
cl = gets.strip.to_i

if cl >= 1 && cl <= 5
  case cl
  when 1
    cls = Human.new
  when 2
    cls = Orc.new
  when 3
    cls = Elf.new
  when 4
    cls = Dwarf.new
  end
else
  puts('Opção Invalida....')
end

puts name.to_s
puts cls.inspect
