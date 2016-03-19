require 'pry'

# Runs the collatz operations, if number is even divide by 2, else multiply by
# three and add one
#
# +num: an integer representing the number to be run through the collatz method
#
# Returns an integer after dividing by two or multiplying by three and adding one
def collatz_method(num)
  if num % 2 == 0
    num = num / 2
  else
    num = num * 3 + 1
  end
  num
end

# Counts iterations of collatz_method until a one is returned
#
# +num: an integer representing the number to be run through the collatz method
#
# Returns the number of iterations for collatz_method to return one
def collatz(num)
  counter = 0
  while num != 1
    counter += 1
    num = collatz_method(num)
  end
  counter
end

# Finds the number in a range with the fewest iterations of the collatz_method
#
# +start: an integer representing the begining of the range to check
# +finish: an integer representing the end of the range to check
#
# Returns the number that takes the fewest iterations to return one
def min_collatz_iterations(start, finish)
  results = {}
  (start..finish).each do |num|
    count = collatz(num)
    results[num] = count
  end
  lowest = results.values.min
  results.key(lowest)
  #puts "#{results.key(lowest)} takes #{lowest} iterations."
end

puts min_collatz_iterations(10_000_000,100_000_000)
