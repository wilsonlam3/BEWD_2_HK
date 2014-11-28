# Write a method that takes a number and:
# * for multiples of 3 returns "Fizz"
# * for multiples of 5 returns "Buzz"
# * for numbers which are multiples of both 3 and 5 returns "FizzBuzz"
# * for all other numbers, it simply returns the number

# Correct FizzBuzz
def fizz_buzz(number)
  # Raise an error unless the input is a number (floats and integers both accepted)
  raise unless number.is_a? Numeric

  if number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  elsif number % 3 == 0
    'Fizz'
  elsif number % 5 == 0
    'Buzz'
  else
    number
  end
end

# Tests
# def assert_equal(expected, actual)
#   if actual != expected
#     raise "Test failed, expected #{expected}, got #{actual}"
#   end
# end

# test_number = 3
# assert_equal('Fizz', fizz_buzz(test_number))
# test_number = 5
# assert_equal('Buzz', fizz_buzz(test_number))
# test_number = 5.5
# assert_equal(5.5, fizz_buzz(test_number))
# test_number = 30
# assert_equal('FizzBuzz', fizz_buzz(test_number))
