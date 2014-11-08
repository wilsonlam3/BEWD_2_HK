puts "Please guess a number from 1 to 5."
guess = rand(5)+1

def get_input
	gets.chomp.to_i
end

loop do
	if get_input == guess
		puts "Yes! You guessed correct."
break
	else
		puts "Wrong. Try again."
	end
end