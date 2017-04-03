require_relative('human')
class Ninja < Human
  def initialize(name)
    super
    @stealth = 175
  end
  def steal(value)
    if value.class.ancestors.include? Human
      puts "You stole #{Random.rand(20)} gold from #{value.name}"
      self.health += 10
      attack(value)
    end
    self
  end
  def get_away
    @health -= 15
    self
  end
end
n1 = Ninja.new('n1')
n2 = Ninja.new('n2')