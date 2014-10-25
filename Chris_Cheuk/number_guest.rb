def get_input
	gets

end
def number_guest(a)
	if a == 10
		puts "You are right"
	elsif a<10
		puts "the actual number is higher"
	else
		puts "the actual number is lower"
		
	end

end

puts "Enter a number"
x = get_input.to_i(10)
number_guest(x)