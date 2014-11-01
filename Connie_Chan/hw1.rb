def input
  gets
end

def secret(number)
  if number < 13
    puts "too small"
  elsif number > 13
    puts "too big"
  elsif
    puts "that's right"
  end
end

puts "guess the secret number"
number = input.to_i
secret(number)
