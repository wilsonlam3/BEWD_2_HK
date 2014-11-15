def number (x)
	if x % 15 ==0
		puts "FizzBuzz"
	elsif x % 3 ==0
		puts "Fizz"
	elsif x % 5 == 0
		puts "Buzz"
	else 
		puts x
	end
end

1.upto(100) do|loop|
	number (loop)
end

	 