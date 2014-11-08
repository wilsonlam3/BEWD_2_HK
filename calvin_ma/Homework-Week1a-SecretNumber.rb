puts "Please guess a number from 1 to 5."
guess = rand(5)+1

def get_input
	gets.chomp.to_i
end

loop do
	user_guess = get_input
	if guess == user_guess
	puts "Yes! Correct answer!"
break
	elsif user_guess > guess && user_guess <= 5
	puts "Too high. Try again."
	elsif user_guess < guess && user_guess >= 1
	puts "Too low. Try again."
	else
	puts "Only input a number from 1 to 5!!"
	end
end