#FizzBuzz
=begin
number = []
1.upto(100) do |index|
	if index % 15 == 0
		number[index-1] = "FizzBuzz"
	elsif index % 5 == 0
		number[index-1] = "Buzz"
	elsif index % 3 == 0
		number[index-1] = "Fizz"
	else
		number[index-1] = index
	end
end
puts number
=end


1.upto(100) do |number|
	if number % 15 == 0
		number = "FizzBuzz"
	elsif number % 5 == 0
		number = "Buzz"
	elsif number % 3 == 0
		number = "Fizz"
	else
	end
puts number
end


=begin
1.upto(100) do |number|
	if number % 3 == 0
		number = 'Fizz'
	end
	if number % 5 == 0
		number = 'Buzz'
	end
	puts number
end
=end