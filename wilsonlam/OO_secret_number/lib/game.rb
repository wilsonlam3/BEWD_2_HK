# Game
# This class holds most of the game logic and should:
#   Welcome players and inform them of the game rules.
#   Initialize the Player class.
#   Initialize the SecretNumber class.
#   Prompt the user to choose a number, verify if the user guessed correctly.
#   If the user guesses incorrectly let them know if they were too high or too low.
#   Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it uses arrays or hashes as appropriate and
# all functionality is wrapped in methods. Add helpful comments to your code to
# document what each section does.
#

#$:.unshift (File.dirname(__FILE__))

require 'lib/person'
require 'lib/secret_number'


class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

	attr_accessor :player_name , :secret_number , :player_guess

  	def initialize(player)
	    @player_name = player	
    end

    def start_game
		prompt = "> "

		objectSN = SecretNumber.new(secret_number) 		# Initialize the SecretNumber Class
		@secret_number = objectSN.create_secretnumber	# Returns the value of secret_number
#	puts @secret_number

		3.downto(1) do |count|
			puts "Enter a number :"
			print prompt

			@player_guess = gets.chomp.to_i 				# Player's input

#	if !array_numbers.include?(n)		# Ensure that the number inputted is within the range of 1 to 10	
#		puts "The number must be in between 1 and 10."  # If not, remind the player and try again
#	end
			check_guess						# Perform check_guess method
			check_remaining(count)			# Subtract 1 and count the remaining tries 												
		end
	end

    def check_guess
		if @player_guess < @secret_number
			print "Higher..."
		elsif @player_guess > @secret_number
			print "Lower..."
		elsif @player_guess == @secret_number 
			puts "Congratulations #{player_name} !!! You guessed it correctly! The secret number was #{@secret_number}."
			exit
		end
	end


	def check_remaining(count)
		count -= 1
		#puts count
		if count == 0
			puts "Sorry #{player_name} , you had reached the maximum number of tries."
			puts "The secret number was #{@secret_number}."
		else
			puts "You have #{count} guess(es) before the game is over. Please try again"
		end
	end

end
