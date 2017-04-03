require_relative('human')
class Wizard < Human
  def initialize(name)
    super
    @health = 50
    @intelligence = 25
  end
  def heal
    @health += 10
    puts @health
    self
  end
  def fireball(value)
    if value.class.ancestors.include? Human
      puts "Casting fireball at #{value.name}"
      value.health -= 20
    else
      puts 'You must attack another human'
    end
    self
  end
end
w1 = Wizard.new('w1')
w2 = Wizard.new('w2')
w1.fireball(w2)
puts w2.health
w2.heal