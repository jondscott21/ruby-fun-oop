
def parse_names
  a = {first_name: "Michael", last_name: "Choi"}
  b = {first_name: "John", last_name: "Doe"}
  c = {first_name: "Jane", last_name: "Doe"}
  d = {first_name: "James", last_name: "Smith"}
  e = {first_name: "Jennifer", last_name: "Smith"}
  names = [a, b, c, d, e]

  puts names.map {|name| "The name is '#{name[:first_name]} #{name[:last_name]}'"}
end
parse_names