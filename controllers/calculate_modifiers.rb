class CalculateModifiers
  attr_accessor :life, :attack, :defense, :intelligence, :strength, :breed

  def calculate(breed, life, attack, defense, intelligence, strength)
    breed.life[0] += life
    breed.attack += attack
    breed.defense += defense
    breed.intelligence += intelligence
    breed.strength += strength
    breed
  end

  def train_breed(breed)
    breed.life[0] += breed.life[0] * 0.2
    breed.attack += breed.attack * 0.3
    breed.defense += breed.defense * 0.3
    breed.intelligence += breed.intelligence * 0.2
    breed.strength += breed.strength * 0.2
    breed
  end
end
