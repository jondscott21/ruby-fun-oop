
class User
  attr_accessor :first_name, :last_name
  def self.foo
    puts 'This is a class method'
  end

  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end

  def full_name
    puts "I am #{@first_name} #{@last_name}"
  end
  def say_hello
    puts 'Hello'
  end
end
jon = User.new('Jon', 'Scott')
jon.say_hello
jon.full_name
User.foo
