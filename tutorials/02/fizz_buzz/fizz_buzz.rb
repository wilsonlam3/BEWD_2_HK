# Write a method that takes a number and:
# * for multiples of 3 returns "Fizz"
# * for multiples of 5 returns "Buzz"
# * for numbers which are multiples of both 3 and 5 returns "FizzBuzz"
# * for all other numbers, it simply returns the number

# Buggy FizzBuzz
def fizz_buzz(number)
  if number % 3 == 0
    'Fizz'
  elsif number % 5 == 0
    'Buzz'
  elsif number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  end
end

# Tests
