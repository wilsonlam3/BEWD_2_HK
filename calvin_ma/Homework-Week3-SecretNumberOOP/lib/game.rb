require 'lib/person'
require 'lib/secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

	attr_accessor :name

	def initialize (name)
		@name = Person.new(name)
		@number = SecretNumber.new
	end

	def get_input
		gets.chomp.to_i
	end

	def play_game
	puts "Please guess a number from 1 to 10."
	number = SecretNumber.new
	attempts = 0
		loop do
		user_guess = get_input
		attempts += 1
			if number.secret_number == user_guess
				puts "Yes! Correct answer! You did it in #{attempts} attempt#{"s" if attempts > 1}!"
		break
			elsif user_guess > number.secret_number && user_guess <= 10
				puts "Too high. Try again."
			elsif user_guess < number.secret_number && user_guess >= 1
				puts "Too low. Try again."
			else
				puts "Please only input a number from 1 to 10!"
			end
		end
	end	


end