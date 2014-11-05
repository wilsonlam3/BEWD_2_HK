max_attempts = 5
min_num = 1
max_num = 10
replay_answer = "Y"

def get_input
	gets.chomp.to_i
end

def get_name
	gets.chomp.to_s
end

def replay_function
print "Do you want to play again? (Y or N): "
	loop do
	replay_answer = gets.chomp.upcase
		if replay_answer == "Y" 
			puts "You chose Yes. Sure, let's play again. A new number has been chosen for you to guess.\n\n"
	break	
		elsif replay_answer == "N" 
			puts "You chose No. See you next time then."
	break
		else 
			print "Please just input Y or N: "
		end
	end
end

puts "Welcome to the Secret Number Guessing game created by Calvin."
print "Please enter your name: "
name = get_name
puts "Hi #{name}! Now let's start."

while replay_answer == "Y" do
	attempts = 0
	puts "Please guess a number from #{min_num} to #{max_num}. You are allowed #{max_attempts} attempts!"
	guess = rand(max_num)+1

	loop do
		user_guess = get_input
		attempts +=1 
		remaining_attempts = max_attempts - attempts
		if guess == user_guess
			puts "Yes! Correct answer! You did it in #{attempts} attempt#{"s" if remaining_attempts > 1}!"
			replay_function
	break
		elsif attempts == max_attempts && guess != user_guess
			puts "You lose! All #{max_attempts} attempt#{"s" if remaining_attempts > 1} used up. The secret number was #{guess}"
			replay_function
	break
		elsif user_guess > guess && user_guess <= max_num
			puts "Too high. Try again. You have #{remaining_attempts} attempt#{"s" if remaining_attempts > 1} left."
		elsif user_guess < guess && user_guess >= min_num
			puts "Too low. Try again. You have #{remaining_attempts} attempt#{"s" if remaining_attempts > 1} left."
		else
			puts "Please only input a number from #{min_num} to #{max_num}!! You have #{remaining_attempts} attempt#{"s" if remaining_attempts > 1} left."
		end
	end
end