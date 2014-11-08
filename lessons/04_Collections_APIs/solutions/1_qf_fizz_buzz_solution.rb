# method to check for equality
def assert_equal(expected, actual)
  raise "Expected #{expected} to match #{actual}" unless expected == actual
end

# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”.
# For numbers which are multiples of both three and five print “FizzBuzz”.

def fizzbuzz(number)
  output = []
  if number % 3 == 0
    output << 'Fizz'
  end
  if number % 5 == 0
    output << 'Buzz'
  end
  if number % 7 == 0
    output << 'Baz'
  end
  if output.empty?
    number
  else
    output.join
  end
end

# Tests

assert_equal fizzbuzz(1), 1
assert_equal fizzbuzz(3), "Fizz"
assert_equal fizzbuzz(4), 4
assert_equal fizzbuzz(50), "Buzz"
assert_equal fizzbuzz(15), "FizzBuzz"
assert_equal fizzbuzz(5175), "FizzBuzz"

# Additional tests for 'Baz'
assert_equal fizzbuzz(3 * 7), "FizzBaz"
assert_equal fizzbuzz(5 * 7), "BuzzBaz"
assert_equal fizzbuzz(3 * 5 * 7), "FizzBuzzBaz"

# uncomment this code with your tests pass
1.upto(100) do |number|
  puts fizzbuzz(number)
end
