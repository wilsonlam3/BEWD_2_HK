###############################################################################
#
# Back-End Web Development - Homework #2
#
# The purpose of the Secret Number game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of variables, conditionals, and loops.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game.
# In this game players have three tries to guess a secret number between 1 and 10.
#
# Here are some guidelines to building your game:
#
# Intros
#   - Welcome the player to your game. Let them know who created the game.
#   - Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#   - Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10
#     and that they only have 3 tries to do so.
#
# Functionality:
#  - Hard code the secret number. Make it a random number between 1 and 10.
#  - Ask the user for their guess.
#  - Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#  - If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#  - Don't forget to let your players know how many guesses they have left. Your game should say something like
#    "You have X many guesses before the game is over enter a another number"
#  - If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
#
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################



#index = 0			# This line is unnecessary
remaining = 3		# The game had mentioned to allow 3 tries
Secret_number = 8	# Hard code the secret number. We can set this as Global variables. (with capital 'S')

def get_input
	gets.chomp
end


### To reduce the size of an array occupying the same value, set secret_number to Global
### Separate the calculation of remaining here, avoid passing too many variables,

### def check_guess(n, secret_number, remaining)  
def check_guess(n)

#	remaining -= 1
#	if remaining == 0 && n != secret_number
#		puts "Sorry you had reached the maximum number of tries."
#		puts "The secret number was #{Secret_number}."
# 		exit
# 	end

	if n < Secret_number
#		puts "Higher...You have #{remaining} guess(es) before the game is over. Please try again"
		print "Higher..."
	elsif n > Secret_number
#		puts "Lower...You have #{remaining} guess(es) before the game is over. Please try again"
		print "Lower..."
	elsif n == Secret_number 
		puts "Congratulations !!! You guessed it correctly! The secret number was #{Secret_number}."
		exit
	end
end

print "Welcome, my name is Wilson - the creator of this Guess My Secret Number game.\n"
print "Please enter your name as I will explain to you on how to play this game.\n"
print "Name : "
player_name = get_input
puts "\nHi #{player_name} ! Nice to interact with you."
print "Let's play this game by guessing a number between 1 and 10 \n"
print "and you have only 3 attempts to guess it right!\n\n"

# 3.downto(1) do |index| 		# |index| can be omitted
3.downto(1) do
	
	digits = 1..10

	print "Enter a number : "
	n = get_input.to_i
	
	if !digits.include?(n)		# Ensure that the number inputted is within the range of 1 to 10	
		puts "The number must be in between 1 and 10."    # If not, remind the player and try again
	end

	remaining -= 1 				# Subtract 1 and count the remaining tries
	check_guess(n) 	
	if remaining == 0
		puts "Sorry you had reached the maximum number of tries."
		puts "The secret number was #{Secret_number}."
	else
		puts "You have #{remaining} guess(es) before the game is over. Please try again"
	end

end
