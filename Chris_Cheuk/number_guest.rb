def get_input
	gets

end
def number_guest(x)
	if x == 10
		puts "You are right"
	else
		puts "no"
	end

end

puts "Enter a number"
x = get_input.to_i(10)
number_guest(x)