class Human
  attr_accessor :strength, :intelligence, :stealth, :health, :name
  def initialize(name)
    @name = name
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end
  def attack(value)
    if value.class.ancestors.include? Human
      puts "You attacked #{value.name}"
      value.health -= Random.rand(15)
    else
      puts 'You must attack another human'
    end
    self
  end
end
jon = Human.new('Jon')
bob = Human.new('Bob')
jon.attack(bob)
puts jon.stealth