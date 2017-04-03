# 1. Create an array with the following values: 3,5,1,2,7,9,8,13,25,32.
# Print the sum of all numbers in the array.
# Also have the function return an array that only include numbers that are greater than 10
# (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
def num1
  arr1 = [3,5,1,2,7,9,8,13,25,32]
  puts arr1.reduce(:+)
  arr2 = arr1.reject {|i| i < 10}
  puts arr2
end
# num1


# 2. Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher.
# Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
def num2
  arr1 = %w{John KB Oliver Cory Matthew Christopher}
  puts arr1.shuffle
  arr2 = arr1.reject {|i| i.length <= 5}
  puts arr2
end
# num2

# 3. Create an array that contains all 26 letters in the alphabet (this array must have 26 values).
# Shuffle the array and display the last letter of the array. Have it also display the first letter of the array.
# If the first letter in the array is a vowel, have it display a message.
def num3
  arr1 = ("a".."z").to_a
   arr2 = arr1.shuffle
  puts arr2.last, arr2.first
  puts "#{arr2.first} is a vowel" if %w{a e i o u}.include?(arr2.first)
end
# num3

# 4. Generate an array with 10 random numbers between 55-100.
def num4
  arr = []
  10.times{arr << rand(55..100)}
  puts arr
end
# num4
# 5. Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning).
# Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value
def num5
  arr = []
  10.times{arr << rand(55..100)}
  puts arr.sort, arr.min, arr.max
end
num5

# 6. Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
def num6
  # str = new String
  str = (0...5).map {(65+rand(26)).chr}.join
  puts str
end
num6
# 7. Generate an array with 10 random strings that are each 5 characters long
def num7
  arr =[]
  10.times {arr << (0...5).map {(65+rand(26)).chr}.join}
  puts arr.to_s
end
num7