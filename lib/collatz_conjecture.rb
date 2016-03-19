require 'pry'

def collatz_method(num)
  if num % 2 == 0
    num = num / 2
  else
    num = num * 3 + 1
  end
  num
end

collatz_method(11)

def collatz(num)
  counter = 0
  while num != 1
    counter += 1
    num = collatz_method(num)
    puts num
  end
  counter
end

p collatz(10)
#binding.pry
