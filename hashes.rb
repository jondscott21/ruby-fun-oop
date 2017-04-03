def a_name greeting ="Hello", first_name: 'first', last_name: 'last'
  puts "#{greeting} #{first_name} #{last_name}"
end
new_user = {first_name: 'Jon', last_name: 'Scott'}
a_name  'Hi', new_user

h = {job: 'sales', title: 'manager'}
puts h
puts h.has_key?(:title)
h.delete(:title)
puts h

puts h.empty?

puts h.has_key?(:title)