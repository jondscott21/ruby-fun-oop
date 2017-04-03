class CodingDojo
  @@no_of_branches = 0
  def initialize(id, name, address)
    @branch_id = id
    @branch_name = name
    @branch_address = address
    @@no_of_branches += 1
    puts "Created branch #{@@no_of_branches}"
  end
  def hello
    puts "Hello CodingDojo!"
  end
  def display_all
    puts "Branch ID: #{@branch_id}"
    puts "Branch Name: {@branch_name}"
    puts "Branch Address: #{@branch_address}"
  end
end
# now using above class to create objects
branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA")
branch.display_all
branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA")
branch2.display_all


# def breath
#   puts "Inhale and exhale"
# end
#
# def eat
#   puts "Yum yum yum"
# end
# def calling_speak
#   speak
# end
#
# protected
# def speak
#   puts "I am a protected method"
# end
# def calling_cry
#   cry
# end
#
# private
# def cry
#   puts "Sniff sniff..."
# end

# puts 'I am in the human file'
# require_relative 'mammal'
# class Human < Mammal # Human inherits from Mammal
#   def subclass_method
#     breath
#   end
#   def another_method
#     self.eat
#   end
#   def explicitily_speak
#     self.speak
#   end
#
#   def implicitily_speak
#     speak
#   end
#   def explicitily_cry
#     self.cry
#   end
#
#   def implicitily_cry
#     cry
#   end
# end
# person = Human.new
# person.subclass_method
# person.another_method