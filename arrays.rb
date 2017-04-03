x = [10,11,1,2,3,4,5,6,7,8,9]

# returns value of given index with .fetch giving you an optional parameter if index search fails
puts x.at(0)
puts x.fetch(5, 'Not an index value')

# deletes matching value if it exists
puts x.delete(4)

# reverses array
puts x.reverse

# returns the length of the array
puts x.length

# sorts in correct order if not given an argument or sorts based on first and last indexes
puts x.sort
puts x.sort{ |a,b| b <=> a }

# removes a given indexes from the array
puts x.slice!(10)

# randomizes the array
puts x.shuffle

# concatenates array into a string with an optional separator given as an argument
puts x.join
puts x.join('--')

# inserts a value before the given index
puts x.insert(4, 99)

# returns an array of values from the given indexes
puts x.values_at(7, 2, 5)