# 1.
def print_1_to_255 ()
  for i in 1..255
    puts i
  end
end
print_1_to_255

# 2.
def print_odds ()
  for i in 1..255
    puts i if i % 2 != 0
  end
end
print_odds

# 3.
def print_sum ()
  sum = 0
  for i in 0..255
    sum += i
    puts i, sum
  end
end
print_sum

# 4.
def iterating_arr(arr)
  for i in arr
    puts i
  end
end
iterating_arr([1,4,7,8,9,45,32,10])

# 5.
def find_max(arr)
  max = 0
  for i in arr
    if max < i
      max = i
    end
  end
  puts max
end
find_max([1,4,7,8,9,45,32,10])

# 6.
def get_avg(arr)
  avg = 0
  for i in arr
    avg += i
  end
  avg = avg / arr.length
  puts avg
end
get_avg([1,4,7,8,9,45,32,10])

# 7.
def array_w_odds ()
  arr = []
  for i in 1..255
    if i % 2 != 0
      arr.push(i)
    end
  end
  puts arr.to_s
end
array_w_odds

# 8.
def greater_than_y(arr, y)
  count = 0
  for i in arr
    if i > y
      count += 1
    end
  end
  puts count
end
greater_than_y([1,4,7,8,9,45,32,10], 12)

# 9.
def square_the_values(arr)
  arr.map! {|i| i*i}
  puts arr
end
square_the_values([1,4,7,8,9,45,32,10])

# 10.
def elim_neg_nums(arr)
  arr.map! {|i|
    if i < 0
      0
    else
      i
    end
  }
  puts arr
end
elim_neg_nums([1,5,10,-2])

# 11.
def max_min_avg(arr)

  h = {max: arr.max, min: arr.min, avg: arr.reduce(:+) / arr.length}
  puts h
end
max_min_avg([1,4,7,8,9,45,32,10])

# 12.
def shift_values (arr)
  arr.rotate!(1)
  puts arr
end
shift_values([1,4,7,8,9,45,32,10])

# 13.
def num_to_str(arr)
  arr.map! {|i|
  if i < 0
    'Dojo'
  else i
  end
  }
  puts arr
end
num_to_str([1,2,4,-5,4,-7])