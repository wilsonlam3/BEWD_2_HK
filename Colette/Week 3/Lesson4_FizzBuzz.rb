#FizzBuzz

number = []
1.upto(100) do |index|
	if index % 3 == 0 && index % 5 == 0
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