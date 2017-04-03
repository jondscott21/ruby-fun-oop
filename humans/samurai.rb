require_relative('human')
class Samurai < Human
  def initialize(name)
    super
    @health = 200
  end
  def Samurai.number_of_samurai
    puts ObjectSpace.each_object(Samurai).count
    self
  end
  def death_blow(value)
    if value.class.ancestors.include? Human
      puts "You dealt a death blow to #{value.name}"
      value.health = 0
      puts value.health
    else
      puts 'You must attack another human'
    end
    self
  end
  def meditate
    @health = 200
    puts @health
    self
  end
end
s1 = Samurai.new('s1')
s2 = Samurai.new('s2')
s1.death_blow(s2)
s2.meditate
