def get_num()
	gets
end

def print_intro()
	puts "****************************************"
	puts "*                                      *"
	puts "*                                      *"
	puts "* Secret Number - Made by Wilson Koder *"
	puts "*                                      *"
	puts "*                                      *"
	puts "**************************************** \n"
end

guess_count = 0
num = 5


print_intro()
puts "Input a number between 1 and 10!"

while guess_count < 5 do
	user_num = get_num()
	user_int = user_num.to_i

	if user_int == num
		puts "You won! The number was #{num}"
		guess_count += 1
	elsif user_int > num
		puts "A bit too high! Guess again!"
		guess_count += 1

	elsif user_int < num
	  	puts "A bit to low! Guess again!"
		guess_count += 1
	end
end

puts "Out of guesses! The number was #{num}"
