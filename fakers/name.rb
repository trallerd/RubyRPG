require 'faker'

class Name
  def create_unique_name
    Faker::Name.unique.name
  end

  def create_simple_name
    Faker::Name.name
  end

  def create_dragonball_name
    Faker::JapaneseMedia::DragonBall.character
  end
end
